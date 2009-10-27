class EngineersController < ApplicationController
  
  before_filter :get_tags

  def get_tags
      @tags = Engineer.tag_counts
  end
  
  def tag
     @engineers=Engineer.find_tagged_with( params[:id])

      flash[:notice] = "Items tagged with #{params[:id]}"
      render(:action => :index)
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
 #   @engineer.project_assignments.each do |pa|
 #     puts "Adding project to pa #{pa.name}"
 #     pa.project = Project.find_by_name(pa.name)
 #   end

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
