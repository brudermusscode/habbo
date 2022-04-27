class Yuuzaa < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  validates :username, presence: true
  validates :username, format: {
    with: /\A[a-zA-Z0-9_]+\Z/,
    message: I18n.t('errors.messages.yuuzaa.username.format')
  }
  validates :username, length: { minimum: 3, maximum: 12, message: I18n.t('errors.messages.yuuza.username.length') }
end
