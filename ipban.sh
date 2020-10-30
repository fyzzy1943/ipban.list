fail2ban-client status v2ray \
 | grep "Banned IP list" \
 | awk -F ':\t' '{print $2}' \
 | sed "s/\s/\n/g" \
 | sort \
  > ipban.list
