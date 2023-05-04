class AddSpecialtyToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :specialty, null: false, default: 0, foreign_key: true
  end
end
