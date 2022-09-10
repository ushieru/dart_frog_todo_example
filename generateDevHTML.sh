#!/bin/sh

echo "<!DOCTYPE html>
<html lang=\"en\">

<head>
    <meta charset=\"UTF-8\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>Document</title>
    <script type=\"module\">
        import RefreshRuntime from 'http://localhost:5173/@react-refresh'
        RefreshRuntime.injectIntoGlobalHook(window)
        window.$RefreshReg$ = () => { }
        window.$RefreshSig$ = () => (type) => type
        window.__vite_plugin_react_preamble_installed__ = true
    </script>
    <script type=\"module\" src=\"http://localhost:5173/@vite/client\"></script>
</head>

<body>
    <div id=\"root\"></div>
    <script type=\"module\" src=\"http://localhost:5173/src/main.jsx\"></script>
</body>

</html>" > public/index.html