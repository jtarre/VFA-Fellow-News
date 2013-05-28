class LinksController < ApplicationController  
  
  def index
    @links = Link.paginate(page: params[:page], per_page: 20)
  end
  
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
