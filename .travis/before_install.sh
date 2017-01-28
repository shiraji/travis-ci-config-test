#!/bin/bash

set -e

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
  # Check how to run this script
  echo "It's pull request!"
else
  # add Github ssh setting
  openssl aes-256-cbc -K $encrypted_1e50d859c9d1_key -iv $encrypted_1e50d859c9d1_iv -in travis.enc -out .travis.ssh -d
  chmod 600 .travis.ssh
  echo -e "Host github.com\n\tStrictHostKeyChecking no\nIdentityFile .travis.ssh\n" >> ~/.ssh/config
fi
