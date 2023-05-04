class CreateSpecialties < ActiveRecord::Migration[7.0]
  def change
    create_table :specialties do |t|
      t.string :specialty1
      t.string :specialty2

      t.timestamps
    end
  end
end
