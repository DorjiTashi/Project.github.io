<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Products - Eco-Friendly Finder</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="styles.css" rel="stylesheet" />
  <style>
    .filter-bar {
      margin-bottom: 30px;
    }

    .product-card {
      opacity: 0;
      transform: translateY(30px);
      transition: opacity 0.5s, transform 0.5s ease-in-out;
      display: block;
    }

    .product-card.visible {
      opacity: 1;
      transform: translateY(0);
    }

    .toast-container {
      z-index: 1055;
    }

    .modal-dialog {
      max-width: 400px;
    }

    .view-btn {
      background-color: #28a745;
      color: white;
      border: none;
      padding: 5px 10px;
      cursor: pointer;
    }

    .product-card {
      display: block;
    }
  </style>
</head>

<body>
  <nav class="navbar navbar-expand-lg fixed-top navbar-dark" style="background-color: #28a745;">
    <div class="container">
      <a class="navbar-brand" href="index.html">Eco-Friendly Finder</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="products.html">Products</a></li>
          <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
          <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
          <li class="nav-item"><a class="nav-link" href="buy.html">buy</a></li>
          <li class="nav-item">
            <a class="nav-link position-relative" href="cart.html">
              Cart
              <span class="badge bg-warning text-dark position-absolute top-0 start-100 translate-middle" id="cart-count">0</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section class="products py-5 mt-5">
    <div class="container">
      <h2 class="text-center mb-4">Eco-Friendly Products</h2>

      <div class="filter-bar row mb-4">
        <div class="col-md-6 mb-2">
          <input type="text" id="searchInput" class="form-control" placeholder="Search for a product...">
        </div>
        <div class="col-md-6 mb-2">
          <select id="categoryFilter" class="form-select">
            <option value="">All Categories</option>
            <option value="hygiene">Hygiene</option>
            <option value="accessories">Accessories</option>
            <option value="household">Household</option>
            <option value="technology">Technology</option>
            <option value="stationery">Stationery</option>
          </select>
        </div>
      </div>

      <div class="row" id="productList">
        <!-- Product Cards -->
        <div class="col-md-4 mb-4 product-card" data-category="hygiene">
          <div class="card">
            <img src="bam.jpg" class="card-img-top" alt="Bamboo Toothbrush">
            <div class="card-body">
              <h5 class="card-title">Bamboo Toothbrush</h5>
              <p class="card-text">An eco-friendly alternative to plastic toothbrushes, made from sustainable bamboo.</p>
              <p class="card-text"><strong>Nu 4.99</strong></p>
              <button class="btn btn-success" onclick="addToCart('Bamboo Toothbrush')">Add to Cart</button>
              <button class="view-btn" onclick="showLoginModal()">Buy Now</button>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-4 product-card" data-category="hygiene">
          <div class="card">
            <img src="shampoo.jpg" class="card-img-top" alt="Eco-Friendly Shampoo Bar">
            <div class="card-body">
              <h5 class="card-title">Eco-Friendly Shampoo Bar</h5>
              <p class="card-text">A zero-waste shampoo bar that’s gentle on your hair and the environment.</p>
              <p class="card-text"><strong>Nu 8.99</strong></p>
              <button class="btn btn-success" onclick="addToCart('Eco-Friendly Shampoo Bar')">Add to Cart</button>
              <button class="view-btn" onclick="showLoginModal()">Buy Now</button>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-4 product-card" data-category="accessories">
          <div class="card">
            <img src="water.png" class="card-img-top" alt="Reusable Water Bottle">
            <div class="card-body">
              <h5 class="card-title">Reusable Water Bottle</h5>
              <p class="card-text">Stay hydrated with this stainless steel reusable water bottle, perfect for reducing plastic waste.</p>
              <p class="card-text"><strong>Nu 12.99</strong></p>
              <button class="btn btn-success" onclick="addToCart('Reusable Water Bottle')">Add to Cart</button>
              <button class="view-btn" onclick="showLoginModal()">Buy Now</button>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-4 product-card" data-category="household">
          <div class="card">
            <img src="bag.jpg" class="card-img-top" alt="Organic Cotton Tote Bag">
            <div class="card-body">
              <h5 class="card-title">Organic Cotton Tote Bag</h5>
              <p class="card-text">A stylish, durable tote bag made from organic cotton to reduce single-use plastic bags.</p>
              <p class="card-text"><strong>Nu 7.99</strong></p>
              <button class="btn btn-success" onclick="addToCart('Organic Cotton Tote Bag')">Add to Cart</button>
              <button class="view-btn" onclick="showLoginModal()">Buy Now</button>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-4 product-card" data-category="technology">
          <div class="card">
            <img src="coffee.jpg" class="card-img-top" alt="Reusable Coffee Cup">
            <div class="card-body">
              <h5 class="card-title">Reusable Coffee Cup</h5>
              <p class="card-text">Take your coffee on the go with this reusable coffee cup, reducing waste from disposable cups.</p>
              <p class="card-text"><strong>Nu 10.99</strong></p>
              <button class="btn btn-success" onclick="addToCart('Reusable Coffee Cup')">Add to Cart</button>
              <button class="view-btn" onclick="showLoginModal()">Buy Now</button>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-4 product-card" data-category="accessories">
          <div class="card">
            <img src="solar.jpg" class="card-img-top" alt="Solar Powered Lantern">
            <div class="card-body">
              <h5 class="card-title">Solar Powered Lantern</h5>
              <p class="card-text">A solar-powered lantern, perfect for outdoor adventures without the need for disposable batteries.</p>
              <p class="card-text"><strong>Nu 18.99</strong></p>
              <button class="btn btn-success" onclick="addToCart('Solar Powered Lantern')">Add to Cart</button>
              <button class="view-btn" onclick="showLoginModal()">Buy Now</button>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-4 product-card" data-category="household">
          <div class="card">
            <img src="trash.jpg" class="card-img-top" alt="Compostable Trash Bags">
            <div class="card-body">
              <h5 class="card-title">Compostable Trash Bags</h5>
              <p class="card-text">These compostable trash bags break down quickly, helping reduce landfill waste.</p>
              <p class="card-text"><strong>Nu 11.99</strong></p>
              <button class="btn btn-success" onclick="addToCart('Compostable Trash Bags')">Add to Cart</button>
              <button class="view-btn" onclick="showLoginModal()">Buy Now</button>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-4 product-card" data-category="stationery">
          <div class="card">
            <img src="note.jpg" class="card-img-top" alt="Recycled Paper Notebook">
            <div class="card-body">
              <h5 class="card-title">Recycled Paper Notebook</h5>
              <p class="card-text">A notebook made from 100% recycled paper, helping reduce waste.</p>
              <p class="card-text"><strong>Nu 3.99</strong></p>
              <button class="btn btn-success" onclick="addToCart('Recycled Paper Notebook')">Add to Cart</button>
              <button class="view-btn" onclick="showLoginModal()">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <div class="toast-container position-fixed bottom-0 end-0 p-3">
    <div class="toast align-items-center text-bg-success" id="cartToast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="d-flex">
        <div class="toast-body">Item added to cart.</div>
        <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
      </div>
    </div>
  </div>
  

  <div class="modal fade" id="authModal" tabindex="-1" aria-labelledby="authModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div id="loginModalContent"></div>
      </div>
    </div>
  </div>

  <footer class="bg-dark text-white text-center py-4">
    <p>&copy; 2025 Eco-Friendly Finder. All rights reserved.</p>
    <div class="d-flex justify-content-center align-items-center mt-2 gap-3">
      <a href="https://www.facebook.com/tiger.tashi/" target="_blank" rel="noopener noreferrer">
        <img src="facebook.png" alt="Facebook" class="social-icon">
      </a>
      <a href="https://x.com/DORJITA406" target="_blank" rel="noopener noreferrer">
        <img src="twitter.png" alt="Twitter" class="social-icon">
      </a>
      <a href="#" target="_blank" rel="noopener noreferrer">
        <img src="instagram.png" alt="Instagram" class="social-icon">
      </a>
    </div>
  </footer>

  <script>
    const searchInput = document.getElementById('searchInput');
    const categoryFilter = document.getElementById('categoryFilter');
    const productCards = document.querySelectorAll('.product-card');

    function filterProducts() {
      const searchTerm = searchInput.value.toLowerCase();
      const selectedCategory = categoryFilter.value;
      let delay = 0;

      productCards.forEach(card => {
        const title = card.querySelector('.card-title').textContent.toLowerCase();
        const category = card.getAttribute('data-category');

        const matchesSearch = title.startsWith(searchTerm); // filter by first letter
        const matchesCategory = selectedCategory === "" || category === selectedCategory;

        card.classList.remove('visible');

        if (matchesSearch && matchesCategory) {
          setTimeout(() => {
            card.classList.add('visible');
          }, delay);
          delay += 100;
        } else {
          card.classList.remove('visible');
        }
      });
    }

    searchInput.addEventListener('input', filterProducts);
    categoryFilter.addEventListener('change', filterProducts);
    filterProducts();

    const cartKey = 'ecoCart';

    function loadCartCount() {
      const cart = JSON.parse(localStorage.getItem(cartKey)) || [];
      document.getElementById('cart-count').textContent = cart.length;
    }

    function showToast(message) {
      const toastElement = document.getElementById('cartToast');
      toastElement.querySelector('.toast-body').textContent = message;
      const toast = new bootstrap.Toast(toastElement);
      toast.show();
    }

    function addToCart(productName) {
      const cart = JSON.parse(localStorage.getItem(cartKey)) || [];
      const product = getProductDetails(productName);
      cart.push(product);
      localStorage.setItem(cartKey, JSON.stringify(cart));
      loadCartCount();
      showToast(`${productName} has been added to your cart.`);
    }

    function getProductDetails(productName) {
      const products = {
        'Bamboo Toothbrush': {
          name: 'Bamboo Toothbrush',
          description: 'An eco-friendly alternative to plastic toothbrushes, made from sustainable bamboo.',
          price: 'Nu 4.99',
          image: 'bam.jpg'
        },
        'Eco-Friendly Shampoo Bar': {
          name: 'Eco-Friendly Shampoo Bar',
          description: 'A zero-waste shampoo bar that’s gentle on your hair and the environment.',
          price: 'Nu 8.99',
          image: 'shampoo.jpg'
        },
        'Reusable Water Bottle': {
          name: 'Reusable Water Bottle',
          description: 'Stay hydrated with this stainless steel reusable water bottle, perfect for reducing plastic waste.',
          price: 'Nu 12.99',
          image: 'water.png'
        },
        'Organic Cotton Tote Bag': {
          name: 'Organic Cotton Tote Bag',
          description: 'A stylish, durable tote bag made from organic cotton to reduce single-use plastic bags.',
          price: 'Nu 7.99',
          image: 'bag.jpg'
        },
        'Reusable Coffee Cup': {
          name: 'Reusable Coffee Cup',
          description: 'Take your coffee on the go with this reusable coffee cup, reducing waste from disposable cups.',
          price: 'Nu 10.99',
          image: 'coffee.jpg'
        },
        'Solar Powered Lantern': {
          name: 'Solar Powered Lantern',
          description: 'A solar-powered lantern, perfect for outdoor adventures without the need for disposable batteries.',
          price: 'Nu 18.99',
          image: 'solar.jpg'
        },
        'Compostable Trash Bags': {
          name: 'Compostable Trash Bags',
          description: 'These compostable trash bags break down quickly, helping reduce landfill waste.',
          price: 'Nu 11.99',
          image: 'trash.jpg'
        },
        'Recycled Paper Notebook': {
          name: 'Recycled Paper Notebook',
          description: 'A notebook made from 100% recycled paper, helping reduce waste.',
          price: 'Nu 3.99',
          image: 'note.jpg'
        }
      };
      return products[productName] || {};
    }

    loadCartCount();

  
   
  
  <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered login-modal">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="loginModalLabel">Login to Continue</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="loginForm">
            <div class="mb-3">
              <label for="email" class="form-label">Email address</label>
              <input type="email" class="form-control" id="email" required>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <input type="password" class="form-control" id="password" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Login</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
