class ValorFicha < ModelBase
  
  has_one :locacao
  
  validates_presence_of :descricao
  validates_presence_of :preco
  
  before_save :uppercase_fields
end
