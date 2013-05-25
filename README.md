Feedbin Notifier
================

A menu bar application that shows your Feedbin unread count. Currently checks every 2 minutes.

![Feedbin Notifier](https://dl.dropboxusercontent.com/u/16657547/feedbin_notifier.png)

Installation
------------

To build Feedbin Notifier, you will need [RubyMotion](http://www.rubymotion.com/) >= 2.0. You will also need [BubbleWrap](https://github.com/rubymotion/BubbleWrap) >= 1.3.0.

Keychain support is not yet implemented so you'll need to set your Feedbin credentials in environment variables. 

For example place the following in `~/.bash_profile`:

```bash
export FEEDBIN_USER='ben@benubois.com'
export FEEDBIN_PASSWORD='password'
```

**Please note** because of this it is unsafe to distribute the compiled binary since it will include your password.

Once all that is sorted out you should be able to run:

```bash
$ gem install bubble-wrap --version ">= 1.3.0"
$ rake
```

To do
-----

 - Keychain integration
 - Tab through preference fields
 - Authorization error handling
 - Application Icon
 - Retina menubar icon
 - Push updates