<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
        <title>{block name=title}Pepster's Place{/block}</title>
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="shortcut icon" href="favicon.ico" >
        <script src='https://www.google.com/recaptcha/api.js'></script>
    </head>
    <body id="exit-frame">
        <div id="shadeELE" class="shade">
            <figure class="pictureBox">
                <img id="pictureELE" src="">
                <a id="preSlide" href="#">PREV</a>
                <a id="nextSlide" href="#">NEXT</a>
                
            </figure>
        </div> 
        {block name=navigationTemplate}
            <div class="container">
                <nav id="sticky" class="navigational-wrapper shadow">
                    <label for="show-menu" class="show-menu">Show Menu</label>
                    <input type="checkbox" id="show-menu" role="button">
                    <ul id="menu">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="about.php">About</a></li>                       
                        <li><a href="photos.php">Photos</a></li>  
                        <li><a href="contact.php">Contact</a></li>                         
                    </ul>
                </nav>
            </div>
        {/block}
        {block name=headerTemplate}
            <header id="linear-gradient" class="container headerStyle shadow bottom-rounded">
                {$calendar}                 
                <img class="logo" src="assets/images/img-logo-001.png" accesskey="The Miniature Photographer">
                <h1>The Miniature Photographer</h1>

            </header>
        {/block}

        <main class="container content-style"> 
            {block name=body}
                <section class="main-website shadow rounded">
                    <h1>Worth a Thousand Words</h1>
                    <p>That's the old saying about photography and it still holds true into today's digital world. Photography can express emotions that would be hard to put into words. It does not matter if you have a Smartphone, Mirrorless or DSLR camera, the objective is to capture that moment in time. The Miniature Photographer website is going to deal with my best pictures and it will in time feature my best videos. I plan on having an upload section where people can upload their pictures and have them critique if they wish to do so.</p>

                </section>


                <figure id="v-gradient-3" class="aside-style shadow rounded">
                    <img class="pictures" src="assets/images/img-computer-setup-002.jpg" alt="computer setup">
                </figure>
            {/block}
        </main>

        <footer id="v-gradient" class="container page-footer top-rounded one-edge-shadow">
            <p class="page-info">&copy;2019 The Miniature Photographer</p>
        </footer>
        <script src="assets/js/myLightRoom.js"></script>
    </body>
</html>