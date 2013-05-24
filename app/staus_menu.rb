class AppDelegate
  def buildStatusMenu
    @menu = NSMenu.new
    @menu.initWithTitle("Status Menu")
    @menu.addItemWithTitle("Open Feedbin", action: 'openFeedbin', keyEquivalent: '')
    @menu.addItemWithTitle("Preferences", action: 'preferencesWindow', keyEquivalent: '')
    @menu.addItemWithTitle("Quit Feedbin Notifier", action: 'terminate:', keyEquivalent: '')
  end
  
  def openFeedbin
    url = NSURL.URLWithString("https://feedbin.me/")
    NSWorkspace.sharedWorkspace.openURL(url)
  end
  
  def preferencesWindow
    @preferencesWindow = NSWindow.alloc.initWithContentRect([[240, 180], [340, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @preferencesWindow.title = "Feedbin Notifier"
    @preferencesWindow.orderFrontRegardless

    @email_address_label = NSTextField.alloc.initWithFrame(NSMakeRect(18, 320, 110, 22))
    @email_address_label.stringValue = "Email Address"
    @email_address_label.bezeled = false
    @email_address_label.drawsBackground = false
    @email_address_label.editable = false
    @email_address_label.selectable = false
    @preferencesWindow.contentView.addSubview(@email_address_label)

    @email_address = NSTextField.alloc.initWithFrame(NSMakeRect(120, 322, 200, 22))
    @email_address.stringValue = ''
    @preferencesWindow.contentView.addSubview(@email_address)

    @password_label = NSTextField.alloc.initWithFrame(NSMakeRect(18, 280, 110, 22))
    @password_label.stringValue = "Password"
    @password_label.bezeled = false
    @password_label.drawsBackground = false
    @password_label.editable = false
    @password_label.selectable = false
    @preferencesWindow.contentView.addSubview(@password_label)

    
    @password = NSTextField.alloc.initWithFrame(NSMakeRect(120, 282, 200, 22))
    @password.stringValue = ''
    @preferencesWindow.contentView.addSubview(@password)
    
    @save_button = NSButton.alloc.initWithFrame(NSMakeRect(16, 240, 82, 32))
    @save_button.title = "Save"
    @save_button.action = :"saveSettings:"
    @save_button.target = self
    @save_button.bezelStyle = NSRoundedBezelStyle
    @save_button.autoresizingMask = NSViewMinXMargin|NSViewMinYMargin
    @preferencesWindow.contentView.addSubview(@save_button)
    
    @preferencesWindow.center
  end
  
  
  def saveSettings(sender)
    # TODO Keychain integration
  end
  
end
