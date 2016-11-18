class PicturesController < ApplicationController

	def new
		@album = Album.find_by(id: params[:album_id])
		@picture = Picture.new
	end 

	def create
		@picture = Picture.new(image: params[:image], album_id: params[:album_id])
		p params
		p "____________________"
		p @picture.image_file_name
		p "*******************"
		if @picture.save
			redirect_to album_path(Album.find_by(id: params[:album_id]))
		else
      p "something"
		end
	end 


end 