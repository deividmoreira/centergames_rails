class Funcionario < ModelBase
  belongs_to :rota
  belongs_to :cargo
  
  has_one :locacao
  
  validates_associated :rota
  validates_associated :cargo
  
  validates_presence_of :rota
  validates_presence_of :cargo
  
  validates_uniqueness_of :cpf
  
  before_save :uppercase_fields
end
