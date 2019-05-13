class AddPhotoToFitnessResource < ActiveRecord::Migration[5.2]
  def change
    add_column :fitness_resources, :photo, :string
  end
end
