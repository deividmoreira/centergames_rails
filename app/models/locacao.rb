class Locacao < ModelBase
  belongs_to :cliente
  belongs_to :funcionario
  belongs_to :mesa
  belongs_to :valor_ficha
  
  before_save :uppercase_fields
end
