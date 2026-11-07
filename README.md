## Create / Activate / Deactivate

```bat
venv
```

## Use a specific Python version

Pass a version number and it will be handed to the Python Launcher (`py -<version>`) when creating the environment:

```bat
venv 3.12
```

This runs `py -3.12 -m venv .venv` under the hood. The version argument only matters when the `.venv` folder is being created; it has no effect on an existing environment.

## Notes
- The environment is always created in a folder named `.venv` in the current directory.
- For CMD, not PS
