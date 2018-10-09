require 'secret_diary'

describe SecretDiary do

  it 'lets you add an entry' do
    expect(subject.add_entry("Hello")).to eq("Hello")
  end

end
