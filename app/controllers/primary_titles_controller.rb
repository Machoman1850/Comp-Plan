class PrimaryTitlesController < ApplicationController

	def show
    @title = PrimaryTitle.find(params[:id])
    @items = CompItem.where(primary_title: @title)
  end

end
