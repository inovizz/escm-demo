## Add a submodule

```sh
git submodule add https://github.com/username/external-repo.git path/to/submodule
git commit -m "Add submodule"
```

## Initialize and clone submodules when cloning a repository with submodules

```sh
git clone --recurse-submodules https://github.com/username/main-repo.git
```

## Update a submodule

```sh
cd path/to/submodule
git fetch
git merge origin/main
cd ../..
git add path/to/submodule
git commit -m "Update submodule"
```

## Remove a submodule

```sh
git submodule deinit -f path/to/submodule
git rm -f path/to/submodule
git commit -m "Remove submodule"
```

## Example
1.  Tensorflow
<https://github.com/tensorflow/tensorflow></br>
<https://github.com/tensorflow/tensorflow/blob/master/.gitmodules>

2. Ansible
<https://github.com/ansible/ansible></br>
<https://github.com/ansible/ansible/blob/devel/.gitmodules>
