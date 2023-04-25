# Pre-commit Hook Setup

## Install the pre-commit package using pip

```sh
pip install pre-commit
```

Create a .pre-commit-config.yaml file at the root of your project with the following content:

```sh
repos:
- repo: https://github.com/pycqa/flake8
  rev: 3.9.2
  hooks:
  - id: flake8
    additional_dependencies: ['flake8-bugbear']
```

Run pre-commit install in your terminal to set up the pre-commit hook:

```sh
pre-commit install
```

## Example

<https://github.com/pre-commit/pre-commit-hooks>
