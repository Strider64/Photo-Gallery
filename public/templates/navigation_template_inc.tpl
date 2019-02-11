<div class="mobileNav">
    <nav id="slider" class="slider"> <span class="slider-tab">&Congruent;</span>
        <ul class="slider-margin">
            <li><a href="index">home</a></li>
            <!--            <li><a href="#">about</a></li>
                        <li><a href="#">blog</a></li>
                        <li><a href="#">calendar</a></li> -->
            <li><a href="login">login</a></li>
            <li><a href="contact">contact</a></li>
                {if $security_level === 'member' || $security_level === 'sysop'}
                <!--<li><a href="create">add</a></li>-->
            {/if}
        </ul>
    </nav>
    <!-- END OF NAVIGATIONAL LINKS-->
    <div id="mobile-header">
        <p class="header-style">A Spice of Technology <span>{if !$login_status}<a class="mobile-login" href="login.php">login</a>{else}<a class="mobile-logoff" href="logout.php">logout</a>{/if}</span></p>

    </div>
    <!-- END OF MOBILE HEADER -->
</div>

<div id="sticky" class="row navigational-wrapper">
    <nav class="slider"> <span class="slider-tab">&Congruent;</span>
        <ul class="slider-margin">
            <li><a href="index">home</a></li>
            <!--<li><a href="#">about</a></li>
            <li><a href="#">blog</a></li>
            <li><a href="#">calendar</a></li>-->
            <li><a href="contact">contact</a></li>
                {if !$login_status}
                <li><a href="login">login</a></li>
                {elseif $login_status}
                <li><a class="logoutAnchor" href="logout.php">Hello {$username}! <span class="logoutBtn">logout</span></a></li>
                {/if}


        </ul>

    </nav>
    <!-- END OF NAVIGATIONAL LINKS-->
</div>
