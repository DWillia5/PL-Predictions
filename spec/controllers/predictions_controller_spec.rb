require 'spec_helper'

describe PredictionsController do

  it "should show the predictions when get index" do
    get :index
    response.should be_success
  end

end
