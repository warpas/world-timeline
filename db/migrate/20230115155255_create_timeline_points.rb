class CreateTimelinePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :timeline_points do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
