import smtplib
from email.message import EmailMessage

msg = EmailMessage()
msg.set_content("Daily system health: All good.")
msg['Subject'] = "Daily Report"
msg['From'] = "admin@example.com"
msg['To'] = "manager@example.com"

with smtplib.SMTP('localhost') as server:
    server.send_message(msg)

print("Report sent.")