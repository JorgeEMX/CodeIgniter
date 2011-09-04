<html>
<head>
    <title>All Posts</title>
</head>
<body>
    <h2>All Posts</h2>
    <ul>
        <?php foreach ($posts as $post): ?>
        <li><?php echo $post['title'] ?></li>
        <?php endforeach; ?>
    </ul>
</body>
</html>