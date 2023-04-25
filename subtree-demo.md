## Add a Subtree

```sh
git remote add external-repo https://github.com/username/external-repo.git
git fetch external-repo
git subtree add --prefix=path/to/subtree external-repo main
```

## Update a subtree

```sh
git fetch external-repo
git subtree pull --prefix=path/to/subtree external-repo main
```

## Remove a subtree

```sh
git rm -r path/to/subtree
git commit -m "Remove subtree"
```

## Example

1. Git UI
<https://github.com/git/git></br>
<https://github.com/git/git/tree/master/git-gui>
