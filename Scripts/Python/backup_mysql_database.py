"""
Automates MySQL backup to a specified directory.
"""
import os
import sys
import subprocess


def backup_mysql_db(user: str, password: str, database: str, backup_dir: str) -> None:
    if not os.path.isdir(backup_dir):
        print(f"Backup directory '{backup_dir}' does not exist. Creating it...")
        os.makedirs(backup_dir)

    backup_file = os.path.join(backup_dir, f"{database}_backup.sql")
    cmd = ["mysqldump", "-u", user, f"-p{password}", database]

    try:
        with open(backup_file, 'w') as f:
            subprocess.run(cmd, stdout=f, check=True)
        print(f"Backup successful: {backup_file}")
    except subprocess.CalledProcessError:
        print("Backup failed.")
        sys.exit(1)


def main():
    if len(sys.argv) != 5:
        print(f"Usage: {sys.argv[0]} <user> <password> <database> <backup_dir>")
        sys.exit(1)

    backup_mysql_db(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])


if __name__ == '__main__':
    main()
