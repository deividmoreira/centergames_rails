class Cliente < ModelBase
  
  has_one :locacao
  
  before_save :uppercase_fields
  
end
