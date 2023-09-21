# Run ROOT CERN Script GitHub Action

## Overview

This GitHub Action allows you to run a ROOT CERN script for different purposes. The action sets up the ROOT environment, runs the specified ROOT script, and verifies the existence of an output file.

## Action Inputs

### `root_script`

**Required**: The name of the ROOT CERN script you want to run. Provide the script name as a string, for example, `'script_name.C'`.

### `output_file`

**Optional**: The name of the output file to check for after the ROOT script has been executed. Provide the filename as a string, for example, `'output.png'`. If no output file is expected, this parameter can be omitted.

## Usage

Add a step in your GitHub Actions workflow YAML file to use this action:

```yaml
- name: Run ROOT CERN Script Action
  uses: MohamedElashri/rootcern-action@1.0
  with:
    scripts: 'test_root_script.C'
    output_files: 'test_root_output.png'   
```

## Examples


### Example 1: Running a single script with no output file

```yaml
name: ROOT CI, Single without output

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  workflow_dispatch:

jobs:
  test:
    runs-on: ubuntu-20.04

    steps:
    - uses: actions/checkout@v2

    - name: Run ROOT CERN scripts
      uses: your-github-username/your-action-repo@main
      with:
        scripts: test_root_script1.C
```

### Example 2: Running a single script with an output file

```yaml
name: ROOT CI, Single with output

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  workflow_dispatch:

jobs:
  test:
    runs-on: ubuntu-20.04

    steps:
    - uses: actions/checkout@v2

    - name: Run ROOT CERN scripts
      uses: MohamedElashri/rootcern-action@1.0
      with:
        scripts: test_root_script1.C
        output_files: test_root_output1.png
```

### Example 3: Running multiple scripts with output files

```yaml
name: ROOT CI, multiple scripts with output files

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  workflow_dispatch:

jobs:
  test:
    runs-on: ubuntu-20.04

    steps:
    - uses: actions/checkout@v2

    - name: Run ROOT CERN scripts
      uses: MohamedElashri/rootcern-action@1.0
      with:
        scripts: test_root_script1.C,test_root_script2.C
        output_files: test_root_output1.png,test_root_output2.png
```


## License

This project is licensed under the GNU General Public License, version 3.0 (GPL-3.0). You can find the full text of the license [here](https://github.com/MohamedElashri/rootcern-action/blob/main/LICENSE)

## Contributions

I welcome contributions to this project! If you have any ideas for improvements, bug fixes, or new features, please feel free to submit a pull request.

Here are some tips for contributing to this project:

Here are some ways you can contribute to this project:

* Submit bug reports and feature requests.
* Write code, tests, and documentation.
* Review and improve existing code.
* Help promote the project to others.

In general you should follow these guidlines.

* Make sure your contributions are well-tested and documented.
* Follow the project's coding style guide.
* Add a comment to your pull request explaining what your changes do.
* Be respectful and considerate of other contributors.

I appreciate your contributions to this project!

