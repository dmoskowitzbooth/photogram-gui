class PhotosController < ApplicationController

  def index
    pall=Photo.all
    @list_of_photos = pall.order({ :created_at=> :desc })
    render({ :template => "photos_templates/index"})
end  

  def show
    the_photo=params.fetch("photo_id")
    matching_photo = Photo.where({ :id => the_photo })
    @the_photo = matching_photo.at(0)

    the_id=params.fetch("photo_id")
    matching_comment = Comment.where({ :photo => the_id })
    @the_comment = matching_photo.at(0)

    if the_photo==nil
        redirect_to("/")
    else
    render({ :template => "photos_templates/show"})
  end
end
end
