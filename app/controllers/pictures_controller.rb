class PicturesController < ApplicationController

	def new
		@album = Album.find_by(id: params[:album_id])
		@picture = Picture.new
	end 

	def create
		@picture = Picture.new(picture_params)
		p params
		p "____________________"
	end 

	private

	def picture_params
		params.require(:picture).permit(:image, :album_id) 
	end 

end 