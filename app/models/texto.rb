class Texto < ActiveRecord::Base
  belongs_to :testamento, :foreign_key => "testamento_id"
  belongs_to :livro, :foreign_key => "livro_id"
  belongs_to :pericope, :foreign_key => "pericope_id"
  
  def self.search(search, page)
    paginate :per_page => 50, :page => page,
             :conditions => ['texto like ?', "%#{search}%"],
             :order => 'id'           
  end

end
