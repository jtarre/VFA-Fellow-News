class Comment < ActiveRecord::Base
  has_ancestry
    
  attr_accessible :link_id, :message, :user_id
  
  belongs_to :user
 
  
  
end
