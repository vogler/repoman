# Repos on GitHub

Use [GitHub's official CLI](https://github.com/cli/cli) with also has `--json` output:

```console
$ gh repo list vogler -L999
Showing 100 of 100 repositories in @vogler

vogler/LED-matrix               16x16 pixel RGB LED matrix with support for WLED and text                    public             29m
vogler/dotfiles                 config/setup for macOS/Linux/Windows: zsh, vim, tmux, vscode; old: Arch,...  public             58m
...

$ gh repo list vogler -L999 --json name,description
[
  {
    "description": "16x16 pixel RGB LED matrix with support for WLED and text",
    "name": "LED-matrix",
    "pushedAt": "2022-09-16T16:08:53Z"
  },
  {
    "description": "config/setup for macOS/Linux/Windows: zsh, vim, tmux, vscode; old: Arch, awesome",
    "name": "dotfiles",
    "pushedAt": "2022-09-16T15:39:36Z"
  },
...

```

<details>
<summary>Superseded</summary>

Use API as shown in examples of jq:
- https://stedolan.github.io/jq/tutorial/
- https://developer.github.com/v3/repos/#list-your-repositories
- Show API URLs via `hub api | jq`

Can also use `jiq` instead of `jq`. [jiq](https://github.com/fiatjaf/jiq) is [jid](https://github.com/simeji/jid) on [jq](https://stedolan.github.io/jq/).
Names of repos:

~~~
curl -s 'https://api.github.com/users/vogler/repos?sort=created' | jq '.[].name'
~~~
</details>

# Local repos

- Find all git repos: see file `find-repos.sh`
- List all local repos with
  - uncommited changes
  - unpushed commits, branches, tags etc.
  - stashes
  - no remotes
- Tools:
  - https://linux.die.net/man/1/mr

# Features

In addition to a CLI also offer some TUI like [tig](https://github.com/jonas/tig)?

- Overview of local repos (see above)
- Actions sync things: commit and push, `hub sync`, WIP branches, patches to Dropbox?
- Integrate [gitwatch](https://github.com/gitwatch/gitwatch) to keep a complete history on extra branch?
- Make data from GitHub (issues, PRs) available offline: `hub issue`, `hub pr list` but allow to work offline and sync later. Put all data in a meta-repo (e.g. `~/.repoman/github`) and sync via GitHub API?
