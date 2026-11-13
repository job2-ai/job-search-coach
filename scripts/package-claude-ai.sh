#!/bin/sh
# Builds dist/job-search-diagnosis.zip (the job-search-coach skill) for claude.ai (Customize > Skills > Upload a skill).
# claude.ai needs the skill folder at the zip's root; a bare SKILL.md there isn't recognized.
set -e
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist
(cd skills && zip -qrX ../dist/job-search-diagnosis.zip job-search-diagnosis -x '*.DS_Store')
echo "dist/job-search-diagnosis.zip"
