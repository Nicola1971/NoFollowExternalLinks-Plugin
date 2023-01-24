NoFollowExternalLinks Plugin for Evolution v. 1.5
============================

Add **rel="nofollow"** to all external links in Evolution content (only in content field).

#### Features: 

* **DoFollow tv** template variable to exclude documents from the plugin 
* **NoFollow https url** plugin configuration
* **No Follow only this domain** plugin configuration:

Using the configuration settings you can add rel="nofollow" only to a selected domain (ie: amazon affiliate links)

![plugin](https://raw.githubusercontent.com/Nicola1971/NoFollowExternalLinks-Plugin/master/13-plugin-conf.jpg)

# Installation instructions
* Install with Package Manager or Store module
* Assign the **DoFollow** template variable to your template.

or

* Create a plugin with name **NoFollowExternalLinks** and paste the code from NoFollowExternalLinks.tpl
* Check **OnParseDocument** system event 

* Create a template variable named **DoFollow**. 
* input type: dropdown
* input_options No==nofollow||Yes==follow 
* default value: nofollow
* Assign the **DoFollow** template variable to your template.

# Updates:
## 1.4 PL
* 1.4 fix for evo 1.2.1: changed event  from OnLoadWebDocument to OnParseDocument

## 1.3 PL
* NoFollow https url    

## 1.2 PL
* DoFollow tv to exclude documents from the plugin   

## 1.1 PL
* Optional Plugin configuration to add rel="no-follow" only to a selected domain   
