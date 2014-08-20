NoFollowExternalLinks Plugin for MODX Evolution v. 1.2 PL
============================

Add **rel="nofollow"** to all external links in MODX Evolution content (only in content field).

#### Features: 

* **DoFollow tv** to exclude documents from the plugin 
* **No Follow only this domain** configuration:

Using the configuration settings you can add rel="nofollow" only to a selected domain (ie: amazon affiliate links)

![plugin](https://raw.githubusercontent.com/Nicola1971/NoFollowExternalLinks-Plugin/master/11-plugin-conf.jpg)

# Installation instructions
* Install with Package Manager or Store module
* Assign the **DoFollow** template variable to your template.

or

* Create a plugin with name **NoFollowExternalLinks** and paste the code from NoFollowExternalLinks.tpl
* Check OnLoadWebDocument system event 

* Create a template variable named **DoFollow** to your template. 
* input type: dropdown
* input_options No==nofollow||Yes==follow 
* default value: nofollow
* Assign the **DoFollow** template variable to your template.

# Updates:

## 1.2 PL
* DoFollow tv to exclude documents from the plugin   

## 1.1 PL
* Optional Plugin configuration to add rel="no-follow" only to a selected domain   
