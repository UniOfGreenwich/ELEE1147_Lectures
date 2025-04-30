---
marp: true
---

<!--
# Metadata
title: Python - Builtins, Modules, Packages
author: Seb Blair (CompEng0001)
description: Lecture slides on Python - Builtins, Modules, Packages
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

# Python - Builtins, Modules, Packages

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


<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1147_Lectures/raw/main/content/Python_Modules/Python_Modules.pdf)" -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Python - Builtins, Modules, Packages_" -->

<!-- class: lead -->

# Builtins

<div style="padding-left:200px;padding-right:200px;">

```sh
$ python
Python 3.12.8 (tags/v3.12.8:2dc476b, Dec  3 2024, 19:30:04) [MSC v.1942 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> dir(__builtins__)
```

</div>

---
<!-- header: "_Python - Builtins, Modules, Packages_ > **Builtins**" -->

```
ArithmeticError             IndentationError            TabError                    bool                        input                       staticmethod
AssertionError              IndexError                  TimeoutError                breakpoint                  int                         str
AttributeError              InterruptedError            True                        bytearray                   isinstance                  sum
BaseException               IsADirectoryError           TypeError                   bytes                       issubclass                  super
BaseExceptionGroup          KeyError                    UnboundLocalError           callable                    iter                        tuple
BlockingIOError             KeyboardInterrupt           UnicodeDecodeError          chr                         len                         type
BrokenPipeError             LookupError                 UnicodeEncodeError          classmethod                 license                     vars
BufferError                 MemoryError                 UnicodeError                compile                     list                        zip
BytesWarning                ModuleNotFoundError         UnicodeTranslateError       complex                     locals
ChildProcessError           NameError                   UnicodeWarning              copyright                   map
ConnectionAbortedError      None                        UserWarning                 credits                     max
ConnectionError             NotADirectoryError          ValueError                  delattr                     memoryview
ConnectionRefusedError      NotImplemented              Warning                     dict                        min
ConnectionResetError        NotImplementedError         WindowsError                dir                         next
DeprecationWarning          OSError                     ZeroDivisionError           divmod                      object
EOFError                    OverflowError               __build_class__             enumerate                   oct
Ellipsis                    PendingDeprecationWarning   __debug__                   eval                        open
EncodingWarning             PermissionError             __doc__                     exec                        ord
EnvironmentError            ProcessLookupError          __import__                  exit                        pow
Exception                   RecursionError              __loader__                  filter                      print
ExceptionGroup              ReferenceError              __name__                    float                       property
False                       ResourceWarning             __package__                 format                      quit
FileExistsError             RuntimeError                __spec__                    frozenset                   range
FileNotFoundError           RuntimeWarning              abs                         getattr                     repr
FloatingPointError          StopAsyncIteration          aiter                       globals                     reversed
FutureWarning               StopIteration               all                         hasattr                     round
GeneratorExit               SyntaxError                 anext                       hash                        set
IOError                     SyntaxWarning               any                         help                        setattr
ImportError                 SystemError                 ascii                       hex                         slice
ImportWarning               SystemExit                  bin                         id                          sorted
```

---

<!-- header: "Python - Builtins, Modules, Packages > Builtins" -->

<div style="padding-top:80px;padding-left:400px;padding-right:400px">

```py
def main():
    # abs() - absolute value
    print("abs(-42):", abs(-42))

    # all() - check if all elements are True
    print("all([True, True, False]):", all([True, True, False]))

    # any() - check if any element is True
    print("any([0, 0, 1]):", any([0, 0, 1]))

    # bin() - convert integer to binary string
    print("bin(10):", bin(10))

    # bool() - get boolean value
    print("bool('Hello'):", bool("Hello"))

    # chr() - get character from ASCII code
    print("chr(65):", chr(65))

    # divmod() - quotient and remainder
    print("divmod(17, 5):", divmod(17, 5))

    # enumerate() - get index and value
    for idx, value in enumerate(['apple', 'banana', 'cherry']):
        print(f"Item {idx}: {value}")

    # eval() - evaluate a string as Python expression
    expression = "3 * (4 + 5)"
    print(f"eval('{expression}'):", eval(expression))

    # filter() - filter items
    numbers = [1, 2, 3, 4, 5]
    even = list(filter(lambda x: x % 2 == 0, numbers))
    print("Even numbers:", even)

if __name__ == "__main__":
    main()
```

</div>

---


<!-- class: lead -->

# Modules

<style scoped>
h1 { view-transition-name: header2; }
</style>

<div style="padding-left:200px;padding-right:200px;">

```sh
$ python
Python 3.12.8 (tags/v3.12.8:2dc476b, Dec  3 2024, 19:30:04) [MSC v.1942 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> help('modules')
```

</div>

---

<!-- header: "_Python - Builtins, Modules, Packages > Builtins_ > **Modules**" -->

<div style="padding-top:50px">

```
3c22db458360489351e4__mypyc  _zoneinfo                    dbm                          isort                        platformdirs                 shapely                      turtledemo
PIL                          abc                          deadcode                     json                         plistlib                     shellingham                  twine
__future__                   aifc                         decimal                      keyring                      pluggy                       shelve                       types
__hello__                    annotated_types              difflib                      keyword                      poplib                       shlex                        typing
__phello__                   antigravity                  dill                         kiwisolver                   posixpath                    shutil                       typing_extensions
_aix_support                 argparse                     dis                          lib2to3                      pprint                       signal                       tzdata
_asyncio                     ast                          distlib                      linecache                    profile                      site                         uc_micro
_bz2                         astroid                      doctest                      linkify_it                   pstats                       six                          unicodedata
_collections_abc             asyncio                      docutils                     locale                       psutil                       smtplib                      unittest
_compat_pickle               base64                       dulwich                      logging                      pty                          sndhdr                       urllib
_compression                 bdb                          email                        lxml                         py                           socket                       urllib3
_ctypes                      bibtexparser                 encodings                    lzma                         py_compile                   socketserver                 uu
_ctypes_test                 bisect                       ensurepip                    mailbox                      pyclbr                       sqlite3                      uuid
_decimal                     build                        enum                         mailcap                      pydantic                     sre_compile                  venv
_distutils_hack              builtins                     et_xmlfile                   markdown_it                  pydantic_core                sre_constants                virtualenv
_elementtree                 bz2                          fastjsonschema               matplotlib                   pydoc                        sre_parse                    warnings
_hashlib                     cProfile                     feedparser                   mccabe                       pydoc_data                   ssl                          watchdog
_lzma                        cachecontrol                 filecmp                      mdit_py_plugins              pyexpat                      stat                         wave
_markupbase                  calendar                     fileinput                    mdurl                        pygments                     statistics                   weakref
_msi                         certifi                      filelock                     mimetypes                    pylab                        string                       webbrowser
_multiprocessing             cgi                          fitz                         modulefinder                 pylings                      stringprep                   webdav3
_osx_support                 cgitb                        fnmatch                      modules                      pylint                       struct                       wheel
_overlapped                  charset_normalizer           fontTools                    more_itertools               pymupdf                      subprocess                   win32ctypes
_py_abc                      chunk                        fractions                    msgpack                      pyparsing                    sunau                        winsound
_pydatetime                  cleo                         ftplib                       msilib                       pyproject_hooks              symtable                     workbook
_pydecimal                   cmd                          functools                    multiprocessing              pyproject_toml               sysconfig                    wsgiref
_pyio                        code                         genericpath                  netrc                        pytest                       tabnanny                     xdrlib
_pylong                      codecs                       getopt                       nh3                          pytz                         tarfile                      xlrd
_pytest                      codeop                       getpass                      nntplib                      pyzotero                     telnetlib                    xlutils
_queue                       collections                  gettext                      ntpath                       queue                        tempfile                     xlwt
_sitebuiltins                colorama                     glob                         nturl2path                   quopri                       test                         xml
_socket                      colorsys                     graphlib                     numbers                      random                       textual                      xmlrpc
_sqlite3                     compileall                   gzip                         numpy                        rapidfuzz                    textwrap                     yaml
_ssl                         concurrent                   hashlib                      opcode                       re                           this                         zipapp
_strptime                    configparser                 heapq                        openpyxl                     readme_renderer              threading                    zipfile
_testbuffer                  contextlib                   hmac                         operator                     remarks                      timeit                       zipimport
_testcapi                    contextvars                  html                         optparse                     reprlib                      tkinter                      zoneinfo
_testclinic                  contourpy                    http                         os                           requests                     token
_testconsole                 copy                         id                           packaging                    requests_toolbelt            tokenize
_testimportmultiple          copyreg                      idlelib                      pandas                       rfc3986                      toml
_testinternalcapi            coverage                     idna                         pathlib                      rich                         tomli
_testmultiphase              crashtest                    imaplib                      pdb                          rlcompleter                  tomlkit
_testsinglephase             crypt                        imghdr                       pickle                       runpy                        tomllib
_threading_local             csv                          importlib                    pickletools                  sched                        tqdm
_tkinter                     ctypes                       iniconfig                    pip                          seaborn                      trace
_uuid                        curses                       init_py_project              pipes                        secrets                      traceback
_version                     cycler                       inspect                      pkg_resources                select                       tracemalloc
_weakrefset                  dataclasses                  installer                    pkginfo                      selectors                    trove_classifiers
_wmi                         datetime                     io                           pkgutil                      setuptools                   tty
_yaml                        dateutil                     ipaddress                    platform                     sgmllib                      turtle                                           337 Modules
```
</div>

---

<div>

## Modules in Python

</div>

<div style="padding-top:100px">

- Code reusability: 
  - Write once, use many times
<br>
  - contains collections of functions and global variables
<br>
  - Modules can be imported into other Python files
<br>
- Maintainability: 
  - Easier to manage and update code
<br>
- Namespace management: 
  - Avoids name conflicts by separating code logically

</div>


---

<div class="columns-2">
<div style="padding-top:400px">

- To use a module, you my first `import` it

</div>
<div >

```py
import math
import random
import datetime
import os
import sys

def main():
    # math module: calculate square root
    num = 25
    print(f"Square root of {num} is {math.sqrt(num)}")

    # random module: generate random integer
    rand_num = random.randint(1, 100)
    print(f"Random number between 1 and 100: {rand_num}")

    # datetime module: get current date and time
    now = datetime.datetime.now()
    print(f"Current date and time: {now}")

    # os module: get current working directory
    cwd = os.getcwd()
    print(f"Current working directory: {cwd}")

    # sys module: show Python version
    print(f"Python version: {sys.version}")

    # os + random: create a random filename
    filename = f"file_{random.randint(1000,9999)}.txt"
    full_path = os.path.join(cwd, filename)
    print(f"Generated random file path: {full_path}")

if __name__ == "__main__":
    main()
```

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 5;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<div class="columns-2">
<div style="padding-top:400px">

- To use a module's member(s)/function(s)/variable(s), you use the `.` operator

</div>
<div >

```py
import math
import random
import datetime
import os
import sys

def main():
    # math module: calculate square root
    num = 25
    print(f"Square root of {num} is {math.sqrt(num)}")

    # random module: generate random integer
    rand_num = random.randint(1, 100)
    print(f"Random number between 1 and 100: {rand_num}")

    # datetime module: get current date and time
    now = datetime.datetime.now()
    print(f"Current date and time: {now}")

    # os module: get current working directory
    cwd = os.getcwd()
    print(f"Current working directory: {cwd}")

    # sys module: show Python version
    print(f"Python version: {sys.version}")

    # os + random: create a random filename
    filename = f"file_{random.randint(1000,9999)}.txt"
    full_path = os.path.join(cwd, filename)
    print(f"Generated random file path: {full_path}")

if __name__ == "__main__":
    main()
```

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 1;
  --highlight-last-line:10;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<div class="columns-2">
<div style="padding-top:400px">

- To use a module's member(s)/function(s)/variable(s), you use the `.` operator
- You can also access at a greater depth too
</div>
<div >

```py
import math
import random
import datetime
import os
import sys

def main():
    # math module: calculate square root
    num = 25
    print(f"Square root of {num} is {math.sqrt(num)}")

    # random module: generate random integer
    rand_num = random.randint(1, 100)
    print(f"Random number between 1 and 100: {rand_num}")

    # datetime module: get current date and time
    now = datetime.datetime.now()
    print(f"Current date and time: {now}")

    # os module: get current working directory
    cwd = os.getcwd()
    print(f"Current working directory: {cwd}")

    # sys module: show Python version
    print(f"Python version: {sys.version}")

    # os + random: create a random filename
    filename = f"file_{random.randint(1000,9999)}.txt"
    full_path = os.path.join(cwd, filename)
    print(f"Generated random file path: {full_path}")

if __name__ == "__main__":
    main()
```

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 3;
  --highlight-lines: 1;
  --highlight-last-line:17;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<!-- header: "Python - Builtins, Modules, Packages > Builtins > Modules" -->

<div class="columns-2">
<div style="padding-top:400px">

- The reusability, means we can call the same function over and over again!

</div>
<div >

```py
import math
import random
import datetime
import os
import sys

def main():
    # math module: calculate square root
    num = 25
    print(f"Square root of {num} is {math.sqrt(num)}")

    # random module: generate random integer
    rand_num = random.randint(1, 100)
    print(f"Random number between 1 and 100: {rand_num}")

    # datetime module: get current date and time
    now = datetime.datetime.now()
    print(f"Current date and time: {now}")

    # os module: get current working directory
    cwd = os.getcwd()
    print(f"Current working directory: {cwd}")

    # sys module: show Python version
    print(f"Python version: {sys.version}")

    # os + random: create a random filename
    filename = f"file_{random.randint(1000,9999)}.txt"
    full_path = os.path.join(cwd, filename)
    print(f"Generated random file path: {full_path}")

if __name__ == "__main__":
    main()
```

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 13;
  --highlight-lines: 1;
  --highlight-last-line:28;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

<!-- _footer: https://github.com/python/cpython/tree/main -->

---

<!-- header: "Python - Builtins, Modules, Packages " -->

<!-- class:lead -->

# User-defined Modules

<style scoped>
h1 { view-transition-name: header2; }
</style>

---

<!-- header: "_Python - Builtins, Modules, Packages_ > **User-defined Modules**" -->

<div class="columns-2">
<div style="padding-top:150px;font-size:28px">

1. Write functions and variables in a `.py` file, e.g., `math_utils.py`, `stats_utils.py`
2. Import them in another script using e.g., `import math_utils`

<br>

```
# Directory structure
*
|-main.py
|-math_utils.py
|-stats_utils.py
```

</div>
<div style="font-size:28px">

```py
# math_utils.py
def mean(numbers):
    """Calculate the arithmetic mean."""
    return sum(numbers) / len(numbers)
```
```py
# stats_utils.py
def mean(numbers):
    """Calculate the geometric mean."""
    product = 1
    for number in numbers:
        product *= number
    return product ** (1 / len(numbers))
```

```python
# main.py
import math_utils
import stats_utils

numbers = [1, 2, 3, 4, 5]

# Using the arithmetic mean from math_utils
arithmetic_mean = math_utils.mean(numbers)
print("Arithmetic Mean:", arithmetic_mean)

# Using the geometric mean from stats_utils
geometric_mean = stats_utils.mean(numbers)
print("Geometric Mean:", geometric_mean)
```

</div>
</div>

---

<!-- header: "Python - Builtins, Modules, Packages" -->

<div class="columns-2">
<div style="padding-top:350px">

## Example of Pylings

- You should always try have a top level `docstrings`, inline with PEP.

</div>
<div style="padding-top:50px">

```py
"""
logging_setup.py: Configures logging for the Pylings application.

This module defines the `setup_logging` function, which enables file-based
logging when the application is run in debug mode. Logs are written to a
predefined file path (`DEBUG_PATH`) and include timestamps, severity levels,
source modules, and message content.

Usage:
    Call `setup_logging(debug=True)` early in the application to enable
    debug-level logging to file.

Intended for use by CLI entry points and debugging support.
"""
import logging
from pylings.constants import DEBUG_PATH

def setup_logging(debug: bool):
    """Configure application-wide logging based on debug flag.

    If debug mode is enabled, logs are written to a file defined by `DEBUG_PATH`.
    The log format includes timestamps, log level, module, and message.

    Args:
        debug (bool): Whether to enable detailed logging to file.
    """
    handlers = []

    if debug:
        handlers.append(logging.FileHandler(DEBUG_PATH, mode="w"))

        logging.basicConfig(
            level=logging.DEBUG,
            format="%(asctime)s - %(levelname)s - %(name)s - %(message)s",
            handlers=handlers
        )
# End-of-file (EOF)
```
</div>
</div>


<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 14;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<div class="columns-2">
<div style="padding-top:350px">

## Example of Pylings

- Import Builtin modules first

</div>
<div style="padding-top:50px">

```py
"""
logging_setup.py: Configures logging for the Pylings application.

This module defines the `setup_logging` function, which enables file-based
logging when the application is run in debug mode. Logs are written to a
predefined file path (`DEBUG_PATH`) and include timestamps, severity levels,
source modules, and message content.

Usage:
    Call `setup_logging(debug=True)` early in the application to enable
    debug-level logging to file.

Intended for use by CLI entry points and debugging support.
"""
import logging
from pylings.constants import DEBUG_PATH

def setup_logging(debug: bool):
    """Configure application-wide logging based on debug flag.

    If debug mode is enabled, logs are written to a file defined by `DEBUG_PATH`.
    The log format includes timestamps, log level, module, and message.

    Args:
        debug (bool): Whether to enable detailed logging to file.
    """
    handlers = []

    if debug:
        handlers.append(logging.FileHandler(DEBUG_PATH, mode="w"))

        logging.basicConfig(
            level=logging.DEBUG,
            format="%(asctime)s - %(levelname)s - %(name)s - %(message)s",
            handlers=handlers
        )
# End-of-file (EOF)
```

</div>
</div>


<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 15;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>


---

<div class="columns-2">
<div style="padding-top:350px">

## Example of Pylings

- Import user-defined modules second

</div>
<div style="padding-top:50px">

```py
"""
logging_setup.py: Configures logging for the Pylings application.

This module defines the `setup_logging` function, which enables file-based
logging when the application is run in debug mode. Logs are written to a
predefined file path (`DEBUG_PATH`) and include timestamps, severity levels,
source modules, and message content.

Usage:
    Call `setup_logging(debug=True)` early in the application to enable
    debug-level logging to file.

Intended for use by CLI entry points and debugging support.
"""
import logging
from pylings.constants import DEBUG_PATH

def setup_logging(debug: bool):
    """Configure application-wide logging based on debug flag.

    If debug mode is enabled, logs are written to a file defined by `DEBUG_PATH`.
    The log format includes timestamps, log level, module, and message.

    Args:
        debug (bool): Whether to enable detailed logging to file.
    """
    handlers = []

    if debug:
        handlers.append(logging.FileHandler(DEBUG_PATH, mode="w"))

        logging.basicConfig(
            level=logging.DEBUG,
            format="%(asctime)s - %(levelname)s - %(name)s - %(message)s",
            handlers=handlers
        )
# End-of-file (EOF)
```

</div>
</div>


<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 16;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<!-- _footer: https://pypi.org/project/pylings/ -->

<div class="columns-2">
<div style="padding-top:350px">

## Example of Pylings

- `docstrings` used for functions too.

</div>
<div style="padding-top:50px">

```py
"""
logging_setup.py: Configures logging for the Pylings application.

This module defines the `setup_logging` function, which enables file-based
logging when the application is run in debug mode. Logs are written to a
predefined file path (`DEBUG_PATH`) and include timestamps, severity levels,
source modules, and message content.

Usage:
    Call `setup_logging(debug=True)` early in the application to enable
    debug-level logging to file.

Intended for use by CLI entry points and debugging support.
"""
import logging
from pylings.constants import DEBUG_PATH

def setup_logging(debug: bool):
    """Configure application-wide logging based on debug flag.

    If debug mode is enabled, logs are written to a file defined by `DEBUG_PATH`.
    The log format includes timestamps, log level, module, and message.

    Args:
        debug (bool): Whether to enable detailed logging to file.
    """
    handlers = []

    if debug:
        handlers.append(logging.FileHandler(DEBUG_PATH, mode="w"))

        logging.basicConfig(
            level=logging.DEBUG,
            format="%(asctime)s - %(levelname)s - %(name)s - %(message)s",
            handlers=handlers
        )
# End-of-file (EOF)
```

</div>
</div>


<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 19;
  --highlight-lines: 8;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<!-- class: lead -->

# Third-Party Modules

<style scoped>
h1 { view-transition-name: header2; }
</style>

---

<!-- header: "_Python - Builtins, Modules, Packages_ > **Third-Party Modules**" -->

<div>

## Installing 

- `pip` - Pip Installs Packages  [`p`ackage `i`nstaller for `p`ython] 

    - looks locally first
    - then looks at https://pypi.org/{package}

- ~630k packages!

    ```
    curl https://pypi.org/simple/ | sed -E 's/<[^>]+>//g' > packages.txt && wc -l packages.txt
    ```


- Use `pip`, the package installer for Python

    ```bash
    pip --help
    pip install <package>
    pip install <package>==<version>
    ```
---

## Checking Installed Modules

<div class="columns-2">
<div style="font-size:28px;padding-top:150px">

- Use the following command to see installed packages
<br>
<br>
<br>
<br>
- Or check specific package information

</div>
<div style="font-size:28px">

```bash
$ pip list

    Package            Version
------------------ -----------
alabaster          1.0.0
asgiref            3.8.1
babel              2.16.0
build              1.2.2.post1
certifi            2024.12.14
charset-normalizer 3.4.1
colorama           0.4.6
Django             5.1.6
docutils           0.21.2
id                 1.5.0
...                ...
```

```
$ pip show requests

Name: requests
Version: 2.31.0
Summary: Python HTTP for Humans.
Home-page: https://requests.readthedocs.io
Author: Kenneth Reitz
Author-email: me@kennethreitz.org
License: Apache 2.0
Location: path/to/file
Requires: idna, charset-normalizer, certifi, urllib3
Required-by:
```

</div>
</div>

---

<!-- header: "Python - Builtins, Modules, Packages > Third-Party Modules" -->

<div style="padding-bottom:150px">

## Installing packages from a file

</div>

<div class="columns-2">
<div>

- `-r`: Install from the given requirements file. This option can be used multiple times.

<br>
<br>

- `requirements.txt`: could be any name but the file holds your packages to be installed

</div>
<div style="padding-top:50px">

```bash
pip install -r requirements.txt
```
<br>
<br>
<br>

```
# requirements.txt
requests==2.25.1
numpy>=1.21.0
pandas
flask==2.0.1
```

</div>
</div>

---

<!-- header: "Python - Builtins, Modules, Packages" -->

<div style="padding-bottom:50px">

## Renaming a Module

</div>

<div class="columns-2">
<div style="font-size:26px">

- The module name is long or cumbersome to type repeatedly.
- There’s a naming conflict with another module or variable.
- You want a shorter or more intuitive name for readability.
- Use `as` to give a module a different name in your code
- You can also import specific functions or variables

</div>
<div style="padding-top:70px">

```python
from math import pi, sqrt # builtins
import matplotlib.pyplot as plt # third-party
import mymodule # user defined package

# Now you can use 'plt' instead of 'matplotlib.pyplot'
print(pi)             # Output: 3.14159...
print(sqrt(16))       # Output: 4.0
plt.plot([1, 2, 3], [4, 5, 6])
plt.show()
```

</div>
</div>