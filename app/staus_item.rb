class AppDelegate
  def buildStatusItem
    @statusItem = NSStatusBar.systemStatusBar.statusItemWithLength(NSVariableStatusItemLength)
    @statusItem.title = "Feedbin"
    @statusItem.menu = @menu
    @statusItem.highlightMode = true
    @statusItem.image = NSImage.imageNamed("icon.png")
    @statusItem.alternateImage = NSImage.imageNamed("icon-highlight.png")
  end
end
