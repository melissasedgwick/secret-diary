class SecretDiary

  attr_reader :status

  def initialize
    @entries = []
    @status = "locked"
  end

  def add_entry(entry)
    @entries << entry.to_s
    return entry.to_s
  end

  def get_entries
    @entries
  end

  def lock
    @status = "locked"
  end

  def unlock
    @status = "unlocked"
  end

end
