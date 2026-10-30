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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A066300: Number of n X n matrices with exactly 2 1's in each row, other entries 0.

The programs for A066300, the canonical program `A066300.P11587297981237565345` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066300 has offset 1).

The definition of A066300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066300.P11587297981237565345

`C(n+1, 2)^(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066300

/-- `C(n+1, 2)^(n+1)` -/
def P11587297981237565345.Spec : Prop :=
  ∀ n, (P11587297981237565345.a n : ℤ) = A066300 (n + 1)

theorem P11587297981237565345.correct : P11587297981237565345.Spec := by
  intro n
  simp only [A066300, Nat.add_sub_cancel]

end A066300

/-! ## A066300.P2118030874342138756

`∑[n]^(1+n)`
-/

namespace A066300.P2118030874342138756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (1 + n)

end

end A066300.P2118030874342138756

namespace A066300

/-- `∑[n]^(1+n)` -/
def P2118030874342138756.Spec : Prop :=
  ∀ n, (P2118030874342138756.a n : ℤ) = A066300 (n + 1)

end A066300

/-! ## A066300.P14660245027062032987

`root(∑[n], 1/C(n+1, n))`
-/

namespace A066300.P14660245027062032987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / (1 / (Nat.choose (n + 1) n : ℚ) : ℝ))

end

end A066300.P14660245027062032987

namespace A066300

/-- `root(∑[n], 1/C(n+1, n))` -/
def P14660245027062032987.Spec : Prop :=
  ∀ n, P14660245027062032987.a n = (A066300 (n + 1) : ℝ)

end A066300

/-! ## A066300.P17363780664070252548

`root(∑[n], n!/(n+1)!)`
-/

namespace A066300.P17363780664070252548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / ((Nat.factorial n : ℚ) / (Nat.factorial (n + 1) : ℚ) : ℝ))

end

end A066300.P17363780664070252548

namespace A066300

/-- `root(∑[n], n!/(n+1)!)` -/
def P17363780664070252548.Spec : Prop :=
  ∀ n, P17363780664070252548.a n = (A066300 (n + 1) : ℝ)

end A066300

/-! ## A066300.P10420941257547040681

`record[∑{#}[col(n), #]^(col(n)+1)]`
-/

namespace A066300.P10420941257547040681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f2 n + 1), k) ^ (SequenceMachineLib.triCol n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066300.P10420941257547040681

namespace A066300

/-- `record[∑{#}[col(n), #]^(col(n)+1)]` -/
def P10420941257547040681.Spec : Prop :=
  ∀ n, (P10420941257547040681.a n : ℤ) = A066300 (n + 1)

end A066300

/-!
# A066301: a(n) = 0 if n is squarefree, otherwise 1 + a(n/rad(n)) where rad = A007947 (squarefree kernel).

The programs for A066301, the canonical program `A066301.P9716255010316164515` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066301 has offset 1).

The definition of A066301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066301.P9716255010316164515

`(a(floor(n/∏{p}[n+1, #]))+1)%∏{e}[1+n, #]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066301

/-- `(a(floor(n/∏{p}[n+1, #]))+1)%∏{e}[1+n, #]` -/
def P9716255010316164515.Spec : Prop :=
  ∀ n, (P9716255010316164515.a n : ℤ) = A066301 (n + 1)

theorem P9716255010316164515.correct : P9716255010316164515.Spec := by
  intro n
  simp only [A066301, Nat.add_sub_cancel]

end A066301

/-! ## A066301.P17572319252652111794

`(a((n+1)/∏{p}[n+1, #]-1)+1)%∏{e}[1+n, #]` with `a(0)=0`
-/

namespace A066301.P17572319252652111794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat + 1) % (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A066301.P17572319252652111794

namespace A066301

/-- `(a((n+1)/∏{p}[n+1, #]-1)+1)%∏{e}[1+n, #]` -/
def P17572319252652111794.Spec : Prop :=
  ∀ n, (P17572319252652111794.a n : ℤ) = A066301 (n + 1)

end A066301

/-! ## A066301.P13359272276531156831

`val(A292589(n+1), 2)`
-/

namespace A066301.P13359272276531156831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A292589 (n + 1)).toNat 2

end

end A066301.P13359272276531156831

namespace A066301

/-- `val(A292589(n+1), 2)` -/
def P13359272276531156831.Spec : Prop :=
  ∀ n, (P13359272276531156831.a n : ℤ) = A066301 (n + 1)

end A066301

/-! ## A066301.P3565593921072847576

`row(C(A051903(n+1), 2))`
-/

namespace A066301.P3565593921072847576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A051903 (n + 1)).toNat 2)

end

end A066301.P3565593921072847576

namespace A066301

/-- `row(C(A051903(n+1), 2))` -/
def P3565593921072847576.Spec : Prop :=
  ∀ n, (P3565593921072847576.a n : ℤ) = A066301 (n + 1)

end A066301

/-! ## A066301.P16081888126657543610

`val(ceil(A046523(n+1)/2), 2)`
-/

namespace A066301.P16081888126657543610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌈(A046523 (n + 1) : ℚ) / 2⌉.toNat 2

end

end A066301.P16081888126657543610

namespace A066301

/-- `val(ceil(A046523(n+1)/2), 2)` -/
def P16081888126657543610.Spec : Prop :=
  ∀ n, (P16081888126657543610.a n : ℤ) = A066301 (n + 1)

end A066301

/-! ## A066301.P4984990803019074827

`floor(A188385(n+1)/(n+2))`
-/

namespace A066301.P4984990803019074827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188385 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A066301.P4984990803019074827

namespace A066301

/-- `floor(A188385(n+1)/(n+2))` -/
def P4984990803019074827.Spec : Prop :=
  ∀ n, P4984990803019074827.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P12030741441166545211

`A051903(ceil(sqrt(n²+4)))-1`
-/

namespace A066301.P12030741441166545211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat - 1

end

end A066301.P12030741441166545211

namespace A066301

/-- `A051903(ceil(sqrt(n²+4)))-1` -/
def P12030741441166545211.Spec : Prop :=
  ∀ n, P12030741441166545211.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P11507986671527729750

`A067132((n+1)/∏{p}[n+1, #])-1`
-/

namespace A066301.P11507986671527729750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat - 1

end

end A066301.P11507986671527729750

namespace A066301

/-- `A067132((n+1)/∏{p}[n+1, #])-1` -/
def P11507986671527729750.Spec : Prop :=
  ∀ n, P11507986671527729750.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P7199324729060867688

`A051903(A003557(n+1))`
-/

namespace A066301.P7199324729060867688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003557 (n + 1)).toNat

end

end A066301.P7199324729060867688

namespace A066301

/-- `A051903(A003557(n+1))` -/
def P7199324729060867688.Spec : Prop :=
  ∀ n, P7199324729060867688.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P15820174895041188527

`A061395(A295879(n+1))`
-/

namespace A066301.P15820174895041188527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A295879 (n + 1)).toNat

end

end A066301.P15820174895041188527

namespace A066301

/-- `A061395(A295879(n+1))` -/
def P15820174895041188527.Spec : Prop :=
  ∀ n, P15820174895041188527.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P13675685860227339197

`A051903(A336551(n+1)+1)`
-/

namespace A066301.P13675685860227339197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A336551 (n + 1) + 1).toNat

end

end A066301.P13675685860227339197

namespace A066301

/-- `A051903(A336551(n+1)+1)` -/
def P13675685860227339197.Spec : Prop :=
  ∀ n, P13675685860227339197.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P5281693324286570020

`A072411(A375931(n+1))-1`
-/

namespace A066301.P5281693324286570020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A375931 (n + 1)).toNat - 1

end

end A066301.P5281693324286570020

namespace A066301

/-- `A072411(A375931(n+1))-1` -/
def P5281693324286570020.Spec : Prop :=
  ∀ n, P5281693324286570020.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P10835834160839851960

`val(A078898(A046523(n+1)), 2)`
-/

namespace A066301.P10835834160839851960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078898 (A046523 (n + 1)).toNat).toNat 2

end

end A066301.P10835834160839851960

namespace A066301

/-- `val(A078898(A046523(n+1)), 2)` -/
def P10835834160839851960.Spec : Prop :=
  ∀ n, (P10835834160839851960.a n : ℤ) = A066301 (n + 1)

end A066301

/-! ## A066301.P1955992436430141471

`A057428(n)+A051903(n+1)`
-/

namespace A066301.P1955992436430141471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A051903 (n + 1)

end

end A066301.P1955992436430141471

namespace A066301

/-- `A057428(n)+A051903(n+1)` -/
def P1955992436430141471.Spec : Prop :=
  ∀ n, P1955992436430141471.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P5437869394654854625

`A067132(n+1)-A040000(n)`
-/

namespace A066301.P5437869394654854625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) - A040000 n

end

end A066301.P5437869394654854625

namespace A066301

/-- `A067132(n+1)-A040000(n)` -/
def P5437869394654854625.Spec : Prop :=
  ∀ n, P5437869394654854625.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P6923977911546530109

`A051903(n+1-A010848(n+1))`
-/

namespace A066301.P6923977911546530109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 1 : ℤ) - A010848 (n + 1)).toNat

end

end A066301.P6923977911546530109

namespace A066301

/-- `A051903(n+1-A010848(n+1))` -/
def P6923977911546530109.Spec : Prop :=
  ∀ n, P6923977911546530109.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P894033677810585602

`A372603(n+1)-A107078(n+1)`
-/

namespace A066301.P894033677810585602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372603 (n + 1) - A107078 (n + 1)

end

end A066301.P894033677810585602

namespace A066301

/-- `A372603(n+1)-A107078(n+1)` -/
def P894033677810585602.Spec : Prop :=
  ∀ n, P894033677810585602.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P927220485276863985

`A051903((n+1)/A007947(n+1))`
-/

namespace A066301.P927220485276863985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A066301.P927220485276863985

namespace A066301

/-- `A051903((n+1)/A007947(n+1))` -/
def P927220485276863985.Spec : Prop :=
  ∀ n, P927220485276863985.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P17537104113622429031

`A051903((n+1)/A261969(n+1))`
-/

namespace A066301.P17537104113622429031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A261969 (n + 1) : ℚ))).toNat

end

end A066301.P17537104113622429031

namespace A066301

/-- `A051903((n+1)/A261969(n+1))` -/
def P17537104113622429031.Spec : Prop :=
  ∀ n, P17537104113622429031.a n = A066301 (n + 1)

end A066301

/-! ## A066301.P16460874237221304061

`a((n+1)/∏{p}[n+1, #]-1)+1-char[∏{p}[n, #]-1]` with `a(0)=0`
-/

namespace A066301.P16460874237221304061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat + 1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A066301.P16460874237221304061

namespace A066301

/-- `a((n+1)/∏{p}[n+1, #]-1)+1-char[∏{p}[n, #]-1]` -/
def P16460874237221304061.Spec : Prop :=
  ∀ n, P16460874237221304061.a n = A066301 (n + 1)

end A066301

/-!
# A066302: Reduced partially ordered sets (posets) with n labeled elements.

The programs for A066302, there is no canonical definition to state claims against.
-/

/-! ## A066302.P7107094371841053737

`A004525(or(n, A001927(n)))`
-/

namespace A066302.P7107094371841053737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor (n : ℤ) (A001927 n)).toNat

end

end A066302.P7107094371841053737

/-! ## A066302.P11776972641901790107

`A075317(∑{d}[A059167(n), #])`
-/

namespace A066302.P11776972641901790107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A066302.P11776972641901790107

/-!
# A066303: Number of connected reduced partially ordered sets (posets) with n labeled elements.

The programs for A066303, there is no canonical definition to state claims against.
-/

/-! ## A066303.P7996588683441442917

`A254337(A165025(∏[n+1]))`
-/

namespace A066303.P7996588683441442917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254337 (A165025 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A066303.P7996588683441442917

/-!
# A066304: Reduced partially ordered sets (posets) with n unlabeled elements.

The programs for A066304, there is no canonical definition to state claims against.
-/

/-! ## A066304.P3207515040916204294

`round(5*abs(1-n)!/4)`
-/

namespace A066304.P3207515040916204294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((Nat.factorial |1 - (n : ℤ)|.toNat : ℚ) / 4))

end

end A066304.P3207515040916204294

/-! ## A066304.P9116077624563244079

`round(5/4*dr(1-n)!)`
-/

namespace A066304.P9116077624563244079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℚ) / 4 * (Nat.factorial (SequenceMachineLib.digitalRoot (1 - (n : ℤ))) : ℚ))

end

end A066304.P9116077624563244079

/-! ## A066304.P13165630723987362455

`ogf((-1+4x+4x^2+2x^3+7x^4+10x^5)/(-1+5x))`
-/

namespace A066304.P13165630723987362455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -4, -2, -7, -10] [1, -5] n

end

end A066304.P13165630723987362455

/-!
# A066305: Number of connected reduced partially ordered sets (posets) with n unlabeled elements.

The programs for A066305, there is no canonical definition to state claims against.
-/

/-! ## A066305.P11787489960165557499

`abs(xor(n!, -2))-n`
-/

namespace A066305.P11787489960165557499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.factorial n : ℤ) (-2)| - (n : ℤ)

end

end A066305.P11787489960165557499

/-!
# A066306: Prime numbers such that sum of digits equals product of digits.

The programs for A066306, there is no canonical definition to state claims against.
-/

/-! ## A066306.P5573153213178528892

`A064157(A099260(n))`
-/

namespace A066306.P5573153213178528892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064157 (A099260 n).toNat

end

end A066306.P5573153213178528892

/-! ## A066306.P16575216953482996411

`A064157(comp[A024062(n)])`
-/

namespace A066306.P16575216953482996411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064157 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A066306.P16575216953482996411

/-! ## A066306.P2609838639161911339

`A064157(lt[1, A004092(n)])`
-/

namespace A066306.P2609838639161911339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A066306.P2609838639161911339

/-! ## A066306.P5713320051812448510

`A064157(lt[1, A004086(2*n)])`
-/

namespace A066306.P5713320051812448510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A066306.P5713320051812448510

/-! ## A066306.P15050692233837179285

`A064157(A055642(2*n+3)+n)`
-/

namespace A066306.P15050692233837179285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064157 (A055642 (2 * n + 3) + (n : ℤ)).toNat

end

end A066306.P15050692233837179285

/-!
# A066307: Nonprimes whose sum of digits is equal to its product of digits.

The programs for A066307, there is no canonical definition to state claims against.
-/

/-! ## A066307.P4382776962311381396

`filter[A034710(n+1), A005171(#)]`
-/

namespace A066307.P4382776962311381396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066307.P4382776962311381396

/-! ## A066307.P3147507922236826691

`∩[A018252(n+1), A034710(n+1)]`
-/

namespace A066307.P3147507922236826691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066307.P3147507922236826691

/-! ## A066307.P11337817894631774014

`∩[A034710(n+1), A141468(n+1)]`
-/

namespace A066307.P11337817894631774014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066307.P11337817894631774014

/-! ## A066307.P4665639683698314099

`∩[A034710(n+1), A259315(n+1)]`
-/

namespace A066307.P4665639683698314099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066307.P4665639683698314099

/-! ## A066307.P472586715213359729

`∩[A259315(n+1), A342048(n+1)]`
-/

namespace A066307.P472586715213359729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066307.P472586715213359729

/-!
# A066308: a(n) = (sum of digits of n) * (product of digits of n).

The programs for A066308, the canonical program `A066308.P4607988552790848228` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066308 has offset 1).

The definition of A066308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066308.P4607988552790848228

`∑{digits}[n+1, #]*∏{digits}[n+1, #]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066308

/-- `∑{digits}[n+1, #]*∏{digits}[n+1, #]` -/
def P4607988552790848228.Spec : Prop :=
  ∀ n, (P4607988552790848228.a n : ℤ) = A066308 (n + 1)

theorem P4607988552790848228.correct : P4607988552790848228.Spec := by
  intro n
  simp only [A066308, Nat.add_sub_cancel]

end A066308

/-! ## A066308.P14185916095180896069

`∑{digits}[n+1, #]*A007954(n+1)`
-/

namespace A066308.P14185916095180896069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A007954 (n + 1)

end

end A066308.P14185916095180896069

namespace A066308

/-- `∑{digits}[n+1, #]*A007954(n+1)` -/
def P14185916095180896069.Spec : Prop :=
  ∀ n, P14185916095180896069.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P15465461025171331007

`Δ[A037123(n)]*A007954(n+1)`
-/

namespace A066308.P15465461025171331007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007954 (n + 1)

end

end A066308.P15465461025171331007

namespace A066308

/-- `Δ[A037123(n)]*A007954(n+1)` -/
def P15465461025171331007.Spec : Prop :=
  ∀ n, P15465461025171331007.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P15584601773836667098

`A007953(n+1)*A007954(n+1)`
-/

namespace A066308.P15584601773836667098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A007954 (n + 1)

end

end A066308.P15584601773836667098

namespace A066308

/-- `A007953(n+1)*A007954(n+1)` -/
def P15584601773836667098.Spec : Prop :=
  ∀ n, P15584601773836667098.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P590821778095788982

`lcm(A062078(n+1), A062331(n+1))`
-/

namespace A066308.P590821778095788982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062078 (n + 1)) (A062331 (n + 1))

end

end A066308.P590821778095788982

namespace A066308

/-- `lcm(A062078(n+1), A062331(n+1))` -/
def P590821778095788982.Spec : Prop :=
  ∀ n, (P590821778095788982.a n : ℤ) = A066308 (n + 1)

end A066308

/-! ## A066308.P13505320356836592828

`sqrt(A118881(n+1))*A007954(n+1)`
-/

namespace A066308.P13505320356836592828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n + 1) : ℝ) * (A007954 (n + 1) : ℝ)

end

end A066308.P13505320356836592828

namespace A066308

/-- `sqrt(A118881(n+1))*A007954(n+1)` -/
def P13505320356836592828.Spec : Prop :=
  ∀ n, P13505320356836592828.a n = (A066308 (n + 1) : ℝ)

end A066308

/-! ## A066308.P7836751440020436152

`log2(A329562(n+1))*A007954(n+1)`
-/

namespace A066308.P7836751440020436152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (n + 1) : ℝ) * (A007954 (n + 1) : ℝ)

end

end A066308.P7836751440020436152

namespace A066308

/-- `log2(A329562(n+1))*A007954(n+1)` -/
def P7836751440020436152.Spec : Prop :=
  ∀ n, P7836751440020436152.a n = (A066308 (n + 1) : ℝ)

end A066308

/-! ## A066308.P2548545441149023268

`(A160939(n+1)-n)*A007954(n+1)`
-/

namespace A066308.P2548545441149023268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160939 (n + 1) - (n : ℤ)) * A007954 (n + 1)

end

end A066308.P2548545441149023268

namespace A066308

/-- `(A160939(n+1)-n)*A007954(n+1)` -/
def P2548545441149023268.Spec : Prop :=
  ∀ n, P2548545441149023268.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P4637667295928098354

`(A037123(n+1)-A037123(n))*A007954(n+1)`
-/

namespace A066308.P4637667295928098354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037123 (n + 1) - A037123 n) * A007954 (n + 1)

end

end A066308.P4637667295928098354

namespace A066308

/-- `(A037123(n+1)-A037123(n))*A007954(n+1)` -/
def P4637667295928098354.Spec : Prop :=
  ∀ n, P4637667295928098354.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P12448713736788336482

`(A161351(n+1)-A062028(n+1))*A007953(n+1)`
-/

namespace A066308.P12448713736788336482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161351 (n + 1) - A062028 (n + 1)) * A007953 (n + 1)

end

end A066308.P12448713736788336482

namespace A066308

/-- `(A161351(n+1)-A062028(n+1))*A007953(n+1)` -/
def P12448713736788336482.Spec : Prop :=
  ∀ n, P12448713736788336482.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P1440626989697482009

`A007953(n+1)*A051801(n+1)*A168046(n+1)`
-/

namespace A066308.P1440626989697482009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A051801 (n + 1) * A168046 (n + 1)

end

end A066308.P1440626989697482009

namespace A066308

/-- `A007953(n+1)*A051801(n+1)*A168046(n+1)` -/
def P1440626989697482009.Spec : Prop :=
  ∀ n, P1440626989697482009.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P5029469132349958167

`((A062028(n)+n)%A004277(n)+1)*A007954(n+1)`
-/

namespace A066308.P5029469132349958167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A062028 n + (n : ℤ)) (A004277 n) + 1) * A007954 (n + 1)

end

end A066308.P5029469132349958167

namespace A066308

/-- `((A062028(n)+n)%A004277(n)+1)*A007954(n+1)` -/
def P5029469132349958167.Spec : Prop :=
  ∀ n, P5029469132349958167.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P14552786700311419631

`A007954(n+1)/2*A169805(n+1)`
-/

namespace A066308.P14552786700311419631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007954 (n + 1) : ℚ) / 2 * (A169805 (n + 1) : ℚ)

end

end A066308.P14552786700311419631

namespace A066308

/-- `A007954(n+1)/2*A169805(n+1)` -/
def P14552786700311419631.Spec : Prop :=
  ∀ n, P14552786700311419631.a n = (A066308 (n + 1) : ℚ)

end A066308

/-! ## A066308.P5894164707238752025

`(A062329(n+1)+A007954(n+1))*A007954(n+1)`
-/

namespace A066308.P5894164707238752025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062329 (n + 1) + A007954 (n + 1)) * A007954 (n + 1)

end

end A066308.P5894164707238752025

namespace A066308

/-- `(A062329(n+1)+A007954(n+1))*A007954(n+1)` -/
def P5894164707238752025.Spec : Prop :=
  ∀ n, P5894164707238752025.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P927563873361087507

`(A061762(n+1)-A007953(n+1))*A007953(n+1)`
-/

namespace A066308.P927563873361087507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061762 (n + 1) - A007953 (n + 1)) * A007953 (n + 1)

end

end A066308.P927563873361087507

namespace A066308

/-- `(A061762(n+1)-A007953(n+1))*A007953(n+1)` -/
def P927563873361087507.Spec : Prop :=
  ∀ n, P927563873361087507.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P18104720973688070490

`(A061762(n+1)-A007954(n+1))*A007954(n+1)`
-/

namespace A066308.P18104720973688070490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061762 (n + 1) - A007954 (n + 1)) * A007954 (n + 1)

end

end A066308.P18104720973688070490

namespace A066308

/-- `(A061762(n+1)-A007954(n+1))*A007954(n+1)` -/
def P18104720973688070490.Spec : Prop :=
  ∀ n, P18104720973688070490.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P2664243989622562152

`(A007953(n+1)-A062329(n+1))*A007953(n+1)`
-/

namespace A066308.P2664243989622562152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007953 (n + 1) - A062329 (n + 1)) * A007953 (n + 1)

end

end A066308.P2664243989622562152

namespace A066308

/-- `(A007953(n+1)-A062329(n+1))*A007953(n+1)` -/
def P2664243989622562152.Spec : Prop :=
  ∀ n, P2664243989622562152.a n = A066308 (n + 1)

end A066308

/-! ## A066308.P4646421219531835369

`A007954(n+1)*A061762(A008592(n+1))`
-/

namespace A066308.P4646421219531835369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1) * A061762 (A008592 (n + 1)).toNat

end

end A066308.P4646421219531835369

namespace A066308

/-- `A007954(n+1)*A061762(A008592(n+1))` -/
def P4646421219531835369.Spec : Prop :=
  ∀ n, P4646421219531835369.a n = A066308 (n + 1)

end A066308

/-!
# A066309: Numbers k such that k > (product of digits of k) * (sum of digits of k).

The programs for A066309, the canonical program `A066309.P688434385079463632` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066309 has offset 1).

The definition of A066309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066309.P688434385079463632

`lt[A066308(abs(1-n)+1), n]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A066309

/-- `lt[A066308(abs(1-n)+1), n]` -/
def P688434385079463632.Spec : Prop :=
  ∀ n, (P688434385079463632.a n : ℤ) = A066309 (n + 1)

theorem P688434385079463632.correct : P688434385079463632.Spec := by
  intro n
  simp only [A066309, Nat.add_sub_cancel]

end A066309

/-! ## A066309.P6538823340665939102

`lt[A066308(1+n), n+1]+1`
-/

namespace A066309.P6538823340665939102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066308 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066309.P6538823340665939102

namespace A066309

/-- `lt[A066308(1+n), n+1]+1` -/
def P6538823340665939102.Spec : Prop :=
  ∀ n, (P6538823340665939102.a n : ℤ) = A066309 (n + 1)

end A066309

/-! ## A066309.P13220071391841389937

`lt[A007953(n)*A007954(n), n]`
-/

namespace A066309.P13220071391841389937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066309.P13220071391841389937

namespace A066309

/-- `lt[A007953(n)*A007954(n), n]` -/
def P13220071391841389937.Spec : Prop :=
  ∀ n, (P13220071391841389937.a n : ℤ) = A066309 (n + 1)

end A066309

/-! ## A066309.P16285154369855084277

`lt[sqrt(A118881(n))*A007954(n), n]`
-/

namespace A066309.P16285154369855084277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ) * (A007954 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A066309.P16285154369855084277

namespace A066309

/-- `lt[sqrt(A118881(n))*A007954(n), n]` -/
def P16285154369855084277.Spec : Prop :=
  ∀ n, (P16285154369855084277.a n : ℤ) = A066309 (n + 1)

end A066309

/-! ## A066309.P3442415442326611875

`lt[log2(A329562(n))*A007954(n), n]`
-/

namespace A066309.P3442415442326611875
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) * (A007954 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A066309.P3442415442326611875

namespace A066309

/-- `lt[log2(A329562(n))*A007954(n), n]` -/
def P3442415442326611875.Spec : Prop :=
  ∀ n, (P3442415442326611875.a n : ℤ) = A066309 (n + 1)

end A066309

/-! ## A066309.P2947839240322688600

`lt[(A062028(n)-n)*A007954(n), n]`
-/

namespace A066309.P2947839240322688600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062028 n - (n : ℤ)) * A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066309.P2947839240322688600

namespace A066309

/-- `lt[(A062028(n)-n)*A007954(n), n]` -/
def P2947839240322688600.Spec : Prop :=
  ∀ n, (P2947839240322688600.a n : ℤ) = A066309 (n + 1)

end A066309

/-! ## A066309.P11637916017872776750

`lt[∑{digits}[n, #]*∏{digits}[n, #], n]`
-/

namespace A066309.P11637916017872776750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum * ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A066309.P11637916017872776750

namespace A066309

/-- `lt[∑{digits}[n, #]*∏{digits}[n, #], n]` -/
def P11637916017872776750.Spec : Prop :=
  ∀ n, (P11637916017872776750.a n : ℤ) = A066309 (n + 1)

end A066309

/-! ## A066309.P2487769251758337205

`lt[(A160939(n+1)-(n+1))*A007954(n), n]`
-/

namespace A066309.P2487769251758337205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160939 (n + 1) - (n + 1 : ℤ)) * A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066309.P2487769251758337205

namespace A066309

/-- `lt[(A160939(n+1)-(n+1))*A007954(n), n]` -/
def P2487769251758337205.Spec : Prop :=
  ∀ n, (P2487769251758337205.a n : ℤ) = A066309 (n + 1)

end A066309

/-! ## A066309.P9613297409550331752

`lt[A160939(n+1)%A000027(n+1)*A007954(n), n]`
-/

namespace A066309.P9613297409550331752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160939 (n + 1)) (A000027 (n + 1)) * A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066309.P9613297409550331752

namespace A066309

/-- `lt[A160939(n+1)%A000027(n+1)*A007954(n), n]` -/
def P9613297409550331752.Spec : Prop :=
  ∀ n, (P9613297409550331752.a n : ℤ) = A066309 (n + 1)

end A066309

/-!
# A066310: Numbers k such that k < (product of digits of k) * (sum of digits of k).

The programs for A066310, the canonical program `A066310.P16747959355980266329` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066310 has offset 1).

The definition of A066310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4406 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066310.P16747959355980266329

`lt[n, ∑{digits}[n, #]*∏{digits}[n, #]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066310

/-- `lt[n, ∑{digits}[n, #]*∏{digits}[n, #]]` -/
def P16747959355980266329.Spec : Prop :=
  ∀ n, (P16747959355980266329.a n : ℤ) = A066310 (n + 1)

theorem P16747959355980266329.correct : P16747959355980266329.Spec := by
  intro n
  simp only [A066310, Nat.add_sub_cancel]

end A066310

/-! ## A066310.P13761951204378237537

`lt[n+1, A066308(n+1)]+1`
-/

namespace A066310.P13761951204378237537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066310.P13761951204378237537

namespace A066310

/-- `lt[n+1, A066308(n+1)]+1` -/
def P13761951204378237537.Spec : Prop :=
  ∀ n, (P13761951204378237537.a n : ℤ) = A066310 (n + 1)

end A066310

/-! ## A066310.P17349854655502284617

`lt[n, A007953(n)*A007954(n)]`
-/

namespace A066310.P17349854655502284617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066310.P17349854655502284617

namespace A066310

/-- `lt[n, A007953(n)*A007954(n)]` -/
def P17349854655502284617.Spec : Prop :=
  ∀ n, (P17349854655502284617.a n : ℤ) = A066310 (n + 1)

end A066310

/-! ## A066310.P1286255349382591058

`lt[n, sqrt(A118881(n))*A007954(n)]`
-/

namespace A066310.P1286255349382591058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ) * (A007954 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A066310.P1286255349382591058

namespace A066310

/-- `lt[n, sqrt(A118881(n))*A007954(n)]` -/
def P1286255349382591058.Spec : Prop :=
  ∀ n, (P1286255349382591058.a n : ℤ) = A066310 (n + 1)

end A066310

/-! ## A066310.P3369024473203478269

`lt[n, log2(A329562(n))*A007954(n)]`
-/

namespace A066310.P3369024473203478269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) * (A007954 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A066310.P3369024473203478269

namespace A066310

/-- `lt[n, log2(A329562(n))*A007954(n)]` -/
def P3369024473203478269.Spec : Prop :=
  ∀ n, (P3369024473203478269.a n : ℤ) = A066310 (n + 1)

end A066310

/-! ## A066310.P12809128135419379906

`lt[n, (A062028(n)-n)*A007954(n)]`
-/

namespace A066310.P12809128135419379906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062028 n - (n : ℤ)) * A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066310.P12809128135419379906

namespace A066310

/-- `lt[n, (A062028(n)-n)*A007954(n)]` -/
def P12809128135419379906.Spec : Prop :=
  ∀ n, (P12809128135419379906.a n : ℤ) = A066310 (n + 1)

end A066310

/-! ## A066310.P6430843583406026029

`lt[n, (A160939(n+1)-(n+1))*A007954(n)]`
-/

namespace A066310.P6430843583406026029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160939 (n + 1) - (n + 1 : ℤ)) * A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066310.P6430843583406026029

namespace A066310

/-- `lt[n, (A160939(n+1)-(n+1))*A007954(n)]` -/
def P6430843583406026029.Spec : Prop :=
  ∀ n, (P6430843583406026029.a n : ℤ) = A066310 (n + 1)

end A066310

/-! ## A066310.P16893925488984361675

`lt[A005408(n), A007954(n)*A169805(n)]`
-/

namespace A066310.P16893925488984361675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n * A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066310.P16893925488984361675

namespace A066310

/-- `lt[A005408(n), A007954(n)*A169805(n)]` -/
def P16893925488984361675.Spec : Prop :=
  ∀ n, (P16893925488984361675.a n : ℤ) = A066310 (n + 1)

end A066310

/-! ## A066310.P6669411876630683241

`lt[n, A160939(n+1)%A000027(n+1)*A007954(n)]`
-/

namespace A066310.P6669411876630683241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160939 (n + 1)) (A000027 (n + 1)) * A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066310.P6669411876630683241

namespace A066310

/-- `lt[n, A160939(n+1)%A000027(n+1)*A007954(n)]` -/
def P6669411876630683241.Spec : Prop :=
  ∀ n, (P6669411876630683241.a n : ℤ) = A066310 (n + 1)

end A066310

/-!
# A066311: Numbers whose distinct prime factors are consecutive.

The programs for A066311, the canonical program `A066311.P7988078396173612996` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066311 has offset 1).

The definition of A066311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066311.P5259761760856178900

`A073491(2+n)`
-/

namespace A066311.P5259761760856178900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (2 + n)

end

end A066311.P5259761760856178900

namespace A066311

/-- `A073491(2+n)` -/
def P5259761760856178900.Spec : Prop :=
  ∀ n, P5259761760856178900.a n = A066311 (n + 1)

end A066311

/-! ## A066311.P7988078396173612996

`eq[1, A137794(2+n)]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A066311

/-- `eq[1, A137794(2+n)]+2` -/
def P7988078396173612996.Spec : Prop :=
  ∀ n, (P7988078396173612996.a n : ℤ) = A066311 (n + 1)

theorem P7988078396173612996.correct : P7988078396173612996.Spec := by
  intro n
  simp only [A066311, Nat.add_sub_cancel]

end A066311

/-! ## A066311.P5676033349299065088

`lt[A073490(n+2), 1]+2`
-/

namespace A066311.P5676033349299065088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A066311.P5676033349299065088

namespace A066311

/-- `lt[A073490(n+2), 1]+2` -/
def P5676033349299065088.Spec : Prop :=
  ∀ n, (P5676033349299065088.a n : ℤ) = A066311 (n + 1)

end A066311

/-! ## A066311.P11843167735129759188

`filter[A253784(n+2), A137794(#)]`
-/

namespace A066311.P11843167735129759188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066311.P11843167735129759188

namespace A066311

/-- `filter[A253784(n+2), A137794(#)]` -/
def P11843167735129759188.Spec : Prop :=
  ∀ n, P11843167735129759188.a n = A066311 (n + 1)

end A066311

/-! ## A066311.P1180744194072745795

`filter[A253567(n+2), A137794(#)]`
-/

namespace A066311.P1180744194072745795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066311.P1180744194072745795

namespace A066311

/-- `filter[A253567(n+2), A137794(#)]` -/
def P1180744194072745795.Spec : Prop :=
  ∀ n, P1180744194072745795.a n = A066311 (n + 1)

end A066311

/-! ## A066311.P7096447973196943120

`record[A074044(n+2)]`
-/

namespace A066311.P7096447973196943120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066311.P7096447973196943120

namespace A066311

/-- `record[A074044(n+2)]` -/
def P7096447973196943120.Spec : Prop :=
  ∀ n, P7096447973196943120.a n = A066311 (n + 1)

end A066311

/-! ## A066311.P7290336107145965368

`eq[1, A287170(1+n)]+1`
-/

namespace A066311.P7290336107145965368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066311.P7290336107145965368

namespace A066311

/-- `eq[1, A287170(1+n)]+1` -/
def P7290336107145965368.Spec : Prop :=
  ∀ n, (P7290336107145965368.a n : ℤ) = A066311 (n + 1)

end A066311

/-! ## A066311.P10655245650438186553

`lt[A286470(n+2), 2]+2`
-/

namespace A066311.P10655245650438186553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A066311.P10655245650438186553

namespace A066311

/-- `lt[A286470(n+2), 2]+2` -/
def P10655245650438186553.Spec : Prop :=
  ∀ n, (P10655245650438186553.a n : ℤ) = A066311 (n + 1)

end A066311

/-! ## A066311.P10381099059543282718

`record[(n+2)/A287170(n+2)]`
-/

namespace A066311.P10381099059543282718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A287170 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066311.P10381099059543282718

namespace A066311

/-- `record[(n+2)/A287170(n+2)]` -/
def P10381099059543282718.Spec : Prop :=
  ∀ n, P10381099059543282718.a n = (A066311 (n + 1) : ℚ)

end A066311

/-! ## A066311.P3284338004605613886

`eq[1, A287170(A028310(n))]`
-/

namespace A066311.P3284338004605613886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066311.P3284338004605613886

namespace A066311

/-- `eq[1, A287170(A028310(n))]` -/
def P3284338004605613886.Spec : Prop :=
  ∀ n, (P3284338004605613886.a n : ℤ) = A066311 (n + 1)

end A066311

/-! ## A066311.P1018710336192824954

`A020725(eq[1, A287170(n+1)])`
-/

namespace A066311.P1018710336192824954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066311.P1018710336192824954

namespace A066311

/-- `A020725(eq[1, A287170(n+1)])` -/
def P1018710336192824954.Spec : Prop :=
  ∀ n, P1018710336192824954.a n = A066311 (n + 1)

end A066311

/-! ## A066311.P8415281824581907841

`eq[A000007(n), A073490(n+1)]+1`
-/

namespace A066311.P8415281824581907841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066311.P8415281824581907841

namespace A066311

/-- `eq[A000007(n), A073490(n+1)]+1` -/
def P8415281824581907841.Spec : Prop :=
  ∀ n, (P8415281824581907841.a n : ℤ) = A066311 (n + 1)

end A066311

/-! ## A066311.P6366994565316794379

`filter[A038459(n+2), A137794(#)]`
-/

namespace A066311.P6366994565316794379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066311.P6366994565316794379

namespace A066311

/-- `filter[A038459(n+2), A137794(#)]` -/
def P6366994565316794379.Spec : Prop :=
  ∀ n, P6366994565316794379.a n = A066311 (n + 1)

end A066311

/-! ## A066311.P3515906210643426001

`filter[A173474(n+2), A137794(#)]`
-/

namespace A066311.P3515906210643426001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066311.P3515906210643426001

namespace A066311

/-- `filter[A173474(n+2), A137794(#)]` -/
def P3515906210643426001.Spec : Prop :=
  ∀ n, P3515906210643426001.a n = A066311 (n + 1)

end A066311

/-! ## A066311.P14695760304186171200

`eq[A073490(A233583(n+1))+n, A233583(n+1)]`
-/

namespace A066311.P14695760304186171200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A233583 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066311.P14695760304186171200

namespace A066311

/-- `eq[A073490(A233583(n+1))+n, A233583(n+1)]` -/
def P14695760304186171200.Spec : Prop :=
  ∀ n, (P14695760304186171200.a n : ℤ) = A066311 (n + 1)

end A066311

/-! ## A066311.P9165836254182759125

`eq[1, A137795(n+2)]+2`
-/

namespace A066311.P9165836254182759125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066311.P9165836254182759125

namespace A066311

/-- `eq[1, A137795(n+2)]+2` -/
def P9165836254182759125.Spec : Prop :=
  ∀ n, (P9165836254182759125.a n : ℤ) = A066311 (n + 1)

end A066311

/-!
# A066312: Numbers, other than prime powers, whose distinct prime factors are consecutive primes.

The programs for A066312, the canonical program `A066312.P8043985147145826871` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066312 has offset 1).

The definition of A066312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066312.P6581190255971771667

`filter[A066311(n+1), A296210(#)]`
-/

namespace A066312.P6581190255971771667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A066312.P6581190255971771667

namespace A066312

/-- `filter[A066311(n+1), A296210(#)]` -/
def P6581190255971771667.Spec : Prop :=
  ∀ n, P6581190255971771667.a n = A066312 (n + 1)

end A066312

/-! ## A066312.P10585416586918052010

`filter[A073491(n+1), A296210(#)]`
-/

namespace A066312.P10585416586918052010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A066312.P10585416586918052010

namespace A066312

/-- `filter[A073491(n+1), A296210(#)]` -/
def P10585416586918052010.Spec : Prop :=
  ∀ n, P10585416586918052010.a n = A066312 (n + 1)

end A066312

/-! ## A066312.P8043985147145826871

`filter[A378884(n+1), A137794(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A066312

/-- `filter[A378884(n+1), A137794(#)]` -/
def P8043985147145826871.Spec : Prop :=
  ∀ n, P8043985147145826871.a n = A066312 (n + 1)

theorem P8043985147145826871.correct : P8043985147145826871.Spec := by
  intro n
  simp only [A066312, Nat.add_sub_cancel]

end A066312

/-! ## A066312.P472616904516631327

`∩[A066311(n+1), A378884(n+1)]`
-/

namespace A066312.P472616904516631327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P472616904516631327

namespace A066312

/-- `∩[A066311(n+1), A378884(n+1)]` -/
def P472616904516631327.Spec : Prop :=
  ∀ n, (P472616904516631327.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P491104987608929563

`∩[A073491(n+1), A378884(n+1)]`
-/

namespace A066312.P491104987608929563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P491104987608929563

namespace A066312

/-- `∩[A073491(n+1), A378884(n+1)]` -/
def P491104987608929563.Spec : Prop :=
  ∀ n, (P491104987608929563.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P10814836283438246684

`filter[A104210(n+1), A137794(#)]`
-/

namespace A066312.P10814836283438246684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066312.P10814836283438246684

namespace A066312

/-- `filter[A104210(n+1), A137794(#)]` -/
def P10814836283438246684.Spec : Prop :=
  ∀ n, P10814836283438246684.a n = A066312 (n + 1)

end A066312

/-! ## A066312.P17738975654488810452

`∩[A066311(n+1), A104210(n+1)]`
-/

namespace A066312.P17738975654488810452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P17738975654488810452

namespace A066312

/-- `∩[A066311(n+1), A104210(n+1)]` -/
def P17738975654488810452.Spec : Prop :=
  ∀ n, (P17738975654488810452.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P16137942521092982996

`∩[A073491(n+1), A104210(n+1)]`
-/

namespace A066312.P16137942521092982996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P16137942521092982996

namespace A066312

/-- `∩[A073491(n+1), A104210(n+1)]` -/
def P16137942521092982996.Spec : Prop :=
  ∀ n, (P16137942521092982996.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P8320537303855684155

`filter[A397805(n+1), A137794(#)]`
-/

namespace A066312.P8320537303855684155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066312.P8320537303855684155

namespace A066312

/-- `filter[A397805(n+1), A137794(#)]` -/
def P8320537303855684155.Spec : Prop :=
  ∀ n, P8320537303855684155.a n = A066312 (n + 1)

end A066312

/-! ## A066312.P16535148030951563524

`∩[A066311(n+1), A397805(n+1)]`
-/

namespace A066312.P16535148030951563524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P16535148030951563524

namespace A066312

/-- `∩[A066311(n+1), A397805(n+1)]` -/
def P16535148030951563524.Spec : Prop :=
  ∀ n, (P16535148030951563524.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P18176683033123300570

`∩[A073491(n+1), A397805(n+1)]`
-/

namespace A066312.P18176683033123300570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P18176683033123300570

namespace A066312

/-- `∩[A073491(n+1), A397805(n+1)]` -/
def P18176683033123300570.Spec : Prop :=
  ∀ n, (P18176683033123300570.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P16093614775434391468

`filter[A005279(n+1), A137794(#)]`
-/

namespace A066312.P16093614775434391468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066312.P16093614775434391468

namespace A066312

/-- `filter[A005279(n+1), A137794(#)]` -/
def P16093614775434391468.Spec : Prop :=
  ∀ n, P16093614775434391468.a n = A066312 (n + 1)

end A066312

/-! ## A066312.P8317174272126076203

`∩[A005279(n+1), A066311(n+1)]`
-/

namespace A066312.P8317174272126076203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P8317174272126076203

namespace A066312

/-- `∩[A005279(n+1), A066311(n+1)]` -/
def P8317174272126076203.Spec : Prop :=
  ∀ n, (P8317174272126076203.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P457047118796487873

`∩[A005279(n+1), A073491(n+1)]`
-/

namespace A066312.P457047118796487873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P457047118796487873

namespace A066312

/-- `∩[A005279(n+1), A073491(n+1)]` -/
def P457047118796487873.Spec : Prop :=
  ∀ n, (P457047118796487873.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P6360731434291934728

`filter[A092671(n+2), A137794(#)]`
-/

namespace A066312.P6360731434291934728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066312.P6360731434291934728

namespace A066312

/-- `filter[A092671(n+2), A137794(#)]` -/
def P6360731434291934728.Spec : Prop :=
  ∀ n, P6360731434291934728.a n = A066312 (n + 1)

end A066312

/-! ## A066312.P3155102978696094264

`∩[A066311(n+1), A092671(n+1)]`
-/

namespace A066312.P3155102978696094264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P3155102978696094264

namespace A066312

/-- `∩[A066311(n+1), A092671(n+1)]` -/
def P3155102978696094264.Spec : Prop :=
  ∀ n, (P3155102978696094264.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P6269386618039985032

`filter[A119313(n+1), A137794(#)]`
-/

namespace A066312.P6269386618039985032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066312.P6269386618039985032

namespace A066312

/-- `filter[A119313(n+1), A137794(#)]` -/
def P6269386618039985032.Spec : Prop :=
  ∀ n, P6269386618039985032.a n = A066312 (n + 1)

end A066312

/-! ## A066312.P4773607978609815187

`∩[A066311(n+1), A119313(n+1)]`
-/

namespace A066312.P4773607978609815187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P4773607978609815187

namespace A066312

/-- `∩[A066311(n+1), A119313(n+1)]` -/
def P4773607978609815187.Spec : Prop :=
  ∀ n, (P4773607978609815187.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P17420102194936713816

`∩[A073491(n+1), A119313(n+1)]`
-/

namespace A066312.P17420102194936713816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066312.P17420102194936713816

namespace A066312

/-- `∩[A073491(n+1), A119313(n+1)]` -/
def P17420102194936713816.Spec : Prop :=
  ∀ n, (P17420102194936713816.a n : ℤ) = A066312 (n + 1)

end A066312

/-! ## A066312.P8081908733535232601

`filter[A024619(n+1), A137794(#)]`
-/

namespace A066312.P8081908733535232601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A066312.P8081908733535232601

namespace A066312

/-- `filter[A024619(n+1), A137794(#)]` -/
def P8081908733535232601.Spec : Prop :=
  ∀ n, P8081908733535232601.a n = A066312 (n + 1)

end A066312

/-!
# A066313: Number of aperiodic necklaces with n red or blue beads such that two necklaces are equivalent under the operation of simultaneously turning the necklace over and switching the two colors.

The programs for A066313, the canonical program `A066313.P13030330147732847872` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066313 has offset 1).

The definition of A066313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066313.P5622531948334478664

`A001371(n+1)-A056476(n+1)`
-/

namespace A066313.P5622531948334478664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (n + 1) - A056476 (n + 1)

end

end A066313.P5622531948334478664

namespace A066313

/-- `A001371(n+1)-A056476(n+1)` -/
def P5622531948334478664.Spec : Prop :=
  ∀ n, P5622531948334478664.a n = A066313 (n + 1)

end A066313

/-! ## A066313.P17523154146466278869

`A053656(n+1)-A115121(n+1)`
-/

namespace A066313.P17523154146466278869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053656 (n + 1) - A115121 (n + 1)

end

end A066313.P17523154146466278869

namespace A066313

/-- `A053656(n+1)-A115121(n+1)` -/
def P17523154146466278869.Spec : Prop :=
  ∀ n, P17523154146466278869.a n = A066313 (n + 1)

theorem P17523154146466278869.correct : P17523154146466278869.Spec := by
  intro n
  simp only [A066313, Nat.add_sub_cancel, A066313.P17523154146466278869.a, A066313.P13030330147732847872.f1, A066313.P13030330147732847872.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A053656, A053656.P15777476116109761211.a, A115121, A115121.P9466641686521263943.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066313

/-! ## A066313.P13030330147732847872

`∑{d}[n+1, A008683(#)*A053656((n+1)/#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066313

/-- `∑{d}[n+1, A008683(#)*A053656((n+1)/#)]` -/
def P13030330147732847872.Spec : Prop :=
  ∀ n, P13030330147732847872.a n = A066313 (n + 1)

theorem P13030330147732847872.correct : P13030330147732847872.Spec := by
  intro n
  simp only [A066313, Nat.add_sub_cancel]

end A066313

/-! ## A066313.P3031241018801998116

`A000029(n+1)-A016116(n)-A115121(n+1)`
-/

namespace A066313.P3031241018801998116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - A016116 n - A115121 (n + 1)

end

end A066313.P3031241018801998116

namespace A066313

/-- `A000029(n+1)-A016116(n)-A115121(n+1)` -/
def P3031241018801998116.Spec : Prop :=
  ∀ n, P3031241018801998116.a n = A066313 (n + 1)

theorem P3031241018801998116.correct : P3031241018801998116.Spec := by
  intro n
  simp only [A066313, Nat.add_sub_cancel, A066313.P3031241018801998116.a, A066313.P13030330147732847872.f1, A066313.P13030330147732847872.a, A000029, A000029.P13945956715463538310.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A016116, A016116.P661627231399665482.a, A053656, A053656.P15777476116109761211.a, A115121, A115121.P9466641686521263943.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066313

/-! ## A066313.P2929127791983451881

`A053656(n+1)+A057428(n)*A115121(n+1)`
-/

namespace A066313.P2929127791983451881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053656 (n + 1) + A057428 n * A115121 (n + 1)

end

end A066313.P2929127791983451881

namespace A066313

/-- `A053656(n+1)+A057428(n)*A115121(n+1)` -/
def P2929127791983451881.Spec : Prop :=
  ∀ n, P2929127791983451881.a n = A066313 (n + 1)

end A066313

/-! ## A066313.P12395088572504331658

`A053656(n+1)-∑{d}[n+1, A053656(#)*A157658((n+1)/#)]`
-/

namespace A066313.P12395088572504331658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053656 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A053656 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066313.P12395088572504331658

namespace A066313

/-- `A053656(n+1)-∑{d}[n+1, A053656(#)*A157658((n+1)/#)]` -/
def P12395088572504331658.Spec : Prop :=
  ∀ n, P12395088572504331658.a n = A066313 (n + 1)

end A066313

/-! ## A066313.P9313743115809932706

`A001037(n+1)-A066314(n+1)`
-/

namespace A066313.P9313743115809932706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A066314 (n + 1)

end

end A066313.P9313743115809932706

namespace A066313

/-- `A001037(n+1)-A066314(n+1)` -/
def P9313743115809932706.Spec : Prop :=
  ∀ n, P9313743115809932706.a n = A066313 (n + 1)

theorem P9313743115809932706.correct : P9313743115809932706.Spec := by
  intro n
  simp only [A066313, Nat.add_sub_cancel, A066313.P9313743115809932706.a, A066313.P13030330147732847872.f1, A066313.P13030330147732847872.a, A001037, A001037.P3072020637183991904.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A053656, A053656.P15777476116109761211.a, A066314, A066314.P5354946010482449579.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A045664, A045664.P10163269847227854319.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066313

/-! ## A066313.P6851849974969961421

`A000031(n+1)-(A066656(n+1)+A066314(n+1))`
-/

namespace A066313.P6851849974969961421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A066656 (n + 1) + A066314 (n + 1))

end

end A066313.P6851849974969961421

namespace A066313

/-- `A000031(n+1)-(A066656(n+1)+A066314(n+1))` -/
def P6851849974969961421.Spec : Prop :=
  ∀ n, P6851849974969961421.a n = A066313 (n + 1)

theorem P6851849974969961421.correct : P6851849974969961421.Spec := by
  intro n
  simp only [A066313, Nat.add_sub_cancel, A066313.P6851849974969961421.a, A066313.P13030330147732847872.f1, A066313.P13030330147732847872.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A053656, A053656.P15777476116109761211.a, A066314, A066314.P5354946010482449579.a, A066656, A066656.P10645985252166079910.a, A000029, A000029.P13945956715463538310.a, A001037, A001037.P3072020637183991904.a, A016116, A016116.P661627231399665482.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A029744, A029744.P1115822501332250061.a, A045664, A045664.P10163269847227854319.a, A059076, A059076.P1559801332482280449.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066313

/-!
# A066314: Number of identity (asymmetric) bracelets (or necklaces) with n red or blue beads such that the beads switch colors when bracelet is turned over.

The programs for A066314, the canonical program `A066314.P5354946010482449579` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066314 has offset 1).

The definition of A066314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, A066313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066314.P5354946010482449579

`A001037(n+1)-A066313(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A066314

/-- `A001037(n+1)-A066313(n+1)` -/
def P5354946010482449579.Spec : Prop :=
  ∀ n, P5354946010482449579.a n = A066314 (n + 1)

theorem P5354946010482449579.correct : P5354946010482449579.Spec := by
  intro n
  simp only [A066314, Nat.add_sub_cancel]

end A066314

/-! ## A066314.P16150375346339377749

`A001371(n+1)-A179781(n+1)`
-/

namespace A066314.P16150375346339377749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (n + 1) - A179781 (n + 1)

end

end A066314.P16150375346339377749

namespace A066314

/-- `A001371(n+1)-A179781(n+1)` -/
def P16150375346339377749.Spec : Prop :=
  ∀ n, P16150375346339377749.a n = A066314 (n + 1)

end A066314

/-! ## A066314.P16935435732836749543

`A000031(n+1)-(A066656(n+1)+A066313(n+1))`
-/

namespace A066314.P16935435732836749543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A066656 (n + 1) + A066313 (n + 1))

end

end A066314.P16935435732836749543

namespace A066314

/-- `A000031(n+1)-(A066656(n+1)+A066313(n+1))` -/
def P16935435732836749543.Spec : Prop :=
  ∀ n, P16935435732836749543.a n = A066314 (n + 1)

theorem P16935435732836749543.correct : P16935435732836749543.Spec := by
  intro n
  simp only [A066314, Nat.add_sub_cancel, A066314.P16935435732836749543.a, A066314.P5354946010482449579.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A001037, A001037.P3072020637183991904.a, A066313, A066313.P13030330147732847872.f1, A066313.P13030330147732847872.a, A066656, A066656.P10645985252166079910.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A045664, A045664.P10163269847227854319.a, A053656, A053656.P15777476116109761211.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066314

/-! ## A066314.P7754339859957137415

`Δ[A173270(n)]-A066313(n+1)`
-/

namespace A066314.P7754339859957137415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A066313 (n + 1)

end

end A066314.P7754339859957137415

namespace A066314

/-- `Δ[A173270(n)]-A066313(n+1)` -/
def P7754339859957137415.Spec : Prop :=
  ∀ n, P7754339859957137415.a n = A066314 (n + 1)

end A066314

/-! ## A066314.P3614048132538511762

`A123223(∑[n+1])-A066313(n+1)`
-/

namespace A066314.P3614048132538511762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (∑ j ∈ Finset.range (n + 1), f1 j) - A066313 (n + 1)

end

end A066314.P3614048132538511762

namespace A066314

/-- `A123223(∑[n+1])-A066313(n+1)` -/
def P3614048132538511762.Spec : Prop :=
  ∀ n, P3614048132538511762.a n = A066314 (n + 1)

end A066314

/-!
# A066315: Number of aperiodic bracelets (or necklaces) with n red and blue beads such that the beads switch colors when bracelet is turned over.

The programs for A066315, there is no canonical definition to state claims against.
-/

/-! ## A066315.P5914072694773406907

`A006080(n+2)-A115123(n+1)`
-/

namespace A066315.P5914072694773406907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006080 (n + 2) - A115123 (n + 1)

end

end A066315.P5914072694773406907

/-! ## A066315.P10554112813035652565

`(A022553(n+1)+A000740(n+1))/2`
-/

namespace A066315.P10554112813035652565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022553 (n + 1) + A000740 (n + 1) : ℚ) / 2

end

end A066315.P10554112813035652565

/-! ## A066315.P7254404581194425419

`A046108(A056334(n+1))`
-/

namespace A066315.P7254404581194425419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A056334 (n + 1)).toNat

end

end A066315.P7254404581194425419

/-!
# A066316: Number of identity (asymmetric) bracelets (or necklaces) with n red and blue beads such that the beads switch colors when bracelet is turned over.

The programs for A066316, there is no canonical definition to state claims against.
-/

/-! ## A066316.P5590992156991870533

`A022553(n+4)-A066315(n+4)`
-/

namespace A066316.P5590992156991870533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (n + 4) - A066315 (n + 4)

end

end A066316.P5590992156991870533

/-! ## A066316.P7685614078923592729

`A066317(n+5)-1`
-/

namespace A066316.P7685614078923592729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066317 (n + 5) - 1

end

end A066316.P7685614078923592729

/-! ## A066316.P15083938615617393047

`record[A066317(n+1)+A057428(n)]`
-/

namespace A066316.P15083938615617393047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066317 (n + 1) + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066316.P15083938615617393047

/-! ## A066316.P10232496430857681841

`A260196(n+2)+A066317(n+5)`
-/

namespace A066316.P10232496430857681841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A066317 (n + 5)

end

end A066316.P10232496430857681841

/-! ## A066316.P9998610260289159552

`A309873(A016825(n))+A066317(n+5)`
-/

namespace A066316.P9998610260289159552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n).toNat + A066317 (n + 5)

end

end A066316.P9998610260289159552

/-!
# A066318: Number of necklaces with n labeled beads of 2 colors.

The programs for A066318, the canonical program `A066318.P3631376829345142844` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066318 has offset 1).

The definition of A066318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066318.P2434919408208107555

`2^(n+1)*n!`
-/

namespace A066318.P2434919408208107555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * Nat.factorial n

end

end A066318.P2434919408208107555

namespace A066318

/-- `2^(n+1)*n!` -/
def P2434919408208107555.Spec : Prop :=
  ∀ n, (P2434919408208107555.a n : ℤ) = A066318 (n + 1)

theorem P2434919408208107555.correct : P2434919408208107555.Spec := by
  intro n
  simp only [A066318, Nat.add_sub_cancel, A066318.P2434919408208107555.a, A066318.P3631376829345142844.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066318

/-! ## A066318.P1444741470379933211

`2*n*a(n-1)` with `a(0)=2`
-/

namespace A066318.P1444741470379933211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * n * a (n - 1)

end

end A066318.P1444741470379933211

namespace A066318

/-- `2*n*a(n-1)` -/
def P1444741470379933211.Spec : Prop :=
  ∀ n, (P1444741470379933211.a n : ℤ) = A066318 (n + 1)

end A066318

/-! ## A066318.P3631376829345142844

`2*A000165(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A066318

/-- `2*A000165(n)` -/
def P3631376829345142844.Spec : Prop :=
  ∀ n, P3631376829345142844.a n = A066318 (n + 1)

theorem P3631376829345142844.correct : P3631376829345142844.Spec := by
  intro n
  simp only [A066318, Nat.add_sub_cancel]

end A066318

/-! ## A066318.P3363041089310689516

`2*A006882(2*n)`
-/

namespace A066318.P3363041089310689516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006882 (2 * n)

end

end A066318.P3363041089310689516

namespace A066318

/-- `2*A006882(2*n)` -/
def P3363041089310689516.Spec : Prop :=
  ∀ n, P3363041089310689516.a n = A066318 (n + 1)

end A066318

/-! ## A066318.P326071719999132721

`2*2^n*n!`
-/

namespace A066318.P326071719999132721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 ^ n * Nat.factorial n)

end

end A066318.P326071719999132721

namespace A066318

/-- `2*2^n*n!` -/
def P326071719999132721.Spec : Prop :=
  ∀ n, (P326071719999132721.a n : ℤ) = A066318 (n + 1)

theorem P326071719999132721.correct : P326071719999132721.Spec := by
  intro n
  simp only [A066318, Nat.add_sub_cancel, A066318.P326071719999132721.a, A066318.P3631376829345142844.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066318

/-! ## A066318.P7994184843998365995

`∏[2*round(1/acot(n))]`
-/

namespace A066318.P7994184843998365995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066318.P7994184843998365995

namespace A066318

/-- `∏[2*round(1/acot(n))]` -/
def P7994184843998365995.Spec : Prop :=
  ∀ n, P7994184843998365995.a n = A066318 (n + 1)

end A066318

/-! ## A066318.P15741133819102611055

`∏[lcm(2, floor(2/acot(n)))]`
-/

namespace A066318.P15741133819102611055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066318.P15741133819102611055

namespace A066318

/-- `∏[lcm(2, floor(2/acot(n)))]` -/
def P15741133819102611055.Spec : Prop :=
  ∀ n, (P15741133819102611055.a n : ℤ) = A066318 (n + 1)

end A066318

/-! ## A066318.P14171677430262900653

`∏[a(n-1)+2]` with `a(0)=2, a(1)=2`
-/

namespace A066318.P14171677430262900653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066318.P14171677430262900653

namespace A066318

/-- `∏[a(n-1)+2]` -/
def P14171677430262900653.Spec : Prop :=
  ∀ n, (P14171677430262900653.a n : ℤ) = A066318 (n + 1)

end A066318

/-! ## A066318.P1611274448040615655

`2*a(n-1)*n` with `a(0)=2`
-/

namespace A066318.P1611274448040615655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) * n

end

end A066318.P1611274448040615655

namespace A066318

/-- `2*a(n-1)*n` -/
def P1611274448040615655.Spec : Prop :=
  ∀ n, (P1611274448040615655.a n : ℤ) = A066318 (n + 1)

end A066318

/-! ## A066318.P9862780196496202881

`∏[abs(1-2*n)+1]`
-/

namespace A066318.P9862780196496202881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066318.P9862780196496202881

namespace A066318

/-- `∏[abs(1-2*n)+1]` -/
def P9862780196496202881.Spec : Prop :=
  ∀ n, P9862780196496202881.a n = A066318 (n + 1)

end A066318

/-!
# A066319: A labeled structure simultaneously a tree and a cycle.

The programs for A066319, the canonical program `A066319.P3236432404801211674` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066319 has offset 1).

The definition of A066319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066319.P3236432404801211674

`(n+1)^(n-1)*n!`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066319

/-- `(n+1)^(n-1)*n!` -/
def P3236432404801211674.Spec : Prop :=
  ∀ n, P3236432404801211674.a n = (A066319 (n + 1) : ℚ)

end A066319

/-! ## A066319.P2142761561225747857

`n!/(n+1)^(1-n)`
-/

namespace A066319.P2142761561225747857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (n + 1 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A066319.P2142761561225747857

namespace A066319

/-- `n!/(n+1)^(1-n)` -/
def P2142761561225747857.Spec : Prop :=
  ∀ n, P2142761561225747857.a n = (A066319 (n + 1) : ℚ)

end A066319

/-! ## A066319.P5171879930707544620

`(n+1)^n*n!/(n+1)`
-/

namespace A066319.P5171879930707544620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n * Nat.factorial n : ℚ) / (n + 1 : ℚ)

end

end A066319.P5171879930707544620

namespace A066319

/-- `(n+1)^n*n!/(n+1)` -/
def P5171879930707544620.Spec : Prop :=
  ∀ n, P5171879930707544620.a n = (A066319 (n + 1) : ℚ)

end A066319

/-! ## A066319.P14791298673457800160

`n!*A000272(n+1)`
-/

namespace A066319.P14791298673457800160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000272 (n + 1)

end

end A066319.P14791298673457800160

namespace A066319

/-- `n!*A000272(n+1)` -/
def P14791298673457800160.Spec : Prop :=
  ∀ n, P14791298673457800160.a n = A066319 (n + 1)

end A066319

/-! ## A066319.P1778893275173700507

`A152684(n+1)/(n+1)`
-/

namespace A066319.P1778893275173700507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152684 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A066319.P1778893275173700507

namespace A066319

/-- `A152684(n+1)/(n+1)` -/
def P1778893275173700507.Spec : Prop :=
  ∀ n, P1778893275173700507.a n = (A066319 (n + 1) : ℚ)

end A066319

/-!
# A066320: Triangle read by rows: T(n, k) = binomial(n, k)*k^k*(n-k)^(n-k-1) k=0..n-1.

The programs for A066320, the canonical program `A066320.P13599089596113121075` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066320 has offset 1).

The definition of A066320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066320.P13599089596113121075

`C(row(n)+1, col(n))*col(n)^col(n)*(row(n)+1-col(n))^(row(n)+1-col(n)-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066320

/-- `C(row(n)+1, col(n))*col(n)^col(n)*(row(n)+1-col(n))^(row(n)+1-col(n)-1)` -/
def P13599089596113121075.Spec : Prop :=
  ∀ n, P13599089596113121075.a n = (A066320 (n + 1) : ℚ)

end A066320

/-! ## A066320.P4006103882944155795

`A244137(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A066320.P4006103882944155795
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A066320.P4006103882944155795

namespace A066320

/-- `A244137(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)` -/
def P4006103882944155795.Spec : Prop :=
  ∀ n, P4006103882944155795.a n = A066320 (n + 1)

end A066320

/-! ## A066320.P1725969357367333822

`A000312(A002262(n))*A088956(n)*A002024(n+1)`
-/

namespace A066320.P1725969357367333822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002262 n).toNat * A088956 n * A002024 (n + 1)

end

end A066320.P1725969357367333822

namespace A066320

/-- `A000312(A002262(n))*A088956(n)*A002024(n+1)` -/
def P1725969357367333822.Spec : Prop :=
  ∀ n, P1725969357367333822.a n = A066320 (n + 1)

end A066320

/-! ## A066320.P10228903698635147812

`A088956(n)*A174551(A112367(n))*A002024(n+1)`
-/

namespace A066320.P10228903698635147812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088956 n * A174551 (A112367 n).toNat * A002024 (n + 1)

end

end A066320.P10228903698635147812

namespace A066320

/-- `A088956(n)*A174551(A112367(n))*A002024(n+1)` -/
def P10228903698635147812.Spec : Prop :=
  ∀ n, P10228903698635147812.a n = A066320 (n + 1)

end A066320

/-! ## A066320.P3637127161111105977

`∑[char[∑[n]]]*A185390(n)`
-/

namespace A066320.P3637127161111105977
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A185390 n

end

end A066320.P3637127161111105977

namespace A066320

/-- `∑[char[∑[n]]]*A185390(n)` -/
def P3637127161111105977.Spec : Prop :=
  ∀ n, P3637127161111105977.a n = A066320 (n + 1)

end A066320

/-! ## A066320.P4657840503360951031

`A185390(n)*A002024(n+1)`
-/

namespace A066320.P4657840503360951031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185390 n * A002024 (n + 1)

end

end A066320.P4657840503360951031

namespace A066320

/-- `A185390(n)*A002024(n+1)` -/
def P4657840503360951031.Spec : Prop :=
  ∀ n, P4657840503360951031.a n = A066320 (n + 1)

end A066320

/-! ## A066320.P6131375634407213676

`A185390(n)*A339276(A164897(n))`
-/

namespace A066320.P6131375634407213676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185390 n * A339276 (A164897 n).toNat

end

end A066320.P6131375634407213676

namespace A066320

/-- `A185390(n)*A339276(A164897(n))` -/
def P6131375634407213676.Spec : Prop :=
  ∀ n, P6131375634407213676.a n = A066320 (n + 1)

end A066320

/-!
# A066321: Binary representation of base-(i-1) expansion of n: replace i-1 with 2 in base-(i-1) expansion of n.

The programs for A066321, there is no canonical definition to state claims against.
-/

/-! ## A066321.P9805861548385735531

`A256441(4*n)/16`
-/

namespace A066321.P9805861548385735531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256441 (4 * n) : ℚ) / 16

end

end A066321.P9805861548385735531

/-! ## A066321.P5517731317362691943

`A340669(A256441(n))`
-/

namespace A066321.P5517731317362691943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340669 (A256441 n).toNat

end

end A066321.P5517731317362691943

/-! ## A066321.P15973174282690062376

`A004468(2*A177505(n))`
-/

namespace A066321.P15973174282690062376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (2 * A177505 n).toNat

end

end A066321.P15973174282690062376

/-! ## A066321.P10843911865805485239

`A004468(A005408(A177505(n))-1)`
-/

namespace A066321.P10843911865805485239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A005408 (A177505 n).toNat - 1).toNat

end

end A066321.P10843911865805485239

/-! ## A066321.P542430414128672072

`A004468(A177505(n)+A177505(n))`
-/

namespace A066321.P542430414128672072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A177505 n + A177505 n).toNat

end

end A066321.P542430414128672072

/-!
# A066323: Number of one bits in binary representation of base i-1 expansion of n (where i = sqrt(-1)).

The programs for A066323, there is no canonical definition to state claims against.
-/

/-! ## A066323.P6944819159844688848

`A007953(A007608(n))`
-/

namespace A066323.P6944819159844688848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007608 n).toNat

end

end A066323.P6944819159844688848

/-! ## A066323.P6184337641475228695

`A000120(A066321(n))`
-/

namespace A066323.P6184337641475228695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A066321 n).toNat

end

end A066323.P6184337641475228695

/-! ## A066323.P13826767919189285488

`∑{digits}[A007608(n), #]`
-/

namespace A066323.P13826767919189285488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066323.P13826767919189285488

/-! ## A066323.P14463754405133732435

`∑{digits}[A271472(n), #]`
-/

namespace A066323.P14463754405133732435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066323.P14463754405133732435

/-! ## A066323.P7684133791020411712

`∑{digits}[A212494(n), #]`
-/

namespace A066323.P7684133791020411712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066323.P7684133791020411712

/-! ## A066323.P17791976710512821625

`A027615(A177505(n))`
-/

namespace A066323.P17791976710512821625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A177505 n).toNat

end

end A066323.P17791976710512821625

/-!
# A066324: Number of endofunctions on n labeled points constructed from k rooted trees.

The programs for A066324, the canonical program `A066324.P4406262514538240262` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066324 has offset 1).

The definition of A066324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066324.P17190765966504652988

`A243203(comp[∑[n]])`
-/

namespace A066324.P17190765966504652988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A066324.P17190765966504652988

namespace A066324

/-- `A243203(comp[∑[n]])` -/
def P17190765966504652988.Spec : Prop :=
  ∀ n, P17190765966504652988.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P1742449230631991650

`A259334(n+1)*(row(n)+1)`
-/

namespace A066324.P1742449230631991650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259334 (n + 1) * (SequenceMachineLib.triRow n + 1 : ℤ)

end

end A066324.P1742449230631991650

namespace A066324

/-- `A259334(n+1)*(row(n)+1)` -/
def P1742449230631991650.Spec : Prop :=
  ∀ n, P1742449230631991650.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P6843512330776797651

`(col(n)+1)!*(1+row(n)-col(n))*A033842(n)`
-/

namespace A066324.P6843512330776797651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n + 1) : ℤ) * (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * A033842 n

end

end A066324.P6843512330776797651

namespace A066324

/-- `(col(n)+1)!*(1+row(n)-col(n))*A033842(n)` -/
def P6843512330776797651.Spec : Prop :=
  ∀ n, P6843512330776797651.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P14049606410029727710

`A219694(A038722(n+1))`
-/

namespace A066324.P14049606410029727710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219694 (A038722 (n + 1)).toNat

end

end A066324.P14049606410029727710

namespace A066324

/-- `A219694(A038722(n+1))` -/
def P14049606410029727710.Spec : Prop :=
  ∀ n, P14049606410029727710.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P8945174475699929364

`A219694(A061579(n)+1)`
-/

namespace A066324.P8945174475699929364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219694 (A061579 n + 1).toNat

end

end A066324.P8945174475699929364

namespace A066324

/-- `A219694(A061579(n)+1)` -/
def P8945174475699929364.Spec : Prop :=
  ∀ n, P8945174475699929364.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P9261068943867704412

`A219694(A093995(n+1)-n)`
-/

namespace A066324.P9261068943867704412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219694 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A066324.P9261068943867704412

namespace A066324

/-- `A219694(A093995(n+1)-n)` -/
def P9261068943867704412.Spec : Prop :=
  ∀ n, P9261068943867704412.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P1132226565538406449

`A095888(n+1)*A121757(n)`
-/

namespace A066324.P1132226565538406449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) * A121757 n

end

end A066324.P1132226565538406449

namespace A066324

/-- `A095888(n+1)*A121757(n)` -/
def P1132226565538406449.Spec : Prop :=
  ∀ n, P1132226565538406449.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P827360590203279574

`A033842(n)*A288777(n+1)`
-/

namespace A066324.P827360590203279574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033842 n * A288777 (n + 1)

end

end A066324.P827360590203279574

namespace A066324

/-- `A033842(n)*A288777(n+1)` -/
def P827360590203279574.Spec : Prop :=
  ∀ n, P827360590203279574.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P16094078444472203852

`A219694(∑[A010054(n)]²-n)`
-/

namespace A066324.P16094078444472203852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219694 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A066324.P16094078444472203852

namespace A066324

/-- `A219694(∑[A010054(n)]²-n)` -/
def P16094078444472203852.Spec : Prop :=
  ∀ n, P16094078444472203852.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P3535460184523397209

`A219694(A002024(n+1)²-n)`
-/

namespace A066324.P3535460184523397209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219694 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A066324.P3535460184523397209

namespace A066324

/-- `A219694(A002024(n+1)²-n)` -/
def P3535460184523397209.Spec : Prop :=
  ∀ n, P3535460184523397209.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P5712610760372463585

`A002260(n+1)*A201685(n+1)`
-/

namespace A066324.P5712610760372463585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A201685 (n + 1)

end

end A066324.P5712610760372463585

namespace A066324

/-- `A002260(n+1)*A201685(n+1)` -/
def P5712610760372463585.Spec : Prop :=
  ∀ n, P5712610760372463585.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P12566634392408799025

`A002024(n+1)*A259334(n+1)`
-/

namespace A066324.P12566634392408799025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A259334 (n + 1)

end

end A066324.P12566634392408799025

namespace A066324

/-- `A002024(n+1)*A259334(n+1)` -/
def P12566634392408799025.Spec : Prop :=
  ∀ n, P12566634392408799025.a n = A066324 (n + 1)

end A066324

/-! ## A066324.P4406262514538240262

`A061356(n+2)*A166350(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066324

/-- `A061356(n+2)*A166350(n+1)` -/
def P4406262514538240262.Spec : Prop :=
  ∀ n, P4406262514538240262.a n = A066324 (n + 1)

theorem P4406262514538240262.correct : P4406262514538240262.Spec := by
  intro n
  simp only [A066324, Nat.add_sub_cancel]

end A066324

/-!
# A066325: Coefficients of unitary Hermite polynomials He_n(x).

The programs for A066325, the canonical program `A066325.P5855515398735635821` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066325 has offset 0).

The definition of A066325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7027 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066325.P12175341320665966616

`T(n-1,k-1)-(col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A066325.P12175341320665966616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triCol n + 1 : ℤ) * SequenceMachineLib.triUpRight a n

end

end A066325.P12175341320665966616

namespace A066325

/-- `T(n-1,k-1)-(col(n)+1)*T(n-1,k+1)` -/
def P12175341320665966616.Spec : Prop :=
  ∀ n, P12175341320665966616.a n = A066325 n

end A066325

/-! ## A066325.P1428977182585893349

`T(n-1,k-1)+(1-row(n))*T(n-2,k)` with `a(0)=1`
-/

namespace A066325.P1428977182585893349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp2 a n

end

end A066325.P1428977182585893349

namespace A066325

/-- `T(n-1,k-1)+(1-row(n))*T(n-2,k)` -/
def P1428977182585893349.Spec : Prop :=
  ∀ n, P1428977182585893349.a n = A066325 n

end A066325

/-! ## A066325.P17413573222553193312

`T(n-1,k-1)-(row(n)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A066325.P17413573222553193312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp2 a n

end

end A066325.P17413573222553193312

namespace A066325

/-- `T(n-1,k-1)-(row(n)-1)*T(n-2,k)` -/
def P17413573222553193312.Spec : Prop :=
  ∀ n, P17413573222553193312.a n = A066325 n

end A066325

/-! ## A066325.P2412956621867633431

`T(n-1,k-1)-(1-(T(n-1,k)-1)*col(n))*T(n-1,k+1)` with `a(0)=1`
-/

namespace A066325.P2412956621867633431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (1 - (SequenceMachineLib.triUp a n - 1) * (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpRight a n

end

end A066325.P2412956621867633431

namespace A066325

/-- `T(n-1,k-1)-(1-(T(n-1,k)-1)*col(n))*T(n-1,k+1)` -/
def P2412956621867633431.Spec : Prop :=
  ∀ n, P2412956621867633431.a n = A066325 n

end A066325

/-! ## A066325.P4213242147660885593

`T(n-1,k-1)-(1-(T(n-2,k-1)-1)*col(n))*T(n-1,k+1)` with `a(0)=1`
-/

namespace A066325.P4213242147660885593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (1 - (SequenceMachineLib.triUp2Left a n - 1) * (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpRight a n

end

end A066325.P4213242147660885593

namespace A066325

/-- `T(n-1,k-1)-(1-(T(n-2,k-1)-1)*col(n))*T(n-1,k+1)` -/
def P4213242147660885593.Spec : Prop :=
  ∀ n, P4213242147660885593.a n = A066325 n

end A066325

/-! ## A066325.P10162371767388605933

`T(n-1,k-1)+(1-row(n))*T(row(n)-2, col(n))` with `a(0)=1`
-/

namespace A066325.P10162371767388605933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triCol n : ℤ)

end

end A066325.P10162371767388605933

namespace A066325

/-- `T(n-1,k-1)+(1-row(n))*T(row(n)-2, col(n))` -/
def P10162371767388605933.Spec : Prop :=
  ∀ n, P10162371767388605933.a n = A066325 n

end A066325

/-! ## A066325.P6356148365931688489

`T(n-1,k-1)-(row(n)-1)*T(row(n)-2, col(n))` with `a(0)=1`
-/

namespace A066325.P6356148365931688489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triCol n : ℤ)

end

end A066325.P6356148365931688489

namespace A066325

/-- `T(n-1,k-1)-(row(n)-1)*T(row(n)-2, col(n))` -/
def P6356148365931688489.Spec : Prop :=
  ∀ n, P6356148365931688489.a n = A066325 n

end A066325

/-! ## A066325.P1839150477967668535

`A099174(n)*A117568(n)`
-/

namespace A066325.P1839150477967668535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A117568 n

end

end A066325.P1839150477967668535

namespace A066325

/-- `A099174(n)*A117568(n)` -/
def P1839150477967668535.Spec : Prop :=
  ∀ n, P1839150477967668535.a n = A066325 n

end A066325

/-! ## A066325.P1997414564319821337

`A099174(n)*A369736(n)`
-/

namespace A066325.P1997414564319821337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A369736 n

end

end A066325.P1997414564319821337

namespace A066325

/-- `A099174(n)*A369736(n)` -/
def P1997414564319821337.Spec : Prop :=
  ∀ n, P1997414564319821337.a n = A066325 n

end A066325

/-! ## A066325.P15319142179480146003

`A099174(n)*A130194(n+1)`
-/

namespace A066325.P15319142179480146003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A130194 (n + 1)

end

end A066325.P15319142179480146003

namespace A066325

/-- `A099174(n)*A130194(n+1)` -/
def P15319142179480146003.Spec : Prop :=
  ∀ n, P15319142179480146003.a n = A066325 n

end A066325

/-! ## A066325.P5855515398735635821

`A108086(n)*A123023(A025581(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A066325

/-- `A108086(n)*A123023(A025581(n))` -/
def P5855515398735635821.Spec : Prop :=
  ∀ n, P5855515398735635821.a n = A066325 n

theorem P5855515398735635821.correct : P5855515398735635821.Spec := by
  intro n
  simp only [A066325]

end A066325

/-! ## A066325.P2578833962750370860

`T(n-1,k-1)-(1-(T(n,k-1)-1)*col(n))*T(n-1,k+1)` with `a(0)=1`
-/

namespace A066325.P2578833962750370860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (1 - (SequenceMachineLib.triLeft a n - 1) * (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpRight a n

end

end A066325.P2578833962750370860

namespace A066325

/-- `T(n-1,k-1)-(1-(T(n,k-1)-1)*col(n))*T(n-1,k+1)` -/
def P2578833962750370860.Spec : Prop :=
  ∀ n, P2578833962750370860.a n = A066325 n

end A066325

/-! ## A066325.P6906451246686122248

`A067613(n)/A067613(A000096(A002262(n)))`
-/

namespace A066325.P6906451246686122248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067613 n : ℚ) / (A067613 (A000096 (A002262 n).toNat).toNat : ℚ)

end

end A066325.P6906451246686122248

namespace A066325

/-- `A067613(n)/A067613(A000096(A002262(n)))` -/
def P6906451246686122248.Spec : Prop :=
  ∀ n, P6906451246686122248.a n = (A066325 n : ℚ)

end A066325

/-! ## A066325.P13508047790284216945

`A112227(n)/sqrt(A130321(n))`
-/

namespace A066325.P13508047790284216945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112227 n : ℝ) / Real.sqrt (A130321 n : ℝ)

end

end A066325.P13508047790284216945

namespace A066325

/-- `A112227(n)/sqrt(A130321(n))` -/
def P13508047790284216945.Spec : Prop :=
  ∀ n, P13508047790284216945.a n = (A066325 n : ℝ)

end A066325

/-! ## A066325.P2671203582113092458

`A112227(n)/A016116(A025581(n))`
-/

namespace A066325.P2671203582113092458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112227 n : ℚ) / (A016116 (A025581 n).toNat : ℚ)

end

end A066325.P2671203582113092458

namespace A066325

/-- `A112227(n)/A016116(A025581(n))` -/
def P2671203582113092458.Spec : Prop :=
  ∀ n, P2671203582113092458.a n = (A066325 n : ℚ)

end A066325

/-! ## A066325.P3318278363773940229

`A112227(n)/A016116(A004736(n+1))`
-/

namespace A066325.P3318278363773940229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112227 n : ℚ) / (A016116 (A004736 (n + 1)).toNat : ℚ)

end

end A066325.P3318278363773940229

namespace A066325

/-- `A112227(n)/A016116(A004736(n+1))` -/
def P3318278363773940229.Spec : Prop :=
  ∀ n, P3318278363773940229.a n = (A066325 n : ℚ)

end A066325

/-! ## A066325.P15485663961822146045

`A060821(n)/A016116(A051162(n))`
-/

namespace A066325.P15485663961822146045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060821 n : ℚ) / (A016116 (A051162 n).toNat : ℚ)

end

end A066325.P15485663961822146045

namespace A066325

/-- `A060821(n)/A016116(A051162(n))` -/
def P15485663961822146045.Spec : Prop :=
  ∀ n, P15485663961822146045.a n = (A066325 n : ℚ)

end A066325

/-! ## A066325.P4842740058240256121

`A060821(n)/A016116(A094727(n+1))`
-/

namespace A066325.P4842740058240256121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060821 n : ℚ) / (A016116 (A094727 (n + 1)).toNat : ℚ)

end

end A066325.P4842740058240256121

namespace A066325

/-- `A060821(n)/A016116(A094727(n+1))` -/
def P4842740058240256121.Spec : Prop :=
  ∀ n, P4842740058240256121.a n = (A066325 n : ℚ)

end A066325

/-! ## A066325.P7859142624565992312

`A060821(n)/A011782(A209279(n+1))`
-/

namespace A066325.P7859142624565992312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060821 n : ℚ) / (A011782 (A209279 (n + 1)).toNat : ℚ)

end

end A066325.P7859142624565992312

namespace A066325

/-- `A060821(n)/A011782(A209279(n+1))` -/
def P7859142624565992312.Spec : Prop :=
  ∀ n, P7859142624565992312.a n = (A066325 n : ℚ)

end A066325

/-!
# A066327: Binary string which equals n when 1's, 2's, 4's and 8's bits have weights -1, 1, 3, 6 respectively, while the other bits have their usual weights. -1 if no such string exists.

The programs for A066327, there is no canonical definition to state claims against.
-/

/-! ## A066327.P15398389873104662841

`A007088(A066337(n)%A168370(n))`
-/

namespace A066327.P15398389873104662841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A066337 n) (A168370 n)).toNat

end

end A066327.P15398389873104662841

/-! ## A066327.P1095359890592931657

`A103181(eq[A054055(2*n+1), A106747(n)])`
-/

namespace A066327.P1095359890592931657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066327.P1095359890592931657

/-! ## A066327.P4508177928183676113

`A112867(eq[A060373(3*(n+1)), A060373(n)])`
-/

namespace A066327.P4508177928183676113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066327.P4508177928183676113

/-! ## A066327.P4197969435539325750

`A103181(eq[A054055(3*n+2), A235049(n+1)])`
-/

namespace A066327.P4197969435539325750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066327.P4197969435539325750

/-! ## A066327.P6218808811180925948

`A007088(A066337(n)^A066355(n+1))`
-/

namespace A066327.P6218808811180925948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A066337 n : ℚ) ^ (A066355 (n + 1) : ℤ))).toNat

end

end A066327.P6218808811180925948

/-!
# A066328: a(n) = sum of indices of distinct prime factors of n; here, index(i-th prime) = i.

The programs for A066328, the canonical program `A066328.P12696213530568252908` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066328 has offset 1).

The definition of A066328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066328.P12696213530568252908

`A056239(A007947(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A066328

/-- `A056239(A007947(n+1))` -/
def P12696213530568252908.Spec : Prop :=
  ∀ n, P12696213530568252908.a n = A066328 (n + 1)

theorem P12696213530568252908.correct : P12696213530568252908.Spec := by
  intro n
  simp only [A066328, Nat.add_sub_cancel]

end A066328

/-! ## A066328.P4116216447992622009

`∑{d}[n+1, A049084(#)]`
-/

namespace A066328.P4116216447992622009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049084 d

end

end A066328.P4116216447992622009

namespace A066328

/-- `∑{d}[n+1, A049084(#)]` -/
def P4116216447992622009.Spec : Prop :=
  ∀ n, P4116216447992622009.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P12095022268745195316

`∑{p}[n+1, A000720(#)]`
-/

namespace A066328.P12095022268745195316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000720 p

end

end A066328.P12095022268745195316

namespace A066328

/-- `∑{p}[n+1, A000720(#)]` -/
def P12095022268745195316.Spec : Prop :=
  ∀ n, P12095022268745195316.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P17720387488973996024

`∑{p}[n+1, A003963(#)]`
-/

namespace A066328.P17720387488973996024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003963 p

end

end A066328.P17720387488973996024

namespace A066328

/-- `∑{p}[n+1, A003963(#)]` -/
def P17720387488973996024.Spec : Prop :=
  ∀ n, P17720387488973996024.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P5792731475497131801

`∑{p}[n+1, A026233(#)]`
-/

namespace A066328.P5792731475497131801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A026233 p

end

end A066328.P5792731475497131801

namespace A066328

/-- `∑{p}[n+1, A026233(#)]` -/
def P5792731475497131801.Spec : Prop :=
  ∀ n, P5792731475497131801.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P11068288410933002983

`∑{p}[n+1, A026238(#)]`
-/

namespace A066328.P11068288410933002983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A026238 p

end

end A066328.P11068288410933002983

namespace A066328

/-- `∑{p}[n+1, A026238(#)]` -/
def P11068288410933002983.Spec : Prop :=
  ∀ n, P11068288410933002983.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P17824106987516333620

`∑{p}[n+1, A055396(#)]`
-/

namespace A066328.P17824106987516333620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A055396 p

end

end A066328.P17824106987516333620

namespace A066328

/-- `∑{p}[n+1, A055396(#)]` -/
def P17824106987516333620.Spec : Prop :=
  ∀ n, P17824106987516333620.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P10784849154437856888

`∑{p}[n+1, A056239(#)]`
-/

namespace A066328.P10784849154437856888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A056239 p

end

end A066328.P10784849154437856888

namespace A066328

/-- `∑{p}[n+1, A056239(#)]` -/
def P10784849154437856888.Spec : Prop :=
  ∀ n, P10784849154437856888.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P12372983582644313065

`∑{p}[n+1, A058933(#)]`
-/

namespace A066328.P12372983582644313065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A058933 p

end

end A066328.P12372983582644313065

namespace A066328

/-- `∑{p}[n+1, A058933(#)]` -/
def P12372983582644313065.Spec : Prop :=
  ∀ n, P12372983582644313065.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P14605845760529351162

`∑{p}[n+1, A061395(#)]`
-/

namespace A066328.P14605845760529351162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A061395 p

end

end A066328.P14605845760529351162

namespace A066328

/-- `∑{p}[n+1, A061395(#)]` -/
def P14605845760529351162.Spec : Prop :=
  ∀ n, P14605845760529351162.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P11700733416148881665

`∑{p}[n+1, A062774(#)]`
-/

namespace A066328.P11700733416148881665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A062774 p

end

end A066328.P11700733416148881665

namespace A066328

/-- `∑{p}[n+1, A062774(#)]` -/
def P11700733416148881665.Spec : Prop :=
  ∀ n, P11700733416148881665.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P10384635961638426250

`∑{p}[n+1, A062778(#)]`
-/

namespace A066328.P10384635961638426250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A062778 p

end

end A066328.P10384635961638426250

namespace A066328

/-- `∑{p}[n+1, A062778(#)]` -/
def P10384635961638426250.Spec : Prop :=
  ∀ n, P10384635961638426250.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P6707934702609723851

`∑{p}[n+1, A064839(#)]`
-/

namespace A066328.P6707934702609723851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A064839 p

end

end A066328.P6707934702609723851

namespace A066328

/-- `∑{p}[n+1, A064839(#)]` -/
def P6707934702609723851.Spec : Prop :=
  ∀ n, P6707934702609723851.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P2219095847988244682

`∑{p}[n+1, A065770(#)]`
-/

namespace A066328.P2219095847988244682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A065770 p

end

end A066328.P2219095847988244682

namespace A066328

/-- `∑{p}[n+1, A065770(#)]` -/
def P2219095847988244682.Spec : Prop :=
  ∀ n, P2219095847988244682.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P5248297621291993913

`∑{p}[n+1, A066136(#)]`
-/

namespace A066328.P5248297621291993913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A066136 p

end

end A066328.P5248297621291993913

namespace A066328

/-- `∑{p}[n+1, A066136(#)]` -/
def P5248297621291993913.Spec : Prop :=
  ∀ n, P5248297621291993913.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P12320020955206833706

`∑{p}[n+1, A067004(#)]`
-/

namespace A066328.P12320020955206833706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A067004 p

end

end A066328.P12320020955206833706

namespace A066328

/-- `∑{p}[n+1, A067004(#)]` -/
def P12320020955206833706.Spec : Prop :=
  ∀ n, P12320020955206833706.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P7647751298192999186

`∑{p}[n+1, A075167(#)]`
-/

namespace A066328.P7647751298192999186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A075167 p

end

end A066328.P7647751298192999186

namespace A066328

/-- `∑{p}[n+1, A075167(#)]` -/
def P7647751298192999186.Spec : Prop :=
  ∀ n, P7647751298192999186.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P5280286874968058254

`∑{p}[n+1, A082058(#)]`
-/

namespace A066328.P5280286874968058254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A082058 p

end

end A066328.P5280286874968058254

namespace A066328

/-- `∑{p}[n+1, A082058(#)]` -/
def P5280286874968058254.Spec : Prop :=
  ∀ n, P5280286874968058254.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P14265732240288333478

`∑{p}[n+1, A082666(#)]`
-/

namespace A066328.P14265732240288333478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A082666 p

end

end A066328.P14265732240288333478

namespace A066328

/-- `∑{p}[n+1, A082666(#)]` -/
def P14265732240288333478.Spec : Prop :=
  ∀ n, P14265732240288333478.a n = A066328 (n + 1)

end A066328

/-! ## A066328.P7630216551827460110

`∑{p}[n+1, A087712(#)]`
-/

namespace A066328.P7630216551827460110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A087712 p

end

end A066328.P7630216551827460110

namespace A066328

/-- `∑{p}[n+1, A087712(#)]` -/
def P7630216551827460110.Spec : Prop :=
  ∀ n, P7630216551827460110.a n = A066328 (n + 1)

end A066328

/-!
# A066329: Binary string which equals n when 1's, 2's, 4's and 8's bits have weights 1, 1, 3, 5 respectively, while the other bits have their usual weights. -1 if no such string exists.

The programs for A066329, there is no canonical definition to state claims against.
-/

/-! ## A066329.P751178617391848495

`A007088(A120631(n)%A168370(n))`
-/

namespace A066329.P751178617391848495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A120631 n) (A168370 n)).toNat

end

end A066329.P751178617391848495

/-! ## A066329.P3222431652715220387

`A007088(eq[comp[n^4], A155918(n+2)])`
-/

namespace A066329.P3222431652715220387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A066329.P3222431652715220387

/-! ## A066329.P11830578143798185022

`A007088(record[and(n, (2-n)%8)]%A024849(2*(n+2)))`
-/

namespace A066329.P11830578143798185022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod (2 - (n : ℤ)) 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A024849 (2 * (n + 2)))).toNat

end

end A066329.P11830578143798185022

/-! ## A066329.P12304060196255189090

`A007088(lt[A037474(n), A007947(n+2)])`
-/

namespace A066329.P12304060196255189090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066329.P12304060196255189090

/-! ## A066329.P2979252795784063719

`A007088(lt[A001313(n), A367991(n+2)])`
-/

namespace A066329.P2979252795784063719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066329.P2979252795784063719

/-!
# A066330: Binary string which equals n when 1's, 2's, 4's and 8's bits have weights 1, 2, 4, 5 respectively, while the other bits have their usual weights. -1 if no such string exists.

The programs for A066330, there is no canonical definition to state claims against.
-/

/-! ## A066330.P4674170918825395683

`A007088(A066338(n)%A053346(n+1))`
-/

namespace A066330.P4674170918825395683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A066338 n) (A053346 (n + 1))).toNat

end

end A066330.P4674170918825395683

/-! ## A066330.P12773953016944867521

`A007088(comp[A105365(3*n+5)-A062435(n+6)])`
-/

namespace A066330.P12773953016944867521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105365 (3 * n + 5) - A062435 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A066330.P12773953016944867521

/-! ## A066330.P17091627234521195431

`filter[A278038(n), A232750(#)]`
-/

namespace A066330.P17091627234521195431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A066330.P17091627234521195431

/-! ## A066330.P16304902261675366469

`filter[A136808(n+1), A232750(#)]`
-/

namespace A066330.P16304902261675366469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A066330.P16304902261675366469

/-! ## A066330.P18302290539547799673

`filter[A136827(n+1), A232750(#)]`
-/

namespace A066330.P18302290539547799673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A066330.P18302290539547799673

/-!
# A066331: Number of fixed hexagonal polyominoes with n cells and tree-like structure.

The programs for A066331, there is no canonical definition to state claims against.
-/

/-! ## A066331.P8460467731326290198

`A110532(A087803(n+1)+A001700(n))`
-/

namespace A066331.P8460467731326290198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (A087803 (n + 1) + A001700 n).toNat

end

end A066331.P8460467731326290198

/-! ## A066331.P4108069783819137825

`∑[A008616(A037085(C(2*n, n)))]`
-/

namespace A066331.P4108069783819137825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A037085 (Nat.choose (2 * n) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066331.P4108069783819137825

/-! ## A066331.P7084354483940757581

`A020888(∑[∑[A000045(3*n)]]+1)`
-/

namespace A066331.P7084354483940757581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A066331.P7084354483940757581

/-!
# A066332: a(1)=1; for n > 0, a(n+1) = rad(a(n))*n where rad=A007947.

The programs for A066332, the canonical program `A066332.P16434321445081318444` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066332 has offset 1).

The definition of A066332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066332.P16434321445081318444

`n*A007947(a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A066332

/-- `n*A007947(a(n-1))` -/
def P16434321445081318444.Spec : Prop :=
  ∀ n, P16434321445081318444.a n = A066332 (n + 1)

theorem P16434321445081318444.correct : P16434321445081318444.Spec := by
  intro n
  simp only [A066332, Nat.add_sub_cancel]

end A066332

/-! ## A066332.P2938778054957547547

`n*a(A136548(n))` with `a(0)=1, a(1)=1`
-/

namespace A066332.P2938778054957547547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * a (A136548 n).toNat

end

end A066332.P2938778054957547547

namespace A066332

/-- `n*a(A136548(n))` -/
def P2938778054957547547.Spec : Prop :=
  ∀ n, (P2938778054957547547.a n : ℤ) = A066332 (n + 1)

end A066332

/-! ## A066332.P3588989394440820130

`n*a(A151799(n))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A066332.P3588989394440820130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  n * a (A151799 n).toNat

end

end A066332.P3588989394440820130

namespace A066332

/-- `n*a(A151799(n))` -/
def P3588989394440820130.Spec : Prop :=
  ∀ n, (P3588989394440820130.a n : ℤ) = A066332 (n + 1)

end A066332

/-! ## A066332.P11722431961965779869

`round(1/acot(n))*A034386(abs(1-n))`
-/

namespace A066332.P11722431961965779869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A034386 |1 - (n : ℤ)|.toNat

end

end A066332.P11722431961965779869

namespace A066332

/-- `round(1/acot(n))*A034386(abs(1-n))` -/
def P11722431961965779869.Spec : Prop :=
  ∀ n, P11722431961965779869.a n = A066332 (n + 1)

end A066332

/-! ## A066332.P5299776801151194491

`n*a(A056813((1-n)²))` with `a(0)=1, a(1)=1`
-/

namespace A066332.P5299776801151194491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * a (A056813 ((1 - (n : ℤ)) ^ 2).toNat).toNat

end

end A066332.P5299776801151194491

namespace A066332

/-- `n*a(A056813((1-n)²))` -/
def P5299776801151194491.Spec : Prop :=
  ∀ n, (P5299776801151194491.a n : ℤ) = A066332 (n + 1)

end A066332

/-! ## A066332.P11716468861139717388

`n*gcd(a(n-1), A056603(n+1))` with `a(0)=1`
-/

namespace A066332.P11716468861139717388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Int.gcd (a (n - 1) : ℤ) (A056603 (n + 1))

end

end A066332.P11716468861139717388

namespace A066332

/-- `n*gcd(a(n-1), A056603(n+1))` -/
def P11716468861139717388.Spec : Prop :=
  ∀ n, (P11716468861139717388.a n : ℤ) = A066332 (n + 1)

end A066332

/-! ## A066332.P5084765530627786742

`gcd(n*A002110(n), A000142(n))`
-/

namespace A066332.P5084765530627786742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A002110 n) (A000142 n)

end

end A066332.P5084765530627786742

namespace A066332

/-- `gcd(n*A002110(n), A000142(n))` -/
def P5084765530627786742.Spec : Prop :=
  ∀ n, (P5084765530627786742.a n : ℤ) = A066332 (n + 1)

end A066332

/-!
# A066333: a(n) = min(x : x^2 + n^2 = 0 mod (x+n-1)).

The programs for A066333, there is no canonical definition to state claims against.
-/

/-! ## A066333.P2391158973573019620

`A000265(A259036(Δ[n²]))-n`
-/

namespace A066333.P2391158973573019620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A259036 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - (n : ℤ)

end

end A066333.P2391158973573019620

/-! ## A066333.P4686563289854220219

`abs(A000265(A259036(2*n+1))-n)`
-/

namespace A066333.P4686563289854220219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000265 (A259036 (2 * n + 1)).toNat - (n : ℤ)|

end

end A066333.P4686563289854220219

/-! ## A066333.P5157035025854130036

`A001489(n)+A000265(A259036(2*n+1))`
-/

namespace A066333.P5157035025854130036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000265 (A259036 (2 * n + 1)).toNat

end

end A066333.P5157035025854130036

/-! ## A066333.P10829659545398749395

`A026741(A259036(2*n+1))-n`
-/

namespace A066333.P10829659545398749395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A259036 (2 * n + 1)).toNat - (n : ℤ)

end

end A066333.P10829659545398749395

/-! ## A066333.P2425996263674033792

`A000265(A033677(A069894(n)))-n`
-/

namespace A066333.P2425996263674033792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A033677 (A069894 n).toNat).toNat - (n : ℤ)

end

end A066333.P2425996263674033792

/-!
# A066334: Binary string which equals n when 1's, 2's, 4's and 8's bits have weights 1, 2, 4, 2 respectively, while the other bits have their usual weights. -1 if no such string exists.

The programs for A066334, there is no canonical definition to state claims against.
-/

/-! ## A066334.P533426188419806233

`record[A112952(A354092(n+1))]`
-/

namespace A066334.P533426188419806233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112952 (A354092 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066334.P533426188419806233

/-! ## A066334.P3435639634739458955

`A007088(record[n/A290663(n)])`
-/

namespace A066334.P3435639634739458955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A290663 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A066334.P3435639634739458955

/-! ## A066334.P3029505736043155338

`A185544(lt[A185544(n), A008137(n)])`
-/

namespace A066334.P3029505736043155338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066334.P3029505736043155338

/-! ## A066334.P8476177645301257314

`A185544(lt[A185544(n), A269918(n)])`
-/

namespace A066334.P8476177645301257314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066334.P8476177645301257314

/-! ## A066334.P15200522820177198372

`A185544(lt[A185544(n), A270988(n)])`
-/

namespace A066334.P15200522820177198372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066334.P15200522820177198372

/-!
# A066335: Binary string which equals n when 1's and 2's bits have negative weights.

The programs for A066335, the canonical program `A066335.P12188652827000201606` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066335 has offset 0).

The definition of A066335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066335.P12188652827000201606

`A007088(xor(3, n+3))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066335

/-- `A007088(xor(3, n+3))` -/
def P12188652827000201606.Spec : Prop :=
  ∀ n, P12188652827000201606.a n = A066335 n

theorem P12188652827000201606.correct : P12188652827000201606.Spec := by
  intro n
  simp only [A066335]

end A066335

/-! ## A066335.P8645730232046920315

`A007088(3-xor(3, -n))`
-/

namespace A066335.P8645730232046920315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (3 - Int.xor 3 (-(n : ℤ))).toNat

end

end A066335.P8645730232046920315

namespace A066335

/-- `A007088(3-xor(3, -n))` -/
def P8645730232046920315.Spec : Prop :=
  ∀ n, P8645730232046920315.a n = A066335 n

end A066335

/-! ## A066335.P13604053493397815370

`A007088(A120634(n))`
-/

namespace A066335.P13604053493397815370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A120634 n).toNat

end

end A066335.P13604053493397815370

namespace A066335

/-- `A007088(A120634(n))` -/
def P13604053493397815370.Spec : Prop :=
  ∀ n, P13604053493397815370.a n = A066335 n

end A066335

/-! ## A066335.P15839532742405089552

`sqrt(A063009(xor(3, n+3)))`
-/

namespace A066335.P15839532742405089552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (Nat.xor 3 (n + 3)) : ℝ)

end

end A066335.P15839532742405089552

namespace A066335

/-- `sqrt(A063009(xor(3, n+3)))` -/
def P15839532742405089552.Spec : Prop :=
  ∀ n, P15839532742405089552.a n = (A066335 n : ℝ)

end A066335

/-! ## A066335.P9910748098384212259

`A204094(xor(3, n+3))/7`
-/

namespace A066335.P9910748098384212259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 (Nat.xor 3 (n + 3)) : ℚ) / 7

end

end A066335.P9910748098384212259

namespace A066335

/-- `A204094(xor(3, n+3))/7` -/
def P9910748098384212259.Spec : Prop :=
  ∀ n, P9910748098384212259.a n = (A066335 n : ℚ)

theorem P9910748098384212259.correct : P9910748098384212259.Spec := by
  intro n
  simp only [A066335, Nat.add_sub_cancel, A066335.P9910748098384212259.a, A066335.P12188652827000201606.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066335

/-! ## A066335.P18222558817560955061

`A007088(A159058(2*n)+n)`
-/

namespace A066335.P18222558817560955061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A159058 (2 * n) + (n : ℤ)).toNat

end

end A066335.P18222558817560955061

namespace A066335

/-- `A007088(A159058(2*n)+n)` -/
def P18222558817560955061.Spec : Prop :=
  ∀ n, P18222558817560955061.a n = A066335 n

end A066335

/-! ## A066335.P2122794232376697710

`A185544(2*xor(3, n+3))`
-/

namespace A066335.P2122794232376697710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Nat.xor 3 (n + 3))

end

end A066335.P2122794232376697710

namespace A066335

/-- `A185544(2*xor(3, n+3))` -/
def P2122794232376697710.Spec : Prop :=
  ∀ n, P2122794232376697710.a n = A066335 n

end A066335

/-!
# A066336: Decimal equivalent of A066334.

The programs for A066336, there is no canonical definition to state claims against.
-/

/-! ## A066336.P3304723456240832927

`or(n, A066334(n)%8)`
-/

namespace A066336.P3304723456240832927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.tmod (A066334 n) 8)

end

end A066336.P3304723456240832927

/-!
# A066339: Number of primes p of the form 4m+1 with p <= n.

The programs for A066339, the canonical program `A066339.P5957712968518338971` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066339 has offset 1).

The definition of A066339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066339.P11729951927386736888

`∑[char[p?[4*n+1]-1]]`
-/

namespace A066339.P11729951927386736888
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P11729951927386736888

namespace A066339

/-- `∑[char[p?[4*n+1]-1]]` -/
def P11729951927386736888.Spec : Prop :=
  ∀ n, (P11729951927386736888.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P12495775653271382812

`∑[C(C(2, ∑{e}[n+1, #]), 2)%(3-2*n%4)]`
-/

namespace A066339.P12495775653271382812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2 : ℤ) (3 - ((2 * (n % 4) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P12495775653271382812

namespace A066339

/-- `∑[C(C(2, ∑{e}[n+1, #]), 2)%(3-2*n%4)]` -/
def P12495775653271382812.Spec : Prop :=
  ∀ n, P12495775653271382812.a n = A066339 (n + 1)

end A066339

/-! ## A066339.P5957712968518338971

`A296021(floor(n/4))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A066339

/-- `A296021(floor(n/4))` -/
def P5957712968518338971.Spec : Prop :=
  ∀ n, P5957712968518338971.a n = A066339 (n + 1)

theorem P5957712968518338971.correct : P5957712968518338971.Spec := by
  intro n
  simp only [A066339, Nat.add_sub_cancel]

end A066339

/-! ## A066339.P11327461860729628879

`∑[A079260(n+1)]`
-/

namespace A066339.P11327461860729628879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P11327461860729628879

namespace A066339

/-- `∑[A079260(n+1)]` -/
def P11327461860729628879.Spec : Prop :=
  ∀ n, P11327461860729628879.a n = A066339 (n + 1)

end A066339

/-! ## A066339.P9568790776115553327

`∑[char[A152680(n+1)]]`
-/

namespace A066339.P9568790776115553327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P9568790776115553327

namespace A066339

/-- `∑[char[A152680(n+1)]]` -/
def P9568790776115553327.Spec : Prop :=
  ∀ n, (P9568790776115553327.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P38422161726701482

`∑[char[A250069(n+2)]]`
-/

namespace A066339.P38422161726701482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P38422161726701482

namespace A066339

/-- `∑[char[A250069(n+2)]]` -/
def P38422161726701482.Spec : Prop :=
  ∀ n, (P38422161726701482.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P17549825705861110711

`∑[A353479(3*(n+1))]`
-/

namespace A066339.P17549825705861110711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P17549825705861110711

namespace A066339

/-- `∑[A353479(3*(n+1))]` -/
def P17549825705861110711.Spec : Prop :=
  ∀ n, P17549825705861110711.a n = A066339 (n + 1)

end A066339

/-! ## A066339.P2445075900915298931

`∑[A353477(5*(n+1))]`
-/

namespace A066339.P2445075900915298931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P2445075900915298931

namespace A066339

/-- `∑[A353477(5*(n+1))]` -/
def P2445075900915298931.Spec : Prop :=
  ∀ n, P2445075900915298931.a n = A066339 (n + 1)

end A066339

/-! ## A066339.P8523416282993766263

`∑[C(A055029(n+1), 2)]`
-/

namespace A066339.P8523416282993766263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055029 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P8523416282993766263

namespace A066339

/-- `∑[C(A055029(n+1), 2)]` -/
def P8523416282993766263.Spec : Prop :=
  ∀ n, (P8523416282993766263.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P9405288732025287857

`∑[char[A002144(n+1)-1]]`
-/

namespace A066339.P9405288732025287857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P9405288732025287857

namespace A066339

/-- `∑[char[A002144(n+1)-1]]` -/
def P9405288732025287857.Spec : Prop :=
  ∀ n, (P9405288732025287857.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P7430719465413029010

`∑[C(A151763(n+1)+1, 2)]`
-/

namespace A066339.P7430719465413029010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151763 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P7430719465413029010

namespace A066339

/-- `∑[C(A151763(n+1)+1, 2)]` -/
def P7430719465413029010.Spec : Prop :=
  ∀ n, (P7430719465413029010.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P2743562339857660582

`∑[char[record[A057063(2*n+3)]]]`
-/

namespace A066339.P2743562339857660582
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057063 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P2743562339857660582

namespace A066339

/-- `∑[char[record[A057063(2*n+3)]]]` -/
def P2743562339857660582.Spec : Prop :=
  ∀ n, (P2743562339857660582.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P12733922563298201262

`∑[char[eq[lcm(4, n), A000010(n+1)]]]`
-/

namespace A066339.P12733922563298201262
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P12733922563298201262

namespace A066339

/-- `∑[char[eq[lcm(4, n), A000010(n+1)]]]` -/
def P12733922563298201262.Spec : Prop :=
  ∀ n, (P12733922563298201262.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P17701504865588501158

`∑[char[record[A006530(4*n+1)]-1]]-1`
-/

namespace A066339.P17701504865588501158
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A066339.P17701504865588501158

namespace A066339

/-- `∑[char[record[A006530(4*n+1)]-1]]-1` -/
def P17701504865588501158.Spec : Prop :=
  ∀ n, P17701504865588501158.a n = A066339 (n + 1)

end A066339

/-! ## A066339.P12431116171793295195

`∑[and((n+1)*floor((n+3)/2), A010051(n+1))]`
-/

namespace A066339.P12431116171793295195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1 : ℤ) * ⌊(n + 3 : ℚ) / 2⌋) (A010051 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P12431116171793295195

namespace A066339

/-- `∑[and((n+1)*floor((n+3)/2), A010051(n+1))]` -/
def P12431116171793295195.Spec : Prop :=
  ∀ n, P12431116171793295195.a n = A066339 (n + 1)

end A066339

/-! ## A066339.P3322519049549003098

`A004524(A331134(n+1))`
-/

namespace A066339.P3322519049549003098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A331134 (n + 1)).toNat

end

end A066339.P3322519049549003098

namespace A066339

/-- `A004524(A331134(n+1))` -/
def P3322519049549003098.Spec : Prop :=
  ∀ n, P3322519049549003098.a n = A066339 (n + 1)

end A066339

/-! ## A066339.P14619409968102942246

`∑[char[A000010(A002144(n+1))]]`
-/

namespace A066339.P14619409968102942246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002144 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P14619409968102942246

namespace A066339

/-- `∑[char[A000010(A002144(n+1))]]` -/
def P14619409968102942246.Spec : Prop :=
  ∀ n, (P14619409968102942246.a n : ℤ) = A066339 (n + 1)

end A066339

/-! ## A066339.P13285856070706879905

`∑[and(A010051(n+1), A028242(n))]`
-/

namespace A066339.P13285856070706879905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A028242 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066339.P13285856070706879905

namespace A066339

/-- `∑[and(A010051(n+1), A028242(n))]` -/
def P13285856070706879905.Spec : Prop :=
  ∀ n, P13285856070706879905.a n = A066339 (n + 1)

end A066339

/-! ## A066339.P6245926762347626512

`A071841(n+1)+A071839(n+1)`
-/

namespace A066339.P6245926762347626512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (n + 1) + A071839 (n + 1)

end

end A066339.P6245926762347626512

namespace A066339

/-- `A071841(n+1)+A071839(n+1)` -/
def P6245926762347626512.Spec : Prop :=
  ∀ n, P6245926762347626512.a n = A066339 (n + 1)

theorem P6245926762347626512.correct : P6245926762347626512.Spec := by
  intro n
  simp only [A066339, Nat.add_sub_cancel, A066339.P6245926762347626512.a, A066339.P5957712968518338971.a, A071839, A071839.P2169769857197006636.a, A071841, A071841.P5344048982208262916.f2, A071841.P5344048982208262916.f1, A071841.P5344048982208262916.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066339

/-! ## A066339.P8949074062926121659

`A033270(n+1)-A066490(n+1)`
-/

namespace A066339.P8949074062926121659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) - A066490 (n + 1)

end

end A066339.P8949074062926121659

namespace A066339

/-- `A033270(n+1)-A066490(n+1)` -/
def P8949074062926121659.Spec : Prop :=
  ∀ n, P8949074062926121659.a n = A066339 (n + 1)

end A066339

/-!
# A066340: Fermat's triangle: T(n,m) = m^phi(n) mod n; n >= 2; 1 <= m <= n-1, where phi is Euler's totient function.

The programs for A066340, there is no canonical definition to state claims against.
-/

/-! ## A066340.P5741610082653735190

`A008835(A164561(n+2)²)%(comp[∑[n]]-n)`
-/

namespace A066340.P5741610082653735190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008835 (A164561 (n + 2) ^ 2).toNat) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A066340.P5741610082653735190

/-! ## A066340.P8970666865590967129

`A000290(A164561(n+2)²)%∑[A073423(n)]`
-/

namespace A066340.P8970666865590967129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A164561 (n + 2) ^ 2).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066340.P8970666865590967129

/-! ## A066340.P9031306321967690543

`A000578(A164561(n+2)²)%A003057(n+2)`
-/

namespace A066340.P9031306321967690543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A164561 (n + 2) ^ 2).toNat) (A003057 (n + 2))

end

end A066340.P9031306321967690543

/-! ## A066340.P17463828530494682405

`and(A137835(n+1), A305720(n+1))`
-/

namespace A066340.P17463828530494682405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137835 (n + 1)) (A305720 (n + 1))

end

end A066340.P17463828530494682405

/-! ## A066340.P16907673529246410939

`and(A199190(n+1), A305720(n+1))`
-/

namespace A066340.P16907673529246410939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199190 (n + 1)) (A305720 (n + 1))

end

end A066340.P16907673529246410939

/-!
# A066341: Sum of distinct terms in n-th row of Fermat's triangle.

The programs for A066341, the canonical program `A066341.P16575390972457299371` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066341 has offset 2).

The definition of A066341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066341.P16575390972457299371

`(n+3)*2^(A001221(n+2)-1)-(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A066341

/-- `(n+3)*2^(A001221(n+2)-1)-(n+2)` -/
def P16575390972457299371.Spec : Prop :=
  ∀ n, P16575390972457299371.a n = (A066341 (n + 2) : ℚ)

end A066341

/-! ## A066341.P1171911848502038531

`(n+3)*A007875(n+2)-(n+2)`
-/

namespace A066341.P1171911848502038531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007875 (n + 2) - (n + 2 : ℤ)

end

end A066341.P1171911848502038531

namespace A066341

/-- `(n+3)*A007875(n+2)-(n+2)` -/
def P1171911848502038531.Spec : Prop :=
  ∀ n, P1171911848502038531.a n = A066341 (n + 2)

end A066341

/-! ## A066341.P18311707495591110743

`(n+3)*A174239(A309307(n+2))+1`
-/

namespace A066341.P18311707495591110743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A174239 (A309307 (n + 2)).toNat + 1

end

end A066341.P18311707495591110743

namespace A066341

/-- `(n+3)*A174239(A309307(n+2))+1` -/
def P18311707495591110743.Spec : Prop :=
  ∀ n, P18311707495591110743.a n = A066341 (n + 2)

end A066341

/-! ## A066341.P9789391304081908981

`A052938((n+3)*A087893(n+2))`
-/

namespace A066341.P9789391304081908981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 ((n + 3 : ℤ) * A087893 (n + 2)).toNat

end

end A066341.P9789391304081908981

namespace A066341

/-- `A052938((n+3)*A087893(n+2))` -/
def P9789391304081908981.Spec : Prop :=
  ∀ n, P9789391304081908981.a n = A066341 (n + 2)

end A066341

/-! ## A066341.P17092485292523800755

`A004736(A133263(n+4)+1)/2*A087893(n+2)+1`
-/

namespace A066341.P17092485292523800755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A133263 (n + 4) + 1).toNat : ℚ) / 2 * (A087893 (n + 2) : ℚ) + 1

end

end A066341.P17092485292523800755

namespace A066341

/-- `A004736(A133263(n+4)+1)/2*A087893(n+2)+1` -/
def P17092485292523800755.Spec : Prop :=
  ∀ n, P17092485292523800755.a n = (A066341 (n + 2) : ℚ)

end A066341

/-!
# A066342: Number of triangulations of the cyclic polytope C(n, n-4).

The programs for A066342, the canonical program `A066342.P15556581999171577946` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066342 has offset 2).

The definition of A066342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066342.P15556581999171577946

`∪[A066368(n+1), A066374(n+2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A066342

/-- `∪[A066368(n+1), A066374(n+2)]` -/
def P15556581999171577946.Spec : Prop :=
  ∀ n, (P15556581999171577946.a n : ℤ) = A066342 (n + 2)

theorem P15556581999171577946.correct : P15556581999171577946.Spec := by
  intro n
  simp only [A066342, Nat.add_sub_cancel]

end A066342

/-! ## A066342.P3926126284613473379

`∑[A053218(A101881(n))]-n`
-/

namespace A066342.P3926126284613473379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A066342.P3926126284613473379

namespace A066342

/-- `∑[A053218(A101881(n))]-n` -/
def P3926126284613473379.Spec : Prop :=
  ∀ n, P3926126284613473379.a n = A066342 (n + 2)

end A066342

/-! ## A066342.P14100712628055545886

`A003056(A317707(3*n+2)-n)`
-/

namespace A066342.P14100712628055545886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A317707 (3 * n + 2) - (n : ℤ)).toNat

end

end A066342.P14100712628055545886

namespace A066342

/-- `A003056(A317707(3*n+2)-n)` -/
def P14100712628055545886.Spec : Prop :=
  ∀ n, P14100712628055545886.a n = A066342 (n + 2)

end A066342

/-! ## A066342.P10152323742414363822

`A083895(A088218(n))+A015128(n)`
-/

namespace A066342.P10152323742414363822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A088218 n).toNat + A015128 n

end

end A066342.P10152323742414363822

namespace A066342

/-- `A083895(A088218(n))+A015128(n)` -/
def P10152323742414363822.Spec : Prop :=
  ∀ n, P10152323742414363822.a n = A066342 (n + 2)

end A066342

/-! ## A066342.P7732481277198148701

`A338331(A000070(n))+A182984(n)`
-/

namespace A066342.P7732481277198148701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A000070 n).toNat + A182984 n

end

end A066342.P7732481277198148701

namespace A066342

/-- `A338331(A000070(n))+A182984(n)` -/
def P7732481277198148701.Spec : Prop :=
  ∀ n, P7732481277198148701.a n = A066342 (n + 2)

end A066342

/-!
# A066343: Beatty sequence for log_2(10).

The programs for A066343, the canonical program `A066343.P13541909171452676471` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066343 has offset 1).

The definition of A066343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066343.P13541909171452676471

`floor((n+1)*log2(10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066343

/-- `floor((n+1)*log2(10))` -/
def P13541909171452676471.Spec : Prop :=
  ∀ n, P13541909171452676471.a n = A066343 (n + 1)

theorem P13541909171452676471.correct : P13541909171452676471.Spec := by
  intro n
  simp only [A066343, Nat.add_sub_cancel]

end A066343

/-! ## A066343.P4428589381306227006

`lt[4, A008952(n)]`
-/

namespace A066343.P4428589381306227006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066343.P4428589381306227006

namespace A066343

/-- `lt[4, A008952(n)]` -/
def P4428589381306227006.Spec : Prop :=
  ∀ n, (P4428589381306227006.a n : ℤ) = A066343 (n + 1)

end A066343

/-! ## A066343.P7319076559863633389

`∑[A022922(n)+1]`
-/

namespace A066343.P7319076559863633389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022922 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066343.P7319076559863633389

namespace A066343

/-- `∑[A022922(n)+1]` -/
def P7319076559863633389.Spec : Prop :=
  ∀ n, P7319076559863633389.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P8254701387894974035

`Δ[A025740(n)]-1`
-/

namespace A066343.P8254701387894974035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A066343.P8254701387894974035

namespace A066343

/-- `Δ[A025740(n)]-1` -/
def P8254701387894974035.Spec : Prop :=
  ∀ n, P8254701387894974035.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P11925314210525898683

`Δ[A022334(n)]+n`
-/

namespace A066343.P11925314210525898683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A066343.P11925314210525898683

namespace A066343

/-- `Δ[A022334(n)]+n` -/
def P11925314210525898683.Spec : Prop :=
  ∀ n, P11925314210525898683.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P2170324914848573361

`eq[1, A008952(n+1)]`
-/

namespace A066343.P2170324914848573361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066343.P2170324914848573361

namespace A066343

/-- `eq[1, A008952(n+1)]` -/
def P2170324914848573361.Spec : Prop :=
  ∀ n, (P2170324914848573361.a n : ℤ) = A066343 (n + 1)

end A066343

/-! ## A066343.P1016660214471610655

`∑[A129344(n+1)]-1`
-/

namespace A066343.P1016660214471610655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A066343.P1016660214471610655

namespace A066343

/-- `∑[A129344(n+1)]-1` -/
def P1016660214471610655.Spec : Prop :=
  ∀ n, P1016660214471610655.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P3781909418144566012

`A061785(n+1)+1+n`
-/

namespace A066343.P3781909418144566012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061785 (n + 1) + 1 + (n : ℤ)

end

end A066343.P3781909418144566012

namespace A066343

/-- `A061785(n+1)+1+n` -/
def P3781909418144566012.Spec : Prop :=
  ∀ n, P3781909418144566012.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P13738325511648468311

`∑[A000032(Δ[floor(n*log2(5))])]`
-/

namespace A066343.P13738325511648468311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066343.P13738325511648468311

namespace A066343

/-- `∑[A000032(Δ[floor(n*log2(5))])]` -/
def P13738325511648468311.Spec : Prop :=
  ∀ n, P13738325511648468311.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P4289867619359300161

`∑[A000203(Δ[floor(n*log2(5))])]`
-/

namespace A066343.P4289867619359300161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066343.P4289867619359300161

namespace A066343

/-- `∑[A000203(Δ[floor(n*log2(5))])]` -/
def P4289867619359300161.Spec : Prop :=
  ∀ n, P4289867619359300161.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P6957327099893375659

`A118737(n+1)+A118738(n+1)+n`
-/

namespace A066343.P6957327099893375659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118737 (n + 1) + (A118738 (n + 1) + (n : ℤ))

end

end A066343.P6957327099893375659

namespace A066343

/-- `A118737(n+1)+A118738(n+1)+n` -/
def P6957327099893375659.Spec : Prop :=
  ∀ n, P6957327099893375659.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P8649446647209676382

`A067497(n+1)-1`
-/

namespace A066343.P8649446647209676382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 (n + 1) - 1

end

end A066343.P8649446647209676382

namespace A066343

/-- `A067497(n+1)-1` -/
def P8649446647209676382.Spec : Prop :=
  ∀ n, P8649446647209676382.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P13303226073842815053

`A123384(n)+A022922(n)`
-/

namespace A066343.P13303226073842815053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n + A022922 n

end

end A066343.P13303226073842815053

namespace A066343

/-- `A123384(n)+A022922(n)` -/
def P13303226073842815053.Spec : Prop :=
  ∀ n, P13303226073842815053.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P5694204948543676622

`A123384(n+1)-1`
-/

namespace A066343.P5694204948543676622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 (n + 1) - 1

end

end A066343.P5694204948543676622

namespace A066343

/-- `A123384(n+1)-1` -/
def P5694204948543676622.Spec : Prop :=
  ∀ n, P5694204948543676622.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P3959665987702165472

`A226721(A061785(n+1))`
-/

namespace A066343.P3959665987702165472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226721 (A061785 (n + 1)).toNat

end

end A066343.P3959665987702165472

namespace A066343

/-- `A226721(A061785(n+1))` -/
def P3959665987702165472.Spec : Prop :=
  ∀ n, P3959665987702165472.a n = A066343 (n + 1)

end A066343

/-! ## A066343.P10255947062532210682

`eq[2, A309707(n+1)]`
-/

namespace A066343.P10255947062532210682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066343.P10255947062532210682

namespace A066343

/-- `eq[2, A309707(n+1)]` -/
def P10255947062532210682.Spec : Prop :=
  ∀ n, (P10255947062532210682.a n : ℤ) = A066343 (n + 1)

end A066343

/-! ## A066343.P348215867344142232

`lt[0, n*A125117(n)]`
-/

namespace A066343.P348215867344142232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066343.P348215867344142232

namespace A066343

/-- `lt[0, n*A125117(n)]` -/
def P348215867344142232.Spec : Prop :=
  ∀ n, (P348215867344142232.a n : ℤ) = A066343 (n + 1)

end A066343

/-! ## A066343.P4571768448654267939

`lt[0, Δ[A034887(n)²]]`
-/

namespace A066343.P4571768448654267939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066343.P4571768448654267939

namespace A066343

/-- `lt[0, Δ[A034887(n)²]]` -/
def P4571768448654267939.Spec : Prop :=
  ∀ n, (P4571768448654267939.a n : ℤ) = A066343 (n + 1)

end A066343

/-! ## A066343.P4070012954486077689

`∑[runs[A034887(n+1)]]`
-/

namespace A066343.P4070012954486077689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066343.P4070012954486077689

namespace A066343

/-- `∑[runs[A034887(n+1)]]` -/
def P4070012954486077689.Spec : Prop :=
  ∀ n, (P4070012954486077689.a n : ℤ) = A066343 (n + 1)

end A066343

/-! ## A066343.P10740544381517227358

`filter[A004442(n), A125117(#)]`
-/

namespace A066343.P10740544381517227358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A125117 (f1 j).toNat = 1) n)

end

end A066343.P10740544381517227358

namespace A066343

/-- `filter[A004442(n), A125117(#)]` -/
def P10740544381517227358.Spec : Prop :=
  ∀ n, P10740544381517227358.a n = A066343 (n + 1)

end A066343

/-!
# A066344: Beatty sequence for log_5(10).

The programs for A066344, the canonical program `A066344.P7210307204516309196` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066344 has offset 1).

The definition of A066344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066344.P1768673840953209176

`comp[floor(n*log2(10))]`
-/

namespace A066344.P1768673840953209176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A066344.P1768673840953209176

namespace A066344

/-- `comp[floor(n*log2(10))]` -/
def P1768673840953209176.Spec : Prop :=
  ∀ n, (P1768673840953209176.a n : ℤ) = A066344 (n + 1)

end A066344

/-! ## A066344.P9469066297375845818

`∑[A022925(n)+1]`
-/

namespace A066344.P9469066297375845818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022925 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066344.P9469066297375845818

namespace A066344

/-- `∑[A022925(n)+1]` -/
def P9469066297375845818.Spec : Prop :=
  ∀ n, P9469066297375845818.a n = A066344 (n + 1)

end A066344

/-! ## A066344.P4215099204311952827

`Δ[A025743(n)]-1`
-/

namespace A066344.P4215099204311952827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A066344.P4215099204311952827

namespace A066344

/-- `Δ[A025743(n)]-1` -/
def P4215099204311952827.Spec : Prop :=
  ∀ n, P4215099204311952827.a n = A066344 (n + 1)

end A066344

/-! ## A066344.P4520620565513408692

`Δ[A022335(n)]+n`
-/

namespace A066344.P4520620565513408692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A066344.P4520620565513408692

namespace A066344

/-- `Δ[A022335(n)]+n` -/
def P4520620565513408692.Spec : Prop :=
  ∀ n, P4520620565513408692.a n = A066344 (n + 1)

end A066344

/-! ## A066344.P1298035199013622206

`A226721(n+1)-1`
-/

namespace A066344.P1298035199013622206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226721 (n + 1) - 1

end

end A066344.P1298035199013622206

namespace A066344

/-- `A226721(n+1)-1` -/
def P1298035199013622206.Spec : Prop :=
  ∀ n, P1298035199013622206.a n = A066344 (n + 1)

theorem P1298035199013622206.correct : P1298035199013622206.Spec := by
  intro n
  simp only [A066344, Nat.add_sub_cancel, A066344.P1298035199013622206.a, A066344.P7210307204516309196.f1, A066344.P7210307204516309196.f2, A066344.P7210307204516309196.a, A008952, A008952.P3263245786884273335.a, A226721, A226721.P17856605481448909484.a, A000030, A000030.P4990867543733972260.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066344

/-! ## A066344.P446980332501207884

`comp[A067497(n)-2]+1`
-/

namespace A066344.P446980332501207884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A066344.P446980332501207884

namespace A066344

/-- `comp[A067497(n)-2]+1` -/
def P446980332501207884.Spec : Prop :=
  ∀ n, (P446980332501207884.a n : ℤ) = A066344 (n + 1)

end A066344

/-! ## A066344.P5361690263144134427

`∑[char[A061785(n+1)]+1]`
-/

namespace A066344.P5361690263144134427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061785 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066344.P5361690263144134427

namespace A066344

/-- `∑[char[A061785(n+1)]+1]` -/
def P5361690263144134427.Spec : Prop :=
  ∀ n, (P5361690263144134427.a n : ℤ) = A066344 (n + 1)

end A066344

/-! ## A066344.P7210307204516309196

`lt[n, n*A008952(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066344

/-- `lt[n, n*A008952(n+1)]` -/
def P7210307204516309196.Spec : Prop :=
  ∀ n, (P7210307204516309196.a n : ℤ) = A066344 (n + 1)

theorem P7210307204516309196.correct : P7210307204516309196.Spec := by
  intro n
  simp only [A066344, Nat.add_sub_cancel]

end A066344

/-! ## A066344.P16073225060376607893

`comp[A066343(n+1)-1]+1`
-/

namespace A066344.P16073225060376607893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A066344.P16073225060376607893

namespace A066344

/-- `comp[A066343(n+1)-1]+1` -/
def P16073225060376607893.Spec : Prop :=
  ∀ n, (P16073225060376607893.a n : ℤ) = A066344 (n + 1)

end A066344

/-! ## A066344.P18233303006633561141

`lt[n*A125117(n), n]`
-/

namespace A066344.P18233303006633561141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066344.P18233303006633561141

namespace A066344

/-- `lt[n*A125117(n), n]` -/
def P18233303006633561141.Spec : Prop :=
  ∀ n, (P18233303006633561141.a n : ℤ) = A066344 (n + 1)

end A066344

/-! ## A066344.P9070203565063210193

`A034887(a(n-1)+2)+n` with `a(0)=1`
-/

namespace A066344.P9070203565063210193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034887 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A066344.P9070203565063210193

namespace A066344

/-- `A034887(a(n-1)+2)+n` -/
def P9070203565063210193.Spec : Prop :=
  ∀ n, P9070203565063210193.a n = A066344 (n + 1)

end A066344

/-! ## A066344.P1628848849376848938

`∑[runs[A210435(n+1)]]`
-/

namespace A066344.P1628848849376848938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066344.P1628848849376848938

namespace A066344

/-- `∑[runs[A210435(n+1)]]` -/
def P1628848849376848938.Spec : Prop :=
  ∀ n, (P1628848849376848938.a n : ℤ) = A066344 (n + 1)

end A066344

/-! ## A066344.P7969932573405608654

`∑[runs[A210435(n)]]-1`
-/

namespace A066344.P7969932573405608654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A066344.P7969932573405608654

namespace A066344

/-- `∑[runs[A210435(n)]]-1` -/
def P7969932573405608654.Spec : Prop :=
  ∀ n, P7969932573405608654.a n = A066344 (n + 1)

end A066344

/-! ## A066344.P7622697112608679100

`lt[n*Δ[A034887(n)], n]`
-/

namespace A066344.P7622697112608679100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A066344.P7622697112608679100

namespace A066344

/-- `lt[n*Δ[A034887(n)], n]` -/
def P7622697112608679100.Spec : Prop :=
  ∀ n, (P7622697112608679100.a n : ℤ) = A066344 (n + 1)

end A066344

/-! ## A066344.P9054242815014087531

`∑[runs[A034887(n+1)-n]]`
-/

namespace A066344.P9054242815014087531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066344.P9054242815014087531

namespace A066344

/-- `∑[runs[A034887(n+1)-n]]` -/
def P9054242815014087531.Spec : Prop :=
  ∀ n, (P9054242815014087531.a n : ℤ) = A066344 (n + 1)

end A066344

/-! ## A066344.P11130517878385875668

`A023443(A226721(n+1))`
-/

namespace A066344.P11130517878385875668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226721 (n + 1)).toNat

end

end A066344.P11130517878385875668

namespace A066344

/-- `A023443(A226721(n+1))` -/
def P11130517878385875668.Spec : Prop :=
  ∀ n, P11130517878385875668.a n = A066344 (n + 1)

end A066344

/-! ## A066344.P10838668348593849846

`A004526(Δ[A025702(n)+n²])`
-/

namespace A066344.P10838668348593849846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025702 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A066344.P10838668348593849846

namespace A066344

/-- `A004526(Δ[A025702(n)+n²])` -/
def P10838668348593849846.Spec : Prop :=
  ∀ n, P10838668348593849846.a n = A066344 (n + 1)

end A066344

/-! ## A066344.P256564062427237177

`ceil(log2(A000866(n+1)))`
-/

namespace A066344.P256564062427237177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000866 (n + 1) : ℝ)⌉

end

end A066344.P256564062427237177

namespace A066344

/-- `ceil(log2(A000866(n+1)))` -/
def P256564062427237177.Spec : Prop :=
  ∀ n, P256564062427237177.a n = A066344 (n + 1)

end A066344

/-!
# A066345: Winning binary "same game" templates of length n as defined below.

The programs for A066345, the canonical program `A066345.P89557897596914136` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066345 has offset 1).

The definition of A066345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066345.P89557897596914136

`A166920(n+1)-A171647(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A066345

/-- `A166920(n+1)-A171647(n+1)` -/
def P89557897596914136.Spec : Prop :=
  ∀ n, P89557897596914136.a n = A066345 (n + 1)

theorem P89557897596914136.correct : P89557897596914136.Spec := by
  intro n
  simp only [A066345, Nat.add_sub_cancel]

end A066345

/-! ## A066345.P5941161101759331419

`A016116(n)*A147678(n+1)-n%2`
-/

namespace A066345.P5941161101759331419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A147678 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A066345.P5941161101759331419

namespace A066345

/-- `A016116(n)*A147678(n+1)-n%2` -/
def P5941161101759331419.Spec : Prop :=
  ∀ n, P5941161101759331419.a n = A066345 (n + 1)

end A066345

/-! ## A066345.P14186042910851245175

`A016116(n)*A147678(n+1)-A000035(n)`
-/

namespace A066345.P14186042910851245175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A147678 (n + 1) - A000035 n

end

end A066345.P14186042910851245175

namespace A066345

/-- `A016116(n)*A147678(n+1)-A000035(n)` -/
def P14186042910851245175.Spec : Prop :=
  ∀ n, P14186042910851245175.a n = A066345 (n + 1)

end A066345

/-! ## A066345.P15299202048409845361

`∑[A014551(n)-A133265(n)/2*A016116(n)]`
-/

namespace A066345.P15299202048409845361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014551 n : ℚ) - (A133265 n : ℚ) / 2 * (A016116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066345.P15299202048409845361

namespace A066345

/-- `∑[A014551(n)-A133265(n)/2*A016116(n)]` -/
def P15299202048409845361.Spec : Prop :=
  ∀ n, P15299202048409845361.a n = (A066345 (n + 1) : ℚ)

end A066345

/-! ## A066345.P2205993676112974150

`A166920(n+1)-A008619(n)*A016116(n+1)`
-/

namespace A066345.P2205993676112974150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 1) - A008619 n * A016116 (n + 1)

end

end A066345.P2205993676112974150

namespace A066345

/-- `A166920(n+1)-A008619(n)*A016116(n+1)` -/
def P2205993676112974150.Spec : Prop :=
  ∀ n, P2205993676112974150.a n = A066345 (n + 1)

end A066345

/-!
# A066346: Number of winning binary "same game" templates with ternary digits totaling n.

The programs for A066346, there is no canonical definition to state claims against.
-/

/-! ## A066346.P16612894423909725430

`A321405(n)-A053121(n+4)`
-/

namespace A066346.P16612894423909725430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321405 n - A053121 (n + 4)

end

end A066346.P16612894423909725430

/-! ## A066346.P2042815627699730849

`A321405(n)-A322378(n+4)`
-/

namespace A066346.P2042815627699730849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321405 n - A322378 (n + 4)

end

end A066346.P2042815627699730849

/-!
# A066347: Numbers k such that (the sum of digits of k!)+1 is a prime.

The programs for A066347, there is no canonical definition to state claims against.
-/

/-! ## A066347.P3520121702642888458

`eq[1, A001222(A004152(n)+1)]`
-/

namespace A066347.P3520121702642888458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004152 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066347.P3520121702642888458

/-! ## A066347.P7127048107311648717

`eq[2, A000005(A004152(n)+1)]`
-/

namespace A066347.P7127048107311648717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004152 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066347.P7127048107311648717

/-! ## A066347.P2905649599132929056

`eq[A004152(n)+1, A006530(A004152(n)+1)]`
-/

namespace A066347.P2905649599132929056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004152 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066347.P2905649599132929056

/-! ## A066347.P9044651536359629019

`eq[A004152(n)+1, A020639(A004152(n)+1)]`
-/

namespace A066347.P9044651536359629019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004152 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066347.P9044651536359629019

/-! ## A066347.P8908462383766650873

`record[A004524(2*n+1)/A001222(A004152(n)+1)]`
-/

namespace A066347.P8908462383766650873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (2 * n + 1) : ℚ) / (A001222 (A004152 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066347.P8908462383766650873

/-! ## A066347.P8242383148517585315

`eq[1, A002033(A004152(n))]`
-/

namespace A066347.P8242383148517585315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A004152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066347.P8242383148517585315

/-! ## A066347.P7807359623440154814

`eq[A004152(n)+1, A014963(A004152(n)+1)]`
-/

namespace A066347.P7807359623440154814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004152 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066347.P7807359623440154814

/-!
# A066350: Bisection of A007059.

The programs for A066350, there is no canonical definition to state claims against.
-/

/-! ## A066350.P9926390645189348395

`A007059(2*n)`
-/

namespace A066350.P9926390645189348395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (2 * n)

end

end A066350.P9926390645189348395

/-! ## A066350.P10320462818243559398

`record[A007059(col(n)+col(n))]`
-/

namespace A066350.P10320462818243559398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (SequenceMachineLib.triCol n + SequenceMachineLib.triCol n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P10320462818243559398

/-! ## A066350.P7359102655301989471

`2-4/2+A007059(n+n)`
-/

namespace A066350.P7359102655301989471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A007059 (n + n) : ℚ)

end

end A066350.P7359102655301989471

/-! ## A066350.P11183533291863328497

`record[A007059(A014681(n))]`
-/

namespace A066350.P11183533291863328497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P11183533291863328497

/-! ## A066350.P12968370716120151362

`record[A007059(A029578(n))]`
-/

namespace A066350.P12968370716120151362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P12968370716120151362

/-! ## A066350.P18251919953280578118

`record[A007059(A153733(n))]`
-/

namespace A066350.P18251919953280578118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P18251919953280578118

/-! ## A066350.P9055597575146316413

`record[A007059(A022998(n)-n)]`
-/

namespace A066350.P9055597575146316413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P9055597575146316413

/-! ## A066350.P2072103553632310182

`record[A000035(n)*A079500(n)]`
-/

namespace A066350.P2072103553632310182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A079500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P2072103553632310182

/-! ## A066350.P6261255148541271135

`A066351(n)-A368279(2*n)`
-/

namespace A066350.P6261255148541271135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066351 n - A368279 (2 * n)

end

end A066350.P6261255148541271135

/-! ## A066350.P16741831304106671141

`record[A007059(A006257(n+1)-1)]`
-/

namespace A066350.P16741831304106671141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A006257 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P16741831304106671141

/-! ## A066350.P1407895689189036651

`A079500(2*n)-A368279(2*n)`
-/

namespace A066350.P1407895689189036651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (2 * n) - A368279 (2 * n)

end

end A066350.P1407895689189036651

/-! ## A066350.P2648620615042793810

`A369116(2*n+1)+A188541(2*n)`
-/

namespace A066350.P2648620615042793810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369116 (2 * n + 1) + A188541 (2 * n)

end

end A066350.P2648620615042793810

/-! ## A066350.P11381521039843897083

`A079500(A004273(n))-A000007(n)`
-/

namespace A066350.P11381521039843897083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (A004273 n).toNat - A000007 n

end

end A066350.P11381521039843897083

/-! ## A066350.P17794522703648016127

`record[A186537(A014681(n))-A186537(n)]`
-/

namespace A066350.P17794522703648016127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (A014681 n).toNat - A186537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P17794522703648016127

/-! ## A066350.P17887202962005428878

`A186537(2*n)-A186537(A004273(n))`
-/

namespace A066350.P17887202962005428878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (2 * n) - A186537 (A004273 n).toNat

end

end A066350.P17887202962005428878

/-! ## A066350.P8691972623345041693

`A186537(2*n)-A186537(A014681(2*n))`
-/

namespace A066350.P8691972623345041693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (2 * n) - A186537 (A014681 (2 * n)).toNat

end

end A066350.P8691972623345041693

/-! ## A066350.P6127985617890774627

`record[A007059(A249738(n+1)+A249738(n+1))]`
-/

namespace A066350.P6127985617890774627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A249738 (n + 1) + A249738 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066350.P6127985617890774627

/-! ## A066350.P15380691143879890677

`A186537(2*n)-A186537(log2(A011782(2*n)))`
-/

namespace A066350.P15380691143879890677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (2 * n) - A186537 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 (2 * n) : ℝ))).toNat

end

end A066350.P15380691143879890677

/-!
# A066351: Bisection of A007059.

The programs for A066351, there is no canonical definition to state claims against.
-/

/-! ## A066351.P17616944883352867585

`A079500(2*n)`
-/

namespace A066351.P17616944883352867585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (2 * n)

end

end A066351.P17616944883352867585

/-! ## A066351.P6903214592965595287

`A007059(Δ[n²])`
-/

namespace A066351.P6903214592965595287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066351.P6903214592965595287

/-! ## A066351.P16457794218162830260

`or(char[2], A007059(2*n+1))`
-/

namespace A066351.P16457794218162830260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007059 (2 * n + 1))

end

end A066351.P16457794218162830260

/-! ## A066351.P11157227123886657481

`record[A079500(round((lcm(3, n)+n)/3)+1)]`
-/

namespace A066351.P11157227123886657481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P11157227123886657481

/-! ## A066351.P5018349044007069066

`record[A079500(A230423(n))]`
-/

namespace A066351.P5018349044007069066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (A230423 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P5018349044007069066

/-! ## A066351.P11864047986737885055

`record[A007059(A000265(n+1))]`
-/

namespace A066351.P11864047986737885055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P11864047986737885055

/-! ## A066351.P10018550014302176667

`record[A007059(A006257(n+1))]`
-/

namespace A066351.P10018550014302176667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P10018550014302176667

/-! ## A066351.P2365826513138537193

`record[A007059(A014681(n)+1)]`
-/

namespace A066351.P2365826513138537193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P2365826513138537193

/-! ## A066351.P5506837348199146477

`record[A007059(A029578(n)+1)]`
-/

namespace A066351.P5506837348199146477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A029578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P5506837348199146477

/-! ## A066351.P10675233552042370320

`record[A007059(A153733(n)+1)]`
-/

namespace A066351.P10675233552042370320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A153733 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P10675233552042370320

/-! ## A066351.P6093245958073020119

`A368279(2*n)+A066350(n)`
-/

namespace A066351.P6093245958073020119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 (2 * n) + A066350 n

end

end A066351.P6093245958073020119

/-! ## A066351.P18053472488326564488

`record[A007059(A022998(n+1)-n)]`
-/

namespace A066351.P18053472488326564488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A022998 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P18053472488326564488

/-! ## A066351.P15990577797223825857

`A368279(2*n)+A007059(2*n)`
-/

namespace A066351.P15990577797223825857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 (2 * n) + A007059 (2 * n)

end

end A066351.P15990577797223825857

/-! ## A066351.P4029186052407460649

`record[A007059(A249738(2*n+1)+2)]`
-/

namespace A066351.P4029186052407460649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A249738 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066351.P4029186052407460649

/-! ## A066351.P15857184310357253087

`A368279(2*n+1)+A188541(2*n)`
-/

namespace A066351.P15857184310357253087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 (2 * n + 1) + A188541 (2 * n)

end

end A066351.P15857184310357253087

/-! ## A066351.P17685050260509168790

`A007059(2*n+1)+A023443(n+1)-n`
-/

namespace A066351.P17685050260509168790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (2 * n + 1) + (A023443 (n + 1) - (n : ℤ))

end

end A066351.P17685050260509168790

/-! ## A066351.P4206980377148282862

`(A028310(n+1)-n)*A007059(2*n+1)`
-/

namespace A066351.P4206980377148282862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) - (n : ℤ)) * A007059 (2 * n + 1)

end

end A066351.P4206980377148282862

/-! ## A066351.P16862938203027934247

`A186537(2*n+1)-A186537(2*n)`
-/

namespace A066351.P16862938203027934247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (2 * n + 1) - A186537 (2 * n)

end

end A066351.P16862938203027934247

/-! ## A066351.P4286279789241778338

`A079500(A004277(n))%A237952(n+1)`
-/

namespace A066351.P4286279789241778338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079500 (A004277 n).toNat) (A237952 (n + 1))

end

end A066351.P4286279789241778338

/-!
# A066352: Pillai sequence: a(n) is the smallest term in A007924 requiring n primes.

The programs for A066352, there is no canonical definition to state claims against.
-/

/-! ## A066352.P10021650976454269155

`∑[A104138(a(n-1)+1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A066352.P10021650976454269155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A104138 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066352.P10021650976454269155

/-!
# A066353: 1 + partial sums of A032378.

The programs for A066353, there is no canonical definition to state claims against.
-/

/-! ## A066353.P18345254927649727418

`A032378(n)+a(n-1)` with `a(0)=1`
-/

namespace A066353.P18345254927649727418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032378 n + a (n - 1)

end

end A066353.P18345254927649727418

/-! ## A066353.P10027092126576963118

`∑[A032378(round(sqrt(n²+1)))]-1`
-/

namespace A066353.P10027092126576963118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A066353.P10027092126576963118

/-! ## A066353.P879366972086661971

`A112873(n)+a(A057427(n)-1)` with `a(0)=1`
-/

namespace A066353.P879366972086661971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112873 n + a (A057427 n - 1).toNat

end

end A066353.P879366972086661971

/-! ## A066353.P469695825189477121

`A112873(A028310(n))-abs(1-n)+n`
-/

namespace A066353.P469695825189477121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112873 (A028310 n).toNat - |1 - (n : ℤ)| + (n : ℤ)

end

end A066353.P469695825189477121

/-! ## A066353.P14050464888712828240

`A112873(n+1)+1-A032378(n+1)`
-/

namespace A066353.P14050464888712828240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112873 (n + 1) + (1 - A032378 (n + 1))

end

end A066353.P14050464888712828240

/-! ## A066353.P9227001064023650268

`A057427(n)*A112873(A028310(n))+1`
-/

namespace A066353.P9227001064023650268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A112873 (A028310 n).toNat + 1

end

end A066353.P9227001064023650268

/-!
# A066355: A055471(n)/(product of nonzero digits of A055471(n)).

The programs for A066355, the canonical program `A066355.P5717312303369848133` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066355 has offset 1).

The definition of A066355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066355.P2910643592321595961

`A066577(A055471(n+1))`
-/

namespace A066355.P2910643592321595961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066577 (A055471 (n + 1)).toNat

end

end A066355.P2910643592321595961

namespace A066355

/-- `A066577(A055471(n+1))` -/
def P2910643592321595961.Spec : Prop :=
  ∀ n, P2910643592321595961.a n = A066355 (n + 1)

end A066355

/-! ## A066355.P5717312303369848133

`A066577(record[gcd(n+1, (n+1)%A051801(n+1))])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066355

/-- `A066577(record[gcd(n+1, (n+1)%A051801(n+1))])` -/
def P5717312303369848133.Spec : Prop :=
  ∀ n, P5717312303369848133.a n = A066355 (n + 1)

theorem P5717312303369848133.correct : P5717312303369848133.Spec := by
  intro n
  simp only [A066355, Nat.add_sub_cancel]

end A066355

/-! ## A066355.P5407958804782977626

`A066577(eq[n%A051801(n), A000038(n)])`
-/

namespace A066355.P5407958804782977626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066577 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066355.P5407958804782977626

namespace A066355

/-- `A066577(eq[n%A051801(n), A000038(n)])` -/
def P5407958804782977626.Spec : Prop :=
  ∀ n, P5407958804782977626.a n = A066355 (n + 1)

end A066355

/-! ## A066355.P12214430410560173415

`A066577(∪[A007602(n+1), A398422(n+1)])`
-/

namespace A066355.P12214430410560173415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398422 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066577 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A066355.P12214430410560173415

namespace A066355

/-- `A066577(∪[A007602(n+1), A398422(n+1)])` -/
def P12214430410560173415.Spec : Prop :=
  ∀ n, P12214430410560173415.a n = A066355 (n + 1)

end A066355

/-! ## A066355.P16571298188401601259

`A066577(eq[n%A051801(n), A000007(n)])`
-/

namespace A066355.P16571298188401601259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066577 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066355.P16571298188401601259

namespace A066355

/-- `A066577(eq[n%A051801(n), A000007(n)])` -/
def P16571298188401601259.Spec : Prop :=
  ∀ n, P16571298188401601259.a n = A066355 (n + 1)

end A066355

/-!
# A066356: Numerator of sequence defined by recursion c(n) = 1 + c(n-2) / c(n-1), c(0) = 0, c(1) = 1.

The programs for A066356, there is no canonical definition to state claims against.
-/

/-! ## A066356.P15333605568196903770

`xor(4, A003173(3*a(n-3)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A066356.P15333605568196903770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3] fun n a =>
  Int.xor 4 (A003173 (3 * a (n - 3)).toNat)

end

end A066356.P15333605568196903770

/-! ## A066356.P341272442178288371

`A052015(A003714(2*a(n-2)-a(n-4)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A066356.P341272442178288371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3] fun n a =>
  A052015 (A003714 (2 * a (n - 2) - a (n - 4)).toNat).toNat

end

end A066356.P341272442178288371

/-! ## A066356.P13120058172152422536

`A238005(A003686(n+1))+A067029(n+1)`
-/

namespace A066356.P13120058172152422536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (A003686 (n + 1)).toNat + A067029 (n + 1)

end

end A066356.P13120058172152422536

/-!
# A066357: Number of ordered (i.e., planar) trees on 2n edges with every subtree at the root having an even number of edges.

The programs for A066357, there is no canonical definition to state claims against.
-/

/-! ## A066357.P10885019795021663949

`A079514(round(1/acot(n))+n)`
-/

namespace A066357.P10885019795021663949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079514 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A066357.P10885019795021663949

/-! ## A066357.P6134371726247246769

`A079514(floor(3/acot(n))-n)`
-/

namespace A066357.P6134371726247246769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079514 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A066357.P6134371726247246769

/-! ## A066357.P5741951437302939686

`A079514(comp[2*(n+1)]+1)`
-/

namespace A066357.P5741951437302939686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079514 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A066357.P5741951437302939686

/-! ## A066357.P8376872897497413871

`or(A000007(n), A079514(A004277(n)))`
-/

namespace A066357.P8376872897497413871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A079514 (A004277 n).toNat)

end

end A066357.P8376872897497413871

/-! ## A066357.P4875577465688769741

`A057427(3*n+1)*A079514(A004277(n))`
-/

namespace A066357.P4875577465688769741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 1) * A079514 (A004277 n).toNat

end

end A066357.P4875577465688769741

/-! ## A066357.P17208317487921749884

`A000035(2*n+3)*A079514(A004277(n))`
-/

namespace A066357.P17208317487921749884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 3) * A079514 (A004277 n).toNat

end

end A066357.P17208317487921749884

/-! ## A066357.P9922694082555232615

`2*A048990(n)-A079489(n)`
-/

namespace A066357.P9922694082555232615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048990 n - A079489 n

end

end A066357.P9922694082555232615

/-! ## A066357.P12042282677378037075

`A068875(A004277(n))-A079489(n)`
-/

namespace A066357.P12042282677378037075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (A004277 n).toNat - A079489 n

end

end A066357.P12042282677378037075

/-! ## A066357.P12717862132443860613

`A079513(n*Δ[n²])`
-/

namespace A066357.P12717862132443860613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A066357.P12717862132443860613

/-!
# A066358: Recurring permutations: a(n) = P(a(n-1),a(n-2)) where P(x,y) = x!/(x-y)!.

The programs for A066358, there is no canonical definition to state claims against.
-/

/-! ## A066358.P12469085778448895561

`a(n-2)!*C(a(n-1), a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A066358.P12469085778448895561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.factorial (a (n - 2)) * Nat.choose (a (n - 1)) (a (n - 2))

end

end A066358.P12469085778448895561

/-!
# A066360: Number of unordered solutions in positive integers of xy + xz + yz = n with gcd(x,y,z) = 1.

The programs for A066360, there is no canonical definition to state claims against.
-/

/-! ## A066360.P3475301178355039319

`A067754(n+1)-A007875(n+1)`
-/

namespace A066360.P3475301178355039319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1) - A007875 (n + 1)

end

end A066360.P3475301178355039319

/-! ## A066360.P12329716996740032314

`∑{d}[n+1, A066955(#)*A271102((n+1)/#)]`
-/

namespace A066360.P12329716996740032314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066955 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066360.P12329716996740032314

/-! ## A066360.P7318325518496554622

`A067754(n+1)-A004525(A034444(n+1))`
-/

namespace A066360.P7318325518496554622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1) - A004525 (A034444 (n + 1)).toNat

end

end A066360.P7318325518496554622

/-! ## A066360.P5286019166420099536

`A067754(n+1)-A038548(A007947(n+1))`
-/

namespace A066360.P5286019166420099536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1) - A038548 (A007947 (n + 1)).toNat

end

end A066360.P5286019166420099536

/-! ## A066360.P9775156060187727229

`A067754(n+1)-A034444(A028234(n+1))`
-/

namespace A066360.P9775156060187727229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1) - A034444 (A028234 (n + 1)).toNat

end

end A066360.P9775156060187727229

/-! ## A066360.P17588502252213444013

`A067754(n+1)-A162510(A082476(n+1))`
-/

namespace A066360.P17588502252213444013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1) - A162510 (A082476 (n + 1)).toNat

end

end A066360.P17588502252213444013

/-! ## A066360.P16732787719647632497

`A067754(n+1)-A000005(A293810(n+1))`
-/

namespace A066360.P16732787719647632497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1) - A000005 (A293810 (n + 1)).toNat

end

end A066360.P16732787719647632497

/-! ## A066360.P17008545801225740435

`A067754(n+1)-A000005(A333175(n+1))`
-/

namespace A066360.P17008545801225740435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1) - A000005 (A333175 (n + 1)).toNat

end

end A066360.P17008545801225740435

/-!
# A066362: a(n) = least k > n such that phi(k) < phi(n), if such a k exists; otherwise a(n) = 0.

The programs for A066362, there is no canonical definition to state claims against.
-/

/-! ## A066362.P6300760292428812872

`A352923(n+1)%A051002(A092976(n))`
-/

namespace A066362.P6300760292428812872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352923 (n + 1)) (A051002 (A092976 n).toNat)

end

end A066362.P6300760292428812872

/-! ## A066362.P1168900288663065164

`A039189(n+1)%A064989(A027306(n))`
-/

namespace A066362.P1168900288663065164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039189 (n + 1)) (A064989 (A027306 n).toNat)

end

end A066362.P1168900288663065164

/-! ## A066362.P17258854718789609594

`A046039(n+1)%A093178(A000295(n))`
-/

namespace A066362.P17258854718789609594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046039 (n + 1)) (A093178 (A000295 n).toNat)

end

end A066362.P17258854718789609594

/-! ## A066362.P1930326541339910395

`A279487(n+1)%A009001(A000295(n))`
-/

namespace A066362.P1930326541339910395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279487 (n + 1)) (A009001 (A000295 n).toNat)

end

end A066362.P1930326541339910395

/-! ## A066362.P10874300980934038375

`and(A014021(A011782(n)), A046039(n+1))`
-/

namespace A066362.P10874300980934038375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014021 (A011782 n).toNat) (A046039 (n + 1))

end

end A066362.P10874300980934038375

/-!
# A066367: The floor(prime(n)/n)-perfect numbers, where prime(n) denotes the n-th prime and f-perfect numbers for an arithmetical function f are defined in A066218.

The programs for A066367, there is no canonical definition to state claims against.
-/

/-! ## A066367.P7035679190891245529

`xor(4, A064608(floor(exp(n))))`
-/

namespace A066367.P7035679190891245529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A064608 ⌊Real.exp (n : ℝ)⌋.toNat)

end

end A066367.P7035679190891245529

/-!
# A066368: a(n) = (n+2)*2^(n-1) - 2*n.

The programs for A066368, the canonical program `A066368.P1475710799661482819` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066368 has offset 0).

The definition of A066368 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A066368.anchor (n : ℕ) : (A066368 n : ℚ) = (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (2 * n : ℚ)` in `Proof.A066.A066368`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066368.P1475710799661482819

`(n+2)*2^(n-1)-2*n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066368

/-- `(n+2)*2^(n-1)-2*n` -/
def P1475710799661482819.Spec : Prop :=
  ∀ n, P1475710799661482819.a n = (A066368 n : ℚ)

end A066368

/-! ## A066368.P9595657041319391217

`ogf((1-5x+11x^2-9x^3)/(1-6x+13x^2-12x^3+4x^4))`
-/

namespace A066368.P9595657041319391217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 11, -9] [1, -6, 13, -12, 4] n

end

end A066368.P9595657041319391217

namespace A066368

/-- `ogf((1-5x+11x^2-9x^3)/(1-6x+13x^2-12x^3+4x^4))` -/
def P9595657041319391217.Spec : Prop :=
  ∀ n, P9595657041319391217.a n = A066368 n

end A066368

/-! ## A066368.P1142878182731363203

`∑[abs(2-A045623(n))]`
-/

namespace A066368.P1142878182731363203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A045623 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066368.P1142878182731363203

namespace A066368

/-- `∑[abs(2-A045623(n))]` -/
def P1142878182731363203.Spec : Prop :=
  ∀ n, P1142878182731363203.a n = A066368 n

end A066368

/-! ## A066368.P11335218467382250154

`abs(2*n-A001792(n))`
-/

namespace A066368.P11335218467382250154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A001792 n|

end

end A066368.P11335218467382250154

namespace A066368

/-- `abs(2*n-A001792(n))` -/
def P11335218467382250154.Spec : Prop :=
  ∀ n, P11335218467382250154.a n = A066368 n

end A066368

/-! ## A066368.P7266495851766338691

`A066342(A300576(n+2))`
-/

namespace A066368.P7266495851766338691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066342 (A300576 (n + 2)).toNat

end

end A066368.P7266495851766338691

namespace A066368

/-- `A066342(A300576(n+2))` -/
def P7266495851766338691.Spec : Prop :=
  ∀ n, P7266495851766338691.a n = A066368 n

end A066368

/-! ## A066368.P11961984004684697470

`Δ[A215149(n)-n²]`
-/

namespace A066368.P11961984004684697470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215149 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066368.P11961984004684697470

namespace A066368

/-- `Δ[A215149(n)-n²]` -/
def P11961984004684697470.Spec : Prop :=
  ∀ n, P11961984004684697470.a n = A066368 n

end A066368

/-! ## A066368.P2411605445479696478

`Δ[n/2*A132824(n)]`
-/

namespace A066368.P2411605445479696478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A132824 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066368.P2411605445479696478

namespace A066368

/-- `Δ[n/2*A132824(n)]` -/
def P2411605445479696478.Spec : Prop :=
  ∀ n, P2411605445479696478.a n = (A066368 n : ℚ)

end A066368

/-! ## A066368.P7163255362616261414

`Δ[n*(A094373(n)-n)]`
-/

namespace A066368.P7163255362616261414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A094373 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066368.P7163255362616261414

namespace A066368

/-- `Δ[n*(A094373(n)-n)]` -/
def P7163255362616261414.Spec : Prop :=
  ∀ n, P7163255362616261414.a n = A066368 n

end A066368

/-! ## A066368.P18138505478892297992

`Δ[A154222(n+1)-n²]`
-/

namespace A066368.P18138505478892297992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154222 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066368.P18138505478892297992

namespace A066368

/-- `Δ[A154222(n+1)-n²]` -/
def P18138505478892297992.Spec : Prop :=
  ∀ n, P18138505478892297992.a n = A066368 n

end A066368

/-! ## A066368.P1331857282492665002

`Δ[A188626(n+1)-n²]`
-/

namespace A066368.P1331857282492665002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188626 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066368.P1331857282492665002

namespace A066368

/-- `Δ[A188626(n+1)-n²]` -/
def P1331857282492665002.Spec : Prop :=
  ∀ n, P1331857282492665002.a n = A066368 n

end A066368

/-! ## A066368.P11477967382745632321

`abs(2*n-Δ[A001787(n)])`
-/

namespace A066368.P11477967382745632321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A066368.P11477967382745632321

namespace A066368

/-- `abs(2*n-Δ[A001787(n)])` -/
def P11477967382745632321.Spec : Prop :=
  ∀ n, P11477967382745632321.a n = A066368 n

end A066368

/-! ## A066368.P10321914242352227022

`Δ[n*(A131577(n)+1-n)]`
-/

namespace A066368.P10321914242352227022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A131577 n + (1 - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066368.P10321914242352227022

namespace A066368

/-- `Δ[n*(A131577(n)+1-n)]` -/
def P10321914242352227022.Spec : Prop :=
  ∀ n, P10321914242352227022.a n = A066368 n

end A066368

/-!
# A066369: Number of subsets of {1, ..., n} with no four terms in arithmetic progression.

The programs for A066369, there is no canonical definition to state claims against.
-/

/-! ## A066369.P10238626691919017715

`2^n-A018789(n)`
-/

namespace A066369.P10238626691919017715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A018789 n

end

end A066369.P10238626691919017715

/-! ## A066369.P13341365540738646662

`abs(A000079(n)-A018789(n))`
-/

namespace A066369.P13341365540738646662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A018789 n|

end

end A066369.P13341365540738646662

/-! ## A066369.P5149910890013521258

`A000051(n)-(A018789(n)+1)`
-/

namespace A066369.P5149910890013521258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A018789 n + 1)

end

end A066369.P5149910890013521258

/-! ## A066369.P17751713165877317749

`A000225(n)+1-A018789(n)`
-/

namespace A066369.P17751713165877317749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A018789 n)

end

end A066369.P17751713165877317749

/-! ## A066369.P15753838072660221222

`A018788(n)+A051013(n)-A018789(n)`
-/

namespace A066369.P15753838072660221222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018788 n + (A051013 n - A018789 n)

end

end A066369.P15753838072660221222

/-!
# A066370: Quadruply triangular numbers.

The programs for A066370, the canonical program `A066370.P15573265195693973332` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066370 has offset 0).

The definition of A066370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066370.P14340257714778926141

`A064322(n)*(A064322(n)+1)/2`
-/

namespace A066370.P14340257714778926141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064322 n * (A064322 n + 1) : ℚ) / 2

end

end A066370.P14340257714778926141

namespace A066370

/-- `A064322(n)*(A064322(n)+1)/2` -/
def P14340257714778926141.Spec : Prop :=
  ∀ n, P14340257714778926141.a n = (A066370 n : ℚ)

end A066370

/-! ## A066370.P15573265195693973332

`A000217(A000217(A000217(A000217(n))))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A066370

/-- `A000217(A000217(A000217(A000217(n))))` -/
def P15573265195693973332.Spec : Prop :=
  ∀ n, P15573265195693973332.a n = A066370 n

theorem P15573265195693973332.correct : P15573265195693973332.Spec := by
  intro n
  simp only [A066370]

end A066370

/-! ## A066370.P15945315322517489488

`C(C(C(∑[n]+1, 2)+1, 2)+1, 2)`
-/

namespace A066370.P15945315322517489488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 + 1) 2 + 1) 2

end

end A066370.P15945315322517489488

namespace A066370

/-- `C(C(C(∑[n]+1, 2)+1, 2)+1, 2)` -/
def P15945315322517489488.Spec : Prop :=
  ∀ n, (P15945315322517489488.a n : ℤ) = A066370 n

end A066370

/-! ## A066370.P9158894342715220725

`(A064322(n)+A064322(n)²)/2`
-/

namespace A066370.P9158894342715220725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064322 n + A064322 n ^ 2 : ℚ) / 2

end

end A066370.P9158894342715220725

namespace A066370

/-- `(A064322(n)+A064322(n)²)/2` -/
def P9158894342715220725.Spec : Prop :=
  ∀ n, P9158894342715220725.a n = (A066370 n : ℚ)

end A066370

/-! ## A066370.P8934230517970412992

`A064322(∑[n])`
-/

namespace A066370.P8934230517970412992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066370.P8934230517970412992

namespace A066370

/-- `A064322(∑[n])` -/
def P8934230517970412992.Spec : Prop :=
  ∀ n, P8934230517970412992.a n = A066370 n

end A066370

/-! ## A066370.P707391628802006475

`C(C(A000124(∑[n]), 2)+1, 2)`
-/

namespace A066370.P707391628802006475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A000124 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2 + 1) 2

end

end A066370.P707391628802006475

namespace A066370

/-- `C(C(A000124(∑[n]), 2)+1, 2)` -/
def P707391628802006475.Spec : Prop :=
  ∀ n, (P707391628802006475.a n : ℤ) = A066370 n

end A066370

/-! ## A066370.P11827517923227976713

`record[A064322(n*A010054(n))]`
-/

namespace A066370.P11827517923227976713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064322 ((n : ℤ) * A010054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066370.P11827517923227976713

namespace A066370

/-- `record[A064322(n*A010054(n))]` -/
def P11827517923227976713.Spec : Prop :=
  ∀ n, P11827517923227976713.a n = A066370 n

end A066370

/-!
# A066371: Smallest positive square that contains n consecutive internal 0's.

The programs for A066371, there is no canonical definition to state claims against.
-/

/-! ## A066371.P10694066477756569222

`A066392(n)²`
-/

namespace A066371.P10694066477756569222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066392 n ^ 2

end

end A066371.P10694066477756569222

/-! ## A066371.P7782973017049764162

`A066392(n)^p?[A002655(n)]`
-/

namespace A066371.P7782973017049764162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002655 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066392 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A066371.P7782973017049764162

/-! ## A066371.P15692370466689544077

`A066392(n)^A020639(A008579(n))`
-/

namespace A066371.P15692370466689544077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066392 n : ℚ) ^ (A020639 (A008579 n).toNat : ℤ)

end

end A066371.P15692370466689544077

/-! ## A066371.P1360662267533234827

`A066392(n)^A020639(A066394(n))`
-/

namespace A066371.P1360662267533234827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066392 n : ℚ) ^ (A020639 (A066394 n).toNat : ℤ)

end

end A066371.P1360662267533234827

/-! ## A066371.P5634458763261577478

`A066392(n)^A001055(A001248(n+1))`
-/

namespace A066371.P5634458763261577478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066392 n : ℚ) ^ (A001055 (A001248 (n + 1)).toNat : ℤ)

end

end A066371.P5634458763261577478

/-!
# A066372: Number of different shapes formed by bending a piece of wire of length n in the plane.

The programs for A066372, there is no canonical definition to state claims against.
-/

/-! ## A066372.P17217145231603790806

`A003056(A148057(n)+A148044(n))`
-/

namespace A066372.P17217145231603790806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148057 n + A148044 n).toNat

end

end A066372.P17217145231603790806

/-! ## A066372.P6077657303570603710

`A267508(A006544(n))`
-/

namespace A066372.P6077657303570603710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A006544 n).toNat

end

end A066372.P6077657303570603710

/-! ## A066372.P5394993080972576974

`A257212(A005028(n+3))`
-/

namespace A066372.P5394993080972576974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A005028 (n + 3)).toNat

end

end A066372.P5394993080972576974

/-! ## A066372.P648864647474547527

`A083375(round(A275309(n+4)/12)+1)`
-/

namespace A066372.P648864647474547527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (SequenceMachineLib.roundAway ((A275309 (n + 4) : ℚ) / 12) + 1).toNat

end

end A066372.P648864647474547527

/-! ## A066372.P1652798678868023253

`A368798(A002807(n))+A000010(n+1)`
-/

namespace A066372.P1652798678868023253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368798 (A002807 n).toNat + A000010 (n + 1)

end

end A066372.P1652798678868023253

/-!
# A066373: a(n) = (3*n-2)*2^(n-3).

The programs for A066373, the canonical program `A066373.P310869979239115400` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066373 has offset 2).

The definition of A066373 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A066373.anchor (n : ℕ) : (A066373 (n + 2) : ℚ) = ((3 * (n + 2) : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A066.A066373`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066373.P15644946307911145688

`ogf((2-x)/(1-4x+4x^2))`
-/

namespace A066373.P15644946307911145688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -4, 4] n

end

end A066373.P15644946307911145688

namespace A066373

/-- `ogf((2-x)/(1-4x+4x^2))` -/
def P15644946307911145688.Spec : Prop :=
  ∀ n, P15644946307911145688.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P310869979239115400

`(3*(n+2)-2)*2^(n-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066373

/-- `(3*(n+2)-2)*2^(n-1)` -/
def P310869979239115400.Spec : Prop :=
  ∀ n, P310869979239115400.a n = (A066373 (n + 2) : ℚ)

end A066373

/-! ## A066373.P16000076110197248748

`round(4*(a(n-1)-a(n-2)))` with `a(0)=2, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A066373.P16000076110197248748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A066373.P16000076110197248748

namespace A066373

/-- `round(4*(a(n-1)-a(n-2)))` -/
def P16000076110197248748.Spec : Prop :=
  ∀ n, P16000076110197248748.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P10102756531467967196

`(a(n-1)-a(n-2))/(1/2)²` with `a(0)=2, a(1)=7`
-/

namespace A066373.P10102756531467967196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 7] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A066373.P10102756531467967196

namespace A066373

/-- `(a(n-1)-a(n-2))/(1/2)²` -/
def P10102756531467967196.Spec : Prop :=
  ∀ n, P10102756531467967196.a n = (A066373 (n + 2) : ℚ)

end A066373

/-! ## A066373.P5651027943242802114

`∑[A098156(n+1)]`
-/

namespace A066373.P5651027943242802114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066373.P5651027943242802114

namespace A066373

/-- `∑[A098156(n+1)]` -/
def P5651027943242802114.Spec : Prop :=
  ∀ n, P5651027943242802114.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P4104071541998362309

`A170881(n+2)-1`
-/

namespace A066373.P4104071541998362309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170881 (n + 2) - 1

end

end A066373.P4104071541998362309

namespace A066373

/-- `A170881(n+2)-1` -/
def P4104071541998362309.Spec : Prop :=
  ∀ n, P4104071541998362309.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P4111765003775259651

`∑[A133086(n+1)/2]`
-/

namespace A066373.P4111765003775259651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133086 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066373.P4111765003775259651

namespace A066373

/-- `∑[A133086(n+1)/2]` -/
def P4111765003775259651.Spec : Prop :=
  ∀ n, P4111765003775259651.a n = (A066373 (n + 2) : ℚ)

end A066373

/-! ## A066373.P15637649574996649489

`A053220(n+1)+2^n`
-/

namespace A066373.P15637649574996649489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) + (2 ^ n : ℤ)

end

end A066373.P15637649574996649489

namespace A066373

/-- `A053220(n+1)+2^n` -/
def P15637649574996649489.Spec : Prop :=
  ∀ n, P15637649574996649489.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P17622327589673286531

`A053565(n)+2^(n+2)`
-/

namespace A066373.P17622327589673286531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053565 n + (2 ^ (n + 2) : ℤ)

end

end A066373.P17622327589673286531

namespace A066373

/-- `A053565(n)+2^(n+2)` -/
def P17622327589673286531.Spec : Prop :=
  ∀ n, P17622327589673286531.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P6532110897078299556

`A084858(n+1)-2^n`
-/

namespace A066373.P6532110897078299556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 (n + 1) - (2 ^ n : ℤ)

end

end A066373.P6532110897078299556

namespace A066373

/-- `A084858(n+1)-2^n` -/
def P6532110897078299556.Spec : Prop :=
  ∀ n, P6532110897078299556.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P16503892990921710884

`A339252(n+1)-2^(n+1)`
-/

namespace A066373.P16503892990921710884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A066373.P16503892990921710884

namespace A066373

/-- `A339252(n+1)-2^(n+1)` -/
def P16503892990921710884.Spec : Prop :=
  ∀ n, P16503892990921710884.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P12883983899581554626

`A084860(n+2)-2^(n+2)`
-/

namespace A066373.P12883983899581554626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084860 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A066373.P12883983899581554626

namespace A066373

/-- `A084860(n+2)-2^(n+2)` -/
def P12883983899581554626.Spec : Prop :=
  ∀ n, P12883983899581554626.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P5074530050701360915

`2^(n+1)+3*A001787(n)`
-/

namespace A066373.P5074530050701360915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + 3 * A001787 n

end

end A066373.P5074530050701360915

namespace A066373

/-- `2^(n+1)+3*A001787(n)` -/
def P5074530050701360915.Spec : Prop :=
  ∀ n, P5074530050701360915.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P6130222681705024964

`A003945(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A066373.P6130222681705024964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003945 n + 2 * a (n - 1)

end

end A066373.P6130222681705024964

namespace A066373

/-- `A003945(n)+2*a(n-1)` -/
def P6130222681705024964.Spec : Prop :=
  ∀ n, P6130222681705024964.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P1283422315298291611

`A042950(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A066373.P1283422315298291611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A042950 n + 2 * a (n - 1)

end

end A066373.P1283422315298291611

namespace A066373

/-- `A042950(n)+2*a(n-1)` -/
def P1283422315298291611.Spec : Prop :=
  ∀ n, P1283422315298291611.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P6907672331578039616

`A091629(n+1)/4+2*a(n-1)` with `a(0)=2`
-/

namespace A066373.P6907672331578039616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A091629 (n + 1) : ℚ) / 4 + 2 * a (n - 1)

end

end A066373.P6907672331578039616

namespace A066373

/-- `A091629(n+1)/4+2*a(n-1)` -/
def P6907672331578039616.Spec : Prop :=
  ∀ n, P6907672331578039616.a n = (A066373 (n + 2) : ℚ)

end A066373

/-! ## A066373.P17251495913072678616

`2*a(n-1)+(n+2-abs(1-n))*A011782(n)` with `a(0)=2`
-/

namespace A066373.P17251495913072678616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + ((n + 2 : ℤ) - |1 - (n : ℤ)|) * A011782 n

end

end A066373.P17251495913072678616

namespace A066373

/-- `2*a(n-1)+(n+2-abs(1-n))*A011782(n)` -/
def P17251495913072678616.Spec : Prop :=
  ∀ n, P17251495913072678616.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P15615499289911317999

`A047859(n)+A002064(n)`
-/

namespace A066373.P15615499289911317999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n + A002064 n

end

end A066373.P15615499289911317999

namespace A066373

/-- `A047859(n)+A002064(n)` -/
def P15615499289911317999.Spec : Prop :=
  ∀ n, P15615499289911317999.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P147367301013192506

`A048495(n)+A047860(n)`
-/

namespace A066373.P147367301013192506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048495 n + A047860 n

end

end A066373.P147367301013192506

namespace A066373

/-- `A048495(n)+A047860(n)` -/
def P147367301013192506.Spec : Prop :=
  ∀ n, P147367301013192506.a n = A066373 (n + 2)

end A066373

/-! ## A066373.P18091148987879652540

`A083706(n)+A036542(n)`
-/

namespace A066373.P18091148987879652540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 n + A036542 n

end

end A066373.P18091148987879652540

namespace A066373

/-- `A083706(n)+A036542(n)` -/
def P18091148987879652540.Spec : Prop :=
  ∀ n, P18091148987879652540.a n = A066373 (n + 2)

end A066373

/-!
# A066374: a(n) = (3*n+4)*2^(n-3)-(2*n-1).

The programs for A066374, the canonical program `A066374.P5084603354309075955` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066374 has offset 2).

The definition of A066374 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A066374.anchor (n : ℕ) : (A066374 (n + 2) : ℚ) = (3 * (n + 2) + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((2 * (n + 2) : ℤ) - 1 : ℚ)` in `Proof.A066.A066374`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066374.P5084603354309075955

`(3*(n+2)+4)*2^(n-1)-(2*(n+2)-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066374

/-- `(3*(n+2)+4)*2^(n-1)-(2*(n+2)-1)` -/
def P5084603354309075955.Spec : Prop :=
  ∀ n, P5084603354309075955.a n = (A066374 (n + 2) : ℚ)

end A066374

/-! ## A066374.P5886863534033613220

`ogf((2-4x+3x^2-3x^3)/(1-6x+13x^2-12x^3+4x^4))`
-/

namespace A066374.P5886863534033613220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 3, -3] [1, -6, 13, -12, 4] n

end

end A066374.P5886863534033613220

namespace A066374

/-- `ogf((2-4x+3x^2-3x^3)/(1-6x+13x^2-12x^3+4x^4))` -/
def P5886863534033613220.Spec : Prop :=
  ∀ n, P5886863534033613220.a n = A066374 (n + 2)

end A066374

/-! ## A066374.P6356419768278152906

`A066342(2*n+3)`
-/

namespace A066374.P6356419768278152906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066342 (2 * n + 3)

end

end A066374.P6356419768278152906

namespace A066374

/-- `A066342(2*n+3)` -/
def P6356419768278152906.Spec : Prop :=
  ∀ n, P6356419768278152906.a n = A066374 (n + 2)

end A066374

/-! ## A066374.P9734686668942424172

`filter[A066342(n+2), A272664(#)]`
-/

namespace A066374.P9734686668942424172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A066374.P9734686668942424172

namespace A066374

/-- `filter[A066342(n+2), A272664(#)]` -/
def P9734686668942424172.Spec : Prop :=
  ∀ n, P9734686668942424172.a n = A066374 (n + 2)

end A066374

/-! ## A066374.P3105779780523487056

`∩[A066342(n+2), A077164(n+1)]`
-/

namespace A066374.P3105779780523487056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066342 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066374.P3105779780523487056

namespace A066374

/-- `∩[A066342(n+2), A077164(n+1)]` -/
def P3105779780523487056.Spec : Prop :=
  ∀ n, (P3105779780523487056.a n : ℤ) = A066374 (n + 2)

end A066374

/-!
# A066375: a(n) = 6*binomial(n,4) + 3*binomial(n,3) + 4*binomial(n,2) - n + 2.

The programs for A066375, the canonical program `A066375.P8305533867417825506` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066375 has offset 1).

The definition of A066375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n+1, 4)+3*C(n+1, 3)+4*C(n+1, 2)-(n+1)+2` (program `A066375.P8305533867417825506`, by `A066375.P8305533867417825506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066375.P19492256491052798

`ogf((1-x+4x^2+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A066375.P19492256491052798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 4, 0, 2] [1, -5, 10, -10, 5, -1] n

end

end A066375.P19492256491052798

namespace A066375

/-- `ogf((1-x+4x^2+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P19492256491052798.Spec : Prop :=
  ∀ n, P19492256491052798.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P8305533867417825506

`6*C(n+1, 4)+3*C(n+1, 3)+4*C(n+1, 2)-(n+1)+2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066375

/-- `6*C(n+1, 4)+3*C(n+1, 3)+4*C(n+1, 2)-(n+1)+2` -/
def P8305533867417825506.Spec : Prop :=
  ∀ n, P8305533867417825506.a n = A066375 (n + 1)

theorem P8305533867417825506.correct : P8305533867417825506.Spec := by
  intro n
  simp only [A066375, Nat.add_sub_cancel]

end A066375

/-! ## A066375.P17807161311016987422

`(8-14*(n+1)+13*(n+1)²-4*(n+1)^3+(n+1)^4)/4`
-/

namespace A066375.P17807161311016987422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 - (14 * (n + 1) : ℤ) + (13 * (n + 1) ^ 2 : ℤ) - (4 * (n + 1) ^ 3 : ℤ) + ((n + 1) ^ 4 : ℤ) : ℚ) / 4

end

end A066375.P17807161311016987422

namespace A066375

/-- `(8-14*(n+1)+13*(n+1)²-4*(n+1)^3+(n+1)^4)/4` -/
def P17807161311016987422.Spec : Prop :=
  ∀ n, P17807161311016987422.a n = (A066375 (n + 1) : ℚ)

theorem P17807161311016987422.correct : P17807161311016987422.Spec := by
  intro n
  simp only [A066375, Nat.add_sub_cancel, A066375.P17807161311016987422.a, A066375.P8305533867417825506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066375

/-! ## A066375.P14192309137266676542

`(∑[n]+1)*(C(n, 2)+3)-2`
-/

namespace A066375.P14192309137266676542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 1) * (Nat.choose n 2 + 3) : ℕ) : ℤ) - 2

end

end A066375.P14192309137266676542

namespace A066375

/-- `(∑[n]+1)*(C(n, 2)+3)-2` -/
def P14192309137266676542.Spec : Prop :=
  ∀ n, P14192309137266676542.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P10836589744504411616

`A294070(n+1)-3+n`
-/

namespace A066375.P10836589744504411616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294070 (n + 1) - 3 + (n : ℤ)

end

end A066375.P10836589744504411616

namespace A066375

/-- `A294070(n+1)-3+n` -/
def P10836589744504411616.Spec : Prop :=
  ∀ n, P10836589744504411616.a n = A066375 (n + 1)

theorem P10836589744504411616.correct : P10836589744504411616.Spec := by
  intro n
  simp only [A066375, Nat.add_sub_cancel, A066375.P10836589744504411616.a, A066375.P8305533867417825506.a, A294070, A294070.P13445950394499554624.a, A152948, A152948.P6305161244529730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066375

/-! ## A066375.P18159541236656566711

`A084849(n)+A006011(n)`
-/

namespace A066375.P18159541236656566711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n + A006011 n

end

end A066375.P18159541236656566711

namespace A066375

/-- `A084849(n)+A006011(n)` -/
def P18159541236656566711.Spec : Prop :=
  ∀ n, P18159541236656566711.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P15293444617163684126

`A104249(n)+A006528(n)`
-/

namespace A066375.P15293444617163684126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n + A006528 n

end

end A066375.P15293444617163684126

namespace A066375

/-- `A104249(n)+A006528(n)` -/
def P15293444617163684126.Spec : Prop :=
  ∀ n, P15293444617163684126.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P1591461223665979800

`A159833(n)+A110325(n)`
-/

namespace A066375.P1591461223665979800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n + A110325 n

end

end A066375.P1591461223665979800

namespace A066375

/-- `A159833(n)+A110325(n)` -/
def P1591461223665979800.Spec : Prop :=
  ∀ n, P1591461223665979800.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P11062869727311980185

`A239352(n)+A056107(n)`
-/

namespace A066375.P11062869727311980185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239352 n + A056107 n

end

end A066375.P11062869727311980185

namespace A066375

/-- `A239352(n)+A056107(n)` -/
def P11062869727311980185.Spec : Prop :=
  ∀ n, P11062869727311980185.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P3361444467431094325

`A267707(n)+A037255(n)`
-/

namespace A066375.P3361444467431094325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n + A037255 n

end

end A066375.P3361444467431094325

namespace A066375

/-- `A267707(n)+A037255(n)` -/
def P3361444467431094325.Spec : Prop :=
  ∀ n, P3361444467431094325.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P8282134500589647465

`A385689(n)+A006003(n)`
-/

namespace A066375.P8282134500589647465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385689 n + A006003 n

end

end A066375.P8282134500589647465

namespace A066375

/-- `A385689(n)+A006003(n)` -/
def P8282134500589647465.Spec : Prop :=
  ∀ n, P8282134500589647465.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P783204253487011929

`A294070(n+1)+A023445(n)`
-/

namespace A066375.P783204253487011929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294070 (n + 1) + A023445 n

end

end A066375.P783204253487011929

namespace A066375

/-- `A294070(n+1)+A023445(n)` -/
def P783204253487011929.Spec : Prop :=
  ∀ n, P783204253487011929.a n = A066375 (n + 1)

theorem P783204253487011929.correct : P783204253487011929.Spec := by
  intro n
  simp only [A066375, Nat.add_sub_cancel, A066375.P783204253487011929.a, A066375.P8305533867417825506.a, A023445, A023445.P17030645253662401943.a, A294070, A294070.P13445950394499554624.a, A152948, A152948.P6305161244529730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066375

/-! ## A066375.P8939650585028823694

`A352405(n+1)+A002522(n)`
-/

namespace A066375.P8939650585028823694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352405 (n + 1) + A002522 n

end

end A066375.P8939650585028823694

namespace A066375

/-- `A352405(n+1)+A002522(n)` -/
def P8939650585028823694.Spec : Prop :=
  ∀ n, P8939650585028823694.a n = A066375 (n + 1)

theorem P8939650585028823694.correct : P8939650585028823694.Spec := by
  intro n
  simp only [A066375, Nat.add_sub_cancel, A066375.P8939650585028823694.a, A066375.P8305533867417825506.a, A002522, A002522.P3778392011853271743.a, A352405, A352405.P8942584792095966573.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066375

/-! ## A066375.P890812484374984221

`A294070(n+1)-A022959(n)`
-/

namespace A066375.P890812484374984221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294070 (n + 1) - A022959 n

end

end A066375.P890812484374984221

namespace A066375

/-- `A294070(n+1)-A022959(n)` -/
def P890812484374984221.Spec : Prop :=
  ∀ n, P890812484374984221.a n = A066375 (n + 1)

theorem P890812484374984221.correct : P890812484374984221.Spec := by
  intro n
  simp only [A066375, Nat.add_sub_cancel, A066375.P890812484374984221.a, A066375.P8305533867417825506.a, A022959, A022959.P11065877920924967018.a, A294070, A294070.P13445950394499554624.a, A152948, A152948.P6305161244529730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066375

/-! ## A066375.P4400573957337729215

`A066456(2*(n+1))`
-/

namespace A066375.P4400573957337729215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 (2 * (n + 1))

end

end A066375.P4400573957337729215

namespace A066375

/-- `A066456(2*(n+1))` -/
def P4400573957337729215.Spec : Prop :=
  ∀ n, P4400573957337729215.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P17993172282881354278

`record[A066456(A014681(n+1))]`
-/

namespace A066375.P17993172282881354278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066375.P17993172282881354278

namespace A066375

/-- `record[A066456(A014681(n+1))]` -/
def P17993172282881354278.Spec : Prop :=
  ∀ n, P17993172282881354278.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P11741001322506297050

`record[A066456(A026741(n)+1)]`
-/

namespace A066375.P11741001322506297050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066375.P11741001322506297050

namespace A066375

/-- `record[A066456(A026741(n)+1)]` -/
def P11741001322506297050.Spec : Prop :=
  ∀ n, P11741001322506297050.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P1452400354785163500

`record[A066456(A010684(n)+n)]`
-/

namespace A066375.P1452400354785163500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 (A010684 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066375.P1452400354785163500

namespace A066375

/-- `record[A066456(A010684(n)+n)]` -/
def P1452400354785163500.Spec : Prop :=
  ∀ n, P1452400354785163500.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P4621055903821804551

`A006011(n)+A000124(2*n)`
-/

namespace A066375.P4621055903821804551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + A000124 (2 * n)

end

end A066375.P4621055903821804551

namespace A066375

/-- `A006011(n)+A000124(2*n)` -/
def P4621055903821804551.Spec : Prop :=
  ∀ n, P4621055903821804551.a n = A066375 (n + 1)

end A066375

/-! ## A066375.P14188634388292363869

`record[A066456(n+1)/A027642(n)]`
-/

namespace A066375.P14188634388292363869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066456 (n + 1) : ℚ) / (A027642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066375.P14188634388292363869

namespace A066375

/-- `record[A066456(n+1)/A027642(n)]` -/
def P14188634388292363869.Spec : Prop :=
  ∀ n, P14188634388292363869.a n = (A066375 (n + 1) : ℚ)

end A066375

/-!
# A066376: Number of [*]-divisors d <= n such that there is another [*]-divisor d' < n with d [*] d' = n.

The programs for A066376, there is no canonical definition to state claims against.
-/

/-! ## A066376.P4383460446456077128

`A067399(n+1)-1`
-/

namespace A066376.P4383460446456077128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067399 (n + 1) - 1

end

end A066376.P4383460446456077128

/-! ## A066376.P11707670768066145907

`(A133070(n)+A067399(n+1))%(n+1)`
-/

namespace A066376.P11707670768066145907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133070 n + A067399 (n + 1)) (n + 1 : ℤ)

end

end A066376.P11707670768066145907

/-! ## A066376.P15418738111458081288

`A106400(A034444(n+1))+A067399(n+1)`
-/

namespace A066376.P15418738111458081288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A034444 (n + 1)).toNat + A067399 (n + 1)

end

end A066376.P15418738111458081288

/-! ## A066376.P4566643912646211897

`A260196(n+2)+A067399(n+1)`
-/

namespace A066376.P4566643912646211897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A067399 (n + 1)

end

end A066376.P4566643912646211897

/-! ## A066376.P2900717654044676168

`A153881(2*n+5)+A067399(n+1)`
-/

namespace A066376.P2900717654044676168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * n + 5) + A067399 (n + 1)

end

end A066376.P2900717654044676168

/-! ## A066376.P10178888137922065524

`A337066(A065091(n+1))+A067399(n+1)`
-/

namespace A066376.P10178888137922065524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A065091 (n + 1)).toNat + A067399 (n + 1)

end

end A066376.P10178888137922065524

/-! ## A066376.P17944688942754182469

`A337066(A004139(n+1))+A067399(n+1)`
-/

namespace A066376.P17944688942754182469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A004139 (n + 1)).toNat + A067399 (n + 1)

end

end A066376.P17944688942754182469

/-! ## A066376.P16308843350558849807

`Δ[eq[1, A348135(n+1)]]-1`
-/

namespace A066376.P16308843350558849807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348135 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A066376.P16308843350558849807

/-! ## A066376.P13860440093007997868

`A070198(n)%A067399(n+1)`
-/

namespace A066376.P13860440093007997868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A067399 (n + 1))

end

end A066376.P13860440093007997868

/-! ## A066376.P13673352096969561752

`A079782(n+1)%A067399(n+1)`
-/

namespace A066376.P13673352096969561752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A067399 (n + 1))

end

end A066376.P13673352096969561752

/-! ## A066376.P14741457542649537675

`A083685(n+1)%A067399(n+1)`
-/

namespace A066376.P14741457542649537675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A067399 (n + 1))

end

end A066376.P14741457542649537675

/-! ## A066376.P13424314590868541335

`A121934(n+1)%A067399(n+1)`
-/

namespace A066376.P13424314590868541335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A067399 (n + 1))

end

end A066376.P13424314590868541335

/-! ## A066376.P17800182928809710930

`(A087061(∑[n])+A067399(n+1))%(n+1)`
-/

namespace A066376.P17800182928809710930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087061 (∑ j ∈ Finset.range (n + 1), f1 j) + A067399 (n + 1)) (n + 1 : ℤ)

end

end A066376.P17800182928809710930

/-! ## A066376.P12906130145749421484

`val(A048887(A067399(n+1)+∑[n+1]), 2)`
-/

namespace A066376.P12906130145749421484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048887 (A067399 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat).toNat 2

end

end A066376.P12906130145749421484

/-! ## A066376.P3936705128776183984

`A030494(n+1)%A067399(n+1)`
-/

namespace A066376.P3936705128776183984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A067399 (n + 1))

end

end A066376.P3936705128776183984

/-! ## A066376.P15840275029039646259

`A072828(n+1)%A067399(n+1)`
-/

namespace A066376.P15840275029039646259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A067399 (n + 1))

end

end A066376.P15840275029039646259

/-! ## A066376.P5660580264942284209

`A001222(2^A067399(n+1)/2)`
-/

namespace A066376.P5660580264942284209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A067399 (n + 1) : ℤ) / 2)).toNat

end

end A066376.P5660580264942284209

/-! ## A066376.P6651435724742516243

`A198277(n)%A067399(n+1)`
-/

namespace A066376.P6651435724742516243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A067399 (n + 1))

end

end A066376.P6651435724742516243

/-!
# A066377: Sum of the first n numbers k such that floor(sqrt(k)) divides k.

The programs for A066377, the canonical program `A066377.P10793103754514309658` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066377 has offset 1).

The definition of A066377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066377.P10793103754514309658

`ogf((1+x+x^2-x^3)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066377

/-- `ogf((1+x+x^2-x^3)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` -/
def P10793103754514309658.Spec : Prop :=
  ∀ n, P10793103754514309658.a n = A066377 (n + 1)

theorem P10793103754514309658.correct : P10793103754514309658.Spec := by
  intro n
  simp only [A066377, Nat.add_sub_cancel]

end A066377

/-! ## A066377.P15606382226112918007

`∑[∑[∑[char[3*n]]^(n²%3)]]`
-/

namespace A066377.P15606382226112918007
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ (n ^ 2 % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066377.P15606382226112918007

namespace A066377

/-- `∑[∑[∑[char[3*n]]^(n²%3)]]` -/
def P15606382226112918007.Spec : Prop :=
  ∀ n, (P15606382226112918007.a n : ℤ) = A066377 (n + 1)

end A066377

/-! ## A066377.P9603342942349623838

`∑[∪[(n+1)², a(n-2)+n+2]]` with `a(0)=2, a(1)=3`
-/

namespace A066377.P9603342942349623838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f3 =>
  f3 (n - 2) + (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066377.P9603342942349623838

namespace A066377

/-- `∑[∪[(n+1)², a(n-2)+n+2]]` -/
def P9603342942349623838.Spec : Prop :=
  ∀ n, (P9603342942349623838.a n : ℤ) = A066377 (n + 1)

end A066377

/-! ## A066377.P16005038335694975119

`∑[a(n-1)+gcd(floor(n/3)+1, a(n-1))]` with `a(0)=1`
-/

namespace A066377.P16005038335694975119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + Int.gcd (⌊(n : ℚ) / 3⌋ + 1) (f1 (n - 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066377.P16005038335694975119

namespace A066377

/-- `∑[a(n-1)+gcd(floor(n/3)+1, a(n-1))]` -/
def P16005038335694975119.Spec : Prop :=
  ∀ n, (P16005038335694975119.a n : ℤ) = A066377 (n + 1)

end A066377

/-! ## A066377.P15856212647899229909

`∑[floor((n+2)/3)*(floor((n+1)/3)+1)+floor((n+3)/3)]`
-/

namespace A066377.P15856212647899229909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 3⌋ * (⌊(n + 1 : ℚ) / 3⌋ + 1) + ⌊(n + 3 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066377.P15856212647899229909

namespace A066377

/-- `∑[floor((n+2)/3)*(floor((n+1)/3)+1)+floor((n+3)/3)]` -/
def P15856212647899229909.Spec : Prop :=
  ∀ n, P15856212647899229909.a n = A066377 (n + 1)

end A066377

/-! ## A066377.P17302352113529001872

`A006501(n)+∑[A087508(n)]`
-/

namespace A066377.P17302352113529001872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066377.P17302352113529001872

namespace A066377

/-- `A006501(n)+∑[A087508(n)]` -/
def P17302352113529001872.Spec : Prop :=
  ∀ n, P17302352113529001872.a n = A066377 (n + 1)

end A066377

/-! ## A066377.P15951194228686996681

`A190798(n+1)+∑[n+1-A000212(n+1)]`
-/

namespace A066377.P15951194228686996681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190798 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066377.P15951194228686996681

namespace A066377

/-- `A190798(n+1)+∑[n+1-A000212(n+1)]` -/
def P15951194228686996681.Spec : Prop :=
  ∀ n, P15951194228686996681.a n = A066377 (n + 1)

end A066377

/-! ## A066377.P13839615969015993249

`A092353(n+1)+A287195(n+1)-A006446(n+2)`
-/

namespace A066377.P13839615969015993249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092353 (n + 1) + (A287195 (n + 1) - A006446 (n + 2))

end

end A066377.P13839615969015993249

namespace A066377

/-- `A092353(n+1)+A287195(n+1)-A006446(n+2)` -/
def P13839615969015993249.Spec : Prop :=
  ∀ n, P13839615969015993249.a n = A066377 (n + 1)

end A066377

/-! ## A066377.P2414947414396702653

`A008620(n+1)*A086162(3*A004396(n))`
-/

namespace A066377.P2414947414396702653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) * A086162 (3 * A004396 n).toNat

end

end A066377.P2414947414396702653

namespace A066377

/-- `A008620(n+1)*A086162(3*A004396(n))` -/
def P2414947414396702653.Spec : Prop :=
  ∀ n, P2414947414396702653.a n = A066377 (n + 1)

end A066377

/-!
# A066378: Floor(log(n)) divides n.

The programs for A066378, there is no canonical definition to state claims against.
-/

/-! ## A066378.P7299067495328512471

`A066379(n+1)-A057427(n)*A066379(A028310(n))`
-/

namespace A066378.P7299067495328512471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066379 (n + 1) - A057427 n * A066379 (A028310 n).toNat

end

end A066378.P7299067495328512471

/-! ## A066378.P11777808730493136629

`Δ[A066379(n)+a((A000007(n)+1)²-1)]` with `a(0)=2`
-/

namespace A066378.P11777808730493136629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A066379 n + f1 ((A000007 n + 1) ^ 2 - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066378.P11777808730493136629

/-! ## A066378.P3319425346904337154

`Δ[A057427(n)*A066379(A028310(n))]`
-/

namespace A066378.P3319425346904337154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A066379 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066378.P3319425346904337154

/-! ## A066378.P12041660247980150761

`Δ[A066379(A028310(n))-(A000007(n)+1)²]`
-/

namespace A066378.P12041660247980150761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066379 (A028310 n).toNat - (A000007 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066378.P12041660247980150761

/-! ## A066378.P4007401522839344866

`Δ[A066379(A028310(n))%A132107(n)]`
-/

namespace A066378.P4007401522839344866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066379 (A028310 n).toNat) (A132107 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066378.P4007401522839344866

/-!
# A066379: Sum of the first n numbers m such that floor(log(m)) divides m.

The programs for A066379, there is no canonical definition to state claims against.
-/

/-! ## A066379.P7383896305876953971

`∑[A066378(1+n)]`
-/

namespace A066379.P7383896305876953971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066378 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066379.P7383896305876953971

/-! ## A066379.P995388155335965604

`∑[record[A066378(A286378(n))]]`
-/

namespace A066379.P995388155335965604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066378 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066379.P995388155335965604

/-! ## A066379.P12107064800041522126

`∑[A066378(-xor(n, -1))]%A017511(n)`
-/

namespace A066379.P12107064800041522126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066378 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017511 n)

end

end A066379.P12107064800041522126

/-! ## A066379.P11455271028185735387

`∑[record[A066378(A133310(n))]]`
-/

namespace A066379.P11455271028185735387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066378 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066379.P11455271028185735387

/-! ## A066379.P11832553992833031258

`∑[record[A066378(A126759(n))]]`
-/

namespace A066379.P11832553992833031258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066378 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066379.P11832553992833031258

/-! ## A066379.P12959568432060682233

`∑[record[A066378(A137735(n))]]`
-/

namespace A066379.P12959568432060682233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066378 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066379.P12959568432060682233

/-! ## A066379.P16580768725717983420

`∑[record[A066378(A116549(n))]]`
-/

namespace A066379.P16580768725717983420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066378 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066379.P16580768725717983420

/-!
# A066380: a(n) = Sum_{k=0..n} binomial(3*n,k).

The programs for A066380, the canonical program `A066380.P17377849073127923994` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066380 has offset 0).

The definition of A066380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n, #)]` (program `A066380.P17377849073127923994`, by `A066380.P17377849073127923994.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066380.P17377849073127923994

`∑{#}[n, C(3*n, #)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066380

/-- `∑{#}[n, C(3*n, #)]` -/
def P17377849073127923994.Spec : Prop :=
  ∀ n, (P17377849073127923994.a n : ℤ) = A066380 n

theorem P17377849073127923994.correct : P17377849073127923994.Spec := by
  intro n
  simp only [A066380]

end A066380

/-! ## A066380.P8114425052674508970

`8*a(n-1)-(5*n²+n-2)*(3*n-3)!/((2*n-1)!*n!)` with `a(0)=1`
-/

namespace A066380.P8114425052674508970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - (((5 * n ^ 2 + n : ℤ) - 2) * (Nat.factorial ((3 * n : ℤ) - 3).toNat : ℤ) : ℚ) / (Nat.factorial ((2 * n : ℤ) - 1).toNat * Nat.factorial n : ℚ)

end

end A066380.P8114425052674508970

namespace A066380

/-- `8*a(n-1)-(5*n²+n-2)*(3*n-3)!/((2*n-1)!*n!)` -/
def P8114425052674508970.Spec : Prop :=
  ∀ n, P8114425052674508970.a n = (A066380 n : ℚ)

end A066380

/-! ## A066380.P2682423900162851642

`2*A005809(n)-A047098(n)`
-/

namespace A066380.P2682423900162851642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005809 n - A047098 n

end

end A066380.P2682423900162851642

namespace A066380

/-- `2*A005809(n)-A047098(n)` -/
def P2682423900162851642.Spec : Prop :=
  ∀ n, P2682423900162851642.a n = A066380 n

theorem P2682423900162851642.correct : P2682423900162851642.Spec := by
  intro n
  simp only [A066380, Nat.add_sub_cancel, A066380.P2682423900162851642.a, A066380.P17377849073127923994.f1, A066380.P17377849073127923994.a, A005809, A005809.P15087077436016713419.a, A047098, A047098.P17824499988786112480.f1, A047098.P17824499988786112480.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066380

/-! ## A066380.P17930214968209534296

`A387033(n)+A387033(n)-A165817(n)`
-/

namespace A066380.P17930214968209534296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387033 n + (A387033 n - A165817 n)

end

end A066380.P17930214968209534296

namespace A066380

/-- `A387033(n)+A387033(n)-A165817(n)` -/
def P17930214968209534296.Spec : Prop :=
  ∀ n, P17930214968209534296.a n = A066380 n

end A066380

/-! ## A066380.P5637109197170516781

`A097750(∑[4*n])`
-/

namespace A066380.P5637109197170516781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066380.P5637109197170516781

namespace A066380

/-- `A097750(∑[4*n])` -/
def P5637109197170516781.Spec : Prop :=
  ∀ n, P5637109197170516781.a n = A066380 n

end A066380

/-! ## A066380.P13734471836786630735

`A131250(∑[4*n])`
-/

namespace A066380.P13734471836786630735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066380.P13734471836786630735

namespace A066380

/-- `A131250(∑[4*n])` -/
def P13734471836786630735.Spec : Prop :=
  ∀ n, P13734471836786630735.a n = A066380 n

end A066380

/-! ## A066380.P176666781737595183

`A187926(A001105(n)-A057427(n))`
-/

namespace A066380.P176666781737595183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A001105 n - A057427 n).toNat

end

end A066380.P176666781737595183

namespace A066380

/-- `A187926(A001105(n)-A057427(n))` -/
def P176666781737595183.Spec : Prop :=
  ∀ n, P176666781737595183.a n = A066380 n

end A066380

/-!
# A066381: a(n) = Sum_{k=0..n} binomial(4*n,k).

The programs for A066381, the canonical program `A066381.P5028763949478725757` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066381 has offset 0).

The definition of A066381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n, #)]` (program `A066381.P5028763949478725757`, by `A066381.P5028763949478725757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066381.P5028763949478725757

`∑{#}[n, C(4*n, #)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066381

/-- `∑{#}[n, C(4*n, #)]` -/
def P5028763949478725757.Spec : Prop :=
  ∀ n, (P5028763949478725757.a n : ℤ) = A066381 n

theorem P5028763949478725757.correct : P5028763949478725757.Spec := by
  intro n
  simp only [A066381]

end A066381

/-! ## A066381.P14813303034833375020

`A124234(A062728(n))`
-/

namespace A066381.P14813303034833375020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124234 (A062728 n).toNat

end

end A066381.P14813303034833375020

namespace A066381

/-- `A124234(A062728(n))` -/
def P14813303034833375020.Spec : Prop :=
  ∀ n, P14813303034833375020.a n = A066381 n

end A066381

/-! ## A066381.P11978993618459445476

`A008949(A139276(n))`
-/

namespace A066381.P11978993618459445476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A139276 n).toNat

end

end A066381.P11978993618459445476

namespace A066381

/-- `A008949(A139276(n))` -/
def P11978993618459445476.Spec : Prop :=
  ∀ n, P11978993618459445476.a n = A066381 n

end A066381

/-! ## A066381.P2353551505231755588

`A054143(A139274(n))`
-/

namespace A066381.P2353551505231755588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A139274 n).toNat

end

end A066381.P2353551505231755588

namespace A066381

/-- `A054143(A139274(n))` -/
def P2353551505231755588.Spec : Prop :=
  ∀ n, P2353551505231755588.a n = A066381 n

end A066381

/-! ## A066381.P10089995964259815189

`A055248(A139277(n))`
-/

namespace A066381.P10089995964259815189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A139277 n).toNat

end

end A066381.P10089995964259815189

namespace A066381

/-- `A055248(A139277(n))` -/
def P10089995964259815189.Spec : Prop :=
  ∀ n, P10089995964259815189.a n = A066381 n

end A066381

/-!
# A066382: a(n) = Sum_{k=0..n} binomial(n^2,k).

The programs for A066382, the canonical program `A066382.P2705096025338764314` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066382 has offset 0).

The definition of A066382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n², #)]` (program `A066382.P2705096025338764314`, by `A066382.P2705096025338764314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066382.P2705096025338764314

`∑{#}[n, C(n², #)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066382

/-- `∑{#}[n, C(n², #)]` -/
def P2705096025338764314.Spec : Prop :=
  ∀ n, (P2705096025338764314.a n : ℤ) = A066382 n

theorem P2705096025338764314.correct : P2705096025338764314.Spec := by
  intro n
  simp only [A066382]

end A066382

/-! ## A066382.P17262331041082910869

`A007819(A028310(n))+ceil(sin(n)²)`
-/

namespace A066382.P17262331041082910869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007819 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A066382.P17262331041082910869

namespace A066382

/-- `A007819(A028310(n))+ceil(sin(n)²)` -/
def P17262331041082910869.Spec : Prop :=
  ∀ n, P17262331041082910869.a n = A066382 n

end A066382

/-! ## A066382.P14864861658696370818

`A131250(A000124(A000124(n))-(n+2))`
-/

namespace A066382.P14864861658696370818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (A000124 (A000124 n).toNat - (n + 2 : ℤ)).toNat

end

end A066382.P14864861658696370818

namespace A066382

/-- `A131250(A000124(A000124(n))-(n+2))` -/
def P14864861658696370818.Spec : Prop :=
  ∀ n, P14864861658696370818.a n = A066382 n

end A066382

/-! ## A066382.P11568077054414680613

`A008949(A037270(n)+n)`
-/

namespace A066382.P11568077054414680613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A037270 n + (n : ℤ)).toNat

end

end A066382.P11568077054414680613

namespace A066382

/-- `A008949(A037270(n)+n)` -/
def P11568077054414680613.Spec : Prop :=
  ∀ n, P11568077054414680613.a n = A066382 n

end A066382

/-! ## A066382.P4505885979790448310

`A008949(A000217(n²)+n)`
-/

namespace A066382.P4505885979790448310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A000217 (n ^ 2) + (n : ℤ)).toNat

end

end A066382.P4505885979790448310

namespace A066382

/-- `A008949(A000217(n²)+n)` -/
def P4505885979790448310.Spec : Prop :=
  ∀ n, P4505885979790448310.a n = A066382 n

end A066382

/-!
# A066383: a(n) = Sum_{k=0..n} binomial(n*(n+1)/2,k).

The programs for A066383, the canonical program `A066383.P8118937795201815822` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066383 has offset 0).

The definition of A066383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n*(n+1)/2, #)]` (program `A066383.P8118937795201815822`, by `A066383.P8118937795201815822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066383.P8118937795201815822

`∑{#}[n, C(n*(n+1)/2, #)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066383

/-- `∑{#}[n, C(n*(n+1)/2, #)]` -/
def P8118937795201815822.Spec : Prop :=
  ∀ n, (P8118937795201815822.a n : ℤ) = A066383 n

theorem P8118937795201815822.correct : P8118937795201815822.Spec := by
  intro n
  simp only [A066383]

end A066383

/-! ## A066383.P14945910354574562391

`∑{#}[n, C(C(n+1, 2), #)]`
-/

namespace A066383.P14945910354574562391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (Nat.choose (n + 1) 2) k

end

end A066383.P14945910354574562391

namespace A066383

/-- `∑{#}[n, C(C(n+1, 2), #)]` -/
def P14945910354574562391.Spec : Prop :=
  ∀ n, (P14945910354574562391.a n : ℤ) = A066383 n

end A066383

/-! ## A066383.P13690293308950377668

`A369192(n+1)-A116508(n+1)`
-/

namespace A066383.P13690293308950377668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369192 (n + 1) - A116508 (n + 1)

end

end A066383.P13690293308950377668

namespace A066383

/-- `A369192(n+1)-A116508(n+1)` -/
def P13690293308950377668.Spec : Prop :=
  ∀ n, P13690293308950377668.a n = A066383 n

end A066383

/-! ## A066383.P464604454751057635

`A193820(A037255(n+1))`
-/

namespace A066383.P464604454751057635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A037255 (n + 1)).toNat

end

end A066383.P464604454751057635

namespace A066383

/-- `A193820(A037255(n+1))` -/
def P464604454751057635.Spec : Prop :=
  ∀ n, P464604454751057635.a n = A066383 n

end A066383

/-! ## A066383.P13221131067485630849

`A008949(A002817(n)+n)`
-/

namespace A066383.P13221131067485630849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A002817 n + (n : ℤ)).toNat

end

end A066383.P13221131067485630849

namespace A066383

/-- `A008949(A002817(n)+n)` -/
def P13221131067485630849.Spec : Prop :=
  ∀ n, P13221131067485630849.a n = A066383 n

end A066383

/-!
# A066384: a(n) = Sum_{k=0..n} binomial(2^n,k).

The programs for A066384, the canonical program `A066384.P16740168342692724103` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066384 has offset 0).

The definition of A066384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2^n, #)]` (program `A066384.P16740168342692724103`, by `A066384.P16740168342692724103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066384.P16740168342692724103

`∑{#}[n, C(2^n, #)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066384

/-- `∑{#}[n, C(2^n, #)]` -/
def P16740168342692724103.Spec : Prop :=
  ∀ n, (P16740168342692724103.a n : ℤ) = A066384 n

theorem P16740168342692724103.correct : P16740168342692724103.Spec := by
  intro n
  simp only [A066384]

end A066384

/-! ## A066384.P4359751650073669337

`A001527(n)-A136556(n)`
-/

namespace A066384.P4359751650073669337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001527 n - A136556 n

end

end A066384.P4359751650073669337

namespace A066384

/-- `A001527(n)-A136556(n)` -/
def P4359751650073669337.Spec : Prop :=
  ∀ n, P4359751650073669337.a n = A066384 n

end A066384

/-! ## A066384.P11015677400708020228

`2*A046855(n)-A136556(n)`
-/

namespace A066384.P11015677400708020228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046855 n - A136556 n

end

end A066384.P11015677400708020228

namespace A066384

/-- `2*A046855(n)-A136556(n)` -/
def P11015677400708020228.Spec : Prop :=
  ∀ n, P11015677400708020228.a n = A066384 n

end A066384

/-! ## A066384.P6627446791008322475

`A046855(n)+A046855(A256577(n))-A136556(n)`
-/

namespace A066384.P6627446791008322475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046855 n + A046855 (A256577 n).toNat - A136556 n

end

end A066384.P6627446791008322475

namespace A066384

/-- `A046855(n)+A046855(A256577(n))-A136556(n)` -/
def P6627446791008322475.Spec : Prop :=
  ∀ n, P6627446791008322475.a n = A066384 n

end A066384

/-! ## A066384.P8283476799470629898

`A046855(A004885(n+1))+A046855(n)-A136556(n)`
-/

namespace A066384.P8283476799470629898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046855 (A004885 (n + 1)).toNat + A046855 n - A136556 n

end

end A066384.P8283476799470629898

namespace A066384

/-- `A046855(A004885(n+1))+A046855(n)-A136556(n)` -/
def P8283476799470629898.Spec : Prop :=
  ∀ n, P8283476799470629898.a n = A066384 n

end A066384

/-!
# A066385: Smallest maximum of sum of 3 consecutive terms in any arrangement of [1..n] in a circle.

The programs for A066385, there is no canonical definition to state claims against.
-/

/-! ## A066385.P6534238707661410768

`ogf((6+3x-5x^2-2x^3+2x^4-2x^6+x^7+x^8-x^9-x^12+x^13+x^14-x^15)/(1-x-x^2+x^3))`
-/

namespace A066385.P6534238707661410768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3, -5, -2, 2, 0, -2, 1, 1, -1, 0, 0, -1, 1, 1, -1] [1, -1, -1, 1] n

end

end A066385.P6534238707661410768

/-!
# A066386: Numbers k such that k^6 + 1091 is prime.

The programs for A066386, there is no canonical definition to state claims against.
-/

/-! ## A066386.P7808897735450935226

`2*A155809(n+1)`
-/

namespace A066386.P7808897735450935226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155809 (n + 1)

end

end A066386.P7808897735450935226

/-! ## A066386.P2928342788891984501

`A155809(A000027(n+1))+A155809(n+1)`
-/

namespace A066386.P2928342788891984501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155809 (A000027 (n + 1)).toNat + A155809 (n + 1)

end

end A066386.P2928342788891984501

/-! ## A066386.P9786054162158842714

`A155809(n+1)+xor(A000007(n+1), A155809(n+1))`
-/

namespace A066386.P9786054162158842714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155809 (n + 1) + Int.xor (A000007 (n + 1)) (A155809 (n + 1))

end

end A066386.P9786054162158842714

/-! ## A066386.P14896345726620222362

`A005843(A155809(n+1))`
-/

namespace A066386.P14896345726620222362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A155809 (n + 1)).toNat

end

end A066386.P14896345726620222362

/-! ## A066386.P8296702353787366379

`A047242(A155809(n+1)+1)`
-/

namespace A066386.P8296702353787366379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A155809 (n + 1) + 1).toNat

end

end A066386.P8296702353787366379

/-!
# A066387: Triangle T(n,m) (1<=m<=n) giving number of maps f:N -> N such that f^m(X)=X+n for all natural numbers X.

The programs for A066387, there is no canonical definition to state claims against.
-/

/-! ## A066387.P14321068169707066444

`A335259(n+1)*A368213(n+1)`
-/

namespace A066387.P14321068169707066444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335259 (n + 1) * A368213 (n + 1)

end

end A066387.P14321068169707066444

/-! ## A066387.P17763688671742683055

`A133644(n+1)*A397133(n+1)`
-/

namespace A066387.P17763688671742683055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133644 (n + 1) * A397133 (n + 1)

end

end A066387.P17763688671742683055

/-! ## A066387.P15269493110504509049

`lcm(A133644(n+1), A368213(n+1))`
-/

namespace A066387.P15269493110504509049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133644 (n + 1)) (A368213 (n + 1))

end

end A066387.P15269493110504509049

/-! ## A066387.P11647448984715297076

`A121757(n)*A122908(A094816(n))`
-/

namespace A066387.P11647448984715297076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121757 n * A122908 (A094816 n).toNat

end

end A066387.P11647448984715297076

/-! ## A066387.P551471796540975330

`lcm(A160692(A333142(n)), A179457(n+1))`
-/

namespace A066387.P551471796540975330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160692 (A333142 n).toNat) (A179457 (n + 1))

end

end A066387.P551471796540975330

/-!
# A066388: Numbers j such that j and 2j are both between a pair of twin primes.

The programs for A066388, there is no canonical definition to state claims against.
-/

/-! ## A066388.P16866023575762569122

`6*A177680(n+1)`
-/

namespace A066388.P16866023575762569122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A177680 (n + 1)

end

end A066388.P16866023575762569122

/-! ## A066388.P2103674245973956577

`A076504(n+1)/2`
-/

namespace A066388.P2103674245973956577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076504 (n + 1) : ℚ) / 2

end

end A066388.P2103674245973956577

/-! ## A066388.P9095801055448723204

`A069142(1+n)+1`
-/

namespace A066388.P9095801055448723204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069142 (1 + n) + 1

end

end A066388.P9095801055448723204

/-! ## A066388.P11355269651122848516

`A001359(A158866(n+1))+1`
-/

namespace A066388.P11355269651122848516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A158866 (n + 1)).toNat + 1

end

end A066388.P11355269651122848516

/-! ## A066388.P14753904731406712455

`floor(A158870(n+1)/2)`
-/

namespace A066388.P14753904731406712455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158870 (n + 1) : ℚ) / 2⌋

end

end A066388.P14753904731406712455

/-! ## A066388.P2894421056315469105

`A261463(n+2)+1`
-/

namespace A066388.P2894421056315469105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261463 (n + 2) + 1

end

end A066388.P2894421056315469105

/-! ## A066388.P13368921038089949967

`A221310(n+4)`
-/

namespace A066388.P13368921038089949967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 4)

end

end A066388.P13368921038089949967

/-! ## A066388.P15827650699072196240

`∩[A045536(n+1), A126107(n+1)]+1`
-/

namespace A066388.P15827650699072196240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A066388.P15827650699072196240

/-! ## A066388.P16640009853199545911

`∩[A045536(n+1), A329151(n+1)]+1`
-/

namespace A066388.P16640009853199545911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A066388.P16640009853199545911

/-! ## A066388.P13642127351788271851

`∩[A045536(n+1), A099349(n+1)]+1`
-/

namespace A066388.P13642127351788271851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A066388.P13642127351788271851

/-! ## A066388.P15603994262177954994

`∩[A249676(n+1), A351875(n+1)]`
-/

namespace A066388.P15603994262177954994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066388.P15603994262177954994

/-! ## A066388.P11639138267486210441

`∩[A089965(n+1), A167597(n+1)]/2`
-/

namespace A066388.P11639138267486210441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167597 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A066388.P11639138267486210441

/-! ## A066388.P12644079702915667885

`∩[A176045(n+1), A249676(n+1)]`
-/

namespace A066388.P12644079702915667885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066388.P12644079702915667885

/-! ## A066388.P9766523085144353558

`∩[A176045(n+1), A351875(n+1)]`
-/

namespace A066388.P9766523085144353558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066388.P9766523085144353558

/-! ## A066388.P15554845073097725551

`∩[A034937(n+1), A045536(n+1)]+1`
-/

namespace A066388.P15554845073097725551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A066388.P15554845073097725551

/-! ## A066388.P6756376837814634903

`A014574(A158866(n+1))`
-/

namespace A066388.P6756376837814634903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A158866 (n + 1)).toNat

end

end A066388.P6756376837814634903

/-! ## A066388.P14312733683676997070

`∩[A014574(n+1), A241557(n+1)]`
-/

namespace A066388.P14312733683676997070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066388.P14312733683676997070

/-! ## A066388.P6841715013986147178

`∩[A014574(n+1), A249676(n+1)]`
-/

namespace A066388.P6841715013986147178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066388.P6841715013986147178

/-! ## A066388.P16747791288723546202

`∩[A120432(n+1), A249676(n+1)]`
-/

namespace A066388.P16747791288723546202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066388.P16747791288723546202

/-! ## A066388.P1454486224060692557

`∩[A217259(n+1), A241557(n+1)]`
-/

namespace A066388.P1454486224060692557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066388.P1454486224060692557

/-!
# A066389: Number of 2-generated groups of order n: groups that have a generating set of size <=2, i.e., are cyclic or of the form <a,b>.

The programs for A066389, there is no canonical definition to state claims against.
-/

/-! ## A066389.P9754602814593612686

`A083280(n+1)+A046951(n+1)`
-/

namespace A066389.P9754602814593612686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083280 (n + 1) + A046951 (n + 1)

end

end A066389.P9754602814593612686

/-! ## A066389.P13974453187916042886

`A000001(n+1)-A068385(n+1)`
-/

namespace A066389.P13974453187916042886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A068385 (n + 1)

end

end A066389.P13974453187916042886

/-! ## A066389.P14468941312498869817

`A083280(n+1)+A000005(A000188(n+1))`
-/

namespace A066389.P14468941312498869817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083280 (n + 1) + A000005 (A000188 (n + 1)).toNat

end

end A066389.P14468941312498869817

/-! ## A066389.P9751522767132449434

`A298735(A003961(n+1))+A083280(n+1)`
-/

namespace A066389.P9751522767132449434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A003961 (n + 1)).toNat + A083280 (n + 1)

end

end A066389.P9751522767132449434

/-! ## A066389.P13290478008027105589

`A298735(A045965(n+1))+A083280(n+1)`
-/

namespace A066389.P13290478008027105589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A045965 (n + 1)).toNat + A083280 (n + 1)

end

end A066389.P13290478008027105589

/-!
# A066390: Smallest cube that contains exactly n consecutive internal 0's and no other 0's.

The programs for A066390, there is no canonical definition to state claims against.
-/

/-! ## A066390.P676376568827687618

`A066391(n)^3`
-/

namespace A066390.P676376568827687618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066391 n ^ 3

end

end A066390.P676376568827687618

/-!
# A066391: a(n)^3 is smallest cube that contains exactly n consecutive internal 0's and no other 0's.

The programs for A066391, there is no canonical definition to state claims against.
-/

/-! ## A066391.P9501798144388911631

`root(A066390(n), 3)`
-/

namespace A066391.P9501798144388911631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066390 n : ℝ) ^ (1 / (3 : ℝ))

end

end A066391.P9501798144388911631

/-!
# A066392: a(n)^2 is the smallest positive square that contains n consecutive internal 0's.

The programs for A066392, there is no canonical definition to state claims against.
-/

/-! ## A066392.P14941983004491407797

`sqrt(A066371(n))`
-/

namespace A066392.P14941983004491407797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A066371 n : ℝ)

end

end A066392.P14941983004491407797

/-! ## A066392.P16483085649273468708

`root(A066371(n), p?[A002655(n)])`
-/

namespace A066392.P16483085649273468708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002655 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066371 n : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A066392.P16483085649273468708

/-! ## A066392.P12012480829779591287

`root(A066371(n), gcd(2, A066380(n)))`
-/

namespace A066392.P12012480829779591287
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066371 n : ℝ) ^ (1 / (Int.gcd 2 (A066380 n) : ℝ))

end

end A066392.P12012480829779591287

/-! ## A066392.P15005938038375943500

`root(A066371(n), dr(A163450(n+1)))`
-/

namespace A066392.P15005938038375943500
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066371 n : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A163450 (n + 1)) : ℝ))

end

end A066392.P15005938038375943500

/-! ## A066392.P11331284945538358888

`root(A066371(n), Δ[A084563(n+1)])`
-/

namespace A066392.P11331284945538358888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084563 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066371 n : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))

end

end A066392.P11331284945538358888

/-!
# A066393: Coordination sequence for (9^3, 3.9^2) net with respect to a vertex of type 9^3.

The programs for A066393, the canonical program `A066393.P17926802631717206228` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066393 has offset 0).

The definition of A066393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066393.P17926802631717206228

`ogf((1+3x+6x^2+4x^3+6x^4+3x^5+x^6)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066393

/-- `ogf((1+3x+6x^2+4x^3+6x^4+3x^5+x^6)/(1-2x^3+x^6))` -/
def P17926802631717206228.Spec : Prop :=
  ∀ n, P17926802631717206228.a n = A066393 n

theorem P17926802631717206228.correct : P17926802631717206228.Spec := by
  intro n
  simp only [A066393]

end A066393

/-! ## A066393.P13838524488355210119

`n*(3-4%gcd(n, a(n-1)))` with `a(0)=1`
-/

namespace A066393.P13838524488355210119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (3 - ((4 % Int.gcd (n : ℤ) (a (n - 1)) : ℕ) : ℤ))

end

end A066393.P13838524488355210119

namespace A066393

/-- `n*(3-4%gcd(n, a(n-1)))` -/
def P13838524488355210119.Spec : Prop :=
  ∀ n, P13838524488355210119.a n = A066393 n

end A066393

/-! ## A066393.P8885985426341264964

`A004277(n)+n*n²%3`
-/

namespace A066393.P8885985426341264964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + ((n * (n ^ 2 % 3) : ℕ) : ℤ)

end

end A066393.P8885985426341264964

namespace A066393

/-- `A004277(n)+n*n²%3` -/
def P8885985426341264964.Spec : Prop :=
  ∀ n, P8885985426341264964.a n = A066393 n

end A066393

/-! ## A066393.P16955927669228851073

`(n²+1)%3*A028310(n)+n`
-/

namespace A066393.P16955927669228851073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1) % 3 : ℕ) : ℤ) * A028310 n + (n : ℤ)

end

end A066393.P16955927669228851073

namespace A066393

/-- `(n²+1)%3*A028310(n)+n` -/
def P16955927669228851073.Spec : Prop :=
  ∀ n, P16955927669228851073.a n = A066393 n

end A066393

/-! ## A066393.P4992210882350303660

`A004277((lcm(3, n)/3+n)/2)+(lcm(3, n)/3+n)/2`
-/

namespace A066393.P4992210882350303660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (SequenceMachineLib.roundAway (((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2)).toNat : ℚ) + ((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2

end

end A066393.P4992210882350303660

namespace A066393

/-- `A004277((lcm(3, n)/3+n)/2)+(lcm(3, n)/3+n)/2` -/
def P4992210882350303660.Spec : Prop :=
  ∀ n, P4992210882350303660.a n = (A066393 n : ℚ)

end A066393

/-! ## A066393.P14507547748782783991

`A008486(A186101(n))`
-/

namespace A066393.P14507547748782783991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A186101 n).toNat

end

end A066393.P14507547748782783991

namespace A066393

/-- `A008486(A186101(n))` -/
def P14507547748782783991.Spec : Prop :=
  ∀ n, P14507547748782783991.a n = A066393 n

end A066393

/-! ## A066393.P6398719858288638215

`A091684(n)+A004277(n)`
-/

namespace A066393.P6398719858288638215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n + A004277 n

end

end A066393.P6398719858288638215

namespace A066393

/-- `A091684(n)+A004277(n)` -/
def P6398719858288638215.Spec : Prop :=
  ∀ n, P6398719858288638215.a n = A066393 n

end A066393

/-! ## A066393.P4884924157825971938

`A028310(n)*A164359(n)`
-/

namespace A066393.P4884924157825971938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A164359 n

end

end A066393.P4884924157825971938

namespace A066393

/-- `A028310(n)*A164359(n)` -/
def P4884924157825971938.Spec : Prop :=
  ∀ n, P4884924157825971938.a n = A066393 n

end A066393

/-! ## A066393.P1829781368468609753

`A008458(n)/A082204(n)`
-/

namespace A066393.P1829781368468609753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A082204 n : ℚ)

end

end A066393.P1829781368468609753

namespace A066393

/-- `A008458(n)/A082204(n)` -/
def P1829781368468609753.Spec : Prop :=
  ∀ n, P1829781368468609753.a n = (A066393 n : ℚ)

end A066393

/-! ## A066393.P7060647017167983724

`A257174(n)+2*A051176(n)`
-/

namespace A066393.P7060647017167983724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 n + 2 * A051176 n

end

end A066393.P7060647017167983724

namespace A066393

/-- `A257174(n)+2*A051176(n)` -/
def P7060647017167983724.Spec : Prop :=
  ∀ n, P7060647017167983724.a n = A066393 n

end A066393

/-! ## A066393.P6407402800461413809

`A008486((A051176(n)+n)/2)`
-/

namespace A066393.P6407402800461413809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A051176 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A066393.P6407402800461413809

namespace A066393

/-- `A008486((A051176(n)+n)/2)` -/
def P6407402800461413809.Spec : Prop :=
  ∀ n, P6407402800461413809.a n = A066393 n

end A066393

/-! ## A066393.P14899178901563457856

`A008486(2*n/A052901(n))`
-/

namespace A066393.P14899178901563457856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A052901 n : ℚ)))).toNat

end

end A066393.P14899178901563457856

namespace A066393

/-- `A008486(2*n/A052901(n))` -/
def P14899178901563457856.Spec : Prop :=
  ∀ n, P14899178901563457856.a n = A066393 n

end A066393

/-! ## A066393.P8071316013671512305

`A008486(2*n/A082204(n))`
-/

namespace A066393.P8071316013671512305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A082204 n : ℚ)))).toNat

end

end A066393.P8071316013671512305

namespace A066393

/-- `A008486(2*n/A082204(n))` -/
def P8071316013671512305.Spec : Prop :=
  ∀ n, P8071316013671512305.a n = A066393 n

end A066393

/-! ## A066393.P10608251991161830507

`A115285(n)%4*A028310(n)`
-/

namespace A066393.P10608251991161830507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115285 n) 4 * A028310 n

end

end A066393.P10608251991161830507

namespace A066393

/-- `A115285(n)%4*A028310(n)` -/
def P10608251991161830507.Spec : Prop :=
  ∀ n, P10608251991161830507.a n = A066393 n

end A066393

/-! ## A066393.P17844283798548751477

`A028310(n)+A091684(n)+n`
-/

namespace A066393.P17844283798548751477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A091684 n + (n : ℤ))

end

end A066393.P17844283798548751477

namespace A066393

/-- `A028310(n)+A091684(n)+n` -/
def P17844283798548751477.Spec : Prop :=
  ∀ n, P17844283798548751477.a n = A066393 n

end A066393

/-! ## A066393.P9416174757629213272

`A004277(n)+n*A106510(n)²`
-/

namespace A066393.P9416174757629213272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n : ℤ) * A106510 n ^ 2

end

end A066393.P9416174757629213272

namespace A066393

/-- `A004277(n)+n*A106510(n)²` -/
def P9416174757629213272.Spec : Prop :=
  ∀ n, P9416174757629213272.a n = A066393 n

end A066393

/-! ## A066393.P8359856330998869139

`A004277(n)+n*A163804(n)²`
-/

namespace A066393.P8359856330998869139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n : ℤ) * A163804 n ^ 2

end

end A066393.P8359856330998869139

namespace A066393

/-- `A004277(n)+n*A163804(n)²` -/
def P8359856330998869139.Spec : Prop :=
  ∀ n, P8359856330998869139.a n = A066393 n

end A066393

/-! ## A066393.P7973240283531952022

`A008486(A008486(n)-(A257174(n)+n))`
-/

namespace A066393.P7973240283531952022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008486 n - (A257174 n + (n : ℤ))).toNat

end

end A066393.P7973240283531952022

namespace A066393

/-- `A008486(A008486(n)-(A257174(n)+n))` -/
def P7973240283531952022.Spec : Prop :=
  ∀ n, P7973240283531952022.a n = A066393 n

end A066393

/-! ## A066393.P6840856737612465404

`A008486(A008486(n)-n-A257174(n))`
-/

namespace A066393.P6840856737612465404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008486 n - (n : ℤ) - A257174 n).toNat

end

end A066393.P6840856737612465404

namespace A066393

/-- `A008486(A008486(n)-n-A257174(n))` -/
def P6840856737612465404.Spec : Prop :=
  ∀ n, P6840856737612465404.a n = A066393 n

end A066393

/-! ## A066393.P6488424855156494846

`A091684(n)+record[1-A038608(n)]`
-/

namespace A066393.P6488424855156494846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066393.P6488424855156494846

namespace A066393

/-- `A091684(n)+record[1-A038608(n)]` -/
def P6488424855156494846.Spec : Prop :=
  ∀ n, P6488424855156494846.a n = A066393 n

end A066393

/-!
# A066394: Coordination sequence for ReO_3 net with respect to oxygen atom O_1.

The programs for A066394, the canonical program `A066394.P14483117659571427459` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066394 has offset 0).

The definition of A066394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066394.P10831387493292287483

`ogf((1+2x+7x^2+4x^3+19x^4+2x^5-3x^6)/(1-3x^2+3x^4-x^6))`
-/

namespace A066394.P10831387493292287483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 7, 4, 19, 2, -3] [1, 0, -3, 0, 3, 0, -1] n

end

end A066394.P10831387493292287483

namespace A066394

/-- `ogf((1+2x+7x^2+4x^3+19x^4+2x^5-3x^6)/(1-3x^2+3x^4-x^6))` -/
def P10831387493292287483.Spec : Prop :=
  ∀ n, P10831387493292287483.a n = A066394 n

end A066394

/-! ## A066394.P14483117659571427459

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=10, a(4)=46, a(5)=26, a(6)=106`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066394

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P14483117659571427459.Spec : Prop :=
  ∀ n, P14483117659571427459.a n = A066394 n

theorem P14483117659571427459.correct : P14483117659571427459.Spec := by
  intro n
  simp only [A066394]

end A066394

/-! ## A066394.P6110703861011910525

`abs(A019425(n+1)²-(n²+2))`
-/

namespace A066394.P6110703861011910525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A019425 (n + 1) ^ 2 - (n ^ 2 + 2 : ℤ)|

end

end A066394.P6110703861011910525

namespace A066394

/-- `abs(A019425(n+1)²-(n²+2))` -/
def P6110703861011910525.Spec : Prop :=
  ∀ n, P6110703861011910525.a n = A066394 n

end A066394

/-! ## A066394.P8667037498759046256

`A002620(A047522(n))-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A066394.P8667037498759046256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002620 (A047522 n).toNat - a (n - 1)

end

end A066394.P8667037498759046256

namespace A066394

/-- `A002620(A047522(n))-a(n-1)` -/
def P8667037498759046256.Spec : Prop :=
  ∀ n, P8667037498759046256.a n = A066394 n

end A066394

/-! ## A066394.P14095594362678138483

`lcm(A040000(n), A266981(A132411(n)))`
-/

namespace A066394.P14095594362678138483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040000 n) (A266981 (A132411 n).toNat)

end

end A066394.P14095594362678138483

namespace A066394

/-- `lcm(A040000(n), A266981(A132411(n)))` -/
def P14095594362678138483.Spec : Prop :=
  ∀ n, (P14095594362678138483.a n : ℤ) = A066394 n

end A066394

/-! ## A066394.P7443235943218136630

`A040000(C(n, 2))*A266981(A132411(n))`
-/

namespace A066394.P7443235943218136630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (Nat.choose n 2) * A266981 (A132411 n).toNat

end

end A066394.P7443235943218136630

namespace A066394

/-- `A040000(C(n, 2))*A266981(A132411(n))` -/
def P7443235943218136630.Spec : Prop :=
  ∀ n, P7443235943218136630.a n = A066394 n

end A066394

/-! ## A066394.P711064299425449728

`A040000(floor(n/2))*A266981(A132411(n))`
-/

namespace A066394.P711064299425449728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 ⌊(n : ℚ) / 2⌋.toNat * A266981 (A132411 n).toNat

end

end A066394.P711064299425449728

namespace A066394

/-- `A040000(floor(n/2))*A266981(A132411(n))` -/
def P711064299425449728.Spec : Prop :=
  ∀ n, P711064299425449728.a n = A066394 n

end A066394

/-! ## A066394.P6612247412770550620

`A267354(n²)+A253909(n)`
-/

namespace A066394.P6612247412770550620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (n ^ 2) + A253909 n

end

end A066394.P6612247412770550620

namespace A066394

/-- `A267354(n²)+A253909(n)` -/
def P6612247412770550620.Spec : Prop :=
  ∀ n, P6612247412770550620.a n = A066394 n

end A066394

/-! ## A066394.P14182103111883177734

`A267354(n²)+A028310(n²)`
-/

namespace A066394.P14182103111883177734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (n ^ 2) + A028310 (n ^ 2)

end

end A066394.P14182103111883177734

namespace A066394

/-- `A267354(n²)+A028310(n²)` -/
def P14182103111883177734.Spec : Prop :=
  ∀ n, P14182103111883177734.a n = A066394 n

end A066394

/-! ## A066394.P14383696666835898084

`A267354(n²)+(A000007(n)+n)²`
-/

namespace A066394.P14383696666835898084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (n ^ 2) + (A000007 n + (n : ℤ)) ^ 2

end

end A066394.P14383696666835898084

namespace A066394

/-- `A267354(n²)+(A000007(n)+n)²` -/
def P14383696666835898084.Spec : Prop :=
  ∀ n, P14383696666835898084.a n = A066394 n

end A066394

/-!
# A066395: Expansion of reciprocal of j-function (see A000521).

The programs for A066395, there is no canonical definition to state claims against.
-/

/-! ## A066395.P753637032949984729

`A289141(∑[n+1]+1)/(n+1)`
-/

namespace A066395.P753637032949984729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289141 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A066395.P753637032949984729

/-! ## A066395.P7271231193294795311

`A289210(n+1)/A289210(A001511(2*n+1))`
-/

namespace A066395.P7271231193294795311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289210 (n + 1) : ℚ) / (A289210 (A001511 (2 * n + 1)).toNat : ℚ)

end

end A066395.P7271231193294795311

/-! ## A066395.P33279286574927813

`A289210(n+1)/A289210(A006519(2*n+1))`
-/

namespace A066395.P33279286574927813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289210 (n + 1) : ℚ) / (A289210 (A006519 (2 * n + 1)).toNat : ℚ)

end

end A066395.P33279286574927813

/-!
# A066398: Reversion of g.f. (with constant term included) for partition numbers.

The programs for A066398, there is no canonical definition to state claims against.
-/

/-! ## A066398.P2988792623419494838

`A286354(A056220(n+1))/(n+1)`
-/

namespace A066398.P2988792623419494838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286354 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A066398.P2988792623419494838

/-! ## A066398.P17433502292630369743

`A286354(A047838(2*(n+1)))/(n+1)`
-/

namespace A066398.P17433502292630369743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286354 (A047838 (2 * (n + 1))).toNat : ℚ) / (n + 1 : ℚ)

end

end A066398.P17433502292630369743

/-!
# A066399: From reversion of e.g.f. for squares.

The programs for A066399, there is no canonical definition to state claims against.
-/

/-! ## A066399.P8938015367450801533

`A033880(n+1)-A033880(A073767(n))`
-/

namespace A066399.P8938015367450801533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) - A033880 (A073767 n).toNat

end

end A066399.P8938015367450801533

