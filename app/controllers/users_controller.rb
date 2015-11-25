class UsersController < ApplicationController
  def history
  end

  def count
    @user_count = User.count
  end
end
