<?php
require_once '../private/initialize.php';
 
$calendar = $monthly->generateCalendar($basename);

$smarty->assign('calendar', $calendar);
$title = "The Miniature Photographer";
$smarty->assign("title", $title);
$smarty->display('index_template.tpl');
