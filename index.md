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
- decoration: "![](http://modernfarmer.com/wp-content/uploads/2014/03/smart_pig.jpg)"
  text: |-
    # A block title

    some info
  map: false
  background_image: ''
  id: what
  buttons:
    - text: A jump button
      target: "#resources"
    - text: An external link
      target: "https://example.com"
- buttons: []
  text: |-
    # Resources

    Here are all the resources you’ll need::

    {% include resources.html %}
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
---
