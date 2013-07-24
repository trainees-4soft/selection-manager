class Avaliation < ActiveRecord::Base
  belongs_to :candidate
  attr_accessible :avaliation, :step
end
