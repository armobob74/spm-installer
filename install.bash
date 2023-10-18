mkdir repos
cd repos
git clone https://github.com/hritwikk/solvent_dispenser_ui.git
git clone https://github.com/hritwikk/solvent_repository_wrapper
git clone https://github.com/armobob74/xy-python
python -m venv spm-venv
source ./spm-venv/bin/activate
find . -type f -name "requirements.txt" | xargs -I{} pip install -r {}
pip3 install -e ./solvent_repository_wrapper
pip3 install -e ./xy-python
