class ReferencesController < ApplicationController
  def index
    @references = Reference.all
    @reference = Reference.new
  end

  def show
    @reference = Reference.find(params[:id])
  end

  def new
    @reference = Reference.new
  end

  def create
    @reference = Reference.new(reference_params)
      respond_to do |format|
    if @reference.save
        format.html {redirect_to references_path}
        format.js
    else
      render :new
      end
    end
end

  def edit
    @reference = Reference.find(params[:id])
  end

  def update
    @reference = Reference.find(params[:id])
    if @reference.update(reference_params)
      respond_to do |format|
        format.html {redirect_to references_path}
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy
    respond_to do |format|
      format.html {redirect_to references_path}
      format.js
    end
  end



  private
  def reference_params
    params.require(:reference).permit(:name, :phone)
  end
end
