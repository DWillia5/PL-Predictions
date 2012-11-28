require 'spec_helper'

describe Prediction do

before (:each) do

  @my_prediction = Prediction.new(team_a_name: "testaname", team_b_name: "testbname", team_a_score: 2, team_b_score: 3, match_date: Date.today)

  end

  it "should be be able to create a record of prediction with valid attributes" do

    @my_prediction.save.should == true

    Prediction.count.should == 1

  end

  it "should update a record" do

    @my_prediction.save

    @my_prediction.update_attributes(team_a_score: 1, team_b_score: 4).should == true

  end

  it "should delete a record" do

    @my_prediction.save

    Prediction.count.should == 1

    @my_prediction.destroy.should be_valid

    Prediction.count.should == 0

  end  


end
