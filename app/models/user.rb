class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_many :books, dependent: :destroy
        attachment :profile_image

        validates :name, length: { minimum: 2 }
        validates :name, length: { in: 2..20 }
        validates :introduction, length: { maximum: 50 }


Refile.secret_key = '6f6c6964154a0841f24a1ba205832f712641d74af98a401740146952c19ab341463fa403c97b44f64718589ec38fc652fff929fef8dc00e3263fd9a35a6cb277'
end
