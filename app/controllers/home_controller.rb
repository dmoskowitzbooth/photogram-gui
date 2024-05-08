class HomeController < ApplicationController

  def homepage
    render({:template => "home"})

end  
end
