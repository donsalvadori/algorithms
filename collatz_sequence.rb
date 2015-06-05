def longest_collatz_sequence(n)
    longest_sequence = []
    (1..n).each do |a|
        sequence = [a]
        until sequence.last == 1
            if sequence.last % 2 == 0
                sequence.push(sequence.last/2)
            else
                sequence.push(3 * sequence.last + 1)
            end
        end
        if sequence.length > longest_sequence.length
            longest_sequence = sequence
        end
    end
    longest_sequence
end