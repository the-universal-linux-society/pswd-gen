#! /bin/bash 

LOWER_CASE='abcdefghijklmnopqrstuvwxyz'
UPPER_CASE='ABCDEFGHIJKLMNOPQRTSUVWXYZ'
NUMBERS='0123456789'
SYMBOLS='!@#$%^&*()-_=+[{]}\;:<.>/'
PASSWORD_LENGTH=12

# combine all functions together #
ALL_COMB="$LOWER_CASE$UPPER_CASE$NUMBERS$SYMBOLS"

# randomize via urandom #
password=$(tr -dc "$ALL_COMB" < /dev/urandom | head -c "$PASSWORD_LENGTH")
echo
echo "Here is your randomly generated, strong and secure password : $password"
