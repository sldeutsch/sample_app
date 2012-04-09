require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it {should have_selector('h1',  text: heading) }
  end


  describe "Home page" do
    before { visit root_path }
    let(:heading)    {'Sample App' }
    let(:page_title) {''}

    it_should_behave_like "all static pages"
    it { should_not have_selector 'tite', text: '| home'}
  end

  describe "Help page" do
    before { visit help_path }
    let(:heading)    {'Sample App' }
    let(:page_title)  {''}

    it_should_behave_like "all static pages"
    it { should_not have_selector 'tite', text: '| Help'}
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    {'Sample App' }
    let(:page_title)  {''}

  
    it_should_behave_like "all static pages"
    it { should_not have_selector 'tite', text: '| About'}
    
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)    {'Sample App' }
    let(:page_title)  {''}

    it_should_behave_like "all static pages"
    it { should_not have_selector 'tite', text: '| Contact'}
  end


      it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should # fill in
    click_link "Contact"
    page.should # fill in
    click_link "Home"
    page.should # fill in
    click_link "Sign up now!"
    page.should # fill in
  
   
  end
end