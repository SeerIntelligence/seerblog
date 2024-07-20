# SeerBlog

[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)


This is the home repository for [lore.seerintelligence.com](https://lore.seerintelligence.com)

# Table of contents

- [Usage](#usage)
- [Building](#building)
- [Updating](#updating)
- [Contributing](#contributing)
- [License](#license)

# Usage

[(Back to top)](#table-of-contents)

Use the `newpost.sh` script to generate new posts

``
bash newpost.sh
``

# Building

[(Back to top)](#table-of-contents)

1. Install Ruby, Rubygems & Bundle
2. Clone the repository
`` 
git clone git@github.com:SeerIntelligence/seerblog.git
``
3. Install the required Rubygems
``
bundle i
``
4. Use bundle to build or serve the website
``
bundle exec jekyll serve
``
or 
``
bundle exec jekyll build
``
5. Serve the static output at "\_site"
6. Use the built-in script to make new posts
``
bash newpost.sh
``


This website is set-up to be used via static hosting (i.e Cloudflare Pages), dynamic servers are unnecessary and therefore a security risk.

# Updating

[(Back to top)](#table-of-contents)

To update the repo, just pull it.
``
git pull git@github.com:SeerIntelligence/seerblog.git
``

# Contributing

[(Back to top)](#table-of-contents)

Your contributions are always welcome! Please have a look at the [contribution guidelines](CONTRIBUTING.md) first. :tada:

# License

[(Back to top)](#table-of-contents)

### Source Code
The source code in this repository is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for more details.

### Content
The content in this repository (images, text, videos) is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. See the [CONTENT_LICENSE](CONTENT_LICENSE.md) file for more details.


