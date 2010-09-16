class Livro < ActiveRecord::Base
  belongs_to :testamento
  has_many :pericope
  has_many :texto
end
