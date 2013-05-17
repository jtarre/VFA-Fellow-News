class LinksController < ApplicationController  
  def show
    
  end
 
  def create 
     link = Link.new(params[:link])
     link.save
  end
  
  def new
     @link = Link.new
  end
  
  def edit
    
  end
  
end
