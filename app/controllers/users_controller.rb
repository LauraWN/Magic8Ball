class UsersController < ApplicationController
  # mms: where is this method?  So we can call it in a before_action
  before_action :authenticate_user!

  def sign_up
  end


  def sign_in
  end


end
