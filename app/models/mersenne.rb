class Mersenne < ApplicationRecord
    include ActiveModel::Serializers::Xml
    include ActiveModel::Model
    include ActiveModel::Validations
    include PagesHelper


    attr_accessor :number
    validates :number, presence: { message: 'не может быть пустым' }, comparison: { greater_than: 0}
    self.primary_key = :number
end