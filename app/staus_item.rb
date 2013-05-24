class AppDelegate
  def buildStatusItem
    @statusItem = NSStatusBar.systemStatusBar.statusItemWithLength(NSVariableStatusItemLength)
    @statusItem.title = ""
    @statusItem.menu = @menu
    @statusItem.highlightMode = true
    @statusItem.image = NSImage.imageNamed("icon.png")
    @statusItem.alternateImage = NSImage.imageNamed("icon-highlight.png")
  end
  
  
  def updateCount(count)
    if count == 0
      @statusItem.title = "0"
    elsif count >= 1_000
      @statusItem.title = "1,000+"
    else
      @statusItem.title = count.to_s
    end
  end
  
end
