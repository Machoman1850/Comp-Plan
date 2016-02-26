class VisitorsController < ApplicationController

	def index
		@primary_titles = PrimaryTitle.all
	end
end
