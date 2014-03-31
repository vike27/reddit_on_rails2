class Comment < ActiveRecord::Base

#attr_accessible :message, :user_id, :link_id
#not available in model need to move to controler

belongs_to :user
belongs_to :link

end
