"""
Organizes files in a directory into subdirectories based on file extensions.
"""
import os
import shutil
import sys


def organize_files_by_extension(directory: str) -> None:
    if not os.path.isdir(directory):
        print(f"Error: Directory '{directory}' does not exist.")
        sys.exit(1)

    for filename in os.listdir(directory):
        filepath = os.path.join(directory, filename)
        if os.path.isfile(filepath):
            ext = filename.split('.')[-1] if '.' in filename else 'no_extension'
            target_dir = os.path.join(directory, ext)
            os.makedirs(target_dir, exist_ok=True)
            shutil.move(filepath, os.path.join(target_dir, filename))


def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <directory>")
        sys.exit(1)

    organize_files_by_extension(sys.argv[1])


if __name__ == '__main__':
    main()
