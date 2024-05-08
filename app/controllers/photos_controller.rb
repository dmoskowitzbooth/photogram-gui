class PhotosController < ApplicationController

  def index
    pall=Photo.all
    @list_of_photos = pall.order({ :created_at=> :desc })
    render({ :template => "photos_templates/index"})
end  

  def show
    
end
