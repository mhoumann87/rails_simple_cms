class PagesController < ApplicationController
  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    # Instantiate a new object using form parameters
    @page = Page.new(page_params)
    # Save the object
    if @page.save
    # If save succeeds, redirect to the index action
      flash[:notice] = "Page created successfully"
      redirect_to(pages_path)
    else
    # It save fails, redisplay the form so user can fix problelms
      render("new")
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(page_params)
      flash[:notice] = "Page updated successfully"
      redirect_to(page_path(@page))
    else
      redirect_to("edit")
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Page '#{@page.name}' is deleted successfully"
    redirect_to(pages_path)
  end

  private

  def page_params
    params.require(:page).permit(:name, :subject_id, :permalink, :position, :visible)
  end
end
