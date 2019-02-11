<?php
require_once '../private/initialize.php';
 
$calendar = $monthly->generateCalendar($basename);

$smarty->assign('calendar', $calendar);
$title = "About John Pepp";
$smarty->assign("title", $title);
$smarty->display('about_template.tpl');