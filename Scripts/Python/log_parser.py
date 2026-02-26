"""
Parses a log file and prints the number of occurrences of each unique error message.
"""
import sys
from collections import Counter


def parse_log_errors(log_file: str) -> None:
    try:
        with open(log_file, 'r') as f:
            errors = [line.strip() for line in f if 'error' in line.lower()]
    except FileNotFoundError:
        print(f"Error: File '{log_file}' not found.")
        sys.exit(1)

    counter = Counter(errors)
    for error, count in counter.most_common():
        print(f'{error}: {count}')


def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <log_file>")
        sys.exit(1)

    parse_log_errors(sys.argv[1])


if __name__ == '__main__':
    main()
