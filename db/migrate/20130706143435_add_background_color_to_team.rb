class AddBackgroundColorToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :background_color, :string
  end
end
