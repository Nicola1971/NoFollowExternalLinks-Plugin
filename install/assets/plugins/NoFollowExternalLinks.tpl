//<?php
/**
 * NoFollowExternalLinks
 *
 * Add no-follow to external links in content
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.1 PL
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnLoadWebDocument
 * @internal    @installset base
 * @internal    @modx_category Seo4Evo
 * @internal    @properties  &NofollowDomain= NoFollow only this Domain:;string;
 */

/*
###NoFollowExternalLinks Plugin for MODX Evolution###
Written By Nicola Lambathakis http://www.tattoocms.it/
Version 1.1 PL
Events: OnLoadWebDocument

 */

/*

Optional configuration to add re="no-follow" only to a selected domain (ie: amazon affiliate links)

&NofollowDomain= NoFollow only this Domain:;string;www.amazon
*/
$NofollowDomain = isset($NofollowDomain) ? $NofollowDomain : '';

$e= & $modx->Event;
switch ($e->name) {
	case "OnLoadWebDocument":
	// search external Links in document  and add no-follow tag
	 	$modx->documentObject['content'] = str_replace(' href="http://'.$NofollowDomain.'',' rel="no-follow" href="http://'.$NofollowDomain.'',$modx->documentObject['content']);
		break;

   default :
       return; // stop.
}