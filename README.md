# About

My template for python environment in vscode editor.

# Dependencies

First of all, activate you favorite virtual environment.

For pre-commit work, install the following libs:

- [pre-commit](https://pre-commit.com/)
- [commitizen](https://pypi.org/project/commitizen/)
- [Black](https://pypi.org/project/black/#:~:text=Black%20is%20the%20uncompromising%20Python,energy%20for%20more%20important%20matters.)
- [isort](https://pypi.org/project/isort/)
- [bandit](https://pypi.org/project/bandit/)
- [pytest](https://pypi.org/project/pytest/)

To install the hooks:

```
~$ pre-commit install --install-hooks
```

For makefile in linux:

```
~$ sudo apt install build-essential
```

Set environment variable ```PYTHONPATH=src```.