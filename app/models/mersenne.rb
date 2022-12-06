class Mersenne < ApplicationRecord
    include ActiveModel::Serializers::Xml
    include PagesHelper

    before_create   :raise_if_not_unique

    validates :num, presence: { message: 'не может быть пустым' }, 
        comparison: { greater_than: 0}
    self.primary_key = :num

    def raise_if_not_unique
    rescue Mersenne::Error => error
        errors.add(:base, "Please fix the error #{error.message}")
        false
    end
end