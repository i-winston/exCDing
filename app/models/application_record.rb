class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.search(search)
  	if search
  		post.where(['content LIKE ?'], "%#{search}%")
  	else
  		post.all
  	end
  end

end
