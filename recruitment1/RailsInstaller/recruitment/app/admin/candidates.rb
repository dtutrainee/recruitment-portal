ActiveAdmin.register Candidate do

	menu :parent => "View As"
	   actions :all, :except => [:destroy, :edit, :new]
	   filter :name
	   filter :technology
	   filter :role
	   filter :round
	   filter :sourcingpartner
	   filter :dateofinterview
	   filter :interviewers
	 index do
  selectable_column
  column :name
  column :technology
  column :role
  column :round
  column :sourcingpartner
  column :dateofinterview
  column :interviewers
  column "CV" do |candidate|
      link_to 'CV',candidate.cv.url 
    end
  default_actions
end
end
  


