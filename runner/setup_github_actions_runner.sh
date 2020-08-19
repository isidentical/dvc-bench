#!/bin/bash
mkdir ~/actions-runner 
cd ~/actions-runner
curl -O -L https://github.com/actions/runner/releases/download/v2.272.0/actions-runner-linux-x64-2.272.0.tar.gz
tar xzf ./actions-runner-linux-x64-2.272.0.tar.gz
rm actions-runner-linux-x64-2.272.0.tar.gz
./config.sh --url https://github.com/iterative/dvc-bench --token $1 --name dvc-runner --labels 'dvc-runner' --work '_work' --replace
