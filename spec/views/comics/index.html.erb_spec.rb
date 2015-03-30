require 'spec_helper'

RSpec.describe 'comics/index.html.erb' do
  
  it 'renders the HTML template' do
    render
    expect(rendered).to match /HTML/
  end
  
  it 'displays a title' do
    assign(:comic, Comic.create!(:title => 'Comic!'))
    
    render :template => 'comics/index/html.erb'
    
    expect(rendered).to match /Comic!/
  end
end 