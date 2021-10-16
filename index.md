---
layout: page
invert: odd
## Heading section
header:
  full: true # fill full hight
  image: # background/overlay image
    link: ""
    location: left
  text: |-
    #### Countdown: {% include counter.html %}

    # Do the thing. Now.

    {{ site.description }}
  # Jump buttons
  buttons:
  - text: Act Now
    target: "#map"
  # Image to act as border
  border_bottom:
    image: ""
    reflect: true # Reflect as if submerged in water
blocks:
- text: |-
    # We demand

    {% include demands.html demands=site.data.demands %}
  id: what
  buttons:
    - text: A jump button
      target: "#resources"
    - text: An external link
      target: "https://example.com"
- text: |-
    # Events

    {% assign events = site.events | sort: "start_date" %}
    {% include events-gallery.html date_field='start_date' %}
  id: trainings
  background_image: https://dl.airtable.com/.attachmentThumbnails/4c4dbc66da1091b46b93b5c41532c373/c326ca1f
- buttons: []
  text: |-
    # Resources

    Here are all the resources you’ll need:

    {% include nested-blog-list.html data=site.resources date=false share_buttons=false %}
  id: "resources"
- text: |-
    # Find out more

    Some frequently asked questions and answers

    {% include accordion.html data=site.data.faqs %}
  id: faqs
- text: |-
    # Posts

    {% assign posts = site.posts %}
    {% include blog-list.html limit=4 thumbnail=true date=false alternate_direction=true %}
  id: posts
- text: |-
    # Partners

    {% include partner-list.html data=site.data.partners %}
  id: posts
---
