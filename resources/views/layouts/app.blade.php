<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CPHUX Test</title>
    @vite('resources/css/app.css')
    @livewireStyles
</head>
<body>
    <header class="p-10">
        <h1 class="text-3xl md:text-4xl font-bold text-center">CPHUX</h1>
    </header>
    <main class="my-10">
        @yield('content')
    </main>
    <footer class="p-5">
        <p class="text-center text-sm">Create by <a href="https://zdenekpasek.com">Zdeněk Pašek</a></p>
    </footer>
    @livewireScripts
</body>
</html>
