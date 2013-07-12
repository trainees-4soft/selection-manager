class Step < ActiveRecord::Base
  attr_accessible :date, :hour, :title, :description, :attach
  belongs_to :selection
  has_attached_file :pic, :styles => 
        { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :attach
end
