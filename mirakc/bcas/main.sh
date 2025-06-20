rm -rf /var/run/pcscd
mkdir -p /var/run/pcscd

echo "Start pcscd"
if [ -n "$BCAS_DEBUG" ]
then
  pcscd -f --debug &
else
  pcscd -f &
fi

echo "Start a pcscd proxy on tcp 40774"
socat tcp-listen:40774,fork,reuseaddr unix-connect:/var/run/pcscd/pcscd.comm