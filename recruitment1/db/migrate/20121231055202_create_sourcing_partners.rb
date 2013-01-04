class CreateSourcingPartners < ActiveRecord::Migration
  def change
    create_table :sourcing_partners do |t|
      t.string :name
      t.text :introduction

      t.timestamps
    end
  end
end
