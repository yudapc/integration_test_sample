require "./spec_helper"

class ViewHome < SitePrism::Page
  set_url "http://liputan6.com"

  element :logo, "a#home"
  element :indonesia_baru, "a.top-navbar-191"
end

describe 'View Home Page' do
  subject :home do
    home = ViewHome.new
    home.load
    home
  end
  it { should have_logo }

  it "go to indonesia-baru" do
    subject.indonesia_baru.click
    expect(subject.current_url).to eq "http://indonesia-baru.liputan6.com/"
  end
end
