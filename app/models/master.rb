# == Schema Information
#
# Table name: masters
#
#  id              :bigint(8)        not null, primary key
#  name            :text
#  password_digest :text
#  slave_id        :integer
#  admin           :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Master < ApplicationRecord
  has_many :slaves
end
