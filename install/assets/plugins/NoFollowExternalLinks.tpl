//<?php
/**
 * NoFollowExternalLinks
 *
 * Add no-follow to external links in content
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.5
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnParseDocument
 * @internal    @installset base
 * @internal    @modx_category Seo4Evo
 * @internal    @properties  &NofollowDomain= NoFollow only this Domain:;string; &NofollowHttps= NoFollow external https urls:;list;yes,no;yes
 */

/*
###NoFollowExternalLinks Plugin for Evolution###
Written By Nicola Lambathakis http://www.tattoocms.it/
Version 1.5
Events: OnParseDocument

 */

/*
Default configuration:
&NofollowDomain= NoFollow only this Domain:;string; &NofollowHttps= NoFollow external https urls:;list;yes,no;yes

Note:
Use "NoFollow only this Domain" to add re="nofollow" only to a selected domain (ie: amazon affiliate links)

&NofollowDomain= NoFollow only this Domain:;string;www.amazon
*/

$NofollowDomain = isset($NofollowDomain) ? $NofollowDomain : '';

$Followtv = "DoFollow"; // Set the name of the Template Variable to enable do-follow links in content
//$documentIdentifier = ($modx->documentIdentifier);
$DoFollow = $modx->getTemplateVarOutput($Followtv,'id'); // Get the template value using API call

$e= & $modx->Event;
switch ($e->name) {
	case "OnParseDocument":
	 if ($DoFollow[$Followtv] == 'nofollow')  // check tv value
{
	// search external Links in document and add no-follow tag
	 	$modx->documentObject['content'] = str_replace(' href="http://'.$NofollowDomain.'',' rel="nofollow" href="http://'.$NofollowDomain.'',$modx->documentObject['content']);
	 }
		break;

   default :
       return; // stop.
}