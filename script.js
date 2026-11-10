// Accessible mobile navigation and section tracking
document.addEventListener('DOMContentLoaded', function () {
  const navToggle = document.querySelector('.nav-toggle');
  const navMenu = document.querySelector('.nav-menu');
  const navLinks = document.querySelectorAll('.nav-menu a');
  const sections = document.querySelectorAll('section[id]');

  if (navToggle && navMenu) {
    navToggle.addEventListener('click', function () {
      const isExpanded = navToggle.getAttribute('aria-expanded') === 'true';
      navToggle.setAttribute('aria-expanded', String(!isExpanded));
      navToggle.classList.toggle('active');
      navMenu.classList.toggle('active');
    });

    // Close mobile menu on Escape key
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape' && navMenu.classList.contains('active')) {
        navToggle.setAttribute('aria-expanded', 'false');
        navToggle.classList.remove('active');
        navMenu.classList.remove('active');
        navToggle.focus();
      }
    });

    // Close mobile menu when clicking outside
    document.addEventListener('click', function (e) {
      if (navMenu.classList.contains('active') && !e.target.closest('.header')) {
        navToggle.setAttribute('aria-expanded', 'false');
        navToggle.classList.remove('active');
        navMenu.classList.remove('active');
      }
    });
  }

  // Close mobile menu when clicking any nav link
  navLinks.forEach(function (link) {
    link.addEventListener('click', function () {
      if (navMenu && navToggle && navMenu.classList.contains('active')) {
        navToggle.setAttribute('aria-expanded', 'false');
        navToggle.classList.remove('active');
        navMenu.classList.remove('active');
      }
    });
  });

  // Track active section and update nav indicator
  if ('IntersectionObserver' in window && sections.length > 0) {
    const observer = new IntersectionObserver(
      function (entries) {
        entries.forEach(function (entry) {
          if (entry.isIntersecting) {
            const id = entry.target.getAttribute('id');
            navLinks.forEach(function (link) {
              if (link.getAttribute('href') === '#' + id) {
                link.classList.add('active');
              } else {
                link.classList.remove('active');
              }
            });
          }
        });
      },
      { rootMargin: '-20% 0px -70% 0px' }
    );

    sections.forEach(function (section) {
      observer.observe(section);
    });
  }
});
