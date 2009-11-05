class EngineersController < ApplicationController
  in_place_edit_for :engineer, :fname
  in_place_edit_for :engineer, :lname
  
  before_filter :get_tags
  
  def search_by_lname
      @engineer = Engineer.find_by_lname( params[:engineer][:lname])
      render(:action => :show, :id => @engineer)
  end

  # Gets the tags for the tag cloud
  def get_tags
      @tags = Engineer.tag_counts
  end
  
  # A hack here to skip paging with the engineer list per tag
  def tag
     @engineers=Engineer.find_tagged_with(params[:tag])
      flash[:notice] = "Items tagged with #{params[:tag]}"
      render "/engineers/index_no_paging.html.erb", :layout => "application"
  end
  
  def get_matches
    puts "*** Executed get matches #{params[:id]}"    
    @engineer = Engineer.find(params[:id])
    render :update do |page|        
        page.replace_html 'match_div', :partial => "shared/matches_partial", :object => @engineer
        page.visual_effect :highlight, 'match_div'        
    end
  end
  
  
  # GET /engineers
  # GET /engineers.xml
  def index
    @engineers=Engineer.paginate(:per_page => 10, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.atom
      format.xml  { render :xml => @engineers }
    end
  end

  # GET /engineers/1
  # GET /engineers/1.xml
  def show
    @engineer = Engineer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render(:layout => false, :template => 'engineers/show.xml.builder') }
    end
  end

  # GET /engineers/new
  # GET /engineers/new.xml
  def new
    @engineer = Engineer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @engineer }
    end
  end

  # GET /engineers/1/edit
  def edit
    @engineer = Engineer.find(params[:id])
  end

  # POST /engineers
  # POST /engineers.xml
  def create
    @engineer = Engineer.new(params[:engineer])

    respond_to do |format|
      if @engineer.save
       
        # TODO - Make sure to check for an empty resource here !
        @resource = Resource.new(params[:resource])
        @resource.engineer = @engineer
        @resource.save!
        
        flash[:notice] = 'Engineer was successfully created.'
        format.html { redirect_to(@engineer) }
        format.xml  { render :xml => @engineer, :status => :created, :location => @engineer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @engineer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /engineers/1
  # PUT /engineers/1.xml
  def update
    @engineer = Engineer.find(params[:id])

    respond_to do |format|
      if @engineer.update_attributes(params[:engineer])
        
        @resource = Resource.new(params[:resource])
        @resource.engineer = @engineer
        @resource.save!
        
        flash[:notice] = 'Engineer was successfully updated.'
        format.html { redirect_to(@engineer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @engineer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /engineers/1
  # DELETE /engineers/1.xml
  def destroy
    @engineer = Engineer.find(params[:id])
    @engineer.destroy

    respond_to do |format|
      format.html { redirect_to(engineers_url) }
      format.xml  { head :ok }
    end
  end
end
