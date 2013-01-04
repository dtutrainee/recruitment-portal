ActiveAdmin.register Technology do
  menu :parent => "View As"
	   actions :all, :except => [:destroy, :edit, :new]  
end
