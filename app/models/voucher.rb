class Voucher

  def self.all
    vouchers = []
    vouchers << Voucher.new(:id => 1, :name => "one", :amount => 1)
    vouchers << Voucher.new(:id => 2, :name => "two", :amount => 2)
    vouchers << Voucher.new(:id => 3, :name => "three", :amount => 3)
    vouchers
  end

  def self.find(id)
    Voucher.new(:id => id, :name => "found", :amount => id)
  end

  def initialize(arguments = {})
    update_attributes! arguments
  end

  attr_accessor :id, :amount, :name

  def save
    self
  end

  def update_attributes!(attributes = {})
    attributes.each { |key, value| send "#{key}=", value }
  end

  def to_json(options = {})
    super options.merge(:only => [:id, :name, :amount])
  end

end
