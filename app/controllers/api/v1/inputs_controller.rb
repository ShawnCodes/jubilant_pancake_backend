class Api::V1::InputsController < ApplicationController
  before_action :find_input, only: [:update]
  def index
    @inputs = Input.all
    render json: @inputs
  end

  def create
@input = Input.new
@input.input1 = params[:input1]
@input.input2 = params[:input2]
  end

  def update
    @input.update(input_params)
    if @input.save
      render json: @input
    else
      render json: { errors: @input.errors.full_messages }
    end
  end

  private

  def input_params
    params.permit(:title, :content)
  end

  def find_input
    params.require(:input).permit(:input1, :input2, :result)
  end
