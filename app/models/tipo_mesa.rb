class TipoMesa < ModelBase
  has_one :mesa
  
  validates_associated :mesa
  
  validates_presence_of :tipo
  validates_uniqueness_of :tipo
  
  before_save :uppercase_fields
  
end
