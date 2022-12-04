class Mersenne < ApplicationRecord
    # include ActiveModel::Serializers::Xml
    include ActiveModel::Model
    include ActiveModel::Validations
    include PagesHelper


    validates :num, presence: true, comparison: { greater_than: 0}
    self.primary_key = :num
end