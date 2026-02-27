"""
Makes a GET request to a given API URL and prints the JSON response.
"""
import sys
import requests


def call_api(url: str) -> None:
    try:
        response = requests.get(url)
        response.raise_for_status()
        print(response.json())
    except requests.RequestException as e:
        print(f"API request failed: {e}")
        sys.exit(1)


def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <api_url>")
        sys.exit(1)

    call_api(sys.argv[1])


if __name__ == '__main__':
    main()
