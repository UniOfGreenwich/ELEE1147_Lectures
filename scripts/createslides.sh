#! /usr/bin/env bash
LECTURES_DIR=$( cd -- "$( dirname -- "$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" && pwd )" )" && pwd )

echo $LECTURES_DIR
LECTURE_FOLDER=${LECTURES_DIR}/content/$1

# default name is $1 if $2 not supplied
LECTURE_FILENAME=${2:-$1}

if [[ ! -d ${LECTURE_FOLDER} ]];then
	mkdir ${LECTURE_FOLDER}
fi

source ${LECTURES_DIR}/config

cat >> ${LECTURE_FOLDER}/${LECTURE_FILENAME}.md << EOF
---
title: DOCUMENT TITLE
description: DESCRIPTION OF DOCUMENT
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
size: 16:9
paginate: true
_paginate: false
marp: true
math: true
---

# LECTURE TITLE

    Module Code: $modulecode

    Module Name: $modulename

    Credits: $credits

    Module Leader: $moduleleader

---
EOF

# declutter environment variables
unset $coursecode $coursename $credits $moduleleader
