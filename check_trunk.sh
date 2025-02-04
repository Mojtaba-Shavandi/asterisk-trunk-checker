#!/bin/bash

# بررسی تعداد تماس‌های فعال
ACTIVE_CALLS=$(asterisk -rx "core show channels" | grep "active call" | awk '{print $1}')

# بررسی وضعیت ترانک (SIP یا PJSIP)
TRUNK_STATUS=$(asterisk -rx "sip show peers" | grep "OK") # برای SIP
# TRUNK_STATUS=$(asterisk -rx "pjsip show contacts" | grep "Avail") # برای PJSIP

# اگر ترانک باز باشه ولی هیچ تماسی فعال نباشه، سرور ری‌استارت بشه
if [[ -n "$TRUNK_STATUS" && "$ACTIVE_CALLS" -eq 0 ]]; then
    echo "Trunk is open but no active calls. Restarting server..."
    reboot
fi
