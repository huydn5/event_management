class RemoveSpIdFromSpeakers < ActiveRecord::Migration[5.0]
  def change
    remove_column :speakers, :sp_id, :integer
  end
end
