zsh
#!/usr/bin/env zsh

# Configuration
MAIL_NOTIFICATIONS_ENABLED=true
MAIL_NOTIFICATIONS_FROM="you@example.com"
MAIL_NOTIFICATIONS_TO="you@example.com"
MAIL_NOTIFICATIONS_SMTP_SERVER="smtp.example.com"
MAIL_NOTIFICATIONS_SMTP_PORT="587"
MAIL_NOTIFICATIONS_SMTP_USERNAME="you@example.com"
MAIL_NOTIFICATIONS_SMTP_PASSWORD="your_password"

# Utility function to send an email
send_mail() {
 local subject="$1"
 local body="$2"

 echo "Subject: $subject" |
    sendmail -f "$MAIL_NOTIFICATIONS_FROM" \
             -t "$MAIL_NOTIFICATIONS_TO" \
             -- "$MAIL_NOTIFICATIONS_SMTP_SERVER" \
             --port="$MAIL_NOTIFICATIONS_SMTP_PORT" \
             --username="$MAIL_NOTIFICATIONS_SMTP_USERNAME" \
             --password="$MAIL_NOTIFICATIONS_SMTP_PASSWORD" \
             --starttls \
             --body "$body"
}

# Example usage
if $MAIL_NOTIFICATIONS_ENABLED; then
 send_mail "Test Subject" "This is a test body."
fi