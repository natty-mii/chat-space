require 'rails_helper'
describe message do
  describe '#create' do

  # メッセージを保存できる場合
    # メッセージがあれば保存できる
    it "is valid with a content" do
      content = build(:message)
      user.valid?
      expect(content).to be_valid
    end

      # 画像があれば保存できる
    it "is vaild with a image" do
      image = build(:image)
      user.vaild?
      expect(image).to be_valid
    end

    # メッセージと画像があれば保存できる
    it "is vaild with a content, image" do
      user.vaild?
      expect(content, image).to be_valid
    end

  # メッセージを保存できない場合
    # メッセージも画像も無いと保存できない
    it "is invalid without a content,image" do
      user.vaild?
      expect()
    end

    # group_idが無いと保存できない
    it "is invalid without a group_id" do
      user.valid?
      expect()
    end

    # user_idが無いと保存できない
    it "is invalid without a user_id" do
      user.vaild?
      expect()
    end
  end
end