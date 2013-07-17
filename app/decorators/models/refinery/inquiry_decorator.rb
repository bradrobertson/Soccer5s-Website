Refinery::Inquiries::Inquiry.instance_eval do
  validates :phone, presence: true
end