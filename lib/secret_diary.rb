class SecretDiary

  def initialize
    @entries = []
  end

  def add_entry(entry)
    @entries << entry.to_s
    return entry.to_s
  end

  def get_entries
    @entries
  end

end
