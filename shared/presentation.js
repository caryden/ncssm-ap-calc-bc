/**
 * AP Calculus BC - Shared Presentation JavaScript
 * NCSSM (North Carolina School of Science and Mathematics)
 *
 * Handles navigation, TOC, appendix, and slide animations
 */

(function() {
  'use strict';

  // ===== Configuration =====
  const config = {
    animationDelay: 300,
    hashUpdateDelay: 100
  };

  // ===== State =====
  let currentSlide = 0;
  let totalSlides = 0;
  let slides = [];
  let appendixSlides = [];
  let currentAppendixSlide = 0;
  let tocOpen = false;
  let appendixOpen = false;

  // ===== DOM Elements =====
  let progressFill;
  let slideCounter;
  let tocOverlay;
  let tocContent;
  let appendixOverlay;
  let appendixContent;
  let overlayBackdrop;

  // ===== Initialization =====
  function init() {
    // Get all slides
    const allSlides = document.querySelectorAll('.slide');
    slides = Array.from(allSlides).filter(s => !s.dataset.appendix);
    appendixSlides = Array.from(allSlides).filter(s => s.dataset.appendix === 'true');
    totalSlides = slides.length;

    // Get DOM elements
    progressFill = document.querySelector('.progress-fill');
    slideCounter = document.querySelector('.slide-counter');
    tocOverlay = document.getElementById('toc-overlay');
    tocContent = document.getElementById('toc-content');
    appendixOverlay = document.getElementById('appendix-overlay');
    appendixContent = document.getElementById('appendix-content');
    overlayBackdrop = document.getElementById('overlay-backdrop');

    // Build TOC
    if (tocContent) {
      buildTOC();
    }

    // Setup event listeners
    setupKeyboardNav();
    setupTouchNav();
    setupOverlayControls();

    // Handle initial slide from hash
    const hash = window.location.hash;
    if (hash) {
      const slideNum = parseInt(hash.replace('#', ''));
      if (!isNaN(slideNum) && slideNum >= 0 && slideNum < totalSlides) {
        currentSlide = slideNum;
      }
    }

    // Show first slide
    goToSlide(currentSlide);

    // Handle hash changes
    window.addEventListener('hashchange', handleHashChange);
  }

  // ===== Navigation =====
  function goToSlide(n) {
    // Bounds check
    if (n < 0) n = 0;
    if (n >= totalSlides) n = totalSlides - 1;

    // Update previous slide
    slides.forEach((slide, i) => {
      slide.classList.remove('active', 'prev');
      if (i < n) {
        slide.classList.add('prev');
      }
    });

    // Show current slide
    currentSlide = n;
    slides[currentSlide].classList.add('active');

    // Update progress
    updateProgress();

    // Update URL hash (debounced)
    clearTimeout(window.hashTimeout);
    window.hashTimeout = setTimeout(() => {
      history.replaceState(null, null, `#${currentSlide}`);
    }, config.hashUpdateDelay);

    // Update TOC highlight
    updateTOCHighlight();

    // Trigger slide-specific animations
    animateSlide(currentSlide);
  }

  function nextSlide() {
    if (currentSlide < totalSlides - 1) {
      goToSlide(currentSlide + 1);
    }
  }

  function prevSlide() {
    if (currentSlide > 0) {
      goToSlide(currentSlide - 1);
    }
  }

  function updateProgress() {
    const progress = ((currentSlide + 1) / totalSlides) * 100;
    if (progressFill) {
      progressFill.style.width = `${progress}%`;
    }
    if (slideCounter) {
      slideCounter.textContent = `${currentSlide + 1} / ${totalSlides}`;
    }
  }

  function handleHashChange() {
    const hash = window.location.hash;
    if (hash) {
      const slideNum = parseInt(hash.replace('#', ''));
      if (!isNaN(slideNum) && slideNum !== currentSlide) {
        goToSlide(slideNum);
      }
    }
  }

  // ===== Slide Animations =====
  function animateSlide(slideIndex) {
    const slide = slides[slideIndex];
    if (!slide) return;

    // Trigger any custom animation functions
    const animFn = slide.dataset.animation;
    if (animFn && typeof window[animFn] === 'function') {
      setTimeout(() => window[animFn](), config.animationDelay);
    }

    // Animate list items
    const listItems = slide.querySelectorAll('li');
    listItems.forEach((item, i) => {
      item.style.animationDelay = `${(i + 1) * 100}ms`;
    });
  }

  // ===== Keyboard Navigation =====
  function setupKeyboardNav() {
    document.addEventListener('keydown', (e) => {
      // Ignore if typing in an input
      if (e.target.tagName === 'INPUT' || e.target.tagName === 'TEXTAREA') {
        return;
      }

      switch (e.key) {
        case 'ArrowRight':
        case ' ':
          e.preventDefault();
          if (appendixOpen) {
            nextAppendixSlide();
          } else {
            nextSlide();
          }
          break;

        case 'ArrowLeft':
          e.preventDefault();
          if (appendixOpen) {
            prevAppendixSlide();
          } else {
            prevSlide();
          }
          break;

        case 'ArrowDown':
          e.preventDefault();
          if (appendixOpen) {
            nextAppendixSlide();
          } else {
            nextSlide();
          }
          break;

        case 'ArrowUp':
          e.preventDefault();
          if (appendixOpen) {
            prevAppendixSlide();
          } else {
            prevSlide();
          }
          break;

        case 'Home':
          e.preventDefault();
          goToSlide(0);
          break;

        case 'End':
          e.preventDefault();
          goToSlide(totalSlides - 1);
          break;

        case 't':
        case 'T':
          e.preventDefault();
          toggleTOC();
          break;

        case 'a':
        case 'A':
          e.preventDefault();
          toggleAppendix();
          break;

        case 's':
        case 'S':
          e.preventDefault();
          window.location.href = '../index.html';
          break;

        case 'f':
        case 'F':
          e.preventDefault();
          toggleFullscreen();
          break;

        case 'Escape':
          e.preventDefault();
          closeTOC();
          closeAppendix();
          break;

        case 'Enter':
          if (appendixOpen) {
            e.preventDefault();
            closeAppendix();
          }
          break;

        default:
          // Number keys 1-9 for quick navigation
          if (e.key >= '1' && e.key <= '9') {
            const slideNum = parseInt(e.key) - 1;
            if (slideNum < totalSlides) {
              e.preventDefault();
              goToSlide(slideNum);
            }
          }
      }
    });
  }

  // ===== Touch Navigation =====
  function setupTouchNav() {
    let touchStartX = 0;
    let touchStartY = 0;
    const minSwipeDistance = 50;

    document.addEventListener('touchstart', (e) => {
      touchStartX = e.touches[0].clientX;
      touchStartY = e.touches[0].clientY;
    }, { passive: true });

    document.addEventListener('touchend', (e) => {
      const touchEndX = e.changedTouches[0].clientX;
      const touchEndY = e.changedTouches[0].clientY;

      const deltaX = touchEndX - touchStartX;
      const deltaY = touchEndY - touchStartY;

      // Only handle horizontal swipes
      if (Math.abs(deltaX) > Math.abs(deltaY) && Math.abs(deltaX) > minSwipeDistance) {
        if (deltaX > 0) {
          prevSlide();
        } else {
          nextSlide();
        }
      }
    }, { passive: true });
  }

  // ===== TOC =====
  function buildTOC() {
    if (!tocContent) return;

    tocContent.innerHTML = '';

    let currentSection = null;
    let sectionDiv = null;

    slides.forEach((slide, i) => {
      const section = slide.dataset.section || 'Slides';
      const title = slide.dataset.title || `Slide ${i + 1}`;

      // Create new section if needed
      if (section !== currentSection) {
        currentSection = section;
        sectionDiv = document.createElement('div');
        sectionDiv.className = 'toc-section';

        const sectionTitle = document.createElement('div');
        sectionTitle.className = 'toc-section-title';
        sectionTitle.textContent = section;
        sectionDiv.appendChild(sectionTitle);

        tocContent.appendChild(sectionDiv);
      }

      // Create TOC item
      const item = document.createElement('div');
      item.className = 'toc-item';
      item.textContent = title;
      item.dataset.slide = i;

      item.addEventListener('click', () => {
        goToSlide(i);
        closeTOC();
      });

      sectionDiv.appendChild(item);
    });
  }

  function updateTOCHighlight() {
    if (!tocContent) return;

    const items = tocContent.querySelectorAll('.toc-item');
    items.forEach((item, i) => {
      const slideIndex = parseInt(item.dataset.slide);
      item.classList.toggle('current', slideIndex === currentSlide);
    });
  }

  function toggleTOC() {
    if (tocOpen) {
      closeTOC();
    } else {
      openTOC();
    }
  }

  function openTOC() {
    closeAppendix();
    tocOpen = true;
    if (tocOverlay) tocOverlay.classList.add('active');
    if (overlayBackdrop) overlayBackdrop.classList.add('active');
    updateTOCHighlight();
  }

  function closeTOC() {
    tocOpen = false;
    if (tocOverlay) tocOverlay.classList.remove('active');
    if (overlayBackdrop) overlayBackdrop.classList.remove('active');
  }

  // ===== Appendix =====
  function toggleAppendix() {
    if (appendixOpen) {
      closeAppendix();
    } else {
      openAppendix();
    }
  }

  function openAppendix() {
    if (appendixSlides.length === 0) return;

    closeTOC();
    appendixOpen = true;
    currentAppendixSlide = 0;

    if (appendixOverlay) appendixOverlay.classList.add('active');
    if (overlayBackdrop) overlayBackdrop.classList.add('active');

    showAppendixSlide(0);
  }

  function closeAppendix() {
    appendixOpen = false;
    if (appendixOverlay) appendixOverlay.classList.remove('active');
    if (overlayBackdrop) overlayBackdrop.classList.remove('active');
  }

  function showAppendixSlide(n) {
    if (n < 0) n = 0;
    if (n >= appendixSlides.length) n = appendixSlides.length - 1;

    currentAppendixSlide = n;

    if (appendixContent) {
      appendixContent.innerHTML = '';
      const slideClone = appendixSlides[n].cloneNode(true);
      slideClone.style.position = 'relative';
      slideClone.style.opacity = '1';
      slideClone.style.visibility = 'visible';
      slideClone.style.transform = 'none';
      appendixContent.appendChild(slideClone);
    }

    // Update counter
    const counter = document.getElementById('appendix-counter');
    if (counter) {
      counter.textContent = `${n + 1} / ${appendixSlides.length}`;
    }
  }

  function nextAppendixSlide() {
    if (currentAppendixSlide < appendixSlides.length - 1) {
      showAppendixSlide(currentAppendixSlide + 1);
    }
  }

  function prevAppendixSlide() {
    if (currentAppendixSlide > 0) {
      showAppendixSlide(currentAppendixSlide - 1);
    }
  }

  // ===== Overlay Controls =====
  function setupOverlayControls() {
    // TOC close button
    const tocClose = document.getElementById('toc-close');
    if (tocClose) {
      tocClose.addEventListener('click', closeTOC);
    }

    // Appendix close button
    const appendixClose = document.getElementById('appendix-close');
    if (appendixClose) {
      appendixClose.addEventListener('click', closeAppendix);
    }

    // Appendix navigation buttons
    const appendixPrev = document.getElementById('appendix-prev');
    const appendixNext = document.getElementById('appendix-next');
    if (appendixPrev) {
      appendixPrev.addEventListener('click', prevAppendixSlide);
    }
    if (appendixNext) {
      appendixNext.addEventListener('click', nextAppendixSlide);
    }

    // Backdrop click to close
    if (overlayBackdrop) {
      overlayBackdrop.addEventListener('click', () => {
        closeTOC();
        closeAppendix();
      });
    }
  }

  // ===== Fullscreen =====
  function toggleFullscreen() {
    if (!document.fullscreenElement) {
      document.documentElement.requestFullscreen().catch(err => {
        console.log('Fullscreen not available:', err);
      });
    } else {
      document.exitFullscreen();
    }
  }

  // ===== Public API =====
  window.Presentation = {
    goToSlide,
    nextSlide,
    prevSlide,
    toggleTOC,
    toggleAppendix,
    toggleFullscreen,
    getCurrentSlide: () => currentSlide,
    getTotalSlides: () => totalSlides
  };

  // ===== Initialize on DOM Ready =====
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
