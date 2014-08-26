//<?php
/**
 * NoFollowExternalLinks
 *
 * Add no-follow to external links in content
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.3 PL
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnLoadWebDocument
 * @internal    @installset base
 * @internal    @modx_category Seo4Evo
 * @internal    @properties  &NofollowDomain= NoFollow only this Domain:;string; &NofollowHttps= NoFollow external https urls:;list;yes,no;yes
 */

/*
###NoFollowExternalLinks Plugin for MODX Evolution###
Written By Nicola Lambathakis http://www.tattoocms.it/
Version 1.3 PL
Events: OnLoadWebDocument

 */

/*
Default configuration:
&NofollowDomain= NoFollow only this Domain:;string; &NofollowHttps= NoFollow external https urls:;list;yes,no;yes

Note:
Use "NoFollow only this Domain" to add re="nofollow" only to a selected domain (ie: amazon affiliate links)

"NoFollow only this Domain"  www.amazon
*/

$NofollowDomain = isset($NofollowDomain) ? $NofollowDomain : '';

$Followtv = "DoFollow"; // Set the name of the Template Variable to enable do-follow links in content
//$documentIdentifier = ($modx->documentIdentifier);
$DoFollow = $modx->getTemplateVarOutput($Followtv,id); // Get the template value using API call

$e= & $modx->Event;
switch ($e->name) {
	case "OnLoadWebDocument":
	 if ($DoFollow[$Followtv] == nofollow)  // check tv value
{
	// search external Links in document and add no-follow tag
	 	$modx->documentObject['content'] = str_replace(' href="http://'.$NofollowDomain.'',' rel="nofollow" href="http://'.$NofollowDomain.'',$modx->documentObject['content']);
		 if ($NofollowHttps == yes) {
		$modx->documentObject['content'] = str_replace(' href="https://'.$NofollowDomain.'',' rel="nofollow" href="https://'.$NofollowDomain.'',$modx->documentObject['content']);
		 }
	 }
		break;

   default :
       return; // stop.
}