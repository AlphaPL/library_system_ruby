class User < ActiveRecord::Base
  has_many :books
  has_many :book_histories
  before_save { self.email = email.downcase } 
  validates :name, 
            :presence => {:message => "Wpisz imię"},
            :length => {:maximum => 255}
  validates :email,
            :presence => {:message => "Wpisz email"},
            :uniqueness => {:message => "Email już istnieje"},
            :email_format => {:message => "Email jest nie prawidłowy"},
            :length => {:maximum => 255}
  validates :address,
            :length => {:maximum => 255}
  validates :phone,
            :length => {:minimum => 9, :maximum => 9},
            :numericality => {:only_integer => true }
  has_secure_password
end
