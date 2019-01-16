require 'twitter'
  require 'dotenv'

  Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end



# ligne qui permet de tweeter sur ton compte
client.update("Aujourd'hui je reviens pour vous faire découvrir https://www.thehackingproject.org/ aka #THP ➡️ Une nouvelle façon d'apprendre à développer des apps web ")