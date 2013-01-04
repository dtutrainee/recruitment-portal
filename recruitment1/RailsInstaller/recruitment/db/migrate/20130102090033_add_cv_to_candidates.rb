class AddCvToCandidates < ActiveRecord::Migration
  def self.up
    change_table :candidates do |t|
      t.attachment :cv
    end
  end

  def self.down
    drop_attached_file :candidates, :avatar
  end
end
