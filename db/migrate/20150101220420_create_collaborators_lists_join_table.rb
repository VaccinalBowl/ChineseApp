class CreateCollaboratorsListsJoinTable < ActiveRecord::Migration
  def change
    create_table :collaborators_lists, id: false do |t|
      t.integer :user_id
      t.integer :list_id
    end
  end


  
end
