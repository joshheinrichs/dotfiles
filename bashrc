#!/usr/bin/env bash

for rc in ~/.bashrc.d/*; do
  source "${rc}"
done
