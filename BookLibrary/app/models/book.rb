class Book < ApplicationRecord
  belongs_to :author
  
  def self.length (name)
    name.length
  end

  def self.list (name)
    Book.where("CreateBooks LIKE ?", "%#{name}%").map {|data| data.CreateBooks}
  end
  
end
