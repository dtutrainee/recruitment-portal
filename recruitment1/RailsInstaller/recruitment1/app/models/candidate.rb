class Candidate < ActiveRecord::Base
  attr_accessible :date_of_interview, :interviewer, :name, :role, :round, :source_partner, :technology, :cv
has_attached_file :cv,
                    :url  => "/assets/products/:id/original/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/original/:basename.:extension"

  validates_attachment_content_type :cv,
      :content_type => [ 'application/pdf','application/msword'],
      :message => "only pdf and word files are allowed"

    validates_presence_of :date_of_interview, :name, :role, :round, :source_partner, :cv
    validate :technology_presence, :interviewer_presence

    def technology_presence
    	errors.add(:technology, 'Please select atleast one technology') if technology.size < 2
    end

    def interviewer_presence
    	errors.add(:interviewer, 'Please select atleast one interviewer') if interviewer.size < 2
    end



def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end




end
