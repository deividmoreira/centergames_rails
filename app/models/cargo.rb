class Cargo < ModelBase
  
  has_one :funcionario
  
  validates_presence_of :nome
  
  before_save :uppercase_fields
end
