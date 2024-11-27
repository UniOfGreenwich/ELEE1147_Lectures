#! /usr/bin/env bash
LECTURES_DIR=$( cd -- "$( dirname -- "$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" && pwd )" )" && pwd )

echo $LECTURES_DIR
LECTURE_FOLDER=${LECTURES_DIR}/content/$1

# default name is $1 if $2 not supplied
LECTURE_FILENAME=${2:-$1}

if [[ ! -d ${LECTURE_FOLDER} ]];then
	mkdir ${LECTURE_FOLDER}
fi

source ${LECTURES_DIR}/scripts/config

cat >> ${LECTURE_FOLDER}/${LECTURE_FILENAME}.md << EOF
---
title: ${LECTURE_FILENAME}
description: ${LECTURE_FILENAME} slides
class: gaia
_class:
  - lead
  - invert
style: |
    #img-right{
      float: right;
    }
    img[alt~="center"] {
      display: block;
      margin: 0 auto;
    }
    table {
      border-collapse: collapse;
      font-size: 22px;
    }
    table, th,tr, td {
      border: none!important;
      vertical-align: middle;
    }
    grid {
      display: grid;
    }
    grid-cols {
      grid-template-columns: repeat(var(--columns, 2), minmax(0, 1fr));
    }
    grid-rows {
      grid-template-rows: repeat(var(--rows, 2), minmax(0, 1fr));
    }
    gap {
      gap: var(--gap, 4px);
    }
    content: attr(data-marpit-pagination) '/' attr(data-marpit-pagination-total);
    }
footer: $modulecode  | $modulename
size: 16:9
paginate: true
_paginate: false
marp: true
math: true
---

# ${LECTURE_FILENAME}

    Module Code: $modulecode

    Module Name: $modulename

    Credits: $credits

    Module Leader: $moduleleader

---
EOF

# declutter environment variables
unset $modulecode $modulename $credits $moduleleader
