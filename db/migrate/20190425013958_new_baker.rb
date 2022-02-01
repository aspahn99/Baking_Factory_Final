class NewBaker < ActiveRecord::Migration[5.1]
  def up
    newB = User.new
    newB.username = "baker1"
    newB.password = "secret"
    newB.password_confirmation = "secret"
    newB.role = "baker"
    newB.save
  end
  def down
    newB = User.find_by_username "baker"
    User.delete newB
  end
end
