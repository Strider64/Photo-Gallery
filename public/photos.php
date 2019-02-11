<?php

require_once '../private/initialize.php';

function grabFilenames($dir) {
    if (is_dir($dir)) {
        $handle = opendir($dir);
        while (false !== ($file = readdir($handle))) {
            if (is_file($dir . '/' . $file) && is_readable($dir . '/' . $file)) {
                $fileNames[] = $file;
            }
        }
        closedir($handle);
    } else {
        echo "<p>There is an directory read issue</p>";
    }
    return $fileNames;
}

$images = grabFilenames('assets/gallery/images');



for ($i = 0; $i < sizeof($images); $i++) {
    $resStr = str_replace('img', 'thumb', $images[$i]); 
    $gallery[] = '<a class="myLightBox" href="assets/gallery/images/' . $images[$i] . '" title="Picture Gallery" data-picture="' . $i . '">' .
            '<img class="box" src="assets/gallery/thumbnails/' . $resStr . '" alt="thumbnail" />' . '</a>';
}

array_unshift($gallery, '<div id="gallery" class="picture-box">');
array_push($gallery, '</div>' );


$calendar = $monthly->generateCalendar($basename);

$smarty->assign('gallery', $gallery);
$smarty->assign('calendar', $calendar);
$title = "Photos";
$smarty->assign("title", $title);
$smarty->display('photos.tpl');
