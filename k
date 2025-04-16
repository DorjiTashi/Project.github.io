<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Eco-Friendly Product Finder - Discover sustainable and green alternatives for a better future.">
    <meta name="keywords" content="eco-friendly, products, sustainability, green products, eco-friendly alternatives">
    <meta name="author" content="Eco-Friendly Finder Team">
    <title>Eco-Friendly Product Finder</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="manifest" href="manifest.json">

    <style>
        /* Navbar */
        .navbar {
            background: linear-gradient(135deg, #4CAF50, #2E7D32);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .navbar-brand {
            font-weight: bold;
            color: #fff !important;
            font-size: 1.5rem;
            display: flex;
            align-items: center;
        }
        .navbar-nav .nav-link {
            color: #fff !important;
            margin-right: 15px;
            transition: color 0.3s ease-in-out;
        }
        .navbar-nav .nav-link:hover {
            color: #C8E6C9 !important;
        }
        .navbar-toggler {
            border: none;
            color: #fff;
        }

        /* Centering the logo in the middle */
        .navbar-collapse {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }

        .navbar-brand img {
            width: 40px; /* Adjust logo size */
            margin-right: 10px; /* Space between logo and text */
        }

        /* Hero Section */
        .hero {
            position: relative;
            min-height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 20px;
            flex-direction: column;
            overflow: hidden;
            background-color: #4CAF50;
            color: white;
        }
        .hero-background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            animation: changeBackground 12s infinite alternate;
        }
        .hero-content {
            position: relative;
            z-index: 2;
        }

        /* Body Section */
        .body-content {
            padding: 50px 0;
            background-color: #f9f9f9;
        }
        .body-content h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .feature-item {
            text-align: center;
            padding: 20px;
        }
        .feature-item img {
            width: 200px;
            margin-bottom: 15px;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: white;
            padding: 15px 0;
        }

        /* Dark Mode Styles */
        body.dark-mode {
            background-color: #121212;
            color: #e0e0e0;
        }

        body.dark-mode .navbar {
            background: linear-gradient(135deg, #333, #000);
        }

        body.dark-mode .navbar-nav .nav-link,
        body.dark-mode .navbar-brand {
            color: #fff !important;
        }

        body.dark-mode .body-content {
            background-color: #1e1e1e;
        }

        body.dark-mode footer {
            background-color: #000;
        }

      
    </style>
</head>