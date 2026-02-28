// Hamburger menu toggle
document.querySelector('.hamburger').addEventListener('click', function() {
  document.querySelector('.nav-links').classList.toggle('active');
});

// Close mobile menu when a link is clicked
document.querySelectorAll('.nav-links a').forEach(link => {
  link.addEventListener('click', () => {
    document.querySelector('.nav-links').classList.remove('active');
  });
});

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    e.preventDefault();
    document.querySelector(this.getAttribute('href')).scrollIntoView({
      behavior: 'smooth',
      block: 'start'
    });
  });
});

// Form success/error message handling
document.addEventListener('DOMContentLoaded', function() {
  const urlParams      = new URLSearchParams(window.location.search);
  const status         = urlParams.get('status');
  const messageDiv     = document.getElementById('form-message');

  // Reset message on every normal page load (no status param)
  if (!status) {
    sessionStorage.removeItem('formJustSubmitted');
    messageDiv.classList.remove('show', 'success', 'error');
    messageDiv.textContent = '';
    messageDiv.style.display = 'none';
    return;
  }

  // Only show message if this is right after submission
  if (status && sessionStorage.getItem('formJustSubmitted') !== 'true') {
    messageDiv.style.display = 'block';
    messageDiv.classList.add('show');

    if (status === 'success') {
      messageDiv.textContent = "Message sent successfully! I'll get back to you soon 🌸";
      messageDiv.classList.add('success');
    } else if (status === 'error') {
      messageDiv.textContent = "Something went wrong. Please try again.";
      messageDiv.classList.add('error');
    }

    // Mark that we showed the message (survives only this session/tab)
    sessionStorage.setItem('formJustSubmitted', 'true');

    // Clean URL: remove query params and hash
    const cleanPath = window.location.pathname;
    window.history.replaceState({}, document.title, cleanPath);
  }
});

// Scroll reveal animation for sections
const sections = document.querySelectorAll('.section');

const revealSection = () => {
  sections.forEach(section => {
    const rect = section.getBoundingClientRect();
    if (rect.top < window.innerHeight - 120) {
      section.classList.add('visible');
    }
  });
};

window.addEventListener('scroll', revealSection);
revealSection(); // Run once on load