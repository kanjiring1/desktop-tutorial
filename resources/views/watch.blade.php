<html lang="en">
<head>
    <title>{{$tags['title']}}</title>
    <meta name="theme-color" content="rgba(255, 255, 255, 0.98)" />
    <meta name="title" content="{{$tags['title']}}" />
    <meta name="description" content="{{$tags['description']}}" />
    <meta name="keywords" content="{{$tags['keywords']}}" />
    <meta property="og:site_name" content="YouTube" />
    <meta property="og:url" content="{{$tags['url']}}" />
    <meta property="og:title" content="{{$tags['title']}}" />
    <meta property="og:image" content="{{$tags['image']}}" />
    <meta property="og:image:width" content="1280" />
    <meta property="og:image:height" content="720" />
    <meta property="og:description" content="{{$tags['description']}}" />
    <meta property="al:ios:app_store_id" content="544007664" />
    <meta property="al:ios:app_name" content="YouTube" />
    <meta property="al:ios:url" content="{{$tags['app:url']}}" />
    <meta property="al:android:url" content="{{$tags['app:url']}}" />
    <meta property="al:web:url" content="{{$tags['app:url']}}" />
    <meta property="og:type" content="video.other" />
    <meta property="og:video:url" content="{{$tags['player']}}" />
    <meta property="og:video:secure_url" content="{{$tags['player']}}" />
    <meta property="og:video:type" content="text/html" />
    <meta property="og:video:width" content="1280" />
    <meta property="og:video:height" content="720" />
    <meta property="al:android:app_name" content="YouTube" />
    <meta property="al:android:package" content="com.google.android.youtube" />
    <meta property="og:video:tag" content="Youtube" />
    <meta property="fb:app_id" content="87741124305" />
    <meta name="twitter:card" content="player" />
    <meta name="twitter:site" content="@youtube" />
    <meta name="twitter:url" content="{{$tags['url']}}" />
    <meta name="twitter:title" content="{{$tags['title']}}" />
    <meta name="twitter:description" content="{{$tags['description']}}" />
    <meta name="twitter:image" content="{{$tags['image']}}" />
    <meta name="twitter:app:name:iphone" content="YouTube" />
    <meta name="twitter:app:id:iphone" content="544007664" />
    <meta name="twitter:app:name:ipad" content="YouTube" />
    <meta name="twitter:app:id:ipad" content="544007664" />
    <meta name="twitter:app:url:iphone" content="{{$tags['app:url']}}" />
    <meta name="twitter:app:url:ipad" content="{{$tags['app:url']}}" />
    <meta name="twitter:app:name:googleplay" content="YouTube" />
    <meta name="twitter:app:id:googleplay" content="com.google.android.youtube" />
    <meta name="twitter:app:url:googleplay" content="{{$tags['url']}}" />
    <meta name="twitter:player" content="{{$tags['player']}}" />
    <meta name="twitter:player:width" content="1280" />
    <meta name="twitter:player:height" content="720" />
</head>
<body>
</body>
<script>
    window.location = "{{$tags['url']}}";
</script>