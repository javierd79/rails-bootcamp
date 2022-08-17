class ApplicationController < ActionController::API
  def index 
    render json: { message: "Hola"}
  end
end
