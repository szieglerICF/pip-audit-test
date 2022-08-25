python3 -m venv venv
source venv/bin/activate
pwd

echo "*** Importing cleaning versions of packages" > log.txt
pip install -r requirements.txt >> log.txt
echo "*** Packages installed" >> log.txt
pip list  >> log.txt


echo "*** Running audit"  >> log.txt
pip-audit  >> log.txt


rm -r venv


