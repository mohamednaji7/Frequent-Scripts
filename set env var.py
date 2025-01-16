import os

# Set the environment variable
os.environ["WANDB_KEY"] = ""

# Verify by printing it
print("WANDB_KEY is set to:", os.environ["WANDB_KEY"])
