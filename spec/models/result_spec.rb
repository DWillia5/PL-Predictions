require 'spec_helper'

describe Result do
  
  it "should be be able to create a record of result with valid attributes" do
    my_result = Result.new(team_a_name: "testaname", team_b_name: "testbname", team_a_score: 2, team_b_score: 3, match_date: Date.today)
    my_result.save.should == true
    Result.count.should == 1
  end

  ##TO DO - Create tests to check for updating a record and deleting a record.

end
