require 'rails_helper'

RSpec.describe "Users", type: :request do

  before do
    @user = FactoryBot.create(:user)
  end

  describe "GET #show" do
    it 'showアクションにリクエストすると正常にレスポンスが返ってくる' do
      get user_path(@user.id)
      expect(response.status).to eq 200
    end
    it 'showアクションにリクエストするとレスポンスに「（ユーザー名）さんの投稿」という文字列が存在する' do 
      get user_path(@user.id)
      expect(response.body).to include(@user.name + 'さんの投稿')
    end
  end
end
