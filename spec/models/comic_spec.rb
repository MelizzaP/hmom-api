require 'rails_helper'

RSpec.describe Comic, type: :model do
  let(:first_comic) { create :comic }
  let(:second_comic) { create :comic }
  context 'active record navigation' do
    it 'selects the next record' do
      first_comic
      second_comic
      result = first_comic.next
      expect(result).to eq(second_comic)
    end

    it 'selects the previous record' do
      first_comic
      second_comic
      result = second_comic.prev
      expect(result).to eq(first_comic)
    end
  end
end
