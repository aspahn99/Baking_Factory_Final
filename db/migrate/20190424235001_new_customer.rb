class NewCustomer < ActiveRecord::Migration[5.1]
  def up
    newC = User.new
    newC.username = "customer1"
    newC.password = "secret"
    newC.password_confirmation = "secret"
    newC.role = "customer"
    newC.save
    cNew = Customer.new
    cNew.first_name = "Susan"
    cNew.last_name = "Smith"
    cNew.email = "ss1234@gmail.com"
    cNew.phone = 1234567890
    cNew.user_id = newC.id
    cNew.active = true
    cNew.save
  end
  def down
    newC = User.find_by_username "customer1"
    User.delete newC
  end
end
