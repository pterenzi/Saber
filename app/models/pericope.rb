class Pericope < ActiveRecord::Base
  belongs_to :testamento, :foreign_key => "testamento_id"
  belongs_to :livro, :foreign_key => "livro_id"

end
