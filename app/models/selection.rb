class Selection < ActiveRecord::Base
  attr_accessible :description, :title, :entries_end_date
  has_many :steps, :dependent => :restrict 
  #aqui estou dizendo que seleçao pode ter muitos etapas, 
  #mas que se existir alguma etapa com um seleção, essa seleção nao pode ser deletada(:dependent => :restrict).

  belongs_to :enterprise #Cada seleção pertence a uma empresa.

end
