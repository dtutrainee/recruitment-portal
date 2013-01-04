class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :technology
      t.string :sourcingpartner
      t.string :role
      t.string :round
      t.datetime :dateofinterview
      t.string :interviewers

      t.timestamps
    end
  end
end
