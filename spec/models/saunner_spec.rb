require 'rails_helper'

RSpec.describe Saunner, type: :model do

  #name, email, passwordがあれば有効な状態であること
  it 'is valid with a user_name, email, and password' do #一つ一つのスペックはitで始まるブロック内に記述
    user = FactoryBot.create(:saunner)
    expect(user).to be_valid #userが有効(valid)ならパスする
  end
end
