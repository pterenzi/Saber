class PericopesController < ApplicationController
  # GET /pericopes
  # GET /pericopes.xml
  def index
    @pericopes = Pericope.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pericopes }
    end
  end

  # GET /pericopes/1
  # GET /pericopes/1.xml
  def show
    @pericope = Pericope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pericope }
    end
  end

  # GET /pericopes/new
  # GET /pericopes/new.xml
  def new
    @pericope = Pericope.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pericope }
    end
  end

  # GET /pericopes/1/edit
  def edit
    @pericope = Pericope.find(params[:id])
  end

  # POST /pericopes
  # POST /pericopes.xml
  def create
    @pericope = Pericope.new(params[:pericope])

    respond_to do |format|
      if @pericope.save
        flash[:notice] = 'Pericope was successfully created.'
        format.html { redirect_to(@pericope) }
        format.xml  { render :xml => @pericope, :status => :created, :location => @pericope }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pericope.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pericopes/1
  # PUT /pericopes/1.xml
  def update
    @pericope = Pericope.find(params[:id])

    respond_to do |format|
      if @pericope.update_attributes(params[:pericope])
        flash[:notice] = 'Pericope was successfully updated.'
        format.html { redirect_to(@pericope) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pericope.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pericopes/1
  # DELETE /pericopes/1.xml
  def destroy
    @pericope = Pericope.find(params[:id])
    @pericope.destroy

    respond_to do |format|
      format.html { redirect_to(pericopes_url) }
      format.xml  { head :ok }
    end
  end
end
