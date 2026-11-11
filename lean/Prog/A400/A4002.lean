import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A400202: Number of integers k, 1 <= k < n, such that (n+k)/gcd(n,k) is prime.

The programs for A400202, the canonical program `A400202.P11404524350164515713` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400202 has offset 1).

The definition of A400202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400202.P11404524350164515713

`∑{d}[n+1, A060715(#)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400202

/-- `∑{d}[n+1, A060715(#)]` -/
def P11404524350164515713.Spec : Prop :=
  ∀ n, P11404524350164515713.a n = A400202 (n + 1)

theorem P11404524350164515713.correct : P11404524350164515713.Spec := by
  intro n
  simp only [A400202, Nat.add_sub_cancel]

end A400202

/-! ## A400202.P11271956108183541088

`∑{d}[n+1, A000720(2*#-1)-A000720(#)]`
-/

namespace A400202.P11271956108183541088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000720 (2 * d - 1) - A000720 d)

end

end A400202.P11271956108183541088

namespace A400202

/-- `∑{d}[n+1, A000720(2*#-1)-A000720(#)]` -/
def P11271956108183541088.Spec : Prop :=
  ∀ n, P11271956108183541088.a n = A400202 (n + 1)

end A400202

/-!
# A400204: Minimum perimeter of a right-angled triangle with integer sides whose area is divisible by the n-th prime.

The programs for A400204, there is no canonical definition to state claims against.
-/

/-! ## A400204.P15946790117071971218

`A334799(A330017(n+1))`
-/

namespace A400204.P15946790117071971218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334799 (A330017 (n + 1)).toNat

end

end A400204.P15946790117071971218

/-! ## A400204.P6933512883792275789

`A165089(A050409(3*n+1))*A291463(n+1)`
-/

namespace A400204.P6933512883792275789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165089 (A050409 (3 * n + 1)).toNat * A291463 (n + 1)

end

end A400204.P6933512883792275789

/-!
# A400205: Denominators of semiconvergents of log_2(5).

The programs for A400205, there is no canonical definition to state claims against.
-/

/-! ## A400205.P7661897991382249135

`∑[A299236(2^n+1)]`
-/

namespace A400205.P7661897991382249135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (2 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400205.P7661897991382249135

/-! ## A400205.P681943516467111502

`A004277(comp[A264349(n+1)])-n`
-/

namespace A400205.P681943516467111502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264349 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - (n : ℤ)

end

end A400205.P681943516467111502

/-! ## A400205.P11550033472921089451

`∑[A051699(∑[A139554(3*n+4)])]`
-/

namespace A400205.P11550033472921089451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400205.P11550033472921089451

/-!
# A400209: Number of steps to reach a prime under x -> p*(x - p), with p being the largest prime < x, starting at x = n, or -1 if no such number exists.

The programs for A400209, there is no canonical definition to state claims against.
-/

/-! ## A400209.P5709855691026004791

`A046660(A026666(n))`
-/

namespace A400209.P5709855691026004791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A026666 n).toNat

end

end A400209.P5709855691026004791

/-! ## A400209.P12745297816499052087

`A269518(A104432(n))`
-/

namespace A400209.P12745297816499052087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269518 (A104432 n).toNat

end

end A400209.P12745297816499052087

/-! ## A400209.P9244950606809191991

`A064722(A077168(n+1))`
-/

namespace A400209.P9244950606809191991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (A077168 (n + 1)).toNat

end

end A400209.P9244950606809191991

/-! ## A400209.P13868000084001082003

`A057918(A131520(n+1))`
-/

namespace A400209.P13868000084001082003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A131520 (n + 1)).toNat

end

end A400209.P13868000084001082003

/-! ## A400209.P6616351768732121731

`A111775(A081254(n+1))`
-/

namespace A400209.P6616351768732121731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A081254 (n + 1)).toNat

end

end A400209.P6616351768732121731

/-!
# A400210: a(n) = sigma(n) - tau(m) where m is the largest odd divisor of positive integer n, sigma = A000203 and tau = A000005.

The programs for A400210, the canonical program `A400210.P12738548307429019763` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400210 has offset 1).

The definition of A400210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400210.P13186506136042922027

`2*A086670(n+1)`
-/

namespace A400210.P13186506136042922027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086670 (n + 1)

end

end A400210.P13186506136042922027

namespace A400210

/-- `2*A086670(n+1)` -/
def P13186506136042922027.Spec : Prop :=
  ∀ n, P13186506136042922027.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P12738548307429019763

`A000203(n+1)-A001227(n+1)`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400210

/-- `A000203(n+1)-A001227(n+1)` -/
def P12738548307429019763.Spec : Prop :=
  ∀ n, P12738548307429019763.a n = A400210 (n + 1)

theorem P12738548307429019763.correct : P12738548307429019763.Spec := by
  intro n
  simp only [A400210, Nat.add_sub_cancel]

end A400210

/-! ## A400210.P14833681422439487273

`∑{d}[n+1, or(1, #)-1]`
-/

namespace A400210.P14833681422439487273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.lor 1 d : ℤ) - 1)

end

end A400210.P14833681422439487273

namespace A400210

/-- `∑{d}[n+1, or(1, #)-1]` -/
def P14833681422439487273.Spec : Prop :=
  ∀ n, P14833681422439487273.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P14315871759967099996

`∑{d}[n+1, #-#%2]`
-/

namespace A400210.P14315871759967099996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - ((d % 2 : ℕ) : ℤ))

end

end A400210.P14315871759967099996

namespace A400210

/-- `∑{d}[n+1, #-#%2]` -/
def P14315871759967099996.Spec : Prop :=
  ∀ n, P14315871759967099996.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P2498293026674707645

`∑{d}[n+1, #-and(1, #)]`
-/

namespace A400210.P2498293026674707645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (Nat.land 1 d : ℤ))

end

end A400210.P2498293026674707645

namespace A400210

/-- `∑{d}[n+1, #-and(1, #)]` -/
def P2498293026674707645.Spec : Prop :=
  ∀ n, P2498293026674707645.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P2454300875716856617

`2*∑{d}[n+1, floor(#/2)]`
-/

namespace A400210.P2454300875716856617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), ⌊(d : ℚ) / 2⌋)

end

end A400210.P2454300875716856617

namespace A400210

/-- `2*∑{d}[n+1, floor(#/2)]` -/
def P2454300875716856617.Spec : Prop :=
  ∀ n, P2454300875716856617.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P18284913086184672821

`A183063(n+1)+A065608(n+1)`
-/

namespace A400210.P18284913086184672821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A065608 (n + 1)

end

end A400210.P18284913086184672821

namespace A400210

/-- `A183063(n+1)+A065608(n+1)` -/
def P18284913086184672821.Spec : Prop :=
  ∀ n, P18284913086184672821.a n = A400210 (n + 1)

theorem P18284913086184672821.correct : P18284913086184672821.Spec := by
  intro n
  simp only [A400210, Nat.add_sub_cancel, A400210.P18284913086184672821.a, A400210.P12738548307429019763.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A065608, A065608.P12445239359989980431.a, A183063, A183063.P14549643650991336837.a, A000005, A000005.P16091521709108585461.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400210

/-! ## A400210.P16923077101423308830

`A347286(n+1)+A001065(n+1)`
-/

namespace A400210.P16923077101423308830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347286 (n + 1) + A001065 (n + 1)

end

end A400210.P16923077101423308830

namespace A400210

/-- `A347286(n+1)+A001065(n+1)` -/
def P16923077101423308830.Spec : Prop :=
  ∀ n, P16923077101423308830.a n = A400210 (n + 1)

theorem P16923077101423308830.correct : P16923077101423308830.Spec := by
  intro n
  simp only [A400210, Nat.add_sub_cancel, A400210.P16923077101423308830.a, A400210.P12738548307429019763.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A347286, A347286.P5792309838125408870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400210

/-! ## A400210.P10148300082583044025

`A007503(n+1)-A099777(n+1)`
-/

namespace A400210.P10148300082583044025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A099777 (n + 1)

end

end A400210.P10148300082583044025

namespace A400210

/-- `A007503(n+1)-A099777(n+1)` -/
def P10148300082583044025.Spec : Prop :=
  ∀ n, P10148300082583044025.a n = A400210 (n + 1)

theorem P10148300082583044025.correct : P10148300082583044025.Spec := by
  intro n
  simp only [A400210, Nat.add_sub_cancel, A400210.P10148300082583044025.a, A400210.P12738548307429019763.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A007503, A007503.P13484425310514315912.a, A099777, A099777.P11792433152824821401.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400210

/-! ## A400210.P16345791284001929538

`A215947(n+1)-A349211(n+1)`
-/

namespace A400210.P16345791284001929538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (n + 1) - A349211 (n + 1)

end

end A400210.P16345791284001929538

namespace A400210

/-- `A215947(n+1)-A349211(n+1)` -/
def P16345791284001929538.Spec : Prop :=
  ∀ n, P16345791284001929538.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P15781566297053120128

`A350159(n+1)-A372784(n+1)`
-/

namespace A400210.P15781566297053120128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350159 (n + 1) - A372784 (n + 1)

end

end A400210.P15781566297053120128

namespace A400210

/-- `A350159(n+1)-A372784(n+1)` -/
def P15781566297053120128.Spec : Prop :=
  ∀ n, P15781566297053120128.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P5124567079120325150

`A007503(n+1)-A000005(2*(n+1))`
-/

namespace A400210.P5124567079120325150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A000005 (2 * (n + 1))

end

end A400210.P5124567079120325150

namespace A400210

/-- `A007503(n+1)-A000005(2*(n+1))` -/
def P5124567079120325150.Spec : Prop :=
  ∀ n, P5124567079120325150.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P9878628505269331969

`A245092(2*n+1)-A001227(n+1)`
-/

namespace A400210.P9878628505269331969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A001227 (n + 1)

end

end A400210.P9878628505269331969

namespace A400210

/-- `A245092(2*n+1)-A001227(n+1)` -/
def P9878628505269331969.Spec : Prop :=
  ∀ n, P9878628505269331969.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P9412980307741243770

`A350159(n+1)-A099777(2*(n+1))`
-/

namespace A400210.P9412980307741243770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350159 (n + 1) - A099777 (2 * (n + 1))

end

end A400210.P9412980307741243770

namespace A400210

/-- `A350159(n+1)-A099777(2*(n+1))` -/
def P9412980307741243770.Spec : Prop :=
  ∀ n, P9412980307741243770.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P1077733059956804730

`∑{d}[n+1, A100892(#)*A166514((n+1)/#-1)]`
-/

namespace A400210.P1077733059956804730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100892 d * A166514 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A400210.P1077733059956804730

namespace A400210

/-- `∑{d}[n+1, A100892(#)*A166514((n+1)/#-1)]` -/
def P1077733059956804730.Spec : Prop :=
  ∀ n, P1077733059956804730.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P17085464943579156307

`A000203(n+1)-A000005(A000265(n+1))`
-/

namespace A400210.P17085464943579156307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000005 (A000265 (n + 1)).toNat

end

end A400210.P17085464943579156307

namespace A400210

/-- `A000203(n+1)-A000005(A000265(n+1))` -/
def P17085464943579156307.Spec : Prop :=
  ∀ n, P17085464943579156307.a n = A400210 (n + 1)

end A400210

/-! ## A400210.P3064814798014419988

`A000203(n+1)+A000005(n+1)-A099777(n+1)`
-/

namespace A400210.P3064814798014419988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000005 (n + 1) - A099777 (n + 1)

end

end A400210.P3064814798014419988

namespace A400210

/-- `A000203(n+1)+A000005(n+1)-A099777(n+1)` -/
def P3064814798014419988.Spec : Prop :=
  ∀ n, P3064814798014419988.a n = A400210 (n + 1)

theorem P3064814798014419988.correct : P3064814798014419988.Spec := by
  intro n
  simp only [A400210, Nat.add_sub_cancel, A400210.P3064814798014419988.a, A400210.P12738548307429019763.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A099777, A099777.P11792433152824821401.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400210

/-! ## A400210.P14556563080755769863

`A146076(n+1)+A000593(n+1)-A001227(n+1)`
-/

namespace A400210.P14556563080755769863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A000593 (n + 1) - A001227 (n + 1)

end

end A400210.P14556563080755769863

namespace A400210

/-- `A146076(n+1)+A000593(n+1)-A001227(n+1)` -/
def P14556563080755769863.Spec : Prop :=
  ∀ n, P14556563080755769863.a n = A400210 (n + 1)

theorem P14556563080755769863.correct : P14556563080755769863.Spec := by
  intro n
  simp only [A400210, Nat.add_sub_cancel, A400210.P14556563080755769863.a, A400210.P12738548307429019763.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400210

/-! ## A400210.P728733624870230630

`A183063(n+1)+A000203(n+1)-A000005(n+1)`
-/

namespace A400210.P728733624870230630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A000203 (n + 1) - A000005 (n + 1)

end

end A400210.P728733624870230630

namespace A400210

/-- `A183063(n+1)+A000203(n+1)-A000005(n+1)` -/
def P728733624870230630.Spec : Prop :=
  ∀ n, P728733624870230630.a n = A400210 (n + 1)

theorem P728733624870230630.correct : P728733624870230630.Spec := by
  intro n
  simp only [A400210, Nat.add_sub_cancel, A400210.P728733624870230630.a, A400210.P12738548307429019763.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400210

/-! ## A400210.P11776954291382103420

`A348915(n+1)+A065608(n+1)-A000593(n+1)`
-/

namespace A400210.P11776954291382103420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348915 (n + 1) + A065608 (n + 1) - A000593 (n + 1)

end

end A400210.P11776954291382103420

namespace A400210

/-- `A348915(n+1)+A065608(n+1)-A000593(n+1)` -/
def P11776954291382103420.Spec : Prop :=
  ∀ n, P11776954291382103420.a n = A400210 (n + 1)

theorem P11776954291382103420.correct : P11776954291382103420.Spec := by
  intro n
  simp only [A400210, Nat.add_sub_cancel, A400210.P11776954291382103420.a, A400210.P12738548307429019763.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A065608, A065608.P12445239359989980431.a, A348915, A348915.P13373623292540873174.a, A000005, A000005.P16091521709108585461.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400210

/-!
# A400211: a(n) = x^3 - m*(m+1)*x, where m = floor(sqrt(n)) and x = n - m*(m+1).

The programs for A400211, the canonical program `A400211.P15402194409591322353` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400211 has offset 0).

The definition of A400211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400211.P15402194409591322353

`Δ[∑[-A329116(A054977(n)+n-2)]²]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A400211

/-- `Δ[∑[-A329116(A054977(n)+n-2)]²]` -/
def P15402194409591322353.Spec : Prop :=
  ∀ n, P15402194409591322353.a n = A400211 n

theorem P15402194409591322353.correct : P15402194409591322353.Spec := by
  intro n
  simp only [A400211]

end A400211

/-!
# A400213: a(n) is the number of distinct areas of triangles formed by three vertices of a regular n-gon.

The programs for A400213, there is no canonical definition to state claims against.
-/

/-! ## A400213.P13845031457062309474

`A001399(n)-A347440(A086273(3*n+4))`
-/

namespace A400213.P13845031457062309474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A347440 (A086273 (3 * n + 4)).toNat

end

end A400213.P13845031457062309474

/-! ## A400213.P10284001709530699880

`A001399(n)-A093488(A317932(n+1))`
-/

namespace A400213.P10284001709530699880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A093488 (A317932 (n + 1)).toNat

end

end A400213.P10284001709530699880

/-! ## A400213.P3000313983390152098

`A204330(A008628(n))`
-/

namespace A400213.P3000313983390152098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A008628 n).toNat

end

end A400213.P3000313983390152098

/-! ## A400213.P14707686710127839063

`A204330(A088314(n))`
-/

namespace A400213.P14707686710127839063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A088314 n).toNat

end

end A400213.P14707686710127839063

/-! ## A400213.P150024287899678222

`A204330(A199016(n))`
-/

namespace A400213.P150024287899678222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A199016 n).toNat

end

end A400213.P150024287899678222

/-!
# A400214: Semiprimes in A399741.

The programs for A400214, there is no canonical definition to state claims against.
-/

/-! ## A400214.P15796007260714301145

`filter[A399741(n+1), A064911(#)]`
-/

namespace A400214.P15796007260714301145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A400214.P15796007260714301145

/-! ## A400214.P15468510565405938584

`filter[A399741(n+1), A359156(#)]`
-/

namespace A400214.P15468510565405938584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A400214.P15468510565405938584

/-! ## A400214.P18093048784135368146

`∩[A001358(n+1), A399741(n+1)]`
-/

namespace A400214.P18093048784135368146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400214.P18093048784135368146

/-! ## A400214.P5497966555658645889

`∩[A085155(n+1), A399741(n+1)]`
-/

namespace A400214.P5497966555658645889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400214.P5497966555658645889

/-! ## A400214.P3669303653589452523

`∩[A131368(n+1), A399741(n+1)]`
-/

namespace A400214.P3669303653589452523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400214.P3669303653589452523

/-!
# A400216: Scaled x-coordinates of the vertices of a Boerdijk-Coxeter helix starting at a tetrahedron with vertices (-1,-1,-1), (1, -1, 1), (-1, 1, 1), and (1, 1, -1).

The programs for A400216, there is no canonical definition to state claims against.
-/

/-! ## A400216.P3191787960502721985

`ogf((-1+x+9x^2+23x^3-66x^4-84x^5+54x^6)/(1-2x-6x^2-18x^3+81x^4))`
-/

namespace A400216.P3191787960502721985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, 9, 23, -66, -84, 54] [1, -2, -6, -18, 81] n

end

end A400216.P3191787960502721985

/-!
# A400217: Scaled y-coordinates of the vertices of a Boerdijk-Coxeter helix starting at a tetrahedron with vertices (-1,-1,-1), (1, -1, 1), (-1, 1, 1), and (1, 1, -1).

The programs for A400217, there is no canonical definition to state claims against.
-/

/-! ## A400217.P12194537038756177142

`ogf((-1+3x+3x^2+15x^3-90x^4+84x^5-54x^6)/(1-2x-6x^2-18x^3+81x^4))`
-/

namespace A400217.P12194537038756177142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, 3, 15, -90, 84, -54] [1, -2, -6, -18, 81] n

end

end A400217.P12194537038756177142

/-!
# A400218: Scaled z-coordinates of the vertices of a Boerdijk-Coxeter helix starting at a tetrahedron with vertices (-1,-1,-1), (1, -1, 1), (-1, 1, 1), and (1, 1, -1).

The programs for A400218, there is no canonical definition to state claims against.
-/

/-! ## A400218.P2634014959209689813

`ogf((-1+5x^2+24x^3-26x^4-18x^5)/(1+x-3x^2-27x^3))`
-/

namespace A400218.P2634014959209689813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 0, 5, 24, -26, -18] [1, 1, -3, -27] n

end

end A400218.P2634014959209689813

/-!
# A400219: Number of subsets of the first n nonzero fourth powers whose sum is a nonzero fourth power.

The programs for A400219, there is no canonical definition to state claims against.
-/

/-! ## A400219.P2534212493188263713

`∑[A124010(A195325(n+1))!]`
-/

namespace A400219.P2534212493188263713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A124010 (A195325 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400219.P2534212493188263713

/-! ## A400219.P1621951074383173307

`∩[A056651(n+1), A243903(n+1)]`
-/

namespace A400219.P1621951074383173307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400219.P1621951074383173307

/-! ## A400219.P12069365672058786193

`eq[A000007(A341466(2*n+1)), A376556(n)]`
-/

namespace A400219.P12069365672058786193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A341466 (2 * n + 1 + 50)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400219.P12069365672058786193

/-! ## A400219.P17858201676836640508

`lt[A272090(2*n+5), A117571(A002061(3*n+2))]`
-/

namespace A400219.P17858201676836640508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272090 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A002061 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400219.P17858201676836640508

/-! ## A400219.P13572906797911888462

`eq[A058348(n), A376556(n)]`
-/

namespace A400219.P13572906797911888462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400219.P13572906797911888462

/-!
# A400220: Nondecreasing sequence of positive integers in which each k >= 1 occurs exactly Sum_{d|k} a(d) times.

The programs for A400220, there is no canonical definition to state claims against.
-/

/-! ## A400220.P2294940076632153771

`A056172(lt[A121444(n), A264714(n+1)])`
-/

namespace A400220.P2294940076632153771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400220.P2294940076632153771

/-!
# A400221: Number of divisors of 3360^n.

The programs for A400221, the canonical program `A400221.P8547259443277624216` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400221 has offset 0).

The definition of A400221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400221.P8547259443277624216

`(n+1)^3*(5*n+1)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400221

/-- `(n+1)^3*(5*n+1)` -/
def P8547259443277624216.Spec : Prop :=
  ∀ n, (P8547259443277624216.a n : ℤ) = A400221 n

theorem P8547259443277624216.correct : P8547259443277624216.Spec := by
  intro n
  simp only [A400221]

end A400221

/-! ## A400221.P13009129032468288865

`ogf((1+43x+67x^2+9x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A400221.P13009129032468288865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 43, 67, 9] [1, -5, 10, -10, 5, -1] n

end

end A400221.P13009129032468288865

namespace A400221

/-- `ogf((1+43x+67x^2+9x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13009129032468288865.Spec : Prop :=
  ∀ n, P13009129032468288865.a n = A400221 n

end A400221

/-! ## A400221.P17538540123814059840

`floor(∑[10+a(n-1)]*(n+1)²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A400221.P17538540123814059840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1) ^ 2

end

end A400221.P17538540123814059840

namespace A400221

/-- `floor(∑[10+a(n-1)]*(n+1)²)` -/
def P17538540123814059840.Spec : Prop :=
  ∀ n, (P17538540123814059840.a n : ℤ) = A400221 n

end A400221

/-! ## A400221.P1304693639706574175

`A109117(n)/Δ[n²]`
-/

namespace A400221.P1304693639706574175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109117 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A400221.P1304693639706574175

namespace A400221

/-- `A109117(n)/Δ[n²]` -/
def P1304693639706574175.Spec : Prop :=
  ∀ n, P1304693639706574175.a n = (A400221 n : ℚ)

end A400221

/-! ## A400221.P1916448487772382732

`A160538(n+1)+(n+1)²²`
-/

namespace A400221.P1916448487772382732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160538 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A400221.P1916448487772382732

namespace A400221

/-- `A160538(n+1)+(n+1)²²` -/
def P1916448487772382732.Spec : Prop :=
  ∀ n, P1916448487772382732.a n = A400221 n

theorem P1916448487772382732.correct : P1916448487772382732.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P1916448487772382732.a, A400221.P8547259443277624216.a, A160538, A160538.P2096202092056556085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P8563722883501362530

`A212837(n+1)+A057769(n)`
-/

namespace A400221.P8563722883501362530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212837 (n + 1) + A057769 n

end

end A400221.P8563722883501362530

namespace A400221

/-- `A212837(n+1)+A057769(n)` -/
def P8563722883501362530.Spec : Prop :=
  ∀ n, P8563722883501362530.a n = A400221 n

theorem P8563722883501362530.correct : P8563722883501362530.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P8563722883501362530.a, A400221.P8547259443277624216.a, A057769, A057769.P4527469839372896610.a, A212837, A212837.P10689536641733684465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P13509787186762558181

`A378064(n)+A181773(n+1)`
-/

namespace A400221.P13509787186762558181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378064 n + A181773 (n + 1)

end

end A400221.P13509787186762558181

namespace A400221

/-- `A378064(n)+A181773(n+1)` -/
def P13509787186762558181.Spec : Prop :=
  ∀ n, P13509787186762558181.a n = A400221 n

theorem P13509787186762558181.correct : P13509787186762558181.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P13509787186762558181.a, A400221.P8547259443277624216.a, A181773, A181773.P17003731437091766161.a, A378064, A378064.P7835891324193449087.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P1101940851974996951

`A000578(n+1)*A016863(n)/A016862(n)`
-/

namespace A400221.P1101940851974996951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) * A016863 n : ℚ) / (A016862 n : ℚ)

end

end A400221.P1101940851974996951

namespace A400221

/-- `A000578(n+1)*A016863(n)/A016862(n)` -/
def P1101940851974996951.Spec : Prop :=
  ∀ n, P1101940851974996951.a n = (A400221 n : ℚ)

end A400221

/-! ## A400221.P8544640514649151532

`A000578(n+1)*A016864(n)/A016863(n)`
-/

namespace A400221.P8544640514649151532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) * A016864 n : ℚ) / (A016863 n : ℚ)

end

end A400221.P8544640514649151532

namespace A400221

/-- `A000578(n+1)*A016864(n)/A016863(n)` -/
def P8544640514649151532.Spec : Prop :=
  ∀ n, P8544640514649151532.a n = (A400221 n : ℚ)

end A400221

/-! ## A400221.P13150087726754166396

`A131466(n+1)-A056105(n+1)`
-/

namespace A400221.P13150087726754166396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131466 (n + 1) - A056105 (n + 1)

end

end A400221.P13150087726754166396

namespace A400221

/-- `A131466(n+1)-A056105(n+1)` -/
def P13150087726754166396.Spec : Prop :=
  ∀ n, P13150087726754166396.a n = A400221 n

theorem P13150087726754166396.correct : P13150087726754166396.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P13150087726754166396.a, A400221.P8547259443277624216.a, A056105, A056105.P6848475420530033714.a, A131466, A131466.P10936025003940888238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P85724415151572694

`A269792(n+1)-A033430(n+1)`
-/

namespace A400221.P85724415151572694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269792 (n + 1) - A033430 (n + 1)

end

end A400221.P85724415151572694

namespace A400221

/-- `A269792(n+1)-A033430(n+1)` -/
def P85724415151572694.Spec : Prop :=
  ∀ n, P85724415151572694.a n = A400221 n

theorem P85724415151572694.correct : P85724415151572694.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P85724415151572694.a, A400221.P8547259443277624216.a, A033430, A033430.P5214425656551841819.a, A269792, A269792.P3870612193346425875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P6015065380060770877

`A269792(n+1)-(A033431(n+1)+A033431(n+1))`
-/

namespace A400221.P6015065380060770877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269792 (n + 1) - (A033431 (n + 1) + A033431 (n + 1))

end

end A400221.P6015065380060770877

namespace A400221

/-- `A269792(n+1)-(A033431(n+1)+A033431(n+1))` -/
def P6015065380060770877.Spec : Prop :=
  ∀ n, P6015065380060770877.a n = A400221 n

theorem P6015065380060770877.correct : P6015065380060770877.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P6015065380060770877.a, A400221.P8547259443277624216.a, A033431, A033431.P14261726496554658204.a, A269792, A269792.P3870612193346425875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-!
# A400224: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp(Si(x)), where Si(x) = Integral_{t=0..x} sin(t) / t dt.

The programs for A400224, there is no canonical definition to state claims against.
-/

/-! ## A400224.P17913196768533913038

`ceil(2^(n-1))*A341418(A055887(n))`
-/

namespace A400224.P17913196768533913038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A341418 (A055887 n).toNat

end

end A400224.P17913196768533913038

/-! ## A400224.P17214962767536256794

`A111330(3*n)*A309086(A326793(n))`
-/

namespace A400224.P17214962767536256794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111330 (3 * n) * A309086 (A326793 n).toNat

end

end A400224.P17214962767536256794

/-!
# A400225: G.f.: 1 = Sum_{n>=0} a(n) * x^n / (1 + 2^n*x)^(2^n).

The programs for A400225, there is no canonical definition to state claims against.
-/

/-! ## A400225.P12750331894977841392

`A048817(A027101(n))`
-/

namespace A400225.P12750331894977841392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048817 (A027101 n).toNat

end

end A400225.P12750331894977841392

/-!
# A400226: a(0) = 1; a(n) = Sum_{k=1..n} binomial(2*n-k,k) * a(n-k).

The programs for A400226, there is no canonical definition to state claims against.
-/

/-! ## A400226.P5146010280334877220

`A177379(n)-A025444(A000186(n))`
-/

namespace A400226.P5146010280334877220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177379 n - A025444 (A000186 n).toNat

end

end A400226.P5146010280334877220

/-!
# A400228: Array A(n, k), n, k > 0, read by antidiagonals; A(n, k) is the largest common ancestor of n and k alongside the infinite tree depicted in A397809.

The programs for A400228, there is no canonical definition to state claims against.
-/

/-! ## A400228.P13703102735881025390

`A057820(A010096(n+1)^A204026(n+1))`
-/

namespace A400228.P13703102735881025390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (SequenceMachineLib.roundAway ((A010096 (n + 1) : ℚ) ^ (A204026 (n + 1) : ℤ))).toNat

end

end A400228.P13703102735881025390

/-! ## A400228.P1365764361871659295

`A363853(A059922(n)%A303606(2*n+1))`
-/

namespace A400228.P1365764361871659295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363853 (Int.tmod (A059922 n) (A303606 (2 * n + 1))).toNat

end

end A400228.P1365764361871659295

/-! ## A400228.P6724595409644490935

`A316715(A395185(n)%A400133(2*n+3))`
-/

namespace A400228.P6724595409644490935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316715 (Int.tmod (A395185 n) (A400133 (2 * n + 3))).toNat

end

end A400228.P6724595409644490935

/-! ## A400228.P18056801071444749297

`A078377(A174378(n))`
-/

namespace A400228.P18056801071444749297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078377 (A174378 n).toNat

end

end A400228.P18056801071444749297

/-! ## A400228.P10680252780195226874

`A067131(A347972(n))`
-/

namespace A400228.P10680252780195226874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A347972 n).toNat

end

end A400228.P10680252780195226874

/-!
# A400229: The sequence of side-lengths that occur when drawing a sequence of squares in the plane with integer side lengths such that the bottom-left corner of the k-th square is at the nonnegative integer point (k, y_k), subject to the conditions that (1) the interior of each square has a distinct pattern made by the perimeters of the other squares, and (2) the sequence (a(0), y_0, a(1), y_1, a(2), y_2, ...) is the lexicographically earliest such infinite sequence.

The programs for A400229, there is no canonical definition to state claims against.
-/

/-! ## A400229.P10063541276760323955

`round(log2(log2(A159475(3*n+2))))`
-/

namespace A400229.P10063541276760323955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.logb 2 (A159475 (3 * n + 2) : ℝ)))

end

end A400229.P10063541276760323955

/-!
# A400230: The sequence of y-values that occur when drawing a sequence of squares in the plane with integer side lengths such that the bottom-left corner of the k-th square is at the nonnegative integer point (k, a(k)) and the square has side length s_k, subject to the conditions that (1) the interior of each square has a distinct pattern made by the perimeters of the other squares, and (2) the sequence (s_0, a(0), s_1, a(1), s_2, a(2), ...) is the lexicographically earliest such infinite sequence.

The programs for A400230, there is no canonical definition to state claims against.
-/

/-! ## A400230.P2718138516274964052

`xor(A150359(n), A394862(n))%A076885(n+3)`
-/

namespace A400230.P2718138516274964052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A150359 n) (A394862 n)) (A076885 (n + 3))

end

end A400230.P2718138516274964052

/-! ## A400230.P13425097248379820384

`A320698(A044820(n+1))%A000196(2*n+1)`
-/

namespace A400230.P13425097248379820384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320698 (A044820 (n + 1)).toNat) (A000196 (2 * n + 1))

end

end A400230.P13425097248379820384

/-! ## A400230.P9462489638000044754

`A127324(A265997(n+1))`
-/

namespace A400230.P9462489638000044754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 (A265997 (n + 1)).toNat

end

end A400230.P9462489638000044754

/-! ## A400230.P5313581181819773816

`A346392(A356626(n+1))`
-/

namespace A400230.P5313581181819773816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A356626 (n + 1)).toNat

end

end A400230.P5313581181819773816

/-! ## A400230.P16145760854686831027

`A069847(A077699(n+1))+A037821(n+1)`
-/

namespace A400230.P16145760854686831027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069847 (A077699 (n + 1)).toNat + A037821 (n + 1)

end

end A400230.P16145760854686831027

/-!
# A400232: a(n) is the number of boundary lattice points minus the number of interior lattice points of the cube [0,n] X [0,n] X [0,n].

The programs for A400232, the canonical program `A400232.P17183186116095233365` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400232 has offset 1).

The definition of A400232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400232.P16088948944485516050

`ogf((8-7x-4x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400232.P16088948944485516050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -7, -4, -3] [1, -4, 6, -4, 1] n

end

end A400232.P16088948944485516050

namespace A400232

/-- `ogf((8-7x-4x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P16088948944485516050.Spec : Prop :=
  ∀ n, P16088948944485516050.a n = A400232 (n + 1)

end A400232

/-! ## A400232.P17183186116095233365

`6*(n+1)²+2-n^3`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400232

/-- `6*(n+1)²+2-n^3` -/
def P17183186116095233365.Spec : Prop :=
  ∀ n, P17183186116095233365.a n = A400232 (n + 1)

theorem P17183186116095233365.correct : P17183186116095233365.Spec := by
  intro n
  simp only [A400232, Nat.add_sub_cancel]

end A400232

/-! ## A400232.P13803633079667393665

`∑[∑[a(n-1)-6]]` with `a(0)=8, a(1)=9, a(2)=6`
-/

namespace A400232.P13803633079667393665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 9, 6] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400232.P13803633079667393665

namespace A400232

/-- `∑[∑[a(n-1)-6]]` -/
def P13803633079667393665.Spec : Prop :=
  ∀ n, P13803633079667393665.a n = A400232 (n + 1)

end A400232

/-!
# A400233: a(n) is the number of boundary lattice points minus the number of interior lattice points of the 4-dimensional cube [0,n]^4.

The programs for A400233, the canonical program `A400233.P10225734584980570909` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400233 has offset 1).

The definition of A400233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400233.P10225734584980570909

`(n+2)^4-2*n^4`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400233

/-- `(n+2)^4-2*n^4` -/
def P10225734584980570909.Spec : Prop :=
  ∀ n, P10225734584980570909.a n = A400233 (n + 1)

theorem P10225734584980570909.correct : P10225734584980570909.Spec := by
  intro n
  simp only [A400233, Nat.add_sub_cancel]

end A400233

/-! ## A400233.P15865320736513646555

`ogf((16-x-11x^2-27x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A400233.P15865320736513646555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -1, -11, -27, -1] [1, -5, 10, -10, 5, -1] n

end

end A400233.P15865320736513646555

namespace A400233

/-- `ogf((16-x-11x^2-27x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15865320736513646555.Spec : Prop :=
  ∀ n, P15865320736513646555.a n = A400233 (n + 1)

end A400233

/-!
# A400234: Number of spanning trees in the 3 X n Klein bottle grid graph.

The programs for A400234, there is no canonical definition to state claims against.
-/

/-! ## A400234.P2308723906474346020

`(n+1)*A054493(2*n+1)`
-/

namespace A400234.P2308723906474346020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054493 (2 * n + 1)

end

end A400234.P2308723906474346020

/-!
# A400235: a(n) is the number of boundary lattice points minus the number of interior lattice points of the prism with vertices (0,0,0), (n,0,0), (0,n,0), (0,0,n), (n,0,n) and (0,n,n).

The programs for A400235, the canonical program `A400235.P11496997856780978715` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400235 has offset 1).

The definition of A400235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400235.P9550851475824176366

`ogf((6-6x-3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400235.P9550851475824176366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -6, 0, -3] [1, -4, 6, -4, 1] n

end

end A400235.P9550851475824176366

namespace A400235

/-- `ogf((6-6x-3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9550851475824176366.Spec : Prop :=
  ∀ n, P9550851475824176366.a n = A400235 (n + 1)

end A400235

/-! ## A400235.P11496997856780978715

`4*(n+1)²+2-n²*(n-1)/2`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400235

/-- `4*(n+1)²+2-n²*(n-1)/2` -/
def P11496997856780978715.Spec : Prop :=
  ∀ n, P11496997856780978715.a n = (A400235 (n + 1) : ℚ)

end A400235

/-! ## A400235.P207820100484000470

`∑[∑[a(n-1)-3]]` with `a(0)=6, a(1)=6, a(2)=6`
-/

namespace A400235.P207820100484000470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 6, 6] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400235.P207820100484000470

namespace A400235

/-- `∑[∑[a(n-1)-3]]` -/
def P207820100484000470.Spec : Prop :=
  ∀ n, P207820100484000470.a n = A400235 (n + 1)

end A400235

/-! ## A400235.P10319790196491250169

`3*((n+1)*(n+2)-C(n, 3))`
-/

namespace A400235.P10319790196491250169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n + 1) * (n + 2) : ℤ) - (Nat.choose n 3 : ℤ))

end

end A400235.P10319790196491250169

namespace A400235

/-- `3*((n+1)*(n+2)-C(n, 3))` -/
def P10319790196491250169.Spec : Prop :=
  ∀ n, P10319790196491250169.a n = A400235 (n + 1)

end A400235

/-!
# A400241: G.f. A(x) satisfies A(x) = A(x^2/(1 - x)^3) / (1 - x), with A(0) = 1.

The programs for A400241, there is no canonical definition to state claims against.
-/

/-! ## A400241.P7778326280567406977

`A179927(A133263(n))`
-/

namespace A400241.P7778326280567406977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179927 (A133263 n).toNat

end

end A400241.P7778326280567406977

/-! ## A400241.P12400965092951905930

`A179927(A238531(n+1))`
-/

namespace A400241.P12400965092951905930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179927 (A238531 (n + 1)).toNat

end

end A400241.P12400965092951905930

/-! ## A400241.P732396179965021723

`A086581(n)-A316867(A148828(n))`
-/

namespace A400241.P732396179965021723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n - A316867 (A148828 n).toNat

end

end A400241.P732396179965021723

/-! ## A400241.P2520703679101026848

`A082582(n+1)-A025469(A165530(n))`
-/

namespace A400241.P2520703679101026848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 1) - A025469 (A165530 n).toNat

end

end A400241.P2520703679101026848

/-! ## A400241.P5221086421047586070

`A082582(A124107(n+1))-A255378(n)`
-/

namespace A400241.P5221086421047586070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (A124107 (n + 1)).toNat - A255378 n

end

end A400241.P5221086421047586070

/-!
# A400242: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)^4) / (1 - x), with A(0) = 1.

The programs for A400242, there is no canonical definition to state claims against.
-/

/-! ## A400242.P4403632548709605415

`A099099(n)+A072783(A000108(n))`
-/

namespace A400242.P4403632548709605415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099099 n + A072783 (A000108 n).toNat

end

end A400242.P4403632548709605415

/-! ## A400242.P12578647490071053388

`A099099(n)+A097547(A036640(n))`
-/

namespace A400242.P12578647490071053388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099099 n + A097547 (A036640 n).toNat

end

end A400242.P12578647490071053388

/-! ## A400242.P14597262517914052689

`A185284(A092246(n+1))+A099099(n)`
-/

namespace A400242.P14597262517914052689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A092246 (n + 1)).toNat + A099099 n

end

end A400242.P14597262517914052689

/-! ## A400242.P9554611473659535576

`A185284(A000040(n+3))+A099099(n)`
-/

namespace A400242.P9554611473659535576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000040 (n + 3)).toNat + A099099 n

end

end A400242.P9554611473659535576

/-! ## A400242.P9282148782005794786

`A099099(n)+A036640(∑[A036640(n+1)])`
-/

namespace A400242.P9282148782005794786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099099 n + A036640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A400242.P9282148782005794786

/-!
# A400243: G.f. A(x) satisfies A(x) = A(x^2/(1 - x)^3) / (1 - x)^2, with A(0) = 1.

The programs for A400243, there is no canonical definition to state claims against.
-/

/-! ## A400243.P14007548464324604385

`∑{#}[n, A400241(#)*A400241(n-#)]`
-/

namespace A400243.P14007548464324604385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A400241 k * A400241 (n - k)

end

end A400243.P14007548464324604385

/-! ## A400243.P16330547732093189392

`A075054(A273900(n+2))`
-/

namespace A400243.P16330547732093189392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A273900 (n + 2)).toNat

end

end A400243.P16330547732093189392

/-!
# A400244: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)^4) / (1 - x)^2, with A(0) = 1.

The programs for A400244, there is no canonical definition to state claims against.
-/

/-! ## A400244.P16722429592442699846

`∑{#}[n, A400242(#)*A400242(n-#)]`
-/

namespace A400244.P16722429592442699846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A400242 k * A400242 (n - k)

end

end A400244.P16722429592442699846

/-! ## A400244.P11143834191811935887

`A347831(A162985(n+1))`
-/

namespace A400244.P11143834191811935887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (A162985 (n + 1)).toNat

end

end A400244.P11143834191811935887

/-! ## A400244.P299079606308662793

`∑[A123068(A099099(n))+A099099(n)]`
-/

namespace A400244.P299079606308662793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A099099 n).toNat + A099099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400244.P299079606308662793

/-!
# A400245: G.f. A(x) satisfies A(x) = A(x^2/(1 - x)^3) / (1 - x)^3, with A(0) = 1.

The programs for A400245, there is no canonical definition to state claims against.
-/

/-! ## A400245.P13516307359407647168

`A186733(A034691(n))+A052541(n)`
-/

namespace A400245.P13516307359407647168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186733 (A034691 n).toNat + A052541 n

end

end A400245.P13516307359407647168

/-! ## A400245.P7834210560445526729

`or(A052541(n), A112761(A205571(n)))`
-/

namespace A400245.P7834210560445526729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052541 n) (A112761 (A205571 n).toNat)

end

end A400245.P7834210560445526729

/-! ## A400245.P1697726599251552062

`A122414(A156204(n+1))+A052541(n)`
-/

namespace A400245.P1697726599251552062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122414 (A156204 (n + 1)).toNat + A052541 n

end

end A400245.P1697726599251552062

/-!
# A400246: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)^4) / (1 - x)^3, with A(0) = 1.

The programs for A400246, there is no canonical definition to state claims against.
-/

/-! ## A400246.P13341720845791148931

`A008443(C(5*n+1, n)/(2*n+1)-C(5*n, n)/(4*n+1))`
-/

namespace A400246.P13341720845791148931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (SequenceMachineLib.roundAway ((Nat.choose (5 * n + 1) n : ℚ) / (2 * n + 1 : ℚ) - (Nat.choose (5 * n) n : ℚ) / (4 * n + 1 : ℚ))).toNat

end

end A400246.P13341720845791148931

/-! ## A400246.P6353191584500960556

`A249728(Δ[A104987(n)])`
-/

namespace A400246.P6353191584500960556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (f1 (n + 1) - f1 n).toNat

end

end A400246.P6353191584500960556

/-!
# A400247: Number of labeled connected bipartite planar graphs with n vertices.

The programs for A400247, there is no canonical definition to state claims against.
-/

/-! ## A400247.P5282478576577256674

`A375704(a(n-1)-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=19`
-/

namespace A400247.P5282478576577256674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 19] fun n a =>
  A375704 (a (n - 1) - 2).toNat

end

end A400247.P5282478576577256674

/-! ## A400247.P705516384445159265

`A001832(∑{#}[n-1, C(gcd(n, #!), n)]^n+n)`
-/

namespace A400247.P705516384445159265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001832 ((∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (Nat.gcd n (Nat.factorial k)) n) ^ n + n)

end

end A400247.P705516384445159265

/-!
# A400248: Dirichlet convolution of A085731 with A055615 (Dirichlet inverse of n), where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

The programs for A400248, the canonical program `A400248.P4403918635695598036` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400248 has offset 1).

The definition of A400248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400248.P4403918635695598036

`∑{d}[n+1, A055615((n+1)/#)*A085731(#)]`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400248

/-- `∑{d}[n+1, A055615((n+1)/#)*A085731(#)]` -/
def P4403918635695598036.Spec : Prop :=
  ∀ n, P4403918635695598036.a n = A400248 (n + 1)

theorem P4403918635695598036.correct : P4403918635695598036.Spec := by
  intro n
  simp only [A400248, Nat.add_sub_cancel]

end A400248

/-! ## A400248.P3468741725436706799

`A000010(n+1)*A359551(n+1)`
-/

namespace A400248.P3468741725436706799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A359551 (n + 1)

end

end A400248.P3468741725436706799

namespace A400248

/-- `A000010(n+1)*A359551(n+1)` -/
def P3468741725436706799.Spec : Prop :=
  ∀ n, P3468741725436706799.a n = A400248 (n + 1)

end A400248

/-! ## A400248.P4369620873815878945

`∑{d}[n+1, A023900(#)*A400249((n+1)/#)]`
-/

namespace A400248.P4369620873815878945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A400249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400248.P4369620873815878945

namespace A400248

/-- `∑{d}[n+1, A023900(#)*A400249((n+1)/#)]` -/
def P4369620873815878945.Spec : Prop :=
  ∀ n, P4369620873815878945.a n = A400248 (n + 1)

end A400248

/-! ## A400248.P15167004962677706962

`A000010(n+1)*A008683(A327938(n+1))`
-/

namespace A400248.P15167004962677706962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A008683 (A327938 (n + 1)).toNat

end

end A400248.P15167004962677706962

namespace A400248

/-- `A000010(n+1)*A008683(A327938(n+1))` -/
def P15167004962677706962.Spec : Prop :=
  ∀ n, P15167004962677706962.a n = A400248 (n + 1)

end A400248

/-!
# A400249: Möbius transform of A085731, where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

The programs for A400249, the canonical program `A400249.P16858583021599629` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400249 has offset 1).

The definition of A400249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400249.P16858583021599629

`∑{d}[n+1, A008683((n+1)/#)*A085731(#)]`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400249

/-- `∑{d}[n+1, A008683((n+1)/#)*A085731(#)]` -/
def P16858583021599629.Spec : Prop :=
  ∀ n, P16858583021599629.a n = A400249 (n + 1)

theorem P16858583021599629.correct : P16858583021599629.Spec := by
  intro n
  simp only [A400249, Nat.add_sub_cancel]

end A400249

/-! ## A400249.P16882487959043147310

`∑{d}[n+1, A000010((n+1)/#)*A400248(#)]`
-/

namespace A400249.P16882487959043147310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A400248 d

end

end A400249.P16882487959043147310

namespace A400249

/-- `∑{d}[n+1, A000010((n+1)/#)*A400248(#)]` -/
def P16882487959043147310.Spec : Prop :=
  ∀ n, P16882487959043147310.a n = A400249 (n + 1)

end A400249

/-!
# A400250: Square array read by falling antidiagonals: A(n,k) = valuation(A380459(n), prime(k)).

The programs for A400250, there is no canonical definition to state claims against.
-/

/-! ## A400250.P17470423835936198803

`val(A380459(col(n)+1), A000040(row(n)-col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400250.P17470423835936198803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380459 (SequenceMachineLib.triCol n + 1)).toNat (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat).toNat

end

end A400250.P17470423835936198803

/-! ## A400250.P280800381533028980

`A079343(C(n, A107717(n)))`
-/

namespace A400250.P280800381533028980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (Nat.choose n (A107717 n).toNat)

end

end A400250.P280800381533028980

/-! ## A400250.P16828235057078035328

`and(A089316(n), A123262(n))`
-/

namespace A400250.P16828235057078035328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089316 n) (A123262 n)

end

end A400250.P16828235057078035328

/-! ## A400250.P5487156857698744314

`and(A123262(n), A213301(n))`
-/

namespace A400250.P5487156857698744314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123262 n) (A213301 n)

end

end A400250.P5487156857698744314

/-! ## A400250.P15674125936238654961

`and(A046450(n+1), A123262(n))`
-/

namespace A400250.P15674125936238654961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046450 (n + 1)) (A123262 n)

end

end A400250.P15674125936238654961

/-!
# A400251: Numbers k for which A400249(k) is not zero, where A400249 is Möbius transform of A085731, with A085731(n) = gcd(n,n'), and n' the arithmetic derivative of n.

The programs for A400251, the canonical program `A400251.P8247026051378105687` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400251 has offset 1).

The definition of A400251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400251.P583100735192999043

`lt[A064911(n+1), A400249(n+1)]+1`
-/

namespace A400251.P583100735192999043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400251.P583100735192999043

namespace A400251

/-- `lt[A064911(n+1), A400249(n+1)]+1` -/
def P583100735192999043.Spec : Prop :=
  ∀ n, (P583100735192999043.a n : ℤ) = A400251 (n + 1)

end A400251

/-! ## A400251.P8247026051378105687

`lt[A400249(2*(n+1)), A400249(n+1)]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A400251

/-- `lt[A400249(2*(n+1)), A400249(n+1)]+1` -/
def P8247026051378105687.Spec : Prop :=
  ∀ n, (P8247026051378105687.a n : ℤ) = A400251 (n + 1)

theorem P8247026051378105687.correct : P8247026051378105687.Spec := by
  intro n
  simp only [A400251, Nat.add_sub_cancel]

end A400251

/-! ## A400251.P2832240385080034006

`lt[A097325(n), A400249(n+1)]+1`
-/

namespace A400251.P2832240385080034006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400251.P2832240385080034006

namespace A400251

/-- `lt[A097325(n), A400249(n+1)]+1` -/
def P2832240385080034006.Spec : Prop :=
  ∀ n, (P2832240385080034006.a n : ℤ) = A400251 (n + 1)

end A400251

/-! ## A400251.P3450927839637104743

`lt[1, A000466(A400249(n+1))]+1`
-/

namespace A400251.P3450927839637104743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (A400249 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400251.P3450927839637104743

namespace A400251

/-- `lt[1, A000466(A400249(n+1))]+1` -/
def P3450927839637104743.Spec : Prop :=
  ∀ n, (P3450927839637104743.a n : ℤ) = A400251 (n + 1)

end A400251

/-! ## A400251.P16222022702326088503

`lt[12, A034961(A400249(n+1)+1)]+1`
-/

namespace A400251.P16222022702326088503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A400249 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400251.P16222022702326088503

namespace A400251

/-- `lt[12, A034961(A400249(n+1)+1)]+1` -/
def P16222022702326088503.Spec : Prop :=
  ∀ n, (P16222022702326088503.a n : ℤ) = A400251 (n + 1)

end A400251

/-! ## A400251.P14076904831232513022

`lt[A301989(n+1), A400249(n+1)]+1`
-/

namespace A400251.P14076904831232513022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400251.P14076904831232513022

namespace A400251

/-- `lt[A301989(n+1), A400249(n+1)]+1` -/
def P14076904831232513022.Spec : Prop :=
  ∀ n, (P14076904831232513022.a n : ℤ) = A400251 (n + 1)

end A400251

/-!
# A400252: The exponent of the highest power of 2 dividing A380459(n).

The programs for A400252, the canonical program `A400252.P11412868992192274508` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400252 has offset 1).

The definition of A400252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400252.P11412868992192274508

`∑{d}[n+1, A319684(#)*A359484((n+1)/#)]`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400252

/-- `∑{d}[n+1, A319684(#)*A359484((n+1)/#)]` -/
def P11412868992192274508.Spec : Prop :=
  ∀ n, P11412868992192274508.a n = A400252 (n + 1)

theorem P11412868992192274508.correct : P11412868992192274508.Spec := by
  intro n
  simp only [A400252, Nat.add_sub_cancel]

end A400252

/-! ## A400252.P7857341662144586752

`∑{d}[n+1, A059841(#-1)*A349394((n+1)/#)]`
-/

namespace A400252.P7857341662144586752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400252.P7857341662144586752

namespace A400252

/-- `∑{d}[n+1, A059841(#-1)*A349394((n+1)/#)]` -/
def P7857341662144586752.Spec : Prop :=
  ∀ n, P7857341662144586752.a n = A400252 (n + 1)

end A400252

/-! ## A400252.P13701162925767523028

`val(A380459(n+1), 2)`
-/

namespace A400252.P13701162925767523028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380459 (n + 1)).toNat 2

end

end A400252.P13701162925767523028

namespace A400252

/-- `val(A380459(n+1), 2)` -/
def P13701162925767523028.Spec : Prop :=
  ∀ n, (P13701162925767523028.a n : ℤ) = A400252 (n + 1)

end A400252

/-! ## A400252.P14734341663995106898

`A400250(∑[1+n])`
-/

namespace A400252.P14734341663995106898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400252.P14734341663995106898

namespace A400252

/-- `A400250(∑[1+n])` -/
def P14734341663995106898.Spec : Prop :=
  ∀ n, P14734341663995106898.a n = A400252 (n + 1)

end A400252

/-! ## A400252.P17616991541487119113

`A400250(n+A000217(n)+1)%A087057(n+1)`
-/

namespace A400252.P17616991541487119113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400250 ((n : ℤ) + (A000217 n + 1)).toNat) (A087057 (n + 1))

end

end A400252.P17616991541487119113

namespace A400252

/-- `A400250(n+A000217(n)+1)%A087057(n+1)` -/
def P17616991541487119113.Spec : Prop :=
  ∀ n, P17616991541487119113.a n = A400252 (n + 1)

end A400252

/-! ## A400252.P16474822068964363984

`A001222(gcd(2^n, A380459(n+1)))`
-/

namespace A400252.P16474822068964363984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 ^ n : ℤ) (A380459 (n + 1)))

end

end A400252.P16474822068964363984

namespace A400252

/-- `A001222(gcd(2^n, A380459(n+1)))` -/
def P16474822068964363984.Spec : Prop :=
  ∀ n, P16474822068964363984.a n = A400252 (n + 1)

end A400252

/-!
# A400253: The exponent of the highest power of 3 dividing A380459(n).

The programs for A400253, there is no canonical definition to state claims against.
-/

/-! ## A400253.P6022000178692165552

`A007949(A380459(n+1))`
-/

namespace A400253.P6022000178692165552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A380459 (n + 1)).toNat

end

end A400253.P6022000178692165552

/-! ## A400253.P2149576972114902604

`val(A380459(n+1), 3)`
-/

namespace A400253.P2149576972114902604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380459 (n + 1)).toNat 3

end

end A400253.P2149576972114902604

/-! ## A400253.P6334621526621902996

`A400250(∑[2+n])`
-/

namespace A400253.P6334621526621902996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400253.P6334621526621902996

/-! ## A400253.P4236922807310586396

`A377433(A165552(n+1))`
-/

namespace A400253.P4236922807310586396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377433 (A165552 (n + 1)).toNat

end

end A400253.P4236922807310586396

/-! ## A400253.P1632607204309708541

`A065339(2*A380459(n+1))`
-/

namespace A400253.P1632607204309708541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (2 * A380459 (n + 1)).toNat

end

end A400253.P1632607204309708541

/-!
# A400254: Numbers whose k-th arithmetic derivative is zero for some k, but which themselves are not derivative of any number.

The programs for A400254, there is no canonical definition to state claims against.
-/

/-! ## A400254.P12488067195153344840

`filter[A098700(1+n), A328308(#)]`
-/

namespace A400254.P12488067195153344840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A400254.P12488067195153344840

/-! ## A400254.P5943027524040905247

`∩[A098700(n+1), A099308(n+1)]`
-/

namespace A400254.P5943027524040905247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400254.P5943027524040905247

/-! ## A400254.P1641041638503565420

`eq[A098699(n), A341999(n)]`
-/

namespace A400254.P1641041638503565420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400254.P1641041638503565420

/-! ## A400254.P4220769775527466483

`∩[A098700(n+1), A359544(n+1)]`
-/

namespace A400254.P4220769775527466483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400254.P4220769775527466483

/-! ## A400254.P2163217468635188312

`∩[A098700(n+1), A325362(n+1)]`
-/

namespace A400254.P2163217468635188312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400254.P2163217468635188312

/-!
# A400255: a(n) = k for those numbers [sequence A400254] whose k-th arithmetic derivative is zero for some k, but which themselves are not derivative of any number.

The programs for A400255, there is no canonical definition to state claims against.
-/

/-! ## A400255.P17369717437487127994

`A099307(A400254(n+1))`
-/

namespace A400255.P17369717437487127994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (A400254 (n + 1)).toNat

end

end A400255.P17369717437487127994

/-! ## A400255.P4057483139111464561

`A256750(A400254(n+1)*(-1)^n*(-1)^n)`
-/

namespace A400255.P4057483139111464561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A400254 (n + 1) * (-1) ^ n * (-1) ^ n).toNat

end

end A400255.P4057483139111464561

/-! ## A400255.P10317163122508610726

`A256750(A400254(n+1)%A046312(n+1))`
-/

namespace A400255.P10317163122508610726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (Int.tmod (A400254 (n + 1)) (A046312 (n + 1))).toNat

end

end A400255.P10317163122508610726

/-! ## A400255.P16132586198454522899

`A256750(A400254(n+1))%A053183(n+1)`
-/

namespace A400255.P16132586198454522899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256750 (A400254 (n + 1)).toNat) (A053183 (n + 1))

end

end A400255.P16132586198454522899

/-! ## A400255.P10182941489848231409

`A327966(∩[A098700(n+1), A099308(n+1)])`
-/

namespace A400255.P10182941489848231409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A400255.P10182941489848231409

/-! ## A400255.P4983879641286988195

`A099307(∩[A098700(n+1), A099308(n+1)])`
-/

namespace A400255.P4983879641286988195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A400255.P4983879641286988195

/-!
# A400256: Numbers where the iteration of map k -> A003415(k) leads to a prime (and thus to 1 and 0) in the shortest possible time, with the maximal exponent of k (A051903) decreasing by 1 on each iteration until a prime is encountered.

The programs for A400256, there is no canonical definition to state claims against.
-/

/-! ## A400256.P71873415282715759

`lt[0, A400257(n+1)]+1`
-/

namespace A400256.P71873415282715759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400256.P71873415282715759

/-! ## A400256.P6849866719947067331

`lt[A229159(n+1), A211795(A351078(n))]`
-/

namespace A400256.P6849866719947067331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 (A351078 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400256.P6849866719947067331

/-! ## A400256.P5499186071591421382

`lt[A081986(A323349(n)), A003558(3*n)]`
-/

namespace A400256.P5499186071591421382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081986 (A323349 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400256.P5499186071591421382

/-! ## A400256.P5570168934064319090

`lt[A008284(A361995(2*n+5)), A351078(n)]`
-/

namespace A400256.P5570168934064319090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A361995 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400256.P5570168934064319090

/-! ## A400256.P14511597963473938392

`lt[A036744(n+1)%(A194765(n+1)+1), A351078(n)]`
-/

namespace A400256.P14511597963473938392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036744 (n + 1)) (A194765 (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400256.P14511597963473938392

/-!
# A400257: If n is in A400256, then a(n) is the number of steps to reach 1 when iterating A003415 (arithmetic derivative), otherwise a(n) = 0.

The programs for A400257, there is no canonical definition to state claims against.
-/

/-! ## A400257.P10514987880869660487

`A322338(A225246(2*(n+2)))+A322338(n+1)`
-/

namespace A400257.P10514987880869660487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A225246 (2 * (n + 2))).toNat + A322338 (n + 1)

end

end A400257.P10514987880869660487

/-! ## A400257.P3956651499160598271

`A013632(n)%A060117(A007088(n))`
-/

namespace A400257.P3956651499160598271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013632 n) (A060117 (A007088 n).toNat)

end

end A400257.P3956651499160598271

/-! ## A400257.P1103537795200526078

`A121549(A293231(n+1))`
-/

namespace A400257.P1103537795200526078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121549 (A293231 (n + 1)).toNat

end

end A400257.P1103537795200526078

/-! ## A400257.P3076781209693529867

`A033676(n+1)*A079978(A309669(n+1))`
-/

namespace A400257.P3076781209693529867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) * A079978 (A309669 (n + 1)).toNat

end

end A400257.P3076781209693529867

/-!
# A400258: Number of nonzero digits in primorial base representation of n' [where n' stands for the arithmetic derivative of n, A003415].

The programs for A400258, the canonical program `A400258.P3398933769381967192` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400258 has offset 0).

The definition of A400258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267263, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400258.P3398933769381967192

`A267263(A003415(n))`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400258

/-- `A267263(A003415(n))` -/
def P3398933769381967192.Spec : Prop :=
  ∀ n, P3398933769381967192.a n = A400258 n

theorem P3398933769381967192.correct : P3398933769381967192.Spec := by
  intro n
  simp only [A400258]

end A400258

/-! ## A400258.P2189206012240402207

`A001221(A327859(n))`
-/

namespace A400258.P2189206012240402207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327859 n).toNat

end

end A400258.P2189206012240402207

namespace A400258

/-- `A001221(A327859(n))` -/
def P2189206012240402207.Spec : Prop :=
  ∀ n, P2189206012240402207.a n = A400258 n

end A400258

/-! ## A400258.P16218595702328900250

`∑{e}[A400151(n), #]`
-/

namespace A400258.P16218595702328900250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400258.P16218595702328900250

namespace A400258

/-- `∑{e}[A400151(n), #]` -/
def P16218595702328900250.Spec : Prop :=
  ∀ n, (P16218595702328900250.a n : ℤ) = A400258 n

end A400258

/-! ## A400258.P1173998332085581937

`A001221(A400151(n))`
-/

namespace A400258.P1173998332085581937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A400151 n).toNat

end

end A400258.P1173998332085581937

namespace A400258

/-- `A001221(A400151(n))` -/
def P1173998332085581937.Spec : Prop :=
  ∀ n, P1173998332085581937.a n = A400258 n

end A400258

/-! ## A400258.P7738168066908351179

`∑{d}[A400151(n), A010051(#)]`
-/

namespace A400258.P7738168066908351179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A400258.P7738168066908351179

namespace A400258

/-- `∑{d}[A400151(n), A010051(#)]` -/
def P7738168066908351179.Spec : Prop :=
  ∀ n, P7738168066908351179.a n = A400258 n

end A400258

/-! ## A400258.P5165829571800157707

`A267263(A129283(n)-n)`
-/

namespace A400258.P5165829571800157707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A129283 n - (n : ℤ)).toNat

end

end A400258.P5165829571800157707

namespace A400258

/-- `A267263(A129283(n)-n)` -/
def P5165829571800157707.Spec : Prop :=
  ∀ n, P5165829571800157707.a n = A400258 n

theorem P5165829571800157707.correct : P5165829571800157707.Spec := by
  intro n
  simp only [A400258, Nat.add_sub_cancel, A400258.P5165829571800157707.a, A400258.P3398933769381967192.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A129283, A129283.P3962818557550655141.a, A267263, A267263.P541567630172199219.a, A260187, A260187.P12900667191599328450.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A260188, A260188.P14430406115504159420.f2, A260188.P14430406115504159420.f1, A260188.P14430406115504159420.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A002110, A002110.P13704446489392701398.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400258

/-! ## A400258.P9830084662562651338

`A267263(∑{d}[n, A348976(#)]-n)`
-/

namespace A400258.P9830084662562651338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ)).toNat

end

end A400258.P9830084662562651338

namespace A400258

/-- `A267263(∑{d}[n, A348976(#)]-n)` -/
def P9830084662562651338.Spec : Prop :=
  ∀ n, P9830084662562651338.a n = A400258 n

end A400258

/-! ## A400258.P17509352926577419276

`∑{d}[A400151(n), A349394(#)]`
-/

namespace A400258.P17509352926577419276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349394 d

end

end A400258.P17509352926577419276

namespace A400258

/-- `∑{d}[A400151(n), A349394(#)]` -/
def P17509352926577419276.Spec : Prop :=
  ∀ n, P17509352926577419276.a n = A400258 n

end A400258

/-! ## A400258.P7736152136069044311

`∑{p}[A327859(n), A001222(#)]`
-/

namespace A400258.P7736152136069044311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A400258.P7736152136069044311

namespace A400258

/-- `∑{p}[A327859(n), A001222(#)]` -/
def P7736152136069044311.Spec : Prop :=
  ∀ n, P7736152136069044311.a n = A400258 n

end A400258

/-! ## A400258.P17941215653282922804

`∑{p}[A327859(n), A003415(#)]`
-/

namespace A400258.P17941215653282922804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A400258.P17941215653282922804

namespace A400258

/-- `∑{p}[A327859(n), A003415(#)]` -/
def P17941215653282922804.Spec : Prop :=
  ∀ n, P17941215653282922804.a n = A400258 n

end A400258

/-!
# A400259: Sum of digits when n' [the arithmetic derivative of n] is written in primorial base (A049345).

The programs for A400259, the canonical program `A400259.P12374509986453713779` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400259 has offset 0).

The definition of A400259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400259.P12374509986453713779

`A276150(A003415(n))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A400259

/-- `A276150(A003415(n))` -/
def P12374509986453713779.Spec : Prop :=
  ∀ n, P12374509986453713779.a n = A400259 n

theorem P12374509986453713779.correct : P12374509986453713779.Spec := by
  intro n
  simp only [A400259]

end A400259

/-! ## A400259.P8977549714790545751

`∑{#}[A400262(n), A400260(C(n+#+1, 2)+n)]`
-/

namespace A400259.P8977549714790545751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A400260 (Nat.choose (n + k + 1) 2 + n)

end

end A400259.P8977549714790545751

namespace A400259

/-- `∑{#}[A400262(n), A400260(C(n+#+1, 2)+n)]` -/
def P8977549714790545751.Spec : Prop :=
  ∀ n, P8977549714790545751.a n = A400259 n

end A400259

/-! ## A400259.P17793413255831433912

`A001222(A327859(n))`
-/

namespace A400259.P17793413255831433912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327859 n).toNat

end

end A400259.P17793413255831433912

namespace A400259

/-- `A001222(A327859(n))` -/
def P17793413255831433912.Spec : Prop :=
  ∀ n, P17793413255831433912.a n = A400259 n

end A400259

/-! ## A400259.P10132232657804533044

`A276150(n+A168036(n))`
-/

namespace A400259.P10132232657804533044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 ((n : ℤ) + A168036 n).toNat

end

end A400259.P10132232657804533044

namespace A400259

/-- `A276150(n+A168036(n))` -/
def P10132232657804533044.Spec : Prop :=
  ∀ n, P10132232657804533044.a n = A400259 n

theorem P10132232657804533044.correct : P10132232657804533044.Spec := by
  intro n
  simp only [A400259, Nat.add_sub_cancel, A400259.P10132232657804533044.a, A400259.P12374509986453713779.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A168036, A168036.P2098310487666722677.a, A276150, A276150.P11723566750596417578.a, A260188, A260188.P14430406115504159420.f2, A260188.P14430406115504159420.f1, A260188.P14430406115504159420.a, A349394, A349394.P210516795435731064.a, A002110, A002110.P13704446489392701398.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400259

/-! ## A400259.P257089587486328502

`A276150(∑{d}[n, A300251(#)])`
-/

namespace A400259.P257089587486328502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat

end

end A400259.P257089587486328502

namespace A400259

/-- `A276150(∑{d}[n, A300251(#)])` -/
def P257089587486328502.Spec : Prop :=
  ∀ n, P257089587486328502.a n = A400259 n

end A400259

/-! ## A400259.P2407053718628864899

`A276150(A327858(n)*A351230(n))`
-/

namespace A400259.P2407053718628864899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A327858 n * A351230 n).toNat

end

end A400259.P2407053718628864899

namespace A400259

/-- `A276150(A327858(n)*A351230(n))` -/
def P2407053718628864899.Spec : Prop :=
  ∀ n, P2407053718628864899.a n = A400259 n

end A400259

/-! ## A400259.P1551031407677492656

`A276150(∑[A258057(n)]-A258057(n))`
-/

namespace A400259.P1551031407677492656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (∑ j ∈ Finset.range (n + 1), f1 j - A258057 n).toNat

end

end A400259.P1551031407677492656

namespace A400259

/-- `A276150(∑[A258057(n)]-A258057(n))` -/
def P1551031407677492656.Spec : Prop :=
  ∀ n, P1551031407677492656.a n = A400259 n

end A400259

/-! ## A400259.P10272075257335596598

`∑{e}[A327859(n), #]`
-/

namespace A400259.P10272075257335596598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400259.P10272075257335596598

namespace A400259

/-- `∑{e}[A327859(n), #]` -/
def P10272075257335596598.Spec : Prop :=
  ∀ n, (P10272075257335596598.a n : ℤ) = A400259 n

end A400259

/-! ## A400259.P4029084671184002821

`∑{e}[A276086(n+A168036(n)), #]`
-/

namespace A400259.P4029084671184002821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) + A168036 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400259.P4029084671184002821

namespace A400259

/-- `∑{e}[A276086(n+A168036(n)), #]` -/
def P4029084671184002821.Spec : Prop :=
  ∀ n, (P4029084671184002821.a n : ℤ) = A400259 n

end A400259

/-! ## A400259.P4300995624895821035

`∑{e}[A276086(A129283(n)-n), #]`
-/

namespace A400259.P4300995624895821035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A129283 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400259.P4300995624895821035

namespace A400259

/-- `∑{e}[A276086(A129283(n)-n), #]` -/
def P4300995624895821035.Spec : Prop :=
  ∀ n, (P4300995624895821035.a n : ℤ) = A400259 n

end A400259

/-!
# A400260: Square array read by falling antidiagonals: A(n,k) = the (k+1)-th least significant digit of arithmetic derivative of n when it is read in primorial base, A049345.

The programs for A400260, there is no canonical definition to state claims against.
-/

/-! ## A400260.P9972269683842690862

`val(A327859(col(n)), A000040(1+row(n)-col(n)))`
-/

namespace A400260.P9972269683842690862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 (SequenceMachineLib.triCol n)).toNat (A000040 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat).toNat

end

end A400260.P9972269683842690862

/-! ## A400260.P17141153802713569172

`and(A066772(n), A193631(n))`
-/

namespace A400260.P17141153802713569172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066772 n) (A193631 n)

end

end A400260.P17141153802713569172

/-! ## A400260.P14664074232822483165

`and(A077267(A235395(2*n+5)), A286724(n))`
-/

namespace A400260.P14664074232822483165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077267 (A235395 (2 * n + 5)).toNat) (A286724 n)

end

end A400260.P14664074232822483165

/-! ## A400260.P3608472178681391258

`A351125(n+1)%A297770(n+1)`
-/

namespace A400260.P3608472178681391258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351125 (n + 1)) (A297770 (n + 1))

end

end A400260.P3608472178681391258

/-! ## A400260.P12356014791215966049

`and(A001222(A080791(2*(n+1))), A303675(n+1))`
-/

namespace A400260.P12356014791215966049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A080791 (2 * (n + 1))).toNat) (A303675 (n + 1))

end

end A400260.P12356014791215966049

/-!
# A400261: The most significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

The programs for A400261, there is no canonical definition to state claims against.
-/

/-! ## A400261.P11306448213608191869

`A276153(A003415(n))`
-/

namespace A400261.P11306448213608191869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276153 (A003415 n).toNat

end

end A400261.P11306448213608191869

/-! ## A400261.P7804011834020518126

`A067029(A400153(n))`
-/

namespace A400261.P7804011834020518126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A400153 n).toNat

end

end A400261.P7804011834020518126

/-! ## A400261.P9190088066035420817

`A071178(A327859(n))`
-/

namespace A400261.P9190088066035420817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A327859 n).toNat

end

end A400261.P9190088066035420817

/-! ## A400261.P11598867383420913205

`A276153(A368922(n)+2*A068346(n))`
-/

namespace A400261.P11598867383420913205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276153 (A368922 n + 2 * A068346 n).toNat

end

end A400261.P11598867383420913205

/-! ## A400261.P9072982382707358278

`∑{e}[A400153(n), #]`
-/

namespace A400261.P9072982382707358278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400261.P9072982382707358278

/-! ## A400261.P11486411712124574687

`A001222(A400153(n))`
-/

namespace A400261.P11486411712124574687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A400153 n).toNat

end

end A400261.P11486411712124574687

/-! ## A400261.P13244224281663666464

`A071178(A400153(2*n-n))`
-/

namespace A400261.P13244224281663666464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A400153 (2 * n - n)).toNat

end

end A400261.P13244224281663666464

/-!
# A400262: The length of primorial base (A049345) representation of the arithmetic derivative of n; a(0) = a(1) = 0 by convention.

The programs for A400262, the canonical program `A400262.P7712911240097354369` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400262 has offset 0).

The definition of A400262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A235224, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400262.P7712911240097354369

`A235224(A003415(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A400262

/-- `A235224(A003415(n))` -/
def P7712911240097354369.Spec : Prop :=
  ∀ n, P7712911240097354369.a n = A400262 n

theorem P7712911240097354369.correct : P7712911240097354369.Spec := by
  intro n
  simp only [A400262]

end A400262

/-! ## A400262.P3622649456985811520

`A055396(A400153(n))`
-/

namespace A400262.P3622649456985811520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A400153 n).toNat

end

end A400262.P3622649456985811520

namespace A400262

/-- `A055396(A400153(n))` -/
def P3622649456985811520.Spec : Prop :=
  ∀ n, P3622649456985811520.a n = A400262 n

end A400262

/-! ## A400262.P18291847199638956454

`A061395(A327859(n))`
-/

namespace A400262.P18291847199638956454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A327859 n).toNat

end

end A400262.P18291847199638956454

namespace A400262

/-- `A061395(A327859(n))` -/
def P18291847199638956454.Spec : Prop :=
  ∀ n, P18291847199638956454.a n = A400262 n

end A400262

/-! ## A400262.P7188741534453293744

`A061395(A400151(n))`
-/

namespace A400262.P7188741534453293744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A400151 n).toNat

end

end A400262.P7188741534453293744

namespace A400262

/-- `A061395(A400151(n))` -/
def P7188741534453293744.Spec : Prop :=
  ∀ n, P7188741534453293744.a n = A400262 n

end A400262

/-! ## A400262.P11026347105726232251

`A235224(A129283(n)-n)`
-/

namespace A400262.P11026347105726232251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A129283 n - (n : ℤ)).toNat

end

end A400262.P11026347105726232251

namespace A400262

/-- `A235224(A129283(n)-n)` -/
def P11026347105726232251.Spec : Prop :=
  ∀ n, P11026347105726232251.a n = A400262 n

theorem P11026347105726232251.correct : P11026347105726232251.Spec := by
  intro n
  simp only [A400262, Nat.add_sub_cancel, A400262.P11026347105726232251.a, A400262.P7712911240097354369.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A129283, A129283.P3962818557550655141.a, A235224, A235224.P9540919302901513135.f2, A235224.P9540919302901513135.f1, A235224.P9540919302901513135.a, A300951, A300951.P16227161527495429065.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A014963, A014963.P5975177236000282614.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400262

/-! ## A400262.P10062571278919096592

`A056239(∏{p}[A400153(n), #])`
-/

namespace A400262.P10062571278919096592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A400262.P10062571278919096592

namespace A400262

/-- `A056239(∏{p}[A400153(n), #])` -/
def P10062571278919096592.Spec : Prop :=
  ∀ n, P10062571278919096592.a n = A400262 n

end A400262

/-!
# A400263: The second least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

The programs for A400263, the canonical program `A400263.P16430157934962236764` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400263 has offset 0).

The definition of A400263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400263.P12527445212695226061

`A007949(A327859(n))`
-/

namespace A400263.P12527445212695226061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A327859 n).toNat

end

end A400263.P12527445212695226061

namespace A400263

/-- `A007949(A327859(n))` -/
def P12527445212695226061.Spec : Prop :=
  ∀ n, P12527445212695226061.a n = A400263 n

end A400263

/-! ## A400263.P3996016890791324385

`val(A327859(n), 3)`
-/

namespace A400263.P3996016890791324385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 n).toNat 3

end

end A400263.P3996016890791324385

namespace A400263

/-- `val(A327859(n), 3)` -/
def P3996016890791324385.Spec : Prop :=
  ∀ n, (P3996016890791324385.a n : ℤ) = A400263 n

end A400263

/-! ## A400263.P16430157934962236764

`floor(A003415(n)/2)%3`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A400263

/-- `floor(A003415(n)/2)%3` -/
def P16430157934962236764.Spec : Prop :=
  ∀ n, P16430157934962236764.a n = A400263 n

theorem P16430157934962236764.correct : P16430157934962236764.Spec := by
  intro n
  simp only [A400263]

end A400263

/-! ## A400263.P15904474085804053784

`A131555(A003415(n))`
-/

namespace A400263.P15904474085804053784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A003415 n).toNat

end

end A400263.P15904474085804053784

namespace A400263

/-- `A131555(A003415(n))` -/
def P15904474085804053784.Spec : Prop :=
  ∀ n, P15904474085804053784.a n = A400263 n

end A400263

/-! ## A400263.P7818042093615907467

`A151899(or(1, A003415(n)))`
-/

namespace A400263.P7818042093615907467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 (Int.lor 1 (A003415 n)).toNat

end

end A400263.P7818042093615907467

namespace A400263

/-- `A151899(or(1, A003415(n)))` -/
def P7818042093615907467.Spec : Prop :=
  ∀ n, P7818042093615907467.a n = A400263 n

end A400263

/-! ## A400263.P12810307361850905282

`A131555(n+A168036(n))`
-/

namespace A400263.P12810307361850905282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 ((n : ℤ) + A168036 n).toNat

end

end A400263.P12810307361850905282

namespace A400263

/-- `A131555(n+A168036(n))` -/
def P12810307361850905282.Spec : Prop :=
  ∀ n, P12810307361850905282.a n = A400263 n

end A400263

/-! ## A400263.P1646504757760189750

`A131555(A129283(n)-n)`
-/

namespace A400263.P1646504757760189750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A129283 n - (n : ℤ)).toNat

end

end A400263.P1646504757760189750

namespace A400263

/-- `A131555(A129283(n)-n)` -/
def P1646504757760189750.Spec : Prop :=
  ∀ n, P1646504757760189750.a n = A400263 n

end A400263

/-! ## A400263.P2271596573870274986

`val(A276086(n+A168036(n)), 3)`
-/

namespace A400263.P2271596573870274986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 ((n : ℤ) + A168036 n).toNat).toNat 3

end

end A400263.P2271596573870274986

namespace A400263

/-- `val(A276086(n+A168036(n)), 3)` -/
def P2271596573870274986.Spec : Prop :=
  ∀ n, (P2271596573870274986.a n : ℤ) = A400263 n

end A400263

/-! ## A400263.P18113724806249916685

`val(A276086(∑{d}[n, A348976(#)]-n), 3)`
-/

namespace A400263.P18113724806249916685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ)).toNat).toNat 3

end

end A400263.P18113724806249916685

namespace A400263

/-- `val(A276086(∑{d}[n, A348976(#)]-n), 3)` -/
def P18113724806249916685.Spec : Prop :=
  ∀ n, (P18113724806249916685.a n : ℤ) = A400263 n

end A400263

/-! ## A400263.P10205408892441094527

`val(A276086(A368921(n)+A068346(n)), 3)`
-/

namespace A400263.P10205408892441094527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A368921 n + A068346 n).toNat).toNat 3

end

end A400263.P10205408892441094527

namespace A400263

/-- `val(A276086(A368921(n)+A068346(n)), 3)` -/
def P10205408892441094527.Spec : Prop :=
  ∀ n, (P10205408892441094527.a n : ℤ) = A400263 n

end A400263

/-! ## A400263.P1243701407702792943

`val(A276086(A351225(n)+n-A373849(n)), 3)`
-/

namespace A400263.P1243701407702792943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A351225 n + ((n : ℤ) - A373849 n)).toNat).toNat 3

end

end A400263.P1243701407702792943

namespace A400263

/-- `val(A276086(A351225(n)+n-A373849(n)), 3)` -/
def P1243701407702792943.Spec : Prop :=
  ∀ n, (P1243701407702792943.a n : ℤ) = A400263 n

end A400263

/-! ## A400263.P13382897482230688836

`val(A276086(A005843(n)-(n-A168036(n))), 3)`
-/

namespace A400263.P13382897482230688836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A005843 n - ((n : ℤ) - A168036 n)).toNat).toNat 3

end

end A400263.P13382897482230688836

namespace A400263

/-- `val(A276086(A005843(n)-(n-A168036(n))), 3)` -/
def P13382897482230688836.Spec : Prop :=
  ∀ n, (P13382897482230688836.a n : ℤ) = A400263 n

end A400263

/-! ## A400263.P5100016934214622127

`A400260(∑[n+1]+n)`
-/

namespace A400263.P5100016934214622127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400260 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A400263.P5100016934214622127

namespace A400263

/-- `A400260(∑[n+1]+n)` -/
def P5100016934214622127.Spec : Prop :=
  ∀ n, P5100016934214622127.a n = A400263 n

end A400263

/-!
# A400264: Nonprime numbers k such that A400833(k) has no divisors of the form p^p, for any prime p.

The programs for A400264, there is no canonical definition to state claims against.
-/

/-! ## A400264.P14518004842814570053

`filter[A353502(n+1), A270742(#)]`
-/

namespace A400264.P14518004842814570053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A270742 (f1 j).toNat = 1) n)

end

end A400264.P14518004842814570053

/-!
# A400265: The third least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

The programs for A400265, there is no canonical definition to state claims against.
-/

/-! ## A400265.P327864196285606398

`A112765(A327859(n))`
-/

namespace A400265.P327864196285606398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A327859 n).toNat

end

end A400265.P327864196285606398

/-! ## A400265.P5599091320611815999

`val(A327859(n), 5)`
-/

namespace A400265.P5599091320611815999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 n).toNat 5

end

end A400265.P5599091320611815999

/-! ## A400265.P726119764106865345

`val(A276086(A003415(n)), 5)`
-/

namespace A400265.P726119764106865345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A003415 n).toNat).toNat 5

end

end A400265.P726119764106865345

/-! ## A400265.P17577613926778664175

`val(A276086(n+A168036(n)), 5)`
-/

namespace A400265.P17577613926778664175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 ((n : ℤ) + A168036 n).toNat).toNat 5

end

end A400265.P17577613926778664175

/-! ## A400265.P16646621321876382003

`val(A276086(∑{d}[n, A348976(#)]-n), 5)`
-/

namespace A400265.P16646621321876382003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ)).toNat).toNat 5

end

end A400265.P16646621321876382003

/-! ## A400265.P3714623630284074031

`val(A276086(A368921(n)+A068346(n)), 5)`
-/

namespace A400265.P3714623630284074031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A368921 n + A068346 n).toNat).toNat 5

end

end A400265.P3714623630284074031

/-! ## A400265.P16192132358964010282

`val(A276086(A327858(n)*A351230(n)), 5)`
-/

namespace A400265.P16192132358964010282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A327858 n * A351230 n).toNat).toNat 5

end

end A400265.P16192132358964010282

/-! ## A400265.P17680470632930798328

`val(A276086(A351225(n)+n-A373849(n)), 5)`
-/

namespace A400265.P17680470632930798328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A351225 n + ((n : ℤ) - A373849 n)).toNat).toNat 5

end

end A400265.P17680470632930798328

/-! ## A400265.P8389533308974817870

`val(A276086(A005843(n)-(n-A168036(n))), 5)`
-/

namespace A400265.P8389533308974817870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A005843 n - ((n : ℤ) - A168036 n)).toNat).toNat 5

end

end A400265.P8389533308974817870

/-! ## A400265.P2130597418184895159

`A400260(∑[n+3])`
-/

namespace A400265.P2130597418184895159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400265.P2130597418184895159

/-!
# A400266: a(n) is the least k>=0 such that 1+(prime(n)#/prime(k)#) is a multiple of prime(1+n), or -1 if no such k exists, where prime(n)# = A002110(n) is the n-th primorial number.

The programs for A400266, there is no canonical definition to state claims against.
-/

/-! ## A400266.P1591814220289218861

`A400837(n)%A116467(xor(n, floor(n/2)))`
-/

namespace A400266.P1591814220289218861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400837 n) (A116467 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat)

end

end A400266.P1591814220289218861

/-! ## A400266.P2896914500513452646

`A400837(n%A167206(n))`
-/

namespace A400266.P2896914500513452646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400837 (Int.tmod (n : ℤ) (A167206 n)).toNat

end

end A400266.P2896914500513452646

/-! ## A400266.P10860662731557487286

`A400837(n)%A000010(A003586(n+1))`
-/

namespace A400266.P10860662731557487286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400837 n) (A000010 (A003586 (n + 1)).toNat)

end

end A400266.P10860662731557487286

/-! ## A400266.P644629603707310970

`A400837(n)%A395104(n+1)`
-/

namespace A400266.P644629603707310970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400837 n) (A395104 (n + 1))

end

end A400266.P644629603707310970

/-! ## A400266.P4731066057239287689

`A400837(n)%A111678(n+1)`
-/

namespace A400266.P4731066057239287689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400837 n) (A111678 (n + 1))

end

end A400266.P4731066057239287689

/-!
# A400267: The fourth least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

The programs for A400267, there is no canonical definition to state claims against.
-/

/-! ## A400267.P15255632653224418353

`A214411(A327859(n))`
-/

namespace A400267.P15255632653224418353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A327859 n).toNat

end

end A400267.P15255632653224418353

/-! ## A400267.P8276355977623304957

`val(A327859(n), 7)`
-/

namespace A400267.P8276355977623304957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 n).toNat 7

end

end A400267.P8276355977623304957

/-! ## A400267.P4610005880893303852

`val(A276086(A003415(n)), 7)`
-/

namespace A400267.P4610005880893303852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A003415 n).toNat).toNat 7

end

end A400267.P4610005880893303852

/-! ## A400267.P8867143318468452503

`val(A276086(n+A168036(n)), 7)`
-/

namespace A400267.P8867143318468452503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 ((n : ℤ) + A168036 n).toNat).toNat 7

end

end A400267.P8867143318468452503

/-! ## A400267.P15048026615039994408

`val(A276086(∑{d}[n, A348976(#)]-n), 7)`
-/

namespace A400267.P15048026615039994408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ)).toNat).toNat 7

end

end A400267.P15048026615039994408

/-! ## A400267.P9742718442971774784

`val(A276086(A368921(n)+A068346(n)), 7)`
-/

namespace A400267.P9742718442971774784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A368921 n + A068346 n).toNat).toNat 7

end

end A400267.P9742718442971774784

/-! ## A400267.P16281391544865894436

`val(A276086(A351225(n)+n-A373849(n)), 7)`
-/

namespace A400267.P16281391544865894436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A351225 n + ((n : ℤ) - A373849 n)).toNat).toNat 7

end

end A400267.P16281391544865894436

/-! ## A400267.P13528090932657172381

`val(A276086(A005843(n)-(n-A168036(n))), 7)`
-/

namespace A400267.P13528090932657172381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A005843 n - ((n : ℤ) - A168036 n)).toNat).toNat 7

end

end A400267.P13528090932657172381

/-! ## A400267.P14168667949153869042

`A400260(A000217(n+3)+n)`
-/

namespace A400267.P14168667949153869042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400260 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A400267.P14168667949153869042

/-! ## A400267.P15822788143900678534

`A214411(A400153(n))`
-/

namespace A400267.P15822788143900678534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A400153 n).toNat

end

end A400267.P15822788143900678534

/-!
# A400268: Numbers that can be obtained by concatenating the decimal representations of x, y, and x^y for x >= 1 and y >= 0.

The programs for A400268, there is no canonical definition to state claims against.
-/

/-! ## A400268.P17068153997121062843

`A282115(n+1)-A185264(A337599(3*n+4))`
-/

namespace A400268.P17068153997121062843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282115 (n + 1) - A185264 (A337599 (3 * n + 4)).toNat

end

end A400268.P17068153997121062843

/-!
# A400272: G.f. A(x) satisfies A(x) = (1 + x) * A(x^4 * (1 + x)^2), with A(0) = 1.

The programs for A400272, there is no canonical definition to state claims against.
-/

/-! ## A400272.P14419080017348083513

`A000194(A350483(n+1)²)`
-/

namespace A400272.P14419080017348083513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A350483 (n + 1) ^ 2).toNat

end

end A400272.P14419080017348083513

/-! ## A400272.P17712547072236860093

`A000196(A350483(n+1)²)`
-/

namespace A400272.P17712547072236860093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A350483 (n + 1) ^ 2).toNat

end

end A400272.P17712547072236860093

/-! ## A400272.P4170275777437813879

`lcm(A087960(A000032(n)), A350483(n+1))`
-/

namespace A400272.P4170275777437813879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 (A000032 n).toNat) (A350483 (n + 1))

end

end A400272.P4170275777437813879

/-! ## A400272.P8312260133874711516

`A037213(A350483(n+1)*A350483(n+1))`
-/

namespace A400272.P8312260133874711516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A350483 (n + 1) * A350483 (n + 1)).toNat

end

end A400272.P8312260133874711516

/-!
# A400276: Numbers k such that A046660(k) >= A056169(k).

The programs for A400276, there is no canonical definition to state claims against.
-/

/-! ## A400276.P16288257950772694654

`lt[A373957(n+1), A057521(n+1)]+1`
-/

namespace A400276.P16288257950772694654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400276.P16288257950772694654

/-! ## A400276.P6006097720223907984

`lt[A319841(n+1), A317940(n+1)]+1`
-/

namespace A400276.P6006097720223907984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400276.P6006097720223907984

/-! ## A400276.P7824384397364177871

`lt[A303838(n+1), A343652(n+1)]+1`
-/

namespace A400276.P7824384397364177871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400276.P7824384397364177871

/-! ## A400276.P842117832067371404

`filter[A212165(n+1), A174889(#)]`
-/

namespace A400276.P842117832067371404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A400276.P842117832067371404

/-! ## A400276.P2511963887651639660

`filter[A347457(n+1), A087049(#)]`
-/

namespace A400276.P2511963887651639660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A400276.P2511963887651639660

/-!
# A400277: a(n) = phi(n)^2 mod (n+1), where phi is Euler's totient function (A000010).

The programs for A400277, the canonical program `A400277.P8291942098813751229` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400277 has offset 1).

The definition of A400277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²%(n+2)` (program `A400277.P8291942098813751229`, by `A400277.P8291942098813751229.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400277.P5444544342813260749

`A127473(n+1)%(n+2)`
-/

namespace A400277.P5444544342813260749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127473 (n + 1)) (n + 2 : ℤ)

end

end A400277.P5444544342813260749

namespace A400277

/-- `A127473(n+1)%(n+2)` -/
def P5444544342813260749.Spec : Prop :=
  ∀ n, P5444544342813260749.a n = A400277 (n + 1)

end A400277

/-! ## A400277.P8291942098813751229

`A000010(n+1)²%(n+2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A400277

/-- `A000010(n+1)²%(n+2)` -/
def P8291942098813751229.Spec : Prop :=
  ∀ n, P8291942098813751229.a n = A400277 (n + 1)

theorem P8291942098813751229.correct : P8291942098813751229.Spec := by
  intro n
  simp only [A400277, Nat.add_sub_cancel]

end A400277

/-! ## A400277.P7953307796211469055

`((n+1)/∏{p}[n+1, #]*∏{p}[1+n, #-1])²%(2+n)`
-/

namespace A400277.P7953307796211469055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2)) (2 + n : ℤ)

end

end A400277.P7953307796211469055

namespace A400277

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[1+n, #-1])²%(2+n)` -/
def P7953307796211469055.Spec : Prop :=
  ∀ n, P7953307796211469055.a n = A400277 (n + 1)

end A400277

/-! ## A400277.P4378588643071124572

`Δ[A002088(n)]²%(2+n)`
-/

namespace A400277.P4378588643071124572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (2 + n : ℤ)

end

end A400277.P4378588643071124572

namespace A400277

/-- `Δ[A002088(n)]²%(2+n)` -/
def P4378588643071124572.Spec : Prop :=
  ∀ n, P4378588643071124572.a n = A400277 (n + 1)

end A400277

/-! ## A400277.P7559322655154295915

`A002618(n+1)²%(n+2)`
-/

namespace A400277.P7559322655154295915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002618 (n + 1) ^ 2) (n + 2 : ℤ)

end

end A400277.P7559322655154295915

namespace A400277

/-- `A002618(n+1)²%(n+2)` -/
def P7559322655154295915.Spec : Prop :=
  ∀ n, P7559322655154295915.a n = A400277 (n + 1)

end A400277

/-! ## A400277.P13093846107561994183

`(∑{#}[n, 1-floor(1/gcd(n+1, #))]-(n+1))²%(n+2)`
-/

namespace A400277.P13093846107561994183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋) - (n + 1 : ℤ)) ^ 2) (n + 2 : ℤ)

end

end A400277.P13093846107561994183

namespace A400277

/-- `(∑{#}[n, 1-floor(1/gcd(n+1, #))]-(n+1))²%(n+2)` -/
def P13093846107561994183.Spec : Prop :=
  ∀ n, P13093846107561994183.a n = A400277 (n + 1)

end A400277

/-!
# A400280: a(n) is the maximum value of row n of A399982.

The programs for A400280, there is no canonical definition to state claims against.
-/

/-! ## A400280.P15629148158887041175

`A399982(∑[n]+1)`
-/

namespace A400280.P15629148158887041175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399982 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A400280.P15629148158887041175

/-! ## A400280.P15373638276414752952

`record[A399982(1+n)]`
-/

namespace A400280.P15373638276414752952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399982 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400280.P15373638276414752952

/-! ## A400280.P4436409691915527283

`A399982(A000124(n))+A059995(n)`
-/

namespace A400280.P4436409691915527283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399982 (A000124 n).toNat + A059995 n

end

end A400280.P4436409691915527283

/-! ## A400280.P17572639348364988618

`A399982(A000124(n))+A326540(n)`
-/

namespace A400280.P17572639348364988618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399982 (A000124 n).toNat + A326540 n

end

end A400280.P17572639348364988618

/-! ## A400280.P1638213672418071818

`A399982(A000124(n))+A326547(n)`
-/

namespace A400280.P1638213672418071818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399982 (A000124 n).toNat + A326547 n

end

end A400280.P1638213672418071818

/-!
# A400281: Number of self-conjugate skew partitions of n whose diagrams have no empty rows and columns.

The programs for A400281, there is no canonical definition to state claims against.
-/

/-! ## A400281.P16092472858685564778

`A367410(A081283(n))`
-/

namespace A400281.P16092472858685564778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367410 (A081283 n).toNat

end

end A400281.P16092472858685564778

/-! ## A400281.P16557524742294177935

`A122282(A056514(n+1))`
-/

namespace A400281.P16557524742294177935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A056514 (n + 1)).toNat

end

end A400281.P16557524742294177935

/-! ## A400281.P3722075391164737054

`A111651(A394723(n+1))`
-/

namespace A400281.P3722075391164737054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A394723 (n + 1)).toNat

end

end A400281.P3722075391164737054

/-! ## A400281.P1515786021435689639

`filter[A290821(n+1), A039966(#)]`
-/

namespace A400281.P1515786021435689639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A400281.P1515786021435689639

/-! ## A400281.P14974985663489066086

`A290821(lt[A119332(n), val(n+1, 2)+1])`
-/

namespace A400281.P14974985663489066086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290821 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A400281.P14974985663489066086

/-!
# A400282: Number of palindromic diagrams with n cells.

The programs for A400282, there is no canonical definition to state claims against.
-/

/-! ## A400282.P1165150061172740877

`A044940((n+2)^4)`
-/

namespace A400282.P1165150061172740877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 ((n + 2) ^ 4)

end

end A400282.P1165150061172740877

/-! ## A400282.P12999150451819222914

`A071674(A033047(n))`
-/

namespace A400282.P12999150451819222914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071674 (A033047 n).toNat

end

end A400282.P12999150451819222914

/-! ## A400282.P3318981161000538705

`A179020(A084160(n))`
-/

namespace A400282.P3318981161000538705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179020 (A084160 n).toNat

end

end A400282.P3318981161000538705

/-! ## A400282.P14581957429892297331

`A157749(A171966(n))`
-/

namespace A400282.P14581957429892297331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157749 (A171966 n).toNat

end

end A400282.P14581957429892297331

/-! ## A400282.P14341963862428031532

`A334941(A315358(n))`
-/

namespace A400282.P14341963862428031532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334941 (A315358 n).toNat

end

end A400282.P14341963862428031532

/-!
# A400284: a(n) = [q^n] J_1(q), where J_1(q) is the q-series of Flajolet and Sedgewick.

The programs for A400284, there is no canonical definition to state claims against.
-/

/-! ## A400284.P9382617654913869662

`A301735(n)-A400285(n)`
-/

namespace A400284.P9382617654913869662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301735 n - A400285 n

end

end A400284.P9382617654913869662

/-!
# A400285: a(n) = [q^n] (J0(q) - J1(q)), where J0 and J1 are q-series defined by Flajolet and Sedgewick.

The programs for A400285, there is no canonical definition to state claims against.
-/

/-! ## A400285.P4504183424320373655

`A301735(n)-A400284(n)`
-/

namespace A400285.P4504183424320373655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301735 n - A400284 n

end

end A400285.P4504183424320373655

/-!
# A400286: a(n) is the maximum cardinality of an antichain in {sigma(d) : d divides n}, ordered by divisibility.

The programs for A400286, there is no canonical definition to state claims against.
-/

/-! ## A400286.P5031920833434545968

`A368916(A261049(n))+A072670(n)`
-/

namespace A400286.P5031920833434545968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 (A261049 n).toNat + A072670 n

end

end A400286.P5031920833434545968

/-! ## A400286.P5120685411748847788

`A118458(A340080(n+1))`
-/

namespace A400286.P5120685411748847788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A340080 (n + 1)).toNat

end

end A400286.P5120685411748847788

/-! ## A400286.P12710426139967127887

`A038548(A160094(n+1)^(n+1)+n)`
-/

namespace A400286.P12710426139967127887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A160094 (n + 1) ^ (n + 1) + (n : ℤ)).toNat

end

end A400286.P12710426139967127887

/-! ## A400286.P4648144324964261076

`ceil((∑{d}[n+1, n²%#]+1)/2)-A000007(A264550(2*n+3))`
-/

namespace A400286.P4648144324964261076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1 : ℕ) : ℚ) / 2⌉ - A000007 (A264550 (2 * n + 3)).toNat

end

end A400286.P4648144324964261076

/-! ## A400286.P9366743672165261406

`A333750(n+1)+A031347(A290656(n))`
-/

namespace A400286.P9366743672165261406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (n + 1) + A031347 (A290656 n).toNat

end

end A400286.P9366743672165261406

/-!
# A400287: Numbers k such that k+1 divides phi(k)^2 + 1 where phi is Euler's totient function (A000010).

The programs for A400287, there is no canonical definition to state claims against.
-/

/-! ## A400287.P16086648820939739654

`A333219(A001868(n)*A323794(n))`
-/

namespace A400287.P16086648820939739654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A001868 n * A323794 n).toNat

end

end A400287.P16086648820939739654

/-!
# A400293: Least prime p such that there are n-1 smaller primes for which the reciprocals 1/p have the same period length in base 10.

The programs for A400293, there is no canonical definition to state claims against.
-/

/-! ## A400293.P11577866415267019289

`A400291(∑[n+1])`
-/

namespace A400293.P11577866415267019289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400291 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400293.P11577866415267019289

/-!
# A400298: Numbers that are products of exactly two positive decimal repunits, allowing equal factors and the factor 1.

The programs for A400298, there is no canonical definition to state claims against.
-/

/-! ## A400298.P4911351916768340100

`∩[A071158(n+1), A308365(n+1)]`
-/

namespace A400298.P4911351916768340100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P4911351916768340100

/-! ## A400298.P3243628205793534871

`∩[A071159(n+1), A308365(n+1)]`
-/

namespace A400298.P3243628205793534871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P3243628205793534871

/-! ## A400298.P14087992643372412063

`∩[A071158(n+1), A395936(n+1)]`
-/

namespace A400298.P14087992643372412063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P14087992643372412063

/-! ## A400298.P5433743639202572162

`∩[A071159(n+1), A395936(n+1)]`
-/

namespace A400298.P5433743639202572162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P5433743639202572162

/-! ## A400298.P3735906765196662829

`∩[A308365(n+1), A395936(n+1)]`
-/

namespace A400298.P3735906765196662829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P3735906765196662829

