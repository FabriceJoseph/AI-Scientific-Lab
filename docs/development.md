# Development Workflow

## General Principle

AI Scientific Lab uses a container-first development workflow.

All development activities are performed inside the Docker container.

The host machine is only used for:

- running Docker;
- running Visual Studio Code;
- storing the Git repository.

The main development interface is the Makefile.

Use Make commands instead of manually running Docker or Python commands whenever possible.

## Container Management

Build the Docker image:

```bash
make build
```

Start the environment:

```bash
make up
```

Open a shell inside the container:

```bash
make shell
```

Display all available commands:

```bash
make help
```

## Python Dependency Management

Python dependencies are managed with `uv`.

The dependency files are:

```
pyproject.toml
uv.lock
```

`pyproject.toml` defines project dependencies.

`uv.lock` stores exact dependency versions to guarantee reproducibility.

Both files must be committed to Git.

## Add a Dependency

Add a Python package:

```bash
make add PACKAGE=<package-name>
```

Example:

```bash
make add PACKAGE=numpy
```

This updates:

- `pyproject.toml`
- `uv.lock`
- the virtual environment

## Remove a Dependency

Remove a Python package:

```bash
make remove PACKAGE=<package-name>
```

Example:

```bash
make remove PACKAGE=numpy
```

## Synchronize the Environment

Synchronize the virtual environment:

```bash
make sync
```

Use this after:

- pulling changes from Git;
- switching branches;
- modifying dependencies.

## Update Dependencies

Update all dependencies:

```bash
make update
```

This updates:

- `uv.lock`
- the virtual environment

## Inspect Dependencies

List installed packages:

```bash
make deps
```

Show dependency tree:

```bash
make deps-tree
```

## Jupyter

JupyterLab is included in the development environment.

Start JupyterLab:

```bash
make jupyter
```

Jupyter uses the same Python environment as the rest of the project.

## Code Quality

The development environment includes:

- Ruff for linting and formatting;
- Python support for VS Code;
- Jupyter support.

Code quality tools should always be executed inside the container.

## Git Workflow

Tracked files include:

```
Dockerfile
.devcontainer/
Makefile
pyproject.toml
uv.lock
docs/
src/
experiments/
notebooks/
```

Generated files are ignored:

```
.venv/
__pycache__/
.pytest_cache/
.ruff_cache/
```

## Recommended Daily Workflow

Typical development session:

```bash
git pull
make sync
make shell
```

Before committing:

```bash
git status
```

Verify that only relevant project files are tracked.

## Project Philosophy

The development environment follows the same principles as the laboratory:

- reproducibility;
- documentation;
- controlled dependencies;
- reusable components;
- scientific rigor.
