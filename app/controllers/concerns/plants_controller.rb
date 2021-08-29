class PlantsController < ApplicationController
 def index 
  plats=Plant.all 
  render json: plats
 end

 def show
  plant=Plant.find(params[:id])
  render json: plant
 end

 def create
   newPlant=Plant.create(user_params)
   render json: newPlant, status: 201 
 end

 private

 def user_params
    params.permit(:name, :image, :price)
 end
end