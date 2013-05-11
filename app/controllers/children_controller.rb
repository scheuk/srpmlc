class ChildrenController < ApplicationController
  before_filter :load
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @site_records }
    end
  end

  def create
    @child = @site.children.new(params[:child])
    @child.user = current_user

    respond_to do |format|
      if @child.save
        format.html { redirect_to [@site, @child], notice: 'Child record was successfully created.' }
        format.json { render json: @child, status: :created, location: @child }
      else
        format.html { render action: "new" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  def new
  end

  def destroy
  end

  def show
  end

  def edit
    @child = @site.children.find(params[:id])
  end

  def load
    @site = Site.find(params[:site_id])
    @children = @site.children.all
    @child = @site.children.new
    @attendance_records = Attendance.thisweek.find_all_by_child_id(@children)
  end
end
