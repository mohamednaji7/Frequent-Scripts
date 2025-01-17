import os

# Set the environment variable
os.environ["WANDB_KEY"] = ""

# Verify by printing it
print("WANDB_KEY is set to:", os.environ["WANDB_KEY"])


import os

# Set the environment variable
os.environ["HF_TOKEN"] = ""

# Verify by printing it
print("HF_TOKEN is set to:", os.environ["HF_TOKEN"])
