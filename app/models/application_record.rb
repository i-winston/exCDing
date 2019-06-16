class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.search(search)
    if search
      Product.where(['product LIKE ?'], "%#{search}%")
    else
      Producd.all
    end
  end
end
