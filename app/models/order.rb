class Order < ApplicationRecord
  belongs_to :user
  include AASM

  validates :username, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validates :order_no, uniqueness: true

  before_create :build_order_no

  enum pay_type: {
    'ATM': 'A',
    '信用卡': 'C'
  }

  aasm column: 'state' do
    state :pending, initial: true
    state :paid, :cancelled

    event :pay do
      transitions from: :pending, to: :paid

      before_transaction do |transaction_no, pay_token|
        self.transaction_no = transaction_no
        self.pay_token = pay_token
        self.paid_at = Time.current
      end
    end

    event :cancel do
      transitions from: [:pending, :paid], to: :cancelled
    end
  end

  private

  def build_order_no
    now = Date.current
    self.order_no = "RB#{now.strftime('%Y%m%d')}#{[*'A'..'Z', *0..9].sample(10).join}"
  end
end
