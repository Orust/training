# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    lcp = ""
    len = strs.length
    strs.sort!
    strs[0].each_char.with_index do |c, i|
        if c == strs[len - 1][i]
            lcp += c
        else
            return lcp
        end
    end
    return lcp
end