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
    call=Comment.where({ :photo_id => the_photo })
    @list_of_comments=call.order({ :created_at=> :desc})

    if the_photo==nil
        redirect_to("/")
    else
    render({ :template => "photos_templates/show"})
  end
end

def create
  p=Photo.new
  p.image=params.fetch("the_image")
  p.caption=params.fetch("the_caption")
  p.owner_id=params.fetch("the_owner")
  p.save

  redirect_to( "/photos/#{p.id}")
end

def destroy
  the_id = params.fetch("path_id")
  @the_photo = Photo.find(the_id)

  @the_photo.destroy

  redirect_to("/photos", { :notice => "Movie deleted successfully."})
end

end
