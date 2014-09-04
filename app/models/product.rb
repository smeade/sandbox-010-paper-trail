class Product < ActiveRecord::Base

  has_paper_trail

  has_many :reviews

end
