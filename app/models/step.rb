class Step < ActiveRecord::Base
  attr_accessible :date, :hour, :title, :description
  belongs_to :selection
end
