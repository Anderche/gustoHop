class AddUserToProducers < ActiveRecord::Migration[6.0]
  def change
    add_reference :producers, :user, null: false, foreign_key: true
  end
end
