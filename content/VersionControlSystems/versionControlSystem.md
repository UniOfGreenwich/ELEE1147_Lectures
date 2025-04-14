---
marp: true
---

<!--
# Metadata
title: Version Control Systems
author: Seb Blair (CompEng0001)
description: Lecture slides on version control systems.
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

# Version Control Systems

<div align=center style="font-size:76px; padding-left:300px;padding-right:300px;" >

```py
module = Module(
    code="ELEE1147",
    name="Programming for Engineers",
    credits=15,
    module_leader="Seb Blair BEng(H) PGCAP MIET MIHEEM FHEA"
)
```

</div>

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1147_Lectures/raw/gh-pages/content/VersionControlSystem/versionControlSystem.pdf)" -->

---

<style scoped>
h1 {
  view-transition-name: header;
  display: flex;
  align-items: center;
  margin: 0 auto;
}
</style>


<!-- header: "_Version Control Systems_" -->

## What are Version Control Systems (VCS)

- Tracking and managing changes: 
  - Work faster and more reliably
  
- Keeps track of all code modifications:
  - Specialised Database (Repository)
  
- Solves Common Team Problems:
  -  Conflicitng concurrent work, 
  - incompatiables due to concurrent working, 
  - having unstable releases

![drop-shadow bg right:50% 90% ](../../figures/vcs-branching.png)

---

## Common Benefits of VCS

<div style="font-size:28px;padding-left:100px;padding-right:200px;padding-top:100px;">

**Historical information​** : Looking at the history of changes it is a lot easier to find where bugs have originated. Also, it might be easier to find the right team member best suited to fix an error.​

**Branching​**: Working concurrently on multiple issues, without interference.​ Working on different types of releases.​

**Merging​** : Making sure that team members work does not interfere with each other.​

**Traceability​** : Team members work more fluently together.​

**Testing and Documentation​**: Comments for each change and its association help producing better documentation​. Creating tests is easier​.

</div>

---


## Types of VCS

<div style="font-size:28px;padding-left:100px;padding-right:200px;padding-top:100px;">

- **Local**:
  - Creates a database on the your hardware ​
- **Centralised​**:
  - History of changes kept in a single database in a central server.​
  - Clients need to constantly communicate with the database and receive a partial working copy.​

- **Distributed​**:
  - Single database in a central server that is also distributed among all clients​
  - Each client has a full working copy of the repository​

</div>

---

## VCS - List

![bg right:60% 40%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Apache_Subversion_logo.svg/1280px-Apache_Subversion_logo.svg.png)

<div style="font-size:26px">

**Local Data Model**
- Revision Control System (RCS) [OS]
- Source Code Control System (SCCS) [OS]
- The Librarian [P]
- Panvalet [P]

**Client Server model**
- Concurrent Versions System [OS]
- Subversion (SVN) [OS]
- Vesta [OS]
- AccuRev [P]
- Autodesk Vault [P]
- CADES [P]
- ...
- Vault [P]
- Visual Source Safe [P]

</div>

---

## VCS - List

![bg right:50% 25% vertical](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Fossil_SCM_logo.svg/170px-Fossil_SCM_logo.svg.png)
![bg right:50% 25% vertical](../../figures/git.png)
![bg right:50% 25% vertical](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Mercurial_no_border_logo.svg/800px-Mercurial_no_border_logo.svg.png)

**Distrubted Model**

- ArX [OS]
- Bazaar [OS]
- BitKeeper [OS]
- Fossil [OS]
- Git [OS]
- GNU Arch [OS]
- Mecurial [OS]
- Code Co-op [P]
- Sun WorkShop TeamWare [P]
- Plastic SCM [P]
---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- _class: lead -->

# Git

![](../../figures/git.png)


<a name="git"></a>

<!-- _footer: https://git-scm.com/ -->

---

<!-- header: "_Version Control Systems_ > **Git**" -->

![bg right:40% 60%](../../figures/git.png)

## Characteristics 

<div style="font-size:28px;padding-left:100px;padding-right:200px;padding-top:80px;">

- A very popular VCS
- Performance
  - Better performance compared to competitors
  - Deals with the data in the file rather than the file properties
- Security
  - Designed to provide security
  - Uses SHA-256 encryption
- Flexibility
  - Non-linear development
  - Detailed log of information

</div>

---

![drop-shadow bg right:40% 90%](../../figures/git_cli_help.png)

## Functions

<style scoped>ul { list-style: square; padding: 100; }</style>

<div style="font-size:28px;padding-left:100px;padding-right:200px;padding-top:100px;">

All commands are prepended with `git`

- `init` initialise a folder as a git repository

- `fetch`, `pull`: Get a working copy of a repository

- `add`,`commit`,`push`: Record a change or changes in at least one of the files stored in the repository.

- `branch`: Create a copy of a repository to be worked independently.

- `merge`: Collates changes of two different copies of a repository.

- `log`: Records information of each change within a repository

---

![drop-shadow bg right 50% 80%](../../figures/git_first_repo_example.png)

<div align=center style="font-size:28px;padding-top:380px;">

## Example

</div>

---

## Repository Staging Area

<style scoped>ul { list-style: square; padding: 100; }</style>

<div style="font-size:28px;padding-left:100px;padding-right:200px;padding-top:80px;">

- As part of the version control features there is the **Staging Area**. ​

- This is feature enables the developer to move files independently of each other  `git add <filename>` to the repository. Of course you can do this all in one go with `git commit -a​`

![drop-shadow](../../figures/gitStagingArea.png 'centered')

--- 

## Hashing

- Often referred to as a commit hash, is a unique identifier for every single commit in a Git repository
-  SHA-1 cryptographic hash function
   - 40-character string of hexadecimal characters (0-9 and a-f)
 - Hashes are calculated based on the contents of the files in the commit, the metadata of the commit (like timestamp and author), and the parent commit's hash.


![drop-shadow w:800](../../figures/commit_hash.png 'centered')

<div style="padding-top:10px;">

- Comparing hashes to see differences <span style="font-size: 38px">`git diff <a_hash> <another_hash>`</span>

<div style="font-size:38px;padding-left:100px;padding-right:200px;padding-top:10px;">

```sh
git diff 43ba0aa4935549d2d4245bedf455bbc25a5d1636 a1b2c3d4e5f67890abcdef1234567890abcdef12
```

</div>

---

<!-- header: "_Version Control Systems_ > Git > Hashing > **Collisions**" -->

## Collisions!

- No two hashes should ever be the same!

- A hash collision occurs when two different inputs generate the same output hash.

- Output length: **160 bits**

Possible hashes:  

$$2^{160} = 1.4615016373309029182036848327163 \times 10^{48}$$

or if you prefer: 

-  $2^{160}$ grains of sand ($0.5mm^3$) would fill $~500$ trillion Jupiters

The probability $P(n)$ of at least one collision is approximately:

| $n$ (number of hashes)     | $P(n) (collision probability)   |
|---------------------------:|:--------------------------------|
| 1                          | $\approx 0$                     |
| $1 \cdot 10^6$                     | $< 10^{-47}$            |
| $1.4 \times 10^{24}$ (septillion)      | $\approx 0.5$ (50%) |

<!--

- 119,000 Juipters with sand ipv6

- 500 trillion Jupiters with sand to match

-->
---

<!-- header: "_Version Control Systems_ > Git > Hashing > **sha1sum**" -->

## Example of `sha1sum`


![drop-shadow bg right:50% 95%](../../figures/sha1sum_readme.png)

<div style="font-size:38px;;padding-top:200px;">

```
sha1sum.exe <<< hello
f572d396fae9206628714fb2ce00f72e94f2258f *-
```

```
sha1sum.exe <<< Hello
1d229271928d3f9e2bb0375bd6ce5db6c6d348d9 *-
```

</div>

---

<!-- header: "_Version Control Systems_ > **Git**" -->
<!-- _class: lead -->

<style scoped>
h1 { view-transition-name: header2-alt; }
</style>

# Branching

---

<!-- header: "_Version Control Systems_ > **Git** > **Branching**" -->
<!-- _class: lead -->

<style scoped>
header strong { view-transition-name: header2-alt; }
</style>

![drop-shadow bg right:40% 90%](../../figures/gitBranching.png)

## Branching

<div style="font-size:30px;padding-left:100px;padding-right:200px;">

- **Master/Main**: The default development branch. Whenever you create a Git repository, a branch named "`master`" or "`main`" is created, and becomes the active branch. 

- **HotFix**: To patch urgent issues found in the `master`/`main` branch (e.g., bugs in production)

- **Release**: To prepare a new production release

- **Develop**: This is another branch, which is a way to **edit/develop/test** code without changing the `main` branch.

- **Feature**: For developing new features or enhancements. 

---

![drop-shadow bg right:60% 100%](../../figures/branch_example.png)

<div align=center style="font-size:28px;padding-top:380px;">

## Example

</div>


---
<!-- header: "_Version Control Systems_ > **Git**" -->
<!-- _class: lead -->

# Merging & Rebasing

<style scoped>
h1 { view-transition-name: header2-alt; }
</style>

---

<!-- header: "_Version Control Systems_ > **Git** > **Merging & Rebasing**" -->
<!-- _class: lead -->

<style scoped>
header strong { view-transition-name: header2-alt; }
</style>

- `merge`
  - A merge commit has two or more parent commits – one for each branch that was merged
  - Merging happens at the commit level – Git merges entire commits together
  - This keeps the history of that other feature branch in case you ever need it.

- `rebase`
  - This will take the changes of your feature branch and append them to the main branch, which effectively removes the history as a separate branch of work.

<div style="padding-left:250px">

![vertical bg right h:280 drop-shadow](../../figures/git_branch.png)
![vertical bg right h:280 drop-shadow](../../figures/git_merge.png)
![vertical bg right h:280 drop-shadow](../../figures/git_rebase.png)

</div>

---
<!-- header: "_Version Control Systems_ > **Git**" -->
<!-- _class: lead -->

# Distribution

---

<!-- header: "_Version Control Systems > Git_ > **Distribution**" -->

## Flow Diagram

<div style="padding-top:160px">

![drop-shadow](../../figures/gitFlowDiagram.png "centered")

</div>

---


<!-- header: "_Version Control Systems_" -->

<!-- _class: lead -->

# Hosts

<style scoped>
h1 { view-transition-name: header2-alt; }
</style>

<a name="version-control-hosts"></a>

---

<style scoped>
header strong { view-transition-name: header2-alt; }
</style>

<!-- header: "_Version Control Systems_ > **Hosts**" -->

## List

![bg right:50% 30% vertical drop-shadow](https://www.guru99.com/images/1/120718_0548_13BestGithu7.png)
![bg right:50% 20% vertical drop-shadow](https://www.guru99.com/images/1/120718_0548_13BestGithu4.png)
![bg right:50% 30% vertical drop-shadow](https://www.guru99.com/images/1/120718_0548_13BestGithu2.png)
![bg right:50% 30% vertical drop-shadow](https://www.guru99.com/images/2/taravault-logo.png)
![bg right:50% 30% vertical drop-shadow](https://www.guru99.com/images/1/120718_0548_13BestGithu6.png)

- TaraVault
- BitBucket
- SourceForg
- GitLab
- Gogs
- GitBucket
- GitHub
- AWS CodeCommit
- BeanStalk
- Phabricator
- ...many more
---

<!-- _class: lead -->

# GitHub

<style scoped>
h1 { view-transition-name: header; }
</style>

![bg right:40% 60% drop-shadow](../../figures/githublogo.png)

<a name="github"></a>

---

<!-- header: "_Version Control Systems > Hosts_ > **GitHub**" -->

![bg right:55% 95% drop-shadow](../../figures/gh_online_example.png)

<div style="padding-top:100px">

## GitHub - What is it and features?

<div style="padding-top:40px">

- Web-based graphical user interface (GUI)
- Features
  - Can act as a project manager
  - Hosts Git repositories
  - Secure with keys

</div>

---

<div style="padding-top:50px">

## Account creation

<div style="padding-top:30px">

![drop-shadow](../../figures/account_signup.png "centered")

*Hint: use your username@gre.ac.uk (you can register for education package later)

<!-- _footer: https://github.com/ -->
---

<div style="padding-top:50px">

## Syncing Git and GitHub


<div style="padding-left:180px;padding-top:100px">

![horizontal  h:400 drop-shadow](../../figures/ssh_keygen_1.png) ![horizontal h:400 drop-shadow](../../figures/ssh_key_gh.png)

![horizontal  h:80 drop-shadow](../../figures/ssh_github.png "centered")

</div>

---

<!-- header: "" -->
<!-- _footer: "https://learngitbranching.js.org/" -->
<!-- class: lead -->

# Learning Git

![drop-shadow](../../figures/gitlearningbranch.png)