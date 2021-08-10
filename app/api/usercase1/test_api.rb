# app/api/test_api.rb
module Usercase1
class TestApi < Grape::API # 需大写
  format :json
  get 'get_test' do
    { message: "Hello #{params[:name]} via get" }
  end

  post 'post_test' do
    { message: "Hello #{params[:name]} via post" }
  end

  resource :user do
    desc "Return a user."
    get :test  do
      @user = User.first
      { message: @user }
    end
  end

end
end
