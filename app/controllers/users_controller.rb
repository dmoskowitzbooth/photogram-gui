class UsersController < ApplicationController

  def homepage
    matching_users=User.all
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index"})
end  

def show
  the_user=params.fetch("username")
  matching_user = User.where({ :username => the_user })
  @the_user = matching_user.at(0)

  if the_user==nil
      redirect_to("/")
  else
  render({ :template => "user_templates/show"})
end
end

def create
  u=User.new
  u.username=params.fetch("the_username")

  redirect_to({ :template => "user_templates/show"})
end
end
