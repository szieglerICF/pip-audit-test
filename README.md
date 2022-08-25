# pip-audit-test

Quick demonstration project showing the use of [pip-audit](https://pypi.org/project/pip-audit/). pip-audit is like npm-audit and checks your installed versions of packages against a known vulnerability list for package versions. 

The [run.sh](run.sh) shell script does the following:
- Creates a virtual env to have a clean environment for dependency installations
- Installs the sample packages in [requirements.txt](requirements.txt)
- Lists the installed packages
- Runs the audit and lists packages with vulnerabilities
- Removes the venv virtual directory to allow for a subsequent clean run

Output is written to the log.txt file

## Usage
```
. run.sh
```