class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :zip_code

      t.timestamps
    end
  end
end

class RemoveSpecialtyFromDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :specialty, :string
  end
end
