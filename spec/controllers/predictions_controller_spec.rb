require 'spec_helper'

describe PredictionsController do

  before(:each) do
    sign_in given_user
  end

  it "should show the predictions when get index" do
    get :index
    response.should be_success
    assigns(:predictions).should == Prediction.all
  end

  it "should get my predictions" do
    get :my_predictions
    response.should be_success
    assigns(:predictions).should == given_user.predictions
  end

  it "should get new predictions" do
    get :new
    response.should be_success
    assigns(:fixtures).should == Fixture.all
  end

  it "should be able to create a prediction" do
    post :create, {:predictions => [prediction_params]}
    response.should redirect_to root_path
    given_user.predictions.count.should == 1
  end

end
