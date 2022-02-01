class NewShipper < ActiveRecord::Migration[5.1]
  def up
    newS = User.new
    newS.username = "shipper1"
    newS.password = "secret"
    newS.password_confirmation = "secret"
    newS.role = "shipper"
    newS.save
  end
  def down
    newS = User.find_by_username "shipper1"
    User.delete newS
  end
end
