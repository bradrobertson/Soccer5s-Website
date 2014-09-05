Refinery::Inquiries::Inquiry.instance_eval do
  validates :phone, presence: true
  attr_accessible :bot_protection
  attr_accessor :bot_protection

  validate do
    errors.add(:base, "sorry friend") if bot_protection.present?
    false
  end
end
