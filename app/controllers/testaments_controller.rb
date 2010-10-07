class TestamentsController < ApplicationController
  # GET /testaments
  # GET /testaments.xml
  layout "application"
  
  def index
    @testaments = Testament.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"])
  end

  # GET /testaments/1
  # GET /testaments/1.xml
  def show
    @testament = Testament.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testament }
    end
  end

  # GET /testaments/new
  # GET /testaments/new.xml
  def new
    @testament = Testament.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testament }
    end
  end

  # GET /testaments/1/edit
  def edit
    @testament = Testament.find(params[:id])
  end

  # POST /testaments
  # POST /testaments.xml
  def create
    @testament = Testament.new(params[:testament])

    respond_to do |format|
      if @testament.save
        flash[:notice] = 'Testament was successfully created.'
        format.html { redirect_to(@testament) }
        format.xml  { render :xml => @testament, :status => :created, :location => @testament }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testament.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testaments/1
  # PUT /testaments/1.xml
  def update
    @testament = Testament.find(params[:id])

    respond_to do |format|
      if @testament.update_attributes(params[:testament])
        flash[:notice] = 'Testament was successfully updated.'
        format.html { redirect_to(@testament) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testament.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testaments/1
  # DELETE /testaments/1.xml
  def destroy
    @testament = Testament.find(params[:id])
    @testament.destroy

    respond_to do |format|
      format.html { redirect_to(testaments_url) }
      format.xml  { head :ok }
    end
  end
end
