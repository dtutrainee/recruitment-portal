class Candidate < ActiveRecord::Base
  attr_accessible :dateofinterview, :interviewers, :name, :role, :round, :sourcingpartner, :technology, :cv
  has_attached_file :cv,
                    :url  => "/assets/products/:id/original/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/original/:basename.:extension"

  validates_attachment_content_type :cv,
      :content_type => [ 'application/pdf','application/msword'],
      :message => "only pdf and word files are allowed"

    validates_presence_of :dateofinterview, :name, :role, :round, :sourcingpartner, :cv
    

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
