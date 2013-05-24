class AppDelegate
  def buildStatusMenu
    @menu = NSMenu.new
    @menu.initWithTitle("Status Menu")
    @menu.addItemWithTitle("Open Feedbin", action: 'openFeedbin:', keyEquivalent: '')
    @menu.addItemWithTitle("Preferences", action: 'openPreferences:', keyEquivalent: '')
    @menu.addItemWithTitle("Quit Feedbin Notifier", action: 'terminate:', keyEquivalent: '')
  end
  
  def openFeedbin
    puts 'open'
  end
  
end
