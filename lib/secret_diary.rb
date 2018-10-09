class SecretDiary

  attr_reader :status

  def initialize
    @entries = []
    @status = "locked"
  end

  def add_entry(entry)
    raise "Unable to add entry: diary locked" if @status == "locked"
    @entries << entry.to_s
    return entry.to_s
  end

  def get_entries
    raise "Unable to get entries: diary locked" if @status == "locked"
    @entries
  end

  def lock
    @status = "locked"
  end

  def unlock
    @status = "unlocked"
  end

end
