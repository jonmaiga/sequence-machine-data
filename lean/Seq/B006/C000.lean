import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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

/-! ## A060856.P9769881644998200801

`A039622(n+2)/(n+2)`
-/

namespace A060856.P9769881644998200801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039622 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A060856.P9769881644998200801

noncomputable section

/-- A060856: Multi-dimensional Catalan numbers: diagonal T(n,n+2) of A060854.

Offset 1, canonical program `A060856.P9769881644998200801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060856 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060856.P9769881644998200801.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067700.P5517301389494608979

`2*A039622(n)`
-/

namespace A067700.P5517301389494608979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039622 n

end

end A067700.P5517301389494608979

noncomputable section

/-- A067700: a(n) = 2*(n^2)!*Product_{k=0..n-1} k!/(n+k)!.

Offset 0, canonical program `A067700.P5517301389494608979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067700 (n : ℕ) : ℤ :=
  A067700.P5517301389494608979.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079402.P8247950100287683807

`A039622(n)²`
-/

namespace A079402.P8247950100287683807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039622 n ^ 2

end

end A079402.P8247950100287683807

noncomputable section

/-- A079402: Number of permutations of n^2 distinct integers free of any monotonic increasing or decreasing (n+1)-subsequence.

Offset 0, canonical program `A079402.P8247950100287683807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079402 (n : ℕ) : ℤ :=
  A079402.P8247950100287683807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079402.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A089215.P9624417689871271006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089215 (n : ℕ) : ℤ :=
  A089215.P9624417689871271006.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029883.P16402799982168113119

`2-A007413(n+1)`
-/

namespace A029883.P16402799982168113119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007413 (n + 1)

end

end A029883.P16402799982168113119

noncomputable section

/-- A029883: First differences of Thue-Morse sequence A001285.

Offset 1, canonical program `A029883.P16402799982168113119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029883 (n : ℕ) : ℤ :=
  A029883.P16402799982168113119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029883.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A061313.P9812291804371352980

`A080791(n)+A029837(n+1)`
-/

namespace A061313.P9812291804371352980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A029837 (n + 1)

end

end A061313.P9812291804371352980

noncomputable section

/-- A061313: Minimal number of steps to get from 1 to n by (a) subtracting 1 or (b) multiplying by 2.

Offset 1, canonical program `A061313.P9812291804371352980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061313 (n : ℕ) : ℤ :=
  A061313.P9812291804371352980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061313.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A082903.P1980760926334013284

`2^A336937(n+1)`
-/

namespace A082903.P1980760926334013284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A336937 (n + 1) : ℤ)

end

end A082903.P1980760926334013284

noncomputable section

/-- A082903: Highest power of two that divides the sum of divisors of n.

Offset 1, canonical program `A082903.P1980760926334013284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082903 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082903.P1980760926334013284.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082903.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A101119.P8853717879846159972

`A006519(16*(n+1))-A003484(16*(n+1))`
-/

namespace A101119.P8853717879846159972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (16 * (n + 1)) - A003484 (16 * (n + 1))

end

end A101119.P8853717879846159972

noncomputable section

/-- A101119: Nonzero differences of A006519 (highest power of 2 dividing n) and A003484 (Radon function).

Offset 1, canonical program `A101119.P8853717879846159972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101119 (n : ℕ) : ℤ :=
  A101119.P8853717879846159972.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101119.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A008912.P182979477162641956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. -/
def A008912 (n : ℕ) : ℤ :=
  (A008912.P182979477162641956.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. -/
def A008912.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049771.P15252291048546155040

`A049763(n+1)+A048156(n+1)`
-/

namespace A049771.P15252291048546155040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049763 (n + 1) + A048156 (n + 1)

end

end A049771.P15252291048546155040

noncomputable section

/-- A049771: Triangular array T read by rows: T(n,k) = (k^4 mod n) + (n^4 mod k).

Offset 1, canonical program `A049771.P15252291048546155040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049771 (n : ℕ) : ℤ :=
  A049771.P15252291048546155040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053868.P14125084353672620264

`eq[n%2, A053866(n+1)]+1`
-/

namespace A053868.P14125084353672620264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053868.P14125084353672620264

noncomputable section

/-- A053868: Numbers whose sum of proper divisors is odd.

Offset 1, canonical program `A053868.P14125084353672620264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053868 (n : ℕ) : ℤ :=
  (A053868.P14125084353672620264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053868.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056691.P4901059937054800505

`∑{d}[n+1, A054521(A000217(n)+#+1)]`
-/

namespace A056691.P4901059937054800505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054521 (A000217 n + (d : ℤ) + 1).toNat

end

end A056691.P4901059937054800505

noncomputable section

/-- A056691: Number of divisors d of n with gcd(d+1, n) = 1.

Offset 1, canonical program `A056691.P4901059937054800505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A056691 (n : ℕ) : ℤ :=
  A056691.P4901059937054800505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A056691.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057773.P3425110863733540674

`∑[A023506(n+1)]`
-/

namespace A057773.P3425110863733540674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P3425110863733540674

noncomputable section

/-- A057773: a(n) = Sum_{i=1..n} nu_2(prime(i) - 1) where nu_2(m) = exponent of highest power of 2 dividing m.

Offset 1, canonical program `A057773.P3425110863733540674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057773 (n : ℕ) : ℤ :=
  A057773.P3425110863733540674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057773.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060462.P1796479077200654701

`lt[2, A349213(n+1)]`
-/

namespace A060462.P1796479077200654701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P1796479077200654701

noncomputable section

/-- A060462: Integers k such that k! is divisible by k*(k+1)/2.

Offset 1, canonical program `A060462.P1796479077200654701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060462 (n : ℕ) : ℤ :=
  (A060462.P1796479077200654701.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A065704.P16680503474839831592

`∑{d}[n+1, A053866(#)]`
-/

namespace A065704.P16680503474839831592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d

end

end A065704.P16680503474839831592

noncomputable section

/-- A065704: Number of squares or twice squares dividing n.

Offset 1, canonical program `A065704.P16680503474839831592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065704 (n : ℕ) : ℤ :=
  A065704.P16680503474839831592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065704.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068504.P594807329965681907

`2^A023512(n+1)`
-/

namespace A068504.P594807329965681907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023512 (n + 1) : ℤ)

end

end A068504.P594807329965681907

noncomputable section

/-- A068504: Highest power of 2 dividing prime(n)+1.

Offset 1, canonical program `A068504.P594807329965681907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068504.P594807329965681907.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068504.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A078401.P5559632936550946514

`A054521(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`
-/

namespace A078401.P5559632936550946514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054521 (n + 1) + Int.tmod (a (n - 1)) (A002260 (n + 1))

end

end A078401.P5559632936550946514

noncomputable section

/-- A078401: Triangle read by rows: T(n,k) = number of numbers <= k that are coprime to n, 1 <= k <= n.

Offset 1, canonical program `A078401.P5559632936550946514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078401 (n : ℕ) : ℤ :=
  A078401.P5559632936550946514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078401.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088307.P12779661996335787613

`A054521(n+1)*A070216(n+1)`
-/

namespace A088307.P12779661996335787613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A070216 (n + 1)

end

end A088307.P12779661996335787613

noncomputable section

/-- A088307: Triangle, read by rows, T(n,k) = n^2 + k^2 if gcd(n,k)=1, otherwise 0.

Offset 1, canonical program `A088307.P12779661996335787613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088307 (n : ℕ) : ℤ :=
  A088307.P12779661996335787613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088307.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089805.P10188225100685804719

`Δ[xor(n, floor(n/2))]*A053866(3*n+2)`
-/

namespace A089805.P10188225100685804719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053866 (3 * n + 2)

end

end A089805.P10188225100685804719

noncomputable section

/-- A089805: Expansion of Jacobi theta function (theta_4(q^6) - theta_4(q^(2/3)))/2/q^(2/3).

Offset 0, canonical program `A089805.P10188225100685804719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089805 (n : ℕ) : ℤ :=
  A089805.P10188225100685804719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089805.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091282.P45468277352217509

`A023506(n+1)+A023512(n+1)`
-/

namespace A091282.P45468277352217509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1) + A023512 (n + 1)

end

end A091282.P45468277352217509

noncomputable section

/-- A091282: Exponent of 2 in prime(n)^2 - 1.

Offset 1, canonical program `A091282.P45468277352217509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023506, A023512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091282 (n : ℕ) : ℤ :=
  A091282.P45468277352217509.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023506, A023512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091282.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A096037.P14782831491992471023

`A095871(n+1)+A004736(n+1)`
-/

namespace A096037.P14782831491992471023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095871 (n + 1) + A004736 (n + 1)

end

end A096037.P14782831491992471023

noncomputable section

/-- A096037: Triangle T(n,m) = (3*n+3*m-2)*(n+1-m)/2 read by rows.

Offset 1, canonical program `A096037.P14782831491992471023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096037 (n : ℕ) : ℤ :=
  A096037.P14782831491992471023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096037.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104716.P16250963704566436174

`2*A104634(n+1)-A000217(A004736(n+1))`
-/

namespace A104716.P16250963704566436174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104634 (n + 1) - A000217 (A004736 (n + 1)).toNat

end

end A104716.P16250963704566436174

noncomputable section

/-- A104716: Triangle T(n,k) = (2k-3+4n)*(k-1-n)*(k-2-n)/6, 1<=k<=n.

Offset 1, canonical program `A104716.P16250963704566436174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104716 (n : ℕ) : ℤ :=
  A104716.P16250963704566436174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104716.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121998.P10241062648816022235

`A002260(eq[0, A054521(n+1)]+1)`
-/

namespace A121998.P10241062648816022235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121998.P10241062648816022235

noncomputable section

/-- A121998: Table, n-th row gives numbers between 1 and n that have a common factor with n.

Offset 2, canonical program `A121998.P10241062648816022235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A121998 (n : ℕ) : ℤ :=
  A121998.P10241062648816022235.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A121998.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127185.P15535594181796026610

`∑{e}[A051537(n+1), #]`
-/

namespace A127185.P15535594181796026610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A127185.P15535594181796026610

noncomputable section

/-- A127185: Triangle of distances between n>=1 and n>=m>=1 measured by the number of non-common prime factors.

Offset 1, canonical program `A127185.P15535594181796026610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127185 (n : ℕ) : ℤ :=
  (A127185.P15535594181796026610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127396.P17057220394794836426

`A072114(2^(n+1))`
-/

namespace A127396.P17057220394794836426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 (2 ^ (n + 1))

end

end A127396.P17057220394794836426

noncomputable section

/-- A127396: Number of 3-almost-primes <= 2^n.

Offset 1, canonical program `A127396.P17057220394794836426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127396 (n : ℕ) : ℤ :=
  A127396.P17057220394794836426.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127396.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127449.P14956762782820329988

`A054521(n+1)*A054531(n+1)`
-/

namespace A127449.P14956762782820329988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A054531 (n + 1)

end

end A127449.P14956762782820329988

noncomputable section

/-- A127449: Triangle T(n,k) = n if gcd(n,k)=1, =0 otherwise.

Offset 1, canonical program `A127449.P14956762782820329988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127449 (n : ℕ) : ℤ :=
  A127449.P14956762782820329988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127449.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128142.P9126956890442312540

`A104634(n+1)+C(A004736(n+1), 3)`
-/

namespace A128142.P9126956890442312540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + (Nat.choose (A004736 (n + 1)).toNat 3 : ℤ)

end

end A128142.P9126956890442312540

noncomputable section

/-- A128142: A128132 * A122432 (unsigned).

Offset 1, canonical program `A128142.P9126956890442312540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128142 (n : ℕ) : ℤ :=
  A128142.P9126956890442312540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128142.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014312.P6536201147470879106

`2^A194882(n)+2^A194883(n)+2^A194884(n)+2^A127324(n)`
-/

namespace A014312.P6536201147470879106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A194882 n : ℤ) + (2 : ℚ) ^ (A194883 n : ℤ) + (2 : ℚ) ^ (A194884 n : ℤ) + (2 : ℚ) ^ (A127324 n : ℤ)

end

end A014312.P6536201147470879106

noncomputable section

/-- A014312: Numbers with exactly 4 ones in binary expansion.

Offset 1, canonical program `A014312.P6536201147470879106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127324, A194882, A194883, A194884, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014312.P6536201147470879106.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127324, A194882, A194883, A194884, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014312.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A026087.P2933839439661880285

`Δ[A026086(n+4)]-A026085(n+4)`
-/

namespace A026087.P2933839439661880285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026085 (n + 4)

end

end A026087.P2933839439661880285

noncomputable section

/-- A026087: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 4. Also a(n) = T(n,n-4), where T is the array defined in A026082.

Offset 4, canonical program `A026087.P2933839439661880285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A026087 (n : ℕ) : ℤ :=
  A026087.P2933839439661880285.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A026087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026125.P8928138202584515454

`Δ[A026124(n+3)]-A026123(n+3)`
-/

namespace A026125.P8928138202584515454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026123 (n + 3)

end

end A026125.P8928138202584515454

noncomputable section

/-- A026125: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 4, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-3), where T is the array in A026120.

Offset 3, canonical program `A026125.P8928138202584515454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026125 (n : ℕ) : ℤ :=
  A026125.P8928138202584515454.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026152.P13028405890907652534

`A026124(n+3)-A026109(n+3)`
-/

namespace A026152.P13028405890907652534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 3) - A026109 (n + 3)

end

end A026152.P13028405890907652534

noncomputable section

/-- A026152: a(n) = T(n,n-1), where T is the array in A026148.

Offset 2, canonical program `A026152.P13028405890907652534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026152 (n : ℕ) : ℤ :=
  A026152.P13028405890907652534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026152.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026737.P4467536604630833933

`A000108(n)+A026671(n)-A026726(n)`
-/

namespace A026737.P4467536604630833933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A026671 n - A026726 n)

end

end A026737.P4467536604630833933

noncomputable section

/-- A026737: a(n) = T(2*n,n), T given by A026736.

Offset 0, canonical program `A026737.P4467536604630833933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A026737 (n : ℕ) : ℤ :=
  A026737.P4467536604630833933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A026737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026854.P460794287196501894

`A026726(n)+A000245(n)`
-/

namespace A026854.P460794287196501894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n + A000245 n

end

end A026854.P460794287196501894

noncomputable section

/-- A026854: a(n) = T(2n+1,n+1), T given by A026736.

Offset 0, canonical program `A026854.P460794287196501894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A026854 (n : ℕ) : ℤ :=
  A026854.P460794287196501894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A026854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027314.P4582682916324983632

`A026325(2*n)`
-/

namespace A027314.P4582682916324983632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (2 * n)

end

end A027314.P4582682916324983632

noncomputable section

/-- A027314: a(n) is the sum of squares of numbers in row n of array T given by A026323.

Offset 0, canonical program `A027314.P4582682916324983632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027314 (n : ℕ) : ℤ :=
  A027314.P4582682916324983632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027314.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A028263.P3177418721069471964

`A007318(n)+A014430(n)+1`
-/

namespace A028263.P3177418721069471964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A014430 n + 1)

end

end A028263.P3177418721069471964

noncomputable section

/-- A028263: Elements in 3-Pascal triangle A028262 (by row) that are not 1.

Offset 0, canonical program `A028263.P3177418721069471964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028263 (n : ℕ) : ℤ :=
  A028263.P3177418721069471964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029368.P396495999053672389

`A029235(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029368.P396495999053672389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029235 n - a (n - 2)

end

end A029368.P396495999053672389

noncomputable section

/-- A029368: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029368.P396495999053672389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029368 (n : ℕ) : ℤ :=
  A029368.P396495999053672389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029368.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037809.P4595952055594369348

`A056973(n+1)+A000120(n+1)-1`
-/

namespace A037809.P4595952055594369348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (n + 1) + A000120 (n + 1) - 1

end

end A037809.P4595952055594369348

noncomputable section

/-- A037809: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A037809.P4595952055594369348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037809 (n : ℕ) : ℤ :=
  A037809.P4595952055594369348.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037809.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A045934.P16041711807266308001

`∩[A045933(n+1)-1, A045933(n+1)]`
-/

namespace A045934.P16041711807266308001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045934.P16041711807266308001

noncomputable section

/-- A045934: Numbers n such that n through n+5 have the same number of distinct prime factors.

Offset 1, canonical program `A045934.P16041711807266308001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. -/
def A045934 (n : ℕ) : ℤ :=
  (A045934.P16041711807266308001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. -/
def A045934.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A051628.P11491712228383865435`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051628 (n : ℕ) : ℤ :=
  A051628.P11491712228383865435.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051628.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A057059.P4184647556311659396

`gcd(A080251(n), A141419(n+1))`
-/

namespace A057059.P4184647556311659396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080251 n) (A141419 (n + 1))

end

end A057059.P4184647556311659396

noncomputable section

/-- A057059: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ... Define i(m) and j(m) by R(i(m),j(m)) = m. Then a(n) = j(A057027(n)).

Offset 1, canonical program `A057059.P4184647556311659396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057059 (n : ℕ) : ℤ :=
  (A057059.P4184647556311659396.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057059.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069733.P5802744394708498839

`A000005(A259445(n+1))`
-/

namespace A069733.P5802744394708498839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A259445 (n + 1)).toNat

end

end A069733.P5802744394708498839

noncomputable section

/-- A069733: Number of divisors d of n such that d or n/d is odd. Number of non-orientable coverings of the Klein bottle with n lists.

Offset 1, canonical program `A069733.P5802744394708498839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069733 (n : ℕ) : ℤ :=
  A069733.P5802744394708498839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069733.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079309.P2928815747845907027

`A066796(n+1)/2`
-/

namespace A079309.P2928815747845907027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066796 (n + 1) : ℚ) / 2

end

end A079309.P2928815747845907027

noncomputable section

/-- A079309: a(n) = C(1,1) + C(3,2) + C(5,3) + ... + C(2*n-1,n).

Offset 1, canonical program `A079309.P2928815747845907027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066796, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079309.P2928815747845907027.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066796, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079309.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A080378.P2494150868123191363

`C(2, A023520(n+2)²)`
-/

namespace A080378.P2494150868123191363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A023520 (n + 2) ^ 2).toNat

end

end A080378.P2494150868123191363

noncomputable section

/-- A080378: Residues mod 4 of the n-th difference between consecutive primes.

Offset 1, canonical program `A080378.P2494150868123191363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080378 (n : ℕ) : ℤ :=
  (A080378.P2494150868123191363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080378.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082652.P13720706004020418959

`A104634(A038722(n+1))`
-/

namespace A082652.P13720706004020418959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A038722 (n + 1)).toNat

end

end A082652.P13720706004020418959

noncomputable section

/-- A082652: Triangle read by rows: T(n,k) is the number of squares that can be found in a k X n rectangular grid of little squares, for 1 <= k <= n.

Offset 1, canonical program `A082652.P13720706004020418959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A082652 (n : ℕ) : ℤ :=
  A082652.P13720706004020418959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A082652.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088405.P5207061650554154256

`A052217(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088405.P5207061650554154256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052217 (n + 1) : ℚ) / 3

end

end A088405.P5207061650554154256

noncomputable section

/-- A088405: a(n) = A052217(n)/3.

Offset 1, canonical program `A088405.P5207061650554154256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088405 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088405.P5207061650554154256.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088405.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A094218.P957445581000040458

`(n+1)*A037958(2*(n+1))/2`
-/

namespace A094218.P957445581000040458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A037958 (2 * (n + 1)) : ℚ) / 2)

end

end A094218.P957445581000040458

noncomputable section

/-- A094218: Number of permutations of length n with exactly 2 occurrences of the pattern 2-13.

Offset 1, canonical program `A094218.P957445581000040458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A094218 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094218.P957445581000040458.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A094218.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101294.P5526318434462091228

`A045933(n+1)+2`
-/

namespace A101294.P5526318434462091228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1) + 2

end

end A101294.P5526318434462091228

noncomputable section

/-- A101294: Numbers n such that omega(n-2) = omega(n-1) = omega(n) = omega(n+1) = omega(n+2).

Offset 1, canonical program `A101294.P5526318434462091228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101294 (n : ℕ) : ℤ :=
  A101294.P5526318434462091228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101294.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108080.P6003054440888230054

`A054441(n)+A026726(n)`
-/

namespace A108080.P6003054440888230054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054441 n + A026726 n

end

end A108080.P6003054440888230054

noncomputable section

/-- A108080: a(n) = Sum_{i=0..n} binomial(2*n+i,n-i).

Offset 0, canonical program `A108080.P6003054440888230054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A108080 (n : ℕ) : ℤ :=
  A108080.P6003054440888230054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A108080.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117198.P2765245029174201453

`A329678(A059026(n+1))`
-/

namespace A117198.P2765245029174201453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A059026 (n + 1)).toNat

end

end A117198.P2765245029174201453

noncomputable section

/-- A117198: Generalized Riordan array (1,x)+(x,x^2)+(x^2,x^3).

Offset 0, canonical program `A117198.P2765245029174201453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117198 (n : ℕ) : ℤ :=
  A117198.P2765245029174201453.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117198.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122960.P1556329167515398814

`A202023(A209293(n+1))`
-/

namespace A122960.P1556329167515398814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A209293 (n + 1)).toNat

end

end A122960.P1556329167515398814

noncomputable section

/-- A122960: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A122960.P1556329167515398814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122960 (n : ℕ) : ℤ :=
  A122960.P1556329167515398814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122960.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125232.P7385240608015978380

`2*A125165(n)-A104712(n+2)`
-/

namespace A125232.P7385240608015978380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125165 n - A104712 (n + 2)

end

end A125232.P7385240608015978380

noncomputable section

/-- A125232: Triangle T(n,k) read by rows: the (n-k)-th term of the k-fold iterated partial sum of the pentagonal numbers.

Offset 1, canonical program `A125232.P7385240608015978380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125232 (n : ℕ) : ℤ :=
  A125232.P7385240608015978380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125233.P3882684822699850619

`2*A125165(n)-A135278(n)`
-/

namespace A125233.P3882684822699850619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125165 n - A135278 n

end

end A125233.P3882684822699850619

noncomputable section

/-- A125233: Triangle T(n,k) read by rows, the (n-k)-th term of the k times repeated partial sum of the hexagonal numbers, 0 <= k < n, 0 < n.

Offset 0, canonical program `A125233.P3882684822699850619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125233 (n : ℕ) : ℤ :=
  A125233.P3882684822699850619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125233.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127169.P17750561973413488397

`A034718(A054531(n+1))*A051731(n+1)`
-/

namespace A127169.P17750561973413488397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034718 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A127169.P17750561973413488397

noncomputable section

/-- A127169: Triangle read by rows: cube of A126988.

Offset 1, canonical program `A127169.P17750561973413488397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127169 (n : ℕ) : ℤ :=
  A127169.P17750561973413488397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127169.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127368.P5347369318367987090

`A054521(n+1)*A128227(n)`
-/

namespace A127368.P5347369318367987090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A128227 n

end

end A127368.P5347369318367987090

noncomputable section

/-- A127368: Relative prime triangle, read by rows.

Offset 1, canonical program `A127368.P5347369318367987090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127368 (n : ℕ) : ℤ :=
  A127368.P5347369318367987090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127368.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129234.P10543029796257728655

`(A054531(n+1)+A002262(n))*A051731(n+1)`
-/

namespace A129234.P10543029796257728655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) + A002262 n) * A051731 (n + 1)

end

end A129234.P10543029796257728655

noncomputable section

/-- A129234: Triangle read by rows: T(n,k) = n/k + k - 1 if n mod k = 0; otherwise T(n,k)=0 (1 <= k <= n).

Offset 1, canonical program `A129234.P10543029796257728655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129234 (n : ℕ) : ℤ :=
  A129234.P10543029796257728655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129234.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130209.P2278813470092535691

`A023531(n)*A051194(n+1)`
-/

namespace A130209.P2278813470092535691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A051194 (n + 1)

end

end A130209.P2278813470092535691

noncomputable section

/-- A130209: Diagonalized matrix of d(n), A000005, number of divisors of n.

Offset 1, canonical program `A130209.P2278813470092535691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130209 (n : ℕ) : ℤ :=
  A130209.P2278813470092535691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130209.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A132589.P7281527089305530724

`gcd(A038566(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132589.P7281527089305530724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038566 (n + 1)) (n + 1 : ℤ)

end

end A132589.P7281527089305530724

noncomputable section

/-- A132589: a(n) = gcd(A038566(n), n).

Offset 1, canonical program `A132589.P7281527089305530724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132589 (n : ℕ) : ℤ :=
  (A132589.P7281527089305530724.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132589.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A005745.P2343868508805754794

`A002727(n+1)-A002623(n+1)`
-/

namespace A005745.P2343868508805754794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 (n + 1) - A002623 (n + 1)

end

end A005745.P2343868508805754794

noncomputable section

/-- A005745: Number of n-covers of an unlabeled 3-set.

Offset 1, canonical program `A005745.P2343868508805754794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002727, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005745 (n : ℕ) : ℤ :=
  A005745.P2343868508805754794.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002727, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005745.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A023743.P13743805731837612874

`∩[A045237(n+1), A045282(n+1)]`
-/

namespace A023743.P13743805731837612874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P13743805731837612874

noncomputable section

/-- A023743: Base 5 expansion uses each positive digit just once.

Offset 1, canonical program `A023743.P13743805731837612874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 836 terms. -/
def A023743 (n : ℕ) : ℤ :=
  (A023743.P13743805731837612874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 836 terms. -/
def A023743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024511.P1058289518058299462

`eq[char[A024510(n+1)], A000007(n)]`
-/

namespace A024511.P1058289518058299462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024510 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024511.P1058289518058299462

noncomputable section

/-- A024511: Positions of odd numbers in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024511.P1058289518058299462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A024511 (n : ℕ) : ℤ :=
  (A024511.P1058289518058299462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A024511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024879.P8859403091492470975

`A307597(n+5)-char[A046691(n)]`
-/

namespace A024879.P8859403091492470975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (n + 5) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024879.P8859403091492470975

noncomputable section

/-- A024879: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A023531.

Offset 2, canonical program `A024879.P8859403091492470975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024879 (n : ℕ) : ℤ :=
  A024879.P8859403091492470975.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024918.P7300264531747899281

`∑[record[A008475(n+1)]]+1`
-/

namespace A024918.P7300264531747899281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024918.P7300264531747899281

noncomputable section

/-- A024918: Partial sums of the sequence of prime powers (A000961).

Offset 1, canonical program `A024918.P7300264531747899281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A024918 (n : ℕ) : ℤ :=
  A024918.P7300264531747899281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A024918.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026034.P10503130599749257734

`A001405(n)-A037958(n)`
-/

namespace A026034.P10503130599749257734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037958 n

end

end A026034.P10503130599749257734

noncomputable section

/-- A026034: a(n) = A026022(n,floor(n/2)).

Offset 0, canonical program `A026034.P10503130599749257734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A026034 (n : ℕ) : ℤ :=
  A026034.P10503130599749257734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A026034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026679.P8036760827075094088

`∑[A026677(n)]`
-/

namespace A026679.P8036760827075094088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026679.P8036760827075094088

noncomputable section

/-- A026679: Sum{T(i,j)}, 0<=i<=n, 0<=j<=n, T given by A026670.

Offset 0, canonical program `A026679.P8036760827075094088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026679 (n : ℕ) : ℤ :=
  A026679.P8036760827075094088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026733.P9218894337222086257

`abs(Δ[A026677(abs(1-n))])`
-/

namespace A026733.P9218894337222086257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026677 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A026733.P9218894337222086257

noncomputable section

/-- A026733: a(n) = Sum_{k=0..floor(n/2)} T(n,k), T given by A026725.

Offset 0, canonical program `A026733.P9218894337222086257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026733 (n : ℕ) : ℤ :=
  A026733.P9218894337222086257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029126.P854497210763489086

`A029235(abs(1-n))+A029235(n)`
-/

namespace A029126.P854497210763489086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 |1 - (n : ℤ)|.toNat + A029235 n

end

end A029126.P854497210763489086

noncomputable section

/-- A029126: Expansion of 1/((1-x)(1-x^7)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029126.P854497210763489086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029126 (n : ℕ) : ℤ :=
  A029126.P854497210763489086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029134.P1779727754259986526

`∑[A025925(n)]`
-/

namespace A029134.P1779727754259986526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029134.P1779727754259986526

noncomputable section

/-- A029134: Expansion of 1/((1-x)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029134.P1779727754259986526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029134 (n : ℕ) : ℤ :=
  A029134.P1779727754259986526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029324.P10071969728101027486

`A025925(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029324.P10071969728101027486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025925 n + a (n - 3)

end

end A029324.P10071969728101027486

noncomputable section

/-- A029324: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029324.P10071969728101027486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029324 (n : ℕ) : ℤ :=
  A029324.P10071969728101027486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029366.P2484932440147699760

`A029233(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029366.P2484932440147699760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029233 n - a (n - 2)

end

end A029366.P2484932440147699760

noncomputable section

/-- A029366: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029366.P2484932440147699760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029366 (n : ℕ) : ℤ :=
  A029366.P2484932440147699760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029377.P9082731251158770194

`A029244(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029377.P9082731251158770194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029244 n - a (n - 2)

end

end A029377.P9082731251158770194

noncomputable section

/-- A029377: Expansion of 1/((1-x^4)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029377.P9082731251158770194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029377 (n : ℕ) : ℤ :=
  A029377.P9082731251158770194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029444.P3494668632536997832

`A025925(n)+A029057(n)-A029059(n)`
-/

namespace A029444.P3494668632536997832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029057 n - A029059 n)

end

end A029444.P3494668632536997832

noncomputable section

/-- A029444: Expansion of 1/((1-x^8)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029444.P3494668632536997832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029444 (n : ℕ) : ℤ :=
  A029444.P3494668632536997832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029444.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A033548.P3085097535061214025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A033549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A033548 (n : ℕ) : ℤ :=
  A033548.P3085097535061214025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A033549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A033548.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A035200.P11648274898513142306

`A035185((n+1)/A038500(n+1))`
-/

namespace A035200.P11648274898513142306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A035200.P11648274898513142306

noncomputable section

/-- A035200: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 18.

Offset 1, canonical program `A035200.P11648274898513142306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035200 (n : ℕ) : ℤ :=
  A035200.P11648274898513142306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035251.P7268071419077795163

`record[(n+1)%(A139608(n)^A035185(n+1))]`
-/

namespace A035251.P7268071419077795163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A139608 n : ℚ) ^ (A035185 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035251.P7268071419077795163

noncomputable section

/-- A035251: Positive numbers of the form x^2 - 2y^2 with integers x, y.

Offset 1, canonical program `A035251.P7268071419077795163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A035251 (n : ℕ) : ℤ :=
  A035251.P7268071419077795163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A035251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038992.P6853481220545635755

`∑{d}[n+1, #*A038991(#)]`
-/

namespace A038992.P6853481220545635755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038991 d

end

end A038992.P6853481220545635755

noncomputable section

/-- A038992: Number of sublattices of index n in generic 5-dimensional lattice.

Offset 1, canonical program `A038992.P6853481220545635755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038992 (n : ℕ) : ℤ :=
  A038992.P6853481220545635755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039396.P9347899248425865174

`∩[A011534(n+1), A039115(n+1)]`
-/

namespace A039396.P9347899248425865174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039396.P9347899248425865174

noncomputable section

/-- A039396: Numbers whose base-10 representation has the same nonzero number of 0's and 4's.

Offset 1, canonical program `A039396.P9347899248425865174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039396 (n : ℕ) : ℤ :=
  (A039396.P9347899248425865174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039404.P11291830641019790842

`∩[A011534(n+1), A039122(n+1)]`
-/

namespace A039404.P11291830641019790842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039404.P11291830641019790842

noncomputable section

/-- A039404: Numbers whose base-10 representation has the same nonzero number of 1's and 4's.

Offset 1, canonical program `A039404.P11291830641019790842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. -/
def A039404 (n : ℕ) : ℤ :=
  (A039404.P11291830641019790842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. -/
def A039404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039411.P1190184811517337393

`∩[A011534(n+1), A039129(n+1)]`
-/

namespace A039411.P1190184811517337393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039411.P1190184811517337393

noncomputable section

/-- A039411: Numbers whose base-10 representation has the same nonzero number of 2's and 4's.

Offset 1, canonical program `A039411.P1190184811517337393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039411 (n : ℕ) : ℤ :=
  (A039411.P1190184811517337393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039417.P5176249558024436737

`∩[A011534(n+1), A039135(n+1)]`
-/

namespace A039417.P5176249558024436737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039417.P5176249558024436737

noncomputable section

/-- A039417: Numbers whose base-10 representation has the same nonzero number of 3's and 4's.

Offset 1, canonical program `A039417.P5176249558024436737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1588 terms. -/
def A039417 (n : ℕ) : ℤ :=
  (A039417.P5176249558024436737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1588 terms. -/
def A039417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039424.P9537314864739578220

`∩[A011534(n+1), A039142(n+1)]`
-/

namespace A039424.P9537314864739578220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039424.P9537314864739578220

noncomputable section

/-- A039424: Numbers whose base-10 representation has the same nonzero number of 4's and 6's.

Offset 1, canonical program `A039424.P9537314864739578220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039424 (n : ℕ) : ℤ :=
  (A039424.P9537314864739578220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039426.P12047223122600376495

`∩[A011534(n+1), A039144(n+1)]`
-/

namespace A039426.P12047223122600376495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039426.P12047223122600376495

noncomputable section

/-- A039426: Numbers whose base-10 representation has the same nonzero number of 4's and 8's.

Offset 1, canonical program `A039426.P12047223122600376495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039426 (n : ℕ) : ℤ :=
  (A039426.P12047223122600376495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039427.P17652112715132831845

`∩[A011534(n+1), A039145(n+1)]`
-/

namespace A039427.P17652112715132831845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039427.P17652112715132831845

noncomputable section

/-- A039427: Numbers whose base-10 representation has the same nonzero number of 4's and 9's.

Offset 1, canonical program `A039427.P17652112715132831845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A039427 (n : ℕ) : ℤ :=
  (A039427.P17652112715132831845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A039427.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039832.P5669691020800147113

`filter[A005237(n+1), A354927(#)]`
-/

namespace A039832.P5669691020800147113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A039832.P5669691020800147113

noncomputable section

/-- A039832: Numbers k such that k and k+1 both have 4 divisors.

Offset 1, canonical program `A039832.P5669691020800147113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2992 terms. -/
def A039832 (n : ℕ) : ℤ :=
  A039832.P5669691020800147113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2992 terms. -/
def A039832.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048274.P10497283210798871903

`abs(∑[1-A046079(2*(n+1))])`
-/

namespace A048274.P10497283210798871903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046079 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P10497283210798871903

noncomputable section

/-- A048274: Let G be the graph with n vertices, the i-th vertex consisting of all multiples of i <= n, where edges indicate that the vertices intersect; a(n) = |n-(number of edges of G)|.

Offset 1, canonical program `A048274.P10497283210798871903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A048274 (n : ℕ) : ℤ :=
  A048274.P10497283210798871903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A048274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049111.P637317561935572005

`A000005(A005237(n+1))`
-/

namespace A049111.P637317561935572005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005237 (n + 1)).toNat

end

end A049111.P637317561935572005

noncomputable section

/-- A049111: Number of divisors of A005237(n).

Offset 1, canonical program `A049111.P637317561935572005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049111 (n : ℕ) : ℤ :=
  A049111.P637317561935572005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049111.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051611.P8956593537962413529

`comp[A051533(n+1)-1]+1`
-/

namespace A051611.P8956593537962413529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A051611.P8956593537962413529

noncomputable section

/-- A051611: Numbers that are not the sum of 2 nonzero triangular numbers.

Offset 1, canonical program `A051611.P8956593537962413529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051611 (n : ℕ) : ℤ :=
  (A051611.P8956593537962413529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051611.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A059028.P10481110246671892895

`3*A057661(n+1)-(n+2)`
-/

namespace A059028.P10481110246671892895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A057661 (n + 1) - (n + 2 : ℤ)

end

end A059028.P10481110246671892895

noncomputable section

/-- A059028: Row sums of A059026: a(n) = Sum_{m=1..n} (lcm(n,m)/n + lcm(n,m)/m - 1).

Offset 1, canonical program `A059028.P10481110246671892895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059028 (n : ℕ) : ℤ :=
  A059028.P10481110246671892895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061344.P3426383338707934505

`record[A008475(2*n+3)+1]`
-/

namespace A061344.P3426383338707934505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (2 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061344.P3426383338707934505

noncomputable section

/-- A061344: Numbers of form p^m + 1, p odd prime, m >= 1.

Offset 1, canonical program `A061344.P3426383338707934505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9684 terms. -/
def A061344 (n : ℕ) : ℤ :=
  A061344.P3426383338707934505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9684 terms. -/
def A061344.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A063658.P15417569516115138274

`1-∑{d}[n+1, A130107(#)]+n`
-/

namespace A063658.P15417569516115138274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A130107 d + (n : ℤ)

end

end A063658.P15417569516115138274

noncomputable section

/-- A063658: The number of integers m in [1..n] for which gcd(m,n) is divisible by a square greater than 1.

Offset 1, canonical program `A063658.P15417569516115138274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063658 (n : ℕ) : ℤ :=
  A063658.P15417569516115138274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063658.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A067293.P1416337670145948277

`∩[A005237(n+1), A068526(n+1)]`
-/

namespace A067293.P1416337670145948277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067293.P1416337670145948277

noncomputable section

/-- A067293: Numbers k such that prime(k+1)-(k+1)*tau(k+1) = prime(k)-k*tau(k) where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A067293.P1416337670145948277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. -/
def A067293 (n : ℕ) : ℤ :=
  (A067293.P1416337670145948277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. -/
def A067293.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071000.P4044688624235870522

`comp[A070999(n+1)-1]+1`
-/

namespace A071000.P4044688624235870522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070999 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A071000.P4044688624235870522

noncomputable section

/-- A071000: Numbers m such that the denominator of Sum_{k=1..m} 1/gcd(m,k) equals m.

Offset 1, canonical program `A071000.P4044688624235870522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071000 (n : ℕ) : ℤ :=
  (A071000.P4044688624235870522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071000.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073274.P9123969946531876833

`A000040(n+2)-A073273(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073274.P9123969946531876833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A073273 (n + 1)

end

end A073274.P9123969946531876833

noncomputable section

/-- A073274: a(n) = A000040(n+1) - A073273(n).

Offset 1, canonical program `A073274.P9123969946531876833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A073273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073274 (n : ℕ) : ℤ :=
  A073274.P9123969946531876833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A073273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073274.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074216.P13813814254964927906

`A072864(n+1)²`
-/

namespace A074216.P13813814254964927906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1) ^ 2

end

end A074216.P13813814254964927906

noncomputable section

/-- A074216: Squares satisfying sigma(n)==0 (mod 3).

Offset 1, canonical program `A074216.P13813814254964927906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074216 (n : ℕ) : ℤ :=
  A074216.P13813814254964927906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074313.P3730083430334687260

`A292936(p?[xor(1, n)])`
-/

namespace A074313.P3730083430334687260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A074313.P3730083430334687260

noncomputable section

/-- A074313: a(n) = the maximal length of a sequence of primes {s_1 = prime(n), s_2 = f(s1), s_3 = f(s_2), ....} formed by repeated application of f(m) = Floor(m/2) on prime(n).

Offset 1, canonical program `A074313.P3730083430334687260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A074313 (n : ℕ) : ℤ :=
  A074313.P3730083430334687260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A074313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078462.P9783510630940783236

`∑[A035185(n+1)]`
-/

namespace A078462.P9783510630940783236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P9783510630940783236

noncomputable section

/-- A078462: Partial sums of A035185.

Offset 1, canonical program `A078462.P9783510630940783236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078462 (n : ℕ) : ℤ :=
  A078462.P9783510630940783236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078644.P6430730718511426787

`A361689(n+1)/2`
-/

namespace A078644.P6430730718511426787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361689 (n + 1) : ℚ) / 2

end

end A078644.P6430730718511426787

noncomputable section

/-- A078644: a(n) = tau(2*n^2)/2.

Offset 1, canonical program `A078644.P6430730718511426787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078644.P6430730718511426787.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078771.P8502218742761172896

`A008475(n+1)-A001414(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078771.P8502218742761172896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A001414 (n + 1)

end

end A078771.P8502218742761172896

noncomputable section

/-- A078771: a(n) = A008475(n) - A001414(n).

Offset 1, canonical program `A078771.P8502218742761172896`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008475, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078771 (n : ℕ) : ℤ :=
  A078771.P8502218742761172896.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008475, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078771.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A080585.P5466522810854479551

`A080587(n)-(n+1)`
-/

namespace A080585.P5466522810854479551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n - (n + 1 : ℤ)

end

end A080585.P5466522810854479551

noncomputable section

/-- A080585: Partial sums of A080584.

Offset 0, canonical program `A080585.P5466522810854479551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080585 (n : ℕ) : ℤ :=
  A080585.P5466522810854479551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080585.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081402.P14396317658812618271

`A008475((n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081402.P14396317658812618271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Nat.factorial (n + 1))

end

end A081402.P14396317658812618271

noncomputable section

/-- A081402: a(n) = A008475(n!).

Offset 1, canonical program `A081402.P14396317658812618271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081402 (n : ℕ) : ℤ :=
  A081402.P14396317658812618271.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081403.P13912223232092124024

`A008475((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081403.P13912223232092124024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 ((n + 1) ^ 2)

end

end A081403.P13912223232092124024

noncomputable section

/-- A081403: a(n) = A008475(n^2).

Offset 1, canonical program `A081403.P13912223232092124024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081403 (n : ℕ) : ℤ :=
  A081403.P13912223232092124024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081404.P4452157079477573813

`A008475(A006093(n+1))`
-/

namespace A081404.P4452157079477573813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A006093 (n + 1)).toNat

end

end A081404.P4452157079477573813

noncomputable section

/-- A081404: a(n) = A008475(prime(n)-1).

Offset 1, canonical program `A081404.P4452157079477573813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A081404 (n : ℕ) : ℤ :=
  A081404.P4452157079477573813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A081404.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082741.P5603460643145783783

`∩[A001729(n+1), A307913(n+1)]`
-/

namespace A082741.P5603460643145783783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082741.P5603460643145783783

noncomputable section

/-- A082741: Numbers that have digits consisting only of line segments or both line segments and curves (base 10 digits are 1, 2, 4, 5, 7).

Offset 1, canonical program `A082741.P5603460643145783783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. -/
def A082741 (n : ℕ) : ℤ :=
  (A082741.P5603460643145783783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. -/
def A082741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083795.P8166944767162497193

`A005237(n+1)+1`
-/

namespace A083795.P8166944767162497193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) + 1

end

end A083795.P8166944767162497193

noncomputable section

/-- A083795: Numbers k such that k and k-1 have the same number of divisors. Numbers not included in A083794.

Offset 1, canonical program `A083795.P8166944767162497193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083795 (n : ℕ) : ℤ :=
  A083795.P8166944767162497193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084545.P4936692900307291097

`A001729(A248910(n+1))`
-/

namespace A084545.P4936692900307291097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (A248910 (n + 1)).toNat

end

end A084545.P4936692900307291097

noncomputable section

/-- A084545: Alternate number system in base 5.

Offset 1, canonical program `A084545.P4936692900307291097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A084545 (n : ℕ) : ℤ :=
  A084545.P4936692900307291097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A084545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085760.P7929265480734596502

`record[A008475(or(3, n))]`
-/

namespace A085760.P7929265480734596502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Nat.lor 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085760.P7929265480734596502

noncomputable section

/-- A085760: Prime powers of the form 4n+3.

Offset 1, canonical program `A085760.P7929265480734596502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A085760 (n : ℕ) : ℤ :=
  A085760.P7929265480734596502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A085760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086552.P11972272164469090646

`A057922(n)+1`
-/

namespace A086552.P11972272164469090646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n + 1

end

end A086552.P11972272164469090646

noncomputable section

/-- A086552: Numbers x such that tau(x)/tau(x-1) is an integer, where tau() is the number of divisors function.

Offset 1, canonical program `A086552.P11972272164469090646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086552 (n : ℕ) : ℤ :=
  A086552.P11972272164469090646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086664.P5056455571502811925

`n+1-A008475(n+1)`
-/

namespace A086664.P5056455571502811925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008475 (n + 1)

end

end A086664.P5056455571502811925

noncomputable section

/-- A086664: a(n) = n - (sum of prime power components of n).

Offset 1, canonical program `A086664.P5056455571502811925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086664 (n : ℕ) : ℤ :=
  A086664.P5056455571502811925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086664.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A087780.P10506925651447133355

`∑{d}[n+1, A035185(#)*A271102((n+1)/#)]`
-/

namespace A087780.P10506925651447133355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035185 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087780.P10506925651447133355

noncomputable section

/-- A087780: Number of non-congruent solutions to x^2 == 2 mod n.

Offset 1, canonical program `A087780.P10506925651447133355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087780 (n : ℕ) : ℤ :=
  A087780.P10506925651447133355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088759.P11604207977400772174

`eq[0, A309332(4*n+2)]`
-/

namespace A088759.P11604207977400772174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088759.P11604207977400772174

noncomputable section

/-- A088759: Numbers k such that (4*k+3)^2 + (4*k+2)^2 is prime.

Offset 1, canonical program `A088759.P11604207977400772174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A088759 (n : ℕ) : ℤ :=
  (A088759.P11604207977400772174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A088759.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091396.P2690525811667358135

`A035185(∏{p}[n+1, #])`
-/

namespace A091396.P2690525811667358135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091396.P2690525811667358135

noncomputable section

/-- A091396: a(n) = Product_{ p | n } (1 + Legendre(2,p) ).

Offset 1, canonical program `A091396.P2690525811667358135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091396 (n : ℕ) : ℤ :=
  A091396.P2690525811667358135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092453.P9438286494143066281

`∪[A011534(n+1), A008586(n)]`
-/

namespace A092453.P9438286494143066281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092453.P9438286494143066281

noncomputable section

/-- A092453: Numbers that either contain the digit 4 or are divisible by 4.

Offset 0, canonical program `A092453.P9438286494143066281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092453 (n : ℕ) : ℤ :=
  (A092453.P9438286494143066281.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095672.P5355300457214611570

`p?[A073273(n+3)-1]`
-/

namespace A095672.P5355300457214611570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P5355300457214611570

noncomputable section

/-- A095672: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 4.

Offset 1, canonical program `A095672.P5355300457214611570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A095672 (n : ℕ) : ℤ :=
  A095672.P5355300457214611570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A095672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103970.P11872415913840163127

`2^n*A007971(n+1)`
-/

namespace A103970.P11872415913840163127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007971 (n + 1)

end

end A103970.P11872415913840163127

noncomputable section

/-- A103970: Expansion of (1 - sqrt(1 - 4*x - 12*x^2))/(2*x).

Offset 0, canonical program `A103970.P11872415913840163127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A103970 (n : ℕ) : ℤ :=
  A103970.P11872415913840163127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A103970.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108769.P16543093648704500764

`eq[1, A309332(n+1)]+1`
-/

namespace A108769.P16543093648704500764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108769.P16543093648704500764

noncomputable section

/-- A108769: Numbers m such that m^2 + (m+1)^2 is a semiprime.

Offset 1, canonical program `A108769.P16543093648704500764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A108769 (n : ℕ) : ℤ :=
  (A108769.P16543093648704500764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A108769.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114191.P10721137948637682050

`(-1)^n*A064062(n)`
-/

namespace A114191.P10721137948637682050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A064062 n

end

end A114191.P10721137948637682050

noncomputable section

/-- A114191: Expansion of 1/(1+x*c(-2*x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A114191.P10721137948637682050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A114191 (n : ℕ) : ℤ :=
  A114191.P10721137948637682050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A114191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114518.P850338516823365546

`eq[2, A000005(A008475(n+2))]+2`
-/

namespace A114518.P850338516823365546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008475 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A114518.P850338516823365546

noncomputable section

/-- A114518: Numbers n such that A008475(n) is prime.

Offset 1, canonical program `A114518.P850338516823365546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114518 (n : ℕ) : ℤ :=
  (A114518.P850338516823365546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115137.P16976045627159990475

`abs(A064062(n)-Δ[A064062(n)])`
-/

namespace A115137.P16976045627159990475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064062 n - (f1 (n + 1) - f1 n)|

end

end A115137.P16976045627159990475

noncomputable section

/-- A115137: Second diagonal of triangle A113647 (called Y(2,1)).

Offset 0, canonical program `A115137.P16976045627159990475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115137 (n : ℕ) : ℤ :=
  A115137.P16976045627159990475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115203.P5519273001455559311

`A064062(n+3)-A000257(n+3)`
-/

namespace A115203.P5519273001455559311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (n + 3) - A000257 (n + 3)

end

end A115203.P5519273001455559311

noncomputable section

/-- A115203: Sixth column of triangle A115193 (called C(1,2)).

Offset 0, canonical program `A115203.P5519273001455559311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115203 (n : ℕ) : ℤ :=
  A115203.P5519273001455559311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115878.P7524570473930013961

`A046079(gcd(n+1, lcm(2, ∑[n])))`
-/

namespace A115878.P7524570473930013961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (Nat.gcd (n + 1) (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A115878.P7524570473930013961

noncomputable section

/-- A115878: a(n) is the number of positive solutions of the Diophantine equation x^2 = y(y+n).

Offset 1, canonical program `A115878.P7524570473930013961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115878 (n : ℕ) : ℤ :=
  A115878.P7524570473930013961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116604.P1630362851422197254

`A010684(n)*A129447(n)`
-/

namespace A116604.P1630362851422197254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A129447 n

end

end A116604.P1630362851422197254

noncomputable section

/-- A116604: Expansion of q^(-1/2) * eta(q)^3 * eta(q^4) * eta(q^12) / (eta(q^2)^2 * eta(q^3)) in powers of q.

Offset 0, canonical program `A116604.P1630362851422197254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116604 (n : ℕ) : ℤ :=
  A116604.P1630362851422197254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118093.P12063885949380815492

`A115194(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A118093.P12063885949380815492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115194 n + 8 * a (n - 1)

end

end A118093.P12063885949380815492

noncomputable section

/-- A118093: Numbers of rooted hypermaps on the torus with n darts (darts are semi-edges in the particular case of ordinary maps).

Offset 3, canonical program `A118093.P12063885949380815492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A118093 (n : ℕ) : ℤ :=
  A118093.P12063885949380815492.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A118093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119705.P18254515124902290660

`p?[A005237(n+1)-1]`
-/

namespace A119705.P18254515124902290660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119705.P18254515124902290660

noncomputable section

/-- A119705: Primes p such that the number of divisors of p+1 equals number of divisors of p+2.

Offset 1, canonical program `A119705.P18254515124902290660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A119705 (n : ℕ) : ℤ :=
  A119705.P18254515124902290660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A119705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121024.P16747478931446409711

`record[A088440(A011534(n+1))]`
-/

namespace A121024.P16747478931446409711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A011534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121024.P16747478931446409711

noncomputable section

/-- A121024: Multiples of 4 containing a 4 in their decimal representation.

Offset 1, canonical program `A121024.P16747478931446409711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A121024 (n : ℕ) : ℤ :=
  A121024.P16747478931446409711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A121024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121763.P355992002445267932

`ceil(A121762(n+1)/6)`
-/

namespace A121763.P355992002445267932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121762 (n + 1) : ℚ) / 6⌉

end

end A121763.P355992002445267932

noncomputable section

/-- A121763: Numbers k such that 6*k-1 is prime while 6*k+1 is composite.

Offset 1, canonical program `A121763.P355992002445267932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121763 (n : ℕ) : ℤ :=
  A121763.P355992002445267932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121765.P17102494836504524144

`floor(A121764(n+1)/6)`
-/

namespace A121765.P17102494836504524144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121764 (n + 1) : ℚ) / 6⌋

end

end A121765.P17102494836504524144

noncomputable section

/-- A121765: Numbers k such that 6*k-1 is composite while 6*k+1 is prime.

Offset 1, canonical program `A121765.P17102494836504524144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121765 (n : ℕ) : ℤ :=
  A121765.P17102494836504524144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122098.P17266895398125348710

`A078268(n+1)+A068823(n+1)/(n+1)+1`
-/

namespace A122098.P17266895398125348710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078268 (n + 1) : ℚ) + (A068823 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A122098.P17266895398125348710

noncomputable section

/-- A122098: Smallest number, different from 1, which when multiplied by "n" produces a number with "n" as its rightmost digits.

Offset 1, canonical program `A122098.P17266895398125348710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122098 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122098.P17266895398125348710.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122098.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126068.P1244538512425352377

`and(-2, A007971(n))`
-/

namespace A126068.P1244538512425352377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A007971 n)

end

end A126068.P1244538512425352377

noncomputable section

/-- A126068: Expansion of 1 - x - sqrt(1 - 2*x - 3*x^2) in powers of x.

Offset 0, canonical program `A126068.P1244538512425352377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A126068 (n : ℕ) : ℤ :=
  A126068.P1244538512425352377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A126068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127268.P10382840147593154222

`A008475(n+1)%A028310(Δ[A024924(n)])`
-/

namespace A127268.P10382840147593154222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008475 (n + 1)) (A028310 (f1 (n + 1) - f1 n).toNat)

end

end A127268.P10382840147593154222

noncomputable section

/-- A127268: If the prime factorization of n is n = Product_{p|n} p^b(p,n) (p = distinct prime divisors of n, each b(p,n) is a positive integer), then a(n) is (Sum_{p|n} p^b(p,n)) taken mod (Sum_{p|n} p).

Offset 1, canonical program `A127268.P10382840147593154222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127268 (n : ℕ) : ℤ :=
  A127268.P10382840147593154222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127693.P9222827015959222163

`A122190(n)%2`
-/

namespace A127693.P9222827015959222163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122190 n) 2

end

end A127693.P9222827015959222163

noncomputable section

/-- A127693: Expansion of psi(x^2) + x * psi(x^10) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A127693.P9222827015959222163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127693 (n : ℕ) : ℤ :=
  A127693.P9222827015959222163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128245.P15864719787506353209

`A002264(p?[A101203(n+5)-A101203(n+1)])-1`
-/

namespace A128245.P15864719787506353209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A128245.P15864719787506353209

noncomputable section

/-- A128245: Smallest of three consecutive composite numbers whose sum is prime.

Offset 1, canonical program `A128245.P15864719787506353209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A128245 (n : ℕ) : ℤ :=
  A128245.P15864719787506353209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A128245.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A132248.P9030196148284508513

`∩[A121764(n+1), A128470(n)]`
-/

namespace A132248.P9030196148284508513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P9030196148284508513

noncomputable section

/-- A132248: Isolated primes congruent to 1 (mod 30).

Offset 1, canonical program `A132248.P9030196148284508513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132248 (n : ℕ) : ℤ :=
  (A132248.P9030196148284508513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132252.P10549027381406986059

`∩[30*n+19, A121764(n+1)]`
-/

namespace A132252.P10549027381406986059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P10549027381406986059

noncomputable section

/-- A132252: Isolated primes congruent to 19 (mod 30).

Offset 1, canonical program `A132252.P10549027381406986059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132252 (n : ℕ) : ℤ :=
  (A132252.P10549027381406986059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005792.P17441170092424256089

`∪[A001983(n+1), A249096(n+1)]`
-/

namespace A005792.P17441170092424256089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005792.P17441170092424256089

noncomputable section

/-- A005792: Positive numbers that are the sum of 2 squares or 3 times a square.

Offset 1, canonical program `A005792.P17441170092424256089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005792 (n : ℕ) : ℤ :=
  (A005792.P17441170092424256089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008541.P9566157956627903149

`comp[∪[A011534(n+1), A011535(n+1)]]`
-/

namespace A008541.P9566157956627903149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A008541.P9566157956627903149

noncomputable section

/-- A008541: Numbers that do not contain the letter `f'.

Offset 1, canonical program `A008541.P9566157956627903149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008541 (n : ℕ) : ℤ :=
  (A008541.P9566157956627903149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009041.P2318627232109113920

`∑[char[∑[A046079(n+1)]]]+2`
-/

namespace A009041.P2318627232109113920
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A009041.P2318627232109113920

noncomputable section

/-- A009041: Ordered legs of Pythagorean triangles.

Offset 1, canonical program `A009041.P2318627232109113920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009041 (n : ℕ) : ℤ :=
  (A009041.P2318627232109113920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009041.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A015638.P1771638695330122306

`A015634(n+2)-A000292(n+2)`
-/

namespace A015638.P1771638695330122306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015634 (n + 2) - A000292 (n + 2)

end

end A015638.P1771638695330122306

noncomputable section

/-- A015638: Number of ordered quadruples of integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015638.P1771638695330122306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A015638 (n : ℕ) : ℤ :=
  A015638.P1771638695330122306.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A015638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018892.P739243444939951687

`A046079(2*(n+1))+1`
-/

namespace A018892.P739243444939951687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * (n + 1)) + 1

end

end A018892.P739243444939951687

noncomputable section

/-- A018892: Number of ways to write 1/n as a sum of exactly 2 unit fractions.

Offset 1, canonical program `A018892.P739243444939951687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018892 (n : ℕ) : ℤ :=
  A018892.P739243444939951687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020756.P16947837090098696349

`∪[A051533(n+1), ∑[n]]`
-/

namespace A020756.P16947837090098696349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A020756.P16947837090098696349

noncomputable section

/-- A020756: Numbers that are the sum of two triangular numbers.

Offset 1, canonical program `A020756.P16947837090098696349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020756 (n : ℕ) : ℤ :=
  (A020756.P16947837090098696349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022820.P10907069291744158179

`∑[A325937(n+3)]+1`
-/

namespace A022820.P10907069291744158179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022820.P10907069291744158179

noncomputable section

/-- A022820: [ n/1 ] - [ (n-1)/2 ] + [ (n-2)/3 ] - ... + ((-1)^n)[ 2/(n-1) ].

Offset 2, canonical program `A022820.P10907069291744158179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022820 (n : ℕ) : ℤ :=
  A022820.P10907069291744158179.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024316.P4230804038874915829

`A052344(n+4)-A010054(n+3)`
-/

namespace A024316.P4230804038874915829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (n + 4) - A010054 (n + 3)

end

end A024316.P4230804038874915829

noncomputable section

/-- A024316: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = A023531.

Offset 1, canonical program `A024316.P4230804038874915829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024316 (n : ℕ) : ℤ :=
  A024316.P4230804038874915829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024316.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029125.P2235379853175947616

`A029235(abs(1-n))+A029233(n)`
-/

namespace A029125.P2235379853175947616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 |1 - (n : ℤ)|.toNat + A029233 n

end

end A029125.P2235379853175947616

noncomputable section

/-- A029125: Expansion of 1/((1-x)(1-x^7)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029125.P2235379853175947616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029125 (n : ℕ) : ℤ :=
  A029125.P2235379853175947616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029325.P16077546944501799160

`A029431(abs(3-n))+A029431(n)`
-/

namespace A029325.P16077546944501799160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 |3 - (n : ℤ)|.toNat + A029431 n

end

end A029325.P16077546944501799160

noncomputable section

/-- A029325: Expansion of 1/((1-x^3)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029325.P16077546944501799160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029325 (n : ℕ) : ℤ :=
  A029325.P16077546944501799160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033992.P9984028461934439090

`A214195(n+2)`
-/

namespace A033992.P9984028461934439090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2)

end

end A033992.P9984028461934439090

noncomputable section

/-- A033992: Numbers that are divisible by exactly three different primes.

Offset 1, canonical program `A033992.P9984028461934439090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033992 (n : ℕ) : ℤ :=
  A033992.P9984028461934439090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034682.P3549804314413141181

`A034678((n+1)²)`
-/

namespace A034682.P3549804314413141181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034678 ((n + 1) ^ 2)

end

end A034682.P3549804314413141181

noncomputable section

/-- A034682: Sum of eighth powers of unitary divisors.

Offset 1, canonical program `A034682.P3549804314413141181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A034682 (n : ℕ) : ℤ :=
  A034682.P3549804314413141181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A034682.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A035170.P11485514388961379659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035170 (n : ℕ) : ℤ :=
  A035170.P11485514388961379659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035292.P15683041574898853470

`A010684(n)*A045771(n+1)`
-/

namespace A035292.P15683041574898853470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A045771 (n + 1)

end

end A035292.P15683041574898853470

noncomputable section

/-- A035292: Number of similar sublattices of Z^4 of index n^2.

Offset 1, canonical program `A035292.P15683041574898853470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035292 (n : ℕ) : ℤ :=
  A035292.P15683041574898853470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035292.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038612.P8782522908365657208

`p?[A052406(n+1)]`
-/

namespace A038612.P8782522908365657208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038612.P8782522908365657208

noncomputable section

/-- A038612: Primes not containing the digit '4'.

Offset 1, canonical program `A038612.P8782522908365657208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A038612 (n : ℕ) : ℤ :=
  A038612.P8782522908365657208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A038612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039644.P570764307026093276

`A039637(A006093(n+1))`
-/

namespace A039644.P570764307026093276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A006093 (n + 1)).toNat

end

end A039644.P570764307026093276

noncomputable section

/-- A039644: Number of steps to fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)-1.

Offset 1, canonical program `A039644.P570764307026093276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039644 (n : ℕ) : ℤ :=
  A039644.P570764307026093276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039645.P11813040183617158880

`A039637(A008864(n+1))`
-/

namespace A039645.P11813040183617158880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A008864 (n + 1)).toNat

end

end A039645.P11813040183617158880

noncomputable section

/-- A039645: Number of steps to fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)+1.

Offset 1, canonical program `A039645.P11813040183617158880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039645 (n : ℕ) : ℤ :=
  A039645.P11813040183617158880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039645.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043457.P3491725996769993334

`eq[1, A268643(A052406(n+1))]`
-/

namespace A043457.P3491725996769993334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P3491725996769993334

noncomputable section

/-- A043457: Numbers having one 1 in base 9.

Offset 1, canonical program `A043457.P3491725996769993334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A043457 (n : ℕ) : ℤ :=
  (A043457.P3491725996769993334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A043457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043465.P15128784765198913118

`eq[1, A316864(A052406(n+1))]`
-/

namespace A043465.P15128784765198913118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043465.P15128784765198913118

noncomputable section

/-- A043465: Numbers having one 3 in base 9.

Offset 1, canonical program `A043465.P15128784765198913118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043465 (n : ℕ) : ℤ :=
  (A043465.P15128784765198913118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045737.P2550653022607152751

`A026019(n)-A001764(n+1)`
-/

namespace A045737.P2550653022607152751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026019 n - A001764 (n + 1)

end

end A045737.P2550653022607152751

noncomputable section

/-- A045737: Number of nonroot branch nodes in all noncrossing rooted trees on n nodes on a circle.

Offset 2, canonical program `A045737.P2550653022607152751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045737 (n : ℕ) : ℤ :=
  A045737.P2550653022607152751.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045737.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049096.P16175576370623307100

`lt[A046799(n), log2(A046798(n))]`
-/

namespace A049096.P16175576370623307100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046798 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A049096.P16175576370623307100

noncomputable section

/-- A049096: Numbers k such that 2^k + 1 is divisible by a square > 1.

Offset 1, canonical program `A049096.P16175576370623307100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A049096 (n : ℕ) : ℤ :=
  (A049096.P16175576370623307100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A049096.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051193.P1309256294605873635

`(n+1)*A057661(n+1)`
-/

namespace A051193.P1309256294605873635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A057661 (n + 1)

end

end A051193.P1309256294605873635

noncomputable section

/-- A051193: a(n) = Sum_{k=1..n} lcm(n,k).

Offset 1, canonical program `A051193.P1309256294605873635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051193 (n : ℕ) : ℤ :=
  A051193.P1309256294605873635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051193.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052159.P16139146045707292468

`∩[A015914(n+1), A121762(n+1)]`
-/

namespace A052159.P16139146045707292468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P16139146045707292468

noncomputable section

/-- A052159: Lower prime of a difference of 6 (G-minor-6 primes) between consecutive primes of 6k+5 form.

Offset 1, canonical program `A052159.P16139146045707292468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A052159 (n : ℕ) : ℤ :=
  (A052159.P16139146045707292468.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A052159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058957.P5083467042790607208

`lt[1, A325937(n+1)²]+1`
-/

namespace A058957.P5083467042790607208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058957.P5083467042790607208

noncomputable section

/-- A058957: Numbers having at least two representations as b^2 - c^2 with b > c >= 0.

Offset 1, canonical program `A058957.P5083467042790607208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058957 (n : ℕ) : ℤ :=
  (A058957.P5083467042790607208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058957.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071928.P9769688946254104002

`A001316(A284775(A008619(n))+A001316(n))`
-/

namespace A071928.P9769688946254104002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A284775 (A008619 n).toNat + A001316 n).toNat

end

end A071928.P9769688946254104002

noncomputable section

/-- A071928: Kolakoski-(2,4) sequence: a(n) is length of n-th run.

Offset 1, canonical program `A071928.P9769688946254104002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071928 (n : ℕ) : ℤ :=
  A071928.P9769688946254104002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071928.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073839.P2498259996426853723

`A101203(A163300(n+1))-A101203(n)`
-/

namespace A073839.P2498259996426853723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A163300 (n + 1)).toNat - A101203 n

end

end A073839.P2498259996426853723

noncomputable section

/-- A073839: Sum of the composite numbers between n and 2n (both inclusive).

Offset 1, canonical program `A073839.P2498259996426853723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073839 (n : ℕ) : ℤ :=
  A073839.P2498259996426853723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073839.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A075893.P13894536752048670216

`(A131686(n+1)-A069484(n+1))/3`
-/

namespace A075893.P13894536752048670216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131686 (n + 1) - A069484 (n + 1) : ℚ) / 3

end

end A075893.P13894536752048670216

noncomputable section

/-- A075893: Average of three successive primes squared, (prime(n)^2+prime(n+1)^2+prime(n+2)^2)/3, n>=3.

Offset 3, canonical program `A075893.P13894536752048670216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075893.P13894536752048670216.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075894.P14700299347206667314

`(A131686(n+1)-A001248(n+1))/4`
-/

namespace A075894.P14700299347206667314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131686 (n + 1) - A001248 (n + 1) : ℚ) / 4

end

end A075894.P14700299347206667314

noncomputable section

/-- A075894: Average of four successive primes squared, (prime(n)^2 + prime(n+1)^2 + prime(n+2)^2 + prime(n+3)^2)/4, n>=2.

Offset 2, canonical program `A075894.P14700299347206667314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075894 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075894.P14700299347206667314.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075894.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078267.P17940789187434632380

`A078268(n+1)*10^A055642(n+1)/(n+1)`
-/

namespace A078267.P17940789187434632380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078268 (n + 1) : ℚ) * (10 : ℚ) ^ (A055642 (n + 1) : ℤ) / (n + 1 : ℚ)

end

end A078267.P17940789187434632380

noncomputable section

/-- A078267: Smallest k such that k*N is an integer where N is obtained by placing the string "n" after a decimal point.

Offset 1, canonical program `A078267.P17940789187434632380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A078268, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078267 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078267.P17940789187434632380.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A078268, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078267.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079544.P5332634671618239026

`p?[2*A001983(n+1)+1]`
-/

namespace A079544.P5332634671618239026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001983 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079544.P5332634671618239026

noncomputable section

/-- A079544: Primes of the form x^2 + y^2 + 1, x>0, y>0.

Offset 1, canonical program `A079544.P5332634671618239026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1617 terms. -/
def A079544 (n : ℕ) : ℤ :=
  A079544.P5332634671618239026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1617 terms. -/
def A079544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079732.P14358494824311656752

`p?[A062545(A001983(n+1))]`
-/

namespace A079732.P14358494824311656752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A001983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079732.P14358494824311656752

noncomputable section

/-- A079732: Primes of the form x^2 + y^2 + 3 (x,y positive).

Offset 1, canonical program `A079732.P14358494824311656752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. -/
def A079732 (n : ℕ) : ℤ :=
  A079732.P14358494824311656752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. -/
def A079732.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088631.P7843051689605076685

`A060265(n+2)-(n+2)`
-/

namespace A088631.P7843051689605076685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (n + 2) - (n + 2 : ℤ)

end

end A088631.P7843051689605076685

noncomputable section

/-- A088631: Largest number m < n such that m+n is a prime.

Offset 2, canonical program `A088631.P7843051689605076685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088631 (n : ℕ) : ℤ :=
  A088631.P7843051689605076685.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088631.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A096157.P16966813079005757665

`lt[A325937(n+1)², 2]+1`
-/

namespace A096157.P16966813079005757665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096157.P16966813079005757665

noncomputable section

/-- A096157: Numbers whose numbers of odd and even proper divisors differ at most by 1.

Offset 1, canonical program `A096157.P16966813079005757665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096157 (n : ℕ) : ℤ :=
  (A096157.P16966813079005757665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106092.P1085686516415469086

`lt[A325937(n+2), 2]+2`
-/

namespace A106092.P1085686516415469086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A106092.P1085686516415469086

noncomputable section

/-- A106092: Even numbers and primes.

Offset 1, canonical program `A106092.P1085686516415469086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106092 (n : ℕ) : ℤ :=
  (A106092.P1085686516415469086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107917.P17887768737804748010

`∑[A107965(n)]`
-/

namespace A107917.P17887768737804748010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107917.P17887768737804748010

noncomputable section

/-- A107917: a(n) = (n+1)(n+2)^2*(n+3)^3*(n+4)^2*(n+5)(n^2 + 6n + 10)/86400.

Offset 0, canonical program `A107917.P17887768737804748010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107917 (n : ℕ) : ℤ :=
  A107917.P17887768737804748010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112988.P2584169627832420674

`A006005(n+1)+A077150(A006005(n+1))+1`
-/

namespace A112988.P2584169627832420674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A077150 (A006005 (n + 1)).toNat + 1)

end

end A112988.P2584169627832420674

noncomputable section

/-- A112988: Position of n-th prime in A089088.

Offset 1, canonical program `A112988.P2584169627832420674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112988 (n : ℕ) : ℤ :=
  A112988.P2584169627832420674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112988.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119381.P9500418666100049897

`∩[A071680(n+1), A098029(n+1)]`
-/

namespace A119381.P9500418666100049897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119381.P9500418666100049897

noncomputable section

/-- A119381: Primes p(n) for which (p(n-1) + p(n+2)) / p(n) = 2.

Offset 1, canonical program `A119381.P9500418666100049897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119381 (n : ℕ) : ℤ :=
  (A119381.P9500418666100049897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124934.P10210965125734739564

`∪[A125217(n+1), A125218(n+1)]`
-/

namespace A124934.P10210965125734739564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124934.P10210965125734739564

noncomputable section

/-- A124934: Numbers of the form 4mn - m - n, where m, n are positive integers.

Offset 1, canonical program `A124934.P10210965125734739564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124934 (n : ℕ) : ℤ :=
  (A124934.P10210965125734739564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124934.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034448.P17017727775393200719

`A064971(n+1)/(n+1)`
-/

namespace A034448.P17017727775393200719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A034448.P17017727775393200719

noncomputable section

/-- A034448: usigma(n) = sum of unitary divisors of n (divisors d such that gcd(d, n/d)=1); also called UnitarySigma(n).

Offset 1, canonical program `A034448.P17017727775393200719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034448.P17017727775393200719.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034448.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A015613.P10342117008868844032

`A002088(n+1)-(n+1)`
-/

namespace A015613.P10342117008868844032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (n + 1 : ℤ)

end

end A015613.P10342117008868844032

noncomputable section

/-- A015613: a(n) = Sum_{i=1..n} phi(i) * (ceiling(n/i) - floor(n/i)).

Offset 1, canonical program `A015613.P10342117008868844032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015613 (n : ℕ) : ℤ :=
  A015613.P10342117008868844032.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023022.P11386116983089774469

`round(Δ[A002088(n+1)]/2)`
-/

namespace A023022.P11386116983089774469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 2)

end

end A023022.P11386116983089774469

noncomputable section

/-- A023022: Number of partitions of n into two relatively prime parts. After initial term, this is the "half-totient" function phi(n)/2 (A000010(n)/2).

Offset 2, canonical program `A023022.P11386116983089774469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023022 (n : ℕ) : ℤ :=
  A023022.P11386116983089774469.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036698.P3152835247264100802

`A014200(n²)`
-/

namespace A036698.P3152835247264100802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n ^ 2)

end

end A036698.P3152835247264100802

noncomputable section

/-- A036698: a(n) is the number of Gaussian integers z=a+bi satisfying |z|<=n, a>0, b>=0.

Offset 0, canonical program `A036698.P3152835247264100802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036698 (n : ℕ) : ℤ :=
  A036698.P3152835247264100802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045664.P10163269847227854319

`A000007(n)+n*A027375(n)`
-/

namespace A045664.P10163269847227854319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A027375 n

end

end A045664.P10163269847227854319

noncomputable section

/-- A045664: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement.

Offset 0, canonical program `A045664.P10163269847227854319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045664 (n : ℕ) : ℤ :=
  A045664.P10163269847227854319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046657.P7830311371866937394

`A002088(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046657.P7830311371866937394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 2) : ℚ) / 2

end

end A046657.P7830311371866937394

noncomputable section

/-- A046657: a(n) = A002088(n)/2.

Offset 2, canonical program `A046657.P7830311371866937394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046657.P7830311371866937394.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046657.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 3, canonical program `A056141.P7848227700936811261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056139, A056140, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056141 (n : ℕ) : ℤ :=
  A056141.P7848227700936811261.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056139, A056140, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056141.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057470.P6870654479483838036

`A006450(A029707(n+1))`
-/

namespace A057470.P6870654479483838036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A029707 (n + 1)).toNat

end

end A057470.P6870654479483838036

noncomputable section

/-- A057470: Let prime(i) = i-th prime, let twin(n) = (P,Q) be n-th pair of twin primes; sequence gives prime(P).

Offset 1, canonical program `A057470.P6870654479483838036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057470 (n : ℕ) : ℤ :=
  A057470.P6870654479483838036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063088.P233869695303598364

`A002088(n+1)-A006218(n+1)`
-/

namespace A063088.P233869695303598364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - A006218 (n + 1)

end

end A063088.P233869695303598364

noncomputable section

/-- A063088: a(n) = Sum_{k=1..n} phi(k) - Sum{k=1..n} d(k), where d() is the number of divisors function.

Offset 1, canonical program `A063088.P233869695303598364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063088 (n : ℕ) : ℤ :=
  A063088.P233869695303598364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063088.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A063985.P3942861327483730228

`A000217(n+1)-A002088(n+1)`
-/

namespace A063985.P3942861327483730228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A002088 (n + 1)

end

end A063985.P3942861327483730228

noncomputable section

/-- A063985: Partial sums of cototient sequence A051953.

Offset 1, canonical program `A063985.P3942861327483730228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063985 (n : ℕ) : ℤ :=
  A063985.P3942861327483730228.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063985.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A064355.P15803301992756024606

`2/(n+1)*A011946(n+1)`
-/

namespace A064355.P15803301992756024606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A011946 (n + 1) : ℚ)

end

end A064355.P15803301992756024606

noncomputable section

/-- A064355: Number of subsets of {1,2,..n} that sum to 1 mod n.

Offset 1, canonical program `A064355.P15803301992756024606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A064355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064355.P15803301992756024606.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A064355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086227.P5243369785632214675

`(-1)^(n+3)*A079458(n+2)/A140434(n+2)`
-/

namespace A086227.P5243369785632214675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 3) * A079458 (n + 2) : ℚ) / (A140434 (n + 2) : ℚ)

end

end A086227.P5243369785632214675

noncomputable section

/-- A086227: a(n) = Sum_{1<=k<=4*n, gcd(k,n)=1} (i^k*tan(k*Pi/(4*n)))/(4*i), where i is the imaginary unit.

Offset 2, canonical program `A086227.P5243369785632214675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, A140434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086227.P5243369785632214675.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, A140434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086227.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088985.P11937650626503658584

`A072677(A029707(n+1))`
-/

namespace A088985.P11937650626503658584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (A029707 (n + 1)).toNat

end

end A088985.P11937650626503658584

noncomputable section

/-- A088985: Numbers of the form prime(prime(n)+1), with n satisfying prime(n)+2 = prime(n+1).

Offset 1, canonical program `A088985.P11937650626503658584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088985 (n : ℕ) : ℤ :=
  A088985.P11937650626503658584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088985.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104723.P5041177650715917469

`floor((A027375(n)+n%2)/3)`
-/

namespace A104723.P5041177650715917469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027375 n + ((n % 2 : ℕ) : ℤ) : ℚ) / 3⌋

end

end A104723.P5041177650715917469

noncomputable section

/-- A104723: Moebius transform of Jacobsthal numbers.

Offset 0, canonical program `A104723.P5041177650715917469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A104723 (n : ℕ) : ℤ :=
  A104723.P5041177650715917469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A104723.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110969.P16632424768012697550

`Δ[record[A008475(n+1)-A025528(n+1)]]`
-/

namespace A110969.P16632424768012697550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A025528 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110969.P16632424768012697550

noncomputable section

/-- A110969: Length of the runs of ones in A014963.

Offset 1, canonical program `A110969.P16632424768012697550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9689 terms. -/
def A110969 (n : ℕ) : ℤ :=
  A110969.P16632424768012697550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9689 terms. -/
def A110969.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126990.P1126875488273332131

`A007917(A073273(n+1))`
-/

namespace A126990.P1126875488273332131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A073273 (n + 1)).toNat

end

end A126990.P1126875488273332131

noncomputable section

/-- A126990: Largest prime preceding geometric mean of prime(n) and prime(n+2).

Offset 1, canonical program `A126990.P1126875488273332131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A073273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126990 (n : ℕ) : ℤ :=
  A126990.P1126875488273332131.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A073273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126990.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A000328.P3563522184609365216

`A057655(n²)`
-/

namespace A000328.P3563522184609365216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2)

end

end A000328.P3563522184609365216

noncomputable section

/-- A000328: Number of points of norm <= n^2 in square lattice.

Offset 0, canonical program `A000328.P3563522184609365216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000328 (n : ℕ) : ℤ :=
  A000328.P3563522184609365216.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000740.P14835443835842648949

`A027375(n+1)/2`
-/

namespace A000740.P14835443835842648949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027375 (n + 1) : ℚ) / 2

end

end A000740.P14835443835842648949

noncomputable section

/-- A000740: Number of 2n-bead balanced binary necklaces of fundamental period 2n, equivalent to reversed complement; also Dirichlet convolution of b_n=2^(n-1) with mu(n); also number of components of Mandelbrot set corresponding to Julia sets with an attractive n-cycle.

Offset 1, canonical program `A000740.P14835443835842648949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000740 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000740.P14835443835842648949.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003958.P196685604458257440

`abs(A125131(n+1))`
-/

namespace A003958.P196685604458257440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125131 (n + 1)|

end

end A003958.P196685604458257440

noncomputable section

/-- A003958: If n = Product p(k)^e(k) then a(n) = Product (p(k)-1)^e(k).

Offset 1, canonical program `A003958.P196685604458257440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003958 (n : ℕ) : ℤ :=
  A003958.P196685604458257440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006318.P6019427271403172875

`Δ[A176006(n)]`
-/

namespace A006318.P6019427271403172875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006318.P6019427271403172875

noncomputable section

/-- A006318: Large Schröder numbers (or large Schroeder numbers, or big Schroeder numbers).

Offset 0, canonical program `A006318.P6019427271403172875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A006318 (n : ℕ) : ℤ :=
  A006318.P6019427271403172875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A006318.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007706.P7962893497832790206

`A000007(n)+1-A257628(n)`
-/

namespace A007706.P7962893497832790206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A257628 n)

end

end A007706.P7962893497832790206

noncomputable section

/-- A007706: a(n) = 1 + coefficient of x^n in Product_{k>=1} (1-x^k) (essentially the expansion of the Dedekind function eta(x)).

Offset 0, canonical program `A007706.P7962893497832790206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A007706 (n : ℕ) : ℤ :=
  A007706.P7962893497832790206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A007706.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A036704.P2788393936175939244

`A057655(n²+n)`
-/

namespace A036704.P2788393936175939244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2 + n)

end

end A036704.P2788393936175939244

noncomputable section

/-- A036704: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2.

Offset 0, canonical program `A036704.P2788393936175939244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036704 (n : ℕ) : ℤ :=
  A036704.P2788393936175939244.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036704.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A045670.P9055415353420482661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045670 (n : ℕ) : ℤ :=
  A045670.P9055415353420482661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045670.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A054055.P4613541377942540963

`A355222(n)%10`
-/

namespace A054055.P4613541377942540963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355222 n) 10

end

end A054055.P4613541377942540963

noncomputable section

/-- A054055: Largest digit of n.

Offset 0, canonical program `A054055.P4613541377942540963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054055 (n : ℕ) : ℤ :=
  A054055.P4613541377942540963.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057000.P11374671352921709865

`2-Δ[A053158(n+1)]`
-/

namespace A057000.P11374671352921709865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A057000.P11374671352921709865

noncomputable section

/-- A057000: a(n) = phi(n+1) - phi(n).

Offset 1, canonical program `A057000.P11374671352921709865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057000 (n : ℕ) : ℤ :=
  A057000.P11374671352921709865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057000.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A065386.P10145385021084767959

`record[A053158(n+1)-(n+1)]`
-/

namespace A065386.P10145385021084767959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P10145385021084767959

noncomputable section

/-- A065386: Successive record values of the cototient function (A051953).

Offset 1, canonical program `A065386.P10145385021084767959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A065386 (n : ℕ) : ℤ :=
  A065386.P10145385021084767959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A065386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066248.P10612536354157230984

`A026238(n+2)*2-A066247(n+2)`
-/

namespace A066248.P10612536354157230984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2) * 2 - A066247 (n + 2)

end

end A066248.P10612536354157230984

noncomputable section

/-- A066248: a(n) = if n+1 is prime then A049084(n+1)*2 else A066246(n+1)*2 - 1.

Offset 1, canonical program `A066248.P10612536354157230984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026238, A066247, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066248 (n : ℕ) : ℤ :=
  A066248.P10612536354157230984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026238, A066247, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066250.P6960547078573178582

`A026238(n+2)*2-A010051(n+2)`
-/

namespace A066250.P6960547078573178582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2) * 2 - A010051 (n + 2)

end

end A066250.P6960547078573178582

noncomputable section

/-- A066250: a(n) = if n+1 is prime then A049084(n+1)*2 - 1 else A066246(n+1)*2.

Offset 1, canonical program `A066250.P6960547078573178582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A026238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066250 (n : ℕ) : ℤ :=
  A066250.P6960547078573178582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A026238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066883.P6672544760734734469

`A054272(n+1)-A000040(n+1)`
-/

namespace A066883.P6672544760734734469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) - A000040 (n + 1)

end

end A066883.P6672544760734734469

noncomputable section

/-- A066883: Number of primes in the interval [p(n), p(n)^2] minus p(n), where p(n) is the n-th prime.

Offset 1, canonical program `A066883.P6672544760734734469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066883 (n : ℕ) : ℤ :=
  A066883.P6672544760734734469.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066883.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074274.P5256342783301417173

`Δ[A074273(n+1)]`
-/

namespace A074274.P5256342783301417173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074274.P5256342783301417173

noncomputable section

/-- A074274: Gaps between even number of 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A074274.P5256342783301417173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074274 (n : ℕ) : ℤ :=
  A074274.P5256342783301417173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074289.P13643960160893623

`∩[2*A022297(n+2)-n, record[A074288(n+1)]]`
-/

namespace A074289.P13643960160893623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022297 (n + 2) - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074289.P13643960160893623

noncomputable section

/-- A074289: Values of A000002(n)*A054353(n) that are repeated.

Offset 1, canonical program `A074289.P13643960160893623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1729 terms. -/
def A074289 (n : ℕ) : ℤ :=
  (A074289.P13643960160893623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1729 terms. -/
def A074289.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079532.P14893760689655914217

`A053158(n+1)-A135668(n+1)`
-/

namespace A079532.P14893760689655914217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A135668 (n + 1)

end

end A079532.P14893760689655914217

noncomputable section

/-- A079532: a(n) = floor(n - sqrt(n)) - phi(n).

Offset 1, canonical program `A079532.P14893760689655914217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079532 (n : ℕ) : ℤ :=
  A079532.P14893760689655914217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080103.P15352554582229907592

`gcd(A049084(A065514(n+3)), A065514(n+3))`
-/

namespace A080103.P15352554582229907592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049084 (A065514 (n + 3)).toNat) (A065514 (n + 3))

end

end A080103.P15352554582229907592

noncomputable section

/-- A080103: Greatest prime power in all composite numbers between n-th prime and next prime, a(n) = 1 if no such prime power exists.

Offset 2, canonical program `A080103.P15352554582229907592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A080103 (n : ℕ) : ℤ :=
  (A080103.P15352554582229907592.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A080103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080543.P9661818931796331892

`A080541(A080541(n+1))`
-/

namespace A080543.P9661818931796331892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A080541 (n + 1)).toNat

end

end A080543.P9661818931796331892

noncomputable section

/-- A080543: In binary representation: keep the first digit and rotate left the others twice.

Offset 1, canonical program `A080543.P9661818931796331892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9096 terms. -/
def A080543 (n : ℕ) : ℤ :=
  A080543.P9661818931796331892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9096 terms. -/
def A080543.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A088711.P10668698968126566124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1115 terms. -/
def A088711 (n : ℕ) : ℤ :=
  (A088711.P10668698968126566124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1115 terms. -/
def A088711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098228.P18298445085309649262

`floor((n+2)²/A053650(n+2))`
-/

namespace A098228.P18298445085309649262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ 2 : ℚ) / (A053650 (n + 2) : ℚ)⌋

end

end A098228.P18298445085309649262

noncomputable section

/-- A098228: a(n) = floor(n/(n-phi(n))) = floor(n/cototient(n)).

Offset 2, canonical program `A098228.P18298445085309649262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098228 (n : ℕ) : ℤ :=
  A098228.P18298445085309649262.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101909.P4303666078231778873

`A099802(2*(n+1))-A099802(n+1)`
-/

namespace A101909.P4303666078231778873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * (n + 1)) - A099802 (n + 1)

end

end A101909.P4303666078231778873

noncomputable section

/-- A101909: Number of primes between 2n and 4n.

Offset 1, canonical program `A101909.P4303666078231778873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101909 (n : ℕ) : ℤ :=
  A101909.P4303666078231778873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106464.P950177952330348354

`A006579(n+3)-A060992(n+3)`
-/

namespace A106464.P950177952330348354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 3) - A060992 (n + 3)

end

end A106464.P950177952330348354

noncomputable section

/-- A106464: Antidiagonal sums of number triangle A003989.

Offset 0, canonical program `A106464.P950177952330348354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A106464 (n : ℕ) : ℤ :=
  A106464.P950177952330348354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A106464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106474.P7463800032369804084

`A006579(4*n+4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A106474.P7463800032369804084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006579 (4 * n + 4) : ℚ) / 4

end

end A106474.P7463800032369804084

noncomputable section

/-- A106474: a(n) = A006579(4n+4)/4.

Offset 0, canonical program `A106474.P7463800032369804084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106474.P7463800032369804084.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106474.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A116569.P3485505582268508162

`(A116563(n+1)^3-A116563(n+1))/6`
-/

namespace A116569.P3485505582268508162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116563 (n + 1) ^ 3 - A116563 (n + 1) : ℚ) / 6

end

end A116569.P3485505582268508162

noncomputable section

/-- A116569: a(n) = (x^3 - x) / 6, where x is the genus of the modular curve X_0(p) for p = prime(n).

Offset 1, canonical program `A116569.P3485505582268508162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116569.P3485505582268508162.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116569.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A120632.P7481929309965890366

`A065897(n+1)+1+n`
-/

namespace A120632.P7481929309965890366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) + 1 + (n : ℤ)

end

end A120632.P7481929309965890366

noncomputable section

/-- A120632: Number of numbers >1 up to 2*prime(n) which are divisible by primes up to prime(n).

Offset 1, canonical program `A120632.P7481929309965890366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120632 (n : ℕ) : ℤ :=
  A120632.P7481929309965890366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120632.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129033.P13034651442379249591

`A003051(n+6)-A131743(n+5)-2`
-/

namespace A129033.P13034651442379249591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (n + 6) - A131743 (n + 5) - 2

end

end A129033.P13034651442379249591

noncomputable section

/-- A129033: Number of n-node triangulations of the torus S_1 in which every node has degree >= 6.

Offset 6, canonical program `A129033.P13034651442379249591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129033 (n : ℕ) : ℤ :=
  A129033.P13034651442379249591.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129438.P16505802994344033545

`A125096(A028310(n))`
-/

namespace A129438.P16505802994344033545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A028310 n).toNat

end

end A129438.P16505802994344033545

noncomputable section

/-- A129438: Expansion of (phi(q) * phi(q^2) + phi(-q^2) * phi(q^4)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A129438.P16505802994344033545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129438 (n : ℕ) : ℤ :=
  A129438.P16505802994344033545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131962.P10633637517023814369

`A121361(2*n)`
-/

namespace A131962.P10633637517023814369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (2 * n)

end

end A131962.P10633637517023814369

noncomputable section

/-- A131962: Expansion of psi(x) * phi(-x^12) / chi(-x^4) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A131962.P10633637517023814369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131962 (n : ℕ) : ℤ :=
  A131962.P10633637517023814369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131964.P13799590537725457977

`A121361(Δ[n²])`
-/

namespace A131964.P13799590537725457977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131964.P13799590537725457977

noncomputable section

/-- A131964: Expansion of f(x^2, x^10) / f(x, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131964.P13799590537725457977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131964 (n : ℕ) : ℤ :=
  A131964.P13799590537725457977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131964.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003640.P12567564219174590625

`A000010(∏{p}[A003657(n+1), A000005(#)])`
-/

namespace A003640.P12567564219174590625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p).toNat

end

end A003640.P12567564219174590625

noncomputable section

/-- A003640: Number of genera of imaginary quadratic field with discriminant -k, k = A003657(n).

Offset 1, canonical program `A003640.P12567564219174590625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003640 (n : ℕ) : ℤ :=
  A003640.P12567564219174590625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003800.P15621903815965783773

`(A059238(n+1)+A329119(n+1)²)*A246655(n+1)²`
-/

namespace A003800.P15621903815965783773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) + A329119 (n + 1) ^ 2) * A246655 (n + 1) ^ 2

end

end A003800.P15621903815965783773

noncomputable section

/-- A003800: Order of universal Chevalley group A_2 (q), q = prime power.

Offset 1, canonical program `A003800.P15621903815965783773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003800 (n : ℕ) : ℤ :=
  A003800.P15621903815965783773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004085.P11876971383816228899

`A007953(A000010(n+1))`
-/

namespace A004085.P11876971383816228899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000010 (n + 1)).toNat

end

end A004085.P11876971383816228899

noncomputable section

/-- A004085: Sum of digits of Euler totient function of n.

Offset 1, canonical program `A004085.P11876971383816228899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A004085 (n : ℕ) : ℤ :=
  A004085.P11876971383816228899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A004085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007434.P3432859153295839493

`A000010(n+1)*A001615(n+1)`
-/

namespace A007434.P3432859153295839493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001615 (n + 1)

end

end A007434.P3432859153295839493

noncomputable section

/-- A007434: Jordan function J_2(n) (a generalization of phi(n)).

Offset 1, canonical program `A007434.P3432859153295839493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007434 (n : ℕ) : ℤ :=
  A007434.P3432859153295839493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007517.P418508232218383814

`A000010(n+1)*A001065(n+1)`
-/

namespace A007517.P418508232218383814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001065 (n + 1)

end

end A007517.P418508232218383814

noncomputable section

/-- A007517: a(n) = phi(n) * (sigma(n) - n).

Offset 1, canonical program `A007517.P418508232218383814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007517 (n : ℕ) : ℤ :=
  A007517.P418508232218383814.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007617.P12649734713111644015

`comp[A000010(n+1)-1]+1`
-/

namespace A007617.P12649734713111644015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A007617.P12649734713111644015

noncomputable section

/-- A007617: Values not in range of Euler phi function.

Offset 1, canonical program `A007617.P12649734713111644015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007617 (n : ℕ) : ℤ :=
  (A007617.P12649734713111644015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008331.P15472009837498515601

`A000010(A008864(n+1))`
-/

namespace A008331.P15472009837498515601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008864 (n + 1)).toNat

end

end A008331.P15472009837498515601

noncomputable section

/-- A008331: a(n) = phi(prime(n)+1).

Offset 1, canonical program `A008331.P15472009837498515601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A008331 (n : ℕ) : ℤ :=
  A008331.P15472009837498515601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A008331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009223.P16138447125390320102

`gcd(A000203(n+1), A000010(n+1))`
-/

namespace A009223.P16138447125390320102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A000010 (n + 1))

end

end A009223.P16138447125390320102

noncomputable section

/-- A009223: a(n) = gcd(sigma(n), phi(n)).

Offset 1, canonical program `A009223.P16138447125390320102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A009223 (n : ℕ) : ℤ :=
  (A009223.P16138447125390320102.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A009223.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013948.P3339504944308927508

`A078649(n+1)-n`
-/

namespace A013948.P3339504944308927508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - (n : ℤ)

end

end A013948.P3339504944308927508

noncomputable section

/-- A013948: Positions of 2's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013948.P3339504944308927508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948 (n : ℕ) : ℤ :=
  A013948.P3339504944308927508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014612.P5035219895023979827

`eq[4, A318473(n+1)+1]+1`
-/

namespace A014612.P5035219895023979827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014612.P5035219895023979827

noncomputable section

/-- A014612: Numbers that are the product of exactly three (not necessarily distinct) primes.

Offset 1, canonical program `A014612.P5035219895023979827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014612 (n : ℕ) : ℤ :=
  (A014612.P5035219895023979827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015761.P5986724967069183809

`record[gcd(n+1, A001158(n+1)%A000010(n+1))]`
-/

namespace A015761.P5986724967069183809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A001158 (n + 1)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015761.P5986724967069183809

noncomputable section

/-- A015761: Numbers k such that phi(k) | sigma_3(k).

Offset 1, canonical program `A015761.P5986724967069183809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A015761 (n : ℕ) : ℤ :=
  (A015761.P5986724967069183809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A015761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015763.P16867863019437908684

`lt[A001160(n+1)%A000010(n+1), 1]+1`
-/

namespace A015763.P16867863019437908684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015763.P16867863019437908684

noncomputable section

/-- A015763: Numbers k such that phi(k) divides sigma_5(k).

Offset 1, canonical program `A015763.P16867863019437908684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A015763 (n : ℕ) : ℤ :=
  (A015763.P16867863019437908684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A015763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015814.P2308272231266712354

`record[gcd(n+1, A000203(n+1)%A000010(n+2))]`
-/

namespace A015814.P2308272231266712354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000203 (n + 1)) (A000010 (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015814.P2308272231266712354

noncomputable section

/-- A015814: Numbers k such that phi(k + 1) divides sigma(k).

Offset 1, canonical program `A015814.P2308272231266712354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A015814 (n : ℕ) : ℤ :=
  (A015814.P2308272231266712354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A015814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015820.P11788765630809446508

`lt[A000203(n+1)%A000010(n+5), 1]+1`
-/

namespace A015820.P11788765630809446508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015820.P11788765630809446508

noncomputable section

/-- A015820: Numbers k such that phi(k + 4) | sigma(k).

Offset 1, canonical program `A015820.P11788765630809446508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A015820 (n : ℕ) : ℤ :=
  (A015820.P11788765630809446508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A015820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015823.P14101664896886442128

`lt[A000203(n+1)%A000010(n+8), 1]+1`
-/

namespace A015823.P14101664896886442128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 8))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015823.P14101664896886442128

noncomputable section

/-- A015823: Numbers k such that phi(k + 7) | sigma(k).

Offset 1, canonical program `A015823.P14101664896886442128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A015823 (n : ℕ) : ℤ :=
  (A015823.P14101664896886442128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A015823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015834.P6187228522220576603

`record[gcd(n+1, A000203(n+2)%A000010(n+1))]`
-/

namespace A015834.P6187228522220576603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000203 (n + 2)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015834.P6187228522220576603

noncomputable section

/-- A015834: Numbers k such that phi(k) | sigma(k + 1).

Offset 1, canonical program `A015834.P6187228522220576603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A015834 (n : ℕ) : ℤ :=
  (A015834.P6187228522220576603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A015834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015837.P10061482123831038346

`lt[A000203(n+3)%A000010(n+1), 1]+1`
-/

namespace A015837.P10061482123831038346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 3)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015837.P10061482123831038346

noncomputable section

/-- A015837: Numbers k such that phi(k) | sigma(k + 2).

Offset 1, canonical program `A015837.P10061482123831038346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A015837 (n : ℕ) : ℤ :=
  (A015837.P10061482123831038346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A015837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015853.P2283416451843243793

`lt[A000203(n+10)%A000010(n+1), 1]+1`
-/

namespace A015853.P2283416451843243793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 10)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015853.P2283416451843243793

noncomputable section

/-- A015853: Numbers k such that phi(k) | sigma(k + 9).

Offset 1, canonical program `A015853.P2283416451843243793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A015853 (n : ℕ) : ℤ :=
  (A015853.P2283416451843243793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A015853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019590.P10517823757212113743

`A000035(A000010(n+1))`
-/

namespace A019590.P10517823757212113743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000010 (n + 1)).toNat

end

end A019590.P10517823757212113743

noncomputable section

/-- A019590: Fermat's Last Theorem: a(n) = 1 if x^n + y^n = z^n has a nontrivial solution in integers, otherwise a(n) = 0.

Offset 1, canonical program `A019590.P10517823757212113743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019590 (n : ℕ) : ℤ :=
  A019590.P10517823757212113743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022157.P17411991854055739556

`(n+1)²-A000010(n+1)*A035116(n+1)`
-/

namespace A022157.P17411991854055739556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1) * A035116 (n + 1)

end

end A022157.P17411991854055739556

noncomputable section

/-- A022157: a(n) = n^2 - phi(n)*tau(n)^2.

Offset 1, canonical program `A022157.P17411991854055739556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022157 (n : ℕ) : ℤ :=
  A022157.P17411991854055739556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022304.P12337399357003774958

`∑[A327239(n+2)]`
-/

namespace A022304.P12337399357003774958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P12337399357003774958

noncomputable section

/-- A022304: Index of n-th 1 in A022303.

Offset 0, canonical program `A022304.P12337399357003774958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022304 (n : ℕ) : ℤ :=
  A022304.P12337399357003774958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022340.P3334581410869230776

`A003714(A022342(n+1))`
-/

namespace A022340.P3334581410869230776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A022342 (n + 1)).toNat

end

end A022340.P3334581410869230776

noncomputable section

/-- A022340: Even Fibbinary numbers (A003714); also a(n) = 2*Fibbinary(n).

Offset 0, canonical program `A022340.P3334581410869230776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022340 (n : ℕ) : ℤ :=
  A022340.P3334581410869230776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022341.P2847779761458071812

`4*A003714(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022341.P2847779761458071812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003714 n + 1

end

end A022341.P2847779761458071812

noncomputable section

/-- A022341: a(n) = 4*A003714(n) + 1; the odd Fibbinary numbers.

Offset 0, canonical program `A022341.P2847779761458071812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022341 (n : ℕ) : ℤ :=
  A022341.P2847779761458071812.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022341.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A029939.P6455013968657218712

`∑{d}[n+1, A000010(#)²]`
-/

namespace A029939.P6455013968657218712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ 2

end

end A029939.P6455013968657218712

noncomputable section

/-- A029939: a(n) = Sum_{d|n} phi(d)^2.

Offset 1, canonical program `A029939.P6455013968657218712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029939 (n : ℕ) : ℤ :=
  A029939.P6455013968657218712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029940.P9006398651141651236

`∏{d}[n+1, A000010(#)]`
-/

namespace A029940.P9006398651141651236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000010 d

end

end A029940.P9006398651141651236

noncomputable section

/-- A029940: a(n) = Product_{d|n} phi(d).

Offset 1, canonical program `A029940.P9006398651141651236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A029940 (n : ℕ) : ℤ :=
  A029940.P9006398651141651236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A029940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033987.P14627502685973143685

`lt[3, A318473(n+1)]+1`
-/

namespace A033987.P14627502685973143685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033987.P14627502685973143685

noncomputable section

/-- A033987: Numbers that are divisible by at least 4 primes (counted with multiplicity).

Offset 1, canonical program `A033987.P14627502685973143685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033987 (n : ℕ) : ℤ :=
  (A033987.P14627502685973143685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034381.P14312782436089900410

`A000142(n+1)/A000010(n+1)`
-/

namespace A034381.P14312782436089900410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A034381.P14312782436089900410

noncomputable section

/-- A034381: Number of labeled cyclic groups with n elements.

Offset 1, canonical program `A034381.P14312782436089900410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034381 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034381.P14312782436089900410.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034381.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A037143.P1526375851961906888

`lt[A318473(n+1), 3]+1`
-/

namespace A037143.P1526375851961906888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P1526375851961906888

noncomputable section

/-- A037143: Numbers with at most 2 prime factors (counted with multiplicity).

Offset 1, canonical program `A037143.P1526375851961906888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037143 (n : ℕ) : ℤ :=
  (A037143.P1526375851961906888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039649.P16717312505280968063

`A000010(n+1)+1`
-/

namespace A039649.P16717312505280968063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

end

end A039649.P16717312505280968063

noncomputable section

/-- A039649: a(n) = phi(n)+1.

Offset 1, canonical program `A039649.P16717312505280968063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039649 (n : ℕ) : ℤ :=
  A039649.P16717312505280968063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039743.P5829878164581489431

`eq[gcd(n, A000010(n+1)), A001221(n+1)]+1`
-/

namespace A039743.P5829878164581489431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000010 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039743.P5829878164581489431

noncomputable section

/-- A039743: Number k such that gcd(phi(k), k-1) = number of distinct prime factors of k.

Offset 1, canonical program `A039743.P5829878164581489431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7107 terms. -/
def A039743 (n : ℕ) : ℤ :=
  (A039743.P5829878164581489431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7107 terms. -/
def A039743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039770.P5490955356181166614

`record[(n+1)/A007913(A000010(n+1))]`
-/

namespace A039770.P5490955356181166614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039770.P5490955356181166614

noncomputable section

/-- A039770: Numbers k such that phi(k) is a perfect square.

Offset 1, canonical program `A039770.P5490955356181166614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. -/
def A039770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039770.P5490955356181166614.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. -/
def A039770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039771.P6000712686625976623

`eq[1, A010057(A000010(n+1))]+1`
-/

namespace A039771.P6000712686625976623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039771.P6000712686625976623

noncomputable section

/-- A039771: Numbers k such that phi(k) is a perfect cube.

Offset 1, canonical program `A039771.P6000712686625976623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A039771 (n : ℕ) : ℤ :=
  (A039771.P6000712686625976623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A039771.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A046062.P12626048693260367706

`p?[A005563(n)+2-A053650(n+1)]`
-/

namespace A046062.P12626048693260367706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (2 - A053650 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P12626048693260367706

noncomputable section

/-- A046062: Primes of the form n*phi(n)+1 where phi(n) is the Euler function.

Offset 1, canonical program `A046062.P12626048693260367706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A046062 (n : ℕ) : ℤ :=
  A046062.P12626048693260367706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A046062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046151.P2566495278690848558

`A005563(n)-A053650(n+1)`
-/

namespace A046151.P2566495278690848558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A053650 (n + 1)

end

end A046151.P2566495278690848558

noncomputable section

/-- A046151: a(n) = n*phi(n) - 1.

Offset 1, canonical program `A046151.P2566495278690848558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046151 (n : ℕ) : ℤ :=
  A046151.P2566495278690848558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046520.P408125302691526791

`A000203(n+1)-A000010(n+1)-A000005(n+1)`
-/

namespace A046520.P408125302691526791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1) - A000005 (n + 1)

end

end A046520.P408125302691526791

noncomputable section

/-- A046520: a(n) = (sum of divisors of n) - phi(n) - (number of divisors of n).

Offset 1, canonical program `A046520.P408125302691526791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046520 (n : ℕ) : ℤ :=
  A046520.P408125302691526791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047994.P3003493197761739884

`A000010(n+1)*A000203(A003557(n+1))/A003557(n+1)`
-/

namespace A047994.P3003493197761739884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A000203 (A003557 (n + 1)).toNat : ℚ) / (A003557 (n + 1) : ℚ)

end

end A047994.P3003493197761739884

noncomputable section

/-- A047994: Unitary totient (or unitary phi) function uphi(n).

Offset 1, canonical program `A047994.P3003493197761739884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A047994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047994.P3003493197761739884.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A047994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048297.P13500270705688942977

`3*A003714(n)+1`
-/

namespace A048297.P13500270705688942977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003714 n + 1

end

end A048297.P13500270705688942977

noncomputable section

/-- A048297: Coefficients in power series expansion over GF(2)[ X^(-1) ] of continued fraction [ 0, X, X^2, X^4, X^8, X^16, ... ].

Offset 0, canonical program `A048297.P13500270705688942977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048297 (n : ℕ) : ℤ :=
  A048297.P13500270705688942977.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048848.P6937858258724486244

`A000040(A000010(n+1))`
-/

namespace A048848.P6937858258724486244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (n + 1)).toNat

end

end A048848.P6937858258724486244

noncomputable section

/-- A048848: a(n) = prime(phi(n)).

Offset 1, canonical program `A048848.P6937858258724486244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048848 (n : ℕ) : ℤ :=
  A048848.P6937858258724486244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048855.P1835815635312777100

`A000010(n!)`
-/

namespace A048855.P1835815635312777100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial n)

end

end A048855.P1835815635312777100

noncomputable section

/-- A048855: Number of integers up to n! relatively prime to n!.

Offset 0, canonical program `A048855.P1835815635312777100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048855 (n : ℕ) : ℤ :=
  A048855.P1835815635312777100.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048866.P13275795640121407663

`A000010(n+1)-2*A000720(n+1)+2*A001221(n+1)`
-/

namespace A048866.P13275795640121407663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 2 * A000720 (n + 1) + 2 * A001221 (n + 1)

end

end A048866.P13275795640121407663

noncomputable section

/-- A048866: Difference between number of nonprimes and primes in reduced residue system of n.

Offset 1, canonical program `A048866.P13275795640121407663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048866 (n : ℕ) : ℤ :=
  A048866.P13275795640121407663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048867.P9294340375594916807

`lt[A048865(n+1), A048864(n+1)]+1`
-/

namespace A048867.P9294340375594916807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048867.P9294340375594916807

noncomputable section

/-- A048867: Numbers for which reduced residue system contains fewer primes than nonprimes.

Offset 1, canonical program `A048867.P9294340375594916807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9477 terms. -/
def A048867 (n : ℕ) : ℤ :=
  (A048867.P9294340375594916807.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9477 terms. -/
def A048867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048868.P2029712073439447473

`lt[A048864(n+1), A048865(n+1)]+1`
-/

namespace A048868.P2029712073439447473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048868.P2029712073439447473

noncomputable section

/-- A048868: Numbers whose reduced residue system contains more primes than nonprimes.

Offset 1, canonical program `A048868.P2029712073439447473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A048868 (n : ℕ) : ℤ :=
  (A048868.P2029712073439447473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A048868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048984.P11079844054509268560

`A048983(n+1)+1`
-/

namespace A048984.P11079844054509268560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048983 (n + 1) + 1

end

end A048984.P11079844054509268560

noncomputable section

/-- A048984: As n runs through composite numbers, a(n) = number of nonprime d < n such that gcd(d,n) = 1.

Offset 1, canonical program `A048984.P11079844054509268560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048984 (n : ℕ) : ℤ :=
  A048984.P11079844054509268560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049149.P3106904862429449036

`record[(n+1)*A008966(A000010(n+1))]`
-/

namespace A049149.P3106904862429449036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008966 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049149.P3106904862429449036

noncomputable section

/-- A049149: Numbers k such that the Euler totient function phi(k) is squarefree.

Offset 1, canonical program `A049149.P3106904862429449036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A049149 (n : ℕ) : ℤ :=
  A049149.P3106904862429449036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A049149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049454.P18198278345640105493

`a(n-1)+A000010(n)²` with `a(0)=1`
-/

namespace A049454.P18198278345640105493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000010 n ^ 2

end

end A049454.P18198278345640105493

noncomputable section

/-- A049454: a(n) = 1 + Sum_{i=1..n} phi(i)^2.

Offset 0, canonical program `A049454.P18198278345640105493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049454 (n : ℕ) : ℤ :=
  A049454.P18198278345640105493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049559.P683289682242884598

`gcd(A000010(n+1), A219428(n+1))`
-/

namespace A049559.P683289682242884598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A219428 (n + 1))

end

end A049559.P683289682242884598

noncomputable section

/-- A049559: a(n) = gcd(n - 1, phi(n)).

Offset 1, canonical program `A049559.P683289682242884598`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A219428, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049559 (n : ℕ) : ℤ :=
  (A049559.P683289682242884598.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A219428, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049559.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A050223.P13683550059284488781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A019506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050223 (n : ℕ) : ℤ :=
  A050223.P13683550059284488781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A019506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050223.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050399.P12166716681260273006

`(n+1)*A000027((n+1)/A009195(n+1))`
-/

namespace A050399.P12166716681260273006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A009195 (n + 1) : ℚ))).toNat

end

end A050399.P12166716681260273006

noncomputable section

/-- A050399: Least k such that n = A009195(k) (= gcd(phi(k), k)).

Offset 1, canonical program `A050399.P12166716681260273006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050399 (n : ℕ) : ℤ :=
  A050399.P12166716681260273006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050411.P10996565108960123335

`((n+4)*A072062(n+1))%(2*n+7)`
-/

namespace A050411.P10996565108960123335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 4 : ℤ) * A072062 (n + 1)) (2 * n + 7 : ℤ)

end

end A050411.P10996565108960123335

noncomputable section

/-- A050411: Analog of 3x+1 function.

Offset 1, canonical program `A050411.P10996565108960123335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050411 (n : ℕ) : ℤ :=
  A050411.P10996565108960123335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050411.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051612.P4135239823752248514

`A000203(n+1)-A000010(n+1)`
-/

namespace A051612.P4135239823752248514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1)

end

end A051612.P4135239823752248514

noncomputable section

/-- A051612: a(n) = sigma(n) - phi(n).

Offset 1, canonical program `A051612.P4135239823752248514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051612 (n : ℕ) : ℤ :=
  A051612.P4135239823752248514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052100.P4818620463333782499

`(n+1)*A000010(n+1)*A051953(n+1)/A009195(n+1)²`
-/

namespace A052100.P4818620463333782499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000010 (n + 1) * A051953 (n + 1) : ℚ) / (A009195 (n + 1) ^ 2 : ℚ)

end

end A052100.P4818620463333782499

noncomputable section

/-- A052100: a(n) = lcm(n, phi(n), n - phi(n)).

Offset 1, canonical program `A052100.P4818620463333782499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052100.P4818620463333782499.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053191.P16359264019256189161

`A000010((n+1)^3)`
-/

namespace A053191.P16359264019256189161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 3)

end

end A053191.P16359264019256189161

noncomputable section

/-- A053191: a(n) = n^2 * phi(n).

Offset 1, canonical program `A053191.P16359264019256189161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053191 (n : ℕ) : ℤ :=
  A053191.P16359264019256189161.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053285.P954365959707190211

`A000010(A000051(n))`
-/

namespace A053285.P954365959707190211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000051 n).toNat

end

end A053285.P954365959707190211

noncomputable section

/-- A053285: Totient of 2^n+1.

Offset 0, canonical program `A053285.P954365959707190211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053285 (n : ℕ) : ℤ :=
  A053285.P954365959707190211.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053574.P101121150819390308

`A007814(A000010(n+1))`
-/

namespace A053574.P101121150819390308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000010 (n + 1)).toNat

end

end A053574.P101121150819390308

noncomputable section

/-- A053574: Exponent of 2 in phi(n) where phi(n) = A000010(n).

Offset 1, canonical program `A053574.P101121150819390308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053574 (n : ℕ) : ℤ :=
  A053574.P101121150819390308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053574.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053578.P11254634058092319616

`A053577(n+1)-A000010(A053577(n+1))`
-/

namespace A053578.P11254634058092319616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1) - A000010 (A053577 (n + 1)).toNat

end

end A053578.P11254634058092319616

noncomputable section

/-- A053578: Values of cototient function for A053577.

Offset 1, canonical program `A053578.P11254634058092319616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9658 terms. -/
def A053578 (n : ℕ) : ℤ :=
  A053578.P11254634058092319616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9658 terms. -/
def A053578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055230.P2629812307315848114

`gcd(A055071(n+1), A055204(n+1))`
-/

namespace A055230.P2629812307315848114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055071 (n + 1)) (A055204 (n + 1))

end

end A055230.P2629812307315848114

noncomputable section

/-- A055230: Greatest common divisor of largest square dividing n! and squarefree part of n!.

Offset 1, canonical program `A055230.P2629812307315848114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, A055204, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055230 (n : ℕ) : ℤ :=
  (A055230.P2629812307315848114.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, A055204, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055460.P2633110437439138135

`A001221(A055204(n+1))`
-/

namespace A055460.P2633110437439138135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055204 (n + 1)).toNat

end

end A055460.P2633110437439138135

noncomputable section

/-- A055460: Number of primes with odd exponents in the prime power factorization of n!.

Offset 1, canonical program `A055460.P2633110437439138135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055204, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055460 (n : ℕ) : ℤ :=
  A055460.P2633110437439138135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055204, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055734.P10166142649885258030

`A001221(A000010(n+1))`
-/

namespace A055734.P10166142649885258030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

end

end A055734.P10166142649885258030

noncomputable section

/-- A055734: Number of distinct primes dividing phi(n).

Offset 1, canonical program `A055734.P10166142649885258030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055734 (n : ℕ) : ℤ :=
  A055734.P10166142649885258030.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055736.P12144362201627634542

`A001221(n+1)-A001221(A000010(n+1))`
-/

namespace A055736.P12144362201627634542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A000010 (n + 1)).toNat

end

end A055736.P12144362201627634542

noncomputable section

/-- A055736: Difference between number of prime factors of n and of phi(n).

Offset 1, canonical program `A055736.P12144362201627634542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055736 (n : ℕ) : ℤ :=
  A055736.P12144362201627634542.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055741.P7823549928393762310

`lt[A001221(n+1), A001221(A000010(n+1))]+1`
-/

namespace A055741.P7823549928393762310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055741.P7823549928393762310

noncomputable section

/-- A055741: Phi(n) has more distinct prime factors than n.

Offset 1, canonical program `A055741.P7823549928393762310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055741 (n : ℕ) : ℤ :=
  (A055741.P7823549928393762310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055742.P14231494332674757041

`eq[A001221(A000010(n+1)), A001221(n+1)]+1`
-/

namespace A055742.P14231494332674757041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055742.P14231494332674757041

noncomputable section

/-- A055742: Numbers k such that k and EulerPhi(k) have same number of prime factors, counted without multiplicity.

Offset 1, canonical program `A055742.P14231494332674757041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055742 (n : ℕ) : ℤ :=
  (A055742.P14231494332674757041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055743.P3181542319350071640

`lt[A001221(A000010(n+1)), A001221(n+1)]+1`
-/

namespace A055743.P3181542319350071640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055743.P3181542319350071640

noncomputable section

/-- A055743: Phi(n) has fewer distinct prime divisors than n.

Offset 1, canonical program `A055743.P3181542319350071640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. -/
def A055743 (n : ℕ) : ℤ :=
  (A055743.P3181542319350071640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. -/
def A055743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055993.P16266584228034744191

`A000005(A055772(n+1))`
-/

namespace A055993.P16266584228034744191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055772 (n + 1)).toNat

end

end A055993.P16266584228034744191

noncomputable section

/-- A055993: Number of square divisors of n!.

Offset 1, canonical program `A055993.P16266584228034744191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A055772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055993 (n : ℕ) : ℤ :=
  A055993.P16266584228034744191.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A055772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056043.P13365125051087703237

`A055772(n+1)/A081123(n+1)`
-/

namespace A056043.P13365125051087703237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ)

end

end A056043.P13365125051087703237

noncomputable section

/-- A056043: Let k be largest number such that k^2 divides n!; a(n) = k/floor(n/2)!.

Offset 1, canonical program `A056043.P13365125051087703237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056043 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056043.P13365125051087703237.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056170.P910878729848546389

`A001221(n+1)-A056169(n+1)`
-/

namespace A056170.P910878729848546389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A056169 (n + 1)

end

end A056170.P910878729848546389

noncomputable section

/-- A056170: Number of non-unitary prime divisors of n.

Offset 1, canonical program `A056170.P910878729848546389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056170 (n : ℕ) : ℤ :=
  A056170.P910878729848546389.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056173.P15098762460861555107

`A056169(A001405(n+1))`
-/

namespace A056173.P15098762460861555107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A001405 (n + 1)).toNat

end

end A056173.P15098762460861555107

noncomputable section

/-- A056173: Number of unitary prime divisors of central binomial coefficient C(n, floor(n/2)) (A001405).

Offset 1, canonical program `A056173.P15098762460861555107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056173 (n : ℕ) : ℤ :=
  A056173.P15098762460861555107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056173.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A056228.P17826182728079616557

`A000010(n+2)²-A000010(n+1)*A000010(n+3)`
-/

namespace A056228.P17826182728079616557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) ^ 2 - A000010 (n + 1) * A000010 (n + 3)

end

end A056228.P17826182728079616557

noncomputable section

/-- A056228: Image of Euler totient function (A000010) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

Offset 1, canonical program `A056228.P17826182728079616557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056228 (n : ℕ) : ℤ :=
  A056228.P17826182728079616557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056539.P17406113578210965747

`A341916(A003188(n))`
-/

namespace A056539.P17406113578210965747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A003188 n).toNat

end

end A056539.P17406113578210965747

noncomputable section

/-- A056539: Self-inverse permutation: reverse the bits in binary expansion of n and also complement them (0->1, 1->0) if the run count (A005811) is even.

Offset 0, canonical program `A056539.P17406113578210965747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A056539 (n : ℕ) : ℤ :=
  A056539.P17406113578210965747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A056539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056671.P15517418660735312830

`2^A056169(n+1)`
-/

namespace A056671.P15517418660735312830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056169 (n + 1) : ℤ)

end

end A056671.P15517418660735312830

noncomputable section

/-- A056671: 1 + the number of unitary and squarefree divisors of n = number of divisors of reduced squarefree part of n.

Offset 1, canonical program `A056671.P15517418660735312830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056671.P15517418660735312830.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056742.P235496144668902535

`A000010(A000225(n+2))/2`
-/

namespace A056742.P235496144668902535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000225 (n + 2)).toNat : ℚ) / 2

end

end A056742.P235496144668902535

noncomputable section

/-- A056742: a(n) = phi(2^n - 1)/2.

Offset 2, canonical program `A056742.P235496144668902535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056742.P235496144668902535.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056820.P6967666015395470887

`A000010(A002064(n))`
-/

namespace A056820.P6967666015395470887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002064 n).toNat

end

end A056820.P6967666015395470887

noncomputable section

/-- A056820: Euler totient function of Cullen numbers (A002064), n*2^n +1.

Offset 0, canonical program `A056820.P6967666015395470887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056820 (n : ℕ) : ℤ :=
  A056820.P6967666015395470887.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056821.P17142997509211306205

`A000010(A003261(n+1))`
-/

namespace A056821.P17142997509211306205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003261 (n + 1)).toNat

end

end A056821.P17142997509211306205

noncomputable section

/-- A056821: Totient of the Woodall numbers (A003261), n*2^n -1.

Offset 1, canonical program `A056821.P17142997509211306205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056821 (n : ℕ) : ℤ :=
  A056821.P17142997509211306205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057859.P5441024818850006693

`A000010(n+1)+A001221(n+1)`
-/

namespace A057859.P5441024818850006693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A001221 (n + 1)

end

end A057859.P5441024818850006693

noncomputable section

/-- A057859: Number of residue classes modulo n which contain a prime.

Offset 1, canonical program `A057859.P5441024818850006693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057859 (n : ℕ) : ℤ :=
  A057859.P5441024818850006693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057919.P11397683448699479986

`record[gcd(n+1, A000010(n+2)%A000010(n+1))]`
-/

namespace A057919.P11397683448699479986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000010 (n + 2)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057919.P11397683448699479986

noncomputable section

/-- A057919: Numbers k such that phi(k) divides phi(k+1), where phi(k) is the Euler totient function A000010.

Offset 1, canonical program `A057919.P11397683448699479986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A057919 (n : ℕ) : ℤ :=
  (A057919.P11397683448699479986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A057919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057920.P5459412885655340721

`lt[A000010(n+1)%A000010(n+2), 1]+1`
-/

namespace A057920.P5459412885655340721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A000010 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057920.P5459412885655340721

noncomputable section

/-- A057920: Numbers k such that phi(k+1) divides phi(k), where phi is A000010.

Offset 1, canonical program `A057920.P5459412885655340721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A057920 (n : ℕ) : ℤ :=
  (A057920.P5459412885655340721.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A057920.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060138.P11251087805116196023

`A006257(A003714(n))+A003714(n)`
-/

namespace A060138.P11251087805116196023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A003714 n).toNat + A003714 n

end

end A060138.P11251087805116196023

noncomputable section

/-- A060138: Ordered set S defined by these rules: 0 and 2 are in S and if x is a nonzero number in S, then 2x-1 and 4x are in S.

Offset 0, canonical program `A060138.P11251087805116196023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A060138 (n : ℕ) : ℤ :=
  A060138.P11251087805116196023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A060138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060140.P10089229504658294474

`A005836(A003714(n)+1)`
-/

namespace A060140.P10089229504658294474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A003714 n + 1).toNat

end

end A060140.P10089229504658294474

noncomputable section

/-- A060140: Ordered set S defined by these rules: 0 and 1 are in S and if x is a nonzero number in S, then 3x and 9x+1 are in S.

Offset 0, canonical program `A060140.P10089229504658294474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060140 (n : ℕ) : ℤ :=
  A060140.P10089229504658294474.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060140.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A060373.P1941735290763042490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060373 (n : ℕ) : ℤ :=
  A060373.P1941735290763042490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061780.P5646685799009453226

`A000010(2*n+3)*A070554(n+1)`
-/

namespace A061780.P5646685799009453226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3) * A070554 (n + 1)

end

end A061780.P5646685799009453226

noncomputable section

/-- A061780: Number of solutions to x + y + z = 0 mod (2n+1) such that x,y,z are units modulo 2n+1, i.e., gcd(x, 2n+1) = gcd(y, 2n+1) = gcd(z, 2n+1) = 1.

Offset 1, canonical program `A061780.P5646685799009453226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061780 (n : ℕ) : ℤ :=
  A061780.P5646685799009453226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062355.P11902626262927596143

`A000005(n+1)*A000010(n+1)`
-/

namespace A062355.P11902626262927596143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (n + 1)

end

end A062355.P11902626262927596143

noncomputable section

/-- A062355: a(n) = d(n) * phi(n), where d(n) is the number of divisors function.

Offset 1, canonical program `A062355.P11902626262927596143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062355 (n : ℕ) : ℤ :=
  A062355.P11902626262927596143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062401.P14719521271091436929

`A000010(∑{d}[n+1, #])`
-/

namespace A062401.P14719521271091436929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A062401.P14719521271091436929

noncomputable section

/-- A062401: a(n) = phi(sigma(n)).

Offset 1, canonical program `A062401.P14719521271091436929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062401 (n : ℕ) : ℤ :=
  A062401.P14719521271091436929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062533.P12172443258588165221

`A000010(A014076(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062533.P12172443258588165221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014076 (n + 1)).toNat

end

end A062533.P12172443258588165221

noncomputable section

/-- A062533: a(n) = A000010(A014076(n)).

Offset 1, canonical program `A062533.P12172443258588165221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A014076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062533 (n : ℕ) : ℤ :=
  A062533.P12172443258588165221.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A014076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062624.P14204432833030423673

`A000010(A000108(n))`
-/

namespace A062624.P14204432833030423673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000108 n).toNat

end

end A062624.P14204432833030423673

noncomputable section

/-- A062624: Number of integers less than A000108(n) relatively prime to A000108(n).

Offset 0, canonical program `A062624.P14204432833030423673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062624 (n : ℕ) : ℤ :=
  A062624.P14204432833030423673.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062790.P5415624989759604668

`A000010(n+1)-A007431(n+1)`
-/

namespace A062790.P5415624989759604668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A007431 (n + 1)

end

end A062790.P5415624989759604668

noncomputable section

/-- A062790: Moebius transform of the cototient function A051953.

Offset 1, canonical program `A062790.P5415624989759604668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062790 (n : ℕ) : ℤ :=
  A062790.P5415624989759604668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062790.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062816.P6661153086151831594

`A000010(n+1)*A000005(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062816.P6661153086151831594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000005 (n + 1) - (2 * (n + 1) : ℤ)

end

end A062816.P6661153086151831594

noncomputable section

/-- A062816: a(n) = phi(n)*tau(n) - 2n = A000010(n)*A000005(n) - 2*n.

Offset 1, canonical program `A062816.P6661153086151831594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062816 (n : ℕ) : ℤ :=
  A062816.P6661153086151831594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062821.P4034696018881516945

`A000005(A000010(n+1))`
-/

namespace A062821.P4034696018881516945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

end

end A062821.P4034696018881516945

noncomputable section

/-- A062821: Number of divisors of totient of n.

Offset 1, canonical program `A062821.P4034696018881516945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062821 (n : ℕ) : ℤ :=
  A062821.P4034696018881516945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062823.P15371580975150479790

`eq[0, A000005(A000010(n+1))%A000005(n+1)]+1`
-/

namespace A062823.P15371580975150479790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A000010 (n + 1)).toNat) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062823.P15371580975150479790

noncomputable section

/-- A062823: Numbers k such that the number of divisors of k divides the number of divisors of the totient of k.

Offset 1, canonical program `A062823.P15371580975150479790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062823 (n : ℕ) : ℤ :=
  (A062823.P15371580975150479790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062830.P994650721519872774

`A181440(n+1)-A000010(A028310(n))`
-/

namespace A062830.P994650721519872774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (n + 1) - A000010 (A028310 n).toNat

end

end A062830.P994650721519872774

noncomputable section

/-- A062830: a(n) = #{ 0 <= k <= n : K(n, k) = 0 } where K(n, k) is the Kronecker symbol. This is the number of integers 0 <= k <= n that are not coprime to n.

Offset 0, canonical program `A062830.P994650721519872774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062830 (n : ℕ) : ℤ :=
  A062830.P994650721519872774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062952.P16809286703388466493

`∑{d}[n+1, A000203(#)*A000010(#)]`
-/

namespace A062952.P16809286703388466493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000010 d

end

end A062952.P16809286703388466493

noncomputable section

/-- A062952: Multiplicative with a(p^e) = (p^(2*e+2)-p^(e+1)-p^e+p)/(p^2-1).

Offset 1, canonical program `A062952.P16809286703388466493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062952 (n : ℕ) : ℤ :=
  A062952.P16809286703388466493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062958.P12901331491880060464

`lt[ratio[A000010(n+1)], 2]+1`
-/

namespace A062958.P12901331491880060464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n + 1

end

end A062958.P12901331491880060464

noncomputable section

/-- A062958: Numbers k such that phi(k+1) < 2*phi(k), where phi = A000010.

Offset 1, canonical program `A062958.P12901331491880060464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7391 terms. -/
def A062958 (n : ℕ) : ℤ :=
  (A062958.P12901331491880060464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7391 terms. -/
def A062958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062972.P5621875404486289771

`lt[A048050(n+1)%A000010(n+1), 1]+1`
-/

namespace A062972.P5621875404486289771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A062972.P5621875404486289771

noncomputable section

/-- A062972: Numbers k such that the Chowla function of k is divisible by phi(k).

Offset 1, canonical program `A062972.P5621875404486289771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A062972 (n : ℕ) : ℤ :=
  (A062972.P5621875404486289771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A062972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063070.P5416196495209204381

`A000010(n+1)-A000005(n+1)`
-/

namespace A063070.P5416196495209204381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000005 (n + 1)

end

end A063070.P5416196495209204381

noncomputable section

/-- A063070: a(n) = phi(n) - d(n), where d(n) is the number of divisors function (A000005).

Offset 1, canonical program `A063070.P5416196495209204381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063070 (n : ℕ) : ℤ :=
  A063070.P5416196495209204381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063530.P18432981326514031293

`eq[1, A007913(A000010(n+1)+1)]+1`
-/

namespace A063530.P18432981326514031293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063530.P18432981326514031293

noncomputable section

/-- A063530: Numbers k such that phi(k)+1 is a square.

Offset 1, canonical program `A063530.P18432981326514031293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A063530 (n : ℕ) : ℤ :=
  (A063530.P18432981326514031293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A063530.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064366.P10580496515755947541

`C(A000203(n+1), A000010(n+1))`
-/

namespace A064366.P10580496515755947541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A000010 (n + 1)).toNat

end

end A064366.P10580496515755947541

noncomputable section

/-- A064366: a(n) = binomial(sigma(n), phi(n)).

Offset 1, canonical program `A064366.P10580496515755947541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064366 (n : ℕ) : ℤ :=
  (A064366.P10580496515755947541.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064447.P5139700692985941208

`A000010(A000312(n+1))`
-/

namespace A064447.P5139700692985941208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000312 (n + 1)).toNat

end

end A064447.P5139700692985941208

noncomputable section

/-- A064447: a(n) = phi(n^n).

Offset 1, canonical program `A064447.P5139700692985941208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064447 (n : ℕ) : ℤ :=
  A064447.P5139700692985941208.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064448.P10993123691645389800

`gcd(A000312(n+1), A000010(A000312(n+1)))`
-/

namespace A064448.P10993123691645389800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000312 (n + 1)) (A000010 (A000312 (n + 1)).toNat)

end

end A064448.P10993123691645389800

noncomputable section

/-- A064448: a(n) = gcd(n^n, phi(n^n)).

Offset 1, canonical program `A064448.P10993123691645389800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064448 (n : ℕ) : ℤ :=
  (A064448.P10993123691645389800.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065387.P11284875715279330998

`A000203(n+1)+A000010(n+1)`
-/

namespace A065387.P11284875715279330998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1)

end

end A065387.P11284875715279330998

noncomputable section

/-- A065387: a(n) = sigma(n) + phi(n).

Offset 1, canonical program `A065387.P11284875715279330998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065387 (n : ℕ) : ℤ :=
  A065387.P11284875715279330998.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065387.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A065390.P11259095994126347679

`record[A000203(A000010(n+1))]`
-/

namespace A065390.P11259095994126347679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P11259095994126347679

noncomputable section

/-- A065390: Peak values reached by A062402 at the sites listed in A065389.

Offset 1, canonical program `A065390.P11259095994126347679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A065390 (n : ℕ) : ℤ :=
  A065390.P11259095994126347679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A065390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065449.P14389556538934521160

`A000045(n)-A278350(A028310(n))`
-/

namespace A065449.P14389556538934521160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A278350 (A028310 n).toNat

end

end A065449.P14389556538934521160

noncomputable section

/-- A065449: a(n) = phi(Fibonacci(n)).

Offset 0, canonical program `A065449.P14389556538934521160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A065449 (n : ℕ) : ℤ :=
  A065449.P14389556538934521160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A065449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065887.P4570226576753041376

`sqrt(A065886(n))`
-/

namespace A065887.P4570226576753041376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065886 n : ℝ)

end

end A065887.P4570226576753041376

noncomputable section

/-- A065887: Smallest number whose square is divisible by n!.

Offset 0, canonical program `A065887.P4570226576753041376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065887 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065887.P4570226576753041376.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066500.P11127892168974382539

`eq[0, A000010(n+1)%5]+1`
-/

namespace A066500.P11127892168974382539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066500.P11127892168974382539

noncomputable section

/-- A066500: Numbers k such that 5 divides phi(k).

Offset 1, canonical program `A066500.P11127892168974382539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066500 (n : ℕ) : ℤ :=
  (A066500.P11127892168974382539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066502.P8139223299223943289

`eq[0, A000010(n+2)%7]+2`
-/

namespace A066502.P8139223299223943289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066502.P8139223299223943289

noncomputable section

/-- A066502: Numbers k such that 7 divides phi(k).

Offset 1, canonical program `A066502.P8139223299223943289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066502 (n : ℕ) : ℤ :=
  (A066502.P8139223299223943289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066781.P13882244352398290553

`2^A000010(n+1)`
-/

namespace A066781.P13882244352398290553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A066781.P13882244352398290553

noncomputable section

/-- A066781: a(n) = 2^phi(n).

Offset 1, canonical program `A066781.P13882244352398290553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066781.P13882244352398290553.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066791.P12256946050341986723

`A000010(A002061(n+1))`
-/

namespace A066791.P12256946050341986723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002061 (n + 1)).toNat

end

end A066791.P12256946050341986723

noncomputable section

/-- A066791: a(n) = phi(n^2 + n + 1).

Offset 0, canonical program `A066791.P12256946050341986723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066791 (n : ℕ) : ℤ :=
  A066791.P12256946050341986723.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066791.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066792.P1612491882997732710

`A000010(A053698(n))`
-/

namespace A066792.P1612491882997732710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053698 n).toNat

end

end A066792.P1612491882997732710

noncomputable section

/-- A066792: a(n) = phi(n^3 + n^2 + n + 1).

Offset 0, canonical program `A066792.P1612491882997732710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066792 (n : ℕ) : ℤ :=
  A066792.P1612491882997732710.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066973.P2959280615539179547

`A000010(A000984(n+1))`
-/

namespace A066973.P2959280615539179547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000984 (n + 1)).toNat

end

end A066973.P2959280615539179547

noncomputable section

/-- A066973: a(n) = phi(binomial(2n, n)).

Offset 1, canonical program `A066973.P2959280615539179547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066973 (n : ℕ) : ℤ :=
  A066973.P2959280615539179547.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067240.P3266130279275368684

`A008475(n+1)-(A056169(n+1)+A008475(A003557(n+1)))`
-/

namespace A067240.P3266130279275368684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - (A056169 (n + 1) + A008475 (A003557 (n + 1)).toNat)

end

end A067240.P3266130279275368684

noncomputable section

/-- A067240: If n = Product_{i} p_i^e_i, a(n) = Sum_{i} (p_i - 1)*p_i^(e_i - 1).

Offset 1, canonical program `A067240.P3266130279275368684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067240 (n : ℕ) : ℤ :=
  A067240.P3266130279275368684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067349.P12324079268096477612

`A000005(A000010(n+1)+A000203(n+1))`
-/

namespace A067349.P12324079268096477612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) + A000203 (n + 1)).toNat

end

end A067349.P12324079268096477612

noncomputable section

/-- A067349: Number of divisors of sigma(n)+phi(n).

Offset 1, canonical program `A067349.P12324079268096477612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A067349 (n : ℕ) : ℤ :=
  A067349.P12324079268096477612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A067349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067351.P7450103734320064596

`eq[2, A001221(A000203(n+1)+A000010(n+1))]+1`
-/

namespace A067351.P7450103734320064596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (n + 1) + A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067351.P7450103734320064596

noncomputable section

/-- A067351: Numbers k such that sigma(k) + phi(k) has exactly 2 distinct prime divisors.

Offset 1, canonical program `A067351.P7450103734320064596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7301 terms. -/
def A067351 (n : ℕ) : ℤ :=
  (A067351.P7450103734320064596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7301 terms. -/
def A067351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067467.P5397239229491418573

`p?[(n+1)*(A001221(A000010(n+1))-2)]`
-/

namespace A067467.P5397239229491418573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001221 (A000010 (n + 1)).toNat - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067467.P5397239229491418573

noncomputable section

/-- A067467: Primes p such that p-1 has 3 distinct prime factors.

Offset 1, canonical program `A067467.P5397239229491418573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4283 terms. -/
def A067467 (n : ℕ) : ℤ :=
  A067467.P5397239229491418573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4283 terms. -/
def A067467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067541.P13008507347718709574

`A000010(A000217(n+1))/A000010(n+1)`
-/

namespace A067541.P13008507347718709574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000217 (n + 1)).toNat : ℚ) / (A000010 (n + 1) : ℚ)

end

end A067541.P13008507347718709574

noncomputable section

/-- A067541: a(n) = phi(n*(n+1)/2)/phi(n) where phi is the Euler totient function A000010(n).

Offset 1, canonical program `A067541.P13008507347718709574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067541 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067541.P13008507347718709574.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067704.P10410918183322062006

`eq[2, A000010(A000203(n+1))/A000010(n+1)]+1`
-/

namespace A067704.P10410918183322062006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A067704.P10410918183322062006

noncomputable section

/-- A067704: Numbers n such that phi(sigma(n)) = 2*phi(n).

Offset 1, canonical program `A067704.P10410918183322062006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A067704 (n : ℕ) : ℤ :=
  (A067704.P10410918183322062006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A067704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068074.P5533713125246169927

`(-1)^(n+1)*A228441((n+1)²)`
-/

namespace A068074.P5533713125246169927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A228441 ((n + 1) ^ 2)

end

end A068074.P5533713125246169927

noncomputable section

/-- A068074: a(n) = Sum_{d|n} (-1)^d*2^omega(n/d) where omega(x) is the number of distinct prime factors in the factorization of x.

Offset 1, canonical program `A068074.P5533713125246169927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068074 (n : ℕ) : ℤ :=
  A068074.P5533713125246169927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069049.P17776412635063250248

`eq[A015910(A000010(n+1)), A015910(n+1)]+1`
-/

namespace A069049.P17776412635063250248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069049.P17776412635063250248

noncomputable section

/-- A069049: Numbers k such that 2^k mod k = 2^phi(k) mod phi(k).

Offset 1, canonical program `A069049.P17776412635063250248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A069049 (n : ℕ) : ℤ :=
  (A069049.P17776412635063250248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A069049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069579.P15303065662107838082

`eq[A007913(A000010(n+1)), A173557(n+1)]+1`
-/

namespace A069579.P15303065662107838082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069579.P15303065662107838082

noncomputable section

/-- A069579: Numbers k such that phi(core(k)) = core(phi(k)) where core(k) is the squarefree part of k (the smallest integer such that k*core(k) is a square).

Offset 1, canonical program `A069579.P15303065662107838082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3479 terms. -/
def A069579 (n : ℕ) : ℤ :=
  (A069579.P15303065662107838082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3479 terms. -/
def A069579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069809.P15229151927026619136

`eq[gcd(n+1, A000010(n+1)), A000005(n+1)]+1`
-/

namespace A069809.P15229151927026619136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069809.P15229151927026619136

noncomputable section

/-- A069809: Numbers k such that gcd(k, phi(k)) = tau(k).

Offset 1, canonical program `A069809.P15229151927026619136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A069809 (n : ℕ) : ℤ :=
  (A069809.P15229151927026619136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A069809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069949.P11973078331391515623

`∑{d}[n+1, A000010(#+1)]`
-/

namespace A069949.P11973078331391515623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (d + 1)

end

end A069949.P11973078331391515623

noncomputable section

/-- A069949: a(n) = Sum_{d|n} phi(d+1).

Offset 1, canonical program `A069949.P11973078331391515623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069949 (n : ℕ) : ℤ :=
  A069949.P11973078331391515623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070032.P5106669173627734381

`floor(A000203(n+1)/A000010(n+1))`
-/

namespace A070032.P5106669173627734381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)⌋

end

end A070032.P5106669173627734381

noncomputable section

/-- A070032: Integer part of sigma(n)/phi(n).

Offset 1, canonical program `A070032.P5106669173627734381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070032 (n : ℕ) : ℤ :=
  A070032.P5106669173627734381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070236.P13553058838220906984

`A069891(n+1)-A002088(n+1)`
-/

namespace A070236.P13553058838220906984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 (n + 1) - A002088 (n + 1)

end

end A070236.P13553058838220906984

noncomputable section

/-- A070236: a(n) = Sum_{k=1..n} (core(k) - phi(k)), where core(k) is the squarefree part of k.

Offset 1, canonical program `A070236.P13553058838220906984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A069891, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070236 (n : ℕ) : ℤ :=
  A070236.P13553058838220906984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A069891, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070418.P12910822427567143407

`eq[A000005(n+1), A000005(A000010(n+1))]+1`
-/

namespace A070418.P12910822427567143407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070418.P12910822427567143407

noncomputable section

/-- A070418: Numbers k such that k and phi(k) have the same number of divisors.

Offset 1, canonical program `A070418.P12910822427567143407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. -/
def A070418 (n : ℕ) : ℤ :=
  (A070418.P12910822427567143407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. -/
def A070418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070556.P18359578650946582400

`A051953(A000010(n+1))`
-/

namespace A070556.P18359578650946582400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000010 (n + 1)).toNat

end

end A070556.P18359578650946582400

noncomputable section

/-- A070556: a(n) = cototient(totient(n)).

Offset 1, canonical program `A070556.P18359578650946582400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070556 (n : ℕ) : ℤ :=
  A070556.P18359578650946582400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070800.P10333098883038954083

`A151800(A000010(n+2))`
-/

namespace A070800.P10333098883038954083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000010 (n + 2)).toNat

end

end A070800.P10333098883038954083

noncomputable section

/-- A070800: Smallest prime greater than phi(n): a(n) = nextprime(phi(n)).

Offset 2, canonical program `A070800.P10333098883038954083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070800 (n : ℕ) : ℤ :=
  A070800.P10333098883038954083.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070804.P12391361706569770465

`A000720(A000010(n+1))`
-/

namespace A070804.P12391361706569770465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (n + 1)).toNat

end

end A070804.P12391361706569770465

noncomputable section

/-- A070804: Number of primes not exceeding phi(n).

Offset 1, canonical program `A070804.P12391361706569770465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070804 (n : ℕ) : ℤ :=
  A070804.P12391361706569770465.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071227.P17938757858889274973

`A000010(A033950(n+1)/A039819(n+1))`
-/

namespace A071227.P17938757858889274973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A033950 (n + 1) : ℚ) / (A039819 (n + 1) : ℚ))).toNat

end

end A071227.P17938757858889274973

noncomputable section

/-- A071227: Number of solutions 1<=x<=m to gcd(m,x) = tau(m) where m = A033950(n).

Offset 1, canonical program `A071227.P17938757858889274973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071227 (n : ℕ) : ℤ :=
  A071227.P17938757858889274973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071601.P1755047745125711473

`eq[A001316(A000010(n+1)), A001316(n+1)]+1`
-/

namespace A071601.P1755047745125711473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071601.P1755047745125711473

noncomputable section

/-- A071601: Numbers k such that k and phi(k) have the same number of 1's in their binary representation.

Offset 1, canonical program `A071601.P1755047745125711473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. -/
def A071601 (n : ℕ) : ℤ :=
  (A071601.P1755047745125711473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. -/
def A071601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072303.P6106614484039131218

`lt[(n²+n)%A000010(n+1), 1]+1`
-/

namespace A072303.P6106614484039131218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 + n : ℤ) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072303.P6106614484039131218

noncomputable section

/-- A072303: Numbers n for which n is congruent to n^2 mod phi(n).

Offset 1, canonical program `A072303.P6106614484039131218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A072303 (n : ℕ) : ℤ :=
  (A072303.P6106614484039131218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A072303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072779.P8933871589259974098

`A001157(n+1)+A000203(n+1)*A000010(n+1)`
-/

namespace A072779.P8933871589259974098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + A000203 (n + 1) * A000010 (n + 1)

end

end A072779.P8933871589259974098

noncomputable section

/-- A072779: a(n) = sigma_2(n) + phi(n) * sigma(n).

Offset 1, canonical program `A072779.P8933871589259974098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001157, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072779 (n : ℕ) : ℤ :=
  A072779.P8933871589259974098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001157, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072911.P17054128587681888485

`∏{e}[n+1, A000010(#)]`
-/

namespace A072911.P17054128587681888485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000010 (Nat.factorization (f1 n) p)

end

end A072911.P17054128587681888485

noncomputable section

/-- A072911: Number of "phi-divisors" of n.

Offset 1, canonical program `A072911.P17054128587681888485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072911 (n : ℕ) : ℤ :=
  A072911.P17054128587681888485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072917.P88394405705983197

`A013632(A000010(n+1))`
-/

namespace A072917.P88394405705983197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000010 (n + 1)).toNat

end

end A072917.P88394405705983197

noncomputable section

/-- A072917: a(n) = p(n) - phi(n), where p(n) is the least prime greater than phi(n).

Offset 1, canonical program `A072917.P88394405705983197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A013632, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072917 (n : ℕ) : ℤ :=
  A072917.P88394405705983197.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A013632, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072917.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072989.P6622915283749842125

`lt[A009195(n+1), A072994(n+1)]+1`
-/

namespace A072989.P6622915283749842125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072989.P6622915283749842125

noncomputable section

/-- A072989: Numbers m>0 such that the number of solutions to x^m==1 (mod m), 1<=x<=m, is not equal to gcd(m, phi(m)).

Offset 1, canonical program `A072989.P6622915283749842125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4081 terms. -/
def A072989 (n : ℕ) : ℤ :=
  (A072989.P6622915283749842125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4081 terms. -/
def A072989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073256.P16352019514888841460

`A000010(A002808(n+1))`
-/

namespace A073256.P16352019514888841460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002808 (n + 1)).toNat

end

end A073256.P16352019514888841460

noncomputable section

/-- A073256: a(n) = phi(n-th composite number).

Offset 1, canonical program `A073256.P16352019514888841460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073256 (n : ℕ) : ℤ :=
  A073256.P16352019514888841460.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073757.P6861480467973211752

`A000005(n+1)+A000010(n+1)-1`
-/

namespace A073757.P6861480467973211752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000010 (n + 1) - 1

end

end A073757.P6861480467973211752

noncomputable section

/-- A073757: a(n) = d(n) + phi(n) - 1.

Offset 1, canonical program `A073757.P6861480467973211752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073757 (n : ℕ) : ℤ :=
  A073757.P6861480467973211752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073811.P16080894711694834372

`A000005(A009195(n+1))`
-/

namespace A073811.P16080894711694834372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009195 (n + 1)).toNat

end

end A073811.P16080894711694834372

noncomputable section

/-- A073811: Number of common divisors of n and phi(n).

Offset 1, canonical program `A073811.P16080894711694834372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073811 (n : ℕ) : ℤ :=
  A073811.P16080894711694834372.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073811.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074263.P1367974971333941862

`∩[A078649(n+1), A156243(n+1)+1]`
-/

namespace A074263.P1367974971333941862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P1367974971333941862

noncomputable section

/-- A074263: Positions of '22' in Kolakoski sequence A000002.

Offset 1, canonical program `A074263.P1367974971333941862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A074263 (n : ℕ) : ℤ :=
  (A074263.P1367974971333941862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A074263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074398.P12832320423602718158

`A000720(n+1)-A000720(A000010(n+1))-A010051(n+1)`
-/

namespace A074398.P12832320423602718158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A000010 (n + 1)).toNat - A010051 (n + 1)

end

end A074398.P12832320423602718158

noncomputable section

/-- A074398: Number of primes between n and phi(n), with neither n nor phi(n) included in the count in case they are primes.

Offset 1, canonical program `A074398.P12832320423602718158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074398 (n : ℕ) : ℤ :=
  A074398.P12832320423602718158.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074942.P6498389063173733852

`A010872(A000010(n+1))`
-/

namespace A074942.P6498389063173733852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000010 (n + 1)).toNat

end

end A074942.P6498389063173733852

noncomputable section

/-- A074942: a(n) = phi(n) mod 3.

Offset 1, canonical program `A074942.P6498389063173733852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074942 (n : ℕ) : ℤ :=
  A074942.P6498389063173733852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075857.P13213587624051204763

`A000010(n+1)*A051953(n+1)/A009195(n+1)`
-/

namespace A075857.P13213587624051204763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A051953 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A075857.P13213587624051204763

noncomputable section

/-- A075857: Least common multiple of totient and cototient of n.

Offset 1, canonical program `A075857.P13213587624051204763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075857 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075857.P13213587624051204763.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075857.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A076511.P7316728277018635984

`A051953(n+1)/A009195(n+1)`
-/

namespace A076511.P7316728277018635984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076511.P7316728277018635984

noncomputable section

/-- A076511: Numerator of cototient(n)/totient(n).

Offset 1, canonical program `A076511.P7316728277018635984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076511.P7316728277018635984.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076512.P8858335873698659586

`A000010(n+1)/A009195(n+1)`
-/

namespace A076512.P8858335873698659586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P8858335873698659586

noncomputable section

/-- A076512: Denominator of cototient(n)/totient(n).

Offset 1, canonical program `A076512.P8858335873698659586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076512.P8858335873698659586.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076512.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A077651.P9375760711476955691

`A000030(A000010(n+1))`
-/

namespace A077651.P9375760711476955691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000010 (n + 1)).toNat

end

end A077651.P9375760711476955691

noncomputable section

/-- A077651: Initial digit of phi(n), where phi is Euler totient function, A000010.

Offset 1, canonical program `A077651.P9375760711476955691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000030, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077651 (n : ℕ) : ℤ :=
  A077651.P9375760711476955691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000030, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077766.P5589840088024766026

`Δ[A348196(n+1)]`
-/

namespace A077766.P5589840088024766026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077766.P5589840088024766026

noncomputable section

/-- A077766: Number of primes of form 4k+1 between n^2 and (n+1)^2.

Offset 1, canonical program `A077766.P5589840088024766026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077766 (n : ℕ) : ℤ :=
  A077766.P5589840088024766026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077811.P9629137586577371590

`A000010(A007088(n+1))`
-/

namespace A077811.P9629137586577371590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007088 (n + 1)).toNat

end

end A077811.P9629137586577371590

noncomputable section

/-- A077811: Euler's totient of numbers containing in their decimal representation only the digits 0 and 1.

Offset 1, canonical program `A077811.P9629137586577371590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077811 (n : ℕ) : ℤ :=
  A077811.P9629137586577371590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077811.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078321.P9458142871836543441

`A000010(A078310(n+1))`
-/

namespace A078321.P9458142871836543441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A078310 (n + 1)).toNat

end

end A078321.P9458142871836543441

noncomputable section

/-- A078321: Euler's totient of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078321.P9458142871836543441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078321 (n : ℕ) : ℤ :=
  A078321.P9458142871836543441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078704.P17725575729352616635

`A000196(A000010(n+1))`
-/

namespace A078704.P17725575729352616635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000010 (n + 1)).toNat

end

end A078704.P17725575729352616635

noncomputable section

/-- A078704: Integer part of the square root of phi(n).

Offset 1, canonical program `A078704.P17725575729352616635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078704 (n : ℕ) : ℤ :=
  A078704.P17725575729352616635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078704.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078772.P10417017956842784990

`A000010(A175851(abs(1-n)+1))`
-/

namespace A078772.P10417017956842784990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A175851 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A078772.P10417017956842784990

noncomputable section

/-- A078772: a(n) = phi(n-p) where p is largest prime < n, a(1) = a(2) = 1 by convention.

Offset 1, canonical program `A078772.P10417017956842784990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078772 (n : ℕ) : ℤ :=
  A078772.P10417017956842784990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079092.P7315273055174450665

`A000010(A079079(n+1))`
-/

namespace A079092.P7315273055174450665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A079079 (n + 1)).toNat

end

end A079092.P7315273055174450665

noncomputable section

/-- A079092: Euler's totient of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079092.P7315273055174450665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079092 (n : ℕ) : ℤ :=
  A079092.P7315273055174450665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079092.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079814.P13038477736834189508

`lt[A000010(A042948(n)+1), A256502(n+1)]`
-/

namespace A079814.P13038477736834189508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A042948 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079814.P13038477736834189508

noncomputable section

/-- A079814: Odd integers k such that phi(k)/k < 6/Pi^2 where phi = A000010.

Offset 1, canonical program `A079814.P13038477736834189508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A079814 (n : ℕ) : ℤ :=
  (A079814.P13038477736834189508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A079814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080400.P13567147294335765646

`A007947(A000010(n+1))`
-/

namespace A080400.P13567147294335765646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000010 (n + 1)).toNat

end

end A080400.P13567147294335765646

noncomputable section

/-- A080400: Largest squarefree number dividing phi(n).

Offset 1, canonical program `A080400.P13567147294335765646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080400 (n : ℕ) : ℤ :=
  A080400.P13567147294335765646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080647.P9780056877604899557

`A008472(A000010(n+3))`
-/

namespace A080647.P9780056877604899557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000010 (n + 3)).toNat

end

end A080647.P9780056877604899557

noncomputable section

/-- A080647: Sum of prime factors of phi(n).

Offset 3, canonical program `A080647.P9780056877604899557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080647 (n : ℕ) : ℤ :=
  A080647.P9780056877604899557.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080647.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A082377.P15011776684150655685

`lt[A007947(n+1), A000010(n+1)+2]+1`
-/

namespace A082377.P15011776684150655685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A082377.P15011776684150655685

noncomputable section

/-- A082377: Numbers k such that rad(k) - phi(k) <= 1, where rad = A007947 and phi = A000010.

Offset 1, canonical program `A082377.P15011776684150655685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082377 (n : ℕ) : ℤ :=
  (A082377.P15011776684150655685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082515.P15614925756413171437

`A000720(n+1)+A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082515.P15614925756413171437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000010 (n + 1)

end

end A082515.P15614925756413171437

noncomputable section

/-- A082515: a(n)=A000720(n)+A000010(n).

Offset 1, canonical program `A082515.P15614925756413171437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082515 (n : ℕ) : ℤ :=
  A082515.P15614925756413171437.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083239.P10010670586367493324

`A000010(n)-a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083239.P10010670586367493324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 n - a (n - 1)

end

end A083239.P10010670586367493324

noncomputable section

/-- A083239: First order recursion: a(0) = 1; a(n) = phi(n) - a(n-1) = A000010(n) - a(n-1).

Offset 0, canonical program `A083239.P10010670586367493324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083239 (n : ℕ) : ℤ :=
  A083239.P10010670586367493324.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083254.P14519512853932888104

`A000010(n+1)-A051953(n+1)`
-/

namespace A083254.P14519512853932888104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A051953 (n + 1)

end

end A083254.P14519512853932888104

noncomputable section

/-- A083254: a(n) = 2*phi(n) - n.

Offset 1, canonical program `A083254.P14519512853932888104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083254 (n : ℕ) : ℤ :=
  A083254.P14519512853932888104.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083254.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A084300.P13506649886164335287

`A010875(A000010(n+1))`
-/

namespace A084300.P13506649886164335287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000010 (n + 1)).toNat

end

end A084300.P13506649886164335287

noncomputable section

/-- A084300: a(n) = phi(n) mod 6.

Offset 1, canonical program `A084300.P13506649886164335287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084300 (n : ℕ) : ℤ :=
  A084300.P13506649886164335287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085730.P7262382919816925402

`A000010(A000961(n+1))`
-/

namespace A085730.P7262382919816925402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000961 (n + 1)).toNat

end

end A085730.P7262382919816925402

noncomputable section

/-- A085730: Euler's totient function applied to the sequence of prime powers.

Offset 1, canonical program `A085730.P7262382919816925402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085730 (n : ℕ) : ℤ :=
  A085730.P7262382919816925402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085885.P6366113576804928038

`A000010(A056813((n+1)²))+A000010(A175851(n+1))`
-/

namespace A085885.P6366113576804928038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A056813 ((n + 1) ^ 2)).toNat + A000010 (A175851 (n + 1)).toNat

end

end A085885.P6366113576804928038

noncomputable section

/-- A085885: Let r and s be such that r + s = n; a(n) = maximum value of phi(r) + phi(s).

Offset 2, canonical program `A085885.P6366113576804928038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A085885 (n : ℕ) : ℤ :=
  A085885.P6366113576804928038.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A085885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086700.P8971596517453946543

`A000010(A000217(n+1))`
-/

namespace A086700.P8971596517453946543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000217 (n + 1)).toNat

end

end A086700.P8971596517453946543

noncomputable section

/-- A086700: Euler phi function applied to the triangular numbers.

Offset 1, canonical program `A086700.P8971596517453946543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086700 (n : ℕ) : ℤ :=
  A086700.P8971596517453946543.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088955.P7262574511799154947

`A000040(A090605(n+1))`
-/

namespace A088955.P7262574511799154947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A090605 (n + 1)).toNat

end

end A088955.P7262574511799154947

noncomputable section

/-- A088955: Primes of the form 60*k + 1.

Offset 1, canonical program `A088955.P7262574511799154947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A090605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088955 (n : ℕ) : ℤ :=
  A088955.P7262574511799154947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A090605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089288.P14608164159203676811

`A000010(A011545(n))`
-/

namespace A089288.P14608164159203676811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A011545 n).toNat

end

end A089288.P14608164159203676811

noncomputable section

/-- A089288: Euler's totient of floor(Pi*10^n), Pi=3.14....

Offset 0, canonical program `A089288.P14608164159203676811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089288 (n : ℕ) : ℤ :=
  A089288.P14608164159203676811.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091454.P11422470773491775725

`lt[3*A000010(n+1), n]+1`
-/

namespace A091454.P11422470773491775725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091454.P11422470773491775725

noncomputable section

/-- A091454: Integers k such that 3*phi(k) < k.

Offset 1, canonical program `A091454.P11422470773491775725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8432 terms. -/
def A091454 (n : ℕ) : ℤ :=
  (A091454.P11422470773491775725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8432 terms. -/
def A091454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092843.P4025589053211159302

`∑{d}[n+1, A000010(A038566(A002088(#)))]-1`
-/

namespace A092843.P4025589053211159302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A038566 (A002088 d).toNat).toNat - 1

end

end A092843.P4025589053211159302

noncomputable section

/-- A092843: a(n) = Sum_{k|n, k>1} phi(k-1), where phi() is the Euler phi function.

Offset 1, canonical program `A092843.P4025589053211159302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A092843 (n : ℕ) : ℤ :=
  A092843.P4025589053211159302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A092843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093875.P1175573544664429257

`A093873(2*(n+1)+1)`
-/

namespace A093875.P1175573544664429257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (2 * (n + 1) + 1)

end

end A093875.P1175573544664429257

noncomputable section

/-- A093875: Denominators in Kepler's tree of harmonic fractions.

Offset 1, canonical program `A093875.P1175573544664429257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093875 (n : ℕ) : ℤ :=
  A093875.P1175573544664429257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094472.P13859718929151834946

`(n+1)*A000005(n+1)-A000203(n+1)-A000010(n+1)`
-/

namespace A094472.P13859718929151834946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - A000203 (n + 1) - A000010 (n + 1)

end

end A094472.P13859718929151834946

noncomputable section

/-- A094472: a(n) = n*tau(n) - sigma(n) - phi(n), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A094472.P13859718929151834946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A094472 (n : ℕ) : ℤ :=
  A094472.P13859718929151834946.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A094472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094872.P17805697036999434631

`A000010(A056911(n+2))/A000005(A056911(n+2))`
-/

namespace A094872.P17805697036999434631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A056911 (n + 2)).toNat : ℚ) / (A000005 (A056911 (n + 2)).toNat : ℚ)

end

end A094872.P17805697036999434631

noncomputable section

/-- A094872: phi(n)/tau(n), for odd squarefree n > 1 (A056911), phi = A000010, tau = A000005.

Offset 1, canonical program `A094872.P17805697036999434631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A094872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094872.P17805697036999434631.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A094872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095076.P3589875723574390605

`A010060(A003714(n))`
-/

namespace A095076.P3589875723574390605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003714 n).toNat

end

end A095076.P3589875723574390605

noncomputable section

/-- A095076: Parity of 1-fibits in Zeckendorf expansion A014417(n).

Offset 0, canonical program `A095076.P3589875723574390605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095076 (n : ℕ) : ℤ :=
  A095076.P3589875723574390605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095734.P14823570990900498020

`A037888(A003714(n)+A000007(n))`
-/

namespace A095734.P14823570990900498020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A003714 n + A000007 n).toNat

end

end A095734.P14823570990900498020

noncomputable section

/-- A095734: Asymmetricity-index for Zeckendorf-expansion A014417(n) of n.

Offset 0, canonical program `A095734.P14823570990900498020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095734 (n : ℕ) : ℤ :=
  A095734.P14823570990900498020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095734.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A096269.P7324626192486647762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8833 terms. -/
def A096269 (n : ℕ) : ℤ :=
  A096269.P7324626192486647762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8833 terms. -/
def A096269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097604.P12947743009759751019

`floor(sqrt(2*(n+1))*A000010(n+1)-(n+1))`
-/

namespace A097604.P12947743009759751019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * (n + 1) : ℝ) * (A000010 (n + 1) : ℝ) - (n + 1 : ℝ)⌋

end

end A097604.P12947743009759751019

noncomputable section

/-- A097604: a(n) = floor( phi(n)*sqrt(2*n) ) - n.

Offset 1, canonical program `A097604.P12947743009759751019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097604 (n : ℕ) : ℤ :=
  A097604.P12947743009759751019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097605.P4373069648380416805

`lt[(n*(n+2))%A000010(n+1)+1, 2]+1`
-/

namespace A097605.P4373069648380416805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n * (n + 2) : ℤ) (A000010 (n + 1)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097605.P4373069648380416805

noncomputable section

/-- A097605: Numbers n such that phi(n) divides n^2 - 1, where phi(n) (A000010) is number of positive integers <= n and coprime to n.

Offset 1, canonical program `A097605.P4373069648380416805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5153 terms. -/
def A097605 (n : ℕ) : ℤ :=
  (A097605.P4373069648380416805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5153 terms. -/
def A097605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098006.P10183433005591828709

`A005097(n+1)-A000010(A006093(n+2))`
-/

namespace A098006.P10183433005591828709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A000010 (A006093 (n + 2)).toNat

end

end A098006.P10183433005591828709

noncomputable section

/-- A098006: (p-1)/2 - phi(p-1) as p runs through the odd primes.

Offset 2, canonical program `A098006.P10183433005591828709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005097, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098006 (n : ℕ) : ℤ :=
  A098006.P10183433005591828709.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005097, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098006.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A107647.P4071914148309250893

`A000010(A000073(n+2))`
-/

namespace A107647.P4071914148309250893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000073 (n + 2)).toNat

end

end A107647.P4071914148309250893

noncomputable section

/-- A107647: Euler's totient function applied to tribonacci numbers.

Offset 2, canonical program `A107647.P4071914148309250893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107647 (n : ℕ) : ℤ :=
  A107647.P4071914148309250893.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107797.P5611527584116679134

`A000010(A134816(n+1))`
-/

namespace A107797.P5611527584116679134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134816 (n + 1)).toNat

end

end A107797.P5611527584116679134

noncomputable section

/-- A107797: a(n) = phi(Padovan(n+4)).

Offset 1, canonical program `A107797.P5611527584116679134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107797 (n : ℕ) : ℤ :=
  A107797.P5611527584116679134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107797.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A109395.P12004804553665674898

`(n+1)/A009195(n+1)`
-/

namespace A109395.P12004804553665674898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009195 (n + 1) : ℚ)

end

end A109395.P12004804553665674898

noncomputable section

/-- A109395: Denominator of phi(n)/n = Product_{p|n} (1 - 1/p); phi(n)=A000010(n), the Euler totient function.

Offset 1, canonical program `A109395.P12004804553665674898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109395 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109395.P12004804553665674898.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109606.P2415810041766612210

`A000010(n+1)-1`
-/

namespace A109606.P2415810041766612210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

end

end A109606.P2415810041766612210

noncomputable section

/-- A109606: Number of numbers k with 1 < k < n which are relatively prime to n.

Offset 1, canonical program `A109606.P2415810041766612210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109606 (n : ℕ) : ℤ :=
  A109606.P2415810041766612210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110601.P15769092339802905093

`A000010(n+1)*A035116(n+1)`
-/

namespace A110601.P15769092339802905093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A035116 (n + 1)

end

end A110601.P15769092339802905093

noncomputable section

/-- A110601: a(n) = phi(n)*tau(n)^2, where phi is Euler's totient function and tau(n) is the number of divisors of n.

Offset 1, canonical program `A110601.P15769092339802905093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110601 (n : ℕ) : ℤ :=
  A110601.P15769092339802905093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110601.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A114073.P9867924632758766548

`eq[1, A007913(A000010(n+1)+n+1)]+1`
-/

namespace A114073.P9867924632758766548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114073.P9867924632758766548

noncomputable section

/-- A114073: Numbers k such that phi(k) + k is a square.

Offset 1, canonical program `A114073.P9867924632758766548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A114073 (n : ℕ) : ℤ :=
  (A114073.P9867924632758766548.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A114073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114810.P3387844851624277263

`A000010((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A114810.P3387844851624277263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A114810.P3387844851624277263

noncomputable section

/-- A114810: Number of complex, weakly primitive Dirichlet characters modulo n.

Offset 1, canonical program `A114810.P3387844851624277263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114810 (n : ℕ) : ℤ :=
  A114810.P3387844851624277263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114810.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115070.P14336137685640235068

`A000010(n+1)/A115069(n+1)`
-/

namespace A115070.P14336137685640235068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A115069 (n + 1) : ℚ)

end

end A115070.P14336137685640235068

noncomputable section

/-- A115070: a(n) = phi(n)/3^b(n), where b(n) is #{primes p=1 mod 3 dividing n}.

Offset 1, canonical program `A115070.P14336137685640235068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A115069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115070.P14336137685640235068.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A115069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115077.P12763444210255588654

`(n+1)^3-A115075(n+1)`
-/

namespace A115077.P12763444210255588654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A115075 (n + 1)

end

end A115077.P12763444210255588654

noncomputable section

/-- A115077: Number of 2 X 2 symmetric matrices over Z(n) having nonzero determinant.

Offset 1, canonical program `A115077.P12763444210255588654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115077 (n : ℕ) : ℤ :=
  A115077.P12763444210255588654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115905.P435895685124942086

`eq[1, A002260(A000010(n+1)+n+2)]+1`
-/

namespace A115905.P435895685124942086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000010 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115905.P435895685124942086

noncomputable section

/-- A115905: Numbers k such that k + phi(k) is a triangular number.

Offset 1, canonical program `A115905.P435895685124942086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A115905 (n : ℕ) : ℤ :=
  (A115905.P435895685124942086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A115905.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117283.P3554693747055773777

`eq[1, A010057(n+1-A000010(n+1))]+1`
-/

namespace A117283.P3554693747055773777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117283.P3554693747055773777

noncomputable section

/-- A117283: Numbers k for which the cototient k-phi(k) is a cube.

Offset 1, canonical program `A117283.P3554693747055773777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A117283 (n : ℕ) : ℤ :=
  (A117283.P3554693747055773777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A117283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117284.P233037619182171599

`record[n+1-A271439(n+1-A000010(n+1))]`
-/

namespace A117284.P233037619182171599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A271439 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117284.P233037619182171599

noncomputable section

/-- A117284: Numbers k for which the cototient k-phi(k) is a triangular number.

Offset 1, canonical program `A117284.P233037619182171599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A117284 (n : ℕ) : ℤ :=
  A117284.P233037619182171599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A117284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117290.P4275547685329266440

`record[(n+1)*A010056(n+1-A000010(n+1))]`
-/

namespace A117290.P4275547685329266440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010056 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117290.P4275547685329266440

noncomputable section

/-- A117290: Numbers k for which the cototient k - phi(k) is a Fibonacci number.

Offset 1, canonical program `A117290.P4275547685329266440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. -/
def A117290 (n : ℕ) : ℤ :=
  A117290.P4275547685329266440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. -/
def A117290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117307.P10752850070173381648

`eq[1, A289356(A000010(n+1))]+1`
-/

namespace A117307.P10752850070173381648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117307.P10752850070173381648

noncomputable section

/-- A117307: Numbers for which (phi(n))^2+phi(n)+1 is a prime number.

Offset 1, canonical program `A117307.P10752850070173381648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A117307 (n : ℕ) : ℤ :=
  (A117307.P10752850070173381648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A117307.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119251.P15176294576861690878

`eq[1, A056169(n+1)]+1`
-/

namespace A119251.P15176294576861690878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119251.P15176294576861690878

noncomputable section

/-- A119251: Positive integers each with exactly 1 unitary prime divisor (i.e., n is included if and only if A056169(n) = 1).

Offset 1, canonical program `A119251.P15176294576861690878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. -/
def A119251 (n : ℕ) : ℤ :=
  (A119251.P15176294576861690878.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. -/
def A119251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120351.P11340224125315453001

`record[2*(n+1)/A000010(A090387(n+1))]`
-/

namespace A120351.P11340224125315453001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000010 (A090387 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120351.P11340224125315453001

noncomputable section

/-- A120351: Even numbers k such that the number of odd divisors r and the number of even divisors s are both divisors of k.

Offset 1, canonical program `A120351.P11340224125315453001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120351.P11340224125315453001.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121048.P10222907602682812102

`n+1+A000010(n+1)`
-/

namespace A121048.P10222907602682812102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000010 (n + 1)

end

end A121048.P10222907602682812102

noncomputable section

/-- A121048: a(n) = n + phi(n), where phi is the Euler totient function.

Offset 1, canonical program `A121048.P10222907602682812102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121048 (n : ℕ) : ℤ :=
  A121048.P10222907602682812102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122255.P582623873584825635

`A065333(A000010(n+1))`
-/

namespace A122255.P582623873584825635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A000010 (n + 1)).toNat

end

end A122255.P582623873584825635

noncomputable section

/-- A122255: Characteristic function of numbers with 3-smooth Euler's totient (A000010).

Offset 1, canonical program `A122255.P582623873584825635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A065333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122255 (n : ℕ) : ℤ :=
  A122255.P582623873584825635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A065333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122410.P12302092588494273292

`∑{d}[n+1, A000010(#)*A100995((n+1)/#)]`
-/

namespace A122410.P12302092588494273292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A100995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122410.P12302092588494273292

noncomputable section

/-- A122410: a(n) is the sum of j's for those k's, 1 <= k <= n, where gcd(k,n) = p^j, p = prime.

Offset 1, canonical program `A122410.P12302092588494273292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122410 (n : ℕ) : ℤ :=
  A122410.P12302092588494273292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126106.P3127223409629631580

`record[A000010(n)+a(A000010(n))]` with `a(0)=0, a(1)=0`
-/

namespace A126106.P3127223409629631580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000010 n + f1 (A000010 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126106.P3127223409629631580

noncomputable section

/-- A126106: Record values in A092693 = sum of iterated phi(n).

Offset 1, canonical program `A126106.P3127223409629631580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A126106 (n : ℕ) : ℤ :=
  A126106.P3127223409629631580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A126106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126775.P10311173591226257013

`A000010(n+1)²*A000005(n+1)`
-/

namespace A126775.P10311173591226257013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * A000005 (n + 1)

end

end A126775.P10311173591226257013

noncomputable section

/-- A126775: a(n) = phi(n)^2 * d(n), where phi = A000010, d = A000005.

Offset 1, canonical program `A126775.P10311173591226257013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126775 (n : ℕ) : ℤ :=
  A126775.P10311173591226257013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127473.P9698007400369304439

`A000010(n+1)²`
-/

namespace A127473.P9698007400369304439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2

end

end A127473.P9698007400369304439

noncomputable section

/-- A127473: a(n) = phi(n)^2.

Offset 1, canonical program `A127473.P9698007400369304439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127473 (n : ℕ) : ℤ :=
  A127473.P9698007400369304439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128853.P13378743803710917072

`A034444(n+1)/A034444(A009195(n+1))`
-/

namespace A128853.P13378743803710917072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A034444 (A009195 (n + 1)).toNat : ℚ)

end

end A128853.P13378743803710917072

noncomputable section

/-- A128853: a(n) is the number of positive divisors of n which are coprime to phi(n) = A000010(n).

Offset 1, canonical program `A128853.P13378743803710917072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128853 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128853.P13378743803710917072.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129335.P13851088518621729713

`A000010(A006882(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129335.P13851088518621729713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006882 (n + 1)).toNat

end

end A129335.P13851088518621729713

noncomputable section

/-- A129335: a(n) = phi(n!!) where phi is the Euler totient function. In other words, a(n) = A000010(A006882(n)).

Offset 1, canonical program `A129335.P13851088518621729713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129335 (n : ℕ) : ℤ :=
  A129335.P13851088518621729713.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129827.P12783245347972754053

`eq[2, A007913(A000010(n+1))]+1`
-/

namespace A129827.P12783245347972754053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129827.P12783245347972754053

noncomputable section

/-- A129827: Numbers k such that Euler's totient phi(k) divided by 2 is a perfect square.

Offset 1, canonical program `A129827.P12783245347972754053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. -/
def A129827 (n : ℕ) : ℤ :=
  (A129827.P12783245347972754053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. -/
def A129827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130445.P7579084859812681452

`comp[A130446(n+1)-1]+1`
-/

namespace A130445.P7579084859812681452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A130445.P7579084859812681452

noncomputable section

/-- A130445: Integers in the range [1, 425] not expressible as a difference of the unique optimal Golomb ruler of order 24. See A130444.

Offset 1, canonical program `A130445.P7579084859812681452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A130445 (n : ℕ) : ℤ :=
  (A130445.P7579084859812681452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A130445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130586.P17925529439959671154

`∑{d}[n+1, A000010(#)*A011782(#)]`
-/

namespace A130586.P17925529439959671154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A011782 d

end

end A130586.P17925529439959671154

noncomputable section

/-- A130586: Row sums of triangle A130585.

Offset 0, canonical program `A130586.P17925529439959671154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A130586 (n : ℕ) : ℤ :=
  A130586.P17925529439959671154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A130586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131343.P2090840239221504479

`A112310(A188015(n+1))-1`
-/

namespace A131343.P2090840239221504479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A188015 (n + 1)).toNat - 1

end

end A131343.P2090840239221504479

noncomputable section

/-- A131343: Number of 1's in maximal Lucas representation (A130311) of n.

Offset 0, canonical program `A131343.P2090840239221504479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A131343 (n : ℕ) : ℤ :=
  A131343.P2090840239221504479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A131343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000977.P17233491019449324668

`lt[2, A259936(n+1)]+1`
-/

namespace A000977.P17233491019449324668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P17233491019449324668

noncomputable section

/-- A000977: Numbers that are divisible by at least three different primes.

Offset 1, canonical program `A000977.P17233491019449324668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9966 terms. -/
def A000977 (n : ℕ) : ℤ :=
  (A000977.P17233491019449324668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9966 terms. -/
def A000977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007774.P15607117293274533101

`eq[2, A259936(n+1)]+1`
-/

namespace A007774.P15607117293274533101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P15607117293274533101

noncomputable section

/-- A007774: Numbers that are divisible by exactly 2 different primes; numbers n with omega(n) = A001221(n) = 2.

Offset 1, canonical program `A007774.P15607117293274533101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7705 terms. -/
def A007774 (n : ℕ) : ℤ :=
  (A007774.P15607117293274533101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7705 terms. -/
def A007774.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050985.P12411912326700818488

`∑{d}[n+1, A073185(#)*A210826((n+1)/#)]`
-/

namespace A050985.P12411912326700818488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073185 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050985.P12411912326700818488

noncomputable section

/-- A050985: Cubefree part of n.

Offset 1, canonical program `A050985.P12411912326700818488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050985 (n : ℕ) : ℤ :=
  A050985.P12411912326700818488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056622.P16381478984900438318

`sqrt(A056623(n+1))`
-/

namespace A056622.P16381478984900438318
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056623 (n + 1) : ℝ)

end

end A056622.P16381478984900438318

noncomputable section

/-- A056622: a(n) = A000188(n)/A055229(n).

Offset 1, canonical program `A056622.P16381478984900438318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056622.P16381478984900438318.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056622.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A070139.P10794529069713137926

`A004526(A057918(Δ[A004526(n)²]+1))`
-/

namespace A070139.P10794529069713137926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057918 (f1 (n + 1) - f1 n + 1).toNat).toNat

end

end A070139.P10794529069713137926

noncomputable section

/-- A070139: Number of isosceles integer triangles with perimeter n having integral area.

Offset 1, canonical program `A070139.P10794529069713137926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070139 (n : ℕ) : ℤ :=
  A070139.P10794529069713137926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070139.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087248.P12195210729776297847

`record[A007947(A308127(n+1))]`
-/

namespace A087248.P12195210729776297847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A308127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087248.P12195210729776297847

noncomputable section

/-- A087248: Squarefree abundant numbers.

Offset 1, canonical program `A087248.P12195210729776297847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. -/
def A087248 (n : ℕ) : ℤ :=
  A087248.P12195210729776297847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. -/
def A087248.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095880.P1900210885246212965

`eq[1, A000034(A112310(n))]`
-/

namespace A095880.P1900210885246212965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095880.P1900210885246212965

noncomputable section

/-- A095880: Numbers whose lazy Fibonacci representation has an even number of summands.

Offset 1, canonical program `A095880.P1900210885246212965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A095880 (n : ℕ) : ℤ :=
  (A095880.P1900210885246212965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A095880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104477.P14182491758873467040

`and(1, n+1)*A104481(A008619(n))`
-/

namespace A104477.P14182491758873467040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) * A104481 (A008619 n).toNat

end

end A104477.P14182491758873467040

noncomputable section

/-- A104477: Number of successive squarefree intervals between primes.

Offset 1, canonical program `A104477.P14182491758873467040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104477 (n : ℕ) : ℤ :=
  A104477.P14182491758873467040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107758.P5135231134874170272

`∑{d}[n+1, A363289(#)]`
-/

namespace A107758.P5135231134874170272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A363289 d

end

end A107758.P5135231134874170272

noncomputable section

/-- A107758: (+2)Sigma(n): If n = Product p_i^r_i then a(n) = Product (2 + Sum p_i^s_i, s_i=1 to r_i) = Product (1 + (p_i^(r_i+1)-1)/(p_i-1)), a(1) = 1.

Offset 1, canonical program `A107758.P5135231134874170272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107758 (n : ℕ) : ℤ :=
  A107758.P5135231134874170272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107758.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055076.P11566696520778035390

`2^A162642(n+1)`
-/

namespace A055076.P11566696520778035390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A162642 (n + 1) : ℤ)

end

end A055076.P11566696520778035390

noncomputable section

/-- A055076: Multiplicity of Max{gcd(d, n/d)} when d runs over divisors of n.

Offset 1, canonical program `A055076.P11566696520778035390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055076.P11566696520778035390.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056626.P14476168144276018779

`A046951(n+1)-A056624(n+1)`
-/

namespace A056626.P14476168144276018779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A056624 (n + 1)

end

end A056626.P14476168144276018779

noncomputable section

/-- A056626: Number of non-unitary square divisors of n.

Offset 1, canonical program `A056626.P14476168144276018779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A056624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056626 (n : ℕ) : ℤ :=
  A056626.P14476168144276018779.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A056624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056626.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A068329.P15819269738925584645

`A003415(A000045(n+1))`
-/

namespace A068329.P15819269738925584645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000045 (n + 1)).toNat

end

end A068329.P15819269738925584645

noncomputable section

/-- A068329: Arithmetic derivative of Fibonacci numbers > 0.

Offset 1, canonical program `A068329.P15819269738925584645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068329 (n : ℕ) : ℤ :=
  A068329.P15819269738925584645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068329.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A068719.P3996091434166805245

`n+1+2*A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068719.P3996091434166805245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 2 * A003415 (n + 1)

end

end A068719.P3996091434166805245

noncomputable section

/-- A068719: Arithmetic derivative of even numbers: a(n) = n+2*A003415(n).

Offset 1, canonical program `A068719.P3996091434166805245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068719 (n : ℕ) : ℤ :=
  A068719.P3996091434166805245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068720.P10763001539119825383

`2*(n+1)*A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068720.P10763001539119825383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A003415 (n + 1)

end

end A068720.P10763001539119825383

noncomputable section

/-- A068720: Arithmetic derivative of squares: a(n) = 2*n*A003415(n).

Offset 1, canonical program `A068720.P10763001539119825383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068720 (n : ℕ) : ℤ :=
  A068720.P10763001539119825383.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068721.P7722963444883938624

`3*(n+1)²*A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068721.P7722963444883938624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) * A003415 (n + 1)

end

end A068721.P7722963444883938624

noncomputable section

/-- A068721: Arithmetic derivative of cubes: a(n) = 3*n^2*A003415(n).

Offset 1, canonical program `A068721.P7722963444883938624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068721 (n : ℕ) : ℤ :=
  A068721.P7722963444883938624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068721.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A085731.P17818604226734037125

`gcd(n+1, A003415(n+1))`
-/

namespace A085731.P17818604226734037125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003415 (n + 1))

end

end A085731.P17818604226734037125

noncomputable section

/-- A085731: Greatest common divisor of n and its arithmetic derivative.

Offset 1, canonical program `A085731.P17818604226734037125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085731 (n : ℕ) : ℤ :=
  (A085731.P17818604226734037125.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086130.P10820220984764125251

`lcm(n+1, A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086130.P10820220984764125251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A003415 (n + 1))

end

end A086130.P10820220984764125251

noncomputable section

/-- A086130: a(n) = lcm(n, A003415(n)).

Offset 1, canonical program `A086130.P10820220984764125251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086130 (n : ℕ) : ℤ :=
  (A086130.P10820220984764125251.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086130.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A119356.P3406510715932935683

`eq[1, A375970(n+1)]+1`
-/

namespace A119356.P3406510715932935683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119356.P3406510715932935683

noncomputable section

/-- A119356: Numbers k such that A000330(k) is squarefree.

Offset 1, canonical program `A119356.P3406510715932935683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A119356 (n : ℕ) : ℤ :=
  (A119356.P3406510715932935683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A119356.provenance : SequenceMachineLib.Provenance := .conjectured

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

