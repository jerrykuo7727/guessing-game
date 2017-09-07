#!/usr/bin/env bash
# File: guessing-game.sh

function get_file_count {
  echo $(ls -l | grep ^- | wc -l)
}
