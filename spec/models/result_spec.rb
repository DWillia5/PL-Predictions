require 'spec_helper'

describe Result do

  before (:each) do

    #This is creating a variable of a new Result Model Instance
    @my_result = Result.new(team_a_name: "testaname", team_b_name: "testbname", team_a_score: 2, team_b_score: 3, match_date: Date.today)

  end
  
  it "should be be able to create a record of result with valid attributes" do
    
    #This is trying to save the instance to the MySQL Db table Result.
    @my_result.save.should == true

    #This is making sure that the MySql DB Result table has one entry.
    Result.count.should == 1

  end

  ##TO DO - Create tests to check for updating a record and deleting a record.
  it "should update a record" do

    @my_result.save

    @my_result.update_attributes(team_a_name: "testateam", team_b_name: "testbteam").should == true

    # Find a way to create a record and assign it to a variable.
    # Update the attributes of the variable
    # check the record has been updated with the new attributes.

  end

  it "should delete a record" do

    @my_result.save

    Result.count.should == 1

    @my_result.destroy.should be_valid

    Result.count.should == 0


  end


end
