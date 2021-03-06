class Selection < ActiveRecord::Base
  attr_accessible :description, :title, :entries_end_date, :enterprise_id
  has_many :steps, :dependent => :restrict 
  #aqui estou dizendo que seleçao pode ter muitos etapas, 
  #mas que se existir alguma etapa com um seleção, essa seleção nao pode ser deletada(:dependent => :restrict).
  has_many :candidates
  belongs_to :enterprise #Cada seleção pertence a uma empresa.
  validates_presence_of :enterprise_id

end
