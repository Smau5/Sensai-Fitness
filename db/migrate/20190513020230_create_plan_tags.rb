class CreatePlanTags < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_tags do |t|
      t.integer :tag_id
      t.integer :plan_id
      t.timestamps
    end
  end
end
