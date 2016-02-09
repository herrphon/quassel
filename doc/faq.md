---
title: FAQ
---


## How do I add accounts to my Quassel Core?

Check out the article on [[Manage_Core_Users|how to manage core users]]

## Where can I configure the autojoin list?

There is no list as such. Quassel will automatically rejoin the channels you were in at the time you shut Quassel down.

## Why isn't Quassel using "Launchpad"?

At the time being [Launchpad](https://www.launchpad.net) doesn't support [git](http://gitorious.org/quassel).

## I lost my menu, how can I make it reappear?

Press ``` ctrl + m ``` and it should reappear. For other toolbars, you can display them from the submenu entitled "View"

## How do I ignore CTCP requests?

Versions 0.5.2 and newer offer a "CTCP" type in the ignorelist settingspage.
If selected, the rule is parsed as follows:

``` hostmask [CTCPCMD [CTCPCMD ...]] ```

For example "* VERSION PING" would ignore VERSION and PING requests for any hostmask.
If no CTCPCMD is given, all requests are ignored.

Only global- and per network scope are supported.
Since CTCP is ignored on the coreside, "Strictness" is always permanent.

CTCP ignore is patched into quassel 0.5.0-0ubuntu1.1 for Ubuntu Karmic users.

## Why does clicking on the systray icon take me to some strange buffer called something like "bartol.freenode.net"?

This is a known bug that needs to be fixed. But there is a workaround (Requires Quassel 0.6.0+).

First some background:
Quassel allows to show notices sent from a specific IRC server in separate buffers. This behavior is controlled by the setting "Message Redirection -> Server Notices". The default setting is here to show them in the "Status Window". Until recently quasselcore would still create a buffer called "bartol.freenode.net" and store the messages in that buffer. When the client receives such a message it redirects them to the Status Window and the buffer "bartol.freenode.net" would be hidden from all "Chat Lists". The highlighting / notification processing still triggers the activity for the original "bartol.freenode.net" though.

The Solution:
Enable "Message Redirection -> Server Notices -> default target". This will make those "ghost buffers" visible and you can delete them. After that disable the setting again, so that Server Notices are only displayed in the "Status Window". Since Quassel 0.6.0 Quassel will not recreate the buffer unless you have "Message Redirection -> Server Notices -> default target" enabled.
