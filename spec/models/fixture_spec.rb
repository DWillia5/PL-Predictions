require 'spec_helper'

describe Fixture do
    it "should be be able to create a record of fixtures with valid attributes" do

    my_fixture = Fixture.new(team_a_name: "testaname", team_b_name: "testbname", match_date: Date.today)

    my_fixture.save.should == true

    Fixture.count.should == 1

  end

  it "should update a record" do

  end
  
end
