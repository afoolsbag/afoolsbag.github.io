#!/usr/bin/env just --justfile
#
# rrPLs 例行脚本配方。
#
# [Wikipedia § Package Manager](https://wikipedia.org/wiki/Package_manager)
#
# zhengrr
# 2020-05-15 – 2024-04-24
# Unlicense
set quiet
set shell := ['nu', '--commands']
shebang := if os() == 'windows' { 'nu' } else { '/usr/bin/env nu' }

# 默认配方：列出可用配方
[private]
default:
	just --list \
		--justfile '{{justfile()}}' \
		--unsorted

# Environment
# 升级 pip 并调用 poetry 安装虚拟环境
[no-cd]
env *args:
	#!{{shebang}}
	python -m pip install --upgrade pip
	with-env [PYTHON_KEYRING_BACKEND 'keyring.backends.null.Keyring'] {
		poetry install {{args}}
	}
	poetry env info

# Re-Environment
# 升级 pip 并调用 poetry 升级虚拟环境
[no-cd]
renv *args:
	#!{{shebang}}
	python -m pip install --upgrade pip
	with-env [PYTHON_KEYRING_BACKEND 'keyring.backends.null.Keyring'] {
		poetry update {{args}}
	}
	poetry env info

# De-Environment
# 调用 poetry 删除虚拟环境
[no-cd]
denv *args:
	poetry env remove --all {{args}}

# 构建
@build *args:
	poetry run mkdocs build --strict {{args}}

# 发布
@gh_deploy *args:
	poetry run mkdocs gh-deploy --remote-branch "www" --strict --site-dir "site" {{args}}

# 本地服务
@local-serve *args:
	poetry run mkdocs serve --dev-addr '127.0.0.1:49152' {{args}}
alias ls := local-serve

# 远程服务
@remote-serve *args:
	poetry run mkdocs serve --dev-addr '0.0.0.0:80' {{args}}
alias rs := remote-serve
