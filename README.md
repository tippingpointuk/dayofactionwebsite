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

### Forestry.io

Forestry.io is a GIT based Content Management Service (CMS).
To set up your site with it, log in to
[Forestry](https://app.forestry.io/) and follow the steps to set up a **Jekyll**
based site from the clone of this repository. The quick set up with GitHub works
well.

Other GIT based CMSs would probably work just fine. Check out
[the Jamstack website](https://jamstack.org/). Forestry.io has the advantage of
being easily editable on a phone, which is good when working with smaller grassroots
groups where people may not have easy access to laptops.

The configuration of Forestry.io can be found in the `.forestry` folder in the root
directory. This is most easily edited in the CMS itself.

## Breakdown of sections

Below is a short explanation of how each of the section of the website work,
or are intended to work. You can of course do what you like with it.

### Accordion of FAQs

The FAQs are stored in an Airtable, and imported as
[data](https://jekyllrb.com/docs/datafiles/) using the
[jekyll-airtable-import](https://github.com/tippingpointuk/jekyll-airtable-import/)
plugin. If, like this example site, you have called your FAQs `faqs` then they
can be accessed on any page of the website by writing:

```markdown
{% raw %}{% include accordion.html data=site.data.faqs %}{% endraw %}
```

A list of any collection or data can be passed into the accordion, and so long as
each item in the collection has a `title` and `description` feild.

### Directory of Resources

The resources are stored in an Airtable, and imported as
[collection](https://jekyllrb.com/docs/collection/) using the
[jekyll-airtable-import](https://github.com/tippingpointuk/jekyll-airtable-import/)
plugin

Use the `nested-blog-list.html` include tag like so:

```md
# Resources

{% raw %}{% include nested-blog-list.html data=site.resources share_buttons=true %}{% endraw %}
```

###
