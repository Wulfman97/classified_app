class CreateAdds < ActiveRecord::Migration
  def change
    create_table :adds do |t|
      t.string :title
      t.string :author
      t.text :body
      t.text :contact

      t.timestamps null: false
    end
  end
end
