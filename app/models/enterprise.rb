class Enterprise < ActiveRecord::Base
  attr_accessible :cnpj, :description, :email, :name, :telephone
  has_many :user
  has_many :selection
end
