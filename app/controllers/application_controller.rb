class ApplicationController < ActionController::API

  def levenshtein(s, t)
    a, b = s.length, t.length
    return a if b == 0
    return b if a == 0
    c = Array.new(a+1) {Array.new(b+1)}

    (0..a).each {|d| c[d][0] = d}
    (0..b).each {|e| c[0][e] = e}
    (1..b).each do |e|
      (1..a).each do |d|
        c[d][e] = if s[d-1] == t[e-1]  # convert my index into a string
          c[d-1][e-1]       # when there is no action required
        else
          [ c[d-1][e]+1,    # calculate deletions necessary
            c[d][e-1]+1,    # calculate insertions necessary
            c[d-1][e-1]+1,  # calculate substitutions necessary
          ].min
        end
      end
    end
    c[a][b]
  end

end
