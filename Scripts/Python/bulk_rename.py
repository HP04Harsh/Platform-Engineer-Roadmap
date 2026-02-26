import os

folder_path = input("Enter folder path: ")
prefix = input("Enter prefix name: ")

files = os.listdir(folder_path)

for index, file in enumerate(files, start=1):
    old_path = os.path.join(folder_path, file)
    extension = os.path.splitext(file)[1]
    new_name = f"{prefix}_{index}{extension}"
    new_path = os.path.join(folder_path, new_name)
    os.rename(old_path, new_path)

print("Files renamed successfully!")