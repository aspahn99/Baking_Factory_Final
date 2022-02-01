class NewAdmin < ActiveRecord::Migration[5.1]
  def up
    newA = User.new
    newA.username = "admin"
    newA.password = "secret"
    newA.password_confirmation = "secret"
    newA.role = "admin"
    newA.save
  end
  def down
    newA = User.find_by_username "admin"
    User.delete newA
  end
end
