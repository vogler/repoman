# Repos on GitHub
Use API as shown in examples of jq:
- https://stedolan.github.io/jq/tutorial/
- https://developer.github.com/v3/repos/#list-your-repositories
- Show API URLs via `hub api | jq`

[jiq](https://github.com/fiatjaf/jiq) is [jid](https://github.com/simeji/jid) on [jq](https://stedolan.github.io/jq/), i.e. has more features like `.[]` to process each element of an array:

~~~
curl -s 'https://api.github.com/users/vogler/repos?sort=created' | jiq '.[].name'
~~~

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
- Make data from GitHub (issues, PRs) available offline: `hub issue`, `hub pr list` but allow to work offline and sync later.
