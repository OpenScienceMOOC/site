# Contributing to Open Science MOOC website

Welcome message here.

## Table of Contents

1. [Before you contribute](#before-you-contribute)
1. [How to contribute](#how-to-contribute)
1. [Adding content](#adding-content)
   1. [How to add a person to be listed/rendered on the website](#how-to-add-a-person)
   1. [Altering the module content](#altering-the-module-content)
1. [Help with the development](#help-with-the-development)
   1. [Setting up your environment](#setting-up-your-environment)
   1. [Style guide](#style-guide)
1. [Report issues/bugs](#report-bugs)

## Before you contribute

TODO 

* Talk about CoC
* How to use Git
* How to use Markdown

## How to contribute

### Adding content

#### How to add a person to be listed/rendered on the website

Create a file in `_people` folder (e.g jon_tennant.md). Make sure there's no 
uppercase and that you replace every space characters with an underscore.

Inside your file add the following:

```
---
title: "Your name"
role: "Your role"
team: team_name
location: "Your location"
contact:
  email: "your@email.com"
  github: "username"
  impactstory: "0000-0000-0000-0000"
  linkedin: "username"
  orcid: "0000-0000-0000-0000"
  twitter: "username"
  website: "yourwebsite.com"
---

My fancy bio in [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) format.
```

Here's an example:
```
---
title: Dr. Jonathan Tennant
role: Founder, Rogue Scientist
team: steering-committee
location: Rest of World
contact:
  email: jon.tennant.2@gmail.com
  github: Protohedgehog
  impactstory: 0000-0001-7794-0218
  linkedin: jonathan-tennant-3546953a
  orcid: 0000-0001-7794-0218
  twitter: Protohedgehog
  website: fossilsandshit.com
---

My fancy bio in [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) format.
```

- team

  There's two possible values: steering_committee or production.

#### Altering the module content

Modules descriptions are rendered from markdown files located in the `_modules` 
folder. The module markdown files are plain markdown file. However, the top of 
each file contains some YAML data helping to render the content on the website. 

```
---
title: 
  main: "Open Research Software"
  extra: "& Open Source"
module:
  color: "blue"
  status: "in progress"
weight: 1
---
```

- title
  - main
  
    Any text. It will be displayed in regular font size
  - extra
  
    Any text. It will be displayed in blod font size
- module
  - color
  
    Here's the possible value: name the colors
- weight

  A digit. It represent the order in each the module will be displayed. Lower
  digits are displayed first.

### Setting up your environment

#### Installing Jekyll

To install Jekyll, we suggest that you [read the installation guide][jekyll-install-guide]
on their website. It should guide you through the install of Jekyll and it's 
dependencies on Windows, MacOS or Linux.

If you have any questions or problems with the install process don't hesitate 
to [open an issue][open-an-issue] on this repository and would be glad to help you. 

#### Get a copy of the source code

TODO

* How to create a fork
* How to git clone

#### Workflow 

TODO

* add upstream
* Keep master branch in sync with upstream
* Always use a different branch to work on your modification

### Style guide

TODO

* Add examples of code style

## Contribution review process

<!-- footnote -->
[jekyll-install-guide]: https://jekyllrb.com/docs/installation/
[open-an-issue]: https://github.com/OpenScienceMOOC/site/issues
