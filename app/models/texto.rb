class Texto < ActiveRecord::Base
  belongs_to :testamento, :foreign_key => "testamento_id"
  belongs_to :livro, :foreign_key => "livro_id"
  belongs_to :pericope, :foreign_key => "pericope_id"

  def search(params)
      @keywords = params[:keywords]
      @testamento_id = params[:testamento_id]
      @livro_id = params[:livro_id]
      @pericope_id = params[:pericope_id]
      @capitulo = params[:capitulo]
      @versiculo_ini = params[:versiculo_ini]
      @versiculo_fin = params[:versiculo_fin]
      Texto.all(:conditions => conditions)
  end

  private

    def keyword_conditions
      ["textos.texto LIKE ?", "%#{@keywords}%"] unless @keywords.blank?
    end

    def capitulo_conditions
      ["textos.capitulo = ?", @capitulo] unless @capitulo.blank?
    end

    def versiculo_ini_conditions
      ["textos.versiculo = ?", @versiculo_ini] unless @versiculo_ini.blank?
    end

    def versiculo_fin_conditions
       ["textos.versiculo >= ?", @versiculo_fin] unless @versiculo_fin.blank?
     end

    def testamento_conditions
      ["textos.testamento_id = ?", @testamento_id] unless @testamento_id.blank?
    end

    def livro_conditions
      ["textos.livro_id = ?", @livro_id] unless @livro_id.blank?
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