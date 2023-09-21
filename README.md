# Run ROOT CERN Script GitHub Action

## Overview

This GitHub Action allows you to run a ROOT CERN script for high-energy physics analysis. The action sets up the ROOT environment, runs the specified ROOT script, and verifies the existence of an output file.

## Inputs

### `root_script`

**Required**: The name of the ROOT CERN script you want to run. Provide the script name as a string, for example, `'script_name.C'`.

### `output_file`

**Required**: The name of the output file to check for after the ROOT script has been executed. Provide the filename as a string, for example, `'output.png'`.

## Usage

Add a step in your GitHub Actions workflow YAML file to use this action:

```yaml
- name: Run ROOT CERN Script Action
  uses: [Your GitHub Username]/run-root-cern-script-action@[tag/branch]
  with:
    root_script: 'test_root_script.C'
    output_file: 'test_root_output.png'   
```

## Example Workflow


Here is a full example of a workflow

```yaml
name: test root

on:
  push:
    branches:
      - main

jobs:
  example:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Repository
      uses: actions/checkout@v2
      
    - name: Run ROOT CERN Script
      uses: MohamedElashri/rootcern-action@1.0
      with:
        root_script: 'test_root_script.C'
        output_file: 'test_root_output.png'
```

### `output_file`

**Optional**: The name of the output file to check for after the ROOT script has been executed. Provide the filename as a string, for example, `'output.png'`. If no output file is expected, this parameter can be omitted.



