class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    # get the form
    @pet = Pet.new
  end

  def create
    # submit filled out form
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to @pet
  end

  def edit
    @pet = Pet.find_by(id: params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to @pet
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to root_path
  end

  private

  def pet_params
    params.require(:pet).permit(:breed, :gender, :location, :cuteness, :reward)
  end
end
