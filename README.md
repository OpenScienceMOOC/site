<img src="/assets/img/osm/osm-logo.png" 
     alt="Open Science MOOC logo"
     width="256">

Visit [our website][website] to learn more about the project.

Follow [@OpenScienceMOOC on Twitter][twitter] for important announcements or 
come talk with us on [our slack channel][slack].

This project adheres to the [Contributor Covenant code of conduct][coc]. By 
participating, you are expected to uphold this code. Please report unacceptable
behavior to EMAIL@ADDRESS.HERE.

### Altering the module content.   

Modules descriptions are rendered from markdown files 
([here is a useful markdown cheatsheet][md-ss]) located in the `_modules` folder.
The module markdown files are plain markdown file. However, the top of each file 
contains some [YAML][yaml] data helping to render the content on the website. 
This YAML lines set the page layout, the title to render, and the icon picture 
to use on the page.

Here's an example:

```yml
---
layout: page
title: "Open Access to Research Papers"
icon: "icons/paper.html"
order: 6
---
```

### How to add a person to be listed/rendered on the website

Currently adding a person involves adding a YAML file in the `_data/people` 
folder. Perhaps the easiest thing to do is to copy an existing file, e.g.  
`chris_madan.yml`. In this file, the data is used to define a member profile.

The _contact_ item currently supports:

* email
* github
* impactstory
* linkedin
* orcid
* twitter
* website

Depending on which team you're in, you can use the following value for the
_team_ item:

* advisors
* production
* steering-committee

Here's an example:

```yml
name: Christopher Madan
location: UK
contact:
  email: name@email.com
  github: cMadan
  impactstory: 0000-0003-3228-6501
  linkedin: cmadan
  orcid: 0000-0003-3228-6501
  twitter: cMadan
  website: http://cmadan.com/
team: steering-committee
```

If you want to add a picture of you, you simply need to add an image in the 
folder `assets/img/people`.

The image should be in a JPG format and have the same name as your YAML file in 
`_people` (e.g chris_madan.yml -> chris_madan.jpg).

<!-- TODO
## Contributing

For more information on how you can contribute to this project, please read
our [contributing guide][contribute].
-->

## License

### Content

Unless otherwise stated the content is licensed under the 
[CC-BY-SA 4.0](cc).

### Source code

Copyright (C) 2019 OpenScienceMOOC

This program is free software: you can redistribute it and/or modify it under 
the terms of the GNU Affero General Public License as published by the Free 
Software Foundation, either version 3 of the License, or (at your option) any 
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along 
with this program. If not, see <https://www.gnu.org/licenses/>. 

---
<!-- Reference are in alphabetical order -->
[cc]:         https://creativecommons.org/licenses/by-sa/4.0/
[coc]:        CODE_OF_CONDUCT.md
[contribute]: CONTRIBUTING.md
[md-ss]:      https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
[slack]:      https://openmooc-ers-slackin.herokuapp.com/ 
[twitter]:    https://twitter.com/OpenScienceMOOC
[website]:    https://opensciencemooc.eu
[yaml]:       https://en.wikipedia.org/wiki/YAML 
