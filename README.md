# flutter_gitpage_home


loading code(body 안에)
```html
<style>
    @CHARSET "UTF-8";

    @font-face {
        font-family: 'MapoGoldenPier';
        src: url(http://111coding.com/fonts/MapoGoldenPier.ttf) format('truetype');
    }

    html {
        height: 100%;
    }

    body {
        margin: 0;
        padding: 0;
        font-family: MapoGoldenPier;
        background-color: #222;
        background-size: cover;
        height: 100vh;
    }

    #main {
        display: table;
        width: 100%;
        height: 100vh;
        text-align: center;
    }

    .fof {
        display: table-cell;
        vertical-align: middle;
    }

    .fof h1 {
        color: #FFF;
        font-size: 3.5vw;
        display: inline-block;
        padding-right: 12px;
        animation: type .5s alternate infinite;
    }

    @keyframes type {
        from {
            box-shadow: inset -3px 0px 0px #FFF;
        }

        to {
            box-shadow: inset -3px 0px 0px transparent;
        }
    }
   
</style>

  <div id="main">
    <div class="fof">
        <h1>111coding / 1일1코딩</h1>
    </div>
  </div>

```