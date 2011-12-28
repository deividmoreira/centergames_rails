class Mesa < ModelBase
  belongs_to :relogio
  belongs_to :tipo_mesa
  
  has_one :locacao
  
  validates_associated :relogio
  validates_associated :tipo_mesa
  validates_presence_of :tipo_mesa_id
  validates_presence_of :relogio_id
  
  before_save :uppercase_fields
end
