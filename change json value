import json
import os
import shutil




def load_config():
    """Load existing configuration or return default"""
    if os.path.exists("config.json"):
        try:
            with open("config.json", "r") as f:
                return json.load(f)
        except json.JSONDecodeError as e:
            print(f"⚠️ Error reading config.json: {e}")
            print('\ncontinue with the default')
            raise

    print("config.json not found. continue with the default")
    raise




def display_config(config):
    """Display configuration with indices"""
    print("\n📊 Current Configuration:")
    for i, (key, value) in enumerate(config.items(), start=1):
        print(f"{i}. {key} ➡️  {value}")
    print("\n")

def update_config_by_index(config):
    """Update configuration using index-based selection"""
    while True:
        display_config(config)
        index_input = input('Enter index number to change (or "n", "f", or "finish" to finish): ').strip()
        
        if index_input.lower() in ["n", "f", "finish"]:
            break
            
        try:
            index = int(index_input) - 1
        except ValueError:
            print("❌ Invalid input. Please enter a number.")
            continue

        keys = list(config.keys())
        
        if 0 <= index < len(keys):
            key = keys[index]
            current = config[key]

            msg = "Choose\n1 - First_Tunning\n2 - Continue\n" if key == "First_Tuning_OR_Continue" else  f"Enter new value for '{key}' (current: {current}): "
            
            value = input(msg).strip()
            if value:
                try:
                    # Special condition for "First_Tuning_OR_Continue"
                    if key == "First_Tuning_OR_Continue":
                        if value == "1":
                            config[key] = "First_Tuning"
                            print(f"✅ Updated '{key}' to: First_Tuning")
                        elif value == "2":
                            config[key] = "Continue"
                            print(f"✅ Updated '{key}' to: Continue")
                        else:
                            print(f"❌ Invalid choice for '{key}'. Update ignored.")
                        continue  # Skip to the next iteration after handling this key

                    # Handle other types
                    if isinstance(current, bool):
                        if value.lower() in ('true', '1', 'yes', 't', 'y'):
                            config[key] = True
                        elif value.lower() in ('false', '0', 'no', 'f', 'n'):
                            config[key] = False
                        else:
                            raise ValueError
                    elif isinstance(current, int):
                        config[key] = int(value)
                    elif isinstance(current, float):
                        config[key] = float(value)
                    else:
                        config[key] = value
                    print(f"✅ Updated '{key}' to: {config[key]}")
                except ValueError as e:
                    print(f"❌ {e}")
                    continue
        else:
            print("❌ Invalid index number")


def save_config(config):
    # Save configuration
    try:
        if os.path.exists("config.json"):
            shutil.copy("config.json", "config_backup.json")
        
        with open("config.json", "w") as f:
            json.dump(config, f, indent=2)
        
        print("\n✅ Configuration saved to 'config.json'")      

    except IOError as e:
        print(f"\n❌ Error saving configuration")
        raise

    




def main():



    print("🔧 Configuration Setup")
    
    # Load existing or default config
    config = load_config()  
    
    # Display current configuration and allow updates

    update_config_by_index(config)

    save_config(config)

    
if __name__ == "__main__":
    main()
