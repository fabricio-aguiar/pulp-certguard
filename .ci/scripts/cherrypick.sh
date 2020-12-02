#!/bin/bash

# WARNING: DO NOT EDIT!
#
# This file was generated by plugin_template, and is managed by it. Please use
# './plugin-template --github pulp_certguard' to update this file.
#
# For more info visit https://github.com/pulp/plugin_template

# make sure this script runs at the repo root
cd "$(dirname "$(realpath -e "$0")")"/../..

pip install PyGithub GitPython yq

export STABLE_BRANCH=$(yq -r ".stable_branch" template_config.yml)

python3 .ci/scripts/cherrypick.py
