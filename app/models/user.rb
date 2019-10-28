class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
enum capacity: {5se: 0, 10se: 1, 15se: 2, 20se: 3, 25se: 4 }
enum event_status: {lend: 0, resereved: 1}
enum lending_time_start: {}
enum lending_time_end: {}
enum business_hour_start: {}
enum business_hour_end: {}
end
