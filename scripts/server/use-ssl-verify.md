# SSL Certificate Verification

```sh
pip config set global.cert path/to/ca-bundle.crt
pip config list
# $HOME/.config/pip/pip.conf
# [global]
# cert = /Users/pydemia/.ssl/SK_SSL.crt
# trusted-host = pypi.python.org pypi.org files.pythonhosted.org


conda config # ~/.condarc
conda config --set ssl_verify path/to/ca-bundle.crt
conda config --show ssl_verify

# Bonus while we are here...
git config --global http.sslVerify true
git config --global http.sslCAInfo path/to/ca-bundle.crt
```
