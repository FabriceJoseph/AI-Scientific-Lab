# Setup Guide

## Overview

AI Scientific Lab uses a fully containerized development environment.

The objective is to provide a reproducible scientific computing environment where all tools and dependencies are managed inside the container.

The host machine only requires:

- Docker
- Visual Studio Code
- Dev Containers extension

No local Python installation is required.

The development environment provides:

- Python 3.12
- uv package manager
- Scientific Python ecosystem
- Jupyter support
- Development tools

## First Installation

Clone the repository:

```bash
git clone https://github.com/FabriceJoseph/AI-Scientific-Lab.git
cd AI-Scientific-Lab
```

Open the project with Visual Studio Code.

Install the **Dev Containers** extension if necessary.

From the VS Code command palette, run:

```
Dev Containers: Reopen in Container
```

The first startup will:

1. Build the Docker image.
2. Install the VS Code Server inside the container.
3. Install development extensions.
4. Create the Python virtual environment.
5. Install Python dependencies from `uv.lock`.

The Python virtual environment is created inside the container:

```
/lab/.venv
```

The virtual environment is ignored by Git and is not part of the repository.

## Verify Installation

Open a terminal inside the Dev Container.

### Check Python version

```bash
python --version
```

Expected:

```
Python 3.12.x
```

### Check Python interpreter

```bash
which python
```

Expected:

```
/lab/.venv/bin/python
```

### Check uv installation

```bash
uv --version
```

### Check PyTorch installation

```bash
python -c "import torch; print(torch.__version__)"
```

## Rebuilding the Environment

If the container configuration changes, rebuild the environment.

In VS Code:

```
Dev Containers: Rebuild Container
```

For a complete rebuild:

```
Dev Containers: Rebuild Container Without Cache
```

## Updating the Repository

After pulling changes:

```bash
git pull
```

Synchronize dependencies:

```bash
make sync
```

This ensures that the environment matches:

```
pyproject.toml
uv.lock
```

## Troubleshooting

If the Python environment seems corrupted:

1. Rebuild the Dev Container.
2. Synchronize dependencies:

```bash
make sync
```

3. Verify the interpreter:

```bash
which python
```

Expected:

```
/lab/.venv/bin/python
```
