class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :user_id, :default => nil
      t.string :team_a_name
      t.string :team_b_name
      t.integer :team_a_score
      t.integer :team_b_score
      t.date :match_date
      t.timestamps
    end
  end
end
