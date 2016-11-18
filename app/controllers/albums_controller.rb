class AlbumsController < ApplicationController
	
	def new 
		@album = Album.new	
	end

	def create 
		p album_params

		@album = Album.new(album_params)

		if @album.save
			redirect_to album_path(@album)
		else
			@errors = @album.errors.full_messages
			render :new
		end 

	end 

	def show
		@album = Album.find_by(id: params[:id])
	end 

	private

	def album_params
		params.require(:album).permit(:name, :private)
	end

end 