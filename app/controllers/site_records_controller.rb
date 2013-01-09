class SiteRecordsController < ApplicationController
  before_filter :load_site
  # GET /site_records
  # GET /site_records.json
  def index
    @site_records = @site.site_records.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @site_records }
    end
  end

  # GET /site_records/1
  # GET /site_records/1.json
  def show
    @site_record = @site.site_records.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @site_record }
    end
  end

  # GET /site_records/new
  # GET /site_records/new.json
  def new
    @site_record = @site.site_records.new
    @site_record.user = current_user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site_record }
    end
  end

  # GET /site_records/1/edit
  def edit
    @site_record = @site.site_records.find(params[:id])
  end

  # POST /site_records
  # POST /site_records.json
  def create
    @site_record = @site.site_records.new(params[:site_record])
    @site_record.user = current_user

    respond_to do |format|
      if @site_record.save
        format.html { redirect_to [@site, @site_record], notice: 'Site record was successfully created.' }
        format.json { render json: @site_record, status: :created, location: @site_record }
      else
        format.html { render action: "new" }
        format.json { render json: @site_record.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PUT /site_records/1
  # PUT /site_records/1.json
  def update
    @site_record = @site.site_records.find(params[:id])

    respond_to do |format|
      if @site_record.update_attributes(params[:site_record])
        format.html { redirect_to [@site, @site_record], notice: 'Site record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_records/1
  # DELETE /site_records/1.json
  def destroy
    @site_record = @site.site_records.find(params[:id])
    @site_record.destroy

    respond_to do |format|
      format.html { redirect_to site_site_records_path(@site) }
      format.json { head :no_content }
      format.js
    end
  end

  def load_site
    @site = Site.find(params[:site_id])
  end
end
