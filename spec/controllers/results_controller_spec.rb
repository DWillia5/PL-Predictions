require 'spec_helper'

describe ResultsController do

  it "should show the results when get index" do
    get :index
    response.should be_success
  end


end
