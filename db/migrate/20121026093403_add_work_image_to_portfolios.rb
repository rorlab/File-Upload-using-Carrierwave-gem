class AddWorkImageToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :work_image, :string
  end
end
