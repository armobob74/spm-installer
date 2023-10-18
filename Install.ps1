New-Item -ItemType Directory -Name "repos"
Set-Location ./repos

git clone https://github.com/hritwikk/solvent_dispenser_ui.git
git clone https://github.com/hritwikk/solvent_repository_wrapper.git
git clone https://github.com/armobob74/xy-python.git

python -m venv spm-venv
. .\spm-venv\Scripts\Activate

Get-ChildItem -Recurse -File -Filter "requirements.txt" | ForEach-Object { pip install -r $_.FullName }

pip3 install -e ./solvent_repository_wrapper
pip3 install -e ./xy-python
