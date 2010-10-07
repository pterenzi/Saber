class PassagesController < ApplicationController
  # GET /passages
  # GET /passages.xml
  layout "application"
  
  def index
    @passages = Passage.find(:all, :conditions => ['title LIKE ?', "%#{params[:search]}%"])
  end

  # GET /passages/1
  # GET /passages/1.xml
  def show
    @passage = Passage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @passage }
    end
  end

  # GET /passages/new
  # GET /passages/new.xml
  def new
    @passage = Passage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @passage }
    end
  end

  # GET /passages/1/edit
  def edit
    @passage = Passage.find(params[:id])
  end

  # POST /passages
  # POST /passages.xml
  def create
    @passage = Passage.new(params[:passage])

    respond_to do |format|
      if @passage.save
        flash[:notice] = 'Passage was successfully created.'
        format.html { redirect_to(@passage) }
        format.xml  { render :xml => @passage, :status => :created, :location => @passage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @passage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /passages/1
  # PUT /passages/1.xml
  def update
    @passage = Passage.find(params[:id])

    respond_to do |format|
      if @passage.update_attributes(params[:passage])
        flash[:notice] = 'Passage was successfully updated.'
        format.html { redirect_to(@passage) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @passage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /passages/1
  # DELETE /passages/1.xml
  def destroy
    @passage = Passage.find(params[:id])
    @passage.destroy

    respond_to do |format|
      format.html { redirect_to(passages_url) }
      format.xml  { head :ok }
    end
  end
end
