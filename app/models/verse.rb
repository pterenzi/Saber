class Verse < ActiveRecord::Base
  belongs_to :testament, :foreign_key => "testament_id"
  belongs_to :book, :foreign_key => "book_id"
  belongs_to :passage, :foreign_key => "passage_id"


  def testament_name
    testament.name if testament
  end
  def testament_name=(name)
    self.testament = Testament.find_by_name(name) unless name.blank?
  end


  def book_name
    book.name if book
  end
  def book_name=(name)
    self.book = Book.find_by_name(name) unless name.blank?
  end  
  
  
  def passage_title
      passage.title if passage
  end
  def passage_title=(title)
    self.passage = Passage.find_by_title(title) unless title.blank?
  end
  
  
  
  def search(params)
      @keywords = params[:keywords]
      @testament_id = params[:testament_id]
      @book_id = params[:book_id]
      @passage_id = params[:passage_id]
      @chapter = params[:chapter]
      @verse_ft = params[:verse_ft]
      @verse_lt = params[:verse_lt]
      Verse.all(:conditions => conditions, :include=>[:testament,:book,:passage])
  end

  private

    def keyword_conditions
      ["verses.verse LIKE ?", "%#{@keywords}%"] unless @keywords.blank?
    end

    def chapter_conditions
      ["verses.chapter = ?", @chapter] unless @chapter.blank?
    end

    def verse_ft_conditions
      ["verses.verse_number >= ?", @verse_ft] unless @verse_ft.blank?
    end

    def verse_lt_conditions
       ["verses.verse_number <= ?", @verse_lt] unless @verse_lt.blank?
     end

    def testament_conditions
      ["verses.testament_id = ?", @testament_id] unless @testament_id.blank?
    end

    def book_conditions
      ["verses.book_id = ?", @book_id] unless @book_id.blank?
    end

    def conditions
      [conditions_clauses.join(' AND '), *conditions_options]
    end

    def conditions_clauses
      conditions_parts.map { |condition| condition.first }
    end

    def conditions_options
      conditions_parts.map { |condition| condition[1..-1] }.flatten
    end

    def conditions_parts
      private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
    end


end