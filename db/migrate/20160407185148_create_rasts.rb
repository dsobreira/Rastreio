class CreateRasts < ActiveRecord::Migration
  def change
    create_table :rasts do |t|
      t.string :email
      t.string :domain
      t.string :path
      t.string :page
      t.string :access

      t.timestamps null: false
    end
  end
end
