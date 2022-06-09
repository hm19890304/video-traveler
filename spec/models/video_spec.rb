require 'rails_helper'

RSpec.describe Video, type: :model do
  before do
    @video = FactoryBot.build(:video)
    @user = FactoryBot.build(:user)
  end

  describe '動画投稿' do
    context '動画投稿できる場合' do
      it 'title,explanation,prefecture_id,category_id,movieが存在すれば投稿できる' do
        expect(@video).to be_valid
      end
      it 'addressが空でも投稿できる' do
        @video.address = ''
        expect(@video).to be_valid
      end
    end
    context '動画投稿できない場合' do
      it 'titleが空では投稿できない' do
        @video.title = ''
        @video.valid?
        expect(@video.errors.full_messages).to include("Title can't be blank")
      end
      it 'explanationが空では投稿できない' do
        @video.explanation = ''
        @video.valid?
        expect(@video.errors.full_messages).to include("Explanation can't be blank")
      end
      it 'prefecture_idが空では投稿できない' do
        @video.prefecture_id = ''
        @video.valid?
        expect(@video.errors.full_messages).to include('Prefecture を入力してください')
      end
      it 'prefecture_idが空では投稿できない' do
        @video.prefecture_id = 1
        @video.valid?
        expect(@video.errors.full_messages).to include('Prefecture を入力してください')
      end
      it 'category_idが空では投稿できない' do
        @video.category_id = ''
        @video.valid?
        expect(@video.errors.full_messages).to include('Category を入力してください')
      end
      it 'category_idが1では投稿できない' do
        @video.category_id = 1
        @video.valid?
        expect(@video.errors.full_messages).to include('Category を入力してください')
      end
      it 'userが紐付いていないと投稿できない' do
        @video.user = nil
        @video.valid?
        expect(@video.errors.full_messages).to include('User must exist')
      end
      it 'movieが空では投稿できない' do
        @video.movie = nil
        @video.valid?
        expect(@video.errors.full_messages).to include("Movie can't be blank")
      end
    end
  end
end
