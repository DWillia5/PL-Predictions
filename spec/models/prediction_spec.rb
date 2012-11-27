require 'spec_helper'

describe Prediction do
  it "should be be able to create a record of prediction with valid attributes" do

    my_prediction = Prediction.new(team_a_name: "testaname", team_b_name: "testbname", team_a_score: 2, team_b_score: 3, match_date: Date.today)

    my_prediction.save.should == true

    Prediction.count.should == 1

  end

  it "should update a record" do

  end

end
