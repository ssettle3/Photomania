class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :phone
      t.string :website
      t.json :company, default: { name: "", catchPhrase: "", bs: "" }
      t.json :address, default: { street: "", suite: "", city: "", zipcode: "", phone: "", website: "" }
    end
  end
end
