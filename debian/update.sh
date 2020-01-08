#!/bin/bash

set -euo pipefail

gbp import-ref -u $1
gbp dch -N $1
git add debian/changelog
git commit -S -m "d/changelog: dch $1"
