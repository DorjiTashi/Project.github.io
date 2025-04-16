document.addEventListener("DOMContentLoaded", function() {
      // Get all the navigation links
      const navLinks = document.querySelectorAll('.nav-item');
  
      // Loop through all links
      navLinks.forEach(link => {
          // Check if the current URL matches the href of the link
          if (window.location.pathname.includes(link.getAttribute('href'))) {
              link.classList.add('active'); // Add the 'active' class to the current page link
          }
      });
  });
  