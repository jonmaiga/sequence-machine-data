import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A159200: Decimal expansion of Sum_{k >= 1} (1/(10^(4*k + 2) - 1)) - (1/(10^(2*k + 1) - 1)), negated.

The programs for A159200, the canonical program `A159200.P5098195363078797177` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159200 has offset 0).

The definition of A159200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159200.P5098195363078797177

`∑{d}[or(1, n), n²%#]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159200

/-- `∑{d}[or(1, n), n²%#]` -/
def P5098195363078797177.Spec : Prop :=
  ∀ n, (P5098195363078797177.a n : ℤ) = A159200 n

theorem P5098195363078797177.correct : P5098195363078797177.Spec := by
  intro n
  simp only [A159200]

end A159200

/-! ## A159200.P14084135376575451222

`∑{d}[n+1, and(1, n-1)%#]`
-/

namespace A159200.P14084135376575451222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.land 1 ((n : ℤ) - 1)) (d : ℤ)

end

end A159200.P14084135376575451222

namespace A159200

/-- `∑{d}[n+1, and(1, n-1)%#]` -/
def P14084135376575451222.Spec : Prop :=
  ∀ n, P14084135376575451222.a n = A159200 n

end A159200

/-! ## A159200.P16690051568623154604

`∏{e}[C(or(1, n), n), #+1]-1`
-/

namespace A159200.P16690051568623154604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A159200.P16690051568623154604

namespace A159200

/-- `∏{e}[C(or(1, n), n), #+1]-1` -/
def P16690051568623154604.Spec : Prop :=
  ∀ n, P16690051568623154604.a n = A159200 n

end A159200

/-! ## A159200.P3010285369616111103

`∏{e}[C(xor(1, n), n), #+1]-1`
-/

namespace A159200.P3010285369616111103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A159200.P3010285369616111103

namespace A159200

/-- `∏{e}[C(xor(1, n), n), #+1]-1` -/
def P3010285369616111103.Spec : Prop :=
  ∀ n, P3010285369616111103.a n = A159200 n

end A159200

/-! ## A159200.P16464730969258507135

`gcd(n%2, ∏{e}[n+1, #+1])-1`
-/

namespace A159200.P16464730969258507135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n % 2) (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ) - 1

end

end A159200.P16464730969258507135

namespace A159200

/-- `gcd(n%2, ∏{e}[n+1, #+1])-1` -/
def P16464730969258507135.Spec : Prop :=
  ∀ n, P16464730969258507135.a n = A159200 n

end A159200

/-! ## A159200.P17209105346508551459

`(∏{e}[n+1, #+1]-1)*log2(gcd(2, n))`
-/

namespace A159200.P17209105346508551459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1 : ℝ) * Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A159200.P17209105346508551459

namespace A159200

/-- `(∏{e}[n+1, #+1]-1)*log2(gcd(2, n))` -/
def P17209105346508551459.Spec : Prop :=
  ∀ n, P17209105346508551459.a n = (A159200 n : ℝ)

end A159200

/-! ## A159200.P14704983722285460984

`∏{e}[(n+1)*char[2*n], #+1]-1`
-/

namespace A159200.P14704983722285460984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A159200.P14704983722285460984

namespace A159200

/-- `∏{e}[(n+1)*char[2*n], #+1]-1` -/
def P14704983722285460984.Spec : Prop :=
  ∀ n, P14704983722285460984.a n = A159200 n

end A159200

/-! ## A159200.P149999728558735116

`lcm(∑{d}[n+1, (-1)^#]+1, ∑[(-1)^n])`
-/

namespace A159200.P149999728558735116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ d ∈ Nat.divisors (f1 n), (-1) ^ d + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A159200.P149999728558735116

namespace A159200

/-- `lcm(∑{d}[n+1, (-1)^#]+1, ∑[(-1)^n])` -/
def P149999728558735116.Spec : Prop :=
  ∀ n, (P149999728558735116.a n : ℤ) = A159200 n

end A159200

/-! ## A159200.P7740481613292161726

`A303873(n+1)%8`
-/

namespace A159200.P7740481613292161726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303873 (n + 1)) 8

end

end A159200.P7740481613292161726

namespace A159200

/-- `A303873(n+1)%8` -/
def P7740481613292161726.Spec : Prop :=
  ∀ n, P7740481613292161726.a n = A159200 n

end A159200

/-! ## A159200.P136806951449312180

`A352050(n+1)%8`
-/

namespace A159200.P136806951449312180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352050 (n + 1)) 8

end

end A159200.P136806951449312180

namespace A159200

/-- `A352050(n+1)%8` -/
def P136806951449312180.Spec : Prop :=
  ∀ n, P136806951449312180.a n = A159200 n

end A159200

/-! ## A159200.P11955406050212568226

`A352052(n+1)%8`
-/

namespace A159200.P11955406050212568226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352052 (n + 1)) 8

end

end A159200.P11955406050212568226

namespace A159200

/-- `A352052(n+1)%8` -/
def P11955406050212568226.Spec : Prop :=
  ∀ n, P11955406050212568226.a n = A159200 n

end A159200

/-! ## A159200.P3741088991881242004

`A352054(n+1)%8`
-/

namespace A159200.P3741088991881242004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352054 (n + 1)) 8

end

end A159200.P3741088991881242004

namespace A159200

/-- `A352054(n+1)%8` -/
def P3741088991881242004.Spec : Prop :=
  ∀ n, P3741088991881242004.a n = A159200 n

end A159200

/-! ## A159200.P15631879854922201522

`A325937(n%or(1, n)+1)`
-/

namespace A159200.P15631879854922201522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n % Nat.lor 1 n + 1)

end

end A159200.P15631879854922201522

namespace A159200

/-- `A325937(n%or(1, n)+1)` -/
def P15631879854922201522.Spec : Prop :=
  ∀ n, P15631879854922201522.a n = A159200 n

end A159200

/-! ## A159200.P10083273025582173266

`A000005(C(or(1, n), n))-1`
-/

namespace A159200.P10083273025582173266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (Nat.lor 1 n) n) - 1

end

end A159200.P10083273025582173266

namespace A159200

/-- `A000005(C(or(1, n), n))-1` -/
def P10083273025582173266.Spec : Prop :=
  ∀ n, P10083273025582173266.a n = A159200 n

end A159200

/-! ## A159200.P16576043787579990542

`char[2*n]*A195150(n+1)`
-/

namespace A159200.P16576043787579990542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A195150 (n + 1)

end

end A159200.P16576043787579990542

namespace A159200

/-- `char[2*n]*A195150(n+1)` -/
def P16576043787579990542.Spec : Prop :=
  ∀ n, P16576043787579990542.a n = A159200 n

end A159200

/-! ## A159200.P195204134625304325

`and(1, n+1)*A023645(n+1)`
-/

namespace A159200.P195204134625304325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) * A023645 (n + 1)

end

end A159200.P195204134625304325

namespace A159200

/-- `and(1, n+1)*A023645(n+1)` -/
def P195204134625304325.Spec : Prop :=
  ∀ n, P195204134625304325.a n = A159200 n

end A159200

/-! ## A159200.P7840979030137255863

`A000005(gcd(n+1, or(1, n)))-1`
-/

namespace A159200.P7840979030137255863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (n + 1) (Nat.lor 1 n)) - 1

end

end A159200.P7840979030137255863

namespace A159200

/-- `A000005(gcd(n+1, or(1, n)))-1` -/
def P7840979030137255863.Spec : Prop :=
  ∀ n, P7840979030137255863.a n = A159200 n

end A159200

/-! ## A159200.P17795799595355017512

`gcd(and(1, n), A000005(or(1, n)))-1`
-/

namespace A159200.P17795799595355017512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Nat.land 1 n : ℤ) (A000005 (Nat.lor 1 n)) : ℤ) - 1

end

end A159200.P17795799595355017512

namespace A159200

/-- `gcd(and(1, n), A000005(or(1, n)))-1` -/
def P17795799595355017512.Spec : Prop :=
  ∀ n, P17795799595355017512.a n = A159200 n

end A159200

/-! ## A159200.P7846105347629446382

`A000005(Δ[n²]-lcm(2, n))-1`
-/

namespace A159200.P7846105347629446382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.lcm 2 n : ℤ)).toNat - 1

end

end A159200.P7846105347629446382

namespace A159200

/-- `A000005(Δ[n²]-lcm(2, n))-1` -/
def P7846105347629446382.Spec : Prop :=
  ∀ n, P7846105347629446382.a n = A159200 n

end A159200

/-! ## A159200.P6588962663128351162

`A000005(n*char[2*n]+1)-1`
-/

namespace A159200.P6588962663128351162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n * (if ∃ j, f1 j = n then 1 else 0) + 1) - 1

end

end A159200.P6588962663128351162

namespace A159200

/-- `A000005(n*char[2*n]+1)-1` -/
def P6588962663128351162.Spec : Prop :=
  ∀ n, P6588962663128351162.a n = A159200 n

end A159200

/-!
# A159217: 1/8 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 17.

The programs for A159217, the canonical program `A159217.P12945821394500987308` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159217 has offset 2).

The definition of A159217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159217.P12945821394500987308

`2*(a(n-2)+2^n)+3` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159217

/-- `2*(a(n-2)+2^n)+3` -/
def P12945821394500987308.Spec : Prop :=
  ∀ n, (P12945821394500987308.a n : ℤ) = A159217 (n + 2)

theorem P12945821394500987308.correct : P12945821394500987308.Spec := by
  intro n
  simp only [A159217, Nat.add_sub_cancel]

end A159217

/-! ## A159217.P16946980286508787144

`∑[round(A001445(n+3)/2)]`
-/

namespace A159217.P16946980286508787144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001445 (n + 3) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159217.P16946980286508787144

namespace A159217

/-- `∑[round(A001445(n+3)/2)]` -/
def P16946980286508787144.Spec : Prop :=
  ∀ n, P16946980286508787144.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P6658160756972634315

`A052955(n)+∑[2^(n+1)]`
-/

namespace A159217.P6658160756972634315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A159217.P6658160756972634315

namespace A159217

/-- `A052955(n)+∑[2^(n+1)]` -/
def P6658160756972634315.Spec : Prop :=
  ∀ n, P6658160756972634315.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P13037611333054072142

`A159230(n+2)+∑[2^n]`
-/

namespace A159217.P13037611333054072142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159230 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A159217.P13037611333054072142

namespace A159217

/-- `A159230(n+2)+∑[2^n]` -/
def P13037611333054072142.Spec : Prop :=
  ∀ n, P13037611333054072142.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P9305346050739662512

`A183978(n+1)-A165751(n)`
-/

namespace A159217.P9305346050739662512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (n + 1) - A165751 n

end

end A159217.P9305346050739662512

namespace A159217

/-- `A183978(n+1)-A165751(n)` -/
def P9305346050739662512.Spec : Prop :=
  ∀ n, P9305346050739662512.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P17616028698106840183

`A209721(n+1)+A028399(n+2)`
-/

namespace A159217.P17616028698106840183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) + A028399 (n + 2)

end

end A159217.P17616028698106840183

namespace A159217

/-- `A209721(n+1)+A028399(n+2)` -/
def P17616028698106840183.Spec : Prop :=
  ∀ n, P17616028698106840183.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P2739672558620075302

`A184041(n+1)-A209725(n+1)`
-/

namespace A159217.P2739672558620075302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184041 (n + 1) - A209725 (n + 1)

end

end A159217.P2739672558620075302

namespace A159217

/-- `A184041(n+1)-A209725(n+1)` -/
def P2739672558620075302.Spec : Prop :=
  ∀ n, P2739672558620075302.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P6427629251713286523

`A136252(2*n)+A029744(n+2)`
-/

namespace A159217.P6427629251713286523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (2 * n) + A029744 (n + 2)

end

end A159217.P6427629251713286523

namespace A159217

/-- `A136252(2*n)+A029744(n+2)` -/
def P6427629251713286523.Spec : Prop :=
  ∀ n, P6427629251713286523.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P9197297209057163463

`A347789(2*n+1)+A209721(n+1)`
-/

namespace A159217.P9197297209057163463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (2 * n + 1) + A209721 (n + 1)

end

end A159217.P9197297209057163463

namespace A159217

/-- `A347789(2*n+1)+A209721(n+1)` -/
def P9197297209057163463.Spec : Prop :=
  ∀ n, P9197297209057163463.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P7159551007374788186

`A354788(2*n+1)+A029744(n+2)`
-/

namespace A159217.P7159551007374788186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 (2 * n + 1) + A029744 (n + 2)

end

end A159217.P7159551007374788186

namespace A159217

/-- `A354788(2*n+1)+A029744(n+2)` -/
def P7159551007374788186.Spec : Prop :=
  ∀ n, P7159551007374788186.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P11017939899710033707

`A027383(n)+A107659(n)+A052955(n)`
-/

namespace A159217.P11017939899710033707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n + (A107659 n + A052955 n)

end

end A159217.P11017939899710033707

namespace A159217

/-- `A027383(n)+A107659(n)+A052955(n)` -/
def P11017939899710033707.Spec : Prop :=
  ∀ n, P11017939899710033707.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P1609032937988066118

`A055010(n+1)+A052955(n)+A000225(n)`
-/

namespace A159217.P1609032937988066118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (n + 1) + (A052955 n + A000225 n)

end

end A159217.P1609032937988066118

namespace A159217

/-- `A055010(n+1)+A052955(n)+A000225(n)` -/
def P1609032937988066118.Spec : Prop :=
  ∀ n, P1609032937988066118.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P5649650745860237077

`A000225(n+1)+A052955(n)+A000225(n+1)`
-/

namespace A159217.P5649650745860237077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A052955 n + A000225 (n + 1))

end

end A159217.P5649650745860237077

namespace A159217

/-- `A000225(n+1)+A052955(n)+A000225(n+1)` -/
def P5649650745860237077.Spec : Prop :=
  ∀ n, P5649650745860237077.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P5359879741588896260

`∑[ceil(A005418(n+5)/4)]`
-/

namespace A159217.P5359879741588896260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005418 (n + 5) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159217.P5359879741588896260

namespace A159217

/-- `∑[ceil(A005418(n+5)/4)]` -/
def P5359879741588896260.Spec : Prop :=
  ∀ n, P5359879741588896260.a n = A159217 (n + 2)

end A159217

/-! ## A159217.P9482832492385763834

`A051633(n)-A274230(n)`
-/

namespace A159217.P9482832492385763834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051633 n - A274230 n

end

end A159217.P9482832492385763834

namespace A159217

/-- `A051633(n)-A274230(n)` -/
def P9482832492385763834.Spec : Prop :=
  ∀ n, P9482832492385763834.a n = A159217 (n + 2)

end A159217

/-!
# A159219: Number of n X n arrays of squares of integers with every 2X2 subblock summing to 18.

The programs for A159219, the canonical program `A159219.P11989702742414678499` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159219 has offset 2).

The definition of A159219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159219.P11989702742414678499

`A288732(2*(n+2))+∑[A020714(n+2)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159219

/-- `A288732(2*(n+2))+∑[A020714(n+2)]` -/
def P11989702742414678499.Spec : Prop :=
  ∀ n, P11989702742414678499.a n = A159219 (n + 2)

theorem P11989702742414678499.correct : P11989702742414678499.Spec := by
  intro n
  simp only [A159219, Nat.add_sub_cancel]

end A159219

/-!
# A159221: 1/2 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 20.

The programs for A159221, the canonical program `A159221.P3055259751940488832` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159221 has offset 2).

The definition of A159221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159221.P3055259751940488832

`2*(a(n-1)+3)-(∏[gcd(2, n)]-1)` with `a(0)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159221

/-- `2*(a(n-1)+3)-(∏[gcd(2, n)]-1)` -/
def P3055259751940488832.Spec : Prop :=
  ∀ n, P3055259751940488832.a n = A159221 (n + 2)

theorem P3055259751940488832.correct : P3055259751940488832.Spec := by
  intro n
  simp only [A159221, Nat.add_sub_cancel]

end A159221

/-! ## A159221.P6355178386139293409

`A068156(n+2)+∑[2^ceil(n/2)]-1`
-/

namespace A159221.P6355178386139293409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068156 (n + 2) : ℚ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A159221.P6355178386139293409

namespace A159221

/-- `A068156(n+2)+∑[2^ceil(n/2)]-1` -/
def P6355178386139293409.Spec : Prop :=
  ∀ n, P6355178386139293409.a n = (A159221 (n + 2) : ℚ)

end A159221

/-! ## A159221.P5501692160467828798

`A347789(2*(n+2))+∑[2^ceil(n/2)]`
-/

namespace A159221.P5501692160467828798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347789 (2 * (n + 2)) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159221.P5501692160467828798

namespace A159221

/-- `A347789(2*(n+2))+∑[2^ceil(n/2)]` -/
def P5501692160467828798.Spec : Prop :=
  ∀ n, P5501692160467828798.a n = (A159221 (n + 2) : ℚ)

end A159221

/-! ## A159221.P18160897384982580829

`A136252(n)+2*(Δ[2*a(n-1)]-2)` with `a(0)=6`
-/

namespace A159221.P18160897384982580829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n + 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2)

end

end A159221.P18160897384982580829

namespace A159221

/-- `A136252(n)+2*(Δ[2*a(n-1)]-2)` -/
def P18160897384982580829.Spec : Prop :=
  ∀ n, P18160897384982580829.a n = A159221 (n + 2)

end A159221

/-! ## A159221.P17780286416831603160

`A136252(2*n+3)+∑[2^ceil(n/2)]-1`
-/

namespace A159221.P17780286416831603160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136252 (2 * n + 3) : ℚ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A159221.P17780286416831603160

namespace A159221

/-- `A136252(2*n+3)+∑[2^ceil(n/2)]-1` -/
def P17780286416831603160.Spec : Prop :=
  ∀ n, P17780286416831603160.a n = (A159221 (n + 2) : ℚ)

end A159221

/-! ## A159221.P2430785384304455585

`A211525(n+1)+A048490(n)`
-/

namespace A159221.P2430785384304455585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + A048490 n

end

end A159221.P2430785384304455585

namespace A159221

/-- `A211525(n+1)+A048490(n)` -/
def P2430785384304455585.Spec : Prop :=
  ∀ n, P2430785384304455585.a n = A159221 (n + 2)

end A159221

/-! ## A159221.P11070084580794429039

`A164090(n+1)+A159222(n+2)`
-/

namespace A159221.P11070084580794429039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A159222 (n + 2)

end

end A159221.P11070084580794429039

namespace A159221

/-- `A164090(n+1)+A159222(n+2)` -/
def P11070084580794429039.Spec : Prop :=
  ∀ n, P11070084580794429039.a n = A159221 (n + 2)

end A159221

/-!
# A159222: 1/4 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 21.

The programs for A159222, the canonical program `A159222.P13919845073042096290` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159222 has offset 2).

The definition of A159222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159222.P13919845073042096290

`A052955(n)+∑[6*2^n]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159222

/-- `A052955(n)+∑[6*2^n]` -/
def P13919845073042096290.Spec : Prop :=
  ∀ n, P13919845073042096290.a n = A159222 (n + 2)

theorem P13919845073042096290.correct : P13919845073042096290.Spec := by
  intro n
  simp only [A159222, Nat.add_sub_cancel]

end A159222

/-! ## A159222.P10937210164943309466

`∑[2^∑[char[2*n+3]]]+∑[A122391(n+4)]`
-/

namespace A159222.P10937210164943309466
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f4 j

end

end A159222.P10937210164943309466

namespace A159222

/-- `∑[2^∑[char[2*n+3]]]+∑[A122391(n+4)]` -/
def P10937210164943309466.Spec : Prop :=
  ∀ n, P10937210164943309466.a n = A159222 (n + 2)

end A159222

/-! ## A159222.P8135670411675647615

`A068293(n+2)+A052955(n)`
-/

namespace A159222.P8135670411675647615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068293 (n + 2) + A052955 n

end

end A159222.P8135670411675647615

namespace A159222

/-- `A068293(n+2)+A052955(n)` -/
def P8135670411675647615.Spec : Prop :=
  ∀ n, P8135670411675647615.a n = A159222 (n + 2)

end A159222

/-! ## A159222.P13498293560115867718

`A159217(n+2)+∑[A020707(n)]`
-/

namespace A159222.P13498293560115867718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159217 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159222.P13498293560115867718

namespace A159222

/-- `A159217(n+2)+∑[A020707(n)]` -/
def P13498293560115867718.Spec : Prop :=
  ∀ n, P13498293560115867718.a n = A159222 (n + 2)

end A159222

/-! ## A159222.P1916265357473835256

`A183979(n+1)+A139635(n+1)`
-/

namespace A159222.P1916265357473835256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + A139635 (n + 1)

end

end A159222.P1916265357473835256

namespace A159222

/-- `A183979(n+1)+A139635(n+1)` -/
def P1916265357473835256.Spec : Prop :=
  ∀ n, P1916265357473835256.a n = A159222 (n + 2)

end A159222

/-! ## A159222.P10554104076110411778

`A209723(n+1)+A139697(n+1)`
-/

namespace A159222.P10554104076110411778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + A139697 (n + 1)

end

end A159222.P10554104076110411778

namespace A159222

/-- `A209723(n+1)+A139697(n+1)` -/
def P10554104076110411778.Spec : Prop :=
  ∀ n, P10554104076110411778.a n = A159222 (n + 2)

end A159222

/-! ## A159222.P3051440212240686106

`A159221(n+2)-A164090(n+1)`
-/

namespace A159222.P3051440212240686106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159221 (n + 2) - A164090 (n + 1)

end

end A159222.P3051440212240686106

namespace A159222

/-- `A159221(n+2)-A164090(n+1)` -/
def P3051440212240686106.Spec : Prop :=
  ∀ n, P3051440212240686106.a n = A159222 (n + 2)

end A159222

/-! ## A159222.P9627956695545914858

`A354789(2*n+1)+A029744(n+2)`
-/

namespace A159222.P9627956695545914858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354789 (2 * n + 1) + A029744 (n + 2)

end

end A159222.P9627956695545914858

namespace A159222

/-- `A354789(2*n+1)+A029744(n+2)` -/
def P9627956695545914858.Spec : Prop :=
  ∀ n, P9627956695545914858.a n = A159222 (n + 2)

end A159222

/-!
# A159225: 1/4 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 25.

The programs for A159225, the canonical program `A159225.P9455546201784334909` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159225 has offset 2).

The definition of A159225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159225.P9455546201784334909

`A159217(n+2)+(2*A052955(n))²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159225

/-- `A159217(n+2)+(2*A052955(n))²` -/
def P9455546201784334909.Spec : Prop :=
  ∀ n, P9455546201784334909.a n = A159225 (n + 2)

theorem P9455546201784334909.correct : P9455546201784334909.Spec := by
  intro n
  simp only [A159225, Nat.add_sub_cancel]

end A159225

/-!
# A159227: 1/4 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 27.

The programs for A159227, there is no canonical definition to state claims against.
-/

/-! ## A159227.P8001010910532104922

`A164090(2*n+3)+A100041(A164090(n+1))`
-/

namespace A159227.P8001010910532104922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (2 * n + 3) + A100041 (A164090 (n + 1)).toNat

end

end A159227.P8001010910532104922

/-!
# A159228: 1/12 the number of n X n arrays of squares of integers with every 2 X 2 subblock summing to 29.

The programs for A159228, there is no canonical definition to state claims against.
-/

/-! ## A159228.P13651728850696029241

`A276625(A102633(2*(n+1)))+A000035(n)`
-/

namespace A159228.P13651728850696029241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A102633 (2 * (n + 1))).toNat + A000035 n

end

end A159228.P13651728850696029241

/-!
# A159229: 1/16 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 30.

The programs for A159229, the canonical program `A159229.P10720237677923146473` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159229 has offset 2).

The definition of A159229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159229.P4236854123990090019

`2^n*A209723(n+1)-3`
-/

namespace A159229.P4236854123990090019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A209723 (n + 1) - 3

end

end A159229.P4236854123990090019

namespace A159229

/-- `2^n*A209723(n+1)-3` -/
def P4236854123990090019.Spec : Prop :=
  ∀ n, P4236854123990090019.a n = A159229 (n + 2)

end A159229

/-! ## A159229.P13758674594593930980

`A052955(3*n)+∑[root(2, 1/(n+1))]`
-/

namespace A159229.P13758674594593930980
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (1 / (n + 1 : ℚ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052955 (3 * n) : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159229.P13758674594593930980

namespace A159229

/-- `A052955(3*n)+∑[root(2, 1/(n+1))]` -/
def P13758674594593930980.Spec : Prop :=
  ∀ n, P13758674594593930980.a n = (A159229 (n + 2) : ℝ)

end A159229

/-! ## A159229.P10720237677923146473

`A052955(3*n)+A020707(n)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159229

/-- `A052955(3*n)+A020707(n)-2` -/
def P10720237677923146473.Spec : Prop :=
  ∀ n, P10720237677923146473.a n = A159229 (n + 2)

theorem P10720237677923146473.correct : P10720237677923146473.Spec := by
  intro n
  simp only [A159229, Nat.add_sub_cancel]

end A159229

/-! ## A159229.P10197867435114040523

`A029744(3*n+2)+∑[A151821(n+1)]`
-/

namespace A159229.P10197867435114040523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159229.P10197867435114040523

namespace A159229

/-- `A029744(3*n+2)+∑[A151821(n+1)]` -/
def P10197867435114040523.Spec : Prop :=
  ∀ n, P10197867435114040523.a n = A159229 (n + 2)

end A159229

/-! ## A159229.P7876854235564955309

`A029744(3*n+2)+∑[A029748(3*n)]`
-/

namespace A159229.P7876854235564955309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159229.P7876854235564955309

namespace A159229

/-- `A029744(3*n+2)+∑[A029748(3*n)]` -/
def P7876854235564955309.Spec : Prop :=
  ∀ n, P7876854235564955309.a n = A159229 (n + 2)

end A159229

/-!
# A159230: 1/8 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 31.

The programs for A159230, the canonical program `A159230.P18005695147735434891` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159230 has offset 2).

The definition of A159230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159230.P18005695147735434891

`2*a(n-2)+2^n+2` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159230

/-- `2*a(n-2)+2^n+2` -/
def P18005695147735434891.Spec : Prop :=
  ∀ n, (P18005695147735434891.a n : ℤ) = A159230 (n + 2)

theorem P18005695147735434891.correct : P18005695147735434891.Spec := by
  intro n
  simp only [A159230, Nat.add_sub_cancel]

end A159230

/-! ## A159230.P14622016169520308480

`∑[2^∑[char[2*n+3]]]+∑[2^n]`
-/

namespace A159230.P14622016169520308480
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f4 j

end

end A159230.P14622016169520308480

namespace A159230

/-- `∑[2^∑[char[2*n+3]]]+∑[2^n]` -/
def P14622016169520308480.Spec : Prop :=
  ∀ n, (P14622016169520308480.a n : ℤ) = A159230 (n + 2)

end A159230

/-! ## A159230.P9338720773694645879

`∑[2*a(n-1)+2*a(n-2)-4*a(n-3)]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=10`
-/

namespace A159230.P9338720773694645879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 10] fun n f1 =>
  2 * f1 (n - 1) + 2 * f1 (n - 2) - 4 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159230.P9338720773694645879

namespace A159230

/-- `∑[2*a(n-1)+2*a(n-2)-4*a(n-3)]` -/
def P9338720773694645879.Spec : Prop :=
  ∀ n, P9338720773694645879.a n = A159230 (n + 2)

end A159230

/-! ## A159230.P6403857624584038338

`abs(3-A257418(n+2))`
-/

namespace A159230.P6403857624584038338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A257418 (n + 2)|

end

end A159230.P6403857624584038338

namespace A159230

/-- `abs(3-A257418(n+2))` -/
def P6403857624584038338.Spec : Prop :=
  ∀ n, P6403857624584038338.a n = A159230 (n + 2)

end A159230

/-! ## A159230.P17442502414341170715

`xor(A153893(n), A274230(n))`
-/

namespace A159230.P17442502414341170715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153893 n) (A274230 n)

end

end A159230.P17442502414341170715

namespace A159230

/-- `xor(A153893(n), A274230(n))` -/
def P17442502414341170715.Spec : Prop :=
  ∀ n, P17442502414341170715.a n = A159230 (n + 2)

end A159230

/-! ## A159230.P10290507521744825568

`(record[2*(a(n-1)+3)-(∏[gcd(2, n)]-1)]-1)/4` with `a(0)=9, a(1)=3`
-/

namespace A159230.P10290507521744825568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 3] fun n f1 =>
  2 * (f1 (n - 1) + 3) - (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 : ℚ) / 4

end

end A159230.P10290507521744825568

namespace A159230

/-- `(record[2*(a(n-1)+3)-(∏[gcd(2, n)]-1)]-1)/4` -/
def P10290507521744825568.Spec : Prop :=
  ∀ n, P10290507521744825568.a n = (A159230 (n + 2) : ℚ)

end A159230

/-! ## A159230.P14589870910032347993

`(A184040(n+1)-1)/4`
-/

namespace A159230.P14589870910032347993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184040 (n + 1) - 1 : ℚ) / 4

end

end A159230.P14589870910032347993

namespace A159230

/-- `(A184040(n+1)-1)/4` -/
def P14589870910032347993.Spec : Prop :=
  ∀ n, P14589870910032347993.a n = (A159230 (n + 2) : ℚ)

end A159230

/-!
# A159231: Primes p such that 8*p^2-2*p-1 divides Fibonacci(p).

The programs for A159231, there is no canonical definition to state claims against.
-/

/-! ## A159231.P13208752486742372159

`p?[A159259(n+1)]`
-/

namespace A159231.P13208752486742372159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159231.P13208752486742372159

/-! ## A159231.P12000980535097921465

`p?[record[A159259(A133310(n))]]`
-/

namespace A159231.P12000980535097921465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159231.P12000980535097921465

/-! ## A159231.P1002357467136198960

`p?[record[A159259(A328629(n))]]`
-/

namespace A159231.P1002357467136198960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (A328629 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159231.P1002357467136198960

/-! ## A159231.P729723822935284242

`∩[A005382(n+1), A159259(n+1)]`
-/

namespace A159231.P729723822935284242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P729723822935284242

/-! ## A159231.P8987093399430258070

`∩[A023212(n+1), A159259(n+1)]`
-/

namespace A159231.P8987093399430258070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P8987093399430258070

/-! ## A159231.P10805976252565484418

`∩[A030432(n+1), A159259(n+1)]`
-/

namespace A159231.P10805976252565484418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P10805976252565484418

/-! ## A159231.P9824305372100820212

`∩[A045357(n+1), A159259(n+1)]`
-/

namespace A159231.P9824305372100820212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P9824305372100820212

/-! ## A159231.P7106514573809752825

`∩[A045380(n+1), A159259(n+1)]`
-/

namespace A159231.P7106514573809752825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P7106514573809752825

/-! ## A159231.P8353386640405044460

`∩[A053685(n+1), A159259(n+1)]`
-/

namespace A159231.P8353386640405044460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P8353386640405044460

/-! ## A159231.P14787380069115479544

`∩[A067826(n+1), A159259(n+1)]`
-/

namespace A159231.P14787380069115479544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P14787380069115479544

/-! ## A159231.P665780293641416257

`∩[A106952(n+1), A159259(n+1)]`
-/

namespace A159231.P665780293641416257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P665780293641416257

/-! ## A159231.P14050602465817628383

`∩[A132231(n+1), A159259(n+1)]`
-/

namespace A159231.P14050602465817628383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P14050602465817628383

/-! ## A159231.P13720709386212951546

`∩[A132237(n+1), A159259(n+1)]`
-/

namespace A159231.P13720709386212951546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P13720709386212951546

/-! ## A159231.P12114994319513471820

`∩[A159259(n+1), A174568(n+1)]`
-/

namespace A159231.P12114994319513471820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P12114994319513471820

/-! ## A159231.P1043689530758902456

`∩[A159259(n+1), A221982(n+1)]`
-/

namespace A159231.P1043689530758902456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P1043689530758902456

/-! ## A159231.P6427001894612390570

`∩[A159259(n+1), A257668(n+1)]`
-/

namespace A159231.P6427001894612390570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P6427001894612390570

/-! ## A159231.P1292676874263144758

`∩[A159259(n+1), A265394(n+1)]`
-/

namespace A159231.P1292676874263144758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P1292676874263144758

/-! ## A159231.P4151873455575415493

`∩[A159259(n+1), A334026(n+1)]`
-/

namespace A159231.P4151873455575415493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P4151873455575415493

/-! ## A159231.P1486877136518582653

`∩[A117048(n+1), A159259(n+1)]`
-/

namespace A159231.P1486877136518582653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P1486877136518582653

/-! ## A159231.P15115611912565116486

`∩[A117112(n+1), A159259(n+1)]`
-/

namespace A159231.P15115611912565116486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159231.P15115611912565116486

/-!
# A159236: Primes that remain prime when a 0 is inserted between every pair of adjacent digits.

The programs for A159236, there is no canonical definition to state claims against.
-/

/-! ## A159236.P11670406369178596284

`p?[A050674(n+1)]`
-/

namespace A159236.P11670406369178596284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159236.P11670406369178596284

/-! ## A159236.P759896125728482585

`p?[record[A050674(A133310(n))]]`
-/

namespace A159236.P759896125728482585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159236.P759896125728482585

/-! ## A159236.P18114967366776353754

`∩[A004139(n+1), A050674(n+1)]`
-/

namespace A159236.P18114967366776353754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P18114967366776353754

/-! ## A159236.P3483353777660154743

`∩[A045319(n+1), A050674(n+1)]`
-/

namespace A159236.P3483353777660154743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P3483353777660154743

/-! ## A159236.P10437866446613710213

`∩[A045344(n+1), A050674(n+1)]`
-/

namespace A159236.P10437866446613710213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P10437866446613710213

/-! ## A159236.P13428671375264373515

`∩[A000040(n+1), A050674(n+1)]`
-/

namespace A159236.P13428671375264373515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P13428671375264373515

/-! ## A159236.P13805293747592870208

`∩[A006005(n+1), A050674(n+1)]`
-/

namespace A159236.P13805293747592870208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P13805293747592870208

/-! ## A159236.P8525701683901625505

`∩[A008578(n+1), A050674(n+1)]`
-/

namespace A159236.P8525701683901625505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P8525701683901625505

/-! ## A159236.P10559141234842315684

`∩[A033946(n+1), A050674(n+1)]`
-/

namespace A159236.P10559141234842315684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P10559141234842315684

/-! ## A159236.P8614330591198759212

`∩[A046022(n+1), A050674(n+1)]`
-/

namespace A159236.P8614330591198759212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P8614330591198759212

/-! ## A159236.P17821189059033150648

`∩[A050674(n+1), A051948(n+1)]`
-/

namespace A159236.P17821189059033150648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P17821189059033150648

/-! ## A159236.P5338174786977117555

`∩[A050674(n+1), A053813(n+1)]`
-/

namespace A159236.P5338174786977117555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P5338174786977117555

/-! ## A159236.P11428894018073649776

`∩[A050674(n+1), A093515(n+1)]`
-/

namespace A159236.P11428894018073649776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P11428894018073649776

/-! ## A159236.P18067880552550971364

`∩[A326715(n+1), A050674(n+1)]`
-/

namespace A159236.P18067880552550971364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P18067880552550971364

/-! ## A159236.P105512617975813811

`∩[A050674(n+1), A053577(n+1)]`
-/

namespace A159236.P105512617975813811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P105512617975813811

/-! ## A159236.P10209604525811897867

`∩[A050674(n+1), A055977(n+1)]`
-/

namespace A159236.P10209604525811897867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159236.P10209604525811897867

/-! ## A159236.P18310064570762350869

`filter[A050674(n+1), A010051(#)]`
-/

namespace A159236.P18310064570762350869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A159236.P18310064570762350869

/-! ## A159236.P5834677176112207223

`filter[A050674(n+1), A323152(#)]`
-/

namespace A159236.P5834677176112207223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A159236.P5834677176112207223

/-! ## A159236.P6936232395624233361

`filter[A050674(n+1), A323153(#)]`
-/

namespace A159236.P6936232395624233361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A159236.P6936232395624233361

/-! ## A159236.P6748606643168569230

`filter[A050674(n+1), A327861(#)]`
-/

namespace A159236.P6748606643168569230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A159236.P6748606643168569230

/-!
# A159237: Composite numbers A046346 divided by the sum of their prime factors (counted with multiplicity).

The programs for A159237, the canonical program `A159237.P7782317052390177821` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159237 has offset 1).

The definition of A159237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A046346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159237.P7782317052390177821

`A046346(n+1)/A001414(A046346(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A159237

/-- `A046346(n+1)/A001414(A046346(n+1))` -/
def P7782317052390177821.Spec : Prop :=
  ∀ n, P7782317052390177821.a n = (A159237 (n + 1) : ℚ)

end A159237

/-! ## A159237.P7391430467015500896

`A082344(A046346(n+1))`
-/

namespace A159237.P7391430467015500896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A046346 (n + 1)).toNat

end

end A159237.P7391430467015500896

namespace A159237

/-- `A082344(A046346(n+1))` -/
def P7391430467015500896.Spec : Prop :=
  ∀ n, P7391430467015500896.a n = A159237 (n + 1)

end A159237

/-! ## A159237.P14469309286894857642

`A164878(A046346(C(n+1, n)))`
-/

namespace A159237.P14469309286894857642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (A046346 (Nat.choose (n + 1) n)).toNat

end

end A159237.P14469309286894857642

namespace A159237

/-- `A164878(A046346(C(n+1, n)))` -/
def P14469309286894857642.Spec : Prop :=
  ∀ n, P14469309286894857642.a n = A159237 (n + 1)

end A159237

/-! ## A159237.P16916045973165420264

`A164878(A046346(n-log2(1/2)))`
-/

namespace A159237.P16916045973165420264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (A046346 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A159237.P16916045973165420264

namespace A159237

/-- `A164878(A046346(n-log2(1/2)))` -/
def P16916045973165420264.Spec : Prop :=
  ∀ n, P16916045973165420264.a n = A159237 (n + 1)

end A159237

/-! ## A159237.P11228554338374744854

`or(A000007(n), A164878(A046346(n+1)))`
-/

namespace A159237.P11228554338374744854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A164878 (A046346 (n + 1)).toNat)

end

end A159237.P11228554338374744854

namespace A159237

/-- `or(A000007(n), A164878(A046346(n+1)))` -/
def P11228554338374744854.Spec : Prop :=
  ∀ n, P11228554338374744854.a n = A159237 (n + 1)

end A159237

/-! ## A159237.P14687346440159236619

`∑{d}[A164878(A046346(n+1)), A000010(#)]`
-/

namespace A159237.P14687346440159236619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (A046346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A159237.P14687346440159236619

namespace A159237

/-- `∑{d}[A164878(A046346(n+1)), A000010(#)]` -/
def P14687346440159236619.Spec : Prop :=
  ∀ n, P14687346440159236619.a n = A159237 (n + 1)

end A159237

/-! ## A159237.P6125012854619171762

`A164878(A046346(n+1))+A000007(n+1)`
-/

namespace A159237.P6125012854619171762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (A046346 (n + 1)).toNat + A000007 (n + 1)

end

end A159237.P6125012854619171762

namespace A159237

/-- `A164878(A046346(n+1))+A000007(n+1)` -/
def P6125012854619171762.Spec : Prop :=
  ∀ n, P6125012854619171762.a n = A159237 (n + 1)

end A159237

/-! ## A159237.P18014836025332357181

`A164878(A046346(n+1))%A000040(n+1)`
-/

namespace A159237.P18014836025332357181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164878 (A046346 (n + 1)).toNat) (A000040 (n + 1))

end

end A159237.P18014836025332357181

namespace A159237

/-- `A164878(A046346(n+1))%A000040(n+1)` -/
def P18014836025332357181.Spec : Prop :=
  ∀ n, P18014836025332357181.a n = A159237 (n + 1)

end A159237

/-! ## A159237.P17924517823886726663

`A164878(A046346(n+1)%A058909(n+1))`
-/

namespace A159237.P17924517823886726663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (Int.tmod (A046346 (n + 1)) (A058909 (n + 1))).toNat

end

end A159237.P17924517823886726663

namespace A159237

/-- `A164878(A046346(n+1)%A058909(n+1))` -/
def P17924517823886726663.Spec : Prop :=
  ∀ n, P17924517823886726663.a n = A159237 (n + 1)

end A159237

/-!
# A159243: Number of elements in the continued fraction for Sum_{k=0..n} 1/(1+2^(2^k)).

The programs for A159243, there is no canonical definition to state claims against.
-/

/-! ## A159243.P8540436727060072189

`A107482(n+1)+A087005(A050050(n+1))`
-/

namespace A159243.P8540436727060072189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107482 (n + 1) + A087005 (A050050 (n + 1)).toNat

end

end A159243.P8540436727060072189

/-! ## A159243.P10870288894335455898

`A377021(A107482(n+1)+A063756(n+1))`
-/

namespace A159243.P10870288894335455898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377021 (A107482 (n + 1) + A063756 (n + 1)).toNat

end

end A159243.P10870288894335455898

/-! ## A159243.P8281849085368516600

`A107482(n+1)+A087005((A050054(n+1)+A050046(n+1))/2)`
-/

namespace A159243.P8281849085368516600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107482 (n + 1) + A087005 (SequenceMachineLib.roundAway ((A050054 (n + 1) + A050046 (n + 1) : ℚ) / 2)).toNat

end

end A159243.P8281849085368516600

/-! ## A159243.P11786699349474484128

`A107482(n+1)+A087005((A050062(n+1)+A050038(n+1))/2)`
-/

namespace A159243.P11786699349474484128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107482 (n + 1) + A087005 (SequenceMachineLib.roundAway ((A050062 (n + 1) + A050038 (n + 1) : ℚ) / 2)).toNat

end

end A159243.P11786699349474484128

/-!
# A159247: Numerator of Hermite(n, 1/10).

The programs for A159247, the canonical program `A159247.P5314539940452128164` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159247 has offset 0).

The definition of A159247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159247.P5314539940452128164

`50*(1-n)*a(n-2)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159247

/-- `50*(1-n)*a(n-2)+a(n-1)` -/
def P5314539940452128164.Spec : Prop :=
  ∀ n, P5314539940452128164.a n = A159247 n

theorem P5314539940452128164.correct : P5314539940452128164.Spec := by
  intro n
  simp only [A159247]

end A159247

/-!
# A159251: Composite numbers whose digit sum is a single-digit prime.

The programs for A159251, there is no canonical definition to state claims against.
-/

/-! ## A159251.P3683855674806964169

`∩[A141642(n+1), A304366(n+1)]`
-/

namespace A159251.P3683855674806964169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159251.P3683855674806964169

/-! ## A159251.P8655681782044961470

`∩[A141642(n+1), A370842(n+1)]`
-/

namespace A159251.P8655681782044961470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159251.P8655681782044961470

/-! ## A159251.P15235530249052392958

`record[A141642(n+1)%A154095(n+5)]`
-/

namespace A159251.P15235530249052392958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141642 (n + 1)) (A154095 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159251.P15235530249052392958

/-!
# A159253: a(n) is the smallest positive integer not yet in the sequence such that n * a(n) is a cube.

The programs for A159253, the canonical program `A159253.P6361849019843085425` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159253 has offset 1).

The definition of A159253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159253.P17842718952602540001

`A008834(n+1)*A048798(n+1)`
-/

namespace A159253.P17842718952602540001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1) * A048798 (n + 1)

end

end A159253.P17842718952602540001

namespace A159253

/-- `A008834(n+1)*A048798(n+1)` -/
def P17842718952602540001.Spec : Prop :=
  ∀ n, P17842718952602540001.a n = A159253 (n + 1)

end A159253

/-! ## A159253.P11468703193275957795

`A053149(n+1)/A050985(n+1)`
-/

namespace A159253.P11468703193275957795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A050985 (n + 1) : ℚ)

end

end A159253.P11468703193275957795

namespace A159253

/-- `A053149(n+1)/A050985(n+1)` -/
def P11468703193275957795.Spec : Prop :=
  ∀ n, P11468703193275957795.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P15469338475430187134

`A000578(A053150(n+1))*A048798(n+1)`
-/

namespace A159253.P15469338475430187134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053150 (n + 1)).toNat * A048798 (n + 1)

end

end A159253.P15469338475430187134

namespace A159253

/-- `A000578(A053150(n+1))*A048798(n+1)` -/
def P15469338475430187134.Spec : Prop :=
  ∀ n, P15469338475430187134.a n = A159253 (n + 1)

end A159253

/-! ## A159253.P6361849019843085425

`A048798(n+1)*A053149(A062378(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A159253

/-- `A048798(n+1)*A053149(A062378(n+1))` -/
def P6361849019843085425.Spec : Prop :=
  ∀ n, P6361849019843085425.a n = A159253 (n + 1)

theorem P6361849019843085425.correct : P6361849019843085425.Spec := by
  intro n
  simp only [A159253, Nat.add_sub_cancel]

end A159253

/-! ## A159253.P14105556457270206526

`A000578(A019555(n+1))/A050985(n+1)`
-/

namespace A159253.P14105556457270206526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (A019555 (n + 1)).toNat : ℚ) / (A050985 (n + 1) : ℚ)

end

end A159253.P14105556457270206526

namespace A159253

/-- `A000578(A019555(n+1))/A050985(n+1)` -/
def P14105556457270206526.Spec : Prop :=
  ∀ n, P14105556457270206526.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P12977351954639467844

`A008834(n+1)/A050985(n+1)*A056551(n+1)`
-/

namespace A159253.P12977351954639467844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008834 (n + 1) : ℚ) / (A050985 (n + 1) : ℚ) * (A056551 (n + 1) : ℚ)

end

end A159253.P12977351954639467844

namespace A159253

/-- `A008834(n+1)/A050985(n+1)*A056551(n+1)` -/
def P12977351954639467844.Spec : Prop :=
  ∀ n, P12977351954639467844.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P10155680717210449290

`A048798(n+1)*A053149(n+1)/A056551(n+1)`
-/

namespace A159253.P10155680717210449290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048798 (n + 1) * A053149 (n + 1) : ℚ) / (A056551 (n + 1) : ℚ)

end

end A159253.P10155680717210449290

namespace A159253

/-- `A048798(n+1)*A053149(n+1)/A056551(n+1)` -/
def P10155680717210449290.Spec : Prop :=
  ∀ n, P10155680717210449290.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P10167201734977201811

`A053149(n+1)/A053165(A053150(n+1)*A053165(n+1))`
-/

namespace A159253.P10167201734977201811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A053165 (A053150 (n + 1) * A053165 (n + 1)).toNat : ℚ)

end

end A159253.P10167201734977201811

namespace A159253

/-- `A053149(n+1)/A053165(A053150(n+1)*A053165(n+1))` -/
def P10167201734977201811.Spec : Prop :=
  ∀ n, P10167201734977201811.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P11986029200867764102

`A053149(A102631(n+1))/(n+1)`
-/

namespace A159253.P11986029200867764102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (A102631 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A159253.P11986029200867764102

namespace A159253

/-- `A053149(A102631(n+1))/(n+1)` -/
def P11986029200867764102.Spec : Prop :=
  ∀ n, P11986029200867764102.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P4343806221708889039

`A008834(n+1)*A050985((n+1)²)`
-/

namespace A159253.P4343806221708889039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1) * A050985 ((n + 1) ^ 2)

end

end A159253.P4343806221708889039

namespace A159253

/-- `A008834(n+1)*A050985((n+1)²)` -/
def P4343806221708889039.Spec : Prop :=
  ∀ n, P4343806221708889039.a n = A159253 (n + 1)

end A159253

/-! ## A159253.P6610744417201808208

`A053149(n+1)/A048798((n+1)²)`
-/

namespace A159253.P6610744417201808208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A048798 ((n + 1) ^ 2) : ℚ)

end

end A159253.P6610744417201808208

namespace A159253

/-- `A053149(n+1)/A048798((n+1)²)` -/
def P6610744417201808208.Spec : Prop :=
  ∀ n, P6610744417201808208.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P6857173984469419303

`(n+1)*A048798(n+1)/A048798((n+1)²)`
-/

namespace A159253.P6857173984469419303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A048798 (n + 1) : ℚ) / (A048798 ((n + 1) ^ 2) : ℚ)

end

end A159253.P6857173984469419303

namespace A159253

/-- `(n+1)*A048798(n+1)/A048798((n+1)²)` -/
def P6857173984469419303.Spec : Prop :=
  ∀ n, P6857173984469419303.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P8394757781791012106

`A000578(A053150(n+1))*A050985((n+1)²)`
-/

namespace A159253.P8394757781791012106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053150 (n + 1)).toNat * A050985 ((n + 1) ^ 2)

end

end A159253.P8394757781791012106

namespace A159253

/-- `A000578(A053150(n+1))*A050985((n+1)²)` -/
def P8394757781791012106.Spec : Prop :=
  ∀ n, P8394757781791012106.a n = A159253 (n + 1)

end A159253

/-! ## A159253.P10220856503326139491

`A000578(A019555(n+1))/A048798((n+1)²)`
-/

namespace A159253.P10220856503326139491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (A019555 (n + 1)).toNat : ℚ) / (A048798 ((n + 1) ^ 2) : ℚ)

end

end A159253.P10220856503326139491

namespace A159253

/-- `A000578(A019555(n+1))/A048798((n+1)²)` -/
def P10220856503326139491.Spec : Prop :=
  ∀ n, P10220856503326139491.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P2478739967105965103

`1/A048798(A048798(n+1))*A053149(n+1)`
-/

namespace A159253.P2478739967105965103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A048798 (A048798 (n + 1)).toNat : ℚ) * (A053149 (n + 1) : ℚ)

end

end A159253.P2478739967105965103

namespace A159253

/-- `1/A048798(A048798(n+1))*A053149(n+1)` -/
def P2478739967105965103.Spec : Prop :=
  ∀ n, P2478739967105965103.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P15687959532289555099

`A254767(n+1)/A008834(A254767(n+1))*A008834(n+1)`
-/

namespace A159253.P15687959532289555099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254767 (n + 1) : ℚ) / (A008834 (A254767 (n + 1)).toNat : ℚ) * (A008834 (n + 1) : ℚ)

end

end A159253.P15687959532289555099

namespace A159253

/-- `A254767(n+1)/A008834(A254767(n+1))*A008834(n+1)` -/
def P15687959532289555099.Spec : Prop :=
  ∀ n, P15687959532289555099.a n = (A159253 (n + 1) : ℚ)

end A159253

/-! ## A159253.P2541951278646448476

`A053149(n+1)*A254767(n+1)/A053149(A254767(n+1))`
-/

namespace A159253.P2541951278646448476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) * A254767 (n + 1) : ℚ) / (A053149 (A254767 (n + 1)).toNat : ℚ)

end

end A159253.P2541951278646448476

namespace A159253

/-- `A053149(n+1)*A254767(n+1)/A053149(A254767(n+1))` -/
def P2541951278646448476.Spec : Prop :=
  ∀ n, P2541951278646448476.a n = (A159253 (n + 1) : ℚ)

end A159253

/-!
# A159254: Numbers whose square ends with 49.

The programs for A159254, the canonical program `A159254.P17409877765053396763` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159254 has offset 1).

The definition of A159254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159254.P17409877765053396763

`50+a(n-2)` with `a(0)=7, a(1)=43`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159254

/-- `50+a(n-2)` -/
def P17409877765053396763.Spec : Prop :=
  ∀ n, (P17409877765053396763.a n : ℤ) = A159254 (n + 1)

theorem P17409877765053396763.correct : P17409877765053396763.Spec := by
  intro n
  simp only [A159254, Nat.add_sub_cancel]

end A159254

/-! ## A159254.P13323659541492262525

`(11*(-1)^(n+1)+50*(n+1)-25)/2`
-/

namespace A159254.P13323659541492262525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * (-1) ^ (n + 1) + (50 * (n + 1) : ℤ) - 25 : ℚ) / 2

end

end A159254.P13323659541492262525

namespace A159254

/-- `(11*(-1)^(n+1)+50*(n+1)-25)/2` -/
def P13323659541492262525.Spec : Prop :=
  ∀ n, P13323659541492262525.a n = (A159254 (n + 1) : ℚ)

theorem P13323659541492262525.correct : P13323659541492262525.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159254, Nat.add_sub_cancel, A159254.P13323659541492262525.a, A159254.P17409877765053396763.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A159254, Nat.add_sub_cancel, A159254.P13323659541492262525.a, A159254.P17409877765053396763.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159254

/-! ## A159254.P2378944723693906679

`∑[abs(a(n-2))]` with `a(0)=7, a(1)=36, a(2)=14`
-/

namespace A159254.P2378944723693906679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 36, 14] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159254.P2378944723693906679

namespace A159254

/-- `∑[abs(a(n-2))]` -/
def P2378944723693906679.Spec : Prop :=
  ∀ n, (P2378944723693906679.a n : ℤ) = A159254 (n + 1)

end A159254

/-! ## A159254.P4156379845987512741

`∑[floor(a(n-2))]` with `a(0)=7, a(1)=36, a(2)=14`

`floor` is left out, it is the identity on integers.
-/

namespace A159254.P4156379845987512741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 36, 14] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159254.P4156379845987512741

namespace A159254

/-- `∑[floor(a(n-2))]` -/
def P4156379845987512741.Spec : Prop :=
  ∀ n, (P4156379845987512741.a n : ℤ) = A159254 (n + 1)

end A159254

/-! ## A159254.P3828061634734051714

`∑[ceil(a(n-2))]` with `a(0)=7, a(1)=36, a(2)=14`

`ceil` is left out, it is the identity on integers.
-/

namespace A159254.P3828061634734051714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 36, 14] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159254.P3828061634734051714

namespace A159254

/-- `∑[ceil(a(n-2))]` -/
def P3828061634734051714.Spec : Prop :=
  ∀ n, (P3828061634734051714.a n : ℤ) = A159254 (n + 1)

end A159254

/-! ## A159254.P15849413832383479707

`∑[round(a(n-2))]` with `a(0)=7, a(1)=36, a(2)=14`

`round` is left out, it is the identity on integers.
-/

namespace A159254.P15849413832383479707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 36, 14] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159254.P15849413832383479707

namespace A159254

/-- `∑[round(a(n-2))]` -/
def P15849413832383479707.Spec : Prop :=
  ∀ n, (P15849413832383479707.a n : ℤ) = A159254 (n + 1)

end A159254

/-! ## A159254.P13045369837816665582

`∑[50-a(n-1)]` with `a(0)=7, a(1)=36`
-/

namespace A159254.P13045369837816665582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 36] fun n f1 =>
  50 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159254.P13045369837816665582

namespace A159254

/-- `∑[50-a(n-1)]` -/
def P13045369837816665582.Spec : Prop :=
  ∀ n, P13045369837816665582.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P5084220973522993428

`A156674(n+1)+A152833(n)`
-/

namespace A159254.P5084220973522993428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + A152833 n

end

end A159254.P5084220973522993428

namespace A159254

/-- `A156674(n+1)+A152833(n)` -/
def P5084220973522993428.Spec : Prop :=
  ∀ n, P5084220973522993428.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P8263551230409459701

`A175886(n+1)+A155097(n+1)`
-/

namespace A159254.P8263551230409459701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (n + 1) + A155097 (n + 1)

end

end A159254.P8263551230409459701

namespace A159254

/-- `A175886(n+1)+A155097(n+1)` -/
def P8263551230409459701.Spec : Prop :=
  ∀ n, P8263551230409459701.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P17647554589219767416

`A171141(n+1)+A168416(n+1)`
-/

namespace A159254.P17647554589219767416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + A168416 (n + 1)

end

end A159254.P17647554589219767416

namespace A159254

/-- `A171141(n+1)+A168416(n+1)` -/
def P17647554589219767416.Spec : Prop :=
  ∀ n, P17647554589219767416.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P15498798460454977427

`A322489(n+1)+A084967(n+1)`
-/

namespace A159254.P15498798460454977427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322489 (n + 1) + A084967 (n + 1)

end

end A159254.P15498798460454977427

namespace A159254

/-- `A322489(n+1)+A084967(n+1)` -/
def P15498798460454977427.Spec : Prop :=
  ∀ n, P15498798460454977427.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P2431646840941809530

`A176010(n+1)-A164135(n+1)`
-/

namespace A159254.P2431646840941809530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176010 (n + 1) - A164135 (n + 1)

end

end A159254.P2431646840941809530

namespace A159254

/-- `A176010(n+1)-A164135(n+1)` -/
def P2431646840941809530.Spec : Prop :=
  ∀ n, P2431646840941809530.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P5983404608138658245

`A241406(n+1)-A281445(n+1)`
-/

namespace A159254.P5983404608138658245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (n + 1) - A281445 (n + 1)

end

end A159254.P5983404608138658245

namespace A159254

/-- `A241406(n+1)-A281445(n+1)` -/
def P5983404608138658245.Spec : Prop :=
  ∀ n, P5983404608138658245.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P8283716254553544685

`A063226(n+1)+2*A322489(n+1)`
-/

namespace A159254.P8283716254553544685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) + 2 * A322489 (n + 1)

end

end A159254.P8283716254553544685

namespace A159254

/-- `A063226(n+1)+2*A322489(n+1)` -/
def P8283716254553544685.Spec : Prop :=
  ∀ n, P8283716254553544685.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P13646053376544482408

`A156619(A042948(n+1))`
-/

namespace A159254.P13646053376544482408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (A042948 (n + 1)).toNat

end

end A159254.P13646053376544482408

namespace A159254

/-- `A156619(A042948(n+1))` -/
def P13646053376544482408.Spec : Prop :=
  ∀ n, P13646053376544482408.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P3444841882424500542

`A376506(A042964(n+1))`
-/

namespace A159254.P3444841882424500542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (A042964 (n + 1)).toNat

end

end A159254.P3444841882424500542

namespace A159254

/-- `A376506(A042964(n+1))` -/
def P3444841882424500542.Spec : Prop :=
  ∀ n, P3444841882424500542.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P13597930902431335433

`A376506(A053438(n+1))`
-/

namespace A159254.P13597930902431335433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (A053438 (n + 1)).toNat

end

end A159254.P13597930902431335433

namespace A159254

/-- `A376506(A053438(n+1))` -/
def P13597930902431335433.Spec : Prop :=
  ∀ n, P13597930902431335433.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P4215587268416787098

`A156619(A007310(n+1)-n)`
-/

namespace A159254.P4215587268416787098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (A007310 (n + 1) - (n : ℤ)).toNat

end

end A159254.P4215587268416787098

namespace A159254

/-- `A156619(A007310(n+1)-n)` -/
def P4215587268416787098.Spec : Prop :=
  ∀ n, P4215587268416787098.a n = A159254 (n + 1)

end A159254

/-! ## A159254.P3837348663881952527

`∩[A156619(n+1), A376506(n+1)]`
-/

namespace A159254.P3837348663881952527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159254.P3837348663881952527

namespace A159254

/-- `∩[A156619(n+1), A376506(n+1)]` -/
def P3837348663881952527.Spec : Prop :=
  ∀ n, (P3837348663881952527.a n : ℤ) = A159254 (n + 1)

end A159254

/-! ## A159254.P15781873624391504666

`filter[A156619(n+1), A379952(#)]`
-/

namespace A159254.P15781873624391504666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A159254.P15781873624391504666

namespace A159254

/-- `filter[A156619(n+1), A379952(#)]` -/
def P15781873624391504666.Spec : Prop :=
  ∀ n, P15781873624391504666.a n = A159254 (n + 1)

end A159254

/-!
# A159255: Irregular triangle read by rows: row n gives expansion of (1-x+x^2)*(1+x)^n.

The programs for A159255, there is no canonical definition to state claims against.
-/

/-! ## A159255.P3711102988751209495

`A028326(n+3)-A028313(n+3)`
-/

namespace A159255.P3711102988751209495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (n + 3) - A028313 (n + 3)

end

end A159255.P3711102988751209495

/-! ## A159255.P10031529338573344768

`A144225(n+3)-A113313(n+4)`
-/

namespace A159255.P10031529338573344768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (n + 3) - A113313 (n + 4)

end

end A159255.P10031529338573344768

/-! ## A159255.P12663800195000642534

`or(A010815(∑[72*n]+5), A083093(n+3))`
-/

namespace A159255.P12663800195000642534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 (∑ j ∈ Finset.range (n + 1), f1 j + 5)) (A083093 (n + 3))

end

end A159255.P12663800195000642534

/-! ## A159255.P5011086791440244922

`or(A008683(A000079(n)), A083093(n+3))`
-/

namespace A159255.P5011086791440244922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A000079 n).toNat) (A083093 (n + 3))

end

end A159255.P5011086791440244922

/-!
# A159256: a(0)=131; for n > 0, a(n) = a(n-1) + floor(sqrt(a(n-1))).

The programs for A159256, the canonical program `A159256.P3597142263813813201` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159256 has offset 0).

The definition of A159256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159256.P3597142263813813201`, by `A159256.P3597142263813813201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159256.P3597142263813813201

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=131`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159256

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P3597142263813813201.Spec : Prop :=
  ∀ n, (P3597142263813813201.a n : ℤ) = A159256 n

theorem P3597142263813813201.correct : P3597142263813813201.Spec := by
  intro n
  simp only [A159256]

end A159256

/-! ## A159256.P2518024961993417550

`eq[21, A322832(n)]`
-/

namespace A159256.P2518024961993417550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159256.P2518024961993417550

namespace A159256

/-- `eq[21, A322832(n)]` -/
def P2518024961993417550.Spec : Prop :=
  ∀ n, (P2518024961993417550.a n : ℤ) = A159256 n

end A159256

/-! ## A159256.P11490950743754530797

`eq[23, A336750(3*n+1)]`
-/

namespace A159256.P11490950743754530797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336750 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159256.P11490950743754530797

namespace A159256

/-- `eq[23, A336750(3*n+1)]` -/
def P11490950743754530797.Spec : Prop :=
  ∀ n, (P11490950743754530797.a n : ℤ) = A159256 n

end A159256

/-! ## A159256.P378659007825465039

`eq[A040110(n), A138099(n+1)]`
-/

namespace A159256.P378659007825465039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159256.P378659007825465039

namespace A159256

/-- `eq[A040110(n), A138099(n+1)]` -/
def P378659007825465039.Spec : Prop :=
  ∀ n, (P378659007825465039.a n : ℤ) = A159256 n

end A159256

/-! ## A159256.P11602674191361690183

`eq[A040090(n)+2, A138099(n+1)]`
-/

namespace A159256.P11602674191361690183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040090 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159256.P11602674191361690183

namespace A159256

/-- `eq[A040090(n)+2, A138099(n+1)]` -/
def P11602674191361690183.Spec : Prop :=
  ∀ n, (P11602674191361690183.a n : ℤ) = A159256 n

end A159256

/-!
# A159257: Rank deficiency of the Lights Out problem of size n.

The programs for A159257, there is no canonical definition to state claims against.
-/

/-! ## A159257.P2536478805349650973

`log2(A075462(n+1))`
-/

namespace A159257.P2536478805349650973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A075462 (n + 1) : ℝ)

end

end A159257.P2536478805349650973

/-! ## A159257.P8976887935859983593

`A005843(val(A075462(n+1), 4))`
-/

namespace A159257.P8976887935859983593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.valuation (A075462 (n + 1)).toNat 4)

end

end A159257.P8976887935859983593

/-! ## A159257.P7137729999337109087

`val(A075462(n+1), 2)%A076436(n+1)`
-/

namespace A159257.P7137729999337109087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A075462 (n + 1)).toNat 2 : ℤ) (A076436 (n + 1))

end

end A159257.P7137729999337109087

/-! ## A159257.P2454658015488290743

`val(A075462(n+1), 2%A093614(n+1))`
-/

namespace A159257.P2454658015488290743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075462 (n + 1)).toNat (Int.tmod 2 (A093614 (n + 1))).toNat

end

end A159257.P2454658015488290743

/-! ## A159257.P3549985059607202513

`val(A075462(n+1), A020639(A113709(n+2)))`
-/

namespace A159257.P3549985059607202513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075462 (n + 1)).toNat (A020639 (A113709 (n + 2)).toNat).toNat

end

end A159257.P3549985059607202513

/-! ## A159257.P5010518423552535699

`val(A075462(n+1)*A158361(n+1), 2)`
-/

namespace A159257.P5010518423552535699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075462 (n + 1) * A158361 (n + 1)).toNat 2

end

end A159257.P5010518423552535699

/-! ## A159257.P1316194545605821278

`2*A001222(sqrt(A075462(n+1)))`
-/

namespace A159257.P1316194545605821278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (SequenceMachineLib.roundAway (Real.sqrt (A075462 (n + 1) : ℝ))).toNat

end

end A159257.P1316194545605821278

/-! ## A159257.P9576351187983165151

`(n+1)²-A220195(n+1)`
-/

namespace A159257.P9576351187983165151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A220195 (n + 1)

end

end A159257.P9576351187983165151

/-! ## A159257.P4500397658382962155

`A068527(A220195(n+1))`
-/

namespace A159257.P4500397658382962155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A220195 (n + 1)).toNat

end

end A159257.P4500397658382962155

/-!
# A159258: a(0)=155; for n > 0, a(n) = a(n-1) + floor(sqrt(a(n-1))).

The programs for A159258, the canonical program `A159258.P10413383407320609330` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159258 has offset 0).

The definition of A159258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159258.P10413383407320609330`, by `A159258.P10413383407320609330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159258.P10413383407320609330

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=155`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159258

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P10413383407320609330.Spec : Prop :=
  ∀ n, (P10413383407320609330.a n : ℤ) = A159258 n

theorem P10413383407320609330.correct : P10413383407320609330.Spec := by
  intro n
  simp only [A159258]

end A159258

/-! ## A159258.P7776700519948262499

`eq[29, A030101(A322832(n))]`
-/

namespace A159258.P7776700519948262499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A322832 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159258.P7776700519948262499

namespace A159258

/-- `eq[29, A030101(A322832(n))]` -/
def P7776700519948262499.Spec : Prop :=
  ∀ n, (P7776700519948262499.a n : ℤ) = A159258 n

end A159258

/-! ## A159258.P12465703360029550784

`eq[23, A322832(n)]`
-/

namespace A159258.P12465703360029550784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159258.P12465703360029550784

namespace A159258

/-- `eq[23, A322832(n)]` -/
def P12465703360029550784.Spec : Prop :=
  ∀ n, (P12465703360029550784.a n : ℤ) = A159258 n

end A159258

/-! ## A159258.P4307884016077065821

`eq[24, A002024(A091995(n+1))]`
-/

namespace A159258.P4307884016077065821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A091995 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159258.P4307884016077065821

namespace A159258

/-- `eq[24, A002024(A091995(n+1))]` -/
def P4307884016077065821.Spec : Prop :=
  ∀ n, (P4307884016077065821.a n : ℤ) = A159258 n

end A159258

/-! ## A159258.P16665510558747880648

`eq[25, A131818(A274428(n+1))]`
-/

namespace A159258.P16665510558747880648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A274428 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159258.P16665510558747880648

namespace A159258

/-- `eq[25, A131818(A274428(n+1))]` -/
def P16665510558747880648.Spec : Prop :=
  ∀ n, (P16665510558747880648.a n : ℤ) = A159258 n

end A159258

/-!
# A159260: Numbers k such that 1 + Sum_{i=1..k} 2^prime(i) is prime.

The programs for A159260, there is no canonical definition to state claims against.
-/

/-! ## A159260.P16598107748152368609

`A000720(A159262(n+1))`
-/

namespace A159260.P16598107748152368609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A159262 (n + 1)).toNat

end

end A159260.P16598107748152368609

/-! ## A159260.P1491649133261228891

`A061395(p?[A159262(n+1)])`
-/

namespace A159260.P1491649133261228891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A159260.P1491649133261228891

/-! ## A159260.P12016310231509475505

`A066328(p?[A159262(n+1)])`
-/

namespace A159260.P12016310231509475505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A159260.P12016310231509475505

/-! ## A159260.P9151735598957668484

`A061395(2*A159262(n+1))`
-/

namespace A159260.P9151735598957668484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A159262 (n + 1)).toNat

end

end A159260.P9151735598957668484

/-! ## A159260.P308356513405545588

`A061395(lcm(2, A159262(n+1)))`
-/

namespace A159260.P308356513405545588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A159262 (n + 1)))

end

end A159260.P308356513405545588

/-!
# A159262: Largest prime appearing as an exponent in the sum in A159261.

The programs for A159262, there is no canonical definition to state claims against.
-/

/-! ## A159262.P2466232915308032380

`A000040(A159260(n+1))`
-/

namespace A159262.P2466232915308032380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A159260 (n + 1)).toNat

end

end A159262.P2466232915308032380

/-! ## A159262.P5647718585732469321

`A008578(A159260(n+1)+1)`
-/

namespace A159262.P5647718585732469321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A159260 (n + 1) + 1).toNat

end

end A159262.P5647718585732469321

/-! ## A159262.P11878614289115760239

`A182986(A159260(n+1)+1)`
-/

namespace A159262.P11878614289115760239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A159260 (n + 1) + 1).toNat

end

end A159262.P11878614289115760239

/-! ## A159262.P7810671524223757115

`A158611(A159260(n+1)+2)`
-/

namespace A159262.P7810671524223757115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A159260 (n + 1) + 2).toNat

end

end A159262.P7810671524223757115

/-! ## A159262.P1501669644581411109

`A073846(2*A159260(n+1))`
-/

namespace A159262.P1501669644581411109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A159260 (n + 1)).toNat

end

end A159262.P1501669644581411109

/-!
# A159263: a(0)=181; for n > 0, a(n) = a(n-1) + floor(sqrt a(n-1)).

The programs for A159263, the canonical program `A159263.P9860555388854875863` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159263 has offset 0).

The definition of A159263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159263.P9860555388854875863

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=181`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159263

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P9860555388854875863.Spec : Prop :=
  ∀ n, (P9860555388854875863.a n : ℤ) = A159263 n

theorem P9860555388854875863.correct : P9860555388854875863.Spec := by
  intro n
  simp only [A159263]

end A159263

/-! ## A159263.P16641608622771839705

`eq[25, A322832(n)]`
-/

namespace A159263.P16641608622771839705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159263.P16641608622771839705

namespace A159263

/-- `eq[25, A322832(n)]` -/
def P16641608622771839705.Spec : Prop :=
  ∀ n, (P16641608622771839705.a n : ℤ) = A159263 n

end A159263

/-! ## A159263.P12440735167734115830

`eq[27, A131818(A274428(n+1))]`
-/

namespace A159263.P12440735167734115830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A274428 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159263.P12440735167734115830

namespace A159263

/-- `eq[27, A131818(A274428(n+1))]` -/
def P12440735167734115830.Spec : Prop :=
  ∀ n, (P12440735167734115830.a n : ℤ) = A159263 n

end A159263

/-!
# A159269: Least positive integer such that 2^m+3^n or 2^n+3^m is prime.

The programs for A159269, there is no canonical definition to state claims against.
-/

/-! ## A159269.P6025749003777285532

`A052126(A086549(n+1)^A037800(n))`
-/

namespace A159269.P6025749003777285532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((A086549 (n + 1) : ℚ) ^ (A037800 n : ℤ))).toNat

end

end A159269.P6025749003777285532

/-! ## A159269.P14043982671685165863

`A295660(A045825(n+1))^val(n+1, 2)`
-/

namespace A159269.P14043982671685165863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A045825 (n + 1)).toNat ^ SequenceMachineLib.valuation (n + 1) 2

end

end A159269.P14043982671685165863

/-! ## A159269.P9416153693478075454

`A330957(A166597(n)*A348979(n+1))`
-/

namespace A159269.P9416153693478075454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330957 (A166597 n * A348979 (n + 1)).toNat

end

end A159269.P9416153693478075454

/-! ## A159269.P18068942617274489977

`gcd(A000120(A124429(n)), A007931(n+1))`
-/

namespace A159269.P18068942617274489977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A124429 n).toNat) (A007931 (n + 1))

end

end A159269.P18068942617274489977

/-! ## A159269.P18228142564018001122

`A295660(A045825(n+1))^A007814(n+1)`
-/

namespace A159269.P18228142564018001122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295660 (A045825 (n + 1)).toNat : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A159269.P18228142564018001122

/-!
# A159274: a(0)=209; for n > 0, a(n) = a(n-1) + floor(sqrt(a(n-1))).

The programs for A159274, the canonical program `A159274.P6866997508572772188` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159274 has offset 0).

The definition of A159274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159274.P6866997508572772188`, by `A159274.P6866997508572772188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159274.P6866997508572772188

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=209`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159274

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P6866997508572772188.Spec : Prop :=
  ∀ n, (P6866997508572772188.a n : ℤ) = A159274 n

theorem P6866997508572772188.correct : P6866997508572772188.Spec := by
  intro n
  simp only [A159274]

end A159274

/-! ## A159274.P7311860588164889398

`eq[3, A106619(A322832(n))]`
-/

namespace A159274.P7311860588164889398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A322832 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159274.P7311860588164889398

namespace A159274

/-- `eq[3, A106619(A322832(n))]` -/
def P7311860588164889398.Spec : Prop :=
  ∀ n, (P7311860588164889398.a n : ℤ) = A159274 n

end A159274

/-! ## A159274.P1291233530783475939

`eq[27, A322832(n)]`
-/

namespace A159274.P1291233530783475939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159274.P1291233530783475939

namespace A159274

/-- `eq[27, A322832(n)]` -/
def P1291233530783475939.Spec : Prop :=
  ∀ n, (P1291233530783475939.a n : ℤ) = A159274 n

end A159274

/-! ## A159274.P6301156389068428480

`A011715(A001222(∏{d}[n+1, #]))+A159263(n+2)+2`
-/

namespace A159274.P6301156389068428480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011715 (A001222 (∏ d ∈ Nat.divisors (f1 n), d)).toNat + (A159263 (n + 2) + 2)

end

end A159274.P6301156389068428480

namespace A159274

/-- `A011715(A001222(∏{d}[n+1, #]))+A159263(n+2)+2` -/
def P6301156389068428480.Spec : Prop :=
  ∀ n, P6301156389068428480.a n = A159274 n

end A159274

/-! ## A159274.P15956999584437847223

`(A159263(n+2)+2)%A000203(A139779(n+1))`
-/

namespace A159274.P15956999584437847223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159263 (n + 2) + 2) (A000203 (A139779 (n + 1)).toNat)

end

end A159274.P15956999584437847223

namespace A159274

/-- `(A159263(n+2)+2)%A000203(A139779(n+1))` -/
def P15956999584437847223.Spec : Prop :=
  ∀ n, P15956999584437847223.a n = A159274 n

end A159274

/-!
# A159276: Decimal expansion of Integral_{t=0..1} (1/t - Gamma(t)) dt.

The programs for A159276, there is no canonical definition to state claims against.
-/

/-! ## A159276.P14800800728001244360

`9-A335985(n)`
-/

namespace A159276.P14800800728001244360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A335985 n

end

end A159276.P14800800728001244360

/-!
# A159277: Ways to write the identity as a product of n 3-cycles in symmetric group S_4.

The programs for A159277, the canonical program `A159277.P4275423233446813716` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159277 has offset 0).

The definition of A159277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159277.P4975313891923491958

`8^(n-1)-a(n-1)-3*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A159277.P4975313891923491958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - 3 * a (n - 1)

end

end A159277.P4975313891923491958

namespace A159277

/-- `8^(n-1)-a(n-1)-3*a(n-1)` -/
def P4975313891923491958.Spec : Prop :=
  ∀ n, P4975313891923491958.a n = (A159277 n : ℚ)

end A159277

/-! ## A159277.P4275423233446813716

`A011782(n)*A054881(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159277

/-- `A011782(n)*A054881(n)` -/
def P4275423233446813716.Spec : Prop :=
  ∀ n, P4275423233446813716.a n = A159277 n

theorem P4275423233446813716.correct : P4275423233446813716.Spec := by
  intro n
  simp only [A159277]

end A159277

/-! ## A159277.P3510433387815131239

`A083086(n)*A141531(n)`
-/

namespace A159277.P3510433387815131239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083086 n * A141531 n

end

end A159277.P3510433387815131239

namespace A159277

/-- `A083086(n)*A141531(n)` -/
def P3510433387815131239.Spec : Prop :=
  ∀ n, P3510433387815131239.a n = A159277 n

end A159277

/-! ## A159277.P2719181936682890868

`lcm(A009117(n), A054881(n))`
-/

namespace A159277.P2719181936682890868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009117 n) (A054881 n)

end

end A159277.P2719181936682890868

namespace A159277

/-- `lcm(A009117(n), A054881(n))` -/
def P2719181936682890868.Spec : Prop :=
  ∀ n, (P2719181936682890868.a n : ℤ) = A159277 n

end A159277

/-! ## A159277.P17142290869692626197

`lcm(A078008(n), A081294(n))`
-/

namespace A159277.P17142290869692626197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078008 n) (A081294 n)

end

end A159277.P17142290869692626197

namespace A159277

/-- `lcm(A078008(n), A081294(n))` -/
def P17142290869692626197.Spec : Prop :=
  ∀ n, (P17142290869692626197.a n : ℤ) = A159277 n

end A159277

/-! ## A159277.P1367135692414237290

`A054881(n)*A090129(n+1)`
-/

namespace A159277.P1367135692414237290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054881 n * A090129 (n + 1)

end

end A159277.P1367135692414237290

namespace A159277

/-- `A054881(n)*A090129(n+1)` -/
def P1367135692414237290.Spec : Prop :=
  ∀ n, P1367135692414237290.a n = A159277 n

end A159277

/-! ## A159277.P11650430055697342642

`abs(A011782(n)²*A151575(n))`
-/

namespace A159277.P11650430055697342642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n ^ 2 * A151575 n|

end

end A159277.P11650430055697342642

namespace A159277

/-- `abs(A011782(n)²*A151575(n))` -/
def P11650430055697342642.Spec : Prop :=
  ∀ n, P11650430055697342642.a n = A159277 n

end A159277

/-! ## A159277.P2132556767296189803

`A166444(2*n+1)*A328284(n+2)`
-/

namespace A159277.P2132556767296189803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (2 * n + 1) * A328284 (n + 2)

end

end A159277.P2132556767296189803

namespace A159277

/-- `A166444(2*n+1)*A328284(n+2)` -/
def P2132556767296189803.Spec : Prop :=
  ∀ n, P2132556767296189803.a n = A159277 n

end A159277

/-!
# A159281: Numerator of Hermite(n, 2/11).

The programs for A159281, the canonical program `A159281.P12741079133348234412` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159281 has offset 0).

The definition of A159281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159281.P12741079133348234412

`4*a(n-1)-242*(n-1)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159281

/-- `4*a(n-1)-242*(n-1)*a(n-2)` -/
def P12741079133348234412.Spec : Prop :=
  ∀ n, P12741079133348234412.a n = A159281 n

theorem P12741079133348234412.correct : P12741079133348234412.Spec := by
  intro n
  simp only [A159281]

end A159281

/-!
# A159284: Expansion of x*(1+x)/(1-x^2-2*x^3).

The programs for A159284, the canonical program `A159284.P2807081445144999103` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159284 has offset 0).

The definition of A159284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2)/(1-x^2-2x^3))` (program `A159284.P2807081445144999103`, by `A159284.P2807081445144999103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159284.P2807081445144999103

`ogf((x+x^2)/(1-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159284

/-- `ogf((x+x^2)/(1-x^2-2x^3))` -/
def P2807081445144999103.Spec : Prop :=
  ∀ n, P2807081445144999103.a n = A159284 n

theorem P2807081445144999103.correct : P2807081445144999103.Spec := by
  intro n
  simp only [A159284]

end A159284

/-! ## A159284.P16349055012548643459

`a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A159284.P16349055012548643459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + 2 * a (n - 3)

end

end A159284.P16349055012548643459

namespace A159284

/-- `a(n-2)+2*a(n-3)` -/
def P16349055012548643459.Spec : Prop :=
  ∀ n, (P16349055012548643459.a n : ℤ) = A159284 n

end A159284

/-! ## A159284.P10381918527911157534

`a(n-2)+lcm(2, a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A159284.P10381918527911157534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 3))

end

end A159284.P10381918527911157534

namespace A159284

/-- `a(n-2)+lcm(2, a(n-3))` -/
def P10381918527911157534.Spec : Prop :=
  ∀ n, (P10381918527911157534.a n : ℤ) = A159284 n

end A159284

/-! ## A159284.P14685709528002920168

`a(n-3)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A159284.P14685709528002920168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + (a (n - 2) + a (n - 3))

end

end A159284.P14685709528002920168

namespace A159284

/-- `a(n-3)+a(n-2)+a(n-3)` -/
def P14685709528002920168.Spec : Prop :=
  ∀ n, (P14685709528002920168.a n : ℤ) = A159284 n

end A159284

/-! ## A159284.P17575352599092717336

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A159284.P17575352599092717336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A159284.P17575352599092717336

namespace A159284

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P17575352599092717336.Spec : Prop :=
  ∀ n, P17575352599092717336.a n = A159284 n

end A159284

/-! ## A159284.P5136003762524601060

`A107854(n)+A014017(n+1)`
-/

namespace A159284.P5136003762524601060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 n + A014017 (n + 1)

end

end A159284.P5136003762524601060

namespace A159284

/-- `A107854(n)+A014017(n+1)` -/
def P5136003762524601060.Spec : Prop :=
  ∀ n, P5136003762524601060.a n = A159284 n

end A159284

/-! ## A159284.P9111553598126171084

`A159287(n+1)+A159287(n)`
-/

namespace A159284.P9111553598126171084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + A159287 n

end

end A159284.P9111553598126171084

namespace A159284

/-- `A159287(n+1)+A159287(n)` -/
def P9111553598126171084.Spec : Prop :=
  ∀ n, P9111553598126171084.a n = A159284 n

end A159284

/-! ## A159284.P9511487942022008709

`A052947(n)-(A078026(n)-A159287(n))`
-/

namespace A159284.P9511487942022008709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n - (A078026 n - A159287 n)

end

end A159284.P9511487942022008709

namespace A159284

/-- `A052947(n)-(A078026(n)-A159287(n))` -/
def P9511487942022008709.Spec : Prop :=
  ∀ n, P9511487942022008709.a n = A159284 n

end A159284

/-! ## A159284.P8879792987860610657

`A107854(n)+A056594(n+1)*A128130(n+1)`
-/

namespace A159284.P8879792987860610657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 n + A056594 (n + 1) * A128130 (n + 1)

end

end A159284.P8879792987860610657

namespace A159284

/-- `A107854(n)+A056594(n+1)*A128130(n+1)` -/
def P8879792987860610657.Spec : Prop :=
  ∀ n, P8879792987860610657.a n = A159284 n

end A159284

/-! ## A159284.P5155654863530860751

`A159288(n)-A052947(n)`
-/

namespace A159284.P5155654863530860751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 n - A052947 n

end

end A159284.P5155654863530860751

namespace A159284

/-- `A159288(n)-A052947(n)` -/
def P5155654863530860751.Spec : Prop :=
  ∀ n, P5155654863530860751.a n = A159284 n

end A159284

/-! ## A159284.P8672210054333271734

`Δ[A159288(n)]`
-/

namespace A159284.P8672210054333271734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159284.P8672210054333271734

namespace A159284

/-- `Δ[A159288(n)]` -/
def P8672210054333271734.Spec : Prop :=
  ∀ n, P8672210054333271734.a n = A159284 n

end A159284

/-! ## A159284.P8295982006862454809

`A159285(n)-A134271(n+1)`
-/

namespace A159284.P8295982006862454809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 n - A134271 (n + 1)

end

end A159284.P8295982006862454809

namespace A159284

/-- `A159285(n)-A134271(n+1)` -/
def P8295982006862454809.Spec : Prop :=
  ∀ n, P8295982006862454809.a n = A159284 n

end A159284

/-! ## A159284.P5332299860988704990

`A159288(n+1)-A159288(n)`
-/

namespace A159284.P5332299860988704990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (n + 1) - A159288 n

end

end A159284.P5332299860988704990

namespace A159284

/-- `A159288(n+1)-A159288(n)` -/
def P5332299860988704990.Spec : Prop :=
  ∀ n, P5332299860988704990.a n = A159284 n

end A159284

/-! ## A159284.P10900463038409389124

`A134271(n+3)/4`
-/

namespace A159284.P10900463038409389124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134271 (n + 3) : ℚ) / 4

end

end A159284.P10900463038409389124

namespace A159284

/-- `A134271(n+3)/4` -/
def P10900463038409389124.Spec : Prop :=
  ∀ n, P10900463038409389124.a n = (A159284 n : ℚ)

end A159284

/-! ## A159284.P7120463249146312713

`Δ[abs(Δ[A078028(n)/2])]`
-/

namespace A159284.P7120463249146312713
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078028 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159284.P7120463249146312713

namespace A159284

/-- `Δ[abs(Δ[A078028(n)/2])]` -/
def P7120463249146312713.Spec : Prop :=
  ∀ n, P7120463249146312713.a n = (A159284 n : ℚ)

end A159284

/-! ## A159284.P14456489364989631390

`A239851(n+1)-(A159286(n)+A159285(n))`
-/

namespace A159284.P14456489364989631390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1) - (A159286 n + A159285 n)

end

end A159284.P14456489364989631390

namespace A159284

/-- `A239851(n+1)-(A159286(n)+A159285(n))` -/
def P14456489364989631390.Spec : Prop :=
  ∀ n, P14456489364989631390.a n = A159284 n

end A159284

/-! ## A159284.P1117074919412943318

`Δ[A239851(n+1)/2]`
-/

namespace A159284.P1117074919412943318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239851 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159284.P1117074919412943318

namespace A159284

/-- `Δ[A239851(n+1)/2]` -/
def P1117074919412943318.Spec : Prop :=
  ∀ n, P1117074919412943318.a n = (A159284 n : ℚ)

end A159284

/-! ## A159284.P6409874166131517910

`Δ[A288668(n)]-2*A052947(n)`
-/

namespace A159284.P6409874166131517910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A052947 n

end

end A159284.P6409874166131517910

namespace A159284

/-- `Δ[A288668(n)]-2*A052947(n)` -/
def P6409874166131517910.Spec : Prop :=
  ∀ n, P6409874166131517910.a n = A159284 n

end A159284

/-! ## A159284.P15326801070091630067

`Δ[Δ[A288668(n)]-A052947(n)]`
-/

namespace A159284.P15326801070091630067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A052947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159284.P15326801070091630067

namespace A159284

/-- `Δ[Δ[A288668(n)]-A052947(n)]` -/
def P15326801070091630067.Spec : Prop :=
  ∀ n, P15326801070091630067.a n = A159284 n

end A159284

/-! ## A159284.P8406455857040435654

`2^n-A134270(n)`
-/

namespace A159284.P8406455857040435654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A134270 n

end

end A159284.P8406455857040435654

namespace A159284

/-- `2^n-A134270(n)` -/
def P8406455857040435654.Spec : Prop :=
  ∀ n, P8406455857040435654.a n = A159284 n

end A159284

/-!
# A159285: Expansion of (1+3*x)/(1-x^2-2*x^3).

The programs for A159285, the canonical program `A159285.P11372436055761556826` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159285 has offset 0).

The definition of A159285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-x^2-2x^3))` (program `A159285.P11372436055761556826`, by `A159285.P11372436055761556826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159285.P11372436055761556826

`ogf((1+3x)/(1-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159285

/-- `ogf((1+3x)/(1-x^2-2x^3))` -/
def P11372436055761556826.Spec : Prop :=
  ∀ n, P11372436055761556826.a n = A159285 n

theorem P11372436055761556826.correct : P11372436055761556826.Spec := by
  intro n
  simp only [A159285]

end A159285

/-! ## A159285.P5013894788284236422

`a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A159285.P5013894788284236422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 2) + 2 * a (n - 3)

end

end A159285.P5013894788284236422

namespace A159285

/-- `a(n-2)+2*a(n-3)` -/
def P5013894788284236422.Spec : Prop :=
  ∀ n, (P5013894788284236422.a n : ℤ) = A159285 n

end A159285

/-! ## A159285.P5756588795390445273

`a(n-2)+lcm(2, a(n-3))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A159285.P5756588795390445273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 3))

end

end A159285.P5756588795390445273

namespace A159285

/-- `a(n-2)+lcm(2, a(n-3))` -/
def P5756588795390445273.Spec : Prop :=
  ∀ n, (P5756588795390445273.a n : ℤ) = A159285 n

end A159285

/-! ## A159285.P11135461284419930590

`a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A159285.P11135461284419930590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 3) + (a (n - 2) + a (n - 3))

end

end A159285.P11135461284419930590

namespace A159285

/-- `a(n-3)+a(n-2)+a(n-3)` -/
def P11135461284419930590.Spec : Prop :=
  ∀ n, (P11135461284419930590.a n : ℤ) = A159285 n

end A159285

/-! ## A159285.P17060776223837312458

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A159285.P17060776223837312458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A159285.P17060776223837312458

namespace A159285

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P17060776223837312458.Spec : Prop :=
  ∀ n, P17060776223837312458.a n = A159285 n

end A159285

/-! ## A159285.P8136543490059191190

`A159287(n+1)+A052947(n+2)`
-/

namespace A159285.P8136543490059191190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + A052947 (n + 2)

end

end A159285.P8136543490059191190

namespace A159285

/-- `A159287(n+1)+A052947(n+2)` -/
def P8136543490059191190.Spec : Prop :=
  ∀ n, P8136543490059191190.a n = A159285 n

end A159285

/-! ## A159285.P12737277787206917196

`A159284(n+1)+2*A159287(n+1)`
-/

namespace A159285.P12737277787206917196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) + 2 * A159287 (n + 1)

end

end A159285.P12737277787206917196

namespace A159285

/-- `A159284(n+1)+2*A159287(n+1)` -/
def P12737277787206917196.Spec : Prop :=
  ∀ n, P12737277787206917196.a n = A159285 n

end A159285

/-! ## A159285.P14965839460026653924

`A052947(n)+A159288(n)-A159286(n)`
-/

namespace A159285.P14965839460026653924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n + (A159288 n - A159286 n)

end

end A159285.P14965839460026653924

namespace A159285

/-- `A052947(n)+A159288(n)-A159286(n)` -/
def P14965839460026653924.Spec : Prop :=
  ∀ n, P14965839460026653924.a n = A159285 n

end A159285

/-! ## A159285.P11379701593335424164

`A159284(n+1)+A159284(n+1)-A078026(n)`
-/

namespace A159285.P11379701593335424164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) + (A159284 (n + 1) - A078026 n)

end

end A159285.P11379701593335424164

namespace A159285

/-- `A159284(n+1)+A159284(n+1)-A078026(n)` -/
def P11379701593335424164.Spec : Prop :=
  ∀ n, P11379701593335424164.a n = A159285 n

end A159285

/-! ## A159285.P9504660211844223472

`A239851(n+1)-(A159286(n)+A159284(n))`
-/

namespace A159285.P9504660211844223472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1) - (A159286 n + A159284 n)

end

end A159285.P9504660211844223472

namespace A159285

/-- `A239851(n+1)-(A159286(n)+A159284(n))` -/
def P9504660211844223472.Spec : Prop :=
  ∀ n, P9504660211844223472.a n = A159285 n

end A159285

/-! ## A159285.P2864740034621452299

`A072328(n+2)/2`
-/

namespace A159285.P2864740034621452299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072328 (n + 2) : ℚ) / 2

end

end A159285.P2864740034621452299

namespace A159285

/-- `A072328(n+2)/2` -/
def P2864740034621452299.Spec : Prop :=
  ∀ n, P2864740034621452299.a n = (A159285 n : ℚ)

end A159285

/-!
# A159286: Expansion of (x-1)^2/(1-x^2-2*x^3).

The programs for A159286, the canonical program `A159286.P13616221186090484577` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159286 has offset 0).

The definition of A159286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-x^2-2x^3))` (program `A159286.P13616221186090484577`, by `A159286.P13616221186090484577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159286.P13616221186090484577

`ogf((1-2x+x^2)/(1-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159286

/-- `ogf((1-2x+x^2)/(1-x^2-2x^3))` -/
def P13616221186090484577.Spec : Prop :=
  ∀ n, P13616221186090484577.a n = A159286 n

theorem P13616221186090484577.correct : P13616221186090484577.Spec := by
  intro n
  simp only [A159286]

end A159286

/-! ## A159286.P5010516422734610484

`a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A159286.P5010516422734610484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  a (n - 2) + 2 * a (n - 3)

end

end A159286.P5010516422734610484

namespace A159286

/-- `a(n-2)+2*a(n-3)` -/
def P5010516422734610484.Spec : Prop :=
  ∀ n, P5010516422734610484.a n = A159286 n

end A159286

/-! ## A159286.P16250428891585476652

`A159288(n)-3*A159287(n+1)`
-/

namespace A159286.P16250428891585476652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 n - 3 * A159287 (n + 1)

end

end A159286.P16250428891585476652

namespace A159286

/-- `A159288(n)-3*A159287(n+1)` -/
def P16250428891585476652.Spec : Prop :=
  ∀ n, P16250428891585476652.a n = A159286 n

end A159286

/-! ## A159286.P1507545614478544277

`a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A159286.P1507545614478544277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  a (n - 3) + (a (n - 2) + a (n - 3))

end

end A159286.P1507545614478544277

namespace A159286

/-- `a(n-3)+a(n-2)+a(n-3)` -/
def P1507545614478544277.Spec : Prop :=
  ∀ n, P1507545614478544277.a n = A159286 n

end A159286

/-! ## A159286.P16407666562045559765

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A159286.P16407666562045559765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A159286.P16407666562045559765

namespace A159286

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P16407666562045559765.Spec : Prop :=
  ∀ n, P16407666562045559765.a n = A159286 n

end A159286

/-! ## A159286.P10978939608132024345

`A078026(n)+A159287(n)-A159287(n+1)`
-/

namespace A159286.P10978939608132024345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078026 n + (A159287 n - A159287 (n + 1))

end

end A159286.P10978939608132024345

namespace A159286

/-- `A078026(n)+A159287(n)-A159287(n+1)` -/
def P10978939608132024345.Spec : Prop :=
  ∀ n, P10978939608132024345.a n = A159286 n

end A159286

/-! ## A159286.P6185896247605127341

`Δ[Δ[A159287(n)]]`
-/

namespace A159286.P6185896247605127341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159286.P6185896247605127341

namespace A159286

/-- `Δ[Δ[A159287(n)]]` -/
def P6185896247605127341.Spec : Prop :=
  ∀ n, P6185896247605127341.a n = A159286 n

end A159286

/-! ## A159286.P12683274962681836422

`A052947(n)+A052947(n)-A134271(n+1)`
-/

namespace A159286.P12683274962681836422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n + (A052947 n - A134271 (n + 1))

end

end A159286.P12683274962681836422

namespace A159286

/-- `A052947(n)+A052947(n)-A134271(n+1)` -/
def P12683274962681836422.Spec : Prop :=
  ∀ n, P12683274962681836422.a n = A159286 n

end A159286

/-! ## A159286.P3922601722885147772

`A052947(n)+A159288(n)-A159285(n)`
-/

namespace A159286.P3922601722885147772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n + (A159288 n - A159285 n)

end

end A159286.P3922601722885147772

namespace A159286

/-- `A052947(n)+A159288(n)-A159285(n)` -/
def P3922601722885147772.Spec : Prop :=
  ∀ n, P3922601722885147772.a n = A159286 n

end A159286

/-! ## A159286.P5852458029280223410

`Δ[Δ[A052947(n+1)-A159284(n)]]`
-/

namespace A159286.P5852458029280223410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 1) - A159284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159286.P5852458029280223410

namespace A159286

/-- `Δ[Δ[A052947(n+1)-A159284(n)]]` -/
def P5852458029280223410.Spec : Prop :=
  ∀ n, P5852458029280223410.a n = A159286 n

end A159286

/-! ## A159286.P4022341354421142

`A239851(n+1)-(A159285(n)+A159284(n))`
-/

namespace A159286.P4022341354421142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1) - (A159285 n + A159284 n)

end

end A159286.P4022341354421142

namespace A159286

/-- `A239851(n+1)-(A159285(n)+A159284(n))` -/
def P4022341354421142.Spec : Prop :=
  ∀ n, P4022341354421142.a n = A159286 n

end A159286

/-! ## A159286.P15013849480365765737

`Δ[Δ[Δ[A159284(n+1)/2]]]`
-/

namespace A159286.P15013849480365765737
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159284 (n + 1) : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159286.P15013849480365765737

namespace A159286

/-- `Δ[Δ[Δ[A159284(n+1)/2]]]` -/
def P15013849480365765737.Spec : Prop :=
  ∀ n, P15013849480365765737.a n = (A159286 n : ℚ)

end A159286

/-!
# A159287: Expansion of x^2/(1-x^2-2*x^3).

The programs for A159287, the canonical program `A159287.P14179672360523166998` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159287 has offset 0).

The definition of A159287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-x^2-2x^3))` (program `A159287.P14179672360523166998`, by `A159287.P14179672360523166998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159287.P14179672360523166998

`ogf(x^2/(1-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159287

/-- `ogf(x^2/(1-x^2-2x^3))` -/
def P14179672360523166998.Spec : Prop :=
  ∀ n, P14179672360523166998.a n = A159287 n

theorem P14179672360523166998.correct : P14179672360523166998.Spec := by
  intro n
  simp only [A159287]

end A159287

/-! ## A159287.P12556126727615965026

`a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A159287.P12556126727615965026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + 2 * a (n - 3)

end

end A159287.P12556126727615965026

namespace A159287

/-- `a(n-2)+2*a(n-3)` -/
def P12556126727615965026.Spec : Prop :=
  ∀ n, (P12556126727615965026.a n : ℤ) = A159287 n

end A159287

/-! ## A159287.P1860146394244554170

`a(n-3)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A159287.P1860146394244554170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + (a (n - 2) + a (n - 3))

end

end A159287.P1860146394244554170

namespace A159287

/-- `a(n-3)+a(n-2)+a(n-3)` -/
def P1860146394244554170.Spec : Prop :=
  ∀ n, (P1860146394244554170.a n : ℤ) = A159287 n

end A159287

/-! ## A159287.P6249859262075103666

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A159287.P6249859262075103666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A159287.P6249859262075103666

namespace A159287

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P6249859262075103666.Spec : Prop :=
  ∀ n, P6249859262075103666.a n = A159287 n

end A159287

/-! ## A159287.P12023646479869272841

`A159284(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A159287.P12023646479869272841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A159284 (n - 1) - a (n - 1)

end

end A159287.P12023646479869272841

namespace A159287

/-- `A159284(n-1)-a(n-1)` -/
def P12023646479869272841.Spec : Prop :=
  ∀ n, P12023646479869272841.a n = A159287 n

end A159287

/-! ## A159287.P13174243971610702489

`(A107853(n)-A188510(n))/2`
-/

namespace A159287.P13174243971610702489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107853 n - A188510 n : ℚ) / 2

end

end A159287.P13174243971610702489

namespace A159287

/-- `(A107853(n)-A188510(n))/2` -/
def P13174243971610702489.Spec : Prop :=
  ∀ n, P13174243971610702489.a n = (A159287 n : ℚ)

end A159287

/-! ## A159287.P4073942445618008525

`A052947(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A159287.P4073942445618008525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052947 n - 2 * a (n - 1)

end

end A159287.P4073942445618008525

namespace A159287

/-- `A052947(n)-2*a(n-1)` -/
def P4073942445618008525.Spec : Prop :=
  ∀ n, P4073942445618008525.a n = A159287 n

end A159287

/-! ## A159287.P15445322512923967243

`A078026(n)+A159284(n)-A052947(n)`
-/

namespace A159287.P15445322512923967243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078026 n + (A159284 n - A052947 n)

end

end A159287.P15445322512923967243

namespace A159287

/-- `A078026(n)+A159284(n)-A052947(n)` -/
def P15445322512923967243.Spec : Prop :=
  ∀ n, P15445322512923967243.a n = A159287 n

end A159287

/-! ## A159287.P2055758311028337577

`A107850(n)+A107854(n)-A107853(n+1)`
-/

namespace A159287.P2055758311028337577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107850 n + (A107854 n - A107853 (n + 1))

end

end A159287.P2055758311028337577

namespace A159287

/-- `A107850(n)+A107854(n)-A107853(n+1)` -/
def P2055758311028337577.Spec : Prop :=
  ∀ n, P2055758311028337577.a n = A159287 n

end A159287

/-! ## A159287.P1263251201463783672

`A052947(n)-Δ[A159284(n)]`
-/

namespace A159287.P1263251201463783672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n - (f1 (n + 1) - f1 n)

end

end A159287.P1263251201463783672

namespace A159287

/-- `A052947(n)-Δ[A159284(n)]` -/
def P1263251201463783672.Spec : Prop :=
  ∀ n, P1263251201463783672.a n = A159287 n

end A159287

/-! ## A159287.P15768154196954297594

`A052947(n+1)-A159284(n)`
-/

namespace A159287.P15768154196954297594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 1) - A159284 n

end

end A159287.P15768154196954297594

namespace A159287

/-- `A052947(n+1)-A159284(n)` -/
def P15768154196954297594.Spec : Prop :=
  ∀ n, P15768154196954297594.a n = A159287 n

end A159287

/-! ## A159287.P1245625603360640935

`A159288(n)-A159284(n+1)`
-/

namespace A159287.P1245625603360640935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 n - A159284 (n + 1)

end

end A159287.P1245625603360640935

namespace A159287

/-- `A159288(n)-A159284(n+1)` -/
def P1245625603360640935.Spec : Prop :=
  ∀ n, P1245625603360640935.a n = A159287 n

end A159287

/-! ## A159287.P17505352795217654720

`A052947(n+1)+A052947(n)-A159288(n)`
-/

namespace A159287.P17505352795217654720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 1) + (A052947 n - A159288 n)

end

end A159287.P17505352795217654720

namespace A159287

/-- `A052947(n+1)+A052947(n)-A159288(n)` -/
def P17505352795217654720.Spec : Prop :=
  ∀ n, P17505352795217654720.a n = A159287 n

end A159287

/-! ## A159287.P1875717797965091921

`A052947(n+1)-(A107854(n)+A014017(n+1))`
-/

namespace A159287.P1875717797965091921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 1) - (A107854 n + A014017 (n + 1))

end

end A159287.P1875717797965091921

namespace A159287

/-- `A052947(n+1)-(A107854(n)+A014017(n+1))` -/
def P1875717797965091921.Spec : Prop :=
  ∀ n, P1875717797965091921.a n = A159287 n

end A159287

/-! ## A159287.P17132727532595382653

`Δ[abs(A078028(n)/2)]`
-/

namespace A159287.P17132727532595382653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A078028 n : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159287.P17132727532595382653

namespace A159287

/-- `Δ[abs(A078028(n)/2)]` -/
def P17132727532595382653.Spec : Prop :=
  ∀ n, P17132727532595382653.a n = (A159287 n : ℚ)

end A159287

/-! ## A159287.P7067830118650439073

`A052947(n+2)-A134271(n+1)`
-/

namespace A159287.P7067830118650439073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 2) - A134271 (n + 1)

end

end A159287.P7067830118650439073

namespace A159287

/-- `A052947(n+2)-A134271(n+1)` -/
def P7067830118650439073.Spec : Prop :=
  ∀ n, P7067830118650439073.a n = A159287 n

end A159287

/-! ## A159287.P18323179256329508705

`A107854(n+1)+A159284(n)-A107849(n)`
-/

namespace A159287.P18323179256329508705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (n + 1) + (A159284 n - A107849 n)

end

end A159287.P18323179256329508705

namespace A159287

/-- `A107854(n+1)+A159284(n)-A107849(n)` -/
def P18323179256329508705.Spec : Prop :=
  ∀ n, P18323179256329508705.a n = A159287 n

end A159287

/-! ## A159287.P928987178234021458

`A159288(n)-Δ[A159288(n+1)]`
-/

namespace A159287.P928987178234021458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 n - (f1 (n + 1) - f1 n)

end

end A159287.P928987178234021458

namespace A159287

/-- `A159288(n)-Δ[A159288(n+1)]` -/
def P928987178234021458.Spec : Prop :=
  ∀ n, P928987178234021458.a n = A159287 n

end A159287

/-!
# A159288: Expansion of (1 + x + x^2)/(1 - x^2 - 2*x^3).

The programs for A159288, the canonical program `A159288.P10953740065741326280` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159288 has offset 0).

The definition of A159288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-x^2-2x^3))` (program `A159288.P10953740065741326280`, by `A159288.P10953740065741326280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159288.P10953740065741326280

`ogf((1+x+x^2)/(1-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159288

/-- `ogf((1+x+x^2)/(1-x^2-2x^3))` -/
def P10953740065741326280.Spec : Prop :=
  ∀ n, P10953740065741326280.a n = A159288 n

theorem P10953740065741326280.correct : P10953740065741326280.Spec := by
  intro n
  simp only [A159288]

end A159288

/-! ## A159288.P13276161389787581042

`a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A159288.P13276161389787581042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + 2 * a (n - 3)

end

end A159288.P13276161389787581042

namespace A159288

/-- `a(n-2)+2*a(n-3)` -/
def P13276161389787581042.Spec : Prop :=
  ∀ n, (P13276161389787581042.a n : ℤ) = A159288 n

end A159288

/-! ## A159288.P14375510234288746188

`A159287(n)+A159287(n+1)+A159287(n+2)`
-/

namespace A159288.P14375510234288746188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 n + A159287 (n + 1) + A159287 (n + 2)

end

end A159288.P14375510234288746188

namespace A159288

/-- `A159287(n)+A159287(n+1)+A159287(n+2)` -/
def P14375510234288746188.Spec : Prop :=
  ∀ n, P14375510234288746188.a n = A159288 n

end A159288

/-! ## A159288.P13398724722974376557

`a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A159288.P13398724722974376557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + (a (n - 2) + a (n - 3))

end

end A159288.P13398724722974376557

namespace A159288

/-- `a(n-3)+a(n-2)+a(n-3)` -/
def P13398724722974376557.Spec : Prop :=
  ∀ n, (P13398724722974376557.a n : ℤ) = A159288 n

end A159288

/-! ## A159288.P5563992317747627893

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A159288.P5563992317747627893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A159288.P5563992317747627893

namespace A159288

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P5563992317747627893.Spec : Prop :=
  ∀ n, P5563992317747627893.a n = A159288 n

end A159288

/-! ## A159288.P6072808329101357569

`∑[A159284(abs(1-n))]`
-/

namespace A159288.P6072808329101357569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159288.P6072808329101357569

namespace A159288

/-- `∑[A159284(abs(1-n))]` -/
def P6072808329101357569.Spec : Prop :=
  ∀ n, P6072808329101357569.a n = A159288 n

end A159288

/-! ## A159288.P12736077100702701471

`A159284(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A159288.P12736077100702701471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159284 (n - 1) + a (n - 1)

end

end A159288.P12736077100702701471

namespace A159288

/-- `A159284(n-1)+a(n-1)` -/
def P12736077100702701471.Spec : Prop :=
  ∀ n, P12736077100702701471.a n = A159288 n

end A159288

/-! ## A159288.P14045656790052682096

`A159284(n)+A052947(n)`
-/

namespace A159288.P14045656790052682096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n + A052947 n

end

end A159288.P14045656790052682096

namespace A159288

/-- `A159284(n)+A052947(n)` -/
def P14045656790052682096.Spec : Prop :=
  ∀ n, P14045656790052682096.a n = A159288 n

end A159288

/-! ## A159288.P3326214132213416762

`A159287(n)+A159284(n+1)`
-/

namespace A159288.P3326214132213416762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 n + A159284 (n + 1)

end

end A159288.P3326214132213416762

namespace A159288

/-- `A159287(n)+A159284(n+1)` -/
def P3326214132213416762.Spec : Prop :=
  ∀ n, P3326214132213416762.a n = A159288 n

end A159288

/-! ## A159288.P1323417867550700560

`A014017(n+1)+A107854(n)+A052947(n)`
-/

namespace A159288.P1323417867550700560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (n + 1) + (A107854 n + A052947 n)

end

end A159288.P1323417867550700560

namespace A159288

/-- `A014017(n+1)+A107854(n)+A052947(n)` -/
def P1323417867550700560.Spec : Prop :=
  ∀ n, P1323417867550700560.a n = A159288 n

end A159288

/-! ## A159288.P8403265233803303306

`A159287(n+1)+A159287(n)+A052947(n)`
-/

namespace A159288.P8403265233803303306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + (A159287 n + A052947 n)

end

end A159288.P8403265233803303306

namespace A159288

/-- `A159287(n+1)+A159287(n)+A052947(n)` -/
def P8403265233803303306.Spec : Prop :=
  ∀ n, P8403265233803303306.a n = A159288 n

end A159288

/-! ## A159288.P13598526712930928621

`abs(Δ[A078028(n)/2])`
-/

namespace A159288.P13598526712930928621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078028 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A159288.P13598526712930928621

namespace A159288

/-- `abs(Δ[A078028(n)/2])` -/
def P13598526712930928621.Spec : Prop :=
  ∀ n, P13598526712930928621.a n = (A159288 n : ℚ)

end A159288

/-! ## A159288.P5582006722363078647

`A159285(n)+A159286(n)-A052947(n)`
-/

namespace A159288.P5582006722363078647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 n + (A159286 n - A052947 n)

end

end A159288.P5582006722363078647

namespace A159288

/-- `A159285(n)+A159286(n)-A052947(n)` -/
def P5582006722363078647.Spec : Prop :=
  ∀ n, P5582006722363078647.a n = A159288 n

end A159288

/-! ## A159288.P16140698898596622375

`A239851(n+1)/2`
-/

namespace A159288.P16140698898596622375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239851 (n + 1) : ℚ) / 2

end

end A159288.P16140698898596622375

namespace A159288

/-- `A239851(n+1)/2` -/
def P16140698898596622375.Spec : Prop :=
  ∀ n, P16140698898596622375.a n = (A159288 n : ℚ)

end A159288

/-! ## A159288.P4388418361013101567

`Δ[record[Δ[A103626(n)]]]`
-/

namespace A159288.P4388418361013101567
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103626 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159288.P4388418361013101567

namespace A159288

/-- `Δ[record[Δ[A103626(n)]]]` -/
def P4388418361013101567.Spec : Prop :=
  ∀ n, P4388418361013101567.a n = A159288 n

end A159288

/-! ## A159288.P2651849256454846710

`Δ[A103626(3*n+1+n)]`
-/

namespace A159288.P2651849256454846710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103626 (3 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159288.P2651849256454846710

namespace A159288

/-- `Δ[A103626(3*n+1+n)]` -/
def P2651849256454846710.Spec : Prop :=
  ∀ n, P2651849256454846710.a n = A159288 n

end A159288

/-! ## A159288.P15606382428394653856

`Δ[A288668(n)]-A052947(n)`
-/

namespace A159288.P15606382428394653856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052947 n

end

end A159288.P15606382428394653856

namespace A159288

/-- `Δ[A288668(n)]-A052947(n)` -/
def P15606382428394653856.Spec : Prop :=
  ∀ n, P15606382428394653856.a n = A159288 n

end A159288

/-! ## A159288.P9450603718078574559

`A368430(n+1)-(A368430(n)+A052947(n+1))`
-/

namespace A159288.P9450603718078574559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368430 (n + 1) - (A368430 n + A052947 (n + 1))

end

end A159288.P9450603718078574559

namespace A159288

/-- `A368430(n+1)-(A368430(n)+A052947(n+1))` -/
def P9450603718078574559.Spec : Prop :=
  ∀ n, P9450603718078574559.a n = A159288 n

end A159288

/-!
# A159289: a(n+1) = 5*a(n) - 2*a(n-1), a(0)=5, a(1)=21.

The programs for A159289, the canonical program `A159289.P5800774957501952769` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159289 has offset 0).

The definition of A159289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159289.P11026833885197505638

`ogf((5-4x)/(1-5x+2x^2))`
-/

namespace A159289.P11026833885197505638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4] [1, -5, 2] n

end

end A159289.P11026833885197505638

namespace A159289

/-- `ogf((5-4x)/(1-5x+2x^2))` -/
def P11026833885197505638.Spec : Prop :=
  ∀ n, P11026833885197505638.a n = A159289 n

end A159289

/-! ## A159289.P5800774957501952769

`a(n-1)+2*(2*a(n-1)-a(n-2))` with `a(0)=5, a(1)=21`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159289

/-- `a(n-1)+2*(2*a(n-1)-a(n-2))` -/
def P5800774957501952769.Spec : Prop :=
  ∀ n, P5800774957501952769.a n = A159289 n

theorem P5800774957501952769.correct : P5800774957501952769.Spec := by
  intro n
  simp only [A159289]

end A159289

/-! ## A159289.P13847918009604968948

`A398709(n+1)+1`
-/

namespace A159289.P13847918009604968948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398709 (n + 1) + 1

end

end A159289.P13847918009604968948

namespace A159289

/-- `A398709(n+1)+1` -/
def P13847918009604968948.Spec : Prop :=
  ∀ n, P13847918009604968948.a n = A159289 n

theorem P13847918009604968948.correct : P13847918009604968948.Spec := by
  intro n
  simp only [A159289, Nat.add_sub_cancel, A159289.P13847918009604968948.a, A159289.P5800774957501952769.a, A398709, A398709.P7989658470484696830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159289

/-! ## A159289.P2725596432909899843

`A052984(n)+Δ[A107839(n)]`
-/

namespace A159289.P2725596432909899843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n + (f1 (n + 1) - f1 n)

end

end A159289.P2725596432909899843

namespace A159289

/-- `A052984(n)+Δ[A107839(n)]` -/
def P2725596432909899843.Spec : Prop :=
  ∀ n, P2725596432909899843.a n = A159289 n

end A159289

/-! ## A159289.P15359445657027703772

`A052984(n)+A052913(n+1)`
-/

namespace A159289.P15359445657027703772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n + A052913 (n + 1)

end

end A159289.P15359445657027703772

namespace A159289

/-- `A052984(n)+A052913(n+1)` -/
def P15359445657027703772.Spec : Prop :=
  ∀ n, P15359445657027703772.a n = A159289 n

end A159289

/-! ## A159289.P14069568498168008247

`A107839(n+1)+A106709(n)`
-/

namespace A159289.P14069568498168008247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 (n + 1) + A106709 n

end

end A159289.P14069568498168008247

namespace A159289

/-- `A107839(n+1)+A106709(n)` -/
def P14069568498168008247.Spec : Prop :=
  ∀ n, P14069568498168008247.a n = A159289 n

end A159289

/-! ## A159289.P15433219631525006400

`A052984(n)+2*A020698(n)`
-/

namespace A159289.P15433219631525006400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n + 2 * A020698 n

end

end A159289.P15433219631525006400

namespace A159289

/-- `A052984(n)+2*A020698(n)` -/
def P15433219631525006400.Spec : Prop :=
  ∀ n, P15433219631525006400.a n = A159289 n

end A159289

/-! ## A159289.P3402750507957959274

`A020698(n)+3*A052913(n)`
-/

namespace A159289.P3402750507957959274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 n + 3 * A052913 n

end

end A159289.P3402750507957959274

namespace A159289

/-- `A020698(n)+3*A052913(n)` -/
def P3402750507957959274.Spec : Prop :=
  ∀ n, P3402750507957959274.a n = A159289 n

end A159289

/-! ## A159289.P3896738891876694775

`A107839(n)+4*A052913(n)`
-/

namespace A159289.P3896738891876694775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n + 4 * A052913 n

end

end A159289.P3896738891876694775

namespace A159289

/-- `A107839(n)+4*A052913(n)` -/
def P3896738891876694775.Spec : Prop :=
  ∀ n, P3896738891876694775.a n = A159289 n

end A159289

/-! ## A159289.P11965181272298955965

`6*A052913(n)-A052984(n)`
-/

namespace A159289.P11965181272298955965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A052913 n - A052984 n

end

end A159289.P11965181272298955965

namespace A159289

/-- `6*A052913(n)-A052984(n)` -/
def P11965181272298955965.Spec : Prop :=
  ∀ n, P11965181272298955965.a n = A159289 n

end A159289

/-! ## A159289.P14812935842705850811

`A147722(n+1)+A052984(n+1)`
-/

namespace A159289.P14812935842705850811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 (n + 1) + A052984 (n + 1)

end

end A159289.P14812935842705850811

namespace A159289

/-- `A147722(n+1)+A052984(n+1)` -/
def P14812935842705850811.Spec : Prop :=
  ∀ n, P14812935842705850811.a n = A159289 n

end A159289

/-! ## A159289.P12914955168242589168

`A109165(2*(n+1))+A106709(n)`
-/

namespace A159289.P12914955168242589168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (2 * (n + 1)) + A106709 n

end

end A159289.P12914955168242589168

namespace A159289

/-- `A109165(2*(n+1))+A106709(n)` -/
def P12914955168242589168.Spec : Prop :=
  ∀ n, P12914955168242589168.a n = A159289 n

end A159289

/-! ## A159289.P13200571362818285056

`A107839(n+1)-A079162(2*n)`
-/

namespace A159289.P13200571362818285056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 (n + 1) - A079162 (2 * n)

end

end A159289.P13200571362818285056

namespace A159289

/-- `A107839(n+1)-A079162(2*n)` -/
def P13200571362818285056.Spec : Prop :=
  ∀ n, P13200571362818285056.a n = A159289 n

end A159289

/-! ## A159289.P12284514321647929179

`A079162(2*n+3)+A052984(n)`
-/

namespace A159289.P12284514321647929179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (2 * n + 3) + A052984 n

end

end A159289.P12284514321647929179

namespace A159289

/-- `A079162(2*n+3)+A052984(n)` -/
def P12284514321647929179.Spec : Prop :=
  ∀ n, P12284514321647929179.a n = A159289 n

end A159289

/-! ## A159289.P439045900908294209

`A052913(n+1)+A005824(2*n+1)`
-/

namespace A159289.P439045900908294209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 (n + 1) + A005824 (2 * n + 1)

end

end A159289.P439045900908294209

namespace A159289

/-- `A052913(n+1)+A005824(2*n+1)` -/
def P439045900908294209.Spec : Prop :=
  ∀ n, P439045900908294209.a n = A159289 n

end A159289

/-! ## A159289.P11734419033670528662

`A020698(n+1)+2*A106709(n+1)`
-/

namespace A159289.P11734419033670528662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 (n + 1) + 2 * A106709 (n + 1)

end

end A159289.P11734419033670528662

namespace A159289

/-- `A020698(n+1)+2*A106709(n+1)` -/
def P11734419033670528662.Spec : Prop :=
  ∀ n, P11734419033670528662.a n = A159289 n

end A159289

/-! ## A159289.P16724244865362518735

`A020698(n+1)-2*A204091(n+1)`
-/

namespace A159289.P16724244865362518735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 (n + 1) - 2 * A204091 (n + 1)

end

end A159289.P16724244865362518735

namespace A159289

/-- `A020698(n+1)-2*A204091(n+1)` -/
def P16724244865362518735.Spec : Prop :=
  ∀ n, P16724244865362518735.a n = A159289 n

end A159289

/-! ## A159289.P13036184216335227971

`A107839(n+1)-2*A005824(2*n)`
-/

namespace A159289.P13036184216335227971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 (n + 1) - 2 * A005824 (2 * n)

end

end A159289.P13036184216335227971

namespace A159289

/-- `A107839(n+1)-2*A005824(2*n)` -/
def P13036184216335227971.Spec : Prop :=
  ∀ n, P13036184216335227971.a n = A159289 n

end A159289

/-! ## A159289.P11406866899974156652

`2*A052984(n+1)-A109165(2*n)`
-/

namespace A159289.P11406866899974156652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052984 (n + 1) - A109165 (2 * n)

end

end A159289.P11406866899974156652

namespace A159289

/-- `2*A052984(n+1)-A109165(2*n)` -/
def P11406866899974156652.Spec : Prop :=
  ∀ n, P11406866899974156652.a n = A159289 n

end A159289

/-! ## A159289.P4728983699790088029

`A109165(2*(n+1))-A079162(2*n)`
-/

namespace A159289.P4728983699790088029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (2 * (n + 1)) - A079162 (2 * n)

end

end A159289.P4728983699790088029

namespace A159289

/-- `A109165(2*(n+1))-A079162(2*n)` -/
def P4728983699790088029.Spec : Prop :=
  ∀ n, P4728983699790088029.a n = A159289 n

end A159289

/-!
# A159290: A generalized Jacobsthal sequence.

The programs for A159290, the canonical program `A159290.P6677818832078359262` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159290 has offset 0).

The definition of A159290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159290.P6677818832078359262

`3*A000975(n+1)-A000975(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159290

/-- `3*A000975(n+1)-A000975(n)` -/
def P6677818832078359262.Spec : Prop :=
  ∀ n, P6677818832078359262.a n = A159290 n

theorem P6677818832078359262.correct : P6677818832078359262.Spec := by
  intro n
  simp only [A159290]

end A159290

/-! ## A159290.P11170334032586763594

`∑[ogf((-3+x)/(-1+x+2x^2))]`
-/

namespace A159290.P11170334032586763594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159290.P11170334032586763594

namespace A159290

/-- `∑[ogf((-3+x)/(-1+x+2x^2))]` -/
def P11170334032586763594.Spec : Prop :=
  ∀ n, P11170334032586763594.a n = A159290 n

end A159290

/-! ## A159290.P15868616317936189858

`ogf((3-x)/(1-2x-x^2+2x^3))`
-/

namespace A159290.P15868616317936189858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -2, -1, 2] n

end

end A159290.P15868616317936189858

namespace A159290

/-- `ogf((3-x)/(1-2x-x^2+2x^3))` -/
def P15868616317936189858.Spec : Prop :=
  ∀ n, P15868616317936189858.a n = A159290 n

end A159290

/-! ## A159290.P13620175506113697877

`2*round(5*2^n/3)-1`
-/

namespace A159290.P13620175506113697877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (5 * ((2 ^ n : ℚ) / 3)) - 1

end

end A159290.P13620175506113697877

namespace A159290

/-- `2*round(5*2^n/3)-1` -/
def P13620175506113697877.Spec : Prop :=
  ∀ n, P13620175506113697877.a n = A159290 n

end A159290

/-! ## A159290.P14379010283003285700

`∑[a(n-1)+2*a(n-2)]` with `a(0)=3, a(1)=2`
-/

namespace A159290.P14379010283003285700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159290.P14379010283003285700

namespace A159290

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P14379010283003285700.Spec : Prop :=
  ∀ n, (P14379010283003285700.a n : ℤ) = A159290 n

end A159290

/-! ## A159290.P5453156597148205570

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=3, a(1)=2`
-/

namespace A159290.P5453156597148205570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159290.P5453156597148205570

namespace A159290

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P5453156597148205570.Spec : Prop :=
  ∀ n, (P5453156597148205570.a n : ℤ) = A159290 n

end A159290

/-! ## A159290.P10091445544410335340

`floor(a(n-1)+a(n-2)+a(n-2)+2)` with `a(0)=3, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A159290.P10091445544410335340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 2))

end

end A159290.P10091445544410335340

namespace A159290

/-- `floor(a(n-1)+a(n-2)+a(n-2)+2)` -/
def P10091445544410335340.Spec : Prop :=
  ∀ n, (P10091445544410335340.a n : ℤ) = A159290 n

end A159290

/-! ## A159290.P1353881135448751843

`∑[3*a(n-2)-(a(n-2)-a(n-1))]` with `a(0)=3, a(1)=2`
-/

namespace A159290.P1353881135448751843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  3 * f1 (n - 2) - (f1 (n - 2) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159290.P1353881135448751843

namespace A159290

/-- `∑[3*a(n-2)-(a(n-2)-a(n-1))]` -/
def P1353881135448751843.Spec : Prop :=
  ∀ n, P1353881135448751843.a n = A159290 n

end A159290

/-! ## A159290.P17920653676490652886

`or(1, ∑[A048573(n)])`
-/

namespace A159290.P17920653676490652886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159290.P17920653676490652886

namespace A159290

/-- `or(1, ∑[A048573(n)])` -/
def P17920653676490652886.Spec : Prop :=
  ∀ n, P17920653676490652886.a n = A159290 n

end A159290

/-! ## A159290.P1191081856716922303

`or(1, 2*A084170(n))`
-/

namespace A159290.P1191081856716922303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A084170 n)

end

end A159290.P1191081856716922303

namespace A159290

/-- `or(1, 2*A084170(n))` -/
def P1191081856716922303.Spec : Prop :=
  ∀ n, P1191081856716922303.a n = A159290 n

end A159290

/-! ## A159290.P6613424567906623403

`or(1, A081254(n+2)-1)`
-/

namespace A159290.P6613424567906623403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081254 (n + 2) - 1)

end

end A159290.P6613424567906623403

namespace A159290

/-- `or(1, A081254(n+2)-1)` -/
def P6613424567906623403.Spec : Prop :=
  ∀ n, P6613424567906623403.a n = A159290 n

end A159290

/-! ## A159290.P5074147865337017910

`xor(a(n-2), A135092(n))` with `a(0)=3, a(1)=5`
-/

namespace A159290.P5074147865337017910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  Int.xor (a (n - 2)) (A135092 n)

end

end A159290.P5074147865337017910

namespace A159290

/-- `xor(a(n-2), A135092(n))` -/
def P5074147865337017910.Spec : Prop :=
  ∀ n, P5074147865337017910.a n = A159290 n

end A159290

/-! ## A159290.P5098894368379764598

`∑[2^n+2*A078008(n)]`
-/

namespace A159290.P5098894368379764598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + 2 * A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159290.P5098894368379764598

namespace A159290

/-- `∑[2^n+2*A078008(n)]` -/
def P5098894368379764598.Spec : Prop :=
  ∀ n, P5098894368379764598.a n = A159290 n

end A159290

/-! ## A159290.P13168675013283225595

`∑[A014113(n+1)+Δ[floor((2^n+1)/3)]]`
-/

namespace A159290.P13168675013283225595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n + 1 : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159290.P13168675013283225595

namespace A159290

/-- `∑[A014113(n+1)+Δ[floor((2^n+1)/3)]]` -/
def P13168675013283225595.Spec : Prop :=
  ∀ n, P13168675013283225595.a n = A159290 n

end A159290

/-! ## A159290.P16955735690452368765

`∑[A048573(n)+A033999(n)]`
-/

namespace A159290.P16955735690452368765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159290.P16955735690452368765

namespace A159290

/-- `∑[A048573(n)+A033999(n)]` -/
def P16955735690452368765.Spec : Prop :=
  ∀ n, P16955735690452368765.a n = A159290 n

end A159290

/-! ## A159290.P12067051649823594913

`xor(A157532(n+1), A168648(n))`
-/

namespace A159290.P12067051649823594913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157532 (n + 1)) (A168648 n)

end

end A159290.P12067051649823594913

namespace A159290

/-- `xor(A157532(n+1), A168648(n))` -/
def P12067051649823594913.Spec : Prop :=
  ∀ n, P12067051649823594913.a n = A159290 n

end A159290

/-! ## A159290.P15619384720520633891

`xor(A000225(n+2), A014113(n))`
-/

namespace A159290.P15619384720520633891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (n + 2)) (A014113 n)

end

end A159290.P15619384720520633891

namespace A159290

/-- `xor(A000225(n+2), A014113(n))` -/
def P15619384720520633891.Spec : Prop :=
  ∀ n, P15619384720520633891.a n = A159290 n

end A159290

/-! ## A159290.P16068031085847423073

`∑[A154879(n)+A097073(n+1)]`
-/

namespace A159290.P16068031085847423073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154879 n + A097073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159290.P16068031085847423073

namespace A159290

/-- `∑[A154879(n)+A097073(n+1)]` -/
def P16068031085847423073.Spec : Prop :=
  ∀ n, P16068031085847423073.a n = A159290 n

end A159290

/-! ## A159290.P14490796607094559909

`abs(5*2^n-(a(n-1)+2))` with `a(0)=3`
-/

namespace A159290.P14490796607094559909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |(5 * 2 ^ n : ℤ) - (a (n - 1) + 2)|

end

end A159290.P14490796607094559909

namespace A159290

/-- `abs(5*2^n-(a(n-1)+2))` -/
def P14490796607094559909.Spec : Prop :=
  ∀ n, P14490796607094559909.a n = A159290 n

end A159290

/-! ## A159290.P17449227491366148622

`floor(5*2^n-(a(n-1)+2))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A159290.P17449227491366148622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (5 * 2 ^ n : ℤ) - (a (n - 1) + 2)

end

end A159290.P17449227491366148622

namespace A159290

/-- `floor(5*2^n-(a(n-1)+2))` -/
def P17449227491366148622.Spec : Prop :=
  ∀ n, P17449227491366148622.a n = A159290 n

end A159290

/-!
# A159293: a(n) = smallest prime congruent to 1 mod A051426(n).

The programs for A159293, there is no canonical definition to state claims against.
-/

/-! ## A159293.P11021156866335312543

`A070846(∏[(n+1)/∏{p}[n+1, (n+1)/#]])`
-/

namespace A159293.P11021156866335312543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A159293.P11021156866335312543

/-! ## A159293.P3411668430612510976

`A070846(A120108(∑[n]))`
-/

namespace A159293.P3411668430612510976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A120108 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A159293.P3411668430612510976

/-! ## A159293.P10434921204704738291

`A070846(Δ[A173185(n)])`
-/

namespace A159293.P10434921204704738291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (f1 (n + 1) - f1 n).toNat

end

end A159293.P10434921204704738291

/-! ## A159293.P13564462612679488008

`A070846(A003418(n+1))`
-/

namespace A159293.P13564462612679488008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A003418 (n + 1)).toNat

end

end A159293.P13564462612679488008

/-! ## A159293.P707146531357249740

`A070846(A058312(n+1))`
-/

namespace A159293.P707146531357249740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A058312 (n + 1)).toNat

end

end A159293.P707146531357249740

/-!
# A159296: a(n) is the smaller number in the pair (L,m) which minimizes the primes of the form L^2 + m^2 under the constraint L + m = 2n + 1.

The programs for A159296, there is no canonical definition to state claims against.
-/

/-! ## A159296.P3511276277727509038

`A241898(p?[A281229(n+3)])`
-/

namespace A159296.P3511276277727509038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281229 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A159296.P3511276277727509038

/-! ## A159296.P10198442403593564962

`A241898(A281229(2*n+3))`
-/

namespace A159296.P10198442403593564962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (A281229 (2 * n + 3)).toNat

end

end A159296.P10198442403593564962

/-! ## A159296.P16149355232595317315

`A205790(p?[A281229(n+3)])`
-/

namespace A159296.P16149355232595317315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281229 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A159296.P16149355232595317315

/-! ## A159296.P11005720178270800964

`A205790(or(1, A281229(2*n+3)))`
-/

namespace A159296.P11005720178270800964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (Int.lor 1 (A281229 (2 * n + 3))).toNat

end

end A159296.P11005720178270800964

/-! ## A159296.P9463689674750844396

`A205790(∏{p}[A281229(2*n+3), #])`
-/

namespace A159296.P9463689674750844396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281229 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A159296.P9463689674750844396

/-! ## A159296.P2100759818914843081

`A205790(A281229(2*n+3))%A060264(n)`
-/

namespace A159296.P2100759818914843081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205790 (A281229 (2 * n + 3)).toNat) (A060264 n)

end

end A159296.P2100759818914843081

/-!
# A159297: Number of 3D matrices with positive integer entries such that sum of all entries equals n.

The programs for A159297, there is no canonical definition to state claims against.
-/

/-! ## A159297.P14037269114719223606

`A000006(A364145(n+1))`
-/

namespace A159297.P14037269114719223606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A364145 (n + 1)).toNat

end

end A159297.P14037269114719223606

/-! ## A159297.P3953977928840975272

`A000006(A143960(n+1))-n`
-/

namespace A159297.P3953977928840975272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A143960 (n + 1)).toNat - (n : ℤ)

end

end A159297.P3953977928840975272

/-! ## A159297.P1467342093714674325

`∑[A261104(∑[A005325(n+5)])]`
-/

namespace A159297.P1467342093714674325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005325 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159297.P1467342093714674325

/-!
# A159298: Numbers k such that k * 10^k * (10^k - 1)/9 + 1 is prime.

The programs for A159298, there is no canonical definition to state claims against.
-/

/-! ## A159298.P17618575592033922636

`A167865(A075497(3*n+2)*A344623(n))`
-/

namespace A159298.P17618575592033922636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A075497 (3 * n + 2) * A344623 n).toNat

end

end A159298.P17618575592033922636

/-!
# A159299: Number of n-colorings of the 4 X 4 Sudoku graph.

The programs for A159299, there is no canonical definition to state claims against.
-/

/-! ## A159299.P2601448481340946127

`lcm(A005875(A324374(2*n)), A079485(n))`
-/

namespace A159299.P2601448481340946127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005875 (A324374 (2 * n)).toNat) (A079485 n)

end

end A159299.P2601448481340946127

