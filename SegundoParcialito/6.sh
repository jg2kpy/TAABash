#!/bin/bash

echo "jg2kpy:Junior:Gutierrez:+59594160109" | awk -F ':' '{printf "dn: uid=%s, dc=example, dc:com\ncn: %s %s \nsn: %s \ntelephoneNumber: %s\n", $1,$2,$3,$3,$4,$5}'