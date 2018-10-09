require 'secret_diary'

describe SecretDiary do

  it 'lets you add an entry' do
    expect(subject.add_entry("Hello")).to eq("Hello")
  end

  it 'lets you access entries' do
    subject.add_entry("Hello")
    expect(subject.get_entries).to eq("Hello")
  end

end
