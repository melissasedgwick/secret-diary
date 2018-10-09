class SecretDiary

  def initialize
    @entries = []
    @lock = Lock.new
  end

  def add_entry(entry)
    raise "Unable to add entry: diary locked" if @lock.status == "locked"
    @entries << entry.to_s
    return entry.to_s
  end

  def get_entries
    raise "Unable to get entries: diary locked" if @lock.status == "locked"
    @entries
  end

  def change_lock
    @lock.change_lock
  end

end

class Lock

  attr_reader :status

  def initialize
    @status = "locked"
  end

  def lock
    @status = "locked"
  end

  def unlock
    @status = "unlocked"
  end

  def change_lock
    @status == "locked" ? unlock : lock
  end

end
