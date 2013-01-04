class Interviewer < ActiveRecord::Base
  attr_accessible :name, :role
  validates_presence_of :name, :role

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
