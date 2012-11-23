require 'spec_helper'

describe LeaderboardsController do

 ## example of rspec test
  it "should show the leaderboard when get index" do
    get :index
    response.should be_success
  end

end
