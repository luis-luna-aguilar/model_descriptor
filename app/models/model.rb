class Model < ActiveRecord::Base

  belongs_to :application

  has_many :fields
  accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true

  has_and_belongs_to_many :actions

end

# == Schema Information
#
# Table name: models
#
#  application_id :integer
#  created_at     :datetime         not null
#  id             :integer          not null, primary key
#  name           :string
#  updated_at     :datetime         not null
#
