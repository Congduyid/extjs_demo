class CreateKhaches < ActiveRecord::Migration[5.2]
  def change
    create_table :khaches do |t|
      t.string :ten
      t.integer :tuoi
      t.string :diachi

      t.timestamps
    end
  end
end
