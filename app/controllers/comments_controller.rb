class CommentsController < ApplicationController
  before_filter :authenticate_user!
  
  def create
   @comment = current_user.comments.create(params[:comment])
   if @comment.save
    redirect_to Link.find(@comment.link_id)
    else
      render :action => "links/index"
    end
end
  
  def new
    @comment = Comment.new( :parent_id => params[:parent_id])
    
  end
  
end