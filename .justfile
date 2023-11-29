#!/usr/bin/env just --justfile
#
# rrPLs 例行脚本配方。
#
# [Wikipedia § Package Manager](https://wikipedia.org/wiki/Package_manager)
#
# zhengrr
# 2020-05-15 – 2023-11-29
# Unlicense
set shell         := ['bash', '-e', '-o', 'pipefail', '-u', '-c']
set windows-shell := ['PowerShell', '-NoLogo', '-Command']

# 默认配方：列出可用配方
[private]
@default:
	just --list \
		--justfile '{{justfile()}}' \
		--unsorted

# 升级 pip 和 pipenv 并调用 pipenv 安装虚拟环境（Environment）
[no-cd]
@pipenv-install *args:
	python -m pip install --upgrade pip
	pip install --upgrade pipenv
	pipenv install --dev {{args}}
alias env := pipenv-install

# 升级 pip 和 pipenv 并调用 pipenv 升级虚拟环境（Re-Environment）
[no-cd]
@pipenv-update *args:
	python -m pip install --upgrade pip
	pip install --upgrade pipenv
	pipenv update --dev {{args}}
alias renv := pipenv-update

# 调用 pipenv 删除虚拟环境（De-Environment）
[no-cd]
@pipenv-rm *args:
	pipenv --rm {{args}}
alias denv := pipenv-rm

# 构建
@build *args:
	pipenv run mkdocs build --strict {{args}}

# 发布
@gh_deploy *args:
	pipenv run mkdocs gh-deploy --remote-branch "www" --strict --site-dir "site" {{args}}

# 本地服务
@local-serve *args:
	pipenv run mkdocs serve --dev-addr '127.0.0.1:49152' {{args}}
alias ls := local-serve

# 远程服务
@remote-serve *args:
	pipenv run mkdocs serve --dev-addr '0.0.0.0:80' {{args}}
alias rs := remote-serve
