require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe 'ツイートの保存' do
    context "正常系" do
      it "全てが正しく入力されていれば投稿できる" do
        expect(@tweet).to be_valid
      end
    end
    context "異常系" do
      it "テキストが空では投稿できない" do
        @tweet.text = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include "Text can't be blank"
      end
      it "musicianが空では投稿できない" do
        @tweet.musician = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include "Musician can't be blank"
      end     
      it "musicが空では投稿できない" do
        @tweet.music = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include "Music can't be blank"
      end     
      it "imageが空では投稿できない" do
        @tweet.image = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include "Image can't be blank"
      end  
      it "audioが空では投稿できない" do
        @tweet.audio = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include "Audio can't be blank"
      end    
      it "ユーザーが紐付いていなければ投稿できない" do
        @tweet.user = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("User must exist")
      end
    end
  end
end
