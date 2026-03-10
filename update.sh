#!/bin/bash

set -e  # остановить выполнение при ошибке

# Добавить и закоммитить изменения
git add .
git commit -m "Update wiki"
git push

# Задеплоить сайт через mkdocs (через uv)
uv run mkdocs gh-deploy
