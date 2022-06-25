#!/bin/bash

OUTFILE=secrets.ini
SERVER_PRIVKEY=`wg genkey`
SERVER_PUBKEY=`echo $SERVER_PRIVKEY|wg pubkey`
CLIENT_PRIVKEY=`wg genkey`
CLIENT_PUBKEY=`echo $CLIENT_PRIVKEY|wg pubkey`

echo "server.privkey=$SERVER_PRIVKEY" > $OUTFILE
echo "server.pubkey=$SERVER_PUBKEY" >> $OUTFILE
echo "client.privkey=$CLIENT_PRIVKEY" >> $OUTFILE
echo "client.pubkey=$CLIENT_PUBKEY" >> $OUTFILE
