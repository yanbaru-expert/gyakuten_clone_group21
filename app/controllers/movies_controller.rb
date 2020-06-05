class MoviesController < ApplicationController

	def index
		@movies = Movie.all.order(created_at: :asc).page(params[:page]).per(10)
	end

end
