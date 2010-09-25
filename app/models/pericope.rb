class Pericope < ActiveRecord::Base
  belongs_to :testamento, :foreign_key => "testamento_id"
  belongs_to :livro, :foreign_key => "livro_id"
 
  def self.search(search, pericope, page)
      paginate  :per_page => 50, :page => page,
                :order => 'id'
  end

named_scope :ref2, :conditions=>["referencia_2 IS NOT NULL"]
  
end
