class Search < ActiveRecord::Base
  def verses
    @verses ||= find_verses
  end

  private

  def find_verses
    Verse.find(:all, :conditions => conditions)
  end
  def verse_conditions
    ["verses.verse LIKE ?", "%#{verse}%"] unless verse.blank?
  end

  def testament_conditions
    ["verses.testament_id = ?", testament_id] unless testament_id.blank?
  end

  def book_conditions
    ["verses.book_id = ?", book_id] unless book_id.blank?
  end

  def passage_conditions
    ["verses.passage.id = ?", passage_id] unless passage_id.blank?
  end

  def chapter_conditions
    ["verses.chapter = ?", chapter] unless chapter.blank?
  end
  
  def verse_ft_conditions
    ["verses.verse_ft = ?", verse_ft] unless verse_ft.blank?
  end
  
  def verse_lt_conditions
    ["verses.verse_lt = ?", verse_lt] unless verse_lt.blank?
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
