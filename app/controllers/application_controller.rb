class ApplicationController < ActionController::Base
    #This allows you to show error message if any.
    include Pundit::Authorization

    rescue_from Pundit::NotAuthorizedError, with: :pundishing_user

    private

    #pundishing_user can be any name you like
  def pundishing_user
    flash[:notice] = "You are not authorized to perform this action."
    redirect_to root_path
  end
end
