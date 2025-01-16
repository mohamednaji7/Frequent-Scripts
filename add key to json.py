

import json
import os

# Directory where your JSON files are located
directory = '.'

# Loop through each file in the directory
for filename in os.listdir(directory):
    if filename.endswith('.json'):  # Only process .json files
        file_path = os.path.join(directory, filename)
        
        # Open and load the JSON data
        with open(file_path, 'r') as f:
            data = json.load(f)
        
        # Add the new parameter to the JSON data
        data["load_in_4bit"] = False
        
        # Save the modified JSON back to the file
        with open(file_path, 'w') as f:
            json.dump(data, f, indent=2)

print("\n✅ All JSON files have been updated and saved!")
