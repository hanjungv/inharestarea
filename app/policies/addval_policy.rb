class AddvalPolicy < ApplicationPolicy
  def admin?
    isadmin:"admin"
  end
end
