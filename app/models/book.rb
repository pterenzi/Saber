class Book < ActiveRecord::Base
  belongs_to :testament
  has_many :passage
  has_many :verse
  named_scope :busca_book, proc { |book| { :conditions => { :book => book } } }
end
