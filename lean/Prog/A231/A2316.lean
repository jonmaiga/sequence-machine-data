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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231600: Output of a finite state automaton generating the period doubling sequence, when fed with binary representation of n, read from right to left.

The programs for A231600, the canonical program `A231600.P14215800754998338730` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231600 has offset 0).

The definition of A231600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231600.P13751926944375578722

`val(n+1, 2)%(2-char[2^n-1])`
-/

namespace A231600.P13751926944375578722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A231600.P13751926944375578722

namespace A231600

/-- `val(n+1, 2)%(2-char[2^n-1])` -/
def P13751926944375578722.Spec : Prop :=
  ∀ n, P13751926944375578722.a n = A231600 n

end A231600

/-! ## A231600.P10501809605078325

`col(((2^val(n+1, 2))%(n+1))%3)`
-/

namespace A231600.P10501809605078325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (2 ^ SequenceMachineLib.valuation (n + 1) 2 % (n + 1) % 3)

end

end A231600.P10501809605078325

namespace A231600

/-- `col(((2^val(n+1, 2))%(n+1))%3)` -/
def P10501809605078325.Spec : Prop :=
  ∀ n, (P10501809605078325.a n : ℤ) = A231600 n

end A231600

/-! ## A231600.P8834099620154870457

`and(log2(2-char[2^n-1]), val(n+1, 2))`
-/

namespace A231600.P8834099620154870457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℝ))) (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A231600.P8834099620154870457

namespace A231600

/-- `and(log2(2-char[2^n-1]), val(n+1, 2))` -/
def P8834099620154870457.Spec : Prop :=
  ∀ n, P8834099620154870457.a n = A231600 n

end A231600

/-! ## A231600.P2397786618469040872

`log2(gcd(val(n+1, 2)+1, 2-char[2^n-1]))`
-/

namespace A231600.P2397786618469040872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) : ℝ)

end

end A231600.P2397786618469040872

namespace A231600

/-- `log2(gcd(val(n+1, 2)+1, 2-char[2^n-1]))` -/
def P2397786618469040872.Spec : Prop :=
  ∀ n, P2397786618469040872.a n = (A231600 n : ℝ)

end A231600

/-! ## A231600.P14375326839905774524

`and(val(n+1, 2)², ceil((n+1)*∏{p}[n+1, #/(n+1)]))`
-/

namespace A231600.P14375326839905774524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.valuation (n + 1) 2 ^ 2 : ℤ) ⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 1 : ℚ))⌉

end

end A231600.P14375326839905774524

namespace A231600

/-- `and(val(n+1, 2)², ceil((n+1)*∏{p}[n+1, #/(n+1)]))` -/
def P14375326839905774524.Spec : Prop :=
  ∀ n, P14375326839905774524.a n = A231600 n

end A231600

/-! ## A231600.P13633360214768136149

`((2*n)%A166466(n+1))%2`
-/

namespace A231600.P13633360214768136149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (2 * n : ℤ) (A166466 (n + 1))) 2

end

end A231600.P13633360214768136149

namespace A231600

/-- `((2*n)%A166466(n+1))%2` -/
def P13633360214768136149.Spec : Prop :=
  ∀ n, P13633360214768136149.a n = A231600 n

end A231600

/-! ## A231600.P17980784145957670589

`and(val(n+1, 2)², A014963(n+1))`
-/

namespace A231600.P17980784145957670589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.valuation (n + 1) 2 ^ 2 : ℤ) (A014963 (n + 1))

end

end A231600.P17980784145957670589

namespace A231600

/-- `and(val(n+1, 2)², A014963(n+1))` -/
def P17980784145957670589.Spec : Prop :=
  ∀ n, P17980784145957670589.a n = A231600 n

end A231600

/-! ## A231600.P7038206806229844727

`and(val(n+1, 2), char[A062289(n+1)])`
-/

namespace A231600.P7038206806229844727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (SequenceMachineLib.valuation (n + 1) 2) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A231600.P7038206806229844727

namespace A231600

/-- `and(val(n+1, 2), char[A062289(n+1)])` -/
def P7038206806229844727.Spec : Prop :=
  ∀ n, (P7038206806229844727.a n : ℤ) = A231600 n

end A231600

/-! ## A231600.P18045345953362048799

`and(1, val(n+1, 2)*A006530(n+1))`
-/

namespace A231600.P18045345953362048799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A006530 (n + 1))

end

end A231600.P18045345953362048799

namespace A231600

/-- `and(1, val(n+1, 2)*A006530(n+1))` -/
def P18045345953362048799.Spec : Prop :=
  ∀ n, P18045345953362048799.a n = A231600 n

end A231600

/-! ## A231600.P13609488625399203171

`and(char[comp[2^n-1]], A007814(n+1))`
-/

namespace A231600.P13609488625399203171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007814 (n + 1))

end

end A231600.P13609488625399203171

namespace A231600

/-- `and(char[comp[2^n-1]], A007814(n+1))` -/
def P13609488625399203171.Spec : Prop :=
  ∀ n, P13609488625399203171.a n = A231600 n

end A231600

/-! ## A231600.P8591120016037473905

`A023531((xor(n, n+1)%3)^floor(n/2^val(n+1, 2)))`
-/

namespace A231600.P8591120016037473905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (SequenceMachineLib.roundAway (((Nat.xor n (n + 1) % 3 : ℕ) : ℚ) ^ (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℤ))).toNat

end

end A231600.P8591120016037473905

namespace A231600

/-- `A023531((xor(n, n+1)%3)^floor(n/2^val(n+1, 2)))` -/
def P8591120016037473905.Spec : Prop :=
  ∀ n, P8591120016037473905.a n = A231600 n

end A231600

/-! ## A231600.P14215800754998338730

`A096268(A087734(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A231600

/-- `A096268(A087734(n))` -/
def P14215800754998338730.Spec : Prop :=
  ∀ n, P14215800754998338730.a n = A231600 n

theorem P14215800754998338730.correct : P14215800754998338730.Spec := by
  intro n
  simp only [A231600]

end A231600

/-! ## A231600.P6877068924941773803

`A160382(A086099(n))`
-/

namespace A231600.P6877068924941773803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A086099 n).toNat

end

end A231600.P6877068924941773803

namespace A231600

/-- `A160382(A086099(n))` -/
def P6877068924941773803.Spec : Prop :=
  ∀ n, P6877068924941773803.a n = A231600 n

end A231600

/-! ## A231600.P800562281093737352

`A025426(A080940(n+1))`
-/

namespace A231600.P800562281093737352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A080940 (n + 1)).toNat

end

end A231600.P800562281093737352

namespace A231600

/-- `A025426(A080940(n+1))` -/
def P800562281093737352.Spec : Prop :=
  ∀ n, P800562281093737352.a n = A231600 n

end A231600

/-! ## A231600.P12961116960443477718

`A217586(A005352(n+1))`
-/

namespace A231600.P12961116960443477718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (A005352 (n + 1)).toNat

end

end A231600.P12961116960443477718

namespace A231600

/-- `A217586(A005352(n+1))` -/
def P12961116960443477718.Spec : Prop :=
  ∀ n, P12961116960443477718.a n = A231600 n

end A231600

/-! ## A231600.P17061890507151513673

`A285383(A006257(n+1))`
-/

namespace A231600.P17061890507151513673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (A006257 (n + 1)).toNat

end

end A231600.P17061890507151513673

namespace A231600

/-- `A285383(A006257(n+1))` -/
def P17061890507151513673.Spec : Prop :=
  ∀ n, P17061890507151513673.a n = A231600 n

end A231600

/-! ## A231600.P10038959291434233167

`A079979(A233775(n+1))`
-/

namespace A231600.P10038959291434233167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A233775 (n + 1)).toNat

end

end A231600.P10038959291434233167

namespace A231600

/-- `A079979(A233775(n+1))` -/
def P10038959291434233167.Spec : Prop :=
  ∀ n, P10038959291434233167.a n = A231600 n

end A231600

/-! ## A231600.P18285244928507182043

`A096268(n*A043545(n))`
-/

namespace A231600.P18285244928507182043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ((n : ℤ) * A043545 n).toNat

end

end A231600.P18285244928507182043

namespace A231600

/-- `A096268(n*A043545(n))` -/
def P18285244928507182043.Spec : Prop :=
  ∀ n, P18285244928507182043.a n = A231600 n

end A231600

/-! ## A231600.P12093252887279281312

`A096268(n*A267442(n))`
-/

namespace A231600.P12093252887279281312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ((n : ℤ) * A267442 n).toNat

end

end A231600.P12093252887279281312

namespace A231600

/-- `A096268(n*A267442(n))` -/
def P12093252887279281312.Spec : Prop :=
  ∀ n, P12093252887279281312.a n = A231600 n

end A231600

/-! ## A231600.P6527304730970869575

`A036580(n)%A043529(n)`
-/

namespace A231600.P6527304730970869575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036580 n) (A043529 n)

end

end A231600.P6527304730970869575

namespace A231600

/-- `A036580(n)%A043529(n)` -/
def P6527304730970869575.Spec : Prop :=
  ∀ n, P6527304730970869575.a n = A231600 n

end A231600

/-!
# A231601: Number of permutations of [n] avoiding ascents from odd to even numbers.

The programs for A231601, the canonical program `A231601.P16049753195343794936` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231601 has offset 0).

The definition of A231601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231601.P10507879075629815455

`ceil(n/2)!*ceil(n/2)^floor(n/2)`
-/

namespace A231601.P10507879075629815455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌈(n : ℚ) / 2⌉.toNat : ℚ) * (⌈(n : ℚ) / 2⌉ : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A231601.P10507879075629815455

namespace A231601

/-- `ceil(n/2)!*ceil(n/2)^floor(n/2)` -/
def P10507879075629815455.Spec : Prop :=
  ∀ n, P10507879075629815455.a n = (A231601 n : ℚ)

end A231601

/-! ## A231601.P16049753195343794936

`A081123(n+1)*A110138(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A231601

/-- `A081123(n+1)*A110138(n)` -/
def P16049753195343794936.Spec : Prop :=
  ∀ n, P16049753195343794936.a n = A231601 n

theorem P16049753195343794936.correct : P16049753195343794936.Spec := by
  intro n
  simp only [A231601]

end A231601

/-! ## A231601.P16308323079388549973

`A047917(A008805(n+1))*A110138(n)`
-/

namespace A231601.P16308323079388549973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (A008805 (n + 1)).toNat * A110138 n

end

end A231601.P16308323079388549973

namespace A231601

/-- `A047917(A008805(n+1))*A110138(n)` -/
def P16308323079388549973.Spec : Prop :=
  ∀ n, P16308323079388549973.a n = A231601 n

end A231601

/-! ## A231601.P17751633943195143222

`A110654(n)^A110654(n)*A081123(n)`
-/

namespace A231601.P17751633943195143222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 n : ℚ) ^ (A110654 n : ℤ) * (A081123 n : ℚ)

end

end A231601.P17751633943195143222

namespace A231601

/-- `A110654(n)^A110654(n)*A081123(n)` -/
def P17751633943195143222.Spec : Prop :=
  ∀ n, P17751633943195143222.a n = (A231601 n : ℚ)

end A231601

/-! ## A231601.P5086657045930470358

`A231777(A002620(n+1))`
-/

namespace A231601.P5086657045930470358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231777 (A002620 (n + 1)).toNat

end

end A231601.P5086657045930470358

namespace A231601

/-- `A231777(A002620(n+1))` -/
def P5086657045930470358.Spec : Prop :=
  ∀ n, P5086657045930470358.a n = A231601 n

end A231601

/-!
# A231603: Floor of the arithmetic-geometric mean of n+n and n*n.

The programs for A231603, there is no canonical definition to state claims against.
-/

/-! ## A231603.P206240467191456626

`A064727(∑[A233745(n+1)]²)`
-/

namespace A231603.P206240467191456626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A231603.P206240467191456626

/-! ## A231603.P7318939660037908146

`record[A194108(n+1)]-A133263(n)`
-/

namespace A231603.P7318939660037908146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A133263 n

end

end A231603.P7318939660037908146

/-! ## A231603.P12029092708635915886

`A000096(n)-A046800(A090129(n+1))`
-/

namespace A231603.P12029092708635915886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A046800 (A090129 (n + 1)).toNat

end

end A231603.P12029092708635915886

/-! ## A231603.P10209549188520700819

`A033436(n+2)-A000034(A153409(n+1))`
-/

namespace A231603.P10209549188520700819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (n + 2) - A000034 (A153409 (n + 1)).toNat

end

end A231603.P10209549188520700819

/-! ## A231603.P18202737639653123661

`A320847(A061786(n+1))`
-/

namespace A231603.P18202737639653123661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A061786 (n + 1)).toNat

end

end A231603.P18202737639653123661

/-!
# A231606: Maximal possible numerator for a sum of the form 1 +/ - 1/2 +/ - 1/3 +/ - ... +/ - 1/n.

The programs for A231606, there is no canonical definition to state claims against.
-/

/-! ## A231606.P14492197075263414771

`A025529(n+1)-A326678(A358581(n+2))`
-/

namespace A231606.P14492197075263414771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - A326678 (A358581 (n + 2)).toNat

end

end A231606.P14492197075263414771

/-! ## A231606.P16762846545512324516

`A326541(A000108(n))+A001008(n+1)`
-/

namespace A231606.P16762846545512324516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 (A000108 n).toNat + A001008 (n + 1)

end

end A231606.P16762846545512324516

/-!
# A231607: Primes p such that p + 600 is also prime.

The programs for A231607, the canonical program `A231607.P13191046615176950809` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231607 has offset 1).

The definition of A231607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231607.P13191046615176950809

`p?[A040976(n+1)-598]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231607

/-- `p?[A040976(n+1)-598]` -/
def P13191046615176950809.Spec : Prop :=
  ∀ n, P13191046615176950809.a n = A231607 (n + 1)

theorem P13191046615176950809.correct : P13191046615176950809.Spec := by
  intro n
  simp only [A231607, Nat.add_sub_cancel]

end A231607

/-! ## A231607.P13392444043426184431

`p?[A006093(n+1)-599]`
-/

namespace A231607.P13392444043426184431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 599

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231607.P13392444043426184431

namespace A231607

/-- `p?[A006093(n+1)-599]` -/
def P13392444043426184431.Spec : Prop :=
  ∀ n, P13392444043426184431.a n = A231607 (n + 1)

theorem P13392444043426184431.correct : P13392444043426184431.Spec := by
  intro n
  simp only [A231607, Nat.add_sub_cancel, A231607.P13392444043426184431.f1, A231607.P13392444043426184431.a, A231607.P13191046615176950809.f1, A231607.P13191046615176950809.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231607

/-! ## A231607.P4927099595209076014

`p?[A065091(n+1)-600]`
-/

namespace A231607.P4927099595209076014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 600

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231607.P4927099595209076014

namespace A231607

/-- `p?[A065091(n+1)-600]` -/
def P4927099595209076014.Spec : Prop :=
  ∀ n, P4927099595209076014.a n = A231607 (n + 1)

end A231607

/-! ## A231607.P118692853689655726

`p?[A008864(n+1)-601]`
-/

namespace A231607.P118692853689655726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 601

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231607.P118692853689655726

namespace A231607

/-- `p?[A008864(n+1)-601]` -/
def P118692853689655726.Spec : Prop :=
  ∀ n, P118692853689655726.a n = A231607 (n + 1)

theorem P118692853689655726.correct : P118692853689655726.Spec := by
  intro n
  simp only [A231607, Nat.add_sub_cancel, A231607.P118692853689655726.f1, A231607.P118692853689655726.a, A231607.P13191046615176950809.f1, A231607.P13191046615176950809.a, A008864, A008864.P9177617808325052279.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231607

/-! ## A231607.P6755542866932576734

`p?[A140353(n+1)-609]`
-/

namespace A231607.P6755542866932576734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - 609

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231607.P6755542866932576734

namespace A231607

/-- `p?[A140353(n+1)-609]` -/
def P6755542866932576734.Spec : Prop :=
  ∀ n, P6755542866932576734.a n = A231607 (n + 1)

theorem P6755542866932576734.correct : P6755542866932576734.Spec := by
  intro n
  simp only [A231607, Nat.add_sub_cancel, A231607.P6755542866932576734.f1, A231607.P6755542866932576734.a, A231607.P13191046615176950809.f1, A231607.P13191046615176950809.a, A040976, A040976.P11599754272797435513.a, A140353, A140353.P3819678062006389091.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231607

/-! ## A231607.P11615269731148070877

`p?[A143771(2*n+3)-601]`
-/

namespace A231607.P11615269731148070877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (2 * n + 3) - 601

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231607.P11615269731148070877

namespace A231607

/-- `p?[A143771(2*n+3)-601]` -/
def P11615269731148070877.Spec : Prop :=
  ∀ n, P11615269731148070877.a n = A231607 (n + 1)

end A231607

/-!
# A231608: Table whose n-th row consists of primes p such that p + 2n is also prime, read by antidiagonals.

The programs for A231608, there is no canonical definition to state claims against.
-/

/-! ## A231608.P9021748732482162999

`A309392(A254109(A038722(n+1)))`
-/

namespace A231608.P9021748732482162999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309392 (A254109 (A038722 (n + 1)).toNat).toNat

end

end A231608.P9021748732482162999

/-! ## A231608.P584805530887251958

`A309392(∑[char[∑[n]]]²-n)`
-/

namespace A231608.P584805530887251958
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309392 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A231608.P584805530887251958

/-! ## A231608.P5505463987584619062

`A309392(A038722(n+1))%A005565(n)`
-/

namespace A231608.P5505463987584619062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309392 (A038722 (n + 1)).toNat) (A005565 n)

end

end A231608.P5505463987584619062

/-! ## A231608.P12972386198300482253

`or(A000007(n), A309392(A038722(n+1)))`
-/

namespace A231608.P12972386198300482253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A309392 (A038722 (n + 1)).toNat)

end

end A231608.P12972386198300482253

/-! ## A231608.P17296785351812404043

`or(A103451(n), A309392(A038722(n+1)))`
-/

namespace A231608.P17296785351812404043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103451 n) (A309392 (A038722 (n + 1)).toNat)

end

end A231608.P17296785351812404043

/-! ## A231608.P3473419907606810069

`and(1, A000045(n))!*A309392(A061579(n)+1)`
-/

namespace A231608.P3473419907606810069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A309392 (A061579 n + 1).toNat

end

end A231608.P3473419907606810069

/-!
# A231609: Table whose n-th row consists of primes p such that p + 2n is the next prime, read by antidiagonals.

The programs for A231609, there is no canonical definition to state claims against.
-/

/-! ## A231609.P9181960200301437341

`A174350(A038722(n+1))`
-/

namespace A231609.P9181960200301437341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A038722 (n + 1)).toNat

end

end A231609.P9181960200301437341

/-! ## A231609.P16258656126756461187

`A174350(A061579(n)+1)`
-/

namespace A231609.P16258656126756461187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A061579 n + 1).toNat

end

end A231609.P16258656126756461187

/-! ## A231609.P6033059606775856784

`A174350(A093995(n+1)-n)`
-/

namespace A231609.P6033059606775856784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A231609.P6033059606775856784

/-! ## A231609.P7403676820739307727

`A174350(A002024(n+1)²-n)`
-/

namespace A231609.P7403676820739307727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A231609.P7403676820739307727

/-! ## A231609.P6251319711472971814

`A174350((n+1-A014132(n+1))²-n)`
-/

namespace A231609.P6251319711472971814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (((n + 1 : ℤ) - A014132 (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A231609.P6251319711472971814

/-! ## A231609.P4240536640459710694

`A174350(A057944(n)+A004736(n+1))`
-/

namespace A231609.P4240536640459710694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A057944 n + A004736 (n + 1)).toNat

end

end A231609.P4240536640459710694

/-! ## A231609.P14520911564433917737

`A065091(A146942(n+1))`
-/

namespace A231609.P14520911564433917737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A146942 (n + 1)).toNat

end

end A231609.P14520911564433917737

/-! ## A231609.P16592598507691476254

`A000040(A146942(n+1)+1)`
-/

namespace A231609.P16592598507691476254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A146942 (n + 1) + 1).toNat

end

end A231609.P16592598507691476254

/-! ## A231609.P11800274952574212134

`A000040(A356222(n+1))`
-/

namespace A231609.P11800274952574212134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A356222 (n + 1)).toNat

end

end A231609.P11800274952574212134

/-!
# A231611: The least k such that the polynomial cyclotomic(k,x) has n different coefficients.

The programs for A231611, there is no canonical definition to state claims against.
-/

/-! ## A231611.P11994099971331901795

`A078760(A078742(n+1)+A059268(n))`
-/

namespace A231611.P11994099971331901795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078760 (A078742 (n + 1) + A059268 n).toNat

end

end A231611.P11994099971331901795

/-!
# A231615: G.f. satisfies: A(x) = (1 - 2*x*A(x))^2 * (3*A(x) - 2).

The programs for A231615, there is no canonical definition to state claims against.
-/

/-! ## A231615.P2443290516254034566

`A065033(xor((3^n-1)*3^(n-1), ∑[floor(3^(n-1))]))`
-/

namespace A231615.P2443290516254034566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.xor (SequenceMachineLib.roundAway (((3 ^ n : ℤ) - 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A231615.P2443290516254034566

/-!
# A231616: G.f. satisfies: A(x) = (1 - 3*x*A(x))^2 * (4*A(x) - 3).

The programs for A231616, there is no canonical definition to state claims against.
-/

/-! ## A231616.P10522146325600206146

`A042963(A093830(n²))`
-/

namespace A231616.P10522146325600206146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A093830 (n ^ 2)).toNat

end

end A231616.P10522146325600206146

/-!
# A231617: G.f. satisfies: A(x) = (1 - 3*x*A(x)^2) * sqrt(4*A(x)^2 - 3).

The programs for A231617, there is no canonical definition to state claims against.
-/

/-! ## A231617.P17818095160395461008

`A308882(8*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A231617.P17818095160395461008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A308882 (8 * a (n - 1)).toNat

end

end A231617.P17818095160395461008

/-!
# A231619: E.g.f. A(x) satisfies: A'(x) = A(x*A'(x)) with A(0)=1.

The programs for A231619, there is no canonical definition to state claims against.
-/

/-! ## A231619.P11430519805697017443

`floor(sqrt(A058055(n!)))`
-/

namespace A231619.P11430519805697017443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A058055 (Nat.factorial n))

end

end A231619.P11430519805697017443

/-! ## A231619.P14796991021665728471

`A098529(C(2*n, n+3))`
-/

namespace A231619.P14796991021665728471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098529 (Nat.choose (2 * n) (n + 3))

end

end A231619.P14796991021665728471

/-!
# A231620: a(n) = A000930(n^2), where A000930 is Narayana's cows sequence.

The programs for A231620, the canonical program `A231620.P1269331257882165954` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231620 has offset 0).

The definition of A231620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n²)` (program `A231620.P1269331257882165954`, by `A231620.P1269331257882165954.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231620.P1269331257882165954

`A000930(n²)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A231620

/-- `A000930(n²)` -/
def P1269331257882165954.Spec : Prop :=
  ∀ n, P1269331257882165954.a n = A231620 n

theorem P1269331257882165954.correct : P1269331257882165954.Spec := by
  intro n
  simp only [A231620]

end A231620

/-! ## A231620.P14614982510111512369

`abs(A199804(n²))`
-/

namespace A231620.P14614982510111512369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 (n ^ 2)|

end

end A231620.P14614982510111512369

namespace A231620

/-- `abs(A199804(n²))` -/
def P14614982510111512369.Spec : Prop :=
  ∀ n, P14614982510111512369.a n = A231620 n

end A231620

/-! ## A231620.P7778379603260647052

`A078012(3+n²)`
-/

namespace A231620.P7778379603260647052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 + n ^ 2)

end

end A231620.P7778379603260647052

namespace A231620

/-- `A078012(3+n²)` -/
def P7778379603260647052.Spec : Prop :=
  ∀ n, P7778379603260647052.a n = A231620 n

end A231620

/-! ## A231620.P6044334330524202436

`A108104(2*n²)`
-/

namespace A231620.P6044334330524202436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * n ^ 2)

end

end A231620.P6044334330524202436

namespace A231620

/-- `A108104(2*n²)` -/
def P6044334330524202436.Spec : Prop :=
  ∀ n, P6044334330524202436.a n = A231620 n

end A231620

/-! ## A231620.P14177858966407531877

`A135851(n²+5)`
-/

namespace A231620.P14177858966407531877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n ^ 2 + 5)

end

end A231620.P14177858966407531877

namespace A231620

/-- `A135851(n²+5)` -/
def P14177858966407531877.Spec : Prop :=
  ∀ n, P14177858966407531877.a n = A231620 n

end A231620

/-!
# A231621: a(n) = A000930(n*(n+1)/2), where A000930 is Narayana's cows sequence.

The programs for A231621, the canonical program `A231621.P14005829549989832237` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231621 has offset 0).

The definition of A231621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n*(n+1)/2)` (program `A231621.P14005829549989832237`, by `A231621.P14005829549989832237.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231621.P14005829549989832237

`A000930(n*(n+1)/2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A231621

/-- `A000930(n*(n+1)/2)` -/
def P14005829549989832237.Spec : Prop :=
  ∀ n, P14005829549989832237.a n = A231621 n

theorem P14005829549989832237.correct : P14005829549989832237.Spec := by
  intro n
  simp only [A231621]

end A231621

/-! ## A231621.P3235811252538257470

`abs(A199804(∑[n]))`
-/

namespace A231621.P3235811252538257470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A231621.P3235811252538257470

namespace A231621

/-- `abs(A199804(∑[n]))` -/
def P3235811252538257470.Spec : Prop :=
  ∀ n, P3235811252538257470.a n = A231621 n

end A231621

/-! ## A231621.P16144929359778146735

`A078012(∑[n]+3)`
-/

namespace A231621.P16144929359778146735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A231621.P16144929359778146735

namespace A231621

/-- `A078012(∑[n]+3)` -/
def P16144929359778146735.Spec : Prop :=
  ∀ n, P16144929359778146735.a n = A231621 n

end A231621

/-! ## A231621.P4944792045749038238

`A108104(∑[2*n])`
-/

namespace A231621.P4944792045749038238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231621.P4944792045749038238

namespace A231621

/-- `A108104(∑[2*n])` -/
def P4944792045749038238.Spec : Prop :=
  ∀ n, P4944792045749038238.a n = A231621 n

end A231621

/-! ## A231621.P17208319385072923036

`A135851(∑[n]+5)`
-/

namespace A231621.P17208319385072923036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A231621.P17208319385072923036

namespace A231621

/-- `A135851(∑[n]+5)` -/
def P17208319385072923036.Spec : Prop :=
  ∀ n, P17208319385072923036.a n = A231621 n

end A231621

/-!
# A231622: (2*n+1)*a(n+1) = (4*n^2+1)*a(n) + (2*n+1)*a(n-1) with n>1, a(0)=2, a(1)=-1.

The programs for A231622, the canonical program `A231622.P17290665228112521357` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231622 has offset 0).

The definition of A231622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231622.P17290665228112521357

`(a(n-1)*(4*n²-8*n+5)+a(n-2)*(2*n-1))/(2*n-3)` with `a(0)=2, a(1)=-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231622

/-- `(a(n-1)*(4*n²-8*n+5)+a(n-2)*(2*n-1))/(2*n-3)` -/
def P17290665228112521357.Spec : Prop :=
  ∀ n, P17290665228112521357.a n = (A231622 n : ℚ)

end A231622

/-! ## A231622.P2479701124648175843

`A003436(n)-(char[1]-A000007(n))`
-/

namespace A231622.P2479701124648175843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 n - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A000007 n)

end

end A231622.P2479701124648175843

namespace A231622

/-- `A003436(n)-(char[1]-A000007(n))` -/
def P2479701124648175843.Spec : Prop :=
  ∀ n, P2479701124648175843.a n = A231622 n

end A231622

/-! ## A231622.P880746548239282264

`A003436(n)+A008683(A077591(n))`
-/

namespace A231622.P880746548239282264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 n + A008683 (A077591 n).toNat

end

end A231622.P880746548239282264

namespace A231622

/-- `A003436(n)+A008683(A077591(n))` -/
def P880746548239282264.Spec : Prop :=
  ∀ n, P880746548239282264.a n = A231622 n

end A231622

/-! ## A231622.P8017282853700706863

`A105523(A004275(n))+A003436(n)`
-/

namespace A231622.P8017282853700706863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (A004275 n).toNat + A003436 n

end

end A231622.P8017282853700706863

namespace A231622

/-- `A105523(A004275(n))+A003436(n)` -/
def P8017282853700706863.Spec : Prop :=
  ∀ n, P8017282853700706863.a n = A231622 n

end A231622

/-! ## A231622.P17363330256008965992

`A000038(n)+Δ[A079267(A161680(n))]`
-/

namespace A231622.P17363330256008965992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A231622.P17363330256008965992

namespace A231622

/-- `A000038(n)+Δ[A079267(A161680(n))]` -/
def P17363330256008965992.Spec : Prop :=
  ∀ n, P17363330256008965992.a n = A231622 n

end A231622

/-!
# A231624: Smallest sets of 3 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

The programs for A231624, the canonical program `A231624.P3333891316420223626` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231624 has offset 1).

The definition of A231624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231624.P3333891316420223626

`A005100(eq[A125238(n+2), A125238(n+1)]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A231624

/-- `A005100(eq[A125238(n+2), A125238(n+1)]+1)` -/
def P3333891316420223626.Spec : Prop :=
  ∀ n, P3333891316420223626.a n = A231624 (n + 1)

theorem P3333891316420223626.correct : P3333891316420223626.Spec := by
  intro n
  simp only [A231624, Nat.add_sub_cancel]

end A231624

/-!
# A231625: Smallest sets of 4 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

The programs for A231625, there is no canonical definition to state claims against.
-/

/-! ## A231625.P16635241836843383342

`∩[A231624(n+1), A259361(A231624(n+1)²)]`
-/

namespace A231625.P16635241836843383342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A231624 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231625.P16635241836843383342

/-! ## A231625.P12320257534714373331

`record[A351784(n+2)+A349991(n)]`
-/

namespace A231625.P12320257534714373331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351784 (n + 2) + A349991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231625.P12320257534714373331

/-! ## A231625.P5074105505641067539

`eq[A087508(n), A109613(A113215(n))]`
-/

namespace A231625.P5074105505641067539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A113215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231625.P5074105505641067539

/-! ## A231625.P8621454731614546046

`eq[A128834(n), A332294(A222657(n))]`
-/

namespace A231625.P8621454731614546046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (A222657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231625.P8621454731614546046

/-! ## A231625.P15554899403036497228

`eq[A060574(n), A373431(n)]`
-/

namespace A231625.P15554899403036497228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231625.P15554899403036497228

/-!
# A231626: Smallest sets of 5 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

The programs for A231626, there is no canonical definition to state claims against.
-/

/-! ## A231626.P14684023714090089241

`∪[A343302(n+1), A343303(n+1)]`
-/

namespace A231626.P14684023714090089241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231626.P14684023714090089241

/-! ## A231626.P5965780547135529349

`A343302(n+1)%A213300(n)`
-/

namespace A231626.P5965780547135529349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343302 (n + 1)) (A213300 n)

end

end A231626.P5965780547135529349

/-! ## A231626.P91802297018060984

`A343302(n+1)^exp(A034535(n+1))`
-/

namespace A231626.P91802297018060984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A343302 (n + 1) : ℝ) ^ (Real.exp (A034535 (n + 1) : ℝ))

end

end A231626.P91802297018060984

/-! ## A231626.P2178096599122434243

`or(A326499(3*(n+1)), A343302(n+1))`
-/

namespace A231626.P2178096599122434243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A326499 (3 * (n + 1) + 51)) (A343302 (n + 1))

end

end A231626.P2178096599122434243

/-! ## A231626.P17042123131301265768

`A343302(n+1)+A000007(A000041(n))`
-/

namespace A231626.P17042123131301265768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343302 (n + 1) + A000007 (A000041 n).toNat

end

end A231626.P17042123131301265768

/-!
# A231628: Smallest sets of 6 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

The programs for A231628, there is no canonical definition to state claims against.
-/

/-! ## A231628.P8999140245155177955

`A108926(n+1)+A057428(A019565(n))`
-/

namespace A231628.P8999140245155177955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108926 (n + 1) + A057428 (A019565 n).toNat

end

end A231628.P8999140245155177955

/-! ## A231628.P6904393761269455878

`A108926(n+1)-A000688(A118751(n))`
-/

namespace A231628.P6904393761269455878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108926 (n + 1) - A000688 (A118751 n).toNat

end

end A231628.P6904393761269455878

/-! ## A231628.P15699370835391330999

`A108926(n+1)-A079979(A195321(n))`
-/

namespace A231628.P15699370835391330999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108926 (n + 1) - A079979 (A195321 n).toNat

end

end A231628.P15699370835391330999

/-! ## A231628.P10642044876146849641

`A108926(n+1)-A000035(A015965(n+1))`
-/

namespace A231628.P10642044876146849641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108926 (n + 1) - A000035 (A015965 (n + 1)).toNat

end

end A231628.P10642044876146849641

/-! ## A231628.P10006407604755759681

`A108926(n+1)-A054977(A108910(n+1))`
-/

namespace A231628.P10006407604755759681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108926 (n + 1) - A054977 (A108910 (n + 1)).toNat

end

end A231628.P10006407604755759681

/-! ## A231628.P13473374394197331385

`A108926(n+1)-A000040(A118751(n)+1)%2`
-/

namespace A231628.P13473374394197331385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108926 (n + 1) - Int.tmod (A000040 (A118751 n + 1).toNat) 2

end

end A231628.P13473374394197331385

/-!
# A231629: First of 7 consecutive deficient numbers in arithmetic progression.

The programs for A231629, there is no canonical definition to state claims against.
-/

/-! ## A231629.P3184280144056014586

`A231090(n+1)-1`
-/

namespace A231629.P3184280144056014586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231090 (n + 1) - 1

end

end A231629.P3184280144056014586

/-! ## A231629.P12418393955379647044

`record[A231090(A117910(n))-1]`
-/

namespace A231629.P12418393955379647044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231090 (A117910 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231629.P12418393955379647044

/-! ## A231629.P12645366858494917883

`record[A231090(A292266(n))-1]`
-/

namespace A231629.P12645366858494917883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231090 (A292266 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231629.P12645366858494917883

/-! ## A231629.P608519395126607414

`abs(A231090(n+1)+A057428(n+1))`
-/

namespace A231629.P608519395126607414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A231090 (n + 1) + A057428 (n + 1)|

end

end A231629.P608519395126607414

/-! ## A231629.P2437093820191462953

`A321800(n*char[1])+A231090(n+1)`
-/

namespace A231629.P2437093820191462953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (n * (if ∃ j, f1 j = n then 1 else 0)) + A231090 (n + 1)

end

end A231629.P2437093820191462953

/-! ## A231629.P12425443738795724829

`A001478(n+1)+A231090(n+1)+n`
-/

namespace A231629.P12425443738795724829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A231090 (n + 1) + (n : ℤ))

end

end A231629.P12425443738795724829

/-! ## A231629.P8197573010693915851

`A325142(round(1/∑{d}[n+1, 1/#]))+A231090(n+1)`
-/

namespace A231629.P8197573010693915851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (SequenceMachineLib.roundAway (1 / (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)))).toNat + A231090 (n + 1)

end

end A231629.P8197573010693915851

/-! ## A231629.P6010762561958232885

`A349920(A000040(n+1))+A231090(n+1)`
-/

namespace A231629.P6010762561958232885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A000040 (n + 1)).toNat + A231090 (n + 1)

end

end A231629.P6010762561958232885

/-! ## A231629.P8780229230648799275

`A349920(A053028(n+1))+A231090(n+1)`
-/

namespace A231629.P8780229230648799275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A053028 (n + 1)).toNat + A231090 (n + 1)

end

end A231629.P8780229230648799275

/-! ## A231629.P7992656314176566997

`A349920(A020639(n+10))+A231090(n+1)`
-/

namespace A231629.P7992656314176566997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A020639 (n + 10)).toNat + A231090 (n + 1)

end

end A231629.P7992656314176566997

/-! ## A231629.P6154840590192782834

`abs(A321800(A164717(n+1))+A231090(n+1))`
-/

namespace A231629.P6154840590192782834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321800 (A164717 (n + 1)).toNat + A231090 (n + 1)|

end

end A231629.P6154840590192782834

/-! ## A231629.P13338731947317249744

`abs(A321800(A306345(n+1))+A231090(n+1))`
-/

namespace A231629.P13338731947317249744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321800 (A306345 (n + 1)).toNat + A231090 (n + 1)|

end

end A231629.P13338731947317249744

/-! ## A231629.P8683318405941649722

`A305255(A328479(2*n+1))+A231090(n+1)`
-/

namespace A231629.P8683318405941649722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305255 (A328479 (2 * n + 1)).toNat + A231090 (n + 1)

end

end A231629.P8683318405941649722

/-! ## A231629.P9454366557400621779

`A260186(A001511(2*n+1))+A231090(n+1)+3`
-/

namespace A231629.P9454366557400621779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260186 (A001511 (2 * n + 1)).toNat + (A231090 (n + 1) + 3)

end

end A231629.P9454366557400621779

/-! ## A231629.P17731201849525395362

`A035363(2*n+1)+A231090(n+1)+A087960(A053028(n+1))`
-/

namespace A231629.P17731201849525395362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1) + (A231090 (n + 1) + A087960 (A053028 (n + 1)).toNat)

end

end A231629.P17731201849525395362

/-!
# A231630: Smallest sets of 8 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

The programs for A231630, there is no canonical definition to state claims against.
-/

/-! ## A231630.P10744414777679044909

`A231092(n+1)-1`
-/

namespace A231630.P10744414777679044909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (n + 1) - 1

end

end A231630.P10744414777679044909

/-! ## A231630.P10291151944037728885

`record[A231092(A193592(n))-1]`
-/

namespace A231630.P10291151944037728885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231630.P10291151944037728885

/-! ## A231630.P5995757708393070953

`record[A231092(A216556(n))-1]`
-/

namespace A231630.P5995757708393070953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (A216556 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231630.P5995757708393070953

/-! ## A231630.P6104445540933193821

`A321800(n)+A231092(n+1)`
-/

namespace A231630.P6104445540933193821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A231092 (n + 1)

end

end A231630.P6104445540933193821

/-!
# A231631: Least positive integer k < n with k!*(n-k) + 1 prime, or 0 if such an integer k does not exist.

The programs for A231631, there is no canonical definition to state claims against.
-/

/-! ## A231631.P9578026998906714263

`A000005(A004280(n+1))-A320006(A001045(n))`
-/

namespace A231631.P9578026998906714263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004280 (n + 1)).toNat - A320006 (A001045 n).toNat

end

end A231631.P9578026998906714263

/-! ## A231631.P6183426451001580274

`lcm(A014963(A051190(n+1)), A353361(n+1))`
-/

namespace A231631.P6183426451001580274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A051190 (n + 1)).toNat) (A353361 (n + 1))

end

end A231631.P6183426451001580274

/-! ## A231631.P18014969017955888930

`A304093(n+1)+A262684(A000583(n+1))`
-/

namespace A231631.P18014969017955888930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304093 (n + 1) + A262684 (A000583 (n + 1)).toNat

end

end A231631.P18014969017955888930

/-! ## A231631.P16665326100003650268

`xor(A323014(n+1), A348616(A181061(3*n+1)))`
-/

namespace A231631.P16665326100003650268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323014 (n + 1)) (A348616 (A181061 (3 * n + 1)).toNat)

end

end A231631.P16665326100003650268

/-! ## A231631.P12182753115072395865

`A001221(∑[A229510(2*n+1)+1])`
-/

namespace A231631.P12182753115072395865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A231631.P12182753115072395865

/-!
# A231633: Number of ways to write n = x + y (x, y > 0) with x^2 * y - 1 prime.

The programs for A231633, there is no canonical definition to state claims against.
-/

/-! ## A231633.P7299705005636805724

`A328167(A157114(n+4))+A297167(n+1)`
-/

namespace A231633.P7299705005636805724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (A157114 (n + 4)).toNat + A297167 (n + 1)

end

end A231633.P7299705005636805724

/-!
# A231634: a(n) is the denominator of the probability that n segments of length 2, each placed randomly on a line segment of length 2n, will completely cover the line segment.

The programs for A231634, there is no canonical definition to state claims against.
-/

/-! ## A231634.P11240654321859897470

`A013155(2*n+1)/A005843(A004731(2*n))`
-/

namespace A231634.P11240654321859897470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013155 (2 * n + 1) : ℚ) / (A005843 (A004731 (2 * n)).toNat : ℚ)

end

end A231634.P11240654321859897470

/-!
# A231635: Number of ways to write n = x + y with 0 < x <= y such that lcm(x, y) + 1 is prime.

The programs for A231635, there is no canonical definition to state claims against.
-/

/-! ## A231635.P7514418780819638675

`floor((A331137(A331595(n+1))+1)/ϕ)`
-/

namespace A231635.P7514418780819638675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331137 (A331595 (n + 1)).toNat + 1 : ℝ) / Real.goldenRatio⌋

end

end A231635.P7514418780819638675

/-! ## A231635.P1770952734090518684

`A059648(A026766(n))+A026728(n+1)`
-/

namespace A231635.P1770952734090518684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 (A026766 n).toNat + A026728 (n + 1)

end

end A231635.P1770952734090518684

/-! ## A231635.P9595219885563281928

`A001222(A170908(n)+A010051(n+1))`
-/

namespace A231635.P9595219885563281928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A170908 n + A010051 (n + 1)).toNat

end

end A231635.P9595219885563281928

/-! ## A231635.P3694880350762037475

`A091304(or(A000005(n+1), A166467(n)))`
-/

namespace A231635.P3694880350762037475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (Int.lor (A000005 (n + 1)) (A166467 n)).toNat

end

end A231635.P3694880350762037475

/-!
# A231636: Number of n X 2 0..2 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231636, the canonical program `A231636.P11909514484593755881` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231636 has offset 1).

The definition of A231636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231636.P11909514484593755881

`ogf((1-2x+x^2)/(1-7x+11x^2-4x^3+14x^4-48x^5+48x^6-16x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231636

/-- `ogf((1-2x+x^2)/(1-7x+11x^2-4x^3+14x^4-48x^5+48x^6-16x^7))` -/
def P11909514484593755881.Spec : Prop :=
  ∀ n, P11909514484593755881.a n = A231636 (n + 1)

theorem P11909514484593755881.correct : P11909514484593755881.Spec := by
  intro n
  simp only [A231636, Nat.add_sub_cancel]

end A231636

/-! ## A231636.P7230495497260558304

`A231641(∑[n+1]+2)`
-/

namespace A231636.P7230495497260558304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231636.P7230495497260558304

namespace A231636

/-- `A231641(∑[n+1]+2)` -/
def P7230495497260558304.Spec : Prop :=
  ∀ n, P7230495497260558304.a n = A231636 (n + 1)

end A231636

/-! ## A231636.P6747723397373807965

`record[gcd(A002262(n), A231641(n+2))]`
-/

namespace A231636.P6747723397373807965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231641 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231636.P6747723397373807965

namespace A231636

/-- `record[gcd(A002262(n), A231641(n+2))]` -/
def P6747723397373807965.Spec : Prop :=
  ∀ n, (P6747723397373807965.a n : ℤ) = A231636 (n + 1)

end A231636

/-! ## A231636.P13232751582498628524

`record[A231641(∑[A152271(n)])]`
-/

namespace A231636.P13232751582498628524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231636.P13232751582498628524

namespace A231636

/-- `record[A231641(∑[A152271(n)])]` -/
def P13232751582498628524.Spec : Prop :=
  ∀ n, P13232751582498628524.a n = A231636 (n + 1)

end A231636

/-! ## A231636.P4929386139464173595

`record[A097806(n)*A231641(n+1)]`
-/

namespace A231636.P4929386139464173595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A231641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231636.P4929386139464173595

namespace A231636

/-- `record[A097806(n)*A231641(n+1)]` -/
def P4929386139464173595.Spec : Prop :=
  ∀ n, P4929386139464173595.a n = A231636 (n + 1)

end A231636

/-!
# A231637: Number of n X 3 0..2 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231637, there is no canonical definition to state claims against.
-/

/-! ## A231637.P4939763449429656066

`A231641(∑[n+2]+4)`
-/

namespace A231637.P4939763449429656066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231637.P4939763449429656066

/-! ## A231637.P276684779216709115

`or(floor(acot(n)), A231641(A167614(n+1)))`
-/

namespace A231637.P276684779216709115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A231641 (A167614 (n + 1)).toNat)

end

end A231637.P276684779216709115

/-! ## A231637.P13492064793721474136

`record[root(A231641(n+4), A049834(n+1))]`
-/

namespace A231637.P13492064793721474136
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231641 (n + 4) : ℝ) ^ (1 / (A049834 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231637.P13492064793721474136

/-! ## A231637.P16452883769537382013

`record[A231641(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A231637.P16452883769537382013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231637.P16452883769537382013

/-! ## A231637.P13515182232463327110

`A231641(A167614(n+1))+A011744(n)`
-/

namespace A231637.P13515182232463327110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A167614 (n + 1)).toNat + A011744 n

end

end A231637.P13515182232463327110

/-!
# A231638: Number of n X 4 0..2 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231638, there is no canonical definition to state claims against.
-/

/-! ## A231638.P6944796088883182125

`A231641(∑[n+3]+7)`
-/

namespace A231638.P6944796088883182125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231638.P6944796088883182125

/-!
# A231639: Number of nX5 0..2 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231639, there is no canonical definition to state claims against.
-/

/-! ## A231639.P14490319135966161085

`A231641(A374005(n+1))`
-/

namespace A231639.P14490319135966161085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A374005 (n + 1)).toNat

end

end A231639.P14490319135966161085

/-! ## A231639.P10677161835693502213

`A231641(A167499(n+3))`
-/

namespace A231639.P10677161835693502213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A167499 (n + 3)).toNat

end

end A231639.P10677161835693502213

/-! ## A231639.P4707724249709226512

`A231641(A155212(n)+13)`
-/

namespace A231639.P4707724249709226512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A155212 n + 13).toNat

end

end A231639.P4707724249709226512

/-! ## A231639.P9382016682389238292

`A231641(A056000(n)+15)`
-/

namespace A231639.P9382016682389238292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A056000 n + 15).toNat

end

end A231639.P9382016682389238292

/-! ## A231639.P15453751267374346025

`A231641(eq[7, A066657(n)])`
-/

namespace A231639.P15453751267374346025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231639.P15453751267374346025

/-!
# A231640: Number of n X 6 0..2 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231640, there is no canonical definition to state claims against.
-/

/-! ## A231640.P8087283282168393811

`A231641(A374007(n+1))`
-/

namespace A231640.P8087283282168393811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A374007 (n + 1)).toNat

end

end A231640.P8087283282168393811

/-! ## A231640.P8704246641559710832

`A231641(A166136(n+4))`
-/

namespace A231640.P8704246641559710832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A166136 (n + 4)).toNat

end

end A231640.P8704246641559710832

/-! ## A231640.P15504183389166274899

`A231641(A167487(n+4)-1)`
-/

namespace A231640.P15504183389166274899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A167487 (n + 4) - 1).toNat

end

end A231640.P15504183389166274899

/-! ## A231640.P4909088893497558327

`A231641(A055998(n+3)+9)`
-/

namespace A231640.P4909088893497558327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231641 (A055998 (n + 3) + 9).toNat

end

end A231640.P4909088893497558327

/-!
# A231642: Triangle read by rows, t(n,k) = binomial(n,k) mod n, k <= n.

The programs for A231642, the canonical program `A231642.P180669649929530398` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231642 has offset 1).

The definition of A231642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+1, col(n)+1)%(row(n)+1)` (program `A231642.P180669649929530398`, by `A231642.P180669649929530398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231642.P180669649929530398

`C(row(n)+1, col(n)+1)%(row(n)+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231642

/-- `C(row(n)+1, col(n)+1)%(row(n)+1)` -/
def P180669649929530398.Spec : Prop :=
  ∀ n, (P180669649929530398.a n : ℤ) = A231642 (n + 1)

theorem P180669649929530398.correct : P180669649929530398.Spec := by
  intro n
  simp only [A231642, Nat.add_sub_cancel]

end A231642

/-! ## A231642.P16046891750481948430

`A074909(n+1)%∑[char[∑[n]]]`
-/

namespace A231642.P16046891750481948430
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A231642.P16046891750481948430

namespace A231642

/-- `A074909(n+1)%∑[char[∑[n]]]` -/
def P16046891750481948430.Spec : Prop :=
  ∀ n, P16046891750481948430.a n = A231642 (n + 1)

end A231642

/-! ## A231642.P16357975519866960103

`A007318(n+1+round(sqrt(2*(n+1))))%(row(n)+1)`
-/

namespace A231642.P16357975519866960103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 ((n + 1 : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat) (SequenceMachineLib.triRow n + 1 : ℤ)

end

end A231642.P16357975519866960103

namespace A231642

/-- `A007318(n+1+round(sqrt(2*(n+1))))%(row(n)+1)` -/
def P16357975519866960103.Spec : Prop :=
  ∀ n, P16357975519866960103.a n = A231642 (n + 1)

end A231642

/-! ## A231642.P5150670320127027602

`A135278(n)%∑[A010054(n)]`
-/

namespace A231642.P5150670320127027602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135278 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231642.P5150670320127027602

namespace A231642

/-- `A135278(n)%∑[A010054(n)]` -/
def P5150670320127027602.Spec : Prop :=
  ∀ n, P5150670320127027602.a n = A231642 (n + 1)

end A231642

/-! ## A231642.P4268083270527519644

`A259477(n)%A002024(n+1)`
-/

namespace A231642.P4268083270527519644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259477 n) (A002024 (n + 1))

end

end A231642.P4268083270527519644

namespace A231642

/-- `A259477(n)%A002024(n+1)` -/
def P4268083270527519644.Spec : Prop :=
  ∀ n, P4268083270527519644.a n = A231642 (n + 1)

end A231642

/-! ## A231642.P4701531942904853483

`A007318(A002024(n+1)+n+1)%A002024(n+1)`
-/

namespace A231642.P4701531942904853483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A002024 (n + 1) + (n + 1 : ℤ)).toNat) (A002024 (n + 1))

end

end A231642.P4701531942904853483

namespace A231642

/-- `A007318(A002024(n+1)+n+1)%A002024(n+1)` -/
def P4701531942904853483.Spec : Prop :=
  ∀ n, P4701531942904853483.a n = A231642 (n + 1)

end A231642

/-! ## A231642.P14531577964458653246

`A007318(A123578(n+1)+n+1)%A123578(n+1)`
-/

namespace A231642.P14531577964458653246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A123578 (n + 1) + (n + 1 : ℤ)).toNat) (A123578 (n + 1))

end

end A231642.P14531577964458653246

namespace A231642

/-- `A007318(A123578(n+1)+n+1)%A123578(n+1)` -/
def P14531577964458653246.Spec : Prop :=
  ∀ n, P14531577964458653246.a n = A231642 (n + 1)

end A231642

/-! ## A231642.P12408206747025786087

`A053200(comp[∑[n]])`
-/

namespace A231642.P12408206747025786087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A231642.P12408206747025786087

namespace A231642

/-- `A053200(comp[∑[n]])` -/
def P12408206747025786087.Spec : Prop :=
  ∀ n, P12408206747025786087.a n = A231642 (n + 1)

end A231642

/-!
# A231643: a(n) = 5*2^n + 5.

The programs for A231643, the canonical program `A231643.P11920559642325864734` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231643 has offset 0).

The definition of A231643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n+5` (program `A231643.P11920559642325864734`, by `A231643.P11920559642325864734.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231643.P11920559642325864734

`5*2^n+5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231643

/-- `5*2^n+5` -/
def P11920559642325864734.Spec : Prop :=
  ∀ n, (P11920559642325864734.a n : ℤ) = A231643 n

theorem P11920559642325864734.correct : P11920559642325864734.Spec := by
  intro n
  simp only [A231643]

end A231643

/-! ## A231643.P7366863257888945542

`ogf((10-15x)/(1-3x+2x^2))`
-/

namespace A231643.P7366863257888945542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -15] [1, -3, 2] n

end

end A231643.P7366863257888945542

namespace A231643

/-- `ogf((10-15x)/(1-3x+2x^2))` -/
def P7366863257888945542.Spec : Prop :=
  ∀ n, P7366863257888945542.a n = A231643 n

end A231643

/-! ## A231643.P16930951464441809434

`5*A000051(n)`
-/

namespace A231643.P16930951464441809434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000051 n

end

end A231643.P16930951464441809434

namespace A231643

/-- `5*A000051(n)` -/
def P16930951464441809434.Spec : Prop :=
  ∀ n, P16930951464441809434.a n = A231643 n

theorem P16930951464441809434.correct : P16930951464441809434.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P16930951464441809434.a, A231643.P11920559642325864734.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-! ## A231643.P17829196764014432025

`abs(5*xor(-1, 2^n))`
-/

namespace A231643.P17829196764014432025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * Int.xor (-1) (2 ^ n : ℤ)|

end

end A231643.P17829196764014432025

namespace A231643

/-- `abs(5*xor(-1, 2^n))` -/
def P17829196764014432025.Spec : Prop :=
  ∀ n, P17829196764014432025.a n = A231643 n

end A231643

/-! ## A231643.P18355854566158734226

`-(5*xor(-1, 2^n))`
-/

namespace A231643.P18355854566158734226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(5 * Int.xor (-1) (2 ^ n : ℤ))

end

end A231643.P18355854566158734226

namespace A231643

/-- `-(5*xor(-1, 2^n))` -/
def P18355854566158734226.Spec : Prop :=
  ∀ n, P18355854566158734226.a n = A231643 n

end A231643

/-! ## A231643.P17394856364956852629

`5*Δ[A005126(n)]`
-/

namespace A231643.P17394856364956852629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A231643.P17394856364956852629

namespace A231643

/-- `5*Δ[A005126(n)]` -/
def P17394856364956852629.Spec : Prop :=
  ∀ n, P17394856364956852629.a n = A231643 n

theorem P17394856364956852629.correct : P17394856364956852629.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P17394856364956852629.f1, A231643.P17394856364956852629.a, A231643.P11920559642325864734.a, A005126, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-! ## A231643.P4671534459311266872

`5*Δ[A006127(n)]`
-/

namespace A231643.P4671534459311266872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A231643.P4671534459311266872

namespace A231643

/-- `5*Δ[A006127(n)]` -/
def P4671534459311266872.Spec : Prop :=
  ∀ n, P4671534459311266872.a n = A231643 n

theorem P4671534459311266872.correct : P4671534459311266872.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P4671534459311266872.f1, A231643.P4671534459311266872.a, A231643.P11920559642325864734.a, A006127, A006127.P13800088188431216723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-! ## A231643.P7230926186529036269

`5*Δ[A052944(n)]`
-/

namespace A231643.P7230926186529036269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A231643.P7230926186529036269

namespace A231643

/-- `5*Δ[A052944(n)]` -/
def P7230926186529036269.Spec : Prop :=
  ∀ n, P7230926186529036269.a n = A231643 n

theorem P7230926186529036269.correct : P7230926186529036269.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P7230926186529036269.f1, A231643.P7230926186529036269.a, A231643.P11920559642325864734.a, A052944, A052944.P8155758912192775135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-! ## A231643.P5444424991039725488

`5*(A000079(n)+1)`
-/

namespace A231643.P5444424991039725488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000079 n + 1)

end

end A231643.P5444424991039725488

namespace A231643

/-- `5*(A000079(n)+1)` -/
def P5444424991039725488.Spec : Prop :=
  ∀ n, P5444424991039725488.a n = A231643 n

theorem P5444424991039725488.correct : P5444424991039725488.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P5444424991039725488.a, A231643.P11920559642325864734.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-! ## A231643.P1493450010399040956

`5*A094373(n+1)`
-/

namespace A231643.P1493450010399040956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A094373 (n + 1)

end

end A231643.P1493450010399040956

namespace A231643

/-- `5*A094373(n+1)` -/
def P1493450010399040956.Spec : Prop :=
  ∀ n, P1493450010399040956.a n = A231643 n

end A231643

/-! ## A231643.P7975887414274571769

`5*(A000225(n)+2)`
-/

namespace A231643.P7975887414274571769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000225 n + 2)

end

end A231643.P7975887414274571769

namespace A231643

/-- `5*(A000225(n)+2)` -/
def P7975887414274571769.Spec : Prop :=
  ∀ n, P7975887414274571769.a n = A231643 n

theorem P7975887414274571769.correct : P7975887414274571769.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P7975887414274571769.a, A231643.P11920559642325864734.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-! ## A231643.P7983872683788669574

`5*(A052548(n)-1)`
-/

namespace A231643.P7983872683788669574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A052548 n - 1)

end

end A231643.P7983872683788669574

namespace A231643

/-- `5*(A052548(n)-1)` -/
def P7983872683788669574.Spec : Prop :=
  ∀ n, P7983872683788669574.a n = A231643 n

theorem P7983872683788669574.correct : P7983872683788669574.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P7983872683788669574.a, A231643.P11920559642325864734.a, A052548, A052548.P18180923888402085992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-! ## A231643.P9938360744162915238

`5*(A000918(n)+3)`
-/

namespace A231643.P9938360744162915238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000918 n + 3)

end

end A231643.P9938360744162915238

namespace A231643

/-- `5*(A000918(n)+3)` -/
def P9938360744162915238.Spec : Prop :=
  ∀ n, P9938360744162915238.a n = A231643 n

theorem P9938360744162915238.correct : P9938360744162915238.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P9938360744162915238.a, A231643.P11920559642325864734.a, A000918, A000918.P14329454465793069288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-! ## A231643.P406379573763967848

`5*A052552(2*n)`
-/

namespace A231643.P406379573763967848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A052552 (2 * n)

end

end A231643.P406379573763967848

namespace A231643

/-- `5*A052552(2*n)` -/
def P406379573763967848.Spec : Prop :=
  ∀ n, P406379573763967848.a n = A231643 n

end A231643

/-! ## A231643.P6907241463552579864

`5*A136417(2*n)`
-/

namespace A231643.P6907241463552579864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A136417 (2 * n)

end

end A231643.P6907241463552579864

namespace A231643

/-- `5*A136417(2*n)` -/
def P6907241463552579864.Spec : Prop :=
  ∀ n, P6907241463552579864.a n = A231643 n

end A231643

/-! ## A231643.P16177742346675704163

`∑[A020714(abs(1-n))]`
-/

namespace A231643.P16177742346675704163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231643.P16177742346675704163

namespace A231643

/-- `∑[A020714(abs(1-n))]` -/
def P16177742346675704163.Spec : Prop :=
  ∀ n, P16177742346675704163.a n = A231643 n

end A231643

/-! ## A231643.P4321139456586322651

`A010686(2*n+1)*A140407(2*n+1)`
-/

namespace A231643.P4321139456586322651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (2 * n + 1) * A140407 (2 * n + 1)

end

end A231643.P4321139456586322651

namespace A231643

/-- `A010686(2*n+1)*A140407(2*n+1)` -/
def P4321139456586322651.Spec : Prop :=
  ∀ n, P4321139456586322651.a n = A231643 n

end A231643

/-! ## A231643.P2074208175743915632

`Δ[5*or(n, 2^n)]`
-/

namespace A231643.P2074208175743915632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A231643.P2074208175743915632

namespace A231643

/-- `Δ[5*or(n, 2^n)]` -/
def P2074208175743915632.Spec : Prop :=
  ∀ n, P2074208175743915632.a n = A231643 n

end A231643

/-! ## A231643.P8375619219928024733

`Δ[5*xor(n, 2^n)]`
-/

namespace A231643.P8375619219928024733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.xor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A231643.P8375619219928024733

namespace A231643

/-- `Δ[5*xor(n, 2^n)]` -/
def P8375619219928024733.Spec : Prop :=
  ∀ n, P8375619219928024733.a n = A231643 n

end A231643

/-! ## A231643.P11422450344002167722

`Δ[5*A005126(n)]`
-/

namespace A231643.P11422450344002167722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231643.P11422450344002167722

namespace A231643

/-- `Δ[5*A005126(n)]` -/
def P11422450344002167722.Spec : Prop :=
  ∀ n, P11422450344002167722.a n = A231643 n

theorem P11422450344002167722.correct : P11422450344002167722.Spec := by
  intro n
  simp only [A231643, Nat.add_sub_cancel, A231643.P11422450344002167722.f1, A231643.P11422450344002167722.a, A231643.P11920559642325864734.a, A005126, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231643

/-!
# A231644: Number of n X n 0..2 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231644, there is no canonical definition to state claims against.
-/

/-! ## A231644.P468117381973508707

`A231651(∑[4*n]+1)`
-/

namespace A231644.P468117381973508707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231644.P468117381973508707

/-! ## A231644.P13307894333703578218

`record[gcd(A231651(n+1), A296339(n))]`
-/

namespace A231644.P13307894333703578218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231651 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231644.P13307894333703578218

/-! ## A231644.P16572613484397408181

`A231651(A001844(n))+A185245(n)`
-/

namespace A231644.P16572613484397408181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A001844 n).toNat + A185245 n

end

end A231644.P16572613484397408181

/-! ## A231644.P4534980935688330450

`lcm(A231651(A001844(n)), A257075(n))`
-/

namespace A231644.P4534980935688330450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A231651 (A001844 n).toNat) (A257075 n)

end

end A231644.P4534980935688330450

/-! ## A231644.P9838767756757733945

`A007318(∑[n])*A231651(A001844(n))`
-/

namespace A231644.P9838767756757733945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A231651 (A001844 n).toNat

end

end A231644.P9838767756757733945

/-!
# A231645: Number of n X 2 0..2 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231645, there is no canonical definition to state claims against.
-/

/-! ## A231645.P11037937532436870839

`A231651(∑[n+1]+2)`
-/

namespace A231645.P11037937532436870839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231645.P11037937532436870839

/-! ## A231645.P9907657609287651563

`record[root(A231651(n+1), A130270(n+1))]`
-/

namespace A231645.P9907657609287651563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231651 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231645.P9907657609287651563

/-! ## A231645.P4421870110313801965

`record[A231651(∑[A152271(n)])]`
-/

namespace A231645.P4421870110313801965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231645.P4421870110313801965

/-! ## A231645.P5803785719403458259

`record[A231651(Δ[A003453(n+5)])]`
-/

namespace A231645.P5803785719403458259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231645.P5803785719403458259

/-! ## A231645.P12427044908914205488

`A232281(∑[n+2])`
-/

namespace A231645.P12427044908914205488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231645.P12427044908914205488

/-!
# A231646: Number of nX3 0..2 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231646, there is no canonical definition to state claims against.
-/

/-! ## A231646.P568461853303692395

`A231651(∑[n+2]+4)`
-/

namespace A231646.P568461853303692395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231646.P568461853303692395

/-! ## A231646.P11312826122290263451

`A231651(A167614(n+1))+A185037(n)`
-/

namespace A231646.P11312826122290263451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A167614 (n + 1)).toNat + A185037 n

end

end A231646.P11312826122290263451

/-! ## A231646.P16681105298469759550

`A231651(A167614(n+1))+A185246(n)`
-/

namespace A231646.P16681105298469759550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A167614 (n + 1)).toNat + A185246 n

end

end A231646.P16681105298469759550

/-! ## A231646.P16564429514899406819

`A014808(n)*A231651(A167614(n+1))`
-/

namespace A231646.P16564429514899406819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014808 n * A231651 (A167614 (n + 1)).toNat

end

end A231646.P16564429514899406819

/-! ## A231646.P15036215305492420709

`A119335(n)*A231651(A167614(n+1))`
-/

namespace A231646.P15036215305492420709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A231651 (A167614 (n + 1)).toNat

end

end A231646.P15036215305492420709

/-!
# A231647: Number of nX4 0..2 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231647, there is no canonical definition to state claims against.
-/

/-! ## A231647.P3183022691737879840

`A231651(A141214(n)+7)`
-/

namespace A231647.P3183022691737879840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A141214 n + 7).toNat

end

end A231647.P3183022691737879840

/-! ## A231647.P29295778039488763

`A231651(A052905(n)+9)`
-/

namespace A231647.P29295778039488763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A052905 n + 9).toNat

end

end A231647.P29295778039488763

/-! ## A231647.P1120001694312262204

`A231651(A055999(n)+10)`
-/

namespace A231647.P1120001694312262204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A055999 n + 10).toNat

end

end A231647.P1120001694312262204

/-! ## A231647.P3813610581450556433

`A231651(A167614(n+2)+1)`
-/

namespace A231647.P3813610581450556433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A167614 (n + 2) + 1).toNat

end

end A231647.P3813610581450556433

/-! ## A231647.P927147916482387009

`A231651(A112355(n+2)-n)`
-/

namespace A231647.P927147916482387009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A112355 (n + 2) - (n : ℤ)).toNat

end

end A231647.P927147916482387009

/-!
# A231648: Number of nX5 0..2 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231648, there is no canonical definition to state claims against.
-/

/-! ## A231648.P15885656587554064470

`A231651(A155212(n)+13)`
-/

namespace A231648.P15885656587554064470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A155212 n + 13).toNat

end

end A231648.P15885656587554064470

/-! ## A231648.P9936412965606014366

`A231651(A056000(n)+15)`
-/

namespace A231648.P9936412965606014366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A056000 n + 15).toNat

end

end A231648.P9936412965606014366

/-! ## A231648.P13238848766548936233

`A231651(Δ[A264443(n)])`
-/

namespace A231648.P13238848766548936233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (f1 (n + 1) - f1 n).toNat

end

end A231648.P13238848766548936233

/-! ## A231648.P3863478517791041234

`A231651(A374005(n+1))`
-/

namespace A231648.P3863478517791041234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A374005 (n + 1)).toNat

end

end A231648.P3863478517791041234

/-! ## A231648.P10929325575241486780

`A231651(A046691(n+3))`
-/

namespace A231648.P10929325575241486780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A046691 (n + 3)).toNat

end

end A231648.P10929325575241486780

/-!
# A231649: Number of nX6 0..2 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231649, there is no canonical definition to state claims against.
-/

/-! ## A231649.P2354700156114914406

`A231651(A056115(n)+21)`
-/

namespace A231649.P2354700156114914406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A056115 n + 21).toNat

end

end A231649.P2354700156114914406

/-! ## A231649.P2348128269404216352

`A231651(A374007(n+1))`
-/

namespace A231649.P2348128269404216352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A374007 (n + 1)).toNat

end

end A231649.P2348128269404216352

/-! ## A231649.P8429245871033172673

`A231651(eq[3, A219347(n)])`
-/

namespace A231649.P8429245871033172673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231649.P8429245871033172673

/-! ## A231649.P5008436873161439247

`A231651(eq[5, A193592(n)])`
-/

namespace A231649.P5008436873161439247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231649.P5008436873161439247

/-! ## A231649.P15753147944347068212

`A231651(eq[6, A200370(n+1)])`
-/

namespace A231649.P15753147944347068212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231649.P15753147944347068212

/-!
# A231650: Number of nX7 0..2 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231650, there is no canonical definition to state claims against.
-/

/-! ## A231650.P5233517346477116030

`A231651(eq[8, A131818(n+1)])`
-/

namespace A231650.P5233517346477116030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231650.P5233517346477116030

/-! ## A231650.P12139934332951079326

`A231651(A374008(n+1))`
-/

namespace A231650.P12139934332951079326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A374008 (n + 1)).toNat

end

end A231650.P12139934332951079326

/-! ## A231650.P2789751099479925910

`A231651(A055999(n+4))`
-/

namespace A231650.P2789751099479925910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (A055999 (n + 4)).toNat

end

end A231650.P2789751099479925910

/-! ## A231650.P942813955334298329

`A231651(eq[4, A219347(n)])`
-/

namespace A231650.P942813955334298329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231650.P942813955334298329

/-! ## A231650.P12264926484396997355

`A231651(eq[6, A193592(n)])`
-/

namespace A231650.P12264926484396997355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231650.P12264926484396997355

/-!
# A231652: Lesser twin prime p such that p^2-p-2 is the average of a larger twin prime pair.

The programs for A231652, there is no canonical definition to state claims against.
-/

/-! ## A231652.P14426994783396020039

`A001359(eq[A053260(n), A352550(n+1)])`
-/

namespace A231652.P14426994783396020039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A231652.P14426994783396020039

/-! ## A231652.P2273234558185191418

`A111166(eq[A053260(n), A352550(n+1)])`
-/

namespace A231652.P2273234558185191418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A231652.P2273234558185191418

/-! ## A231652.P1481089124062856689

`A162336(lt[A297338(3*(n+1)), A158709(2*(n+1))])`
-/

namespace A231652.P1481089124062856689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158709 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162336 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231652.P1481089124062856689

/-!
# A231653: Number of non-equivalent ways to choose 4 points in an equilateral triangle grid of side n.

The programs for A231653, there is no canonical definition to state claims against.
-/

/-! ## A231653.P16487874252805626673

`A210716(12*n+1)-n`
-/

namespace A231653.P16487874252805626673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (12 * n + 1) - (n : ℤ)

end

end A231653.P16487874252805626673

/-!
# A231654: Number of non-equivalent ways to choose 5 points in an equilateral triangle grid of side n.

The programs for A231654, there is no canonical definition to state claims against.
-/

/-! ## A231654.P15901409113605463341

`A293607(2*n)²-ceil(C(or(1, n), n)/2)`
-/

namespace A231654.P15901409113605463341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293607 (2 * n) ^ 2 - ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

end

end A231654.P15901409113605463341

/-!
# A231656: Number of n X n 0..2 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231656, there is no canonical definition to state claims against.
-/

/-! ## A231656.P7821669949404251797

`A231663((n+1)²+n²)`
-/

namespace A231656.P7821669949404251797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 ((n + 1) ^ 2 + n ^ 2)

end

end A231656.P7821669949404251797

/-! ## A231656.P16546369981888880148

`A327780(n)+A231663(A001844(n))`
-/

namespace A231656.P16546369981888880148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327780 n + A231663 (A001844 n).toNat

end

end A231656.P16546369981888880148

/-! ## A231656.P12525572341640447688

`or(A000007(n), A231663(A001844(n)))`
-/

namespace A231656.P12525572341640447688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A231663 (A001844 n).toNat)

end

end A231656.P12525572341640447688

/-!
# A231657: Number of nX2 0..2 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231657, there is no canonical definition to state claims against.
-/

/-! ## A231657.P8927065387710782836

`A231663(∑[n+1]+2)`
-/

namespace A231657.P8927065387710782836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231657.P8927065387710782836

/-! ## A231657.P15980800551067520244

`record[A231663(∑[A152271(n)])]`
-/

namespace A231657.P15980800551067520244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231657.P15980800551067520244

/-! ## A231657.P14508837691539894626

`record[A231663(A117142(n+1))]`
-/

namespace A231657.P14508837691539894626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231657.P14508837691539894626

/-! ## A231657.P2739283982599908771

`record[root(A231663(n+1), A033185(n+1))]`
-/

namespace A231657.P2739283982599908771
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231663 (n + 1) : ℝ) ^ (1 / (A033185 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231657.P2739283982599908771

/-! ## A231657.P13714258700885806930

`record[root(A231663(n+1), A233308(n+1))]`
-/

namespace A231657.P13714258700885806930
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231663 (n + 1) : ℝ) ^ (1 / (A233308 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231657.P13714258700885806930

/-!
# A231658: Number of nX3 0..2 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231658, there is no canonical definition to state claims against.
-/

/-! ## A231658.P16510146657256239777

`A231663(∑[n+2]+4)`
-/

namespace A231658.P16510146657256239777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231658.P16510146657256239777

/-! ## A231658.P8314703694673613998

`A231663(A167614(n+1))+A185246(n)`
-/

namespace A231658.P8314703694673613998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A167614 (n + 1)).toNat + A185246 n

end

end A231658.P8314703694673613998

/-! ## A231658.P8408336032911068938

`A014808(n)*A231663(A167614(n+1))`
-/

namespace A231658.P8408336032911068938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014808 n * A231663 (A167614 (n + 1)).toNat

end

end A231658.P8408336032911068938

/-! ## A231658.P10771156371524890312

`A119335(n)*A231663(A167614(n+1))`
-/

namespace A231658.P10771156371524890312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A231663 (A167614 (n + 1)).toNat

end

end A231658.P10771156371524890312

/-! ## A231658.P16519536630207901146

`A000045(A020639(4*n+2))*A231663(A167614(n+1))`
-/

namespace A231658.P16519536630207901146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (4 * n + 2)).toNat * A231663 (A167614 (n + 1)).toNat

end

end A231658.P16519536630207901146

/-!
# A231659: Number of nX4 0..2 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231659, there is no canonical definition to state claims against.
-/

/-! ## A231659.P12775549537346084204

`A231663(A141214(n)+7)`
-/

namespace A231659.P12775549537346084204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A141214 n + 7).toNat

end

end A231659.P12775549537346084204

/-! ## A231659.P10024890066945244115

`A231663(A052905(n)+9)`
-/

namespace A231659.P10024890066945244115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A052905 n + 9).toNat

end

end A231659.P10024890066945244115

/-! ## A231659.P5063226271756301581

`A231663(A055999(n)+10)`
-/

namespace A231659.P5063226271756301581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A055999 n + 10).toNat

end

end A231659.P5063226271756301581

/-! ## A231659.P7256342522984777843

`A231663(A167614(n+2)+1)`
-/

namespace A231659.P7256342522984777843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A167614 (n + 2) + 1).toNat

end

end A231659.P7256342522984777843

/-! ## A231659.P4099692602522987256

`A231663(A166136(n+2)-2)`
-/

namespace A231659.P4099692602522987256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A166136 (n + 2) - 2).toNat

end

end A231659.P4099692602522987256

/-!
# A231660: Number of nX5 0..2 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231660, there is no canonical definition to state claims against.
-/

/-! ## A231660.P15489473435656063900

`A231663(A155212(n)+13)`
-/

namespace A231660.P15489473435656063900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A155212 n + 13).toNat

end

end A231660.P15489473435656063900

/-! ## A231660.P10379344676255510958

`A231663(A056000(n)+15)`
-/

namespace A231660.P10379344676255510958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A056000 n + 15).toNat

end

end A231660.P10379344676255510958

/-! ## A231660.P11804371536101842143

`A231663(eq[6, A131818(n+1)])`
-/

namespace A231660.P11804371536101842143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231660.P11804371536101842143

/-! ## A231660.P14607032443258137215

`A231663(A374005(n+1))`
-/

namespace A231660.P14607032443258137215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A374005 (n + 1)).toNat

end

end A231660.P14607032443258137215

/-! ## A231660.P6647015879291151858

`A231663(eq[4, A193592(n)])`
-/

namespace A231660.P6647015879291151858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231660.P6647015879291151858

/-!
# A231661: Number of nX6 0..2 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231661, there is no canonical definition to state claims against.
-/

/-! ## A231661.P9933591431319264262

`A231663(eq[7, A131818(n+1)])`
-/

namespace A231661.P9933591431319264262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231661.P9933591431319264262

/-! ## A231661.P10810473091903754095

`A231663(A374007(n+1))`
-/

namespace A231661.P10810473091903754095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A374007 (n + 1)).toNat

end

end A231661.P10810473091903754095

/-! ## A231661.P8575702248393691582

`A231663(A052905(n+3))`
-/

namespace A231661.P8575702248393691582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A052905 (n + 3)).toNat

end

end A231661.P8575702248393691582

/-! ## A231661.P9630313819028966691

`A231663(eq[3, A219347(n)])`
-/

namespace A231661.P9630313819028966691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231661.P9630313819028966691

/-! ## A231661.P1533471681025615838

`A231663(eq[5, A025581(n)]+1)`
-/

namespace A231661.P1533471681025615838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231661.P1533471681025615838

/-!
# A231662: Number of nX7 0..2 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231662, there is no canonical definition to state claims against.
-/

/-! ## A231662.P10205395985508653942

`A231663(eq[8, A131818(n+1)])`
-/

namespace A231662.P10205395985508653942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231662.P10205395985508653942

/-! ## A231662.P10429012150576046997

`A231663(A374008(n+1))`
-/

namespace A231662.P10429012150576046997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A374008 (n + 1)).toNat

end

end A231662.P10429012150576046997

/-! ## A231662.P9839897847931070314

`A231663(A055999(n+4))`
-/

namespace A231662.P9839897847931070314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (A055999 (n + 4)).toNat

end

end A231662.P9839897847931070314

/-! ## A231662.P6046436864239441719

`A231663(eq[6, A193592(n)])`
-/

namespace A231662.P6046436864239441719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231662.P6046436864239441719

/-! ## A231662.P3492836850835134210

`A231663(eq[2, A219347(n)-2])`
-/

namespace A231662.P3492836850835134210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231662.P3492836850835134210

/-!
# A231664: a(n) = Sum_{i=0..n} digsum_4(i), where digsum_4(i) = A053737(i).

The programs for A231664, the canonical program `A231664.P525202949081771827` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231664 has offset 0).

The definition of A231664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231664.P525202949081771827

`∑[a(floor(n/4))+n%4]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231664

/-- `∑[a(floor(n/4))+n%4]` -/
def P525202949081771827.Spec : Prop :=
  ∀ n, (P525202949081771827.a n : ℤ) = A231664 n

theorem P525202949081771827.correct : P525202949081771827.Spec := by
  intro n
  simp only [A231664]

end A231664

/-! ## A231664.P18312233891820450398

`∑[A053737(n)]`
-/

namespace A231664.P18312233891820450398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P18312233891820450398

namespace A231664

/-- `∑[A053737(n)]` -/
def P18312233891820450398.Spec : Prop :=
  ∀ n, P18312233891820450398.a n = A231664 n

end A231664

/-! ## A231664.P6434168762020979849

`∑[A230631(n)-n]`
-/

namespace A231664.P6434168762020979849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P6434168762020979849

namespace A231664

/-- `∑[A230631(n)-n]` -/
def P6434168762020979849.Spec : Prop :=
  ∀ n, P6434168762020979849.a n = A231664 n

end A231664

/-! ## A231664.P10100785027992676210

`∑[∑{digits}[A007090(n), #]]`
-/

namespace A231664.P10100785027992676210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P10100785027992676210

namespace A231664

/-- `∑[∑{digits}[A007090(n), #]]` -/
def P10100785027992676210.Spec : Prop :=
  ∀ n, (P10100785027992676210.a n : ℤ) = A231664 n

end A231664

/-! ## A231664.P4735299974858423212

`∑[∑{digits}[A046030(n+1), sqrt(#)]]`
-/

namespace A231664.P4735299974858423212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => Real.sqrt (x : ℝ)).sum

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P4735299974858423212

namespace A231664

/-- `∑[∑{digits}[A046030(n+1), sqrt(#)]]` -/
def P4735299974858423212.Spec : Prop :=
  ∀ n, P4735299974858423212.a n = (A231664 n : ℝ)

end A231664

/-! ## A231664.P3883804022458577254

`∑[A139352(n)+A000120(n)]`
-/

namespace A231664.P3883804022458577254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P3883804022458577254

namespace A231664

/-- `∑[A139352(n)+A000120(n)]` -/
def P3883804022458577254.Spec : Prop :=
  ∀ n, P3883804022458577254.a n = A231664 n

end A231664

/-! ## A231664.P5546172386053335683

`∑[A139352(n)+∑[A088705(n)]]`
-/

namespace A231664.P5546172386053335683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P5546172386053335683

namespace A231664

/-- `∑[A139352(n)+∑[A088705(n)]]` -/
def P5546172386053335683.Spec : Prop :=
  ∀ n, P5546172386053335683.a n = A231664 n

end A231664

/-! ## A231664.P1635224415654260326

`∑[A139351(n)+2*A139352(n)]`
-/

namespace A231664.P1635224415654260326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + 2 * A139352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P1635224415654260326

namespace A231664

/-- `∑[A139351(n)+2*A139352(n)]` -/
def P1635224415654260326.Spec : Prop :=
  ∀ n, P1635224415654260326.a n = A231664 n

end A231664

/-! ## A231664.P4449376726933295052

`∑[2*A000120(n)-A139351(n)]`
-/

namespace A231664.P4449376726933295052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n - A139351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P4449376726933295052

namespace A231664

/-- `∑[2*A000120(n)-A139351(n)]` -/
def P4449376726933295052.Spec : Prop :=
  ∀ n, P4449376726933295052.a n = A231664 n

end A231664

/-! ## A231664.P13308973020133237413

`∑[A139351(2*n)+A000120(n)]`
-/

namespace A231664.P13308973020133237413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n) + A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P13308973020133237413

namespace A231664

/-- `∑[A139351(2*n)+A000120(n)]` -/
def P13308973020133237413.Spec : Prop :=
  ∀ n, P13308973020133237413.a n = A231664 n

end A231664

/-! ## A231664.P8740354732876063141

`∑[A053824(A020654(n+1))]`
-/

namespace A231664.P8740354732876063141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A020654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P8740354732876063141

namespace A231664

/-- `∑[A053824(A020654(n+1))]` -/
def P8740354732876063141.Spec : Prop :=
  ∀ n, P8740354732876063141.a n = A231664 n

end A231664

/-! ## A231664.P11534128509746614681

`∑[A053827(A037460(n))]`
-/

namespace A231664.P11534128509746614681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037460 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P11534128509746614681

namespace A231664

/-- `∑[A053827(A037460(n))]` -/
def P11534128509746614681.Spec : Prop :=
  ∀ n, P11534128509746614681.a n = A231664 n

end A231664

/-! ## A231664.P7330608956622686008

`∑[A053830(A037463(n))]`
-/

namespace A231664.P7330608956622686008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037463 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P7330608956622686008

namespace A231664

/-- `∑[A053830(A037463(n))]` -/
def P7330608956622686008.Spec : Prop :=
  ∀ n, P7330608956622686008.a n = A231664 n

end A231664

/-! ## A231664.P14803619659008849507

`∑{#}[n, A053737(n-#)]`
-/

namespace A231664.P14803619659008849507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A053737 (n - k)

end

end A231664.P14803619659008849507

namespace A231664

/-- `∑{#}[n, A053737(n-#)]` -/
def P14803619659008849507.Spec : Prop :=
  ∀ n, P14803619659008849507.a n = A231664 n

end A231664

/-! ## A231664.P10146642227346513737

`∑[A053829(A037462(n))]`
-/

namespace A231664.P10146642227346513737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037462 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P10146642227346513737

namespace A231664

/-- `∑[A053829(A037462(n))]` -/
def P10146642227346513737.Spec : Prop :=
  ∀ n, P10146642227346513737.a n = A231664 n

end A231664

/-! ## A231664.P962458461720298000

`∑[∑{digits}[lt[A086066(n), 16], #]]`
-/

namespace A231664.P962458461720298000
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P962458461720298000

namespace A231664

/-- `∑[∑{digits}[lt[A086066(n), 16], #]]` -/
def P962458461720298000.Spec : Prop :=
  ∀ n, (P962458461720298000.a n : ℤ) = A231664 n

end A231664

/-! ## A231664.P1241630987995210689

`∑[∑{digits}[lt[A048385(n), 3*n+1], #]]`
-/

namespace A231664.P1241630987995210689
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P1241630987995210689

namespace A231664

/-- `∑[∑{digits}[lt[A048385(n), 3*n+1], #]]` -/
def P1241630987995210689.Spec : Prop :=
  ∀ n, (P1241630987995210689.a n : ℤ) = A231664 n

end A231664

/-! ## A231664.P3972988042290812844

`∑[A007953(A007090(n))]`
-/

namespace A231664.P3972988042290812844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P3972988042290812844

namespace A231664

/-- `∑[A007953(A007090(n))]` -/
def P3972988042290812844.Spec : Prop :=
  ∀ n, P3972988042290812844.a n = A231664 n

end A231664

/-! ## A231664.P5499161768194817991

`∑[A007953(lt[A054055(n), 4])]`
-/

namespace A231664.P5499161768194817991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P5499161768194817991

namespace A231664

/-- `∑[A007953(lt[A054055(n), 4])]` -/
def P5499161768194817991.Spec : Prop :=
  ∀ n, P5499161768194817991.a n = A231664 n

end A231664

/-! ## A231664.P15688885653592658516

`∑[A007953(record[A064770(n)])]`
-/

namespace A231664.P15688885653592658516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231664.P15688885653592658516

namespace A231664

/-- `∑[A007953(record[A064770(n)])]` -/
def P15688885653592658516.Spec : Prop :=
  ∀ n, P15688885653592658516.a n = A231664 n

end A231664

/-!
# A231665: a(n) = Sum_{i=0..n} digsum_4(i)^2, where digsum_4(i) = A053737(i).

The programs for A231665, the canonical program `A231665.P16382713433774330828` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231665 has offset 0).

The definition of A231665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231665.P16382713433774330828

`∑[A053737(n)²]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231665

/-- `∑[A053737(n)²]` -/
def P16382713433774330828.Spec : Prop :=
  ∀ n, P16382713433774330828.a n = A231665 n

theorem P16382713433774330828.correct : P16382713433774330828.Spec := by
  intro n
  simp only [A231665]

end A231665

/-! ## A231665.P9065374131746721924

`∑[(n-A230631(n))²]`
-/

namespace A231665.P9065374131746721924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A230631 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P9065374131746721924

namespace A231665

/-- `∑[(n-A230631(n))²]` -/
def P9065374131746721924.Spec : Prop :=
  ∀ n, P9065374131746721924.a n = A231665 n

theorem P9065374131746721924.correct : P9065374131746721924.Spec := by
  intro n
  simp only [A231665, Nat.add_sub_cancel, A231665.P9065374131746721924.f1, A231665.P9065374131746721924.a, A231665.P16382713433774330828.f1, A231665.P16382713433774330828.a, A053737, A053737.P2884229603739038868.a, A230631, A230631.P4210711857821606968.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231665

/-! ## A231665.P369690839514788087

`∑[∑{digits}[A007090(n), #]²]`
-/

namespace A231665.P369690839514788087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P369690839514788087

namespace A231665

/-- `∑[∑{digits}[A007090(n), #]²]` -/
def P369690839514788087.Spec : Prop :=
  ∀ n, (P369690839514788087.a n : ℤ) = A231665 n

end A231665

/-! ## A231665.P8106632746454908621

`∑[(A139352(n)+A000120(n))²]`
-/

namespace A231665.P8106632746454908621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139352 n + A000120 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P8106632746454908621

namespace A231665

/-- `∑[(A139352(n)+A000120(n))²]` -/
def P8106632746454908621.Spec : Prop :=
  ∀ n, P8106632746454908621.a n = A231665 n

theorem P8106632746454908621.correct : P8106632746454908621.Spec := by
  intro n
  simp only [A231665, Nat.add_sub_cancel, A231665.P8106632746454908621.f1, A231665.P8106632746454908621.a, A231665.P16382713433774330828.f1, A231665.P16382713433774330828.a, A000120, A000120.P2816527436160941581.a, A053737, A053737.P2884229603739038868.a, A139352, A139352.P2034447244462371406.a, A005187, A005187.P3874015513960485494.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231665

/-! ## A231665.P10492578863923178008

`∑[(A139352(n)+∑[A088705(n)])²]`
-/

namespace A231665.P10492578863923178008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139352 n + ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P10492578863923178008

namespace A231665

/-- `∑[(A139352(n)+∑[A088705(n)])²]` -/
def P10492578863923178008.Spec : Prop :=
  ∀ n, P10492578863923178008.a n = A231665 n

end A231665

/-! ## A231665.P9796182378307198994

`∑[A053737(n)*A053737(n%(n+1))]`
-/

namespace A231665.P9796182378307198994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n * A053737 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P9796182378307198994

namespace A231665

/-- `∑[A053737(n)*A053737(n%(n+1))]` -/
def P9796182378307198994.Spec : Prop :=
  ∀ n, P9796182378307198994.a n = A231665 n

theorem P9796182378307198994.correct : P9796182378307198994.Spec := by
  intro n
  simp only [A231665, Nat.add_sub_cancel, A231665.P9796182378307198994.f1, A231665.P9796182378307198994.a, A231665.P16382713433774330828.f1, A231665.P16382713433774330828.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A231665

/-! ## A231665.P3769983220727876253

`∑[(A139351(2*n)+A000120(n))²]`
-/

namespace A231665.P3769983220727876253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139351 (2 * n) + A000120 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P3769983220727876253

namespace A231665

/-- `∑[(A139351(2*n)+A000120(n))²]` -/
def P3769983220727876253.Spec : Prop :=
  ∀ n, P3769983220727876253.a n = A231665 n

end A231665

/-! ## A231665.P13863881395345356646

`∑[A053824(A020654(n+1))²]`
-/

namespace A231665.P13863881395345356646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A020654 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P13863881395345356646

namespace A231665

/-- `∑[A053824(A020654(n+1))²]` -/
def P13863881395345356646.Spec : Prop :=
  ∀ n, P13863881395345356646.a n = A231665 n

end A231665

/-! ## A231665.P8105549927594087974

`∑[A053737(A008574(n))*A053737(n)]`
-/

namespace A231665.P8105549927594087974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008574 n).toNat * A053737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P8105549927594087974

namespace A231665

/-- `∑[A053737(A008574(n))*A053737(n)]` -/
def P8105549927594087974.Spec : Prop :=
  ∀ n, P8105549927594087974.a n = A231665 n

end A231665

/-! ## A231665.P7548864154541239293

`∑[A053827(A037460(n))²]`
-/

namespace A231665.P7548864154541239293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037460 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P7548864154541239293

namespace A231665

/-- `∑[A053827(A037460(n))²]` -/
def P7548864154541239293.Spec : Prop :=
  ∀ n, P7548864154541239293.a n = A231665 n

end A231665

/-! ## A231665.P7762942326335359858

`∑[A053830(A037463(n))²]`
-/

namespace A231665.P7762942326335359858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037463 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P7762942326335359858

namespace A231665

/-- `∑[A053830(A037463(n))²]` -/
def P7762942326335359858.Spec : Prop :=
  ∀ n, P7762942326335359858.a n = A231665 n

end A231665

/-! ## A231665.P2663484820602280410

`∑[A053829(A037462(n))²]`
-/

namespace A231665.P2663484820602280410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037462 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P2663484820602280410

namespace A231665

/-- `∑[A053829(A037462(n))²]` -/
def P2663484820602280410.Spec : Prop :=
  ∀ n, P2663484820602280410.a n = A231665 n

end A231665

/-! ## A231665.P17930304395571387390

`∑[A118881(A007090(n))]`
-/

namespace A231665.P17930304395571387390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P17930304395571387390

namespace A231665

/-- `∑[A118881(A007090(n))]` -/
def P17930304395571387390.Spec : Prop :=
  ∀ n, P17930304395571387390.a n = A231665 n

end A231665

/-! ## A231665.P5106255063384487966

`∑[A007953(record[A064770(n)])²]`
-/

namespace A231665.P5106255063384487966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P5106255063384487966

namespace A231665

/-- `∑[A007953(record[A064770(n)])²]` -/
def P5106255063384487966.Spec : Prop :=
  ∀ n, P5106255063384487966.a n = A231665 n

end A231665

/-! ## A231665.P660136171557820594

`∑[(1-A173524(n+1))²]`
-/

namespace A231665.P660136171557820594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173524 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P660136171557820594

namespace A231665

/-- `∑[(1-A173524(n+1))²]` -/
def P660136171557820594.Spec : Prop :=
  ∀ n, P660136171557820594.a n = A231665 n

end A231665

/-!
# A231666: a(n) = Sum_{i=0..n} digsum_4(i)^3, where digsum_4(i) = A053737(i).

The programs for A231666, the canonical program `A231666.P6388544758695979375` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231666 has offset 0).

The definition of A231666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231666.P6388544758695979375

`∑[A053737(n)^3]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231666

/-- `∑[A053737(n)^3]` -/
def P6388544758695979375.Spec : Prop :=
  ∀ n, P6388544758695979375.a n = A231666 n

theorem P6388544758695979375.correct : P6388544758695979375.Spec := by
  intro n
  simp only [A231666]

end A231666

/-! ## A231666.P13077258192325755764

`∑[∑{digits}[A007090(n), #]^3]`
-/

namespace A231666.P13077258192325755764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231666.P13077258192325755764

namespace A231666

/-- `∑[∑{digits}[A007090(n), #]^3]` -/
def P13077258192325755764.Spec : Prop :=
  ∀ n, (P13077258192325755764.a n : ℤ) = A231666 n

end A231666

/-! ## A231666.P975046004340330714

`∑[A000578(A053737(n))]`
-/

namespace A231666.P975046004340330714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053737 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231666.P975046004340330714

namespace A231666

/-- `∑[A000578(A053737(n))]` -/
def P975046004340330714.Spec : Prop :=
  ∀ n, P975046004340330714.a n = A231666 n

end A231666

/-! ## A231666.P5393368289597626205

`∑[A002821(A053737(n)²)]`
-/

namespace A231666.P5393368289597626205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A053737 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231666.P5393368289597626205

namespace A231666

/-- `∑[A002821(A053737(n)²)]` -/
def P5393368289597626205.Spec : Prop :=
  ∀ n, P5393368289597626205.a n = A231666 n

end A231666

/-! ## A231666.P16618549674293195756

`∑[A000578(A230631(n)-n)]`
-/

namespace A231666.P16618549674293195756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A230631 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231666.P16618549674293195756

namespace A231666

/-- `∑[A000578(A230631(n)-n)]` -/
def P16618549674293195756.Spec : Prop :=
  ∀ n, P16618549674293195756.a n = A231666 n

end A231666

/-! ## A231666.P8287938699615989763

`∑[A053737(A008574(n))²*A053737(n)]`
-/

namespace A231666.P8287938699615989763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008574 n).toNat ^ 2 * A053737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231666.P8287938699615989763

namespace A231666

/-- `∑[A053737(A008574(n))²*A053737(n)]` -/
def P8287938699615989763.Spec : Prop :=
  ∀ n, P8287938699615989763.a n = A231666 n

end A231666

/-! ## A231666.P1818090719174381608

`∑[A007953(A007090(n))^3]`
-/

namespace A231666.P1818090719174381608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007090 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231666.P1818090719174381608

namespace A231666

/-- `∑[A007953(A007090(n))^3]` -/
def P1818090719174381608.Spec : Prop :=
  ∀ n, P1818090719174381608.a n = A231666 n

end A231666

/-!
# A231667: a(n) = Sum_{i=0..n} digsum_4(i)^4, where digsum_4(i) = A053737(i).

The programs for A231667, the canonical program `A231667.P3413105081984781509` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231667 has offset 0).

The definition of A231667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231667.P3413105081984781509

`∑[A053737(n)^4]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231667

/-- `∑[A053737(n)^4]` -/
def P3413105081984781509.Spec : Prop :=
  ∀ n, P3413105081984781509.a n = A231667 n

theorem P3413105081984781509.correct : P3413105081984781509.Spec := by
  intro n
  simp only [A231667]

end A231667

/-! ## A231667.P18442208744559742860

`∑[(n-A230631(n))²²]`
-/

namespace A231667.P18442208744559742860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A230631 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P18442208744559742860

namespace A231667

/-- `∑[(n-A230631(n))²²]` -/
def P18442208744559742860.Spec : Prop :=
  ∀ n, P18442208744559742860.a n = A231667 n

theorem P18442208744559742860.correct : P18442208744559742860.Spec := by
  intro n
  simp only [A231667, Nat.add_sub_cancel, A231667.P18442208744559742860.f1, A231667.P18442208744559742860.a, A231667.P3413105081984781509.f1, A231667.P3413105081984781509.a, A053737, A053737.P2884229603739038868.a, A230631, A230631.P4210711857821606968.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231667

/-! ## A231667.P17217469744200305781

`∑[∑{digits}[A007090(n), #]²²]`
-/

namespace A231667.P17217469744200305781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P17217469744200305781

namespace A231667

/-- `∑[∑{digits}[A007090(n), #]²²]` -/
def P17217469744200305781.Spec : Prop :=
  ∀ n, (P17217469744200305781.a n : ℤ) = A231667 n

end A231667

/-! ## A231667.P8985100495561328703

`∑[A000290(A053737(n)²)]`
-/

namespace A231667.P8985100495561328703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A053737 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P8985100495561328703

namespace A231667

/-- `∑[A000290(A053737(n)²)]` -/
def P8985100495561328703.Spec : Prop :=
  ∀ n, P8985100495561328703.a n = A231667 n

end A231667

/-! ## A231667.P2693144679530221939

`∑[(A139352(n)+A000120(n))²²]`
-/

namespace A231667.P2693144679530221939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A139352 n + A000120 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P2693144679530221939

namespace A231667

/-- `∑[(A139352(n)+A000120(n))²²]` -/
def P2693144679530221939.Spec : Prop :=
  ∀ n, P2693144679530221939.a n = A231667 n

theorem P2693144679530221939.correct : P2693144679530221939.Spec := by
  intro n
  simp only [A231667, Nat.add_sub_cancel, A231667.P2693144679530221939.f1, A231667.P2693144679530221939.a, A231667.P3413105081984781509.f1, A231667.P3413105081984781509.a, A000120, A000120.P2816527436160941581.a, A053737, A053737.P2884229603739038868.a, A139352, A139352.P2034447244462371406.a, A005187, A005187.P3874015513960485494.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231667

/-! ## A231667.P6251621151058529685

`∑[(A053737(n)%A043524(n+1))²²]`
-/

namespace A231667.P6251621151058529685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A053737 n) (A043524 (n + 1)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P6251621151058529685

namespace A231667

/-- `∑[(A053737(n)%A043524(n+1))²²]` -/
def P6251621151058529685.Spec : Prop :=
  ∀ n, P6251621151058529685.a n = A231667 n

end A231667

/-! ## A231667.P10175374360225375538

`∑[(A053737(n)²%A141304(n+1))²]`
-/

namespace A231667.P10175374360225375538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053737 n ^ 2) (A141304 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P10175374360225375538

namespace A231667

/-- `∑[(A053737(n)²%A141304(n+1))²]` -/
def P10175374360225375538.Spec : Prop :=
  ∀ n, P10175374360225375538.a n = A231667 n

end A231667

/-! ## A231667.P7356397386677088540

`∑[A053824(A020654(n+1))²²]`
-/

namespace A231667.P7356397386677088540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053824 (A020654 (n + 1)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P7356397386677088540

namespace A231667

/-- `∑[A053824(A020654(n+1))²²]` -/
def P7356397386677088540.Spec : Prop :=
  ∀ n, P7356397386677088540.a n = A231667 n

end A231667

/-! ## A231667.P5933156227117738514

`∑[A053827(A037460(n))²²]`
-/

namespace A231667.P5933156227117738514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053827 (A037460 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P5933156227117738514

namespace A231667

/-- `∑[A053827(A037460(n))²²]` -/
def P5933156227117738514.Spec : Prop :=
  ∀ n, P5933156227117738514.a n = A231667 n

end A231667

/-! ## A231667.P7875384619132249112

`∑[A053830(A037463(n))²²]`
-/

namespace A231667.P7875384619132249112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053830 (A037463 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P7875384619132249112

namespace A231667

/-- `∑[A053830(A037463(n))²²]` -/
def P7875384619132249112.Spec : Prop :=
  ∀ n, P7875384619132249112.a n = A231667 n

end A231667

/-! ## A231667.P6123316560505181607

`∑[A053829(A037462(n))²²]`
-/

namespace A231667.P6123316560505181607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053829 (A037462 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P6123316560505181607

namespace A231667

/-- `∑[A053829(A037462(n))²²]` -/
def P6123316560505181607.Spec : Prop :=
  ∀ n, P6123316560505181607.a n = A231667 n

end A231667

/-! ## A231667.P8198323631974445343

`∑[A007953(A007090(n))²²]`
-/

namespace A231667.P8198323631974445343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007953 (A007090 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P8198323631974445343

namespace A231667

/-- `∑[A007953(A007090(n))²²]` -/
def P8198323631974445343.Spec : Prop :=
  ∀ n, P8198323631974445343.a n = A231667 n

end A231667

/-! ## A231667.P7000379511145970121

`∑[A007953(record[A064770(n)])²²]`
-/

namespace A231667.P7000379511145970121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P7000379511145970121

namespace A231667

/-- `∑[A007953(record[A064770(n)])²²]` -/
def P7000379511145970121.Spec : Prop :=
  ∀ n, P7000379511145970121.a n = A231667 n

end A231667

/-! ## A231667.P2148215811716703035

`∑[(1-A173524(n+1))²²]`
-/

namespace A231667.P2148215811716703035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A173524 (n + 1)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P2148215811716703035

namespace A231667

/-- `∑[(1-A173524(n+1))²²]` -/
def P2148215811716703035.Spec : Prop :=
  ∀ n, P2148215811716703035.a n = A231667 n

end A231667

/-!
# A231668: a(n) = Sum_{i=0..n} digsum_5(i), where digsum_5(i) = A053824(i).

The programs for A231668, the canonical program `A231668.P9102284697367683491` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231668 has offset 0).

The definition of A231668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231668.P9102284697367683491

`∑[A053824(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231668

/-- `∑[A053824(n)]` -/
def P9102284697367683491.Spec : Prop :=
  ∀ n, P9102284697367683491.a n = A231668 n

theorem P9102284697367683491.correct : P9102284697367683491.Spec := by
  intro n
  simp only [A231668]

end A231668

/-! ## A231668.P5018236373160706798

`∑[A230865(n)-n]`
-/

namespace A231668.P5018236373160706798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P5018236373160706798

namespace A231668

/-- `∑[A230865(n)-n]` -/
def P5018236373160706798.Spec : Prop :=
  ∀ n, P5018236373160706798.a n = A231668 n

theorem P5018236373160706798.correct : P5018236373160706798.Spec := by
  intro n
  simp only [A231668, Nat.add_sub_cancel, A231668.P5018236373160706798.f1, A231668.P5018236373160706798.a, A231668.P9102284697367683491.f1, A231668.P9102284697367683491.a, A053824, A053824.P3010568683746929224.a, A230865, A230865.P13351572211588276155.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231668

/-! ## A231668.P13365240081543522339

`∑[∑{digits}[A007091(n), #]]`
-/

namespace A231668.P13365240081543522339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P13365240081543522339

namespace A231668

/-- `∑[∑{digits}[A007091(n), #]]` -/
def P13365240081543522339.Spec : Prop :=
  ∀ n, (P13365240081543522339.a n : ℤ) = A231668 n

end A231668

/-! ## A231668.P4667424758084465375

`∑[A173525(n+1)-1]`
-/

namespace A231668.P4667424758084465375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P4667424758084465375

namespace A231668

/-- `∑[A173525(n+1)-1]` -/
def P4667424758084465375.Spec : Prop :=
  ∀ n, P4667424758084465375.a n = A231668 n

theorem P4667424758084465375.correct : P4667424758084465375.Spec := by
  intro n
  simp only [A231668, Nat.add_sub_cancel, A231668.P4667424758084465375.f1, A231668.P4667424758084465375.a, A231668.P9102284697367683491.f1, A231668.P9102284697367683491.a, A053824, A053824.P3010568683746929224.a, A173525, A173525.P12961577271591045237.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231668

/-! ## A231668.P3611970416053889050

`∑[∑{digits}[A014263(n+1)/2, #]]`
-/

namespace A231668.P3611970416053889050
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (n + 1) : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f2 n)).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P3611970416053889050

namespace A231668

/-- `∑[∑{digits}[A014263(n+1)/2, #]]` -/
def P3611970416053889050.Spec : Prop :=
  ∀ n, (P3611970416053889050.a n : ℤ) = A231668 n

end A231668

/-! ## A231668.P3710043292898291602

`∑[A053827(A037465(n))]`
-/

namespace A231668.P3710043292898291602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037465 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P3710043292898291602

namespace A231668

/-- `∑[A053827(A037465(n))]` -/
def P3710043292898291602.Spec : Prop :=
  ∀ n, P3710043292898291602.a n = A231668 n

end A231668

/-! ## A231668.P1888994860541936539

`∑[A053830(A037468(n))]`
-/

namespace A231668.P1888994860541936539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037468 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P1888994860541936539

namespace A231668

/-- `∑[A053830(A037468(n))]` -/
def P1888994860541936539.Spec : Prop :=
  ∀ n, P1888994860541936539.a n = A231668 n

end A231668

/-! ## A231668.P13748548816720677426

`∑[A053828(A037466(n))]`
-/

namespace A231668.P13748548816720677426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A037466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P13748548816720677426

namespace A231668

/-- `∑[A053828(A037466(n))]` -/
def P13748548816720677426.Spec : Prop :=
  ∀ n, P13748548816720677426.a n = A231668 n

end A231668

/-! ## A231668.P16713927238872072902

`∑[A053829(A037467(n))]`
-/

namespace A231668.P16713927238872072902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037467 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P16713927238872072902

namespace A231668

/-- `∑[A053829(A037467(n))]` -/
def P16713927238872072902.Spec : Prop :=
  ∀ n, P16713927238872072902.a n = A231668 n

end A231668

/-! ## A231668.P16615045731045483618

`∑[A007953(A007091(n))]`
-/

namespace A231668.P16615045731045483618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007091 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P16615045731045483618

namespace A231668

/-- `∑[A007953(A007091(n))]` -/
def P16615045731045483618.Spec : Prop :=
  ∀ n, P16615045731045483618.a n = A231668 n

end A231668

/-! ## A231668.P6180206107124472872

`∑[∑{digits}[record[n-A107128(n)], #]]`
-/

namespace A231668.P6180206107124472872
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P6180206107124472872

namespace A231668

/-- `∑[∑{digits}[record[n-A107128(n)], #]]` -/
def P6180206107124472872.Spec : Prop :=
  ∀ n, (P6180206107124472872.a n : ℤ) = A231668 n

end A231668

/-! ## A231668.P3371241960646785192

`∑[A007953(eq[n, A167831(n)])]`
-/

namespace A231668.P3371241960646785192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P3371241960646785192

namespace A231668

/-- `∑[A007953(eq[n, A167831(n)])]` -/
def P3371241960646785192.Spec : Prop :=
  ∀ n, P3371241960646785192.a n = A231668 n

end A231668

/-!
# A231669: a(n) = Sum_{i=0..n} digsum_5(i)^2, where digsum_5(i) = A053824(i).

The programs for A231669, the canonical program `A231669.P3399117245193815518` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231669 has offset 0).

The definition of A231669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231669.P3399117245193815518

`∑[A053824(n)²]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231669

/-- `∑[A053824(n)²]` -/
def P3399117245193815518.Spec : Prop :=
  ∀ n, P3399117245193815518.a n = A231669 n

theorem P3399117245193815518.correct : P3399117245193815518.Spec := by
  intro n
  simp only [A231669]

end A231669

/-! ## A231669.P12174362131641920577

`∑[(n-A230865(n))²]`
-/

namespace A231669.P12174362131641920577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A230865 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P12174362131641920577

namespace A231669

/-- `∑[(n-A230865(n))²]` -/
def P12174362131641920577.Spec : Prop :=
  ∀ n, P12174362131641920577.a n = A231669 n

theorem P12174362131641920577.correct : P12174362131641920577.Spec := by
  intro n
  simp only [A231669, Nat.add_sub_cancel, A231669.P12174362131641920577.f1, A231669.P12174362131641920577.a, A231669.P3399117245193815518.f1, A231669.P3399117245193815518.a, A053824, A053824.P3010568683746929224.a, A230865, A230865.P13351572211588276155.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231669

/-! ## A231669.P18429568906654459594

`∑[∑{digits}[A007091(n), #]²]`
-/

namespace A231669.P18429568906654459594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P18429568906654459594

namespace A231669

/-- `∑[∑{digits}[A007091(n), #]²]` -/
def P18429568906654459594.Spec : Prop :=
  ∀ n, (P18429568906654459594.a n : ℤ) = A231669 n

end A231669

/-! ## A231669.P12047101943467474903

`∑[(1-A173525(n+1))²]`
-/

namespace A231669.P12047101943467474903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173525 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P12047101943467474903

namespace A231669

/-- `∑[(1-A173525(n+1))²]` -/
def P12047101943467474903.Spec : Prop :=
  ∀ n, P12047101943467474903.a n = A231669 n

theorem P12047101943467474903.correct : P12047101943467474903.Spec := by
  intro n
  simp only [A231669, Nat.add_sub_cancel, A231669.P12047101943467474903.f1, A231669.P12047101943467474903.a, A231669.P3399117245193815518.f1, A231669.P3399117245193815518.a, A053824, A053824.P3010568683746929224.a, A173525, A173525.P12961577271591045237.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231669

/-! ## A231669.P16306407264883294542

`∑[(4*A027868(n)-n)²]`
-/

namespace A231669.P16306407264883294542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A027868 n - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P16306407264883294542

namespace A231669

/-- `∑[(4*A027868(n)-n)²]` -/
def P16306407264883294542.Spec : Prop :=
  ∀ n, P16306407264883294542.a n = A231669 n

end A231669

/-! ## A231669.P8258843652354262377

`∑[A053827(A037465(n))²]`
-/

namespace A231669.P8258843652354262377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037465 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P8258843652354262377

namespace A231669

/-- `∑[A053827(A037465(n))²]` -/
def P8258843652354262377.Spec : Prop :=
  ∀ n, P8258843652354262377.a n = A231669 n

end A231669

/-! ## A231669.P8590341567733292795

`∑[A053830(A037468(n))²]`
-/

namespace A231669.P8590341567733292795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037468 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P8590341567733292795

namespace A231669

/-- `∑[A053830(A037468(n))²]` -/
def P8590341567733292795.Spec : Prop :=
  ∀ n, P8590341567733292795.a n = A231669 n

end A231669

/-! ## A231669.P2238267289060117567

`∑[A053828(A037466(n))²]`
-/

namespace A231669.P2238267289060117567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A037466 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P2238267289060117567

namespace A231669

/-- `∑[A053828(A037466(n))²]` -/
def P2238267289060117567.Spec : Prop :=
  ∀ n, P2238267289060117567.a n = A231669 n

end A231669

/-! ## A231669.P12855252477400396537

`∑[A053824(5*n)^2]`
-/

namespace A231669.P12855252477400396537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (5 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P12855252477400396537

namespace A231669

/-- `∑[A053824(5*n)^2]` -/
def P12855252477400396537.Spec : Prop :=
  ∀ n, P12855252477400396537.a n = A231669 n

end A231669

/-! ## A231669.P13350516998678450519

`a(n-1)+A053824(A008706(n))²` with `a(0)=0, a(1)=1`
-/

namespace A231669.P13350516998678450519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A053824 (A008706 n).toNat ^ 2

end

end A231669.P13350516998678450519

namespace A231669

/-- `a(n-1)+A053824(A008706(n))²` -/
def P13350516998678450519.Spec : Prop :=
  ∀ n, P13350516998678450519.a n = A231669 n

end A231669

/-! ## A231669.P12663330898453857210

`∑[A053829(A037467(n))²]`
-/

namespace A231669.P12663330898453857210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037467 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P12663330898453857210

namespace A231669

/-- `∑[A053829(A037467(n))²]` -/
def P12663330898453857210.Spec : Prop :=
  ∀ n, P12663330898453857210.a n = A231669 n

end A231669

/-! ## A231669.P11798780914757161171

`∑[A118881(A007091(n))]`
-/

namespace A231669.P11798780914757161171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007091 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P11798780914757161171

namespace A231669

/-- `∑[A118881(A007091(n))]` -/
def P11798780914757161171.Spec : Prop :=
  ∀ n, P11798780914757161171.a n = A231669 n

end A231669

/-! ## A231669.P17787141590012393162

`∑[A007953(lt[A054055(n), 5])²]`
-/

namespace A231669.P17787141590012393162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P17787141590012393162

namespace A231669

/-- `∑[A007953(lt[A054055(n), 5])²]` -/
def P17787141590012393162.Spec : Prop :=
  ∀ n, P17787141590012393162.a n = A231669 n

end A231669

/-! ## A231669.P9944964395238903247

`∑[A007953(A007091(n))*A053824(n)]`
-/

namespace A231669.P9944964395238903247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007091 n).toNat * A053824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P9944964395238903247

namespace A231669

/-- `∑[A007953(A007091(n))*A053824(n)]` -/
def P9944964395238903247.Spec : Prop :=
  ∀ n, P9944964395238903247.a n = A231669 n

end A231669

/-! ## A231669.P12669034829297337752

`∑[A118881(record[A106747(n)])]`
-/

namespace A231669.P12669034829297337752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P12669034829297337752

namespace A231669

/-- `∑[A118881(record[A106747(n)])]` -/
def P12669034829297337752.Spec : Prop :=
  ∀ n, P12669034829297337752.a n = A231669 n

end A231669

/-! ## A231669.P18087030517440395426

`∑[A007953(eq[n, A167831(n)])²]`
-/

namespace A231669.P18087030517440395426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P18087030517440395426

namespace A231669

/-- `∑[A007953(eq[n, A167831(n)])²]` -/
def P18087030517440395426.Spec : Prop :=
  ∀ n, P18087030517440395426.a n = A231669 n

end A231669

/-!
# A231670: a(n) = Sum_{i=0..n} digsum_5(i)^3, where digsum_5(i) = A053824(i).

The programs for A231670, the canonical program `A231670.P15139428656320515460` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231670 has offset 0).

The definition of A231670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231670.P15139428656320515460

`∑[A053824(n)^3]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231670

/-- `∑[A053824(n)^3]` -/
def P15139428656320515460.Spec : Prop :=
  ∀ n, P15139428656320515460.a n = A231670 n

theorem P15139428656320515460.correct : P15139428656320515460.Spec := by
  intro n
  simp only [A231670]

end A231670

/-! ## A231670.P12700810164438683830

`∑[(A230865(n)-n)^3]`
-/

namespace A231670.P12700810164438683830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230865 n - (n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231670.P12700810164438683830

namespace A231670

/-- `∑[(A230865(n)-n)^3]` -/
def P12700810164438683830.Spec : Prop :=
  ∀ n, P12700810164438683830.a n = A231670 n

theorem P12700810164438683830.correct : P12700810164438683830.Spec := by
  intro n
  simp only [A231670, Nat.add_sub_cancel, A231670.P12700810164438683830.f1, A231670.P12700810164438683830.a, A231670.P15139428656320515460.f1, A231670.P15139428656320515460.a, A053824, A053824.P3010568683746929224.a, A230865, A230865.P13351572211588276155.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231670

/-! ## A231670.P13056662876451715331

`∑[∑{digits}[A007091(n), #]^3]`
-/

namespace A231670.P13056662876451715331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231670.P13056662876451715331

namespace A231670

/-- `∑[∑{digits}[A007091(n), #]^3]` -/
def P13056662876451715331.Spec : Prop :=
  ∀ n, (P13056662876451715331.a n : ℤ) = A231670 n

end A231670

/-! ## A231670.P11516471096799278263

`∑[(A173525(n+1)-1)^3]`
-/

namespace A231670.P11516471096799278263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173525 (n + 1) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231670.P11516471096799278263

namespace A231670

/-- `∑[(A173525(n+1)-1)^3]` -/
def P11516471096799278263.Spec : Prop :=
  ∀ n, P11516471096799278263.a n = A231670 n

theorem P11516471096799278263.correct : P11516471096799278263.Spec := by
  intro n
  simp only [A231670, Nat.add_sub_cancel, A231670.P11516471096799278263.f1, A231670.P11516471096799278263.a, A231670.P15139428656320515460.f1, A231670.P15139428656320515460.a, A053824, A053824.P3010568683746929224.a, A173525, A173525.P12961577271591045237.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231670

/-! ## A231670.P5286495038619440650

`∑[A000578(A053824(n))]`
-/

namespace A231670.P5286495038619440650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231670.P5286495038619440650

namespace A231670

/-- `∑[A000578(A053824(n))]` -/
def P5286495038619440650.Spec : Prop :=
  ∀ n, P5286495038619440650.a n = A231670 n

end A231670

/-! ## A231670.P5519540204692187800

`∑[A007953(A007091(n))^3]`
-/

namespace A231670.P5519540204692187800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007091 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231670.P5519540204692187800

namespace A231670

/-- `∑[A007953(A007091(n))^3]` -/
def P5519540204692187800.Spec : Prop :=
  ∀ n, P5519540204692187800.a n = A231670 n

end A231670

/-! ## A231670.P9684832648171921207

`∑[A007953(A007091(n))²*A053824(n)]`
-/

namespace A231670.P9684832648171921207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007091 n).toNat ^ 2 * A053824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231670.P9684832648171921207

namespace A231670

/-- `∑[A007953(A007091(n))²*A053824(n)]` -/
def P9684832648171921207.Spec : Prop :=
  ∀ n, P9684832648171921207.a n = A231670 n

end A231670

/-!
# A231671: a(n) = Sum_{i=0..n} digsum_5(i)^4, where digsum_5(i) = A053824(i).

The programs for A231671, the canonical program `A231671.P8639604201154569080` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231671 has offset 0).

The definition of A231671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231671.P8639604201154569080

`∑[A053824(n)^4]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231671

/-- `∑[A053824(n)^4]` -/
def P8639604201154569080.Spec : Prop :=
  ∀ n, P8639604201154569080.a n = A231671 n

theorem P8639604201154569080.correct : P8639604201154569080.Spec := by
  intro n
  simp only [A231671]

end A231671

/-! ## A231671.P7501166642041033221

`∑[(n-A230865(n))²²]`
-/

namespace A231671.P7501166642041033221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A230865 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P7501166642041033221

namespace A231671

/-- `∑[(n-A230865(n))²²]` -/
def P7501166642041033221.Spec : Prop :=
  ∀ n, P7501166642041033221.a n = A231671 n

theorem P7501166642041033221.correct : P7501166642041033221.Spec := by
  intro n
  simp only [A231671, Nat.add_sub_cancel, A231671.P7501166642041033221.f1, A231671.P7501166642041033221.a, A231671.P8639604201154569080.f1, A231671.P8639604201154569080.a, A053824, A053824.P3010568683746929224.a, A230865, A230865.P13351572211588276155.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231671

/-! ## A231671.P14846801622398536727

`∑[∑{digits}[A007091(n), #]²²]`
-/

namespace A231671.P14846801622398536727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P14846801622398536727

namespace A231671

/-- `∑[∑{digits}[A007091(n), #]²²]` -/
def P14846801622398536727.Spec : Prop :=
  ∀ n, (P14846801622398536727.a n : ℤ) = A231671 n

end A231671

/-! ## A231671.P18385547435728938850

`∑[(1-A173525(n+1))²²]`
-/

namespace A231671.P18385547435728938850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A173525 (n + 1)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P18385547435728938850

namespace A231671

/-- `∑[(1-A173525(n+1))²²]` -/
def P18385547435728938850.Spec : Prop :=
  ∀ n, P18385547435728938850.a n = A231671 n

theorem P18385547435728938850.correct : P18385547435728938850.Spec := by
  intro n
  simp only [A231671, Nat.add_sub_cancel, A231671.P18385547435728938850.f1, A231671.P18385547435728938850.a, A231671.P8639604201154569080.f1, A231671.P8639604201154569080.a, A053824, A053824.P3010568683746929224.a, A173525, A173525.P12961577271591045237.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231671

/-! ## A231671.P896975415306238579

`∑[A000583(A053824(n))]`
-/

namespace A231671.P896975415306238579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P896975415306238579

namespace A231671

/-- `∑[A000583(A053824(n))]` -/
def P896975415306238579.Spec : Prop :=
  ∀ n, P896975415306238579.a n = A231671 n

end A231671

/-! ## A231671.P8927988164507335

`∑[A000290(A053824(n)²)]`
-/

namespace A231671.P8927988164507335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A053824 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P8927988164507335

namespace A231671

/-- `∑[A000290(A053824(n)²)]` -/
def P8927988164507335.Spec : Prop :=
  ∀ n, P8927988164507335.a n = A231671 n

end A231671

/-! ## A231671.P1871703137318315632

`∑[(A053824(n)%A089546(n+1))²²]`
-/

namespace A231671.P1871703137318315632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A053824 n) (A089546 (n + 1)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P1871703137318315632

namespace A231671

/-- `∑[(A053824(n)%A089546(n+1))²²]` -/
def P1871703137318315632.Spec : Prop :=
  ∀ n, P1871703137318315632.a n = A231671 n

end A231671

/-! ## A231671.P15950040321024159864

`∑[A053827(A037465(n))²²]`
-/

namespace A231671.P15950040321024159864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053827 (A037465 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P15950040321024159864

namespace A231671

/-- `∑[A053827(A037465(n))²²]` -/
def P15950040321024159864.Spec : Prop :=
  ∀ n, P15950040321024159864.a n = A231671 n

end A231671

/-! ## A231671.P2457120080754307652

`∑[A053830(A037468(n))²²]`
-/

namespace A231671.P2457120080754307652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053830 (A037468 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P2457120080754307652

namespace A231671

/-- `∑[A053830(A037468(n))²²]` -/
def P2457120080754307652.Spec : Prop :=
  ∀ n, P2457120080754307652.a n = A231671 n

end A231671

/-! ## A231671.P17823009847991699655

`∑[A053828(A037466(n))²²]`
-/

namespace A231671.P17823009847991699655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053828 (A037466 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P17823009847991699655

namespace A231671

/-- `∑[A053828(A037466(n))²²]` -/
def P17823009847991699655.Spec : Prop :=
  ∀ n, P17823009847991699655.a n = A231671 n

end A231671

/-! ## A231671.P11974005368326997004

`∑[A053829(A037467(n))²²]`
-/

namespace A231671.P11974005368326997004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053829 (A037467 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P11974005368326997004

namespace A231671

/-- `∑[A053829(A037467(n))²²]` -/
def P11974005368326997004.Spec : Prop :=
  ∀ n, P11974005368326997004.a n = A231671 n

end A231671

/-! ## A231671.P15689149846038809878

`∑[A118881(A007091(n))²]`
-/

namespace A231671.P15689149846038809878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007091 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P15689149846038809878

namespace A231671

/-- `∑[A118881(A007091(n))²]` -/
def P15689149846038809878.Spec : Prop :=
  ∀ n, P15689149846038809878.a n = A231671 n

end A231671

/-! ## A231671.P6519418329510204445

`∑[A118881(record[A106747(n)])²]`
-/

namespace A231671.P6519418329510204445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P6519418329510204445

namespace A231671

/-- `∑[A118881(record[A106747(n)])²]` -/
def P6519418329510204445.Spec : Prop :=
  ∀ n, P6519418329510204445.a n = A231671 n

end A231671

/-!
# A231672: a(n) = Sum_{i=0..n} digsum_6(i), where digsum_6(i) = A053827(i).

The programs for A231672, the canonical program `A231672.P15541814258976411712` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231672 has offset 0).

The definition of A231672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231672.P15541814258976411712

`∑[A053827(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231672

/-- `∑[A053827(n)]` -/
def P15541814258976411712.Spec : Prop :=
  ∀ n, P15541814258976411712.a n = A231672 n

theorem P15541814258976411712.correct : P15541814258976411712.Spec := by
  intro n
  simp only [A231672]

end A231672

/-! ## A231672.P9038674797295469168

`∑[∑{digits}[A007092(n), #]]`
-/

namespace A231672.P9038674797295469168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P9038674797295469168

namespace A231672

/-- `∑[∑{digits}[A007092(n), #]]` -/
def P9038674797295469168.Spec : Prop :=
  ∀ n, (P9038674797295469168.a n : ℤ) = A231672 n

end A231672

/-! ## A231672.P11371468023773609895

`∑[A173526(n+1)-1]`
-/

namespace A231672.P11371468023773609895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P11371468023773609895

namespace A231672

/-- `∑[A173526(n+1)-1]` -/
def P11371468023773609895.Spec : Prop :=
  ∀ n, P11371468023773609895.a n = A231672 n

theorem P11371468023773609895.correct : P11371468023773609895.Spec := by
  intro n
  simp only [A231672, Nat.add_sub_cancel, A231672.P11371468023773609895.f1, A231672.P11371468023773609895.a, A231672.P15541814258976411712.f1, A231672.P15541814258976411712.a, A053827, A053827.P15972254016312287163.a, A173526, A173526.P10479073765119350543.a, A054895, A054895.P15754295407001771698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231672

/-! ## A231672.P14250848745584651551

`∑[n-5*A054895(n)]`
-/

namespace A231672.P14250848745584651551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * A054895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P14250848745584651551

namespace A231672

/-- `∑[n-5*A054895(n)]` -/
def P14250848745584651551.Spec : Prop :=
  ∀ n, P14250848745584651551.a n = A231672 n

end A231672

/-! ## A231672.P3008105314581912537

`∑[a(A244414(n)-1)+1]` with `a(0)=0, a(1)=1`
-/

namespace A231672.P3008105314581912537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (A244414 n - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P3008105314581912537

namespace A231672

/-- `∑[a(A244414(n)-1)+1]` -/
def P3008105314581912537.Spec : Prop :=
  ∀ n, (P3008105314581912537.a n : ℤ) = A231672 n

end A231672

/-! ## A231672.P10068360450313189780

`∑[A053830(A037472(n))]`
-/

namespace A231672.P10068360450313189780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037472 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P10068360450313189780

namespace A231672

/-- `∑[A053830(A037472(n))]` -/
def P10068360450313189780.Spec : Prop :=
  ∀ n, P10068360450313189780.a n = A231672 n

end A231672

/-! ## A231672.P9118246070766144018

`∑[A053828(A020657(n+1))]`
-/

namespace A231672.P9118246070766144018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020657 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P9118246070766144018

namespace A231672

/-- `∑[A053828(A020657(n+1))]` -/
def P9118246070766144018.Spec : Prop :=
  ∀ n, P9118246070766144018.a n = A231672 n

end A231672

/-! ## A231672.P12725008503972324145

`∑[∑{digits}[A061821(2*n+1), #]]`
-/

namespace A231672.P12725008503972324145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061821 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P12725008503972324145

namespace A231672

/-- `∑[∑{digits}[A061821(2*n+1), #]]` -/
def P12725008503972324145.Spec : Prop :=
  ∀ n, (P12725008503972324145.a n : ℤ) = A231672 n

end A231672

/-! ## A231672.P5242905434932080300

`∑[A053829(A037471(n))]`
-/

namespace A231672.P5242905434932080300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037471 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P5242905434932080300

namespace A231672

/-- `∑[A053829(A037471(n))]` -/
def P5242905434932080300.Spec : Prop :=
  ∀ n, P5242905434932080300.a n = A231672 n

end A231672

/-! ## A231672.P14474003484204890631

`∑[∑{digits}[record[n-A106747(n)], #]]`
-/

namespace A231672.P14474003484204890631
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P14474003484204890631

namespace A231672

/-- `∑[∑{digits}[record[n-A106747(n)], #]]` -/
def P14474003484204890631.Spec : Prop :=
  ∀ n, (P14474003484204890631.a n : ℤ) = A231672 n

end A231672

/-! ## A231672.P14471891097548410640

`∑[A007953(A007092(n))]`
-/

namespace A231672.P14471891097548410640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P14471891097548410640

namespace A231672

/-- `∑[A007953(A007092(n))]` -/
def P14471891097548410640.Spec : Prop :=
  ∀ n, P14471891097548410640.a n = A231672 n

end A231672

/-!
# A231673: a(n) = Sum_{i=0..n} digsum_6(i)^2, where digsum_6(i) = A053827(i).

The programs for A231673, the canonical program `A231673.P7565841286569407630` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231673 has offset 0).

The definition of A231673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231673.P7565841286569407630

`∑[A053827(n)²]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231673

/-- `∑[A053827(n)²]` -/
def P7565841286569407630.Spec : Prop :=
  ∀ n, P7565841286569407630.a n = A231673 n

theorem P7565841286569407630.correct : P7565841286569407630.Spec := by
  intro n
  simp only [A231673]

end A231673

/-! ## A231673.P18145250794179102214

`∑[∑{digits}[A007092(n), #]²]`
-/

namespace A231673.P18145250794179102214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P18145250794179102214

namespace A231673

/-- `∑[∑{digits}[A007092(n), #]²]` -/
def P18145250794179102214.Spec : Prop :=
  ∀ n, (P18145250794179102214.a n : ℤ) = A231673 n

end A231673

/-! ## A231673.P1096687960871722200

`∑[(1-A173526(n+1))²]`
-/

namespace A231673.P1096687960871722200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173526 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P1096687960871722200

namespace A231673

/-- `∑[(1-A173526(n+1))²]` -/
def P1096687960871722200.Spec : Prop :=
  ∀ n, P1096687960871722200.a n = A231673 n

theorem P1096687960871722200.correct : P1096687960871722200.Spec := by
  intro n
  simp only [A231673, Nat.add_sub_cancel, A231673.P1096687960871722200.f1, A231673.P1096687960871722200.a, A231673.P7565841286569407630.f1, A231673.P7565841286569407630.a, A053827, A053827.P15972254016312287163.a, A173526, A173526.P10479073765119350543.a, A054895, A054895.P15754295407001771698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231673

/-! ## A231673.P11592037452177852272

`∑[A053830(A037472(n))²]`
-/

namespace A231673.P11592037452177852272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037472 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P11592037452177852272

namespace A231673

/-- `∑[A053830(A037472(n))²]` -/
def P11592037452177852272.Spec : Prop :=
  ∀ n, P11592037452177852272.a n = A231673 n

end A231673

/-! ## A231673.P8953080509395337060

`∑[A053828(A020657(n+1))²]`
-/

namespace A231673.P8953080509395337060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020657 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P8953080509395337060

namespace A231673

/-- `∑[A053828(A020657(n+1))²]` -/
def P8953080509395337060.Spec : Prop :=
  ∀ n, P8953080509395337060.a n = A231673 n

end A231673

/-! ## A231673.P4731961369556623368

`∑[∑{digits}[A061821(2*n+1), #]^2]`
-/

namespace A231673.P4731961369556623368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061821 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P4731961369556623368

namespace A231673

/-- `∑[∑{digits}[A061821(2*n+1), #]^2]` -/
def P4731961369556623368.Spec : Prop :=
  ∀ n, (P4731961369556623368.a n : ℤ) = A231673 n

end A231673

/-! ## A231673.P6958381956203192342

`∑[A053829(A037471(n))²]`
-/

namespace A231673.P6958381956203192342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037471 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P6958381956203192342

namespace A231673

/-- `∑[A053829(A037471(n))²]` -/
def P6958381956203192342.Spec : Prop :=
  ∀ n, P6958381956203192342.a n = A231673 n

end A231673

/-! ## A231673.P1798035814554797006

`∑[A118881(A007092(n))]`
-/

namespace A231673.P1798035814554797006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P1798035814554797006

namespace A231673

/-- `∑[A118881(A007092(n))]` -/
def P1798035814554797006.Spec : Prop :=
  ∀ n, P1798035814554797006.a n = A231673 n

end A231673

/-! ## A231673.P10929087835933004768

`∑[A118881(record[n-A106747(n)])]`
-/

namespace A231673.P10929087835933004768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P10929087835933004768

namespace A231673

/-- `∑[A118881(record[n-A106747(n)])]` -/
def P10929087835933004768.Spec : Prop :=
  ∀ n, P10929087835933004768.a n = A231673 n

end A231673

/-!
# A231674: a(n) = Sum_{i=0..n} digsum_6(i)^3, where digsum_6(i) = A053827(i).

The programs for A231674, the canonical program `A231674.P15630276326049919643` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231674 has offset 0).

The definition of A231674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231674.P15630276326049919643

`∑[A053827(n)^3]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231674

/-- `∑[A053827(n)^3]` -/
def P15630276326049919643.Spec : Prop :=
  ∀ n, P15630276326049919643.a n = A231674 n

theorem P15630276326049919643.correct : P15630276326049919643.Spec := by
  intro n
  simp only [A231674]

end A231674

/-! ## A231674.P17285542420619537046

`∑[A000578(A053827(n))]`
-/

namespace A231674.P17285542420619537046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053827 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231674.P17285542420619537046

namespace A231674

/-- `∑[A000578(A053827(n))]` -/
def P17285542420619537046.Spec : Prop :=
  ∀ n, P17285542420619537046.a n = A231674 n

end A231674

/-! ## A231674.P2532527099938276100

`∑[A053830(A037472(n))^3]`
-/

namespace A231674.P2532527099938276100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037472 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231674.P2532527099938276100

namespace A231674

/-- `∑[A053830(A037472(n))^3]` -/
def P2532527099938276100.Spec : Prop :=
  ∀ n, P2532527099938276100.a n = A231674 n

end A231674

/-! ## A231674.P9283714327646977427

`∑[A053828(A020657(n+1))^3]`
-/

namespace A231674.P9283714327646977427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020657 (n + 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231674.P9283714327646977427

namespace A231674

/-- `∑[A053828(A020657(n+1))^3]` -/
def P9283714327646977427.Spec : Prop :=
  ∀ n, P9283714327646977427.a n = A231674 n

end A231674

/-! ## A231674.P15837118380790505880

`∑[∑{digits}[A061821(2*n+1), #]^3]`
-/

namespace A231674.P15837118380790505880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061821 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231674.P15837118380790505880

namespace A231674

/-- `∑[∑{digits}[A061821(2*n+1), #]^3]` -/
def P15837118380790505880.Spec : Prop :=
  ∀ n, (P15837118380790505880.a n : ℤ) = A231674 n

end A231674

/-! ## A231674.P11129922697202264114

`∑[A007953(A007092(n))^3]`
-/

namespace A231674.P11129922697202264114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007092 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231674.P11129922697202264114

namespace A231674

/-- `∑[A007953(A007092(n))^3]` -/
def P11129922697202264114.Spec : Prop :=
  ∀ n, P11129922697202264114.a n = A231674 n

end A231674

/-! ## A231674.P13054568908940404859

`∑[A118880(A007092(n))]`
-/

namespace A231674.P13054568908940404859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A007092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231674.P13054568908940404859

namespace A231674

/-- `∑[A118880(A007092(n))]` -/
def P13054568908940404859.Spec : Prop :=
  ∀ n, P13054568908940404859.a n = A231674 n

end A231674

/-!
# A231675: a(n) = Sum_{i=0..n} digsum_6(i)^4, where digsum_6(i) = A053827(i).

The programs for A231675, the canonical program `A231675.P2348544671511139733` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231675 has offset 0).

The definition of A231675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231675.P2348544671511139733

`∑[A053827(n)^4]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231675

/-- `∑[A053827(n)^4]` -/
def P2348544671511139733.Spec : Prop :=
  ∀ n, P2348544671511139733.a n = A231675 n

theorem P2348544671511139733.correct : P2348544671511139733.Spec := by
  intro n
  simp only [A231675]

end A231675

/-! ## A231675.P4595357374877665359

`∑[∑{digits}[A007092(n), #]²²]`
-/

namespace A231675.P4595357374877665359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P4595357374877665359

namespace A231675

/-- `∑[∑{digits}[A007092(n), #]²²]` -/
def P4595357374877665359.Spec : Prop :=
  ∀ n, (P4595357374877665359.a n : ℤ) = A231675 n

end A231675

/-! ## A231675.P1352700050182145708

`∑[(1-A173526(n+1))²²]`
-/

namespace A231675.P1352700050182145708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A173526 (n + 1)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P1352700050182145708

namespace A231675

/-- `∑[(1-A173526(n+1))²²]` -/
def P1352700050182145708.Spec : Prop :=
  ∀ n, P1352700050182145708.a n = A231675 n

theorem P1352700050182145708.correct : P1352700050182145708.Spec := by
  intro n
  simp only [A231675, Nat.add_sub_cancel, A231675.P1352700050182145708.f1, A231675.P1352700050182145708.a, A231675.P2348544671511139733.f1, A231675.P2348544671511139733.a, A053827, A053827.P15972254016312287163.a, A173526, A173526.P10479073765119350543.a, A054895, A054895.P15754295407001771698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231675

/-! ## A231675.P4688917052529346805

`∑[A000583(A053827(n))]`
-/

namespace A231675.P4688917052529346805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053827 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P4688917052529346805

namespace A231675

/-- `∑[A000583(A053827(n))]` -/
def P4688917052529346805.Spec : Prop :=
  ∀ n, P4688917052529346805.a n = A231675 n

end A231675

/-! ## A231675.P14343008442527750701

`∑[A000290(A053827(n)²)]`
-/

namespace A231675.P14343008442527750701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A053827 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P14343008442527750701

namespace A231675

/-- `∑[A000290(A053827(n)²)]` -/
def P14343008442527750701.Spec : Prop :=
  ∀ n, P14343008442527750701.a n = A231675 n

end A231675

/-! ## A231675.P2148313667458909456

`∑[(A053827(n)%A014632(n))²²]`
-/

namespace A231675.P2148313667458909456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A053827 n) (A014632 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P2148313667458909456

namespace A231675

/-- `∑[(A053827(n)%A014632(n))²²]` -/
def P2148313667458909456.Spec : Prop :=
  ∀ n, P2148313667458909456.a n = A231675 n

end A231675

/-! ## A231675.P16903216975483364612

`∑[A053830(A037472(n))²²]`
-/

namespace A231675.P16903216975483364612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053830 (A037472 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P16903216975483364612

namespace A231675

/-- `∑[A053830(A037472(n))²²]` -/
def P16903216975483364612.Spec : Prop :=
  ∀ n, P16903216975483364612.a n = A231675 n

end A231675

/-! ## A231675.P15300394833401414775

`∑[A053828(A020657(n+1))²²]`
-/

namespace A231675.P15300394833401414775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053828 (A020657 (n + 1)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P15300394833401414775

namespace A231675

/-- `∑[A053828(A020657(n+1))²²]` -/
def P15300394833401414775.Spec : Prop :=
  ∀ n, P15300394833401414775.a n = A231675 n

end A231675

/-! ## A231675.P17282805418171771323

`∑[A053829(A037471(n))²²]`
-/

namespace A231675.P17282805418171771323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053829 (A037471 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P17282805418171771323

namespace A231675

/-- `∑[A053829(A037471(n))²²]` -/
def P17282805418171771323.Spec : Prop :=
  ∀ n, P17282805418171771323.a n = A231675 n

end A231675

/-! ## A231675.P12959493483189113694

`∑[A007953(A007092(n))²²]`
-/

namespace A231675.P12959493483189113694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007953 (A007092 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P12959493483189113694

namespace A231675

/-- `∑[A007953(A007092(n))²²]` -/
def P12959493483189113694.Spec : Prop :=
  ∀ n, P12959493483189113694.a n = A231675 n

end A231675

/-! ## A231675.P14114895074186245886

`∑[A007947(A053827(n)²²+1)-1]`
-/

namespace A231675.P14114895074186245886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((A053827 n ^ 2) ^ 2 + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P14114895074186245886

namespace A231675

/-- `∑[A007947(A053827(n)²²+1)-1]` -/
def P14114895074186245886.Spec : Prop :=
  ∀ n, P14114895074186245886.a n = A231675 n

end A231675

/-!
# A231676: a(n) = Sum_{i=0..n} digsum_7(i), where digsum_7(i) = A053828(i).

The programs for A231676, the canonical program `A231676.P7645642783563982420` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231676 has offset 0).

The definition of A231676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231676.P7645642783563982420

`∑[a(floor(n/7))+n%7]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231676

/-- `∑[a(floor(n/7))+n%7]` -/
def P7645642783563982420.Spec : Prop :=
  ∀ n, (P7645642783563982420.a n : ℤ) = A231676 n

theorem P7645642783563982420.correct : P7645642783563982420.Spec := by
  intro n
  simp only [A231676]

end A231676

/-! ## A231676.P9784216247857474640

`∑[A053828(n)]`
-/

namespace A231676.P9784216247857474640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P9784216247857474640

namespace A231676

/-- `∑[A053828(n)]` -/
def P9784216247857474640.Spec : Prop :=
  ∀ n, P9784216247857474640.a n = A231676 n

theorem P9784216247857474640.correct : P9784216247857474640.Spec := by
  intro n
  simp only [A231676, Nat.add_sub_cancel, A231676.P9784216247857474640.f1, A231676.P9784216247857474640.a, A231676.P7645642783563982420.f1, A231676.P7645642783563982420.a, A053828, A053828.P10399293213985617657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231676

/-! ## A231676.P9379215860178969863

`∑[∑{digits}[A007093(n), #]]`
-/

namespace A231676.P9379215860178969863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P9379215860178969863

namespace A231676

/-- `∑[∑{digits}[A007093(n), #]]` -/
def P9379215860178969863.Spec : Prop :=
  ∀ n, (P9379215860178969863.a n : ℤ) = A231676 n

end A231676

/-! ## A231676.P15445905951706340830

`∑[A173527(n+1)-1]`
-/

namespace A231676.P15445905951706340830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173527 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P15445905951706340830

namespace A231676

/-- `∑[A173527(n+1)-1]` -/
def P15445905951706340830.Spec : Prop :=
  ∀ n, P15445905951706340830.a n = A231676 n

theorem P15445905951706340830.correct : P15445905951706340830.Spec := by
  intro n
  simp only [A231676, Nat.add_sub_cancel, A231676.P15445905951706340830.f1, A231676.P15445905951706340830.a, A231676.P7645642783563982420.f1, A231676.P7645642783563982420.a, A173527, A173527.P4501047238505781544.a, A053828, A053828.P10399293213985617657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231676

/-! ## A231676.P7671074211129066438

`∑[n-6*A054896(n)]`
-/

namespace A231676.P7671074211129066438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6 * A054896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P7671074211129066438

namespace A231676

/-- `∑[n-6*A054896(n)]` -/
def P7671074211129066438.Spec : Prop :=
  ∀ n, P7671074211129066438.a n = A231676 n

end A231676

/-! ## A231676.P7355726259008039167

`∑[A053830(A037475(n))]`
-/

namespace A231676.P7355726259008039167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037475 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P7355726259008039167

namespace A231676

/-- `∑[A053830(A037475(n))]` -/
def P7355726259008039167.Spec : Prop :=
  ∀ n, P7355726259008039167.a n = A231676 n

end A231676

/-! ## A231676.P6412754836366628410

`∑[A053829(A037474(n))]`
-/

namespace A231676.P6412754836366628410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P6412754836366628410

namespace A231676

/-- `∑[A053829(A037474(n))]` -/
def P6412754836366628410.Spec : Prop :=
  ∀ n, P6412754836366628410.a n = A231676 n

end A231676

/-! ## A231676.P15039955685870200978

`∑[∑{digits}[lt[A054055(n), 7], #]]`
-/

namespace A231676.P15039955685870200978
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P15039955685870200978

namespace A231676

/-- `∑[∑{digits}[lt[A054055(n), 7], #]]` -/
def P15039955685870200978.Spec : Prop :=
  ∀ n, (P15039955685870200978.a n : ℤ) = A231676 n

end A231676

/-! ## A231676.P12042275645245076781

`∑[∑{digits}[lt[A047842(n)%10, 7], #]]`
-/

namespace A231676.P12042275645245076781
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P12042275645245076781

namespace A231676

/-- `∑[∑{digits}[lt[A047842(n)%10, 7], #]]` -/
def P12042275645245076781.Spec : Prop :=
  ∀ n, (P12042275645245076781.a n : ℤ) = A231676 n

end A231676

/-! ## A231676.P14829680325446392017

`∑[A007953(A007093(n))]`
-/

namespace A231676.P14829680325446392017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P14829680325446392017

namespace A231676

/-- `∑[A007953(A007093(n))]` -/
def P14829680325446392017.Spec : Prop :=
  ∀ n, P14829680325446392017.a n = A231676 n

end A231676

/-! ## A231676.P6899095964577644098

`∑[A007953(record[n-A064770(n)])]`
-/

namespace A231676.P6899095964577644098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231676.P6899095964577644098

namespace A231676

/-- `∑[A007953(record[n-A064770(n)])]` -/
def P6899095964577644098.Spec : Prop :=
  ∀ n, P6899095964577644098.a n = A231676 n

end A231676

/-!
# A231677: a(n) = Sum_{i=0..n} digsum_7(i)^2, where digsum_7(i) = A053828(i).

The programs for A231677, the canonical program `A231677.P1792334751249715585` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231677 has offset 0).

The definition of A231677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231677.P13023690765167910576

`∑[A053828(n)²]`
-/

namespace A231677.P13023690765167910576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P13023690765167910576

namespace A231677

/-- `∑[A053828(n)²]` -/
def P13023690765167910576.Spec : Prop :=
  ∀ n, P13023690765167910576.a n = A231677 n

end A231677

/-! ## A231677.P1792334751249715585

`∑[∑{digits}[A007093(n), #]²]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A231677

/-- `∑[∑{digits}[A007093(n), #]²]` -/
def P1792334751249715585.Spec : Prop :=
  ∀ n, (P1792334751249715585.a n : ℤ) = A231677 n

theorem P1792334751249715585.correct : P1792334751249715585.Spec := by
  intro n
  simp only [A231677]

end A231677

/-! ## A231677.P16871847725471772474

`∑[(1-A173527(n+1))²]`
-/

namespace A231677.P16871847725471772474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173527 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P16871847725471772474

namespace A231677

/-- `∑[(1-A173527(n+1))²]` -/
def P16871847725471772474.Spec : Prop :=
  ∀ n, P16871847725471772474.a n = A231677 n

end A231677

/-! ## A231677.P18119481659781830095

`∑[(n-6*A054896(n))²]`
-/

namespace A231677.P18119481659781830095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 6 * A054896 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P18119481659781830095

namespace A231677

/-- `∑[(n-6*A054896(n))²]` -/
def P18119481659781830095.Spec : Prop :=
  ∀ n, P18119481659781830095.a n = A231677 n

end A231677

/-! ## A231677.P11209763347834137887

`∑[A053830(A037475(n))²]`
-/

namespace A231677.P11209763347834137887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037475 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P11209763347834137887

namespace A231677

/-- `∑[A053830(A037475(n))²]` -/
def P11209763347834137887.Spec : Prop :=
  ∀ n, P11209763347834137887.a n = A231677 n

end A231677

/-! ## A231677.P642908077725241033

`∑[A000290(∑{digits}[A007093(n), #])]`
-/

namespace A231677.P642908077725241033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P642908077725241033

namespace A231677

/-- `∑[A000290(∑{digits}[A007093(n), #])]` -/
def P642908077725241033.Spec : Prop :=
  ∀ n, P642908077725241033.a n = A231677 n

theorem P642908077725241033.correct : P642908077725241033.Spec := by
  intro n
  simp only [A231677, Nat.add_sub_cancel, A231677.P642908077725241033.f2, A231677.P642908077725241033.f1, A231677.P642908077725241033.a, A231677.P1792334751249715585.f2, A231677.P1792334751249715585.f1, A231677.P1792334751249715585.a, A000290, A000290.P12206242496348924484.a, A007093, A007093.P13371401633146745397.a, A007094, A007094.P10071338308652589409.f1, A007094.P10071338308652589409.f2, A007094.P10071338308652589409.a, A037474, A037474.P6444879889403224104.f1, A037474.P6444879889403224104.f2, A037474.P6444879889403224104.a, A006530, A006530.P13372528560459906635.a, A102681, A102681.P12754123710607123299.f1, A102681.P12754123710607123299.a, A338881, A338881.P16098821748611333482.f1, A338881.P16098821748611333482.a, A028310, A028310.P18130301328277559831.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231677

/-! ## A231677.P8863760825266693393

`∑[A053828(n)^A020639(2*(n+1))]`
-/

namespace A231677.P8863760825266693393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053828 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P8863760825266693393

namespace A231677

/-- `∑[A053828(n)^A020639(2*(n+1))]` -/
def P8863760825266693393.Spec : Prop :=
  ∀ n, P8863760825266693393.a n = (A231677 n : ℚ)

end A231677

/-! ## A231677.P15489541251486814236

`∑[A053829(A037474(n))²]`
-/

namespace A231677.P15489541251486814236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037474 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P15489541251486814236

namespace A231677

/-- `∑[A053829(A037474(n))²]` -/
def P15489541251486814236.Spec : Prop :=
  ∀ n, P15489541251486814236.a n = A231677 n

end A231677

/-! ## A231677.P8280417308661589061

`∑[(∑{digits}[lt[A054055(n), 7], #]%(n+1))²]`
-/

namespace A231677.P8280417308661589061
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum % (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P8280417308661589061

namespace A231677

/-- `∑[(∑{digits}[lt[A054055(n), 7], #]%(n+1))²]` -/
def P8280417308661589061.Spec : Prop :=
  ∀ n, (P8280417308661589061.a n : ℤ) = A231677 n

end A231677

/-! ## A231677.P10687192412090830053

`∑[A118881(A007093(n))]`
-/

namespace A231677.P10687192412090830053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P10687192412090830053

namespace A231677

/-- `∑[A118881(A007093(n))]` -/
def P10687192412090830053.Spec : Prop :=
  ∀ n, P10687192412090830053.a n = A231677 n

end A231677

/-! ## A231677.P5394289670799019419

`∑[A000290(A053828(A008589(n)))]`
-/

namespace A231677.P5394289670799019419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A053828 (A008589 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P5394289670799019419

namespace A231677

/-- `∑[A000290(A053828(A008589(n)))]` -/
def P5394289670799019419.Spec : Prop :=
  ∀ n, P5394289670799019419.a n = A231677 n

end A231677

/-! ## A231677.P9411188602148650309

`∑[A053828(A008589(n))*A053828(n)]`
-/

namespace A231677.P9411188602148650309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A008589 n).toNat * A053828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231677.P9411188602148650309

namespace A231677

/-- `∑[A053828(A008589(n))*A053828(n)]` -/
def P9411188602148650309.Spec : Prop :=
  ∀ n, P9411188602148650309.a n = A231677 n

end A231677

/-! ## A231677.P16890506492738716042

`A004525(∑[A001105(A053828(n))])`
-/

namespace A231677.P16890506492738716042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A053828 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A231677.P16890506492738716042

namespace A231677

/-- `A004525(∑[A001105(A053828(n))])` -/
def P16890506492738716042.Spec : Prop :=
  ∀ n, P16890506492738716042.a n = A231677 n

end A231677

/-!
# A231678: a(n) = Sum_{i=0..n} digsum_7(i)^3, where digsum_7(i) = A053828(i).

The programs for A231678, the canonical program `A231678.P18305572937454154270` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231678 has offset 0).

The definition of A231678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231678.P12611150237950874071

`∑[A053828(n)^3]`
-/

namespace A231678.P12611150237950874071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P12611150237950874071

namespace A231678

/-- `∑[A053828(n)^3]` -/
def P12611150237950874071.Spec : Prop :=
  ∀ n, P12611150237950874071.a n = A231678 n

end A231678

/-! ## A231678.P18305572937454154270

`∑[∑{digits}[A007093(n), #]^3]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A231678

/-- `∑[∑{digits}[A007093(n), #]^3]` -/
def P18305572937454154270.Spec : Prop :=
  ∀ n, (P18305572937454154270.a n : ℤ) = A231678 n

theorem P18305572937454154270.correct : P18305572937454154270.Spec := by
  intro n
  simp only [A231678]

end A231678

/-! ## A231678.P9805166478047115647

`∑[(A173527(n+1)-1)^3]`
-/

namespace A231678.P9805166478047115647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173527 (n + 1) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P9805166478047115647

namespace A231678

/-- `∑[(A173527(n+1)-1)^3]` -/
def P9805166478047115647.Spec : Prop :=
  ∀ n, P9805166478047115647.a n = A231678 n

end A231678

/-! ## A231678.P15224216963013742159

`∑[(n-6*A054896(n))^3]`
-/

namespace A231678.P15224216963013742159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 6 * A054896 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P15224216963013742159

namespace A231678

/-- `∑[(n-6*A054896(n))^3]` -/
def P15224216963013742159.Spec : Prop :=
  ∀ n, P15224216963013742159.a n = A231678 n

end A231678

/-! ## A231678.P2312072387306374104

`∑[A000578(A053828(n))]`
-/

namespace A231678.P2312072387306374104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053828 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P2312072387306374104

namespace A231678

/-- `∑[A000578(A053828(n))]` -/
def P2312072387306374104.Spec : Prop :=
  ∀ n, P2312072387306374104.a n = A231678 n

end A231678

/-! ## A231678.P10747656501375215978

`∑[A000093(A053828(n)²)]`
-/

namespace A231678.P10747656501375215978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A053828 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P10747656501375215978

namespace A231678

/-- `∑[A000093(A053828(n)²)]` -/
def P10747656501375215978.Spec : Prop :=
  ∀ n, P10747656501375215978.a n = A231678 n

end A231678

/-! ## A231678.P9652177355535701281

`∑[A002821(A053828(n)²)]`
-/

namespace A231678.P9652177355535701281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A053828 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P9652177355535701281

namespace A231678

/-- `∑[A002821(A053828(n)²)]` -/
def P9652177355535701281.Spec : Prop :=
  ∀ n, P9652177355535701281.a n = A231678 n

end A231678

/-! ## A231678.P17495932307528167719

`∑[A166447(A053828(n)²)]`
-/

namespace A231678.P17495932307528167719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 (A053828 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P17495932307528167719

namespace A231678

/-- `∑[A166447(A053828(n)²)]` -/
def P17495932307528167719.Spec : Prop :=
  ∀ n, P17495932307528167719.a n = A231678 n

end A231678

/-! ## A231678.P668795696658622700

`∑[A185549(A053828(n)²)]`
-/

namespace A231678.P668795696658622700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (A053828 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P668795696658622700

namespace A231678

/-- `∑[A185549(A053828(n)²)]` -/
def P668795696658622700.Spec : Prop :=
  ∀ n, P668795696658622700.a n = A231678 n

end A231678

/-! ## A231678.P11945401528709830159

`∑[A053830(A037475(n))^3]`
-/

namespace A231678.P11945401528709830159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037475 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P11945401528709830159

namespace A231678

/-- `∑[A053830(A037475(n))^3]` -/
def P11945401528709830159.Spec : Prop :=
  ∀ n, P11945401528709830159.a n = A231678 n

end A231678

/-! ## A231678.P3404166890616528712

`∑[A000578(A173527(n+1)-1)]`
-/

namespace A231678.P3404166890616528712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A173527 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P3404166890616528712

namespace A231678

/-- `∑[A000578(A173527(n+1)-1)]` -/
def P3404166890616528712.Spec : Prop :=
  ∀ n, P3404166890616528712.a n = A231678 n

end A231678

/-! ## A231678.P6952473595651712167

`∑[A007953(A007093(n))^3]`
-/

namespace A231678.P6952473595651712167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007093 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231678.P6952473595651712167

namespace A231678

/-- `∑[A007953(A007093(n))^3]` -/
def P6952473595651712167.Spec : Prop :=
  ∀ n, P6952473595651712167.a n = A231678 n

end A231678

/-!
# A231679: a(n) = Sum_{i=0..n} digsum_7(i)^4, where digsum_7(i) = A053828(i).

The programs for A231679, the canonical program `A231679.P9966239118729820819` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231679 has offset 0).

The definition of A231679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231679.P3321037560739898751

`∑[A053828(n)^4]`
-/

namespace A231679.P3321037560739898751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P3321037560739898751

namespace A231679

/-- `∑[A053828(n)^4]` -/
def P3321037560739898751.Spec : Prop :=
  ∀ n, P3321037560739898751.a n = A231679 n

end A231679

/-! ## A231679.P9966239118729820819

`∑[∑{digits}[A007093(n), #]^4]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A231679

/-- `∑[∑{digits}[A007093(n), #]^4]` -/
def P9966239118729820819.Spec : Prop :=
  ∀ n, (P9966239118729820819.a n : ℤ) = A231679 n

theorem P9966239118729820819.correct : P9966239118729820819.Spec := by
  intro n
  simp only [A231679]

end A231679

/-! ## A231679.P5126063472071205252

`∑[(1-A173527(n+1))^4]`
-/

namespace A231679.P5126063472071205252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173527 (n + 1)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P5126063472071205252

namespace A231679

/-- `∑[(1-A173527(n+1))^4]` -/
def P5126063472071205252.Spec : Prop :=
  ∀ n, P5126063472071205252.a n = A231679 n

end A231679

/-! ## A231679.P14083648329982285772

`∑[(n-6*A054896(n))^4]`
-/

namespace A231679.P14083648329982285772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 6 * A054896 n) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P14083648329982285772

namespace A231679

/-- `∑[(n-6*A054896(n))^4]` -/
def P14083648329982285772.Spec : Prop :=
  ∀ n, P14083648329982285772.a n = A231679 n

end A231679

/-! ## A231679.P8802271539187777535

`∑[A000583(A053828(n))]`
-/

namespace A231679.P8802271539187777535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053828 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P8802271539187777535

namespace A231679

/-- `∑[A000583(A053828(n))]` -/
def P8802271539187777535.Spec : Prop :=
  ∀ n, P8802271539187777535.a n = A231679 n

end A231679

/-! ## A231679.P8924572601100823867

`∑[A000290(A053828(n)²)]`
-/

namespace A231679.P8924572601100823867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A053828 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P8924572601100823867

namespace A231679

/-- `∑[A000290(A053828(n)²)]` -/
def P8924572601100823867.Spec : Prop :=
  ∀ n, P8924572601100823867.a n = A231679 n

end A231679

/-! ## A231679.P1962178090974819231

`∑[A053830(A037475(n))²²]`
-/

namespace A231679.P1962178090974819231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053830 (A037475 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P1962178090974819231

namespace A231679

/-- `∑[A053830(A037475(n))²²]` -/
def P1962178090974819231.Spec : Prop :=
  ∀ n, P1962178090974819231.a n = A231679 n

end A231679

/-! ## A231679.P13829113137216748099

`∑[A110665(A053828(n)²)²]`
-/

namespace A231679.P13829113137216748099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 (A053828 n ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P13829113137216748099

namespace A231679

/-- `∑[A110665(A053828(n)²)²]` -/
def P13829113137216748099.Spec : Prop :=
  ∀ n, P13829113137216748099.a n = A231679 n

end A231679

/-! ## A231679.P14607350866433153078

`∑[A053829(A037474(n))²²]`
-/

namespace A231679.P14607350866433153078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053829 (A037474 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P14607350866433153078

namespace A231679

/-- `∑[A053829(A037474(n))²²]` -/
def P14607350866433153078.Spec : Prop :=
  ∀ n, P14607350866433153078.a n = A231679 n

end A231679

/-! ## A231679.P9125444200390866029

`∑[A118881(A007093(n))²]`
-/

namespace A231679.P9125444200390866029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007093 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231679.P9125444200390866029

namespace A231679

/-- `∑[A118881(A007093(n))²]` -/
def P9125444200390866029.Spec : Prop :=
  ∀ n, P9125444200390866029.a n = A231679 n

end A231679

/-!
# A231680: a(n) = Sum_{i=0..n} digsum_8(i), where digsum_8(i) = A053829(i).

The programs for A231680, the canonical program `A231680.P11557233718960307562` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231680 has offset 0).

The definition of A231680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231680.P11155051625264880873

`∑[A053829(n)]`
-/

namespace A231680.P11155051625264880873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P11155051625264880873

namespace A231680

/-- `∑[A053829(n)]` -/
def P11155051625264880873.Spec : Prop :=
  ∀ n, P11155051625264880873.a n = A231680 n

end A231680

/-! ## A231680.P11557233718960307562

`∑[∑{digits}[A007094(n), #]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231680

/-- `∑[∑{digits}[A007094(n), #]]` -/
def P11557233718960307562.Spec : Prop :=
  ∀ n, (P11557233718960307562.a n : ℤ) = A231680 n

theorem P11557233718960307562.correct : P11557233718960307562.Spec := by
  intro n
  simp only [A231680]

end A231680

/-! ## A231680.P11462543497154267374

`∑[A173528(n+1)-1]`
-/

namespace A231680.P11462543497154267374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P11462543497154267374

namespace A231680

/-- `∑[A173528(n+1)-1]` -/
def P11462543497154267374.Spec : Prop :=
  ∀ n, P11462543497154267374.a n = A231680 n

end A231680

/-! ## A231680.P7658372607080030836

`∑[n-7*A054897(n)]`
-/

namespace A231680.P7658372607080030836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 7 * A054897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P7658372607080030836

namespace A231680

/-- `∑[n-7*A054897(n)]` -/
def P7658372607080030836.Spec : Prop :=
  ∀ n, P7658372607080030836.a n = A231680 n

end A231680

/-! ## A231680.P1141906309280270869

`∑[A053830(A037477(n))]`
-/

namespace A231680.P1141906309280270869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037477 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P1141906309280270869

namespace A231680

/-- `∑[A053830(A037477(n))]` -/
def P1141906309280270869.Spec : Prop :=
  ∀ n, P1141906309280270869.a n = A231680 n

end A231680

/-! ## A231680.P1258731023651505757

`∑[A272118(A173528(n+1))]`
-/

namespace A231680.P1258731023651505757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272118 (A173528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P1258731023651505757

namespace A231680

/-- `∑[A272118(A173528(n+1))]` -/
def P1258731023651505757.Spec : Prop :=
  ∀ n, P1258731023651505757.a n = A231680 n

end A231680

/-! ## A231680.P4366722949472786594

`∑[A007953(A007094(n))]`
-/

namespace A231680.P4366722949472786594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P4366722949472786594

namespace A231680

/-- `∑[A007953(A007094(n))]` -/
def P4366722949472786594.Spec : Prop :=
  ∀ n, P4366722949472786594.a n = A231680 n

end A231680

/-! ## A231680.P5710159741745270317

`∑[A007953(eq[n, A222254(n)])]`
-/

namespace A231680.P5710159741745270317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P5710159741745270317

namespace A231680

/-- `∑[A007953(eq[n, A222254(n)])]` -/
def P5710159741745270317.Spec : Prop :=
  ∀ n, P5710159741745270317.a n = A231680 n

end A231680

/-!
# A231681: a(n) = Sum_{i=0..n} digsum_8(i)^2, where digsum_8(i) = A053829(i).

The programs for A231681, the canonical program `A231681.P15334397148565643114` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231681 has offset 0).

The definition of A231681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231681.P18012874259098611847

`∑[A053829(n)²]`
-/

namespace A231681.P18012874259098611847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P18012874259098611847

namespace A231681

/-- `∑[A053829(n)²]` -/
def P18012874259098611847.Spec : Prop :=
  ∀ n, P18012874259098611847.a n = A231681 n

end A231681

/-! ## A231681.P15334397148565643114

`∑[∑{digits}[A007094(n), #]²]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231681

/-- `∑[∑{digits}[A007094(n), #]²]` -/
def P15334397148565643114.Spec : Prop :=
  ∀ n, (P15334397148565643114.a n : ℤ) = A231681 n

theorem P15334397148565643114.correct : P15334397148565643114.Spec := by
  intro n
  simp only [A231681]

end A231681

/-! ## A231681.P13624232339091471091

`∑[(1-A173528(n+1))²]`
-/

namespace A231681.P13624232339091471091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173528 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P13624232339091471091

namespace A231681

/-- `∑[(1-A173528(n+1))²]` -/
def P13624232339091471091.Spec : Prop :=
  ∀ n, P13624232339091471091.a n = A231681 n

end A231681

/-! ## A231681.P9728523534053967690

`∑[A053830(A037477(n))²]`
-/

namespace A231681.P9728523534053967690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037477 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P9728523534053967690

namespace A231681

/-- `∑[A053830(A037477(n))²]` -/
def P9728523534053967690.Spec : Prop :=
  ∀ n, P9728523534053967690.a n = A231681 n

end A231681

/-! ## A231681.P4139543595150874464

`∑[A000290(∑{digits}[A007094(n), #])]`
-/

namespace A231681.P4139543595150874464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P4139543595150874464

namespace A231681

/-- `∑[A000290(∑{digits}[A007094(n), #])]` -/
def P4139543595150874464.Spec : Prop :=
  ∀ n, P4139543595150874464.a n = A231681 n

theorem P4139543595150874464.correct : P4139543595150874464.Spec := by
  intro n
  simp only [A231681, Nat.add_sub_cancel, A231681.P4139543595150874464.f2, A231681.P4139543595150874464.f1, A231681.P4139543595150874464.a, A231681.P15334397148565643114.f2, A231681.P15334397148565643114.f1, A231681.P15334397148565643114.a, A000290, A000290.P12206242496348924484.a, A007094, A007094.P10071338308652589409.f1, A007094.P10071338308652589409.f2, A007094.P10071338308652589409.a, A102681, A102681.P12754123710607123299.f1, A102681.P12754123710607123299.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231681

/-! ## A231681.P15003635047281357847

`∑[A272118(A173528(n+1))²]`
-/

namespace A231681.P15003635047281357847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272118 (A173528 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P15003635047281357847

namespace A231681

/-- `∑[A272118(A173528(n+1))²]` -/
def P15003635047281357847.Spec : Prop :=
  ∀ n, P15003635047281357847.a n = A231681 n

end A231681

/-! ## A231681.P1590207711633814989

`∑[lcm(A053829(n)^2, A020985(n))]`
-/

namespace A231681.P1590207711633814989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053829 n ^ 2) (A020985 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P1590207711633814989

namespace A231681

/-- `∑[lcm(A053829(n)^2, A020985(n))]` -/
def P1590207711633814989.Spec : Prop :=
  ∀ n, (P1590207711633814989.a n : ℤ) = A231681 n

end A231681

/-! ## A231681.P18208042890873213064

`∑[A053829(n)^A020639(2*(n+1))]`
-/

namespace A231681.P18208042890873213064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053829 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P18208042890873213064

namespace A231681

/-- `∑[A053829(n)^A020639(2*(n+1))]` -/
def P18208042890873213064.Spec : Prop :=
  ∀ n, P18208042890873213064.a n = (A231681 n : ℚ)

end A231681

/-! ## A231681.P16118929887927358381

`∑[A053829(n)^A006530(A001316(n))]`
-/

namespace A231681.P16118929887927358381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053829 n : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P16118929887927358381

namespace A231681

/-- `∑[A053829(n)^A006530(A001316(n))]` -/
def P16118929887927358381.Spec : Prop :=
  ∀ n, P16118929887927358381.a n = (A231681 n : ℚ)

end A231681

/-! ## A231681.P2888167443639520785

`∑[A118881(A007094(n))]`
-/

namespace A231681.P2888167443639520785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P2888167443639520785

namespace A231681

/-- `∑[A118881(A007094(n))]` -/
def P2888167443639520785.Spec : Prop :=
  ∀ n, P2888167443639520785.a n = A231681 n

end A231681

/-! ## A231681.P15772990265322441931

`∑[A007953(eq[n, A222254(n)])²]`
-/

namespace A231681.P15772990265322441931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P15772990265322441931

namespace A231681

/-- `∑[A007953(eq[n, A222254(n)])²]` -/
def P15772990265322441931.Spec : Prop :=
  ∀ n, P15772990265322441931.a n = A231681 n

end A231681

/-! ## A231681.P72688446778445487

`a(n-1)+A053829(A022144(n))²` with `a(0)=0`
-/

namespace A231681.P72688446778445487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A053829 (A022144 n).toNat ^ 2

end

end A231681.P72688446778445487

namespace A231681

/-- `a(n-1)+A053829(A022144(n))²` -/
def P72688446778445487.Spec : Prop :=
  ∀ n, P72688446778445487.a n = A231681 n

end A231681

/-! ## A231681.P2202886570825155782

`A014682(∑[A001105(A053829(n))])`
-/

namespace A231681.P2202886570825155782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A053829 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A231681.P2202886570825155782

namespace A231681

/-- `A014682(∑[A001105(A053829(n))])` -/
def P2202886570825155782.Spec : Prop :=
  ∀ n, P2202886570825155782.a n = A231681 n

end A231681

/-!
# A231682: a(n) = Sum_{i=0..n} digsum_8(i)^3, where digsum_8(i) = A053829(i).

The programs for A231682, the canonical program `A231682.P14854101076037231145` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231682 has offset 0).

The definition of A231682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231682.P5978561834489474071

`∑[A053829(n)^3]`
-/

namespace A231682.P5978561834489474071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P5978561834489474071

namespace A231682

/-- `∑[A053829(n)^3]` -/
def P5978561834489474071.Spec : Prop :=
  ∀ n, P5978561834489474071.a n = A231682 n

theorem P5978561834489474071.correct : P5978561834489474071.Spec := by
  intro n
  simp only [A231682, Nat.add_sub_cancel, A231682.P5978561834489474071.f1, A231682.P5978561834489474071.a, A231682.P14854101076037231145.f1, A231682.P14854101076037231145.a, A053829, A053829.P14344387204019492916.a, A173528, A173528.P11178338902106819806.a, A054897, A054897.P7937699676947939957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231682

/-! ## A231682.P14854101076037231145

`∑[(A173528(n+1)-1)^3]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A231682

/-- `∑[(A173528(n+1)-1)^3]` -/
def P14854101076037231145.Spec : Prop :=
  ∀ n, P14854101076037231145.a n = A231682 n

theorem P14854101076037231145.correct : P14854101076037231145.Spec := by
  intro n
  simp only [A231682]

end A231682

/-! ## A231682.P12143068594440440936

`∑[(n-7*A054897(n))^3]`
-/

namespace A231682.P12143068594440440936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 7 * A054897 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P12143068594440440936

namespace A231682

/-- `∑[(n-7*A054897(n))^3]` -/
def P12143068594440440936.Spec : Prop :=
  ∀ n, P12143068594440440936.a n = A231682 n

theorem P12143068594440440936.correct : P12143068594440440936.Spec := by
  intro n
  simp only [A231682, Nat.add_sub_cancel, A231682.P12143068594440440936.f1, A231682.P12143068594440440936.a, A231682.P14854101076037231145.f1, A231682.P14854101076037231145.a, A054897, A054897.P7937699676947939957.a, A173528, A173528.P11178338902106819806.a, A053829, A053829.P14344387204019492916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231682

/-! ## A231682.P15751110380070463292

`∑[A000578(A053829(n))]`
-/

namespace A231682.P15751110380070463292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053829 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P15751110380070463292

namespace A231682

/-- `∑[A000578(A053829(n))]` -/
def P15751110380070463292.Spec : Prop :=
  ∀ n, P15751110380070463292.a n = A231682 n

end A231682

/-! ## A231682.P17610884789228581431

`∑[A000093(A053829(n)²)]`
-/

namespace A231682.P17610884789228581431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A053829 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P17610884789228581431

namespace A231682

/-- `∑[A000093(A053829(n)²)]` -/
def P17610884789228581431.Spec : Prop :=
  ∀ n, P17610884789228581431.a n = A231682 n

end A231682

/-! ## A231682.P2924659204238450595

`∑[A002821(A053829(n)²)]`
-/

namespace A231682.P2924659204238450595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A053829 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P2924659204238450595

namespace A231682

/-- `∑[A002821(A053829(n)²)]` -/
def P2924659204238450595.Spec : Prop :=
  ∀ n, P2924659204238450595.a n = A231682 n

end A231682

/-! ## A231682.P5529556081275262226

`∑[A166447(A053829(n)²)]`
-/

namespace A231682.P5529556081275262226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 (A053829 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P5529556081275262226

namespace A231682

/-- `∑[A166447(A053829(n)²)]` -/
def P5529556081275262226.Spec : Prop :=
  ∀ n, P5529556081275262226.a n = A231682 n

end A231682

/-! ## A231682.P15750669697960488172

`∑[A185549(A053829(n)²)]`
-/

namespace A231682.P15750669697960488172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (A053829 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P15750669697960488172

namespace A231682

/-- `∑[A185549(A053829(n)²)]` -/
def P15750669697960488172.Spec : Prop :=
  ∀ n, P15750669697960488172.a n = A231682 n

end A231682

/-! ## A231682.P14800675194363617358

`∑[A008496(5*A053829(n))]`
-/

namespace A231682.P14800675194363617358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (5 * A053829 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P14800675194363617358

namespace A231682

/-- `∑[A008496(5*A053829(n))]` -/
def P14800675194363617358.Spec : Prop :=
  ∀ n, P14800675194363617358.a n = A231682 n

end A231682

/-! ## A231682.P7062873920089904981

`∑[A053830(A037477(n))^3]`
-/

namespace A231682.P7062873920089904981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037477 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P7062873920089904981

namespace A231682

/-- `∑[A053830(A037477(n))^3]` -/
def P7062873920089904981.Spec : Prop :=
  ∀ n, P7062873920089904981.a n = A231682 n

end A231682

/-! ## A231682.P16715921669369435041

`∑[A000578(∑{digits}[A007094(n), #])]`
-/

namespace A231682.P16715921669369435041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P16715921669369435041

namespace A231682

/-- `∑[A000578(∑{digits}[A007094(n), #])]` -/
def P16715921669369435041.Spec : Prop :=
  ∀ n, P16715921669369435041.a n = A231682 n

end A231682

/-! ## A231682.P5315525788951512253

`∑[A000578(A173528(n+1)-1)]`
-/

namespace A231682.P5315525788951512253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A173528 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P5315525788951512253

namespace A231682

/-- `∑[A000578(A173528(n+1)-1)]` -/
def P5315525788951512253.Spec : Prop :=
  ∀ n, P5315525788951512253.a n = A231682 n

end A231682

/-! ## A231682.P10407802324958293143

`∑[A118880(A007094(n))]`
-/

namespace A231682.P10407802324958293143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A007094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P10407802324958293143

namespace A231682

/-- `∑[A118880(A007094(n))]` -/
def P10407802324958293143.Spec : Prop :=
  ∀ n, P10407802324958293143.a n = A231682 n

end A231682

/-!
# A231683: a(n) = Sum_{i=0..n} digsum_8(i)^4, where digsum_8(i) = A053829(i).

The programs for A231683, the canonical program `A231683.P1273227042826182736` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231683 has offset 0).

The definition of A231683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231683.P1968086324277296454

`∑[A053829(n)^4]`
-/

namespace A231683.P1968086324277296454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P1968086324277296454

namespace A231683

/-- `∑[A053829(n)^4]` -/
def P1968086324277296454.Spec : Prop :=
  ∀ n, P1968086324277296454.a n = A231683 n

end A231683

/-! ## A231683.P1273227042826182736

`∑[∑{digits}[A007094(n), #]²²]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231683

/-- `∑[∑{digits}[A007094(n), #]²²]` -/
def P1273227042826182736.Spec : Prop :=
  ∀ n, (P1273227042826182736.a n : ℤ) = A231683 n

theorem P1273227042826182736.correct : P1273227042826182736.Spec := by
  intro n
  simp only [A231683]

end A231683

/-! ## A231683.P10386702080780354571

`∑[(1-A173528(n+1))^4]`
-/

namespace A231683.P10386702080780354571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173528 (n + 1)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P10386702080780354571

namespace A231683

/-- `∑[(1-A173528(n+1))^4]` -/
def P10386702080780354571.Spec : Prop :=
  ∀ n, P10386702080780354571.a n = A231683 n

end A231683

/-! ## A231683.P10350841799738225697

`∑[A000583(A053829(n))]`
-/

namespace A231683.P10350841799738225697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053829 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P10350841799738225697

namespace A231683

/-- `∑[A000583(A053829(n))]` -/
def P10350841799738225697.Spec : Prop :=
  ∀ n, P10350841799738225697.a n = A231683 n

end A231683

/-! ## A231683.P10462464186962765357

`∑[A000290(A053829(n)²)]`
-/

namespace A231683.P10462464186962765357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A053829 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P10462464186962765357

namespace A231683

/-- `∑[A000290(A053829(n)²)]` -/
def P10462464186962765357.Spec : Prop :=
  ∀ n, P10462464186962765357.a n = A231683 n

end A231683

/-! ## A231683.P6024895885751161418

`∑[A053830(A037477(n))^4]`
-/

namespace A231683.P6024895885751161418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037477 n).toNat ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P6024895885751161418

namespace A231683

/-- `∑[A053830(A037477(n))^4]` -/
def P6024895885751161418.Spec : Prop :=
  ∀ n, P6024895885751161418.a n = A231683 n

end A231683

/-! ## A231683.P2223289212132531201

`∑[A048761(A053829(n)²)²]`
-/

namespace A231683.P2223289212132531201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A053829 n ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P2223289212132531201

namespace A231683

/-- `∑[A048761(A053829(n)²)²]` -/
def P2223289212132531201.Spec : Prop :=
  ∀ n, P2223289212132531201.a n = A231683 n

end A231683

/-! ## A231683.P17946295940988570284

`∑[A000583(∑{digits}[A007094(n), #])]`
-/

namespace A231683.P17946295940988570284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P17946295940988570284

namespace A231683

/-- `∑[A000583(∑{digits}[A007094(n), #])]` -/
def P17946295940988570284.Spec : Prop :=
  ∀ n, P17946295940988570284.a n = A231683 n

theorem P17946295940988570284.correct : P17946295940988570284.Spec := by
  intro n
  simp only [A231683, Nat.add_sub_cancel, A231683.P17946295940988570284.f2, A231683.P17946295940988570284.f1, A231683.P17946295940988570284.a, A231683.P1273227042826182736.f2, A231683.P1273227042826182736.f1, A231683.P1273227042826182736.a, A000583, A000583.P14547500281748394449.a, A007094, A007094.P10071338308652589409.f1, A007094.P10071338308652589409.f2, A007094.P10071338308652589409.a, A102681, A102681.P12754123710607123299.f1, A102681.P12754123710607123299.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231683

/-! ## A231683.P4312669134483983118

`∑[A272118(A173528(n+1))²²]`
-/

namespace A231683.P4312669134483983118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272118 (A173528 (n + 1)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P4312669134483983118

namespace A231683

/-- `∑[A272118(A173528(n+1))²²]` -/
def P4312669134483983118.Spec : Prop :=
  ∀ n, P4312669134483983118.a n = A231683 n

end A231683

/-! ## A231683.P10003178143004735394

`∑[A118881(A007094(n))²]`
-/

namespace A231683.P10003178143004735394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007094 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P10003178143004735394

namespace A231683

/-- `∑[A118881(A007094(n))²]` -/
def P10003178143004735394.Spec : Prop :=
  ∀ n, P10003178143004735394.a n = A231683 n

end A231683

/-!
# A231684: a(n) = Sum_{i=0..n} digsum_9(i), where digsum_9(i) = A053830(i).

The programs for A231684, the canonical program `A231684.P6020696567074052500` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231684 has offset 0).

The definition of A231684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231684.P13227765383332683023

`∑[a(floor(n/9))+n%9]` with `a(0)=0`
-/

namespace A231684.P13227765383332683023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 9⌋.toNat + n % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P13227765383332683023

namespace A231684

/-- `∑[a(floor(n/9))+n%9]` -/
def P13227765383332683023.Spec : Prop :=
  ∀ n, (P13227765383332683023.a n : ℤ) = A231684 n

end A231684

/-! ## A231684.P471404322683512068

`∑[A053830(n)]`
-/

namespace A231684.P471404322683512068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P471404322683512068

namespace A231684

/-- `∑[A053830(n)]` -/
def P471404322683512068.Spec : Prop :=
  ∀ n, P471404322683512068.a n = A231684 n

end A231684

/-! ## A231684.P6020696567074052500

`∑[∑{digits}[A007095(n), #]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231684

/-- `∑[∑{digits}[A007095(n), #]]` -/
def P6020696567074052500.Spec : Prop :=
  ∀ n, (P6020696567074052500.a n : ℤ) = A231684 n

theorem P6020696567074052500.correct : P6020696567074052500.Spec := by
  intro n
  simp only [A231684]

end A231684

/-! ## A231684.P9859174434431981586

`∑[A173529(n+1)-1]`
-/

namespace A231684.P9859174434431981586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173529 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P9859174434431981586

namespace A231684

/-- `∑[A173529(n+1)-1]` -/
def P9859174434431981586.Spec : Prop :=
  ∀ n, P9859174434431981586.a n = A231684 n

end A231684

/-! ## A231684.P12880403266075106731

`∑[A002837(A173529(n+1))]`
-/

namespace A231684.P12880403266075106731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A173529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P12880403266075106731

namespace A231684

/-- `∑[A002837(A173529(n+1))]` -/
def P12880403266075106731.Spec : Prop :=
  ∀ n, P12880403266075106731.a n = A231684 n

end A231684

/-! ## A231684.P1843164516948967304

`∑[∑{digits}[record[A004728(n)], #]]`
-/

namespace A231684.P1843164516948967304
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P1843164516948967304

namespace A231684

/-- `∑[∑{digits}[record[A004728(n)], #]]` -/
def P1843164516948967304.Spec : Prop :=
  ∀ n, (P1843164516948967304.a n : ℤ) = A231684 n

end A231684

/-! ## A231684.P8584486120486157495

`∑[A007953(A007095(n))]`
-/

namespace A231684.P8584486120486157495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P8584486120486157495

namespace A231684

/-- `∑[A007953(A007095(n))]` -/
def P8584486120486157495.Spec : Prop :=
  ∀ n, P8584486120486157495.a n = A231684 n

end A231684

/-! ## A231684.P845661102535776330

`∑[A007953(record[A004728(n)])]`
-/

namespace A231684.P845661102535776330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P845661102535776330

namespace A231684

/-- `∑[A007953(record[A004728(n)])]` -/
def P845661102535776330.Spec : Prop :=
  ∀ n, P845661102535776330.a n = A231684 n

end A231684

/-! ## A231684.P4966941868187565932

`∑[A007953(eq[0, A102683(n)])]`
-/

namespace A231684.P4966941868187565932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P4966941868187565932

namespace A231684

/-- `∑[A007953(eq[0, A102683(n)])]` -/
def P4966941868187565932.Spec : Prop :=
  ∀ n, P4966941868187565932.a n = A231684 n

end A231684

/-! ## A231684.P10492930564528314936

`∑[∑{digits}[record[A235049(n)], #]]`
-/

namespace A231684.P10492930564528314936
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P10492930564528314936

namespace A231684

/-- `∑[∑{digits}[record[A235049(n)], #]]` -/
def P10492930564528314936.Spec : Prop :=
  ∀ n, (P10492930564528314936.a n : ℤ) = A231684 n

end A231684

/-! ## A231684.P153907637292588435

`∑[A007953(record[A235049(n)])]`
-/

namespace A231684.P153907637292588435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P153907637292588435

namespace A231684

/-- `∑[A007953(record[A235049(n)])]` -/
def P153907637292588435.Spec : Prop :=
  ∀ n, P153907637292588435.a n = A231684 n

end A231684

/-!
# A231685: a(n) = Sum_{i=0..n} digsum_9(i)^2, where digsum_9(i) = A053830(i).

The programs for A231685, the canonical program `A231685.P1261863985809089979` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231685 has offset 0).

The definition of A231685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231685.P7537105951861521259

`∑[A053830(n)²]`
-/

namespace A231685.P7537105951861521259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P7537105951861521259

namespace A231685

/-- `∑[A053830(n)²]` -/
def P7537105951861521259.Spec : Prop :=
  ∀ n, P7537105951861521259.a n = A231685 n

end A231685

/-! ## A231685.P1261863985809089979

`∑[∑{digits}[A007095(n), #]²]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231685

/-- `∑[∑{digits}[A007095(n), #]²]` -/
def P1261863985809089979.Spec : Prop :=
  ∀ n, (P1261863985809089979.a n : ℤ) = A231685 n

theorem P1261863985809089979.correct : P1261863985809089979.Spec := by
  intro n
  simp only [A231685]

end A231685

/-! ## A231685.P8844880777123147036

`∑[(1-A173529(n+1))²]`
-/

namespace A231685.P8844880777123147036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173529 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P8844880777123147036

namespace A231685

/-- `∑[(1-A173529(n+1))²]` -/
def P8844880777123147036.Spec : Prop :=
  ∀ n, P8844880777123147036.a n = A231685 n

end A231685

/-! ## A231685.P14588409169055879436

`∑[A002837(A173529(n+1))²]`
-/

namespace A231685.P14588409169055879436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A173529 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P14588409169055879436

namespace A231685

/-- `∑[A002837(A173529(n+1))²]` -/
def P14588409169055879436.Spec : Prop :=
  ∀ n, P14588409169055879436.a n = A231685 n

end A231685

/-! ## A231685.P12736692352058629640

`∑[A053830(n)*A053830(n%(n+1))]`
-/

namespace A231685.P12736692352058629640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n * A053830 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P12736692352058629640

namespace A231685

/-- `∑[A053830(n)*A053830(n%(n+1))]` -/
def P12736692352058629640.Spec : Prop :=
  ∀ n, P12736692352058629640.a n = A231685 n

end A231685

/-! ## A231685.P6536100119919195272

`∑[A053830(n)^A000040(gcd(n, n+1))]`
-/

namespace A231685.P6536100119919195272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053830 n : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P6536100119919195272

namespace A231685

/-- `∑[A053830(n)^A000040(gcd(n, n+1))]` -/
def P6536100119919195272.Spec : Prop :=
  ∀ n, P6536100119919195272.a n = (A231685 n : ℚ)

end A231685

/-! ## A231685.P8323264615823213001

`∑[A053830(n)^A054541(C(2, n+1)+1)]`
-/

namespace A231685.P8323264615823213001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053830 n : ℚ) ^ (A054541 (Nat.choose 2 (n + 1) + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P8323264615823213001

namespace A231685

/-- `∑[A053830(n)^A054541(C(2, n+1)+1)]` -/
def P8323264615823213001.Spec : Prop :=
  ∀ n, P8323264615823213001.a n = (A231685 n : ℚ)

end A231685

/-! ## A231685.P2114386994318305558

`∑[A118881(A007095(n))]`
-/

namespace A231685.P2114386994318305558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P2114386994318305558

namespace A231685

/-- `∑[A118881(A007095(n))]` -/
def P2114386994318305558.Spec : Prop :=
  ∀ n, P2114386994318305558.a n = A231685 n

end A231685

/-! ## A231685.P1565967635161114495

`∑[A007953(record[A004728(n)])²]`
-/

namespace A231685.P1565967635161114495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P1565967635161114495

namespace A231685

/-- `∑[A007953(record[A004728(n)])²]` -/
def P1565967635161114495.Spec : Prop :=
  ∀ n, P1565967635161114495.a n = A231685 n

end A231685

/-! ## A231685.P8091369054233721742

`∑[A007953(record[A235049(n)])²]`
-/

namespace A231685.P8091369054233721742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P8091369054233721742

namespace A231685

/-- `∑[A007953(record[A235049(n)])²]` -/
def P8091369054233721742.Spec : Prop :=
  ∀ n, P8091369054233721742.a n = A231685 n

end A231685

/-!
# A231686: a(n) = Sum_{i=0..n} digsum_9(i)^3, where digsum_9(i) = A053830(i).

The programs for A231686, the canonical program `A231686.P5166136307374724277` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231686 has offset 0).

The definition of A231686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231686.P11444830163916675433

`∑[A053830(n)^3]`
-/

namespace A231686.P11444830163916675433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P11444830163916675433

namespace A231686

/-- `∑[A053830(n)^3]` -/
def P11444830163916675433.Spec : Prop :=
  ∀ n, P11444830163916675433.a n = A231686 n

end A231686

/-! ## A231686.P5166136307374724277

`∑[∑{digits}[A007095(n), #]^3]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231686

/-- `∑[∑{digits}[A007095(n), #]^3]` -/
def P5166136307374724277.Spec : Prop :=
  ∀ n, (P5166136307374724277.a n : ℤ) = A231686 n

theorem P5166136307374724277.correct : P5166136307374724277.Spec := by
  intro n
  simp only [A231686]

end A231686

/-! ## A231686.P15560086128106101657

`∑[(A173529(n+1)-1)^3]`
-/

namespace A231686.P15560086128106101657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173529 (n + 1) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P15560086128106101657

namespace A231686

/-- `∑[(A173529(n+1)-1)^3]` -/
def P15560086128106101657.Spec : Prop :=
  ∀ n, P15560086128106101657.a n = A231686 n

end A231686

/-! ## A231686.P13729023715206857713

`∑[A000578(A053830(n))]`
-/

namespace A231686.P13729023715206857713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P13729023715206857713

namespace A231686

/-- `∑[A000578(A053830(n))]` -/
def P13729023715206857713.Spec : Prop :=
  ∀ n, P13729023715206857713.a n = A231686 n

end A231686

/-! ## A231686.P5724379237780602292

`∑[A000093(A053830(n)²)]`
-/

namespace A231686.P5724379237780602292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A053830 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P5724379237780602292

namespace A231686

/-- `∑[A000093(A053830(n)²)]` -/
def P5724379237780602292.Spec : Prop :=
  ∀ n, P5724379237780602292.a n = A231686 n

end A231686

/-! ## A231686.P3664437710840305411

`∑[A002821(A053830(n)²)]`
-/

namespace A231686.P3664437710840305411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A053830 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P3664437710840305411

namespace A231686

/-- `∑[A002821(A053830(n)²)]` -/
def P3664437710840305411.Spec : Prop :=
  ∀ n, P3664437710840305411.a n = A231686 n

end A231686

/-! ## A231686.P839658540578622263

`∑[A166447(A053830(n)²)]`
-/

namespace A231686.P839658540578622263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 (A053830 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P839658540578622263

namespace A231686

/-- `∑[A166447(A053830(n)²)]` -/
def P839658540578622263.Spec : Prop :=
  ∀ n, P839658540578622263.a n = A231686 n

end A231686

/-! ## A231686.P12272872263060395641

`∑[A185549(A053830(n)²)]`
-/

namespace A231686.P12272872263060395641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (A053830 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P12272872263060395641

namespace A231686

/-- `∑[A185549(A053830(n)²)]` -/
def P12272872263060395641.Spec : Prop :=
  ∀ n, P12272872263060395641.a n = A231686 n

end A231686

/-! ## A231686.P10614682625675602934

`∑[A081276(2*A053830(n))]`
-/

namespace A231686.P10614682625675602934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (2 * A053830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P10614682625675602934

namespace A231686

/-- `∑[A081276(2*A053830(n))]` -/
def P10614682625675602934.Spec : Prop :=
  ∀ n, P10614682625675602934.a n = A231686 n

end A231686

/-! ## A231686.P7632626221966338103

`∑[A002821(A053830(n)*A053830(n))]`
-/

namespace A231686.P7632626221966338103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A053830 n * A053830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P7632626221966338103

namespace A231686

/-- `∑[A002821(A053830(n)*A053830(n))]` -/
def P7632626221966338103.Spec : Prop :=
  ∀ n, P7632626221966338103.a n = A231686 n

end A231686

/-! ## A231686.P3849019997207986671

`∑[A007953(A007095(n))^3]`
-/

namespace A231686.P3849019997207986671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007095 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P3849019997207986671

namespace A231686

/-- `∑[A007953(A007095(n))^3]` -/
def P3849019997207986671.Spec : Prop :=
  ∀ n, P3849019997207986671.a n = A231686 n

end A231686

/-! ## A231686.P9644833365700018375

`∑[A007953(record[A004728(n)])^3]`
-/

namespace A231686.P9644833365700018375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P9644833365700018375

namespace A231686

/-- `∑[A007953(record[A004728(n)])^3]` -/
def P9644833365700018375.Spec : Prop :=
  ∀ n, P9644833365700018375.a n = A231686 n

end A231686

/-! ## A231686.P12276889218546420857

`∑[A000578(A007953(A007095(n)))]`
-/

namespace A231686.P12276889218546420857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007953 (A007095 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P12276889218546420857

namespace A231686

/-- `∑[A000578(A007953(A007095(n)))]` -/
def P12276889218546420857.Spec : Prop :=
  ∀ n, P12276889218546420857.a n = A231686 n

end A231686

/-!
# A231687: a(n) = Sum_{i=0..n} digsum_9(i)^4, where digsum_9(i) = A053830(i).

The programs for A231687, the canonical program `A231687.P14861985078575087158` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231687 has offset 0).

The definition of A231687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231687.P14629987510550380823

`∑[A053830(n)^4]`
-/

namespace A231687.P14629987510550380823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P14629987510550380823

namespace A231687

/-- `∑[A053830(n)^4]` -/
def P14629987510550380823.Spec : Prop :=
  ∀ n, P14629987510550380823.a n = A231687 n

end A231687

/-! ## A231687.P14861985078575087158

`∑[∑{digits}[A007095(n), #]^4]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231687

/-- `∑[∑{digits}[A007095(n), #]^4]` -/
def P14861985078575087158.Spec : Prop :=
  ∀ n, (P14861985078575087158.a n : ℤ) = A231687 n

theorem P14861985078575087158.correct : P14861985078575087158.Spec := by
  intro n
  simp only [A231687]

end A231687

/-! ## A231687.P17346253619379279368

`∑[(1-A173529(n+1))^4]`
-/

namespace A231687.P17346253619379279368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173529 (n + 1)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P17346253619379279368

namespace A231687

/-- `∑[(1-A173529(n+1))^4]` -/
def P17346253619379279368.Spec : Prop :=
  ∀ n, P17346253619379279368.a n = A231687 n

end A231687

/-! ## A231687.P4823332562578629454

`∑[A000583(A053830(n))]`
-/

namespace A231687.P4823332562578629454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P4823332562578629454

namespace A231687

/-- `∑[A000583(A053830(n))]` -/
def P4823332562578629454.Spec : Prop :=
  ∀ n, P4823332562578629454.a n = A231687 n

end A231687

/-! ## A231687.P7050363920851217447

`∑[A000290(A053830(n)²)]`
-/

namespace A231687.P7050363920851217447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A053830 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P7050363920851217447

namespace A231687

/-- `∑[A000290(A053830(n)²)]` -/
def P7050363920851217447.Spec : Prop :=
  ∀ n, P7050363920851217447.a n = A231687 n

end A231687

/-! ## A231687.P17969651927822330925

`∑[A030179(2*A053830(n))]`
-/

namespace A231687.P17969651927822330925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 (2 * A053830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P17969651927822330925

namespace A231687

/-- `∑[A030179(2*A053830(n))]` -/
def P17969651927822330925.Spec : Prop :=
  ∀ n, P17969651927822330925.a n = A231687 n

end A231687

/-! ## A231687.P17914137852123589345

`∑[A048761(A053830(n)²)²]`
-/

namespace A231687.P17914137852123589345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A053830 n ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P17914137852123589345

namespace A231687

/-- `∑[A048761(A053830(n)²)²]` -/
def P17914137852123589345.Spec : Prop :=
  ∀ n, P17914137852123589345.a n = A231687 n

end A231687

/-! ## A231687.P13460226822087809084

`∑[A000583(∑{digits}[A007095(n), #])]`
-/

namespace A231687.P13460226822087809084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P13460226822087809084

namespace A231687

/-- `∑[A000583(∑{digits}[A007095(n), #])]` -/
def P13460226822087809084.Spec : Prop :=
  ∀ n, P13460226822087809084.a n = A231687 n

theorem P13460226822087809084.correct : P13460226822087809084.Spec := by
  intro n
  simp only [A231687, Nat.add_sub_cancel, A231687.P13460226822087809084.f2, A231687.P13460226822087809084.f1, A231687.P13460226822087809084.a, A231687.P14861985078575087158.f2, A231687.P14861985078575087158.f1, A231687.P14861985078575087158.a, A000583, A000583.P14547500281748394449.a, A007095, A007095.P8694712654280777652.f1, A007095.P8694712654280777652.f2, A007095.P8694712654280777652.a, A102683, A102683.P15481255346739621049.f1, A102683.P15481255346739621049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A231687

/-! ## A231687.P5037078981735227398

`∑[A000194(A053830(n)²)²²]`
-/

namespace A231687.P5037078981735227398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000194 (A053830 n ^ 2).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P5037078981735227398

namespace A231687

/-- `∑[A000194(A053830(n)²)²²]` -/
def P5037078981735227398.Spec : Prop :=
  ∀ n, P5037078981735227398.a n = A231687 n

end A231687

/-! ## A231687.P5508071606098351225

`∑[A002837(A173529(n+1))²²]`
-/

namespace A231687.P5508071606098351225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002837 (A173529 (n + 1)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P5508071606098351225

namespace A231687

/-- `∑[A002837(A173529(n+1))²²]` -/
def P5508071606098351225.Spec : Prop :=
  ∀ n, P5508071606098351225.a n = A231687 n

end A231687

/-! ## A231687.P13513774799406884806

`∑[A118881(A007095(n))²]`
-/

namespace A231687.P13513774799406884806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A007095 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P13513774799406884806

namespace A231687

/-- `∑[A118881(A007095(n))²]` -/
def P13513774799406884806.Spec : Prop :=
  ∀ n, P13513774799406884806.a n = A231687 n

end A231687

/-! ## A231687.P15202234537582042814

`∑[A007953(record[A004728(n)])^4]`
-/

namespace A231687.P15202234537582042814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P15202234537582042814

namespace A231687

/-- `∑[A007953(record[A004728(n)])^4]` -/
def P15202234537582042814.Spec : Prop :=
  ∀ n, P15202234537582042814.a n = A231687 n

end A231687

/-! ## A231687.P15375486873120662741

`∑[A007953(record[A235049(n)])²²]`
-/

namespace A231687.P15375486873120662741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007953 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P15375486873120662741

namespace A231687

/-- `∑[A007953(record[A235049(n)])²²]` -/
def P15375486873120662741.Spec : Prop :=
  ∀ n, P15375486873120662741.a n = A231687 n

end A231687

/-!
# A231688: a(n) = Sum_{i=0..n} digsum(i)^3, where digsum(i) = A007953(i).

The programs for A231688, the canonical program `A231688.P6843879176151774782` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231688 has offset 0).

The definition of A231688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231688.P6843879176151774782

`∑[∑{digits}[n, #]^3]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231688

/-- `∑[∑{digits}[n, #]^3]` -/
def P6843879176151774782.Spec : Prop :=
  ∀ n, (P6843879176151774782.a n : ℤ) = A231688 n

theorem P6843879176151774782.correct : P6843879176151774782.Spec := by
  intro n
  simp only [A231688]

end A231688

/-! ## A231688.P14951196717591025939

`∑[root(∑{digits}[n, #], 1/3)]`
-/

namespace A231688.P14951196717591025939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P14951196717591025939

namespace A231688

/-- `∑[root(∑{digits}[n, #], 1/3)]` -/
def P14951196717591025939.Spec : Prop :=
  ∀ n, P14951196717591025939.a n = (A231688 n : ℝ)

end A231688

/-! ## A231688.P17840154814063201460

`∑[log(∏{digits}[n, exp(#)])^3]`
-/

namespace A231688.P17840154814063201460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P17840154814063201460

namespace A231688

/-- `∑[log(∏{digits}[n, exp(#)])^3]` -/
def P17840154814063201460.Spec : Prop :=
  ∀ n, P17840154814063201460.a n = (A231688 n : ℝ)

end A231688

/-! ## A231688.P10924478765392423362

`∑[log2(∏{digits}[n, 2^#])^3]`
-/

namespace A231688.P10924478765392423362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P10924478765392423362

namespace A231688

/-- `∑[log2(∏{digits}[n, 2^#])^3]` -/
def P10924478765392423362.Spec : Prop :=
  ∀ n, P10924478765392423362.a n = (A231688 n : ℝ)

end A231688

/-! ## A231688.P7496916841371812618

`∑[∑{digits}[n, #]²*∑{digits}[n, #]]`
-/

namespace A231688.P7496916841371812618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 * ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P7496916841371812618

namespace A231688

/-- `∑[∑{digits}[n, #]²*∑{digits}[n, #]]` -/
def P7496916841371812618.Spec : Prop :=
  ∀ n, (P7496916841371812618.a n : ℤ) = A231688 n

theorem P7496916841371812618.correct : P7496916841371812618.Spec := by
  intro n
  simp only [A231688, Nat.add_sub_cancel, A231688.P7496916841371812618.f2, A231688.P7496916841371812618.f3, A231688.P7496916841371812618.f1, A231688.P7496916841371812618.a, A231688.P6843879176151774782.f2, A231688.P6843879176151774782.f1, A231688.P6843879176151774782.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231688

/-! ## A231688.P13549872376506853234

`a(n-1)+∑{digits}[n, #]^3` with `a(0)=0`
-/

namespace A231688.P13549872376506853234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 3

end

end A231688.P13549872376506853234

namespace A231688

/-- `a(n-1)+∑{digits}[n, #]^3` -/
def P13549872376506853234.Spec : Prop :=
  ∀ n, (P13549872376506853234.a n : ℤ) = A231688 n

end A231688

/-! ## A231688.P17172920242975214831

`a(n-1)+∑{digits}[n, #]²*∑{digits}[n, #]` with `a(0)=0`
-/

namespace A231688.P17172920242975214831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A231688.P17172920242975214831

namespace A231688

/-- `a(n-1)+∑{digits}[n, #]²*∑{digits}[n, #]` -/
def P17172920242975214831.Spec : Prop :=
  ∀ n, (P17172920242975214831.a n : ℤ) = A231688 n

end A231688

/-! ## A231688.P12621553921667319665

`∑[A118880(n)]`
-/

namespace A231688.P12621553921667319665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P12621553921667319665

namespace A231688

/-- `∑[A118880(n)]` -/
def P12621553921667319665.Spec : Prop :=
  ∀ n, P12621553921667319665.a n = A231688 n

end A231688

/-! ## A231688.P18137079541845419473

`∑[A007953(n)^3]`
-/

namespace A231688.P18137079541845419473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P18137079541845419473

namespace A231688

/-- `∑[A007953(n)^3]` -/
def P18137079541845419473.Spec : Prop :=
  ∀ n, P18137079541845419473.a n = A231688 n

end A231688

/-! ## A231688.P10176288150086964694

`∑[A000578(∑{digits}[n, #])]`
-/

namespace A231688.P10176288150086964694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P10176288150086964694

namespace A231688

/-- `∑[A000578(∑{digits}[n, #])]` -/
def P10176288150086964694.Spec : Prop :=
  ∀ n, P10176288150086964694.a n = A231688 n

theorem P10176288150086964694.correct : P10176288150086964694.Spec := by
  intro n
  simp only [A231688, Nat.add_sub_cancel, A231688.P10176288150086964694.f2, A231688.P10176288150086964694.f1, A231688.P10176288150086964694.a, A231688.P6843879176151774782.f2, A231688.P6843879176151774782.f1, A231688.P6843879176151774782.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231688

/-! ## A231688.P4584864193654712642

`∑[(A169805(n)/2)^3]`
-/

namespace A231688.P4584864193654712642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169805 n : ℚ) / 2) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P4584864193654712642

namespace A231688

/-- `∑[(A169805(n)/2)^3]` -/
def P4584864193654712642.Spec : Prop :=
  ∀ n, P4584864193654712642.a n = (A231688 n : ℚ)

end A231688

/-! ## A231688.P2867147404079283492

`∑[(A062028(n)-n)^3]`
-/

namespace A231688.P2867147404079283492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062028 n - (n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P2867147404079283492

namespace A231688

/-- `∑[(A062028(n)-n)^3]` -/
def P2867147404079283492.Spec : Prop :=
  ∀ n, P2867147404079283492.a n = A231688 n

end A231688

/-! ## A231688.P17590487438080675400

`∑[(n-A066568(n))^3]`
-/

namespace A231688.P17590487438080675400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A066568 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P17590487438080675400

namespace A231688

/-- `∑[(n-A066568(n))^3]` -/
def P17590487438080675400.Spec : Prop :=
  ∀ n, P17590487438080675400.a n = A231688 n

end A231688

/-! ## A231688.P3601996619684442659

`∑[A000578(A007953(n))]`
-/

namespace A231688.P3601996619684442659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P3601996619684442659

namespace A231688

/-- `∑[A000578(A007953(n))]` -/
def P3601996619684442659.Spec : Prop :=
  ∀ n, P3601996619684442659.a n = A231688 n

end A231688

/-! ## A231688.P15945328674225851818

`∑[A000093(A118881(n))]`
-/

namespace A231688.P15945328674225851818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A118881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P15945328674225851818

namespace A231688

/-- `∑[A000093(A118881(n))]` -/
def P15945328674225851818.Spec : Prop :=
  ∀ n, P15945328674225851818.a n = A231688 n

end A231688

/-! ## A231688.P16119758955359092302

`∑[A034828(A169805(n))]`
-/

namespace A231688.P16119758955359092302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A169805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P16119758955359092302

namespace A231688

/-- `∑[A034828(A169805(n))]` -/
def P16119758955359092302.Spec : Prop :=
  ∀ n, P16119758955359092302.a n = A231688 n

end A231688

/-! ## A231688.P3787639649578614729

`∑[((A062028(n)+n)%A004277(n))^3]`
-/

namespace A231688.P3787639649578614729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 n + (n : ℤ)) (A004277 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231688.P3787639649578614729

namespace A231688

/-- `∑[((A062028(n)+n)%A004277(n))^3]` -/
def P3787639649578614729.Spec : Prop :=
  ∀ n, P3787639649578614729.a n = A231688 n

end A231688

/-!
# A231689: a(n) = Sum_{i=0..n} digsum(i)^4, where digsum(i) = A007953(i).

The programs for A231689, the canonical program `A231689.P6455835949934607381` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231689 has offset 0).

The definition of A231689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231689.P6455835949934607381

`∑[∑{digits}[n, #]^4]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231689

/-- `∑[∑{digits}[n, #]^4]` -/
def P6455835949934607381.Spec : Prop :=
  ∀ n, (P6455835949934607381.a n : ℤ) = A231689 n

theorem P6455835949934607381.correct : P6455835949934607381.Spec := by
  intro n
  simp only [A231689]

end A231689

/-! ## A231689.P7717803214063612142

`∑[∑{digits}[n, #]²²]`
-/

namespace A231689.P7717803214063612142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P7717803214063612142

namespace A231689

/-- `∑[∑{digits}[n, #]²²]` -/
def P7717803214063612142.Spec : Prop :=
  ∀ n, (P7717803214063612142.a n : ℤ) = A231689 n

theorem P7717803214063612142.correct : P7717803214063612142.Spec := by
  intro n
  simp only [A231689, Nat.add_sub_cancel, A231689.P7717803214063612142.f2, A231689.P7717803214063612142.f1, A231689.P7717803214063612142.a, A231689.P6455835949934607381.f2, A231689.P6455835949934607381.f1, A231689.P6455835949934607381.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231689

/-! ## A231689.P1839295177321550647

`∑[log(∏{digits}[n, exp(#)])^4]`
-/

namespace A231689.P1839295177321550647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod ^ 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P1839295177321550647

namespace A231689

/-- `∑[log(∏{digits}[n, exp(#)])^4]` -/
def P1839295177321550647.Spec : Prop :=
  ∀ n, P1839295177321550647.a n = (A231689 n : ℝ)

end A231689

/-! ## A231689.P17022600312201387562

`∑[log(∏{digits}[n, exp(#)])²²]`
-/

namespace A231689.P17022600312201387562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.log ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P17022600312201387562

namespace A231689

/-- `∑[log(∏{digits}[n, exp(#)])²²]` -/
def P17022600312201387562.Spec : Prop :=
  ∀ n, P17022600312201387562.a n = (A231689 n : ℝ)

end A231689

/-! ## A231689.P15009614657204876289

`∑[log2(∏{digits}[n, 2^#])^4]`
-/

namespace A231689.P15009614657204876289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) ^ 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P15009614657204876289

namespace A231689

/-- `∑[log2(∏{digits}[n, 2^#])^4]` -/
def P15009614657204876289.Spec : Prop :=
  ∀ n, P15009614657204876289.a n = (A231689 n : ℝ)

end A231689

/-! ## A231689.P15373105870713621105

`∑[val(∏{digits}[n, 2^#], 2)^4]`
-/

namespace A231689.P15373105870713621105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod 2 ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P15373105870713621105

namespace A231689

/-- `∑[val(∏{digits}[n, 2^#], 2)^4]` -/
def P15373105870713621105.Spec : Prop :=
  ∀ n, (P15373105870713621105.a n : ℤ) = A231689 n

end A231689

/-! ## A231689.P6720413034551205799

`a(n-1)+∑{digits}[n, #]^4` with `a(0)=0`
-/

namespace A231689.P6720413034551205799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 4

end

end A231689.P6720413034551205799

namespace A231689

/-- `a(n-1)+∑{digits}[n, #]^4` -/
def P6720413034551205799.Spec : Prop :=
  ∀ n, (P6720413034551205799.a n : ℤ) = A231689 n

end A231689

/-! ## A231689.P12173208751066244266

`a(n-1)+∑{digits}[n, #]²²` with `a(0)=0`
-/

namespace A231689.P12173208751066244266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2) ^ 2

end

end A231689.P12173208751066244266

namespace A231689

/-- `a(n-1)+∑{digits}[n, #]²²` -/
def P12173208751066244266.Spec : Prop :=
  ∀ n, (P12173208751066244266.a n : ℤ) = A231689 n

end A231689

/-! ## A231689.P5069803162416171282

`∑[A118881(n)²]`
-/

namespace A231689.P5069803162416171282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P5069803162416171282

namespace A231689

/-- `∑[A118881(n)²]` -/
def P5069803162416171282.Spec : Prop :=
  ∀ n, P5069803162416171282.a n = A231689 n

end A231689

/-! ## A231689.P15616855765851169748

`∑[A007953(n)^4]`
-/

namespace A231689.P15616855765851169748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P15616855765851169748

namespace A231689

/-- `∑[A007953(n)^4]` -/
def P15616855765851169748.Spec : Prop :=
  ∀ n, P15616855765851169748.a n = A231689 n

end A231689

/-! ## A231689.P9116393342421508014

`∑[A000583(∑{digits}[n, #])]`
-/

namespace A231689.P9116393342421508014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P9116393342421508014

namespace A231689

/-- `∑[A000583(∑{digits}[n, #])]` -/
def P9116393342421508014.Spec : Prop :=
  ∀ n, P9116393342421508014.a n = A231689 n

theorem P9116393342421508014.correct : P9116393342421508014.Spec := by
  intro n
  simp only [A231689, Nat.add_sub_cancel, A231689.P9116393342421508014.f2, A231689.P9116393342421508014.f1, A231689.P9116393342421508014.a, A231689.P6455835949934607381.f2, A231689.P6455835949934607381.f1, A231689.P6455835949934607381.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231689

/-! ## A231689.P4957608667340650431

`∑[log2(A329562(n))²²]`
-/

namespace A231689.P4957608667340650431
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A329562 n : ℝ) ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P4957608667340650431

namespace A231689

/-- `∑[log2(A329562(n))²²]` -/
def P4957608667340650431.Spec : Prop :=
  ∀ n, P4957608667340650431.a n = (A231689 n : ℝ)

end A231689

/-! ## A231689.P12563524057684396654

`∑[(n-A062028(n))^4]`
-/

namespace A231689.P12563524057684396654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A062028 n) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P12563524057684396654

namespace A231689

/-- `∑[(n-A062028(n))^4]` -/
def P12563524057684396654.Spec : Prop :=
  ∀ n, P12563524057684396654.a n = A231689 n

end A231689

/-! ## A231689.P18153497913882494373

`∑[(A169805(n)/2)²²]`
-/

namespace A231689.P18153497913882494373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A169805 n : ℚ) / 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P18153497913882494373

namespace A231689

/-- `∑[(A169805(n)/2)²²]` -/
def P18153497913882494373.Spec : Prop :=
  ∀ n, P18153497913882494373.a n = (A231689 n : ℚ)

end A231689

/-! ## A231689.P8161656646084011916

`∑[A000583(A007953(n))]`
-/

namespace A231689.P8161656646084011916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P8161656646084011916

namespace A231689

/-- `∑[A000583(A007953(n))]` -/
def P8161656646084011916.Spec : Prop :=
  ∀ n, P8161656646084011916.a n = A231689 n

end A231689

/-! ## A231689.P3294513940727595172

`∑[A006370(A169805(n))²²]`
-/

namespace A231689.P3294513940727595172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006370 (A169805 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P3294513940727595172

namespace A231689

/-- `∑[A006370(A169805(n))²²]` -/
def P3294513940727595172.Spec : Prop :=
  ∀ n, P3294513940727595172.a n = A231689 n

end A231689

/-! ## A231689.P14339508810516245711

`∑[A000290(A000290(∑{digits}[n, #]))]`
-/

namespace A231689.P14339508810516245711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000290 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P14339508810516245711

namespace A231689

/-- `∑[A000290(A000290(∑{digits}[n, #]))]` -/
def P14339508810516245711.Spec : Prop :=
  ∀ n, P14339508810516245711.a n = A231689 n

end A231689

/-! ## A231689.P16226567348724833941

`∑[A089083(A089071(∑{digits}[n, #]+1))]`
-/

namespace A231689.P16226567348724833941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089083 (A089071 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P16226567348724833941

namespace A231689

/-- `∑[A089083(A089071(∑{digits}[n, #]+1))]` -/
def P16226567348724833941.Spec : Prop :=
  ∀ n, P16226567348724833941.a n = A231689 n

end A231689

/-! ## A231689.P13664934295673705605

`∑[A053836(A102489(n))²²]`
-/

namespace A231689.P13664934295673705605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053836 (A102489 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P13664934295673705605

namespace A231689

/-- `∑[A053836(A102489(n))²²]` -/
def P13664934295673705605.Spec : Prop :=
  ∀ n, P13664934295673705605.a n = A231689 n

end A231689

/-! ## A231689.P16955265394441428720

`∑[A326746(10*n)²²]`
-/

namespace A231689.P16955265394441428720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326746 (10 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231689.P16955265394441428720

namespace A231689

/-- `∑[A326746(10*n)²²]` -/
def P16955265394441428720.Spec : Prop :=
  ∀ n, P16955265394441428720.a n = A231689 n

end A231689

/-!
# A231693: Define a sequence of rationals by f(0)=0, thereafter f(n)=f(n-1)-1/n if that is >= 0, otherwise f(n)=f(n-1)+1/n; a(n) = denominator of f(n).

The programs for A231693, there is no canonical definition to state claims against.
-/

/-! ## A231693.P7427471255007129399

`A002805(A094708(3*n+1)+A000007(n))`
-/

namespace A231693.P7427471255007129399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (A094708 (3 * n + 1) + A000007 n).toNat

end

end A231693.P7427471255007129399

/-! ## A231693.P15778453830071139621

`∏{e}[2^n, A002805(#)]`
-/

namespace A231693.P15778453830071139621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002805 (Nat.factorization (f1 n) p)

end

end A231693.P15778453830071139621

/-! ## A231693.P5101759453301417661

`A002805(n^A319679(n+1))`
-/

namespace A231693.P5101759453301417661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A319679 (n + 1) : ℤ))).toNat

end

end A231693.P5101759453301417661

/-! ## A231693.P3336849229646946576

`A002805(n^A319689(n+1))`
-/

namespace A231693.P3336849229646946576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A319689 (n + 1) : ℤ))).toNat

end

end A231693.P3336849229646946576

/-! ## A231693.P2568181308525874099

`A002805(A326684(n)^n+n)`
-/

namespace A231693.P2568181308525874099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (A326684 n ^ n + (n : ℤ)).toNat

end

end A231693.P2568181308525874099

/-!
# A231694: Number of nX2 0..3 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231694, there is no canonical definition to state claims against.
-/

/-! ## A231694.P3828883540046190159

`A231700(∑[n+1]+2)`
-/

namespace A231694.P3828883540046190159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231694.P3828883540046190159

/-! ## A231694.P14682490464510014013

`record[root(A231700(n+1), A246185(n))]`
-/

namespace A231694.P14682490464510014013
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231700 (n + 1) : ℝ) ^ (1 / (A246185 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231694.P14682490464510014013

/-! ## A231694.P3566896086738966632

`record[A231700(∑[A152271(n)])]`
-/

namespace A231694.P3566896086738966632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231694.P3566896086738966632

/-! ## A231694.P3917463487431490783

`record[root(A231700(n+1), A030111(n+1))]`
-/

namespace A231694.P3917463487431490783
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231700 (n + 1) : ℝ) ^ (1 / (A030111 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231694.P3917463487431490783

/-! ## A231694.P6982361497394041797

`record[root(A231700(n+1), A066633(n+1))]`
-/

namespace A231694.P6982361497394041797
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231700 (n + 1) : ℝ) ^ (1 / (A066633 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231694.P6982361497394041797

/-!
# A231695: Number of nX3 0..3 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231695, there is no canonical definition to state claims against.
-/

/-! ## A231695.P14306612012645358627

`A231700(∑[n+2]+4)`
-/

namespace A231695.P14306612012645358627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231695.P14306612012645358627

/-! ## A231695.P4326824336536095123

`A326458(n)+A231700(A167614(n+1))`
-/

namespace A231695.P4326824336536095123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A231700 (A167614 (n + 1)).toNat

end

end A231695.P4326824336536095123

/-! ## A231695.P6094749993134581903

`lcm(A020985(n), A231700(A167614(n+1)))`
-/

namespace A231695.P6094749993134581903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A231700 (A167614 (n + 1)).toNat)

end

end A231695.P6094749993134581903

/-! ## A231695.P11926675796640153402

`A231700(A167614(n+1))+A135297(n+1)`
-/

namespace A231695.P11926675796640153402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A167614 (n + 1)).toNat + A135297 (n + 1)

end

end A231695.P11926675796640153402

/-! ## A231695.P17283310764277971766

`A231700(A167614(n+1))%A217454(n+1)`
-/

namespace A231695.P17283310764277971766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231700 (A167614 (n + 1)).toNat) (A217454 (n + 1))

end

end A231695.P17283310764277971766

/-!
# A231696: Number of nX4 0..3 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231696, there is no canonical definition to state claims against.
-/

/-! ## A231696.P3608859451796300165

`A231700(A374004(n+1))`
-/

namespace A231696.P3608859451796300165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A374004 (n + 1)).toNat

end

end A231696.P3608859451796300165

/-! ## A231696.P9040620110270100113

`A231700(A141214(n)+7)`
-/

namespace A231696.P9040620110270100113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A141214 n + 7).toNat

end

end A231696.P9040620110270100113

/-! ## A231696.P9848033132473363481

`A231700(A052905(n)+9)`
-/

namespace A231696.P9848033132473363481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A052905 n + 9).toNat

end

end A231696.P9848033132473363481

/-! ## A231696.P11042447192784353911

`A231700(A055999(n)+10)`
-/

namespace A231696.P11042447192784353911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A055999 n + 10).toNat

end

end A231696.P11042447192784353911

/-! ## A231696.P3538947600813192476

`A231700(A167614(n+2)+1)`
-/

namespace A231696.P3538947600813192476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A167614 (n + 2) + 1).toNat

end

end A231696.P3538947600813192476

/-!
# A231697: Number of nX5 0..3 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231697, there is no canonical definition to state claims against.
-/

/-! ## A231697.P15727015784777718716

`A231700(A374005(n+1))`
-/

namespace A231697.P15727015784777718716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A374005 (n + 1)).toNat

end

end A231697.P15727015784777718716

/-! ## A231697.P7588706953434433333

`A231700(eq[6, A131818(n+1)])`
-/

namespace A231697.P7588706953434433333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231697.P7588706953434433333

/-! ## A231697.P15663580153906172535

`A231700(Δ[A264443(n)])`
-/

namespace A231697.P15663580153906172535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (f1 (n + 1) - f1 n).toNat

end

end A231697.P15663580153906172535

/-! ## A231697.P1782014074215124444

`A231700(eq[4, A193592(n)])`
-/

namespace A231697.P1782014074215124444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231697.P1782014074215124444

/-! ## A231697.P1579819157741651707

`A231700(Δ[A023545(n+1)])`
-/

namespace A231697.P1579819157741651707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (f1 (n + 1) - f1 n).toNat

end

end A231697.P1579819157741651707

/-!
# A231698: Number of nX6 0..3 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231698, there is no canonical definition to state claims against.
-/

/-! ## A231698.P14570227643103598086

`A231700(A374007(n+1))`
-/

namespace A231698.P14570227643103598086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A374007 (n + 1)).toNat

end

end A231698.P14570227643103598086

/-! ## A231698.P15495925209785983336

`A231700(A000096(n+4)+7)`
-/

namespace A231698.P15495925209785983336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A000096 (n + 4) + 7).toNat

end

end A231698.P15495925209785983336

/-! ## A231698.P1370295828931043073

`A231700(A052905(n+3))`
-/

namespace A231698.P1370295828931043073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A052905 (n + 3)).toNat

end

end A231698.P1370295828931043073

/-! ## A231698.P4897988692455905338

`A231700(Δ[Δ[A006504(n+1)]])`
-/

namespace A231698.P4897988692455905338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (f1 (n + 1) - f1 n).toNat

end

end A231698.P4897988692455905338

/-! ## A231698.P14578187529995020600

`A231700(Δ[A264443(n+1)]-1)`
-/

namespace A231698.P14578187529995020600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (f1 (n + 1) - f1 n - 1).toNat

end

end A231698.P14578187529995020600

/-!
# A231699: Number of nX7 0..3 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231699, there is no canonical definition to state claims against.
-/

/-! ## A231699.P16827394181778641599

`A231700(A374008(n+1))`
-/

namespace A231699.P16827394181778641599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A374008 (n + 1)).toNat

end

end A231699.P16827394181778641599

/-! ## A231699.P1143457151821461773

`A231700(eq[8, A131818(n+1)])`
-/

namespace A231699.P1143457151821461773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231699.P1143457151821461773

/-! ## A231699.P15438315719696499866

`A231700(A055999(n+4))`
-/

namespace A231699.P15438315719696499866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (A055999 (n + 4)).toNat

end

end A231699.P15438315719696499866

/-! ## A231699.P7897817369376919503

`A231700(eq[6, A193592(n)])`
-/

namespace A231699.P7897817369376919503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231699.P7897817369376919503

