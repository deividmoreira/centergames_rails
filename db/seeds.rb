# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rotas = Rota.create([
  {nome: 'CRATEUS', ativo: true},
  {nome: 'SERRA GRANDE', ativo: true},
  {nome: 'PORANGA', ativo: true},
  {nome: 'SEMANAL', ativo: true},
  {nome: 'QUINZENAL FORTALEZA', ativo: true},
  {nome: 'FORTALEZA ZINHO', ativo: true},
  {nome: 'RUSSAS', ativo: true},
  {nome: 'ARACOIABA', ativo: true},
  {nome: 'ITAPAJE', ativo: true},
  {nome: 'PENTECOSTE', ativo: true},
  {nome: 'CANINDE', ativo: true},
  {nome: 'PEDRA BRANCA', ativo: true},
  {nome: 'INDEPENDENCIA', ativo: true},
  {nome: 'MONSENHOR TABOSA', ativo: true},
  {nome: 'REALEJO', ativo: true},  
  {nome: 'NOVO ORIENTE', ativo: true},
  {nome: 'GALPAO', ativo: true},  
  {nome: 'URUAU', ativo: true},
  {nome: 'TERESINA', ativo: true},
  {nome: 'DESTRUIDAS', ativo: true},
  {nome: 'M. FORTALEZA', ativo: true}
  ])

tipoMesa = TipoMesa.create([
  {tipo: 'MESA PEQUENA'},
  {tipo: 'MESA MEDIA'}, 
  {tipo: 'MESA GRANDE'},
  {tipo: 'PEDRA'},
  {tipo: 'MESA'},
  {tipo: '2,20'},
  {tipo: 'MUSICAL'},
  {tipo: 'VIDEO GAME'},
  {tipo: 'NEO GEO - KOF 97'},
  {tipo: 'X-MEN VS SF'},
  {tipo: 'NEO GEO - KOF 2002'},
  {tipo: 'NEO GEO - KOF 2000'},
  {tipo: 'NEO GEO - KOF 97 PLUS'},
  {tipo: 'NEO GEO - KOF 2001'},
  {tipo: 'PLAYSTATION - FUTEBOL'},
  {tipo: 'MARVEL VS CAPCON'}
])  

cargos = Cargo.create([{nome: 'Representante'},{nome: 'Operador'}])

relogios = Relogio.create([{numero: '1'},{numero: '2'},{numero: '3'},{numero: '4'},{numero: '5'}])

valorFichas = ValorFicha.create([
  {descricao: 'CIDADE', preco: 0.25},
  {descricao: 'INTERIOR', preco: 0.2},
  {descricao: 'FORTALEZA', preco: 0.01},
  {descricao: 'MUSICAL', preco: 1}
  ])
