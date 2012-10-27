class Portfolio < ActiveRecord::Base

  attr_accessible :artist, :description, :title, :work_image, :remote_work_image_url, :remove_work_image
  mount_uploader :work_image, PictureUploader

  before_destroy :remember_id
  after_destroy :remove_id_directory

  protected

  def remember_id
    @id = id
  end

  def remove_id_directory
    FileUtils.remove_dir("#{Rails.root}/public/uploads/portfolio/work_image/#{@id}", :force => true)
  end


end
