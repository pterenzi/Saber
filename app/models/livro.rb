class Livro < ActiveRecord::Base
  belongs_to :testamento
  has_many :pericope
  has_many :texto
  named_scope :busca_livro, proc { |livro| { :conditions => { :livro => livro } } }
end
