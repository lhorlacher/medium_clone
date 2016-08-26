class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blogs

  has_attached_file :image, styles: { thumb: ["64x64#", :jpg] }

  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  
end
