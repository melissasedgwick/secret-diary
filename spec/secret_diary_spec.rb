require 'secret_diary'

describe SecretDiary do

  it 'lets you add an entry' do
    expect(subject.add_entry("Hello")).to eq("Hello")
  end

  it 'lets you access last entry' do
    subject.add_entry("Hello")
    expect(subject.get_entries).to eq(["Hello"])
  end

  it 'remembers all previous entries' do
    subject.add_entry("Hello")
    subject.add_entry("Goodbye")
    expect(subject.get_entries).to eq (["Hello", "Goodbye"])
  end

end
