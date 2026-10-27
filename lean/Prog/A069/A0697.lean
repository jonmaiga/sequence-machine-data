import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A069700: Triangular numbers with internal digits 9.

The programs for A069700, there is no canonical definition to state claims against.
-/

/-! ## A069700.P6149279631228977883

`eq[A103438(n), A264668(n+1)]`
-/

namespace A069700.P6149279631228977883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069700.P6149279631228977883

/-! ## A069700.P10325696497821062484

`eq[A109754(n), A264668(n+1)]`
-/

namespace A069700.P10325696497821062484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069700.P10325696497821062484

/-! ## A069700.P3417675073919828910

`eq[A043562(A054899(n)+2), A074909(n)]`
-/

namespace A069700.P3417675073919828910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A054899 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069700.P3417675073919828910

/-! ## A069700.P6413011972213752910

`A000217(lt[A018819(2*n+3), A030665(n+1)])`
-/

namespace A069700.P6413011972213752910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069700.P6413011972213752910

/-! ## A069700.P7247673477545893708

`∩[∑[n], A185236(n)+∑[n]]`
-/

namespace A069700.P7247673477545893708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n + ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A069700.P7247673477545893708

/-!
# A069701: Squares with internal digits also forming a square > 0.

The programs for A069701, there is no canonical definition to state claims against.
-/

/-! ## A069701.P13267800910610780638

`record[(13-A240443(n+1))²]`
-/

namespace A069701.P13267800910610780638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 - A240443 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069701.P13267800910610780638

/-!
# A069702: Triangular numbers with internal digits also forming a triangular number.

The programs for A069702, there is no canonical definition to state claims against.
-/

/-! ## A069702.P12992434322933970118

`A077366(n+15)`
-/

namespace A069702.P12992434322933970118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077366 (n + 15)

end

end A069702.P12992434322933970118

/-! ## A069702.P4385247461119222618

`A000217(lt[A344157(2*(n+2)), A061186(n)])`
-/

namespace A069702.P4385247461119222618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344157 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069702.P4385247461119222618

/-!
# A069703: a(n) = n! - n^k where n^(k+1) > n! >= n^k.

The programs for A069703, there is no canonical definition to state claims against.
-/

/-! ## A069703.P5194923473652790408

`∏[n+1]-A074182(n+1)`
-/

namespace A069703.P5194923473652790408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A074182 (n + 1)

end

end A069703.P5194923473652790408

/-! ## A069703.P14425952840760673166

`A000035(10*(n+10))-(A074182(n+1)-(n+1)!)`
-/

namespace A069703.P14425952840760673166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (10 * (n + 10)) - (A074182 (n + 1) - (Nat.factorial (n + 1) : ℤ))

end

end A069703.P14425952840760673166

/-! ## A069703.P13364121505778142027

`A000142(n)+A001563(n)-A074182(n+1)`
-/

namespace A069703.P13364121505778142027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A001563 n - A074182 (n + 1))

end

end A069703.P13364121505778142027

/-! ## A069703.P2606417548913247648

`(n+1)!-record[A028242(n)^A039960(A028242(n))]`
-/

namespace A069703.P2606417548913247648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 n : ℚ) ^ (A039960 (A028242 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069703.P2606417548913247648

/-! ## A069703.P10447592763161189938

`((n+1)!-A074182(n+1))*A267870(A008486(n))`
-/

namespace A069703.P10447592763161189938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) - A074182 (n + 1)) * A267870 (A008486 n).toNat

end

end A069703.P10447592763161189938

/-!
# A069705: a(n) = 2^n mod 7.

The programs for A069705, the canonical program `A069705.P2145631425404747954` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069705 has offset 0).

The definition of A069705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%7` (program `A069705.P2145631425404747954`, by `A069705.P2145631425404747954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069705.P6871397949020099510

`2^(n%3)`
-/

namespace A069705.P6871397949020099510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n % 3)

end

end A069705.P6871397949020099510

namespace A069705

/-- `2^(n%3)` -/
def P6871397949020099510.Spec : Prop :=
  ∀ n, (P6871397949020099510.a n : ℤ) = A069705 n

end A069705

/-! ## A069705.P2145631425404747954

`(2^n)%7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069705

/-- `(2^n)%7` -/
def P2145631425404747954.Spec : Prop :=
  ∀ n, (P2145631425404747954.a n : ℤ) = A069705 n

theorem P2145631425404747954.correct : P2145631425404747954.Spec := by
  intro n
  simp only [A069705]

end A069705

/-!
# A069707: Squares with property that swapping first and last digits also gives a square.

The programs for A069707, there is no canonical definition to state claims against.
-/

/-! ## A069707.P4695310676370354294

`∩[A118715(n+2), n²]`
-/

namespace A069707.P4695310676370354294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A069707.P4695310676370354294

/-! ## A069707.P1758634539924954026

`A061457(A077168(n+1))`
-/

namespace A069707.P1758634539924954026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (A077168 (n + 1)).toNat

end

end A069707.P1758634539924954026

/-! ## A069707.P18128941975126726540

`A096457(A061457(n+2))`
-/

namespace A069707.P18128941975126726540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A061457 (n + 2)).toNat

end

end A069707.P18128941975126726540

/-! ## A069707.P17041966409129581922

`filter[A118715(n+2), A010052(#)]`
-/

namespace A069707.P17041966409129581922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A069707.P17041966409129581922

/-! ## A069707.P13767792985106819536

`A061457(n+2)%A273599(n+1)`
-/

namespace A069707.P13767792985106819536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061457 (n + 2)) (A273599 (n + 1))

end

end A069707.P13767792985106819536

/-!
# A069708: Triangular numbers with property that swapping first and last digits also gives a triangular number.

The programs for A069708, there is no canonical definition to state claims against.
-/

/-! ## A069708.P10553414299552728068

`A110769(A061455(n+2))`
-/

namespace A069708.P10553414299552728068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 (A061455 (n + 2)).toNat

end

end A069708.P10553414299552728068

/-! ## A069708.P13035911543465915619

`A061455(A007967((n+2)²))`
-/

namespace A069708.P13035911543465915619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (A007967 ((n + 2) ^ 2)).toNat

end

end A069708.P13035911543465915619

/-! ## A069708.P16070408647829973508

`A061455(A151764(n+3)-1)`
-/

namespace A069708.P16070408647829973508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (A151764 (n + 3) - 1).toNat

end

end A069708.P16070408647829973508

/-!
# A069709: Primes with arithmetic mean of digits an integer (sum of digits = a multiple of number of digits).

The programs for A069709, the canonical program `A069709.P16883846701480238033` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069709 has offset 1).

The definition of A069709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1009 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069709.P16883846701480238033

`p?[A061383(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069709

/-- `p?[A061383(n)]` -/
def P16883846701480238033.Spec : Prop :=
  ∀ n, P16883846701480238033.a n = A069709 (n + 1)

theorem P16883846701480238033.correct : P16883846701480238033.Spec := by
  intro n
  simp only [A069709, Nat.add_sub_cancel]

end A069709

/-! ## A069709.P5151053580796274912

`filter[A061383(n+1), A010051(#)]`
-/

namespace A069709.P5151053580796274912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069709.P5151053580796274912

namespace A069709

/-- `filter[A061383(n+1), A010051(#)]` -/
def P5151053580796274912.Spec : Prop :=
  ∀ n, P5151053580796274912.a n = A069709 (n + 1)

end A069709

/-! ## A069709.P9280888085317685303

`∩[A000040(n+1), A061383(n)]`
-/

namespace A069709.P9280888085317685303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069709.P9280888085317685303

namespace A069709

/-- `∩[A000040(n+1), A061383(n)]` -/
def P9280888085317685303.Spec : Prop :=
  ∀ n, (P9280888085317685303.a n : ℤ) = A069709 (n + 1)

end A069709

/-! ## A069709.P697834732894129117

`eq[A003415(n), A371384(n)]`
-/

namespace A069709.P697834732894129117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069709.P697834732894129117

namespace A069709

/-- `eq[A003415(n), A371384(n)]` -/
def P697834732894129117.Spec : Prop :=
  ∀ n, (P697834732894129117.a n : ℤ) = A069709 (n + 1)

end A069709

/-! ## A069709.P7034145961028448365

`eq[A018783(n), A371384(n)]`
-/

namespace A069709.P7034145961028448365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069709.P7034145961028448365

namespace A069709

/-- `eq[A018783(n), A371384(n)]` -/
def P7034145961028448365.Spec : Prop :=
  ∀ n, (P7034145961028448365.a n : ℤ) = A069709 (n + 1)

end A069709

/-! ## A069709.P15921501640921453754

`eq[A175126(n), A371384(n)]`
-/

namespace A069709.P15921501640921453754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069709.P15921501640921453754

namespace A069709

/-- `eq[A175126(n), A371384(n)]` -/
def P15921501640921453754.Spec : Prop :=
  ∀ n, (P15921501640921453754.a n : ℤ) = A069709 (n + 1)

end A069709

/-! ## A069709.P7086810901324747529

`eq[A302055(n), A371384(n)]`
-/

namespace A069709.P7086810901324747529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069709.P7086810901324747529

namespace A069709

/-- `eq[A302055(n), A371384(n)]` -/
def P7086810901324747529.Spec : Prop :=
  ∀ n, (P7086810901324747529.a n : ℤ) = A069709 (n + 1)

end A069709

/-! ## A069709.P17877244579792997002

`eq[A369971(n)², A371384(n)]`
-/

namespace A069709.P17877244579792997002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069709.P17877244579792997002

namespace A069709

/-- `eq[A369971(n)², A371384(n)]` -/
def P17877244579792997002.Spec : Prop :=
  ∀ n, (P17877244579792997002.a n : ℤ) = A069709 (n + 1)

end A069709

/-! ## A069709.P3302891089721662459

`filter[A061383(n+2), A080339(#)]`
-/

namespace A069709.P3302891089721662459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A069709.P3302891089721662459

namespace A069709

/-- `filter[A061383(n+2), A080339(#)]` -/
def P3302891089721662459.Spec : Prop :=
  ∀ n, P3302891089721662459.a n = A069709 (n + 1)

end A069709

/-!
# A069710: Primes with arithmetic mean of digits = 1 (sum of digits = number of digits).

The programs for A069710, there is no canonical definition to state claims against.
-/

/-! ## A069710.P16831418423069752864

`∩[A036958(n+1), A061384(n+1)]`
-/

namespace A069710.P16831418423069752864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069710.P16831418423069752864

/-! ## A069710.P15831126444515191720

`∩[A036960(n+1), A061384(n+1)]`
-/

namespace A069710.P15831126444515191720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069710.P15831126444515191720

/-! ## A069710.P11884469110433365979

`p?[A061384(n+1)]`
-/

namespace A069710.P11884469110433365979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069710.P11884469110433365979

/-! ## A069710.P9665859757815517872

`p?[record[A061384(A106466(n))]]`
-/

namespace A069710.P9665859757815517872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061384 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069710.P9665859757815517872

/-! ## A069710.P3567191760051057096

`p?[record[A061384(A133310(n))]]`
-/

namespace A069710.P3567191760051057096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061384 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069710.P3567191760051057096

/-!
# A069711: Squares whose arithmetic mean of digits is an integer (i.e., the sum of digits is a multiple of the number of digits).

The programs for A069711, there is no canonical definition to state claims against.
-/

/-! ## A069711.P8771890633676356982

`(A164817(A028310(n))%(n+1)²)²`
-/

namespace A069711.P8771890633676356982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164817 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ) ^ 2

end

end A069711.P8771890633676356982

/-! ## A069711.P11710477100729157264

`(A000007(n)-A164817(A028310(n)))²`
-/

namespace A069711.P11710477100729157264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - A164817 (A028310 n).toNat) ^ 2

end

end A069711.P11710477100729157264

/-! ## A069711.P8148473357299946982

`A164817(A028310(n))²%A035016(n)`
-/

namespace A069711.P8148473357299946982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164817 (A028310 n).toNat ^ 2) (A035016 n)

end

end A069711.P8148473357299946982

/-! ## A069711.P704882120050369860

`(A010051(2*(n+1))-A164817(A028310(n)))²`
-/

namespace A069711.P704882120050369860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (2 * (n + 1)) - A164817 (A028310 n).toNat) ^ 2

end

end A069711.P704882120050369860

/-! ## A069711.P4478416171783835425

`(A107393(2*n+1)*A164817(A028310(n)))²`
-/

namespace A069711.P4478416171783835425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107393 (2 * n + 1) * A164817 (A028310 n).toNat) ^ 2

end

end A069711.P4478416171783835425

/-! ## A069711.P7864749738546386160

`A164817(A028310(n))²*A151933(A151933(n))`
-/

namespace A069711.P7864749738546386160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164817 (A028310 n).toNat ^ 2 * A151933 (A151933 n).toNat

end

end A069711.P7864749738546386160

/-!
# A069712: Triangular numbers with arithmetic mean of digits = integer (sum of digits = A multiple of the number of digits).

The programs for A069712, there is no canonical definition to state claims against.
-/

/-! ## A069712.P9958124245163347871

`eq[A180160(n), A340991(n)]`
-/

namespace A069712.P9958124245163347871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069712.P9958124245163347871

/-! ## A069712.P16766180826361627388

`eq[A180160(n), A339754(n+1)]`
-/

namespace A069712.P16766180826361627388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069712.P16766180826361627388

/-! ## A069712.P10389437563877029698

`eq[A061199(n), A180160(n)]`
-/

namespace A069712.P10389437563877029698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069712.P10389437563877029698

/-! ## A069712.P11596791359973003275

`eq[A091538(n), A180160(n)]`
-/

namespace A069712.P11596791359973003275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069712.P11596791359973003275

/-! ## A069712.P12703165606129203038

`eq[A127952(n), A180160(n)]`
-/

namespace A069712.P12703165606129203038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069712.P12703165606129203038

/-!
# A069713: As a square array T(n,k) by antidiagonals, number of ways of partitioning k into up to n parts each no more than 5, or into up to 5 parts each no more than n; as a triangle t(n,k), number of ways of partitioning n into exactly k parts each no more than 6 (i.e., of arranging k indistinguishable standard dice to produce a total of n).

The programs for A069713, there is no canonical definition to state claims against.
-/

/-! ## A069713.P17475144246292829057

`A072233(n)%(A309247(2*(n+2))%31)`
-/

namespace A069713.P17475144246292829057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072233 n) (Int.tmod (A309247 (2 * (n + 2))) 31)

end

end A069713.P17475144246292829057

/-! ## A069713.P16065573922209540095

`A072233(n-A178798(A288108(n)))`
-/

namespace A069713.P16065573922209540095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 ((n : ℤ) - A178798 (A288108 n).toNat).toNat

end

end A069713.P16065573922209540095

/-! ## A069713.P14611421554267458353

`A072233(n)*A174898(A255872(n+5))`
-/

namespace A069713.P14611421554267458353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A174898 (A255872 (n + 5)).toNat

end

end A069713.P14611421554267458353

/-! ## A069713.P5673771111036814367

`A072233(n)%A117817(A360551(n+3))`
-/

namespace A069713.P5673771111036814367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072233 n) (A117817 (A360551 (n + 3)).toNat)

end

end A069713.P5673771111036814367

/-! ## A069713.P8020058362229628346

`C(A072233(n), A008835(A026804(n+2)))`
-/

namespace A069713.P8020058362229628346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072233 n).toNat (A008835 (A026804 (n + 2)).toNat).toNat

end

end A069713.P8020058362229628346

/-!
# A069715: GCD of digits of n is 1.

The programs for A069715, there is no canonical definition to state claims against.
-/

/-! ## A069715.P17631223334624222172

`∪[A011531(n+1), A240913(n+1)]`
-/

namespace A069715.P17631223334624222172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069715.P17631223334624222172

/-! ## A069715.P7013266264931898983

`record[A350494(n+1)]`
-/

namespace A069715.P7013266264931898983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069715.P7013266264931898983

/-! ## A069715.P16299068766315570298

`eq[1, A052423(n+1)]+1`
-/

namespace A069715.P16299068766315570298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069715.P16299068766315570298

/-! ## A069715.P2945587651119705183

`record[(n+2)/A052423(n+2)]`
-/

namespace A069715.P2945587651119705183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A052423 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069715.P2945587651119705183

/-! ## A069715.P7363871647198346079

`eq[1, A064894(A086066(n))]`
-/

namespace A069715.P7363871647198346079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069715.P7363871647198346079

/-! ## A069715.P13986754160778101771

`eq[n, A350494(A028310(n))]`
-/

namespace A069715.P13986754160778101771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350494 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069715.P13986754160778101771

/-! ## A069715.P8773226134898565908

`A350494(lt[n, A350494(n+1)]+1)`
-/

namespace A069715.P8773226134898565908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A069715.P8773226134898565908

/-! ## A069715.P9137937335791923693

`eq[1, A289508(A113581(n))]`
-/

namespace A069715.P9137937335791923693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069715.P9137937335791923693

/-! ## A069715.P3776159558122613083

`eq[n, A350494(A233583(n+1))]`
-/

namespace A069715.P3776159558122613083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350494 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069715.P3776159558122613083

/-!
# A069716: Smallest number such that the LCM of the digits equals n, or 0 if no such number exists.

The programs for A069716, there is no canonical definition to state claims against.
-/

/-! ## A069716.P12599861989556535408

`A184945(A061511(n))+A068189(n+1)`
-/

namespace A069716.P12599861989556535408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A061511 n).toNat + A068189 (n + 1)

end

end A069716.P12599861989556535408

/-! ## A069716.P11587039300333939591

`A302026(A032557(n+1))%A128309(n+1)`
-/

namespace A069716.P11587039300333939591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302026 (A032557 (n + 1)).toNat) (A128309 (n + 1))

end

end A069716.P11587039300333939591

/-!
# A069717: B referred to in A056600.

The programs for A069717, there is no canonical definition to state claims against.
-/

/-! ## A069717.P14952657241434028209

`A056600(n+1)-A069718(n+1)`
-/

namespace A069717.P14952657241434028209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056600 (n + 1) - A069718 (n + 1)

end

end A069717.P14952657241434028209

/-! ## A069717.P5725729519778532771

`A056600(comp[(4*n)²])%A069718(n+1)`
-/

namespace A069717.P5725729519778532771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A069718 (n + 1))

end

end A069717.P5725729519778532771

/-! ## A069717.P14757673383289187437

`A056600(A032555(n+1))%A069718(n+1)+lcm(2, n)%2`
-/

namespace A069717.P14757673383289187437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056600 (A032555 (n + 1)).toNat) (A069718 (n + 1)) + ((Nat.lcm 2 n % 2 : ℕ) : ℤ)

end

end A069717.P14757673383289187437

/-!
# A069718: C referred to in A056600.

The programs for A069718, there is no canonical definition to state claims against.
-/

/-! ## A069718.P558504304535050664

`A056600(n+1)-A069717(n+1)`
-/

namespace A069718.P558504304535050664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056600 (n + 1) - A069717 (n + 1)

end

end A069718.P558504304535050664

/-!
# A069719: Integer quotients arising in A068418: sum of proper divisors is divided by cototient of terms of A068418.

The programs for A069719, there is no canonical definition to state claims against.
-/

/-! ## A069719.P12535623356992725544

`A108128(A026398(n+1))`
-/

namespace A069719.P12535623356992725544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108128 (A026398 (n + 1)).toNat

end

end A069719.P12535623356992725544

/-! ## A069719.P6611724333137012245

`A270003(or(A017017(n), A059270(n)))`
-/

namespace A069719.P6611724333137012245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270003 (Int.lor (A017017 n) (A059270 n)).toNat

end

end A069719.P6611724333137012245

/-! ## A069719.P8346911773423287019

`p?[A004218(A088440(n)+A013610(n))]`
-/

namespace A069719.P8346911773423287019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A088440 n + A013610 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069719.P8346911773423287019

/-!
# A069720: a(n) = 2^(n-1)*binomial(2*n-1, n).

The programs for A069720, the canonical program `A069720.P4827717805776408002` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069720 has offset 1).

The definition of A069720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(2*(n+1)-1, n+1)` (program `A069720.P4827717805776408002`, by `A069720.P4827717805776408002.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069720.P8963757884519570032

`2^(n-1)*C(2*(n+1), n+1)`
-/

namespace A069720.P8963757884519570032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * (n + 1)) (n + 1) : ℚ)

end

end A069720.P8963757884519570032

namespace A069720

/-- `2^(n-1)*C(2*(n+1), n+1)` -/
def P8963757884519570032.Spec : Prop :=
  ∀ n, P8963757884519570032.a n = (A069720 (n + 1) : ℚ)

end A069720

/-! ## A069720.P4827717805776408002

`2^n*C(2*(n+1)-1, n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069720

/-- `2^n*C(2*(n+1)-1, n+1)` -/
def P4827717805776408002.Spec : Prop :=
  ∀ n, (P4827717805776408002.a n : ℤ) = A069720 (n + 1)

theorem P4827717805776408002.correct : P4827717805776408002.Spec := by
  intro n
  simp only [A069720, Nat.add_sub_cancel]

end A069720

/-! ## A069720.P3619251321884444114

`A000079(n)*A001700(n)`
-/

namespace A069720.P3619251321884444114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001700 n

end

end A069720.P3619251321884444114

namespace A069720

/-- `A000079(n)*A001700(n)` -/
def P3619251321884444114.Spec : Prop :=
  ∀ n, P3619251321884444114.a n = A069720 (n + 1)

end A069720

/-! ## A069720.P8023255238157779887

`∏[8-4/(n+1)]/4`
-/

namespace A069720.P8023255238157779887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 - 4 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 4

end

end A069720.P8023255238157779887

namespace A069720

/-- `∏[8-4/(n+1)]/4` -/
def P8023255238157779887.Spec : Prop :=
  ∀ n, P8023255238157779887.a n = (A069720 (n + 1) : ℚ)

end A069720

/-! ## A069720.P10289067267155388082

`(8-4/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A069720.P10289067267155388082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (8 - 4 / (n + 1 : ℚ)) * a (n - 1)

end

end A069720.P10289067267155388082

namespace A069720

/-- `(8-4/(n+1))*a(n-1)` -/
def P10289067267155388082.Spec : Prop :=
  ∀ n, P10289067267155388082.a n = (A069720 (n + 1) : ℚ)

end A069720

/-! ## A069720.P11774652620254957259

`A098660(Δ[n²])`
-/

namespace A069720.P11774652620254957259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098660 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069720.P11774652620254957259

namespace A069720

/-- `A098660(Δ[n²])` -/
def P11774652620254957259.Spec : Prop :=
  ∀ n, P11774652620254957259.a n = A069720 (n + 1)

end A069720

/-! ## A069720.P13288031618469437507

`record[A128413(n+1)/2]`
-/

namespace A069720.P13288031618469437507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128413 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069720.P13288031618469437507

namespace A069720

/-- `record[A128413(n+1)/2]` -/
def P13288031618469437507.Spec : Prop :=
  ∀ n, P13288031618469437507.a n = (A069720 (n + 1) : ℚ)

end A069720

/-! ## A069720.P17829715310916014469

`(2*n+1)*A151374(n)`
-/

namespace A069720.P17829715310916014469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A151374 n

end

end A069720.P17829715310916014469

namespace A069720

/-- `(2*n+1)*A151374(n)` -/
def P17829715310916014469.Spec : Prop :=
  ∀ n, P17829715310916014469.a n = A069720 (n + 1)

end A069720

/-! ## A069720.P16562322036322151369

`2^n*A088218(n+1)`
-/

namespace A069720.P16562322036322151369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A088218 (n + 1)

end

end A069720.P16562322036322151369

namespace A069720

/-- `2^n*A088218(n+1)` -/
def P16562322036322151369.Spec : Prop :=
  ∀ n, P16562322036322151369.a n = A069720 (n + 1)

end A069720

/-! ## A069720.P7793247480622909168

`Δ[n²]*A052701(n+1)`
-/

namespace A069720.P7793247480622909168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A052701 (n + 1)

end

end A069720.P7793247480622909168

namespace A069720

/-- `Δ[n²]*A052701(n+1)` -/
def P7793247480622909168.Spec : Prop :=
  ∀ n, P7793247480622909168.a n = A069720 (n + 1)

end A069720

/-! ## A069720.P6634995084732205871

`2^(n-1)*A000984(n+1)`
-/

namespace A069720.P6634995084732205871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000984 (n + 1) : ℚ)

end

end A069720.P6634995084732205871

namespace A069720

/-- `2^(n-1)*A000984(n+1)` -/
def P6634995084732205871.Spec : Prop :=
  ∀ n, P6634995084732205871.a n = (A069720 (n + 1) : ℚ)

end A069720

/-! ## A069720.P3060597811181961785

`2^(n-2)*A028329(n+1)`
-/

namespace A069720.P3060597811181961785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A028329 (n + 1) : ℚ)

end

end A069720.P3060597811181961785

namespace A069720

/-- `2^(n-2)*A028329(n+1)` -/
def P3060597811181961785.Spec : Prop :=
  ∀ n, P3060597811181961785.a n = (A069720 (n + 1) : ℚ)

end A069720

/-! ## A069720.P1080379224167404583

`2^(n-2)*A100320(n+1)`
-/

namespace A069720.P1080379224167404583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A100320 (n + 1) : ℚ)

end

end A069720.P1080379224167404583

namespace A069720

/-- `2^(n-2)*A100320(n+1)` -/
def P1080379224167404583.Spec : Prop :=
  ∀ n, P1080379224167404583.a n = (A069720 (n + 1) : ℚ)

end A069720

/-! ## A069720.P23351787527105873

`2^n*Δ[n²]*A000108(n)`
-/

namespace A069720.P23351787527105873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n

end

end A069720.P23351787527105873

namespace A069720

/-- `2^n*Δ[n²]*A000108(n)` -/
def P23351787527105873.Spec : Prop :=
  ∀ n, P23351787527105873.a n = A069720 (n + 1)

end A069720

/-! ## A069720.P15125780824618315618

`lcm(2*n+1, A098660(2*n+1))`
-/

namespace A069720.P15125780824618315618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A098660 (2 * n + 1))

end

end A069720.P15125780824618315618

namespace A069720

/-- `lcm(2*n+1, A098660(2*n+1))` -/
def P15125780824618315618.Spec : Prop :=
  ∀ n, (P15125780824618315618.a n : ℤ) = A069720 (n + 1)

end A069720

/-! ## A069720.P14742198580664791055

`(n/2+1)*A000108(n+1)*2^n`
-/

namespace A069720.P14742198580664791055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A000108 (n + 1) : ℚ) * (2 ^ n : ℚ)

end

end A069720.P14742198580664791055

namespace A069720

/-- `(n/2+1)*A000108(n+1)*2^n` -/
def P14742198580664791055.Spec : Prop :=
  ∀ n, P14742198580664791055.a n = (A069720 (n + 1) : ℚ)

end A069720

/-! ## A069720.P367474168947479609

`A000108(n)*A014480(n)`
-/

namespace A069720.P367474168947479609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A014480 n

end

end A069720.P367474168947479609

namespace A069720

/-- `A000108(n)*A014480(n)` -/
def P367474168947479609.Spec : Prop :=
  ∀ n, P367474168947479609.a n = A069720 (n + 1)

end A069720

/-! ## A069720.P876380091796506503

`A000108(n+1)*A001792(n)`
-/

namespace A069720.P876380091796506503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A001792 n

end

end A069720.P876380091796506503

namespace A069720

/-- `A000108(n+1)*A001792(n)` -/
def P876380091796506503.Spec : Prop :=
  ∀ n, P876380091796506503.a n = A069720 (n + 1)

end A069720

/-!
# A069721: Number of rooted unicursal planar maps with n edges and no vertices of valency 1 (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

The programs for A069721, the canonical program `A069721.P15657058802008382559` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069721 has offset 1).

The definition of A069721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069721.P15657058802008382559

`floor(2^(n-1))*A276666(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069721

/-- `floor(2^(n-1))*A276666(n)` -/
def P15657058802008382559.Spec : Prop :=
  ∀ n, P15657058802008382559.a n = A069721 (n + 1)

theorem P15657058802008382559.correct : P15657058802008382559.Spec := by
  intro n
  simp only [A069721, Nat.add_sub_cancel]

end A069721

/-! ## A069721.P12058663464168736557

`2^n*A037951(comp[2*(n+1)])`
-/

namespace A069721.P12058663464168736557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A037951 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A069721.P12058663464168736557

namespace A069721

/-- `2^n*A037951(comp[2*(n+1)])` -/
def P12058663464168736557.Spec : Prop :=
  ∀ n, P12058663464168736557.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P15622100264668469703

`2^n*A037955(comp[2*(n+1)])`
-/

namespace A069721.P15622100264668469703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A037955 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A069721.P15622100264668469703

namespace A069721

/-- `2^n*A037955(comp[2*(n+1)])` -/
def P15622100264668469703.Spec : Prop :=
  ∀ n, P15622100264668469703.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P12929558998890084416

`(n-1)*floor(2^(n-1))*A000108(n)`
-/

namespace A069721.P12929558998890084416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A000108 n

end

end A069721.P12929558998890084416

namespace A069721

/-- `(n-1)*floor(2^(n-1))*A000108(n)` -/
def P12929558998890084416.Spec : Prop :=
  ∀ n, P12929558998890084416.a n = A069721 (n + 1)

theorem P12929558998890084416.correct : P12929558998890084416.Spec := by
  intro n
  simp only [A069721, Nat.add_sub_cancel, A069721.P12929558998890084416.a, A069721.P15657058802008382559.a, A000108, A000108.P17551949696095299361.a, A276666, A276666.P3198409013776322395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069721

/-! ## A069721.P5069625728822151624

`A068875(n)*A139756(n)`
-/

namespace A069721.P5069625728822151624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n * A139756 n

end

end A069721.P5069625728822151624

namespace A069721

/-- `A068875(n)*A139756(n)` -/
def P5069625728822151624.Spec : Prop :=
  ∀ n, P5069625728822151624.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P8550974968588915459

`∑[A049610(n)]*A068875(n)`
-/

namespace A069721.P8550974968588915459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A068875 n

end

end A069721.P8550974968588915459

namespace A069721

/-- `∑[A049610(n)]*A068875(n)` -/
def P8550974968588915459.Spec : Prop :=
  ∀ n, P8550974968588915459.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P18377177121448903698

`A069723(n+1)-A151374(n)`
-/

namespace A069721.P18377177121448903698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069723 (n + 1) - A151374 n

end

end A069721.P18377177121448903698

namespace A069721

/-- `A069723(n+1)-A151374(n)` -/
def P18377177121448903698.Spec : Prop :=
  ∀ n, P18377177121448903698.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P8332927974718744371

`A097067(n)*A262543(n+1)`
-/

namespace A069721.P8332927974718744371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n * A262543 (n + 1)

end

end A069721.P8332927974718744371

namespace A069721

/-- `A097067(n)*A262543(n+1)` -/
def P8332927974718744371.Spec : Prop :=
  ∀ n, P8332927974718744371.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P18386054068533590162

`A139756(n)*A262543(n+1)`
-/

namespace A069721.P18386054068533590162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n * A262543 (n + 1)

end

end A069721.P18386054068533590162

namespace A069721

/-- `A139756(n)*A262543(n+1)` -/
def P18386054068533590162.Spec : Prop :=
  ∀ n, P18386054068533590162.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P13001355319983199756

`2*A000108(n)*A139756(n)`
-/

namespace A069721.P13001355319983199756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000108 n * A139756 n)

end

end A069721.P13001355319983199756

namespace A069721

/-- `2*A000108(n)*A139756(n)` -/
def P13001355319983199756.Spec : Prop :=
  ∀ n, P13001355319983199756.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P11814297740864769961

`2*A000108(n)*∑[A049610(n)]`
-/

namespace A069721.P11814297740864769961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069721.P11814297740864769961

namespace A069721

/-- `2*A000108(n)*∑[A049610(n)]` -/
def P11814297740864769961.Spec : Prop :=
  ∀ n, P11814297740864769961.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P1273306137791437101

`A069723(n+1)-A052701(n+1)`
-/

namespace A069721.P1273306137791437101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069723 (n + 1) - A052701 (n + 1)

end

end A069721.P1273306137791437101

namespace A069721

/-- `A069723(n+1)-A052701(n+1)` -/
def P1273306137791437101.Spec : Prop :=
  ∀ n, P1273306137791437101.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P9379047333490779626

`C(A004277(n)-1, n+1)*A000079(n)`
-/

namespace A069721.P9379047333490779626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A004277 n - 1).toNat (n + 1) : ℤ) * A000079 n

end

end A069721.P9379047333490779626

namespace A069721

/-- `C(A004277(n)-1, n+1)*A000079(n)` -/
def P9379047333490779626.Spec : Prop :=
  ∀ n, P9379047333490779626.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P16127554702473298112

`(A088218(n)-A000108(n))*A000079(n)`
-/

namespace A069721.P16127554702473298112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088218 n - A000108 n) * A000079 n

end

end A069721.P16127554702473298112

namespace A069721

/-- `(A088218(n)-A000108(n))*A000079(n)` -/
def P16127554702473298112.Spec : Prop :=
  ∀ n, P16127554702473298112.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P10174895232068504459

`A000108(n)*A011782(n)*log2(A011782(n))`
-/

namespace A069721.P10174895232068504459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000108 n * A011782 n : ℝ) * Real.logb 2 (A011782 n : ℝ)

end

end A069721.P10174895232068504459

namespace A069721

/-- `A000108(n)*A011782(n)*log2(A011782(n))` -/
def P10174895232068504459.Spec : Prop :=
  ∀ n, P10174895232068504459.a n = (A069721 (n + 1) : ℝ)

end A069721

/-! ## A069721.P10321978813140537294

`A069720(n+1)%A069723(n+1)`
-/

namespace A069721.P10321978813140537294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069720 (n + 1)) (A069723 (n + 1))

end

end A069721.P10321978813140537294

namespace A069721

/-- `A069720(n+1)%A069723(n+1)` -/
def P10321978813140537294.Spec : Prop :=
  ∀ n, P10321978813140537294.a n = A069721 (n + 1)

end A069721

/-! ## A069721.P5661265255214244172

`A069720(n+1)-(A069723(n+1)+A069722(n+1))`
-/

namespace A069721.P5661265255214244172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069720 (n + 1) - (A069723 (n + 1) + A069722 (n + 1))

end

end A069721.P5661265255214244172

namespace A069721

/-- `A069720(n+1)-(A069723(n+1)+A069722(n+1))` -/
def P5661265255214244172.Spec : Prop :=
  ∀ n, P5661265255214244172.a n = A069721 (n + 1)

end A069721

/-!
# A069722: Number of rooted unicursal planar maps with n edges and exactly one vertex of valency 1 (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

The programs for A069722, the canonical program `A069722.P7509180552531274418` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069722 has offset 1).

The definition of A069722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069722.P11512978121628182666

`(8-4/n)*a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A069722.P11512978121628182666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  (8 - 4 / (n : ℚ)) * a (n - 1)

end

end A069722.P11512978121628182666

namespace A069722

/-- `(8-4/n)*a(n-1)` -/
def P11512978121628182666.Spec : Prop :=
  ∀ n, P11512978121628182666.a n = (A069722 (n + 1) : ℚ)

end A069722

/-! ## A069722.P7509180552531274418

`C(2*n, n)*and(-2, 2^n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069722

/-- `C(2*n, n)*and(-2, 2^n)` -/
def P7509180552531274418.Spec : Prop :=
  ∀ n, P7509180552531274418.a n = A069722 (n + 1)

theorem P7509180552531274418.correct : P7509180552531274418.Spec := by
  intro n
  simp only [A069722, Nat.add_sub_cancel]

end A069722

/-! ## A069722.P5959953049025102329

`C(2*n, n)*Δ[lcm(2, (-2)^n)]`
-/

namespace A069722.P5959953049025102329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((-2) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A069722.P5959953049025102329

namespace A069722

/-- `C(2*n, n)*Δ[lcm(2, (-2)^n)]` -/
def P5959953049025102329.Spec : Prop :=
  ∀ n, P5959953049025102329.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P8164056272459745822

`and(-2, A059304(n))`
-/

namespace A069722.P8164056272459745822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A059304 n)

end

end A069722.P8164056272459745822

namespace A069722

/-- `and(-2, A059304(n))` -/
def P8164056272459745822.Spec : Prop :=
  ∀ n, P8164056272459745822.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P13773954061255512964

`C(2*n, n)*A155559(n)`
-/

namespace A069722.P13773954061255512964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A155559 n

end

end A069722.P13773954061255512964

namespace A069722

/-- `C(2*n, n)*A155559(n)` -/
def P13773954061255512964.Spec : Prop :=
  ∀ n, P13773954061255512964.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P4538957457363000147

`floor(2^(n-1))*A028329(n)`
-/

namespace A069722.P4538957457363000147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A028329 n

end

end A069722.P4538957457363000147

namespace A069722

/-- `floor(2^(n-1))*A028329(n)` -/
def P4538957457363000147.Spec : Prop :=
  ∀ n, P4538957457363000147.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P15664832272558212318

`floor(2^(n-1))*A100320(n)`
-/

namespace A069722.P15664832272558212318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A100320 n

end

end A069722.P15664832272558212318

namespace A069722

/-- `floor(2^(n-1))*A100320(n)` -/
def P15664832272558212318.Spec : Prop :=
  ∀ n, P15664832272558212318.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P7719851037181775459

`2^n*record[A126869(n+1)]`
-/

namespace A069722.P7719851037181775459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069722.P7719851037181775459

namespace A069722

/-- `2^n*record[A126869(n+1)]` -/
def P7719851037181775459.Spec : Prop :=
  ∀ n, P7719851037181775459.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P3650833172756322140

`Δ[or(1, 2^n-1)]*A000984(n)`
-/

namespace A069722.P3650833172756322140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000984 n

end

end A069722.P3650833172756322140

namespace A069722

/-- `Δ[or(1, 2^n-1)]*A000984(n)` -/
def P3650833172756322140.Spec : Prop :=
  ∀ n, P3650833172756322140.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P12363265551371802138

`2*(n+1)*floor(2^(n-1))*A000108(n)`
-/

namespace A069722.P12363265551371802138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A000108 n

end

end A069722.P12363265551371802138

namespace A069722

/-- `2*(n+1)*floor(2^(n-1))*A000108(n)` -/
def P12363265551371802138.Spec : Prop :=
  ∀ n, P12363265551371802138.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P6655850049941414167

`A059304(n)-A000007(n)`
-/

namespace A069722.P6655850049941414167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059304 n - A000007 n

end

end A069722.P6655850049941414167

namespace A069722

/-- `A059304(n)-A000007(n)` -/
def P6655850049941414167.Spec : Prop :=
  ∀ n, P6655850049941414167.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P2105866076772159615

`A000984(n)*A155559(n)`
-/

namespace A069722.P2105866076772159615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A155559 n

end

end A069722.P2105866076772159615

namespace A069722

/-- `A000984(n)*A155559(n)` -/
def P2105866076772159615.Spec : Prop :=
  ∀ n, P2105866076772159615.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P9989184363563976942

`A028329(n)*A131577(n)`
-/

namespace A069722.P9989184363563976942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n * A131577 n

end

end A069722.P9989184363563976942

namespace A069722

/-- `A028329(n)*A131577(n)` -/
def P9989184363563976942.Spec : Prop :=
  ∀ n, P9989184363563976942.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P13771918743214758170

`A100320(n)*A131577(n)`
-/

namespace A069722.P13771918743214758170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n * A131577 n

end

end A069722.P13771918743214758170

namespace A069722

/-- `A100320(n)*A131577(n)` -/
def P13771918743214758170.Spec : Prop :=
  ∀ n, P13771918743214758170.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P14770996116063892298

`record[A109045(n)]*A052701(n)`
-/

namespace A069722.P14770996116063892298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A052701 n

end

end A069722.P14770996116063892298

namespace A069722

/-- `record[A109045(n)]*A052701(n)` -/
def P14770996116063892298.Spec : Prop :=
  ∀ n, P14770996116063892298.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P16839399802726184316

`2*A000984(n)*A131577(n)`
-/

namespace A069722.P16839399802726184316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000984 n * A131577 n)

end

end A069722.P16839399802726184316

namespace A069722

/-- `2*A000984(n)*A131577(n)` -/
def P16839399802726184316.Spec : Prop :=
  ∀ n, P16839399802726184316.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P11859515172210249551

`A126869(2*n)*A155559(n)`
-/

namespace A069722.P11859515172210249551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) * A155559 n

end

end A069722.P11859515172210249551

namespace A069722

/-- `A126869(2*n)*A155559(n)` -/
def P11859515172210249551.Spec : Prop :=
  ∀ n, P11859515172210249551.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P2605795847393890516

`A059304(n)-A010051(2*(n+1))`
-/

namespace A069722.P2605795847393890516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059304 n - A010051 (2 * (n + 1))

end

end A069722.P2605795847393890516

namespace A069722

/-- `A059304(n)-A010051(2*(n+1))` -/
def P2605795847393890516.Spec : Prop :=
  ∀ n, P2605795847393890516.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P12797188740447359734

`2*(A059304(n)-A069723(n+1))`
-/

namespace A069722.P12797188740447359734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059304 n - A069723 (n + 1))

end

end A069722.P12797188740447359734

namespace A069722

/-- `2*(A059304(n)-A069723(n+1))` -/
def P12797188740447359734.Spec : Prop :=
  ∀ n, P12797188740447359734.a n = A069722 (n + 1)

end A069722

/-! ## A069722.P8870394791458534425

`A155559(n)*A210736(2*n+1)`
-/

namespace A069722.P8870394791458534425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n * A210736 (2 * n + 1)

end

end A069722.P8870394791458534425

namespace A069722

/-- `A155559(n)*A210736(2*n+1)` -/
def P8870394791458534425.Spec : Prop :=
  ∀ n, P8870394791458534425.a n = A069722 (n + 1)

end A069722

/-!
# A069723: a(n) = 2^(n-1)*binomial(2*n-3, n-1).

The programs for A069723, the canonical program `A069723.P7209051585346191421` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069723 has offset 1).

The definition of A069723 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069723.P7209051585346191421

`2^n*A088218(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069723

/-- `2^n*A088218(n)` -/
def P7209051585346191421.Spec : Prop :=
  ∀ n, P7209051585346191421.a n = A069723 (n + 1)

theorem P7209051585346191421.correct : P7209051585346191421.Spec := by
  intro n
  simp only [A069723, Nat.add_sub_cancel]

end A069723

/-! ## A069723.P6575893035927054724

`(8-4/n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A069723.P6575893035927054724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (8 - 4 / (n : ℚ)) * a (n - 1)

end

end A069723.P6575893035927054724

namespace A069723

/-- `(8-4/n)*a(n-1)` -/
def P6575893035927054724.Spec : Prop :=
  ∀ n, P6575893035927054724.a n = (A069723 (n + 1) : ℚ)

end A069723

/-! ## A069723.P912488303555541043

`2^n*C(abs(1-2*n), n)`
-/

namespace A069723.P912488303555541043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose |1 - (2 * n : ℤ)|.toNat n

end

end A069723.P912488303555541043

namespace A069723

/-- `2^n*C(abs(1-2*n), n)` -/
def P912488303555541043.Spec : Prop :=
  ∀ n, (P912488303555541043.a n : ℤ) = A069723 (n + 1)

end A069723

/-! ## A069723.P1040303473011588684

`ceil(2^(n-1)*C(2*n, n))`
-/

namespace A069723.P1040303473011588684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n) n : ℚ)⌉

end

end A069723.P1040303473011588684

namespace A069723

/-- `ceil(2^(n-1)*C(2*n, n))` -/
def P1040303473011588684.Spec : Prop :=
  ∀ n, P1040303473011588684.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P354956130012206296

`round(2^(n-1)*C(2*n, n))`
-/

namespace A069723.P354956130012206296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n) n : ℚ))

end

end A069723.P354956130012206296

namespace A069723

/-- `round(2^(n-1)*C(2*n, n))` -/
def P354956130012206296.Spec : Prop :=
  ∀ n, P354956130012206296.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P17891418262976475008

`2*2*(2-n^(-1))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A069723.P17891418262976475008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1)))

end

end A069723.P17891418262976475008

namespace A069723

/-- `2*2*(2-n^(-1))*a(n-1)` -/
def P17891418262976475008.Spec : Prop :=
  ∀ n, P17891418262976475008.a n = (A069723 (n + 1) : ℚ)

end A069723

/-! ## A069723.P10514550560388919341

`A128413(∑[n])`
-/

namespace A069723.P10514550560388919341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128413 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069723.P10514550560388919341

namespace A069723

/-- `A128413(∑[n])` -/
def P10514550560388919341.Spec : Prop :=
  ∀ n, P10514550560388919341.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P5962634417997629244

`record[A128413(n)]`
-/

namespace A069723.P5962634417997629244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069723.P5962634417997629244

namespace A069723

/-- `record[A128413(n)]` -/
def P5962634417997629244.Spec : Prop :=
  ∀ n, P5962634417997629244.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P13956017441840225705

`ceil(A059304(n)/2)`
-/

namespace A069723.P13956017441840225705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059304 n : ℚ) / 2⌉

end

end A069723.P13956017441840225705

namespace A069723

/-- `ceil(A059304(n)/2)` -/
def P13956017441840225705.Spec : Prop :=
  ∀ n, P13956017441840225705.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P8377966906962962171

`abs(A122496(∑[n+1]))`
-/

namespace A069723.P8377966906962962171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122496 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A069723.P8377966906962962171

namespace A069723

/-- `abs(A122496(∑[n+1]))` -/
def P8377966906962962171.Spec : Prop :=
  ∀ n, P8377966906962962171.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P16803554064201179676

`ceil(A098660(2*n)/2)`
-/

namespace A069723.P16803554064201179676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098660 (2 * n) : ℚ) / 2⌉

end

end A069723.P16803554064201179676

namespace A069723

/-- `ceil(A098660(2*n)/2)` -/
def P16803554064201179676.Spec : Prop :=
  ∀ n, P16803554064201179676.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P7268785169295066940

`abs(2^n*A110556(n))`
-/

namespace A069723.P7268785169295066940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A110556 n|

end

end A069723.P7268785169295066940

namespace A069723

/-- `abs(2^n*A110556(n))` -/
def P7268785169295066940.Spec : Prop :=
  ∀ n, P7268785169295066940.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P14239492542992082534

`C(2*n, n)*A011782(n)`
-/

namespace A069723.P14239492542992082534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A011782 n

end

end A069723.P14239492542992082534

namespace A069723

/-- `C(2*n, n)*A011782(n)` -/
def P14239492542992082534.Spec : Prop :=
  ∀ n, P14239492542992082534.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P2637188713656605237

`Δ[floor(2^(n-1))]*A000984(n)`
-/

namespace A069723.P2637188713656605237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000984 n

end

end A069723.P2637188713656605237

namespace A069723

/-- `Δ[floor(2^(n-1))]*A000984(n)` -/
def P2637188713656605237.Spec : Prop :=
  ∀ n, P2637188713656605237.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P12015280115017021342

`ceil(2^(n-1))*A028329(n)/2`
-/

namespace A069723.P12015280115017021342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A028329 n : ℚ) / 2

end

end A069723.P12015280115017021342

namespace A069723

/-- `ceil(2^(n-1))*A028329(n)/2` -/
def P12015280115017021342.Spec : Prop :=
  ∀ n, P12015280115017021342.a n = (A069723 (n + 1) : ℚ)

end A069723

/-! ## A069723.P14344483232009977268

`C(abs(1-2*n), n)*A000079(n)`
-/

namespace A069723.P14344483232009977268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose |1 - (2 * n : ℤ)|.toNat n : ℤ) * A000079 n

end

end A069723.P14344483232009977268

namespace A069723

/-- `C(abs(1-2*n), n)*A000079(n)` -/
def P14344483232009977268.Spec : Prop :=
  ∀ n, P14344483232009977268.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P12048651982765371399

`(n+1)*ceil(2^(n-1))*A000108(n)`
-/

namespace A069723.P12048651982765371399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A000108 n

end

end A069723.P12048651982765371399

namespace A069723

/-- `(n+1)*ceil(2^(n-1))*A000108(n)` -/
def P12048651982765371399.Spec : Prop :=
  ∀ n, P12048651982765371399.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P16050166745250541128

`A000984(n)*A011782(n)`
-/

namespace A069723.P16050166745250541128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A011782 n

end

end A069723.P16050166745250541128

namespace A069723

/-- `A000984(n)*A011782(n)` -/
def P16050166745250541128.Spec : Prop :=
  ∀ n, P16050166745250541128.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P4242265810134063009

`A110556(n)*A122803(n)`
-/

namespace A069723.P4242265810134063009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A122803 n

end

end A069723.P4242265810134063009

namespace A069723

/-- `A110556(n)*A122803(n)` -/
def P4242265810134063009.Spec : Prop :=
  ∀ n, P4242265810134063009.a n = A069723 (n + 1)

end A069723

/-! ## A069723.P14353442291542734160

`A115140(n)*A143126(n)`
-/

namespace A069723.P14353442291542734160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n * A143126 n

end

end A069723.P14353442291542734160

namespace A069723

/-- `A115140(n)*A143126(n)` -/
def P14353442291542734160.Spec : Prop :=
  ∀ n, P14353442291542734160.a n = A069723 (n + 1)

end A069723

/-!
# A069724: Number of nonisomorphic unrooted unicursal planar maps with n edges (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

The programs for A069724, there is no canonical definition to state claims against.
-/

/-! ## A069724.P8566790943101781764

`A069730(n+1)-A069727(n+1)`
-/

namespace A069724.P8566790943101781764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069730 (n + 1) - A069727 (n + 1)

end

end A069724.P8566790943101781764

/-! ## A069724.P8566856820447114148

`A267806(A307557(2*n)+n)`
-/

namespace A069724.P8566856820447114148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (A307557 (2 * n) + (n : ℤ)).toNat

end

end A069724.P8566856820447114148

/-!
# A069725: Number of nonisomorphic unrooted unicursal planar maps with n edges and two vertices of valency 1 (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

The programs for A069725, there is no canonical definition to state claims against.
-/

/-! ## A069725.P15217310597864499723

`A277193(A226316(n))`
-/

namespace A069725.P15217310597864499723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A226316 n).toNat

end

end A069725.P15217310597864499723

/-! ## A069725.P10629094819290093027

`A066194((1-(∑{d}[n, 2-#]-n))^A238279(n))`
-/

namespace A069725.P10629094819290093027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (SequenceMachineLib.roundAway (((1 - (∑ d ∈ Nat.divisors (f1 n), (2 - (d : ℤ)) - (n : ℤ)) : ℤ) : ℚ) ^ (A238279 n : ℤ))).toNat

end

end A069725.P10629094819290093027

/-!
# A069726: Number of rooted planar bi-Eulerian maps with 2n edges. Bi-Eulerian: all its vertices and faces are of even valency.

The programs for A069726, there is no canonical definition to state claims against.
-/

/-! ## A069726.P12973008243928497785

`ceil(3^n/3*A000139(n))`
-/

namespace A069726.P12973008243928497785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) / 3 * (A000139 n : ℚ)⌉

end

end A069726.P12973008243928497785

/-! ## A069726.P3277256519770519926

`A000139(A028310(n))*A133494(n)`
-/

namespace A069726.P3277256519770519926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 (A028310 n).toNat * A133494 n

end

end A069726.P3277256519770519926

/-! ## A069726.P13895563712726188069

`A000139(A123108(2*n))*A133494(n)`
-/

namespace A069726.P13895563712726188069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 (A123108 (2 * n)).toNat * A133494 n

end

end A069726.P13895563712726188069

/-! ## A069726.P10445200030231054484

`A006013(n)/A016777(n)*A025192(n)`
-/

namespace A069726.P10445200030231054484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006013 n : ℚ) / (A016777 n : ℚ) * (A025192 n : ℚ)

end

end A069726.P10445200030231054484

/-! ## A069726.P12448700626744839275

`A001764(n)/A027261(n)*A025192(n)²`
-/

namespace A069726.P12448700626744839275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n : ℚ) / (A027261 n : ℚ) * (A025192 n ^ 2 : ℚ)

end

end A069726.P12448700626744839275

/-!
# A069727: Number of nonisomorphic unrooted Eulerian planar maps with n edges (Eulerian means that all vertices are of even valency; there is an Eulerian cycle).

The programs for A069727, there is no canonical definition to state claims against.
-/

/-! ## A069727.P959295610712153106

`A002264(A192008(n+1)+2+n)`
-/

namespace A069727.P959295610712153106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A192008 (n + 1) + 2 + (n : ℤ)).toNat

end

end A069727.P959295610712153106

/-! ## A069727.P3202008175548146452

`A002264(A192008(n+1)+A151800(n))`
-/

namespace A069727.P3202008175548146452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A192008 (n + 1) + A151800 n).toNat

end

end A069727.P3202008175548146452

/-! ## A069727.P9697973639559025660

`A165707(ceil(2^(n-1))+floor(n/4))`
-/

namespace A069727.P9697973639559025660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165707 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ⌊(n : ℚ) / 4⌋).toNat

end

end A069727.P9697973639559025660

/-!
# A069728: Number of rooted non-separable Eulerian planar maps with n edges.

The programs for A069728, there is no canonical definition to state claims against.
-/

/-! ## A069728.P13989206775815583418

`A008676(or(10, A263790(n)))`
-/

namespace A069728.P13989206775815583418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.lor 10 (A263790 n)).toNat

end

end A069728.P13989206775815583418

/-! ## A069728.P13565836401221485478

`A248227(ceil(A148802(n)/10))`
-/

namespace A069728.P13565836401221485478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 ⌈(A148802 n : ℚ) / 10⌉.toNat

end

end A069728.P13565836401221485478

/-! ## A069728.P14611557107107052723

`floor(A187183(A180718(n))/3)+1`
-/

namespace A069728.P14611557107107052723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187183 (A180718 n).toNat : ℚ) / 3⌋ + 1

end

end A069728.P14611557107107052723

/-! ## A069728.P7247472582393231900

`ceil(∏[A175242(3^n)]/A287560(3*(n+1)))`
-/

namespace A069728.P7247472582393231900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A287560 (3 * (n + 1)) : ℚ)⌉

end

end A069728.P7247472582393231900

/-! ## A069728.P4385027236645336522

`ceil(A329394(2*n+3)/A329389(3*n+4))`
-/

namespace A069728.P4385027236645336522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A329394 (2 * n + 3) : ℚ) / (A329389 (3 * n + 4) : ℚ)⌉

end

end A069728.P4385027236645336522

/-!
# A069729: Number of rooted non-separable bi-Eulerian planar maps with 2n edges. Bi-Eulerian means all its vertices and faces are of even valency.

The programs for A069729, there is no canonical definition to state claims against.
-/

/-! ## A069729.P857391698989221405

`2*A358577(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A069729.P857391698989221405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A358577 (a (n - 1)).toNat

end

end A069729.P857391698989221405

/-! ## A069729.P11966044816755288418

`A316899(A014112(n+1))`
-/

namespace A069729.P11966044816755288418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316899 (A014112 (n + 1)).toNat

end

end A069729.P11966044816755288418

/-!
# A069730: Number of nonisomorphic unrooted unicursal planar maps with n edges.

The programs for A069730, there is no canonical definition to state claims against.
-/

/-! ## A069730.P6746768931320231989

`A260734(∑[A000257(n)])`
-/

namespace A069730.P6746768931320231989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069730.P6746768931320231989

/-! ## A069730.P14637402686303912623

`∑[A122651(A317104(n))]`
-/

namespace A069730.P14637402686303912623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A317104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069730.P14637402686303912623

/-!
# A069731: Number of unicursal planar maps with n edges rooted at a vertex of odd valency (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

The programs for A069731, the canonical program `A069731.P5511356938192013011` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069731 has offset 1).

The definition of A069731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069731.P5511356938192013011

`2^(n-1)*A000108(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069731

/-- `2^(n-1)*A000108(n+2)` -/
def P5511356938192013011.Spec : Prop :=
  ∀ n, P5511356938192013011.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P9218841942114695093

`C(2*n+3, n)/(n+1)*2^n`
-/

namespace A069731.P9218841942114695093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A069731.P9218841942114695093

namespace A069731

/-- `C(2*n+3, n)/(n+1)*2^n` -/
def P9218841942114695093.Spec : Prop :=
  ∀ n, P9218841942114695093.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P11391046290042522494

`record[(2-3/n)*4*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A069731.P11391046290042522494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  (2 - 3 / (n : ℚ)) * (4 * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069731.P11391046290042522494

namespace A069731

/-- `record[(2-3/n)*4*a(n-1)]` -/
def P11391046290042522494.Spec : Prop :=
  ∀ n, P11391046290042522494.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P8924081207257828716

`2^(n-2)*A068875(n+2)`
-/

namespace A069731.P8924081207257828716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A068875 (n + 2) : ℚ)

end

end A069731.P8924081207257828716

namespace A069731

/-- `2^(n-2)*A068875(n+2)` -/
def P8924081207257828716.Spec : Prop :=
  ∀ n, P8924081207257828716.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P9222522194884036719

`2^(n-1)*A120588(n+3)`
-/

namespace A069731.P9222522194884036719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A120588 (n + 3) : ℚ)

end

end A069731.P9222522194884036719

namespace A069731

/-- `2^(n-1)*A120588(n+3)` -/
def P9222522194884036719.Spec : Prop :=
  ∀ n, P9222522194884036719.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P3763347811360554580

`2^(n-2)*A228403(n+2)`
-/

namespace A069731.P3763347811360554580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A228403 (n + 2) : ℚ)

end

end A069731.P3763347811360554580

namespace A069731

/-- `2^(n-2)*A228403(n+2)` -/
def P3763347811360554580.Spec : Prop :=
  ∀ n, P3763347811360554580.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P16291112375069441084

`2^(n-2)*A262543(n+3)`
-/

namespace A069731.P16291112375069441084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A262543 (n + 3) : ℚ)

end

end A069731.P16291112375069441084

namespace A069731

/-- `2^(n-2)*A262543(n+3)` -/
def P16291112375069441084.Spec : Prop :=
  ∀ n, P16291112375069441084.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P16091159456703332559

`2^(n-1)*A028304(2*(n+2))`
-/

namespace A069731.P16091159456703332559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A028304 (2 * (n + 2)) : ℚ)

end

end A069731.P16091159456703332559

namespace A069731

/-- `2^(n-1)*A028304(2*(n+2))` -/
def P16091159456703332559.Spec : Prop :=
  ∀ n, P16091159456703332559.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P4031067749286724388

`2*ratio[A000108(n+1)]*a(n-1)` with `a(0)=1`
-/

namespace A069731.P4031067749286724388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * a (n - 1)

end

end A069731.P4031067749286724388

namespace A069731

/-- `2*ratio[A000108(n+1)]*a(n-1)` -/
def P4031067749286724388.Spec : Prop :=
  ∀ n, P4031067749286724388.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P9577180906258767501

`record[A000108(n+1)*A034008(n)]`
-/

namespace A069731.P9577180906258767501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069731.P9577180906258767501

namespace A069731

/-- `record[A000108(n+1)*A034008(n)]` -/
def P9577180906258767501.Spec : Prop :=
  ∀ n, P9577180906258767501.a n = A069731 (n + 1)

end A069731

/-! ## A069731.P9708349619940297589

`A052701(n+2)-A000257(n+1)`
-/

namespace A069731.P9708349619940297589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 (n + 2) - A000257 (n + 1)

end

end A069731.P9708349619940297589

namespace A069731

/-- `A052701(n+2)-A000257(n+1)` -/
def P9708349619940297589.Spec : Prop :=
  ∀ n, P9708349619940297589.a n = A069731 (n + 1)

end A069731

/-! ## A069731.P15224153878410494044

`A000108(n+2)/2*Δ[A000225(n)]`
-/

namespace A069731.P15224153878410494044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 2) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A069731.P15224153878410494044

namespace A069731

/-- `A000108(n+2)/2*Δ[A000225(n)]` -/
def P15224153878410494044.Spec : Prop :=
  ∀ n, P15224153878410494044.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P14996554849226913332

`2*A000108(n+2)*A000079(n)/4`
-/

namespace A069731.P14996554849226913332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000108 (n + 2) * A000079 n : ℚ) / 4)

end

end A069731.P14996554849226913332

namespace A069731

/-- `2*A000108(n+2)*A000079(n)/4` -/
def P14996554849226913332.Spec : Prop :=
  ∀ n, P14996554849226913332.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P14563370433849574059

`A003645(n+1)/4`
-/

namespace A069731.P14563370433849574059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003645 (n + 1) : ℚ) / 4

end

end A069731.P14563370433849574059

namespace A069731

/-- `A003645(n+1)/4` -/
def P14563370433849574059.Spec : Prop :=
  ∀ n, P14563370433849574059.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P6113396492955218659

`A151374(n+2)/8`
-/

namespace A069731.P6113396492955218659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151374 (n + 2) : ℚ) / 8

end

end A069731.P6113396492955218659

namespace A069731

/-- `A151374(n+2)/8` -/
def P6113396492955218659.Spec : Prop :=
  ∀ n, P6113396492955218659.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P18604252716453935

`A052701(n+3)/8`
-/

namespace A069731.P18604252716453935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052701 (n + 3) : ℚ) / 8

end

end A069731.P18604252716453935

namespace A069731

/-- `A052701(n+3)/8` -/
def P18604252716453935.Spec : Prop :=
  ∀ n, P18604252716453935.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P6045573802813915124

`A115125(n+3)/16`
-/

namespace A069731.P6045573802813915124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115125 (n + 3) : ℚ) / 16

end

end A069731.P6045573802813915124

namespace A069731

/-- `A115125(n+3)/16` -/
def P6045573802813915124.Spec : Prop :=
  ∀ n, P6045573802813915124.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P406125382348030991

`A167432(∑[n+1])/4`
-/

namespace A069731.P406125382348030991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167432 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A069731.P406125382348030991

namespace A069731

/-- `A167432(∑[n+1])/4` -/
def P406125382348030991.Spec : Prop :=
  ∀ n, P406125382348030991.a n = (A069731 (n + 1) : ℚ)

end A069731

/-! ## A069731.P10974247828601917721

`A201639(∑[n+1])/4`
-/

namespace A069731.P10974247828601917721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201639 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A069731.P10974247828601917721

namespace A069731

/-- `A201639(∑[n+1])/4` -/
def P10974247828601917721.Spec : Prop :=
  ∀ n, P10974247828601917721.a n = (A069731 (n + 1) : ℚ)

end A069731

/-!
# A069732: Number of nonisomorphic unrooted unicursal planar maps with n edges and no vertices of valency 1 (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

The programs for A069732, there is no canonical definition to state claims against.
-/

/-! ## A069732.P15788298418085711130

`A294860(floor(n^n/n!))-2`
-/

namespace A069732.P15788298418085711130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294860 ⌊(n ^ n : ℚ) / (Nat.factorial n : ℚ)⌋.toNat - 2

end

end A069732.P15788298418085711130

/-! ## A069732.P16454592577487607494

`floor((n-2)*A092329(n+3)/ϕ)+2`
-/

namespace A069732.P16454592577487607494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℝ) * ((A092329 (n + 3) : ℝ) / Real.goldenRatio)⌋ + 2

end

end A069732.P16454592577487607494

/-!
# A069733: Number of divisors d of n such that d or n/d is odd. Number of non-orientable coverings of the Klein bottle with n lists.

The programs for A069733, the canonical program `A069733.P5802744394708498839` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069733 has offset 1).

The definition of A069733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069733.P5802744394708498839

`A000005(A259445(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A069733

/-- `A000005(A259445(n+1))` -/
def P5802744394708498839.Spec : Prop :=
  ∀ n, P5802744394708498839.a n = A069733 (n + 1)

theorem P5802744394708498839.correct : P5802744394708498839.Spec := by
  intro n
  simp only [A069733, Nat.add_sub_cancel]

end A069733

/-! ## A069733.P9838279909278578295

`(and(1, n)+1)*∑{d}[n+1, #%2]`
-/

namespace A069733.P9838279909278578295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) * (∑ d ∈ Nat.divisors (f1 n), d % 2)

end

end A069733.P9838279909278578295

namespace A069733

/-- `(and(1, n)+1)*∑{d}[n+1, #%2]` -/
def P9838279909278578295.Spec : Prop :=
  ∀ n, (P9838279909278578295.a n : ℤ) = A069733 (n + 1)

end A069733

/-! ## A069733.P5675688898004104279

`∑{d}[n+1, A166486(#)]`
-/

namespace A069733.P5675688898004104279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166486 d

end

end A069733.P5675688898004104279

namespace A069733

/-- `∑{d}[n+1, A166486(#)]` -/
def P5675688898004104279.Spec : Prop :=
  ∀ n, P5675688898004104279.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P2080385188260529630

`A054844(n+1)/gcd(2, n)`
-/

namespace A069733.P2080385188260529630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A069733.P2080385188260529630

namespace A069733

/-- `A054844(n+1)/gcd(2, n)` -/
def P2080385188260529630.Spec : Prop :=
  ∀ n, P2080385188260529630.a n = (A069733 (n + 1) : ℚ)

end A069733

/-! ## A069733.P17950834064660293579

`(n%2+1)*A001227(n+1)`
-/

namespace A069733.P17950834064660293579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A001227 (n + 1)

end

end A069733.P17950834064660293579

namespace A069733

/-- `(n%2+1)*A001227(n+1)` -/
def P17950834064660293579.Spec : Prop :=
  ∀ n, P17950834064660293579.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P8091867694054388718

`A000005(lcm((n+1)/and(n+1, -(n+1)), ∏{p}[n+1, #]))`
-/

namespace A069733.P8091867694054388718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A069733.P8091867694054388718

namespace A069733

/-- `A000005(lcm((n+1)/and(n+1, -(n+1)), ∏{p}[n+1, #]))` -/
def P8091867694054388718.Spec : Prop :=
  ∀ n, P8091867694054388718.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P12095826644425814417

`A000034(n)*A001227(n+1)`
-/

namespace A069733.P12095826644425814417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A001227 (n + 1)

end

end A069733.P12095826644425814417

namespace A069733

/-- `A000034(n)*A001227(n+1)` -/
def P12095826644425814417.Spec : Prop :=
  ∀ n, P12095826644425814417.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P14342301762796919168

`∑{d}[A259445(n+1), A160467(#)]`
-/

namespace A069733.P14342301762796919168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A160467 d

end

end A069733.P14342301762796919168

namespace A069733

/-- `∑{d}[A259445(n+1), A160467(#)]` -/
def P14342301762796919168.Spec : Prop :=
  ∀ n, P14342301762796919168.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P16889968859826341904

`A369257(n+1)+A353235(n+1)`
-/

namespace A069733.P16889968859826341904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369257 (n + 1) + A353235 (n + 1)

end

end A069733.P16889968859826341904

namespace A069733

/-- `A369257(n+1)+A353235(n+1)` -/
def P16889968859826341904.Spec : Prop :=
  ∀ n, P16889968859826341904.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P7351602560153926491

`A066660(n+1)-A338117(n+1)`
-/

namespace A069733.P7351602560153926491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) - A338117 (n + 1)

end

end A069733.P7351602560153926491

namespace A069733

/-- `A066660(n+1)-A338117(n+1)` -/
def P7351602560153926491.Spec : Prop :=
  ∀ n, P7351602560153926491.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P2293172751190552281

`A099777(n+1)-A320111(n+1)`
-/

namespace A069733.P2293172751190552281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A320111 (n + 1)

end

end A069733.P2293172751190552281

namespace A069733

/-- `A099777(n+1)-A320111(n+1)` -/
def P2293172751190552281.Spec : Prop :=
  ∀ n, P2293172751190552281.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P11152178482084651208

`A133700(n+1)-A339010(n+1)`
-/

namespace A069733.P11152178482084651208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (n + 1) - A339010 (n + 1)

end

end A069733.P11152178482084651208

namespace A069733

/-- `A133700(n+1)-A339010(n+1)` -/
def P11152178482084651208.Spec : Prop :=
  ∀ n, P11152178482084651208.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P3648410047736211994

`(A000035(n)+1)*A001227(n+1)`
-/

namespace A069733.P3648410047736211994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A001227 (n + 1)

end

end A069733.P3648410047736211994

namespace A069733

/-- `(A000035(n)+1)*A001227(n+1)` -/
def P3648410047736211994.Spec : Prop :=
  ∀ n, P3648410047736211994.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P18142210667919001662

`A001227(n+1)*A040001(n+1)`
-/

namespace A069733.P18142210667919001662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A040001 (n + 1)

end

end A069733.P18142210667919001662

namespace A069733

/-- `A001227(n+1)*A040001(n+1)` -/
def P18142210667919001662.Spec : Prop :=
  ∀ n, P18142210667919001662.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P12232812192463160589

`A000005((n+1)/A160467(n+1))`
-/

namespace A069733.P12232812192463160589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A160467 (n + 1) : ℚ))).toNat

end

end A069733.P12232812192463160589

namespace A069733

/-- `A000005((n+1)/A160467(n+1))` -/
def P12232812192463160589.Spec : Prop :=
  ∀ n, P12232812192463160589.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P5439489797799779163

`(2-A059841(n))*A001227(n+1)`
-/

namespace A069733.P5439489797799779163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A001227 (n + 1)

end

end A069733.P5439489797799779163

namespace A069733

/-- `(2-A059841(n))*A001227(n+1)` -/
def P5439489797799779163.Spec : Prop :=
  ∀ n, P5439489797799779163.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P2933753975625485745

`A054844(n+1)/(2-A000035(n))`
-/

namespace A069733.P2933753975625485745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / (2 - A000035 n : ℚ)

end

end A069733.P2933753975625485745

namespace A069733

/-- `A054844(n+1)/(2-A000035(n))` -/
def P2933753975625485745.Spec : Prop :=
  ∀ n, P2933753975625485745.a n = (A069733 (n + 1) : ℚ)

end A069733

/-! ## A069733.P12747438978542008299

`A000005(2*(n+1))-A320111(n+1)`
-/

namespace A069733.P12747438978542008299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A320111 (n + 1)

end

end A069733.P12747438978542008299

namespace A069733

/-- `A000005(2*(n+1))-A320111(n+1)` -/
def P12747438978542008299.Spec : Prop :=
  ∀ n, P12747438978542008299.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P9813340050689269034

`A000005((n+1)/A000010(2^val(n+1, 2)))`
-/

namespace A069733.P9813340050689269034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ))).toNat

end

end A069733.P9813340050689269034

namespace A069733

/-- `A000005((n+1)/A000010(2^val(n+1, 2)))` -/
def P9813340050689269034.Spec : Prop :=
  ∀ n, P9813340050689269034.a n = A069733 (n + 1)

end A069733

/-! ## A069733.P9316783325366344155

`∑{d}[n+1, A002654(#)*A284059((n+1)/#)]`
-/

namespace A069733.P9316783325366344155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A284059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069733.P9316783325366344155

namespace A069733

/-- `∑{d}[n+1, A002654(#)*A284059((n+1)/#)]` -/
def P9316783325366344155.Spec : Prop :=
  ∀ n, P9316783325366344155.a n = A069733 (n + 1)

end A069733

/-!
# A069734: Number of pairs (p,q), 0<=p<=q, such that p+q divides n.

The programs for A069734, the canonical program `A069734.P4700367911549090281` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069734 has offset 1).

The definition of A069734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069734.P4700367911549090281

`(A000203(n+1)+A069735(n+1))/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A069734

/-- `(A000203(n+1)+A069735(n+1))/2` -/
def P4700367911549090281.Spec : Prop :=
  ∀ n, P4700367911549090281.a n = (A069734 (n + 1) : ℚ)

end A069734

/-! ## A069734.P15659135209580630421

`(A007503(n+1)+A183063(n+1))/2`
-/

namespace A069734.P15659135209580630421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (n + 1) + A183063 (n + 1) : ℚ) / 2

end

end A069734.P15659135209580630421

namespace A069734

/-- `(A007503(n+1)+A183063(n+1))/2` -/
def P15659135209580630421.Spec : Prop :=
  ∀ n, P15659135209580630421.a n = (A069734 (n + 1) : ℚ)

end A069734

/-! ## A069734.P2120068386001245250

`A046524(2*(n+1))-A069733(2*(n+1))`
-/

namespace A069734.P2120068386001245250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046524 (2 * (n + 1)) - A069733 (2 * (n + 1))

end

end A069734.P2120068386001245250

namespace A069734

/-- `A046524(2*(n+1))-A069733(2*(n+1))` -/
def P2120068386001245250.Spec : Prop :=
  ∀ n, P2120068386001245250.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P3564894388827705348

`∑{d}[n+1, ceil(cosh(log(#)))]`
-/

namespace A069734.P3564894388827705348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.cosh (Real.log (d : ℝ))⌉

end

end A069734.P3564894388827705348

namespace A069734

/-- `∑{d}[n+1, ceil(cosh(log(#)))]` -/
def P3564894388827705348.Spec : Prop :=
  ∀ n, P3564894388827705348.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P512831128001422957

`∑{d}[n+1, floor(#/2)+1]`
-/

namespace A069734.P512831128001422957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (⌊(d : ℚ) / 2⌋ + 1)

end

end A069734.P512831128001422957

namespace A069734

/-- `∑{d}[n+1, floor(#/2)+1]` -/
def P512831128001422957.Spec : Prop :=
  ∀ n, P512831128001422957.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P7935282956101392741

`A000027(∑{d}[n+1, A008619(#)])`
-/

namespace A069734.P7935282956101392741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), A008619 d).toNat

end

end A069734.P7935282956101392741

namespace A069734

/-- `A000027(∑{d}[n+1, A008619(#)])` -/
def P7935282956101392741.Spec : Prop :=
  ∀ n, P7935282956101392741.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P16460986330299403240

`A086670(n+1)+A000005(n+1)`
-/

namespace A069734.P16460986330299403240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (n + 1) + A000005 (n + 1)

end

end A069734.P16460986330299403240

namespace A069734

/-- `A086670(n+1)+A000005(n+1)` -/
def P16460986330299403240.Spec : Prop :=
  ∀ n, P16460986330299403240.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P11292283327251731579

`A183063(n+1)+A079247(n+1)`
-/

namespace A069734.P11292283327251731579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A079247 (n + 1)

end

end A069734.P11292283327251731579

namespace A069734

/-- `A183063(n+1)+A079247(n+1)` -/
def P11292283327251731579.Spec : Prop :=
  ∀ n, P11292283327251731579.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P12338322598736335655

`A007503(n+1)-A079247(n+1)`
-/

namespace A069734.P12338322598736335655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A079247 (n + 1)

end

end A069734.P12338322598736335655

namespace A069734

/-- `A007503(n+1)-A079247(n+1)` -/
def P12338322598736335655.Spec : Prop :=
  ∀ n, P12338322598736335655.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P5668472795972478463

`A000203(n+1)-A367588(n+1)`
-/

namespace A069734.P5668472795972478463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A367588 (n + 1)

end

end A069734.P5668472795972478463

namespace A069734

/-- `A000203(n+1)-A367588(n+1)` -/
def P5668472795972478463.Spec : Prop :=
  ∀ n, P5668472795972478463.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P10090594404764900729

`A000005(n+1)+A367588(n+1)+A183063(n+1)`
-/

namespace A069734.P10090594404764900729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A367588 (n + 1) + A183063 (n + 1))

end

end A069734.P10090594404764900729

namespace A069734

/-- `A000005(n+1)+A367588(n+1)+A183063(n+1)` -/
def P10090594404764900729.Spec : Prop :=
  ∀ n, P10090594404764900729.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P5780005038040827820

`A007503(n+1)-(A086670(n+1)+A001227(n+1))`
-/

namespace A069734.P5780005038040827820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - (A086670 (n + 1) + A001227 (n + 1))

end

end A069734.P5780005038040827820

namespace A069734

/-- `A007503(n+1)-(A086670(n+1)+A001227(n+1))` -/
def P5780005038040827820.Spec : Prop :=
  ∀ n, P5780005038040827820.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P8221557033178031541

`A001227(n+1)+A079247(n+1)-A048272(n+1)`
-/

namespace A069734.P8221557033178031541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A079247 (n + 1) - A048272 (n + 1))

end

end A069734.P8221557033178031541

namespace A069734

/-- `A001227(n+1)+A079247(n+1)-A048272(n+1)` -/
def P8221557033178031541.Spec : Prop :=
  ∀ n, P8221557033178031541.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P13937850172054010680

`∑{d}[n+1, A001651(#+1)]-∑{d}[n+1, #]`
-/

namespace A069734.P13937850172054010680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001651 (d + 1) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A069734.P13937850172054010680

namespace A069734

/-- `∑{d}[n+1, A001651(#+1)]-∑{d}[n+1, #]` -/
def P13937850172054010680.Spec : Prop :=
  ∀ n, P13937850172054010680.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P16750654216579061996

`A079247(n+1)-A048272(2*(n+1))`
-/

namespace A069734.P16750654216579061996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) - A048272 (2 * (n + 1))

end

end A069734.P16750654216579061996

namespace A069734

/-- `A079247(n+1)-A048272(2*(n+1))` -/
def P16750654216579061996.Spec : Prop :=
  ∀ n, P16750654216579061996.a n = A069734 (n + 1)

end A069734

/-! ## A069734.P8951487328365718294

`A145393(2*(n+1))-A145393(A000265(n+1))`
-/

namespace A069734.P8951487328365718294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145393 (2 * (n + 1)) - A145393 (A000265 (n + 1)).toNat

end

end A069734.P8951487328365718294

namespace A069734

/-- `A145393(2*(n+1))-A145393(A000265(n+1))` -/
def P8951487328365718294.Spec : Prop :=
  ∀ n, P8951487328365718294.a n = A069734 (n + 1)

end A069734

/-!
# A069735: Number of regular orientable coverings of the Klein bottle with 2n lists.

The programs for A069735, the canonical program `A069735.P7037159933635836489` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069735 has offset 1).

The definition of A069735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069735.P7037159933635836489

`A000005(n+1)+A183063(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069735

/-- `A000005(n+1)+A183063(n+1)` -/
def P7037159933635836489.Spec : Prop :=
  ∀ n, P7037159933635836489.a n = A069735 (n + 1)

theorem P7037159933635836489.correct : P7037159933635836489.Spec := by
  intro n
  simp only [A069735, Nat.add_sub_cancel]

end A069735

/-! ## A069735.P17525258431468111239

`2*A000005(n+1)-A001227(n+1)`
-/

namespace A069735.P17525258431468111239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) - A001227 (n + 1)

end

end A069735.P17525258431468111239

namespace A069735

/-- `2*A000005(n+1)-A001227(n+1)` -/
def P17525258431468111239.Spec : Prop :=
  ∀ n, P17525258431468111239.a n = A069735 (n + 1)

theorem P17525258431468111239.correct : P17525258431468111239.Spec := by
  intro n
  simp only [A069735, Nat.add_sub_cancel, A069735.P17525258431468111239.a, A069735.P7037159933635836489.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069735

/-! ## A069735.P10054446090547926215

`3*A000005(n+1)-A000005(2*(n+1))`
-/

namespace A069735.P10054446090547926215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000005 (n + 1) - A000005 (2 * (n + 1))

end

end A069735.P10054446090547926215

namespace A069735

/-- `3*A000005(n+1)-A000005(2*(n+1))` -/
def P10054446090547926215.Spec : Prop :=
  ∀ n, P10054446090547926215.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P15384267135870985950

`A320111(n+1)+A059841(n+1)*A000005(n+1)`
-/

namespace A069735.P15384267135870985950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) + A059841 (n + 1) * A000005 (n + 1)

end

end A069735.P15384267135870985950

namespace A069735

/-- `A320111(n+1)+A059841(n+1)*A000005(n+1)` -/
def P15384267135870985950.Spec : Prop :=
  ∀ n, P15384267135870985950.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P108584287420342349

`∑{d}[n+1, gcd(2, #)]`
-/

namespace A069735.P108584287420342349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 d

end

end A069735.P108584287420342349

namespace A069735

/-- `∑{d}[n+1, gcd(2, #)]` -/
def P108584287420342349.Spec : Prop :=
  ∀ n, (P108584287420342349.a n : ℤ) = A069735 (n + 1)

end A069735

/-! ## A069735.P644333003695479563

`∑{d}[n+1, 2-#%2]`
-/

namespace A069735.P644333003695479563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - ((d % 2 : ℕ) : ℤ))

end

end A069735.P644333003695479563

namespace A069735

/-- `∑{d}[n+1, 2-#%2]` -/
def P644333003695479563.Spec : Prop :=
  ∀ n, P644333003695479563.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P13345792907853963033

`∑{d}[n+1, 2-and(1, #)]`
-/

namespace A069735.P13345792907853963033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (Nat.land 1 d : ℤ))

end

end A069735.P13345792907853963033

namespace A069735

/-- `∑{d}[n+1, 2-and(1, #)]` -/
def P13345792907853963033.Spec : Prop :=
  ∀ n, P13345792907853963033.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P6141738983836673497

`∑{d}[n+1, -or(#, -2)]`
-/

namespace A069735.P6141738983836673497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-Int.lor (d : ℤ) (-2))

end

end A069735.P6141738983836673497

namespace A069735

/-- `∑{d}[n+1, -or(#, -2)]` -/
def P6141738983836673497.Spec : Prop :=
  ∀ n, P6141738983836673497.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P6457273454964073828

`∑{d}[n+1, (#+1)%2+1]`
-/

namespace A069735.P6457273454964073828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d + 1) % 2 + 1)

end

end A069735.P6457273454964073828

namespace A069735

/-- `∑{d}[n+1, (#+1)%2+1]` -/
def P6457273454964073828.Spec : Prop :=
  ∀ n, (P6457273454964073828.a n : ℤ) = A069735 (n + 1)

end A069735

/-! ## A069735.P7033126490753970954

`∑{d}[n+1, A040001(#)]`
-/

namespace A069735.P7033126490753970954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A040001 d

end

end A069735.P7033126490753970954

namespace A069735

/-- `∑{d}[n+1, A040001(#)]` -/
def P7033126490753970954.Spec : Prop :=
  ∀ n, P7033126490753970954.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P7911925449938944069

`∑{d}[n+1, A134451(#)]`
-/

namespace A069735.P7911925449938944069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A134451 d

end

end A069735.P7911925449938944069

namespace A069735

/-- `∑{d}[n+1, A134451(#)]` -/
def P7911925449938944069.Spec : Prop :=
  ∀ n, P7911925449938944069.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P8030268133188226566

`∑{d}[n+1, sqrt(A040005(#))]`
-/

namespace A069735.P8030268133188226566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A040005 d : ℝ)

end

end A069735.P8030268133188226566

namespace A069735

/-- `∑{d}[n+1, sqrt(A040005(#))]` -/
def P8030268133188226566.Spec : Prop :=
  ∀ n, P8030268133188226566.a n = (A069735 (n + 1) : ℝ)

end A069735

/-! ## A069735.P11468536862287862460

`∑{d}[n+1, A000034(#-1)]`
-/

namespace A069735.P11468536862287862460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1)

end

end A069735.P11468536862287862460

namespace A069735

/-- `∑{d}[n+1, A000034(#-1)]` -/
def P11468536862287862460.Spec : Prop :=
  ∀ n, P11468536862287862460.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P6358031953985795165

`∑{d}[n+1, 4-A020639(3*#)]`
-/

namespace A069735.P6358031953985795165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (4 - A020639 (3 * d))

end

end A069735.P6358031953985795165

namespace A069735

/-- `∑{d}[n+1, 4-A020639(3*#)]` -/
def P6358031953985795165.Spec : Prop :=
  ∀ n, P6358031953985795165.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P17326436520658003430

`A183063(n+1)+Δ[A006218(n)]`
-/

namespace A069735.P17326436520658003430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + (f1 (n + 1) - f1 n)

end

end A069735.P17326436520658003430

namespace A069735

/-- `A183063(n+1)+Δ[A006218(n)]` -/
def P17326436520658003430.Spec : Prop :=
  ∀ n, P17326436520658003430.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P6875078388694440895

`A183063(n+1)+Δ[A054519(n)]`
-/

namespace A069735.P6875078388694440895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + (f1 (n + 1) - f1 n)

end

end A069735.P6875078388694440895

namespace A069735

/-- `A183063(n+1)+Δ[A054519(n)]` -/
def P6875078388694440895.Spec : Prop :=
  ∀ n, P6875078388694440895.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P3849111977920580695

`A325939(n+1)+A066660(n+1)`
-/

namespace A069735.P3849111977920580695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (n + 1) + A066660 (n + 1)

end

end A069735.P3849111977920580695

namespace A069735

/-- `A325939(n+1)+A066660(n+1)` -/
def P3849111977920580695.Spec : Prop :=
  ∀ n, P3849111977920580695.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P16575841694778345887

`A347286(n+1)+A134156(n+1)`
-/

namespace A069735.P16575841694778345887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347286 (n + 1) + A134156 (n + 1)

end

end A069735.P16575841694778345887

namespace A069735

/-- `A347286(n+1)+A134156(n+1)` -/
def P16575841694778345887.Spec : Prop :=
  ∀ n, P16575841694778345887.a n = A069735 (n + 1)

theorem P16575841694778345887.correct : P16575841694778345887.Spec := by
  intro n
  simp only [A069735, Nat.add_sub_cancel, A069735.P16575841694778345887.a, A069735.P7037159933635836489.a, A000005, A000005.P16091521709108585461.a, A134156, A134156.P11875869690967924309.a, A183063, A183063.P14549643650991336837.a, A347286, A347286.P5792309838125408870.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069735

/-! ## A069735.P8210558930867125985

`A060710(n+1)-A000005(n+1)`
-/

namespace A069735.P8210558930867125985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060710 (n + 1) - A000005 (n + 1)

end

end A069735.P8210558930867125985

namespace A069735

/-- `A060710(n+1)-A000005(n+1)` -/
def P8210558930867125985.Spec : Prop :=
  ∀ n, P8210558930867125985.a n = A069735 (n + 1)

end A069735

/-! ## A069735.P7598769099644562239

`A062011(n+1)-A001227(n+1)`
-/

namespace A069735.P7598769099644562239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A001227 (n + 1)

end

end A069735.P7598769099644562239

namespace A069735

/-- `A062011(n+1)-A001227(n+1)` -/
def P7598769099644562239.Spec : Prop :=
  ∀ n, P7598769099644562239.a n = A069735 (n + 1)

theorem P7598769099644562239.correct : P7598769099644562239.Spec := by
  intro n
  simp only [A069735, Nat.add_sub_cancel, A069735.P7598769099644562239.a, A069735.P7037159933635836489.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062011, A062011.P17525320077853469406.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069735

/-!
# A069736: Total number of Eulerian circuits in labeled multigraphs with n edges.

The programs for A069736, the canonical program `A069736.P4531671504838736057` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069736 has offset 0).

The definition of A069736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069736.P4531671504838736057

`(2*n)!/(2^n*n!)*(3^(n+1)-1)/(2*(n+1))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069736

/-- `(2*n)!/(2^n*n!)*(3^(n+1)-1)/(2*(n+1))` -/
def P4531671504838736057.Spec : Prop :=
  ∀ n, P4531671504838736057.a n = (A069736 n : ℚ)

end A069736

/-!
# A069737: Integer quotient defining A068418 is 3.

The programs for A069737, there is no canonical definition to state claims against.
-/

/-! ## A069737.P5113947712936400662

`filter[A068418(n+1), A324903(#)]`
-/

namespace A069737.P5113947712936400662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A069737.P5113947712936400662

/-! ## A069737.P1012185212491890567

`filter[A068418(n+2), A355454(#)]`
-/

namespace A069737.P1012185212491890567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A069737.P1012185212491890567

/-!
# A069738: Number of isomorphism classes of minimal n-extensions of a kind of homeomorphism of the circle.

The programs for A069738, there is no canonical definition to state claims against.
-/

/-! ## A069738.P11744407166557982924

`A057005(n+1)-floor(n/6)`
-/

namespace A069738.P11744407166557982924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057005 (n + 1) - ⌊(n : ℚ) / 6⌋

end

end A069738.P11744407166557982924

/-! ## A069738.P10546326567977277816

`xor(A057005(n+1), A143662(n))`
-/

namespace A069738.P10546326567977277816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057005 (n + 1)) (A143662 n)

end

end A069738.P10546326567977277816

/-! ## A069738.P17522719068044407527

`xor(A057005(n+1), A165655(n))`
-/

namespace A069738.P17522719068044407527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057005 (n + 1)) (A165655 n)

end

end A069738.P17522719068044407527

/-! ## A069738.P7411621113819297157

`A057004(∑[n+2])-A069907(n)`
-/

namespace A069738.P7411621113819297157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (∑ j ∈ Finset.range (n + 1), f1 j) - A069907 n

end

end A069738.P7411621113819297157

/-!
# A069739: Size of the key space for isomorphism verification of circulant graphs of order n.

The programs for A069739, the canonical program `A069739.P7899335367046661581` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069739 has offset 1).

The definition of A069739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069739.P14695023735166251642

`A000108(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A069739.P14695023735166251642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000108 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A069739.P14695023735166251642

namespace A069739

/-- `A000108(A067029(n+1))*a(A028234(n+1)-1)` -/
def P14695023735166251642.Spec : Prop :=
  ∀ n, P14695023735166251642.a n = A069739 (n + 1)

end A069739

/-! ## A069739.P40285278426733484

`A246596(A156552(n+1))`
-/

namespace A069739.P40285278426733484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 (A156552 (n + 1)).toNat

end

end A069739.P40285278426733484

namespace A069739

/-- `A246596(A156552(n+1))` -/
def P40285278426733484.Spec : Prop :=
  ∀ n, P40285278426733484.a n = A069739 (n + 1)

end A069739

/-! ## A069739.P7899335367046661581

`∏{e}[n+1, A000108(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069739

/-- `∏{e}[n+1, A000108(#)]` -/
def P7899335367046661581.Spec : Prop :=
  ∀ n, P7899335367046661581.a n = A069739 (n + 1)

theorem P7899335367046661581.correct : P7899335367046661581.Spec := by
  intro n
  simp only [A069739, Nat.add_sub_cancel]

end A069739

/-! ## A069739.P9482791481978064207

`∏{e}[n+1, A001761(#)/#!]`
-/

namespace A069739.P9482791481978064207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001761 (Nat.factorization (f1 n) p) : ℚ) / (Nat.factorial (Nat.factorization (f1 n) p) : ℚ)

end

end A069739.P9482791481978064207

namespace A069739

/-- `∏{e}[n+1, A001761(#)/#!]` -/
def P9482791481978064207.Spec : Prop :=
  ∀ n, P9482791481978064207.a n = (A069739 (n + 1) : ℚ)

end A069739

/-! ## A069739.P1367221941458429434

`∏{p}[n+1, A000108(val(n+1, #))]`
-/

namespace A069739.P1367221941458429434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000108 (SequenceMachineLib.valuation (n + 1) p)

end

end A069739.P1367221941458429434

namespace A069739

/-- `∏{p}[n+1, A000108(val(n+1, #))]` -/
def P1367221941458429434.Spec : Prop :=
  ∀ n, P1367221941458429434.a n = A069739 (n + 1)

end A069739

/-! ## A069739.P6474283566665569172

`A317848(n+1)/Δ[A006218(n)]`
-/

namespace A069739.P6474283566665569172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317848 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A069739.P6474283566665569172

namespace A069739

/-- `A317848(n+1)/Δ[A006218(n)]` -/
def P6474283566665569172.Spec : Prop :=
  ∀ n, P6474283566665569172.a n = (A069739 (n + 1) : ℚ)

end A069739

/-! ## A069739.P13469990236281126483

`A317848(n+1)/A000005(n+1)`
-/

namespace A069739.P13469990236281126483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317848 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A069739.P13469990236281126483

namespace A069739

/-- `A317848(n+1)/A000005(n+1)` -/
def P13469990236281126483.Spec : Prop :=
  ∀ n, P13469990236281126483.a n = (A069739 (n + 1) : ℚ)

end A069739

/-! ## A069739.P9951415774897536364

`2/A062011(n+1)*A317848(n+1)`
-/

namespace A069739.P9951415774897536364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A062011 (n + 1) : ℚ) * (A317848 (n + 1) : ℚ)

end

end A069739.P9951415774897536364

namespace A069739

/-- `2/A062011(n+1)*A317848(n+1)` -/
def P9951415774897536364.Spec : Prop :=
  ∀ n, P9951415774897536364.a n = (A069739 (n + 1) : ℚ)

end A069739

/-! ## A069739.P11415957718886398968

`∏{e}[A129202(n), A208355(#)]`
-/

namespace A069739.P11415957718886398968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A208355 (Nat.factorization (f1 n).natAbs p)

end

end A069739.P11415957718886398968

namespace A069739

/-- `∏{e}[A129202(n), A208355(#)]` -/
def P11415957718886398968.Spec : Prop :=
  ∀ n, P11415957718886398968.a n = A069739 (n + 1)

end A069739

/-! ## A069739.P9933029446351865676

`A246596(A322993(n+1))`
-/

namespace A069739.P9933029446351865676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 (A322993 (n + 1)).toNat

end

end A069739.P9933029446351865676

namespace A069739

/-- `A246596(A322993(n+1))` -/
def P9933029446351865676.Spec : Prop :=
  ∀ n, P9933029446351865676.a n = A069739 (n + 1)

end A069739

/-!
# A069740: Let M_n be the n X n matrix M_(i,j)=1/(i+j+ij); a(n) is the numerator of det(M_n).

The programs for A069740, there is no canonical definition to state claims against.
-/

/-! ## A069740.P18134312996288788651

`A003958(A000700(3*n+2)^A338315(n))`
-/

namespace A069740.P18134312996288788651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A000700 (3 * n + 2) : ℚ) ^ (A338315 n : ℤ))).toNat

end

end A069740.P18134312996288788651

/-! ## A069740.P15756804654128080291

`A000302((A322641(n+1)+3)%A001522(n))`
-/

namespace A069740.P15756804654128080291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (Int.tmod (A322641 (n + 1) + 3) (A001522 n)).toNat

end

end A069740.P15756804654128080291

/-! ## A069740.P1724393752060178812

`A000079(A185575(3*n+4)%A115255(n))`
-/

namespace A069740.P1724393752060178812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A185575 (3 * n + 4)) (A115255 n)).toNat

end

end A069740.P1724393752060178812

/-!
# A069741: Let M_n be the n X n matrix M_(i,j)=1/(2^i+2^j), then a(n) is the numerator of det(M_n).

The programs for A069741, there is no canonical definition to state claims against.
-/

/-! ## A069741.P14175013282616595946

`∏[gcd(A005329(n), A290974(n))²]`
-/

namespace A069741.P14175013282616595946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005329 n) (A290974 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069741.P14175013282616595946

/-! ## A069741.P6941844753212565135

`∏[A087966(A005329(n))]`
-/

namespace A069741.P6941844753212565135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087966 (A005329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069741.P6941844753212565135

/-!
# A069743: Let M_n be the n X n matrix M_(i,j)=1/(3^i+3^j), then a(n) is the numerator of det(M_n).

The programs for A069743, there is no canonical definition to state claims against.
-/

/-! ## A069743.P14484412194865567641

`∑[A000217(169+a(n-1))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=168`
-/

namespace A069743.P14484412194865567641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 168] fun n f1 =>
  A000217 (169 + f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069743.P14484412194865567641

/-!
# A069744: Indices of prime Fibonacci numbers, minus 1.

The programs for A069744, there is no canonical definition to state claims against.
-/

/-! ## A069744.P4946695735745598459

`A001605(n+1)-1`
-/

namespace A069744.P4946695735745598459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1) - 1

end

end A069744.P4946695735745598459

/-! ## A069744.P15138279301645370745

`abs(A001605(-xor(n, -1))-1)`
-/

namespace A069744.P15138279301645370745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001605 (-Int.xor (n : ℤ) (-1)).toNat - 1|

end

end A069744.P15138279301645370745

/-! ## A069744.P14438700411204532211

`abs(1-A001605(Δ[n²]-n))`
-/

namespace A069744.P14438700411204532211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A069744.P14438700411204532211

/-! ## A069744.P8310515829129301025

`A083668(round(sqrt(n²+1)))+char[1]-1`
-/

namespace A069744.P8310515829129301025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1

end

end A069744.P8310515829129301025

/-! ## A069744.P9009679281312819762

`record[A001605(A065648(n))-1]`
-/

namespace A069744.P9009679281312819762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069744.P9009679281312819762

/-! ## A069744.P16518460182272229591

`record[A001605(A126759(n))-1]`
-/

namespace A069744.P16518460182272229591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069744.P16518460182272229591

/-! ## A069744.P9990090723605200686

`record[A001605(A152271(n))-1]`
-/

namespace A069744.P9990090723605200686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069744.P9990090723605200686

/-! ## A069744.P3360743431728444061

`record[A001605(A344180(n))-1]`
-/

namespace A069744.P3360743431728444061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069744.P3360743431728444061

/-!
# A069745: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^7)*(1-x^8)).

The programs for A069745, the canonical program `A069745.P13177746589081917293` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069745 has offset 0).

The definition of A069745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^6-x^7+2x^9+2x^10-x^12+x^14-2x^16-2x^17+x^19+x^20-x^21+x^23+x^24-x^26))` (program `A069745.P13177746589081917293`, by `A069745.P13177746589081917293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069745.P13177746589081917293

`ogf(1/(1-x^2-x^3+x^5-x^6-x^7+2x^9+2x^10-x^12+x^14-2x^16-2x^17+x^19+x^20-x^21+x^23+x^24-x^26))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069745

/-- `ogf(1/(1-x^2-x^3+x^5-x^6-x^7+2x^9+2x^10-x^12+x^14-2x^16-2x^17+x^19+x^20-x^21+x^23+x^24-x^26))` -/
def P13177746589081917293.Spec : Prop :=
  ∀ n, P13177746589081917293.a n = A069745 n

theorem P13177746589081917293.correct : P13177746589081917293.Spec := by
  intro n
  simp only [A069745]

end A069745

/-! ## A069745.P3397511923601555296

`A029292(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A069745.P3397511923601555296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029292 n + a (n - 2)

end

end A069745.P3397511923601555296

namespace A069745

/-- `A029292(n)+a(n-2)` -/
def P3397511923601555296.Spec : Prop :=
  ∀ n, P3397511923601555296.a n = A069745 n

end A069745

/-! ## A069745.P13378632723902022803

`A029214(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A069745.P13378632723902022803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029214 n + a (n - 3)

end

end A069745.P13378632723902022803

namespace A069745

/-- `A029214(n)+a(n-3)` -/
def P13378632723902022803.Spec : Prop :=
  ∀ n, P13378632723902022803.a n = A069745 n

end A069745

/-!
# A069746: Four-digit numbers that do not resolve to 6174 under the Kaprekar map (see A151949).

The programs for A069746, there is no canonical definition to state claims against.
-/

/-! ## A069746.P7238276962090170323

`A291266(A057947(n))`
-/

namespace A069746.P7238276962090170323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291266 (A057947 n).toNat

end

end A069746.P7238276962090170323

/-! ## A069746.P3438034872569951541

`A291266(A228774(n))`
-/

namespace A069746.P3438034872569951541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291266 (A228774 n).toNat

end

end A069746.P3438034872569951541

/-!
# A069747: Numbers n such that n and phi(n) are both palindromes.

The programs for A069747, there is no canonical definition to state claims against.
-/

/-! ## A069747.P318209126677035089

`∩[A002113(n+1), A117296(n+1)]`
-/

namespace A069747.P318209126677035089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069747.P318209126677035089

/-! ## A069747.P8000794890093156089

`∩[A056525(n+1), A117296(n+1)]`
-/

namespace A069747.P8000794890093156089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069747.P8000794890093156089

/-! ## A069747.P5290949737848412575

`∩[A083851(n+1), A117296(n+1)]`
-/

namespace A069747.P5290949737848412575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069747.P5290949737848412575

/-! ## A069747.P12090252505726946655

`∩[A002113(n+1), A069282(n+1)]`
-/

namespace A069747.P12090252505726946655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069747.P12090252505726946655

/-! ## A069747.P7167270798465284469

`∩[A056525(n+1), A069282(n+1)]`
-/

namespace A069747.P7167270798465284469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069747.P7167270798465284469

/-!
# A069748: Numbers k such that k and k^3 are both palindromes.

The programs for A069748, there is no canonical definition to state claims against.
-/

/-! ## A069748.P2646428200376052675

`A002780(A055642(n+2)+n)`
-/

namespace A069748.P2646428200376052675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (A055642 (n + 2) + (n : ℤ)).toNat

end

end A069748.P2646428200376052675

/-! ## A069748.P8813826005311801622

`A002780(A004216(n+2)+n+1)`
-/

namespace A069748.P8813826005311801622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (A004216 (n + 2) + (n + 1 : ℤ)).toNat

end

end A069748.P8813826005311801622

/-! ## A069748.P16637454339674760628

`A002780(comp[A348377(3*n+1)²])`
-/

namespace A069748.P16637454339674760628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348377 (3 * n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A069748.P16637454339674760628

/-! ## A069748.P15628914900121237925

`∩[A002780(n+1), A117056(n+1)]`
-/

namespace A069748.P15628914900121237925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069748.P15628914900121237925

/-! ## A069748.P13651708897355347803

`∩[A002780(n+1), A082208(n+1)]`
-/

namespace A069748.P13651708897355347803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069748.P13651708897355347803

/-!
# A069750: a(1)=1; a(n+1) is the smallest integer such that 1/a(n+1) = 0.0...00a(n)xxxxx...

The programs for A069750, the canonical program `A069750.P10262859377665895998` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069750 has offset 1).

The definition of A069750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069750.P10262859377665895998

`floor(10^n/(a(n-1)+1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069750

/-- `floor(10^n/(a(n-1)+1))+1` -/
def P10262859377665895998.Spec : Prop :=
  ∀ n, P10262859377665895998.a n = A069750 (n + 1)

theorem P10262859377665895998.correct : P10262859377665895998.Spec := by
  intro n
  simp only [A069750, Nat.add_sub_cancel]

end A069750

/-! ## A069750.P5049158140774293920

`A095156(a(n-1))` with `a(0)=1`
-/

namespace A069750.P5049158140774293920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095156 (a (n - 1)).toNat

end

end A069750.P5049158140774293920

namespace A069750

/-- `A095156(a(n-1))` -/
def P5049158140774293920.Spec : Prop :=
  ∀ n, P5049158140774293920.a n = A069750 (n + 1)

end A069750

/-! ## A069750.P9655124404020175506

`A052039(a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A069750.P9655124404020175506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A052039 (a (n - 1)).toNat

end

end A069750.P9655124404020175506

namespace A069750

/-- `A052039(a(n-1))` -/
def P9655124404020175506.Spec : Prop :=
  ∀ n, P9655124404020175506.a n = A069750 (n + 1)

end A069750

/-! ## A069750.P10261648459194751848

`A259229(a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A069750.P10261648459194751848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A259229 (a (n - 1)).toNat

end

end A069750.P10261648459194751848

namespace A069750

/-- `A259229(a(n-1))` -/
def P10261648459194751848.Spec : Prop :=
  ∀ n, P10261648459194751848.a n = A069750 (n + 1)

end A069750

/-! ## A069750.P12494824489955006020

`A259228(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A069750.P12494824489955006020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259228 (a (n - 1) + 1).toNat + 1

end

end A069750.P12494824489955006020

namespace A069750

/-- `A259228(a(n-1)+1)+1` -/
def P12494824489955006020.Spec : Prop :=
  ∀ n, P12494824489955006020.a n = A069750 (n + 1)

end A069750

/-!
# A069752: Smallest k>n such that the triangular number n*(n+1)/2 divides the triangular number k*(k+1)/2.

The programs for A069752, there is no canonical definition to state claims against.
-/

/-! ## A069752.P5300170464007909396

`floor(sqrt(2*A068084(n+1)))`
-/

namespace A069752.P5300170464007909396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A068084 (n + 1))

end

end A069752.P5300170464007909396

/-! ## A069752.P10950277571749013881

`round(sqrt(2*A068084(C(n+1, n))))`
-/

namespace A069752.P10950277571749013881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A068084 (Nat.choose (n + 1) n) : ℝ))

end

end A069752.P10950277571749013881

/-! ## A069752.P1508014800453648731

`round(sqrt(2*A068084(n%(n+1)+1)))`
-/

namespace A069752.P1508014800453648731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A068084 (n % (n + 1) + 1) : ℝ))

end

end A069752.P1508014800453648731

/-! ## A069752.P14870774861234729349

`round(sqrt(2*A068084(n+1)-A001511(n+1)+1))`
-/

namespace A069752.P14870774861234729349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A068084 (n + 1) - A001511 (n + 1) + 1 : ℝ))

end

end A069752.P14870774861234729349

/-! ## A069752.P176211172039446683

`round(sqrt(2*A068084(n+1)-A001950(n+1)+1))`
-/

namespace A069752.P176211172039446683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A068084 (n + 1) - A001950 (n + 1) + 1 : ℝ))

end

end A069752.P176211172039446683

/-! ## A069752.P8584971175174746963

`round(sqrt(A030747(n+1)+2*A068084(n+1)))-1`
-/

namespace A069752.P8584971175174746963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A030747 (n + 1) + 2 * A068084 (n + 1) : ℝ)) - 1

end

end A069752.P8584971175174746963

/-! ## A069752.P2104925200706166701

`round(sqrt(2*A068084(n+1)-A286364(n+1)+1))`
-/

namespace A069752.P2104925200706166701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A068084 (n + 1) - A286364 (n + 1) + 1 : ℝ))

end

end A069752.P2104925200706166701

/-! ## A069752.P15413680091613978372

`A110353(n+1)+1+n`
-/

namespace A069752.P15413680091613978372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110353 (n + 1) + 1 + (n : ℤ)

end

end A069752.P15413680091613978372

/-! ## A069752.P14100893204921822178

`A020725(A110353(n+1)+n)`
-/

namespace A069752.P14100893204921822178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A110353 (n + 1) + (n : ℤ)).toNat

end

end A069752.P14100893204921822178

/-!
# A069754: Counts transitions between prime and nonprime to reach the number n.

The programs for A069754, the canonical program `A069754.P3749326683592309517` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069754 has offset 1).

The definition of A069754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069754.P14072690608556768396

`∑[char[∑[A211005(n+1)]]]`
-/

namespace A069754.P14072690608556768396
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P14072690608556768396

namespace A069754

/-- `∑[char[∑[A211005(n+1)]]]` -/
def P14072690608556768396.Spec : Prop :=
  ∀ n, (P14072690608556768396.a n : ℤ) = A069754 (n + 1)

end A069754

/-! ## A069754.P14215027970911933752

`∑[and(1, Δ[A246681(n)])-1]+n`
-/

namespace A069754.P14215027970911933752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A069754.P14215027970911933752

namespace A069754

/-- `∑[and(1, Δ[A246681(n)])-1]+n` -/
def P14215027970911933752.Spec : Prop :=
  ∀ n, P14215027970911933752.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P15349706344425620732

`∑[A280910(Δ[A105700(n)]²)]`
-/

namespace A069754.P15349706344425620732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280910 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P15349706344425620732

namespace A069754

/-- `∑[A280910(Δ[A105700(n)]²)]` -/
def P15349706344425620732.Spec : Prop :=
  ∀ n, P15349706344425620732.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P11481517090815037875

`∑[(char[A000040(n+1)]-A010051(n+1))²]`
-/

namespace A069754.P11481517090815037875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A010051 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P11481517090815037875

namespace A069754

/-- `∑[(char[A000040(n+1)]-A010051(n+1))²]` -/
def P11481517090815037875.Spec : Prop :=
  ∀ n, P11481517090815037875.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P16426458437725738245

`∑[(A005171(n+1)-A005171(A028310(n)))²]`
-/

namespace A069754.P16426458437725738245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005171 (n + 1) - A005171 (A028310 n).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P16426458437725738245

namespace A069754

/-- `∑[(A005171(n+1)-A005171(A028310(n)))²]` -/
def P16426458437725738245.Spec : Prop :=
  ∀ n, P16426458437725738245.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P3749326683592309517

`∑[(A010051(n+1)-A010051(A028310(n)))²]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069754

/-- `∑[(A010051(n+1)-A010051(A028310(n)))²]` -/
def P3749326683592309517.Spec : Prop :=
  ∀ n, P3749326683592309517.a n = A069754 (n + 1)

theorem P3749326683592309517.correct : P3749326683592309517.Spec := by
  intro n
  simp only [A069754, Nat.add_sub_cancel]

end A069754

/-! ## A069754.P4658868549065553440

`∑[abs(Δ[char[A000040(n+1)]])]`
-/

namespace A069754.P4658868549065553440
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P4658868549065553440

namespace A069754

/-- `∑[abs(Δ[char[A000040(n+1)]])]` -/
def P4658868549065553440.Spec : Prop :=
  ∀ n, P4658868549065553440.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P5047439316722017942

`∑[abs(Δ[char[A006530(n+2)]])]`
-/

namespace A069754.P5047439316722017942
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P5047439316722017942

namespace A069754

/-- `∑[abs(Δ[char[A006530(n+2)]])]` -/
def P5047439316722017942.Spec : Prop :=
  ∀ n, P5047439316722017942.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P7069683829062489425

`∑[abs(Δ[char[A020639(n+2)]])]`
-/

namespace A069754.P7069683829062489425
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P7069683829062489425

namespace A069754

/-- `∑[abs(Δ[char[A020639(n+2)]])]` -/
def P7069683829062489425.Spec : Prop :=
  ∀ n, P7069683829062489425.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P2499401738513379545

`∑[Δ[char[A006530(n+3)]]²]`
-/

namespace A069754.P2499401738513379545
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P2499401738513379545

namespace A069754

/-- `∑[Δ[char[A006530(n+3)]]²]` -/
def P2499401738513379545.Spec : Prop :=
  ∀ n, P2499401738513379545.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P3935638433672932169

`∑[Δ[char[A020639(n+3)]]²]`
-/

namespace A069754.P3935638433672932169
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P3935638433672932169

namespace A069754

/-- `∑[Δ[char[A020639(n+3)]]²]` -/
def P3935638433672932169.Spec : Prop :=
  ∀ n, P3935638433672932169.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P15240466822012578481

`∑[Δ[char[A006530(4*n+2)]]^12]`
-/

namespace A069754.P15240466822012578481
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P15240466822012578481

namespace A069754

/-- `∑[Δ[char[A006530(4*n+2)]]^12]` -/
def P15240466822012578481.Spec : Prop :=
  ∀ n, P15240466822012578481.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P3554862352732991329

`∑[Δ[char[A014689(n+1)+1+n]]²]`
-/

namespace A069754.P3554862352732991329
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + 1 + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P3554862352732991329

namespace A069754

/-- `∑[Δ[char[A014689(n+1)+1+n]]²]` -/
def P3554862352732991329.Spec : Prop :=
  ∀ n, P3554862352732991329.a n = A069754 (n + 1)

end A069754

/-! ## A069754.P133662298964767502

`∑[Δ[A046926(2*(n+1))]²]`
-/

namespace A069754.P133662298964767502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P133662298964767502

namespace A069754

/-- `∑[Δ[A046926(2*(n+1))]²]` -/
def P133662298964767502.Spec : Prop :=
  ∀ n, P133662298964767502.a n = A069754 (n + 1)

end A069754

/-!
# A069755: Frobenius number of the numerical semigroup generated by 3 consecutive triangular numbers.

The programs for A069755, the canonical program `A069755.P3214116244876995295` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069755 has offset 2).

The definition of A069755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069755.P3214116244876995295

`(A004526(n)+1)*A045943(n+3)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069755

/-- `(A004526(n)+1)*A045943(n+3)-1` -/
def P3214116244876995295.Spec : Prop :=
  ∀ n, P3214116244876995295.a n = A069755 (n + 2)

theorem P3214116244876995295.correct : P3214116244876995295.Spec := by
  intro n
  simp only [A069755, Nat.add_sub_cancel]

end A069755

/-! ## A069755.P13768128727977618621

`A065033(n+1)*A134479(n+3)-1`
-/

namespace A069755.P13768128727977618621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) * A134479 (n + 3) - 1

end

end A069755.P13768128727977618621

namespace A069755

/-- `A065033(n+1)*A134479(n+3)-1` -/
def P13768128727977618621.Spec : Prop :=
  ∀ n, P13768128727977618621.a n = A069755 (n + 2)

end A069755

/-! ## A069755.P10941011837956835079

`A005448(n+4)*A008619(n)-(A008619(n)+1)`
-/

namespace A069755.P10941011837956835079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 4) * A008619 n - (A008619 n + 1)

end

end A069755.P10941011837956835079

namespace A069755

/-- `A005448(n+4)*A008619(n)-(A008619(n)+1)` -/
def P10941011837956835079.Spec : Prop :=
  ∀ n, P10941011837956835079.a n = A069755 (n + 2)

end A069755

/-! ## A069755.P3103480490524926887

`(A000292(n+4)-A000292(n+1))*A008619(n)-(A008619(n)+1)`
-/

namespace A069755.P3103480490524926887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 4) - A000292 (n + 1)) * A008619 n - (A008619 n + 1)

end

end A069755.P3103480490524926887

namespace A069755

/-- `(A000292(n+4)-A000292(n+1))*A008619(n)-(A008619(n)+1)` -/
def P3103480490524926887.Spec : Prop :=
  ∀ n, P3103480490524926887.a n = A069755 (n + 2)

end A069755

/-! ## A069755.P17992712102108673971

`A005448(n+4)*A123108(n+2)-A123108(n+4)`
-/

namespace A069755.P17992712102108673971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 4) * A123108 (n + 2) - A123108 (n + 4)

end

end A069755.P17992712102108673971

namespace A069755

/-- `A005448(n+4)*A123108(n+2)-A123108(n+4)` -/
def P17992712102108673971.Spec : Prop :=
  ∀ n, P17992712102108673971.a n = A069755 (n + 2)

end A069755

/-!
# A069756: Frobenius number of the numerical semigroup generated by consecutive squares.

The programs for A069756, the canonical program `A069756.P8613557898676914719` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069756 has offset 2).

The definition of A069756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069756.P8613557898676914719

`((n+2)²-1)*((n+3)²-1)-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069756

/-- `((n+2)²-1)*((n+3)²-1)-1` -/
def P8613557898676914719.Spec : Prop :=
  ∀ n, P8613557898676914719.a n = A069756 (n + 2)

theorem P8613557898676914719.correct : P8613557898676914719.Spec := by
  intro n
  simp only [A069756, Nat.add_sub_cancel]

end A069756

/-! ## A069756.P17773684925398301742

`record[(n-1-(2-n)²)²-2]`
-/

namespace A069756.P17773684925398301742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069756.P17773684925398301742

namespace A069756

/-- `record[(n-1-(2-n)²)²-2]` -/
def P17773684925398301742.Spec : Prop :=
  ∀ n, P17773684925398301742.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P12335250873581360002

`Δ[A158874(n)-n]`
-/

namespace A069756.P12335250873581360002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158874 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069756.P12335250873581360002

namespace A069756

/-- `Δ[A158874(n)-n]` -/
def P12335250873581360002.Spec : Prop :=
  ∀ n, P12335250873581360002.a n = A069756 (n + 2)

theorem P12335250873581360002.correct : P12335250873581360002.Spec := by
  intro n
  simp only [A069756, Nat.add_sub_cancel, A069756.P12335250873581360002.f1, A069756.P12335250873581360002.a, A069756.P8613557898676914719.a, A158874, A158874.P5308552197139117171.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069756

/-! ## A069756.P11445313577902821861

`abs(2-(∑[abs(A016777(n+1)-n)]+1)²)`
-/

namespace A069756.P11445313577902821861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016777 (n + 1) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2|

end

end A069756.P11445313577902821861

namespace A069756

/-- `abs(2-(∑[abs(A016777(n+1)-n)]+1)²)` -/
def P11445313577902821861.Spec : Prop :=
  ∀ n, P11445313577902821861.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P6242368091984463132

`abs(2-A062938(n+1))`
-/

namespace A069756.P6242368091984463132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A062938 (n + 1)|

end

end A069756.P6242368091984463132

namespace A069756

/-- `abs(2-A062938(n+1))` -/
def P6242368091984463132.Spec : Prop :=
  ∀ n, P6242368091984463132.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P7336170159824221403

`Δ[A166942(n)-2*n]`
-/

namespace A069756.P7336170159824221403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166942 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069756.P7336170159824221403

namespace A069756

/-- `Δ[A166942(n)-2*n]` -/
def P7336170159824221403.Spec : Prop :=
  ∀ n, P7336170159824221403.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P2334426861431083465

`abs(2-A028387(n+1)²)`
-/

namespace A069756.P2334426861431083465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A028387 (n + 1) ^ 2|

end

end A069756.P2334426861431083465

namespace A069756

/-- `abs(2-A028387(n+1)²)` -/
def P2334426861431083465.Spec : Prop :=
  ∀ n, P2334426861431083465.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P3795043344506113150

`abs(1-4*A033487(n+1))`
-/

namespace A069756.P3795043344506113150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 4 * A033487 (n + 1)|

end

end A069756.P3795043344506113150

namespace A069756

/-- `abs(1-4*A033487(n+1))` -/
def P3795043344506113150.Spec : Prop :=
  ∀ n, P3795043344506113150.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P15861120631222412717

`abs(2-(A005563(n+1)+2+n)²)`
-/

namespace A069756.P15861120631222412717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A005563 (n + 1) + 2 + (n : ℤ)) ^ 2|

end

end A069756.P15861120631222412717

namespace A069756

/-- `abs(2-(A005563(n+1)+2+n)²)` -/
def P15861120631222412717.Spec : Prop :=
  ∀ n, P15861120631222412717.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P11696802500870843292

`∑[-Δ[-(A000038(n)!*A062938(n))]]`
-/

namespace A069756.P11696802500870843292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.factorial (A000038 n).toNat : ℤ) * A062938 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069756.P11696802500870843292

namespace A069756

/-- `∑[-Δ[-(A000038(n)!*A062938(n))]]` -/
def P11696802500870843292.Spec : Prop :=
  ∀ n, P11696802500870843292.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P13366380833347104468

`(2-A062938(n+1))*A134824(n+2)`
-/

namespace A069756.P13366380833347104468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A062938 (n + 1)) * A134824 (n + 2)

end

end A069756.P13366380833347104468

namespace A069756

/-- `(2-A062938(n+1))*A134824(n+2)` -/
def P13366380833347104468.Spec : Prop :=
  ∀ n, P13366380833347104468.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P7671916369977056757

`abs(A052762(n+4)-1)`
-/

namespace A069756.P7671916369977056757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052762 (n + 4) - 1|

end

end A069756.P7671916369977056757

namespace A069756

/-- `abs(A052762(n+4)-1)` -/
def P7671916369977056757.Spec : Prop :=
  ∀ n, P7671916369977056757.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P12563753314566006101

`gcd(2-A062938(n+1), A008683(9*(2*n+1)))`
-/

namespace A069756.P12563753314566006101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A062938 (n + 1)) (A008683 (9 * (2 * n + 1)))

end

end A069756.P12563753314566006101

namespace A069756

/-- `gcd(2-A062938(n+1), A008683(9*(2*n+1)))` -/
def P12563753314566006101.Spec : Prop :=
  ∀ n, (P12563753314566006101.a n : ℤ) = A069756 (n + 2)

end A069756

/-! ## A069756.P10858106853933484120

`abs(1-∑[(n+1)*A005563(A103517(n+1))])`
-/

namespace A069756.P10858106853933484120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005563 (A103517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A069756.P10858106853933484120

namespace A069756

/-- `abs(1-∑[(n+1)*A005563(A103517(n+1))])` -/
def P10858106853933484120.Spec : Prop :=
  ∀ n, P10858106853933484120.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P7620053660339915836

`(2-A062938(n+1))*A008683(A103579(n+1))`
-/

namespace A069756.P7620053660339915836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A062938 (n + 1)) * A008683 (A103579 (n + 1)).toNat

end

end A069756.P7620053660339915836

namespace A069756

/-- `(2-A062938(n+1))*A008683(A103579(n+1))` -/
def P7620053660339915836.Spec : Prop :=
  ∀ n, P7620053660339915836.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P9159305928323196374

`A073577(∑[n+2])`
-/

namespace A069756.P9159305928323196374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069756.P9159305928323196374

namespace A069756

/-- `A073577(∑[n+2])` -/
def P9159305928323196374.Spec : Prop :=
  ∀ n, P9159305928323196374.a n = A069756 (n + 2)

end A069756

/-! ## A069756.P16717508161447699996

`abs(A184882(∑[n+2]))`
-/

namespace A069756.P16717508161447699996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184882 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A069756.P16717508161447699996

namespace A069756

/-- `abs(A184882(∑[n+2]))` -/
def P16717508161447699996.Spec : Prop :=
  ∀ n, P16717508161447699996.a n = A069756 (n + 2)

end A069756

/-!
# A069759: Frobenius number of the numerical semigroup generated by consecutive hex numbers.

The programs for A069759, the canonical program `A069759.P8755191422924500770` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069759 has offset 1).

The definition of A069759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069759.P8755191422924500770

`9*(n+1)^4+36*(n+1)^3+45*(n+1)²+18*(n+1)-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069759

/-- `9*(n+1)^4+36*(n+1)^3+45*(n+1)²+18*(n+1)-1` -/
def P8755191422924500770.Spec : Prop :=
  ∀ n, P8755191422924500770.a n = A069759 (n + 1)

theorem P8755191422924500770.correct : P8755191422924500770.Spec := by
  intro n
  simp only [A069759, Nat.add_sub_cancel]

end A069759

/-! ## A069759.P2138459828849919818

`or(1, 18*C((n+2)², 2)-1)`
-/

namespace A069759.P2138459828849919818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((18 * Nat.choose ((n + 2) ^ 2) 2 : ℤ) - 1)

end

end A069759.P2138459828849919818

namespace A069759

/-- `or(1, 18*C((n+2)², 2)-1)` -/
def P2138459828849919818.Spec : Prop :=
  ∀ n, P2138459828849919818.a n = A069759 (n + 1)

end A069759

/-! ## A069759.P8151601367682384346

`∑[A134171(2*n+5)-A000007(n)]`
-/

namespace A069759.P8151601367682384346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134171 (2 * n + 5) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069759.P8151601367682384346

namespace A069759

/-- `∑[A134171(2*n+5)-A000007(n)]` -/
def P8151601367682384346.Spec : Prop :=
  ∀ n, P8151601367682384346.a n = A069759 (n + 1)

end A069759

/-! ## A069759.P7934563541211264952

`abs(2-A069131((n+2)²))`
-/

namespace A069759.P7934563541211264952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A069131 ((n + 2) ^ 2)|

end

end A069759.P7934563541211264952

namespace A069759

/-- `abs(2-A069131((n+2)²))` -/
def P7934563541211264952.Spec : Prop :=
  ∀ n, P7934563541211264952.a n = A069759 (n + 1)

end A069759

/-! ## A069759.P18373802430414924567

`(2-A069131((n+2)²))/A321800(A050603(n))`
-/

namespace A069759.P18373802430414924567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A069131 ((n + 2) ^ 2) : ℚ) / (A321800 (A050603 n).toNat : ℚ)

end

end A069759.P18373802430414924567

namespace A069759

/-- `(2-A069131((n+2)²))/A321800(A050603(n))` -/
def P18373802430414924567.Spec : Prop :=
  ∀ n, P18373802430414924567.a n = (A069759 (n + 1) : ℚ)

end A069759

/-! ## A069759.P8015882807512898192

`A014209(3*(n+1)*(n+3))`
-/

namespace A069759.P8015882807512898192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 (3 * ((n + 1) * (n + 3)))

end

end A069759.P8015882807512898192

namespace A069759

/-- `A014209(3*(n+1)*(n+3))` -/
def P8015882807512898192.Spec : Prop :=
  ∀ n, P8015882807512898192.a n = A069759 (n + 1)

theorem P8015882807512898192.correct : P8015882807512898192.Spec := by
  intro n
  simp only [A069759, Nat.add_sub_cancel, A069759.P8015882807512898192.a, A069759.P8755191422924500770.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069759

/-!
# A069760: Frobenius number of the numerical semigroup generated by consecutive centered square numbers.

The programs for A069760, the canonical program `A069760.P14508178980381402531` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069760 has offset 1).

The definition of A069760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069760.P14508178980381402531

`4*(n+1)^4+16*(n+1)^3+20*(n+1)²+8*(n+1)-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069760

/-- `4*(n+1)^4+16*(n+1)^3+20*(n+1)²+8*(n+1)-1` -/
def P14508178980381402531.Spec : Prop :=
  ∀ n, P14508178980381402531.a n = A069760 (n + 1)

theorem P14508178980381402531.correct : P14508178980381402531.Spec := by
  intro n
  simp only [A069760, Nat.add_sub_cancel]

end A069760

/-! ## A069760.P7551718086413666392

`abs(1-A173121(n+2))`
-/

namespace A069760.P7551718086413666392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A173121 (n + 2)|

end

end A069760.P7551718086413666392

namespace A069760

/-- `abs(1-A173121(n+2))` -/
def P7551718086413666392.Spec : Prop :=
  ∀ n, P7551718086413666392.a n = A069760 (n + 1)

end A069760

/-! ## A069760.P4386886040354751877

`(A144130(n+2)-3)/2`
-/

namespace A069760.P4386886040354751877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144130 (n + 2) - 3 : ℚ) / 2

end

end A069760.P4386886040354751877

namespace A069760

/-- `(A144130(n+2)-3)/2` -/
def P4386886040354751877.Spec : Prop :=
  ∀ n, P4386886040354751877.a n = (A069760 (n + 1) : ℚ)

theorem P4386886040354751877.correct : P4386886040354751877.Spec := by
  intro n
  simp only [A069760, Nat.add_sub_cancel, A069760.P4386886040354751877.a, A069760.P14508178980381402531.a, A144130, A144130.P7760986985961990642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069760

/-! ## A069760.P12359674576436686381

`(1-A173121(n+2))*A008683(A039650(n+1))`
-/

namespace A069760.P12359674576436686381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173121 (n + 2)) * A008683 (A039650 (n + 1)).toNat

end

end A069760.P12359674576436686381

namespace A069760

/-- `(1-A173121(n+2))*A008683(A039650(n+1))` -/
def P12359674576436686381.Spec : Prop :=
  ∀ n, P12359674576436686381.a n = A069760 (n + 1)

end A069760

/-! ## A069760.P2955958168208227675

`(1-A173121(n+2))*A008683(A059456(n+1))`
-/

namespace A069760.P2955958168208227675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173121 (n + 2)) * A008683 (A059456 (n + 1)).toNat

end

end A069760.P2955958168208227675

namespace A069760

/-- `(1-A173121(n+2))*A008683(A059456(n+1))` -/
def P2955958168208227675.Spec : Prop :=
  ∀ n, P2955958168208227675.a n = A069760 (n + 1)

end A069760

/-! ## A069760.P14177120801313047946

`(1-A173121(n+2))*A008683(A180440(n+1))`
-/

namespace A069760.P14177120801313047946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173121 (n + 2)) * A008683 (A180440 (n + 1)).toNat

end

end A069760.P14177120801313047946

namespace A069760

/-- `(1-A173121(n+2))*A008683(A180440(n+1))` -/
def P14177120801313047946.Spec : Prop :=
  ∀ n, P14177120801313047946.a n = A069760 (n + 1)

end A069760

/-! ## A069760.P4478250404806899954

`∑[A181773(n+2)-A008683((n+1)²)]`
-/

namespace A069760.P4478250404806899954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 2) - A008683 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069760.P4478250404806899954

namespace A069760

/-- `∑[A181773(n+2)-A008683((n+1)²)]` -/
def P4478250404806899954.Spec : Prop :=
  ∀ n, P4478250404806899954.a n = A069760 (n + 1)

end A069760

/-! ## A069760.P16424094536443288580

`record[Δ[(A005893(A004736(n+1))-3)²]-1]`
-/

namespace A069760.P16424094536443288580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005893 (A004736 (n + 1)).toNat - 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069760.P16424094536443288580

namespace A069760

/-- `record[Δ[(A005893(A004736(n+1))-3)²]-1]` -/
def P16424094536443288580.Spec : Prop :=
  ∀ n, P16424094536443288580.a n = A069760 (n + 1)

end A069760

/-! ## A069760.P12180131017137718823

`A073577((n+2)²-1)`
-/

namespace A069760.P12180131017137718823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 ((n + 2) ^ 2 - 1)

end

end A069760.P12180131017137718823

namespace A069760

/-- `A073577((n+2)²-1)` -/
def P12180131017137718823.Spec : Prop :=
  ∀ n, P12180131017137718823.a n = A069760 (n + 1)

end A069760

/-! ## A069760.P13078489528212420380

`A214345(A268581(n))`
-/

namespace A069760.P13078489528212420380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 (A268581 n).toNat

end

end A069760.P13078489528212420380

namespace A069760

/-- `A214345(A268581(n))` -/
def P13078489528212420380.Spec : Prop :=
  ∀ n, P13078489528212420380.a n = A069760 (n + 1)

end A069760

/-!
# A069763: Frobenius number of the numerical semigroup generated by consecutive cubes.

The programs for A069763, the canonical program `A069763.P5797869210077477369` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069763 has offset 2).

The definition of A069763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069763.P5797869210077477369

`(n+2)^3*(n+3)^3-(n+2)^3-(n+3)^3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069763

/-- `(n+2)^3*(n+3)^3-(n+2)^3-(n+3)^3` -/
def P5797869210077477369.Spec : Prop :=
  ∀ n, P5797869210077477369.a n = A069763 (n + 2)

theorem P5797869210077477369.correct : P5797869210077477369.Spec := by
  intro n
  simp only [A069763, Nat.add_sub_cancel]

end A069763

/-!
# A069764: Frobenius number of the numerical semigroup generated by consecutive octahedral numbers.

The programs for A069764, the canonical program `A069764.P8811235578831581179` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069764 has offset 2).

The definition of A069764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069764.P8811235578831581179

`A005900(n+2)*A005900(n+3)-A001845(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069764

/-- `A005900(n+2)*A005900(n+3)-A001845(n+2)` -/
def P8811235578831581179.Spec : Prop :=
  ∀ n, P8811235578831581179.a n = A069764 (n + 2)

theorem P8811235578831581179.correct : P8811235578831581179.Spec := by
  intro n
  simp only [A069764, Nat.add_sub_cancel]

end A069764

/-!
# A069765: Number of distinct values obtained using n ones and the operations of sum, product and quotient.

The programs for A069765, there is no canonical definition to state claims against.
-/

/-! ## A069765.P11108724427887467623

`Δ[A062108(A192923(n+2)+1)]`
-/

namespace A069765.P11108724427887467623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A192923 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069765.P11108724427887467623

/-! ## A069765.P2674061034488088898

`A001462(or(A027994(n), A090344(n)))`
-/

namespace A069765.P2674061034488088898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor (A027994 n) (A090344 n)).toNat

end

end A069765.P2674061034488088898

/-! ## A069765.P11480409727842044725

`A002024(or(n², A038765(n)))`
-/

namespace A069765.P11480409727842044725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (n ^ 2 : ℤ) (A038765 n)).toNat

end

end A069765.P11480409727842044725

/-! ## A069765.P16166847176596891289

`A082447(A316980(n+1)-n)`
-/

namespace A069765.P16166847176596891289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A316980 (n + 1) - (n : ℤ)).toNat

end

end A069765.P16166847176596891289

/-! ## A069765.P453585176714664855

`A172471(∑[6*A093043(n)+1])`
-/

namespace A069765.P453585176714664855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A093043 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069765.P453585176714664855

/-!
# A069766: Self-inverse permutation of natural numbers induced by the automorphism RotateHandshakes180 (A069771) or xReflectHandshakes (A069772) acting on the symmetric parenthesizations encoded by A061855.

The programs for A069766, there is no canonical definition to state claims against.
-/

/-! ## A069766.P13198277825325440498

`∑{e}[3^n, A153150(#)]`
-/

namespace A069766.P13198277825325440498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A153150 (Nat.factorization (f1 n) p)

end

end A069766.P13198277825325440498

/-! ## A069766.P1919149941825643914

`A153150(A004918(n+1))`
-/

namespace A069766.P1919149941825643914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153150 (A004918 (n + 1)).toNat

end

end A069766.P1919149941825643914

/-! ## A069766.P13007275845456971395

`A000523(2^A153150(n))`
-/

namespace A069766.P13007275845456971395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A153150 n : ℤ))).toNat

end

end A069766.P13007275845456971395

/-! ## A069766.P12383017773771509928

`A007814(2^A153150(n))`
-/

namespace A069766.P12383017773771509928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A153150 n : ℤ))).toNat

end

end A069766.P12383017773771509928

/-! ## A069766.P17345880664601916082

`A023416(2^A153150(n))`
-/

namespace A069766.P17345880664601916082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A153150 n : ℤ))).toNat

end

end A069766.P17345880664601916082

/-!
# A069767: Signature-permutation of Catalan bijection "Knick".

The programs for A069767, there is no canonical definition to state claims against.
-/

/-! ## A069767.P12219085650385908284

`A057161(A069769(n))`
-/

namespace A069767.P12219085650385908284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A069769 n).toNat

end

end A069767.P12219085650385908284

/-! ## A069767.P8049986709714358510

`A069770(A073286(n))`
-/

namespace A069767.P8049986709714358510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073286 n).toNat

end

end A069767.P8049986709714358510

/-! ## A069767.P10997495677055093225

`A073293(A073294(n))`
-/

namespace A069767.P10997495677055093225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073293 (A073294 n).toNat

end

end A069767.P10997495677055093225

/-! ## A069767.P419937202770029221

`A073296(A073295(n))`
-/

namespace A069767.P419937202770029221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A073295 n).toNat

end

end A069767.P419937202770029221

/-! ## A069767.P15756337359594732911

`A082346(A073288(n))`
-/

namespace A069767.P15756337359594732911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082346 (A073288 n).toNat

end

end A069767.P15756337359594732911

/-! ## A069767.P5837034014979792519

`A069768(A073290(n))`
-/

namespace A069767.P5837034014979792519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073290 n).toNat

end

end A069767.P5837034014979792519

/-! ## A069767.P18154771340195494193

`A057508(A057161(n))`
-/

namespace A069767.P18154771340195494193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A057161 n).toNat

end

end A069767.P18154771340195494193

/-! ## A069767.P9552959342777530561

`A073292(A073291(n))`
-/

namespace A069767.P9552959342777530561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A073291 n).toNat

end

end A069767.P9552959342777530561

/-! ## A069767.P828188089176635682

`A073298(A073297(n))`
-/

namespace A069767.P828188089176635682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A073297 n).toNat

end

end A069767.P828188089176635682

/-! ## A069767.P17432650942819493035

`A073288(A082347(n))`
-/

namespace A069767.P17432650942819493035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A082347 n).toNat

end

end A069767.P17432650942819493035

/-! ## A069767.P2601784678844028360

`A057163(A069768(A057163(n)))`
-/

namespace A069767.P2601784678844028360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069768 (A057163 n).toNat).toNat

end

end A069767.P2601784678844028360

/-! ## A069767.P7140050240361964580

`A073292(A069768(A069768(n)))`
-/

namespace A069767.P7140050240361964580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A069768 (A069768 n).toNat).toNat

end

end A069767.P7140050240361964580

/-! ## A069767.P8281463504660109686

`A073282(A069768(A073282(n)))`
-/

namespace A069767.P8281463504660109686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A069768 (A073282 n).toNat).toNat

end

end A069767.P8281463504660109686

/-! ## A069767.P9063691002656383506

`A057510(A130363(n))`
-/

namespace A069767.P9063691002656383506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A130363 n).toNat

end

end A069767.P9063691002656383506

/-! ## A069767.P16052578105908635059

`A057163(A130981(n))`
-/

namespace A069767.P16052578105908635059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130981 n).toNat

end

end A069767.P16052578105908635059

/-! ## A069767.P9410509988593435115

`A130341(A069770(n))`
-/

namespace A069767.P9410509988593435115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A069770 n).toNat

end

end A069767.P9410509988593435115

/-! ## A069767.P6580519227912605017

`A130347(A069774(n))`
-/

namespace A069767.P6580519227912605017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130347 (A069774 n).toNat

end

end A069767.P6580519227912605017

/-! ## A069767.P6510364483426459107

`A130363(A069776(n))`
-/

namespace A069767.P6510364483426459107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130363 (A069776 n).toNat

end

end A069767.P6510364483426459107

/-! ## A069767.P11282232310028264016

`A130349(A074690(n))`
-/

namespace A069767.P11282232310028264016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130349 (A074690 n).toNat

end

end A069767.P11282232310028264016

/-! ## A069767.P1104445688309854456

`A082348(A131142(n))`
-/

namespace A069767.P1104445688309854456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A131142 n).toNat

end

end A069767.P1104445688309854456

/-!
# A069768: Signature-permutation of Catalan bijection "Knack".

The programs for A069768, there is no canonical definition to state claims against.
-/

/-! ## A069768.P15378502532327041828

`A073297(A073294(n))`
-/

namespace A069768.P15378502532327041828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073297 (A073294 n).toNat

end

end A069768.P15378502532327041828

/-! ## A069768.P15155007023274315651

`A073292(A073295(n))`
-/

namespace A069768.P15155007023274315651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A073295 n).toNat

end

end A069768.P15155007023274315651

/-! ## A069768.P3418307258613999623

`A082348(A073289(n))`
-/

namespace A069768.P3418307258613999623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A073289 n).toNat

end

end A069768.P3418307258613999623

/-! ## A069768.P136283741787548310

`A073293(A073290(n))`
-/

namespace A069768.P136283741787548310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073293 (A073290 n).toNat

end

end A069768.P136283741787548310

/-! ## A069768.P11011628189858490579

`A073296(A073299(n))`
-/

namespace A069768.P11011628189858490579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A073299 n).toNat

end

end A069768.P11011628189858490579

/-! ## A069768.P5884894117847556834

`A057162(A057508(n))`
-/

namespace A069768.P5884894117847556834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A057508 n).toNat

end

end A069768.P5884894117847556834

/-! ## A069768.P15317491289228186579

`A069769(A057162(n))`
-/

namespace A069768.P15317491289228186579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069769 (A057162 n).toNat

end

end A069768.P15317491289228186579

/-! ## A069768.P8941255691481934586

`A073291(A069767(n))`
-/

namespace A069768.P8941255691481934586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A069767 n).toNat

end

end A069768.P8941255691481934586

/-! ## A069768.P17190358292839573758

`A073287(A069770(n))`
-/

namespace A069768.P17190358292839573758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A069770 n).toNat

end

end A069768.P17190358292839573758

/-! ## A069768.P164681205456293819

`A073289(A082345(n))`
-/

namespace A069768.P164681205456293819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A082345 n).toNat

end

end A069768.P164681205456293819

/-! ## A069768.P17835867722049835991

`A057163(A069767(A057163(n)))`
-/

namespace A069768.P17835867722049835991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069767 (A057163 n).toNat).toNat

end

end A069768.P17835867722049835991

/-! ## A069768.P545981803402164834

`A069767(A069767(A073293(n)))`
-/

namespace A069768.P545981803402164834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069767 (A073293 n).toNat).toNat

end

end A069768.P545981803402164834

/-! ## A069768.P12331905574333557778

`A073287(A069767(A073287(n)))`
-/

namespace A069768.P12331905574333557778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A069767 (A073287 n).toNat).toNat

end

end A069768.P12331905574333557778

/-! ## A069768.P6070541597249758612

`A130364(A057509(n))`
-/

namespace A069768.P6070541597249758612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130364 (A057509 n).toNat

end

end A069768.P6070541597249758612

/-! ## A069768.P12287252801070525607

`A130981(A057163(n))`
-/

namespace A069768.P12287252801070525607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A057163 n).toNat

end

end A069768.P12287252801070525607

/-! ## A069768.P1476922873971242198

`A069770(A130342(n))`
-/

namespace A069768.P1476922873971242198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130342 n).toNat

end

end A069768.P1476922873971242198

/-! ## A069768.P16200500234086766850

`A069773(A130348(n))`
-/

namespace A069768.P16200500234086766850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A130348 n).toNat

end

end A069768.P16200500234086766850

/-! ## A069768.P14083089779454139838

`A069775(A130364(n))`
-/

namespace A069768.P14083089779454139838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069775 (A130364 n).toNat

end

end A069768.P14083089779454139838

/-! ## A069768.P18147747657321493891

`A074689(A130350(n))`
-/

namespace A069768.P18147747657321493891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074689 (A130350 n).toNat

end

end A069768.P18147747657321493891

/-! ## A069768.P1325235628102813059

`A154456(A154449(n))`
-/

namespace A069768.P1325235628102813059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154456 (A154449 n).toNat

end

end A069768.P1325235628102813059

/-!
# A069769: Self-inverse permutation of natural numbers induced by the automorphism Rev1CarSide! acting on the parenthesizations encoded by A014486.

The programs for A069769, there is no canonical definition to state claims against.
-/

/-! ## A069769.P11636717702630690994

`A069768(A057161(n))`
-/

namespace A069769.P11636717702630690994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057161 n).toNat

end

end A069769.P11636717702630690994

/-! ## A069769.P18008196439856883279

`A057162(A069767(n))`
-/

namespace A069769.P18008196439856883279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A069767 n).toNat

end

end A069769.P18008196439856883279

/-! ## A069769.P16559089736194749479

`A057163(A057508(A057163(n)))`
-/

namespace A069769.P16559089736194749479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057508 (A057163 n).toNat).toNat

end

end A069769.P16559089736194749479

/-! ## A069769.P2564176037721680805

`A057506(A057508(A057505(n)))`
-/

namespace A069769.P2564176037721680805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057508 (A057505 n).toNat).toNat

end

end A069769.P2564176037721680805

/-! ## A069769.P18272916298916275974

`A069768(A057508(A069767(A057508(A057508(n)))))`
-/

namespace A069769.P18272916298916275974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057508 (A069767 (A057508 (A057508 n).toNat).toNat).toNat).toNat

end

end A069769.P18272916298916275974

/-!
# A069770: Signature permutation of the first non-identity, nonrecursive Catalan automorphism in table A089840: swap the top branches of a binary tree. An involution of nonnegative integers.

The programs for A069770, there is no canonical definition to state claims against.
-/

/-! ## A069770.P859470567661310251

`A154126(A154125(n))`
-/

namespace A069770.P859470567661310251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A154125 n).toNat

end

end A069770.P859470567661310251

/-! ## A069770.P14301967589678530928

`A083927(A057508(A057123(n)))`
-/

namespace A069770.P14301967589678530928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A057508 (A057123 n).toNat).toNat

end

end A069770.P14301967589678530928

/-! ## A069770.P15382709741376189482

`A069774(A069775(n))`
-/

namespace A069770.P15382709741376189482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (A069775 n).toNat

end

end A069770.P15382709741376189482

/-! ## A069770.P13779184369225276014

`A069767(A073287(n))`
-/

namespace A069770.P13779184369225276014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A073287 n).toNat

end

end A069770.P13779184369225276014

/-! ## A069770.P6178252431519932040

`A073269(A072796(n))`
-/

namespace A069770.P6178252431519932040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A072796 n).toNat

end

end A069770.P6178252431519932040

/-! ## A069770.P17287951324020242910

`A057502(A057509(n))`
-/

namespace A069770.P17287951324020242910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057509 n).toNat

end

end A069770.P17287951324020242910

/-! ## A069770.P10031464946245524418

`A085168(A085159(n))`
-/

namespace A069770.P10031464946245524418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085168 (A085159 n).toNat

end

end A069770.P10031464946245524418

/-! ## A069770.P13915672578899314996

`A085160(A085167(n))`
-/

namespace A069770.P13915672578899314996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085160 (A085167 n).toNat

end

end A069770.P13915672578899314996

/-! ## A069770.P15780708745557425025

`A057510(A057501(n))`
-/

namespace A069770.P15780708745557425025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A057501 n).toNat

end

end A069770.P15780708745557425025

/-! ## A069770.P618942514568178798

`A073280(A057163(n))`
-/

namespace A069770.P618942514568178798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A057163 n).toNat

end

end A069770.P618942514568178798

/-! ## A069770.P1218245216368202997

`A069776(A069773(n))`
-/

namespace A069770.P1218245216368202997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069776 (A069773 n).toNat

end

end A069770.P1218245216368202997

/-! ## A069770.P8238998990336642020

`A073286(A069768(n))`
-/

namespace A069770.P8238998990336642020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 (A069768 n).toNat

end

end A069770.P8238998990336642020

/-! ## A069770.P13625721592278964361

`A072796(A073270(n))`
-/

namespace A069770.P13625721592278964361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073270 n).toNat

end

end A069770.P13625721592278964361

/-! ## A069770.P7456658825937929395

`A130342(A069767(n))`
-/

namespace A069770.P7456658825937929395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A069767 n).toNat

end

end A069770.P7456658825937929395

/-! ## A069770.P11590059076886469414

`A069768(A130341(n))`
-/

namespace A069770.P11590059076886469414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130341 n).toNat

end

end A069770.P11590059076886469414

/-! ## A069770.P12949895780365855834

`A130366(A130343(n))`
-/

namespace A069770.P12949895780365855834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130366 (A130343 n).toNat

end

end A069770.P12949895780365855834

/-! ## A069770.P12101609754211234356

`A130368(A130345(n))`
-/

namespace A069770.P12101609754211234356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130368 (A130345 n).toNat

end

end A069770.P12101609754211234356

/-! ## A069770.P9380196267118334028

`A130364(A130347(n))`
-/

namespace A069770.P9380196267118334028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130364 (A130347 n).toNat

end

end A069770.P9380196267118334028

/-! ## A069770.P2054383907173690209

`A130348(A130363(n))`
-/

namespace A069770.P2054383907173690209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 (A130363 n).toNat

end

end A069770.P2054383907173690209

/-! ## A069770.P1055882218876948529

`A130344(A130365(n))`
-/

namespace A069770.P1055882218876948529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130344 (A130365 n).toNat

end

end A069770.P1055882218876948529

/-!
# A069771: Self-inverse permutation of natural numbers induced by the automorphism RotateHandshakes180 acting on the parenthesizations encoded by A014486.

The programs for A069771, there is no canonical definition to state claims against.
-/

/-! ## A069771.P11621538193758657361

`A057164(A069772(n))`
-/

namespace A069771.P11621538193758657361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069772 n).toNat

end

end A069771.P11621538193758657361

/-! ## A069771.P14664057268977327663

`A069772(A082316(A082313(n)))`
-/

namespace A069771.P14664057268977327663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A082316 (A082313 n).toNat).toNat

end

end A069771.P14664057268977327663

/-! ## A069771.P15172689716015542724

`A069772(A057505(A057163(n)))`
-/

namespace A069771.P15172689716015542724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A057505 (A057163 n).toNat).toNat

end

end A069771.P15172689716015542724

/-! ## A069771.P4675976276772052001

`A069772(A057163(A057506(n)))`
-/

namespace A069771.P4675976276772052001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A057163 (A057506 n).toNat).toNat

end

end A069771.P4675976276772052001

/-! ## A069771.P302065148103058068

`A069889(A069772(A057501(n)))`
-/

namespace A069771.P302065148103058068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A069772 (A057501 n).toNat).toNat

end

end A069771.P302065148103058068

/-! ## A069771.P9992099780858293327

`A069888(A069772(A057502(n)))`
-/

namespace A069771.P9992099780858293327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A069772 (A057502 n).toNat).toNat

end

end A069771.P9992099780858293327

/-! ## A069771.P17120061247852437173

`A069772(A057501(A057501(A082314(n))))`
-/

namespace A069771.P17120061247852437173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A057501 (A057501 (A082314 n).toNat).toNat).toNat

end

end A069771.P17120061247852437173

/-! ## A069771.P15524629478290010029

`A082313(A069888(A069772(A069888(n))))`
-/

namespace A069771.P15524629478290010029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A069888 (A069772 (A069888 n).toNat).toNat).toNat

end

end A069771.P15524629478290010029

/-! ## A069771.P3479139040190381627

`A082314(A069889(A069772(A069889(n))))`
-/

namespace A069771.P3479139040190381627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069889 (A069772 (A069889 n).toNat).toNat).toNat

end

end A069771.P3479139040190381627

/-! ## A069771.P14270006489701804475

`A126315(A125976(n))`
-/

namespace A069771.P14270006489701804475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A125976 n).toNat

end

end A069771.P14270006489701804475

/-! ## A069771.P8303487474237935157

`A126313(A125976(A057164(n)))`
-/

namespace A069771.P8303487474237935157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A125976 (A057164 n).toNat).toNat

end

end A069771.P8303487474237935157

/-! ## A069771.P13254176700402127729

`A126313(A057505(A125977(n)))`
-/

namespace A069771.P13254176700402127729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A057505 (A125977 n).toNat).toNat

end

end A069771.P13254176700402127729

/-! ## A069771.P5406558023332733500

`A127292(A057164(A127291(n)))`
-/

namespace A069771.P5406558023332733500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A057164 (A127291 n).toNat).toNat

end

end A069771.P5406558023332733500

/-!
# A069772: Self-inverse permutation of natural numbers induced by the automorphism xReflectHandshakes acting on the parenthesizations encoded by A014486.

The programs for A069772, there is no canonical definition to state claims against.
-/

/-! ## A069772.P5918339986743825129

`A069771(A057164(n))`
-/

namespace A069772.P5918339986743825129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A057164 n).toNat

end

end A069772.P5918339986743825129

/-! ## A069772.P4506891060593150902

`A069771(A057505(A057163(n)))`
-/

namespace A069772.P4506891060593150902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A057505 (A057163 n).toNat).toNat

end

end A069772.P4506891060593150902

/-! ## A069772.P12577793101561458800

`A069888(A069771(A057501(n)))`
-/

namespace A069772.P12577793101561458800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A069771 (A057501 n).toNat).toNat

end

end A069772.P12577793101561458800

/-! ## A069772.P5147243391817345873

`A057501(A069889(A069771(n)))`
-/

namespace A069772.P5147243391817345873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069889 (A069771 n).toNat).toNat

end

end A069772.P5147243391817345873

/-! ## A069772.P6776544071313603389

`A069771(A057501(A057501(A082314(n))))`
-/

namespace A069772.P6776544071313603389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A057501 (A057501 (A082314 n).toNat).toNat).toNat

end

end A069772.P6776544071313603389

/-! ## A069772.P11275757575811472680

`A082314(A069889(A069771(A069888(n))))`
-/

namespace A069772.P11275757575811472680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069889 (A069771 (A069888 n).toNat).toNat).toNat

end

end A069772.P11275757575811472680

/-! ## A069772.P10429391892357808461

`A082313(A069888(A069771(A069889(n))))`
-/

namespace A069772.P10429391892357808461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A069888 (A069771 (A069889 n).toNat).toNat).toNat

end

end A069772.P10429391892357808461

/-! ## A069772.P17178019004563400930

`A126313(A125976(n))`
-/

namespace A069772.P17178019004563400930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A125976 n).toNat

end

end A069772.P17178019004563400930

/-! ## A069772.P16622378329736302749

`A126313(A057163(A125977(n)))`
-/

namespace A069772.P16622378329736302749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A057163 (A125977 n).toNat).toNat

end

end A069772.P16622378329736302749

/-! ## A069772.P185090295342369962

`A127292(A057164(A127289(n)))`
-/

namespace A069772.P185090295342369962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A057164 (A127289 n).toNat).toNat

end

end A069772.P185090295342369962

/-!
# A069773: Permutation of natural numbers induced by the automorphism RoblDownCar_et_Swap! acting on the parenthesizations encoded by A014486.

The programs for A069773, there is no canonical definition to state claims against.
-/

/-! ## A069773.P15032196510450863963

`A069775(A069770(n))`
-/

namespace A069773.P15032196510450863963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069775 (A069770 n).toNat

end

end A069773.P15032196510450863963

/-! ## A069773.P2242321644337749378

`A082331(A057505(n))`
-/

namespace A069773.P2242321644337749378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A057505 n).toNat

end

end A069773.P2242321644337749378

/-! ## A069773.P18129053103608758880

`A082333(A082332(n))`
-/

namespace A069773.P18129053103608758880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A082332 n).toNat

end

end A069773.P18129053103608758880

/-! ## A069773.P858038194702074002

`A057163(A057501(A057163(n)))`
-/

namespace A069773.P858038194702074002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057501 (A057163 n).toNat).toNat

end

end A069773.P858038194702074002

/-! ## A069773.P5612046085388640409

`A069775(A069774(A069775(n)))`
-/

namespace A069773.P5612046085388640409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069775 (A069774 (A069775 n).toNat).toNat

end

end A069773.P5612046085388640409

/-! ## A069773.P12300334651325149703

`A069787(A069774(A069787(n)))`
-/

namespace A069773.P12300334651325149703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A069774 (A069787 n).toNat).toNat

end

end A069773.P12300334651325149703

/-! ## A069773.P16206387261202457947

`A082333(A057502(A082334(n)))`
-/

namespace A069773.P16206387261202457947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A057502 (A082334 n).toNat).toNat

end

end A069773.P16206387261202457947

/-! ## A069773.P4381410598031926749

`A082331(A057164(A082331(A069888(n))))`
-/

namespace A069773.P4381410598031926749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A057164 (A082331 (A069888 n).toNat).toNat).toNat

end

end A069773.P4381410598031926749

/-! ## A069773.P14800428076450795712

`A082333(A069888(A082333(A082313(n))))`
-/

namespace A069773.P14800428076450795712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A069888 (A082333 (A082313 n).toNat).toNat).toNat

end

end A069773.P14800428076450795712

/-! ## A069773.P6537548917938004439

`A082333(A069888(A082333(A069888(A057502(n)))))`
-/

namespace A069773.P6537548917938004439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A069888 (A082333 (A069888 (A057502 n).toNat).toNat).toNat).toNat

end

end A069773.P6537548917938004439

/-! ## A069773.P1083228400755706185

`A082333(A069888(A082331(A057163(A082331(n)))))`
-/

namespace A069773.P1083228400755706185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A069888 (A082331 (A057163 (A082331 n).toNat).toNat).toNat).toNat

end

end A069773.P1083228400755706185

/-! ## A069773.P16944638374668146668

`A082333(A069888(A082333(A057163(A082333(n)))))`
-/

namespace A069773.P16944638374668146668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A069888 (A082333 (A057163 (A082333 n).toNat).toNat).toNat).toNat

end

end A069773.P16944638374668146668

/-! ## A069773.P218654699731265891

`A069768(A130347(n))`
-/

namespace A069773.P218654699731265891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130347 n).toNat

end

end A069773.P218654699731265891

/-!
# A069774: Permutation of natural numbers induced by the automorphism RoblDownCar_et_SwapInv! acting on the parenthesizations encoded by A014486.

The programs for A069774, there is no canonical definition to state claims against.
-/

/-! ## A069774.P9158560969365197811

`A069770(A069776(n))`
-/

namespace A069774.P9158560969365197811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A069776 n).toNat

end

end A069774.P9158560969365197811

/-! ## A069774.P10056526627421883235

`A057506(A082332(n))`
-/

namespace A069774.P10056526627421883235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A082332 n).toNat

end

end A069774.P10056526627421883235

/-! ## A069774.P4571979863534769636

`A082331(A082334(n))`
-/

namespace A069774.P4571979863534769636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A082334 n).toNat

end

end A069774.P4571979863534769636

/-! ## A069774.P1605773956274720116

`A057163(A057502(A057163(n)))`
-/

namespace A069774.P1605773956274720116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057502 (A057163 n).toNat).toNat

end

end A069774.P1605773956274720116

/-! ## A069774.P8140811551373401053

`A057506(A057501(A057505(n)))`
-/

namespace A069774.P8140811551373401053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057501 (A057505 n).toNat).toNat

end

end A069774.P8140811551373401053

/-! ## A069774.P6574563412889851523

`A069787(A069773(A069787(n)))`
-/

namespace A069774.P6574563412889851523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A069773 (A069787 n).toNat).toNat

end

end A069774.P6574563412889851523

/-! ## A069774.P9979033863056552032

`A057163(A082316(A057163(A069773(n))))`
-/

namespace A069774.P9979033863056552032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082316 (A057163 (A069773 n).toNat).toNat).toNat

end

end A069774.P9979033863056552032

/-! ## A069774.P6514286747269469485

`A082331(A082313(A082331(A069888(n))))`
-/

namespace A069774.P6514286747269469485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A082313 (A082331 (A069888 n).toNat).toNat).toNat

end

end A069774.P6514286747269469485

/-! ## A069774.P9099504734034375764

`A082331(A082313(A082333(A082313(n))))`
-/

namespace A069774.P9099504734034375764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A082313 (A082333 (A082313 n).toNat).toNat).toNat

end

end A069774.P9099504734034375764

/-! ## A069774.P35796654518482127

`A057506(A057501(A057164(A057506(A057164(n)))))`
-/

namespace A069774.P35796654518482127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057501 (A057164 (A057506 (A057164 n).toNat).toNat).toNat).toNat

end

end A069774.P35796654518482127

/-! ## A069774.P17502150070477211598

`A069768(A057162(A057501(A069767(A057161(n)))))`
-/

namespace A069774.P17502150070477211598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057162 (A057501 (A069767 (A057161 n).toNat).toNat).toNat).toNat

end

end A069774.P17502150070477211598

/-! ## A069774.P6541598068010084659

`A057163(A069888(A082334(A082334(A082333(n)))))`
-/

namespace A069774.P6541598068010084659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069888 (A082334 (A082334 (A082333 n).toNat).toNat).toNat).toNat

end

end A069774.P6541598068010084659

/-! ## A069774.P13876285602876410488

`A082331(A082313(A082331(A057163(A082331(n)))))`
-/

namespace A069774.P13876285602876410488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A082313 (A082331 (A057163 (A082331 n).toNat).toNat).toNat).toNat

end

end A069774.P13876285602876410488

/-! ## A069774.P14059360606151919343

`A082331(A082313(A082331(A082313(A057501(n)))))`
-/

namespace A069774.P14059360606151919343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A082313 (A082331 (A082313 (A057501 n).toNat).toNat).toNat).toNat

end

end A069774.P14059360606151919343

/-! ## A069774.P8982532620511973360

`A130348(A069767(n))`
-/

namespace A069774.P8982532620511973360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 (A069767 n).toNat

end

end A069774.P8982532620511973360

/-!
# A069775: Permutation of natural numbers induced by the automorphism gma069775! acting on the parenthesizations encoded by A014486.

The programs for A069775, there is no canonical definition to state claims against.
-/

/-! ## A069775.P11429635903294986777

`A069769(A069776(A069769(n)))`
-/

namespace A069775.P11429635903294986777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069769 (A069776 (A069769 n).toNat).toNat

end

end A069775.P11429635903294986777

/-! ## A069775.P8396867664497803249

`A069787(A069776(A069787(n)))`
-/

namespace A069775.P8396867664497803249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A069776 (A069787 n).toNat).toNat

end

end A069775.P8396867664497803249

/-! ## A069775.P11136704704377238422

`A069773(A069770(n))`
-/

namespace A069775.P11136704704377238422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A069770 n).toNat

end

end A069775.P11136704704377238422

/-! ## A069775.P16094641056612609908

`A057163(A057509(A057163(n)))`
-/

namespace A069775.P16094641056612609908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057509 (A057163 n).toNat).toNat

end

end A069775.P16094641056612609908

/-! ## A069775.P4942875266630834761

`A069773(A069776(A069773(n)))`
-/

namespace A069775.P4942875266630834761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A069776 (A069773 n).toNat).toNat

end

end A069775.P4942875266630834761

/-! ## A069775.P5039308573184974628

`A057163(A057161(A069776(A057163(A057161(n)))))`
-/

namespace A069775.P5039308573184974628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057161 (A069776 (A057163 (A057161 n).toNat).toNat).toNat).toNat

end

end A069775.P5039308573184974628

/-! ## A069775.P17102052703844130790

`A069768(A130363(n))`
-/

namespace A069775.P17102052703844130790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130363 n).toNat

end

end A069775.P17102052703844130790

/-! ## A069775.P13732365494402466232

`A122313(A122313(A069776(n)))`
-/

namespace A069775.P13732365494402466232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A122313 (A069776 n).toNat).toNat

end

end A069775.P13732365494402466232

/-! ## A069775.P15382187975482140280

`A086429(A057509(n))`
-/

namespace A069775.P15382187975482140280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086429 (A057509 n).toNat

end

end A069775.P15382187975482140280

/-!
# A069776: Permutation of natural numbers induced by the automorphism gma069776! acting on the parenthesizations encoded by A014486.

The programs for A069776, there is no canonical definition to state claims against.
-/

/-! ## A069776.P96764981774344666

`A069769(A069775(A069769(n)))`
-/

namespace A069776.P96764981774344666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069769 (A069775 (A069769 n).toNat).toNat

end

end A069776.P96764981774344666

/-! ## A069776.P4375210469645157171

`A069787(A069775(A069787(n)))`
-/

namespace A069776.P4375210469645157171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A069775 (A069787 n).toNat).toNat

end

end A069776.P4375210469645157171

/-! ## A069776.P6754059374593610180

`A069770(A069774(n))`
-/

namespace A069776.P6754059374593610180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A069774 n).toNat

end

end A069776.P6754059374593610180

/-! ## A069776.P9842344778250529310

`A057163(A057510(A057163(n)))`
-/

namespace A069776.P9842344778250529310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057510 (A057163 n).toNat).toNat

end

end A069776.P9842344778250529310

/-! ## A069776.P319761921246803976

`A130364(A069767(n))`
-/

namespace A069776.P319761921246803976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130364 (A069767 n).toNat

end

end A069776.P319761921246803976

/-! ## A069776.P11034576479112849774

`A069768(A131006(A130365(A131005(n))))`
-/

namespace A069776.P11034576479112849774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A131006 (A130365 (A131005 n).toNat).toNat).toNat

end

end A069776.P11034576479112849774

/-! ## A069776.P11139111725392287870

`A122314(A122314(A069775(n)))`
-/

namespace A069776.P11139111725392287870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122314 (A122314 (A069775 n).toNat).toNat

end

end A069776.P11139111725392287870

/-! ## A069776.P1079340402156528258

`A057510(A086430(n))`
-/

namespace A069776.P1079340402156528258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A086430 n).toNat

end

end A069776.P1079340402156528258

/-!
# A069777: Array of q-factorial numbers n!_q, read by ascending antidiagonals.

The programs for A069777, there is no canonical definition to state claims against.
-/

/-! ## A069777.P7539500322497015026

`A156540(A056943(n))`
-/

namespace A069777.P7539500322497015026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156540 (A056943 n).toNat

end

end A069777.P7539500322497015026

/-! ## A069777.P10747923138489437026

`A156540(A038722(n+1)-A123578(n))`
-/

namespace A069777.P10747923138489437026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156540 (A038722 (n + 1) - A123578 n).toNat

end

end A069777.P10747923138489437026

/-! ## A069777.P10446308226912775331

`A156540(A038722(n+1)-A002024(n+1))`
-/

namespace A069777.P10446308226912775331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156540 (A038722 (n + 1) - A002024 (n + 1)).toNat

end

end A069777.P10446308226912775331

/-! ## A069777.P4601311666787497066

`A018772(A064094(n))`
-/

namespace A069777.P4601311666787497066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018772 (A064094 n).toNat

end

end A069777.P4601311666787497066

/-! ## A069777.P11562194821898330343

`A390309(A256268(n))`
-/

namespace A069777.P11562194821898330343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390309 (A256268 n).toNat

end

end A069777.P11562194821898330343

/-!
# A069778: q-factorial numbers 3!_q.

The programs for A069778, the canonical program `A069778.P902300681639061686` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069778 has offset 0).

The definition of A069778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069778.P902300681639061686

`(n+1)*(n²+n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069778

/-- `(n+1)*(n²+n+1)` -/
def P902300681639061686.Spec : Prop :=
  ∀ n, (P902300681639061686.a n : ℤ) = A069778 n

theorem P902300681639061686.correct : P902300681639061686.Spec := by
  intro n
  simp only [A069778]

end A069778

/-! ## A069778.P11828178016030062015

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=21, a(3)=52`
-/

namespace A069778.P11828178016030062015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 21, 52] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A069778.P11828178016030062015

namespace A069778

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11828178016030062015.Spec : Prop :=
  ∀ n, P11828178016030062015.a n = A069778 n

theorem P11828178016030062015.correct : P11828178016030062015.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A069778, Nat.add_sub_cancel, A069778.P11828178016030062015.a, A069778.P902300681639061686.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A069778, Nat.add_sub_cancel, A069778.P11828178016030062015.a, A069778.P902300681639061686.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A069778

/-! ## A069778.P2703585318864040315

`floor((n+1)/Δ[atan(n)])`
-/

namespace A069778.P2703585318864040315
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A069778.P2703585318864040315

namespace A069778

/-- `floor((n+1)/Δ[atan(n)])` -/
def P2703585318864040315.Spec : Prop :=
  ∀ n, P2703585318864040315.a n = A069778 n

end A069778

/-! ## A069778.P17134950529747400234

`round((n+1)/Δ[atan(n)])`
-/

namespace A069778.P17134950529747400234
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / (f1 (n + 1) - f1 n))

end

end A069778.P17134950529747400234

namespace A069778

/-- `round((n+1)/Δ[atan(n)])` -/
def P17134950529747400234.Spec : Prop :=
  ∀ n, P17134950529747400234.a n = A069778 n

end A069778

/-! ## A069778.P799556464295174804

`lcm(∑[2*n]+1, n+1)`
-/

namespace A069778.P799556464295174804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 1)

end

end A069778.P799556464295174804

namespace A069778

/-- `lcm(∑[2*n]+1, n+1)` -/
def P799556464295174804.Spec : Prop :=
  ∀ n, (P799556464295174804.a n : ℤ) = A069778 n

end A069778

/-! ## A069778.P15354065994012744421

`lcm(n, (n+1)²)+1+n`
-/

namespace A069778.P15354065994012744421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ 2) + 1 + n

end

end A069778.P15354065994012744421

namespace A069778

/-- `lcm(n, (n+1)²)+1+n` -/
def P15354065994012744421.Spec : Prop :=
  ∀ n, (P15354065994012744421.a n : ℤ) = A069778 n

end A069778

/-! ## A069778.P18205968341442582518

`n/cos(atan(n+1))²+1`
-/

namespace A069778.P18205968341442582518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.cos (Real.arctan (n + 1 : ℝ)) ^ 2 + 1

end

end A069778.P18205968341442582518

namespace A069778

/-- `n/cos(atan(n+1))²+1` -/
def P18205968341442582518.Spec : Prop :=
  ∀ n, P18205968341442582518.a n = (A069778 n : ℝ)

end A069778

/-! ## A069778.P14018635747126706146

`n/sin(acot(n+1))²+1`
-/

namespace A069778.P14018635747126706146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sin (SequenceMachineLib.acot (n + 1 : ℝ)) ^ 2 + 1

end

end A069778.P14018635747126706146

namespace A069778

/-- `n/sin(acot(n+1))²+1` -/
def P14018635747126706146.Spec : Prop :=
  ∀ n, P14018635747126706146.a n = (A069778 n : ℝ)

end A069778

/-! ## A069778.P1126688321401563342

`∑[∑[ogf((1+2x+3x^2)/(1-2x+x^2))]]`
-/

namespace A069778.P1126688321401563342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069778.P1126688321401563342

namespace A069778

/-- `∑[∑[ogf((1+2x+3x^2)/(1-2x+x^2))]]` -/
def P1126688321401563342.Spec : Prop :=
  ∀ n, P1126688321401563342.a n = A069778 n

end A069778

/-! ## A069778.P17477331800695287449

`ogf((1+2x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A069778.P17477331800695287449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -4, 6, -4, 1] n

end

end A069778.P17477331800695287449

namespace A069778

/-- `ogf((1+2x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17477331800695287449.Spec : Prop :=
  ∀ n, P17477331800695287449.a n = A069778 n

end A069778

/-! ## A069778.P717344064600881764

`∑[3-∑[a(n-1)-6]]` with `a(0)=2`
-/

namespace A069778.P717344064600881764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069778.P717344064600881764

namespace A069778

/-- `∑[3-∑[a(n-1)-6]]` -/
def P717344064600881764.Spec : Prop :=
  ∀ n, P717344064600881764.a n = A069778 n

end A069778

/-! ## A069778.P2545572463734873625

`ceil(record[(1-n)^4]/(n+2))`
-/

namespace A069778.P2545572463734873625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 2 : ℚ)⌉

end

end A069778.P2545572463734873625

namespace A069778

/-- `ceil(record[(1-n)^4]/(n+2))` -/
def P2545572463734873625.Spec : Prop :=
  ∀ n, P2545572463734873625.a n = A069778 n

end A069778

/-! ## A069778.P8954279890990845652

`ceil(record[(n-1)²]²/(n+2))`
-/

namespace A069778.P8954279890990845652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 : ℚ) / (n + 2 : ℚ)⌉

end

end A069778.P8954279890990845652

namespace A069778

/-- `ceil(record[(n-1)²]²/(n+2))` -/
def P8954279890990845652.Spec : Prop :=
  ∀ n, P8954279890990845652.a n = A069778 n

end A069778

/-! ## A069778.P1050369361830630746

`ceil(or(1, (n+1)^4)/(n+2))`
-/

namespace A069778.P1050369361830630746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 ((n + 1) ^ 4) : ℚ) / (n + 2 : ℚ)⌉

end

end A069778.P1050369361830630746

namespace A069778

/-- `ceil(or(1, (n+1)^4)/(n+2))` -/
def P1050369361830630746.Spec : Prop :=
  ∀ n, P1050369361830630746.a n = A069778 n

end A069778

/-! ## A069778.P3568291782938654857

`ceil(C(n+1, n)^4/(n+2))`
-/

namespace A069778.P3568291782938654857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n ^ 4 : ℚ) / (n + 2 : ℚ)⌉

end

end A069778.P3568291782938654857

namespace A069778

/-- `ceil(C(n+1, n)^4/(n+2))` -/
def P3568291782938654857.Spec : Prop :=
  ∀ n, P3568291782938654857.a n = A069778 n

end A069778

/-! ## A069778.P17392864222553552982

`floor((n+1)/acot(n²+n+1))`
-/

namespace A069778.P17392864222553552982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 + (n + 1) : ℝ)⌋

end

end A069778.P17392864222553552982

namespace A069778

/-- `floor((n+1)/acot(n²+n+1))` -/
def P17392864222553552982.Spec : Prop :=
  ∀ n, P17392864222553552982.a n = A069778 n

end A069778

/-! ## A069778.P237108087822336534

`a(n-1)+n*3*n+n+1` with `a(0)=1`
-/

namespace A069778.P237108087822336534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n * (3 * n) + (n + 1))

end

end A069778.P237108087822336534

namespace A069778

/-- `a(n-1)+n*3*n+n+1` -/
def P237108087822336534.Spec : Prop :=
  ∀ n, (P237108087822336534.a n : ℤ) = A069778 n

theorem P237108087822336534.correct : P237108087822336534.Spec := by
  intro n
  induction n with
  | zero => simp [A069778, A069778.P237108087822336534.a, A069778.P902300681639061686.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069778, Nat.add_sub_cancel, A069778.P237108087822336534.a, A069778.P902300681639061686.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069778

/-! ## A069778.P8151577743875210253

`∑[A056108(n)]`
-/

namespace A069778.P8151577743875210253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069778.P8151577743875210253

namespace A069778

/-- `∑[A056108(n)]` -/
def P8151577743875210253.Spec : Prop :=
  ∀ n, P8151577743875210253.a n = A069778 n

end A069778

/-! ## A069778.P18103059285560148442

`A261893(n)-n`
-/

namespace A069778.P18103059285560148442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 n - (n : ℤ)

end

end A069778.P18103059285560148442

namespace A069778

/-- `A261893(n)-n` -/
def P18103059285560148442.Spec : Prop :=
  ∀ n, P18103059285560148442.a n = A069778 n

theorem P18103059285560148442.correct : P18103059285560148442.Spec := by
  intro n
  simp only [A069778, Nat.add_sub_cancel, A069778.P18103059285560148442.a, A069778.P902300681639061686.a, A261893, A261893.P3894214550865537964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069778

/-! ## A069778.P13498790034270954189

`∑[A049451(n)+1]`
-/

namespace A069778.P13498790034270954189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069778.P13498790034270954189

namespace A069778

/-- `∑[A049451(n)+1]` -/
def P13498790034270954189.Spec : Prop :=
  ∀ n, P13498790034270954189.a n = A069778 n

end A069778

/-!
# A069779: q-factorial numbers 4!_q.

The programs for A069779, the canonical program `A069779.P16547002669838579975` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069779 has offset 0).

The definition of A069779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069779.P16547002669838579975

`(n+1)*(n²+n+1)*(n^3+n²+n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069779

/-- `(n+1)*(n²+n+1)*(n^3+n²+n+1)` -/
def P16547002669838579975.Spec : Prop :=
  ∀ n, (P16547002669838579975.a n : ℤ) = A069779 n

theorem P16547002669838579975.correct : P16547002669838579975.Spec := by
  intro n
  simp only [A069779]

end A069779

/-! ## A069779.P11368479535281126279

`A081435(n)²-∑[n]²`
-/

namespace A069779.P11368479535281126279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n ^ 2 - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A069779.P11368479535281126279

namespace A069779

/-- `A081435(n)²-∑[n]²` -/
def P11368479535281126279.Spec : Prop :=
  ∀ n, P11368479535281126279.a n = A069779 n

end A069779

/-! ## A069779.P16162729451241728819

`A218503(n)/A053699(n)`
-/

namespace A069779.P16162729451241728819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218503 n : ℚ) / (A053699 n : ℚ)

end

end A069779.P16162729451241728819

namespace A069779

/-- `A218503(n)/A053699(n)` -/
def P16162729451241728819.Spec : Prop :=
  ∀ n, P16162729451241728819.a n = (A069779 n : ℚ)

theorem P16162729451241728819.correct : P16162729451241728819.Spec := by
  intro n
  simp only [A069779, Nat.add_sub_cancel, A069779.P16162729451241728819.a, A069779.P16547002669838579975.a, A053699, A053699.P12401549741545410249.a, A218503, A218503.P11395741053979960510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069779

/-! ## A069779.P473375208045156892

`lcm(A069778(n), A128091(n+1))`
-/

namespace A069779.P473375208045156892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069778 n) (A128091 (n + 1))

end

end A069779.P473375208045156892

namespace A069779

/-- `lcm(A069778(n), A128091(n+1))` -/
def P473375208045156892.Spec : Prop :=
  ∀ n, (P473375208045156892.a n : ℤ) = A069779 n

end A069779

/-! ## A069779.P6872204330793402505

`A069778(n)+A027444(n)*A069778(n)`
-/

namespace A069779.P6872204330793402505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + A027444 n * A069778 n

end

end A069779.P6872204330793402505

namespace A069779

/-- `A069778(n)+A027444(n)*A069778(n)` -/
def P6872204330793402505.Spec : Prop :=
  ∀ n, P6872204330793402505.a n = A069779 n

theorem P6872204330793402505.correct : P6872204330793402505.Spec := by
  intro n
  simp only [A069779, Nat.add_sub_cancel, A069779.P6872204330793402505.a, A069779.P16547002669838579975.a, A027444, A027444.P13486811862535796769.a, A069778, A069778.P902300681639061686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069779

/-! ## A069779.P10439826877845449530

`A309372(n+1)+n²*A309372(n+1)`
-/

namespace A069779.P10439826877845449530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309372 (n + 1) + (n ^ 2 : ℤ) * A309372 (n + 1)

end

end A069779.P10439826877845449530

namespace A069779

/-- `A309372(n+1)+n²*A309372(n+1)` -/
def P10439826877845449530.Spec : Prop :=
  ∀ n, P10439826877845449530.a n = A069779 n

theorem P10439826877845449530.correct : P10439826877845449530.Spec := by
  intro n
  simp only [A069779, Nat.add_sub_cancel, A069779.P10439826877845449530.a, A069779.P16547002669838579975.a, A309372, A309372.P14598993035271615198.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069779

/-! ## A069779.P1764770134950785915

`A053698(n)+A053698(n)*A062158(n+1)`
-/

namespace A069779.P1764770134950785915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n + A053698 n * A062158 (n + 1)

end

end A069779.P1764770134950785915

namespace A069779

/-- `A053698(n)+A053698(n)*A062158(n+1)` -/
def P1764770134950785915.Spec : Prop :=
  ∀ n, P1764770134950785915.a n = A069779 n

theorem P1764770134950785915.correct : P1764770134950785915.Spec := by
  intro n
  simp only [A069779, Nat.add_sub_cancel, A069779.P1764770134950785915.a, A069779.P16547002669838579975.a, A053698, A053698.P17380684271159484773.a, A062158, A062158.P5395940326210202878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069779

/-! ## A069779.P13573701916004136553

`A242604(n+1)+A053698(∑[2*n])`
-/

namespace A069779.P13573701916004136553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242604 (n + 1) + A053698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069779.P13573701916004136553

namespace A069779

/-- `A242604(n+1)+A053698(∑[2*n])` -/
def P13573701916004136553.Spec : Prop :=
  ∀ n, P13573701916004136553.a n = A069779 n

end A069779

/-! ## A069779.P5035399470353668550

`A062158(A002061(n+1))+A053698(n)`
-/

namespace A069779.P5035399470353668550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062158 (A002061 (n + 1)).toNat + A053698 n

end

end A069779.P5035399470353668550

namespace A069779

/-- `A062158(A002061(n+1))+A053698(n)` -/
def P5035399470353668550.Spec : Prop :=
  ∀ n, P5035399470353668550.a n = A069779 n

end A069779

/-!
# A069780: a(n) = gcd(d(n^3), d(n)).

The programs for A069780, the canonical program `A069780.P15483284136396145549` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069780 has offset 1).

The definition of A069780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069780.P15483284136396145549

`gcd(A000005((n+1)^3), A000005(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069780

/-- `gcd(A000005((n+1)^3), A000005(n+1))` -/
def P15483284136396145549.Spec : Prop :=
  ∀ n, (P15483284136396145549.a n : ℤ) = A069780 (n + 1)

theorem P15483284136396145549.correct : P15483284136396145549.Spec := by
  intro n
  simp only [A069780, Nat.add_sub_cancel]

end A069780

/-! ## A069780.P2185669572959496617

`gcd(Δ[A006218(n)], A294072(n+1))`
-/

namespace A069780.P2185669572959496617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A294072 (n + 1))

end

end A069780.P2185669572959496617

namespace A069780

/-- `gcd(Δ[A006218(n)], A294072(n+1))` -/
def P2185669572959496617.Spec : Prop :=
  ∀ n, (P2185669572959496617.a n : ℤ) = A069780 (n + 1)

end A069780

/-! ## A069780.P11482519357305087547

`A359037(n+1)/A072696(n+1)`
-/

namespace A069780.P11482519357305087547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359037 (n + 1) : ℚ) / (A072696 (n + 1) : ℚ)

end

end A069780.P11482519357305087547

namespace A069780

/-- `A359037(n+1)/A072696(n+1)` -/
def P11482519357305087547.Spec : Prop :=
  ∀ n, P11482519357305087547.a n = (A069780 (n + 1) : ℚ)

end A069780

/-! ## A069780.P6399400065249815644

`gcd(A000005(n+1), A048785(n+1))`
-/

namespace A069780.P6399400065249815644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A048785 (n + 1))

end

end A069780.P6399400065249815644

namespace A069780

/-- `gcd(A000005(n+1), A048785(n+1))` -/
def P6399400065249815644.Spec : Prop :=
  ∀ n, (P6399400065249815644.a n : ℤ) = A069780 (n + 1)

end A069780

/-! ## A069780.P4294069949527864731

`gcd(A294072(n+1)+A072696(n+1), A072696(n+1))`
-/

namespace A069780.P4294069949527864731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294072 (n + 1) + A072696 (n + 1)) (A072696 (n + 1))

end

end A069780.P4294069949527864731

namespace A069780

/-- `gcd(A294072(n+1)+A072696(n+1), A072696(n+1))` -/
def P4294069949527864731.Spec : Prop :=
  ∀ n, (P4294069949527864731.a n : ℤ) = A069780 (n + 1)

end A069780

/-! ## A069780.P9695579747840445247

`gcd(A072696(n+1), A294072(A003961(n+1)))`
-/

namespace A069780.P9695579747840445247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072696 (n + 1)) (A294072 (A003961 (n + 1)).toNat)

end

end A069780.P9695579747840445247

namespace A069780

/-- `gcd(A072696(n+1), A294072(A003961(n+1)))` -/
def P9695579747840445247.Spec : Prop :=
  ∀ n, (P9695579747840445247.a n : ℤ) = A069780 (n + 1)

end A069780

/-! ## A069780.P13068547935631478315

`gcd(A098232(n), A383158(n+1))`
-/

namespace A069780.P13068547935631478315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098232 n) (A383158 (n + 1))

end

end A069780.P13068547935631478315

namespace A069780

/-- `gcd(A098232(n), A383158(n+1))` -/
def P13068547935631478315.Spec : Prop :=
  ∀ n, (P13068547935631478315.a n : ℤ) = A069780 (n + 1)

end A069780

/-! ## A069780.P7919126572362088067

`A295878(A001047(A295878(n+1)))`
-/

namespace A069780.P7919126572362088067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (A001047 (A295878 (n + 1)).toNat).toNat

end

end A069780.P7919126572362088067

namespace A069780

/-- `A295878(A001047(A295878(n+1)))` -/
def P7919126572362088067.Spec : Prop :=
  ∀ n, P7919126572362088067.a n = A069780 (n + 1)

end A069780

/-! ## A069780.P6899976988721161466

`A358260(A377141(A392628(n+1))²)`
-/

namespace A069780.P6899976988721161466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358260 (A377141 (A392628 (n + 1)).toNat ^ 2).toNat

end

end A069780.P6899976988721161466

namespace A069780

/-- `A358260(A377141(A392628(n+1))²)` -/
def P6899976988721161466.Spec : Prop :=
  ∀ n, P6899976988721161466.a n = A069780 (n + 1)

end A069780

/-!
# A069783: a(n) = gcd(d(n!^3), d(n!)), where d() is the number of divisors function.

The programs for A069783, there is no canonical definition to state claims against.
-/

/-! ## A069783.P11881258453915430778

`∏{e}[(n+1)!, A327529(#+1)]`
-/

namespace A069783.P11881258453915430778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A327529 (Nat.factorization (f1 n) p + 1)

end

end A069783.P11881258453915430778

/-! ## A069783.P2887067783480101586

`∏{e}[(n+1)!, #*A245656(#)+1]`
-/

namespace A069783.P2887067783480101586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) * A245656 (Nat.factorization (f1 n) p) + 1)

end

end A069783.P2887067783480101586

/-! ## A069783.P2009569840348787478

`2*a(A128981(2*(n+1))%n)` with `a(0)=1`
-/

namespace A069783.P2009569840348787478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.tmod (A128981 (2 * (n + 1))) (n : ℤ)).toNat

end

end A069783.P2009569840348787478

/-! ## A069783.P17472922191897643495

`gcd(2^n, A057355(abs(1-(-3)^n)))`
-/

namespace A069783.P17472922191897643495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ n : ℤ) (A057355 |1 - (-3) ^ n|.toNat)

end

end A069783.P17472922191897643495

/-! ## A069783.P6158655433422366958

`gcd(∏{e}[(n+1)!, #+1], A247248(∏{e}[(n+1)!, #+1]))`
-/

namespace A069783.P6158655433422366958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A247248 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A069783.P6158655433422366958

/-!
# A069784: Numbers m such that gcd(d((m!)^3), d(m!)) = 2^k, i.e., is a power of 2; d = A000005.

The programs for A069784, there is no canonical definition to state claims against.
-/

/-! ## A069784.P8881356815359416707

`lt[A186740(A320224(n+1)), A268188(n+3)]`
-/

namespace A069784.P8881356815359416707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186740 (A320224 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268188 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069784.P8881356815359416707

/-! ## A069784.P11075283779200520019

`lt[A186740(A320224(n+1)), A000378(2*(n+1))]`
-/

namespace A069784.P11075283779200520019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186740 (A320224 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069784.P11075283779200520019

/-! ## A069784.P1682803672772283568

`∑[A325827(A199932(∏{p}[n+1, #]))]`
-/

namespace A069784.P1682803672772283568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325827 (A199932 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069784.P1682803672772283568

/-! ## A069784.P10192399289138576939

`lt[A124733(A346132(n+1)), A250120(n)]`
-/

namespace A069784.P10192399289138576939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (A346132 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069784.P10192399289138576939

/-! ## A069784.P12912765364045782880

`eq[A219365(n+1), A219365(A219365(n+4))]+1`
-/

namespace A069784.P12912765364045782880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219365 (A219365 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069784.P12912765364045782880

/-!
# A069785: a(n) = A061680(n!).

The programs for A069785, there is no canonical definition to state claims against.
-/

/-! ## A069785.P7188505216781615449

`A028234(4*A027423(n+1))`
-/

namespace A069785.P7188505216781615449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (4 * A027423 (n + 1)).toNat

end

end A069785.P7188505216781615449

/-! ## A069785.P14947161466418213866

`A327539(4*A027423(n+1))`
-/

namespace A069785.P14947161466418213866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (4 * A027423 (n + 1)).toNat

end

end A069785.P14947161466418213866

/-! ## A069785.P2590110656552197697

`A028234(4*∑[A038024(n+1)])`
-/

namespace A069785.P2590110656552197697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (4 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A069785.P2590110656552197697

/-! ## A069785.P3474836495490492196

`A000265(A027423(n+1)*A102376(n))`
-/

namespace A069785.P3474836495490492196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A027423 (n + 1) * A102376 n).toNat

end

end A069785.P3474836495490492196

/-! ## A069785.P9744673257203217987

`A000265(A027423(n+1))%A057182(n+1)`
-/

namespace A069785.P9744673257203217987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A027423 (n + 1)).toNat) (A057182 (n + 1))

end

end A069785.P9744673257203217987

/-!
# A069787: Self-inverse permutation of natural numbers induced by the automorphism DeepRev1CarSide! acting on the parenthesizations encoded by A014486.

The programs for A069787, there is no canonical definition to state claims against.
-/

/-! ## A069787.P8908157509292704163

`A057163(A057164(A057163(n)))`
-/

namespace A069787.P8908157509292704163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057164 (A057163 n).toNat).toNat

end

end A069787.P8908157509292704163

/-! ## A069787.P12846656920226945309

`A057506(A057163(n))`
-/

namespace A069787.P12846656920226945309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057163 n).toNat

end

end A069787.P12846656920226945309

/-! ## A069787.P17042728698445881417

`A057506(A057506(A057164(n)))`
-/

namespace A069787.P17042728698445881417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A057164 n).toNat).toNat

end

end A069787.P17042728698445881417

/-! ## A069787.P7907609572442048532

`A071662(A057164(n))`
-/

namespace A069787.P7907609572442048532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 (A057164 n).toNat

end

end A069787.P7907609572442048532

/-! ## A069787.P13116878688141015609

`A057164(A071661(n))`
-/

namespace A069787.P13116878688141015609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A071661 n).toNat

end

end A069787.P13116878688141015609

/-! ## A069787.P10447293048982825707

`A057506(A057506(A082316(A082313(n))))`
-/

namespace A069787.P10447293048982825707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A082316 (A082313 n).toNat).toNat).toNat

end

end A069787.P10447293048982825707

/-! ## A069787.P8761204720771900566

`A057163(A057505(n))`
-/

namespace A069787.P8761204720771900566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057505 n).toNat

end

end A069787.P8761204720771900566

/-! ## A069787.P5701302482345753099

`A071664(A057163(A071662(n)))`
-/

namespace A069787.P5701302482345753099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A057163 (A071662 n).toNat).toNat

end

end A069787.P5701302482345753099

/-! ## A069787.P15354119959897706931

`A071661(A057163(A071663(n)))`
-/

namespace A069787.P15354119959897706931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A057163 (A071663 n).toNat).toNat

end

end A069787.P15354119959897706931

/-! ## A069787.P11467548670372953676

`A071666(A057163(A071664(n)))`
-/

namespace A069787.P11467548670372953676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071666 (A057163 (A071664 n).toNat).toNat

end

end A069787.P11467548670372953676

/-! ## A069787.P8596093279313606227

`A071663(A057163(A071665(n)))`
-/

namespace A069787.P8596093279313606227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A057163 (A071665 n).toNat).toNat

end

end A069787.P8596093279313606227

/-! ## A069787.P7170187510558715973

`A071668(A057163(A071666(n)))`
-/

namespace A069787.P7170187510558715973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A057163 (A071666 n).toNat).toNat

end

end A069787.P7170187510558715973

/-! ## A069787.P12406310222743049144

`A071665(A057163(A071667(n)))`
-/

namespace A069787.P12406310222743049144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 (A057163 (A071667 n).toNat).toNat

end

end A069787.P12406310222743049144

/-! ## A069787.P1771588260785359751

`A071670(A057163(A071668(n)))`
-/

namespace A069787.P1771588260785359751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A057163 (A071668 n).toNat).toNat

end

end A069787.P1771588260785359751

/-! ## A069787.P1249970628160630412

`A071667(A057163(A071669(n)))`
-/

namespace A069787.P1249970628160630412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A057163 (A071669 n).toNat).toNat

end

end A069787.P1249970628160630412

/-! ## A069787.P10413585179122560254

`A082331(A082313(A082332(n)))`
-/

namespace A069787.P10413585179122560254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A082313 (A082332 n).toNat).toNat

end

end A069787.P10413585179122560254

/-! ## A069787.P11509268309699984374

`A057163(A071667(A071661(A071670(n))))`
-/

namespace A069787.P11509268309699984374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071667 (A071661 (A071670 n).toNat).toNat).toNat

end

end A069787.P11509268309699984374

/-! ## A069787.P3875991483161471670

`A082331(A057501(A082331(A069888(n))))`
-/

namespace A069787.P3875991483161471670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A057501 (A082331 (A069888 n).toNat).toNat).toNat

end

end A069787.P3875991483161471670

/-!
# A069789: Smallest k>n such that sigma(n) divides sigma(k).

The programs for A069789, there is no canonical definition to state claims against.
-/

/-! ## A069789.P18380480803989101163

`A282255(n+1)+1+n`
-/

namespace A069789.P18380480803989101163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282255 (n + 1) + 1 + (n : ℤ)

end

end A069789.P18380480803989101163

/-! ## A069789.P776335000234200168

`A020725(A282255(n+1))+n`
-/

namespace A069789.P776335000234200168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A282255 (n + 1)).toNat + (n : ℤ)

end

end A069789.P776335000234200168

/-! ## A069789.P15070716424750677344

`A031285(A282255(n+1)+n)`
-/

namespace A069789.P15070716424750677344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A282255 (n + 1) + (n : ℤ)).toNat

end

end A069789.P15070716424750677344

/-! ## A069789.P15932378034898402559

`A282255(A077168(n))+n+1`
-/

namespace A069789.P15932378034898402559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282255 (A077168 n).toNat + (n + 1 : ℤ)

end

end A069789.P15932378034898402559

/-!
# A069790: Triangular numbers with arithmetic mean of digits = 1 (sum of digits = number of digits).

The programs for A069790, there is no canonical definition to state claims against.
-/

/-! ## A069790.P12716908791855019872

`∩[A061384(n+1), A069712(n)]`
-/

namespace A069790.P12716908791855019872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069712 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069790.P12716908791855019872

/-! ## A069790.P9784996101361449620

`∩[A061380(n+1), A061384(n+1)]`
-/

namespace A069790.P9784996101361449620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069790.P9784996101361449620

/-!
# A069791: Primes which yield primes each time the process of removing two outermost digits is carried out until finally a two digit prime (possibly with a leading 0) is obtained.

The programs for A069791, there is no canonical definition to state claims against.
-/

/-! ## A069791.P8354942197757808753

`∩[A001637(n+1), A069686(n+1)]`
-/

namespace A069791.P8354942197757808753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069791.P8354942197757808753

/-!
# A069792: Triangular numbers in A062918.

The programs for A069792, there is no canonical definition to state claims against.
-/

/-! ## A069792.P10242730027747226733

`∩[∑[A004086(n+1)], ∑[n]]`
-/

namespace A069792.P10242730027747226733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = x) n

end

end A069792.P10242730027747226733

/-! ## A069792.P12692903397707315405

`∩[A062918(n+1), A000217(n)]`
-/

namespace A069792.P12692903397707315405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069792.P12692903397707315405

/-! ## A069792.P7125008292287165746

`∩[A062918(n+1), A122493(n)]`
-/

namespace A069792.P7125008292287165746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069792.P7125008292287165746

/-! ## A069792.P13281913853873277087

`∩[A062918(n+1), A000096(n)+1]`
-/

namespace A069792.P13281913853873277087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069792.P13281913853873277087

/-! ## A069792.P4455541593281234873

`∩[A024412(n+1), A062918(n+1)]`
-/

namespace A069792.P4455541593281234873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069792.P4455541593281234873

/-!
# A069797: Smallest k>n such that phi(n) divides phi(k).

The programs for A069797, there is no canonical definition to state claims against.
-/

/-! ## A069797.P9241362797526601697

`A282016(n+1)+1+n`
-/

namespace A069797.P9241362797526601697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282016 (n + 1) + 1 + (n : ℤ)

end

end A069797.P9241362797526601697

/-! ## A069797.P2795874316165637275

`A020725(A282016(n+1))+n`
-/

namespace A069797.P2795874316165637275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A282016 (n + 1)).toNat + (n : ℤ)

end

end A069797.P2795874316165637275

/-! ## A069797.P8461733525014558426

`A031285(A282016(n+1)+n)`
-/

namespace A069797.P8461733525014558426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A282016 (n + 1) + (n : ℤ)).toNat

end

end A069797.P8461733525014558426

/-! ## A069797.P15641493732240345997

`A193176(A282016(n+1)+n)`
-/

namespace A069797.P15641493732240345997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193176 (A282016 (n + 1) + (n : ℤ)).toNat

end

end A069797.P15641493732240345997

/-! ## A069797.P8853976967931897498

`A282016(A077168(n))+n+1`
-/

namespace A069797.P8853976967931897498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282016 (A077168 n).toNat + (n + 1 : ℤ)

end

end A069797.P8853976967931897498

/-!
# A069798: Primes whose digit reversal is a nontrivial power.

The programs for A069798, there is no canonical definition to state claims against.
-/

/-! ## A069798.P3262256183006402995

`A000027(∪[A007488(n+1), A067194(n+1)])`
-/

namespace A069798.P3262256183006402995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067194 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A069798.P3262256183006402995

/-! ## A069798.P5520064611044912100

`A006530(∪[A007488(n+1), A067194(n+1)])`
-/

namespace A069798.P5520064611044912100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067194 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A069798.P5520064611044912100

/-! ## A069798.P14850206631313041360

`A020639(∪[A007488(n+1), A067194(n+1)])`
-/

namespace A069798.P14850206631313041360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067194 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A069798.P14850206631313041360

/-! ## A069798.P586770588837953832

`A243059(∪[A007488(n+1), A067194(n+1)])`
-/

namespace A069798.P586770588837953832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067194 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243059 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A069798.P586770588837953832

/-!
# A069799: The number obtained by reversing the sequence of nonzero exponents in the prime factorization of n with respect to distinct primes present, as ordered by their indices.

The programs for A069799, there is no canonical definition to state claims against.
-/

/-! ## A069799.P17107045014488003927

`A242419(A242415(n+1))`
-/

namespace A069799.P17107045014488003927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A242415 (n + 1)).toNat

end

end A069799.P17107045014488003927

/-! ## A069799.P11853401758417363518

`A085079((n+1)*A089247(n+1))/A085079(n+1)`
-/

namespace A069799.P11853401758417363518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085079 ((n + 1 : ℤ) * A089247 (n + 1)).toNat : ℚ) / (A085079 (n + 1) : ℚ)

end

end A069799.P11853401758417363518

/-! ## A069799.P6430213376788672571

`A085079(n+1)+A242419(n+1)-A085079(A242419(n+1))`
-/

namespace A069799.P6430213376788672571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1) + (A242419 (n + 1) - A085079 (A242419 (n + 1)).toNat)

end

end A069799.P6430213376788672571

/-! ## A069799.P15743631644655566349

`A225891(n+1)+val(A109494(n), 2*(n+1))`
-/

namespace A069799.P15743631644655566349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (n + 1) + (SequenceMachineLib.valuation (A109494 n).toNat (2 * (n + 1)) : ℤ)

end

end A069799.P15743631644655566349

/-! ## A069799.P6793691568484280623

`A225891(n+1)+A000038(∑[n*(3-char[2*n])]+1)`
-/

namespace A069799.P6793691568484280623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (n + 1) + A000038 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A069799.P6793691568484280623

/-! ## A069799.P9739837353562599578

`A225891(n-A057428(A109494(n)))`
-/

namespace A069799.P9739837353562599578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 ((n : ℤ) - A057428 (A109494 n).toNat).toNat

end

end A069799.P9739837353562599578

/-! ## A069799.P15877254777795053787

`A225891(n+1)+A000007(A109494(n))`
-/

namespace A069799.P15877254777795053787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (n + 1) + A000007 (A109494 n).toNat

end

end A069799.P15877254777795053787

/-! ## A069799.P14327206586560778046

`A043545(A049515(n+1))*A225891(n+1)`
-/

namespace A069799.P14327206586560778046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A049515 (n + 1)).toNat * A225891 (n + 1)

end

end A069799.P14327206586560778046

/-! ## A069799.P3382937760908817807

`A242420(A242419(n+1))`
-/

namespace A069799.P3382937760908817807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A242419 (n + 1)).toNat

end

end A069799.P3382937760908817807

/-! ## A069799.P14322061617427134592

`A225891(n+1)%A002189(n)`
-/

namespace A069799.P14322061617427134592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225891 (n + 1)) (A002189 n)

end

end A069799.P14322061617427134592

