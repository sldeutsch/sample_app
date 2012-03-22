  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
  end