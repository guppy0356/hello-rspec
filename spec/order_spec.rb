require 'spec_helper'
require 'order'

describe Order do
  let(:steak) { Order.new('steak', 100) }

  describe '#meal' do
    example 'ordered meal' do
      expect(steak.meal).to eq 'steak'
    end
  end

  describe '#bill' do
    example 'bill for one meal' do
      expect(steak.bill).to eq 100
    end
  end
end
