"""
Processes a CSV file and extracts rows where a given column matches a value.
"""
import csv
import sys


def filter_csv(csv_file: str, column: int, value: str) -> None:
    try:
        with open(csv_file, newline='') as f:
            reader = csv.reader(f)
            for row in reader:
                if len(row) > column and row[column] == value:
                    print(','.join(row))
    except FileNotFoundError:
        print(f"CSV file '{csv_file}' not found.")
        sys.exit(1)


def main():
    if len(sys.argv) != 4:
        print(f"Usage: {sys.argv[0]} <csv_file> <column_index> <value>")
        sys.exit(1)

    filter_csv(sys.argv[1], int(sys.argv[2]), sys.argv[3])


if __name__ == '__main__':
    main()
