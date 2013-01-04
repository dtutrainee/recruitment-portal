class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :technology
      t.string :source_partner
      t.string :role
      t.string :round
      t.datetime :date_of_interview
      t.string :interviewer

      t.timestamps
    end
  end
end
