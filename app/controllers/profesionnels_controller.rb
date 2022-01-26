class ProfesionnelsController < ApplicationController
  def index
    @profesionnels = Profesionnel.all
  end

  def show
    @profesionnel = Profesionnel.find(params[:id])
  end

  def new
    @profesionnel = Profesionnel.new
  end

  def create
    @profesionnel = Profesionnel.new(pro_params)
    if @profesionnel.save
      redirect_to profesionnels_path
    else
      render 'new'
    end
  end

  def edit
    @profesionnel = Profesionnel.find(params[:id])
  end

  def update
    @profesionnel = Profesionnel.find(params[:id])
    @profesionnel = Profesionnel.update(pro_params)
    redirect_to profesionnel_path(profesionnel)
  end

  def destroy
    @profesionnel = Profesionnel.find(params[:id])
    @profesionnel.destroy
    redirect_to profesionnels_path
  end

  private

  def pro_params
    params.require(:profesionnel).permit(:name, :adress, :category, :tarif)
  end
end
