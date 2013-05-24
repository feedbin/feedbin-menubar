class AppDelegate

  def unreadEntries
    credentials = {
      credentials: {
        username: NSBundle.mainBundle.objectForInfoDictionaryKey('FEEDBIN_USER'), 
        password: NSBundle.mainBundle.objectForInfoDictionaryKey('FEEDBIN_PASSWORD')
      }
    }
    BW::HTTP.get('https://api.feedbin.me/v2/unread_entries.json', credentials) do |response|
      if response.ok?
        json = BW::JSON.parse(response.body.to_str)
        updateCount(json.length)
      elsif response.status_code.to_s =~ /40\d/
        # TODO show error
        puts response.inspect
      else
        # TODO show error
        puts response.inspect
      end
    end
  end

end
