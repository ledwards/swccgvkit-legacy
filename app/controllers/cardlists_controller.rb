class CardlistsController < ApplicationController
  
  before_filter :admin_only
  
  # GET /cardlists
  # GET /cardlists.xml
  def index
    @cardlists = Cardlist.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cardlists }
    end
  end

  # GET /cardlists/1
  # GET /cardlists/1.xml
  # GET /cardlists/1.pdf
  def show
    @cardlist = Cardlist.find(params[:id])
    @prawnto_options[:prawn] = {:page_size => session[:page_size] }

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cardlist }
      format.pdf { render :layout => false }
      
    end
  end

  # GET /cardlists/new
  # GET /cardlists/new.xml
  def new
    @cardlist = Cardlist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cardlist }
    end
  end

  # GET /cardlists/1/edit
  def edit
    @cardlist = Cardlist.find(params[:id])
  end

  # POST /cardlists
  # POST /cardlists.xml
  def create
    @cardlist = Cardlist.new(params[:cardlist])

    respond_to do |format|
      if @cardlist.save
        flash[:notice] = 'Cardlist was successfully created.'
        format.html { redirect_to(@cardlist) }
        format.xml  { render :xml => @cardlist, :status => :created, :location => @cardlist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cardlist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cardlists/1
  # PUT /cardlists/1.xml
  def update
    @cardlist = Cardlist.find(params[:id])

    respond_to do |format|
      if @cardlist.update_attributes(params[:cardlist])
        flash[:notice] = 'Cardlist was successfully updated.'
        format.html { redirect_to(@cardlist) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cardlist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cardlists/1
  # DELETE /cardlists/1.xml
  def destroy
    @cardlist = Cardlist.find(params[:id])
    @cardlist.destroy

    respond_to do |format|
      format.html { redirect_to(cardlists_url) }
      format.xml  { head :ok }
    end
  end
  
  def getpdf
        @paper='A4'
  end
end
