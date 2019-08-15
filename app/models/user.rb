# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :from_points, class_name: 'Point', foreign_key: 'from_id'
  has_many :to_points, class_name: 'Point', foreign_key: 'to_id'
  has_one :user_point
end
