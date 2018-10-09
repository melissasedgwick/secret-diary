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

  it 'allows you to lock diary' do
    subject.lock
    expect(subject.status).to eq ("locked")
  end

  it 'allows you to unlock diary' do
    subject.lock
    subject.unlock
    expect(subject.status).to eq("unlocked")
  end

end
