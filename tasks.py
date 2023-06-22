#!/usr/bin/env python3
# coding: utf-8
"""\
:Version:   2023-06-10
:Since:     2020-05-15
:Author:    zhengrr
:Copyright: UNLICENSE

"""
from invoke import task


@task
def pip_update(c):
    c.run("python -m pip install --upgrade pip")
    # c.run("pip install --upgrade invoke")
    c.run("pip install --upgrade pipenv")


@task
def env(c):
    c.run("pipenv install --dev")


@task
def update(c):
    c.run("pipenv update --dev")


@task
def build(c):
    c.run("pipenv run mkdocs build --strict")


@task
def gh_deploy(c):
    c.run('pipenv run gh-deploy --remote-branch "www" --strict --site-dir "site"')


@task(aliases=["ls"], default=True)
def local_serve(c):
    c.run("pipenv run mkdocs serve --dev-addr 127.0.0.1:49152")


@task(aliases=["rs"])
def remote_serve(c):
    c.run("pipenv run mkdocs serve --dev-addr 0.0.0.0:80")


@task
def clear(c):
    c.run("pipenv --rm")
