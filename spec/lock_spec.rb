require 'secret_diary'

describe Lock do

    describe '#lock' do

      it 'is locked when initiating' do
        expect(subject.status).to eq("locked")
      end

      it 'allows you to lock diary' do
        2.times { subject.change_lock }
        expect(subject.status).to eq ("locked")
      end

    end

    describe '#unlock' do

      it 'allows you to unlock diary' do
        subject.change_lock
        expect(subject.status).to eq("unlocked")
      end

    end

    describe '#change_lock' do

      it 'changes status to locked if unlocked' do
        2.times { subject.change_lock }
        expect(subject.status).to eq("locked")
      end

      it 'changes status to unlocked if locked' do
        subject.change_lock
        expect(subject.status).to eq("unlocked")
      end

    end

  end
