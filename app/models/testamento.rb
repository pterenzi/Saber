class Testamento < ActiveRecord::Base
  has_many :livros
  has_many :pericopes
  has_many :textos
end
