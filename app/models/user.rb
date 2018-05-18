class User < ApplicationRecord

    include ActiveModel::Validations
	belongs_to :country
	belongs_to :city
	validates :first_name, presence: { message: "First Name Field Required." }, length: { in: 3..60 },format: { with: /\A[a-zA-Z]+\z/,
    message: "Only Letters Allowed Without Spaces." }
    validates :last_name, length: { in: 3..60 },format: { with: /\A[a-zA-Z]+\z/,
    message: "Only Letters Allowed Without Spaces." }
    validates :email, presence: { message: "Email Field Required." }, length: { in: 3..60 },format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
    message: "Only Email Format Allowed.For Ex : email@email.com." }, confirmation: true
    validates :email_confirmation, presence: { message: "Confirm Email Field Required." }
    validates :country_id, presence: { message: "Please Select Country." }
    validates :city_id, presence: { message: "Please Select City." }
    validates :city, presence: { message: "Please Select City." }
end
  