## Navigate to the server's Git repository directory

```sh
cd /path/to/your/repository.git
```

Go to the hooks directory:

```sh
cd hooks
```

Create a new file called update (without any file extension) in the hooks directory and paste the following content:

```sh
#!/bin/bash

refname="$1"
branch_regex="^(feature|bugfix|hotfix)\/[A-Z]{2,}-[0-9]{1,}-[a-z0-9-]+$"

if [[ ! ${refname#refs/heads/} =~ ${branch_regex} ]]; then
  echo "ERROR: Invalid branch name. Please follow the naming convention (feature|bugfix|hotfix)/XX-123-description."
  exit 1
fi

exit 0
```

Make the update hook script executable:

```sh
chmod +x update
```
