# Jiratina: Jira Tickets -> Git Integration. 

I created this plugin because I was really comfy with the VSCode Atlassian plugin. It allowed to list, view and create issues right from VSCode, but also to create branches based on the Jira ticket code and name, WHICH I REALLY MISS.

## Pre-requisites
- This plugin runs commands from this awesome package: [jira-cli](https://github.com/ankitpokhrel/jira-cli), so you'll need to install it and set it up.

## Setup
1. Install the plugin by adding it to your favorite package manager. I personally use Packer:
```lua
use("Progressandro/jiratina.nvim")
```
2. Use the `:Jiratina` command to open the popup menu containing your active sprint tasks with the board you selected during the `jira-cli` package setup.
3. Select the issue you want to work on with `<CR>` and the following will happen:
  - Plugin will try to do a `git checkout` for either the `main` or the `master` branch.
  - A branch will be created with `git checkout -b ${TicketKey_TicketTitle}`
