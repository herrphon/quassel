---
title: SSH Tunneling
---

This is more of a quick howto for those who are already somewhat familiar with SSH tunneling. For more detailed information about SSH tunneling you can check your SSH client's manpage.

There are two ways to tunnel your client-core connection over SSH. You can either use static port forwarding or use a socks5 proxy. 

## Static port forwarding

Forward local port 4242 to the correct on the core machine:

 <pre>$ ssh -L 4242:localhost:4242 example.com</pre>

The same can be achieved via PuTTY by entering _4242_ as source port and _localhost:4242_ as destination in the SSH > Tunnels tab.

In the client simply connect to localhost, port 4242.

## Socks 5 proxy

Modern SSH clients like OpenSSH and PuTTY can also use dynamic port forwarding by turning itself into a socks proxy. Quassel can then set up a connection to the core using this proxy.

 <pre>$ ssh -D 1080 example.com</pre>

In PuTTY, you can select the _Dynamic_ option and then add _1080_ in the SSH > Tunnels tab.

Now the client setup is a little bit more difficult as Qt 4.5 and earlier do not support hostname forwarding so you will need to figure out the local IP address of the core because connecting to _127.0.0.1_ or _localhost_ will not work for now.

Here is an example configuration:

![SSH Tunnel]({{ site.url }}/doc/img/ssh_tunnel.png)