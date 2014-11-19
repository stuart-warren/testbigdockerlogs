Test Big Docker Logs
====================

Get started:
------------

``docker build -t testbigdockerlogs .``

On CoreOS:
----------

``fleetctl start testbigdockerlogs.service``

Check for issues:
-----------------

``docker logs`` shows the full message
``fleetctl journal`` chops messages into 2048 chunks
``journalctl -u testbigdockerlogs.service`` chops messages into 2048 chunks

See this:
---------

https://github.com/stuart-warren/bigjournallogs

Using the github.com/coreos/go-systemd/journal golang library shows that the journal can handle large log lines.
