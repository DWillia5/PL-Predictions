class RemoveScoresFromFixtures < ActiveRecord::Migration
  def up
    remove_column :fixtures, :team_a_score
    remove_column :fixtures, :team_b_score
  end

  def down
    add_column :fixtures, :team_a_score, :integer
    add_column :fixtures, :team_b_score, :integer
  end
end
