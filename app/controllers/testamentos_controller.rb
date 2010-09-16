class TestamentosController < ApplicationController
  # GET /testamentos
  # GET /testamentos.xml
  def index
    @testamentos = Testamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testamentos }
    end
  end

  # GET /testamentos/1
  # GET /testamentos/1.xml
  def show
    @testamento = Testamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testamento }
    end
  end

  # GET /testamentos/new
  # GET /testamentos/new.xml
  def new
    @testamento = Testamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testamento }
    end
  end

  # GET /testamentos/1/edit
  def edit
    @testamento = Testamento.find(params[:id])
  end

  # POST /testamentos
  # POST /testamentos.xml
  def create
    @testamento = Testamento.new(params[:testamento])

    respond_to do |format|
      if @testamento.save
        flash[:notice] = 'Testamento was successfully created.'
        format.html { redirect_to(@testamento) }
        format.xml  { render :xml => @testamento, :status => :created, :location => @testamento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testamentos/1
  # PUT /testamentos/1.xml
  def update
    @testamento = Testamento.find(params[:id])

    respond_to do |format|
      if @testamento.update_attributes(params[:testamento])
        flash[:notice] = 'Testamento was successfully updated.'
        format.html { redirect_to(@testamento) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testamentos/1
  # DELETE /testamentos/1.xml
  def destroy
    @testamento = Testamento.find(params[:id])
    @testamento.destroy

    respond_to do |format|
      format.html { redirect_to(testamentos_url) }
      format.xml  { head :ok }
    end
  end
end
