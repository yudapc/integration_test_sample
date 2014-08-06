require "./spec_helper"

class Pupuk < SitePrism::Page
  set_url "http://local.pupuk.com"

  element :username, "input[name=username]"
  element :password, "input[id=password]"
  element :customers, "a[href='http://local.pupuk.com/index.php/customers']"
  element :products, "a[href='http://local.pupuk.com/index.php/products']"
  element :orders, "a[href='http://local.pupuk.com/index.php/orders']"
  element :purchaseorders, "a[href='http://local.pupuk.com/index.php/purchaseorders']"
  element :manage_users, "a.dropmenu"
  element :users, "a[href='http://local.pupuk.com/index.php/users']"

  element :account, "a.btn.dropdown-toggle"
  element :profile, "a[href='http://local.pupuk.com/index.php/profile']"
  element :password, "input[name=password]"
  element :passconf, "input[name=passconf]"
  element :logout, "a[href='http://local.pupuk.com/index.php/login/logout']"
end

describe "check all menu" do
  subject :dashboard do
    pupuk = Pupuk.new
    pupuk.load
    pupuk
  end

  it "want check all menu" do
    subject.username.set "admin"
    subject.password.set "password\n"
    expect(subject.current_url).to eq "http://local.pupuk.com/index.php/dashboard"

    subject.customers.click
    expect(subject.current_url).to eq "http://local.pupuk.com/index.php/customers"

    subject.products.click
    expect(subject.current_url).to eq "http://local.pupuk.com/index.php/products"

    subject.orders.click
    expect(subject.current_url).to eq "http://local.pupuk.com/index.php/orders"

    subject.purchaseorders.click
    expect(subject.current_url).to eq "http://local.pupuk.com/index.php/purchaseorders"

    subject.manage_users.click
    subject.users.click
    expect(subject.current_url).to eq "http://local.pupuk.com/index.php/users"

    subject.account.click
    subject.profile.click
    subject.password.set "password"
    subject.passconf.set "password\n"
    expect(subject.current_url).to eq "http://local.pupuk.com/index.php/users"

    subject.account.click
    subject.logout.click
  end

end

