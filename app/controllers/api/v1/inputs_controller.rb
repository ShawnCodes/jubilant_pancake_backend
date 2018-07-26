class Api::V1::InputsController < ApplicationController
  before_action :find_input, only: [:update]
  def index
    @inputs = Input.all
    render json: @inputs
  end

  def update
    @input.update(input_params)
    if @input.save
      render json: @input, status: :accepted
    else
      render json: { errors: @input.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def input_params
    params.permit(:title, :content)
  end

  def find_input
    @input = Input.find(params[:id])
  end
end
