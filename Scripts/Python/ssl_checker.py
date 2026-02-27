import ssl
import socket
from datetime import datetime

hostname = "google.com"
context = ssl.create_default_context()

with socket.create_connection((hostname, 443)) as sock:
    with context.wrap_socket(sock, server_hostname=hostname) as ssock:
        cert = ssock.getpeercert()
        expiry = datetime.strptime(cert['notAfter'], "%b %d %H:%M:%S %Y %Z")

print(f"SSL Expiry Date: {expiry}")