class AddReviews < ActiveRecord::Migration[5.2]
  def change
    create_table(:reviews) do |t|

      t.column(:title, :string)
      t.column(:content, :string)

      t.column(:park_id, :integer)

      t.timestamps()
    end
  end
end
