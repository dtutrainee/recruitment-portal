ActiveAdmin.register Candidate do

	menu :parent => "View As"
	   actions :all, :except => [:destroy, :edit, :new]
	   filter :name
	   filter :technology
	   filter :role
	   filter :round
     filter :source_partner
	   filter :date_of_interview
	   filter :interviewer
	 index do
  selectable_column
  column :name
  column :technology
  column :role
  column :round
  column :source_partner
  column :date_of_interview
  column :interviewer
  column "CV" do |candidate|
      link_to 'My CV',candidate.cv.url 
    end
  default_actions
end
end
  
