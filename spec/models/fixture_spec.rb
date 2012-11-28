require 'spec_helper'

describe Fixture do

before (:each) do

  @my_fixture = Fixture.new(team_a_name: "testaname", team_b_name: "testbname", match_date: Date.today)

  end

  it "should be be able to create a record of fixtures with valid attributes" do

    @my_fixture.save.should == true

    Fixture.count.should == 1

  end

  it "should update a record" do

    @my_fixture.save

    @my_fixture.update_attributes(team_a_name: "testateam", team_b_name: "testbteam").should == true

  end

  it "should delete a record" do

    @my_fixture.save

    Fixture.count.should == 1

    @my_fixture.destroy.should be_valid

    Fixture.count.should == 0


  end


end
