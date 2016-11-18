class PicturesController < ApplicationController

	def new
		@album = Album.find_by(id: params[:album_id])
		@picture = Picture.new
	end 

	def create
		@picture = Picture.new(image: params[:image], album_id: params[:album_id])
	
		if @picture.save
			redirect_to album_path(Album.find_by(id: params[:album_id]))
		else
			@errors = @picture.errors.full_messages
      render "albums/show"
		end
	end 


end 