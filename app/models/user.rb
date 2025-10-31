class User < ApplicationRecord
  has_one_attached :avatar
  has_many :comments
  validates :name, :mail, presence: true
  validates :password, presence: true, on: create
  normalizes :mail, with: ->(e) { e.strip.downcase }
  # alias_attribute :full_name, :name
  alias_attribute :f_name, :name

  after_create :afc

  private
  def afc
    puts "the user got created "
  end
end
