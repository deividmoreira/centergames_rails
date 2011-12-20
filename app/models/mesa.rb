class Mesa < ActiveRecord::Base
  belongs_to :relogio
  belongs_to :tipo_mesa
  validates_associated :relogio
  validates_associated :tipo_mesa
  validates_presence_of :tipomesa_id
  validates_presence_of :relogio_id
end
