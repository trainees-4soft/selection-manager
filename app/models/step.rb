class Step < ActiveRecord::Base
  attr_accessible :date, :hour
  belongs_to :selection
end
