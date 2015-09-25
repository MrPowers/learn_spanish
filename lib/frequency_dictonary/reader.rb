class Reader

  class << self

    def raw_data
      File.expand_path("./raw_data.txt", File.dirname(__FILE__))
    end

    def data_to_a
      r = File.readlines(raw_data)
      # don't include the overflow example sentence lines
      # that aren't used anyways
      r.select! { |e| e.match(/^(•|\d)/) }
      r.each_slice(3).to_a
    end

  end

end

