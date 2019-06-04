# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Find your credentials at twilio.com/console
api_key_sid = 'SKXXXX'
api_key_secret = 'your_api_key_secret'

@client = Twilio::REST::Client.new(api_key_sid, api_key_secret)

subscribe_tracks = @client.video.rooms('RMXXXX').participant('PAXXXX')
    .subscribe_rules.list()

subscribe_tracks.each do |subscribed_track|
  puts "Read subscribed track with sid = " + subscribed_track.sid
end
