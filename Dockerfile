FROM busybox

ADD loremipsum.txt /loremipsum.txt
ADD start.sh /start.sh

ENTRYPOINT ["/start.sh"]
