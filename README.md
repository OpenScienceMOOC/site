# Repository for the Open Science MOOC website

Currently at: [`https://opensciencemooc.eu`](https://opensciencemooc.eu)

[![OpenScienceMooc](/img/moocgif.gif)](https://opensciencemooc)

# Contributing to the website
You can contribute by directly altering/proposing content on the [GitHub repository](https://github.com/OpenScienceMOOC/site).   

To clone this repository locally use:
```
git init   
git https://github.com/OpenScienceMOOC/site.git
```
**New to GIT and GitHub?** See [these learning resources](https://help.github.com/articles/git-and-github-learning-resources/) and this [10 min. GIT tutorial](https://try.github.io/levels/1/challenges/1).   

### Where are images?
Images are located in the `/img` and `assets/img` folders.

### Altering the module content.   
Modules descriptions are rendered from markdown files ([here is a useful markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)) located in the [`_modules`](https://github.com/OpenScienceMOOC/site/tree/master/_modules) folder. The module markdown files are plain markdown file. However, the top of each file contains some [YAML](https://en.wikipedia.org/wiki/YAML) data helping to render the content on the website. This YAML lines set the page layout, the title to render, the logo picture to use on the page, the description to use (rendered under title if provided), the page top header background image, a thumbnail to use when the module is rendered as a card, the cardcolor (as [RGBA](https://en.wikipedia.org/wiki/RGBA_color_space) values)

```yml
---
layout: page
title: "Open Advocacy"
logo: /img/logos/mooc_logo.png
description: ""
header-img: "img/home-bg.jpg"
thumbnail:  "/img/logos/mooc_logo.png"
cardcolor:  rgba(178,223,197,0.5)
ordernumber: 10
---
  ```

### How to add a person to be listed/rendered on the website

Currently adding a person involves adding a markdown file in the [`_people`](https://github.com/OpenScienceMOOC/site/blob/master/_people) folder. Perhaps the easiest thing to do is to copy an existing file, e.g.  `Jonathan Tennant.md`. The people markerdown files contain some YML data at the top which is used to define items like the location of the profile image:

  ```yml
  ---
  title: Jonathan Tennant
  name: Dr. Jonathan Tennant
  role: Founder, Rogue Scientist
  location: Rest of World
  contact:
    email: jon.tennant.2@gmail.com
    github: Protohedgehog
    impactstory: 0000-0001-7794-0218
    linkedin: jonathan-tennant-3546953a
    orcid: 0000-0001-7794-0218
    twitter: Protohedgehog
    website: fossilsandshit.com
  type: lead
  ---

  My fancy bio in [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) format.

  ```

If you want to add a picture of you, you simply need to add an image in the folder `assets/img/people`.
The image should have the same name as your markdown file in `_people` (e.g jon_tennant.md -> jon_tennant.jpg).

# License
The code for this site is covered by the MIT license: [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/OpenScienceMOOC/site/blob/master/LICENSE)   

Website content license: [![conten license](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)   
