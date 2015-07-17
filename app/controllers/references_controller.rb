class ReferencesController < ApplicationController
  def index
    @references = Reference.all
  end

  def show
    @references = Reference.find(params[:id])
  end

  def new
    @reference = Reference.new
  end

  def create
    @reference = Reference.new(reference_params)
    if @reference.save
      redirect_to references_path
    else
      render :new
    end
end

  def edit
    @reference = Reference.find(params[:id])
  end

  def update
    @reference = Reference.find(params[:id])
    if @reference.update(reference_params)
      redirect_to references_path
    else
      render :edit
    end
  end

  def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy
    redirect_to references_path
  end



  private
  def reference_params
    params.require(:reference).permit(:name, :phone)
  end
end
