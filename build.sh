#!/usr/bin/env bash

tar -cvf elpa-1.tar elpa
git checkout build
mv elpa-1.tar elpa.tar
