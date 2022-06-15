require 'rails_helper'

RSpec.describe "Users", type: :request do

  before do
    @user = FactoryBot.create(:user)
  end

  describe "GET #show" do
    it 'showアクションにリクエストすると正常にレスポンスが返ってくる' do 
    end
    it 'showアクションにリクエストするとレスポンスに投稿済みの動画のタイトルが存在する' do 
    end
    it 'showアクションにリクエストするとレスポンスにお気に入り動画一覧ボタンが存在する' do 
    end
  end
end
