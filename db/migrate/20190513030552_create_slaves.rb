class CreateSlaves < ActiveRecord::Migration[5.2]
  def change
    create_table :slaves do |t|
      t.text :name
      t.boolean :fill_murray, default:false
      t.boolean :place_cage, default:false
      t.boolean :custom_header, default:false
      t.text :custom_header

      t.timestamps
    end
  end
end
