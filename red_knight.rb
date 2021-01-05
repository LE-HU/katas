# Input will be two integers:

#     N / n (Ruby) vertical position of Red Knight (0 or 1).
#     P / p (Ruby) horizontal position of two pawns (between 2 and 1000000).

# Output has to be a tuple (python, haskell, Rust, prolog, C#), an array (javascript, ruby), an object (java), or a structure (C) with:

#     "Black" or "White" - which pawn was caught
#     Where it was caught (horizontal position)

# Example

# Input = 0, 4
# Output = ["White", 8]

# 1 2 3 0 4 5 6 7 0 1
# Notes

#     Red Knight will always start at horizontal position 0.
#     The black pawn will always be at the bottom (vertical position 1).
#     The white pawn will always be at the top (vertical position 0).
#     The pawns move first, and they move simultaneously.
#     Red Knight moves 2 squares forward and 1 up or down.
#     Pawns always move 1 square forward.
#     Both pawns will start at the same horizontal position.

def red_knight(n, p)
  # starting positions
  knight = [n, 0]
  white = [0, p]
  black = [1, p]

  # the race
  while true
    white[1] += 1
    black[1] += 1

    knight[0] ^= 1
    knight[1] += 2

    break ['White', white[1]] if knight == white
    break ['Black', black[1]] if knight == black
  end
end

## Other solutions
# ---

# def red_knight(n, p)
#   return [(p - n).odd? ? "Black" : "White", p * 2]
# end

# #############

# def red_knight(n, p)
#   [(n - p).even? ? "White" : "Black", 2*p]
# end
