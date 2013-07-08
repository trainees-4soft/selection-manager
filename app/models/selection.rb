class Selection < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :steps, :dependent => :restrict 
  #aqui estou dizendo que seleçao pode ter muitos etapas, 
  #mas que se existir alguma etapa com um seleção, essa seleção nao pode ser deletada(:dependent => :restrict).
end
