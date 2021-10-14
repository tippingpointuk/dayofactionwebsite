---
layout: page
---
# Day of Action website template

This simple website is a template for a day of action website, first used for the
UK part of the Defund Climate Chaos day of action on 29th October 2021.

## TL;DR

Press this button to deploy and try it out:

[ ![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg) ](https://app.netlify.com/start/deploy?repository=https://github.com/tippingpointuk/dayofactionwebsite)

## Needs/sections of a day of action website

* Accordion of FAQs
* Directory of Resources
* Calendar of trainings/events
* Blog/posts
* Demands
* Map of actions
* Easy to use content management
* Logos of partners/groups involved
* Sign up form

## Content Management

This site uses 2 main content management systems:
1. Airtable
1. Forestry.io

### Airtable

[ ![Airtable](https://upload.wikimedia.org/wikipedia/commons/4/4b/Airtable_Logo.svg) template ](https://airtable.com/shr5lerVLDdLQpspj)

Using the [jekyll-airtable-import](https://tippingpointuk.github.io/jekyll-airtable-import/)
plugin, the data from the above airtable is imported to the site as either
[collections](https://jekyllrb.com/docs/collections/) or
[data](https://jekyllrb.com/docs/datafiles/).
