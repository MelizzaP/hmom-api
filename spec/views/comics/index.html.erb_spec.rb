require 'spec_helper'

RSpec.describe 'comics/index.html.erb' do
  
  xit 'renders the HTML template' do
    render
    expect(rendered).to match /HTML/
  end
  
  xit 'displays a title' do
    assign(:comic, Comic.create!(:title => 'Comic!'))
    
    render :template => 'comics/index.html.erb'
    
    expect(rendered).to match /Comic!/
  end
end 