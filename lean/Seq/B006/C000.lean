import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A059137.P16002026558254797629

`18*A037227(n+1)`
-/

namespace A059137.P16002026558254797629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A037227 (n + 1)

end

end A059137.P16002026558254797629

noncomputable section

/-- A059137: A hierarchical sequence (W3{2,2}cc - see A059126).

Offset 0, canonical program `A059137.P16002026558254797629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059137 (n : ℕ) : ℤ :=
  A059137.P16002026558254797629.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085062.P13663809512350545089

`A085060(n)/9-1/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085062.P13663809512350545089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085060 n : ℚ) / 9 - (1 : ℚ) / 3

end

end A085062.P13663809512350545089

noncomputable section

/-- A085062: a(n) = A085060(n)/9 - 1/3.

Offset 0, canonical program `A085062.P13663809512350545089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085062 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085062.P13663809512350545089.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092339.P11324540201180238684

`A080791(A003188(n))`
-/

namespace A092339.P11324540201180238684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A003188 n).toNat

end

end A092339.P11324540201180238684

noncomputable section

/-- A092339: Number of adjacent identical digits in the binary representation of n.

Offset 0, canonical program `A092339.P11324540201180238684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092339 (n : ℕ) : ℤ :=
  A092339.P11324540201180238684.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094267.P5737536651550567383

`(-1)^n*A050603(n)`
-/

namespace A094267.P5737536651550567383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A050603 n

end

end A094267.P5737536651550567383

noncomputable section

/-- A094267: First differences of A001511.

Offset 0, canonical program `A094267.P5737536651550567383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094267 (n : ℕ) : ℤ :=
  A094267.P5737536651550567383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075101.P17453559021154753691

`2*A084623(n+1)`
-/

namespace A075101.P17453559021154753691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084623 (n + 1)

end

end A075101.P17453559021154753691

noncomputable section

/-- A075101: Numerator of 2^n/n.

Offset 1, canonical program `A075101.P17453559021154753691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075101 (n : ℕ) : ℤ :=
  A075101.P17453559021154753691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080100.P10210311042903193849

`2^A080791(n)`
-/

namespace A080100.P10210311042903193849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080791 n : ℤ)

end

end A080100.P10210311042903193849

noncomputable section

/-- A080100: a(n) = 2^(number of 0's in binary representation of n).

Offset 0, canonical program `A080100.P10210311042903193849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080100.P10210311042903193849.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088839.P2853129833780886676

`(8*A006519(n+1)-1)/(1+2*A096268(n))`
-/

namespace A088839.P2853129833780886676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A006519 (n + 1) - 1 : ℚ) / (1 + 2 * A096268 n : ℚ)

end

end A088839.P2853129833780886676

noncomputable section

/-- A088839: Numerator of sigma(4n)/sigma(n).

Offset 1, canonical program `A088839.P2853129833780886676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088839.P2853129833780886676.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004202.P1644137240933224539

`A127739(n+1)+1+n`
-/

namespace A004202.P1644137240933224539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + 1 + (n : ℤ)

end

end A004202.P1644137240933224539

noncomputable section

/-- A004202: Skip 1, take 1, skip 2, take 2, skip 3, take 3, etc.

Offset 1, canonical program `A004202.P1644137240933224539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004202 (n : ℕ) : ℤ :=
  A004202.P1644137240933224539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008421.P5778810388798117151

`∑[A008420(n)]`
-/

namespace A008421.P5778810388798117151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008421.P5778810388798117151

noncomputable section

/-- A008421: Crystal ball sequence for 10-dimensional cubic lattice.

Offset 0, canonical program `A008421.P5778810388798117151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008421 (n : ℕ) : ℤ :=
  A008421.P5778810388798117151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008863.P10720815592373183918

`A008862(n)+C(n, 10)`
-/

namespace A008863.P10720815592373183918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n + (Nat.choose n 10 : ℤ)

end

end A008863.P10720815592373183918

noncomputable section

/-- A008863: a(n) = Sum_{k=0..10} binomial(n,k).

Offset 0, canonical program `A008863.P10720815592373183918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008863 (n : ℕ) : ℤ :=
  A008863.P10720815592373183918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008912.P182979477162641956

`lt[0, char[A008867(n+2)]]`
-/

namespace A008912.P182979477162641956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008867 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008912.P182979477162641956

noncomputable section

/-- A008912: Truncated triangular numbers (of form n*(n-3)/2 - k^2+k*n+1 for 1<=k

Offset 1, canonical program `A008912.P182979477162641956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A008912 (n : ℕ) : ℤ :=
  (A008912.P182979477162641956.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A008912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010993.P9349430955877140738

`∑[A010992(n)]`
-/

namespace A010993.P9349430955877140738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010992 (n + 39)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010993.P9349430955877140738

noncomputable section

/-- A010993: Binomial coefficient C(n,40).

Offset 40, canonical program `A010993.P9349430955877140738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4966 terms. -/
def A010993 (n : ℕ) : ℤ :=
  A010993.P9349430955877140738.a (n - 40)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4966 terms. -/
def A010993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014083.P14491156369592575533

`A014082(and(n, 2*n))`
-/

namespace A014083.P14491156369592575533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (Nat.land n (2 * n))

end

end A014083.P14491156369592575533

noncomputable section

/-- A014083: Occurrences of '1111' in binary expansion of n.

Offset 0, canonical program `A014083.P14491156369592575533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014083 (n : ℕ) : ℤ :=
  A014083.P14491156369592575533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020986.P18384666563088217064

`∑[A020985(n)]`
-/

namespace A020986.P18384666563088217064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P18384666563088217064

noncomputable section

/-- A020986: a(n) = n-th partial sum of Golay-Rudin-Shapiro sequence A020985.

Offset 0, canonical program `A020986.P18384666563088217064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020986 (n : ℕ) : ℤ :=
  A020986.P18384666563088217064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020990.P14114785613548129031

`∑[(-1)^n*A020985(n)]`
-/

namespace A020990.P14114785613548129031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P14114785613548129031

noncomputable section

/-- A020990: a(n) = Sum_{k=0..n} (-1)^k*A020985(k).

Offset 0, canonical program `A020990.P14114785613548129031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020990 (n : ℕ) : ℤ :=
  A020990.P14114785613548129031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023547.P12137966802095583641

`∑[n+2]-A023546(n+1)`
-/

namespace A023547.P12137966802095583641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023546 (n + 1)

end

end A023547.P12137966802095583641

noncomputable section

/-- A023547: Convolution of natural numbers >= 2 and A023532.

Offset 1, canonical program `A023547.P12137966802095583641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023547 (n : ℕ) : ℤ :=
  A023547.P12137966802095583641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023601.P4165196643065523488

`(n+1)²-A023562(n+1)`
-/

namespace A023601.P4165196643065523488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A023562 (n + 1)

end

end A023601.P4165196643065523488

noncomputable section

/-- A023601: Convolution of A023532 and odd numbers.

Offset 1, canonical program `A023601.P4165196643065523488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023601 (n : ℕ) : ℤ :=
  A023601.P4165196643065523488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024505.P6232145013344462034

`floor(A024504(n)/2)`
-/

namespace A024505.P6232145013344462034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024504 n : ℚ) / 2⌋

end

end A024505.P6232145013344462034

noncomputable section

/-- A024505: a(n) = [ C(2n,n)/2^(n+2) ].

Offset 0, canonical program `A024505.P6232145013344462034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A024505 (n : ℕ) : ℤ :=
  A024505.P6232145013344462034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A024505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027799.P796991369945027922

`∑[A027798(n)+A027786(n)]`
-/

namespace A027799.P796991369945027922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027798 (n + 10) + A027786 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027799.P796991369945027922

noncomputable section

/-- A027799: a(n) = 91*(n+1)*binomial(n+3,14)/3.

Offset 11, canonical program `A027799.P796991369945027922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027799 (n : ℕ) : ℤ :=
  A027799.P796991369945027922.a (n - 11)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027809.P8199107942619757607

`∑[A027808(n+8)+A027797(n+9)]`
-/

namespace A027809.P8199107942619757607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027808 (n + 8) + A027797 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027809.P8199107942619757607

noncomputable section

/-- A027809: a(n) = 143*(n+1)*binomial(n+4,13)/2.

Offset 9, canonical program `A027809.P8199107942619757607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027809 (n : ℕ) : ℤ :=
  A027809.P8199107942619757607.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029129.P9138012199681895200

`∑[A025920(n)]`
-/

namespace A029129.P9138012199681895200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029129.P9138012199681895200

noncomputable section

/-- A029129: Expansion of 1/((1-x)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029129.P9138012199681895200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029129 (n : ℕ) : ℤ :=
  A029129.P9138012199681895200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029174.P3493084766565644547

`A029066(n)-a(n-1)` with `a(0)=1`
-/

namespace A029174.P3493084766565644547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029066 n - a (n - 1)

end

end A029174.P3493084766565644547

noncomputable section

/-- A029174: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^9)).

Offset 0, canonical program `A029174.P3493084766565644547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029174 (n : ℕ) : ℤ :=
  A029174.P3493084766565644547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029179.P18333107731535860648

`A029071(n)-a(n-1)` with `a(0)=1`
-/

namespace A029179.P18333107731535860648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029071 n - a (n - 1)

end

end A029179.P18333107731535860648

noncomputable section

/-- A029179: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A029179.P18333107731535860648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029179 (n : ℕ) : ℤ :=
  A029179.P18333107731535860648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029209.P9661014665530843499

`A029166(n)+A029195(n)-A029154(n)`
-/

namespace A029209.P9661014665530843499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 n + (A029195 n - A029154 n)

end

end A029209.P9661014665530843499

noncomputable section

/-- A029209: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029209.P9661014665530843499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029209 (n : ℕ) : ℤ :=
  A029209.P9661014665530843499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029219.P7299716398362055067

`A029111(n)-a(n-1)` with `a(0)=1`
-/

namespace A029219.P7299716398362055067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029111 n - a (n - 1)

end

end A029219.P7299716398362055067

noncomputable section

/-- A029219: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029219.P7299716398362055067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029219 (n : ℕ) : ℤ :=
  A029219.P7299716398362055067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029222.P6488115771881220225

`A029114(n)-a(n-1)` with `a(0)=1`
-/

namespace A029222.P6488115771881220225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029114 n - a (n - 1)

end

end A029222.P6488115771881220225

noncomputable section

/-- A029222: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029222.P6488115771881220225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029222 (n : ℕ) : ℤ :=
  A029222.P6488115771881220225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029250.P8277710506503635105

`A029149(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029250.P8277710506503635105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029149 n - a (n - 2)

end

end A029250.P8277710506503635105

noncomputable section

/-- A029250: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A029250.P8277710506503635105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029250 (n : ℕ) : ℤ :=
  A029250.P8277710506503635105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029254.P26496680662170303

`A029198(abs(A097062(n)))+A025857(n)`
-/

namespace A029254.P26496680662170303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 |A097062 n|.toNat + A025857 n

end

end A029254.P26496680662170303

noncomputable section

/-- A029254: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^10)).

Offset 0, canonical program `A029254.P26496680662170303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029254 (n : ℕ) : ℤ :=
  A029254.P26496680662170303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029262.P6376647756052350622

`A029161(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029262.P6376647756052350622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029161 n - a (n - 2)

end

end A029262.P6376647756052350622

noncomputable section

/-- A029262: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029262.P6376647756052350622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029262 (n : ℕ) : ℤ :=
  A029262.P6376647756052350622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029267.P1364941356505617058

`A029166(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029267.P1364941356505617058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029166 n - a (n - 2)

end

end A029267.P1364941356505617058

noncomputable section

/-- A029267: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029267.P1364941356505617058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029267 (n : ℕ) : ℤ :=
  A029267.P1364941356505617058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029301.P12214325034262938535

`A029253(n)+A029286(n)-A029248(n)`
-/

namespace A029301.P12214325034262938535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 n + (A029286 n - A029248 n)

end

end A029301.P12214325034262938535

noncomputable section

/-- A029301: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029301.P12214325034262938535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029301 (n : ℕ) : ℤ :=
  A029301.P12214325034262938535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029318.P9153013755735390018

`A025920(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029318.P9153013755735390018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025920 n + a (n - 3)

end

end A029318.P9153013755735390018

noncomputable section

/-- A029318: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029318.P9153013755735390018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029318 (n : ℕ) : ℤ :=
  A029318.P9153013755735390018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029328.P17808888260259536915

`A029195(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029328.P17808888260259536915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029195 n - a (n - 2)

end

end A029328.P17808888260259536915

noncomputable section

/-- A029328: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A029328.P17808888260259536915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029328 (n : ℕ) : ℤ :=
  A029328.P17808888260259536915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029331.P5624072464246158089

`A029198(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029331.P5624072464246158089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029198 n - a (n - 2)

end

end A029331.P5624072464246158089

noncomputable section

/-- A029331: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A029331.P5624072464246158089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029331 (n : ℕ) : ℤ :=
  A029331.P5624072464246158089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029338.P7557712913129089284

`A029205(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029338.P7557712913129089284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029205 n - a (n - 2)

end

end A029338.P7557712913129089284

noncomputable section

/-- A029338: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029338.P7557712913129089284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029338 (n : ℕ) : ℤ :=
  A029338.P7557712913129089284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029359.P9382085273049391610

`A025872(n)+A029181(n)-A029186(n)`
-/

namespace A029359.P9382085273049391610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A029181 n - A029186 n)

end

end A029359.P9382085273049391610

noncomputable section

/-- A029359: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029359.P9382085273049391610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029359 (n : ℕ) : ℤ :=
  A029359.P9382085273049391610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029360.P14859210217828173422

`A029227(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029360.P14859210217828173422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029227 n - a (n - 2)

end

end A029360.P14859210217828173422

noncomputable section

/-- A029360: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029360.P14859210217828173422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029360 (n : ℕ) : ℤ :=
  A029360.P14859210217828173422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029430.P1090642862795637503

`A029114(n)+A029389(n)-A029102(n)`
-/

namespace A029430.P1090642862795637503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029389 n - A029102 n)

end

end A029430.P1090642862795637503

noncomputable section

/-- A029430: Expansion of 1/((1-x^6)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029430.P1090642862795637503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029430 (n : ℕ) : ℤ :=
  A029430.P1090642862795637503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032532.P13523038209398840001

`floor(∑[A138342(n+1)]/(n+1))`
-/

namespace A032532.P13523038209398840001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A032532.P13523038209398840001

noncomputable section

/-- A032532: Integer part of decimal 'base-2 looking' numbers divided by their actual base-2 values (denominator of a(n) is n, numerator is n written in binary but read in decimal).

Offset 1, canonical program `A032532.P13523038209398840001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032532 (n : ℕ) : ℤ :=
  A032532.P13523038209398840001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035042.P1670210666577549716

`2^n-A008862(n)`
-/

namespace A035042.P1670210666577549716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008862 n

end

end A035042.P1670210666577549716

noncomputable section

/-- A035042: a(n) = 2^n - C(n,0)- ... - C(n,9).

Offset 0, canonical program `A035042.P1670210666577549716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A035042 (n : ℕ) : ℤ :=
  A035042.P1670210666577549716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A035042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035171.P5722442926785609002

`∑{d}[n+1, A011585(#)]`
-/

namespace A035171.P5722442926785609002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011585 d

end

end A035171.P5722442926785609002

noncomputable section

/-- A035171: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = -19.

Offset 1, canonical program `A035171.P5722442926785609002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A035171 (n : ℕ) : ℤ :=
  A035171.P5722442926785609002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A035171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035706.P322796382435352986

`∑[2*A008420(n)]-A008420(n)`
-/

namespace A035706.P322796382435352986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008420 n

end

end A035706.P322796382435352986

noncomputable section

/-- A035706: Coordination sequence for 11-dimensional cubic lattice.

Offset 0, canonical program `A035706.P322796382435352986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035706 (n : ℕ) : ℤ :=
  A035706.P322796382435352986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035747.P14738988222165584094

`A008420(2*n)`
-/

namespace A035747.P14738988222165584094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 (2 * n)

end

end A035747.P14738988222165584094

noncomputable section

/-- A035747: Coordination sequence for C_10 lattice.

Offset 0, canonical program `A035747.P14738988222165584094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035747 (n : ℕ) : ℤ :=
  A035747.P14738988222165584094.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036296.P2772493522486156713

`ceil(A084623(n+2)/2)`
-/

namespace A036296.P2772493522486156713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084623 (n + 2) : ℚ) / 2⌉

end

end A036296.P2772493522486156713

noncomputable section

/-- A036296: Denominator of Sum_{i=1..n} i/2^i.

Offset 0, canonical program `A036296.P2772493522486156713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036296 (n : ℕ) : ℤ :=
  A036296.P2772493522486156713.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036579.P9011421768844623426

`2-A036578(n)`
-/

namespace A036579.P9011421768844623426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036578 n

end

end A036579.P9011421768844623426

noncomputable section

/-- A036579: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036579.P9011421768844623426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036579 (n : ℕ) : ℤ :=
  A036579.P9011421768844623426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038936.P8125062723505700244

`p?[n*A011585(n)*A257075(n)]`
-/

namespace A038936.P8125062723505700244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011585 n * A257075 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038936.P8125062723505700244

noncomputable section

/-- A038936: Primes p such that 57 is not a square mod p.

Offset 1, canonical program `A038936.P8125062723505700244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. -/
def A038936 (n : ℕ) : ℤ :=
  A038936.P8125062723505700244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. -/
def A038936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038995.P4021492533092847162

`∑{d}[n+1, #*A038994(#)]`
-/

namespace A038995.P4021492533092847162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038994 d

end

end A038995.P4021492533092847162

noncomputable section

/-- A038995: Number of sublattices of index n in generic 8-dimensional lattice.

Offset 1, canonical program `A038995.P4021492533092847162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038995 (n : ℕ) : ℤ :=
  A038995.P4021492533092847162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039275.P15863930487508184541

`filter[A039000(n+1), A316829(#)]`
-/

namespace A039275.P15863930487508184541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A039275.P15863930487508184541

noncomputable section

/-- A039275: Numbers whose base-3 representation has the same nonzero number of 0's and 1's.

Offset 1, canonical program `A039275.P15863930487508184541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A039275 (n : ℕ) : ℤ :=
  A039275.P15863930487508184541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A039275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042941.P11785510614438003329

`A052780(n+2)-A029887(n)`
-/

namespace A042941.P11785510614438003329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052780 (n + 2) - A029887 n

end

end A042941.P11785510614438003329

noncomputable section

/-- A042941: Convolution of Catalan numbers A000108 with A038845.

Offset 0, canonical program `A042941.P11785510614438003329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A042941 (n : ℕ) : ℤ :=
  A042941.P11785510614438003329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A042941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044977.P15031783185481520798

`∩[A023693(n+1), A039000(n+1)]`
-/

namespace A044977.P15031783185481520798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044977.P15031783185481520798

noncomputable section

/-- A044977: Numbers whose base-3 representation contains exactly two 0's and two 1's.

Offset 1, canonical program `A044977.P15031783185481520798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A044977 (n : ℕ) : ℤ :=
  (A044977.P15031783185481520798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A044977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044983.P8907591940877525692

`∩[A023694(n+1), A039000(n+1)]`
-/

namespace A044983.P8907591940877525692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044983.P8907591940877525692

noncomputable section

/-- A044983: Numbers whose base-3 representation contains exactly three 0's and three 1's.

Offset 1, canonical program `A044983.P8907591940877525692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2820 terms. -/
def A044983 (n : ℕ) : ℤ :=
  (A044983.P8907591940877525692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2820 terms. -/
def A044983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045894.P9674795554685018314

`2*(2*n+10)/(n+4)*a(n-1)+4/(n+4)*A045720(n)` with `a(0)=1`
-/

namespace A045894.P9674795554685018314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 * n + 10 : ℚ) / (n + 4 : ℚ)) * a (n - 1) + 4 / (n + 4 : ℚ) * (A045720 n : ℚ)

end

end A045894.P9674795554685018314

noncomputable section

/-- A045894: 4-fold convolution of A001700(n), n >= 0.

Offset 0, canonical program `A045894.P9674795554685018314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045894 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045894.P9674795554685018314.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049354.P9772535967235902552

`∩[A031452(n+1), A039000(n+1)]`
-/

namespace A049354.P9772535967235902552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P9772535967235902552

noncomputable section

/-- A049354: Digitally balanced numbers in base 3: equal numbers of 0's, 1's, 2's.

Offset 1, canonical program `A049354.P9772535967235902552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A049354 (n : ℕ) : ℤ :=
  (A049354.P9772535967235902552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A049354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049581.P658114607470364396

`lcm(A020985(n), A114327(n))`
-/

namespace A049581.P658114607470364396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A114327 n)

end

end A049581.P658114607470364396

noncomputable section

/-- A049581: Table T(n,k) = |n-k| read by antidiagonals (n >= 0, k >= 0).

Offset 0, canonical program `A049581.P658114607470364396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049581 (n : ℕ) : ℤ :=
  (A049581.P658114607470364396.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049777.P827072266685734770

`A127739(n+1)-A112367(n)`
-/

namespace A049777.P827072266685734770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A112367 n

end

end A049777.P827072266685734770

noncomputable section

/-- A049777: Triangular array read by rows: T(m,n) = n + n+1 + ... + m = (m+n)(m-n+1)/2.

Offset 1, canonical program `A049777.P827072266685734770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049777 (n : ℕ) : ℤ :=
  A049777.P827072266685734770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054431.P5825808231892718128

`A000007(A003989(n+1)-1)`
-/

namespace A054431.P5825808231892718128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A003989 (n + 1) - 1).toNat

end

end A054431.P5825808231892718128

noncomputable section

/-- A054431: Array read by antidiagonals: T(x, y) tells whether (x, y) are coprime (1) or not (0).

Offset 1, canonical program `A054431.P5825808231892718128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054431 (n : ℕ) : ℤ :=
  A054431.P5825808231892718128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055096.P12036012889937996553

`A001283(n+2)-A003991(n+1)`
-/

namespace A055096.P12036012889937996553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) - A003991 (n + 1)

end

end A055096.P12036012889937996553

noncomputable section

/-- A055096: Triangle read by rows, sums of 2 distinct nonzero squares: T(n,k) = k^2+n^2, (n>=2, 1 <= k <= n-1).

Offset 2, canonical program `A055096.P12036012889937996553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055096 (n : ℕ) : ℤ :=
  A055096.P12036012889937996553.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056203.P8688287262021951288

`A003991(n+1)+A001283(n+2)`
-/

namespace A056203.P8688287262021951288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A001283 (n + 2)

end

end A056203.P8688287262021951288

noncomputable section

/-- A056203: Triangle of numbers related to congruum problem: T(n,k)=n^2+2nk-k^2 with n>k>0, starting at T(2,1)=7.

Offset 1, canonical program `A056203.P8688287262021951288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056203 (n : ℕ) : ℤ :=
  A056203.P8688287262021951288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056974.P14269005406388105579

`A014082(A035327(n+1))`
-/

namespace A056974.P14269005406388105579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A035327 (n + 1)).toNat

end

end A056974.P14269005406388105579

noncomputable section

/-- A056974: Number of blocks of {0, 0, 0} in the binary expansion of n.

Offset 1, canonical program `A056974.P14269005406388105579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056974 (n : ℕ) : ℤ :=
  A056974.P14269005406388105579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057103.P18299417979130677149

`A001283(n+2)*A098352(n+1)`
-/

namespace A057103.P18299417979130677149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) * A098352 (n + 1)

end

end A057103.P18299417979130677149

noncomputable section

/-- A057103: Triangle of congrua: T(n,k) = 4*n*k(n^2-k^2) with n>k>0 and starting at T(2,1) = 24. A055096(n)^2 + a(n) is a square, as is A055096(n)^2 - a(n).

Offset 2, canonical program `A057103.P18299417979130677149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057103 (n : ℕ) : ℤ :=
  A057103.P18299417979130677149.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057555.P13935349940139878963

`A057554(n+1)+1`
-/

namespace A057555.P13935349940139878963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (n + 1) + 1

end

end A057555.P13935349940139878963

noncomputable section

/-- A057555: Lexicographic ordering of N x N, where N = {1,2,3...}.

Offset 1, canonical program `A057555.P13935349940139878963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057555 (n : ℕ) : ℤ :=
  A057555.P13935349940139878963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059136.P16739539969006037217

`6*A059126(n)-2`
-/

namespace A059136.P16739539969006037217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A059126 n - 2

end

end A059136.P16739539969006037217

noncomputable section

/-- A059136: A hierarchical sequence (W3{2,2}c - see A059126).

Offset 0, canonical program `A059136.P16739539969006037217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059136 (n : ℕ) : ℤ :=
  A059136.P16739539969006037217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059146.P9090514571194067663

`A011782(A059126(n))`
-/

namespace A059146.P9090514571194067663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059126 n).toNat

end

end A059146.P9090514571194067663

noncomputable section

/-- A059146: A hierarchical sequence (W'2{2} - see A059126).

Offset 0, canonical program `A059146.P9090514571194067663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059146 (n : ℕ) : ℤ :=
  A059146.P9090514571194067663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059149.P6273711001114290364

`A016116(A059126(n))`
-/

namespace A059149.P6273711001114290364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A059126 n).toNat

end

end A059149.P6273711001114290364

noncomputable section

/-- A059149: A hierarchical sequence (W'2{2}* - see A059126).

Offset 0, canonical program `A059149.P6273711001114290364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059149 (n : ℕ) : ℤ :=
  A059149.P6273711001114290364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060155.P3988702080630872113

`floor(A051129(n+1)/A004736(n+1))`
-/

namespace A060155.P3988702080630872113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A060155.P3988702080630872113

noncomputable section

/-- A060155: Table T(n,k) by antidiagonals of floor(n^k/k) [n,k >= 1].

Offset 1, canonical program `A060155.P3988702080630872113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A060155 (n : ℕ) : ℤ :=
  A060155.P3988702080630872113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A060155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060543.P442920313630877622

`A060539(n+1)/A002260(n+1)`
-/

namespace A060543.P442920313630877622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060539 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A060543.P442920313630877622

noncomputable section

/-- A060543: Triangle, read by antidiagonals, where T(n,k) = C(n+n*k+k, n*k+k).

Offset 0, canonical program `A060543.P442920313630877622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3016 terms. -/
def A060543 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060543.P442920313630877622.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3016 terms. -/
def A060543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063930.P17082922277373076399

`A063929(n+1)+A057105(n+1)`
-/

namespace A063930.P17082922277373076399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) + A057105 (n + 1)

end

end A063930.P17082922277373076399

noncomputable section

/-- A063930: Radius of B-excircle of Pythagorean triangle with a=(n+1)^2-m^2, b=2*(n+1)*m and c=(n+1)^2+m^2.

Offset 1, canonical program `A063930.P17082922277373076399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063930 (n : ℕ) : ℤ :=
  A063930.P17082922277373076399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067731.P9905737685120558648

`abs(A003056(n)-A060510(n))`
-/

namespace A067731.P9905737685120558648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 n - A060510 n|

end

end A067731.P9905737685120558648

noncomputable section

/-- A067731: Maximum number of distinct parts in a self-conjugate partition of n, or 0 if n=2.

Offset 0, canonical program `A067731.P9905737685120558648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067731 (n : ℕ) : ℤ :=
  A067731.P9905737685120558648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067894.P1623004336795340653

`∑[∑[A138342(n+1)]-A138342(n+1)]`
-/

namespace A067894.P1623004336795340653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P1623004336795340653

noncomputable section

/-- A067894: Write 0, 1, ..., n in binary and add as if they were decimal numbers.

Offset 0, canonical program `A067894.P1623004336795340653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067894 (n : ℕ) : ℤ :=
  A067894.P1623004336795340653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067984.P9514579657164973560

`A067983(n)+A067982(n)`
-/

namespace A067984.P9514579657164973560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067983 n + A067982 n

end

end A067984.P9514579657164973560

noncomputable section

/-- A067984: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+6), n>=0.

Offset 0, canonical program `A067984.P9514579657164973560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067984 (n : ℕ) : ℤ :=
  A067984.P9514579657164973560.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070771.P2600916641898740480

`A055941(eq[4, A000120(n)])`
-/

namespace A070771.P2600916641898740480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070771.P2600916641898740480

noncomputable section

/-- A070771: b+c+d+e where b>=c>=d>=e>=0 ordered by b then c then d then e.

Offset 0, canonical program `A070771.P2600916641898740480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A070771 (n : ℕ) : ℤ :=
  A070771.P2600916641898740480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A070771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070772.P12759164093813601690

`A055941(eq[5, A000120(n)])`
-/

namespace A070772.P12759164093813601690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070772.P12759164093813601690

noncomputable section

/-- A070772: b+c+d+e+f where b>=c>=d>=e>=f>=0 ordered by b then c then d then e then f.

Offset 0, canonical program `A070772.P12759164093813601690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. -/
def A070772 (n : ℕ) : ℤ :=
  A070772.P12759164093813601690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. -/
def A070772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071756.P14006536037210745974

`A071739(n)+Δ[A071738(n)]`
-/

namespace A071756.P14006536037210745974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071739 n + (f1 (n + 1) - f1 n)

end

end A071756.P14006536037210745974

noncomputable section

/-- A071756: Expansion of (1+x^4*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071756.P14006536037210745974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071756 (n : ℕ) : ℤ :=
  A071756.P14006536037210745974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072578.P13678441316220565133

`eq[A014499(A028310(n)), A080791(n)]`
-/

namespace A072578.P13678441316220565133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072578.P13678441316220565133

noncomputable section

/-- A072578: In binary representation: k has the same number of 0's as the k-th prime has 1's.

Offset 1, canonical program `A072578.P13678441316220565133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A072578 (n : ℕ) : ℤ :=
  (A072578.P13678441316220565133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A072578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073254.P2567531270234168708

`2*A057944(n)-A059036(n)`
-/

namespace A073254.P2567531270234168708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057944 n - A059036 n

end

end A073254.P2567531270234168708

noncomputable section

/-- A073254: Array read by antidiagonals, A(n,k) = n^2 + n*k + k^2.

Offset 0, canonical program `A073254.P2567531270234168708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073254 (n : ℕ) : ℤ :=
  A073254.P2567531270234168708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073675.P5905341681042066843

`A065883(2*(n+1))*A234957(n+1)`
-/

namespace A073675.P5905341681042066843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (2 * (n + 1)) * A234957 (n + 1)

end

end A073675.P5905341681042066843

noncomputable section

/-- A073675: Rearrangement of natural numbers such that a(n) is the smallest proper divisor of n not included earlier but if no such divisor exists then a(n) is the smallest proper multiple of n not included earlier, subject always to the condition that a(n) is not equal to n.

Offset 1, canonical program `A073675.P5905341681042066843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073675 (n : ℕ) : ℤ :=
  A073675.P5905341681042066843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074712.P7768327463520581845

`A003056(n)+2-A003989(n+1)`
-/

namespace A074712.P7768327463520581845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (2 - A003989 (n + 1))

end

end A074712.P7768327463520581845

noncomputable section

/-- A074712: Number of (interiors of) cells touched by a diagonal in a regular n X k grid (enumerated antidiagonally).

Offset 1, canonical program `A074712.P7768327463520581845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074712 (n : ℕ) : ℤ :=
  A074712.P7768327463520581845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075300.P7225117551987774033

`A054582(n)-1`
-/

namespace A075300.P7225117551987774033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n - 1

end

end A075300.P7225117551987774033

noncomputable section

/-- A075300: Array A read by antidiagonals upwards: A(n, k) = array A054582(n,k) - 1 = 2^n*(2*k+1) - 1 with n,k >= 0.

Offset 0, canonical program `A075300.P7225117551987774033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075300 (n : ℕ) : ℤ :=
  A075300.P7225117551987774033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075325.P8762803133825797995

`A056832(n+1)+A047215(n)`
-/

namespace A075325.P8762803133825797995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) + A047215 n

end

end A075325.P8762803133825797995

noncomputable section

/-- A075325: Pair the natural numbers such that the m-th pair is (r, s) where r, s and s-r are the smallest numbers which have not occurred earlier and also are not equal to the difference of any earlier pair: (1, 3), (4, 9), (6, 13), (8, 18), (11, 23), (14, 29), (16, 33), (19, 39), (21, 43), (24, 49), (26, 53), (28, 58), ... Sequence gives first term of each pair.

Offset 1, canonical program `A075325.P8762803133825797995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075325 (n : ℕ) : ℤ :=
  A075325.P8762803133825797995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077478.P13653691619814893632

`∏{e}[A003989(n+1), #+1]`
-/

namespace A077478.P13653691619814893632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A077478.P13653691619814893632

noncomputable section

/-- A077478: Rectangular array R read by antidiagonals: R(i,j) is the number of integers k that divide both i and j (i >= 1, j >= 1).

Offset 1, canonical program `A077478.P13653691619814893632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077478 (n : ℕ) : ℤ :=
  (A077478.P13653691619814893632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078116.P8980979661433350053

`p?[A070216(n+1)+A002260(n+1)²]`
-/

namespace A078116.P8980979661433350053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) + A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078116.P8980979661433350053

noncomputable section

/-- A078116: Primes of the form x^2 + 2y^2 where y<=x. Terms are listed in increasing order of x; for fixed x they're in increasing order of y.

Offset 1, canonical program `A078116.P8980979661433350053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A078116 (n : ℕ) : ℤ :=
  A078116.P8980979661433350053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A078116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078917.P17733498996506050839

`p?[A078916(n+1)]`
-/

namespace A078917.P17733498996506050839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P17733498996506050839

noncomputable section

/-- A078917: Primes of the form prime(k) + 2*k.

Offset 1, canonical program `A078917.P17733498996506050839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A078917 (n : ℕ) : ℤ :=
  A078917.P17733498996506050839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A078917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080511.P12034931715052828904

`A002260(n+1)+(n+1)%A051340(n)`
-/

namespace A080511.P12034931715052828904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + Int.tmod (n + 1 : ℤ) (A051340 n)

end

end A080511.P12034931715052828904

noncomputable section

/-- A080511: Triangle whose n-th row contains the least set (ordered lexicographically) of n distinct positive integers whose arithmetic mean is an integer.

Offset 1, canonical program `A080511.P12034931715052828904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080511 (n : ℕ) : ℤ :=
  A080511.P12034931715052828904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080604.P13047328098960414754

`round(sqrt(A070216(n+1)))`
-/

namespace A080604.P13047328098960414754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A070216 (n + 1) : ℝ))

end

end A080604.P13047328098960414754

noncomputable section

/-- A080604: Triangular array of hypotenuses of right triangles with integer legs: T(n,k) = round(sqrt(n^2 + k^2)), 1 <= k <= n.

Offset 1, canonical program `A080604.P13047328098960414754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080604 (n : ℕ) : ℤ :=
  A080604.P13047328098960414754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083555.P12251096965399093067

`A083554(n+1)/A058263(n+1)`
-/

namespace A083555.P12251096965399093067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) : ℚ) / (A058263 (n + 1) : ℚ)

end

end A083555.P12251096965399093067

noncomputable section

/-- A083555: Quotient of LCM of prime(n+1)-1 and prime(n)-1 and GCD of the same two numbers.

Offset 1, canonical program `A083555.P12251096965399093067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058263, A083554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083555.P12251096965399093067.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058263, A083554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086015.P8185681382737640833

`∑{digits}[n², A014082(#)]`
-/

namespace A086015.P8185681382737640833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014082 x).sum

end

end A086015.P8185681382737640833

noncomputable section

/-- A086015: Number of 7's in decimal expansion of n^2.

Offset 0, canonical program `A086015.P8185681382737640833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086015 (n : ℕ) : ℤ :=
  A086015.P8185681382737640833.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086461.P11452648535958795597

`floor(sqrt(A082039(n)))`
-/

namespace A086461.P11452648535958795597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082039 n)

end

end A086461.P11452648535958795597

noncomputable section

/-- A086461: Symmetric version of square array A086460, read by antidiagonals.

Offset 0, canonical program `A086461.P11452648535958795597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A086461 (n : ℕ) : ℤ :=
  A086461.P11452648535958795597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A086461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086784.P15348777293391552746

`A080791(n)-∑{e}[and(n, -n), #]`
-/

namespace A086784.P15348777293391552746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A086784.P15348777293391552746

noncomputable section

/-- A086784: Number of non-trailing zeros in binary representation of n.

Offset 0, canonical program `A086784.P15348777293391552746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086784 (n : ℕ) : ℤ :=
  A086784.P15348777293391552746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089633.P17564526881393068107

`floor(A030130(n+1)/2)`
-/

namespace A089633.P17564526881393068107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030130 (n + 1) : ℚ) / 2⌋

end

end A089633.P17564526881393068107

noncomputable section

/-- A089633: Numbers having no more than one 0 in their binary representation.

Offset 0, canonical program `A089633.P17564526881393068107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089633 (n : ℕ) : ℤ :=
  A089633.P17564526881393068107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089913.P18212373860991936420

`A003990(n+1)/A003989(n+1)`
-/

namespace A089913.P18212373860991936420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A089913.P18212373860991936420

noncomputable section

/-- A089913: Table T(n,k) = lcm(n,k)/gcd(n,k) = n*k/gcd(n,k)^2 read by antidiagonals (n >= 1, k >= 1).

Offset 1, canonical program `A089913.P18212373860991936420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A089913 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089913.P18212373860991936420.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A089913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090706.P11114919675259605533

`C(floor(log2(n+1)), A080791(n))`
-/

namespace A090706.P11114919675259605533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.log 2 (n + 1)) (A080791 n).toNat

end

end A090706.P11114919675259605533

noncomputable section

/-- A090706: Number of numbers having in binary representation the same number of zeros and ones as n has.

Offset 0, canonical program `A090706.P11114919675259605533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090706 (n : ℕ) : ℤ :=
  (A090706.P11114919675259605533.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093415.P9858529887982007793

`A026741(A002260(n+2)/A003989(n+2))`
-/

namespace A093415.P9858529887982007793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A002260 (n + 2) : ℚ) / (A003989 (n + 2) : ℚ))).toNat

end

end A093415.P9858529887982007793

noncomputable section

/-- A093415: Triangle read by rows: a(n, k) is the denominator of (n + (n-1) + ... + (n-k+1))/(1 + 2 + ... + k), 0 < k <= n.

Offset 1, canonical program `A093415.P9858529887982007793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A093415 (n : ℕ) : ℤ :=
  A093415.P9858529887982007793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A093415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093898.P15194400458835193332

`A089072(n+1)+A075363(n+1)`
-/

namespace A093898.P15194400458835193332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (n + 1) + A075363 (n + 1)

end

end A093898.P15194400458835193332

noncomputable section

/-- A093898: Triangle read by rows: T(n,r) = n^r + r^n (1 <= r <= n).

Offset 1, canonical program `A093898.P15194400458835193332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A093898 (n : ℕ) : ℤ :=
  A093898.P15194400458835193332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A093898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094615.P10252983298247596702

`A081954(n+1)-1`
-/

namespace A094615.P10252983298247596702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081954 (n + 1) - 1

end

end A094615.P10252983298247596702

noncomputable section

/-- A094615: Triangular array T of numbers generated by these rules: 1 is in T; and if x is in T, then 2x+1 and 3x+2 are in T.

Offset 0, canonical program `A094615.P10252983298247596702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094615 (n : ℕ) : ℤ :=
  A094615.P10252983298247596702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095850.P14537638724988629104

`A095836(A080036(n))`
-/

namespace A095850.P14537638724988629104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095836 (A080036 n).toNat

end

end A095850.P14537638724988629104

noncomputable section

/-- A095850: Triangle read by rows: T(n,k) = k^((n-k+1)^2), n>=1, 1<=k<=n.

Offset 1, canonical program `A095850.P14537638724988629104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A095850 (n : ℕ) : ℤ :=
  A095850.P14537638724988629104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A095850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096199.P9180462710428091109

`eq[1, A000120(n)/gcd(A037861(n), A080791(n))]`
-/

namespace A096199.P9180462710428091109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (Int.gcd (A037861 n) (A080791 n) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A096199.P9180462710428091109

noncomputable section

/-- A096199: Numbers such that in binary representation the length is a multiple of the number of ones.

Offset 1, canonical program `A096199.P9180462710428091109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1363 terms. -/
def A096199 (n : ℕ) : ℤ :=
  (A096199.P9180462710428091109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1363 terms. -/
def A096199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097480.P24898552055680441

`A097363(n+1)+1`
-/

namespace A097480.P24898552055680441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) + 1

end

end A097480.P24898552055680441

noncomputable section

/-- A097480: Positive integers n such that 2n-15 is prime.

Offset 1, canonical program `A097480.P24898552055680441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097480 (n : ℕ) : ℤ :=
  A097480.P24898552055680441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098832.P17924992155311472439

`A063929(n+1)/A000034(A002260(n+1))`
-/

namespace A098832.P17924992155311472439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063929 (n + 1) : ℚ) / (A000034 (A002260 (n + 1)).toNat : ℚ)

end

end A098832.P17924992155311472439

noncomputable section

/-- A098832: Square array read by antidiagonals: even-numbered rows of the table are of the form n*(n+m) and odd-numbered rows are of the form n*(n+m)/2.

Offset 1, canonical program `A098832.P17924992155311472439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A098832 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098832.P17924992155311472439.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A098832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099197.P5182563127150070825

`∑[A008419(n)]-A008419(n)`
-/

namespace A099197.P5182563127150070825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008419 n

end

end A099197.P5182563127150070825

noncomputable section

/-- A099197: a(n) = n^2*(2*n^8 + 120*n^6 + 1806*n^4 + 7180*n^2 + 5067)/14175.

Offset 0, canonical program `A099197.P5182563127150070825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099197 (n : ℕ) : ℤ :=
  A099197.P5182563127150070825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100100.P334722086453035183

`A092392(n)-A092392(n+1)%A092392(n)`
-/

namespace A100100.P334722086453035183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - Int.tmod (A092392 (n + 1)) (A092392 n)

end

end A100100.P334722086453035183

noncomputable section

/-- A100100: Triangle T(n,k) = binomial(2*n-k-1, n-k) read by rows.

Offset 0, canonical program `A100100.P334722086453035183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100100 (n : ℕ) : ℤ :=
  A100100.P334722086453035183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100260.P16219694720589245908

`xor(A020987(n)+1, and(1, n+1))`
-/

namespace A100260.P16219694720589245908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020987 n + 1) (Nat.land 1 (n + 1) : ℤ)

end

end A100260.P16219694720589245908

noncomputable section

/-- A100260: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 31, 3 -> 32.

Offset 1, canonical program `A100260.P16219694720589245908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100260 (n : ℕ) : ℤ :=
  A100260.P16219694720589245908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101492.P5125240408007596130

`2*A101447(n)-A004736(n+1)`
-/

namespace A101492.P5125240408007596130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101447 n - A004736 (n + 1)

end

end A101492.P5125240408007596130

noncomputable section

/-- A101492: Triangle read by rows: T(n,k) = (n-k+1)*(4*k+1).

Offset 0, canonical program `A101492.P5125240408007596130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101492 (n : ℕ) : ℤ :=
  A101492.P5125240408007596130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101869.P15553761438771268588

`2*A101868(n+1)`
-/

namespace A101869.P15553761438771268588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101868 (n + 1)

end

end A101869.P15553761438771268588

noncomputable section

/-- A101869: Row 2 of A101866.

Offset 1, canonical program `A101869.P15553761438771268588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101869 (n : ℕ) : ℤ :=
  A101869.P15553761438771268588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103218.P11916202005986384532

`A004736(n+1)*A101447(n)`
-/

namespace A103218.P11916202005986384532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A101447 n

end

end A103218.P11916202005986384532

noncomputable section

/-- A103218: Triangle read by rows: T(n, k) = (2*k+1)*(n+1-k)^2.

Offset 0, canonical program `A103218.P11916202005986384532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103218 (n : ℕ) : ℤ :=
  A103218.P11916202005986384532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103583.P14747149407642762519

`A000007(and(A002262(n), A057728(n+1)))`
-/

namespace A103583.P14747149407642762519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A002262 n) (A057728 (n + 1))).toNat

end

end A103583.P14747149407642762519

noncomputable section

/-- A103583: Same as A103582, but read antidiagonals in upward direction.

Offset 0, canonical program `A103583.P14747149407642762519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A103583 (n : ℕ) : ℤ :=
  A103583.P14747149407642762519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A103583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103842.P14597058008389114036

`1-A083651(A061579(n))`
-/

namespace A103842.P14597058008389114036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A083651 (A061579 n).toNat

end

end A103842.P14597058008389114036

noncomputable section

/-- A103842: Triangle read by rows: row n is binary expansion of 2^n-n, n >= 1.

Offset 1, canonical program `A103842.P14597058008389114036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103842 (n : ℕ) : ℤ :=
  A103842.P14597058008389114036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104598.P13205477168444068827

`A038806(n)+A018218(n+1)`
-/

namespace A104598.P13205477168444068827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038806 n + A018218 (n + 1)

end

end A104598.P13205477168444068827

noncomputable section

/-- A104598: Expansion of (1-z-sqrt(1-4z))/(1-4z)^2.

Offset 1, canonical program `A104598.P13205477168444068827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A104598 (n : ℕ) : ℤ :=
  A104598.P13205477168444068827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A104598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105584.P4057579374736803583

`n%2+2-A020985(n)`
-/

namespace A105584.P4057579374736803583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (2 - A020985 n)

end

end A105584.P4057579374736803583

noncomputable section

/-- A105584: Fixed point of the morphism 1 -> 34, 2 -> 32, 3 -> 12, 4 -> 14, starting from a(0) = 1.

Offset 0, canonical program `A105584.P4057579374736803583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105584 (n : ℕ) : ℤ :=
  A105584.P4057579374736803583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106448.P7960976003115073161

`(comp[∑[n]]-n)/A003989(n+1)`
-/

namespace A106448.P7960976003115073161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A106448.P7960976003115073161

noncomputable section

/-- A106448: Table of (x+y)/gcd(x,y) where (x,y) runs through the pairs (1,1), (1,2), (2,1), (1,3), (2,2), (3,1), ...

Offset 1, canonical program `A106448.P7960976003115073161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106448.P7960976003115073161.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107985.P3926446649831752432

`A003991(n+1)/2*∑[A073423(n)]`
-/

namespace A107985.P3926446649831752432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A107985.P3926446649831752432

noncomputable section

/-- A107985: Triangle read by rows: T(n,k) = (k+1)*(n+2)*(n-k+1)/2 for 0 <= k <= n.

Offset 0, canonical program `A107985.P3926446649831752432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107985.P3926446649831752432.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108038.P748003239838837553

`A108037(n)+2*A098356(n)`
-/

namespace A108038.P748003239838837553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n + 2 * A098356 n

end

end A108038.P748003239838837553

noncomputable section

/-- A108038: Triangle read by rows: g.f. = (x+y+x*y)/((1-x-x^2)*(1-y-y^2)).

Offset 0, canonical program `A108038.P748003239838837553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108038 (n : ℕ) : ℤ :=
  A108038.P748003239838837553.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109251.P8283490023005339823

`A072114(10^n)`
-/

namespace A109251.P8283490023005339823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 (10 ^ n)

end

end A109251.P8283490023005339823

noncomputable section

/-- A109251: Number of numbers up to 10^n which are products of three primes.

Offset 0, canonical program `A109251.P8283490023005339823`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109251 (n : ℕ) : ℤ :=
  A109251.P8283490023005339823.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110316.P13138358233452439156

`A000079(A296062(n))`
-/

namespace A110316.P13138358233452439156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A296062 n).toNat

end

end A110316.P13138358233452439156

noncomputable section

/-- A110316: a(n) is the number of different shapes of balanced binary trees with n nodes. The tree is balanced if the total number of nodes in the left and right branch of every node differ by at most one.

Offset 0, canonical program `A110316.P13138358233452439156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A110316 (n : ℕ) : ℤ :=
  A110316.P13138358233452439156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A110316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110509.P12057847304657187541

`A057728(n+1)*A109466(n)`
-/

namespace A110509.P12057847304657187541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A109466 n

end

end A110509.P12057847304657187541

noncomputable section

/-- A110509: Riordan array (1, x(1-2x)).

Offset 0, canonical program `A110509.P12057847304657187541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110509 (n : ℕ) : ℤ :=
  A110509.P12057847304657187541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110535.P7686816047522917521

`ceil(A089072(n+1)/A075363(n+1))`
-/

namespace A110535.P7686816047522917521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089072 (n + 1) : ℚ) / (A075363 (n + 1) : ℚ)⌉

end

end A110535.P7686816047522917521

noncomputable section

/-- A110535: Triangle formed from ceiling(k^n/n^k).

Offset 0, canonical program `A110535.P7686816047522917521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A110535 (n : ℕ) : ℤ :=
  A110535.P7686816047522917521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A110535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111125.P15460410316412066346

`2*A078812(n)-A085478(n)`
-/

namespace A111125.P15460410316412066346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078812 n - A085478 n

end

end A111125.P15460410316412066346

noncomputable section

/-- A111125: Triangle read by rows: T(k,s) = ((2*k+1)/(2*s+1))*binomial(k+s,2*s), 0 <= s <= k.

Offset 0, canonical program `A111125.P15460410316412066346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111125 (n : ℕ) : ℤ :=
  A111125.P15460410316412066346.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111805.P16702196503719962859

`A085478(∑[char[∑[n+1]]]²+2*n)`
-/

namespace A111805.P16702196503719962859
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A111805.P16702196503719962859

noncomputable section

/-- A111805: Number triangle T(n,k)=binomial(2(n+k),4k).

Offset 0, canonical program `A111805.P16702196503719962859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A111805 (n : ℕ) : ℤ :=
  A111805.P16702196503719962859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A111805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111946.P3190821044571146182

`gcd(A098356(n), A104763(n+1))`
-/

namespace A111946.P3190821044571146182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098356 n) (A104763 (n + 1))

end

end A111946.P3190821044571146182

noncomputable section

/-- A111946: Triangle read by rows: T(n,k) = gcd(Fibonacci(n), Fibonacci(k)), 1 <= k <= n.

Offset 1, canonical program `A111946.P3190821044571146182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111946 (n : ℕ) : ℤ :=
  (A111946.P3190821044571146182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111956.P16283236696051058647

`gcd(A098356(n), A104765(n+1))`
-/

namespace A111956.P16283236696051058647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098356 n) (A104765 (n + 1))

end

end A111956.P16283236696051058647

noncomputable section

/-- A111956: Triangle read by rows: T(n,k) = gcd(Lucas(n), Lucas(k)), 1 <= k <= n.

Offset 1, canonical program `A111956.P16283236696051058647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111956 (n : ℕ) : ℤ :=
  (A111956.P16283236696051058647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112295.P3156740729499457564

`A085478(n)*A167374(n)`
-/

namespace A112295.P3156740729499457564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A167374 n

end

end A112295.P3156740729499457564

noncomputable section

/-- A112295: Inverse of a double factorial related triangle.

Offset 0, canonical program `A112295.P3156740729499457564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A112295 (n : ℕ) : ℤ :=
  A112295.P3156740729499457564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A112295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112543.P3717108341135688098

`(C(comp[∑[n]]-n, 2)-n)/A003989(n+1)`
-/

namespace A112543.P3717108341135688098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A112543.P3717108341135688098

noncomputable section

/-- A112543: Numerators of fractions n/k in array by antidiagonals.

Offset 1, canonical program `A112543.P3717108341135688098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A112543 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112543.P3717108341135688098.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A112543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112681.P2005893278622678890

`A000040(eq[1, A106671(n+2)]+3)`
-/

namespace A112681.P2005893278622678890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106671 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A112681.P2005893278622678890

noncomputable section

/-- A112681: Primes such that the sum of the predecessor and successor primes is divisible by 3.

Offset 1, canonical program `A112681.P2005893278622678890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112681 (n : ℕ) : ℤ :=
  A112681.P2005893278622678890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114192.P15906809728589382553

`A000079(A025581(n))*A085478(n)`
-/

namespace A114192.P15906809728589382553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A085478 n

end

end A114192.P15906809728589382553

noncomputable section

/-- A114192: Riordan array (1/(1-2x),x/(1-2x)^2).

Offset 0, canonical program `A114192.P15906809728589382553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114192 (n : ℕ) : ℤ :=
  A114192.P15906809728589382553.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114607.P8461475155530099092

`ceil(A114219(n)/12)`
-/

namespace A114607.P8461475155530099092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114219 n : ℚ) / 12⌉

end

end A114607.P8461475155530099092

noncomputable section

/-- A114607: Start with 1 0 1 0 then add a one every time (e.g. 1 1 0 1 1 1 0 1 1 1 1 0 ...).

Offset 1, canonical program `A114607.P8461475155530099092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114607 (n : ℕ) : ℤ :=
  A114607.P8461475155530099092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115138.P4364659728970173853

`A115137(n)+A115137(n)-A062992(n)`
-/

namespace A115138.P4364659728970173853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115137 n + (A115137 n - A062992 n)

end

end A115138.P4364659728970173853

noncomputable section

/-- A115138: A sequence related to Catalan numbers A000108.

Offset 0, canonical program `A115138.P4364659728970173853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115138 (n : ℕ) : ℤ :=
  A115138.P4364659728970173853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117362.P15678424001013400889

`A097807(n)*A113214(n)`
-/

namespace A117362.P15678424001013400889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A113214 n

end

end A117362.P15678424001013400889

noncomputable section

/-- A117362: Riordan array (1-2x,x(1-x)).

Offset 0, canonical program `A117362.P15678424001013400889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117362 (n : ℕ) : ℤ :=
  A117362.P15678424001013400889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117898.P14652855978870179501

`(A070216(n+1)%3)%2+1`
-/

namespace A117898.P14652855978870179501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A070216 (n + 1)) 3) 2 + 1

end

end A117898.P14652855978870179501

noncomputable section

/-- A117898: Number triangle 2^abs(L(C(n,2)/3) - L(C(k,2)/3))*[k<=n] where L(j/p) is the Legendre symbol of j and p.

Offset 0, canonical program `A117898.P14652855978870179501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117898 (n : ℕ) : ℤ :=
  A117898.P14652855978870179501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118416.P17695903883508484901

`A054582(n)*A059268(n)`
-/

namespace A118416.P17695903883508484901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n * A059268 n

end

end A118416.P17695903883508484901

noncomputable section

/-- A118416: Triangle read by rows: T(n,k) = (2*k-1)*2^(n-1), 0 < k <= n.

Offset 1, canonical program `A118416.P17695903883508484901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118416 (n : ℕ) : ℤ :=
  A118416.P17695903883508484901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118735.P16887616288475277364

`∩[A118731(n+1), A118732(n+1)]`
-/

namespace A118735.P16887616288475277364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118735.P16887616288475277364

noncomputable section

/-- A118735: Numbers k such that 2^k and 3^k have odd digit sum.

Offset 1, canonical program `A118735.P16887616288475277364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5061 terms. -/
def A118735 (n : ℕ) : ℤ :=
  (A118735.P16887616288475277364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5061 terms. -/
def A118735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120070.P8418683465396432844

`A063929(n+1)+A003991(n+1)`
-/

namespace A120070.P8418683465396432844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) + A003991 (n + 1)

end

end A120070.P8418683465396432844

noncomputable section

/-- A120070: Triangle of numbers used to compute the frequencies of the spectral lines of the hydrogen atom.

Offset 2, canonical program `A120070.P8418683465396432844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120070 (n : ℕ) : ℤ :=
  A120070.P8418683465396432844.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121487.P2034550491402035869

`A001519(A003056(n+1)-A114219(n))`
-/

namespace A121487.P2034550491402035869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A003056 (n + 1) - A114219 n).toNat

end

end A121487.P2034550491402035869

noncomputable section

/-- A121487: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n and having abscissa of first return equal to 2k (1<=k<=n). A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

Offset 1, canonical program `A121487.P2034550491402035869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A121487 (n : ℕ) : ℤ :=
  A121487.P2034550491402035869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A121487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122750.P11574992271671755602

`A106465(n)-A010673(A025581(n))`
-/

namespace A122750.P11574992271671755602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106465 n - A010673 (A025581 n).toNat

end

end A122750.P11574992271671755602

noncomputable section

/-- A122750: Triangle T(n,k) = (-1)^(k+1) if n is odd, = (-1)^k if n and k are even, = 2*(-1)^k if n is even and k is odd, 0<=k<=n.

Offset 0, canonical program `A122750.P11574992271671755602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122750 (n : ℕ) : ℤ :=
  A122750.P11574992271671755602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123490.P6598676461431435207

`ceil(ratio[A051129(n+1)]*A009998(n))`
-/

namespace A123490.P6598676461431435207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A009998 n : ℚ)⌉

end

end A123490.P6598676461431435207

noncomputable section

/-- A123490: Triangle whose k-th column satisfies a(n) = (k+3)*a(n-1)-(k+2)*a(n-2).

Offset 0, canonical program `A123490.P6598676461431435207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4578 terms. -/
def A123490 (n : ℕ) : ℤ :=
  A123490.P6598676461431435207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4578 terms. -/
def A123490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123519.P9169066619420576

`A059268(n)*A085478(n)`
-/

namespace A123519.P9169066619420576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A085478 n

end

end A123519.P9169066619420576

noncomputable section

/-- A123519: Triangle read by rows: T(n,k) number of tilings of a 2n X 3 grid by dominoes, 2k of which are in a vertical position (0<=k<=n).

Offset 0, canonical program `A123519.P9169066619420576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123519 (n : ℕ) : ℤ :=
  A123519.P9169066619420576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124895.P13230546891940567909

`∑{d}[A070216(n+1), A007427(#)]`
-/

namespace A124895.P13230546891940567909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A124895.P13230546891940567909

noncomputable section

/-- A124895: Triangle read by rows, 1 <= k <= n: T(n,k) = mu(n^2 + k^2) with mu = A008683.

Offset 1, canonical program `A124895.P13230546891940567909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A124895 (n : ℕ) : ℤ :=
  A124895.P13230546891940567909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A124895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126209.P10127809837303638255

`∑{digits}[A000420(n), A014082(#)]`
-/

namespace A126209.P10127809837303638255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014082 x).sum

end

end A126209.P10127809837303638255

noncomputable section

/-- A126209: Number of 7's in decimal expansion of 7^n.

Offset 0, canonical program `A126209.P10127809837303638255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A126209 (n : ℕ) : ℤ :=
  A126209.P10127809837303638255.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A126209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127701.P9981327961202796931

`A051340(n)*A097806(n)`
-/

namespace A127701.P9981327961202796931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A097806 n

end

end A127701.P9981327961202796931

noncomputable section

/-- A127701: Infinite lower triangular matrix with (1, 2, 3, ...) in the main diagonal, (1, 1, 1, ...) in the subdiagonal and the rest zeros.

Offset 1, canonical program `A127701.P9981327961202796931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127701 (n : ℕ) : ℤ :=
  A127701.P9981327961202796931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127777.P8172009707106496070

`A002260(n+1)*A127739(n+1)`
-/

namespace A127777.P8172009707106496070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127739 (n + 1)

end

end A127777.P8172009707106496070

noncomputable section

/-- A127777: A127773 * A002260 as infinite lower triangular matrices.

Offset 1, canonical program `A127777.P8172009707106496070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127777 (n : ℕ) : ℤ :=
  A127777.P8172009707106496070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127779.P6962824600330842233

`A094053(n+1)+A086271(n+1)`
-/

namespace A127779.P6962824600330842233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + A086271 (n + 1)

end

end A127779.P6962824600330842233

noncomputable section

/-- A127779: Triangle read by rows: A004736 * A127773.

Offset 1, canonical program `A127779.P6962824600330842233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127779 (n : ℕ) : ℤ :=
  A127779.P6962824600330842233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128077.P8263080623395383439

`A002260(n+1)*A051340(n)`
-/

namespace A128077.P8263080623395383439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051340 n

end

end A128077.P8263080623395383439

noncomputable section

/-- A128077: A128064 * A002260.

Offset 1, canonical program `A128077.P8263080623395383439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128077 (n : ℕ) : ℤ :=
  A128077.P8263080623395383439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128132.P7267817112159039402

`A051340(n)*A167374(n)`
-/

namespace A128132.P7267817112159039402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A167374 n

end

end A128132.P7267817112159039402

noncomputable section

/-- A128132: A natural number transform, companion to A127701.

Offset 1, canonical program `A128132.P7267817112159039402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128132 (n : ℕ) : ℤ :=
  A128132.P7267817112159039402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128138.P1103581948211264897

`val(A099627(n)+1, 2)`
-/

namespace A128138.P1103581948211264897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099627 n + 1).toNat 2

end

end A128138.P1103581948211264897

noncomputable section

/-- A128138: A000012 * A128132.

Offset 1, canonical program `A128138.P1103581948211264897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128138 (n : ℕ) : ℤ :=
  (A128138.P1103581948211264897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128141.P68200204376407770

`A101321(n)+A059036(n)`
-/

namespace A128141.P68200204376407770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 n + A059036 n

end

end A128141.P68200204376407770

noncomputable section

/-- A128141: A122432 (unsigned) * A128132.

Offset 1, canonical program `A128141.P68200204376407770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128141 (n : ℕ) : ℤ :=
  A128141.P68200204376407770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128151.P9049795809156300182

`A051340(n)+2*A048151(n+1)`
-/

namespace A128151.P9049795809156300182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + 2 * A048151 (n + 1)

end

end A128151.P9049795809156300182

noncomputable section

/-- A128151: A002260 * A097806.

Offset 1, canonical program `A128151.P9049795809156300182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128151 (n : ℕ) : ℤ :=
  A128151.P9049795809156300182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128226.P3712784761551478239

`A127738(n+1)+A094053(n+1)`
-/

namespace A128226.P3712784761551478239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) + A094053 (n + 1)

end

end A128226.P3712784761551478239

noncomputable section

/-- A128226: Triangle, A004736 * A127899 (unsigned).

Offset 1, canonical program `A128226.P3712784761551478239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128226 (n : ℕ) : ℤ :=
  A128226.P3712784761551478239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128937.P8237969011932924957

`A117178(n)%2`
-/

namespace A128937.P8237969011932924957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117178 n) 2

end

end A128937.P8237969011932924957

noncomputable section

/-- A128937: Triangle formed by reading A039598 mod 2.

Offset 0, canonical program `A128937.P8237969011932924957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128937 (n : ℕ) : ℤ :=
  A128937.P8237969011932924957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129186.P10302044594592725749

`A073423(n+2)^n`
-/

namespace A129186.P10302044594592725749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (n + 2) ^ n

end

end A129186.P10302044594592725749

noncomputable section

/-- A129186: Right shift operator generating 1's in shifted spaces.

Offset 0, canonical program `A129186.P10302044594592725749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129186 (n : ℕ) : ℤ :=
  A129186.P10302044594592725749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129188.P14465224556481538251

`A078916(n+1)+A073169(n+1)`
-/

namespace A129188.P14465224556481538251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) + A073169 (n + 1)

end

end A129188.P14465224556481538251

noncomputable section

/-- A129188: n + n-th prime + n-th composite.

Offset 1, canonical program `A129188.P14465224556481538251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129188 (n : ℕ) : ℤ :=
  A129188.P14465224556481538251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129312.P3995732629114073617

`ceil(A098353(n+1)/2)`
-/

namespace A129312.P3995732629114073617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098353 (n + 1) : ℚ) / 2⌉

end

end A129312.P3995732629114073617

noncomputable section

/-- A129312: A minimal 2 X 2 subdeterminant array.

Offset 1, canonical program `A129312.P3995732629114073617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129312 (n : ℕ) : ℤ :=
  A129312.P3995732629114073617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129726.P11444487845916311678

`A078916(n+1)-2`
-/

namespace A129726.P11444487845916311678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) - 2

end

end A129726.P11444487845916311678

noncomputable section

/-- A129726: a(n) = a(n-1) + prime(n) - prime(n-1) + 2; a(1) = 2.

Offset 1, canonical program `A129726.P11444487845916311678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129726 (n : ℕ) : ℤ :=
  A129726.P11444487845916311678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129818.P1881241174790014130

`A085478(n)*A097807(n)`
-/

namespace A129818.P1881241174790014130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A097807 n

end

end A129818.P1881241174790014130

noncomputable section

/-- A129818: Riordan array (1/(1+x), x/(1+x)^2), inverse array is A039599.

Offset 0, canonical program `A129818.P1881241174790014130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129818 (n : ℕ) : ℤ :=
  A129818.P1881241174790014130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130123.P13186316548061333637

`ceil(A131436(n+1)/2)`
-/

namespace A130123.P13186316548061333637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131436 (n + 1) : ℚ) / 2⌉

end

end A130123.P13186316548061333637

noncomputable section

/-- A130123: Infinite lower triangular matrix with 2^k in the right diagonal and the rest zeros. Triangle, T(n,k), n zeros followed by the term 2^k. Triangle by columns, (2^k, 0, 0, 0, ...).

Offset 0, canonical program `A130123.P13186316548061333637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130123 (n : ℕ) : ℤ :=
  A130123.P13186316548061333637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130269.P4089145140288437489

`A127739(n+1)+A112367(n)`
-/

namespace A130269.P4089145140288437489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + A112367 n

end

end A130269.P4089145140288437489

noncomputable section

/-- A130269: A002260 * A051340.

Offset 1, canonical program `A130269.P4089145140288437489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130269 (n : ℕ) : ℤ :=
  A130269.P4089145140288437489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130271.P11867080403092129136

`A002024(n+1)+A003056(n)*A051340(n)`
-/

namespace A130271.P11867080403092129136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A003056 n * A051340 n

end

end A130271.P11867080403092129136

noncomputable section

/-- A130271: Triangle read by rows: A051340^2.

Offset 1, canonical program `A130271.P11867080403092129136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130271 (n : ℕ) : ℤ :=
  A130271.P11867080403092129136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130296.P7958133824011622237

`val(A099627(n), 2)+1`
-/

namespace A130296.P7958133824011622237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099627 n).toNat 2 + 1

end

end A130296.P7958133824011622237

noncomputable section

/-- A130296: Triangle read by rows: T[i,1]=i, T[i,j]=1 for 1 < j <= i = 1,2,3,...

Offset 1, canonical program `A130296.P7958133824011622237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130296 (n : ℕ) : ℤ :=
  (A130296.P7958133824011622237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131226.P16820433907033852690

`A032766(A131225(n+1))`
-/

namespace A131226.P16820433907033852690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A131225 (n + 1)).toNat

end

end A131226.P16820433907033852690

noncomputable section

/-- A131226: Triangle read by rows: T(n,k) = 3*k - 1 - (-1)^(n+k), for 1 <= k <= n, n >= 1.

Offset 1, canonical program `A131226.P16820433907033852690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131226 (n : ℕ) : ℤ :=
  A131226.P16820433907033852690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131227.P17976350345380412525

`2*A051340(n)-A128174(n+1)`
-/

namespace A131227.P17976350345380412525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051340 n - A128174 (n + 1)

end

end A131227.P17976350345380412525

noncomputable section

/-- A131227: 2*A051340 - A128174.

Offset 0, canonical program `A131227.P17976350345380412525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131227 (n : ℕ) : ℤ :=
  A131227.P17976350345380412525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131307.P11707046731788450443

`2*A128221(n+1)+A025581(n)-1`
-/

namespace A131307.P11707046731788450443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128221 (n + 1) + (A025581 n - 1)

end

end A131307.P11707046731788450443

noncomputable section

/-- A131307: (A127701 * A000012 + A000012(signed) * A127701) - A000012.

Offset 1, canonical program `A131307.P11707046731788450443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131307 (n : ℕ) : ℤ :=
  A131307.P11707046731788450443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131424.P399028112994003953

`A065342(n+1)-3`
-/

namespace A131424.P399028112994003953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (n + 1) - 3

end

end A131424.P399028112994003953

noncomputable section

/-- A131424: Triangle read by rows: T(n,k) = prime(n) + prime(k) - 3, 1 <= k <= n.

Offset 1, canonical program `A131424.P399028112994003953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A131424 (n : ℕ) : ℤ :=
  A131424.P399028112994003953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A131424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131437.P3175007424412188088

`2*A099627(n)-1`
-/

namespace A131437.P3175007424412188088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099627 n - 1

end

end A131437.P3175007424412188088

noncomputable section

/-- A131437: (A000012 * A131436) + (A131436 * A000012) - A000012.

Offset 1, canonical program `A131437.P3175007424412188088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131437 (n : ℕ) : ℤ :=
  A131437.P3175007424412188088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131784.P3551853482120838731

`A063929(n+1)-1`
-/

namespace A131784.P3551853482120838731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) - 1

end

end A131784.P3551853482120838731

noncomputable section

/-- A131784: Triangle read by rows: (A004736 + A002260 - I) * A000012.

Offset 1, canonical program `A131784.P3551853482120838731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131784 (n : ℕ) : ℤ :=
  A131784.P3551853482120838731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131817.P1452475157626756727

`A051340(n)+A130321(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131817.P1452475157626756727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + A130321 n - 1

end

end A131817.P1452475157626756727

noncomputable section

/-- A131817: a(n) = A051340(n) + A130321(n) - A000012(n).

Offset 0, canonical program `A131817.P1452475157626756727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051340, A130321, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A131817 (n : ℕ) : ℤ :=
  A131817.P1452475157626756727.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051340, A130321, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A131817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131821.P13312494062197045656

`val(A131816(n), 2)+1`
-/

namespace A131821.P13312494062197045656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131816 n).toNat 2 + 1

end

end A131821.P13312494062197045656

noncomputable section

/-- A131821: Triangle read by rows: row n consists of n followed by (n-2) ones then n.

Offset 1, canonical program `A131821.P13312494062197045656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131821 (n : ℕ) : ℤ :=
  (A131821.P13312494062197045656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131948.P15186987073774789875

`A131923(n)+A003056(n)`
-/

namespace A131948.P15186987073774789875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 n + A003056 n

end

end A131948.P15186987073774789875

noncomputable section

/-- A131948: Triangle T(n,k) = 2*A002024(n+1,k+1) + A007318(n,k) - 2, read by rows.

Offset 0, canonical program `A131948.P15186987073774789875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131948 (n : ℕ) : ℤ :=
  A131948.P15186987073774789875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131953.P6052148491130598522

`A131816(n)+1-A097807(n)`
-/

namespace A131953.P6052148491130598522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (1 - A097807 n)

end

end A131953.P6052148491130598522

noncomputable section

/-- A131953: A130321 + A059268 - A000012(signed).

Offset 0, canonical program `A131953.P6052148491130598522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131953 (n : ℕ) : ℤ :=
  A131953.P6052148491130598522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132108.P8242496028478331451

`A131923(n)-A002262(n)`
-/

namespace A132108.P8242496028478331451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 n - A002262 n

end

end A132108.P8242496028478331451

noncomputable section

/-- A132108: Triangle T(n,k) = binomial(n,k)+n-k read by rows.

Offset 0, canonical program `A132108.P8242496028478331451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132108 (n : ℕ) : ℤ :=
  A132108.P8242496028478331451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132128.P11388277187391197128

`A051340(n)+n`
-/

namespace A132128.P11388277187391197128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + (n : ℤ)

end

end A132128.P11388277187391197128

noncomputable section

/-- A132128: A051340 + A000027 - A000012.

Offset 1, canonical program `A132128.P11388277187391197128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132128 (n : ℕ) : ℤ :=
  A132128.P11388277187391197128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132728.P7946738564303071214

`6*A060510(n)+1`
-/

namespace A132728.P7946738564303071214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060510 n + 1

end

end A132728.P7946738564303071214

noncomputable section

/-- A132728: Triangle T(n, k) = 4 - 3*(-1)^k, read by rows.

Offset 0, canonical program `A132728.P7946738564303071214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132728 (n : ℕ) : ℤ :=
  A132728.P7946738564303071214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132778.P15237329709094283098

`A111650(n+1)-A051340(n)`
-/

namespace A132778.P15237329709094283098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A051340 n

end

end A132778.P15237329709094283098

noncomputable section

/-- A132778: Triangle read by rows, n-1 terms of (2n - 1) followed by n.

Offset 1, canonical program `A132778.P15237329709094283098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132778 (n : ℕ) : ℤ :=
  A132778.P15237329709094283098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133610.P10004266105813786459

`∑[A053616(n)]`
-/

namespace A133610.P10004266105813786459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P10004266105813786459

noncomputable section

/-- A133610: Partial sums of pyramidal sequence A053616.

Offset 0, canonical program `A133610.P10004266105813786459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133610 (n : ℕ) : ℤ :=
  A133610.P10004266105813786459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134199.P15346679385903110320

`A002260(n+1)+2*A132440(n)`
-/

namespace A134199.P15346679385903110320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A132440 n

end

end A134199.P15346679385903110320

noncomputable section

/-- A134199: A002260 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

Offset 0, canonical program `A134199.P15346679385903110320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134199 (n : ℕ) : ℤ :=
  A134199.P15346679385903110320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134352.P10374233049189694274

`A131577(A128621(n+1))`
-/

namespace A134352.P10374233049189694274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A128621 (n + 1)).toNat

end

end A134352.P10374233049189694274

noncomputable section

/-- A134352: A130123 * A128174.

Offset 0, canonical program `A134352.P10374233049189694274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134352 (n : ℕ) : ℤ :=
  A134352.P10374233049189694274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134402.P6512888230481502878

`A132440(abs(1-n))`
-/

namespace A134402.P6512888230481502878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 |1 - (n : ℤ)|.toNat

end

end A134402.P6512888230481502878

noncomputable section

/-- A134402: Triangle read by rows, for n > 0, n zeros followed by n.

Offset 0, canonical program `A134402.P6512888230481502878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134402 (n : ℕ) : ℤ :=
  A134402.P6512888230481502878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134866.P4777858240526918943

`∑{d}[A003989(n+1), #]`
-/

namespace A134866.P4777858240526918943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A134866.P4777858240526918943

noncomputable section

/-- A134866: Table read by antidiagonals: T(n,k) = sigma(gcd(n,k)).

Offset 1, canonical program `A134866.P4777858240526918943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134866 (n : ℕ) : ℤ :=
  (A134866.P4777858240526918943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135764.P14448543870011279856

`A075302(n)+1`
-/

namespace A135764.P14448543870011279856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 n + 1

end

end A135764.P14448543870011279856

noncomputable section

/-- A135764: Distribute the natural numbers in columns based on the occurrence of "2" in each prime factorization; square array A(row,col) = 2^(row-1) * ((2*col)-1), read by descending antidiagonals.

Offset 1, canonical program `A135764.P14448543870011279856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135764 (n : ℕ) : ℤ :=
  A135764.P14448543870011279856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135853.P16818106393424875175

`A134868(n+1)*A135278(n)`
-/

namespace A135853.P16818106393424875175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) * A135278 n

end

end A135853.P16818106393424875175

noncomputable section

/-- A135853: A103516 * A007318 as an infinite lower triangular matrix.

Offset 0, canonical program `A135853.P16818106393424875175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135853 (n : ℕ) : ℤ :=
  A135853.P16818106393424875175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138139.P8390411299693681906

`A005145(A106255(n+1))`
-/

namespace A138139.P8390411299693681906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A106255 (n + 1)).toNat

end

end A138139.P8390411299693681906

noncomputable section

/-- A138139: Triangle read by rows: row n contains n terms and each column lists the prime numbers A000040.

Offset 1, canonical program `A138139.P8390411299693681906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138139 (n : ℕ) : ℤ :=
  A138139.P8390411299693681906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138451.P15770755837948932279

`A122220(n+1)-A138450(n+1)`
-/

namespace A138451.P15770755837948932279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122220 (n + 1) - A138450 (n + 1)

end

end A138451.P15770755837948932279

noncomputable section

/-- A138451: a(n) = (prime(n)^6-prime(n)^2)/60.

Offset 1, canonical program `A138451.P15770755837948932279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138451 (n : ℕ) : ℤ :=
  A138451.P15770755837948932279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138458.P4441180293552606245

`A138456(n+1)-A138457(n+1)`
-/

namespace A138458.P4441180293552606245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138456 (n + 1) - A138457 (n + 1)

end

end A138458.P4441180293552606245

noncomputable section

/-- A138458: a(n) = ((n-th prime)^6-(n-th prime)^4)/24.

Offset 1, canonical program `A138458.P4441180293552606245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138458 (n : ℕ) : ℤ :=
  A138458.P4441180293552606245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139040.P11713275014664133717

`A000930(A077605(n+1)+A053616(n))`
-/

namespace A139040.P11713275014664133717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A077605 (n + 1) + A053616 n).toNat

end

end A139040.P11713275014664133717

noncomputable section

/-- A139040: Triangle read by rows: each row is an initial segment of the terms of A000930 followed by its reflection.

Offset 1, canonical program `A139040.P11713275014664133717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A139040 (n : ℕ) : ℤ :=
  A139040.P11713275014664133717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A139040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139601.P11016005463994312656

`A086271(n+1)-A128139(n)`
-/

namespace A139601.P11016005463994312656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) - A128139 n

end

end A139601.P11016005463994312656

noncomputable section

/-- A139601: Square array of polygonal numbers read by ascending antidiagonals: T(n, k) = (n + 1)*(k - 1)*k/2 + k.

Offset 0, canonical program `A139601.P11016005463994312656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139601 (n : ℕ) : ℤ :=
  A139601.P11016005463994312656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140785.P9396782372112234493

`A000040(n+2)-A000040(n+2)%A076368(n+2)`
-/

namespace A140785.P9396782372112234493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - Int.tmod (A000040 (n + 2)) (A076368 (n + 2))

end

end A140785.P9396782372112234493

noncomputable section

/-- A140785: a(n) = the single integer k, where p(n) <= k <= p(n+1), that is divisible by (p(n+1)-p(n)+1), where p(n) is the n-th prime.

Offset 1, canonical program `A140785.P9396782372112234493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140785 (n : ℕ) : ℤ :=
  A140785.P9396782372112234493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140880.P7790259496823977085

`A063929(n+1)*A074909(n)`
-/

namespace A140880.P7790259496823977085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) * A074909 n

end

end A140880.P7790259496823977085

noncomputable section

/-- A140880: Triangle read by rows, T(n,k) = Gamma(n+3)/(Gamma(k+1)*Gamma(n-k+1)) for n>=0 and 0<=k<=n.

Offset 0, canonical program `A140880.P7790259496823977085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140880 (n : ℕ) : ℤ :=
  A140880.P7790259496823977085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140978.P8755029839294562500

`∑[A073423(n)]^2`
-/

namespace A140978.P8755029839294562500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A140978.P8755029839294562500

noncomputable section

/-- A140978: Repeat (n+1)^2 n times.

Offset 1, canonical program `A140978.P8755029839294562500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140978 (n : ℕ) : ℤ :=
  A140978.P8755029839294562500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141388.P760566885152609055

`A098360(n+1)-A137688(n)`
-/

namespace A141388.P760566885152609055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (n + 1) - A137688 n

end

end A141388.P760566885152609055

noncomputable section

/-- A141388: Triangle T(n, k) = ( k*(n-k+1) )^3 - 2^(n-1), read by rows.

Offset 1, canonical program `A141388.P760566885152609055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141388 (n : ℕ) : ℤ :=
  A141388.P760566885152609055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141429.P4768663951979483283

`A127738(n+1)+1`
-/

namespace A141429.P4768663951979483283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) + 1

end

end A141429.P4768663951979483283

noncomputable section

/-- A141429: Triangle T(n, k) = (k+1)*(n-k+1), read by rows.

Offset 1, canonical program `A141429.P4768663951979483283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141429 (n : ℕ) : ℤ :=
  A141429.P4768663951979483283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141433.P6649970107262301922

`A141431(n+1)-A002262(n)`
-/

namespace A141433.P6649970107262301922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141431 (n + 1) - A002262 n

end

end A141433.P6649970107262301922

noncomputable section

/-- A141433: Triangle T(n, k) = (k-1)*(3*n-k), read by rows.

Offset 1, canonical program `A141433.P6649970107262301922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141433 (n : ℕ) : ℤ :=
  A141433.P6649970107262301922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141543.P279450556099849721

`A130266(A061579(n))-∑[A010054(n)]`
-/

namespace A141543.P279450556099849721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141543.P279450556099849721

noncomputable section

/-- A141543: Triangle T(n,k) read by rows: T(n,2k)=k, T(n,2k+1) = k-n, for 0<=k<=n.

Offset 0, canonical program `A141543.P279450556099849721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A141543 (n : ℕ) : ℤ :=
  A141543.P279450556099849721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A141543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141611.P818972280660966004

`(A131923(n)-A003056(n))*A003991(n+1)`
-/

namespace A141611.P818972280660966004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131923 n - A003056 n) * A003991 (n + 1)

end

end A141611.P818972280660966004

noncomputable section

/-- A141611: Triangle read by rows: T(n, k) = (n-k+1)*(k+1)*binomial(n, k).

Offset 0, canonical program `A141611.P818972280660966004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141611 (n : ℕ) : ℤ :=
  A141611.P818972280660966004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141678.P15377472097087936516

`A094565(A014132(n+1))-A094565(n+1)`
-/

namespace A141678.P15377472097087936516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094565 (A014132 (n + 1)).toNat - A094565 (n + 1)

end

end A141678.P15377472097087936516

noncomputable section

/-- A141678: Symmetrical triangle of coefficients based on invert transform of A001906.

Offset 1, canonical program `A141678.P15377472097087936516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141678 (n : ℕ) : ℤ :=
  A141678.P15377472097087936516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143070.P1854669171373980450

`eq[1, A000120(A080791(n))]`
-/

namespace A143070.P1854669171373980450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P1854669171373980450

noncomputable section

/-- A143070: A positive integer n is included if the number of 0's in the binary representation of n is a power of 2 (including being possibly 1).

Offset 1, canonical program `A143070.P1854669171373980450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A143070 (n : ℕ) : ℤ :=
  (A143070.P1854669171373980450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A143070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143088.P10381068236285559706

`2*(A130328(n)-A130321(n))+1`
-/

namespace A143088.P10381068236285559706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130328 n - A130321 n) + 1

end

end A143088.P10381068236285559706

noncomputable section

/-- A143088: Triangle T(n,m) = (2^(m+1) - 1) * (2^(n-m+1) - 1), read by rows, 0 <= m <= n.

Offset 0, canonical program `A143088.P10381068236285559706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143088 (n : ℕ) : ℤ :=
  A143088.P10381068236285559706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143901.P12353677997150197209

`floor(A059036(n)/2)+1`
-/

namespace A143901.P12353677997150197209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059036 n : ℚ) / 2⌋ + 1

end

end A143901.P12353677997150197209

noncomputable section

/-- A143901: Rectangular array R by antidiagonals: R(m,n) = floor((m*n+1)/2).

Offset 1, canonical program `A143901.P12353677997150197209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143901 (n : ℕ) : ℤ :=
  A143901.P12353677997150197209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143902.P5916339437029833280

`ceil(A059036(n)/2)`
-/

namespace A143902.P5916339437029833280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059036 n : ℚ) / 2⌉

end

end A143902.P5916339437029833280

noncomputable section

/-- A143902: Rectangular array R by antidiagonals: R(m,n) = number of black squares.

Offset 1, canonical program `A143902.P5916339437029833280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143902 (n : ℕ) : ℤ :=
  A143902.P5916339437029833280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000184.P18437926326760812806

`2*A029887(n)`
-/

namespace A000184.P18437926326760812806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029887 n

end

end A000184.P18437926326760812806

noncomputable section

/-- A000184: Number of genus 0 rooted maps with 3 faces with n vertices.

Offset 2, canonical program `A000184.P18437926326760812806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029887, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000184 (n : ℕ) : ℤ :=
  A000184.P18437926326760812806.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029887, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001497.P12548197760603764802

`A132062(comp[∑[n]])`
-/

namespace A001497.P12548197760603764802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132062 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A001497.P12548197760603764802

noncomputable section

/-- A001497: Triangle of coefficients of Bessel polynomials (exponents in decreasing order).

Offset 0, canonical program `A001497.P12548197760603764802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A001497 (n : ℕ) : ℤ :=
  A001497.P12548197760603764802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A001497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004310.P12612640284731316664

`2*A172065(n)-A172064(n)`
-/

namespace A004310.P12612640284731316664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172065 n - A172064 n

end

end A004310.P12612640284731316664

noncomputable section

/-- A004310: Binomial coefficient C(2n,n-4).

Offset 4, canonical program `A004310.P12612640284731316664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A004310 (n : ℕ) : ℤ :=
  A004310.P12612640284731316664.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A004310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007306.P17183682227013142410

`a(A003602(n-1))+a(A003602(n))` with `a(0)=1, a(1)=1`
-/

namespace A007306.P17183682227013142410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A003602 (n - 1)).toNat + a (A003602 n).toNat

end

end A007306.P17183682227013142410

noncomputable section

/-- A007306: Denominators of Farey tree fractions (i.e., the Stern-Brocot subtree in the range [0,1]).

Offset 0, canonical program `A007306.P17183682227013142410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007306 (n : ℕ) : ℤ :=
  (A007306.P17183682227013142410.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007843.P17090837649853726909

`A100661(A028310(n))+n`
-/

namespace A007843.P17090837649853726909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A028310 n).toNat + (n : ℤ)

end

end A007843.P17090837649853726909

noncomputable section

/-- A007843: Least positive integer k for which 2^n divides k!.

Offset 0, canonical program `A007843.P17090837649853726909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007843 (n : ℕ) : ℤ :=
  A007843.P17090837649853726909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008297.P12763250922537137582

`A087960(A131507(n))*A105278(n+1)`
-/

namespace A008297.P12763250922537137582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A131507 n).toNat * A105278 (n + 1)

end

end A008297.P12763250922537137582

noncomputable section

/-- A008297: Triangle of Lah numbers.

Offset 1, canonical program `A008297.P12763250922537137582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A008297 (n : ℕ) : ℤ :=
  A008297.P12763250922537137582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A008297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008376.P8710974549002367927

`A035746(n)-9*A035602(n)`
-/

namespace A008376.P8710974549002367927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n - 9 * A035602 n

end

end A008376.P8710974549002367927

noncomputable section

/-- A008376: Coordination sequence for D_9 lattice.

Offset 0, canonical program `A008376.P8710974549002367927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008376 (n : ℕ) : ℤ :=
  A008376.P8710974549002367927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008459.P3220700038138124146

`A007318(n)²`
-/

namespace A008459.P3220700038138124146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

end

end A008459.P3220700038138124146

noncomputable section

/-- A008459: Square the entries of Pascal's triangle.

Offset 0, canonical program `A008459.P3220700038138124146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008459 (n : ℕ) : ℤ :=
  A008459.P3220700038138124146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008666.P3874170211819793513

`A029195(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A008666.P3874170211819793513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029195 n + a (n - 3)

end

end A008666.P3874170211819793513

noncomputable section

/-- A008666: Expansion of g.f.: 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A008666.P3874170211819793513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008666 (n : ℕ) : ℤ :=
  A008666.P3874170211819793513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008949.P2973966534805579384

`∑[A007318(n)]+1-A137688(n)`
-/

namespace A008949.P2973966534805579384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A137688 n)

end

end A008949.P2973966534805579384

noncomputable section

/-- A008949: Triangle read by rows of partial sums of binomial coefficients: T(n,k) = Sum_{i=0..k} binomial(n,i) (0 <= k <= n); also dimensions of Reed-Muller codes.

Offset 0, canonical program `A008949.P2973966534805579384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008949 (n : ℕ) : ℤ :=
  A008949.P2973966534805579384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009766.P5825357266757824641

`2*A046899(n)-A178300(n+1)`
-/

namespace A009766.P5825357266757824641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046899 n - A178300 (n + 1)

end

end A009766.P5825357266757824641

noncomputable section

/-- A009766: Catalan's triangle T(n,k) (read by rows): each term is the sum of the entries above and to the left, i.e., T(n,k) = Sum_{j=0..k} T(n-1,j).

Offset 0, canonical program `A009766.P5825357266757824641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009766 (n : ℕ) : ℤ :=
  A009766.P5825357266757824641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010027.P2698919876476170280

`A000255(A002262(n))*A007318(n)`
-/

namespace A010027.P2698919876476170280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (A002262 n).toNat * A007318 n

end

end A010027.P2698919876476170280

noncomputable section

/-- A010027: Triangle read by rows: T(n,k) is the number of permutations of [n] having k consecutive ascending pairs (0 <= k <= n-1).

Offset 1, canonical program `A010027.P2698919876476170280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A010027 (n : ℕ) : ℤ :=
  A010027.P2698919876476170280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A010027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010368.P5465867737350595894

`ceil(A019564(n)/8)`
-/

namespace A010368.P5465867737350595894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019564 n : ℚ) / 8⌉

end

end A010368.P5465867737350595894

noncomputable section

/-- A010368: Number of points of L1 norm 2n in Hamming code version of E_8 lattice.

Offset 0, canonical program `A010368.P5465867737350595894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010368 (n : ℕ) : ℤ :=
  A010368.P5465867737350595894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013609.P8535619279575218406

`A007318(n)*A059268(n)`
-/

namespace A013609.P8535619279575218406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059268 n

end

end A013609.P8535619279575218406

noncomputable section

/-- A013609: Triangle of coefficients in expansion of (1+2*x)^n.

Offset 0, canonical program `A013609.P8535619279575218406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013609 (n : ℕ) : ℤ :=
  A013609.P8535619279575218406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013610.P14988709388944164896

`A000244(A002262(n))*A007318(n)`
-/

namespace A013610.P14988709388944164896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A007318 n

end

end A013610.P14988709388944164896

noncomputable section

/-- A013610: Triangle of coefficients in expansion of (1+3*x)^n.

Offset 0, canonical program `A013610.P14988709388944164896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013610 (n : ℕ) : ℤ :=
  A013610.P14988709388944164896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013612.P15260993261497830762

`5^A002262(n)*A007318(n)`
-/

namespace A013612.P15260993261497830762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A002262 n : ℤ) * (A007318 n : ℚ)

end

end A013612.P15260993261497830762

noncomputable section

/-- A013612: Triangle of coefficients in expansion of (1+5x)^n.

Offset 0, canonical program `A013612.P15260993261497830762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. -/
def A013612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A013612.P15260993261497830762.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. -/
def A013612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013614.P2472947764433084484

`A000420(A002262(n))*A007318(n)`
-/

namespace A013614.P2472947764433084484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A002262 n).toNat * A007318 n

end

end A013614.P2472947764433084484

noncomputable section

/-- A013614: Triangle of coefficients in expansion of (1+7x)^n.

Offset 0, canonical program `A013614.P2472947764433084484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6423 terms. -/
def A013614 (n : ℕ) : ℤ :=
  A013614.P2472947764433084484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6423 terms. -/
def A013614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013616.P12238347047684720050

`A001019(A002262(n))*A007318(n)`
-/

namespace A013616.P12238347047684720050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A002262 n).toNat * A007318 n

end

end A013616.P12238347047684720050

noncomputable section

/-- A013616: Triangle of coefficients in expansion of (1+9x)^n.

Offset 0, canonical program `A013616.P12238347047684720050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5240 terms. -/
def A013616 (n : ℕ) : ℤ :=
  A013616.P12238347047684720050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5240 terms. -/
def A013616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013617.P9066571055645517890

`A007318(n)*A011557(A002262(n))`
-/

namespace A013617.P9066571055645517890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011557 (A002262 n).toNat

end

end A013617.P9066571055645517890

noncomputable section

/-- A013617: Triangle of coefficients in expansion of (1+10x)^n.

Offset 0, canonical program `A013617.P9066571055645517890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A013617 (n : ℕ) : ℤ :=
  A013617.P9066571055645517890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A013617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013618.P387738794400138058

`A001020(A002262(n))*A007318(n)`
-/

namespace A013618.P387738794400138058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A007318 n

end

end A013618.P387738794400138058

noncomputable section

/-- A013618: Triangle of coefficients in expansion of (1+11x)^n.

Offset 0, canonical program `A013618.P387738794400138058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4547 terms. -/
def A013618 (n : ℕ) : ℤ :=
  A013618.P387738794400138058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4547 terms. -/
def A013618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013620.P18211303655879049424

`A007318(n)*A036561(n)`
-/

namespace A013620.P18211303655879049424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A036561 n

end

end A013620.P18211303655879049424

noncomputable section

/-- A013620: Triangle of coefficients in expansion of (2+3x)^n.

Offset 0, canonical program `A013620.P18211303655879049424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013620 (n : ℕ) : ℤ :=
  A013620.P18211303655879049424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013622.P17777939334217247743

`A007318(n)*A120027(n)`
-/

namespace A013622.P17777939334217247743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A120027 n

end

end A013622.P17777939334217247743

noncomputable section

/-- A013622: Triangle of coefficients in expansion of (3+5x)^n.

Offset 0, canonical program `A013622.P17777939334217247743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6397 terms. -/
def A013622 (n : ℕ) : ℤ :=
  A013622.P17777939334217247743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6397 terms. -/
def A013622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014314.P224106078485910448

`A191527(n)+floor(2^(n-1))`
-/

namespace A014314.P224106078485910448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A014314.P224106078485910448

noncomputable section

/-- A014314: Number of up steps in all length n left factors of Dyck paths.

Offset 0, canonical program `A014314.P224106078485910448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A014314 (n : ℕ) : ℤ :=
  A014314.P224106078485910448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A014314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014413.P14567634354021645646

`A007318(eq[1, A340507(n)])`
-/

namespace A014413.P14567634354021645646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014413.P14567634354021645646

noncomputable section

/-- A014413: Triangular array formed from elements to right of middle of Pascal's triangle.

Offset 1, canonical program `A014413.P14567634354021645646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A014413 (n : ℕ) : ℤ :=
  A014413.P14567634354021645646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A014413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014421.P10055746152506597456

`A007318(A268231(n+1))`
-/

namespace A014421.P10055746152506597456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A268231 (n + 1)).toNat

end

end A014421.P10055746152506597456

noncomputable section

/-- A014421: Odd elements in Pascal's triangle.

Offset 0, canonical program `A014421.P10055746152506597456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A014421 (n : ℕ) : ℤ :=
  A014421.P10055746152506597456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A014421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014428.P4888485289418456815

`A007318(A268232(n+1))`
-/

namespace A014428.P4888485289418456815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A268232 (n + 1)).toNat

end

end A014428.P4888485289418456815

noncomputable section

/-- A014428: Even elements in Pascal's triangle.

Offset 1, canonical program `A014428.P4888485289418456815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7852 terms. -/
def A014428 (n : ℕ) : ℤ :=
  A014428.P4888485289418456815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7852 terms. -/
def A014428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014430.P11701806938926061192

`A014410(n+2)-1`
-/

namespace A014430.P11701806938926061192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - 1

end

end A014430.P11701806938926061192

noncomputable section

/-- A014430: Subtract 1 from Pascal's triangle, read by rows.

Offset 0, canonical program `A014430.P11701806938926061192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014430 (n : ℕ) : ℤ :=
  A014430.P11701806938926061192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014473.P9301799580602651200

`A007318(n)-1`
-/

namespace A014473.P9301799580602651200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 1

end

end A014473.P9301799580602651200

noncomputable section

/-- A014473: Pascal's triangle - 1: Triangle read by rows: T(n, k) = A007318(n, k) - 1.

Offset 0, canonical program `A014473.P9301799580602651200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014473 (n : ℕ) : ℤ :=
  A014473.P9301799580602651200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014719.P3871794258725070210

`A014410(n+2)²`
-/

namespace A014719.P3871794258725070210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) ^ 2

end

end A014719.P3871794258725070210

noncomputable section

/-- A014719: Squares of elements in Pascal triangle (by row) that are not 1.

Offset 2, canonical program `A014719.P3871794258725070210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014719 (n : ℕ) : ℤ :=
  A014719.P3871794258725070210.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015996.P10488043993516061045

`A003602(∏{e}[n+1, or(1, 4*#)]+1)`
-/

namespace A015996.P10488043993516061045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 1 (4 * Nat.factorization (f1 n) p) + 1)

end

end A015996.P10488043993516061045

noncomputable section

/-- A015996: (tau(n^4) + 3)/4, where tau = A000005.

Offset 1, canonical program `A015996.P10488043993516061045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015996 (n : ℕ) : ℤ :=
  A015996.P10488043993516061045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016095.P3843543431123263838

`A007318(n)*A131410(n+1)`
-/

namespace A016095.P3843543431123263838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A131410 (n + 1)

end

end A016095.P3843543431123263838

noncomputable section

/-- A016095: Triangular array T(n,k) read by rows, where T(n,k) = coefficient of x^n*y^k in 1/(1-x-y-(x+y)^2).

Offset 0, canonical program `A016095.P3843543431123263838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016095 (n : ℕ) : ℤ :=
  A016095.P3843543431123263838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019466.P9925153794483103404

`A019465(n)+A065033(n)!`
-/

namespace A019466.P9925153794483103404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n + (Nat.factorial (A065033 n).toNat : ℤ)

end

end A019466.P9925153794483103404

noncomputable section

/-- A019466: Multiply by 1, add 1, multiply by 2, add 2, etc.; start with 3.

Offset 0, canonical program `A019466.P9925153794483103404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019466 (n : ℕ) : ℤ :=
  A019466.P9925153794483103404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020909.P6008567765071857967

`2*A011373(n+1)-A350700(n+1)`
-/

namespace A020909.P6008567765071857967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011373 (n + 1) - A350700 (n + 1)

end

end A020909.P6008567765071857967

noncomputable section

/-- A020909: Number of bits in the base-2 representation of the n-th Fibonacci number.

Offset 1, canonical program `A020909.P6008567765071857967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020909 (n : ℕ) : ℤ :=
  A020909.P6008567765071857967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021012.P3443531370861949066

`A033999(A294317(n))*A196347(n)`
-/

namespace A021012.P3443531370861949066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A196347 n

end

end A021012.P3443531370861949066

noncomputable section

/-- A021012: Triangle of coefficients in expansion of x^n in terms of Laguerre polynomials L_n(x).

Offset 0, canonical program `A021012.P3443531370861949066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A021012 (n : ℕ) : ℤ :=
  A021012.P3443531370861949066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A021012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022886.P11950636231150900985

`eq[A076368(n+1), A076368(n+4)]`
-/

namespace A022886.P11950636231150900985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022886.P11950636231150900985

noncomputable section

/-- A022886: n-th index k such that p(k) + p(k+4) = p(k+1) + p(k+3).

Offset 1, canonical program `A022886.P11950636231150900985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A022886 (n : ℕ) : ℤ :=
  (A022886.P11950636231150900985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A022886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022889.P12192786364687872859

`A000040(A022888(n+1))`
-/

namespace A022889.P12192786364687872859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022888 (n + 1)).toNat

end

end A022889.P12192786364687872859

noncomputable section

/-- A022889: n-th prime p(k) such that p(k) + p(k+5) = p(k+1) + p(k+4).

Offset 1, canonical program `A022889.P12192786364687872859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022889 (n : ℕ) : ℤ :=
  A022889.P12192786364687872859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023535.P15152860963191410787

`A023562(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A023535.P15152860963191410787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023562 (n + 1) - a (n - 1)

end

end A023535.P15152860963191410787

noncomputable section

/-- A023535: Convolution of natural numbers with A023531.

Offset 1, canonical program `A023535.P15152860963191410787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023535 (n : ℕ) : ℤ :=
  A023535.P15152860963191410787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023662.P10648617195950893557

`A167214(n+1)-A062020(n+1)`
-/

namespace A023662.P10648617195950893557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1) - A062020 (n + 1)

end

end A023662.P10648617195950893557

noncomputable section

/-- A023662: Convolution of odd numbers and primes.

Offset 1, canonical program `A023662.P10648617195950893557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, A167214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023662 (n : ℕ) : ℤ :=
  A023662.P10648617195950893557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, A167214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023758.P2175844917401416234

`A057728(n)+a(n-1)` with `a(0)=0`
-/

namespace A023758.P2175844917401416234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057728 n + a (n - 1)

end

end A023758.P2175844917401416234

noncomputable section

/-- A023758: Numbers of the form 2^i - 2^j with i >= j.

Offset 1, canonical program `A023758.P2175844917401416234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023758 (n : ℕ) : ℤ :=
  A023758.P2175844917401416234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024448.P16753542507585520483

`∑[A000040(n+3)*A024447(n+2)]`
-/

namespace A024448.P16753542507585520483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A024447 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024448.P16753542507585520483

noncomputable section

/-- A024448: a(n) = 3rd elementary symmetric function of the first n+2 primes.

Offset 1, canonical program `A024448.P16753542507585520483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024448 (n : ℕ) : ℤ :=
  A024448.P16753542507585520483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024522.P10251569603433964511

`A024447(n+1)+∑[A000040(n+1)]`
-/

namespace A024522.P10251569603433964511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P10251569603433964511

noncomputable section

/-- A024522: a(n) = 2nd elementary symmetric function of {1, prime(1), prime(2), ..., prime(n-1)}, where prime(0) = 1.

Offset 2, canonical program `A024522.P10251569603433964511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024522 (n : ℕ) : ℤ :=
  A024522.P10251569603433964511.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025871.P8576229382265357631

`A029229(n)+A029347(n)-A029214(n)`
-/

namespace A025871.P8576229382265357631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 n + (A029347 n - A029214 n)

end

end A025871.P8576229382265357631

noncomputable section

/-- A025871: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A025871.P8576229382265357631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025871 (n : ℕ) : ℤ :=
  A025871.P8576229382265357631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025908.P14471496361676503405

`A025868(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A025908.P14471496361676503405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025868 n - a (n - 4)

end

end A025908.P14471496361676503405

noncomputable section

/-- A025908: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A025908.P14471496361676503405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025908 (n : ℕ) : ℤ :=
  A025908.P14471496361676503405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025912.P8134843104660562179

`A025883(n)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A025912.P8134843104660562179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A025883 n - a (n - 5)

end

end A025912.P8134843104660562179

noncomputable section

/-- A025912: Expansion of 1/((1-x^7)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025912.P8134843104660562179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025912 (n : ℕ) : ℤ :=
  A025912.P8134843104660562179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025914.P2858219896592706963

`A025874(n)+A025883(n)-A025864(n)`
-/

namespace A025914.P2858219896592706963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n + (A025883 n - A025864 n)

end

end A025914.P2858219896592706963

noncomputable section

/-- A025914: Expansion of 1/((1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A025914.P2858219896592706963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025914 (n : ℕ) : ℤ :=
  A025914.P2858219896592706963.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026134.P2296897511124696960

`A026122(n+2)-A002026(n+1)`
-/

namespace A026134.P2296897511124696960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) - A002026 (n + 1)

end

end A026134.P2296897511124696960

noncomputable section

/-- A026134: a(n) = Sum_{k=1..n} T(k, k-1), where T is the array in A026120.

Offset 1, canonical program `A026134.P2296897511124696960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026134 (n : ℕ) : ℤ :=
  A026134.P2296897511124696960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026515.P8276323896044920095

`Δ[eq[A101660(n), A285383(n+1)]]`
-/

namespace A026515.P8276323896044920095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026515.P8276323896044920095

noncomputable section

/-- A026515: a(n) = length of n-th run of identical symbols in A026513.

Offset 1, canonical program `A026515.P8276323896044920095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3337 terms. -/
def A026515 (n : ℕ) : ℤ :=
  A026515.P8276323896044920095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3337 terms. -/
def A026515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026812.P368867106460486570

`A001402(n)-A001401(n)`
-/

namespace A026812.P368867106460486570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A001401 n

end

end A026812.P368867106460486570

noncomputable section

/-- A026812: Number of partitions of n in which the greatest part is 6.

Offset 0, canonical program `A026812.P368867106460486570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, A001402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026812 (n : ℕ) : ℤ :=
  A026812.P368867106460486570.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, A001402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027465.P7818449600311689091

`A007318(n)*A140303(n)`
-/

namespace A027465.P7818449600311689091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A140303 n

end

end A027465.P7818449600311689091

noncomputable section

/-- A027465: Cube of lower triangular normalized binomial matrix.

Offset 0, canonical program `A027465.P7818449600311689091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027465 (n : ℕ) : ℤ :=
  A027465.P7818449600311689091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027708.P12884605413985297978

`A027698(eq[1, Δ[A027698(n+1)]]+1)`
-/

namespace A027708.P12884605413985297978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027708.P12884605413985297978

noncomputable section

/-- A027708: n-th prime has odd number of 1's in binary expansion and (n+1)st prime also has odd number of 1's.

Offset 0, canonical program `A027708.P12884605413985297978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5296 terms. -/
def A027708 (n : ℕ) : ℤ :=
  A027708.P12884605413985297978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5296 terms. -/
def A027708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027861.P1880857397688890924

`(A002731(n+1)-1)/2`
-/

namespace A027861.P1880857397688890924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002731 (n + 1) - 1 : ℚ) / 2

end

end A027861.P1880857397688890924

noncomputable section

/-- A027861: Numbers k such that k^2 + (k+1)^2 is prime.

Offset 1, canonical program `A027861.P1880857397688890924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027861.P1880857397688890924.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027862.P15112400691824553338

`(A002731(n+1)²+1)/2`
-/

namespace A027862.P15112400691824553338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002731 (n + 1) ^ 2 + 1 : ℚ) / 2

end

end A027862.P15112400691824553338

noncomputable section

/-- A027862: Primes of the form j^2 + (j+1)^2.

Offset 1, canonical program `A027862.P15112400691824553338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027862.P15112400691824553338.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028326.P16610217584664895500

`2*A007318(n)`
-/

namespace A028326.P16610217584664895500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n

end

end A028326.P16610217584664895500

noncomputable section

/-- A028326: Twice Pascal's triangle A007318: T(n,k) = 2*C(n,k).

Offset 0, canonical program `A028326.P16610217584664895500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028326 (n : ℕ) : ℤ :=
  A028326.P16610217584664895500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028412.P14917559016390442593

`A102310(n+1)/A104762(n+1)`
-/

namespace A028412.P14917559016390442593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102310 (n + 1) : ℚ) / (A104762 (n + 1) : ℚ)

end

end A028412.P14917559016390442593

noncomputable section

/-- A028412: Rectangular array of numbers Fibonacci(m(n+1))/Fibonacci(m), m >= 1, n >= 0, read by downward antidiagonals.

Offset 0, canonical program `A028412.P14917559016390442593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A028412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028412.P14917559016390442593.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A028412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029074.P740633488516579496

`∑[A025868(n)]`
-/

namespace A029074.P740633488516579496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029074.P740633488516579496

noncomputable section

/-- A029074: Expansion of 1/((1-x)(1-x^4)(1-x^7)(1-x^9)).

Offset 0, canonical program `A029074.P740633488516579496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029074 (n : ℕ) : ℤ :=
  A029074.P740633488516579496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029092.P6860833474771201962

`∑[A025883(n)]`
-/

namespace A029092.P6860833474771201962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029092.P6860833474771201962

noncomputable section

/-- A029092: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029092.P6860833474771201962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029092 (n : ℕ) : ℤ :=
  A029092.P6860833474771201962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029107.P8511110870594465342

`∑[A025898(n)]`
-/

namespace A029107.P8511110870594465342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029107.P8511110870594465342

noncomputable section

/-- A029107: Expansion of 1/((1-x)*(1-x^6)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029107.P8511110870594465342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029107 (n : ℕ) : ℤ :=
  A029107.P8511110870594465342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029157.P5576030815765251080

`A029050(n)-a(n-1)` with `a(0)=1`
-/

namespace A029157.P5576030815765251080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029050 n - a (n - 1)

end

end A029157.P5576030815765251080

noncomputable section

/-- A029157: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029157.P5576030815765251080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029157 (n : ℕ) : ℤ :=
  A029157.P5576030815765251080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029170.P17474200054274196928

`A029062(n)-a(n-1)` with `a(0)=1`
-/

namespace A029170.P17474200054274196928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029062 n - a (n - 1)

end

end A029170.P17474200054274196928

noncomputable section

/-- A029170: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029170.P17474200054274196928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029170 (n : ℕ) : ℤ :=
  A029170.P17474200054274196928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029212.P383525199876690320

`A029104(n)-a(n-1)` with `a(0)=1`
-/

namespace A029212.P383525199876690320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029104 n - a (n - 1)

end

end A029212.P383525199876690320

noncomputable section

/-- A029212: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029212.P383525199876690320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029212 (n : ℕ) : ℤ :=
  A029212.P383525199876690320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029225.P16486130044195142611

`A029116(n)-a(n-1)` with `a(0)=1`
-/

namespace A029225.P16486130044195142611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029116 n - a (n - 1)

end

end A029225.P16486130044195142611

noncomputable section

/-- A029225: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029225.P16486130044195142611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029225 (n : ℕ) : ℤ :=
  A029225.P16486130044195142611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029272.P2927714459558587296

`A025876(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029272.P2927714459558587296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025876 n + a (n - 3)

end

end A029272.P2927714459558587296

noncomputable section

/-- A029272: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^7)).

Offset 0, canonical program `A029272.P2927714459558587296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029272 (n : ℕ) : ℤ :=
  A029272.P2927714459558587296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029293.P15551204982599557878

`A025898(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029293.P15551204982599557878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025898 n + a (n - 3)

end

end A029293.P15551204982599557878

noncomputable section

/-- A029293: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029293.P15551204982599557878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029293 (n : ℕ) : ℤ :=
  A029293.P15551204982599557878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029294.P16239895637196270170

`A025899(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029294.P16239895637196270170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025899 n + a (n - 3)

end

end A029294.P16239895637196270170

noncomputable section

/-- A029294: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029294.P16239895637196270170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029294 (n : ℕ) : ℤ :=
  A029294.P16239895637196270170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029391.P12825542684118861897

`A029290(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029391.P12825542684118861897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029290 n - a (n - 3)

end

end A029391.P12825542684118861897

noncomputable section

/-- A029391: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029391.P12825542684118861897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029391 (n : ℕ) : ℤ :=
  A029391.P12825542684118861897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029392.P14960122586233052703

`A029291(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029392.P14960122586233052703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029291 n - a (n - 3)

end

end A029392.P14960122586233052703

noncomputable section

/-- A029392: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029392.P14960122586233052703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029392 (n : ℕ) : ℤ :=
  A029392.P14960122586233052703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029638.P12633178312082655939

`A074909(n)+A007318(abs(1-n))`
-/

namespace A029638.P12633178312082655939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A007318 |1 - (n : ℤ)|.toNat

end

end A029638.P12633178312082655939

noncomputable section

/-- A029638: Numbers in the (1,2)-Pascal triangle A029635 that are different from 1.

Offset 1, canonical program `A029638.P12633178312082655939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029638 (n : ℕ) : ℤ :=
  A029638.P12633178312082655939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029655.P14912270738703485013

`A325191(n)+A007318(n)`
-/

namespace A029655.P14912270738703485013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A007318 n

end

end A029655.P14912270738703485013

noncomputable section

/-- A029655: Numbers in the (2,1)-Pascal triangle A029653 that are different from 2.

Offset 0, canonical program `A029655.P14912270738703485013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029655 (n : ℕ) : ℤ :=
  A029655.P14912270738703485013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029656.P13202918215397249679

`A074909(n)+A007318(n)`
-/

namespace A029656.P13202918215397249679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A007318 n

end

end A029656.P13202918215397249679

noncomputable section

/-- A029656: Numbers in the (2,1)-Pascal triangle A029653 that are different from 1.

Offset 1, canonical program `A029656.P13202918215397249679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029656 (n : ℕ) : ℤ :=
  A029656.P13202918215397249679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029922.P12532819948336392736

`A000038(A267368(n))+round(n/log(5))`
-/

namespace A029922.P12532819948336392736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A267368 n).toNat + SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ))

end

end A029922.P12532819948336392736

noncomputable section

/-- A029922: Convert n from kilometers (km) to miles.

Offset 0, canonical program `A029922.P12532819948336392736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A029922 (n : ℕ) : ℤ :=
  A029922.P12532819948336392736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A029922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030638.P15405668562279692418

`eq[5, A007318(A032741(n))]`
-/

namespace A030638.P15405668562279692418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030638.P15405668562279692418

noncomputable section

/-- A030638: Numbers with 20 divisors.

Offset 1, canonical program `A030638.P15405668562279692418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A030638 (n : ℕ) : ℤ :=
  (A030638.P15405668562279692418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A030638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034044.P6265599758687673652

`filter[A047449(n+1), A353627(#)]`
-/

namespace A034044.P6265599758687673652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A034044.P6265599758687673652

noncomputable section

/-- A034044: Numbers that are primitively but not imprimitively represented by x^2+y^2+z^2.

Offset 1, canonical program `A034044.P6265599758687673652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A034044 (n : ℕ) : ℤ :=
  A034044.P6265599758687673652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A034044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034850.P10226397851639003888

`A007318(2*n)`
-/

namespace A034850.P10226397851639003888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n)

end

end A034850.P10226397851639003888

noncomputable section

/-- A034850: Triangular array formed by taking every other term of Pascal's triangle.

Offset 0, canonical program `A034850.P10226397851639003888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034850 (n : ℕ) : ℤ :=
  A034850.P10226397851639003888.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034930.P18405547121774328167

`A007318(n)%8`
-/

namespace A034930.P18405547121774328167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 8

end

end A034930.P18405547121774328167

noncomputable section

/-- A034930: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 8.

Offset 0, canonical program `A034930.P18405547121774328167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034930 (n : ℕ) : ℤ :=
  A034930.P18405547121774328167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034931.P3419430771985175931

`A007318(n)%4`
-/

namespace A034931.P3419430771985175931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 4

end

end A034931.P3419430771985175931

noncomputable section

/-- A034931: Triangle read by rows: Pascal's triangle (A007318) mod 4.

Offset 0, canonical program `A034931.P3419430771985175931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034931 (n : ℕ) : ℤ :=
  A034931.P3419430771985175931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035247.P10025815083580016986

`record[A028954(n+2)]`
-/

namespace A035247.P10025815083580016986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028954 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035247.P10025815083580016986

noncomputable section

/-- A035247: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -11.

Offset 1, canonical program `A035247.P10025815083580016986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A035247 (n : ℕ) : ℤ :=
  A035247.P10025815083580016986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A035247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035614.P1531182426394583162

`A035612(n+1)-1`
-/

namespace A035614.P1531182426394583162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - 1

end

end A035614.P1531182426394583162

noncomputable section

/-- A035614: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 0) contains n+1.

Offset 0, canonical program `A035614.P1531182426394583162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035614 (n : ℕ) : ℤ :=
  A035614.P1531182426394583162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036266.P11903525488543457057

`Δ[A036265(n+1)]`
-/

namespace A036266.P11903525488543457057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036266.P11903525488543457057

noncomputable section

/-- A036266: 5th differences of primes.

Offset 1, canonical program `A036266.P11903525488543457057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036266 (n : ℕ) : ℤ :=
  A036266.P11903525488543457057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036274.P11002584314295623650

`abs(Δ[A036273(n)])`
-/

namespace A036274.P11002584314295623650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036274.P11002584314295623650

noncomputable section

/-- A036274: Absolute values of differences of A036273.

Offset 0, canonical program `A036274.P11002584314295623650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036274 (n : ℕ) : ℤ :=
  A036274.P11002584314295623650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036552.P7268647553509840710

`A003602(A081706(n+1))`
-/

namespace A036552.P7268647553509840710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A081706 (n + 1)).toNat

end

end A036552.P7268647553509840710

noncomputable section

/-- A036552: List of pairs (m,2m) where m is the least unused positive number.

Offset 1, canonical program `A036552.P7268647553509840710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A036552 (n : ℕ) : ℤ :=
  A036552.P7268647553509840710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A036552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037958.P1538083685878928086

`A037954(n+1)-A037957(n)`
-/

namespace A037958.P1538083685878928086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (n + 1) - A037957 n

end

end A037958.P1538083685878928086

noncomputable section

/-- A037958: a(n) = binomial(n, floor((n-8)/2)).

Offset 0, canonical program `A037958.P1538083685878928086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958 (n : ℕ) : ℤ :=
  A037958.P1538083685878928086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038207.P11934492983446443774

`A007318(n)*A130321(n)`
-/

namespace A038207.P11934492983446443774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A130321 n

end

end A038207.P11934492983446443774

noncomputable section

/-- A038207: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j).

Offset 0, canonical program `A038207.P11934492983446443774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038207 (n : ℕ) : ℤ :=
  A038207.P11934492983446443774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038221.P2220292756312860869

`A007318(n)*A098355(n)`
-/

namespace A038221.P2220292756312860869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A098355 n

end

end A038221.P2220292756312860869

noncomputable section

/-- A038221: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*3^j.

Offset 0, canonical program `A038221.P2220292756312860869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. -/
def A038221 (n : ℕ) : ℤ :=
  A038221.P2220292756312860869.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. -/
def A038221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038247.P6184106318051769325

`A000351(A003056(n))*A007318(n)`
-/

namespace A038247.P6184106318051769325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A003056 n).toNat * A007318 n

end

end A038247.P6184106318051769325

noncomputable section

/-- A038247: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*5^j.

Offset 0, canonical program `A038247.P6184106318051769325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A038247 (n : ℕ) : ℤ :=
  A038247.P6184106318051769325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A038247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038273.P1374558419179822602

`A000420(A003056(n))*A007318(n)`
-/

namespace A038273.P1374558419179822602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A003056 n).toNat * A007318 n

end

end A038273.P1374558419179822602

noncomputable section

/-- A038273: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*7^j.

Offset 0, canonical program `A038273.P1374558419179822602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4040 terms. -/
def A038273 (n : ℕ) : ℤ :=
  A038273.P1374558419179822602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4040 terms. -/
def A038273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038315.P17727703157821261592

`A007318(n)*A001020(A025581(n))`
-/

namespace A038315.P17727703157821261592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001020 (A025581 n).toNat

end

end A038315.P17727703157821261592

noncomputable section

/-- A038315: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*1^j.

Offset 0, canonical program `A038315.P17727703157821261592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4469 terms. -/
def A038315 (n : ℕ) : ℤ :=
  A038315.P17727703157821261592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4469 terms. -/
def A038315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038325.P3094052679453155458

`A007318(n)*A001020(A003056(n))`
-/

namespace A038325.P3094052679453155458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001020 (A003056 n).toNat

end

end A038325.P3094052679453155458

noncomputable section

/-- A038325: Triangle read by rows whose (i,j)-th entry is binomial(i,j)*11^(i-j)*11^j.

Offset 0, canonical program `A038325.P3094052679453155458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. -/
def A038325 (n : ℕ) : ℤ :=
  A038325.P3094052679453155458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. -/
def A038325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038838.P15008932466225077573

`comp[(n+1)*A353627(n+1)]`
-/

namespace A038838.P15008932466225077573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038838.P15008932466225077573

noncomputable section

/-- A038838: Numbers that are divisible by the square of an odd prime.

Offset 1, canonical program `A038838.P15008932466225077573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038838 (n : ℕ) : ℤ :=
  (A038838.P15008932466225077573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039913.P15406212472898835494

`A108037(n)+A098356(n)`
-/

namespace A039913.P15406212472898835494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n + A098356 n

end

end A039913.P15406212472898835494

noncomputable section

/-- A039913: Triangular "Fibonacci array".

Offset 0, canonical program `A039913.P15406212472898835494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039913 (n : ℕ) : ℤ :=
  A039913.P15406212472898835494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043684.P15500375666667642164

`A043575(n+1)/2`
-/

namespace A043684.P15500375666667642164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043575 (n + 1) : ℚ) / 2

end

end A043684.P15500375666667642164

noncomputable section

/-- A043684: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 8 runs).

Offset 1, canonical program `A043684.P15500375666667642164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043684 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A043684.P15500375666667642164.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043685.P5704799223712318380

`A043577(n+1)/2`
-/

namespace A043685.P5704799223712318380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043577 (n + 1) : ℚ) / 2

end

end A043685.P5704799223712318380

noncomputable section

/-- A043685: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 10 runs).

Offset 1, canonical program `A043685.P5704799223712318380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043685 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A043685.P5704799223712318380.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043748.P14150429059408141972

`∪[A043569(n+1), A043577(n+1)]`
-/

namespace A043748.P14150429059408141972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043748.P14150429059408141972

noncomputable section

/-- A043748: Numbers n such that number of runs in the base 2 representation of n is congruent to 2 mod 8.

Offset 1, canonical program `A043748.P14150429059408141972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043748 (n : ℕ) : ℤ :=
  (A043748.P14150429059408141972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044918.P15631491038652286374

`floor(A281379(n+3)/2)`
-/

namespace A044918.P15631491038652286374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281379 (n + 3) : ℚ) / 2⌋

end

end A044918.P15631491038652286374

noncomputable section

/-- A044918: Positive integers whose base-2 run lengths form a palindrome.

Offset 1, canonical program `A044918.P15631491038652286374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A044918 (n : ℕ) : ℤ :=
  A044918.P15631491038652286374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A044918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045655.P11856846088611068955

`∑{d}[n, #*A038199(#)]+1`
-/

namespace A045655.P11856846088611068955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038199 d + 1

end

end A045655.P11856846088611068955

noncomputable section

/-- A045655: Number of 2n-bead balanced binary strings, rotationally equivalent to reversed complement.

Offset 0, canonical program `A045655.P11856846088611068955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045655 (n : ℕ) : ℤ :=
  A045655.P11856846088611068955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045670.P9055415353420482661

`A007953(A007932(n+1))`
-/

namespace A045670.P9055415353420482661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007932 (n + 1)).toNat

end

end A045670.P9055415353420482661

noncomputable section

/-- A045670: Digital sum (in base 10) of numbers in base 3 of the alternate number system.

Offset 1, canonical program `A045670.P9055415353420482661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045670 (n : ℕ) : ℤ :=
  A045670.P9055415353420482661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045702.P6657115471213051972

`record[A094571(A245300(n))]`
-/

namespace A045702.P6657115471213051972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094571 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045702.P6657115471213051972

noncomputable section

/-- A045702: Sums of two squares of Fibonacci numbers.

Offset 1, canonical program `A045702.P6657115471213051972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A045702 (n : ℕ) : ℤ :=
  A045702.P6657115471213051972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A045702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046324.P5497481836361738201

`A000040(n+1)*A046303(n+2)`
-/

namespace A046324.P5497481836361738201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046303 (n + 2)

end

end A046324.P5497481836361738201

noncomputable section

/-- A046324: Product of 6 successive primes.

Offset 1, canonical program `A046324.P5497481836361738201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046324 (n : ℕ) : ℤ :=
  A046324.P5497481836361738201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048027.P4856825869169260765

`A007318(∑[∑[n%3]]+n)-1`
-/

namespace A048027.P4856825869169260765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + n) - 1

end

end A048027.P4856825869169260765

noncomputable section

/-- A048027: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-3)/3.

Offset 1, canonical program `A048027.P4856825869169260765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A048027 (n : ℕ) : ℤ :=
  A048027.P4856825869169260765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A048027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048471.P10932283056959266550

`(A175840(n)-A059268(n))/2+1`
-/

namespace A048471.P10932283056959266550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175840 n - A059268 n : ℚ) / 2 + 1

end

end A048471.P10932283056959266550

noncomputable section

/-- A048471: Array T read by diagonals: T(k,n) = 2^(k-1) * (3^n - 1) + 1.

Offset 0, canonical program `A048471.P10932283056959266550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048471 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048471.P10932283056959266550.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049617.P9357326945850119537

`A106481(2*n)+n`
-/

namespace A049617.P9357326945850119537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (2 * n) + (n : ℤ)

end

end A049617.P9357326945850119537

noncomputable section

/-- A049617: a(n) = Sum_{i=0..2n} (-1)^i * T(i,2n-i) where T is A049615.

Offset 0, canonical program `A049617.P9357326945850119537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A049617 (n : ℕ) : ℤ :=
  A049617.P9357326945850119537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A049617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049648.P396275532436959907

`(n+1)²+n-A049621(n)`
-/

namespace A049648.P396275532436959907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n : ℤ) - A049621 n)

end

end A049648.P396275532436959907

noncomputable section

/-- A049648: T(n,n+1), array T as in A049687 and T(2n,2n+2), array T given by A049639.

Offset 0, canonical program `A049648.P396275532436959907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A049648 (n : ℕ) : ℤ :=
  A049648.P396275532436959907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A049648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049689.P16202850422466564671

`A106481(n%or(1, n))`
-/

namespace A049689.P16202850422466564671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (n % Nat.lor 1 n)

end

end A049689.P16202850422466564671

noncomputable section

/-- A049689: a(n)=Sum{((-1)^(i+1))*T(i,n-i): i=0,1,...,n}, array T as in A049687.

Offset 0, canonical program `A049689.P16202850422466564671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A049689 (n : ℕ) : ℤ :=
  A049689.P16202850422466564671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A049689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050223.P13683550059284488781

`A007953(A019506(n+1))`
-/

namespace A050223.P13683550059284488781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A019506 (n + 1)).toNat

end

end A050223.P13683550059284488781

noncomputable section

/-- A050223: Digit sums of hoax numbers A019506.

Offset 1, canonical program `A050223.P13683550059284488781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050223 (n : ℕ) : ℤ :=
  A050223.P13683550059284488781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050223.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050439.P1472562452654814499

`A002808(A050438(n+1))`
-/

namespace A050439.P1472562452654814499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050438 (n + 1)).toNat

end

end A050439.P1472562452654814499

noncomputable section

/-- A050439: Fifth-order composites.

Offset 1, canonical program `A050439.P1472562452654814499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050439 (n : ℕ) : ℤ :=
  A050439.P1472562452654814499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050519.P7924138531578403938

`A000007(3*A007318(n))+30*(n+1)`
-/

namespace A050519.P7924138531578403938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * A007318 n).toNat + (30 * (n + 1) : ℤ)

end

end A050519.P7924138531578403938

noncomputable section

/-- A050519: Increments of arithmetic progression of at least 6 terms having the same value of phi in A050518.

Offset 1, canonical program `A050519.P7924138531578403938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A050519 (n : ℕ) : ℤ :=
  A050519.P7924138531578403938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A050519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050873.P7264268653854988149

`gcd(A004247(n), A128139(n))`
-/

namespace A050873.P7264268653854988149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A128139 n)

end

end A050873.P7264268653854988149

noncomputable section

/-- A050873: Triangular array T read by rows: T(n,k) = gcd(n,k).

Offset 1, canonical program `A050873.P7264268653854988149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050873 (n : ℕ) : ℤ :=
  (A050873.P7264268653854988149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050939.P13334191487414510968

`comp[A193922(n)-1]+1`
-/

namespace A050939.P13334191487414510968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050939.P13334191487414510968

noncomputable section

/-- A050939: Numbers that are not the sum of consecutive Fibonacci numbers.

Offset 1, canonical program `A050939.P13334191487414510968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050939 (n : ℕ) : ℤ :=
  (A050939.P13334191487414510968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051002.P11635871298119985317

`A081864(A003602(n+1))`
-/

namespace A051002.P11635871298119985317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081864 (A003602 (n + 1)).toNat

end

end A051002.P11635871298119985317

noncomputable section

/-- A051002: Sum of 5th powers of odd divisors of n.

Offset 1, canonical program `A051002.P11635871298119985317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051002 (n : ℕ) : ℤ :=
  A051002.P11635871298119985317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051628.P11491712228383865435

`A051903(A132741(n+1))`
-/

namespace A051628.P11491712228383865435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A132741 (n + 1)).toNat

end

end A051628.P11491712228383865435

noncomputable section

/-- A051628: Number of digits in decimal expansion of 1/n before the periodic part begins.

Offset 1, canonical program `A051628.P11491712228383865435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051628 (n : ℕ) : ℤ :=
  A051628.P11491712228383865435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053124.P5499710438770500786

`A059268(n)²*A053122(n)`
-/

namespace A053124.P5499710438770500786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A053122 n

end

end A053124.P5499710438770500786

noncomputable section

/-- A053124: Triangle of coefficients of Chebyshev's U(n,2*x-1) polynomials (exponents of x in increasing order).

Offset 0, canonical program `A053124.P5499710438770500786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8735 terms. -/
def A053124 (n : ℕ) : ℤ :=
  A053124.P5499710438770500786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8735 terms. -/
def A053124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053200.P15621712914249578888

`A007318(n)%A028310(A003056(n))`
-/

namespace A053200.P15621712914249578888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A028310 (A003056 n).toNat)

end

end A053200.P15621712914249578888

noncomputable section

/-- A053200: Binomial coefficients C(n,k) reduced modulo n, read by rows; T(0,0)=0 by convention.

Offset 0, canonical program `A053200.P15621712914249578888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053200 (n : ℕ) : ℤ :=
  A053200.P15621712914249578888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053201.P1741911093947549040

`A014410(n+2)%A003057(n+2)`
-/

namespace A053201.P1741911093947549040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014410 (n + 2)) (A003057 (n + 2))

end

end A053201.P1741911093947549040

noncomputable section

/-- A053201: Pascal's triangle (excluding first, last element of each row) read by rows, row n read mod n.

Offset 2, canonical program `A053201.P1741911093947549040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053201 (n : ℕ) : ℤ :=
  A053201.P1741911093947549040.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053218.P1097591317107812432

`A130128(n+1)+A001787(A002262(n))`
-/

namespace A053218.P1097591317107812432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (n + 1) + A001787 (A002262 n).toNat

end

end A053218.P1097591317107812432

noncomputable section

/-- A053218: Triangle read by rows: T(n,k) = T(n,k-1) + T(n-1,k-1) for k >= 2 with T(n,1) = n.

Offset 1, canonical program `A053218.P1097591317107812432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053218 (n : ℕ) : ℤ :=
  A053218.P1097591317107812432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054265.P1087078146854492395

`A371201(n+1)-A000040(n+1)`
-/

namespace A054265.P1087078146854492395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 (n + 1) - A000040 (n + 1)

end

end A054265.P1087078146854492395

noncomputable section

/-- A054265: Sum of composite numbers between successive primes.

Offset 1, canonical program `A054265.P1087078146854492395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054265 (n : ℕ) : ℤ :=
  A054265.P1087078146854492395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055137.P26245966992457174

`(1-A025581(n))*A007318(n)`
-/

namespace A055137.P26245966992457174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * A007318 n

end

end A055137.P26245966992457174

noncomputable section

/-- A055137: Regard triangle of rencontres numbers (see A008290) as infinite matrix, compute inverse, read by rows.

Offset 0, canonical program `A055137.P26245966992457174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055137 (n : ℕ) : ℤ :=
  A055137.P26245966992457174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055140.P9230282072997253441

`A007318(n)*A053871(A025581(n))`
-/

namespace A055140.P9230282072997253441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A053871 (A025581 n).toNat

end

end A055140.P9230282072997253441

noncomputable section

/-- A055140: Triangle read by rows: T(n, k) = number of matchings of 2n people with partners (of either sex) such that exactly k couples are left together.

Offset 0, canonical program `A055140.P9230282072997253441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A055140 (n : ℕ) : ℤ :=
  A055140.P9230282072997253441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A055140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056151.P15025192425503325916

`A047969(A061579(n))*A233543(n)`
-/

namespace A056151.P15025192425503325916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A061579 n).toNat * A233543 n

end

end A056151.P15025192425503325916

noncomputable section

/-- A056151: Distribution of maximum inversion table entry.

Offset 1, canonical program `A056151.P15025192425503325916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2536 terms. -/
def A056151 (n : ℕ) : ℤ :=
  A056151.P15025192425503325916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2536 terms. -/
def A056151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056267.P9047364021855205352

`and(-2, A038199(n+1))`
-/

namespace A056267.P9047364021855205352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A038199 (n + 1))

end

end A056267.P9047364021855205352

noncomputable section

/-- A056267: Number of primitive (aperiodic) words of length n which contain exactly two different symbols.

Offset 1, canonical program `A056267.P9047364021855205352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056267 (n : ℕ) : ℤ :=
  A056267.P9047364021855205352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056968.P16808487561389902358

`A062172(eq[11, A131818(n+1)])`
-/

namespace A056968.P16808487561389902358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056968.P16808487561389902358

noncomputable section

/-- A056968: 10^(n-1) modulo n.

Offset 1, canonical program `A056968.P16808487561389902358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A056968 (n : ℕ) : ℤ :=
  A056968.P16808487561389902358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A056968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057036.P10749021010294889365

`A057037(A057037(n+1)+n+1)`
-/

namespace A057036.P10749021010294889365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057037 (A057037 (n + 1) + (n + 1 : ℤ)).toNat

end

end A057036.P10749021010294889365

noncomputable section

/-- A057036: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057036(n)=i(2n-1).

Offset 1, canonical program `A057036.P10749021010294889365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9851 terms. -/
def A057036 (n : ℕ) : ℤ :=
  A057036.P10749021010294889365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9851 terms. -/
def A057036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059297.P2013230887832402571

`A004248(n)*A007318(n)`
-/

namespace A059297.P2013230887832402571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A007318 n

end

end A059297.P2013230887832402571

noncomputable section

/-- A059297: Triangle of idempotent numbers binomial(n,k)*k^(n-k), version 1.

Offset 0, canonical program `A059297.P2013230887832402571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3425 terms. -/
def A059297 (n : ℕ) : ℤ :=
  A059297.P2013230887832402571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3425 terms. -/
def A059297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059299.P9005971410581366406

`A003992(n)*A007318(n)`
-/

namespace A059299.P9005971410581366406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A007318 n

end

end A059299.P9005971410581366406

noncomputable section

/-- A059299: Triangle of idempotent numbers (version 3), T(n, k) = binomial(n, k) * (n - k)^k.

Offset 0, canonical program `A059299.P9005971410581366406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3458 terms. -/
def A059299 (n : ℕ) : ℤ :=
  A059299.P9005971410581366406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3458 terms. -/
def A059299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059328.P18325966381564040221

`2^A007318(n)-1`
-/

namespace A059328.P18325966381564040221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007318 n : ℤ) - 1

end

end A059328.P18325966381564040221

noncomputable section

/-- A059328: Table T(n,k) = T(n - 1,k) + T(n,k - 1) + T(n - 1,k)*T(n,k - 1) starting with T(0,0)=1, read by antidiagonals.

Offset 0, canonical program `A059328.P18325966381564040221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059328.P18325966381564040221.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059374.P8362716122805063671

`A007318(n)*A206703(A007401(n+1))`
-/

namespace A059374.P8362716122805063671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A206703 (A007401 (n + 1)).toNat

end

end A059374.P8362716122805063671

noncomputable section

/-- A059374: Triangle read by rows, T(n, k) = Sum_{i=0..n} L'(n, n-i) * binomial(i, k), for k = 0..n-1.

Offset 1, canonical program `A059374.P8362716122805063671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A059374 (n : ℕ) : ℤ :=
  A059374.P8362716122805063671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A059374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059390.P1527196255180977362

`comp[A131411(n+1)]+1`
-/

namespace A059390.P1527196255180977362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059390.P1527196255180977362

noncomputable section

/-- A059390: Numbers that are not the sum of two nonzero Fibonacci numbers.

Offset 1, canonical program `A059390.P1527196255180977362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059390 (n : ℕ) : ℤ :=
  (A059390.P1527196255180977362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059413.P1689537449278519884

`A038199(n+1)+2*a(n-1)` with `a(0)=2`
-/

namespace A059413.P1689537449278519884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A038199 (n + 1) + 2 * a (n - 1)

end

end A059413.P1689537449278519884

noncomputable section

/-- A059413: Number of distinct languages accepted by unary DFA's with n states.

Offset 1, canonical program `A059413.P1689537449278519884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059413 (n : ℕ) : ℤ :=
  A059413.P1689537449278519884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060192.P8871710138267274484

`A100479(n+1)-A060191(n)`
-/

namespace A060192.P8871710138267274484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A060191 n

end

end A060192.P8871710138267274484

noncomputable section

/-- A060192: Union_i p(4i+2), p(4i+3), where p(k) = k-th prime.

Offset 0, canonical program `A060192.P8871710138267274484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060192 (n : ℕ) : ℤ :=
  A060192.P8871710138267274484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060267.P17094486573284264601

`A166597(2*(n+2))`
-/

namespace A060267.P17094486573284264601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (2 * (n + 2))

end

end A060267.P17094486573284264601

noncomputable section

/-- A060267: Difference between 2 closest primes surrounding 2n.

Offset 2, canonical program `A060267.P17094486573284264601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060267 (n : ℕ) : ℤ :=
  A060267.P17094486573284264601.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061928.P7626325743492745551

`A014410(n+2)*A133196(n+1)`
-/

namespace A061928.P7626325743492745551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) * A133196 (n + 1)

end

end A061928.P7626325743492745551

noncomputable section

/-- A061928: Array T(n,m) = 1/beta(n+1,m+1) read by antidiagonals.

Offset 1, canonical program `A061928.P7626325743492745551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061928 (n : ℕ) : ℤ :=
  A061928.P7626325743492745551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061929.P10346754905062245999

`A054143(n)*A175840(n)`
-/

namespace A061929.P10346754905062245999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n * A175840 n

end

end A061929.P10346754905062245999

noncomputable section

/-- A061929: Triangle with n >= k >= 0 where a(n,k) = 2^k*3^(n-k)*(C(n+1,0)+C(n+1,1)+...C(n+1,k)).

Offset 0, canonical program `A061929.P10346754905062245999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061929 (n : ℕ) : ℤ :=
  A061929.P10346754905062245999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062137.P6184650230709915596

`A033999(A002262(n))*A143497(n+2)`
-/

namespace A062137.P6184650230709915596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A143497 (n + 2)

end

end A062137.P6184650230709915596

noncomputable section

/-- A062137: Coefficient triangle of generalized Laguerre polynomials n!*L(n,3,x) (rising powers of x).

Offset 0, canonical program `A062137.P6184650230709915596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A062137 (n : ℕ) : ℤ :=
  A062137.P6184650230709915596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A062137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062190.P12058370499941277202

`A007318(lt[4, A025581(n)])*A007318(n)`
-/

namespace A062190.P12058370499941277202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062190.P12058370499941277202

noncomputable section

/-- A062190: Coefficient triangle of certain polynomials N(5; m,x).

Offset 0, canonical program `A062190.P12058370499941277202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9310 terms. -/
def A062190 (n : ℕ) : ℤ :=
  A062190.P12058370499941277202.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9310 terms. -/
def A062190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062196.P3092116863658250517

`A007318(n)*A074909(A007401(n+1))`
-/

namespace A062196.P3092116863658250517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A074909 (A007401 (n + 1)).toNat

end

end A062196.P3092116863658250517

noncomputable section

/-- A062196: Triangle read by rows, T(n, k) = binomial(n, k)*binomial(n + 2, k).

Offset 0, canonical program `A062196.P3092116863658250517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062196 (n : ℕ) : ℤ :=
  A062196.P3092116863658250517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062264.P7481327833970405594

`A007318(n)*A209518(lt[1, A007318(n+1)])`
-/

namespace A062264.P7481327833970405594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A209518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A062264.P7481327833970405594

noncomputable section

/-- A062264: Coefficient triangle of certain polynomials N(4; m,x).

Offset 0, canonical program `A062264.P7481327833970405594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9721 terms. -/
def A062264 (n : ℕ) : ℤ :=
  A062264.P7481327833970405594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9721 terms. -/
def A062264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062369.P6825136104323839339

`∑{d}[n+1, A060724(#)]`
-/

namespace A062369.P6825136104323839339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d

end

end A062369.P6825136104323839339

noncomputable section

/-- A062369: Dirichlet convolution of n and tau^2(n).

Offset 1, canonical program `A062369.P6825136104323839339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062369 (n : ℕ) : ℤ :=
  A062369.P6825136104323839339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062692.P12181960848858303464

`a(n-1)+A038199(n+1)/(n+1)` with `a(0)=2`
-/

namespace A062692.P12181960848858303464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A038199 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A062692.P12181960848858303464

noncomputable section

/-- A062692: Number of irreducible polynomials over F_2 of degree at most n.

Offset 1, canonical program `A062692.P12181960848858303464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A062692 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062692.P12181960848858303464.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A062692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063007.P6440228480596318052

`A056040(2*A002262(n))*A085478(n)`
-/

namespace A063007.P6440228480596318052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * A002262 n).toNat * A085478 n

end

end A063007.P6440228480596318052

noncomputable section

/-- A063007: T(n,k) = binomial(n,k)*binomial(n+k,k), 0 <= k <= n, triangle read by rows.

Offset 0, canonical program `A063007.P6440228480596318052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9136 terms. -/
def A063007 (n : ℕ) : ℤ :=
  A063007.P6440228480596318052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9136 terms. -/
def A063007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063913.P6791684763187366622

`p?[A097363(n+1)]`
-/

namespace A063913.P6791684763187366622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P6791684763187366622

noncomputable section

/-- A063913: Primes p such that 2*p - 13 is also prime.

Offset 1, canonical program `A063913.P6791684763187366622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A063913 (n : ℕ) : ℤ :=
  A063913.P6791684763187366622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A063913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063934.P17638281874553653123

`a(n-1)+ceil(A166597(a(n-1))/2)` with `a(0)=2`
-/

namespace A063934.P17638281874553653123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ⌈(A166597 (a (n - 1)).toNat : ℚ) / 2⌉

end

end A063934.P17638281874553653123

noncomputable section

/-- A063934: Numbers which are either prime or the average of consecutive odd primes.

Offset 1, canonical program `A063934.P17638281874553653123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063934 (n : ℕ) : ℤ :=
  A063934.P17638281874553653123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065040.P314453470668768770

`A007814(A007318(n))`
-/

namespace A065040.P314453470668768770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007318 n).toNat

end

end A065040.P314453470668768770

noncomputable section

/-- A065040: Triangle read by rows: T(m,k) = exponent of the highest power of 2 dividing the binomial coefficient binomial(m,k).

Offset 0, canonical program `A065040.P314453470668768770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065040 (n : ℕ) : ℤ :=
  A065040.P314453470668768770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065420.P14835865265555642949

`2*A143418(n+1)`
-/

namespace A065420.P14835865265555642949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143418 (n + 1)

end

end A065420.P14835865265555642949

noncomputable section

/-- A065420: Triangle T(n,k) = binomial(n+2,k+1)*(binomial(n+2,k+1)-1), n >=0, 0 <= k <= n.

Offset 0, canonical program `A065420.P14835865265555642949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065420 (n : ℕ) : ℤ :=
  A065420.P14835865265555642949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066324.P4406262514538240262

`A061356(n+2)*A166350(n+1)`
-/

namespace A066324.P4406262514538240262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061356 (n + 2) * A166350 (n + 1)

end

end A066324.P4406262514538240262

noncomputable section

/-- A066324: Number of endofunctions on n labeled points constructed from k rooted trees.

Offset 1, canonical program `A066324.P4406262514538240262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A066324 (n : ℕ) : ℤ :=
  A066324.P4406262514538240262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A066324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066991.P7535364690137440939

`A046792(n+1)*A166350(n+1)`
-/

namespace A066991.P7535364690137440939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046792 (n + 1) * A166350 (n + 1)

end

end A066991.P7535364690137440939

noncomputable section

/-- A066991: Square array read by descending antidiagonals of number of ways of dividing n*k labeled items into k unlabeled orders with n items in each order.

Offset 1, canonical program `A066991.P7535364690137440939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A066991 (n : ℕ) : ℤ :=
  A066991.P7535364690137440939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A066991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068555.P14892946262437006528

`A067804(n)/A007318(n)`
-/

namespace A068555.P14892946262437006528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / (A007318 n : ℚ)

end

end A068555.P14892946262437006528

noncomputable section

/-- A068555: Triangle read by rows in which row n contains (2i)!*(2j)!/(i!*j!*(i+j)!) for i + j = n, i = 0..n.

Offset 0, canonical program `A068555.P14892946262437006528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068555.P14892946262437006528.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068875.P941133582365312759

`A329688(3*n)`
-/

namespace A068875.P941133582365312759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329688 (3 * n)

end

end A068875.P941133582365312759

noncomputable section

/-- A068875: Expansion of (1 + x*C)*C, where C = (1 - (1 - 4*x)^(1/2))/(2*x) is the g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A068875.P941133582365312759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A068875 (n : ℕ) : ℤ :=
  A068875.P941133582365312759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A068875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069914.P10576446271418395889

`A060640(n+1)-A007429(n+1)`
-/

namespace A069914.P10576446271418395889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060640 (n + 1) - A007429 (n + 1)

end

end A069914.P10576446271418395889

noncomputable section

/-- A069914: a(n) = Sum_{d|n} (d-1)*sigma(n/d).

Offset 1, canonical program `A069914.P10576446271418395889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A060640, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069914 (n : ℕ) : ℤ :=
  A069914.P10576446271418395889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A060640, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069914.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070238.P16120210470517707505

`A057428(n)+and(2, A038199(n+1))`
-/

namespace A070238.P16120210470517707505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + Int.land 2 (A038199 (n + 1))

end

end A070238.P16120210470517707505

noncomputable section

/-- A070238: Sign of core(n)-phi(n) where core(n) is the squarefree part of n and phi the Euler totient function.

Offset 1, canonical program `A070238.P16120210470517707505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A070238 (n : ℕ) : ℤ :=
  A070238.P16120210470517707505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A070238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071011.P15902829894463259350

`∩[A001481(n+1), A248150(n+1)]`
-/

namespace A071011.P15902829894463259350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P15902829894463259350

noncomputable section

/-- A071011: Numbers n such that n is a sum of 2 squares (i.e., n is in A001481(k)) and sigma(n) == 0 (mod 4).

Offset 1, canonical program `A071011.P15902829894463259350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. -/
def A071011 (n : ℕ) : ℤ :=
  (A071011.P15902829894463259350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. -/
def A071011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071027.P14267633991690043163

`char[(∏{p}[A139600(n+1), #]-1)%2+n]`
-/

namespace A071027.P14267633991690043163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ) - 1) 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A071027.P14267633991690043163

noncomputable section

/-- A071027: Triangle read by rows giving successive states of cellular automaton generated by "Rule 230".

Offset 0, canonical program `A071027.P14267633991690043163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071027 (n : ℕ) : ℤ :=
  (A071027.P14267633991690043163.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071207.P11576889641976211371

`A003056(n)^A025581(n)*A007318(n)`
-/

namespace A071207.P11576889641976211371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A025581 n : ℤ) * (A007318 n : ℚ)

end

end A071207.P11576889641976211371

noncomputable section

/-- A071207: Triangular array T(n,k) read by rows, giving number of rooted trees on the vertex set {1..n+1} where k children of the root have a label smaller than the label of the root.

Offset 0, canonical program `A071207.P11576889641976211371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A071207 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071207.P11576889641976211371.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A071207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071755.P6343348831511308488

`A071752(n)-A099376(n)`
-/

namespace A071755.P6343348831511308488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 n - A099376 n

end

end A071755.P6343348831511308488

noncomputable section

/-- A071755: Expansion of (1+x^4*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071755.P6343348831511308488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071755 (n : ℕ) : ℤ :=
  A071755.P6343348831511308488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071838.P6957763637837304955

`A321861(A033270(n+1)+1)`
-/

namespace A071838.P6957763637837304955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321861 (A033270 (n + 1) + 1).toNat

end

end A071838.P6957763637837304955

noncomputable section

/-- A071838: a(n) = Pi(8,3)(n) + Pi(8,5)(n) - Pi(8,1)(n) - Pi(8,7)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A071838.P6957763637837304955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071838 (n : ℕ) : ℤ :=
  A071838.P6957763637837304955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071919.P9690953176738005396

`A007318(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A071919.P9690953176738005396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007318 n - a (n - 1)

end

end A071919.P9690953176738005396

noncomputable section

/-- A071919: Number of monotone nondecreasing functions [n]->[m] for n >= 0, m >= 0, read by antidiagonals.

Offset 0, canonical program `A071919.P9690953176738005396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071919 (n : ℕ) : ℤ :=
  A071919.P9690953176738005396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072680.P17430240416638201237

`(1-A010051(n+2))*A166597(n+1)`
-/

namespace A072680.P17430240416638201237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 2)) * A166597 (n + 1)

end

end A072680.P17430240416638201237

noncomputable section

/-- A072680: Difference between (least prime >= n) and (largest prime <= n).

Offset 2, canonical program `A072680.P17430240416638201237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072680 (n : ℕ) : ℤ :=
  A072680.P17430240416638201237.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072784.P13335699993100895541

`A072783(A099375(n)+n)`
-/

namespace A072784.P13335699993100895541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (A099375 n + (n : ℤ)).toNat

end

end A072784.P13335699993100895541

noncomputable section

/-- A072784: Differences between A072741 and A072737.

Offset 0, canonical program `A072784.P13335699993100895541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A072784 (n : ℕ) : ℤ :=
  A072784.P13335699993100895541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A072784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073107.P9676471153378924824

`A007318(n)*A000522(A025581(n))`
-/

namespace A073107.P9676471153378924824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000522 (A025581 n).toNat

end

end A073107.P9676471153378924824

noncomputable section

/-- A073107: Triangle T(n,k) read by rows, where e.g.f. for T(n,k) is exp((1+y)*x)/(1-x).

Offset 0, canonical program `A073107.P9676471153378924824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A073107 (n : ℕ) : ℤ :=
  A073107.P9676471153378924824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A073107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074589.P13295843883208962175

`A000040(A007318(n))`
-/

namespace A074589.P13295843883208962175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007318 n).toNat

end

end A074589.P13295843883208962175

noncomputable section

/-- A074589: Replace each number n in Pascal's triangle with the n-th prime.

Offset 0, canonical program `A074589.P13295843883208962175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074589 (n : ℕ) : ℤ :=
  A074589.P13295843883208962175.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075613.P2820217756380276824

`A117438(A061579(∑[char[2*n]]))`
-/

namespace A075613.P2820217756380276824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117438 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A075613.P2820217756380276824

noncomputable section

/-- A075613: Triangular array read by rows, giving coefficients of P(n,X) = Product_{i=1..2n+1} (X - 1/cos(Pi*k/(2n+1))), a polynomial with integer coefficients.

Offset 1, canonical program `A075613.P2820217756380276824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A075613 (n : ℕ) : ℤ :=
  A075613.P2820217756380276824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A075613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075643.P5171669184174618456

`gcd(A033322(n+1), A182986(n+1))`
-/

namespace A075643.P5171669184174618456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A182986 (n + 1))

end

end A075643.P5171669184174618456

noncomputable section

/-- A075643: Group the natural numbers so that the n-th group contains n numbers one each of a multiple of numbers from 1 to n so that the group sum is a multiple of (n+1): (2), (1, 8), (3, 4, 9), (5, 6, 12, 32), (7, 10, 15, 16, 30), (11, 14, 18, 20, 25, 24), ... Sequence gives initial terms of groups.

Offset 1, canonical program `A075643.P5171669184174618456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4055 terms. -/
def A075643 (n : ℕ) : ℤ :=
  (A075643.P5171669184174618456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4055 terms. -/
def A075643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075993.P7614292244844846049

`Δ[A127739(n+1)-A010766(n+1)]`
-/

namespace A075993.P7614292244844846049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A010766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075993.P7614292244844846049

noncomputable section

/-- A075993: Triangle read by rows: T(n,m) is the number of integers k such that floor(n/k) = m, n >= 1, k = 1..n.

Offset 1, canonical program `A075993.P7614292244844846049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075993 (n : ℕ) : ℤ :=
  A075993.P7614292244844846049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076364.P15167791440389681606

`filter[A060679(n+3), A340373(#)]`
-/

namespace A076364.P15167791440389681606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A076364.P15167791440389681606

noncomputable section

/-- A076364: Number of distinct terms in dRRS equals 2: A061498(x)=2.

Offset 1, canonical program `A076364.P15167791440389681606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A076364 (n : ℕ) : ℤ :=
  A076364.P15167791440389681606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A076364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076503.P10982383402071221078

`p?[A215618(n+1)]`
-/

namespace A076503.P10982383402071221078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076503.P10982383402071221078

noncomputable section

/-- A076503: Prime numbers whose squares have square digit-sums.

Offset 1, canonical program `A076503.P10982383402071221078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A076503 (n : ℕ) : ℤ :=
  A076503.P10982383402071221078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A076503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077429.P5554938724611329357

`∑{digits}[(n+1)², A007318(A007318(#))]-1`
-/

namespace A077429.P5554938724611329357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum - 1

end

end A077429.P5554938724611329357

noncomputable section

/-- A077429: a(n) = floor(log_10(n^2)).

Offset 1, canonical program `A077429.P5554938724611329357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077429 (n : ℕ) : ℤ :=
  A077429.P5554938724611329357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078436.P11254771469081347434

`A023532(A028310(n))*A130128(n+1)`
-/

namespace A078436.P11254771469081347434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A028310 n).toNat * A130128 (n + 1)

end

end A078436.P11254771469081347434

noncomputable section

/-- A078436: Triangle read by rows in which n-th row counts multisets associated with hook partitions.

Offset 1, canonical program `A078436.P11254771469081347434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078436 (n : ℕ) : ℤ :=
  A078436.P11254771469081347434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078461.P6712482256259955631

`gcd(2, n+1)*A353627(n+1)`
-/

namespace A078461.P6712482256259955631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A353627 (n + 1)

end

end A078461.P6712482256259955631

noncomputable section

/-- A078461: a(n) = 0 if n is divisible by the square of odd prime, a(n) = 1 if n is an odd squarefree number, a(n) = 2 otherwise.

Offset 1, canonical program `A078461.P6712482256259955631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078461 (n : ℕ) : ℤ :=
  A078461.P6712482256259955631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079054.P1655160976094069587

`round(tanh(A073274(n+1)-1))`
-/

namespace A079054.P1655160976094069587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A073274 (n + 1) - 1 : ℝ))

end

end A079054.P1655160976094069587

noncomputable section

/-- A079054: a(n) = -1 if the closest prime to prime(n) is prime(n-1); = 1 if the closest prime to prime(n) is prime(n+1); = 0 if prime(n-1) and prime(n+1) are equally close to prime(n).

Offset 2, canonical program `A079054.P1655160976094069587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079054 (n : ℕ) : ℤ :=
  A079054.P1655160976094069587.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079081.P14946958580795685552

`A079079(n+1)/A079080(n+1)`
-/

namespace A079081.P14946958580795685552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079079 (n + 1) : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079081.P14946958580795685552

noncomputable section

/-- A079081: Numerator of (prime(n)+1)*(prime(n+1)+1)/(4*(prime(n)*prime(n+1)+1)).

Offset 1, canonical program `A079081.P14946958580795685552`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079079, A079080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079081.P14946958580795685552.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079079, A079080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079082.P9463845105595939532

`A023523(n+2)/A079080(n+1)`
-/

namespace A079082.P9463845105595939532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023523 (n + 2) : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P9463845105595939532

noncomputable section

/-- A079082: Denominator of (prime(n)+1)*(prime(n+1)+1)/(4*(prime(n)*prime(n+1)+1)).

Offset 1, canonical program `A079082.P9463845105595939532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, A079080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079082.P9463845105595939532.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, A079080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079095.P14370046378917256101

`A079079(eq[1, A079087(n+1)]+1)`
-/

namespace A079095.P14370046378917256101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079095.P14370046378917256101

noncomputable section

/-- A079095: Squarefree numbers of the form (prime(k)+1)*(prime(k+1)+1)/4.

Offset 1, canonical program `A079095.P14370046378917256101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A079095 (n : ℕ) : ℤ :=
  A079095.P14370046378917256101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A079095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079297.P18389843083038880635

`A151890(n)+A002260(n+1)`
-/

namespace A079297.P18389843083038880635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n + A002260 (n + 1)

end

end A079297.P18389843083038880635

noncomputable section

/-- A079297: Triangle read by rows: the k-th column is an arithmetic progression with difference 2k-1 and the top entry is the hexagonal number k*(2*k-1) (A000384).

Offset 1, canonical program `A079297.P18389843083038880635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079297 (n : ℕ) : ℤ :=
  A079297.P18389843083038880635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079409.P10018844493359524927

`C(A053616(A056023(n+1)), A002262(n))`
-/

namespace A079409.P10018844493359524927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053616 (A056023 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A079409.P10018844493359524927

noncomputable section

/-- A079409: Array T(m,n) (m>=0, n>=0) read by antidiagonals: T(0, 0) = 1, T(0, n) = 0 if n > 0, T(m, n) = T(m-1, n - T(m-1, n)) + T(m-1, n - T(m-1, n-1)) if m > 0.

Offset 0, canonical program `A079409.P10018844493359524927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A079409 (n : ℕ) : ℤ :=
  (A079409.P10018844493359524927.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A079409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080236.P11120207343015903809

`2*A080233(n)-A302764(n+1)`
-/

namespace A080236.P11120207343015903809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080233 n - A302764 (n + 1)

end

end A080236.P11120207343015903809

noncomputable section

/-- A080236: Triangle of differences of consecutive pairs of row elements of triangle A080233.

Offset 0, canonical program `A080236.P11120207343015903809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080236 (n : ℕ) : ℤ :=
  A080236.P11120207343015903809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080381.P4646924568806409533

`gcd(A001405(A003056(n)), A007318(n))`
-/

namespace A080381.P4646924568806409533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (A003056 n).toNat) (A007318 n)

end

end A080381.P4646924568806409533

noncomputable section

/-- A080381: Triangle read by rows: gcd(binomial(n,floor(n/2)), binomial(n,i)), i=0..n; greatest common divisor of binomial coefficients and corresponding central binomial coefficient.

Offset 0, canonical program `A080381.P4646924568806409533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080381 (n : ℕ) : ℤ :=
  (A080381.P4646924568806409533.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080396.P13684053214751030838

`A007947(A007318(n))`
-/

namespace A080396.P13684053214751030838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007318 n).toNat

end

end A080396.P13684053214751030838

noncomputable section

/-- A080396: Largest squarefree numbers dividing the binomial coefficients C(n,k) read by row, 0<=k<=n. Squarefree kernel of Pascal triangle.

Offset 0, canonical program `A080396.P13684053214751030838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080396 (n : ℕ) : ℤ :=
  A080396.P13684053214751030838.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080396.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081422.P3770972195643103475

`A244911(A245300(n))-A143844(n)`
-/

namespace A081422.P3770972195643103475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 (A245300 n).toNat - A143844 n

end

end A081422.P3770972195643103475

noncomputable section

/-- A081422: Triangle read by rows in which row n consists of the first n+1 n-gonal numbers.

Offset 0, canonical program `A081422.P3770972195643103475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A081422 (n : ℕ) : ℤ :=
  A081422.P3770972195643103475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A081422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082038.P1982626931142953073

`A082039(n)*A233543(n)`
-/

namespace A082038.P1982626931142953073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082039 n * A233543 n

end

end A082038.P1982626931142953073

noncomputable section

/-- A082038: A square array of quadratic-factorial numbers, read by antidiagonals.

Offset 0, canonical program `A082038.P1982626931142953073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A082038 (n : ℕ) : ℤ :=
  A082038.P1982626931142953073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A082038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082500.P772488791767380489

`A230850(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A082500.P772488791767380489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A230850 n + a (n - 2)

end

end A082500.P772488791767380489

noncomputable section

/-- A082500: a(n) = ceiling(n/2) if n is odd, or prime(n/2) otherwise.

Offset 1, canonical program `A082500.P772488791767380489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082500 (n : ℕ) : ℤ :=
  A082500.P772488791767380489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082854.P12286261217204783518

`A082853(n)+1`
-/

namespace A082854.P12286261217204783518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 n + 1

end

end A082854.P12286261217204783518

noncomputable section

/-- A082854: Integers 1 to Catalan(n) followed by integers 1 to Catalan(n+1) etc.

Offset 0, canonical program `A082854.P12286261217204783518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082853, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082854 (n : ℕ) : ℤ :=
  A082854.P12286261217204783518.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082853, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082907.P13189701143916682602

`A000079(val(A007318(n), 2))`
-/

namespace A082907.P13189701143916682602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A007318 n).toNat 2)

end

end A082907.P13189701143916682602

noncomputable section

/-- A082907: A modified Pascal's triangle, read by rows, and modified as follows: binomial(n,j) is replaced by gcd(2^n, binomial(n,j)), i.e., the largest power of 2 dividing binomial(n,j).

Offset 0, canonical program `A082907.P13189701143916682602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082907 (n : ℕ) : ℤ :=
  A082907.P13189701143916682602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083015.P16803926072691412127

`A000302(n)-2*A058622(n)²`
-/

namespace A083015.P16803926072691412127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - 2 * A058622 n ^ 2

end

end A083015.P16803926072691412127

noncomputable section

/-- A083015: a(n) = the number of ordered pairs of n-bit bit strings, such that both bit strings have at least n/2 one-bits, or both have at most n/2 one-bits.

Offset 0, canonical program `A083015.P16803926072691412127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A083015 (n : ℕ) : ℤ :=
  A083015.P16803926072691412127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A083015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083038.P4826268886601187542

`abs(∑[A083037(n+1)])`
-/

namespace A083038.P4826268886601187542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A083038.P4826268886601187542

noncomputable section

/-- A083038: A fractal sequence.

Offset 1, canonical program `A083038.P4826268886601187542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083038 (n : ℕ) : ℤ :=
  A083038.P4826268886601187542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085358.P10431996975946605734

`A000975(A035612(n+1))`
-/

namespace A085358.P10431996975946605734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A035612 (n + 1)).toNat

end

end A085358.P10431996975946605734

noncomputable section

/-- A085358: Runs of zeros in binomial(3k,k)/(2k+1) (mod 2): relates ternary trees (A001764) to the infinite Fibonacci word (A003849).

Offset 0, canonical program `A085358.P10431996975946605734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085358 (n : ℕ) : ℤ :=
  A085358.P10431996975946605734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085383.P8141806508440991128

`ceil(A074909(n+1)/A007318(n))*A010766(n+1)`
-/

namespace A085383.P8141806508440991128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074909 (n + 1) : ℚ) / (A007318 n : ℚ)⌉ * A010766 (n + 1)

end

end A085383.P8141806508440991128

noncomputable section

/-- A085383: Triangle read by rows, 1 <= k <= n: T(n,k) = floor(n/k)*ceiling(n/k).

Offset 1, canonical program `A085383.P8141806508440991128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085383 (n : ℕ) : ℤ :=
  A085383.P8141806508440991128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085391.P7028724132691685477

`A007318(n)-A026729(n)`
-/

namespace A085391.P7028724132691685477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A026729 n

end

end A085391.P7028724132691685477

noncomputable section

/-- A085391: Square array of centered numbers, read by antidiagonals.

Offset 0, canonical program `A085391.P7028724132691685477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085391 (n : ℕ) : ℤ :=
  A085391.P7028724132691685477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085475.P15127605243071687092

`A085478(n)-A116088(n)`
-/

namespace A085475.P15127605243071687092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - A116088 n

end

end A085475.P15127605243071687092

noncomputable section

/-- A085475: Square array read by antidiagonals: T(n,k) = binomial(2*n+k, k) - binomial(2*n, k).

Offset 0, canonical program `A085475.P15127605243071687092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085475 (n : ℕ) : ℤ :=
  A085475.P15127605243071687092.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085712.P6030904731041959429

`2*p?[A002731(n+1)]`
-/

namespace A085712.P6030904731041959429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085712.P6030904731041959429

noncomputable section

/-- A085712: Semiprimes n such that lpf(n)^spf(n)+1 is also semiprime, where lpf(n) is larger prime factor of n and spf(n) is smaller prime factor of n.

Offset 1, canonical program `A085712.P6030904731041959429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A085712 (n : ℕ) : ℤ :=
  A085712.P6030904731041959429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A085712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085841.P18023952470375575868

`A229032(A292564(n))`
-/

namespace A085841.P18023952470375575868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229032 (A292564 n).toNat

end

end A085841.P18023952470375575868

noncomputable section

/-- A085841: Triangle: row #n has n+1 terms. T(n,m) = 4^m (2n+1)! / ( (2n-2m)! (2m+1)! ).

Offset 0, canonical program `A085841.P18023952470375575868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A085841 (n : ℕ) : ℤ :=
  A085841.P18023952470375575868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A085841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085880.P13933320555991114901

`A007318(n)*A168256(n)`
-/

namespace A085880.P13933320555991114901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A168256 n

end

end A085880.P13933320555991114901

noncomputable section

/-- A085880: Triangle T(n,k) read by rows: multiply row n of Pascal's triangle (A007318) by the n-th Catalan number (A000108).

Offset 0, canonical program `A085880.P13933320555991114901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6838 terms. -/
def A085880 (n : ℕ) : ℤ :=
  A085880.P13933320555991114901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6838 terms. -/
def A085880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085881.P7222178612221218642

`A001147(A003056(n))*A007318(n)`
-/

namespace A085881.P7222178612221218642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A003056 n).toNat * A007318 n

end

end A085881.P7222178612221218642

noncomputable section

/-- A085881: Triangle T(n,k) read by rows: multiply row n of Pascal's triangle (A007318) by A001147(n).

Offset 0, canonical program `A085881.P7222178612221218642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1502 terms. -/
def A085881 (n : ℕ) : ℤ :=
  A085881.P7222178612221218642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1502 terms. -/
def A085881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085918.P16969546396319122276

`p?[Δ[A049688(n)]-2]`
-/

namespace A085918.P16969546396319122276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P16969546396319122276

noncomputable section

/-- A085918: Primes p such that for some k the number of terms > 0 and < 1 in the Farey sequence of order k is p.

Offset 1, canonical program `A085918.P16969546396319122276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A085918 (n : ℕ) : ℤ :=
  A085918.P16969546396319122276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A085918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087011.P18029174612393828854

`A035250(n+1)-A087010(n+1)^round(atan(n)/2)`
-/

namespace A087011.P18029174612393828854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035250 (n + 1) : ℚ) - (A087010 (n + 1) : ℚ) ^ (SequenceMachineLib.roundAway (Real.arctan (n : ℝ) / 2) : ℤ)

end

end A087011.P18029174612393828854

noncomputable section

/-- A087011: Number of primes of form 4*k+3 between n and 2n (inclusive).

Offset 1, canonical program `A087011.P18029174612393828854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087011.P18029174612393828854.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088459.P14785873139532937752

`A007318(floor(n/2))*A074909(ceil(n/2))`
-/

namespace A088459.P14785873139532937752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 2⌋.toNat * A074909 ⌈(n : ℚ) / 2⌉.toNat

end

end A088459.P14785873139532937752

noncomputable section

/-- A088459: Triangle read by rows: T(n,k) represents the number of lozenge tilings of an (n,1,n)-hexagon which include the non-vertical tile above the main diagonal starting in position k+1.

Offset 1, canonical program `A088459.P14785873139532937752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088459 (n : ℕ) : ℤ :=
  A088459.P14785873139532937752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088617.P1528694509801735224

`A057977(2*A002262(n))*A085478(n)`
-/

namespace A088617.P1528694509801735224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * A002262 n).toNat * A085478 n

end

end A088617.P1528694509801735224

noncomputable section

/-- A088617: Triangle read by rows: T(n,k) = C(n+k,n)*C(n,k)/(k+1), for n >= 0, k = 0..n.

Offset 0, canonical program `A088617.P1528694509801735224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9543 terms. -/
def A088617 (n : ℕ) : ℤ :=
  A088617.P1528694509801735224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9543 terms. -/
def A088617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089215.P9624417689871271006

`A209281(n+1)+1`
-/

namespace A089215.P9624417689871271006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1) + 1

end

end A089215.P9624417689871271006

noncomputable section

/-- A089215: Thue-Morse sequence on the integers.

Offset 1, canonical program `A089215.P9624417689871271006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089215 (n : ℕ) : ℤ :=
  A089215.P9624417689871271006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089627.P5867080541548831809

`A007318(n)*A052553(n)`
-/

namespace A089627.P5867080541548831809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052553 n

end

end A089627.P5867080541548831809

noncomputable section

/-- A089627: T(n,k) = binomial(n,2*k)*binomial(2*k,k) for 0 <= k <= n, triangle read by rows.

Offset 0, canonical program `A089627.P5867080541548831809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089627 (n : ℕ) : ℤ :=
  A089627.P5867080541548831809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089880.P5542344257203775530

`(A000108(n)+A089849(n))/2`
-/

namespace A089880.P5542344257203775530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A089849 n : ℚ) / 2

end

end A089880.P5542344257203775530

noncomputable section

/-- A089880: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A069772.

Offset 0, canonical program `A089880.P5542344257203775530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089880 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089880.P5542344257203775530.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089944.P785157555384208964

`A059298(n)/A007318(n)`
-/

namespace A089944.P785157555384208964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059298 n : ℚ) / (A007318 n : ℚ)

end

end A089944.P785157555384208964

noncomputable section

/-- A089944: Square array, read by antidiagonals, where the n-th row is the n-th binomial transform of the natural numbers, with T(0,k) = (k+1) for k>=0.

Offset 0, canonical program `A089944.P785157555384208964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3342 terms. -/
def A089944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089944.P785157555384208964.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3342 terms. -/
def A089944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090447.P8684806142227263416

`gcd(a(n-1), A073423(n))*A007318(n)` with `a(0)=1`
-/

namespace A090447.P8684806142227263416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd (a (n - 1)) (A073423 n) : ℤ) * A007318 n

end

end A090447.P8684806142227263416

noncomputable section

/-- A090447: Triangle of partial products of binomials.

Offset 0, canonical program `A090447.P8684806142227263416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A090447 (n : ℕ) : ℤ :=
  A090447.P8684806142227263416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A090447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091187.P5641360087202149170

`A001006(A002262(n))*A007318(n)`
-/

namespace A091187.P5641360087202149170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A002262 n).toNat * A007318 n

end

end A091187.P5641360087202149170

noncomputable section

/-- A091187: Triangle read by rows: T(n,k) is the number of ordered trees with n edges and k branches.

Offset 1, canonical program `A091187.P5641360087202149170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091187 (n : ℕ) : ℤ :=
  A091187.P5641360087202149170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091867.P15710449933827193925

`A007318(n)*A005043(A025581(n))`
-/

namespace A091867.P15710449933827193925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005043 (A025581 n).toNat

end

end A091867.P15710449933827193925

noncomputable section

/-- A091867: Triangle read by rows: T(n,k) = number of Dyck paths of semilength n having k peaks at odd height.

Offset 0, canonical program `A091867.P15710449933827193925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091867 (n : ℕ) : ℤ :=
  A091867.P15710449933827193925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092163.P2121220792161246039

`2*A058296(n+2)`
-/

namespace A092163.P2121220792161246039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058296 (n + 2)

end

end A092163.P2121220792161246039

noncomputable section

/-- A092163: a(n) = prime(2n) + prime(2n+1).

Offset 1, canonical program `A092163.P2121220792161246039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092163 (n : ℕ) : ℤ :=
  A092163.P2121220792161246039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092582.P14071940716078607765

`gcd(Δ[A173333(n+1)], A134082(n))`
-/

namespace A092582.P14071940716078607765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A134082 n)

end

end A092582.P14071940716078607765

noncomputable section

/-- A092582: Triangle read by rows: T(n,k) is the number of permutations p of [n] having length of first run equal to k.

Offset 1, canonical program `A092582.P14071940716078607765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A092582 (n : ℕ) : ℤ :=
  (A092582.P14071940716078607765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A092582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092865.P9800871042429563602

`A007318(A091995(n+1)-1)/A033999(A322832(n))`
-/

namespace A092865.P9800871042429563602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (A091995 (n + 1) - 1).toNat : ℚ) / (A033999 (A322832 n).toNat : ℚ)

end

end A092865.P9800871042429563602

noncomputable section

/-- A092865: Nonzero elements in Klee's identity Sum[(-1)^k binomial[n,k]binomial[n+k,m],{k,0,n}] == (-1)^n binomial[n,m-n].

Offset 0, canonical program `A092865.P9800871042429563602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5183 terms. -/
def A092865 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092865.P9800871042429563602.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5183 terms. -/
def A092865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094192.P18098978962141808339

`A038567(eq[2, gcd(2, (n+1)*A038567(n))])`
-/

namespace A094192.P18098978962141808339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ((n + 1 : ℤ) * A038567 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094192.P18098978962141808339

noncomputable section

/-- A094192: Values x of the generator pairs (x, y), x>y of primitive Pythagorean triples, sorted.

Offset 1, canonical program `A094192.P18098978962141808339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094192 (n : ℕ) : ℤ :=
  A094192.P18098978962141808339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094305.P14716528496778575982

`A007318(n)*A127739(n+1)`
-/

namespace A094305.P14716528496778575982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A127739 (n + 1)

end

end A094305.P14716528496778575982

noncomputable section

/-- A094305: Triangle read by rows: T(n,k) = ((n+1)(n+2)/2) * binomial(n,k) (0 <= k <= n).

Offset 0, canonical program `A094305.P14716528496778575982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094305 (n : ℕ) : ℤ :=
  A094305.P14716528496778575982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094436.P7881674701604932164

`A007318(n)*A104763(n+1)`
-/

namespace A094436.P7881674701604932164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A104763 (n + 1)

end

end A094436.P7881674701604932164

noncomputable section

/-- A094436: Triangular array T(n,k) = Fibonacci(k+1)*binomial(n,k) for k = 0..n; n >= 0.

Offset 0, canonical program `A094436.P7881674701604932164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094436 (n : ℕ) : ℤ :=
  A094436.P7881674701604932164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094437.P2545889634383283461

`A007318(n)*A193588(n)`
-/

namespace A094437.P2545889634383283461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A193588 n

end

end A094437.P2545889634383283461

noncomputable section

/-- A094437: Triangular array T(n,k) = Fibonacci(k+2)*C(n,k), k=0..n, n>=0.

Offset 0, canonical program `A094437.P2545889634383283461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094437 (n : ℕ) : ℤ :=
  A094437.P2545889634383283461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094441.P3669008604322146488

`A007318(n)*A104762(n+1)`
-/

namespace A094441.P3669008604322146488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A104762 (n + 1)

end

end A094441.P3669008604322146488

noncomputable section

/-- A094441: Triangular array T(n,k) = Fibonacci(n+1-k)*C(n,k), 0 <= k <= n.

Offset 0, canonical program `A094441.P3669008604322146488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094441 (n : ℕ) : ℤ :=
  A094441.P3669008604322146488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094442.P2673208053571215716

`A007318(n)*A000045(A025581(n)+2)`
-/

namespace A094442.P2673208053571215716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000045 (A025581 n + 2).toNat

end

end A094442.P2673208053571215716

noncomputable section

/-- A094442: Triangular array T(n,k) = Fibonacci(n+2-k)*C(n,k), 0 <= k <= n.

Offset 0, canonical program `A094442.P2673208053571215716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094442 (n : ℕ) : ℤ :=
  A094442.P2673208053571215716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094527.P14610792163670534615

`A062344(A061579(n))`
-/

namespace A094527.P14610792163670534615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A061579 n).toNat

end

end A094527.P14610792163670534615

noncomputable section

/-- A094527: Triangle T(n,k), read by rows, defined by T(n,k) = binomial(2*n,n-k).

Offset 0, canonical program `A094527.P14610792163670534615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A094527 (n : ℕ) : ℤ :=
  A094527.P14610792163670534615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A094527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095078.P7800583986125222091

`∩[A030130(n+1), A100724(n+1)]`
-/

namespace A095078.P7800583986125222091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095078.P7800583986125222091

noncomputable section

/-- A095078: Primes with a single 0 bit in their binary expansion.

Offset 1, canonical program `A095078.P7800583986125222091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A095078 (n : ℕ) : ℤ :=
  (A095078.P7800583986125222091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A095078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095743.P808282831159510369

`p?[A051244(n+1)]`
-/

namespace A095743.P808282831159510369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095743.P808282831159510369

noncomputable section

/-- A095743: Primes p for which A037888(p) = 1, i.e., primes whose binary expansion is almost symmetric, needing just a one-bit flip to become palindrome.

Offset 1, canonical program `A095743.P808282831159510369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A095743 (n : ℕ) : ℤ :=
  A095743.P808282831159510369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A095743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095744.P12869582977298875679

`p?[A051247(n+1)]`
-/

namespace A095744.P12869582977298875679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095744.P12869582977298875679

noncomputable section

/-- A095744: Primes p for which A037888(p) = 2, i.e., primes whose binary expansion needs flips of just two bits to become palindrome.

Offset 1, canonical program `A095744.P12869582977298875679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A095744 (n : ℕ) : ℤ :=
  A095744.P12869582977298875679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A095744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097009.P7289407710540198229

`gcd(A006093(n+1), A072473(n+1))`
-/

namespace A097009.P7289407710540198229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A072473 (n + 1))

end

end A097009.P7289407710540198229

noncomputable section

/-- A097009: a(n) = gcd(prime(2*n)-1, prime(n)-1).

Offset 1, canonical program `A097009.P7289407710540198229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097009 (n : ℕ) : ℤ :=
  (A097009.P7289407710540198229.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097610.P1461864535676650287

`A007318(n)*A126120(A025581(n))`
-/

namespace A097610.P1461864535676650287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126120 (A025581 n).toNat

end

end A097610.P1461864535676650287

noncomputable section

/-- A097610: Triangle read by rows: T(n,k) is number of Motzkin paths of length n and having k horizontal steps.

Offset 0, canonical program `A097610.P1461864535676650287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097610 (n : ℕ) : ℤ :=
  A097610.P1461864535676650287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097805.P1755176267250853107

`A007318(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A097805.P1755176267250853107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (n - 1) - a (n - 1)

end

end A097805.P1755176267250853107

noncomputable section

/-- A097805: Number of compositions of n with k parts, T(n, k) = binomial(n-1, k-1) for n, k >= 1 and T(n, 0) = 0^n, triangle read by rows for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A097805.P1755176267250853107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097805 (n : ℕ) : ℤ :=
  A097805.P1755176267250853107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098031.P16525975557051663860

`p?[A153081(n+1)+A097363(n+1)]`
-/

namespace A098031.P16525975557051663860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1) + A097363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098031.P16525975557051663860

noncomputable section

/-- A098031: Primes p such that p = (prime(n)+ prime(n+4))/2.

Offset 1, canonical program `A098031.P16525975557051663860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. -/
def A098031 (n : ℕ) : ℤ :=
  A098031.P16525975557051663860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. -/
def A098031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098445.P10491373951280653570

`log2(gcd(16, A007706(n)))`
-/

namespace A098445.P10491373951280653570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 16 (A007706 n) : ℝ)

end

end A098445.P10491373951280653570

noncomputable section

/-- A098445: Coefficients of powers of q^5 in (q)_oo^5 == (q_5)^oo (mod 5).

Offset 0, canonical program `A098445.P10491373951280653570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A098445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098445.P10491373951280653570.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A098445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098473.P9829121638664480171

`A000984(A002262(n))*A007318(n)`
-/

namespace A098473.P9829121638664480171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A002262 n).toNat * A007318 n

end

end A098473.P9829121638664480171

noncomputable section

/-- A098473: Triangle T(n,k) read by rows, T(n, k) = binomial(2*k, k)*binomial(n, k), 0<=k<=n.

Offset 0, canonical program `A098473.P9829121638664480171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A098473 (n : ℕ) : ℤ :=
  A098473.P9829121638664480171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A098473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098474.P5187163944970841992

`A000108(A002262(n))*A007318(n)`
-/

namespace A098474.P5187163944970841992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A007318 n

end

end A098474.P5187163944970841992

noncomputable section

/-- A098474: Triangle read by rows, T(n,k) = C(n,k)*C(2*k,k)/(k+1), n >= 0, 0 <= k <= n.

Offset 0, canonical program `A098474.P5187163944970841992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098474 (n : ℕ) : ℤ :=
  A098474.P5187163944970841992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098505.P5754595311087351672

`A007318(n)/gcd(A007318(n), A168256(n))`
-/

namespace A098505.P5754595311087351672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A007318 n) (A168256 n) : ℚ)

end

end A098505.P5754595311087351672

noncomputable section

/-- A098505: Numerators in inverse of a Catalan scaled binomial matrix.

Offset 0, canonical program `A098505.P5754595311087351672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098505.P5754595311087351672.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098825.P9226498537303869935

`A000166(A002262(n))*A007318(n)`
-/

namespace A098825.P9226498537303869935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A002262 n).toNat * A007318 n

end

end A098825.P9226498537303869935

noncomputable section

/-- A098825: Triangle read by rows: T(n,k) = number of partial derangements, that is, the number of permutations of n distinct, ordered items in which exactly k of the items are in their natural ordered positions, for n >= 0, k = n, n-1, ..., 1, 0.

Offset 0, canonical program `A098825.P9226498537303869935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A098825 (n : ℕ) : ℤ :=
  A098825.P9226498537303869935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A098825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098961.P11221875119800653851

`13*A001481(n+2)`
-/

namespace A098961.P11221875119800653851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A001481 (n + 2)

end

end A098961.P11221875119800653851

noncomputable section

/-- A098961: Sums of two squares and divisible by 13.

Offset 1, canonical program `A098961.P11221875119800653851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098961 (n : ℕ) : ℤ :=
  A098961.P11221875119800653851.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098961.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099049.P5479479623844878701

`∪[A024675(n+1), A099047(n+1)]`
-/

namespace A099049.P5479479623844878701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P5479479623844878701

noncomputable section

/-- A099049: Numbers n such that n-1 and n+1 are both prime or both composite.

Offset 1, canonical program `A099049.P5479479623844878701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099049 (n : ℕ) : ℤ :=
  (A099049.P5479479623844878701.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100367.P14256185625619579639

`2*(eq[1, A340373(n+1)]+1)`
-/

namespace A100367.P14256185625619579639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A100367.P14256185625619579639

noncomputable section

/-- A100367: Even numbers with two prime factors, not counting multiplicity.

Offset 1, canonical program `A100367.P14256185625619579639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100367 (n : ℕ) : ℤ :=
  (A100367.P14256185625619579639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102363.P15098294147514921799

`A007318(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A102363.P15098294147514921799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (n - 1) + a (n - 1)

end

end A102363.P15098294147514921799

noncomputable section

/-- A102363: Triangle read by rows, constructed by a Pascal-like rule with left edge = 2^k, right edge = 2^(k+1)-1 (k >= 0).

Offset 0, canonical program `A102363.P15098294147514921799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102363 (n : ℕ) : ℤ :=
  A102363.P15098294147514921799.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102364.P14950148720451937594

`A072649(n+1)-(A010056(n+1)+A007895(n))`
-/

namespace A102364.P14950148720451937594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) - (A010056 (n + 1) + A007895 n)

end

end A102364.P14950148720451937594

noncomputable section

/-- A102364: Number of terms in Fibonacci sequence less than n not used in Zeckendorf representation of n (the Zeckendorf representation of n is a sum of non-consecutive distinct Fibonacci numbers).

Offset 0, canonical program `A102364.P14950148720451937594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102364 (n : ℕ) : ℤ :=
  A102364.P14950148720451937594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102480.P6644944660085184188

`A007318(n)^(A002262(n)-1)`
-/

namespace A102480.P6644944660085184188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A002262 n - 1 : ℤ)

end

end A102480.P6644944660085184188

noncomputable section

/-- A102480: Triangle read by rows: row n contains the numbers C(n,k)^(k-1) for 0 <= k <= n, n >= 0.

Offset 0, canonical program `A102480.P6644944660085184188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A102480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102480.P6644944660085184188.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A102480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102574.P3815926693039414153

`∑{d}[n+1, A254520(#)*A390689((n+1)/#)]`
-/

namespace A102574.P3815926693039414153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d * A390689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A102574.P3815926693039414153

noncomputable section

/-- A102574: a(n) is the sum of the distinct norms of the divisors of n over the Gaussian integers.

Offset 1, canonical program `A102574.P3815926693039414153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102574 (n : ℕ) : ℤ :=
  A102574.P3815926693039414153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102716.P1148781188070625620

`∑{d}[A007318(n), #]`
-/

namespace A102716.P1148781188070625620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P1148781188070625620

noncomputable section

/-- A102716: Triangle read by rows: T(n,k) = sigma(binomial(n,k)) (0 <= k <= n), where sigma(m) is the sum of the positive divisors of m.

Offset 0, canonical program `A102716.P1148781188070625620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A102716 (n : ℕ) : ℤ :=
  (A102716.P1148781188070625620.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A102716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103371.P12505102515609200163

`A007318(n)*A135278(n)`
-/

namespace A103371.P12505102515609200163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135278 n

end

end A103371.P12505102515609200163

noncomputable section

/-- A103371: Number triangle T(n,k) = C(n,n-k)*C(n+1,n-k).

Offset 0, canonical program `A103371.P12505102515609200163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103371 (n : ℕ) : ℤ :=
  A103371.P12505102515609200163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103406.P6599304241706345565

`A002260(n+1)*A007318(n)`
-/

namespace A103406.P6599304241706345565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A007318 n

end

end A103406.P6599304241706345565

noncomputable section

/-- A103406: Triangle read by rows: n-th row = unsigned coefficients of the characteristic polynomials of an n X n matrix with 2's on the diagonal and 1's elsewhere.

Offset 0, canonical program `A103406.P6599304241706345565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103406 (n : ℕ) : ℤ :=
  A103406.P6599304241706345565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103516.P4703470818759479887

`A103451(n)*A131923(n)`
-/

namespace A103516.P4703470818759479887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A131923 n

end

end A103516.P4703470818759479887

noncomputable section

/-- A103516: Triangle read by rows: count in a vee.

Offset 0, canonical program `A103516.P4703470818759479887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103516 (n : ℕ) : ℤ :=
  A103516.P4703470818759479887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103582.P4261337120135871916

`(A180969(floor((2*n+1)/2))+1)%2`
-/

namespace A103582.P4261337120135871916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180969 ⌊(2 * n + 1 : ℚ) / 2⌋.toNat + 1) 2

end

end A103582.P4261337120135871916

noncomputable section

/-- A103582: Binary array below read by downward antidiagonals.

Offset 0, canonical program `A103582.P4261337120135871916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A103582 (n : ℕ) : ℤ :=
  A103582.P4261337120135871916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A103582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103944.P4730550679544556026

`(n+1)*A178792(n)`
-/

namespace A103944.P4730550679544556026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178792 n

end

end A103944.P4730550679544556026

noncomputable section

/-- A103944: Number of rooted unicursal n-edge maps in the plane (planar with a distinguished outside face).

Offset 1, canonical program `A103944.P4730550679544556026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A103944 (n : ℕ) : ℤ :=
  A103944.P4730550679544556026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A103944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103973.P3322991728647571882

`A060546(n)*A089849(n)`
-/

namespace A103973.P3322991728647571882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A089849 n

end

end A103973.P3322991728647571882

noncomputable section

/-- A103973: Expansion of (sqrt(1-8*x^2)+8*x^2+2*x-1)/(2*x*sqrt(1-8*x^2)).

Offset 0, canonical program `A103973.P3322991728647571882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A103973 (n : ℕ) : ℤ :=
  A103973.P3322991728647571882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A103973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103978.P10574377061937498485

`A056449(n)*A089849(n)`
-/

namespace A103978.P10574377061937498485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A089849 n

end

end A103978.P10574377061937498485

noncomputable section

/-- A103978: Expansion of (sqrt(1-12*x^2)+12*x^2+2*x-1)/(2*x*sqrt(1-12*x^2)).

Offset 0, canonical program `A103978.P10574377061937498485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A103978 (n : ℕ) : ℤ :=
  A103978.P10574377061937498485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A103978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104548.P5049053651902084609

`A132062(A038722(n+2))`
-/

namespace A104548.P5049053651902084609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132062 (A038722 (n + 2)).toNat

end

end A104548.P5049053651902084609

noncomputable section

/-- A104548: Triangle read by rows giving coefficients of Bessel polynomial p_n(x).

Offset 0, canonical program `A104548.P5049053651902084609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A104548 (n : ℕ) : ℤ :=
  A104548.P5049053651902084609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A104548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104709.P12815197067085567270

`A140513(n)-A054143(n)`
-/

namespace A104709.P12815197067085567270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A054143 n

end

end A104709.P12815197067085567270

noncomputable section

/-- A104709: Triangle read by rows: T(n,k) = Sum_{j=0..n} 2^(n-j)*binomial(j,k) for n >= 0 and 0 <= k <= n; also, Riordan array (1/((1-x)*(1-2*x)), x/(1-x)).

Offset 0, canonical program `A104709.P12815197067085567270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104709 (n : ℕ) : ℤ :=
  A104709.P12815197067085567270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104712.P8393777965278521263

`A168577(n+2)-A014410(n+2)`
-/

namespace A104712.P8393777965278521263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168577 (n + 2) - A014410 (n + 2)

end

end A104712.P8393777965278521263

noncomputable section

/-- A104712: Pascal's triangle, with the first two columns removed.

Offset 2, canonical program `A104712.P8393777965278521263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104712 (n : ℕ) : ℤ :=
  A104712.P8393777965278521263.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104795.P13015670119841549225

`A198321(n+1)+1`
-/

namespace A104795.P13015670119841549225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + 1

end

end A104795.P13015670119841549225

noncomputable section

/-- A104795: Triangle T(n,k) = C(n,k)+1 for k

Offset 0, canonical program `A104795.P13015670119841549225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104795 (n : ℕ) : ℤ :=
  A104795.P13015670119841549225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105774.P16927579740594688494

`A000045(2+A072649(n))-a(n-A000045(1+A072649(n)))` with `a(0)=1, a(1)=1`
-/

namespace A105774.P16927579740594688494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (2 + A072649 n).toNat - a ((n : ℤ) - A000045 (1 + A072649 n).toNat).toNat

end

end A105774.P16927579740594688494

noncomputable section

/-- A105774: A "fractal" transform of the Fibonacci numbers: a(1)=1; then if F(n) < k <= F(n+1), a(k) = F(n+1) - a(k - F(n)) where F(n) = A000045(n).

Offset 1, canonical program `A105774.P16927579740594688494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105774 (n : ℕ) : ℤ :=
  A105774.P16927579740594688494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105851.P4257875818357330000

`A134394(n+1)/A004736(n+1)*A130321(n)`
-/

namespace A105851.P4257875818357330000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134394 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A130321 n : ℚ)

end

end A105851.P4257875818357330000

noncomputable section

/-- A105851: Binomial transform triangle, read by rows.

Offset 0, canonical program `A105851.P4257875818357330000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105851 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A105851.P4257875818357330000.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106246.P11087909362624878543

`A007318(n)*A167194(n+1)`
-/

namespace A106246.P11087909362624878543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A167194 (n + 1)

end

end A106246.P11087909362624878543

noncomputable section

/-- A106246: Number triangle T(n,k)=C(n,k)C(2,n-k).

Offset 0, canonical program `A106246.P11087909362624878543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106246 (n : ℕ) : ℤ :=
  A106246.P11087909362624878543.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106468.P2153356384866535621

`and(A082043(n), A122431(n))`
-/

namespace A106468.P2153356384866535621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082043 n) (A122431 n)

end

end A106468.P2153356384866535621

noncomputable section

/-- A106468: Absolute value of inverse of number triangle A106465.

Offset 0, canonical program `A106468.P2153356384866535621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106468 (n : ℕ) : ℤ :=
  A106468.P2153356384866535621.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107015.P10636807577461555633

`∑[A003849(n)-A008612(A035612(n+1))]`
-/

namespace A107015.P10636807577461555633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n - A008612 (A035612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107015.P10636807577461555633

noncomputable section

/-- A107015: Number of even terms in Zeckendorf representation of n.

Offset 1, canonical program `A107015.P10636807577461555633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107015 (n : ℕ) : ℤ :=
  A107015.P10636807577461555633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107105.P7207134297343697420

`C(A007318(n)+1, 2)`
-/

namespace A107105.P7207134297343697420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n + 1).toNat 2

end

end A107105.P7207134297343697420

noncomputable section

/-- A107105: Triangle, read by rows, where T(n,k) = C(n,k)*(C(n,k) + 1)/2, n>=k>=0.

Offset 0, canonical program `A107105.P7207134297343697420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A107105 (n : ℕ) : ℤ :=
  (A107105.P7207134297343697420.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A107105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107230.P8874938179694735189

`A007318(n)*A001405(A025581(n))`
-/

namespace A107230.P8874938179694735189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001405 (A025581 n).toNat

end

end A107230.P8874938179694735189

noncomputable section

/-- A107230: A number triangle of inverse Chebyshev transforms.

Offset 0, canonical program `A107230.P8874938179694735189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107230 (n : ℕ) : ℤ :=
  A107230.P8874938179694735189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108036.P4284321019539104631

`A108037((n-1)%A007318(n)²)`
-/

namespace A108036.P4284321019539104631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (Int.tmod ((n : ℤ) - 1) (A007318 n ^ 2)).toNat

end

end A108036.P4284321019539104631

noncomputable section

/-- A108036: Triangle read by rows: the triangle in A108035 surrounded by a border of 0's.

Offset 0, canonical program `A108036.P4284321019539104631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108036 (n : ℕ) : ℤ :=
  A108036.P4284321019539104631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108086.P12141036559264490002

`A007318(n)*A087960(A025581(n))`
-/

namespace A108086.P12141036559264490002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A087960 (A025581 n).toNat

end

end A108086.P12141036559264490002

noncomputable section

/-- A108086: Triangle, read by rows, where T(0,0) = 1, T(n,k) = (-1)^(n+k)*T(n-1,k) + T(n-1,k-1); a signed version of Pascal's triangle.

Offset 0, canonical program `A108086.P12141036559264490002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108086 (n : ℕ) : ℤ :=
  A108086.P12141036559264490002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109446.P3378163357748068415

`A007318(comp[comp[n²+n]+n])`
-/

namespace A109446.P3378163357748068415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A109446.P3378163357748068415

noncomputable section

/-- A109446: Binomial coefficients C(n,k) with n-k even, read by rows.

Offset 0, canonical program `A109446.P3378163357748068415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A109446 (n : ℕ) : ℤ :=
  A109446.P3378163357748068415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A109446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109767.P5632445865387187184

`A112336(n)*A155856(n)`
-/

namespace A109767.P5632445865387187184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112336 n * A155856 n

end

end A109767.P5632445865387187184

noncomputable section

/-- A109767: Triangle T(n,k), 0 <= k <= n, defined by T(n,k) = 2^k*A001497(n,k).

Offset 0, canonical program `A109767.P5632445865387187184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A109767 (n : ℕ) : ℤ :=
  A109767.P5632445865387187184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A109767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109906.P4657258182257809109

`A007318(n)*A058071(n)`
-/

namespace A109906.P4657258182257809109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A058071 n

end

end A109906.P4657258182257809109

noncomputable section

/-- A109906: A triangle based on A000045 and Pascal's triangle: T(n,m) = Fibonacci(n-m+1) * Fibonacci(m+1) * binomial(n,m).

Offset 0, canonical program `A109906.P4657258182257809109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109906 (n : ℕ) : ℤ :=
  A109906.P4657258182257809109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109960.P12216584254872933110

`A054142(A061579(n)+A245300(n)-n)`
-/

namespace A109960.P12216584254872933110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A061579 n + (A245300 n - (n : ℤ))).toNat

end

end A109960.P12216584254872933110

noncomputable section

/-- A109960: Number triangle binomial(n+3k,4k).

Offset 0, canonical program `A109960.P12216584254872933110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A109960 (n : ℕ) : ℤ :=
  A109960.P12216584254872933110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A109960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111062.P16070414047201229067

`A007318(n)*A000085(A025581(n))`
-/

namespace A111062.P16070414047201229067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000085 (A025581 n).toNat

end

end A111062.P16070414047201229067

noncomputable section

/-- A111062: Triangle T(n, k) = binomial(n, k) * A000085(n-k), 0 <= k <= n.

Offset 0, canonical program `A111062.P16070414047201229067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A111062 (n : ℕ) : ℤ :=
  A111062.P16070414047201229067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A111062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111318.P8066523825878989134

`eq[2, A038698(n+1)%4]+1`
-/

namespace A111318.P8066523825878989134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038698 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111318.P8066523825878989134

noncomputable section

/-- A111318: Numbers k such that 4 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111318.P8066523825878989134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. -/
def A111318 (n : ℕ) : ℤ :=
  (A111318.P8066523825878989134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. -/
def A111318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111505.P11919683708089814919

`A007318(n)*A101688(n)`
-/

namespace A111505.P11919683708089814919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A101688 n

end

end A111505.P11919683708089814919

noncomputable section

/-- A111505: Right half of Pascal's triangle (A007318) with zeros.

Offset 0, canonical program `A111505.P11919683708089814919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111505 (n : ℕ) : ℤ :=
  A111505.P11919683708089814919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111527.P12584013183539316242

`A117178(n)*A117568(n)`
-/

namespace A111527.P12584013183539316242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n * A117568 n

end

end A111527.P12584013183539316242

noncomputable section

/-- A111527: Inverse of A111526. Row sums have general term C(n,floor(n/2))*(cos(Pi*n/2) + sin(Pi*n/2)).

Offset 0, canonical program `A111527.P12584013183539316242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111527 (n : ℕ) : ℤ :=
  A111527.P12584013183539316242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111636.P15708262210770499790

`A007318(n)*A117401(n)`
-/

namespace A111636.P15708262210770499790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A117401 n

end

end A111636.P15708262210770499790

noncomputable section

/-- A111636: Triangle read by rows: T(n,k) (0<=k<=n) is the number of labeled graphs having k blue nodes and n-k green ones and only nodes of different colors can be joined by an edge.

Offset 0, canonical program `A111636.P15708262210770499790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. -/
def A111636 (n : ℕ) : ℤ :=
  A111636.P15708262210770499790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. -/
def A111636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112227.P5365847626436789325

`A007318(n)*A067994(A025581(n))`
-/

namespace A112227.P5365847626436789325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A067994 (A025581 n).toNat

end

end A112227.P5365847626436789325

noncomputable section

/-- A112227: A scaled Hermite triangle.

Offset 0, canonical program `A112227.P5365847626436789325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A112227 (n : ℕ) : ℤ :=
  A112227.P5365847626436789325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A112227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113245.P15327802101265257227

`floor(A086645(n)/A007318(n))`
-/

namespace A113245.P15327802101265257227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086645 n : ℚ) / (A007318 n : ℚ)⌋

end

end A113245.P15327802101265257227

noncomputable section

/-- A113245: a(n) = floor(binomial(2n,2k)/binomial(n,k)).

Offset 0, canonical program `A113245.P15327802101265257227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113245 (n : ℕ) : ℤ :=
  A113245.P15327802101265257227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113709.P7356311501742520616

`eq[1, ((n+1)%A166597(n))%(n+1)]`
-/

namespace A113709.P7356311501742520616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (A166597 n)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113709.P7356311501742520616

noncomputable section

/-- A113709: a(n) is the composite between p(n) and p(n+1), where p(n) is the n-th prime, which is divisible by (p(n+1)-p(n)).

Offset 2, canonical program `A113709.P7356311501742520616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A113709 (n : ℕ) : ℤ :=
  (A113709.P7356311501742520616.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A113709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114002.P11087141496141675113

`2*A051731(n+1)-A023531(n)`
-/

namespace A114002.P11087141496141675113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A023531 n

end

end A114002.P11087141496141675113

noncomputable section

/-- A114002: Expansion of g.f. x^k(1+x^(k+1))/(1-x^(k+1)).

Offset 0, canonical program `A114002.P11087141496141675113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114002 (n : ℕ) : ℤ :=
  A114002.P11087141496141675113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115197.P9309058689617809824

`4*A178792(n)-3*(n+1)*A064062(n+1)`
-/

namespace A115197.P9309058689617809824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A178792 n - 3 * ((n + 1 : ℤ) * A064062 (n + 1))

end

end A115197.P9309058689617809824

noncomputable section

/-- A115197: Convolution of generalized Catalan numbers A064062 (called C(n;2)).

Offset 0, canonical program `A115197.P9309058689617809824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, A178792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115197 (n : ℕ) : ℤ :=
  A115197.P9309058689617809824.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, A178792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115358.P2052472132167437003

`A051731(n+1)*A154269(A010766(n+1))`
-/

namespace A115358.P2052472132167437003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A154269 (A010766 (n + 1)).toNat

end

end A115358.P2052472132167437003

noncomputable section

/-- A115358: Inverse of matrix (1,x)+(x,x^2) (expressed in Riordan array notation).

Offset 0, canonical program `A115358.P2052472132167437003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115358 (n : ℕ) : ℤ :=
  A115358.P2052472132167437003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116368.P9195287801677867719

`A072473(n+1)+A001043(n+1)`
-/

namespace A116368.P9195287801677867719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A001043 (n + 1)

end

end A116368.P9195287801677867719

noncomputable section

/-- A116368: Central terms of the triangle in A116366.

Offset 1, canonical program `A116368.P9195287801677867719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116368 (n : ℕ) : ℤ :=
  A116368.P9195287801677867719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116666.P11717833547676705553

`A007318(n)*A158405(n+1)`
-/

namespace A116666.P11717833547676705553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A158405 (n + 1)

end

end A116666.P11717833547676705553

noncomputable section

/-- A116666: Triangle, row sums = number of edges in n-dimensional hypercubes.

Offset 1, canonical program `A116666.P11717833547676705553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116666 (n : ℕ) : ℤ :=
  A116666.P11717833547676705553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116982.P6502929101047441834

`A166597(record[xor(3, n)])`
-/

namespace A116982.P6502929101047441834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A116982.P6502929101047441834

noncomputable section

/-- A116982: Distance between prime neighbors of 4n.

Offset 1, canonical program `A116982.P6502929101047441834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116982 (n : ℕ) : ℤ :=
  A116982.P6502929101047441834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117303.P10725081724367424361

`(2*A001511(n+1)-1)*2^(A003602(n+1)-1)`
-/

namespace A117303.P10725081724367424361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001511 (n + 1) - 1 : ℚ) * (2 : ℚ) ^ (A003602 (n + 1) - 1 : ℤ)

end

end A117303.P10725081724367424361

noncomputable section

/-- A117303: Self-inverse permutation of the natural numbers based on the bijection (2*x-1)*2^(y-1) <--> (2*y-1)*2^(x-1).

Offset 1, canonical program `A117303.P10725081724367424361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117303 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117303.P10725081724367424361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117670.P8467400439163998987

`A074909(n+1)+A054143(n)-1`
-/

namespace A117670.P8467400439163998987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A054143 n - 1)

end

end A117670.P8467400439163998987

noncomputable section

/-- A117670: Triangle read by rows: partial sums of the Pascal triangle minus 1.

Offset 1, canonical program `A117670.P8467400439163998987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117670 (n : ℕ) : ℤ :=
  A117670.P8467400439163998987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117852.P8395691399631512501

`A007318(n)*A106187(n)`
-/

namespace A117852.P8395691399631512501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A106187 n

end

end A117852.P8395691399631512501

noncomputable section

/-- A117852: Mirror image of A098473 formatted as a triangular array.

Offset 0, canonical program `A117852.P8395691399631512501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117852 (n : ℕ) : ℤ :=
  A117852.P8395691399631512501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117919.P6720816346911839698

`A007318(n)*A016116(A002262(n))`
-/

namespace A117919.P6720816346911839698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016116 (A002262 n).toNat

end

end A117919.P6720816346911839698

noncomputable section

/-- A117919: Triangle read by rows: T(n, k) = 2^floor((k-1)/2)*binomial(n-1, k-1).

Offset 1, canonical program `A117919.P6720816346911839698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117919 (n : ℕ) : ℤ :=
  A117919.P6720816346911839698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118359.P12469807509055540995

`p?[A031925(n+1)-A031924(n+1)%7]`
-/

namespace A118359.P12469807509055540995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1) - Int.tmod (A031924 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118359.P12469807509055540995

noncomputable section

/-- A118359: Primes for which the weight as defined in A117078 is 7 and the gap as defined in A001223 is 6.

Offset 1, canonical program `A118359.P12469807509055540995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. -/
def A118359 (n : ℕ) : ℤ :=
  A118359.P12469807509055540995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. -/
def A118359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119259.P16639606030817899702

`(A178792(n)+A064062(n))/2`
-/

namespace A119259.P16639606030817899702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178792 n + A064062 n : ℚ) / 2

end

end A119259.P16639606030817899702

noncomputable section

/-- A119259: Central terms of the triangle in A119258.

Offset 0, canonical program `A119259.P16639606030817899702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A119259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119259.P16639606030817899702.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A119259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119457.P468492089180334650

`A292030(n)+A117501(n+1)`
-/

namespace A119457.P468492089180334650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 n + A117501 (n + 1)

end

end A119457.P468492089180334650

noncomputable section

/-- A119457: Triangle read by rows: T(n, 1) = n, T(n, 2) = 2*(n-1) for n>1 and T(n, k) = T(n-1, k-1) + T(n-2, k-2) for 2 < k <= n.

Offset 1, canonical program `A119457.P468492089180334650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A119457 (n : ℕ) : ℤ :=
  A119457.P468492089180334650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A119457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119616.P6525625346191770503

`A067692(n+1)-A001157(n+1)`
-/

namespace A119616.P6525625346191770503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067692 (n + 1) - A001157 (n + 1)

end

end A119616.P6525625346191770503

noncomputable section

/-- A119616: Second elementary symmetric function of divisors of n.

Offset 1, canonical program `A119616.P6525625346191770503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119616 (n : ℕ) : ℤ :=
  A119616.P6525625346191770503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119832.P6835891889042031517

`A112334(n)*A143051(A112334(n)²)`
-/

namespace A119832.P6835891889042031517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112334 n * A143051 (A112334 n ^ 2).toNat

end

end A119832.P6835891889042031517

noncomputable section

/-- A119832: Bi-diagonal inverse of (3n)!/(3k)!.

Offset 0, canonical program `A119832.P6835891889042031517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A119832 (n : ℕ) : ℤ :=
  A119832.P6835891889042031517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A119832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119917.P6613985970363786226

`∑[A038199(n+1)]`
-/

namespace A119917.P6613985970363786226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119917.P6613985970363786226

noncomputable section

/-- A119917: Number of rationals in [0, 1) consisting just of repeating bits of period at most n.

Offset 1, canonical program `A119917.P6613985970363786226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A119917 (n : ℕ) : ℤ :=
  A119917.P6613985970363786226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A119917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119920.P13618042896974742524

`2^n*A038199(n+1)`
-/

namespace A119920.P13618042896974742524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A038199 (n + 1)

end

end A119920.P13618042896974742524

noncomputable section

/-- A119920: Number of rationals in [0, 1) having exactly n preperiodic bits, then exactly n periodic bits.

Offset 1, canonical program `A119920.P13618042896974742524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A119920 (n : ℕ) : ℤ :=
  A119920.P13618042896974742524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A119920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120493.P11300911534930013935

`A007318(n)*A024175(A003056(n))`
-/

namespace A120493.P11300911534930013935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A024175 (A003056 n).toNat

end

end A120493.P11300911534930013935

noncomputable section

/-- A120493: Triangle T(n,k) read by rows ; multiply row n of Pascal's triangle (A007318) by A024175(n).

Offset 0, canonical program `A120493.P11300911534930013935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7681 terms. -/
def A120493 (n : ℕ) : ℤ :=
  A120493.P11300911534930013935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7681 terms. -/
def A120493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120616.P17317531366549779970

`A009001(A051162(n))*A108044(n)`
-/

namespace A120616.P17317531366549779970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051162 n).toNat * A108044 n

end

end A120616.P17317531366549779970

noncomputable section

/-- A120616: Generalized Riordan array (1/sqrt(1+4x^2),(1-sqrt(1+4x^2))/(2x)).

Offset 0, canonical program `A120616.P17317531366549779970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120616 (n : ℕ) : ℤ :=
  A120616.P17317531366549779970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122070.P1492106937163336465

`A007318(n)*A199512(n)`
-/

namespace A122070.P1492106937163336465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A199512 n

end

end A122070.P1492106937163336465

noncomputable section

/-- A122070: Triangle given by T(n,k) = Fibonacci(n+k+1)*binomial(n,k) for 0<=k<=n.

Offset 0, canonical program `A122070.P1492106937163336465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122070 (n : ℕ) : ℤ :=
  A122070.P1492106937163336465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122832.P6114513081760311562

`A007318(n)*A047974(A025581(n))`
-/

namespace A122832.P6114513081760311562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A047974 (A025581 n).toNat

end

end A122832.P6114513081760311562

noncomputable section

/-- A122832: Exponential Riordan array (e^(x(1+x)),x).

Offset 0, canonical program `A122832.P6114513081760311562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5256 terms. -/
def A122832 (n : ℕ) : ℤ :=
  A122832.P6114513081760311562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5256 terms. -/
def A122832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122833.P6067438618774959258

`A007318(n)*A000321(A025581(n))`
-/

namespace A122833.P6067438618774959258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000321 (A025581 n).toNat

end

end A122833.P6067438618774959258

noncomputable section

/-- A122833: Exponential Riordan array (e^(-x(1+x)),x).

Offset 0, canonical program `A122833.P6067438618774959258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A122833 (n : ℕ) : ℤ :=
  A122833.P6067438618774959258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A122833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122850.P18149759153179096136

`A097807(n)*A132062(n)`
-/

namespace A122850.P18149759153179096136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A132062 n

end

end A122850.P18149759153179096136

noncomputable section

/-- A122850: Exponential Riordan array (1, sqrt(1+2x)-1).

Offset 0, canonical program `A122850.P18149759153179096136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1954 terms. -/
def A122850 (n : ℕ) : ℤ :=
  A122850.P18149759153179096136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1954 terms. -/
def A122850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122899.P16606108868795796470

`A007318(n)*A030528(n+1)`
-/

namespace A122899.P16606108868795796470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A030528 (n + 1)

end

end A122899.P16606108868795796470

noncomputable section

/-- A122899: Triangle with row sums counting directed animals.

Offset 0, canonical program `A122899.P16606108868795796470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122899 (n : ℕ) : ℤ :=
  A122899.P16606108868795796470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123187.P2951551471935451599

`A001022(A002262(n))*A007318(n)`
-/

namespace A123187.P2951551471935451599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 (A002262 n).toNat * A007318 n

end

end A123187.P2951551471935451599

noncomputable section

/-- A123187: Triangle of coefficients in expansion of (1 + 13*x)^n.

Offset 0, canonical program `A123187.P2951551471935451599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3997 terms. -/
def A123187 (n : ℕ) : ℤ :=
  A123187.P2951551471935451599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3997 terms. -/
def A123187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123641.P11126860064220415854

`ceil(A130125(n)/2)`
-/

namespace A123641.P11126860064220415854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130125 n : ℚ) / 2⌉

end

end A123641.P11126860064220415854

noncomputable section

/-- A123641: Triangular array related to sequence A123640 with row sum A001045.

Offset 1, canonical program `A123641.P11126860064220415854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123641 (n : ℕ) : ℤ :=
  A123641.P11126860064220415854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124340.P17128655900639427507

`∑{d}[n+1, A087780(#)*A206369((n+1)/#)]`
-/

namespace A124340.P17128655900639427507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087780 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124340.P17128655900639427507

noncomputable section

/-- A124340: Number of solutions to n = x^2 + 2*y^2 + 4*(T(z) + T(w)) + 1 where x and y are integers, z and w are nonnegative integers and T(x) = (x^2+x)/2.

Offset 1, canonical program `A124340.P17128655900639427507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124340 (n : ℕ) : ℤ :=
  A124340.P17128655900639427507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124644.P6387855692030504737

`A000108(A025581(n))*A007318(n)`
-/

namespace A124644.P6387855692030504737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025581 n).toNat * A007318 n

end

end A124644.P6387855692030504737

noncomputable section

/-- A124644: Triangle read by rows. T(n, k) = binomial(n, k) * CatalanNumber(n - k).

Offset 0, canonical program `A124644.P6387855692030504737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124644 (n : ℕ) : ℤ :=
  A124644.P6387855692030504737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124737.P11036561071292758021

`A002262(∑[char[∑[A007318(n)]]])`
-/

namespace A124737.P11036561071292758021
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124737.P11036561071292758021

noncomputable section

/-- A124737: Table where row n has k C(n,k) times.

Offset 0, canonical program `A124737.P11036561071292758021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A124737 (n : ℕ) : ℤ :=
  A124737.P11036561071292758021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A124737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124847.P18407072905812800664

`C(A002262(n)+2, 2)*A007318(n)`
-/

namespace A124847.P18407072905812800664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002262 n + 2).toNat 2 : ℤ) * A007318 n

end

end A124847.P18407072905812800664

noncomputable section

/-- A124847: Triangle read by rows: T(n,k) = k(k+1)*binomial(n-1, k-1)/2 (1 <= k <= n).

Offset 1, canonical program `A124847.P18407072905812800664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124847 (n : ℕ) : ℤ :=
  A124847.P18407072905812800664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124848.P892019051039301992

`A000292(A002260(n+1))*A007318(n)`
-/

namespace A124848.P892019051039301992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A007318 n

end

end A124848.P892019051039301992

noncomputable section

/-- A124848: Triangle read by rows: T(n,k) = (k+1)*(k+2)*(k+3)*binomial(n,k)/6 (0 <= k <= n).

Offset 0, canonical program `A124848.P892019051039301992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124848 (n : ℕ) : ℤ :=
  A124848.P892019051039301992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124860.P14852524666225097525

`A007318(n)*A001045(∑[A010054(n)])`
-/

namespace A124860.P14852524666225097525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124860.P14852524666225097525

noncomputable section

/-- A124860: A Jacobsthal-Pascal triangle.

Offset 0, canonical program `A124860.P14852524666225097525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124860 (n : ℕ) : ℤ :=
  A124860.P14852524666225097525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124928.P9795992396165051059

`2*A124927(n)-A007318(n)`
-/

namespace A124928.P9795992396165051059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124927 n - A007318 n

end

end A124928.P9795992396165051059

noncomputable section

/-- A124928: Triangle read by rows: T(n,0) = 1, T(n,k) = 3*binomial(n,k) if k>=0 (0<=k<=n).

Offset 0, canonical program `A124928.P9795992396165051059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124928 (n : ℕ) : ℤ :=
  A124928.P9795992396165051059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124959.P12051482998564919054

`A006138(A002262(n))*A007318(n)`
-/

namespace A124959.P12051482998564919054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (A002262 n).toNat * A007318 n

end

end A124959.P12051482998564919054

noncomputable section

/-- A124959: Triangle read by rows: T(n,k) = a(k)*binomial(n,k) (0 <= k <= n), where a(0)=1, a(1)=2, a(k) = a(k-1) + 3*a(k-2) for k >= 2 (a(k) = A006138(k)).

Offset 0, canonical program `A124959.P12051482998564919054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124959 (n : ℕ) : ℤ :=
  A124959.P12051482998564919054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125026.P12187830582932768045

`A135278(n)+A003056(n)*A007318(n)`
-/

namespace A125026.P12187830582932768045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A003056 n * A007318 n

end

end A125026.P12187830582932768045

noncomputable section

/-- A125026: Triangle read by rows: T(n,k) = k*binomial(n,k) + binomial(n-1,k) (1 <= k <= n).

Offset 1, canonical program `A125026.P12187830582932768045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125026 (n : ℕ) : ℤ :=
  A125026.P12187830582932768045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125100.P12778823753129633113

`A007318(n)*A132923(n+1)`
-/

namespace A125100.P12778823753129633113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A132923 (n + 1)

end

end A125100.P12778823753129633113

noncomputable section

/-- A125100: Triangle read by rows: T(n,k) = Fibonacci(k+1)*binomial(n,k) + (k+1)*binomial(n,k+1) (0 <= k <= n).

Offset 0, canonical program `A125100.P12778823753129633113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125100 (n : ℕ) : ℤ :=
  A125100.P12778823753129633113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125110.P17127943066742272730

`A001481(n+1)^3`
-/

namespace A125110.P17127943066742272730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) ^ 3

end

end A125110.P17127943066742272730

noncomputable section

/-- A125110: Cubes which have a partition as the sum of 2 squares.

Offset 1, canonical program `A125110.P17127943066742272730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125110 (n : ℕ) : ℤ :=
  A125110.P17127943066742272730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125110.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126988.P9816827205040377566

`A010766(n+1)*A051731(n+1)`
-/

namespace A126988.P9816827205040377566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A051731 (n + 1)

end

end A126988.P9816827205040377566

noncomputable section

/-- A126988: Triangle read by rows: T(n,k) = n/k if k is a divisor of n; T(n,k) = 0 if k is not a divisor of n (1 <= k <= n).

Offset 1, canonical program `A126988.P9816827205040377566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126988 (n : ℕ) : ℤ :=
  A126988.P9816827205040377566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126994.P4632557571172505909

`C(A045344(n+4), A182986(n+1))`
-/

namespace A126994.P4632557571172505909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045344 (n + 4)).toNat (A182986 (n + 1)).toNat

end

end A126994.P4632557571172505909

noncomputable section

/-- A126994: a(n) = binomial(prime(n+5), prime(n)).

Offset 0, canonical program `A126994.P4632557571172505909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A126994 (n : ℕ) : ℤ :=
  (A126994.P4632557571172505909.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A126994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127013.P6102010931506344879

`A010783(n+1)*A113998(n+1)`
-/

namespace A127013.P6102010931506344879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A113998 (n + 1)

end

end A127013.P6102010931506344879

noncomputable section

/-- A127013: Triangle read by rows: row reversal of A126988.

Offset 1, canonical program `A127013.P6102010931506344879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127013 (n : ℕ) : ℤ :=
  A127013.P6102010931506344879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127093.P1206485591772000717

`A002260(n+1)*A051731(n+1)`
-/

namespace A127093.P1206485591772000717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051731 (n + 1)

end

end A127093.P1206485591772000717

noncomputable section

/-- A127093: Triangle read by rows: T(n,k)=k if k is a divisor of n; otherwise, T(n,k)=0 (1 <= k <= n).

Offset 1, canonical program `A127093.P1206485591772000717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127093 (n : ℕ) : ℤ :=
  A127093.P1206485591772000717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127094.P8507406497036937056

`A004736(n+1)*A113998(n+1)`
-/

namespace A127094.P8507406497036937056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A113998 (n + 1)

end

end A127094.P8507406497036937056

noncomputable section

/-- A127094: Triangle, reversal of A127093.

Offset 1, canonical program `A127094.P8507406497036937056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127094 (n : ℕ) : ℤ :=
  A127094.P8507406497036937056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127192.P13574579328313795514

`A029935(A010766(n+1))*A051731(n+1)`
-/

namespace A127192.P13574579328313795514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A127192.P13574579328313795514

noncomputable section

/-- A127192: Triangle read by rows: square of A054523.

Offset 1, canonical program `A127192.P13574579328313795514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127192 (n : ℕ) : ℤ :=
  A127192.P13574579328313795514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127323.P11295704530914292071

`A194884(n)-1`
-/

namespace A127323.P11295704530914292071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194884 n - 1

end

end A127323.P11295704530914292071

noncomputable section

/-- A127323: Third 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056557.

Offset 0, canonical program `A127323.P11295704530914292071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127323 (n : ℕ) : ℤ :=
  A127323.P11295704530914292071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127334.P6228238072744643247

`A127333(n+2)+A000040(n+1)`
-/

namespace A127334.P6228238072744643247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 2) + A000040 (n + 1)

end

end A127334.P6228238072744643247

noncomputable section

/-- A127334: Numbers that are the sum of 7 consecutive primes.

Offset 1, canonical program `A127334.P6228238072744643247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127334 (n : ℕ) : ℤ :=
  A127334.P6228238072744643247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127348.P2677906627502020316

`A127345(n+2)+A000040(n+1)*A034961(n+2)`
-/

namespace A127348.P2677906627502020316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 2) + A000040 (n + 1) * A034961 (n + 2)

end

end A127348.P2677906627502020316

noncomputable section

/-- A127348: Coefficient of x^2 in the polynomial (x-p(n))*(x-p(n+1))*(x-p(n+2))*(x-p(n+3)), where p(k) is the k-th prime.

Offset 1, canonical program `A127348.P2677906627502020316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A127348 (n : ℕ) : ℤ :=
  A127348.P2677906627502020316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A127348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127349.P7412496947134571041

`A046301(n+2)+A000040(n+1)*A127345(n+2)`
-/

namespace A127349.P7412496947134571041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 2) + A000040 (n + 1) * A127345 (n + 2)

end

end A127349.P7412496947134571041

noncomputable section

/-- A127349: a(n) = Sum_{i=n..n+1} Sum_{j=i+1..n+2} Sum_{k=j+1..n+3} prime(i)*prime(j)*prime(k).

Offset 1, canonical program `A127349.P7412496947134571041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127349 (n : ℕ) : ℤ :=
  A127349.P7412496947134571041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127625.P480324930033306885

`A007318(n)*A225743(n+1)`
-/

namespace A127625.P480324930033306885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A225743 (n + 1)

end

end A127625.P480324930033306885

noncomputable section

/-- A127625: Triangle T(n,k) = binomial(n-1,k-1)*A001511(k), 1<=k<=n, read by rows.

Offset 1, canonical program `A127625.P480324930033306885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127625 (n : ℕ) : ℤ :=
  A127625.P480324930033306885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128065.P6617849873532730236

`A007318(n)*A127948(n)`
-/

namespace A128065.P6617849873532730236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A127948 n

end

end A128065.P6617849873532730236

noncomputable section

/-- A128065: Binomial transform of A128064.

Offset 1, canonical program `A128065.P6617849873532730236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128065 (n : ℕ) : ℤ :=
  A128065.P6617849873532730236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128106.P7556689747914329909

`A000007(n)+2*A001481(n+1)`
-/

namespace A128106.P7556689747914329909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A001481 (n + 1)

end

end A128106.P7556689747914329909

noncomputable section

/-- A128106: Sizes of possible gaps around a Gaussian prime: 1 and the even numbers in A001481.

Offset 1, canonical program `A128106.P7556689747914329909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128106 (n : ℕ) : ℤ :=
  A128106.P7556689747914329909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128185.P11494409003865491844

`A113704(n+1)+A051731(n+1)`
-/

namespace A128185.P11494409003865491844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 (n + 1) + A051731 (n + 1)

end

end A128185.P11494409003865491844

noncomputable section

/-- A128185: A097806 * A051731.

Offset 1, canonical program `A128185.P11494409003865491844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128185 (n : ℕ) : ℤ :=
  A128185.P11494409003865491844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128206.P14119497991343743682

`A053602(A134082(n))`
-/

namespace A128206.P14119497991343743682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A134082 n).toNat

end

end A128206.P14119497991343743682

noncomputable section

/-- A128206: Inverse of number triangle A128207.

Offset 0, canonical program `A128206.P14119497991343743682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128206 (n : ℕ) : ℤ :=
  A128206.P14119497991343743682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128229.P12675992775394156376

`abs(A132013(n))`
-/

namespace A128229.P12675992775394156376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132013 n|

end

end A128229.P12675992775394156376

noncomputable section

/-- A128229: A natural number transform, inverse of signed A094587.

Offset 1, canonical program `A128229.P12675992775394156376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128229 (n : ℕ) : ℤ :=
  A128229.P12675992775394156376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128619.P9969041913449071840

`A000045(A128621(n+1))`
-/

namespace A128619.P9969041913449071840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128621 (n + 1)).toNat

end

end A128619.P9969041913449071840

noncomputable section

/-- A128619: Triangle T(n, k) = A127647(n,k) * A128174(n,k), read by rows.

Offset 1, canonical program `A128619.P9969041913449071840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128619 (n : ℕ) : ℤ :=
  A128619.P9969041913449071840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129652.P5081916602674368372

`A007318(n)*A000262(A025581(n))`
-/

namespace A129652.P5081916602674368372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000262 (A025581 n).toNat

end

end A129652.P5081916602674368372

noncomputable section

/-- A129652: Exponential Riordan array [e^(x/(1-x)),x].

Offset 0, canonical program `A129652.P5081916602674368372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A129652 (n : ℕ) : ℤ :=
  A129652.P5081916602674368372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A129652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130071.P16349395927044139685

`A007444(A002260(n+1))*A051731(n+1)`
-/

namespace A130071.P16349395927044139685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A130071.P16349395927044139685

noncomputable section

/-- A130071: Triangle, A007444(k) in each column interspersed with k zeros.

Offset 1, canonical program `A130071.P16349395927044139685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130071 (n : ℕ) : ℤ :=
  A130071.P16349395927044139685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130106.P5653707462542104831

`A051731(n+1)*A063659(A002260(n+1))`
-/

namespace A130106.P5653707462542104831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A063659 (A002260 (n + 1)).toNat

end

end A130106.P5653707462542104831

noncomputable section

/-- A130106: A051731 * diagonalized matrix of A063659.

Offset 1, canonical program `A130106.P5653707462542104831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130106 (n : ℕ) : ℤ :=
  A130106.P5653707462542104831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130116.P11405849371930154849

`A007436(A002260(n+1))*A051731(n+1)`
-/

namespace A130116.P11405849371930154849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A130116.P11405849371930154849

noncomputable section

/-- A130116: Inverse Moebius transform of a diagonalized matrix of A007436.

Offset 1, canonical program `A130116.P11405849371930154849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130116 (n : ℕ) : ℤ :=
  A130116.P11405849371930154849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130235.P11214485265166716893

`∑[A108852(n)-1]`
-/

namespace A130235.P11214485265166716893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P11214485265166716893

noncomputable section

/-- A130235: Partial sums of the 'lower' Fibonacci Inverse A130233.

Offset 0, canonical program `A130235.P11214485265166716893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130235 (n : ℕ) : ℤ :=
  A130235.P11214485265166716893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130236.P16914573504588275506

`∑[A108852(abs(1-n))]-3`
-/

namespace A130236.P16914573504588275506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A130236.P16914573504588275506

noncomputable section

/-- A130236: Partial sums of the 'upper' Fibonacci Inverse A130234.

Offset 0, canonical program `A130236.P16914573504588275506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130236 (n : ℕ) : ℤ :=
  A130236.P16914573504588275506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130255.P3543021114128893014

`floor(A108852(n+1)/2)`
-/

namespace A130255.P3543021114128893014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108852 (n + 1) : ℚ) / 2⌋

end

end A130255.P3543021114128893014

noncomputable section

/-- A130255: Maximal index k of an odd Fibonacci number (A001519) such that A001519(k) = Fibonacci(2k-1) <= n (the 'lower' odd Fibonacci Inverse).

Offset 1, canonical program `A130255.P3543021114128893014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130255 (n : ℕ) : ℤ :=
  A130255.P3543021114128893014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130312.P4153789337100935269

`A000045(A072649(n+1))`
-/

namespace A130312.P4153789337100935269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072649 (n + 1)).toNat

end

end A130312.P4153789337100935269

noncomputable section

/-- A130312: Each Fibonacci number F(n) appears F(n) times.

Offset 1, canonical program `A130312.P4153789337100935269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130312 (n : ℕ) : ℤ :=
  A130312.P4153789337100935269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130595.P3475276304996858965

`A007318(n)*A097807(n)`
-/

namespace A130595.P3475276304996858965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A097807 n

end

end A130595.P3475276304996858965

noncomputable section

/-- A130595: Triangle read by rows: lower triangular matrix which is inverse to Pascal's triangle (A007318) regarded as a lower triangular matrix.

Offset 0, canonical program `A130595.P3475276304996858965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130595 (n : ℕ) : ℤ :=
  A130595.P3475276304996858965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130853.P8707177424060044516

`Δ[n-A072649(a(n-1)+1)]` with `a(0)=0`
-/

namespace A130853.P8707177424060044516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - A072649 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130853.P8707177424060044516

noncomputable section

/-- A130853: Runs of 1's of lengths 1, Fibonacci numbers F(1), F(2), F(3), ... (A000045) separated by 0's.

Offset 1, canonical program `A130853.P8707177424060044516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130853 (n : ℕ) : ℤ :=
  A130853.P8707177424060044516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131414.P4412133685493980708

`A130297(n+1)+A025581(n)`
-/

namespace A131414.P4412133685493980708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130297 (n + 1) + A025581 n

end

end A131414.P4412133685493980708

noncomputable section

/-- A131414: A130302 + A130303 - A000012.

Offset 1, canonical program `A131414.P4412133685493980708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131414 (n : ℕ) : ℤ :=
  A131414.P4412133685493980708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132044.P15988424649038964214

`floor(sqrt(A007318(n)²+4))-1`
-/

namespace A132044.P15988424649038964214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007318 n ^ 2 + 4) - 1

end

end A132044.P15988424649038964214

noncomputable section

/-- A132044: Triangle T(n,k) = binomial(n, k) - 1 with T(n,0) = T(n,n) = 1, read by rows.

Offset 0, canonical program `A132044.P15988424649038964214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132044 (n : ℕ) : ℤ :=
  A132044.P15988424649038964214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132047.P15438420452738550569

`3*A007318(n)-2*A103451(n)`
-/

namespace A132047.P15438420452738550569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 n - 2 * A103451 n

end

end A132047.P15438420452738550569

noncomputable section

/-- A132047: 3*A007318 - 2*A103451 as infinite lower triangular matrices.

Offset 0, canonical program `A132047.P15438420452738550569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A103451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A132047 (n : ℕ) : ℤ :=
  A132047.P15438420452738550569.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A103451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A132047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132200.P1071814747902084860

`A000032(C(2, n+2))²*A007318(n)`
-/

namespace A132200.P1071814747902084860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) ^ 2 * A007318 n

end

end A132200.P1071814747902084860

noncomputable section

/-- A132200: Numbers in (4,4)-Pascal triangle .

Offset 0, canonical program `A132200.P1071814747902084860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132200 (n : ℕ) : ℤ :=
  A132200.P1071814747902084860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132223.P12674158164123128083

`A003602(A054429(n+1))`
-/

namespace A132223.P12674158164123128083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A054429 (n + 1)).toNat

end

end A132223.P12674158164123128083

noncomputable section

/-- A132223: A dense infinitive sequence.

Offset 1, canonical program `A132223.P12674158164123128083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A132223 (n : ℕ) : ℤ :=
  A132223.P12674158164123128083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A132223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132775.P15677657073027087239

`A007318(n)*A131507(n)`
-/

namespace A132775.P15677657073027087239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A131507 n

end

end A132775.P15677657073027087239

noncomputable section

/-- A132775: A007818 * A132774.

Offset 0, canonical program `A132775.P15677657073027087239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132775 (n : ℕ) : ℤ :=
  A132775.P15677657073027087239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133084.P4031868736069884571

`A007318(n)+A007318(n+1)*A060510(n+1)`
-/

namespace A133084.P4031868736069884571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A007318 (n + 1) * A060510 (n + 1)

end

end A133084.P4031868736069884571

noncomputable section

/-- A133084: A007318 * A133080.

Offset 1, canonical program `A133084.P4031868736069884571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133084 (n : ℕ) : ℤ :=
  A133084.P4031868736069884571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133138.P17820506567274985276

`A097806(n)+A007318(n)`
-/

namespace A133138.P17820506567274985276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n + A007318 n

end

end A133138.P17820506567274985276

noncomputable section

/-- A133138: Triangle T(n,k) of the coefficients of the polynomials Q(n,x)=(1+x)[(1+x)^(n-1)+x^(n-1)], Q(0,x)=2.

Offset 0, canonical program `A133138.P17820506567274985276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133138 (n : ℕ) : ℤ :=
  A133138.P17820506567274985276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133341.P495050647053459279

`A135278(n)*A232089(n)`
-/

namespace A133341.P495050647053459279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A232089 n

end

end A133341.P495050647053459279

noncomputable section

/-- A133341: A007318 * A134312.

Offset 0, canonical program `A133341.P495050647053459279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133341 (n : ℕ) : ℤ :=
  A133341.P495050647053459279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133371.P3126096384400858780

`A007318(n)*A001022(A025581(n))`
-/

namespace A133371.P3126096384400858780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001022 (A025581 n).toNat

end

end A133371.P3126096384400858780

noncomputable section

/-- A133371: Triangle read by rows: T(i,j) is the number of i-permutations of 14 objects a,b,c,d,e,f,g,h,i,j,k,l,m,n, with repetition allowed, containing j a's.

Offset 0, canonical program `A133371.P3126096384400858780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. -/
def A133371 (n : ℕ) : ℤ :=
  A133371.P3126096384400858780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. -/
def A133371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133935.P2681092979472692680

`A007318(n)*A093178(A002260(n+1))`
-/

namespace A133935.P2681092979472692680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A093178 (A002260 (n + 1)).toNat

end

end A133935.P2681092979472692680

noncomputable section

/-- A133935: A007318 * A093178 as a diagonalized matrix.

Offset 0, canonical program `A133935.P2681092979472692680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133935 (n : ℕ) : ℤ :=
  A133935.P2681092979472692680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134058.P11194950066351416818

`2*A007318(and(1, a(n-1))+n)` with `a(0)=1`
-/

namespace A134058.P11194950066351416818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A007318 (Int.land 1 (a (n - 1)) + (n : ℤ)).toNat

end

end A134058.P11194950066351416818

noncomputable section

/-- A134058: Triangle T(n, k) = 2*binomial(n, k) with T(0, 0) = 1, read by rows.

Offset 0, canonical program `A134058.P11194950066351416818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134058 (n : ℕ) : ℤ :=
  A134058.P11194950066351416818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134059.P4235307889070285583

`3%(2*(n+1))*A007318(n)`
-/

namespace A134059.P4235307889070285583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 % (2 * (n + 1)) : ℕ) : ℤ) * A007318 n

end

end A134059.P4235307889070285583

noncomputable section

/-- A134059: Triangle T(n, k) = 3*binomial(n,k) with T(0, 0) = 1, read by rows.

Offset 0, canonical program `A134059.P4235307889070285583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134059 (n : ℕ) : ℤ :=
  A134059.P4235307889070285583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134239.P17118463381127374769

`A127952(n+1)+A003506(n+1)`
-/

namespace A134239.P17118463381127374769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 (n + 1) + A003506 (n + 1)

end

end A134239.P17118463381127374769

noncomputable section

/-- A134239: A127899(unsigned) * A007318.

Offset 0, canonical program `A134239.P17118463381127374769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A134239 (n : ℕ) : ℤ :=
  A134239.P17118463381127374769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A134239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134310.P5762516781671223903

`A173786(n-A123578(n))-1`
-/

namespace A134310.P5762516781671223903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 ((n : ℤ) - A123578 n).toNat - 1

end

end A134310.P5762516781671223903

noncomputable section

/-- A134310: (A000012 * A134309 + A134309 * A000012) - A000012, where the sequences are interpreted as lower triangular matrices.

Offset 0, canonical program `A134310.P5762516781671223903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134310 (n : ℕ) : ℤ :=
  A134310.P5762516781671223903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134315.P18118181357833699062

`A158780(A132774(n+1))`
-/

namespace A134315.P18118181357833699062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A132774 (n + 1)).toNat

end

end A134315.P18118181357833699062

noncomputable section

/-- A134315: A134309 * A097806.

Offset 1, canonical program `A134315.P18118181357833699062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134315 (n : ℕ) : ℤ :=
  A134315.P18118181357833699062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134398.P15547992659748660228

`A007318(n)+A004247(n)`
-/

namespace A134398.P15547992659748660228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A004247 n

end

end A134398.P15547992659748660228

noncomputable section

/-- A134398: Triangle read by rows: T(n, k) = (k-1)*(n-k) + binomial(n-1,k-1).

Offset 1, canonical program `A134398.P15547992659748660228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134398 (n : ℕ) : ℤ :=
  A134398.P15547992659748660228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134400.P18111942240929711886

`A007318(n)*A028310(A003056(n))`
-/

namespace A134400.P18111942240929711886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A028310 (A003056 n).toNat

end

end A134400.P18111942240929711886

noncomputable section

/-- A134400: M * A007318, where M = triangle with (1, 1, 2, 3, ...) in the main diagonal and the rest zeros.

Offset 0, canonical program `A134400.P18111942240929711886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134400 (n : ℕ) : ℤ :=
  A134400.P18111942240929711886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134417.P13500567794768261021

`A007318(n)*A133632(A002260(n+1))`
-/

namespace A134417.P13500567794768261021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A133632 (A002260 (n + 1)).toNat

end

end A134417.P13500567794768261021

noncomputable section

/-- A134417: Triangle read by rows: T(n,k) = binomial(n,k)*A133632(k + 1).

Offset 0, canonical program `A134417.P13500567794768261021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134417 (n : ℕ) : ℤ :=
  A134417.P13500567794768261021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134832.P13040656617122990359

`A007318(n)*A000757(A025581(n))`
-/

namespace A134832.P13040656617122990359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000757 (A025581 n).toNat

end

end A134832.P13040656617122990359

noncomputable section

/-- A134832: Triangle of succession numbers for circular permutations.

Offset 0, canonical program `A134832.P13040656617122990359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2628 terms. -/
def A134832 (n : ℕ) : ℤ :=
  A134832.P13040656617122990359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2628 terms. -/
def A134832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134870.P924456470311345683

`A051731(n+1)+1-A103451(n)`
-/

namespace A134870.P924456470311345683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (1 - A103451 n)

end

end A134870.P924456470311345683

noncomputable section

/-- A134870: A051731 + A000012 - A103451.

Offset 1, canonical program `A134870.P924456470311345683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870 (n : ℕ) : ℤ :=
  A134870.P924456470311345683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135091.P12373944751708945877

`A002426(A002262(n))*A007318(n)`
-/

namespace A135091.P12373944751708945877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A002262 n).toNat * A007318 n

end

end A135091.P12373944751708945877

noncomputable section

/-- A135091: A007318 * triangle M, where M = A002426 * 0^(n-k), 0<=k<=n.

Offset 0, canonical program `A135091.P12373944751708945877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135091 (n : ℕ) : ℤ :=
  A135091.P12373944751708945877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135227.P11035620043874226728

`A007318(A198954(n)+n)`
-/

namespace A135227.P11035620043874226728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A198954 n + (n : ℤ)).toNat

end

end A135227.P11035620043874226728

noncomputable section

/-- A135227: Triangle A000012 * A135225, read by rows.

Offset 0, canonical program `A135227.P11035620043874226728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135227 (n : ℕ) : ℤ :=
  A135227.P11035620043874226728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135368.P3412412809127182481

`A166597(12*(n+1))/2`
-/

namespace A135368.P3412412809127182481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166597 (12 * (n + 1)) : ℚ) / 2

end

end A135368.P3412412809127182481

noncomputable section

/-- A135368: a(n) = (nextprime(12*n) - previousprime(12*n))/2.

Offset 1, canonical program `A135368.P3412412809127182481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A135368 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135368.P3412412809127182481.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A135368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135837.P1451698449987845866

`A007318(n)*A060546(A002262(n))`
-/

namespace A135837.P1451698449987845866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A060546 (A002262 n).toNat

end

end A135837.P1451698449987845866

noncomputable section

/-- A135837: A007318 * a triangle with (1, 2, 2, 4, 4, 8, 8, ...) in the main diagonal and the rest zeros.

Offset 1, canonical program `A135837.P1451698449987845866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135837 (n : ℕ) : ℤ :=
  A135837.P1451698449987845866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135838.P15074898654047059787

`A007318(n)*A060546(A003056(n))`
-/

namespace A135838.P15074898654047059787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A060546 (A003056 n).toNat

end

end A135838.P15074898654047059787

noncomputable section

/-- A135838: Triangle read by rows: T(n,k) = 2^floor(n/2)*binomial(n-1,k-1).

Offset 1, canonical program `A135838.P15074898654047059787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135838 (n : ℕ) : ℤ :=
  A135838.P15074898654047059787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136125.P2982316925870976645

`gcd(Δ[A094310(n+1)], A136572(n))`
-/

namespace A136125.P2982316925870976645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A136572 n)

end

end A136125.P2982316925870976645

noncomputable section

/-- A136125: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which the size of the last cycle is k (the cycles are ordered by increasing smallest elements; 1 <= k <=n).

Offset 1, canonical program `A136125.P2982316925870976645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A136125 (n : ℕ) : ℤ :=
  (A136125.P2982316925870976645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A136125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136216.P9104417109461140886

`A007318(n)*A008544(A025581(n))`
-/

namespace A136216.P9104417109461140886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008544 (A025581 n).toNat

end

end A136216.P9104417109461140886

noncomputable section

/-- A136216: Triangle T, read by rows, where T(n,k) = A008544(n-k)*C(n,k) where A008544 equals the triple factorials in column 0.

Offset 0, canonical program `A136216.P9104417109461140886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A136216 (n : ℕ) : ℤ :=
  A136216.P9104417109461140886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A136216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136535.P11251443088563950437

`A132812(n+1)-A007318(n+1)*A198321(n+1)`
-/

namespace A136535.P11251443088563950437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132812 (n + 1) - A007318 (n + 1) * A198321 (n + 1)

end

end A136535.P11251443088563950437

noncomputable section

/-- A136535: A128064 * A001263.

Offset 1, canonical program `A136535.P11251443088563950437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136535 (n : ℕ) : ℤ :=
  A136535.P11251443088563950437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136573.P11929683925808503740

`A233543(n)+A119502(A245300(n))-1`
-/

namespace A136573.P11929683925808503740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n + (A119502 (A245300 n).toNat - 1)

end

end A136573.P11929683925808503740

noncomputable section

/-- A136573: Triangle read by rows: (A000012 * A136572 + A136572 * A000012) - A000012.

Offset 0, canonical program `A136573.P11929683925808503740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A136573 (n : ℕ) : ℤ :=
  A136573.P11929683925808503740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A136573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137203.P13219969352286166426

`A108852(n²)`
-/

namespace A137203.P13219969352286166426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (n ^ 2)

end

end A137203.P13219969352286166426

noncomputable section

/-- A137203: Number of Fibonacci numbers less than or equal to n^2.

Offset 0, canonical program `A137203.P13219969352286166426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137203 (n : ℕ) : ℤ :=
  A137203.P13219969352286166426.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137260.P7284618185643126145

`A162608(n)-A166350(n+1)`
-/

namespace A137260.P7284618185643126145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n - A166350 (n + 1)

end

end A137260.P7284618185643126145

noncomputable section

/-- A137260: Triangle T(n, k) = k*(n-1)! - k!, read by rows.

Offset 1, canonical program `A137260.P7284618185643126145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A137260 (n : ℕ) : ℤ :=
  A137260.P7284618185643126145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A137260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137268.P14198878865993767981

`A051129(n+2)*A166350(n+1)`
-/

namespace A137268.P14198878865993767981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 2) * A166350 (n + 1)

end

end A137268.P14198878865993767981

noncomputable section

/-- A137268: Triangle T(n, k) = k! * (k+1)^(n-k), read by rows.

Offset 1, canonical program `A137268.P14198878865993767981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A137268 (n : ℕ) : ℤ :=
  A137268.P14198878865993767981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A137268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138070.P9399023133838687128

`A138114(A106255(n+1))`
-/

namespace A138070.P9399023133838687128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A106255 (n + 1)).toNat

end

end A138070.P9399023133838687128

noncomputable section

/-- A138070: Triangle read by rows: row n lists the successive digits of A135697(n), the palindromic number formed from the reflected decimal expansion of Pi.

Offset 1, canonical program `A138070.P9399023133838687128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138070 (n : ℕ) : ℤ :=
  A138070.P9399023133838687128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138709.P8547315459181565559

`A072649(n+1)%2`
-/

namespace A138709.P8547315459181565559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072649 (n + 1)) 2

end

end A138709.P8547315459181565559

noncomputable section

/-- A138709: n-th run has length n-th positive Fibonacci numbers, with digits 0 and 1 only, starting with 1.

Offset 1, canonical program `A138709.P8547315459181565559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138709 (n : ℕ) : ℤ :=
  A138709.P8547315459181565559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139385.P2848592424051489160

`p?[A095672(n+1)-4]`
-/

namespace A139385.P2848592424051489160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P2848592424051489160

noncomputable section

/-- A139385: Primes p such that p, p+4 and p+12 are consecutive primes.

Offset 1, canonical program `A139385.P2848592424051489160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A139385 (n : ℕ) : ℤ :=
  A139385.P2848592424051489160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A139385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139526.P8121772475475467117

`A007318(n)*A076112(n+1)`
-/

namespace A139526.P8121772475475467117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A076112 (n + 1)

end

end A139526.P8121772475475467117

noncomputable section

/-- A139526: Triangle A061356 read right to left.

Offset 2, canonical program `A139526.P8121772475475467117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A139526 (n : ℕ) : ℤ :=
  A139526.P8121772475475467117.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A139526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140280.P15285720908636328681

`A007954(A007318(n))`
-/

namespace A140280.P15285720908636328681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007318 n).toNat

end

end A140280.P15285720908636328681

noncomputable section

/-- A140280: Product of digits of values in Pascal's triangle, by rows.

Offset 0, canonical program `A140280.P15285720908636328681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140280 (n : ℕ) : ℤ :=
  A140280.P15285720908636328681.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140369.P7518629714154131444

`filter[A063233(2*(n+1)), A354108(#)]`
-/

namespace A140369.P7518629714154131444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A140369.P7518629714154131444

noncomputable section

/-- A140369: Composites of the form 26k + 19.

Offset 1, canonical program `A140369.P7518629714154131444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A140369 (n : ℕ) : ℤ :=
  A140369.P7518629714154131444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A140369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140682.P8275354965430538715

`A109004(n)-A007318(n)`
-/

namespace A140682.P8275354965430538715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n - A007318 n

end

end A140682.P8275354965430538715

noncomputable section

/-- A140682: Triangle T(n,k) = gcd(n,k)-binomial(n,k), 0<=k<=n.

Offset 0, canonical program `A140682.P8275354965430538715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140682 (n : ℕ) : ℤ :=
  A140682.P8275354965430538715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140944.P4876710666983306882

`A065620(A173787(n))`
-/

namespace A140944.P4876710666983306882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A173787 n).toNat

end

end A140944.P4876710666983306882

noncomputable section

/-- A140944: Triangle T(n,k) read by rows, the k-th term of the n-th differences of the Jacobsthal sequence A001045.

Offset 0, canonical program `A140944.P4876710666983306882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A140944 (n : ℕ) : ℤ :=
  A140944.P4876710666983306882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A140944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140977.P14132471099768097264

`A171942(A001316(2*n+1)+2+n)+1+n`
-/

namespace A140977.P14132471099768097264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A001316 (2 * n + 1) + 2 + (n : ℤ)).toNat + 1 + (n : ℤ)

end

end A140977.P14132471099768097264

noncomputable section

/-- A140977: a(n) is the smallest integer > n that has the same number of (nonleading) zeros in its binary representation as n has.

Offset 1, canonical program `A140977.P14132471099768097264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140977 (n : ℕ) : ℤ :=
  A140977.P14132471099768097264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141217.P8943898306650397256

`A141208(A006093(n+1))`
-/

namespace A141217.P8943898306650397256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A006093 (n + 1)).toNat

end

end A141217.P8943898306650397256

noncomputable section

/-- A141217: a(n) = prime(prime(prime(prime(n) - 1) - 1) - 1) - 1, where prime(n) is the n-th prime.

Offset 1, canonical program `A141217.P8943898306650397256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141217 (n : ℕ) : ℤ :=
  A141217.P8943898306650397256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141657.P6051655849065492727

`p?[A307985(A072473(n+1))]`
-/

namespace A141657.P6051655849065492727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (A072473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141657.P6051655849065492727

noncomputable section

/-- A141657: a(n) = (prime(2*m)-prime(m))/6 where m is the n-th positive integer such that (prime(2*m)-prime(m))/6 is prime.

Offset 1, canonical program `A141657.P6051655849065492727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A141657 (n : ℕ) : ℤ :=
  A141657.P6051655849065492727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A141657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141665.P1503714888046973662

`A007318(n)*A056594(A002262(n))`
-/

namespace A141665.P1503714888046973662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056594 (A002262 n).toNat

end

end A141665.P1503714888046973662

noncomputable section

/-- A141665: A signed half of Pascal's triangle A007318: p(x,n) = (1+I*x)^n; t(n,m) = real part of coefficients(p(x,n)).

Offset 0, canonical program `A141665.P1503714888046973662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141665 (n : ℕ) : ℤ :=
  A141665.P1503714888046973662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142243.P5346729811082170933

`A062344(n)*A106187(n)`
-/

namespace A142243.P5346729811082170933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 n * A106187 n

end

end A142243.P5346729811082170933

noncomputable section

/-- A142243: Triangle T(n,k) = binomial(2*n,k) *binomial(2*n-2*k,n-k), read by rows; 0<=k<=n.

Offset 0, canonical program `A142243.P5346729811082170933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8430 terms. -/
def A142243 (n : ℕ) : ℤ :=
  A142243.P5346729811082170933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8430 terms. -/
def A142243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143110.P1100247901521213873

`A143425(n+1)%3`
-/

namespace A143110.P1100247901521213873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143425 (n + 1)) 3

end

end A143110.P1100247901521213873

noncomputable section

/-- A143110: Triangle read by rows, A051731 * A000034 * 0^(n-k), 1<=k<=n.

Offset 1, canonical program `A143110.P1100247901521213873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143110 (n : ℕ) : ℤ :=
  A143110.P1100247901521213873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143278.P3385981285395499080

`(24*n+1)*(A007706(n)-1)`
-/

namespace A143278.P3385981285395499080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n + 1 : ℤ) * (A007706 n - 1)

end

end A143278.P3385981285395499080

noncomputable section

/-- A143278: Convolution of A006352 and A010815.

Offset 0, canonical program `A143278.P3385981285395499080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A143278 (n : ℕ) : ℤ :=
  A143278.P3385981285395499080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A143278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143333.P4500561417353850854

`A007318(n)*A047999(n)`
-/

namespace A143333.P4500561417353850854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A047999 n

end

end A143333.P4500561417353850854

noncomputable section

/-- A143333: Pascal's triangle binomial(n,m) read by rows, all even elements replaced by zero.

Offset 0, canonical program `A143333.P4500561417353850854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143333 (n : ℕ) : ℤ :=
  A143333.P4500561417353850854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143593.P13769069135629193761

`A022998(A143956(n+1))`
-/

namespace A143593.P13769069135629193761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A143956 (n + 1)).toNat

end

end A143593.P13769069135629193761

noncomputable section

/-- A143593: Triangle read by rows, square of A238303 (an infinite lower triangular matrix with 1's in the first column and the rest 2's).

Offset 1, canonical program `A143593.P13769069135629193761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143593 (n : ℕ) : ℤ :=
  A143593.P13769069135629193761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000265.P2772582252347773295

`2*A003602(n+1)-1`
-/

namespace A000265.P2772582252347773295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003602 (n + 1) - 1

end

end A000265.P2772582252347773295

noncomputable section

/-- A000265: Remove all factors of 2 from n; or largest odd divisor of n; or odd part of n.

Offset 1, canonical program `A000265.P2772582252347773295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000265 (n : ℕ) : ℤ :=
  A000265.P2772582252347773295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000415.P13707848856828247433

`filter[A001481(n+2), A049240(#)]`
-/

namespace A000415.P13707848856828247433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A000415.P13707848856828247433

noncomputable section

/-- A000415: Numbers that are the sum of 2 but no fewer nonzero squares.

Offset 1, canonical program `A000415.P13707848856828247433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A000415 (n : ℕ) : ℤ :=
  A000415.P13707848856828247433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A000415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003408.P7802159424655809431

`A013698(n+1)*3*(n+2)/(2*(n+3))`
-/

namespace A003408.P7802159424655809431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013698 (n + 1) : ℚ) * (3 * ((n + 2 : ℚ) / (2 * (n + 3) : ℚ)))

end

end A003408.P7802159424655809431

noncomputable section

/-- A003408: a(n) = binomial(3n+6, n).

Offset 0, canonical program `A003408.P7802159424655809431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013698, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003408 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003408.P7802159424655809431.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013698, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003518.P3518612387412531117

`A001089(n+3)+A000344(n+2)`
-/

namespace A003518.P3518612387412531117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001089 (n + 3) + A000344 (n + 2)

end

end A003518.P3518612387412531117

noncomputable section

/-- A003518: a(n) = 8*binomial(2*n+1,n-3)/(n+5).

Offset 3, canonical program `A003518.P3518612387412531117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A003518 (n : ℕ) : ℤ :=
  A003518.P3518612387412531117.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A003518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004313.P141593360699219637

`A062344(eq[7, A025581(n)])`
-/

namespace A004313.P141593360699219637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004313.P141593360699219637

noncomputable section

/-- A004313: a(n) = binomial coefficient C(2n, n-7).

Offset 7, canonical program `A004313.P141593360699219637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A004313 (n : ℕ) : ℤ :=
  A004313.P141593360699219637.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A004313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005745.P2701470633622022605

`∑[A055609(n+1)]`
-/

namespace A005745.P2701470633622022605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005745.P2701470633622022605

noncomputable section

/-- A005745: Number of n-covers of an unlabeled 3-set.

Offset 1, canonical program `A005745.P2701470633622022605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005745 (n : ℕ) : ℤ :=
  A005745.P2701470633622022605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006579.P1794598553160813575

`∑[Δ[A209295(n)]-2]`
-/

namespace A006579.P1794598553160813575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006579.P1794598553160813575

noncomputable section

/-- A006579: a(n) = Sum_{k=1..n-1} gcd(n,k).

Offset 1, canonical program `A006579.P1794598553160813575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006579 (n : ℕ) : ℤ :=
  A006579.P1794598553160813575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008493.P15021164243418089667

`A000582(n+9)+A008503(n)-A008492(n)`
-/

namespace A008493.P15021164243418089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (A008503 n - A008492 n)

end

end A008493.P15021164243418089667

noncomputable section

/-- A008493: Expansion of (1-x^11) / (1-x)^11.

Offset 0, canonical program `A008493.P15021164243418089667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008493 (n : ℕ) : ℤ :=
  A008493.P15021164243418089667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008678.P337073461788378853

`A025883(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008678.P337073461788378853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025883 n + a (n - 3)

end

end A008678.P337073461788378853

noncomputable section

/-- A008678: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A008678.P337073461788378853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008678 (n : ℕ) : ℤ :=
  A008678.P337073461788378853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015582.P1684706054651665928

`A000007(A145479(n+1)*A145568(n))`
-/

namespace A015582.P1684706054651665928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A145479 (n + 1) * A145568 n).toNat

end

end A015582.P1684706054651665928

noncomputable section

/-- A015582: Inverse of 1573rd cyclotomic polynomial.

Offset 0, canonical program `A015582.P1684706054651665928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A015582 (n : ℕ) : ℤ :=
  A015582.P1684706054651665928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A015582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020757.P13878919061002843869

`comp[A020756(n+1)]`
-/

namespace A020757.P13878919061002843869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020757.P13878919061002843869

noncomputable section

/-- A020757: Numbers that are not the sum of two triangular numbers.

Offset 1, canonical program `A020757.P13878919061002843869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020757 (n : ℕ) : ℤ :=
  (A020757.P13878919061002843869.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020907.P7636625289105979311

`∑[A283325(n+1)+1]`
-/

namespace A020907.P7636625289105979311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283325 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020907.P7636625289105979311

noncomputable section

/-- A020907: Position of n-th 2 in A020906.

Offset 1, canonical program `A020907.P7636625289105979311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020907 (n : ℕ) : ℤ :=
  A020907.P7636625289105979311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022458.P394899228385928134

`A110962(A001749(2*n+1)%A001749(n+1))`
-/

namespace A022458.P394899228385928134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (Int.tmod (A001749 (2 * n + 1)) (A001749 (n + 1))).toNat

end

end A022458.P394899228385928134

noncomputable section

/-- A022458: a(n) = prime(2n-1) mod prime(n).

Offset 1, canonical program `A022458.P394899228385928134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022458 (n : ℕ) : ℤ :=
  A022458.P394899228385928134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024409.P2719521149031605988

`filter[A008846(n+1), A354108(#)]`
-/

namespace A024409.P2719521149031605988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A024409.P2719521149031605988

noncomputable section

/-- A024409: Hypotenuses of more than one primitive Pythagorean triangle.

Offset 1, canonical program `A024409.P2719521149031605988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4797 terms. -/
def A024409 (n : ℕ) : ℤ :=
  A024409.P2719521149031605988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4797 terms. -/
def A024409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024880.P13248574875159670517

`∑[A024316(n+1)-A024879(n+2)]`
-/

namespace A024880.P13248574875159670517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) - A024879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024880.P13248574875159670517

noncomputable section

/-- A024880: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = A023532.

Offset 2, canonical program `A024880.P13248574875159670517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024880 (n : ℕ) : ℤ :=
  A024880.P13248574875159670517.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025020.P18212951843414993576

`eq[0, A087780(n+2)]+2`
-/

namespace A025020.P18212951843414993576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A025020.P18212951843414993576

noncomputable section

/-- A025020: Numbers whose least quadratic nonresidue (A020649) is 2.

Offset 1, canonical program `A025020.P18212951843414993576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8588 terms. -/
def A025020 (n : ℕ) : ℤ :=
  (A025020.P18212951843414993576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8588 terms. -/
def A025020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025484.P7854271850467826119

`A234575(A000217(n+25)-n)-1`
-/

namespace A025484.P7854271850467826119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A000217 (n + 25) - (n : ℤ)).toNat - 1

end

end A025484.P7854271850467826119

noncomputable section

/-- A025484: a(0) = 0; a(n) = a(n/5)/5 if n = a(n/5) = 0 (mod 5); a(n) = a(n-1)+1 otherwise.

Offset 0, canonical program `A025484.P7854271850467826119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A025484 (n : ℕ) : ℤ :=
  A025484.P7854271850467826119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A025484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025820.P16154105183383846534

`A025825(n)+A025883(n)-A025893(n)`
-/

namespace A025820.P16154105183383846534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025825 n + (A025883 n - A025893 n)

end

end A025820.P16154105183383846534

noncomputable section

/-- A025820: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A025820.P16154105183383846534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025820 (n : ℕ) : ℤ :=
  A025820.P16154105183383846534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027457.P5210784852604014020

`A025529(n+1)-Δ[A173185(n)]`
-/

namespace A027457.P5210784852604014020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027457.P5210784852604014020

noncomputable section

/-- A027457: a(n) = (H(n) - 1)*lcm{1,...,n}, where H(n) is the n-th harmonic number.

Offset 1, canonical program `A027457.P5210784852604014020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027457 (n : ℕ) : ℤ :=
  A027457.P5210784852604014020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027697.P9273385272130382931

`A000040(A027698(n+1))`
-/

namespace A027697.P9273385272130382931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027698 (n + 1)).toNat

end

end A027697.P9273385272130382931

noncomputable section

/-- A027697: Odious primes: primes with odd number of 1's in binary expansion.

Offset 1, canonical program `A027697.P9273385272130382931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. -/
def A027697 (n : ℕ) : ℤ :=
  A027697.P9273385272130382931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. -/
def A027697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031363.P1945995109535793114

`filter[A035259(n+1), A035263(#)]`
-/

namespace A031363.P1945995109535793114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A031363.P1945995109535793114

noncomputable section

/-- A031363: Positive numbers of the form x^2 + xy - y^2; or, of the form 5x^2 - y^2.

Offset 1, canonical program `A031363.P1945995109535793114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6579 terms. -/
def A031363 (n : ℕ) : ℤ :=
  A031363.P1945995109535793114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6579 terms. -/
def A031363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033015.P17530871968754790428

`filter[A048717(n+1), A152822(#)]`
-/

namespace A033015.P17530871968754790428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A033015.P17530871968754790428

noncomputable section

/-- A033015: Numbers whose base-2 expansion has no run of digits with length < 2.

Offset 1, canonical program `A033015.P17530871968754790428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A033015 (n : ℕ) : ℤ :=
  A033015.P17530871968754790428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A033015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033548.P3085097535061214025

`A000040(A033549(n+1))`
-/

namespace A033548.P3085097535061214025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033549 (n + 1)).toNat

end

end A033548.P3085097535061214025

noncomputable section

/-- A033548: Honaker primes: primes P(k) such that sum of digits of P(k) equals sum of digits of k.

Offset 1, canonical program `A033548.P3085097535061214025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A033548 (n : ℕ) : ℤ :=
  A033548.P3085097535061214025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A033548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034957.P9145438828403421056

`A034956(n+1)-A000040(n+1)`
-/

namespace A034957.P9145438828403421056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - A000040 (n + 1)

end

end A034957.P9145438828403421056

noncomputable section

/-- A034957: Divide natural numbers in groups with prime(n) elements and add together.

Offset 1, canonical program `A034957.P9145438828403421056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A034956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034957 (n : ℕ) : ℤ :=
  A034957.P9145438828403421056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A034956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035170.P11485514388961379659

`A124233(n+1)`
-/

namespace A035170.P11485514388961379659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 (n + 1)

end

end A035170.P11485514388961379659

noncomputable section

/-- A035170: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -20.

Offset 1, canonical program `A035170.P11485514388961379659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035170 (n : ℕ) : ℤ :=
  A035170.P11485514388961379659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036350.P4117456355186403580

`∪[A036348(n+1), A046340(n+1)]`
-/

namespace A036350.P4117456355186403580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P4117456355186403580

noncomputable section

/-- A036350: Composite numbers such that the sum of the prime factors is odd (counted with multiplicity).

Offset 1, canonical program `A036350.P4117456355186403580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036350 (n : ℕ) : ℤ :=
  (A036350.P4117456355186403580.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037129.P8703308658167490187

`A037128(n)/2`
-/

namespace A037129.P8703308658167490187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037128 n : ℚ) / 2

end

end A037129.P8703308658167490187

noncomputable section

/-- A037129: (nextprime(3^n)-nextprime(2^n))/2.

Offset 0, canonical program `A037129.P8703308658167490187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037129.P8703308658167490187.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038510.P9284818905078478089

`filter[A038509(n+1), A011558(#)]`
-/

namespace A038510.P9284818905078478089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A038510.P9284818905078478089

noncomputable section

/-- A038510: Composite numbers with smallest prime factor >= 7.

Offset 1, canonical program `A038510.P9284818905078478089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7092 terms. -/
def A038510 (n : ℕ) : ℤ :=
  A038510.P9284818905078478089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7092 terms. -/
def A038510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039739.P6830857110340226127

`2*A039734(n+2)-A065091(n+1)`
-/

namespace A039739.P6830857110340226127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039734 (n + 2) - A065091 (n + 1)

end

end A039739.P6830857110340226127

noncomputable section

/-- A039739: a(n) = 2*q-prime(n), where q is the prime < prime(n) for which (prime(n) mod q) is maximal.

Offset 2, canonical program `A039739.P6830857110340226127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039739 (n : ℕ) : ℤ :=
  A039739.P6830857110340226127.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043583.P1368657139384558028

`eq[3, A043555(n)]`
-/

namespace A043583.P1368657139384558028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043583.P1368657139384558028

noncomputable section

/-- A043583: Numbers whose base-3 representation has exactly 3 runs.

Offset 1, canonical program `A043583.P1368657139384558028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A043583 (n : ℕ) : ℤ :=
  (A043583.P1368657139384558028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A043583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043585.P4061843327585154574

`eq[5, A043555(n)]`
-/

namespace A043585.P4061843327585154574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043585.P4061843327585154574

noncomputable section

/-- A043585: Numbers whose base-3 representation has exactly 5 runs.

Offset 1, canonical program `A043585.P4061843327585154574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A043585 (n : ℕ) : ℤ :=
  (A043585.P4061843327585154574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A043585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043586.P5537003362996281712

`eq[6, A043555(n)]`
-/

namespace A043586.P5537003362996281712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043586.P5537003362996281712

noncomputable section

/-- A043586: Numbers whose base-3 representation has exactly 6 runs.

Offset 1, canonical program `A043586.P5537003362996281712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A043586 (n : ℕ) : ℤ :=
  (A043586.P5537003362996281712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A043586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043596.P12586235919778848023

`∩[A043707(n+1), A043827(n+1)]`
-/

namespace A043596.P12586235919778848023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043596.P12586235919778848023

noncomputable section

/-- A043596: Numbers whose base-4 representation has exactly 5 runs.

Offset 1, canonical program `A043596.P12586235919778848023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5576 terms. -/
def A043596 (n : ℕ) : ℤ :=
  (A043596.P12586235919778848023.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5576 terms. -/
def A043596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043687.P17373175966273517856

`(A043570(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043687.P17373175966273517856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043570 (n + 1) - 1 : ℚ) / 2

end

end A043687.P17373175966273517856

noncomputable section

/-- A043687: a(n) = (A043570(n)-1)/2, where A043570(n) is the n-th number whose base-2 representation has exactly 3 runs.

Offset 1, canonical program `A043687.P17373175966273517856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A043687 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A043687.P17373175966273517856.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A043687.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A043692.P17592614218210467069

`eq[0, A043555(n)%2]`
-/

namespace A043692.P17592614218210467069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043692.P17592614218210467069

noncomputable section

/-- A043692: Numbers whose base-3 representation has an even number of runs.

Offset 1, canonical program `A043692.P17592614218210467069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A043692 (n : ℕ) : ℤ :=
  (A043692.P17592614218210467069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A043692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043706.P18140700825686672469

`lt[n*val(A043555(n), 2), n]`
-/

namespace A043706.P18140700825686672469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A043555 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043706.P18140700825686672469

noncomputable section

/-- A043706: Numbers whose base-3 representation has an odd number of runs.

Offset 1, canonical program `A043706.P18140700825686672469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A043706 (n : ℕ) : ℤ :=
  (A043706.P18140700825686672469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A043706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043773.P18176166651553098273

`eq[0, A043555(n)%3]`
-/

namespace A043773.P18176166651553098273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043773.P18176166651553098273

noncomputable section

/-- A043773: Numbers k such that number of runs in the base 3 representation of k is congruent to 0 mod 3.

Offset 1, canonical program `A043773.P18176166651553098273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A043773 (n : ℕ) : ℤ :=
  (A043773.P18176166651553098273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A043773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043774.P4061681262663181299

`eq[1, A043555(n+1)%3]+1`
-/

namespace A043774.P4061681262663181299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043774.P4061681262663181299

noncomputable section

/-- A043774: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 3.

Offset 1, canonical program `A043774.P4061681262663181299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6642 terms. -/
def A043774 (n : ℕ) : ℤ :=
  (A043774.P4061681262663181299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6642 terms. -/
def A043774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043775.P3431966158011080836

`eq[2, A043555(n)%3]`
-/

namespace A043775.P3431966158011080836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043775.P3431966158011080836

noncomputable section

/-- A043775: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 3.

Offset 1, canonical program `A043775.P3431966158011080836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6480 terms. -/
def A043775 (n : ℕ) : ℤ :=
  (A043775.P3431966158011080836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6480 terms. -/
def A043775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043778.P6531332179290542824

`eq[1, val(A043555(n), 2)]`
-/

namespace A043778.P6531332179290542824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043555 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043778.P6531332179290542824

noncomputable section

/-- A043778: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 4.

Offset 1, canonical program `A043778.P6531332179290542824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5520 terms. -/
def A043778 (n : ℕ) : ℤ :=
  (A043778.P6531332179290542824.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5520 terms. -/
def A043778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045081.P14565639828916206553

`(A045057(n+1)+A045033(n+1))/3`
-/

namespace A045081.P14565639828916206553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045057 (n + 1) + A045033 (n + 1) : ℚ) / 3

end

end A045081.P14565639828916206553

noncomputable section

/-- A045081: Numbers whose base-4 representation contains exactly four 0's and no 3's.

Offset 1, canonical program `A045081.P14565639828916206553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045081.P14565639828916206553.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045723.P17563774538173166347

`A042971(A028310(n))+2^n-A058622(n)`
-/

namespace A045723.P17563774538173166347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042971 (A028310 n).toNat + ((2 ^ n : ℤ) - A058622 n)

end

end A045723.P17563774538173166347

noncomputable section

/-- A045723: Number of configurations, excluding reflections and black-white interchanges, of n black and n white beads on a string.

Offset 0, canonical program `A045723.P17563774538173166347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A045723 (n : ℕ) : ℤ :=
  A045723.P17563774538173166347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A045723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046388.P6384057997627062730

`filter[A385350(n+1), A340370(#)]`
-/

namespace A046388.P6384057997627062730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A046388.P6384057997627062730

noncomputable section

/-- A046388: Odd numbers of the form p*q where p and q are distinct primes.

Offset 1, canonical program `A046388.P6384057997627062730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. -/
def A046388 (n : ℕ) : ℤ :=
  A046388.P6384057997627062730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. -/
def A046388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047858.P753542054186943020

`A062111(n)+1-A002262(n)`
-/

namespace A047858.P753542054186943020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 n + (1 - A002262 n)

end

end A047858.P753542054186943020

noncomputable section

/-- A047858: T(n, k) = 2^(k-1)*(k + 2*n) - n + 1, array read by descending antidiagonals.

Offset 0, canonical program `A047858.P753542054186943020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047858 (n : ℕ) : ℤ :=
  A047858.P753542054186943020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049107.P3035884980627210001

`A049099(A010554(n+1))`
-/

namespace A049107.P3035884980627210001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A010554 (n + 1)).toNat

end

end A049107.P3035884980627210001

noncomputable section

/-- A049107: a(n) = Euler phi function applied 5 times to n.

Offset 1, canonical program `A049107.P3035884980627210001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049107 (n : ℕ) : ℤ :=
  A049107.P3035884980627210001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049640.P11900036197294698839

`∑[ceil(A049644(n)/2)]`
-/

namespace A049640.P11900036197294698839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049644 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P11900036197294698839

noncomputable section

/-- A049640: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049639.

Offset 0, canonical program `A049640.P11900036197294698839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A049640 (n : ℕ) : ℤ :=
  A049640.P11900036197294698839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A049640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049641.P593643033419943837

`Δ[A049688(n%A008619(n))]`
-/

namespace A049641.P593643033419943837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 (Int.tmod (n : ℤ) (A008619 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049641.P593643033419943837

noncomputable section

/-- A049641: a(n) = Sum_{i=0..n} ((-1)^i)*T(i,n-i), array T as in A049639.

Offset 0, canonical program `A049641.P593643033419943837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A049641 (n : ℕ) : ℤ :=
  A049641.P593643033419943837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A049641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050795.P10925690759410066325

`2*A140612(n+2)+1`
-/

namespace A050795.P10925690759410066325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140612 (n + 2) + 1

end

end A050795.P10925690759410066325

noncomputable section

/-- A050795: Numbers n such that n^2 - 1 is expressible as the sum of two nonzero squares in at least one way.

Offset 1, canonical program `A050795.P10925690759410066325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A050795 (n : ℕ) : ℤ :=
  A050795.P10925690759410066325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A050795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050871.P14178361783424697463

`2*A050872(n)`
-/

namespace A050871.P14178361783424697463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050872 n

end

end A050871.P14178361783424697463

noncomputable section

/-- A050871: Row sums of even numbered rows of array T in A050870 (periodic binary words).

Offset 0, canonical program `A050871.P14178361783424697463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A050871 (n : ℕ) : ℤ :=
  A050871.P14178361783424697463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A050871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051222.P2891263857057906711

`2*A045979(n+1)`
-/

namespace A051222.P2891263857057906711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045979 (n + 1)

end

end A051222.P2891263857057906711

noncomputable section

/-- A051222: Numbers k such that Bernoulli number B_{k} has denominator 6.

Offset 1, canonical program `A051222.P2891263857057906711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A051222 (n : ℕ) : ℤ :=
  A051222.P2891263857057906711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A051222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053193.P5970759268861292742

`Δ[(n+1)²-A099957(n+1)]`
-/

namespace A053193.P5970759268861292742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A099957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053193.P5970759268861292742

noncomputable section

/-- A053193: Cototient of odd numbers.

Offset 1, canonical program `A053193.P5970759268861292742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053193 (n : ℕ) : ℤ :=
  A053193.P5970759268861292742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053219.P2863116976655408559

`A130321(n)+A062111(n)`
-/

namespace A053219.P2863116976655408559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A062111 n

end

end A053219.P2863116976655408559

noncomputable section

/-- A053219: Reverse of triangle A053218, read by rows.

Offset 1, canonical program `A053219.P2863116976655408559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053219 (n : ℕ) : ℤ :=
  A053219.P2863116976655408559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053245.P5646553106277292429

`∩[A053242(n+1)-1, A053242(n+1)]`
-/

namespace A053245.P5646553106277292429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053242 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053245.P5646553106277292429

noncomputable section

/-- A053245: Numbers k such that both A053238(k) and A053238(k+1) = 1.

Offset 1, canonical program `A053245.P5646553106277292429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4276 terms. -/
def A053245 (n : ℕ) : ℤ :=
  (A053245.P5646553106277292429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4276 terms. -/
def A053245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054550.P15837303380878172216

`∩[A038509(n+1), A080672(n+1)]`
-/

namespace A054550.P15837303380878172216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054550.P15837303380878172216

noncomputable section

/-- A054550: Composite numbers whose least prime factor is either 5 or 7.

Offset 1, canonical program `A054550.P15837303380878172216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A054550 (n : ℕ) : ℤ :=
  (A054550.P15837303380878172216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A054550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054660.P1822960729716914186

`A064355(2*(n+1))/2`
-/

namespace A054660.P1822960729716914186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064355 (2 * (n + 1)) : ℚ) / 2

end

end A054660.P1822960729716914186

noncomputable section

/-- A054660: Number of monic irreducible polynomials over GF(4) of degree n with fixed nonzero trace.

Offset 1, canonical program `A054660.P1822960729716914186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054660 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054660.P1822960729716914186.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056141.P7848227700936811261

`A056140(n+3)-A056139(n+3)`
-/

namespace A056141.P7848227700936811261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056140 (n + 3) - A056139 (n + 3)

end

end A056141.P7848227700936811261

noncomputable section

/-- A056141: a(n) = primefloor(n)*primeceiling(n) - previousprime(n)*nextprime(n).

Offset 3, canonical program `A056141.P7848227700936811261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056141 (n : ℕ) : ℤ :=
  A056141.P7848227700936811261.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056279.P11750011524147072327

`A056274(n+1)-A000740(n+1)`
-/

namespace A056279.P11750011524147072327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056274 (n + 1) - A000740 (n + 1)

end

end A056279.P11750011524147072327

noncomputable section

/-- A056279: Number of primitive (aperiodic) word structures of length n which contain exactly three different symbols.

Offset 1, canonical program `A056279.P11750011524147072327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A056279 (n : ℕ) : ℤ :=
  A056279.P11750011524147072327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A056279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056536.P15475188742304027796

`A091995(A056537(A091995(n+1)))`
-/

namespace A056536.P15475188742304027796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (A056537 (A091995 (n + 1)).toNat).toNat

end

end A056536.P15475188742304027796

noncomputable section

/-- A056536: Mapping from half-antidiagonal reading of the triangle (as used in A028297) to the column-by-column reading of the triangular tables.

Offset 1, canonical program `A056536.P15475188742304027796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A056536 (n : ℕ) : ℤ :=
  A056536.P15475188742304027796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A056536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056552.P1963529869143813424

`A056551(n+1)^(1/3)`
-/

namespace A056552.P1963529869143813424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056551 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A056552.P1963529869143813424

noncomputable section

/-- A056552: Powerfree kernel of cubefree part of n.

Offset 1, canonical program `A056552.P1963529869143813424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056552.P1963529869143813424.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057962.P10638733739306461883

`∑[A005883(A020756(n+1))]`
-/

namespace A057962.P10638733739306461883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 (A020756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057962.P10638733739306461883

noncomputable section

/-- A057962: Number of points (x,y) in square lattice with (x-1/2)^2+(y-1/2)^2 <= n.

Offset 1, canonical program `A057962.P10638733739306461883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4834 terms. -/
def A057962 (n : ℕ) : ℤ :=
  A057962.P10638733739306461883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4834 terms. -/
def A057962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058053.P2509255081695082303

`A097513(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A058053.P2509255081695082303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A097513 n + a (n - 3)

end

end A058053.P2509255081695082303

noncomputable section

/-- A058053: Number of 3-rowed binary matrices with n ones and no zero columns, up to row and column permutation.

Offset 0, canonical program `A058053.P2509255081695082303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A058053 (n : ℕ) : ℤ :=
  A058053.P2509255081695082303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A058053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058363.P18291542316030810547

`filter[A093641(n+2), A354923(#)]`
-/

namespace A058363.P18291542316030810547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A058363.P18291542316030810547

noncomputable section

/-- A058363: Numbers whose reduced system of residues forms an arithmetic progression. It consists of primes, twice primes, and powers of 2.

Offset 1, canonical program `A058363.P18291542316030810547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7050 terms. -/
def A058363 (n : ℕ) : ℤ :=
  A058363.P18291542316030810547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7050 terms. -/
def A058363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060538.P8252536530656079859

`A187783(eq[0, A103451(n)])`
-/

namespace A060538.P8252536530656079859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060538.P8252536530656079859

noncomputable section

/-- A060538: Square array read by antidiagonals of number of ways of dividing n*k labeled items into n labeled boxes with k items in each box.

Offset 1, canonical program `A060538.P8252536530656079859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A060538 (n : ℕ) : ℤ :=
  A060538.P8252536530656079859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A060538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061304.P10532715459546115728

`A000217(A215726(n+1))`
-/

namespace A061304.P10532715459546115728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A215726 (n + 1)).toNat

end

end A061304.P10532715459546115728

noncomputable section

/-- A061304: Squarefree triangular numbers.

Offset 1, canonical program `A061304.P10532715459546115728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061304 (n : ℕ) : ℤ :=
  A061304.P10532715459546115728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061346.P8376989316986031510

`filter[A226025(n+1), A354108(#)]`
-/

namespace A061346.P8376989316986031510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P8376989316986031510

noncomputable section

/-- A061346: Odd numbers that are neither primes nor prime powers.

Offset 1, canonical program `A061346.P8376989316986031510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9979 terms. -/
def A061346 (n : ℕ) : ℤ :=
  A061346.P8376989316986031510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9979 terms. -/
def A061346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061537.P8200961740907353381

`(n+1)^A007875(n+1)`
-/

namespace A061537.P8200961740907353381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A007875 (n + 1) : ℤ)

end

end A061537.P8200961740907353381

noncomputable section

/-- A061537: Product of the unitary divisors of n: a(n) = Product_{d|n, gcd(d,n/d) = 1} d.

Offset 1, canonical program `A061537.P8200961740907353381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061537.P8200961740907353381.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062801.P17256889499220257639

`(n+1)²²-∑[A016813(A209295(n))]`
-/

namespace A062801.P17256889499220257639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A209295 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062801.P17256889499220257639

noncomputable section

/-- A062801: Number of 2 X 2 non-singular integer matrices with entries from {0,...,n}.

Offset 0, canonical program `A062801.P17256889499220257639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A062801 (n : ℕ) : ℤ :=
  A062801.P17256889499220257639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A062801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062803.P16752899596176720456

`A327767(n+1)*A332794(n+1)`
-/

namespace A062803.P16752899596176720456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (n + 1) * A332794 (n + 1)

end

end A062803.P16752899596176720456

noncomputable section

/-- A062803: Number of solutions to x^2 == y^2 (mod n).

Offset 1, canonical program `A062803.P16752899596176720456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332794, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062803 (n : ℕ) : ℤ :=
  A062803.P16752899596176720456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332794, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062803.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063933.P15541070367687392671

`round(A056139(n+2)/A003485(n))`
-/

namespace A063933.P15541070367687392671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056139 (n + 2) : ℚ) / (A003485 n : ℚ))

end

end A063933.P15541070367687392671

noncomputable section

/-- A063933: Difference between n and the average of largest prime less than or equal to n and smallest prime greater than or equal to n.

Offset 2, canonical program `A063933.P15541070367687392671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063933 (n : ℕ) : ℤ :=
  A063933.P15541070367687392671.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064106.P240912047226861259

`A064105(n+1)+A202342(n+1)`
-/

namespace A064106.P240912047226861259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + A202342 (n + 1)

end

end A064106.P240912047226861259

noncomputable section

/-- A064106: 3rd column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A064106.P240912047226861259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064105, A202342, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064106 (n : ℕ) : ℤ :=
  A064106.P240912047226861259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064105, A202342, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064276.P18165099478647077307

`∑[A209295(n)+1+n]`
-/

namespace A064276.P18165099478647077307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064276.P18165099478647077307

noncomputable section

/-- A064276: Number of 2 X 2 singular integer matrices with elements from {0,...,n} up to row and column permutation.

Offset 0, canonical program `A064276.P18165099478647077307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A064276 (n : ℕ) : ℤ :=
  A064276.P18165099478647077307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A064276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064601.P5730512470654133780

`∑[char[A141208(n+1)]]`
-/

namespace A064601.P5730512470654133780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064601.P5730512470654133780

noncomputable section

/-- A064601: a(n) = # { p | A064558(k) = p prime and k <= n}.

Offset 1, canonical program `A064601.P5730512470654133780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064601 (n : ℕ) : ℤ :=
  (A064601.P5730512470654133780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064778.P14139164401297173886

`A266620(n+1)-1`
-/

namespace A064778.P14139164401297173886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (n + 1) - 1

end

end A064778.P14139164401297173886

noncomputable section

/-- A064778: Largest m such that 1..m all divide n!.

Offset 1, canonical program `A064778.P14139164401297173886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064778 (n : ℕ) : ℤ :=
  A064778.P14139164401297173886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066074.P14598573141439101236

`p?[A163871(n+1)]`
-/

namespace A066074.P14598573141439101236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P14598573141439101236

noncomputable section

/-- A066074: Primes arising in A066073.

Offset 1, canonical program `A066074.P14598573141439101236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074 (n : ℕ) : ℤ :=
  A066074.P14598573141439101236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066341.P1171911848502038531

`(n+3)*A007875(n+2)-(n+2)`
-/

namespace A066341.P1171911848502038531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007875 (n + 2) - (n + 2 : ℤ)

end

end A066341.P1171911848502038531

noncomputable section

/-- A066341: Sum of distinct terms in n-th row of Fermat's triangle.

Offset 2, canonical program `A066341.P1171911848502038531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A066341 (n : ℕ) : ℤ :=
  A066341.P1171911848502038531.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A066341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066498.P12103817307299836171

`lt[A283443(A046073(n+1)), A046073(n+1)]+1`
-/

namespace A066498.P12103817307299836171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A046073 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066498.P12103817307299836171

noncomputable section

/-- A066498: Numbers k such that 3 divides phi(k).

Offset 1, canonical program `A066498.P12103817307299836171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066498 (n : ℕ) : ℤ :=
  (A066498.P12103817307299836171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066501.P10835887515375313697

`∩[A033948(n+1), A088232(n+1)]`
-/

namespace A066501.P10835887515375313697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066501.P10835887515375313697

noncomputable section

/-- A066501: Numbers k such that x^6 == 1 (mod(k)) has no solution 1 < x < k-1.

Offset 1, canonical program `A066501.P10835887515375313697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A066501 (n : ℕ) : ℤ :=
  (A066501.P10835887515375313697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A066501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066978.P1746091308066131393

`gcd(A008864(n+1), A072473(n+1))`
-/

namespace A066978.P1746091308066131393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A072473 (n + 1))

end

end A066978.P1746091308066131393

noncomputable section

/-- A066978: a(n) = gcd(prime(2*n)+1, prime(n)+1).

Offset 1, canonical program `A066978.P1746091308066131393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066978 (n : ℕ) : ℤ :=
  (A066978.P1746091308066131393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067832.P6338250715673220495

`p?[A038509(n+2)+6]`
-/

namespace A067832.P6338250715673220495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P6338250715673220495

noncomputable section

/-- A067832: Primes p such that sigma(p-6) > p.

Offset 1, canonical program `A067832.P6338250715673220495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A067832 (n : ℕ) : ℤ :=
  A067832.P6338250715673220495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A067832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069562.P5904755138920581150

`filter[A028982(n+1), A202238(#)]`
-/

namespace A069562.P5904755138920581150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A069562.P5904755138920581150

noncomputable section

/-- A069562: Numbers, m, whose odd part (largest odd divisor, A000265(m)) is a nontrivial square.

Offset 1, canonical program `A069562.P5904755138920581150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A069562 (n : ℕ) : ℤ :=
  A069562.P5904755138920581150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A069562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070800.P6137196546797917352

`A151800(Δ[Δ[A049688(n)]])`
-/

namespace A070800.P6137196546797917352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A070800.P6137196546797917352

noncomputable section

/-- A070800: Smallest prime greater than phi(n): a(n) = nextprime(phi(n)).

Offset 2, canonical program `A070800.P6137196546797917352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070800 (n : ℕ) : ℤ :=
  A070800.P6137196546797917352.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071688.P7380777131684822242

`∑[A071724(n)]-A071684(n+1)`
-/

namespace A071688.P7380777131684822242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A071684 (n + 1)

end

end A071688.P7380777131684822242

noncomputable section

/-- A071688: Number of plane trees with even number of leaves.

Offset 1, canonical program `A071688.P7380777131684822242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071688 (n : ℕ) : ℤ :=
  A071688.P7380777131684822242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072085.P201290304430267741

`A072084(A072084(n+1))`
-/

namespace A072085.P201290304430267741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (A072084 (n + 1)).toNat

end

end A072085.P201290304430267741

noncomputable section

/-- A072085: a(n) = A072084(A072084(n)).

Offset 1, canonical program `A072085.P201290304430267741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072085 (n : ℕ) : ℤ :=
  A072085.P201290304430267741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073272.P15073051830064550089

`A000040(n+2)-A073271(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073272.P15073051830064550089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A073271 (n + 1)

end

end A073272.P15073051830064550089

noncomputable section

/-- A073272: A000040(n+1) - A073271(n).

Offset 1, canonical program `A073272.P15073051830064550089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A073271, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073272 (n : ℕ) : ℤ :=
  A073272.P15073051830064550089.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A073271, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073613.P6380677151097810050

`C(A140612(n+1)+1, 2)`
-/

namespace A073613.P6380677151097810050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140612 (n + 1) + 1).toNat 2

end

end A073613.P6380677151097810050

noncomputable section

/-- A073613: Triangular numbers which are the sum of two squares.

Offset 1, canonical program `A073613.P6380677151097810050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073613 (n : ℕ) : ℤ :=
  (A073613.P6380677151097810050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074803.P3346642823134531288

`2*(A285345(A065033(n+1))+1)`
-/

namespace A074803.P3346642823134531288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285345 (A065033 (n + 1)).toNat + 1)

end

end A074803.P3346642823134531288

noncomputable section

/-- A074803: Kolakoski-(4,2) sequence: a(n) is length of n-th run.

Offset 1, canonical program `A074803.P3346642823134531288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074803 (n : ℕ) : ℤ :=
  A074803.P3346642823134531288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075926.P12171091474890289077

`eq[n, A341273(n)]`
-/

namespace A075926.P12171091474890289077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075926.P12171091474890289077

noncomputable section

/-- A075926: List of codewords in binary lexicode with Hamming distance 3 written as decimal numbers.

Offset 0, canonical program `A075926.P12171091474890289077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A075926 (n : ℕ) : ℤ :=
  (A075926.P12171091474890289077.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A075926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078599.P6674880348428160

`A007947(n+1)^A007875(n+1)`
-/

namespace A078599.P6674880348428160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A007875 (n + 1) : ℤ)

end

end A078599.P6674880348428160

noncomputable section

/-- A078599: Product of squarefree divisors of n.

Offset 1, canonical program `A078599.P6674880348428160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078599 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078599.P6674880348428160.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078599.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079782.P18031866409307502702

`A079781(n+1)+n`
-/

namespace A079782.P18031866409307502702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079781 (n + 1) + (n : ℤ)

end

end A079782.P18031866409307502702

noncomputable section

/-- A079782: Final term of n-th row of triangle in A079784.

Offset 1, canonical program `A079782.P18031866409307502702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A079782 (n : ℕ) : ℤ :=
  A079782.P18031866409307502702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A079782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079783.P6508144238117088430

`∑[n]+(n+1)*A079781(n+1)`
-/

namespace A079783.P6508144238117088430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * A079781 (n + 1)

end

end A079783.P6508144238117088430

noncomputable section

/-- A079783: Sum of n-th row of triangle in A079784.

Offset 1, canonical program `A079783.P6508144238117088430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A079783 (n : ℕ) : ℤ :=
  A079783.P6508144238117088430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A079783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079784.P13207047154207898246

`A079781(A002024(n+1))+A002262(n)`
-/

namespace A079784.P13207047154207898246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079781 (A002024 (n + 1)).toNat + A002262 n

end

end A079784.P13207047154207898246

noncomputable section

/-- A079784: Triangle read by rows in which the n-th row contains the smallest set of n consecutive numbers such that the r-th number in the n-th row is divisible by n-r+1. The first term of the n-th row must exceed n.

Offset 1, canonical program `A079784.P13207047154207898246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079784 (n : ℕ) : ℤ :=
  A079784.P13207047154207898246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079953.P12791131789649481837

`A039734((2*n)%(n+1)+2)`
-/

namespace A079953.P12791131789649481837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039734 (2 * n % (n + 1) + 2)

end

end A079953.P12791131789649481837

noncomputable section

/-- A079953: Smallest prime p such that prime(n) mod 2*p = prime(n).

Offset 1, canonical program `A079953.P12791131789649481837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079953 (n : ℕ) : ℤ :=
  A079953.P12791131789649481837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080774.P6216594566217040255

`filter[A359163(n+1), A340369(#)]`
-/

namespace A080774.P6216594566217040255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A080774.P6216594566217040255

noncomputable section

/-- A080774: Numbers with two prime factors: (4*i+1)*(4*j+3).

Offset 1, canonical program `A080774.P6216594566217040255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6052 terms. -/
def A080774 (n : ℕ) : ℤ :=
  A080774.P6216594566217040255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6052 terms. -/
def A080774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080790.P12928423801354137828

`p?[A377421(n+1)]`
-/

namespace A080790.P12928423801354137828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080790.P12928423801354137828

noncomputable section

/-- A080790: Binary emirps, primes whose binary reversal is a different prime.

Offset 1, canonical program `A080790.P12928423801354137828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A080790 (n : ℕ) : ℤ :=
  A080790.P12928423801354137828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A080790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080843.P14729485223719297457

`A092782(n+1)-1`
-/

namespace A080843.P14729485223719297457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1) - 1

end

end A080843.P14729485223719297457

noncomputable section

/-- A080843: Tribonacci word: limit S(infinity), where S(0) = 0, S(1) = 0,1, S(2) = 0,1,0,2 and for n >= 0, S(n+3) = S(n+2) S(n+1) S(n).

Offset 0, canonical program `A080843.P14729485223719297457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092782, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080843 (n : ℕ) : ℤ :=
  A080843.P14729485223719297457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092782, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081259.P16989465696639261266

`A118749(n+1)-A000007(n)`
-/

namespace A081259.P16989465696639261266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118749 (n + 1) - A000007 n

end

end A081259.P16989465696639261266

noncomputable section

/-- A081259: a(n) is the smallest k such that C(3n,n) divides k!.

Offset 1, canonical program `A081259.P16989465696639261266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081259 (n : ℕ) : ℤ :=
  A081259.P16989465696639261266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081754.P11765567811949560293

`eq[1, A046073(n+1)%2]+1`
-/

namespace A081754.P11765567811949560293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046073 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081754.P11765567811949560293

noncomputable section

/-- A081754: Numbers k such that the number of noncongruent solutions to x^(2^m) == 1 (mod k) is the same for any m>=1.

Offset 1, canonical program `A081754.P11765567811949560293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A081754 (n : ℕ) : ℤ :=
  (A081754.P11765567811949560293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A081754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082482.P8251319467592110979

`A053637(n+1)+A054650(n+1)-1`
-/

namespace A082482.P8251319467592110979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053637 (n + 1) + (A054650 (n + 1) - 1)

end

end A082482.P8251319467592110979

noncomputable section

/-- A082482: a(n) = floor of (2^n-1)/n.

Offset 1, canonical program `A082482.P8251319467592110979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A082482 (n : ℕ) : ℤ :=
  A082482.P8251319467592110979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A082482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082554.P7581980151487955023

`p?[A043570(n+1)]`
-/

namespace A082554.P7581980151487955023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082554.P7581980151487955023

noncomputable section

/-- A082554: Primes whose base-2 representation is a block of 1's, followed by a block of 0's, followed by a block of 1's.

Offset 1, canonical program `A082554.P7581980151487955023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A082554 (n : ℕ) : ℤ :=
  A082554.P7581980151487955023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A082554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082916.P8694465094910218775

`record[A093527(n)-A000007(n)]`
-/

namespace A082916.P8694465094910218775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093527 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P8694465094910218775

noncomputable section

/-- A082916: Numbers k such that k and binomial(2*k, k) are relatively prime.

Offset 1, canonical program `A082916.P8694465094910218775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1735 terms. -/
def A082916 (n : ℕ) : ℤ :=
  A082916.P8694465094910218775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1735 terms. -/
def A082916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087506.P14667531462698864031

`p?[A087461(n+2)]`
-/

namespace A087506.P14667531462698864031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087506.P14667531462698864031

noncomputable section

/-- A087506: Primes in A087461.

Offset 1, canonical program `A087506.P14667531462698864031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A087506 (n : ℕ) : ℤ :=
  A087506.P14667531462698864031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A087506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088711.P10668698968126566124

`∩[A050703(n+1), A271568(n+1)]`
-/

namespace A088711.P10668698968126566124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088711.P10668698968126566124

noncomputable section

/-- A088711: Numbers m that are a product of two primes j and k such that both m+j+k and m-j-k are primes.

Offset 1, canonical program `A088711.P10668698968126566124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 952 terms. -/
def A088711 (n : ℕ) : ℤ :=
  (A088711.P10668698968126566124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 952 terms. -/
def A088711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089266.P11282581863693647808

`A023022(2*n+3)+A007875(2*n+3)`
-/

namespace A089266.P11282581863693647808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (2 * n + 3) + A007875 (2 * n + 3)

end

end A089266.P11282581863693647808

noncomputable section

/-- A089266: Rational knots of determinant 2n+1, counting chiral pairs twice.

Offset 1, canonical program `A089266.P11282581863693647808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A089266 (n : ℕ) : ℤ :=
  A089266.P11282581863693647808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A089266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089759.P7696853656219724590

`or(A010054(n), A187783(A061579(n)))`
-/

namespace A089759.P7696853656219724590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A187783 (A061579 n).toNat)

end

end A089759.P7696853656219724590

noncomputable section

/-- A089759: Table T(n,k), 0<=k, 0<=n, read by antidiagonals, defined by T(n,k) = (k*n)! / (n!)^k.

Offset 0, canonical program `A089759.P7696853656219724590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A089759 (n : ℕ) : ℤ :=
  A089759.P7696853656219724590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A089759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090735.P3181232905764454533

`∑[char[A020893(n+2)-1]]`
-/

namespace A090735.P3181232905764454533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090735.P3181232905764454533

noncomputable section

/-- A090735: Number of positive squarefree numbers <= n that can be expressed as a sum of 2 squares > 0.

Offset 1, canonical program `A090735.P3181232905764454533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090735 (n : ℕ) : ℤ :=
  (A090735.P3181232905764454533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094178.P10442744756588594346

`floor(A008846(n+1)/4)`
-/

namespace A094178.P10442744756588594346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008846 (n + 1) : ℚ) / 4⌋

end

end A094178.P10442744756588594346

noncomputable section

/-- A094178: Numbers n such that 4n+1 is divisible only by primes of form 4m+1 (i.e., by the Pythagorean primes A002144).

Offset 1, canonical program `A094178.P10442744756588594346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094178 (n : ℕ) : ℤ :=
  A094178.P10442744756588594346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094872.P16203901722696810488

`A046073(A056911(n+2))`
-/

namespace A094872.P16203901722696810488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A056911 (n + 2)).toNat

end

end A094872.P16203901722696810488

noncomputable section

/-- A094872: phi(n)/tau(n), for odd squarefree n > 1 (A056911), phi = A000010, tau = A000005.

Offset 1, canonical program `A094872.P16203901722696810488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6640 terms. -/
def A094872 (n : ℕ) : ℤ :=
  A094872.P16203901722696810488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6640 terms. -/
def A094872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096269.P7324626192486647762

`char[A038558(n)]+3-a(n-1)` with `a(0)=2`
-/

namespace A096269.P7324626192486647762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (3 - a (n - 1))

end

end A096269.P7324626192486647762

noncomputable section

/-- A096269: a(n) = number of distinct palindromes of length n that occur in A096268.

Offset 1, canonical program `A096269.P7324626192486647762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096269 (n : ℕ) : ℤ :=
  A096269.P7324626192486647762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097269.P5694133736295637479

`8*A020756(n+1)+2`
-/

namespace A097269.P5694133736295637479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A020756 (n + 1) + 2

end

end A097269.P5694133736295637479

noncomputable section

/-- A097269: Numbers that are the sum of two nonzero squares but not the difference of two nonzero squares.

Offset 1, canonical program `A097269.P5694133736295637479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097269 (n : ℕ) : ℤ :=
  A097269.P5694133736295637479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102928.P4713113639802046422

`lcm(A025529(n+1), A081528(n+1))/A025529(n+1)`
-/

namespace A102928.P4713113639802046422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A025529 (n + 1)) (A081528 (n + 1)) : ℚ) / (A025529 (n + 1) : ℚ)

end

end A102928.P4713113639802046422

noncomputable section

/-- A102928: Numerator of the harmonic mean of the first n positive integers.

Offset 1, canonical program `A102928.P4713113639802046422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A102928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102928.P4713113639802046422.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A102928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105321.P8001804258587492463

`Δ[n²]-A249304(n)`
-/

namespace A105321.P8001804258587492463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A249304 n

end

end A105321.P8001804258587492463

noncomputable section

/-- A105321: Convolution of binomial(1,n) and Gould's sequence A001316.

Offset 0, canonical program `A105321.P8001804258587492463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105321 (n : ℕ) : ℤ :=
  A105321.P8001804258587492463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105760.P15649417677939537676

`floor(A086304(n+1)/2)`
-/

namespace A105760.P15649417677939537676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086304 (n + 1) : ℚ) / 2⌋

end

end A105760.P15649417677939537676

noncomputable section

/-- A105760: Nonnegative numbers k such that 2k+7 is prime.

Offset 1, canonical program `A105760.P15649417677939537676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105760 (n : ℕ) : ℤ :=
  A105760.P15649417677939537676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106475.P1754682136822621499

`2*(n+1)-A344372(n+1)`
-/

namespace A106475.P1754682136822621499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A344372 (n + 1)

end

end A106475.P1754682136822621499

noncomputable section

/-- A106475: An alternating sum of greatest common divisors.

Offset 0, canonical program `A106475.P1754682136822621499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106475 (n : ℕ) : ℤ :=
  A106475.P1754682136822621499.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106476.P5315817967873188888

`A089929(A212012(n+1))`
-/

namespace A106476.P5315817967873188888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (A212012 (n + 1)).toNat

end

end A106476.P5315817967873188888

noncomputable section

/-- A106476: Sequence array of Euler phi function.

Offset 0, canonical program `A106476.P5315817967873188888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106476 (n : ℕ) : ℤ :=
  A106476.P5315817967873188888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107965.P6077412395707171614

`A107916(n)+A107941(n)-A107942(n)`
-/

namespace A107965.P6077412395707171614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107916 n + (A107941 n - A107942 n)

end

end A107965.P6077412395707171614

noncomputable section

/-- A107965: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(11n^4 + 110n^3 + 439n^2 + 820n + 600)/86400.

Offset 0, canonical program `A107965.P6077412395707171614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107965 (n : ℕ) : ℤ :=
  A107965.P6077412395707171614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107978.P3263671017790150072

`filter[A057948(n+1), A005171(#)]`
-/

namespace A107978.P3263671017790150072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A107978.P3263671017790150072

noncomputable section

/-- A107978: Products of two primes of the form 4n+3 (A002145).

Offset 1, canonical program `A107978.P3263671017790150072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107978 (n : ℕ) : ℤ :=
  A107978.P3263671017790150072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107986.P13375461098850866248

`A067774(n+1)+2`
-/

namespace A107986.P13375461098850866248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) + 2

end

end A107986.P13375461098850866248

noncomputable section

/-- A107986: Composite numbers of the form p+2 where p is prime.

Offset 1, canonical program `A107986.P13375461098850866248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107986 (n : ℕ) : ℤ :=
  A107986.P13375461098850866248.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108181.P8503528665042007450

`filter[A359161(n+2), A340369(#)]`
-/

namespace A108181.P8503528665042007450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A108181.P8503528665042007450

noncomputable section

/-- A108181: Semiprimes of the form 4n + 1.

Offset 1, canonical program `A108181.P8503528665042007450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6094 terms. -/
def A108181 (n : ℕ) : ℤ :=
  A108181.P8503528665042007450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6094 terms. -/
def A108181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108926.P13113658268164556802

`∩[A231089(n+1)-2, A231089(n+1)]`
-/

namespace A108926.P13113658268164556802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108926.P13113658268164556802

noncomputable section

/-- A108926: Initial members of abundant quintuplets, i.e., values of k such that (k, k+2, k+4, k+6, k+8) are all abundant numbers.

Offset 1, canonical program `A108926.P13113658268164556802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A108926 (n : ℕ) : ℤ :=
  (A108926.P13113658268164556802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A108926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109600.P13679550260820444963

`eq[A000120(n+1), A076649(n+1)]+1`
-/

namespace A109600.P13679550260820444963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109600.P13679550260820444963

noncomputable section

/-- A109600: Numbers n such that number of 1's in binary representation of n equals the number of digits required to write the prime factors of n.

Offset 1, canonical program `A109600.P13679550260820444963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A109600 (n : ℕ) : ℤ :=
  (A109600.P13679550260820444963.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A109600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110712.P7261860944228162547

`∑{d}[n+1, A138557(#)*A154269((n+1)/#)]`
-/

namespace A110712.P7261860944228162547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138557 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A110712.P7261860944228162547

noncomputable section

/-- A110712: Expansion of eta(q)^3 * eta(q^5) * eta(q^10)^2 / eta(q^2)^2 in powers of q.

Offset 1, canonical program `A110712.P7261860944228162547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110712 (n : ℕ) : ℤ :=
  A110712.P7261860944228162547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111580.P12502470077332756054

`∑{d}[n+1, A109091(#)*A154955((n+1)/#)]`
-/

namespace A111580.P12502470077332756054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109091 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111580.P12502470077332756054

noncomputable section

/-- A111580: Expansion of eta(q)^2 * eta(q^2) * eta(q^10)^3 / eta(q^5)^2 in powers of q.

Offset 1, canonical program `A111580.P12502470077332756054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111580 (n : ℕ) : ℤ :=
  A111580.P12502470077332756054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113186.P10213787310287371192

`A109091(A259445(n+1))`
-/

namespace A113186.P10213787310287371192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (A259445 (n + 1)).toNat

end

end A113186.P10213787310287371192

noncomputable section

/-- A113186: Expansion of (25phi(q)phi^3(q^5)-phi^5(q)/phi(q^5)-24)/40 in powers of q where phi(q) is a Ramanujan theta function.

Offset 1, canonical program `A113186.P10213787310287371192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113186 (n : ℕ) : ℤ :=
  A113186.P10213787310287371192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114130.P7619347345123100393

`∩[A114129(n+1), A124184(n+1)]`
-/

namespace A114130.P7619347345123100393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114130.P7619347345123100393

noncomputable section

/-- A114130: Numbers whose factorization involves only prime exponents, all different, and no number appears both as an exponent and as a prime factor.

Offset 1, canonical program `A114130.P7619347345123100393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A114130 (n : ℕ) : ℤ :=
  (A114130.P7619347345123100393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A114130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115076.P13773616625166204887

`∑{d}[n+1, A046692(#)*A317797((n+1)/#)]`
-/

namespace A115076.P13773616625166204887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A317797 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115076.P13773616625166204887

noncomputable section

/-- A115076: Number of 2 X 2 symmetric matrices over Z(n) having determinant 1.

Offset 1, canonical program `A115076.P13773616625166204887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115076 (n : ℕ) : ℤ :=
  A115076.P13773616625166204887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117245.P16711629765108109646

`∑[A115975(n+1)]`
-/

namespace A117245.P16711629765108109646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P16711629765108109646

noncomputable section

/-- A117245: Partial sums of A115975.

Offset 1, canonical program `A117245.P16711629765108109646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117245 (n : ℕ) : ℤ :=
  A117245.P16711629765108109646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120960.P7319328844607267652

`filter[A008846(n+1), A069513(#)]`
-/

namespace A120960.P7319328844607267652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A120960.P7319328844607267652

noncomputable section

/-- A120960: Pythagorean prime powers.

Offset 1, canonical program `A120960.P7319328844607267652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A120960 (n : ℕ) : ℤ :=
  A120960.P7319328844607267652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A120960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121762.P7258193871153872247

`p?[A107472(n+1)-2]`
-/

namespace A121762.P7258193871153872247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121762.P7258193871153872247

noncomputable section

/-- A121762: Single (or isolated or non-twin) primes of form 6n-1.

Offset 1, canonical program `A121762.P7258193871153872247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A121762 (n : ℕ) : ℤ :=
  A121762.P7258193871153872247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A121762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121764.P18179720075456038304

`p?[A107472(n+1)+2]`
-/

namespace A121764.P18179720075456038304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121764.P18179720075456038304

noncomputable section

/-- A121764: Single (or isolated or non-twin) primes of form 6n + 1.

Offset 1, canonical program `A121764.P18179720075456038304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A121764 (n : ℕ) : ℤ :=
  A121764.P18179720075456038304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A121764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122692.P4977079091436261815

`∩[A068140(n+1)+1, A068140(n+1)]`
-/

namespace A122692.P4977079091436261815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122692.P4977079091436261815

noncomputable section

/-- A122692: Cubeful numbers whose neighbors are also cubeful.

Offset 1, canonical program `A122692.P4977079091436261815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A122692 (n : ℕ) : ℤ :=
  (A122692.P4977079091436261815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A122692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125203.P7914855552444812704

`round(A293513(4*n+5)/2)`
-/

namespace A125203.P7914855552444812704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293513 (4 * n + 5) : ℚ) / 2)

end

end A125203.P7914855552444812704

noncomputable section

/-- A125203: Number of ways to write n as 4*x*y - x - y with 1<=x<=y.

Offset 1, canonical program `A125203.P7914855552444812704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A125203 (n : ℕ) : ℤ :=
  A125203.P7914855552444812704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A125203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126083.P11057915756448127103

`(A025529(n+1)/gcd(A003418(n), A025529(n+1)))%(n+1)`
-/

namespace A126083.P11057915756448127103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A025529 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A025529 (n + 1)) : ℚ))) (n + 1 : ℤ)

end

end A126083.P11057915756448127103

noncomputable section

/-- A126083: a(n) = numerator of H(n) taken mod n, where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

Offset 1, canonical program `A126083.P11057915756448127103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A126083 (n : ℕ) : ℤ :=
  A126083.P11057915756448127103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A126083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129390.P539859092666591305

`(-1)^n*A129391(n)`
-/

namespace A129390.P539859092666591305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129391 n

end

end A129390.P539859092666591305

noncomputable section

/-- A129390: Expansion of phi(x) * phi(-x^5) / (chi(-x^2) * chi(-x^10)) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A129390.P539859092666591305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129390 (n : ℕ) : ℤ :=
  A129390.P539859092666591305.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129447.P14635424549236213191

`A033999(n)*A125079(n)`
-/

namespace A129447.P14635424549236213191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A125079 n

end

end A129447.P14635424549236213191

noncomputable section

/-- A129447: Expansion of psi(q) * psi(q^3) * phi(q^3) / phi(q) in powers of q where psi(), phi() are Ramanujan theta functions.

Offset 0, canonical program `A129447.P14635424549236213191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129447 (n : ℕ) : ℤ :=
  A129447.P14635424549236213191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129546.P12413915237248930736

`eq[10, A075402(A028310(n))]`
-/

namespace A129546.P12413915237248930736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129546.P12413915237248930736

noncomputable section

/-- A129546: Numbers k such that T(k)+10 is the next prime after T(k), where T(k) = A000217(k).

Offset 1, canonical program `A129546.P12413915237248930736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A129546 (n : ℕ) : ℤ :=
  (A129546.P12413915237248930736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A129546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131686.P9344451036206820720

`A133524(n+2)+A001248(n+1)`
-/

namespace A131686.P9344451036206820720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133524 (n + 2) + A001248 (n + 1)

end

end A131686.P9344451036206820720

noncomputable section

/-- A131686: Sum of squares of five consecutive primes.

Offset 1, canonical program `A131686.P9344451036206820720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131686 (n : ℕ) : ℤ :=
  A131686.P9344451036206820720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133937.P361040303253339586

`A100994(n+1)-A048671(n+1)`
-/

namespace A133937.P361040303253339586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1) - A048671 (n + 1)

end

end A133937.P361040303253339586

noncomputable section

/-- A133937: A100994-n/A014963.

Offset 1, canonical program `A133937.P361040303253339586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133937 (n : ℕ) : ℤ :=
  A133937.P361040303253339586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137711.P17738351747178437954

`2^(n+1)-A152537(n+1)`
-/

namespace A137711.P17738351747178437954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A152537 (n + 1)

end

end A137711.P17738351747178437954

noncomputable section

/-- A137711: Row sums of triangle A137710.

Offset 1, canonical program `A137711.P17738351747178437954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A137711 (n : ℕ) : ℤ :=
  A137711.P17738351747178437954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A137711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138507.P4063493995487370764

`(-1)^n*A109091(n+1)`
-/

namespace A138507.P4063493995487370764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109091 (n + 1)

end

end A138507.P4063493995487370764

noncomputable section

/-- A138507: Expansion of (f(q)^5 / f(q^5) - 1) / 5 in powers of q where f() is a Ramanujan theta function.

Offset 1, canonical program `A138507.P4063493995487370764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138507 (n : ℕ) : ℤ :=
  A138507.P4063493995487370764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138512.P8340756777299700199

`(-1)^n*A053723(n)`
-/

namespace A138512.P8340756777299700199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053723 n

end

end A138512.P8340756777299700199

noncomputable section

/-- A138512: Expansion of q * f(q^5)^5 / f(q) in powers of q where f() is a Ramanujan theta function.

Offset 1, canonical program `A138512.P8340756777299700199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138512 (n : ℕ) : ℤ :=
  A138512.P8340756777299700199.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138686.P6359265090745063621

`p?[A138685(n+1)]`
-/

namespace A138686.P6359265090745063621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138686.P6359265090745063621

noncomputable section

/-- A138686: Primes in A138685.

Offset 1, canonical program `A138686.P6359265090745063621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A138686 (n : ℕ) : ℤ :=
  A138686.P6359265090745063621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A138686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139858.P3447086168202137661

`∩[A107137(n+1), A107181(n+1)]`
-/

namespace A139858.P3447086168202137661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P3447086168202137661

noncomputable section

/-- A139858: Primes of the form 8x^2+8xy+17y^2.

Offset 1, canonical program `A139858.P3447086168202137661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858 (n : ℕ) : ℤ :=
  (A139858.P3447086168202137661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139879.P5833802946474482157

`∩[A106972(n+1), A107181(n+1)]`
-/

namespace A139879.P5833802946474482157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P5833802946474482157

noncomputable section

/-- A139879: Primes of the form 12x^2+12xy+17y^2.

Offset 1, canonical program `A139879.P5833802946474482157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139879 (n : ℕ) : ℤ :=
  (A139879.P5833802946474482157.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139893.P10485135326994439594

`∪[A139991(n+1), A139997(n+1)]`
-/

namespace A139893.P10485135326994439594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P10485135326994439594

noncomputable section

/-- A139893: Primes of the form 14x^2+15y^2.

Offset 1, canonical program `A139893.P10485135326994439594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139893 (n : ℕ) : ℤ :=
  (A139893.P10485135326994439594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140026.P1796538295663725552

`∩[A139850(n+1), A139912(n+1)]`
-/

namespace A140026.P1796538295663725552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P1796538295663725552

noncomputable section

/-- A140026: Primes of the form 35x^2+39y^2.

Offset 1, canonical program `A140026.P1796538295663725552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140026 (n : ℕ) : ℤ :=
  (A140026.P1796538295663725552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140102.P7920234187316710791

`comp[A140103(n+1)]`
-/

namespace A140102.P7920234187316710791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140102.P7920234187316710791

noncomputable section

/-- A140102: Term-by-term differences of A140101 and A140100; also, equals the complement of A140103, which is the term-by-term sums of A140101 and A140100, where A140101 is the complement of A140100.

Offset 0, canonical program `A140102.P7920234187316710791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140102 (n : ℕ) : ℤ :=
  (A140102.P7920234187316710791.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140668.P775055869343072005

`A140664(n+1)+1+n`
-/

namespace A140668.P775055869343072005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140664 (n + 1) + 1 + (n : ℤ)

end

end A140668.P775055869343072005

noncomputable section

/-- A140668: a(n) = n + A140664(n).

Offset 1, canonical program `A140668.P775055869343072005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140668 (n : ℕ) : ℤ :=
  A140668.P775055869343072005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140700.P17145953153582534479

`∏{d}[n+1, A140664(#)]`
-/

namespace A140700.P17145953153582534479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A140664 d

end

end A140700.P17145953153582534479

noncomputable section

/-- A140700: a(n) = n*A069158(n).

Offset 1, canonical program `A140700.P17145953153582534479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140700 (n : ℕ) : ℤ :=
  A140700.P17145953153582534479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141133.P2845964169969126780

`A141208(A008578(n+1))`
-/

namespace A141133.P2845964169969126780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A008578 (n + 1)).toNat

end

end A141133.P2845964169969126780

noncomputable section

/-- A141133: a(n) = prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1.

Offset 0, canonical program `A141133.P2845964169969126780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141133 (n : ℕ) : ℤ :=
  A141133.P2845964169969126780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141515.P3806519598676135324

`A067774(n+1)-1`
-/

namespace A141515.P3806519598676135324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) - 1

end

end A141515.P3806519598676135324

noncomputable section

/-- A141515: a(n) = phi(A067774(n)) where phi is Euler totient function.

Offset 1, canonical program `A141515.P3806519598676135324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141515 (n : ℕ) : ℤ :=
  A141515.P3806519598676135324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141614.P7621870366066753165

`A008846(n+2)-A008846(n+1)`
-/

namespace A141614.P7621870366066753165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 2) - A008846 (n + 1)

end

end A141614.P7621870366066753165

noncomputable section

/-- A141614: First differences of A008846.

Offset 1, canonical program `A141614.P7621870366066753165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141614 (n : ℕ) : ℤ :=
  A141614.P7621870366066753165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A142339.P3986988199601511842

`p?[A087461(n+2)-A000040(n+2)]`
-/

namespace A142339.P3986988199601511842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142339.P3986988199601511842

noncomputable section

/-- A142339: Primes of the form (p(2*n)-p(n))/2, where p(n)=n-th prime.

Offset 1, canonical program `A142339.P3986988199601511842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A142339 (n : ℕ) : ℤ :=
  A142339.P3986988199601511842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A142339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143215.P2413782116346029299

`A034956(n+1)+A008837(n+1)`
-/

namespace A143215.P2413782116346029299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) + A008837 (n + 1)

end

end A143215.P2413782116346029299

noncomputable section

/-- A143215: a(n) = prime(n) * Sum_{i=1..n} prime(i).

Offset 1, canonical program `A143215.P2413782116346029299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143215 (n : ℕ) : ℤ :=
  A143215.P2413782116346029299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000189.P11210685475351648118

`(n+1)/A053149(n+1)^(1/3)`
-/

namespace A000189.P11210685475351648118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / (A053149 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A000189.P11210685475351648118

noncomputable section

/-- A000189: Number of solutions to x^3 == 0 (mod n).

Offset 1, canonical program `A000189.P11210685475351648118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000189.P11210685475351648118.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001008.P10081620377603706662

`A025529(n+1)/gcd(A003418(n), A025529(n+1))`
-/

namespace A001008.P10081620377603706662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A025529 (n + 1)) : ℚ)

end

end A001008.P10081620377603706662

noncomputable section

/-- A001008: a(n) = numerator of harmonic number H(n) = Sum_{i=1..n} 1/i.

Offset 1, canonical program `A001008.P10081620377603706662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A001008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001008.P10081620377603706662.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A001008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003277.P14262836188671700899

`filter[A230918(n+1), A323154(#)]`
-/

namespace A003277.P14262836188671700899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A003277.P14262836188671700899

noncomputable section

/-- A003277: Cyclic numbers: k such that k and phi(k) are relatively prime; also k such that there is just one group of order k, i.e., A000001(k) = 1.

Offset 1, canonical program `A003277.P14262836188671700899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A003277 (n : ℕ) : ℤ :=
  A003277.P14262836188671700899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A003277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003968.P10961526323602588276

`A167338(n+1)/A001615(n+1)`
-/

namespace A003968.P10961526323602588276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A003968.P10961526323602588276

noncomputable section

/-- A003968: Möbius transform of A003959.

Offset 1, canonical program `A003968.P10961526323602588276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003968.P10961526323602588276.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003971.P11619303163833066473

`∑{d}[n+1, A003960(#)]`
-/

namespace A003971.P11619303163833066473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003960 d

end

end A003971.P11619303163833066473

noncomputable section

/-- A003971: Inverse Möbius transform of A003960.

Offset 1, canonical program `A003971.P11619303163833066473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003971 (n : ℕ) : ℤ :=
  A003971.P11619303163833066473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004613.P9700504550633713822

`A008846(C(n, a(A057427(n)-1)))` with `a(0)=1`
-/

namespace A004613.P9700504550633713822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008846 (Nat.choose n (a (A057427 n - 1).toNat).toNat)

end

end A004613.P9700504550633713822

noncomputable section

/-- A004613: Numbers that are divisible only by primes congruent to 1 mod 4.

Offset 1, canonical program `A004613.P9700504550633713822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004613 (n : ℕ) : ℤ :=
  A004613.P9700504550633713822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009993.P17794961040129001579

`filter[A355222(n), A178788(#)]`
-/

namespace A009993.P17794961040129001579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A009993.P17794961040129001579

noncomputable section

/-- A009993: Numbers whose decimal digits are in strictly increasing order.

Offset 1, canonical program `A009993.P17794961040129001579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A009993 (n : ℕ) : ℤ :=
  A009993.P17794961040129001579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A009993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011688.P14714035388955064508

`A011677(14*n)`
-/

namespace A011688.P14714035388955064508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011677 (14 * n)

end

end A011688.P14714035388955064508

noncomputable section

/-- A011688: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^4+x^3+1.

Offset 0, canonical program `A011688.P14714035388955064508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 715 terms. -/
def A011688 (n : ℕ) : ℤ :=
  A011688.P14714035388955064508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 715 terms. -/
def A011688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011690.P7037554297728841104

`A011677(A008486(n)+14)`
-/

namespace A011690.P7037554297728841104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011677 (A008486 n + 14).toNat

end

end A011690.P7037554297728841104

noncomputable section

/-- A011690: A binary m-sequence: expansion of reciprocal of x^7+x^3+1.

Offset 0, canonical program `A011690.P7037554297728841104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A011690 (n : ℕ) : ℤ :=
  A011690.P7037554297728841104.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A011690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015634.P4293513486807038876

`∑[A117108(n+1)]`
-/

namespace A015634.P4293513486807038876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015634.P4293513486807038876

noncomputable section

/-- A015634: Number of ordered quadruples of integers from [ 1..n ] with no global factor.

Offset 1, canonical program `A015634.P4293513486807038876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015634 (n : ℕ) : ℤ :=
  A015634.P4293513486807038876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019555.P13325523134191681517

`A053149(n+1)^(1/3)`
-/

namespace A019555.P13325523134191681517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A019555.P13325523134191681517

noncomputable section

/-- A019555: Smallest number whose cube is divisible by n.

Offset 1, canonical program `A019555.P13325523134191681517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019555.P13325523134191681517.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024556.P10614028685495330531

`filter[A082686(n+1), A323154(#)]`
-/

namespace A024556.P10614028685495330531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A024556.P10614028685495330531

noncomputable section

/-- A024556: Odd squarefree composite numbers.

Offset 1, canonical program `A024556.P10614028685495330531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7633 terms. -/
def A024556 (n : ℕ) : ℤ :=
  A024556.P10614028685495330531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7633 terms. -/
def A024556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026019.P15282999811891671450

`A262717(n+1)+A174687(n)`
-/

namespace A026019.P15282999811891671450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262717 (n + 1) + A174687 n

end

end A026019.P15282999811891671450

noncomputable section

/-- A026019: a(n) = binomial(3*n,n) - binomial(3*n,n-3).

Offset 0, canonical program `A026019.P15282999811891671450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026019 (n : ℕ) : ℤ :=
  A026019.P15282999811891671450.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027387.P17347744252739824845

`A027386(n)+2*A316865(n)`
-/

namespace A027387.P17347744252739824845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n + 2 * A316865 n

end

end A027387.P17347744252739824845

noncomputable section

/-- A027387: Write digits for n, count endpoints (version 2).

Offset 0, canonical program `A027387.P17347744252739824845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027387 (n : ℕ) : ℤ :=
  A027387.P17347744252739824845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027388.P5030534524750753246

`A027386(n)+2*A316868(n)`
-/

namespace A027388.P5030534524750753246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n + 2 * A316868 n

end

end A027388.P5030534524750753246

noncomputable section

/-- A027388: Write digits for n, count endpoints (version 3).

Offset 0, canonical program `A027388.P5030534524750753246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027388 (n : ℕ) : ℤ :=
  A027388.P5030534524750753246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033559.P14099356790434154547

`A151800(n+4)-A033597(n+4)`
-/

namespace A033559.P14099356790434154547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 4) - A033597 (n + 4)

end

end A033559.P14099356790434154547

noncomputable section

/-- A033559: a(n) = (q - p)/2, where p is the largest prime < n and q is the smallest prime > n.

Offset 4, canonical program `A033559.P14099356790434154547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033559 (n : ℕ) : ℤ :=
  A033559.P14099356790434154547.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034844.P6228809805962937027

`∩[A329760(n+1), A380906(n+1)]`
-/

namespace A034844.P6228809805962937027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P6228809805962937027

noncomputable section

/-- A034844: Primes with only nonprime decimal digits.

Offset 1, canonical program `A034844.P6228809805962937027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. -/
def A034844 (n : ℕ) : ℤ :=
  (A034844.P6228809805962937027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. -/
def A034844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036328.P17136964212029901258

`eq[4, A076649(A233583(n+1))]`
-/

namespace A036328.P17136964212029901258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036328.P17136964212029901258

noncomputable section

/-- A036328: Composite numbers n such that juxtaposition of prime factors of n has length 4.

Offset 1, canonical program `A036328.P17136964212029901258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A036328 (n : ℕ) : ℤ :=
  (A036328.P17136964212029901258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A036328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036329.P810516650349333775

`eq[5, A076649(n+1)]+1`
-/

namespace A036329.P810516650349333775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036329.P810516650349333775

noncomputable section

/-- A036329: Composite numbers n such that juxtaposition of prime factors of n has length 5.

Offset 1, canonical program `A036329.P810516650349333775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3679 terms. -/
def A036329 (n : ℕ) : ℤ :=
  (A036329.P810516650349333775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3679 terms. -/
def A036329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038588.P5041427114804262842

`A038587(A267137(n+1))`
-/

namespace A038588.P5041427114804262842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038587 (A267137 (n + 1)).toNat

end

end A038588.P5041427114804262842

noncomputable section

/-- A038588: Sizes of clusters in hexagonal lattice A_2 centered at deep hole.

Offset 0, canonical program `A038588.P5041427114804262842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4134 terms. -/
def A038588 (n : ℕ) : ℤ :=
  A038588.P5041427114804262842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4134 terms. -/
def A038588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039731.P13748971199648184030

`A065091(n+1)-A039734(n+2)`
-/

namespace A039731.P13748971199648184030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A039734 (n + 2)

end

end A039731.P13748971199648184030

noncomputable section

/-- A039731: a(n) = max{prime(n) mod q, where prime q < prime(n) = n-th prime}.

Offset 2, canonical program `A039731.P13748971199648184030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039731 (n : ℕ) : ℤ :=
  A039731.P13748971199648184030.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042942.P7773469861340243061

`A001083(n+3)-1`
-/

namespace A042942.P7773469861340243061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 3) - 1

end

end A042942.P7773469861340243061

noncomputable section

/-- A042942: From substitutional generation of Kolakoski sequence (A000002).

Offset 1, canonical program `A042942.P7773469861340243061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042942 (n : ℕ) : ℤ :=
  A042942.P7773469861340243061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045897.P3711161811653789737

`∩[A053850(n+1), A057128(n+1)]`
-/

namespace A045897.P3711161811653789737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P3711161811653789737

noncomputable section

/-- A045897: Has both a primitive and imprimitive representation as x^2 + xy + y^2.

Offset 1, canonical program `A045897.P3711161811653789737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A045897 (n : ℕ) : ℤ :=
  (A045897.P3711161811653789737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A045897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046521.P4882171672424064069

`A039599(n)/A007318(n)*A078812(n)`
-/

namespace A046521.P4882171672424064069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039599 n : ℚ) / (A007318 n : ℚ) * (A078812 n : ℚ)

end

end A046521.P4882171672424064069

noncomputable section

/-- A046521: Array T(i,j) = binomial(-1/2-i,j)*(-4)^j, i,j >= 0 read by antidiagonals going down.

Offset 0, canonical program `A046521.P4882171672424064069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046521 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046521.P4882171672424064069.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048259.P11908636629173438456

`A065033(2*∑{d}[n, A003050(#)])`
-/

namespace A048259.P11908636629173438456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (∑ d ∈ Nat.divisors (f1 n), A003050 d)).toNat

end

end A048259.P11908636629173438456

noncomputable section

/-- A048259: Number of distinct solutions to x + y + z = 0 (mod n), where two solutions are equivalent if one can be obtained from the other by multiplying by units in Z/nZ and permuting x,y,z.

Offset 0, canonical program `A048259.P11908636629173438456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A048259 (n : ℕ) : ℤ :=
  A048259.P11908636629173438456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A048259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049077.P14363229780120472526

`A201059(A152271(n))`
-/

namespace A049077.P14363229780120472526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (A152271 n).toNat

end

end A049077.P14363229780120472526

noncomputable section

/-- A049077: a(n) = n / gcd(n, binomial(n, floor(n/2))).

Offset 1, canonical program `A049077.P14363229780120472526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049077 (n : ℕ) : ℤ :=
  A049077.P14363229780120472526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049093.P5208280421691418711

`eq[1, A272334(n+1)]+1`
-/

namespace A049093.P5208280421691418711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049093.P5208280421691418711

noncomputable section

/-- A049093: Numbers n such that 2^n - 1 is squarefree.

Offset 1, canonical program `A049093.P5208280421691418711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A049093 (n : ℕ) : ℤ :=
  (A049093.P5208280421691418711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A049093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049437.P18340474284384005797

`∩[A046134(n+1), A210360(n+1)]`
-/

namespace A049437.P18340474284384005797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P18340474284384005797

noncomputable section

/-- A049437: Primes p such that p+2 and p+8 are also primes but p+6 is not.

Offset 1, canonical program `A049437.P18340474284384005797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1763 terms. -/
def A049437 (n : ℕ) : ℤ :=
  (A049437.P18340474284384005797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1763 terms. -/
def A049437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050155.P11101895223739317642

`A039599(comp[∑[n]])`
-/

namespace A050155.P11101895223739317642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A050155.P11101895223739317642

noncomputable section

/-- A050155: Triangle T(n,k), k>=0 and n>=1, read by rows defined by: T(n,k) = (2k+3)*binomial(2n,n-k-1)/(n+k+2).

Offset 1, canonical program `A050155.P11101895223739317642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A050155 (n : ℕ) : ℤ :=
  A050155.P11101895223739317642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A050155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051190.P4423942636353166915

`A067911(n+1)/(n+1)`
-/

namespace A051190.P4423942636353166915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067911 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A051190.P4423942636353166915

noncomputable section

/-- A051190: a(n) = Product_{k=1..n-1} gcd(k,n).

Offset 1, canonical program `A051190.P4423942636353166915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A051190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051190.P4423942636353166915.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A051190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053806.P5470582851069519396

`A072284(n+2)-A053797(n+1)`
-/

namespace A053806.P5470582851069519396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 2) - A053797 (n + 1)

end

end A053806.P5470582851069519396

noncomputable section

/-- A053806: Numbers where a gap begins in the sequence of squarefree numbers (A005117).

Offset 1, canonical program `A053806.P5470582851069519396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053806 (n : ℕ) : ℤ :=
  A053806.P5470582851069519396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055773.P829103840923017238

`A300951(2*n)/A300951(n)`
-/

namespace A055773.P829103840923017238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (A300951 n : ℚ)

end

end A055773.P829103840923017238

noncomputable section

/-- A055773: a(n) = Product_{p in P_n} where P_n = {p prime, n/2 < p <= n }.

Offset 0, canonical program `A055773.P829103840923017238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A055773 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055773.P829103840923017238.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A055773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057525.P7715182706857150833

`A277327(A180200(Δ[A002378(n)]))`
-/

namespace A057525.P7715182706857150833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A180200 (f1 (n + 1) - f1 n).toNat).toNat

end

end A057525.P7715182706857150833

noncomputable section

/-- A057525: Number of applications of f to reduce n to 1, where f(k) is the integer among k/2,(k+1)/4, (k+3)/4.

Offset 2, canonical program `A057525.P7715182706857150833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A057525 (n : ℕ) : ℤ :=
  A057525.P7715182706857150833.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A057525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059456.P4556274000742435863

`∪[A082539(n+1), A176902(n+1)]`
-/

namespace A059456.P4556274000742435863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P4556274000742435863

noncomputable section

/-- A059456: Unsafe primes: primes not in A005385.

Offset 1, canonical program `A059456.P4556274000742435863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059456 (n : ℕ) : ℤ :=
  (A059456.P4556274000742435863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062044.P7313043541615639252

`A107817(n)+A062042(n+1)`
-/

namespace A062044.P7313043541615639252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107817 n + A062042 (n + 1)

end

end A062044.P7313043541615639252

noncomputable section

/-- A062044: Primes arising in A062042.

Offset 1, canonical program `A062044.P7313043541615639252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062044 (n : ℕ) : ℤ :=
  A062044.P7313043541615639252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062288.P13832936887169585839

`A061395(p?[A008578(n+1)-50])`
-/

namespace A062288.P13832936887169585839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062288.P13832936887169585839

noncomputable section

/-- A062288: Numbers k such that prime(k)+50 is also prime.

Offset 1, canonical program `A062288.P13832936887169585839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A062288 (n : ℕ) : ℤ :=
  A062288.P13832936887169585839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A062288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062956.P1536797168595570619

`(n+2)*Δ[A046657(n+2)]`
-/

namespace A062956.P1536797168595570619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A062956.P1536797168595570619

noncomputable section

/-- A062956: a(n) = h(n^2) - h(n), where h(n) is the half-totient function (A023022).

Offset 3, canonical program `A062956.P1536797168595570619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062956 (n : ℕ) : ℤ :=
  A062956.P1536797168595570619.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064707.P16779567911126322867

`A180200(A233279(n))`
-/

namespace A064707.P16779567911126322867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A233279 n).toNat

end

end A064707.P16779567911126322867

noncomputable section

/-- A064707: Inverse square of permutation defined by A003188.

Offset 0, canonical program `A064707.P16779567911126322867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, A233279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064707 (n : ℕ) : ℤ :=
  A064707.P16779567911126322867.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, A233279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066250.P1448252127205430300

`abs(xor(1, -A066248(n+1)))`
-/

namespace A066250.P1448252127205430300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A066248 (n + 1))|

end

end A066250.P1448252127205430300

noncomputable section

/-- A066250: a(n) = if n+1 is prime then A049084(n+1)*2 - 1 else A066246(n+1)*2.

Offset 1, canonical program `A066250.P1448252127205430300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066250 (n : ℕ) : ℤ :=
  A066250.P1448252127205430300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066449.P8482402725896442215

`C(n+1, A089929(2*(n+1)))`
-/

namespace A066449.P8482402725896442215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A089929 (2 * (n + 1))).toNat

end

end A066449.P8482402725896442215

noncomputable section

/-- A066449: Binomial(n, phi(n)), where phi(n) is the Euler totient function.

Offset 1, canonical program `A066449.P8482402725896442215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A066449 (n : ℕ) : ℤ :=
  (A066449.P8482402725896442215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A066449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066838.P17580760640508591

`A300951(2*n)/gcd(n+1, A300951(n+1))`
-/

namespace A066838.P17580760640508591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (Int.gcd (n + 1 : ℤ) (A300951 (n + 1)) : ℚ)

end

end A066838.P17580760640508591

noncomputable section

/-- A066838: Product of primes < n that do not divide n.

Offset 1, canonical program `A066838.P17580760640508591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A066838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066838.P17580760640508591.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A066838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066990.P6526794843317406672

`(n+1)/A295657(n+1)²`
-/

namespace A066990.P6526794843317406672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295657 (n + 1) ^ 2 : ℚ)

end

end A066990.P6526794843317406672

noncomputable section

/-- A066990: In canonical prime factorization of n replace even exponents with 2 and odd exponents with 1.

Offset 1, canonical program `A066990.P6526794843317406672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066990.P6526794843317406672.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067802.P10306462335375102656

`C(∑[2*char[∑[n]]]-1, C(comp[∑[n]]-n, 2)-(n+1))*A039599(n)`
-/

namespace A067802.P10306462335375102656
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A039599 n

end

end A067802.P10306462335375102656

noncomputable section

/-- A067802: Triangle read by rows: T(n, k) = binomial(2*n+1, n-k)^2*(2*k+1)/(2*n+1).

Offset 0, canonical program `A067802.P10306462335375102656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3743 terms. -/
def A067802 (n : ℕ) : ℤ :=
  A067802.P10306462335375102656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3743 terms. -/
def A067802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068014.P14499668269044334980

`filter[A066073(n+1), A296079(#)]`
-/

namespace A068014.P14499668269044334980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A068014.P14499668269044334980

noncomputable section

/-- A068014: Nonprimes n such that 1+phi(n) and -1 + sigma(n) are prime numbers.

Offset 1, canonical program `A068014.P14499668269044334980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. -/
def A068014 (n : ℕ) : ℤ :=
  A068014.P14499668269044334980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. -/
def A068014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068017.P16214505298946191943

`filter[A066073(n+1), A296212(#)]`
-/

namespace A068017.P16214505298946191943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A068017.P16214505298946191943

noncomputable section

/-- A068017: Composite n such that sigma(n) - 1 and sigma(n) + 1 are twin primes.

Offset 1, canonical program `A068017.P16214505298946191943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A068017 (n : ℕ) : ℤ :=
  A068017.P16214505298946191943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A068017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068191.P1341936650613296810

`lt[4, A061395(n+1)]+1`
-/

namespace A068191.P1341936650613296810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A068191.P1341936650613296810

noncomputable section

/-- A068191: Numbers n such that A067734(n)=0; complement of A002473; at least one prime-factor of n is larger than 7, it has 2 decimal digits.

Offset 1, canonical program `A068191.P1341936650613296810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068191 (n : ℕ) : ℤ :=
  (A068191.P1341936650613296810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068919.P16495689797022882545

`∩[A000469(n+1), A069209(n+1)]`
-/

namespace A068919.P16495689797022882545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P16495689797022882545

noncomputable section

/-- A068919: Squarefree orders of non-Abelian groups.

Offset 1, canonical program `A068919.P16495689797022882545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4654 terms. -/
def A068919 (n : ℕ) : ℤ :=
  (A068919.P16495689797022882545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4654 terms. -/
def A068919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070089.P8160623282101571297

`lt[A061395(n+1), A061395(n+2)]+1`
-/

namespace A070089.P8160623282101571297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070089.P8160623282101571297

noncomputable section

/-- A070089: P(n) < P(n+1) where P(n) (A006530) is the largest prime factor of n.

Offset 1, canonical program `A070089.P8160623282101571297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070089 (n : ℕ) : ℤ :=
  (A070089.P8160623282101571297.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070229.P5792893597916963980

`A028815(A061395(n+1))+n`
-/

namespace A070229.P5792893597916963980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A061395 (n + 1)).toNat + (n : ℤ)

end

end A070229.P5792893597916963980

noncomputable section

/-- A070229: Next m>n such that m is divisible by lpf(n), lpf=A006530 largest prime factor.

Offset 1, canonical program `A070229.P5792893597916963980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070229 (n : ℕ) : ℤ :=
  A070229.P5792893597916963980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070544.P2214455020234973635

`A262868(2*n+2)-floor(1/∏{e}[n+1, #])`
-/

namespace A070544.P2214455020234973635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * n + 2) - ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A070544.P2214455020234973635

noncomputable section

/-- A070544: Number of squarefree numbers s such that n < s < 2n.

Offset 1, canonical program `A070544.P2214455020234973635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A070544 (n : ℕ) : ℤ :=
  A070544.P2214455020234973635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A070544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071585.P327096867554570626

`A093875(2*n+1)`
-/

namespace A071585.P327096867554570626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (2 * n + 1)

end

end A071585.P327096867554570626

noncomputable section

/-- A071585: Numerator of the continued fraction expansion whose terms are the first-order differences of exponents in the binary representation of 4*n, with the exponents of 2 being listed in descending order.

Offset 0, canonical program `A071585.P327096867554570626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071585 (n : ℕ) : ℤ :=
  A071585.P327096867554570626.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071585.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071680.P13360749277261399360

`A000040(eq[1, A087032(A000040(n+1))]+2)`
-/

namespace A071680.P13360749277261399360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087032 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A071680.P13360749277261399360

noncomputable section

/-- A071680: Primes that are the arithmetic mean of their prime predecessor and another prime.

Offset 1, canonical program `A071680.P13360749277261399360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A071680 (n : ℕ) : ℤ :=
  A071680.P13360749277261399360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A071680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072900.P667283851551289347

`filter[A033198(n+1), A358769(#)]`
-/

namespace A072900.P667283851551289347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A072900.P667283851551289347

noncomputable section

/-- A072900: Discriminant of quadratic field Q(sqrt(prime(n))) where prime(n) is the n-th prime.

Offset 1, canonical program `A072900.P667283851551289347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A072900 (n : ℕ) : ℤ :=
  A072900.P667283851551289347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A072900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072901.P7101582238389632081

`∩[A000469(n+1), A042964(n+1)]`
-/

namespace A072901.P7101582238389632081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P7101582238389632081

noncomputable section

/-- A072901: Composite numbers n such that the discriminant of the quadratic field Q(sqrt(n)) equals 4n.

Offset 1, canonical program `A072901.P7101582238389632081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6974 terms. -/
def A072901 (n : ℕ) : ℤ :=
  (A072901.P7101582238389632081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6974 terms. -/
def A072901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073251.P16935436493994467128

`∩[A121495(n+1)-1, A121495(n+1)]`
-/

namespace A073251.P16935436493994467128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121495 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073251.P16935436493994467128

noncomputable section

/-- A073251: Numbers k such that k, k+1 and k+2 are nonprime and squarefree.

Offset 1, canonical program `A073251.P16935436493994467128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A073251 (n : ℕ) : ℤ :=
  (A073251.P16935436493994467128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A073251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073434.P6686306003510608694

`p?[A000035(A107347(n+1))*A130290(n+1)]`
-/

namespace A073434.P6686306003510608694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A107347 (n + 1)).toNat * A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073434.P6686306003510608694

noncomputable section

/-- A073434: Primes p such that 2p+1 is prime and there are an even number of primes in the interval [p+1,2p+1].

Offset 1, canonical program `A073434.P6686306003510608694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A073434 (n : ℕ) : ℤ :=
  A073434.P6686306003510608694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A073434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073490.P7070931676186738346

`A287170(abs(2-n)+3)-1`
-/

namespace A073490.P7070931676186738346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (|2 - (n : ℤ)| + 3).toNat - 1

end

end A073490.P7070931676186738346

noncomputable section

/-- A073490: Number of prime gaps in factorization of n.

Offset 1, canonical program `A073490.P7070931676186738346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073490 (n : ℕ) : ℤ :=
  A073490.P7070931676186738346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075282.P5321928366413685694

`7*p?[A165298(n+1)]`
-/

namespace A075282.P5321928366413685694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075282.P5321928366413685694

noncomputable section

/-- A075282: Interprimes which are of the form s*prime, s=7.

Offset 1, canonical program `A075282.P5321928366413685694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A075282 (n : ℕ) : ℤ :=
  A075282.P5321928366413685694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A075282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075541.P10092768136718601092

`A061395(p?[A054643(n+1)])`
-/

namespace A075541.P10092768136718601092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075541.P10092768136718601092

noncomputable section

/-- A075541: Numbers k such that prime(k) + prime(k+1) + prime(k+2) is a multiple of 3.

Offset 1, canonical program `A075541.P10092768136718601092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1395 terms. -/
def A075541 (n : ℕ) : ℤ :=
  A075541.P10092768136718601092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1395 terms. -/
def A075541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076556.P5329428728146528548

`A000040(A061395(A000040(n+1)+n+1))`
-/

namespace A076556.P5329428728146528548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A000040 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A076556.P5329428728146528548

noncomputable section

/-- A076556: Greatest prime divisor of n-th prime + n.

Offset 1, canonical program `A076556.P5329428728146528548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A076556 (n : ℕ) : ℤ :=
  A076556.P5329428728146528548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A076556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076563.P6255541400038907877

`n-A040976(A061395(n+2))`
-/

namespace A076563.P6255541400038907877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A040976 (A061395 (n + 2)).toNat

end

end A076563.P6255541400038907877

noncomputable section

/-- A076563: a(n) = n - greatest prime divisor of n, for n>1.

Offset 2, canonical program `A076563.P6255541400038907877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076563 (n : ℕ) : ℤ :=
  A076563.P6255541400038907877.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076565.P8130408265127793921

`A000040(A061395(2*n+3))`
-/

namespace A076565.P8130408265127793921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (2 * n + 3)).toNat

end

end A076565.P8130408265127793921

noncomputable section

/-- A076565: Greatest prime divisor of 2n+1 (sum of two successive integers).

Offset 1, canonical program `A076565.P8130408265127793921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076565 (n : ℕ) : ℤ :=
  A076565.P8130408265127793921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076566.P10108082377382600414

`A000040(A061395(3*(n+2)))`
-/

namespace A076566.P10108082377382600414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (3 * (n + 2))).toNat

end

end A076566.P10108082377382600414

noncomputable section

/-- A076566: Greatest prime divisor of 3n+3 (sum of three successive integers).

Offset 1, canonical program `A076566.P10108082377382600414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076566 (n : ℕ) : ℤ :=
  A076566.P10108082377382600414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076568.P8878829068693360086

`A000040(A061395(5*(n+3)))`
-/

namespace A076568.P8878829068693360086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (5 * (n + 3))).toNat

end

end A076568.P8878829068693360086

noncomputable section

/-- A076568: Greatest prime divisor of 5n+10 (sum of five successive integers).

Offset 1, canonical program `A076568.P8878829068693360086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076568 (n : ℕ) : ℤ :=
  A076568.P8878829068693360086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077500.P5565362967647390758

`p?[A070915(n+1)+1]`
-/

namespace A077500.P5565362967647390758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077500.P5565362967647390758

noncomputable section

/-- A077500: Primes of the form 2^r*p^s + 1, where p is an odd prime.

Offset 1, canonical program `A077500.P5565362967647390758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A077500 (n : ℕ) : ℤ :=
  A077500.P5565362967647390758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A077500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077641.P1502103477398908800

`A262868(2*(n+1))`
-/

namespace A077641.P1502103477398908800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1))

end

end A077641.P1502103477398908800

noncomputable section

/-- A077641: Number of squarefree integers in closed interval [n, 2n-1], i.e., among n consecutive numbers beginning with n.

Offset 1, canonical program `A077641.P1502103477398908800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A077641 (n : ℕ) : ℤ :=
  A077641.P1502103477398908800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A077641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078473.P9122853561466068891

`∑{d}[n+1, A053723(#-1)*A109091((n+1)/#)]`
-/

namespace A078473.P9122853561466068891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053723 (d - 1) * A109091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078473.P9122853561466068891

noncomputable section

/-- A078473: Expansion of zeta function of icosian ring.

Offset 1, canonical program `A078473.P9122853561466068891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078473 (n : ℕ) : ℤ :=
  A078473.P9122853561466068891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079067.P15788458216202685682

`A080791(A087207(n+1))`
-/

namespace A079067.P15788458216202685682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A087207 (n + 1)).toNat

end

end A079067.P15788458216202685682

noncomputable section

/-- A079067: Number of primes less than greatest prime factor of n but not dividing n.

Offset 1, canonical program `A079067.P15788458216202685682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079067 (n : ℕ) : ℤ :=
  A079067.P15788458216202685682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079315.P17008954990513052788

`∑[A151921(n)]-A147562(A004526(n))`
-/

namespace A079315.P17008954990513052788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147562 (A004526 n).toNat

end

end A079315.P17008954990513052788

noncomputable section

/-- A079315: Number of cells that change from OFF to ON at stage n of the cellular automaton described in A079317.

Offset 0, canonical program `A079315.P17008954990513052788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. -/
def A079315 (n : ℕ) : ℤ :=
  A079315.P17008954990513052788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. -/
def A079315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080243.P6426181956936067807

`A176479(n)/A181983(n+1)`
-/

namespace A080243.P6426181956936067807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176479 n : ℚ) / (A181983 (n + 1) : ℚ)

end

end A080243.P6426181956936067807

noncomputable section

/-- A080243: Signed super-Catalan or little Schroeder numbers.

Offset 0, canonical program `A080243.P6426181956936067807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A080243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080243.P6426181956936067807.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A080243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080681.P3534374354548157970

`lt[A061395(n+1), 8]+1`
-/

namespace A080681.P3534374354548157970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080681.P3534374354548157970

noncomputable section

/-- A080681: 17-smooth numbers: numbers whose prime divisors are all <= 17.

Offset 1, canonical program `A080681.P3534374354548157970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. -/
def A080681 (n : ℕ) : ℤ :=
  (A080681.P3534374354548157970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. -/
def A080681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080683.P4164783436571968620

`lt[A061395(n+1), 10]+1`
-/

namespace A080683.P4164783436571968620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080683.P4164783436571968620

noncomputable section

/-- A080683: 23-smooth numbers: numbers whose prime divisors are all <= 23.

Offset 1, canonical program `A080683.P4164783436571968620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3104 terms. -/
def A080683 (n : ℕ) : ℤ :=
  (A080683.P4164783436571968620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3104 terms. -/
def A080683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083721.P10075139577301052661

`∑[∑{p}[n+1, val(#, n+1)]]-A061395(n+1)`
-/

namespace A083721.P10075139577301052661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A061395 (n + 1)

end

end A083721.P10075139577301052661

noncomputable section

/-- A083721: Number of primes greater than the greatest prime factor of n but not greater than n.

Offset 1, canonical program `A083721.P10075139577301052661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083721 (n : ℕ) : ℤ :=
  A083721.P10075139577301052661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086170.P6204776482874446032

`comp[1-A104324(n)+n]+1`
-/

namespace A086170.P6204776482874446032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A104324 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A086170.P6204776482874446032

noncomputable section

/-- A086170: a(1)=1; a(n)=a(n-1)+1 if n is in the sequence; a(n)=a(n-1)+2 if n and (n-1) are not in the sequence; a(n)=a(n-1)+3 if n is not in the sequence but (n-1) is in the sequence.

Offset 1, canonical program `A086170.P6204776482874446032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086170 (n : ℕ) : ℤ :=
  (A086170.P6204776482874446032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086568.P9412940233159706757

`A300951(2*A105560(n+1))`
-/

namespace A086568.P9412940233159706757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (2 * A105560 (n + 1)).toNat

end

end A086568.P9412940233159706757

noncomputable section

/-- A086568: Smallest number having as many distinct prime factors as n has prime factors, when counted with multiplicity.

Offset 1, canonical program `A086568.P9412940233159706757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086568 (n : ℕ) : ℤ :=
  A086568.P9412940233159706757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086708.P13578315174771339965

`∩[A089199(n+1), A089200(n+1)]`
-/

namespace A086708.P13578315174771339965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086708.P13578315174771339965

noncomputable section

/-- A086708: Primes p such that p-1 and p+1 are both divisible by cubes (other than 1).

Offset 1, canonical program `A086708.P13578315174771339965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1160 terms. -/
def A086708 (n : ℕ) : ℤ :=
  (A086708.P13578315174771339965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1160 terms. -/
def A086708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086983.P17990529017750356607

`p?[A070915(n+1)-1]`
-/

namespace A086983.P17990529017750356607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086983.P17990529017750356607

noncomputable section

/-- A086983: Primes of the form 2^r*p^s - 1, where p is an odd prime.

Offset 1, canonical program `A086983.P17990529017750356607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A086983 (n : ℕ) : ℤ :=
  A086983.P17990529017750356607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A086983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087031.P17529191149633832265

`record[(n+1)*A087032(n+1)]`
-/

namespace A087031.P17529191149633832265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087031.P17529191149633832265

noncomputable section

/-- A087031: Numbers n such that 2p-n is prime, p is the smallest prime > n.

Offset 1, canonical program `A087031.P17529191149633832265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. -/
def A087031 (n : ℕ) : ℤ :=
  A087031.P17529191149633832265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. -/
def A087031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088019.P5378104997926900415

`∑[A164292(2*n+1)-A164292(A093178(n))]`
-/

namespace A088019.P5378104997926900415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (2 * n + 1) - A164292 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088019.P5378104997926900415

noncomputable section

/-- A088019: Number of twin primes between n and 2n (inclusive).

Offset 1, canonical program `A088019.P5378104997926900415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088019 (n : ℕ) : ℤ :=
  A088019.P5378104997926900415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089124.P2682989816740987000

`A000040(A061395((n+1)²+3))`
-/

namespace A089124.P2682989816740987000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 ((n + 1) ^ 2 + 3)).toNat

end

end A089124.P2682989816740987000

noncomputable section

/-- A089124: Largest prime factor of n^2 + 3.

Offset 1, canonical program `A089124.P2682989816740987000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A089124 (n : ℕ) : ℤ :=
  A089124.P2682989816740987000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A089124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091365.P13821145231187876511

`∩[A091366(n+1), A247122(n+1)]`
-/

namespace A091365.P13821145231187876511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091365.P13821145231187876511

noncomputable section

/-- A091365: Primes p such that the sum of the digits of p is not prime, but the sum of the cubes of the digits of p is prime.

Offset 1, canonical program `A091365.P13821145231187876511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A091365 (n : ℕ) : ℤ :=
  (A091365.P13821145231187876511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A091365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091871.P11295884094468238153

`A061395(p?[A091633(n+1)])`
-/

namespace A091871.P11295884094468238153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091871.P11295884094468238153

noncomputable section

/-- A091871: A091633 indexed by A000040.

Offset 1, canonical program `A091871.P11295884094468238153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A091871 (n : ℕ) : ℤ :=
  A091871.P11295884094468238153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A091871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092256.P2919637322678996095

`2*(A138685(n+1)+3)+3`
-/

namespace A092256.P2919637322678996095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138685 (n + 1) + 3) + 3

end

end A092256.P2919637322678996095

noncomputable section

/-- A092256: Nonprimes of form 6k+5.

Offset 1, canonical program `A092256.P2919637322678996095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092256 (n : ℕ) : ℤ :=
  A092256.P2919637322678996095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093555.P5658840311924976903

`Δ[record[A100994(n+1)]]-1`
-/

namespace A093555.P5658840311924976903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P5658840311924976903

noncomputable section

/-- A093555: Number of non-prime-powers between consecutive prime-powers.

Offset 1, canonical program `A093555.P5658840311924976903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A093555 (n : ℕ) : ℤ :=
  A093555.P5658840311924976903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A093555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095096.P2257537572395009446

`eq[1, A001511(ceil(A104324(n)/2)+1)]`
-/

namespace A095096.P2257537572395009446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (⌈(A104324 n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095096.P2257537572395009446

noncomputable section

/-- A095096: Fibevil numbers: those numbers k for which the parity of 1-fibits in Zeckendorf expansion A014417(k) is even, i.e., for which A095076(k) = 0.

Offset 1, canonical program `A095096.P2257537572395009446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095096 (n : ℕ) : ℤ :=
  (A095096.P2257537572395009446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100808.P5859117941916704897

`char[A156243(n+1)]*A078880(n+1)+1`
-/

namespace A100808.P5859117941916704897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078880 (n + 1) + 1

end

end A100808.P5859117941916704897

noncomputable section

/-- A100808: Quet transform (see A101387 for definition) of Kolakoski sequence A000002.

Offset 1, canonical program `A100808.P5859117941916704897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100808 (n : ℕ) : ℤ :=
  A100808.P5859117941916704897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104588.P3418871000516145998

`A300951(A000267(n+1))`
-/

namespace A104588.P3418871000516145998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A000267 (n + 1)).toNat

end

end A104588.P3418871000516145998

noncomputable section

/-- A104588: Product of primes less than or equal to sqrt(n).

Offset 1, canonical program `A104588.P3418871000516145998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104588 (n : ℕ) : ℤ :=
  A104588.P3418871000516145998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111123.P4994184408905448114

`A001083(n+4)-A001083(n+3)`
-/

namespace A111123.P4994184408905448114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 4) - A001083 (n + 3)

end

end A111123.P4994184408905448114

noncomputable section

/-- A111123: Number of 2's in n-th "Kolakoski" string defined in A054349.

Offset 0, canonical program `A111123.P4994184408905448114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111123 (n : ℕ) : ℤ :=
  A111123.P4994184408905448114.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111171.P4309389729909289048

`filter[A114441(n+1), A359370(#)]`
-/

namespace A111171.P4309389729909289048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A111171.P4309389729909289048

noncomputable section

/-- A111171: Semiprimes S such that 3*S - 1 is also a semiprime.

Offset 1, canonical program `A111171.P4309389729909289048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111171 (n : ℕ) : ℤ :=
  A111171.P4309389729909289048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111409.P14392495408672039637

`1-Δ[A219029(A028310(n))]`
-/

namespace A111409.P14392495408672039637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219029 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A111409.P14392495408672039637

noncomputable section

/-- A111409: a(n) = f(f(n+1)) - f(f(n)), where f(0)=0, and for m>0, f(m) = phi(m) = A000010(m).

Offset 0, canonical program `A111409.P14392495408672039637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111409 (n : ℕ) : ℤ :=
  A111409.P14392495408672039637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111651.P8177668560331271572

`A183295(n+1)-n`
-/

namespace A111651.P8177668560331271572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183295 (n + 1) - (n : ℤ)

end

end A111651.P8177668560331271572

noncomputable section

/-- A111651: n appears 3n times.

Offset 1, canonical program `A111651.P8177668560331271572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111651 (n : ℕ) : ℤ :=
  A111651.P8177668560331271572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114128.P8737524334941543082

`∩[A114127(n+1), A114129(n+1)]`
-/

namespace A114128.P8737524334941543082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P8737524334941543082

noncomputable section

/-- A114128: Numbers that factorize into a prime number of distinct prime factors each raised to a different prime exponent.

Offset 1, canonical program `A114128.P8737524334941543082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A114128 (n : ℕ) : ℤ :=
  (A114128.P8737524334941543082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A114128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114193.P7345926356561851924

`A039599(n)*A122803(A025581(n))`
-/

namespace A114193.P7345926356561851924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n * A122803 (A025581 n).toNat

end

end A114193.P7345926356561851924

noncomputable section

/-- A114193: Riordan array (1/(1+2xc(-2x)),xc(-2x)/(1+2xc(-2x))), c(x) the g.f. of A000108.

Offset 0, canonical program `A114193.P7345926356561851924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6557 terms. -/
def A114193 (n : ℕ) : ℤ :=
  A114193.P7345926356561851924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6557 terms. -/
def A114193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117364.P3531757736997744377

`A008578(A061395(2*(n+1)))`
-/

namespace A117364.P3531757736997744377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (2 * (n + 1))).toNat

end

end A117364.P3531757736997744377

noncomputable section

/-- A117364: a(n) = largest prime less than the largest prime dividing n (or 1 if there is no such prime).

Offset 1, canonical program `A117364.P3531757736997744377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117364 (n : ℕ) : ℤ :=
  A117364.P3531757736997744377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118486.P5144178606512269279

`A094290(gcd(A007283(n), A336510(n+2)))`
-/

namespace A118486.P5144178606512269279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094290 (Int.gcd (A007283 n) (A336510 (n + 2)))

end

end A118486.P5144178606512269279

noncomputable section

/-- A118486: a(n) is the smallest prime occurring in the prime factorization of n! to an odd power.

Offset 2, canonical program `A118486.P5144178606512269279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A118486 (n : ℕ) : ℤ :=
  A118486.P5144178606512269279.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A118486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119245.P16472255334534663977

`gcd(C(3, n²), A039599(A028391(n)+n))`
-/

namespace A119245.P16472255334534663977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 3 (n ^ 2) : ℤ) (A039599 (A028391 n + (n : ℤ)).toNat)

end

end A119245.P16472255334534663977

noncomputable section

/-- A119245: Triangle, read by rows, defined by: T(n,k) = (4*k+1)*binomial(2*n+1, n-2*k)/(2*n+1) for n >= 2*k >= 0.

Offset 0, canonical program `A119245.P16472255334534663977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A119245 (n : ℕ) : ℤ :=
  (A119245.P16472255334534663977.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A119245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119848.P16621179210956495199

`∩[A344609(n+1), A363597(n+1)]`
-/

namespace A119848.P16621179210956495199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119848.P16621179210956495199

noncomputable section

/-- A119848: Positions where A119842 is not zero.

Offset 1, canonical program `A119848.P16621179210956495199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3323 terms. -/
def A119848 (n : ℕ) : ℤ :=
  (A119848.P16621179210956495199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3323 terms. -/
def A119848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122564.P13385177037397452995

`A108245(A061395(p?[A108245(n+2)]))`
-/

namespace A122564.P13385177037397452995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A122564.P13385177037397452995

noncomputable section

/-- A122564: Twin primes of form 4k-1, 4k+1.

Offset 1, canonical program `A122564.P13385177037397452995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122564 (n : ℕ) : ℤ :=
  A122564.P13385177037397452995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127796.P12118606658700443075

`A013598(2*n)`
-/

namespace A127796.P12118606658700443075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 (2 * n)

end

end A127796.P12118606658700443075

noncomputable section

/-- A127796: a(n) = nextprime(9^n) - 9^n.

Offset 0, canonical program `A127796.P12118606658700443075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A127796 (n : ℕ) : ℤ :=
  A127796.P12118606658700443075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A127796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128899.P17791160689739130473

`A039599(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A128899.P17791160689739130473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039599 (n - 1) - a (n - 1)

end

end A128899.P17791160689739130473

noncomputable section

/-- A128899: Riordan array (1,(1-2x-sqrt(1-4x))/(2x)).

Offset 0, canonical program `A128899.P17791160689739130473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128899 (n : ℕ) : ℤ :=
  A128899.P17791160689739130473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129598.P11490715712058608497

`A000040(A061395(2*(n+1)))*(n+1)`
-/

namespace A129598.P11490715712058608497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (2 * (n + 1))).toNat * (n + 1 : ℤ)

end

end A129598.P11490715712058608497

noncomputable section

/-- A129598: a(n) = n * A111089(n).

Offset 1, canonical program `A129598.P11490715712058608497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129598 (n : ℕ) : ℤ :=
  A129598.P11490715712058608497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129950.P15295767996041627134

`2*A164292(n+1)-A010051(n+1)`
-/

namespace A129950.P15295767996041627134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164292 (n + 1) - A010051 (n + 1)

end

end A129950.P15295767996041627134

noncomputable section

/-- A129950: Indicator function of twin primes: 1 if n is a twin prime member, 0 if not prime, -1 else (isolated prime or 2).

Offset 1, canonical program `A129950.P15295767996041627134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A164292, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129950 (n : ℕ) : ℤ :=
  A129950.P15295767996041627134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A164292, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132243.P14774113840240775402

`filter[A132240(n+1), A164292(#)]`
-/

namespace A132243.P14774113840240775402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132243.P14774113840240775402

noncomputable section

/-- A132243: Twin primes congruent to {1, 29} mod 30.

Offset 1, canonical program `A132243.P14774113840240775402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A132243 (n : ℕ) : ℤ :=
  A132243.P14774113840240775402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A132243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133674.P17491123718751258836

`abs(Δ[A061395(n+1)])`
-/

namespace A133674.P17491123718751258836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133674.P17491123718751258836

noncomputable section

/-- A133674: a(n) = |A061395(n+1) - A061395(n)|.

Offset 1, canonical program `A133674.P17491123718751258836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133674 (n : ℕ) : ℤ :=
  A133674.P17491123718751258836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134193.P13179869624210931457

`A001511(A297404(n+1)+1)`
-/

namespace A134193.P13179869624210931457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A297404 (n + 1) + 1).toNat

end

end A134193.P13179869624210931457

noncomputable section

/-- A134193: a(1) = 1; for n>1, a(n) = the smallest positive integer not occurring among the exponents in the prime-factorization of n.

Offset 1, canonical program `A134193.P13179869624210931457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134193 (n : ℕ) : ℤ :=
  A134193.P13179869624210931457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137222.P5944416911786828449

`∑[ceil(Δ[A061395(n+1)]/(n+1)^4)]`
-/

namespace A137222.P5944416911786828449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) - f2 n : ℚ) / ((n + 1) ^ 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137222.P5944416911786828449

noncomputable section

/-- A137222: Partial sums of A087429.

Offset 1, canonical program `A137222.P5944416911786828449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137222 (n : ℕ) : ℤ :=
  A137222.P5944416911786828449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137794.P4088568533380436255

`A287170(n+1)!%2`
-/

namespace A137794.P4088568533380436255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A287170 (n + 1)).toNat % 2

end

end A137794.P4088568533380436255

noncomputable section

/-- A137794: Characteristic function of numbers having no prime gaps in their factorization.

Offset 1, canonical program `A137794.P4088568533380436255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137794 (n : ℕ) : ℤ :=
  (A137794.P4088568533380436255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000114.P10789346743923345405

`A001766(n+2)/(n+2)`
-/

namespace A000114.P10789346743923345405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001766 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A000114.P10789346743923345405

noncomputable section

/-- A000114: Number of cusps of principal congruence subgroup Gamma^{hat}(n).

Offset 2, canonical program `A000114.P10789346743923345405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000114.P10789346743923345405.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008440.P2695110526216161090

`A122854(2*n+1)/8`
-/

namespace A008440.P2695110526216161090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122854 (2 * n + 1) : ℚ) / 8

end

end A008440.P2695110526216161090

noncomputable section

/-- A008440: Expansion of Jacobi theta constant theta_2^6 /(64q^(3/2)).

Offset 0, canonical program `A008440.P2695110526216161090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A008440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008440.P2695110526216161090.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A008440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023570.P4841596169678730397

`A061395(∏{e}[3-A000040(n+1), A000040(#)])`
-/

namespace A023570.P4841596169678730397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A023570.P4841596169678730397

noncomputable section

/-- A023570: Greatest exponent in prime-power factorization of p(n)-3.

Offset 1, canonical program `A023570.P4841596169678730397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023570 (n : ℕ) : ℤ :=
  A023570.P4841596169678730397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028235.P3234119567802931981

`A003415(A007947(n+1))`
-/

namespace A028235.P3234119567802931981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007947 (n + 1)).toNat

end

end A028235.P3234119567802931981

noncomputable section

/-- A028235: If n = Product (p_j^k_j), a(n) = numerator of Sum 1/p_j (the denominator of this sum is A007947).

Offset 1, canonical program `A028235.P3234119567802931981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A028235 (n : ℕ) : ℤ :=
  A028235.P3234119567802931981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A028235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037841.P17328072378714673931

`A297330(A007095(n+1))`
-/

namespace A037841.P17328072378714673931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007095 (n + 1)).toNat

end

end A037841.P17328072378714673931

noncomputable section

/-- A037841: a(n)=Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*9^i: i=0,1,...,m} is the base 9 representation of n.

Offset 1, canonical program `A037841.P17328072378714673931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037841 (n : ℕ) : ℤ :=
  A037841.P17328072378714673931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048752.P12876509169985290573

`A291186(eq[1, A137927(n+6)]+6)`
-/

namespace A048752.P12876509169985290573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6)

end

end A048752.P12876509169985290573

noncomputable section

/-- A048752: Mean integral divisors associated with A048751.

Offset 1, canonical program `A048752.P12876509169985290573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1779 terms. -/
def A048752 (n : ℕ) : ℤ :=
  A048752.P12876509169985290573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1779 terms. -/
def A048752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068311.P10657413237512697143

`A003415(A000142(n))`
-/

namespace A068311.P10657413237512697143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000142 n).toNat

end

end A068311.P10657413237512697143

noncomputable section

/-- A068311: Arithmetic derivative of n!.

Offset 0, canonical program `A068311.P10657413237512697143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068311 (n : ℕ) : ℤ :=
  A068311.P10657413237512697143.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068312.P1379280089161861834

`A003415(A000217(n))`
-/

namespace A068312.P1379280089161861834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000217 n).toNat

end

end A068312.P1379280089161861834

noncomputable section

/-- A068312: Arithmetic derivative of triangular numbers.

Offset 0, canonical program `A068312.P1379280089161861834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068312 (n : ℕ) : ℤ :=
  A068312.P1379280089161861834.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068327.P16591089257582404943

`n^n*A003415(n)`
-/

namespace A068327.P16591089257582404943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A003415 n

end

end A068327.P16591089257582404943

noncomputable section

/-- A068327: Arithmetic derivative of n^n.

Offset 0, canonical program `A068327.P16591089257582404943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068327 (n : ℕ) : ℤ :=
  A068327.P16591089257582404943.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068328.P3336057925348697650

`A003415(A005117(n+1))`
-/

namespace A068328.P3336057925348697650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005117 (n + 1)).toNat

end

end A068328.P3336057925348697650

noncomputable section

/-- A068328: Arithmetic derivatives of the squarefree numbers.

Offset 1, canonical program `A068328.P3336057925348697650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068328 (n : ℕ) : ℤ :=
  A068328.P3336057925348697650.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068346.P16736836852944168196

`A003415(A003415(n))`
-/

namespace A068346.P16736836852944168196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n).toNat

end

end A068346.P16736836852944168196

noncomputable section

/-- A068346: a(n) = n'' = second arithmetic derivative of n.

Offset 0, canonical program `A068346.P16736836852944168196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068346 (n : ℕ) : ℤ :=
  A068346.P16736836852944168196.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068721.P18015625726046714412

`3*(n+1)²*A003415(n+1)`
-/

namespace A068721.P18015625726046714412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n + 1) ^ 2 : ℤ) * A003415 (n + 1))

end

end A068721.P18015625726046714412

noncomputable section

/-- A068721: Arithmetic derivative of cubes: a(n) = 3*n^2*A003415(n).

Offset 1, canonical program `A068721.P18015625726046714412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068721 (n : ℕ) : ℤ :=
  A068721.P18015625726046714412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068981.P17257054354611065176

`A003415(A033286(n+1))`
-/

namespace A068981.P17257054354611065176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A033286 (n + 1)).toNat

end

end A068981.P17257054354611065176

noncomputable section

/-- A068981: Arithmetic derivative of n*prime(n).

Offset 1, canonical program `A068981.P17257054354611065176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068981 (n : ℕ) : ℤ :=
  A068981.P17257054354611065176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074661.P11748437704259827702

`eq[1, A003415(A051903(n+1))]+1`
-/

namespace A074661.P11748437704259827702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A051903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074661.P11748437704259827702

noncomputable section

/-- A074661: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n; sequence gives n such that max{e_2, e_3, ...} is prime.

Offset 1, canonical program `A074661.P11748437704259827702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074661 (n : ℕ) : ℤ :=
  (A074661.P11748437704259827702.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079094.P5860095368831372493

`A003415(A079079(n+1))`
-/

namespace A079094.P5860095368831372493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A079079 (n + 1)).toNat

end

end A079094.P5860095368831372493

noncomputable section

/-- A079094: Arithmetic derivative of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079094.P5860095368831372493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079094 (n : ℕ) : ℤ :=
  A079094.P5860095368831372493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086130.P18267880308328996380

`lcm(2*n+1-n, A003415(n+1))`
-/

namespace A086130.P18267880308328996380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n + 1 : ℤ) - (n : ℤ)) (A003415 (n + 1))

end

end A086130.P18267880308328996380

noncomputable section

/-- A086130: a(n) = lcm(n, A003415(n)).

Offset 1, canonical program `A086130.P18267880308328996380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086130 (n : ℕ) : ℤ :=
  (A086130.P18267880308328996380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086300.P13309129529402629296

`A003415(record[A071785(n+1)])`
-/

namespace A086300.P13309129529402629296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086300.P13309129529402629296

noncomputable section

/-- A086300: Arithmetic derivative of 7-smooth numbers.

Offset 1, canonical program `A086300.P13309129529402629296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A086300 (n : ℕ) : ℤ :=
  A086300.P13309129529402629296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A086300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095994.P6399885986967306928

`eq[1, A003415(n-A054055(n))]`
-/

namespace A095994.P6399885986967306928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) - A054055 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095994.P6399885986967306928

noncomputable section

/-- A095994: Numbers k such that k - (largest digit of k) is prime.

Offset 1, canonical program `A095994.P6399885986967306928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A095994 (n : ℕ) : ℤ :=
  (A095994.P6399885986967306928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A095994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099306.P5435718104509617446

`A003415(A003415(A003415(n)))`
-/

namespace A099306.P5435718104509617446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 (A003415 n).toNat).toNat

end

end A099306.P5435718104509617446

noncomputable section

/-- A099306: n''', the third arithmetic derivative of n.

Offset 0, canonical program `A099306.P5435718104509617446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099306 (n : ℕ) : ℤ :=
  A099306.P5435718104509617446.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129283.P3962818557550655141

`n+A003415(n)`
-/

namespace A129283.P3962818557550655141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A003415 n

end

end A129283.P3962818557550655141

noncomputable section

/-- A129283: a(n) = (arithmetic derivative of n) + n.

Offset 0, canonical program `A129283.P3962818557550655141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129283 (n : ℕ) : ℤ :=
  A129283.P3962818557550655141.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139969.P6360869808431639067

`∪[A140036(n+1), A140041(n+1)]`
-/

namespace A139969.P6360869808431639067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139969.P6360869808431639067

noncomputable section

/-- A139969: Primes of the form 21x^2+22y^2.

Offset 1, canonical program `A139969.P6360869808431639067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139969 (n : ℕ) : ℤ :=
  (A139969.P6360869808431639067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023211.P15510924814259681776

`p?[n-A245838(n+2)²]`
-/

namespace A023211.P15510924814259681776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A245838 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P15510924814259681776

noncomputable section

/-- A023211: Primes p such that 3*p + 10 is also prime.

Offset 1, canonical program `A023211.P15510924814259681776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. -/
def A023211 (n : ℕ) : ℤ :=
  A023211.P15510924814259681776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. -/
def A023211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023222.P6978621992250826147

`p?[eq[1, A245838(2*(n+1))]]`
-/

namespace A023222.P6978621992250826147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023222.P6978621992250826147

noncomputable section

/-- A023222: Primes p such that 6*p + 7 is also prime.

Offset 1, canonical program `A023222.P6978621992250826147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A023222 (n : ℕ) : ℤ :=
  (A023222.P6978621992250826147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A023222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023247.P8495313482969675933

`p?[eq[A075743(n+1), A245838(3*n+5)]]`
-/

namespace A023247.P8495313482969675933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023247.P8495313482969675933

noncomputable section

/-- A023247: Primes p such that 3*p + 4 and 9*p + 16 are also prime.

Offset 1, canonical program `A023247.P8495313482969675933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A023247 (n : ℕ) : ℤ :=
  (A023247.P8495313482969675933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A023247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124849.P5182331567433130283

`record[A089033(n+1)/A245838(A033868(n+1))]`
-/

namespace A124849.P5182331567433130283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089033 (n + 1) : ℚ) / (A245838 (A033868 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124849.P5182331567433130283

noncomputable section

/-- A124849: Numbers k such that 7k + 3 and 3k + 7 are primes.

Offset 1, canonical program `A124849.P5182331567433130283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. -/
def A124849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124849.P5182331567433130283.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. -/
def A124849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139532.P2108094528252457204

`eq[1, A245838(2*A004767(n))]`
-/

namespace A139532.P2108094528252457204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P2108094528252457204

noncomputable section

/-- A139532: Numbers k such that 24*k + 19 is prime.

Offset 1, canonical program `A139532.P2108094528252457204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. -/
def A139532 (n : ℕ) : ℤ :=
  (A139532.P2108094528252457204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. -/
def A139532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005728.P12032251568510858139

`1+A002088(n)`
-/

namespace A005728.P12032251568510858139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002088 n

end

end A005728.P12032251568510858139

noncomputable section

/-- A005728: Number of fractions in Farey series of order n.

Offset 0, canonical program `A005728.P12032251568510858139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005728 (n : ℕ) : ℤ :=
  A005728.P12032251568510858139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007504.P16529107901788736493

`∑[A182986(n+1)]`
-/

namespace A007504.P16529107901788736493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007504.P16529107901788736493

noncomputable section

/-- A007504: Sum of the first n primes.

Offset 0, canonical program `A007504.P16529107901788736493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007504 (n : ℕ) : ℤ :=
  A007504.P16529107901788736493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008482.P11575381483770725736

`-Δ[A007318(n-1)-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A008482.P11575381483770725736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A007318 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A008482.P11575381483770725736

noncomputable section

/-- A008482: Coefficients in expansion of (x-1)*(1+x)^(n-1), n > 0.

Offset 0, canonical program `A008482.P11575381483770725736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008482 (n : ℕ) : ℤ :=
  A008482.P11575381483770725736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015614.P8689819848562106603

`Δ[A103116(n)]-1`
-/

namespace A015614.P8689819848562106603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A015614.P8689819848562106603

noncomputable section

/-- A015614: a(n) = -1 + Sum_{i=1..n} phi(i).

Offset 1, canonical program `A015614.P8689819848562106603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015614 (n : ℕ) : ℤ :=
  A015614.P8689819848562106603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027883.P3043507636580154283

`A024620(n+1)-1`
-/

namespace A027883.P3043507636580154283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (n + 1) - 1

end

end A027883.P3043507636580154283

noncomputable section

/-- A027883: Positions of primes in sequence (A246655) of primes and prime powers {p^i, i >= 1}.

Offset 1, canonical program `A027883.P3043507636580154283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027883 (n : ℕ) : ℤ :=
  A027883.P3043507636580154283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045935.P15068729089152290012

`A045934(eq[1, A045934(n+2)-A045934(n+1)]+1)`
-/

namespace A045935.P15068729089152290012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 2) - A045934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045935.P15068729089152290012

noncomputable section

/-- A045935: Numbers n such that n through n+6 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045935.P15068729089152290012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3579 terms. -/
def A045935 (n : ℕ) : ℤ :=
  A045935.P15068729089152290012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3579 terms. -/
def A045935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048571.P4485784298280140691

`A001221(A007318(n))`
-/

namespace A048571.P4485784298280140691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007318 n).toNat

end

end A048571.P4485784298280140691

noncomputable section

/-- A048571: Triangle read by rows: T(n,k) = number of distinct prime factors of C(n,k).

Offset 0, canonical program `A048571.P4485784298280140691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048571 (n : ℕ) : ℤ :=
  A048571.P4485784298280140691.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048864.P16915682539637834600

`A036997(n+1)+1`
-/

namespace A048864.P16915682539637834600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1) + 1

end

end A048864.P16915682539637834600

noncomputable section

/-- A048864: Number of nonprime numbers (composites and 1) in the reduced residue system of n.

Offset 1, canonical program `A048864.P16915682539637834600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048864 (n : ℕ) : ℤ :=
  A048864.P16915682539637834600.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048983.P9613162556933275470

`A036997(Δ[A053767(n)])`
-/

namespace A048983.P9613162556933275470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (f1 (n + 1) - f1 n).toNat

end

end A048983.P9613162556933275470

noncomputable section

/-- A048983: As n runs through composite numbers, a(n) = number of composite d < n such that gcd(d,n) = 1.

Offset 1, canonical program `A048983.P9613162556933275470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A048983 (n : ℕ) : ℤ :=
  A048983.P9613162556933275470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A048983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048989.P13418413284039244819

`eq[1, A003415(A000720(n+1))]+1`
-/

namespace A048989.P13418413284039244819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048989.P13418413284039244819

noncomputable section

/-- A048989: Numbers k such that pi(k) is prime.

Offset 1, canonical program `A048989.P13418413284039244819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6468 terms. -/
def A048989 (n : ℕ) : ℤ :=
  (A048989.P13418413284039244819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6468 terms. -/
def A048989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049690.P5802976432463203985

`A002088(n)+a(floor(n/2))` with `a(0)=0`
-/

namespace A049690.P5802976432463203985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002088 n + a ⌊(n : ℚ) / 2⌋.toNat

end

end A049690.P5802976432463203985

noncomputable section

/-- A049690: a(n) = Sum_{k=1..n} phi(2*k), where phi = Euler totient function, cf. A000010.

Offset 0, canonical program `A049690.P5802976432463203985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049690 (n : ℕ) : ℤ :=
  A049690.P5802976432463203985.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049696.P12004431397855860570

`2*A002088(n)`
-/

namespace A049696.P12004431397855860570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002088 n

end

end A049696.P12004431397855860570

noncomputable section

/-- A049696: a(n)=T(n,n), array T as in A049695.

Offset 0, canonical program `A049696.P12004431397855860570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049696 (n : ℕ) : ℤ :=
  A049696.P12004431397855860570.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051547.P2764291257816859715

`lcm(a(n-1), Δ[A002088(n)])` with `a(0)=1`
-/

namespace A051547.P2764291257816859715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A051547.P2764291257816859715

noncomputable section

/-- A051547: a(n) = lcm{ phi(1), ..., phi(n) }, where phi is Euler's totient function A000010.

Offset 1, canonical program `A051547.P2764291257816859715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A051547 (n : ℕ) : ℤ :=
  (A051547.P2764291257816859715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A051547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053143.P2973590149006615306

`A019554(n+1)²`
-/

namespace A053143.P2973590149006615306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2

end

end A053143.P2973590149006615306

noncomputable section

/-- A053143: Smallest square divisible by n.

Offset 1, canonical program `A053143.P2973590149006615306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053143 (n : ℕ) : ℤ :=
  A053143.P2973590149006615306.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056134.P1490690283177267514

`A019554(n+1)+abs(A055615(n+1))`
-/

namespace A056134.P1490690283177267514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) + |A055615 (n + 1)|

end

end A056134.P1490690283177267514

noncomputable section

/-- A056134: Smallest positive integer which is the geometric mean of n and an integer other than n.

Offset 1, canonical program `A056134.P1490690283177267514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056134 (n : ℕ) : ℤ :=
  A056134.P1490690283177267514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056196.P11886638519316626035

`A008590(record[A056192(A003159(n+1))])`
-/

namespace A056196.P11886638519316626035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A003159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056196.P11886638519316626035

noncomputable section

/-- A056196: Numbers n such that A055229(n) = 2.

Offset 1, canonical program `A056196.P11886638519316626035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6411 terms. -/
def A056196 (n : ℕ) : ℤ :=
  A056196.P11886638519316626035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6411 terms. -/
def A056196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063514.P16932919259440733816

`Δ[A160664(n)]%Δ[A002088(n)]`
-/

namespace A063514.P16932919259440733816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A063514.P16932919259440733816

noncomputable section

/-- A063514: a(n) = sigma(n) mod phi(n).

Offset 1, canonical program `A063514.P16932919259440733816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063514 (n : ℕ) : ℤ :=
  A063514.P16932919259440733816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063776.P939957080839248717

`∑{d}[n+1, A059841(#-1)*A064355((n+1)/#)]`
-/

namespace A063776.P939957080839248717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A064355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063776.P939957080839248717

noncomputable section

/-- A063776: Number of subsets of {1,2,...,n} which sum to 0 modulo n.

Offset 1, canonical program `A063776.P939957080839248717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A063776 (n : ℕ) : ℤ :=
  A063776.P939957080839248717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A063776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064018.P11561033386454225953

`A002088(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064018.P11561033386454225953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (10 ^ n)

end

end A064018.P11561033386454225953

noncomputable section

/-- A064018: a(n) = A002088(10^n) = Sum_{k <= 10^n} phi(k), sum of the Euler totients phi = A000010.

Offset 0, canonical program `A064018.P11561033386454225953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064018 (n : ℕ) : ℤ :=
  A064018.P11561033386454225953.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065339.P16341535631047481743

`val(A065338(n+1), 3)`
-/

namespace A065339.P16341535631047481743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065338 (n + 1)).toNat 3

end

end A065339.P16341535631047481743

noncomputable section

/-- A065339: Number of primes congruent to 3 modulo 4 dividing n (with multiplicity).

Offset 1, canonical program `A065339.P16341535631047481743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065339 (n : ℕ) : ℤ :=
  (A065339.P16341535631047481743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065372.P6024978409983988564

`A065371(A065371(n+1))`
-/

namespace A065372.P6024978409983988564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065371 (A065371 (n + 1)).toNat

end

end A065372.P6024978409983988564

noncomputable section

/-- A065372: a(n) = A065371(A065371(n)).

Offset 1, canonical program `A065372.P6024978409983988564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065372 (n : ℕ) : ℤ :=
  A065372.P6024978409983988564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065373.P8556550290844581984

`a(A065371(n+1)-1)+1` with `a(0)=0`
-/

namespace A065373.P8556550290844581984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A065371 (n + 1) - 1).toNat + 1

end

end A065373.P8556550290844581984

noncomputable section

/-- A065373: Number of iterations of A065371 starting at n until 1 is reached.

Offset 1, canonical program `A065373.P8556550290844581984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065373 (n : ℕ) : ℤ :=
  (A065373.P8556550290844581984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065451.P16611610133996272809

`A000045(Δ[A002088(abs(1-n))]%(n+1))`
-/

namespace A065451.P16611610133996272809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)).toNat

end

end A065451.P16611610133996272809

noncomputable section

/-- A065451: a(n) = Fibonacci(phi(n)), a(0) = 0.

Offset 0, canonical program `A065451.P16611610133996272809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A065451 (n : ℕ) : ℤ :=
  A065451.P16611610133996272809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A065451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066883.P4404931870158678379

`A062773(n+1)-A014688(n+1)`
-/

namespace A066883.P4404931870158678379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - A014688 (n + 1)

end

end A066883.P4404931870158678379

noncomputable section

/-- A066883: Number of primes in the interval [p(n), p(n)^2] minus p(n), where p(n) is the n-th prime.

Offset 1, canonical program `A066883.P4404931870158678379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A066883 (n : ℕ) : ℤ :=
  A066883.P4404931870158678379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A066883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070556.P9677675016793326689

`Δ[A002088(n)]-A010554(n+1)`
-/

namespace A070556.P9677675016793326689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010554 (n + 1)

end

end A070556.P9677675016793326689

noncomputable section

/-- A070556: a(n) = cototient(totient(n)).

Offset 1, canonical program `A070556.P9677675016793326689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070556 (n : ℕ) : ℤ :=
  A070556.P9677675016793326689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073464.P5660369968683149717

`Δ[A002088(n+1)]%A000720(n+2)`
-/

namespace A073464.P5660369968683149717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000720 (n + 2))

end

end A073464.P5660369968683149717

noncomputable section

/-- A073464: a(n) = phi(n) mod PrimePi(n).

Offset 2, canonical program `A073464.P5660369968683149717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073464 (n : ℕ) : ℤ :=
  A073464.P5660369968683149717.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078323.P5728057834281854607

`A003415(A078310(n+1))`
-/

namespace A078323.P5728057834281854607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A078310 (n + 1)).toNat

end

end A078323.P5728057834281854607

noncomputable section

/-- A078323: Arithmetic derivative of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078323.P5728057834281854607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078323 (n : ℕ) : ℤ :=
  A078323.P5728057834281854607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078334.P18056598420346971869

`A002088(A055201(n+1))+1`
-/

namespace A078334.P18056598420346971869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A055201 (n + 1)).toNat + 1

end

end A078334.P18056598420346971869

noncomputable section

/-- A078334: Primes in A005728, which counts the terms in the Farey sequence of order n.

Offset 1, canonical program `A078334.P18056598420346971869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5509 terms. -/
def A078334 (n : ℕ) : ℤ :=
  A078334.P18056598420346971869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5509 terms. -/
def A078334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078773.P15975746237100641970

`A182986(A070804(n+1)+1)`
-/

namespace A078773.P15975746237100641970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A070804 (n + 1) + 1).toNat

end

end A078773.P15975746237100641970

noncomputable section

/-- A078773: a(n) is the largest prime less than or equal to phi(n), a(1) = a(2) = 0.

Offset 1, canonical program `A078773.P15975746237100641970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078773 (n : ℕ) : ℤ :=
  A078773.P15975746237100641970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079047.P13319003001615767345

`A062773(n+1)-(n+2)`
-/

namespace A079047.P13319003001615767345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - (n + 2 : ℤ)

end

end A079047.P13319003001615767345

noncomputable section

/-- A079047: Number of primes between prime(n) and prime(n)^2.

Offset 1, canonical program `A079047.P13319003001615767345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A079047 (n : ℕ) : ℤ :=
  A079047.P13319003001615767345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A079047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081417.P14714034201535228560

`A000720(A007318(n))`
-/

namespace A081417.P14714034201535228560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007318 n).toNat

end

end A081417.P14714034201535228560

noncomputable section

/-- A081417: A000720 applied to Pascal-triangle: primepi(C(n,j)), j,0..n and n=0,1,2,...

Offset 0, canonical program `A081417.P14714034201535228560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081417 (n : ℕ) : ℤ :=
  A081417.P14714034201535228560.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083482.P15396705671682365926

`A019554(n+1)*A019554(n+2)`
-/

namespace A083482.P15396705671682365926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A019554 (n + 2)

end

end A083482.P15396705671682365926

noncomputable section

/-- A083482: Square root of smallest square of the type n(n+1)*k.

Offset 1, canonical program `A083482.P15396705671682365926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083482 (n : ℕ) : ℤ :=
  A083482.P15396705671682365926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087050.P4823809176212644711

`A019554(A084936(n+1))`
-/

namespace A087050.P4823809176212644711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A084936 (n + 1)).toNat

end

end A087050.P4823809176212644711

noncomputable section

/-- A087050: Square root of the largest square >1 dividing the n-th nonsquarefree number.

Offset 1, canonical program `A087050.P4823809176212644711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087050 (n : ℕ) : ℤ :=
  A087050.P4823809176212644711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088763.P5308986329971701716

`A087695(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088763.P5308986329971701716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087695 (n + 1) : ℚ) / 2

end

end A088763.P5308986329971701716

noncomputable section

/-- A088763: a(n) = A087695(n)/2.

Offset 1, canonical program `A088763.P5308986329971701716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088763.P5308986329971701716.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092059.P15242721470773266682

`p?[A092058(n+1)]`
-/

namespace A092059.P15242721470773266682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092059.P15242721470773266682

noncomputable section

/-- A092059: Primes in A092058.

Offset 0, canonical program `A092059.P15242721470773266682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A092059 (n : ℕ) : ℤ :=
  A092059.P15242721470773266682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A092059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096478.P11945316438027143335

`p?[A029707(n+1)]`
-/

namespace A096478.P11945316438027143335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096478.P11945316438027143335

noncomputable section

/-- A096478: a(n) = A000040(A096477(n)), i.e., prime(a(n)) and prime(a(n)+1) are twin primes.

Offset 1, canonical program `A096478.P11945316438027143335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6802 terms. -/
def A096478 (n : ℕ) : ℤ :=
  A096478.P11945316438027143335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6802 terms. -/
def A096478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098003.P10348797530336827391

`A004396(A064614(2*n+3)-1)`
-/

namespace A098003.P10348797530336827391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A064614 (2 * n + 3) - 1).toNat

end

end A098003.P10348797530336827391

noncomputable section

/-- A098003: Start with positive integers. On the m-th step, shift terms a(m+1) to a(2m-1) one position to the left, then move a(m) to position (2m-1). Sequence is limit of reordering.

Offset 1, canonical program `A098003.P10348797530336827391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A098003 (n : ℕ) : ℤ :=
  A098003.P10348797530336827391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A098003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098486.P15096063000832676447

`A064614(Δ[n²])`
-/

namespace A098486.P15096063000832676447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098486.P15096063000832676447

noncomputable section

/-- A098486: Odd numbers with replacement of all prime factors 3 by 2.

Offset 1, canonical program `A098486.P15096063000832676447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A098486 (n : ℕ) : ℤ :=
  A098486.P15096063000832676447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A098486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100449.P13498763257578754956

`1+4*A002088(n)`
-/

namespace A100449.P13498763257578754956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A002088 n

end

end A100449.P13498763257578754956

noncomputable section

/-- A100449: Number of ordered pairs (i,j) with |i| + |j| <= n and gcd(i,j) <= 1.

Offset 0, canonical program `A100449.P13498763257578754956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100449 (n : ℕ) : ℤ :=
  A100449.P13498763257578754956.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104010.P5743034670165287868

`2*A087695(n+1)`
-/

namespace A104010.P5743034670165287868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087695 (n + 1)

end

end A104010.P5743034670165287868

noncomputable section

/-- A104010: Sum of two successive sexy primes.

Offset 1, canonical program `A104010.P5743034670165287868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104010 (n : ℕ) : ℤ :=
  A104010.P5743034670165287868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104037.P1539951715812000058

`A168141(A087695(n+1))`
-/

namespace A104037.P1539951715812000058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (A087695 (n + 1)).toNat

end

end A104037.P1539951715812000058

noncomputable section

/-- A104037: Numbers of primes between two sexy primes.

Offset 1, canonical program `A104037.P1539951715812000058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 693 terms. -/
def A104037 (n : ℕ) : ℤ :=
  A104037.P1539951715812000058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 693 terms. -/
def A104037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104191.P16304961561341837722

`A002088(2^(n+1)-1)-A002088(2^n-1)`
-/

namespace A104191.P16304961561341837722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 ^ (n + 1) - 1) - A002088 (2 ^ n - 1)

end

end A104191.P16304961561341837722

noncomputable section

/-- A104191: Sum of Euler totient function between successive powers of two.

Offset 0, canonical program `A104191.P16304961561341837722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104191 (n : ℕ) : ℤ :=
  A104191.P16304961561341837722.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104461.P3569709191651872692

`A046081(Δ[A051349(n)])`
-/

namespace A104461.P3569709191651872692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (f1 (n + 1) - f1 n).toNat

end

end A104461.P3569709191651872692

noncomputable section

/-- A104461: Number of instances of nonprimes m in Pythagorean triples x,y,z such that x^2 + y^2 = z^2. Except for 1, the number of instances of composite numbers m in Pythagorean triples.

Offset 1, canonical program `A104461.P3569709191651872692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104461 (n : ℕ) : ℤ :=
  A104461.P3569709191651872692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105409.P4388041597487079286

`A029707(A242881(n+1))-1`
-/

namespace A105409.P4388041597487079286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (A242881 (n + 1)).toNat - 1

end

end A105409.P4388041597487079286

noncomputable section

/-- A105409: Numbers k such that prime(k)-2 and prime(k+2)-2 are both primes.

Offset 1, canonical program `A105409.P4388041597487079286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A105409 (n : ℕ) : ℤ :=
  A105409.P4388041597487079286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A105409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106483.P4961577248229509326

`A000040(A092058(n+1))`
-/

namespace A106483.P4961577248229509326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A092058 (n + 1)).toNat

end

end A106483.P4961577248229509326

noncomputable section

/-- A106483: Primes p such that 2*p^2 - 1 is also prime.

Offset 1, canonical program `A106483.P4961577248229509326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A106483 (n : ℕ) : ℤ :=
  A106483.P4961577248229509326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A106483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107770.P17401578179323890031

`A029707(n+1)+1`
-/

namespace A107770.P17401578179323890031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) + 1

end

end A107770.P17401578179323890031

noncomputable section

/-- A107770: Index of greater of twin primes in the primes.

Offset 1, canonical program `A107770.P17401578179323890031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107770 (n : ℕ) : ℤ :=
  A107770.P17401578179323890031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110663.P10056523750472709388

`A002088(A002024(n+1))-A002088(A002262(n))`
-/

namespace A110663.P10056523750472709388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A002024 (n + 1)).toNat - A002088 (A002262 n).toNat

end

end A110663.P10056523750472709388

noncomputable section

/-- A110663: Triangle read by rows: T(n,k) = Sum_{j=k..n} phi(j) (1<=k<=n), where phi is Euler's totient function.

Offset 1, canonical program `A110663.P10056523750472709388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110663 (n : ℕ) : ℤ :=
  A110663.P10056523750472709388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115063.P16993984617944221155

`eq[A034444(n+1), A318465(n+1)]+1`
-/

namespace A115063.P16993984617944221155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115063.P16993984617944221155

noncomputable section

/-- A115063: Natural numbers of the form p^F(n_p)*q^F(n_q)*r^F(n_r)*...*z^F(n_z), where p,q,r,... are distinct primes and F(n) is a Fibonacci number.

Offset 1, canonical program `A115063.P16993984617944221155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9446 terms. -/
def A115063 (n : ℕ) : ℤ :=
  (A115063.P16993984617944221155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9446 terms. -/
def A115063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117494.P9311759642922684203

`∑{d}[n+1, #*A143519((n+1)/#)]`
-/

namespace A117494.P9311759642922684203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P9311759642922684203

noncomputable section

/-- A117494: a(n) is the number of m's, 1 <= m <= n, where gcd(m,n) is prime.

Offset 1, canonical program `A117494.P9311759642922684203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117494 (n : ℕ) : ℤ :=
  A117494.P9311759642922684203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119677.P15587159543036332007

`4*(A036698(n)-n)`
-/

namespace A119677.P15587159543036332007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A036698 n - (n : ℤ))

end

end A119677.P15587159543036332007

noncomputable section

/-- A119677: a(n) is the number of complete squares that fit inside the circle with radius n, drawn on squared paper at (0, 0).

Offset 0, canonical program `A119677.P15587159543036332007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119677 (n : ℕ) : ℤ :=
  A119677.P15587159543036332007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120633.P2212876793466301077

`A120632(n+1)-A040976(n+2)`
-/

namespace A120633.P2212876793466301077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - A040976 (n + 2)

end

end A120633.P2212876793466301077

noncomputable section

/-- A120633: Number of composite numbers bounded inclusively between p(n+1) and 2*p(n) where p(x) is prime(x).

Offset 1, canonical program `A120633.P2212876793466301077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040976, A120632, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120633 (n : ℕ) : ℤ :=
  A120633.P2212876793466301077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040976, A120632, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127436.P14963163916458495622

`(A127435(n+1)-1)²+1`
-/

namespace A127436.P14963163916458495622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127435 (n + 1) - 1) ^ 2 + 1

end

end A127436.P14963163916458495622

noncomputable section

/-- A127436: Primes associated with A127435.

Offset 1, canonical program `A127436.P14963163916458495622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127435, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127436 (n : ℕ) : ℤ :=
  A127436.P14963163916458495622.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127435, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140466.P2617124052483112329

`4*A002088(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140466.P2617124052483112329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002088 n

end

end A140466.P2617124052483112329

noncomputable section

/-- A140466: a(n) = 4*A002088(n).

Offset 0, canonical program `A140466.P2617124052483112329`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140466 (n : ℕ) : ℤ :=
  A140466.P2617124052483112329.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140706.P6727605883007889005

`A143519(n+1)+Δ[A002088(n)]`
-/

namespace A140706.P6727605883007889005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1) + (f1 (n + 1) - f1 n)

end

end A140706.P6727605883007889005

noncomputable section

/-- A140706: A054525 * A014683; a(n) = Sum_{d|n} mu(d)*A014683(n/d).

Offset 1, canonical program `A140706.P6727605883007889005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140706 (n : ℕ) : ℤ :=
  A140706.P6727605883007889005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140887.P4805063022566980461

`(8-A098592(n))*a(A007706(n))` with `a(0)=1`
-/

namespace A140887.P4805063022566980461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a (A007706 n).toNat

end

end A140887.P4805063022566980461

noncomputable section

/-- A140887: Number of nonprimes in [30n - 30, 30n] coprime to 30.

Offset 1, canonical program `A140887.P4805063022566980461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140887 (n : ℕ) : ℤ :=
  A140887.P4805063022566980461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143231.P9799552390902521564

`Δ[A002088(n)]*A002088(n+1)`
-/

namespace A143231.P9799552390902521564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002088 (n + 1)

end

end A143231.P9799552390902521564

noncomputable section

/-- A143231: a(n) = A000010(n) * A002088(n).

Offset 1, canonical program `A143231.P9799552390902521564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143231 (n : ℕ) : ℤ :=
  A143231.P9799552390902521564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000592.P15353079189797970692

`A224212(A001481(n+1))`
-/

namespace A000592.P15353079189797970692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (A001481 (n + 1)).toNat

end

end A000592.P15353079189797970692

noncomputable section

/-- A000592: Number of nonnegative solutions of x^2 + y^2 = z in first n shells.

Offset 0, canonical program `A000592.P15353079189797970692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. -/
def A000592 (n : ℕ) : ℤ :=
  A000592.P15353079189797970692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. -/
def A000592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000603.P17854986445594045637

`A036698(n)+1+n`
-/

namespace A000603.P17854986445594045637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n + 1 + (n : ℤ)

end

end A000603.P17854986445594045637

noncomputable section

/-- A000603: Number of nonnegative solutions to x^2 + y^2 <= n^2.

Offset 0, canonical program `A000603.P17854986445594045637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000603 (n : ℕ) : ℤ :=
  A000603.P17854986445594045637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001037.P3072020637183991904

`A045664(n)/A253909(n)`
-/

namespace A001037.P3072020637183991904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045664 n : ℚ) / (A253909 n : ℚ)

end

end A001037.P3072020637183991904

noncomputable section

/-- A001037: Number of degree-n irreducible polynomials over GF(2); number of n-bead necklaces with beads of 2 colors when turning over is not allowed and with primitive period n; number of binary Lyndon words of length n.

Offset 0, canonical program `A001037.P3072020637183991904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A001037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001037.P3072020637183991904.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A001037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005524.P6132441036754086361

`floor((sqrt(A246655(n+1))+1)²/2)`
-/

namespace A005524.P6132441036754086361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A246655 (n + 1) : ℝ) + 1) ^ 2 / 2⌋

end

end A005524.P6132441036754086361

noncomputable section

/-- A005524: Values k arising from a construction of Hirschfeld of k-arcs on elliptic curves over GF(q), where q = A246655(n) is the n-th prime power > 1.

Offset 1, canonical program `A005524.P6132441036754086361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005524 (n : ℕ) : ℤ :=
  A005524.P6132441036754086361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008914.P8241371107922137073

`A037248(A246655(n+1))`
-/

namespace A008914.P8241371107922137073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037248 (A246655 (n + 1)).toNat

end

end A008914.P8241371107922137073

noncomputable section

/-- A008914: Order of simple Chevalley group G_2 (q), q = prime power.

Offset 1, canonical program `A008914.P8241371107922137073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A008914 (n : ℕ) : ℤ :=
  A008914.P8241371107922137073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A008914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009070.P3709477787699467726

`∑[char[∑[A046081(n+1)]]]+2`
-/

namespace A009070.P3709477787699467726
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A009070.P3709477787699467726

noncomputable section

/-- A009070: Ordered sides of Pythagorean triangles.

Offset 1, canonical program `A009070.P3709477787699467726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009070 (n : ℕ) : ℤ :=
  (A009070.P3709477787699467726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018892.P2663619502702791578

`A063647(n+1)+1`
-/

namespace A018892.P2663619502702791578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + 1

end

end A018892.P2663619502702791578

noncomputable section

/-- A018892: Number of ways to write 1/n as a sum of exactly 2 unit fractions.

Offset 1, canonical program `A018892.P2663619502702791578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018892 (n : ℕ) : ℤ :=
  A018892.P2663619502702791578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026234.P1482690558561075150

`A022797(A026233(n+1))-(n+1)`
-/

namespace A026234.P1482690558561075150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (A026233 (n + 1)).toNat - (n + 1 : ℤ)

end

end A026234.P1482690558561075150

noncomputable section

/-- A026234: In the sequence of positive integers, swap the k-th prime and k-th nonprime, for k = 1,2,3,...

Offset 1, canonical program `A026234.P1482690558561075150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026234 (n : ℕ) : ℤ :=
  A026234.P1482690558561075150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034968.P11463317321541393924

`A099563(n)+a(A257687(n))` with `a(0)=0, a(1)=1`
-/

namespace A034968.P11463317321541393924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A099563 n + a (A257687 n).toNat

end

end A034968.P11463317321541393924

noncomputable section

/-- A034968: Minimal number of factorials that add to n.

Offset 0, canonical program `A034968.P11463317321541393924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A257687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034968 (n : ℕ) : ℤ :=
  A034968.P11463317321541393924.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A257687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036695.P3115726908508133400

`ceil(A000328(n)/2+n)`
-/

namespace A036695.P3115726908508133400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000328 n : ℚ) / 2 + (n : ℚ)⌉

end

end A036695.P3115726908508133400

noncomputable section

/-- A036695: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n, b>=0.

Offset 0, canonical program `A036695.P3115726908508133400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036695 (n : ℕ) : ℤ :=
  A036695.P3115726908508133400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036711.P14920642788416913369

`floor(A036704(n)/4)`
-/

namespace A036711.P14920642788416913369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036704 n : ℚ) / 4⌋

end

end A036711.P14920642788416913369

noncomputable section

/-- A036711: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>0, b>=0.

Offset 0, canonical program `A036711.P14920642788416913369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8470 terms. -/
def A036711 (n : ℕ) : ℤ :=
  A036711.P14920642788416913369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8470 terms. -/
def A036711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043297.P1803761097073732209

`p?[A119480(n+1)]`
-/

namespace A043297.P1803761097073732209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A043297.P1803761097073732209

noncomputable section

/-- A043297: Primes p such that B(4*p) has denominator 30 where B(2n) are the Bernoulli numbers.

Offset 1, canonical program `A043297.P1803761097073732209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043297 (n : ℕ) : ℤ :=
  A043297.P1803761097073732209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048149.P13644197507021324335

`A224212(A048147(n))`
-/

namespace A048149.P13644197507021324335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (A048147 n).toNat

end

end A048149.P13644197507021324335

noncomputable section

/-- A048149: Array T read by diagonals: T(i,j) = number of pairs (h,k) with h^2+k^2 <= i^2+j^2, h>=0, k >= 0.

Offset 0, canonical program `A048149.P13644197507021324335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A048149 (n : ℕ) : ℤ :=
  A048149.P13644197507021324335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A048149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048570.P17125824842376526747

`A000005(A007318(n))`
-/

namespace A048570.P17125824842376526747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007318 n).toNat

end

end A048570.P17125824842376526747

noncomputable section

/-- A048570: Triangle T(n,k) = number of divisors of binomial(n,k).

Offset 0, canonical program `A048570.P17125824842376526747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048570 (n : ℕ) : ℤ :=
  A048570.P17125824842376526747.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049501.P2511382539437314283

`A049502(A145341(n+1))`
-/

namespace A049501.P2511382539437314283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A145341 (n + 1)).toNat

end

end A049501.P2511382539437314283

noncomputable section

/-- A049501: Major index of n, first definition.

Offset 0, canonical program `A049501.P2511382539437314283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A049501 (n : ℕ) : ℤ :=
  A049501.P2511382539437314283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A049501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050462.P11134913657141062416

`A050471(n+1)+A050466(n+1)`
-/

namespace A050462.P11134913657141062416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050471 (n + 1) + A050466 (n + 1)

end

end A050462.P11134913657141062416

noncomputable section

/-- A050462: a(n) = Sum_{d|n, n/d=1 mod 4} d^3.

Offset 1, canonical program `A050462.P11134913657141062416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050466, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050462 (n : ℕ) : ℤ :=
  A050462.P11134913657141062416.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050466, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051225.P4105070610435366321

`2*A119480(n+1)`
-/

namespace A051225.P4105070610435366321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119480 (n + 1)

end

end A051225.P4105070610435366321

noncomputable section

/-- A051225: Numbers m such that the Bernoulli number B_{2*m} has denominator 30.

Offset 1, canonical program `A051225.P4105070610435366321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A051225 (n : ℕ) : ℤ :=
  A051225.P4105070610435366321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A051225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057129.P2974831021615174290

`eq[gcd(8, n+1), A065338(n+1)]+1`
-/

namespace A057129.P2974831021615174290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057129.P2974831021615174290

noncomputable section

/-- A057129: -4 is a square mod n.

Offset 1, canonical program `A057129.P2974831021615174290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2074 terms. -/
def A057129 (n : ℕ) : ℤ :=
  (A057129.P2974831021615174290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2074 terms. -/
def A057129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058515.P4885720504449838139

`gcd(Δ[A002088(n)], A000010(n+2))`
-/

namespace A058515.P4885720504449838139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000010 (n + 2))

end

end A058515.P4885720504449838139

noncomputable section

/-- A058515: GCD of totients of consecutive integers.

Offset 1, canonical program `A058515.P4885720504449838139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058515 (n : ℕ) : ℤ :=
  (A058515.P4885720504449838139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060130.P13983426075283678403

`1+a(A257687(n))` with `a(0)=0`
-/

namespace A060130.P13983426075283678403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A257687 n).toNat

end

end A060130.P13983426075283678403

noncomputable section

/-- A060130: Number of nonzero digits in factorial base representation (A007623) of n; minimum number of transpositions needed to compose each permutation in the lists A060117 & A060118.

Offset 0, canonical program `A060130.P13983426075283678403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060130 (n : ℕ) : ℤ :=
  (A060130.P13983426075283678403.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063725.P12741089044414848106

`Δ[A237526(abs(1-n))]`
-/

namespace A063725.P12741089044414848106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063725.P12741089044414848106

noncomputable section

/-- A063725: Number of ordered pairs (x,y) of positive integers such that x^2 + y^2 = n.

Offset 0, canonical program `A063725.P12741089044414848106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063725 (n : ℕ) : ℤ :=
  A063725.P12741089044414848106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064710.P18009114973468891681

`∩[A006532(n+1), A048943(n+1)]`
-/

namespace A064710.P18009114973468891681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064710.P18009114973468891681

noncomputable section

/-- A064710: Numbers k such that the sum of divisors of k and the product of divisors of k are both perfect squares.

Offset 1, canonical program `A064710.P18009114973468891681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A064710 (n : ℕ) : ℤ :=
  (A064710.P18009114973468891681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A064710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064767.P3059737301395273929

`Δ[A002088(n)]*A011785(n+1)`
-/

namespace A064767.P3059737301395273929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011785 (n + 1)

end

end A064767.P3059737301395273929

noncomputable section

/-- A064767: Order of automorphism group of the group C_n X C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A064767.P3059737301395273929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064767 (n : ℕ) : ℤ :=
  A064767.P3059737301395273929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067831.P7446926115698763501

`A172988(n+1)+A000038(n)`
-/

namespace A067831.P7446926115698763501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1) + A000038 n

end

end A067831.P7446926115698763501

noncomputable section

/-- A067831: Primes p such that sigma(p-6) < p.

Offset 1, canonical program `A067831.P7446926115698763501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067831 (n : ℕ) : ℤ :=
  A067831.P7446926115698763501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068581.P4641258875104326582

`eq[A000005(n+1), A049100(n+1)]+1`
-/

namespace A068581.P4641258875104326582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068581.P4641258875104326582

noncomputable section

/-- A068581: Let phi_m(x) = phi(phi(...(phi(x))...)) m times; sequence gives values of k such that phi_4(k) = tau(k).

Offset 1, canonical program `A068581.P4641258875104326582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A068581 (n : ℕ) : ℤ :=
  (A068581.P4641258875104326582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A068581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069546.P4827855718774494868

`∑{d}[n+1, A065764(#)*A358346((n+1)/#)]`
-/

namespace A069546.P4827855718774494868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065764 d * A358346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069546.P4827855718774494868

noncomputable section

/-- A069546: a(n) = Sum_{d|n} sigma(n*d).

Offset 1, canonical program `A069546.P4827855718774494868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069546 (n : ℕ) : ℤ :=
  A069546.P4827855718774494868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071186.P1213708103561543319

`eq[2, A000005(A022457(n+1))]+1`
-/

namespace A071186.P1213708103561543319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022457 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071186.P1213708103561543319

noncomputable section

/-- A071186: Numbers k such that prime(2*k)-2*prime(k) is prime.

Offset 1, canonical program `A071186.P1213708103561543319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A071186 (n : ℕ) : ℤ :=
  (A071186.P1213708103561543319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A071186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071562.P15566010243578516595

`eq[1, A347950(n+1)]+1`
-/

namespace A071562.P15566010243578516595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071562.P15566010243578516595

noncomputable section

/-- A071562: Numbers n such that the sum of the middle divisors of n (A071090) is not zero.

Offset 1, canonical program `A071562.P15566010243578516595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071562 (n : ℕ) : ℤ :=
  (A071562.P15566010243578516595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072209.P5251402996353045043

`A000010(A000010(A033948(n+1)))`
-/

namespace A072209.P5251402996353045043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A033948 (n + 1)).toNat).toNat

end

end A072209.P5251402996353045043

noncomputable section

/-- A072209: Number of primitive roots of those integers with at least one primitive root.

Offset 1, canonical program `A072209.P5251402996353045043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072209 (n : ℕ) : ℤ :=
  A072209.P5251402996353045043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072438.P8372132607125939071

`∏{d}[n+1, A392055(#)]`
-/

namespace A072438.P8372132607125939071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A392055 d

end

end A072438.P8372132607125939071

noncomputable section

/-- A072438: Remove prime factors of form 4*k+1.

Offset 1, canonical program `A072438.P8372132607125939071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072438 (n : ℕ) : ℤ :=
  A072438.P8372132607125939071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072589.P6703439860602350751

`∩[A072566(n+1), A072585(n+1)]`
-/

namespace A072589.P6703439860602350751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072589.P6703439860602350751

noncomputable section

/-- A072589: n, phi(n) and sigma(n) end with the same digit.

Offset 1, canonical program `A072589.P6703439860602350751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A072589 (n : ℕ) : ℤ :=
  (A072589.P6703439860602350751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A072589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076520.P2365901369714295993

`comp[A237526(n)+n]-n`
-/

namespace A076520.P2365901369714295993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A076520.P2365901369714295993

noncomputable section

/-- A076520: n appears once if n is the sum of 2 nonzero squares in 1 way, twice if n is the sum of 2 squares in 2 ways, 3 times if n is the sum of 2 squares 3 ways etc.

Offset 1, canonical program `A076520.P2365901369714295993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. -/
def A076520 (n : ℕ) : ℤ :=
  A076520.P2365901369714295993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. -/
def A076520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076953.P18252334485820112232

`A000010(A003990(n+1))*A051953(A003989(n+1))`
-/

namespace A076953.P18252334485820112232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003990 (n + 1)).toNat * A051953 (A003989 (n + 1)).toNat

end

end A076953.P18252334485820112232

noncomputable section

/-- A076953: Array T(m,n) = phi(mn)-phi(m)phi(n) (m,n >= 1), read by antidiagonals.

Offset 1, canonical program `A076953.P18252334485820112232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076953 (n : ℕ) : ℤ :=
  A076953.P18252334485820112232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077770.P15877172202221039210

`Δ[A000328(n)-A349538(n)]`
-/

namespace A077770.P15877172202221039210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A349538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077770.P15877172202221039210

noncomputable section

/-- A077770: Number of ordered pairs of integers (x,y) with n^2 < x^2 + y^2 < (n+1)^2; number of lattice points between circles of radii n and n+1.

Offset 0, canonical program `A077770.P15877172202221039210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2475 terms. -/
def A077770 (n : ℕ) : ℤ :=
  A077770.P15877172202221039210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2475 terms. -/
def A077770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083647.P13520631719973171400

`a(A061395(4*record[A000010(n+1)])-1)+1` with `a(0)=0`
-/

namespace A083647.P13520631719973171400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A061395 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1).toNat + 1

end

end A083647.P13520631719973171400

noncomputable section

/-- A083647: For primes p: Number of steps to reach 2 when iterating f(p) = greatest prime divisor of p-1.

Offset 1, canonical program `A083647.P13520631719973171400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A083647 (n : ℕ) : ℤ :=
  (A083647.P13520631719973171400.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A083647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089048.P16381130476308871988

`A151774(n)+char[A151757(n+1)]`
-/

namespace A089048.P16381130476308871988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089048.P16381130476308871988

noncomputable section

/-- A089048: Number of ways of writing n as a sum of exactly 3 powers of 2.

Offset 0, canonical program `A089048.P16381130476308871988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089048 (n : ℕ) : ℤ :=
  A089048.P16381130476308871988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099301.P14401203387381183199

`A003415(A000005(n+1))`
-/

namespace A099301.P14401203387381183199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000005 (n + 1)).toNat

end

end A099301.P14401203387381183199

noncomputable section

/-- A099301: Arithmetic derivative of d(n), the number of divisors of n.

Offset 1, canonical program `A099301.P14401203387381183199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099301 (n : ℕ) : ℤ :=
  A099301.P14401203387381183199.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099310.P8040982866439105394

`A003415(A000010(n+1))`
-/

namespace A099310.P8040982866439105394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000010 (n + 1)).toNat

end

end A099310.P8040982866439105394

noncomputable section

/-- A099310: Arithmetic derivative of Euler's totient function phi(n).

Offset 1, canonical program `A099310.P8040982866439105394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099310 (n : ℕ) : ℤ :=
  A099310.P8040982866439105394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099836.P12712774098873545659

`record[A246655(n+1)-A027656(n)]`
-/

namespace A099836.P12712774098873545659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P12712774098873545659

noncomputable section

/-- A099836: Bisection of A000961.

Offset 0, canonical program `A099836.P12712774098873545659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A099836 (n : ℕ) : ℤ :=
  A099836.P12712774098873545659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A099836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102715.P2461241469822846268

`A000010(A007318(n))`
-/

namespace A102715.P2461241469822846268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007318 n).toNat

end

end A102715.P2461241469822846268

noncomputable section

/-- A102715: Triangle read by rows: T(n,k) is phi(binomial(n,k)), where phi is Euler's totient function (0 <= k <= n).

Offset 0, canonical program `A102715.P2461241469822846268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A102715 (n : ℕ) : ℤ :=
  A102715.P2461241469822846268.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A102715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106716.P4178359605159609072

`∩[A106714(n+1), A151800(A106714(n+1))]`
-/

namespace A106716.P4178359605159609072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A106714 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106716.P4178359605159609072

noncomputable section

/-- A106716: Largest of four consecutive primes whose sum of digits is prime.

Offset 1, canonical program `A106716.P4178359605159609072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A106716 (n : ℕ) : ℤ :=
  (A106716.P4178359605159609072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A106716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108918.P4680511258930153550

`A339451(A055938(n+1)-1)`
-/

namespace A108918.P4680511258930153550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (A055938 (n + 1) - 1).toNat

end

end A108918.P4680511258930153550

noncomputable section

/-- A108918: Reversed binary words in reversed lexicographic order.

Offset 1, canonical program `A108918.P4680511258930153550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A108918 (n : ℕ) : ℤ :=
  A108918.P4680511258930153550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A108918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113544.P4237946756288578196

`∩[A113543(n+1), A113545(n+1)]`
-/

namespace A113544.P4237946756288578196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113544.P4237946756288578196

noncomputable section

/-- A113544: Numbers simultaneously pentagon-free, squarefree and triangle-free.

Offset 1, canonical program `A113544.P4237946756288578196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 750 terms. -/
def A113544 (n : ℕ) : ℤ :=
  (A113544.P4237946756288578196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 750 terms. -/
def A113544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115304.P7652751646611142296

`A059894(xor(A030301(n+1), A059893(n+1)))`
-/

namespace A115304.P7652751646611142296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (Int.xor (A030301 (n + 1)) (A059893 (n + 1))).toNat

end

end A115304.P7652751646611142296

noncomputable section

/-- A115304: a(n) = n if n < 4, otherwise 4*a(floor(n/4)) + 3 - n mod 4.

Offset 1, canonical program `A115304.P7652751646611142296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A115304 (n : ℕ) : ℤ :=
  A115304.P7652751646611142296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A115304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116621.P17537140939685314663

`eq[n, n*A116609(n+1)]+1`
-/

namespace A116621.P17537140939685314663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116621.P17537140939685314663

noncomputable section

/-- A116621: Positive integers n such that 13^n == 1 (mod n).

Offset 1, canonical program `A116621.P17537140939685314663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A116621 (n : ℕ) : ℤ :=
  (A116621.P17537140939685314663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A116621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117656.P11004913678404553061

`A055653(A019554(n+1))*A337101(2*(n+1))`
-/

namespace A117656.P11004913678404553061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A019554 (n + 1)).toNat * A337101 (2 * (n + 1))

end

end A117656.P11004913678404553061

noncomputable section

/-- A117656: Number of solutions to x^(k+2)=x^2 mod n for some k>=1.

Offset 1, canonical program `A117656.P11004913678404553061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656 (n : ℕ) : ℤ :=
  A117656.P11004913678404553061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123324.P6293013150715471247

`∑[A123323(n+1)]`
-/

namespace A123324.P6293013150715471247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P6293013150715471247

noncomputable section

/-- A123324: Number of integer-sided triangles with all sides <= n and sides relatively prime.

Offset 1, canonical program `A123324.P6293013150715471247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123324 (n : ℕ) : ℤ :=
  A123324.P6293013150715471247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129297.P6596998359982084627

`eq[A000010(A166597(n)), A063919(n+1)]`
-/

namespace A129297.P6596998359982084627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A166597 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P6596998359982084627

noncomputable section

/-- A129297: Nonnegative integers m such that m^2-1 has no divisors d with 1

Offset 1, canonical program `A129297.P6596998359982084627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A129297 (n : ℕ) : ℤ :=
  (A129297.P6596998359982084627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A129297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129594.P11313350707503755659

`A165199(A056539(n))`
-/

namespace A129594.P11313350707503755659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A056539 n).toNat

end

end A129594.P11313350707503755659

noncomputable section

/-- A129594: Involution of nonnegative integers induced by the conjugation of the partition encoded in the run lengths of binary expansion of n.

Offset 0, canonical program `A129594.P11313350707503755659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A129594 (n : ℕ) : ℤ :=
  A129594.P11313350707503755659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A129594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136484.P14615466940963320552

`floor(A036704(n)/4-n)`
-/

namespace A136484.P14615466940963320552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036704 n : ℚ) / 4 - (n : ℚ)⌋

end

end A136484.P14615466940963320552

noncomputable section

/-- A136484: Number of unit square lattice cells inside quadrant of origin centered circle of diameter 2n+1.

Offset 0, canonical program `A136484.P14615466940963320552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136484 (n : ℕ) : ℤ :=
  A136484.P14615466940963320552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137595.P2754032097385745944

`eq[A006257(n), A109613(A056539(n))]`
-/

namespace A137595.P2754032097385745944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A056539 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137595.P2754032097385745944

noncomputable section

/-- A137595: Integers k such that the run lengths of identical digits in their binary expansion are palindromic after the rightmost bit is duplicated.

Offset 1, canonical program `A137595.P2754032097385745944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A137595 (n : ℕ) : ℤ :=
  (A137595.P2754032097385745944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A137595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000028.P8857618948248108747

`lt[A064179(n+1), 0]+1`
-/

namespace A000028.P8857618948248108747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000028.P8857618948248108747

noncomputable section

/-- A000028: Let k = p_1^e_1 p_2^e_2 p_3^e_3 ... be the prime factorization of n. Sequence gives k such that the sum of the numbers of 1's in the binary expansions of e_1, e_2, e_3, ... is odd.

Offset 1, canonical program `A000028.P8857618948248108747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000028 (n : ℕ) : ℤ :=
  (A000028.P8857618948248108747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000379.P2146762870191125064

`eq[1, A064179(n+1)]+1`
-/

namespace A000379.P2146762870191125064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000379.P2146762870191125064

noncomputable section

/-- A000379: Numbers where total number of 1-bits in the exponents of their prime factorization is even; a 2-way classification of integers: complement of A000028.

Offset 1, canonical program `A000379.P2146762870191125064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000379 (n : ℕ) : ℤ :=
  (A000379.P2146762870191125064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006450.P475178086014178769

`A302493(A024620(n+1))`
-/

namespace A006450.P475178086014178769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302493 (A024620 (n + 1)).toNat

end

end A006450.P475178086014178769

noncomputable section

/-- A006450: Prime-indexed primes: primes with prime subscripts.

Offset 1, canonical program `A006450.P475178086014178769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A006450 (n : ℕ) : ℤ :=
  A006450.P475178086014178769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A006450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006872.P9526046772509008616

`record[(n+1)*A353637(n+1)]`
-/

namespace A006872.P9526046772509008616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006872.P9526046772509008616

noncomputable section

/-- A006872: Numbers k such that phi(k) = phi(sigma(k)).

Offset 1, canonical program `A006872.P9526046772509008616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A006872 (n : ℕ) : ℤ :=
  A006872.P9526046772509008616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A006872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015627.P6012177256396085323

`A015622(n+2)-∑[A161680(n)]`
-/

namespace A015627.P6012177256396085323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015627.P6012177256396085323

noncomputable section

/-- A015627: Quadruples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015627.P6012177256396085323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627 (n : ℕ) : ℤ :=
  A015627.P6012177256396085323.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015640.P16174645672135619219

`∑[A346761(n+1)]-A015622(n+1)`
-/

namespace A015640.P16174645672135619219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015622 (n + 1)

end

end A015640.P16174645672135619219

noncomputable section

/-- A015640: Number of 5-tuples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015640.P16174645672135619219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640 (n : ℕ) : ℤ :=
  A015640.P16174645672135619219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015706.P8597406683241207243

`A011775(eq[1, A011775(n+1)%2]+1)`
-/

namespace A015706.P8597406683241207243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011775 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015706.P8597406683241207243

noncomputable section

/-- A015706: Odd numbers k that divide phi(k)*sigma(k).

Offset 1, canonical program `A015706.P8597406683241207243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. -/
def A015706 (n : ℕ) : ℤ :=
  A015706.P8597406683241207243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. -/
def A015706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028572.P14327433802400248636

`(2-A130731(n))*A129438(n)`
-/

namespace A028572.P14327433802400248636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130731 n) * A129438 n

end

end A028572.P14327433802400248636

noncomputable section

/-- A028572: Expansion of theta_3(z)*theta_3(2z) + theta_2(z)*theta_2(2z) in powers of q^(1/4).

Offset 0, canonical program `A028572.P14327433802400248636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028572 (n : ℕ) : ℤ :=
  A028572.P14327433802400248636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045547.P2896272397358188517

`eq[2, A008904(n)]`
-/

namespace A045547.P2896272397358188517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045547.P2896272397358188517

noncomputable section

/-- A045547: Numbers whose factorial has '2' as its final nonzero digit.

Offset 1, canonical program `A045547.P2896272397358188517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A045547 (n : ℕ) : ℤ :=
  (A045547.P2896272397358188517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A045547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045549.P13883420047111945995

`eq[6, A008904(n)]`
-/

namespace A045549.P13883420047111945995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045549.P13883420047111945995

noncomputable section

/-- A045549: Numbers whose factorial has '6' as its final nonzero digit.

Offset 1, canonical program `A045549.P13883420047111945995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A045549 (n : ℕ) : ℤ :=
  (A045549.P13883420047111945995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A045549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045550.P10362698429326084456

`lt[6, A008904(n)]`
-/

namespace A045550.P10362698429326084456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045550.P10362698429326084456

noncomputable section

/-- A045550: Numbers whose factorial has '8' as its final nonzero digit.

Offset 1, canonical program `A045550.P10362698429326084456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A045550 (n : ℕ) : ℤ :=
  (A045550.P10362698429326084456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A045550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048751.P4042417737620018600

`A120736(n+3)`
-/

namespace A048751.P4042417737620018600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 3)

end

end A048751.P4042417737620018600

noncomputable section

/-- A048751: Composites k whose product of divisors divided by number of divisors is an integer.

Offset 1, canonical program `A048751.P4042417737620018600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A048751 (n : ℕ) : ℤ :=
  A048751.P4042417737620018600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A048751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049585.P15303328923356932988

`eq[A003415(A097605(2*n+5)), A003415(n)]`
-/

namespace A049585.P15303328923356932988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A097605 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049585.P15303328923356932988

noncomputable section

/-- A049585: Primes p such that x^53 = 2 has a solution mod p.

Offset 1, canonical program `A049585.P15303328923356932988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A049585 (n : ℕ) : ℤ :=
  (A049585.P15303328923356932988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A049585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049744.P13630164365312870052

`A333167(n)+A000328(n)`
-/

namespace A049744.P13630164365312870052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n + A000328 n

end

end A049744.P13630164365312870052

noncomputable section

/-- A049744: a(n)=T(n,1), array T as in A049735.

Offset 0, canonical program `A049744.P13630164365312870052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049744 (n : ℕ) : ℤ :=
  A049744.P13630164365312870052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050800.P2900740559299843920

`1+A050796(n+1)²`
-/

namespace A050800.P2900740559299843920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A050796 (n + 1) ^ 2

end

end A050800.P2900740559299843920

noncomputable section

/-- A050800: Values of n^2 + 1 resulting from A050796.

Offset 1, canonical program `A050800.P2900740559299843920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050800 (n : ℕ) : ℤ :=
  A050800.P2900740559299843920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053288.P14678721657390311688

`A155559(n)-A092589(n)`
-/

namespace A053288.P14678721657390311688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - A092589 n

end

end A053288.P14678721657390311688

noncomputable section

/-- A053288: Cototient of 2^n - 1.

Offset 1, canonical program `A053288.P14678721657390311688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A053288 (n : ℕ) : ℤ :=
  A053288.P14678721657390311688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A053288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054841.P9974101703667219502

`∑{d}[n+1, A276379(A014963(#))]`
-/

namespace A054841.P9974101703667219502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276379 (A014963 d).toNat

end

end A054841.P9974101703667219502

noncomputable section

/-- A054841: If n = 2^a * 3^b * 5^c * 7^d * ... then a(n) = a + 10 * b + 100 * c + 1000 * d + ... .

Offset 1, canonical program `A054841.P9974101703667219502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A054841 (n : ℕ) : ℤ :=
  A054841.P9974101703667219502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A054841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060373.P1941735290763042490

`A060372(n)-n`
-/

namespace A060373.P1941735290763042490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - (n : ℤ)

end

end A060373.P1941735290763042490

noncomputable section

/-- A060373: q(n), negative part of n when n=p(n)-q(n) with p(n), q(n), p(n)+q(n) in A005836, integers written without 2 in base 3.

Offset 0, canonical program `A060373.P1941735290763042490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060373 (n : ℕ) : ℤ :=
  A060373.P1941735290763042490.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063752.P3558507756577169673

`eq[1, A325321(n+1)]+1`
-/

namespace A063752.P3558507756577169673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063752.P3558507756577169673

noncomputable section

/-- A063752: Numbers k such that cototient(k) is a square.

Offset 1, canonical program `A063752.P3558507756577169673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5581 terms. -/
def A063752 (n : ℕ) : ℤ :=
  (A063752.P3558507756577169673.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5581 terms. -/
def A063752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065388.P11226850039941885690

`record[A051709(n+1)+2*(n+1)]`
-/

namespace A065388.P11226850039941885690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P11226850039941885690

noncomputable section

/-- A065388: Record values for sigma(m) + phi(m): sum of sigma and totient is larger than for any previous number.

Offset 1, canonical program `A065388.P11226850039941885690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A065388 (n : ℕ) : ℤ :=
  A065388.P11226850039941885690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A065388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066519.P9115414614718271380

`abs(Δ[A190276(abs(1-n)+1)])`
-/

namespace A066519.P9115414614718271380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066519.P9115414614718271380

noncomputable section

/-- A066519: Gaps between successive numbers with an anti-divisor class sum of zero.

Offset 1, canonical program `A066519.P9115414614718271380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066519 (n : ℕ) : ℤ :=
  A066519.P9115414614718271380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070008.P12707018012675743666

`record[A078174(n+1)/A087207(A351847(n+1))]`
-/

namespace A070008.P12707018012675743666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078174 (n + 1) : ℚ) / (A087207 (A351847 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070008.P12707018012675743666

noncomputable section

/-- A070008: Arithmetic mean of distinct primes dividing n is a power of 2 (powers of 2 are not left out).

Offset 1, canonical program `A070008.P12707018012675743666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A070008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070008.P12707018012675743666.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A070008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070943.P14364430333234565674

`A000252(n+1)*A062354(n+1)`
-/

namespace A070943.P14364430333234565674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1) * A062354 (n + 1)

end

end A070943.P14364430333234565674

noncomputable section

/-- A070943: Commuting elements: number of ordered pairs g, h in the group GL(2,Z_n) such that gh = hg.

Offset 1, canonical program `A070943.P14364430333234565674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070943 (n : ℕ) : ℤ :=
  A070943.P14364430333234565674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076241.P12636829170902356370

`A302493(A024620(n+1))%(n+1)`
-/

namespace A076241.P12636829170902356370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302493 (A024620 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076241.P12636829170902356370

noncomputable section

/-- A076241: Remainder when 2nd order prime pp(n)=A006450(n) is divided by n.

Offset 1, canonical program `A076241.P12636829170902356370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A076241 (n : ℕ) : ℤ :=
  A076241.P12636829170902356370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A076241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077064.P16565391587089475239

`A039787(n+1)-1`
-/

namespace A077064.P16565391587089475239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) - 1

end

end A077064.P16565391587089475239

noncomputable section

/-- A077064: Squarefree numbers of form prime - 1.

Offset 1, canonical program `A077064.P16565391587089475239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077064 (n : ℕ) : ℤ :=
  A077064.P16565391587089475239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077088.P11718412499203878740

`∑{d}[2*A001065(n+1)-A051709(n+1), A007431(#)]`
-/

namespace A077088.P11718412499203878740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A051709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A077088.P11718412499203878740

noncomputable section

/-- A077088: a(n) = phi(sigma(n) - phi(n)), where phi is Euler's totient function and sigma is the sum of divisors function, with a(1) = 0.

Offset 1, canonical program `A077088.P11718412499203878740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A077088 (n : ℕ) : ℤ :=
  A077088.P11718412499203878740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A077088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079540.P3773335379213122735

`A345892(n+1)-(A094181(n+1)+A000203(n+1))`
-/

namespace A079540.P3773335379213122735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345892 (n + 1) - (A094181 (n + 1) + A000203 (n + 1))

end

end A079540.P3773335379213122735

noncomputable section

/-- A079540: a(n) = phi(n) + d(n)*(n - phi(n)) - sigma(n).

Offset 1, canonical program `A079540.P3773335379213122735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079540 (n : ℕ) : ℤ :=
  A079540.P3773335379213122735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086227.P16090584181842995042

`A204617(n+2)/Δ[A028242(n)]`
-/

namespace A086227.P16090584181842995042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204617 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A086227.P16090584181842995042

noncomputable section

/-- A086227: a(n) = Sum_{1<=k<=4*n, gcd(k,n)=1} (i^k*tan(k*Pi/(4*n)))/(4*i), where i is the imaginary unit.

Offset 2, canonical program `A086227.P16090584181842995042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A086227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086227.P16090584181842995042.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A086227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089188.P17705299783274846901

`p?[A039787(n+1)+2]-2`
-/

namespace A089188.P17705299783274846901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A089188.P17705299783274846901

noncomputable section

/-- A089188: Lesser member p of a pair of twin primes such that p-1 is squarefree.

Offset 1, canonical program `A089188.P17705299783274846901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A089188 (n : ℕ) : ℤ :=
  A089188.P17705299783274846901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A089188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112928.P14420708112015201937

`p?[A112926(n+1)]`
-/

namespace A112928.P14420708112015201937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112928.P14420708112015201937

noncomputable section

/-- A112928: Primes in sequence A112926.

Offset 1, canonical program `A112928.P14420708112015201937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A112928 (n : ℕ) : ℤ :=
  A112928.P14420708112015201937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A112928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121326.P7190985811209929169

`A054964(A009005(n+1))`
-/

namespace A121326.P7190985811209929169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (A009005 (n + 1)).toNat

end

end A121326.P7190985811209929169

noncomputable section

/-- A121326: Primes of the form 4*k^2 + 1.

Offset 1, canonical program `A121326.P7190985811209929169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A121326 (n : ℕ) : ℤ :=
  A121326.P7190985811209929169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A121326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134420.P15726290882906623320

`∩[A069987(n+1), A134406(n+1)]`
-/

namespace A134420.P15726290882906623320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134420.P15726290882906623320

noncomputable section

/-- A134420: Composite squarefree numbers of the form k^2 + 1.

Offset 1, canonical program `A134420.P15726290882906623320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8853 terms. -/
def A134420 (n : ℕ) : ℤ :=
  (A134420.P15726290882906623320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8853 terms. -/
def A134420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003051.P6848603489716177678

`(A000203(n+1)+2*A002324(n+1)+3*A145390(n+1))/6`
-/

namespace A003051.P6848603489716177678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + 2 * A002324 (n + 1) + 3 * A145390 (n + 1) : ℚ) / 6

end

end A003051.P6848603489716177678

noncomputable section

/-- A003051: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are equivalent if they are related by a rotation or reflection preserving the hexagonal lattice.

Offset 1, canonical program `A003051.P6848603489716177678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003051.P6848603489716177678.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009286.P1468991457414160783

`A062354(n+1)/A009223(n+1)`
-/

namespace A009286.P1468991457414160783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A009286.P1468991457414160783

noncomputable section

/-- A009286: a(n) = lcm(sigma(n), phi(n)).

Offset 1, canonical program `A009286.P1468991457414160783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A009286.P1468991457414160783.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027695.P1855430691776300506

`A011260(A028310(n))*A053285(n)`
-/

namespace A027695.P1855430691776300506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A028310 n).toNat * A053285 n

end

end A027695.P1855430691776300506

noncomputable section

/-- A027695: Number of primitive polynomials of degree n over GF(4).

Offset 0, canonical program `A027695.P1855430691776300506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A027695 (n : ℕ) : ℤ :=
  A027695.P1855430691776300506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A027695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069734.P4700367911549090281

`(A000203(n+1)+A069735(n+1))/2`
-/

namespace A069734.P4700367911549090281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A069735 (n + 1) : ℚ) / 2

end

end A069734.P4700367911549090281

noncomputable section

/-- A069734: Number of pairs (p,q), 0<=p<=q, such that p+q divides n.

Offset 1, canonical program `A069734.P4700367911549090281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069735, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069734.P4700367911549090281.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069735, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000020.P13856012455953723901

`A011260(n+1)+C(2, n+2)`
-/

namespace A000020.P13856012455953723901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A000020.P13856012455953723901

noncomputable section

/-- A000020: Number of primitive polynomials of degree n over GF(2) (version 2).

Offset 1, canonical program `A000020.P13856012455953723901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020 (n : ℕ) : ℤ :=
  A000020.P13856012455953723901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020.provenance : SequenceMachineLib.Provenance := .conjectured

