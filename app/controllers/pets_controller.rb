class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    # pets/3
    @pet = Pet.find(params[:id])
  end

  def new
    #  #<Pet id: nil, name: nil, category: nil, found_on: nil, location: nil, color: nil, found: false, created_at: nil, updated_at: nil>
    @pet = Pet.new
  end

  def create
    # params[:pet] = {name: "Fluffy" category: "cat".......}
    @pet = Pet.new(pet_params) #must be sanitized and white listed by app
    # save to db
    @pet.save
    redirect_to @pet
  end

  # the form receives the object with the filled in params
  # the application checks against the permitted params
  # the object is saved
  # the user is redirected to the show page

  def edit
    # to find the pet from the params (so we can edit it in the form)
    # pets/3/edit
    @pet = Pet.find(params[:id])
  end

  def update
    # find the pet that I am updating (actions can't talk)
    # update the attributes with permitted params
    # redirect to the show page
    @pet = Pet.find(params[:id])
    @pet.update(edit_pet_params)
    redirect_to @pet #pet show page

  end

  def destroy
    # first find the pet
    @pet = Pet.find(params[:id])

    # DESTROY the pet
    @pet.destroy

    # redirect to index
    redirect_to pets_path #index path for pets

  end

  private

  def pet_params
    params.require(:pet).permit(:name, :category, :found_on, :location, :color)
  end

  def edit_pet_params
    params.require(:pet).permit(:found)
  end
end
