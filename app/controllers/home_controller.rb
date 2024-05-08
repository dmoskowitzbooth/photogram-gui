class HomeController < ApplicationController

  def homepage
    matching_users=User.all
    @list_of_users = matching_users.order({ :created_at => :desc })
    render({:template => "home"})

end  
end
