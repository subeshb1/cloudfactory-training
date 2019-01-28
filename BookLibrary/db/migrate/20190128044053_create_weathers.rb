class CreateWeathers < ActiveRecord::Migration[5.2]
  def change
    create_table :weathers do |t|
      t.float :temp1
      t.float :temp2
      t.float :average
      t.timestamps
    end
  end
end
