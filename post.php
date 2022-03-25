<?php
session_start();
include("db.php"); //data connection
include("user_navbar.php");
?>
<!DOCTYPE html>
<html>
    <head>
    <title>POST</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/nav.css">

    </head>
    <body>
        <form method="POST" action="post_data.php" enctype="multipart/form-data">
            <div class="container">
            <br>
        
        <label for="type"><h4>What type of blog is this?</h4></label>
        <select class="form-select form-select-sm" id="type" name="type"required>
        <option selected disabled hidden>Choose an Option</option>
            <option value="news">News</option>
            <option value="reviews">Reviews</option>
            <option value="question">Question</option>
            <option value="others">Others</option>
        </select>
        <br>
        <br>
        <label for="category"><h4>What is this blog related to?</h4></label>
        <select class="form-select form-select-sm" id="category" name="category" required>
        <option selected disabled hidden>Choose an Option</option>
            <option value="phone">Phone</option>
            <option value="headphone">Headphone</option>
            <option value="drone">Drone</option>
            <option value="laptop">Laptop</option>
            <option value="dslr">DSLR</option>
            <option value="gaming controller">Gaming Controller</option>
            <option value="gaming keyboard">Others</option>
            <option value="others">Others</option>
        </select>
        <br>
        <br>
            <input type="text" name="title" placeholder="Title for your blog" required/>
            <br>
            <br>
        <textarea name="description" rows="20" cols="100" placeholder="Description" required></textarea>
        <br>
        <br>
        
        <div>
        <h4>Image for your Blog: </h4>
        <label> <h6>Choose image of your choice:</h6></label>
            <input type="file" name="blog_image">
            <br>
            <br>
            <button type="submit" name="post" class="btn btn-secondary">POST</button>
            <br>
        <br>
                </div>
        </form>
        </div>
        <?php
        include("footer.php"); 
        ?>
    </body>
</html>