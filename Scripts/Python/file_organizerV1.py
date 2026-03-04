# ==========================================
# File: file_organizer.py
# Purpose: Organize files by type
# ==========================================

import os
import shutil

# Folder to organize
SOURCE_FOLDER = "Downloads"

print("=====================================")
print("        FILE ORGANIZER SCRIPT        ")
print("=====================================")

# Loop through files
for file in os.listdir(SOURCE_FOLDER):
    file_path = os.path.join(SOURCE_FOLDER, file)

    if os.path.isfile(file_path):
        extension = file.split(".")[-1]

        # Create folder for extension if not exists
        folder_path = os.path.join(SOURCE_FOLDER, extension.upper())
        os.makedirs(folder_path, exist_ok=True)

        # Move file
        shutil.move(file_path, os.path.join(folder_path, file))

print("Files Organized Successfully ✅")