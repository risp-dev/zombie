<html>
    <head>
        <title>Zombiai - atrieda atidunda!</title>
    </head>
    <body>
        <ul>
                {{-- <?php foreach($zombies as $zombie): ?>
                <li><?php echo $zombie->name; ?></li>
                <?php endforeach; ?>  --}}
            @foreach($zombies as $zombie)
            <li>{{ $zombie->name }}</li>
            @endforeach
        </ul>
    </body>
</html>