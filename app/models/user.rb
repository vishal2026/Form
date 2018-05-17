class User < ApplicationRecord

    include ActiveModel::Validations
	belongs_to :country, :foreign_key => :country_id
	belongs_to :city, :foreign_key => :city_id
	validates :first_name, presence: { message: "First Name Field Required." }, length: { in: 3..60 },format: { with: /\A[a-zA-Z]+\z/,
    message: "Only Letters Allowed Without Spaces." }
    validates :last_name, length: { in: 3..60 },format: { with: /\A[a-zA-Z]+\z/,
    message: "Only Letters Allowed Without Spaces." }
    validates :email, presence: { message: "Email Field Required." }, length: { in: 3..60 },format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
    message: "Only Email Format Allowed.For Ex : email@email.com." }, confirmation: true
    validates :email_confirmation, presence: true
    validates :country_id, presence: { message: "Please Select Country." }
    validates :city_id, presence: { message: "Please Select City." }
end
 