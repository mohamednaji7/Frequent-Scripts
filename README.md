# Frequent-Scripts
some scripts that I use a lot

### LLM tools
- install ollama 
```bash
curl -fsSL https://ollama.com/install.sh | sh
```
- Unsloth Instalation on Colab

```bash
pip install unsloth
# Also get the latest nightly Unsloth!
pip install --force-reinstall --no-cache-dir --no-deps git+https://github.com/unslothai/unsloth.git'
```
- Unsloth: merge a LoRA adaptor model

```python
model.push_to_hub_merged(saving_repo, tokenizer, save_method = "merged_16bit", token=hf_token, commit_message=commit_message)
```


- Colab unsign
```python
from google.colab import runtime

runtime.unassign()
``` 

### File systems

```bash
du -sh /workspace/*
```

```bash
du -sh /workspace/* | sort -rh
```

```bash
ls /root/.cache/huggingface/
```
- count the number of directories in a directory
```bash
ls -l /path/to/dir | grep ^d | wc -l
```
### .env
```bash
export VAR=
```

```python
import os
# WANDB_KEY, HF_TOKEN

# Set the environment variable
os.environ["ENVVAR"] = ""

# Verify by printing it
print("ENVVAR is set to:", os.environ["ENVVAR"])
```
### Terminal

```bash
echo "export PS1='$(if [ -n "$VIRTUAL_ENV" ]; then echo "\[\033[01;35m\]($(basename $VIRTUAL_ENV)) "; fi)\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;34m\]\h:\[\033[01;36m\]\w\n\[\033[0m\]$ '" >> ~/.bashrc

source ~/.bashrc
```


### Git
```bash
git reset --hard 123456
git clean -fd
git push --force
```
