class SongsController < ApplicationController

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(song_params)
	end

	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.find(params[:id])
	end

	def destloy
		@song = Song.find(params[:id])
	end

	private

	def song_params
		
	end

end
