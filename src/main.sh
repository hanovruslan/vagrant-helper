#!/usr/bin/env bash

self_dir="$(dirname $(readlink -f ${BASH_SOURCE[0]}))"

source "${self_dir}/bash-dep/dep/bash-get-options/src/src.sh"
source "${self_dir}/src.sh"

declare -A options_dict=(
  [f]=file
  [m]=machine
  [p]=path
)
declare -A options_defaults=(
  [file]="${VBC_FILE}"
  [machine]="${VBC_MACHINE}"
  [path]="${VBC_PATH}"
)

bgo_main ${@}

vbc_main "${machine}"
