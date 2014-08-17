//<?php
/**
 * NoFollowExternalLinks
 *
 * Add no-follow to external links in content
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.0 PL
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnLoadWebDocument
 * @internal    @installset base
 * @internal    @modx_category Seo4Evo
 */

/*
###NoFollowExternalLinks Plugin for MODX Evolution###
Written By Nicola Lambathakis http://www.tattoocms.it/
Version 1.0 PL
Events: OnLoadWebDocument

 */

 $e= & $modx->Event;
switch ($e->name) {
	case "OnLoadWebDocument":
	// search external Links in document  and add no-follow tag
	 	$modx->documentObject['content'] = str_replace(' href="http://',' rel="no-follow" href="http://',$modx->documentObject['content']);
		break;

   default :
       return; // stop.
}