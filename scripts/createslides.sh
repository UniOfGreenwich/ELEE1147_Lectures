#! /usr/bin/env bash

MODULE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]%/*}" )" &> /dev/null && pwd )

LECTURE_FOLDER=${MODULE_DIR}/content/$1

# default name is $1 if $2 not supplied
LECTURE_FILENAME=${2:-$1}

if [[ ! -d ${LECTURE_FOLDER} ]];then
	mkdir ${LECTURE_FOLDER}
fi

#set environmental variables
source ${MODULE_DIR}/scripts/config

cat >> ${LECTURE_FOLDER}/${LECTURE_FILENAME}.md << EOF
---
marp: true
math: true
---

<!--
# Metadata
title: ${LECTURE_FILENAME}
author: ${MODULELEADER}
description: Lecture slides on ${LECTURE_FILENAME}.
keywords: module handbook
lang: en

# Slide styling
theme: uog-theme
_class: lead title
paginate: true
_paginate: false
transition: fade 250ms

style: |
  header em { font-style: normal; view-transition-name: header; }
  header strong { font-weight: inherit; view-transition-name: header2; }
  header:not:has(em) { view-transition-name: header; }
  header:not:has(strong) { view-transition-name: header; }
-->

<style scoped>
h1 {
  view-transition-name: header;
  display: flex;
  align-items: center;
  margin: 0 auto;
}
</style>

# ${LECTURE_FILENAME}

<div align=center style="font-size:76px; padding-left:300px;padding-right:300px;" >

\`\`\`py
module = Module(
    code="${MODULECODE}",
    name="${MODULENAME}",
    credits=${CREDITS},
    module_leader="${MODULELEADER}"
)
\`\`\`

</div>

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/${MODULECODE}_Lectures/raw/main/content/${LECTURE_FOLDER}/${LECTURE_FILENAME}.pdf)" -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_${LECTURE_FILENAME}_" -->


---
EOF

# remove environment variables from current shell
unset ${MODULECODE} ${MODULENAME} ${MODULELEADER} ${CREDITS}
