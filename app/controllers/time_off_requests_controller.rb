class TimeOffRequestsController < ApplicationController
  # GET /time_off_requests
  # GET /time_off_requests.xml
  def index
    @time_off_requests = TimeOffRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @time_off_requests }
    end
  end

  # GET /time_off_requests/1
  # GET /time_off_requests/1.xml
  def show
    @time_off_request = TimeOffRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @time_off_request }
    end
  end

  # GET /time_off_requests/new
  # GET /time_off_requests/new.xml
  def new
    @time_off_request = TimeOffRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @time_off_request }
    end
  end

  # GET /time_off_requests/1/edit
  def edit
    @time_off_request = TimeOffRequest.find(params[:id])
  end

  # POST /time_off_requests
  # POST /time_off_requests.xml
  def create
    @time_off_request = TimeOffRequest.new(params[:time_off_request])

    respond_to do |format|
      if @time_off_request.save
        flash[:notice] = 'TimeOffRequest was successfully created.'
        format.html { redirect_to(@time_off_request) }
        format.xml  { render :xml => @time_off_request, :status => :created, :location => @time_off_request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @time_off_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /time_off_requests/1
  # PUT /time_off_requests/1.xml
  def update
    @time_off_request = TimeOffRequest.find(params[:id])

    respond_to do |format|
      if @time_off_request.update_attributes(params[:time_off_request])
        flash[:notice] = 'TimeOffRequest was successfully updated.'
        format.html { redirect_to(@time_off_request) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @time_off_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /time_off_requests/1
  # DELETE /time_off_requests/1.xml
  def destroy
    @time_off_request = TimeOffRequest.find(params[:id])
    @time_off_request.destroy

    respond_to do |format|
      format.html { redirect_to(time_off_requests_url) }
      format.xml  { head :ok }
    end
  end
end
