class Book < ActiveRecord::Base
  searchkick word_start: [ :title, :author, :summary, ],
             highlight:  [ :title, :author, :summary, ]

 def search
   { title: title,
     author: author,
     summary: summary,
   }
 end

  mount_uploader :product_image, ProductImageUploader

  belongs_to :user
  has_many :reviews
end
