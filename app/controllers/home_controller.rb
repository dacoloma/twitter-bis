class HomeController < ApplicationController

def home
end
  def tweet
    SendTweet.new(params[:tweet][:message]).perform
  end

end
