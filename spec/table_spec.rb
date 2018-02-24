require 'spec_helper'
require 'table'

describe Table do
  let(:table) { Table.new }

  describe '#order' do
    before do
      table.order('steak', 150)
    end

    example 'order is received correctly' do
      received_order = table.orders.first
      expect(received_order.meal).to eq('steak')
      expect(received_order.bill).to eq(150)
    end
  end

  describe '#total_bill' do
    before do
      table.order('steak', 150)
      table.order('mashed potato', 70)
      table.order('beer', 15)
    end

    example 'sum up total bill' do
      expect(table.total_bill).to eq(235)
    end
  end

  describe '#split_bill' do
    before do
      table.order('steak', 150)
      table.order('mashed potato', 70)
      table.order('beer', 15)
    end

    example 'calculate palyment per person and charge' do
      payment, charge = table.split_bill(3)
      expect(payment).to eq(79)
      expect(charge).to eq(2)
    end
  end
end
