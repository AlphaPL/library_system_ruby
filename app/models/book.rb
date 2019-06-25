class Book < ActiveRecord::Base
	belongs_to :user
	has_many :book_histories
  validates :title,
            :presence => {:message => "Wpisz tytuł"},
            :length => {:maximum => 100}
  validates :author,
            :presence => {:message => "Wpisz autora"},
            :length => {:maximum => 100}
  validates :description,
            :presence => {:message => "Dodaj opis"},
            :length => {:maximum => 500}
  validates :isbn,
            :presence => {:message => "Wpisz ISBN"},
            :uniqueness => true,
            :length => {:minimum => 13, :maximum => 13}
end
