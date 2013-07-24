class Candidate < ActiveRecord::Base
  attr_accessible :about, :email, :facebook, :name, :telephone
  belongs_to :selection
  has_many :avaliations
end
