#!/usr/bin/env bash
set -e

if ! [[ "$0" =~ "./scripts/dep/fastai-courses.sh" ]]; then
    echo "must be run from repository root"
    exit 255
fi

rm -rf ./courses
mkdir -p ./notebooks

echo "Downloading 'fastai/courses'"
git clone https://github.com/fastai/courses.git --branch master
curl -o ./git-fastai-courses.json https://api.github.com/repos/fastai/courses/git/refs/heads/master

rm -rf ./notebooks/fastai-courses-deep-learning-part-1
cp -rf ./courses/deeplearning1 ./notebooks/fastai-courses-deep-learning-part-1

rm -rf ./courses