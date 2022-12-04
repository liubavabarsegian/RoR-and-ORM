class Mersenne < ApplicationRecord
    # include ActiveModel::Serializers::Xml
    include ActiveModel::Model
    include ActiveModel::Validations
    include PagesHelper

    validates :num, presence: { message: 'Введите число' }
    validates_numericality_of :num, only_integer: true, greater_than_or_equal_to: 0

end
