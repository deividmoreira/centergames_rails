class Relogio < ModelBase
  has_one :mesa
  
  validates_presence_of :numero
  validates_uniqueness_of :numero
  
  before_save :uppercase_fields
  
end
