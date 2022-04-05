class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, except: [:created_at, :updated_at]
    # we could do this as well 
    # render json: cheeses, only: [:id, :name, :price, :is_best_seller]
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end

  # we can include the summary from our instance method in the JSON response as well. 
  # it would look like this 
  # def show
  #   cheese = Cheese.find_by(id: params[:id])
  #   render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
  # end

end
