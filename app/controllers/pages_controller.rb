class PagesController < ApplicationController
      
  def index
    @links = Link.all
    Link.order('created_at DESC').page(params[:page]).per_page(params[:per_page])
  end
  
end
