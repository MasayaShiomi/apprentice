class ApplicationController < ActionController::API
  def ping
    render json: { status: "success" }, status: :ok
  end
end
