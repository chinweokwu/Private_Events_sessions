# :nodoc:
class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user
      log_in user
      respond_to do |format|
        format.html { redirect_to events_url, notice: 'Successful Sign In' }
        format.json { head :no_content }
      end
    else
      flash.now[:danger] = 'Invalid email/username combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
