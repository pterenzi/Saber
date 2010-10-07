class Passage < ActiveRecord::Base
  belongs_to :testament, :foreign_key => "testament_id"
  belongs_to :book, :foreign_key => "book_id"
  has_many :verse
 
  def self.search(search, passage, page)
      paginate  :per_page => 50, :page => page,
                :order => 'id'
  end

named_scope :ref2, :conditions=>["referencia_2 IS NOT NULL"]
  
end
