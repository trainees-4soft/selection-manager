class Enterprise < ActiveRecord::Base
  attr_accessible :cnpj, :description, :email, :name, :telephone, :enterprise_id

  has_many :users
end
