---
title: Autostart Core on Mac
---

The best way to autostart a script on Mac, is to use the default autostart deamon: *launchd*

First you need to make a property list file (plist), which launchd can load.

Here's an example plist (by e-jat)

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>com.quasselcore.daemon</string>
	<key>ProgramArguments</key>
	<array>
		<string>/Applications/Quassel/quasselcore</string>
	</array>
	<key>RunAtLoad</key>
	<true/>
	<key>WorkingDirectory</key>
	<string>/Applications/Quassel</string>
</dict>
</plist>
{% endhighlight %}


Save this file in ~/Library/LaunchAgents/org.quassel-irg.quasselcore.plist, then go into Terminal and, in your home directory, run:
{% highlight bash %}
launchctl load Library/LaunchAgents/org.quassel-irg.quasselcore.plist
{% endhighlight %}

quasselcore should now run and start automatically at boot.