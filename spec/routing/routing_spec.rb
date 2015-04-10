require 'rails_helper'

RSpec.describe 'Routes' do
  it 'routes / to index' do 
    expect(get: '/comics').to route_to(controller: 'comics', action: 'index')
  end  
end