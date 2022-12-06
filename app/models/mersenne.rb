# frozen_string_literal: true

# class
class Mersenne < ApplicationRecord
  include ActiveModel::Serializers::Xml
  include PagesHelper

  before_create   :raise_if_not_unique

  validates :num, presence: { message: 'не может быть пустым' },
                  comparison: { greater_than: 0 }
  self.primary_key = :num

  def raise_if_not_unique
  rescue Mersenne::Error => e
    errors.add(:base, "Please fix the error #{e.message}")
    false
  end
end
