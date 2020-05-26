class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    # /pets/3
    @pet = Pet.find(params[:id])
  end

  def new
    # new object for the form
    @pet = Pet.new
  end

  def create
    # filled out pet form
    @pet = Pet.new(pet_params)
    # save this pet
    @pet.save
    # redirect to the home page
    redirect_to pets_path
  end

  def edit
    # http://localhost:3000/pets/5/edit
    @pet = Pet.find(params[:id])
  end

  def update
    # know which pet I am updating
    @pet = Pet.find(params[:id])
    # update the pet
    @pet.update(pet_params)
    #redirect_to show page
    redirect_to @pet
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :found_on, :species, :age)
  end
end
