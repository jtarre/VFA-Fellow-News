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
        @link    = link
        @comment = Comment.new
        redirect_to link
       #redirect_to :action => "index"
      #format.html { redirect_to :action => 'show', :id => params[:id], :notice => 'link was successfully saved.' }
       
     else
       render :action => "index"
     end
  end
  
  def new
     @link = Link.new
  end
  
  def edit
    
  end
  
end
