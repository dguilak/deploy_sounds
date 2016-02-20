# Deploy Sounds
Randomly play a sound when you deploy. Inspired by [paul_dix_thundergod](https://github.com/nodanaonlyzuul/Paul-Dix--Thundergod).

## Requirements
`afplay` or `play`

## Installation
  * `gem install deploy_sounds`
  * Create `~/.deploy_sounds/` and fill with some random `mp3`s
  * `require 'deploy_sounds'`
  * `DeploySounds.play` will play a random `mp3` from `~/.deploy_sounds/`
