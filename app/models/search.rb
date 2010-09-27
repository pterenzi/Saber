class Search < ActiveRecord::Base
  def textos
    @textos ||= find_textos
  end

  private

  def find_textos
    Texto.find(:all, :conditions => conditions)
  end
  def texto_conditions
    ["textos.texto LIKE ?", "%#{texto}%"] unless texto.blank?
  end

  def testamento_conditions
    ["textos.testamento_id = ?", testamento_id] unless testamento_id.blank?
  end

  def livro_conditions
    ["textos.livro_id = ?", livro_id] unless livro_id.blank?
  end

  def pericope_conditions
    ["textos.pericope.id = ?", pericope_id] unless pericope_id.blank?
  end

  def capitulo_conditions
    ["textos.capitulo = ?", capitulo] unless capitulo.blank?
  end
  
  def versiculo_ini_conditions
    ["textos.versiculo_ini = ?", versiculo_ini] unless versiculo_ini.blank?
  end
  
  def versiculo_fin_conditions
    ["textos.versiculo_fin = ?", versiculo_fin] unless versiculo_fin.blank?
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
