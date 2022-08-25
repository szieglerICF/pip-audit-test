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

## Output in log.txt
```
*** Importing cleaning versions of packages
Collecting pip-audit (from -r requirements.txt (line 1))
  Using cached https://files.pythonhosted.org/packages/14/ea/7fba908a68839ae4704bd69ff4783187b390a8600ad2b62a2115d877acf0/pip_audit-2.4.3-py3-none-any.whl
Collecting pandas==1.3.1 (from -r requirements.txt (line 2))
  Using cached https://files.pythonhosted.org/packages/80/d9/50bff755debc7492fd4ee0f312250a5c4b07b9b50af3d7af4047ecd4257e/pandas-1.3.1-cp37-cp37m-macosx_10_9_x86_64.whl

...

*** Packages installed
Package                 Version  
----------------------- ---------
CacheControl            0.12.11  
certifi                 2022.6.15
charset-normalizer      2.1.1    
commonmark              0.9.1    
cyclonedx-python-lib    2.7.1    
html5lib                1.1      

...

*** Running audit
Name  Version ID                  Fix Versions
----- ------- ------------------- ------------
numpy 1.21.6  GHSA-fpfv-jqm9-f5jm 1.22




```