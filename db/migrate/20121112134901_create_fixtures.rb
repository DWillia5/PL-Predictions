class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.string :team_a_name
      t.string :team_b_name
      t.integer :team_a_score
      t.integer :team_b_score
      t.date :match_date
      t.timestamps
    end
  end
end
