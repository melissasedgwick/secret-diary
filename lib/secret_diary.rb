class SecretDiary

  def add_entry(entry)
    @entry = entry.to_s
  end

  def get_entries
    @entry
  end

end
