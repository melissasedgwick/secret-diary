require 'secret_diary'

describe SecretDiary do

  describe '#add_entry' do

    it 'lets you add an entry' do
      subject.unlock
      expect(subject.add_entry("Hello")).to eq("Hello")
    end

    it 'does not allow you to add entry when locked' do
      expect { subject.add_entry("Hello") }.to raise_error("Unable to add entry: diary locked")
    end

  end

  describe '#get_entries' do

    it 'lets you access last entry' do
      subject.unlock
      subject.add_entry("Hello")
      expect(subject.get_entries).to eq(["Hello"])
    end

    it 'remembers all previous entries' do
      subject.unlock
      subject.add_entry("Hello")
      subject.add_entry("Goodbye")
      expect(subject.get_entries).to eq (["Hello", "Goodbye"])
    end

    it 'does not allow you to get entries when locked' do
      expect { subject.get_entries }.to raise_error("Unable to get entries: diary locked")
    end

  end

  describe '#lock' do

    it 'is locked when initiating' do
      expect(subject.status).to eq("locked")
    end

    it 'allows you to lock diary' do
      subject.unlock
      subject.lock
      expect(subject.status).to eq ("locked")
    end

  end

  describe '#unlock' do

    it 'allows you to unlock diary' do
      subject.unlock
      expect(subject.status).to eq("unlocked")
    end

  end

end
