class Prediction < ActiveRecord::Base
  belongs_to :user
  attr_accessible :team_a_name, :team_b_name, :team_a_score, :team_b_score, :match_date 
end
