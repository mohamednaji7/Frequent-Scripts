# Frequent-Scripts
some scripts that I use a lot


- install ollama 
```bash
curl -fsSL https://ollama.com/install.sh | sh
```


```bash
du -sh /workspace/*
```

```bash
du -sh /workspace/* | sort -rh
```

```python
import os
# WANDB_KEY, HF_TOKEN

# Set the environment variable
os.environ["ENVVAR"] = ""

# Verify by printing it
print("ENVVAR is set to:", os.environ["ENVVAR"])
```

```bash
echo "export PS1='$(if [ -n "$VIRTUAL_ENV" ]; then echo "\[\033[01;35m\]($(basename $VIRTUAL_ENV)) "; fi)\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;34m\]\h:\[\033[01;36m\]\w\n\[\033[0m\]$ '" >> ~/.bashrc

source ~/.bashrc
```

- Unsloth Instalation on Colab

```bash
pip install unsloth
# Also get the latest nightly Unsloth!
pip install --force-reinstall --no-cache-dir --no-deps git+https://github.com/unslothai/unsloth.git'
```