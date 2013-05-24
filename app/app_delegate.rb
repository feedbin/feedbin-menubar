class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildStatusMenu
    buildStatusItem
    unreadEntries
    unreadCheckInterval
  end
  
  def unreadCheckInterval
    EM.add_periodic_timer 120.0 do
      unreadEntries
    end
  end
end
