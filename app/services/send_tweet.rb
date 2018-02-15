class SendTweet

  def initialize(tweet)
    @tweet = tweet
  end

  def perform
    #log_in_to_twitter.update(@tweet)
    return TWITTER_ACCESS_TOKEN_SECRET
  end

  def log_in_to_twitter
=begin
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = TWITTER_API_KEY
      config.consumer_secret     = TWITTER_API_SECRET
      config.access_token        = TWITTER_ACCESS_TOKEN
      config.access_token_secret = TWITTER_ACCESS_TOKEN_SECRET
    end
    client
=end

  end

  def send_twitter(id)
    client.update("@#{id} #{@tweet}")
  end
end
