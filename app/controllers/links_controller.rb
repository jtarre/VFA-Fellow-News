class LinksController < ApplicationController  
  def show
     @link    = Link.find(params[:id])
     @comment = Comment.new
  end
 
  def create 
     link = Link.new(params[:link])
     if link.save
       render :action => "show"
     else
       
     end
  end
  
  def new
     @link = Link.new
  end
  
  def edit
    
  end
  
end
