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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A308500: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals: A(n,k) = Sum_{j=0..n} binomial(k*n,k*j).

The programs for A308500, there is no canonical definition to state claims against.
-/

/-! ## A308500.P4525563558125026607

`A361043(∑[2*n]%comp[∑[n]])`
-/

namespace A308500.P4525563558125026607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361043 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A308500.P4525563558125026607

/-! ## A308500.P9637217654157344268

`A361043(∑[char[∑[n]]]²-(n+1))`
-/

namespace A308500.P9637217654157344268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361043 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A308500.P9637217654157344268

/-! ## A308500.P10348686513853227392

`A102705(A227578(n)+A002262(n))`
-/

namespace A308500.P10348686513853227392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A227578 n + A002262 n).toNat

end

end A308500.P10348686513853227392

/-! ## A308500.P9248437271542610644

`A264837(A264837(n+1))+A139600(n)`
-/

namespace A308500.P9248437271542610644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264837 (A264837 (n + 1)).toNat + A139600 n

end

end A308500.P9248437271542610644

/-! ## A308500.P7426426810782890427

`A141285(A064297(n+1))`
-/

namespace A308500.P7426426810782890427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A064297 (n + 1)).toNat

end

end A308500.P7426426810782890427

/-!
# A308501: Partial products of odious numbers.

The programs for A308501, there is no canonical definition to state claims against.
-/

/-! ## A308501.P14853963276242345645

`a(n-1)*A000069(n)` with `a(0)=1`
-/

namespace A308501.P14853963276242345645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000069 n

end

end A308501.P14853963276242345645

/-! ## A308501.P978230538580326101

`∏[A000069(round(sqrt(n²+1)))]`
-/

namespace A308501.P978230538580326101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308501.P978230538580326101

/-! ## A308501.P12690237062958814643

`(A161560(n)+n)*a(n-1)` with `a(0)=1`
-/

namespace A308501.P12690237062958814643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A161560 n + (n : ℤ)) * a (n - 1)

end

end A308501.P12690237062958814643

/-! ## A308501.P517326876645261955

`∏[A181155(round(sqrt(n²+1)))-1]`
-/

namespace A308501.P517326876645261955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308501.P517326876645261955

/-! ## A308501.P14910520454061994915

`∏[A000069(n+1)]/comp[xor(n, 2*n)]`
-/

namespace A308501.P14910520454061994915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ)

end

end A308501.P14910520454061994915

/-! ## A308501.P5246325625772482696

`∏[A000069(n+1)]/A000069(n+1)`
-/

namespace A308501.P5246325625772482696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000069 (n + 1) : ℚ)

end

end A308501.P5246325625772482696

/-!
# A308502: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n} d^(n/d + k).

The programs for A308502, there is no canonical definition to state claims against.
-/

/-! ## A308502.P10915541711969843207

`A294579(n+1)+A000122(A020695(n))`
-/

namespace A308502.P10915541711969843207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294579 (n + 1) + A000122 (A020695 n).toNat

end

end A308502.P10915541711969843207

/-! ## A308502.P12937827258353187171

`A294579(n+1)+A065241(n)%Δ[A000961(n+1)]`
-/

namespace A308502.P12937827258353187171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294579 (n + 1) + Int.tmod (A065241 n) (f1 (n + 1) - f1 n)

end

end A308502.P12937827258353187171

/-! ## A308502.P7659267380907178568

`A294579(n+1)+A239657(A096841(n+1))`
-/

namespace A308502.P7659267380907178568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294579 (n + 1) + A239657 (A096841 (n + 1)).toNat

end

end A308502.P7659267380907178568

/-! ## A308502.P14681521850799770136

`A113221(A319278(n+1))+A000122(A020695(n))`
-/

namespace A308502.P14681521850799770136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A319278 (n + 1)).toNat + A000122 (A020695 n).toNat

end

end A308502.P14681521850799770136

/-! ## A308502.P15245527733987611385

`A294579(n+1)+A002324(A306214(n+1))`
-/

namespace A308502.P15245527733987611385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294579 (n + 1) + A002324 (A306214 (n + 1)).toNat

end

end A308502.P15245527733987611385

/-!
# A308503: Square array T(n, k), n, k > 0, read by antidiagonals upwards: T(n, k) = f(g(n) | g(k)), where f is defined over the set of finite sequences of nonnegative integers with no trailing zero as f(e) = Sum_{k = 1..#e} prime(k)^e_k, g is the inverse of f, and | denotes concatenation.

The programs for A308503, there is no canonical definition to state claims against.
-/

/-! ## A308503.P16909166297488145339

`A004736(n+1)*A329326(A142963(n+1))`
-/

namespace A308503.P16909166297488145339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A329326 (A142963 (n + 1)).toNat

end

end A308503.P16909166297488145339

/-!
# A308504: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n} d^(n+k).

The programs for A308504, the canonical program `A308504.P8854437065577094015` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308504 has offset 1).

The definition of A308504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308504.P8854437065577094015

`∑{d}[A002260(n+1), #^A123578(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A308504

/-- `∑{d}[A002260(n+1), #^A123578(n)]` -/
def P8854437065577094015.Spec : Prop :=
  ∀ n, P8854437065577094015.a n = (A308504 (n + 1) : ℚ)

end A308504

/-! ## A308504.P3747859224911661370

`∑{d}[A002260(n+1), #^A130855(n)]`
-/

namespace A308504.P3747859224911661370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A130855 n : ℤ)

end

end A308504.P3747859224911661370

namespace A308504

/-- `∑{d}[A002260(n+1), #^A130855(n)]` -/
def P3747859224911661370.Spec : Prop :=
  ∀ n, P3747859224911661370.a n = (A308504 (n + 1) : ℚ)

end A308504

/-! ## A308504.P15943913475414008912

`∑{d}[A002260(n+1), #^A002024(n+1)]`
-/

namespace A308504.P15943913475414008912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A308504.P15943913475414008912

namespace A308504

/-- `∑{d}[A002260(n+1), #^A002024(n+1)]` -/
def P15943913475414008912.Spec : Prop :=
  ∀ n, P15943913475414008912.a n = (A308504 (n + 1) : ℚ)

end A308504

/-! ## A308504.P6911889169840491507

`∑{d}[A002260(n+1), #^A107436(n+1)]`
-/

namespace A308504.P6911889169840491507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A107436 (n + 1) : ℤ)

end

end A308504.P6911889169840491507

namespace A308504

/-- `∑{d}[A002260(n+1), #^A107436(n+1)]` -/
def P6911889169840491507.Spec : Prop :=
  ∀ n, P6911889169840491507.a n = (A308504 (n + 1) : ℚ)

end A308504

/-! ## A308504.P6845088867193282530

`∑{d}[A349520(2*n+1), #^A349520(2*(n+1))]`
-/

namespace A308504.P6845088867193282530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A349520 (2 * (n + 1)) : ℤ)

end

end A308504.P6845088867193282530

namespace A308504

/-- `∑{d}[A349520(2*n+1), #^A349520(2*(n+1))]` -/
def P6845088867193282530.Spec : Prop :=
  ∀ n, P6845088867193282530.a n = (A308504 (n + 1) : ℚ)

end A308504

/-! ## A308504.P13998833096188805559

`∑{d}[A136261(n+1), #^A002024(n+1)]`
-/

namespace A308504.P13998833096188805559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136261 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A308504.P13998833096188805559

namespace A308504

/-- `∑{d}[A136261(n+1), #^A002024(n+1)]` -/
def P13998833096188805559.Spec : Prop :=
  ∀ n, P13998833096188805559.a n = (A308504 (n + 1) : ℚ)

end A308504

/-!
# A308506: Expansion of e.g.f.: -1/(1-LambertW(-2*x)).

The programs for A308506, there is no canonical definition to state claims against.
-/

/-! ## A308506.P7921732570073829772

`2^n*A277458(n)`
-/

namespace A308506.P7921732570073829772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A277458 n

end

end A308506.P7921732570073829772

/-! ## A308506.P16282599206587469486

`A033999(n)*A277458(n)*A122803(n)`
-/

namespace A308506.P16282599206587469486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A277458 n * A122803 n

end

end A308506.P16282599206587469486

/-! ## A308506.P6184414977568974219

`A277458(n)/A000312(n)*A062971(n)`
-/

namespace A308506.P6184414977568974219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277458 n : ℚ) / (A000312 n : ℚ) * (A062971 n : ℚ)

end

end A308506.P6184414977568974219

/-! ## A308506.P2694068576096814419

`A277458(n)*A317525(A000124(n))`
-/

namespace A308506.P2694068576096814419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277458 n * A317525 (A000124 n).toNat

end

end A308506.P2694068576096814419

/-! ## A308506.P948983569186250635

`A277458(n)*A339905(A000079(n))`
-/

namespace A308506.P948983569186250635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277458 n * A339905 (A000079 n).toNat

end

end A308506.P948983569186250635

/-!
# A308507: a(n) = (a(n-1) + a(n-2))^4, for n >= 2; a(0)=0, a(1)=1.

The programs for A308507, the canonical program `A308507.P18159982939011638663` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308507 has offset 0).

The definition of A308507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2))^4` (program `A308507.P18159982939011638663`, by `A308507.P18159982939011638663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308507.P18159982939011638663

`(a(n-1)+a(n-2))^4` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308507

/-- `(a(n-1)+a(n-2))^4` -/
def P18159982939011638663.Spec : Prop :=
  ∀ n, (P18159982939011638663.a n : ℤ) = A308507 n

theorem P18159982939011638663.correct : P18159982939011638663.Spec := by
  intro n
  simp only [A308507]

end A308507

/-! ## A308507.P17630481709936030309

`(a(n-1)+a(n-2))²²` with `a(0)=0, a(1)=1`
-/

namespace A308507.P17630481709936030309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((a (n - 1) + a (n - 2)) ^ 2) ^ 2

end

end A308507.P17630481709936030309

namespace A308507

/-- `(a(n-1)+a(n-2))²²` -/
def P17630481709936030309.Spec : Prop :=
  ∀ n, (P17630481709936030309.a n : ℤ) = A308507 n

theorem P17630481709936030309.correct : P17630481709936030309.Spec := by
  intro n
  simp only [A308507, Nat.add_sub_cancel, A308507.P17630481709936030309.a, A308507.P18159982939011638663.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A308507

/-! ## A308507.P3011842518642489585

`(a(n-1)-ceil(-a(n-2)))^4` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A308507.P3011842518642489585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) ^ 4

end

end A308507.P3011842518642489585

namespace A308507

/-- `(a(n-1)-ceil(-a(n-2)))^4` -/
def P3011842518642489585.Spec : Prop :=
  ∀ n, P3011842518642489585.a n = A308507 n

end A308507

/-!
# A308508: Numbers (including primorials) that satisfy "three rules that highly composite numbers must have" (see Comments below) but are not highly composite numbers.

The programs for A308508, there is no canonical definition to state claims against.
-/

/-! ## A308508.P12175409721485489392

`∩[2*A065154(n+1), A363280(n+1)]`
-/

namespace A308508.P12175409721485489392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308508.P12175409721485489392

/-! ## A308508.P12440636337175109866

`∩[2*A055743(n+1), A363280(n+1)]`
-/

namespace A308508.P12440636337175109866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308508.P12440636337175109866

/-! ## A308508.P14498769116726834517

`∩[A065154(n+1), A363280(n+1)]`
-/

namespace A308508.P14498769116726834517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308508.P14498769116726834517

/-! ## A308508.P6025747422417583659

`∩[A055743(n+1), A363280(n+1)]`
-/

namespace A308508.P6025747422417583659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308508.P6025747422417583659

/-! ## A308508.P10348932161515991797

`∩[A068567(n+1), A363280(n+1)]`
-/

namespace A308508.P10348932161515991797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308508.P10348932161515991797

/-!
# A308509: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where A(n,k) is Sum_{d|n} d^(k*n/d).

The programs for A308509, there is no canonical definition to state claims against.
-/

/-! ## A308509.P6448917790929399834

`A116512(A051129(n+1))+A057427(A267167(n))`
-/

namespace A308509.P6448917790929399834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (A051129 (n + 1)).toNat + A057427 (A267167 n).toNat

end

end A308509.P6448917790929399834

/-! ## A308509.P16771488306078441286

`A116512(A051129(n+1))+A003484(A003528(n+1))`
-/

namespace A308509.P16771488306078441286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (A051129 (n + 1)).toNat + A003484 (A003528 (n + 1)).toNat

end

end A308509.P16771488306078441286

/-! ## A308509.P7568104843450478405

`A116512(A051129(n+1))+A057427(A051129(n+1)²)`
-/

namespace A308509.P7568104843450478405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (A051129 (n + 1)).toNat + A057427 (A051129 (n + 1) ^ 2).toNat

end

end A308509.P7568104843450478405

/-! ## A308509.P3404250752681361643

`A329332(n)+∑{e}[A318129(A308694(n+1)), #]`
-/

namespace A308509.P3404250752681361643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318129 (A308694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329332 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A308509.P3404250752681361643

/-! ## A308509.P6801739228805686115

`A107753(A051129(n+1))`
-/

namespace A308509.P6801739228805686115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107753 (A051129 (n + 1)).toNat

end

end A308509.P6801739228805686115

/-!
# A308510: Prime(k) such that the multiplicative order of prime(k) (mod prime(k+1)) = prime(k+1)-1.

The programs for A308510, there is no canonical definition to state claims against.
-/

/-! ## A308510.P8949018471087782629

`eq[A023049(n+1), A280702(n+1)]+1`
-/

namespace A308510.P8949018471087782629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A308510.P8949018471087782629

/-! ## A308510.P6009311168833423842

`p?[∑[gcd(7, A088871(n+1))]]`
-/

namespace A308510.P6009311168833423842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A088871 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A308510.P6009311168833423842

/-! ## A308510.P10378455607680369813

`p?[∑[A292886(A001055(n+1)!)]]`
-/

namespace A308510.P10378455607680369813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292886 (Nat.factorial (A001055 (n + 1)).toNat)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A308510.P10378455607680369813

/-!
# A308516: Odd numbers which are not squares and cannot be written as a sum of a prime and a square.

The programs for A308516, there is no canonical definition to state claims against.
-/

/-! ## A308516.P18306721400378708978

`filter[A020495(n+1), A093719(#)]`
-/

namespace A308516.P18306721400378708978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A308516.P18306721400378708978

/-!
# A308519: Expansion of e.g.f. exp(exp(1 - exp(x)) - 1).

The programs for A308519, there is no canonical definition to state claims against.
-/

/-! ## A308519.P6040516377619534883

`A210638(∑[n+3])`
-/

namespace A308519.P6040516377619534883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210638 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308519.P6040516377619534883

/-! ## A308519.P17137630524714223410

`A210638(A141214(n))+A011740(n)`
-/

namespace A308519.P17137630524714223410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210638 (A141214 n).toNat + A011740 n

end

end A308519.P17137630524714223410

/-! ## A308519.P14751319053561096264

`A007318(∑[n])*A210638(A141214(n))`
-/

namespace A308519.P14751319053561096264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A210638 (A141214 n).toNat

end

end A308519.P14751319053561096264

/-! ## A308519.P16880095426091530084

`A210638(A141214(n))%A000045(8*n+6)`
-/

namespace A308519.P16880095426091530084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210638 (A141214 n).toNat) (A000045 (8 * n + 6))

end

end A308519.P16880095426091530084

/-! ## A308519.P6897424490412418706

`A000041(gcd(n, n+1))*A210638(A141214(n))`
-/

namespace A308519.P6897424490412418706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A210638 (A141214 n).toNat

end

end A308519.P6897424490412418706

/-!
# A308520: Expansion of e.g.f. exp(x)*(1 + x + x^2/2)*(sec(x) + tan(x)).

The programs for A308520, there is no canonical definition to state claims against.
-/

/-! ## A308520.P7094982902856178986

`A000746(n)-A231179(n)`
-/

namespace A308520.P7094982902856178986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000746 n - A231179 n

end

end A308520.P7094982902856178986

/-! ## A308520.P14270542781089000684

`A000746(n)-A231200(n)/2`
-/

namespace A308520.P14270542781089000684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000746 n : ℚ) - (A231200 n : ℚ) / 2

end

end A308520.P14270542781089000684

/-! ## A308520.P17533649505799121716

`A000667(n)+A000718(n)-A000111(n)`
-/

namespace A308520.P17533649505799121716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n + (A000718 n - A000111 n)

end

end A308520.P17533649505799121716

/-! ## A308520.P7517630687996553679

`A000674(n)+A000718(n)-A000667(n)`
-/

namespace A308520.P7517630687996553679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000674 n + (A000718 n - A000667 n)

end

end A308520.P7517630687996553679

/-! ## A308520.P103656968543479744

`A000737(n)+A000746(n)-A000754(n)`
-/

namespace A308520.P103656968543479744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000737 n + (A000746 n - A000754 n)

end

end A308520.P103656968543479744

/-!
# A308521: Expansion of e.g.f. (sec(x) + tan(x))/(1 - 2*x).

The programs for A308521, there is no canonical definition to state claims against.
-/

/-! ## A308521.P8290889975506892582

`A000111(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A308521.P8290889975506892582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000111 n + 2 * ((n : ℤ) * a (n - 1))

end

end A308521.P8290889975506892582

/-! ## A308521.P2628801856117489737

`abs(A346838(n))+2*n*a(n-1)` with `a(0)=1`
-/

namespace A308521.P2628801856117489737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A346838 n| + 2 * ((n : ℤ) * a (n - 1))

end

end A308521.P2628801856117489737

/-! ## A308521.P10607045633736725969

`A109449(∑[n])+2*n*a(n-1)` with `a(0)=1`
-/

namespace A308521.P10607045633736725969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * ((n : ℤ) * a (n - 1))

end

end A308521.P10607045633736725969

/-! ## A308521.P17757126255490909602

`A008282(∑[n]+1)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A308521.P17757126255490909602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2 * ((n : ℤ) * a (n - 1))

end

end A308521.P17757126255490909602

/-! ## A308521.P3978597878874965547

`A229892(∑[n]+1)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A308521.P3978597878874965547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2 * ((n : ℤ) * a (n - 1))

end

end A308521.P3978597878874965547

/-!
# A308522: Maximum number of simple graphs with no isolated vertices on n nodes with identical degree sequences.

The programs for A308522, there is no canonical definition to state claims against.
-/

/-! ## A308522.P6987171554387775414

`A291927(A095892(n))`
-/

namespace A308522.P6987171554387775414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291927 (A095892 n).toNat

end

end A308522.P6987171554387775414

/-! ## A308522.P8125875705839299115

`A291927(A239311(n))`
-/

namespace A308522.P8125875705839299115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291927 (A239311 n).toNat

end

end A308522.P8125875705839299115

/-! ## A308522.P13424163168677086738

`A291927(A242766(n))`
-/

namespace A308522.P13424163168677086738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291927 (A242766 n).toNat

end

end A308522.P13424163168677086738

/-!
# A308523: Number of essentially simple rooted toroidal triangulations with n vertices.

The programs for A308523, there is no canonical definition to state claims against.
-/

/-! ## A308523.P887844902365840374

`A057354(24*a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A308523.P887844902365840374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A057354 (24 * a (n - 1)).toNat + 1

end

end A308523.P887844902365840374

/-!
# A308524: Number of essentially 3-connected rooted toroidal maps with n edges.

The programs for A308524, there is no canonical definition to state claims against.
-/

/-! ## A308524.P5970989727471193711

`A353504(A380126(n)-A218757(n))`
-/

namespace A308524.P5970989727471193711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353504 (A380126 n - A218757 n).toNat

end

end A308524.P5970989727471193711

/-! ## A308524.P15367296264655425716

`A064969(A000272(n))%A384892(n)`
-/

namespace A308524.P15367296264655425716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064969 (A000272 n).toNat) (A384892 n)

end

end A308524.P15367296264655425716

/-! ## A308524.P4700868935085968606

`A054404(A186724(n)+A074416(n+1))`
-/

namespace A308524.P4700868935085968606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A186724 n + A074416 (n + 1)).toNat

end

end A308524.P4700868935085968606

/-!
# A308525: Quasiperiods of the ternary tribonacci sequence (A080843).

The programs for A308525, there is no canonical definition to state claims against.
-/

/-! ## A308525.P1588501871368588615

`lt[2*A356965(n), n]`
-/

namespace A308525.P1588501871368588615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356965 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308525.P1588501871368588615

/-! ## A308525.P13735327182155648691

`lt[A001972(A356965(n)), n]`
-/

namespace A308525.P13735327182155648691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A356965 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308525.P13735327182155648691

/-! ## A308525.P259171633932891024

`lt[A356965(n), A022290(n)]`
-/

namespace A308525.P259171633932891024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308525.P259171633932891024

/-! ## A308525.P5694960733992242804

`lt[A356965(n), A029917(n)]`
-/

namespace A308525.P5694960733992242804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308525.P5694960733992242804

/-! ## A308525.P13256198414678202349

`lt[A356965(n), A309064(n)]`
-/

namespace A308525.P13256198414678202349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308525.P13256198414678202349

/-! ## A308525.P463685869280107896

`lt[A023706(A356965(n)+2), n]`
-/

namespace A308525.P463685869280107896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (A356965 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308525.P463685869280107896

/-! ## A308525.P4948802874577306358

`lt[A356965(n)²², A007088(n)]`
-/

namespace A308525.P4948802874577306358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A356965 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308525.P4948802874577306358

/-! ## A308525.P4463624559429237677

`lt[A356965(n)², A003754(n+1)]`
-/

namespace A308525.P4463624559429237677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308525.P4463624559429237677

/-! ## A308525.P5439148958805644000

`lt[A356965(n), A356964(floor(n/2))]`
-/

namespace A308525.P5439148958805644000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356964 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308525.P5439148958805644000

/-! ## A308525.P12720854154786443100

`lt[A000045(A356965(n)), A103609(n)]`
-/

namespace A308525.P12720854154786443100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A356965 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308525.P12720854154786443100

/-!
# A308528: Number of length-n binary words having no nontrivial prefix that is a palindrome of odd length.

The programs for A308528, the canonical program `A308528.P16512669099177771917` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308528 has offset 1).

The definition of A308528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308528.P16512669099177771917

`2*A003000(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A308528

/-- `2*A003000(n)` -/
def P16512669099177771917.Spec : Prop :=
  ∀ n, P16512669099177771917.a n = A308528 (n + 1)

theorem P16512669099177771917.correct : P16512669099177771917.Spec := by
  intro n
  simp only [A308528, Nat.add_sub_cancel]

end A308528

/-! ## A308528.P16577607190329096622

`lcm(A003000(n), A117973(n))`
-/

namespace A308528.P16577607190329096622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003000 n) (A117973 n)

end

end A308528.P16577607190329096622

namespace A308528

/-- `lcm(A003000(n), A117973(n))` -/
def P16577607190329096622.Spec : Prop :=
  ∀ n, (P16577607190329096622.a n : ℤ) = A308528 (n + 1)

end A308528

/-! ## A308528.P5726470091171606500

`2*∑{d}[n+1, A019590(#)*A045690((n+1)/#)]`
-/

namespace A308528.P5726470091171606500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A019590 d * A045690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A308528.P5726470091171606500

namespace A308528

/-- `2*∑{d}[n+1, A019590(#)*A045690((n+1)/#)]` -/
def P5726470091171606500.Spec : Prop :=
  ∀ n, P5726470091171606500.a n = A308528 (n + 1)

end A308528

/-! ## A308528.P15783751739612361514

`2*(2^n-A094536(n))`
-/

namespace A308528.P15783751739612361514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - A094536 n)

end

end A308528.P15783751739612361514

namespace A308528

/-- `2*(2^n-A094536(n))` -/
def P15783751739612361514.Spec : Prop :=
  ∀ n, P15783751739612361514.a n = A308528 (n + 1)

theorem P15783751739612361514.correct : P15783751739612361514.Spec := by
  intro n
  simp only [A308528, Nat.add_sub_cancel, A308528.P15783751739612361514.a, A308528.P16512669099177771917.a, A003000, A003000.P6557006647586866412.a, A094536, A094536.P13205701209881568815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308528

/-! ## A308528.P3580645837942053500

`2^(n+1)-A254128(n+1)`
-/

namespace A308528.P3580645837942053500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A254128 (n + 1)

end

end A308528.P3580645837942053500

namespace A308528

/-- `2^(n+1)-A254128(n+1)` -/
def P3580645837942053500.Spec : Prop :=
  ∀ n, P3580645837942053500.a n = A308528 (n + 1)

end A308528

/-! ## A308528.P11063093350423671182

`A003000(n+1)+A094536(n+1)-A254128(n+1)`
-/

namespace A308528.P11063093350423671182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 (n + 1) + (A094536 (n + 1) - A254128 (n + 1))

end

end A308528.P11063093350423671182

namespace A308528

/-- `A003000(n+1)+A094536(n+1)-A254128(n+1)` -/
def P11063093350423671182.Spec : Prop :=
  ∀ n, P11063093350423671182.a n = A308528 (n + 1)

end A308528

/-! ## A308528.P7792248812704923305

`2*A342239(A212342(n+1))`
-/

namespace A308528.P7792248812704923305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342239 (A212342 (n + 1)).toNat

end

end A308528.P7792248812704923305

namespace A308528

/-- `2*A342239(A212342(n+1))` -/
def P7792248812704923305.Spec : Prop :=
  ∀ n, P7792248812704923305.a n = A308528 (n + 1)

end A308528

/-!
# A308529: Number of length-n binary words having exactly one nontrivial palindrome prefix.

The programs for A308529, there is no canonical definition to state claims against.
-/

/-! ## A308529.P2812565811880895820

`A131883(A005417(n))-2`
-/

namespace A308529.P2812565811880895820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A005417 n).toNat - 2

end

end A308529.P2812565811880895820

/-! ## A308529.P4393601123608176983

`A279891(A050182(n)+A049703(n))`
-/

namespace A308529.P4393601123608176983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (A050182 n + A049703 n).toNat

end

end A308529.P4393601123608176983

/-! ## A308529.P13534848158032752344

`A308720(A121650(n+1))`
-/

namespace A308529.P13534848158032752344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308720 (A121650 (n + 1)).toNat

end

end A308529.P13534848158032752344

/-! ## A308529.P14475083232298831612

`A308720(A148824(n+1))`
-/

namespace A308529.P14475083232298831612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308720 (A148824 (n + 1)).toNat

end

end A308529.P14475083232298831612

/-!
# A308530: The number of largely composite numbers (A067128) having the same number of divisors as the n-th highly composite number A002182(n).

The programs for A308530, there is no canonical definition to state claims against.
-/

/-! ## A308530.P2725422278564298137

`A140225(A002182(n+2)-1)`
-/

namespace A308530.P2725422278564298137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140225 (A002182 (n + 2) - 1).toNat

end

end A308530.P2725422278564298137

/-! ## A308530.P8195238761952255137

`gcd(6, A317137(A281008(n)))`
-/

namespace A308530.P8195238761952255137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A317137 (A281008 n).toNat)

end

end A308530.P8195238761952255137

/-!
# A308531: Largely composite numbers (A067128) with a unique number of divisors.

The programs for A308531, there is no canonical definition to state claims against.
-/

/-! ## A308531.P6447150939571200146

`A141320(A187224(comp[∑[n+2]-2]))`
-/

namespace A308531.P6447150939571200146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141320 (A187224 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A308531.P6447150939571200146

/-! ## A308531.P882962125765672088

`record[lcm(A144284(n+1), A144357(n+2))]`
-/

namespace A308531.P882962125765672088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144284 (n + 1)) (A144357 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308531.P882962125765672088

/-! ## A308531.P217615950323458412

`A094348(A374758(n)+A226793(n+1))`
-/

namespace A308531.P217615950323458412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (A374758 n + A226793 (n + 1)).toNat

end

end A308531.P217615950323458412

/-!
# A308532: Highly composite numbers (A002182) with a record number of largely composite numbers (A067128) having the same number of divisors.

The programs for A308532, there is no canonical definition to state claims against.
-/

/-! ## A308532.P12136796573078508917

`A309811(or(n+1, A001205(n)))`
-/

namespace A308532.P12136796573078508917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309811 (Int.lor (n + 1 : ℤ) (A001205 n)).toNat

end

end A308532.P12136796573078508917

/-! ## A308532.P6220733502885351443

`A195307(record[A067760(3*round(2*n/5)+n)])`
-/

namespace A308532.P6220733502885351443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (3 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308532.P6220733502885351443

/-!
# A308534: Numbers k such that the LCM of all possible sums of two digits of k (at distinct positions) is strictly greater than k.

The programs for A308534, there is no canonical definition to state claims against.
-/

/-! ## A308534.P14050500558894824515

`A080537(A246162(n+1)+A064216(n+1))`
-/

namespace A308534.P14050500558894824515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080537 (A246162 (n + 1) + A064216 (n + 1)).toNat

end

end A308534.P14050500558894824515

/-!
# A308536: Expansion of e.g.f. exp(1 - exp(2*x)).

The programs for A308536, there is no canonical definition to state claims against.
-/

/-! ## A308536.P16319149051369490389

`2^n*A000587(n)`
-/

namespace A308536.P16319149051369490389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000587 n

end

end A308536.P16319149051369490389

/-! ## A308536.P9742944821334325220

`2^n*A293015(∑[n]+n)`
-/

namespace A308536.P9742944821334325220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A293015 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A308536.P9742944821334325220

/-! ## A308536.P5590508722296247869

`2^n*A293051(∑[n]+n)`
-/

namespace A308536.P5590508722296247869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A293051 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A308536.P5590508722296247869

/-! ## A308536.P17016064103588190584

`A000587(n)*A036561(∑[n])`
-/

namespace A308536.P17016064103588190584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A036561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308536.P17016064103588190584

/-! ## A308536.P11349003410106696393

`A000587(n)*A038207(∑[n])`
-/

namespace A308536.P11349003410106696393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A038207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308536.P11349003410106696393

/-! ## A308536.P5597999898694769502

`A000587(n)*A078840(∑[n])`
-/

namespace A308536.P5597999898694769502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A078840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308536.P5597999898694769502

/-! ## A308536.P4399825714715188085

`A000587(n)*A011782(n+1)`
-/

namespace A308536.P4399825714715188085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A011782 (n + 1)

end

end A308536.P4399825714715188085

/-! ## A308536.P11458946748846368572

`A000587(n)*A240951(n+1)`
-/

namespace A308536.P11458946748846368572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A240951 (n + 1)

end

end A308536.P11458946748846368572

/-! ## A308536.P12194392463532621310

`A000587(n)*A034008(n+2)`
-/

namespace A308536.P12194392463532621310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A034008 (n + 2)

end

end A308536.P12194392463532621310

/-! ## A308536.P2801667221494535764

`A000587(n)*A016116(2*n)`
-/

namespace A308536.P2801667221494535764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A016116 (2 * n)

end

end A308536.P2801667221494535764

/-!
# A308537: a(n) = exp(-1) * Sum_{k>=0} (k + n - 1)!^n/(k!*(k - 1)!^n).

The programs for A308537, there is no canonical definition to state claims against.
-/

/-! ## A308537.P13725538007053233534

`A182933(∑[4*n])`
-/

namespace A308537.P13725538007053233534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182933 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308537.P13725538007053233534

/-!
# A308538: a(n) = exp(1) * Sum_{k>=0} (-1)^k*(k*(k + 1))^n/k!.

The programs for A308538, there is no canonical definition to state claims against.
-/

/-! ## A308538.P400101662402653470

`A247108(∑[4*n])`
-/

namespace A308538.P400101662402653470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308538.P400101662402653470

/-! ## A308538.P7453831124759904174

`A007318(C(2, n))*A247108(2*(n²+n))`
-/

namespace A308538.P7453831124759904174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A247108 (2 * (n ^ 2 + n))

end

end A308538.P7453831124759904174

/-! ## A308538.P2292030929088954153

`A007318(A000096(n))*A247108(2*(n²+n))`
-/

namespace A308538.P2292030929088954153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A247108 (2 * (n ^ 2 + n))

end

end A308538.P2292030929088954153

/-! ## A308538.P8604323507023119607

`A007318(A025875(n))*A247108(2*(n²+n))`
-/

namespace A308538.P8604323507023119607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A025875 n).toNat * A247108 (2 * (n ^ 2 + n))

end

end A308538.P8604323507023119607

/-!
# A308539: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, the initial digit of a(n) divides a(n+1).

The programs for A308539, there is no canonical definition to state claims against.
-/

/-! ## A308539.P10467278529297492157

`A218468(n+1)%A383046(n+3)`
-/

namespace A308539.P10467278529297492157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218468 (n + 1)) (A383046 (n + 3))

end

end A308539.P10467278529297492157

/-! ## A308539.P10434976626288652946

`and(A152388(n+1), A218468(n+1))`
-/

namespace A308539.P10434976626288652946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A218468 (n + 1))

end

end A308539.P10434976626288652946

/-! ## A308539.P18183785264837100442

`and(A152388(n+1), A389116(n+1))`
-/

namespace A308539.P18183785264837100442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A389116 (n + 1))

end

end A308539.P18183785264837100442

/-! ## A308539.P16488276345155909633

`and(A383046(n+3), A389116(n+1))`
-/

namespace A308539.P16488276345155909633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A383046 (n + 3)) (A389116 (n + 1))

end

end A308539.P16488276345155909633

/-! ## A308539.P11666031661431458740

`A218468(n+1)+A000007(A000070(n))`
-/

namespace A308539.P11666031661431458740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218468 (n + 1) + A000007 (A000070 n).toNat

end

end A308539.P11666031661431458740

/-!
# A308540: a(n) is the least nonnegative number whose digits do not appear in order (not necessarily consecutively) in the concatenation of all previous terms.

The programs for A308540, there is no canonical definition to state claims against.
-/

/-! ## A308540.P14715418337625572847

`∑{e}[A000079(n), A179310(#)]`
-/

namespace A308540.P14715418337625572847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A179310 (Nat.factorization (f1 n).natAbs p)

end

end A308540.P14715418337625572847

/-! ## A308540.P8939427913186789492

`lt[A222210(A244112(n)), A065502(n+1)]`
-/

namespace A308540.P8939427913186789492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A244112 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308540.P8939427913186789492

/-! ## A308540.P18176435163142639594

`A002113(n+1)-A133081(A356064(n+1))`
-/

namespace A308540.P18176435163142639594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) - A133081 (A356064 (n + 1)).toNat

end

end A308540.P18176435163142639594

/-! ## A308540.P8728778833818875700

`lt[A222210(A244112(n)), A005185(3*(n+1))]`
-/

namespace A308540.P8728778833818875700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A244112 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308540.P8728778833818875700

/-! ## A308540.P10167210022830737733

`A002113(n+1)-A000035(A216669(3*(n+2)))`
-/

namespace A308540.P10167210022830737733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) - A000035 (A216669 (3 * (n + 2))).toNat

end

end A308540.P10167210022830737733

/-!
# A308542: Number of subsets of {2..n} containing the product of any set of distinct elements whose product is <= n.

The programs for A308542, there is no canonical definition to state claims against.
-/

/-! ## A308542.P15255746800670178205

`A326081(n+1)/2`
-/

namespace A308542.P15255746800670178205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326081 (n + 1) : ℚ) / 2

end

end A308542.P15255746800670178205

/-! ## A308542.P9681289357110365866

`Δ[∑[A326081(n)]/2]`
-/

namespace A308542.P9681289357110365866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326081 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308542.P9681289357110365866

/-! ## A308542.P6409991769663983046

`record[ratio[A326081(A152271(n))]]`
-/

namespace A308542.P6409991769663983046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326081 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308542.P6409991769663983046

/-! ## A308542.P12519598471934831723

`record[A326081(A128227(n))/2]`
-/

namespace A308542.P12519598471934831723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326081 (A128227 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308542.P12519598471934831723

/-! ## A308542.P12572206308725319121

`record[ceil(A326081(A163529(n))/2)]`
-/

namespace A308542.P12572206308725319121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326081 (A163529 n).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308542.P12572206308725319121

/-!
# A308543: Expansion of e.g.f. exp(2*(exp(2*x) - 1)).

The programs for A308543, there is no canonical definition to state claims against.
-/

/-! ## A308543.P3565130545702534606

`2^n*A001861(n)`
-/

namespace A308543.P3565130545702534606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001861 n

end

end A308543.P3565130545702534606

/-! ## A308543.P12688294623175257593

`A001861(n)*A011782(n+1)`
-/

namespace A308543.P12688294623175257593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001861 n * A011782 (n + 1)

end

end A308543.P12688294623175257593

/-! ## A308543.P800091415006848197

`record[A130321(n)]*record[A336345(n)]`
-/

namespace A308543.P800091415006848197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A308543.P800091415006848197

/-! ## A308543.P15247227652830668465

`record[A130321(n)]*A292860(∑[n+3])`
-/

namespace A308543.P15247227652830668465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A292860 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A308543.P15247227652830668465

/-! ## A308543.P1913922443534533216

`∑[A011782(n)]*A336345(∑[n]+n)`
-/

namespace A308543.P1913922443534533216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A336345 (∑ j ∈ Finset.range (n + 1), f2 j + n)

end

end A308543.P1913922443534533216

/-! ## A308543.P8832715819551105011

`A000079(n)*A189233(∑[n+2]+3)`
-/

namespace A308543.P8832715819551105011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A189233 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A308543.P8832715819551105011

/-! ## A308543.P4170670636066229273

`record[A130321(n)]*A189233(∑[n+2]+3)`
-/

namespace A308543.P4170670636066229273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A189233 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

end

end A308543.P4170670636066229273

/-! ## A308543.P2861894457459996260

`record[A036453(n+1)*A130321(n)]*A035009(n)`
-/

namespace A308543.P2861894457459996260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A035009 n

end

end A308543.P2861894457459996260

/-!
# A308544: Number of (not necessarily connected) graceful graphs on n edges with no isolated points.

The programs for A308544, there is no canonical definition to state claims against.
-/

/-! ## A308544.P5909848577396413117

`A029146(n)+A008676(A091142(n+2))`
-/

namespace A308544.P5909848577396413117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029146 n + A008676 (A091142 (n + 2)).toNat

end

end A308544.P5909848577396413117

/-! ## A308544.P7934728480056115992

`A029354(2*n)+A008676(A091142(n+2))`
-/

namespace A308544.P7934728480056115992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (2 * n) + A008676 (A091142 (n + 2)).toNat

end

end A308544.P7934728480056115992

/-! ## A308544.P14030953536747140143

`A029383(2*n+5)+A008676(A091142(n+2))`
-/

namespace A308544.P14030953536747140143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029383 (2 * n + 5) + A008676 (A091142 (n + 2)).toNat

end

end A308544.P14030953536747140143

/-! ## A308544.P13852204249060944485

`A008676(A091142(n+2))+A008676(∑[n]%A002222(n+2))`
-/

namespace A308544.P13852204249060944485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A091142 (n + 2)).toNat + A008676 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A002222 (n + 2))).toNat

end

end A308544.P13852204249060944485

/-!
# A308545: Number of connected graceful graphs on n edges.

The programs for A308545, there is no canonical definition to state claims against.
-/

/-! ## A308545.P17116735540421126803

`A087843(A000296(n+2)+1)`
-/

namespace A308545.P17116735540421126803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087843 (A000296 (n + 2) + 1).toNat

end

end A308545.P17116735540421126803

/-! ## A308545.P8693579968863809250

`A194806(or(A186576(n), A273974(n)))`
-/

namespace A308545.P8693579968863809250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194806 (Int.lor (A186576 n) (A273974 n)).toNat

end

end A308545.P8693579968863809250

/-! ## A308545.P8114279113322539223

`A049143(n+1)+A025427(A049160(n))`
-/

namespace A308545.P8114279113322539223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049143 (n + 1) + A025427 (A049160 n).toNat

end

end A308545.P8114279113322539223

/-!
# A308546: Number of double-closed subsets of {1..n}.

The programs for A308546, the canonical program `A308546.P17597284659635134973` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308546 has offset 0).

The definition of A308546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308546.P17597284659635134973

`a(n-1)*(1+1/A001511(n))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A308546

/-- `a(n-1)*(1+1/A001511(n))` -/
def P17597284659635134973.Spec : Prop :=
  ∀ n, P17597284659635134973.a n = (A308546 n : ℚ)

end A308546

/-! ## A308546.P7613532469437040113

`A208147(n+1)/A208147(A008619(n))`
-/

namespace A308546.P7613532469437040113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208147 (n + 1) : ℚ) / (A208147 (A008619 n).toNat : ℚ)

end

end A308546.P7613532469437040113

namespace A308546

/-- `A208147(n+1)/A208147(A008619(n))` -/
def P7613532469437040113.Spec : Prop :=
  ∀ n, P7613532469437040113.a n = (A308546 n : ℚ)

end A308546

/-! ## A308546.P5772581500576122821

`A208147(n+1)/A000142(n)*A067281(n)`
-/

namespace A308546.P5772581500576122821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208147 (n + 1) : ℚ) / (A000142 n : ℚ) * (A067281 n : ℚ)

end

end A308546.P5772581500576122821

namespace A308546

/-- `A208147(n+1)/A000142(n)*A067281(n)` -/
def P5772581500576122821.Spec : Prop :=
  ∀ n, P5772581500576122821.a n = (A308546 n : ℚ)

end A308546

/-! ## A308546.P3367787785370252448

`A333219(A324737(n+1)%A377031(n+1))`
-/

namespace A308546.P3367787785370252448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (Int.tmod (A324737 (n + 1)) (A377031 (n + 1))).toNat

end

end A308546.P3367787785370252448

namespace A308546

/-- `A333219(A324737(n+1)%A377031(n+1))` -/
def P3367787785370252448.Spec : Prop :=
  ∀ n, P3367787785370252448.a n = A308546 n

end A308546

/-! ## A308546.P632040744830682844

`eq[A109375(n), A337264(n)]`
-/

namespace A308546.P632040744830682844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308546.P632040744830682844

namespace A308546

/-- `eq[A109375(n), A337264(n)]` -/
def P632040744830682844.Spec : Prop :=
  ∀ n, (P632040744830682844.a n : ℤ) = A308546 n

end A308546

/-!
# A308548: Number of (not necessarily connected) graceful graphs on n vertices.

The programs for A308548, there is no canonical definition to state claims against.
-/

/-! ## A308548.P4250288069411260239

`A000088(n+1)-A308556(n+1)`
-/

namespace A308548.P4250288069411260239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A308556 (n + 1)

end

end A308548.P4250288069411260239

/-! ## A308548.P17424083500205190643

`Δ[A006897(n)]-A308556(n+1)`
-/

namespace A308548.P17424083500205190643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A308556 (n + 1)

end

end A308548.P17424083500205190643

/-!
# A308549: Number of connected graceful graphs on n vertices.

The programs for A308549, there is no canonical definition to state claims against.
-/

/-! ## A308549.P15749056832698172403

`A001349(n+1)-A308557(n+1)`
-/

namespace A308549.P15749056832698172403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A308557 (n + 1)

end

end A308549.P15749056832698172403

/-! ## A308549.P14058576514287652148

`or(A135069(n+1), A326786(A325221(n)))`
-/

namespace A308549.P14058576514287652148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135069 (n + 1)) (A326786 (A325221 n).toNat)

end

end A308549.P14058576514287652148

/-!
# A308551: Start with an empty stack S; for n = 1, 2, 3, ..., interpret the binary representation of n from left to right as follows: in case of bit 1, push the number 1 on top of S, in case of bit 0, replace the two numbers on top of S with their sum; a(n) gives the number on top of S after processing n.

The programs for A308551, there is no canonical definition to state claims against.
-/

/-! ## A308551.P7839794748501889755

`A285324(n+1)+A010894(A125883(n+1))`
-/

namespace A308551.P7839794748501889755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285324 (n + 1) + A010894 ((A125883 (n + 1)).toNat + 21)

end

end A308551.P7839794748501889755

/-! ## A308551.P17317370982460745931

`A285324(n+1)+A010894(A078358(2*n+1))`
-/

namespace A308551.P17317370982460745931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285324 (n + 1) + A010894 ((A078358 (2 * n + 1)).toNat + 21)

end

end A308551.P17317370982460745931

/-! ## A308551.P2632790334841157718

`A285324(n+1)+A185255(A102781(n+1))`
-/

namespace A308551.P2632790334841157718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285324 (n + 1) + A185255 (A102781 (n + 1)).toNat

end

end A308551.P2632790334841157718

/-! ## A308551.P9336735699204320318

`or(val(n+1, 2)+1, A372573(2^n))`
-/

namespace A308551.P9336735699204320318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (A372573 (2 ^ n))

end

end A308551.P9336735699204320318

/-! ## A308551.P2234586701575286820

`or(val(n+1, 2)+1, A189219(3^floor((n+1)/2)))`
-/

namespace A308551.P2234586701575286820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (A189219 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ))).toNat)

end

end A308551.P2234586701575286820

/-!
# A308553: Numbers k such that 5^(k+3) + 3^(k+2) + 2^(k+1) + 1 is prime.

The programs for A308553, there is no canonical definition to state claims against.
-/

/-! ## A308553.P17965257183625618653

`A145996(n+1)*A194536(A103469(n+3))`
-/

namespace A308553.P17965257183625618653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145996 (n + 1) * A194536 (A103469 (n + 3)).toNat

end

end A308553.P17965257183625618653

/-!
# A308554: Expansion of e.g.f. Sum_{k>=1} tau(k)*(exp(x) - 1)^k/k!, where tau = number of divisors (A000005).

The programs for A308554, there is no canonical definition to state claims against.
-/

/-! ## A308554.P6134170425698764892

`∑[A220658(A241023(n))]`
-/

namespace A308554.P6134170425698764892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A241023 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308554.P6134170425698764892

/-! ## A308554.P7329969049229183256

`∑[∑[A194640(A242586(n))]]`
-/

namespace A308554.P7329969049229183256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A242586 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308554.P7329969049229183256

/-!
# A308555: Expansion of e.g.f. Sum_{k>=1} sigma(k)*(exp(x) - 1)^k/k!, where sigma = sum of divisors (A000203).

The programs for A308555, there is no canonical definition to state claims against.
-/

/-! ## A308555.P10435097762603635853

`A087949(n+3)-A038106(n+1)!`
-/

namespace A308555.P10435097762603635853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087949 (n + 3) - (Nat.factorial (A038106 (n + 1)).toNat : ℤ)

end

end A308555.P10435097762603635853

/-! ## A308555.P5349335699861204018

`A365740(A000108(n)*A038578(n))`
-/

namespace A308555.P5349335699861204018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365740 (A000108 n * A038578 n).toNat

end

end A308555.P5349335699861204018

/-!
# A308556: Number of (not necessarily connected) ungraceful graphs on n nodes.

The programs for A308556, there is no canonical definition to state claims against.
-/

/-! ## A308556.P16113595789061780502

`A000088(n+1)-A308548(n+1)`
-/

namespace A308556.P16113595789061780502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A308548 (n + 1)

end

end A308556.P16113595789061780502

/-!
# A308557: Number of connected ungraceful graphs on n nodes.

The programs for A308557, there is no canonical definition to state claims against.
-/

/-! ## A308557.P15004903919926089003

`A001349(n+1)-A308549(n+1)`
-/

namespace A308557.P15004903919926089003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A308549 (n + 1)

end

end A308557.P15004903919926089003

/-! ## A308557.P2075082491320330725

`A389909(A138178(n))%A004110(n)`
-/

namespace A308557.P2075082491320330725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389909 (A138178 n).toNat) (A004110 n)

end

end A308557.P2075082491320330725

/-!
# A308558: Triangle read by rows where T(n,k) is the number of integer partitions of n > 0 into powers of k > 0.

The programs for A308558, there is no canonical definition to state claims against.
-/

/-! ## A308558.P17810832640551030891

`A284583(3*lcm(A060500(n), A281446(n)))`
-/

namespace A308558.P17810832640551030891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 (3 * Int.lcm (A060500 n) (A281446 n))

end

end A308558.P17810832640551030891

/-! ## A308558.P17580049952046322426

`A135034(A332268(A303624(n+1)²))`
-/

namespace A308558.P17580049952046322426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A332268 (A303624 (n + 1) ^ 2).toNat).toNat

end

end A308558.P17580049952046322426

/-! ## A308558.P18006314992508813801

`A000005(A090928(A245789(n+1)))`
-/

namespace A308558.P18006314992508813801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A090928 (A245789 (n + 1)).toNat).toNat

end

end A308558.P18006314992508813801

/-! ## A308558.P18368651190357095866

`A000005(A100886(A084534(n)))%7`
-/

namespace A308558.P18368651190357095866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A100886 (A084534 n).toNat).toNat) 7

end

end A308558.P18368651190357095866

/-! ## A308558.P2750885545018255763

`A005811(A013615(n)*A185620(n))`
-/

namespace A308558.P2750885545018255763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A013615 n * A185620 n).toNat

end

end A308558.P2750885545018255763

/-!
# A308560: Numbers divisible by the LCM of all sums of any two digits (at distinct positions).

The programs for A308560, there is no canonical definition to state claims against.
-/

/-! ## A308560.P15906571631589038482

`A005349(eq[0, A185284(n)]+1)`
-/

namespace A308560.P15906571631589038482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A308560.P15906571631589038482

/-! ## A308560.P18336465370147107516

`A005349(record[gcd(n+1, A185284(n))])`
-/

namespace A308560.P18336465370147107516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A185284 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A308560.P18336465370147107516

/-! ## A308560.P5093659417686481842

`record[gcd(A185284(n)², A285829(n+1))]`
-/

namespace A308560.P5093659417686481842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n ^ 2) (A285829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308560.P5093659417686481842

/-! ## A308560.P4951571512753144573

`record[or(-A185284(n), A005349(n+1))]`
-/

namespace A308560.P4951571512753144573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A185284 n) (A005349 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308560.P4951571512753144573

/-! ## A308560.P10620379833720383075

`A005349(lt[A053602(n), A014106(n)])`
-/

namespace A308560.P10620379833720383075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308560.P10620379833720383075

/-!
# A308561: Numbers with no 0 digit that are divisible by the sum of any two of their digits at distinct positions.

The programs for A308561, there is no canonical definition to state claims against.
-/

/-! ## A308561.P1249302933314983832

`record[A004719(A308560(n+1))]`
-/

namespace A308561.P1249302933314983832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A308560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308561.P1249302933314983832

/-! ## A308561.P16479783906589650263

`filter[A308560(n+1), A168046(#)]`
-/

namespace A308561.P16479783906589650263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A308561.P16479783906589650263

/-! ## A308561.P4169869121343480126

`∩[A052382(n+1), A308560(n+1)]`
-/

namespace A308561.P4169869121343480126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308561.P4169869121343480126

/-! ## A308561.P2708509516606182362

`∩[A217973(n+1), A308560(n+1)]`
-/

namespace A308561.P2708509516606182362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308561.P2708509516606182362

/-! ## A308561.P2878549298658358697

`filter[A308560(n+1), A209929(#)]`
-/

namespace A308561.P2878549298658358697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A308561.P2878549298658358697

/-!
# A308563: Langton's ant on a three-dimensional grid: iterations where the ant passes through the origin.

The programs for A308563, there is no canonical definition to state claims against.
-/

/-! ## A308563.P1090116627134393673

`A209860(2*a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A308563.P1090116627134393673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A209860 (2 * a (n - 1)).toNat

end

end A308563.P1090116627134393673

/-!
# A308564: Expansion of e.g.f. Sum_{k>=1} phi(k)*(exp(x) - 1)^k/k!, where phi = Euler totient function (A000010).

The programs for A308564, there is no canonical definition to state claims against.
-/

/-! ## A308564.P2936231652011354950

`A028310(A124325(n+1)+A000108(n))`
-/

namespace A308564.P2936231652011354950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A124325 (n + 1) + A000108 n).toNat

end

end A308564.P2936231652011354950

/-! ## A308564.P5751686943313186327

`A014085((n+1)²*a(n-1)+1)` with `a(0)=1`
-/

namespace A308564.P5751686943313186327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014085 (((n + 1) ^ 2 : ℤ) * a (n - 1) + 1).toNat

end

end A308564.P5751686943313186327

/-!
# A308565: a(n) = Sum_{k=0..n} binomial(n,k) * Stirling1(n,k) * k!.

The programs for A308565, there is no canonical definition to state claims against.
-/

/-! ## A308565.P8528423799423745888

`A009197(n)*A009205(A000354(n))`
-/

namespace A308565.P8528423799423745888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009197 n * A009205 (A000354 n).toNat

end

end A308565.P8528423799423745888

/-! ## A308565.P3948694956782771160

`A009197(n)*A009205(A015083(n))`
-/

namespace A308565.P3948694956782771160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009197 n * A009205 (A015083 n).toNat

end

end A308565.P3948694956782771160

/-!
# A308566: Number of ways to write n as w^2 + x*(x+1) + 4^y*5^z with w,x,y,z nonnegative integers.

The programs for A308566, there is no canonical definition to state claims against.
-/

/-! ## A308566.P17787689615662524426

`A099910(A116524(n)+2)`
-/

namespace A308566.P17787689615662524426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (A116524 n + 2).toNat

end

end A308566.P17787689615662524426

/-! ## A308566.P3163537481222261405

`A099910(or(2, A116524(n)))`
-/

namespace A308566.P3163537481222261405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (Int.lor 2 (A116524 n)).toNat

end

end A308566.P3163537481222261405

/-! ## A308566.P5674825427096973190

`A099910(xor(2, A116524(n)))`
-/

namespace A308566.P5674825427096973190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (Int.xor 2 (A116524 n)).toNat

end

end A308566.P5674825427096973190

/-! ## A308566.P9859494142076454661

`A175190(A068853(n+1)+1)`
-/

namespace A308566.P9859494142076454661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175190 (A068853 (n + 1) + 1).toNat

end

end A308566.P9859494142076454661

/-! ## A308566.P12504619277193420879

`A051903(A014540(2*(n+1))+n+6)`
-/

namespace A308566.P12504619277193420879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A014540 (2 * (n + 1)) + (n + 6 : ℤ)).toNat

end

end A308566.P12504619277193420879

/-!
# A308567: Consider the second least-significant bits of the first n prime numbers: a(n) equals the number of zeros minus the number of ones.

The programs for A308567, the canonical program `A308567.P2030067286572560780` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308567 has offset 1).

The definition of A308567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308567.P15189734042913773209

`xor(-1, A038698(n+1))`
-/

namespace A308567.P15189734042913773209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (A038698 (n + 1))

end

end A308567.P15189734042913773209

namespace A308567

/-- `xor(-1, A038698(n+1))` -/
def P15189734042913773209.Spec : Prop :=
  ∀ n, P15189734042913773209.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P2030067286572560780

`∑[A070750(n+1)]-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A308567

/-- `∑[A070750(n+1)]-1` -/
def P2030067286572560780.Spec : Prop :=
  ∀ n, P2030067286572560780.a n = A308567 (n + 1)

theorem P2030067286572560780.correct : P2030067286572560780.Spec := by
  intro n
  simp only [A308567, Nat.add_sub_cancel]

end A308567

/-! ## A308567.P12456292242751291996

`∑[(-1)^A008837(n+1)]`
-/

namespace A308567.P12456292242751291996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A008837 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P12456292242751291996

namespace A308567

/-- `∑[(-1)^A008837(n+1)]` -/
def P12456292242751291996.Spec : Prop :=
  ∀ n, P12456292242751291996.a n = (A308567 (n + 1) : ℚ)

end A308567

/-! ## A308567.P4285077395727208653

`∑[(-1)^A130290(n+1)]`
-/

namespace A308567.P4285077395727208653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A130290 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P4285077395727208653

namespace A308567

/-- `∑[(-1)^A130290(n+1)]` -/
def P4285077395727208653.Spec : Prop :=
  ∀ n, P4285077395727208653.a n = (A308567 (n + 1) : ℚ)

end A308567

/-! ## A308567.P1105143536849324571

`∑[(-1)^A179545(n+1)]`
-/

namespace A308567.P1105143536849324571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A179545 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P1105143536849324571

namespace A308567

/-- `∑[(-1)^A179545(n+1)]` -/
def P1105143536849324571.Spec : Prop :=
  ∀ n, P1105143536849324571.a n = (A308567 (n + 1) : ℚ)

end A308567

/-! ## A308567.P17744645749628109164

`∑[2-A039702(n+1)]-1`
-/

namespace A308567.P17744645749628109164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A308567.P17744645749628109164

namespace A308567

/-- `∑[2-A039702(n+1)]-1` -/
def P17744645749628109164.Spec : Prop :=
  ∀ n, P17744645749628109164.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P3157682636622128750

`∑[1-2*A100672(n+1)]`
-/

namespace A308567.P3157682636622128750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A100672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P3157682636622128750

namespace A308567

/-- `∑[1-2*A100672(n+1)]` -/
def P3157682636622128750.Spec : Prop :=
  ∀ n, P3157682636622128750.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P10105298946004975793

`∑[1-and(2, A000040(n+1))]`
-/

namespace A308567.P10105298946004975793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P10105298946004975793

namespace A308567

/-- `∑[1-and(2, A000040(n+1))]` -/
def P10105298946004975793.Spec : Prop :=
  ∀ n, P10105298946004975793.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P17117920233891021833

`∑[and(2, A040976(n+1))-1]`
-/

namespace A308567.P17117920233891021833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A040976 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P17117920233891021833

namespace A308567

/-- `∑[and(2, A040976(n+1))-1]` -/
def P17117920233891021833.Spec : Prop :=
  ∀ n, P17117920233891021833.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P8031593399829728881

`2*A267097(n+1)-(n+1)`
-/

namespace A308567.P8031593399829728881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267097 (n + 1) - (n + 1 : ℤ)

end

end A308567.P8031593399829728881

namespace A308567

/-- `2*A267097(n+1)-(n+1)` -/
def P8031593399829728881.Spec : Prop :=
  ∀ n, P8031593399829728881.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P1909430328375786077

`n-1-2*A267098(n+1)`
-/

namespace A308567.P1909430328375786077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - 2 * A267098 (n + 1)

end

end A308567.P1909430328375786077

namespace A308567

/-- `n-1-2*A267098(n+1)` -/
def P1909430328375786077.Spec : Prop :=
  ∀ n, P1909430328375786077.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P11520348173128512011

`∑[A070750(A028310(n)+1)]`
-/

namespace A308567.P11520348173128512011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P11520348173128512011

namespace A308567

/-- `∑[A070750(A028310(n)+1)]` -/
def P11520348173128512011.Spec : Prop :=
  ∀ n, P11520348173128512011.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P2030122470181986822

`∑[A008683(∑{p}[A000040(n+1), #%4])]`
-/

namespace A308567.P2030122470181986822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P2030122470181986822

namespace A308567

/-- `∑[A008683(∑{p}[A000040(n+1), #%4])]` -/
def P2030122470181986822.Spec : Prop :=
  ∀ n, P2030122470181986822.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P6031208896317732719

`A267097(n+1)-(A267098(n+1)+1)`
-/

namespace A308567.P6031208896317732719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267097 (n + 1) - (A267098 (n + 1) + 1)

end

end A308567.P6031208896317732719

namespace A308567

/-- `A267097(n+1)-(A267098(n+1)+1)` -/
def P6031208896317732719.Spec : Prop :=
  ∀ n, P6031208896317732719.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P15266345317660357448

`A212159(n+2)-(∑[A212159(n+2)]+1)`
-/

namespace A308567.P15266345317660357448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212159 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212159 (n + 2) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308567.P15266345317660357448

namespace A308567

/-- `A212159(n+2)-(∑[A212159(n+2)]+1)` -/
def P15266345317660357448.Spec : Prop :=
  ∀ n, P15266345317660357448.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P7688258056005509413

`n-(A267100(A267100(n+1))+A038698(n+1))`
-/

namespace A308567.P7688258056005509413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A267100 (A267100 (n + 1)).toNat + A038698 (n + 1))

end

end A308567.P7688258056005509413

namespace A308567

/-- `n-(A267100(A267100(n+1))+A038698(n+1))` -/
def P7688258056005509413.Spec : Prop :=
  ∀ n, P7688258056005509413.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P17436226819880701040

`∑[1-and(2, p?[xor(1, n)])]`
-/

namespace A308567.P17436226819880701040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P17436226819880701040

namespace A308567

/-- `∑[1-and(2, p?[xor(1, n)])]` -/
def P17436226819880701040.Spec : Prop :=
  ∀ n, P17436226819880701040.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P14293219750814906756

`n-∑[record[A000010(n+1)]%4]`
-/

namespace A308567.P14293219750814906756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308567.P14293219750814906756

namespace A308567

/-- `n-∑[record[A000010(n+1)]%4]` -/
def P14293219750814906756.Spec : Prop :=
  ∀ n, P14293219750814906756.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P8680187946121058257

`n-∑[eq[1, A001222(n+1)]%4]`
-/

namespace A308567.P8680187946121058257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A308567.P8680187946121058257

namespace A308567

/-- `n-∑[eq[1, A001222(n+1)]%4]` -/
def P8680187946121058257.Spec : Prop :=
  ∀ n, P8680187946121058257.a n = A308567 (n + 1)

end A308567

/-! ## A308567.P4336743491944197811

`n-∑[and(3, eq[2, A000005(n+1)])]`
-/

namespace A308567.P4336743491944197811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A308567.P4336743491944197811

namespace A308567

/-- `n-∑[and(3, eq[2, A000005(n+1)])]` -/
def P4336743491944197811.Spec : Prop :=
  ∀ n, P4336743491944197811.a n = A308567 (n + 1)

end A308567

/-!
# A308568: Number of simple graphs on n vertices with bandwidth equal to diameter-based lower bound.

The programs for A308568, there is no canonical definition to state claims against.
-/

/-! ## A308568.P1533842491413769263

`∑[A094004(a(n-1)+val(n, 2))]` with `a(0)=1`
-/

namespace A308568.P1533842491413769263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A094004 (f1 (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308568.P1533842491413769263

/-! ## A308568.P4849653588680378878

`A144000(A283402(2*n)+A048999(n))`
-/

namespace A308568.P4849653588680378878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (A283402 (2 * n) + A048999 n).toNat

end

end A308568.P4849653588680378878

/-!
# A308569: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where A(n,k) is Sum_{d|n} d^(k*n).

The programs for A308569, the canonical program `A308569.P15723191268736136864` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308569 has offset 1).

The definition of A308569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308569.P15723191268736136864

`∑{d}[A002260(n+1), #^A094053(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A308569

/-- `∑{d}[A002260(n+1), #^A094053(n+1)]` -/
def P15723191268736136864.Spec : Prop :=
  ∀ n, P15723191268736136864.a n = (A308569 (n + 1) : ℚ)

end A308569

/-!
# A308570: a(n) = sigma_{2*n}(n).

The programs for A308570, there is no canonical definition to state claims against.
-/

/-! ## A308570.P2864568493161192205

`∑{d}[n+1, (#^(n+1))²]`
-/

namespace A308570.P2864568493161192205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ (n + 1)) ^ 2

end

end A308570.P2864568493161192205

/-! ## A308570.P17740939962353203129

`record[∑{d}[n-1, (#^(n-1))²]]`
-/

namespace A308570.P17740939962353203129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, ((d : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308570.P17740939962353203129

/-! ## A308570.P3312375118093212902

`A109974(∑[A017221(n)])`
-/

namespace A308570.P3312375118093212902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308570.P3312375118093212902

/-! ## A308570.P4616010751018305213

`A109974(A022267(n+1))`
-/

namespace A308570.P4616010751018305213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A022267 (n + 1)).toNat

end

end A308570.P4616010751018305213

/-! ## A308570.P16337747475773688544

`A308504(2*(n+1)²)`
-/

namespace A308570.P16337747475773688544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (2 * (n + 1) ^ 2)

end

end A308570.P16337747475773688544

/-!
# A308571: 

The programs for A308571, there is no canonical definition to state claims against.
-/

/-! ## A308571.P14864175110632502248

`∑{d}[n+1, #^(n+1)²]`
-/

namespace A308571.P14864175110632502248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1) ^ 2

end

end A308571.P14864175110632502248

/-! ## A308571.P14157069305229505598

`A308569(2*(n+1)²)`
-/

namespace A308571.P14157069305229505598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308569 (2 * (n + 1) ^ 2)

end

end A308571.P14157069305229505598

/-!
# A308572: a(n) = Fibonacci(2*prime(n)).

The programs for A308572, the canonical program `A308572.P10549258952606173535` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308572 has offset 1).

The definition of A308572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308572.P10549258952606173535

`A000045(A100484(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A308572

/-- `A000045(A100484(n+1))` -/
def P10549258952606173535.Spec : Prop :=
  ∀ n, P10549258952606173535.a n = A308572 (n + 1)

theorem P10549258952606173535.correct : P10549258952606173535.Spec := by
  intro n
  simp only [A308572, Nat.add_sub_cancel]

end A308572

/-! ## A308572.P10196766884287545904

`A001906(A000040(n+1))`
-/

namespace A308572.P10196766884287545904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A000040 (n + 1)).toNat

end

end A308572.P10196766884287545904

namespace A308572

/-- `A001906(A000040(n+1))` -/
def P10196766884287545904.Spec : Prop :=
  ∀ n, P10196766884287545904.a n = A308572 (n + 1)

end A308572

/-! ## A308572.P17884580011236817031

`A053602(A001749(n+1))`
-/

namespace A308572.P17884580011236817031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A001749 (n + 1)).toNat

end

end A308572.P17884580011236817031

namespace A308572

/-- `A053602(A001749(n+1))` -/
def P17884580011236817031.Spec : Prop :=
  ∀ n, P17884580011236817031.a n = A308572 (n + 1)

end A308572

/-! ## A308572.P6181145675657328074

`A001906(eq[1, A003415(n)])`
-/

namespace A308572.P6181145675657328074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308572.P6181145675657328074

namespace A308572

/-- `A001906(eq[1, A003415(n)])` -/
def P6181145675657328074.Spec : Prop :=
  ∀ n, P6181145675657328074.a n = A308572 (n + 1)

end A308572

/-! ## A308572.P4340887129001443174

`A000045(Δ[2*A007504(n)])`
-/

namespace A308572.P4340887129001443174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A308572.P4340887129001443174

namespace A308572

/-- `A000045(Δ[2*A007504(n)])` -/
def P4340887129001443174.Spec : Prop :=
  ∀ n, P4340887129001443174.a n = A308572 (n + 1)

end A308572

/-! ## A308572.P1068758671414753207

`A000045(2*p?[A001057(n)])`
-/

namespace A308572.P1068758671414753207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A308572.P1068758671414753207

namespace A308572

/-- `A000045(2*p?[A001057(n)])` -/
def P1068758671414753207.Spec : Prop :=
  ∀ n, P1068758671414753207.a n = A308572 (n + 1)

end A308572

/-! ## A308572.P16674915518380683782

`A000045(2*p?[A014681(n)])`
-/

namespace A308572.P16674915518380683782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A308572.P16674915518380683782

namespace A308572

/-- `A000045(2*p?[A014681(n)])` -/
def P16674915518380683782.Spec : Prop :=
  ∀ n, P16674915518380683782.a n = A308572 (n + 1)

end A308572

/-! ## A308572.P10258773448646619711

`A000045(2*p?[A131732(n)])`
-/

namespace A308572.P10258773448646619711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A308572.P10258773448646619711

namespace A308572

/-- `A000045(2*p?[A131732(n)])` -/
def P10258773448646619711.Spec : Prop :=
  ∀ n, P10258773448646619711.a n = A308572 (n + 1)

end A308572

/-! ## A308572.P2639598210880552952

`A000045(2*p?[A143051(n)])`
-/

namespace A308572.P2639598210880552952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A308572.P2639598210880552952

namespace A308572

/-- `A000045(2*p?[A143051(n)])` -/
def P2639598210880552952.Spec : Prop :=
  ∀ n, P2639598210880552952.a n = A308572 (n + 1)

end A308572

/-! ## A308572.P14538121081110232987

`A000045(2*p?[A352844(n)])`
-/

namespace A308572.P14538121081110232987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A308572.P14538121081110232987

namespace A308572

/-- `A000045(2*p?[A352844(n)])` -/
def P14538121081110232987.Spec : Prop :=
  ∀ n, P14538121081110232987.a n = A308572 (n + 1)

end A308572

/-!
# A308576: a(n) = a(n-1) + a(a(n-1) mod n) + 1, a(0) = 1.

The programs for A308576, there is no canonical definition to state claims against.
-/

/-! ## A308576.P13979300257787209199

`A109613(a(n-1)+a(a(n-1)%n))` with `a(0)=1`
-/

namespace A308576.P13979300257787209199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109613 (a (n - 1) + a (Int.tmod (a (n - 1)) (n : ℤ)).toNat).toNat

end

end A308576.P13979300257787209199

/-!
# A308578: Maximum number of non-overlapping circles of radius 1/n that can be placed inside a unit square.

The programs for A308578, there is no canonical definition to state claims against.
-/

/-! ## A308578.P1068239333624176366

`A136413(n+1)-A263274(n)`
-/

namespace A308578.P1068239333624176366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136413 (n + 1) - A263274 n

end

end A308578.P1068239333624176366

/-! ## A308578.P17388599696881950859

`xor(A189889(n+1), A202954(n))`
-/

namespace A308578.P17388599696881950859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A189889 (n + 1)) (A202954 n)

end

end A308578.P17388599696881950859

/-! ## A308578.P17265711143185985495

`xor(A202954(n), A279409(∑[n+1]))`
-/

namespace A308578.P17265711143185985495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A202954 n) (A279409 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A308578.P17265711143185985495

/-! ## A308578.P10879555981334541717

`A002620(n+1)-A286561(2*(n+1))`
-/

namespace A308578.P10879555981334541717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - A286561 (2 * (n + 1))

end

end A308578.P10879555981334541717

/-! ## A308578.P11878515833879428629

`xor(A123108((n+1)*ceil(n/2)), A202954(n))`
-/

namespace A308578.P11878515833879428629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123108 ((n + 1 : ℤ) * ⌈(n : ℚ) / 2⌉).toNat) (A202954 n)

end

end A308578.P11878515833879428629

/-!
# A308579: a(n) = (9*2^n - 6*n - 10)/2.

The programs for A308579, the canonical program `A308579.P13357943468873743877` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308579 has offset 1).

The definition of A308579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*2^(n+1)-6*(n+1)-10)/2` (program `A308579.P7973321773939595940`, by `A308579.P7973321773939595940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308579.P7973321773939595940

`(9*2^(n+1)-6*(n+1)-10)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A308579.P7973321773939595940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 2 ^ (n + 1) : ℤ) - (6 * (n + 1) : ℤ) - 10 : ℚ) / 2

end

end A308579.P7973321773939595940

namespace A308579

/-- `(9*2^(n+1)-6*(n+1)-10)/2` -/
def P7973321773939595940.Spec : Prop :=
  ∀ n, P7973321773939595940.a n = (A308579 (n + 1) : ℚ)

theorem P7973321773939595940.correct : P7973321773939595940.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308579, Nat.add_sub_cancel, A308579.P7973321773939595940.a, A308579.P13357943468873743877.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308579, Nat.add_sub_cancel, A308579.P7973321773939595940.a, A308579.P13357943468873743877.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A308579

/-! ## A308579.P13357943468873743877

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=7, a(2)=22`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308579

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P13357943468873743877.Spec : Prop :=
  ∀ n, P13357943468873743877.a n = A308579 (n + 1)

theorem P13357943468873743877.correct : P13357943468873743877.Spec := by
  intro n
  simp only [A308579, Nat.add_sub_cancel]

end A308579

/-! ## A308579.P4865337146057980786

`∑[ogf((1+3x-x^2)/(1-3x+2x^2))]`
-/

namespace A308579.P4865337146057980786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308579.P4865337146057980786

namespace A308579

/-- `∑[ogf((1+3x-x^2)/(1-3x+2x^2))]` -/
def P4865337146057980786.Spec : Prop :=
  ∀ n, P4865337146057980786.a n = A308579 (n + 1)

end A308579

/-! ## A308579.P1821890940873760658

`ogf((1+3x-x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A308579.P1821890940873760658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -4, 5, -2] n

end

end A308579.P1821890940873760658

namespace A308579

/-- `ogf((1+3x-x^2)/(1-4x+5x^2-2x^3))` -/
def P1821890940873760658.Spec : Prop :=
  ∀ n, P1821890940873760658.a n = A308579 (n + 1)

end A308579

/-! ## A308579.P14328479605915707707

`∑[2*a(n-1)+3]` with `a(0)=1, a(1)=6`
-/

namespace A308579.P14328479605915707707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308579.P14328479605915707707

namespace A308579

/-- `∑[2*a(n-1)+3]` -/
def P14328479605915707707.Spec : Prop :=
  ∀ n, (P14328479605915707707.a n : ℤ) = A308579 (n + 1)

end A308579

/-! ## A308579.P8879767578245293453

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=5, a(2)=9`
-/

namespace A308579.P8879767578245293453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 9] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308579.P8879767578245293453

namespace A308579

/-- `∑[∑[2*a(n-1)]]` -/
def P8879767578245293453.Spec : Prop :=
  ∀ n, (P8879767578245293453.a n : ℤ) = A308579 (n + 1)

end A308579

/-! ## A308579.P266430641666023638

`2*(a(n-1)+1)+3*n` with `a(0)=1`
-/

namespace A308579.P266430641666023638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 1) + 3 * n

end

end A308579.P266430641666023638

namespace A308579

/-- `2*(a(n-1)+1)+3*n` -/
def P266430641666023638.Spec : Prop :=
  ∀ n, (P266430641666023638.a n : ℤ) = A308579 (n + 1)

end A308579

/-! ## A308579.P16260806780312068213

`∑[a(n-1)+a(n-1)+3]` with `a(0)=1, a(1)=6`
-/

namespace A308579.P16260806780312068213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308579.P16260806780312068213

namespace A308579

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P16260806780312068213.Spec : Prop :=
  ∀ n, (P16260806780312068213.a n : ℤ) = A308579 (n + 1)

end A308579

/-! ## A308579.P9342436135697117228

`n-2*(floor(1-a(n-1)-n)-2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A308579.P9342436135697117228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 2 * (1 - a (n - 1) - (n : ℤ) - 2)

end

end A308579.P9342436135697117228

namespace A308579

/-- `n-2*(floor(1-a(n-1)-n)-2)` -/
def P9342436135697117228.Spec : Prop :=
  ∀ n, P9342436135697117228.a n = A308579 (n + 1)

end A308579

/-! ## A308579.P15360014522090306725

`a(n-1)+2+a(n-1)+n+n+n` with `a(0)=1`
-/

namespace A308579.P15360014522090306725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + n + n + n)

end

end A308579.P15360014522090306725

namespace A308579

/-- `a(n-1)+2+a(n-1)+n+n+n` -/
def P15360014522090306725.Spec : Prop :=
  ∀ n, (P15360014522090306725.a n : ℤ) = A308579 (n + 1)

end A308579

/-! ## A308579.P15241979315494325486

`A227712(n)-3`
-/

namespace A308579.P15241979315494325486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227712 n - 3

end

end A308579.P15241979315494325486

namespace A308579

/-- `A227712(n)-3` -/
def P15241979315494325486.Spec : Prop :=
  ∀ n, P15241979315494325486.a n = A308579 (n + 1)

theorem P15241979315494325486.correct : P15241979315494325486.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308579, Nat.add_sub_cancel, A308579.P15241979315494325486.a, A308579.P13357943468873743877.a, A227712, A227712.P14342544986382020901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308579, Nat.add_sub_cancel, A308579.P15241979315494325486.a, A308579.P13357943468873743877.a, A227712, A227712.P14342544986382020901.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A308579

/-! ## A308579.P9057724218693614251

`n+A027178(n)`
-/

namespace A308579.P9057724218693614251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A027178 n

end

end A308579.P9057724218693614251

namespace A308579

/-- `n+A027178(n)` -/
def P9057724218693614251.Spec : Prop :=
  ∀ n, P9057724218693614251.a n = A308579 (n + 1)

theorem P9057724218693614251.correct : P9057724218693614251.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308579, Nat.add_sub_cancel, A308579.P9057724218693614251.a, A308579.P13357943468873743877.a, A027178, A027178.P2021023385559460405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308579, Nat.add_sub_cancel, A308579.P9057724218693614251.a, A308579.P13357943468873743877.a, A027178, A027178.P2021023385559460405.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A308579

/-! ## A308579.P15654569625488262774

`A099041(n)-n`
-/

namespace A308579.P15654569625488262774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099041 n - (n : ℤ)

end

end A308579.P15654569625488262774

namespace A308579

/-- `A099041(n)-n` -/
def P15654569625488262774.Spec : Prop :=
  ∀ n, P15654569625488262774.a n = A308579 (n + 1)

theorem P15654569625488262774.correct : P15654569625488262774.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308579, Nat.add_sub_cancel, A308579.P15654569625488262774.a, A308579.P13357943468873743877.a, A099041, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308579, Nat.add_sub_cancel, A308579.P15654569625488262774.a, A308579.P13357943468873743877.a, A099041, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A308579

/-! ## A308579.P14193500153177311700

`∑[A053209(n)]+n`
-/

namespace A308579.P14193500153177311700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A308579.P14193500153177311700

namespace A308579

/-- `∑[A053209(n)]+n` -/
def P14193500153177311700.Spec : Prop :=
  ∀ n, P14193500153177311700.a n = A308579 (n + 1)

end A308579

/-! ## A308579.P9215900752228811506

`3*A095151(n)+1`
-/

namespace A308579.P9215900752228811506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A095151 n + 1

end

end A308579.P9215900752228811506

namespace A308579

/-- `3*A095151(n)+1` -/
def P9215900752228811506.Spec : Prop :=
  ∀ n, P9215900752228811506.a n = A308579 (n + 1)

theorem P9215900752228811506.correct : P9215900752228811506.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308579, Nat.add_sub_cancel, A308579.P9215900752228811506.a, A308579.P13357943468873743877.a, A095151, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308579, Nat.add_sub_cancel, A308579.P9215900752228811506.a, A308579.P13357943468873743877.a, A095151, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A308579

/-! ## A308579.P15748896116973209251

`3*A079583(n)-2`
-/

namespace A308579.P15748896116973209251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A079583 n - 2

end

end A308579.P15748896116973209251

namespace A308579

/-- `3*A079583(n)-2` -/
def P15748896116973209251.Spec : Prop :=
  ∀ n, P15748896116973209251.a n = A308579 (n + 1)

theorem P15748896116973209251.correct : P15748896116973209251.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308579, Nat.add_sub_cancel, A308579.P15748896116973209251.a, A308579.P13357943468873743877.a, A079583, A079583.P17690850374586656008.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308579, Nat.add_sub_cancel, A308579.P15748896116973209251.a, A308579.P13357943468873743877.a, A079583, A079583.P17690850374586656008.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A308579

/-! ## A308579.P1350650027649543590

`A048491(n)-3*n`
-/

namespace A308579.P1350650027649543590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048491 n - (3 * n : ℤ)

end

end A308579.P1350650027649543590

namespace A308579

/-- `A048491(n)-3*n` -/
def P1350650027649543590.Spec : Prop :=
  ∀ n, P1350650027649543590.a n = A308579 (n + 1)

theorem P1350650027649543590.correct : P1350650027649543590.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308579, Nat.add_sub_cancel, A308579.P1350650027649543590.a, A308579.P13357943468873743877.a, A048491, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308579, Nat.add_sub_cancel, A308579.P1350650027649543590.a, A308579.P13357943468873743877.a, A048491, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A308579

/-! ## A308579.P18264884201810183050

`∑[A052996(n+1)-2]`
-/

namespace A308579.P18264884201810183050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308579.P18264884201810183050

namespace A308579

/-- `∑[A052996(n+1)-2]` -/
def P18264884201810183050.Spec : Prop :=
  ∀ n, P18264884201810183050.a n = A308579 (n + 1)

end A308579

/-! ## A308579.P17505785143651916114

`∑[A397439(n+1)-3]`
-/

namespace A308579.P17505785143651916114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308579.P17505785143651916114

namespace A308579

/-- `∑[A397439(n+1)-3]` -/
def P17505785143651916114.Spec : Prop :=
  ∀ n, P17505785143651916114.a n = A308579 (n + 1)

end A308579

/-! ## A308579.P13732726395187409255

`3*A123720(n+1)-5`
-/

namespace A308579.P13732726395187409255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A123720 (n + 1) - 5

end

end A308579.P13732726395187409255

namespace A308579

/-- `3*A123720(n+1)-5` -/
def P13732726395187409255.Spec : Prop :=
  ∀ n, P13732726395187409255.a n = A308579 (n + 1)

theorem P13732726395187409255.correct : P13732726395187409255.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308579, Nat.add_sub_cancel, A308579.P13732726395187409255.a, A308579.P13357943468873743877.a, A123720, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308579, Nat.add_sub_cancel, A308579.P13732726395187409255.a, A308579.P13357943468873743877.a, A123720, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308579

/-!
# A308580: a(n) = 3*2^n + n^2 - n.

The programs for A308580, the canonical program `A308580.P14064541469550642228` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308580 has offset 0).

The definition of A308580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+n²-n` (program `A308580.P14064541469550642228`, by `A308580.P14064541469550642228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308580.P14064541469550642228

`3*2^n+n²-n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308580

/-- `3*2^n+n²-n` -/
def P14064541469550642228.Spec : Prop :=
  ∀ n, P14064541469550642228.a n = A308580 n

theorem P14064541469550642228.correct : P14064541469550642228.Spec := by
  intro n
  simp only [A308580]

end A308580

/-! ## A308580.P14242890977638014811

`or(n²-n, 3*2^n)`
-/

namespace A308580.P14242890977638014811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n ^ 2 : ℤ) - (n : ℤ)) (3 * 2 ^ n : ℤ)

end

end A308580.P14242890977638014811

namespace A308580

/-- `or(n²-n, 3*2^n)` -/
def P14242890977638014811.Spec : Prop :=
  ∀ n, P14242890977638014811.a n = A308580 n

end A308580

/-! ## A308580.P8279097657401410774

`xor(n²-n, 3*2^n)`
-/

namespace A308580.P8279097657401410774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n ^ 2 : ℤ) - (n : ℤ)) (3 * 2 ^ n : ℤ)

end

end A308580.P8279097657401410774

namespace A308580

/-- `xor(n²-n, 3*2^n)` -/
def P8279097657401410774.Spec : Prop :=
  ∀ n, P8279097657401410774.a n = A308580 n

end A308580

/-! ## A308580.P10620026562520564346

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=3, a(1)=0, a(2)=5`
-/

namespace A308580.P10620026562520564346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 5] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308580.P10620026562520564346

namespace A308580

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P10620026562520564346.Spec : Prop :=
  ∀ n, P10620026562520564346.a n = A308580 n

end A308580

/-! ## A308580.P6706209436627641230

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=3, a(1)=0, a(2)=5`
-/

namespace A308580.P6706209436627641230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308580.P6706209436627641230

namespace A308580

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P6706209436627641230.Spec : Prop :=
  ∀ n, P6706209436627641230.a n = A308580 n

end A308580

/-! ## A308580.P10984943724120417742

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=3, a(1)=0, a(2)=5`
-/

namespace A308580.P10984943724120417742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 5] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308580.P10984943724120417742

namespace A308580

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P10984943724120417742.Spec : Prop :=
  ∀ n, P10984943724120417742.a n = A308580 n

end A308580

/-!
# A308583: Triangle read by rows: T(n,k) = number of aperiodic chiral bracelets (turnover necklaces with no reflection symmetry and period n) with n beads, k of which are white and n - k are black, for n >= 1 and 1 <= k <= n.

The programs for A308583, there is no canonical definition to state claims against.
-/

/-! ## A308583.P14676837881082634305

`A180472(lt[A280136(n+3), A345462(n+1)])`
-/

namespace A308583.P14676837881082634305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280136 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308583.P14676837881082634305

/-! ## A308583.P14426163541019725892

`A000034(2*(n+1)²)*A180472(A080036(n+1))`
-/

namespace A308583.P14426163541019725892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 1) ^ 2) * A180472 (A080036 (n + 1)).toNat

end

end A308583.P14426163541019725892

/-! ## A308583.P16878540920511581864

`A033999(2*(n+1)²)*A180472(A080036(n+1))`
-/

namespace A308583.P16878540920511581864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1) ^ 2) * A180472 (A080036 (n + 1)).toNat

end

end A308583.P16878540920511581864

/-! ## A308583.P328663441181000611

`A180472(A080036(n+1))*A244569(A016742(n+1))`
-/

namespace A308583.P328663441181000611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A080036 (n + 1)).toNat * A244569 (A016742 (n + 1)).toNat

end

end A308583.P328663441181000611

/-! ## A308583.P8208103639947294465

`A180472(A080036(n+1))+A000007(A000124(2*(n+1)))`
-/

namespace A308583.P8208103639947294465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A080036 (n + 1)).toNat + A000007 (A000124 (2 * (n + 1))).toNat

end

end A308583.P8208103639947294465

/-! ## A308583.P1123067283442493313

`A180472(A080036(n+1))%A246696(n)`
-/

namespace A308583.P1123067283442493313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180472 (A080036 (n + 1)).toNat) (A246696 n)

end

end A308583.P1123067283442493313

/-! ## A308583.P2246426656207935789

`A180472(A380649(n+1)-1)`
-/

namespace A308583.P2246426656207935789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A380649 (n + 1) - 1).toNat

end

end A308583.P2246426656207935789

/-! ## A308583.P1171394866871250640

`A180472(A380649(n+2))`
-/

namespace A308583.P1171394866871250640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A380649 (n + 2)).toNat

end

end A308583.P1171394866871250640

/-!
# A308584: Number of ways to write n as a*(a+1)/2 + b*(b+1)/2 + 5^c*8^d, where a,b,c,d are nonnegative integers with a <= b.

The programs for A308584, there is no canonical definition to state claims against.
-/

/-! ## A308584.P6646834008981519258

`xor(A117910(n), A124761(A000701(n)))`
-/

namespace A308584.P6646834008981519258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A117910 n) (A124761 (A000701 n).toNat)

end

end A308584.P6646834008981519258

/-! ## A308584.P9327937209223394396

`A001222(2*(A038196(n)²+1)+1)`
-/

namespace A308584.P9327937209223394396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (A038196 n ^ 2 + 1) + 1).toNat

end

end A308584.P9327937209223394396

/-! ## A308584.P9308066232708870620

`A000196(A053830(A191385(n)²))`
-/

namespace A308584.P9308066232708870620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A053830 (A191385 n ^ 2).toNat).toNat

end

end A308584.P9308066232708870620

/-!
# A308585: a(n) = 2^(n + 3) - 10*n - 6.

The programs for A308585, the canonical program `A308585.P14641193061789545395` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308585 has offset 1).

The definition of A308585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+4)-10*(n+1)-6` (program `A308585.P14641193061789545395`, by `A308585.P14641193061789545395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308585.P14641193061789545395

`2^(n+4)-10*(n+1)-6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308585

/-- `2^(n+4)-10*(n+1)-6` -/
def P14641193061789545395.Spec : Prop :=
  ∀ n, P14641193061789545395.a n = A308585 (n + 1)

theorem P14641193061789545395.correct : P14641193061789545395.Spec := by
  intro n
  simp only [A308585, Nat.add_sub_cancel]

end A308585

/-! ## A308585.P1928499579052271734

`∑[ogf((6x+4x^2)/(1-3x+2x^2))]`
-/

namespace A308585.P1928499579052271734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308585.P1928499579052271734

namespace A308585

/-- `∑[ogf((6x+4x^2)/(1-3x+2x^2))]` -/
def P1928499579052271734.Spec : Prop :=
  ∀ n, P1928499579052271734.a n = A308585 (n + 1)

end A308585

/-! ## A308585.P3132046072490633392

`ogf((6x+4x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A308585.P3132046072490633392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4] [1, -4, 5, -2] n

end

end A308585.P3132046072490633392

namespace A308585

/-- `ogf((6x+4x^2)/(1-4x+5x^2-2x^3))` -/
def P3132046072490633392.Spec : Prop :=
  ∀ n, P3132046072490633392.a n = A308585 (n + 1)

end A308585

/-! ## A308585.P12265255904035266660

`∑[2*(a(n-1)+5)]` with `a(0)=0, a(1)=6`
-/

namespace A308585.P12265255904035266660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  2 * (f1 (n - 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308585.P12265255904035266660

namespace A308585

/-- `∑[2*(a(n-1)+5)]` -/
def P12265255904035266660.Spec : Prop :=
  ∀ n, (P12265255904035266660.a n : ℤ) = A308585 (n + 1)

end A308585

/-! ## A308585.P13872886476163513620

`∑[lcm(2, a(n-1)+5)]` with `a(0)=0, a(1)=6`
-/

namespace A308585.P13872886476163513620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308585.P13872886476163513620

namespace A308585

/-- `∑[lcm(2, a(n-1)+5)]` -/
def P13872886476163513620.Spec : Prop :=
  ∀ n, (P13872886476163513620.a n : ℤ) = A308585 (n + 1)

end A308585

/-! ## A308585.P15357934705462612705

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=6, a(2)=16`
-/

namespace A308585.P15357934705462612705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 16] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308585.P15357934705462612705

namespace A308585

/-- `∑[∑[2*a(n-1)]]` -/
def P15357934705462612705.Spec : Prop :=
  ∀ n, (P15357934705462612705.a n : ℤ) = A308585 (n + 1)

end A308585

/-! ## A308585.P17275876190221820995

`2*(5*n+a(n-1)-2)` with `a(0)=0`
-/

namespace A308585.P17275876190221820995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((5 * n : ℤ) + (a (n - 1) - 2))

end

end A308585.P17275876190221820995

namespace A308585

/-- `2*(5*n+a(n-1)-2)` -/
def P17275876190221820995.Spec : Prop :=
  ∀ n, P17275876190221820995.a n = A308585 (n + 1)

theorem P17275876190221820995.correct : P17275876190221820995.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A308585, Nat.add_sub_cancel, A308585.P17275876190221820995.a, A308585.P14641193061789545395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A308585, Nat.add_sub_cancel, A308585.P17275876190221820995.a, A308585.P14641193061789545395.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A308585

/-! ## A308585.P8575569817929237938

`2*(5*n-(2-a(n-1)))` with `a(0)=0`
-/

namespace A308585.P8575569817929237938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((5 * n : ℤ) - (2 - a (n - 1)))

end

end A308585.P8575569817929237938

namespace A308585

/-- `2*(5*n-(2-a(n-1)))` -/
def P8575569817929237938.Spec : Prop :=
  ∀ n, P8575569817929237938.a n = A308585 (n + 1)

theorem P8575569817929237938.correct : P8575569817929237938.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A308585, Nat.add_sub_cancel, A308585.P8575569817929237938.a, A308585.P14641193061789545395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A308585, Nat.add_sub_cancel, A308585.P8575569817929237938.a, A308585.P14641193061789545395.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A308585

/-! ## A308585.P1869943555770396883

`∑[a(n-1)+a(n-1)+10]` with `a(0)=0, a(1)=6`
-/

namespace A308585.P1869943555770396883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308585.P1869943555770396883

namespace A308585

/-- `∑[a(n-1)+a(n-1)+10]` -/
def P1869943555770396883.Spec : Prop :=
  ∀ n, (P1869943555770396883.a n : ℤ) = A308585 (n + 1)

end A308585

/-! ## A308585.P10585563206400059584

`∑[2*(A173033(n)-1)]`
-/

namespace A308585.P10585563206400059584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173033 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308585.P10585563206400059584

namespace A308585

/-- `∑[2*(A173033(n)-1)]` -/
def P10585563206400059584.Spec : Prop :=
  ∀ n, P10585563206400059584.a n = A308585 (n + 1)

end A308585

/-! ## A308585.P6132773536491146963

`2*(A132734(n+1)-2)`
-/

namespace A308585.P6132773536491146963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A132734 (n + 1) - 2)

end

end A308585.P6132773536491146963

namespace A308585

/-- `2*(A132734(n+1)-2)` -/
def P6132773536491146963.Spec : Prop :=
  ∀ n, P6132773536491146963.a n = A308585 (n + 1)

end A308585

/-! ## A308585.P5308271505040369863

`2*(A247618(n)-(n+1))`
-/

namespace A308585.P5308271505040369863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A247618 n - (n + 1 : ℤ))

end

end A308585.P5308271505040369863

namespace A308585

/-- `2*(A247618(n)-(n+1))` -/
def P5308271505040369863.Spec : Prop :=
  ∀ n, P5308271505040369863.a n = A308585 (n + 1)

theorem P5308271505040369863.correct : P5308271505040369863.Spec := by
  intro n
  simp only [A308585, Nat.add_sub_cancel, A308585.P5308271505040369863.a, A308585.P14641193061789545395.a, A247618, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308585

/-! ## A308585.P2722474906190411396

`2*(A320661(n)-1+n)`
-/

namespace A308585.P2722474906190411396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A320661 n - 1 + (n : ℤ))

end

end A308585.P2722474906190411396

namespace A308585

/-- `2*(A320661(n)-1+n)` -/
def P2722474906190411396.Spec : Prop :=
  ∀ n, P2722474906190411396.a n = A308585 (n + 1)

theorem P2722474906190411396.correct : P2722474906190411396.Spec := by
  intro n
  simp only [A308585, Nat.add_sub_cancel, A308585.P2722474906190411396.a, A308585.P14641193061789545395.a, A320661, A320661.P10572897147368588178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308585

/-! ## A308585.P4272104324169363774

`2*(A302689(n+3)-n)`
-/

namespace A308585.P4272104324169363774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A302689 (n + 3) - (n : ℤ))

end

end A308585.P4272104324169363774

namespace A308585

/-- `2*(A302689(n+3)-n)` -/
def P4272104324169363774.Spec : Prop :=
  ∀ n, P4272104324169363774.a n = A308585 (n + 1)

theorem P4272104324169363774.correct : P4272104324169363774.Spec := by
  intro n
  simp only [A308585, Nat.add_sub_cancel, A308585.P4272104324169363774.a, A308585.P14641193061789545395.a, A302689, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308585

/-! ## A308585.P17260820315840665439

`2*(∑[A028399(n+2)]-n)`
-/

namespace A308585.P17260820315840665439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A308585.P17260820315840665439

namespace A308585

/-- `2*(∑[A028399(n+2)]-n)` -/
def P17260820315840665439.Spec : Prop :=
  ∀ n, P17260820315840665439.a n = A308585 (n + 1)

end A308585

/-! ## A308585.P7301956574256784655

`xor(10*(n+1)+4, A134067(n+2))`
-/

namespace A308585.P7301956574256784655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (10 * (n + 1) + 4 : ℤ) (A134067 (n + 2))

end

end A308585.P7301956574256784655

namespace A308585

/-- `xor(10*(n+1)+4, A134067(n+2))` -/
def P7301956574256784655.Spec : Prop :=
  ∀ n, P7301956574256784655.a n = A308585 (n + 1)

end A308585

/-! ## A308585.P16161568511225675281

`2*(∑[n-1+A145654(n+1)+n]+1)`
-/

namespace A308585.P16161568511225675281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A145654 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308585.P16161568511225675281

namespace A308585

/-- `2*(∑[n-1+A145654(n+1)+n]+1)` -/
def P16161568511225675281.Spec : Prop :=
  ∀ n, P16161568511225675281.a n = A308585 (n + 1)

end A308585

/-! ## A308585.P13926173209752319222

`∑[∑[A171494(n)]-A171494(n)]`
-/

namespace A308585.P13926173209752319222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A171494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308585.P13926173209752319222

namespace A308585

/-- `∑[∑[A171494(n)]-A171494(n)]` -/
def P13926173209752319222.Spec : Prop :=
  ∀ n, P13926173209752319222.a n = A308585 (n + 1)

end A308585

/-! ## A308585.P13586007627883725128

`2*(A125128(n+2)-A008574(n+1))`
-/

namespace A308585.P13586007627883725128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A125128 (n + 2) - A008574 (n + 1))

end

end A308585.P13586007627883725128

namespace A308585

/-- `2*(A125128(n+2)-A008574(n+1))` -/
def P13586007627883725128.Spec : Prop :=
  ∀ n, P13586007627883725128.a n = A308585 (n + 1)

end A308585

/-!
# A308587: Number of maximum matchings in the n X n antelope graph.

The programs for A308587, there is no canonical definition to state claims against.
-/

/-! ## A308587.P5707052259128036825

`A184257(n!)^4`
-/

namespace A308587.P5707052259128036825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (Nat.factorial n) ^ 4

end

end A308587.P5707052259128036825

/-! ## A308587.P3983352373046495124

`A360817(n)!^4`
-/

namespace A308587.P3983352373046495124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A360817 n).toNat ^ 4

end

end A308587.P3983352373046495124

/-!
# A308588: Number of 4-regular 3-connected planar graphs with n vertices having an Eulerian tour for which no two consecutive edges are incident with the same face.

The programs for A308588, there is no canonical definition to state claims against.
-/

/-! ## A308588.P818885038818279910

`A005142(n)-A237050(A005142(n))`
-/

namespace A308588.P818885038818279910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005142 n - A237050 (A005142 n).toNat

end

end A308588.P818885038818279910

/-! ## A308588.P4610959723012421651

`A146810(n+1)-A236256(A146843(2*n+1))`
-/

namespace A308588.P4610959723012421651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146810 (n + 1) - A236256 (A146843 (2 * n + 1)).toNat

end

end A308588.P4610959723012421651

/-!
# A308589: Number of minimal edge covers in the (2n-1)-triangular snake graph.

The programs for A308589, the canonical program `A308589.P8732224732776959632` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308589 has offset 1).

The definition of A308589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308589.P8732224732776959632

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308589

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P8732224732776959632.Spec : Prop :=
  ∀ n, (P8732224732776959632.a n : ℤ) = A308589 (n + 1)

theorem P8732224732776959632.correct : P8732224732776959632.Spec := by
  intro n
  simp only [A308589, Nat.add_sub_cancel]

end A308589

/-! ## A308589.P16845628193909811092

`ogf((3x+x^2)/(1-2x-x^2-x^3))`
-/

namespace A308589.P16845628193909811092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1] [1, -2, -1, -1] n

end

end A308589.P16845628193909811092

namespace A308589

/-- `ogf((3x+x^2)/(1-2x-x^2-x^3))` -/
def P16845628193909811092.Spec : Prop :=
  ∀ n, P16845628193909811092.a n = A308589 (n + 1)

end A308589

/-! ## A308589.P4757014778083217675

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=3, a(2)=7`
-/

namespace A308589.P4757014778083217675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A308589.P4757014778083217675

namespace A308589

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P4757014778083217675.Spec : Prop :=
  ∀ n, (P4757014778083217675.a n : ℤ) = A308589 (n + 1)

theorem P4757014778083217675.correct : P4757014778083217675.Spec := by
  intro n
  simp only [A308589, Nat.add_sub_cancel, A308589.P4757014778083217675.a, A308589.P8732224732776959632.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A308589

/-! ## A308589.P4316605497017405251

`A077939(n)+Δ[A077997(n)]-A077997(n)`
-/

namespace A308589.P4316605497017405251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n + (f1 (n + 1) - f1 n - A077997 n)

end

end A308589.P4316605497017405251

namespace A308589

/-- `A077939(n)+Δ[A077997(n)]-A077997(n)` -/
def P4316605497017405251.Spec : Prop :=
  ∀ n, P4316605497017405251.a n = A308589 (n + 1)

end A308589

/-! ## A308589.P5207114605298468795

`A347725(n+1)-A077997(n)`
-/

namespace A308589.P5207114605298468795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347725 (n + 1) - A077997 n

end

end A308589.P5207114605298468795

namespace A308589

/-- `A347725(n+1)-A077997(n)` -/
def P5207114605298468795.Spec : Prop :=
  ∀ n, P5207114605298468795.a n = A308589 (n + 1)

end A308589

/-! ## A308589.P16528305364813636930

`A271489(3*n)-A077997(n)`
-/

namespace A308589.P16528305364813636930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271489 (3 * n) - A077997 n

end

end A308589.P16528305364813636930

namespace A308589

/-- `A271489(3*n)-A077997(n)` -/
def P16528305364813636930.Spec : Prop :=
  ∀ n, P16528305364813636930.a n = A308589 (n + 1)

end A308589

/-! ## A308589.P3432884039868477847

`Δ[A109545(n+1)]-A109545(n)`
-/

namespace A308589.P3432884039868477847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109545 n

end

end A308589.P3432884039868477847

namespace A308589

/-- `Δ[A109545(n+1)]-A109545(n)` -/
def P3432884039868477847.Spec : Prop :=
  ∀ n, P3432884039868477847.a n = A308589 (n + 1)

end A308589

/-! ## A308589.P9688086870015220374

`Δ[A077849(n)]-2*A077997(n)`
-/

namespace A308589.P9688086870015220374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A077997 n

end

end A308589.P9688086870015220374

namespace A308589

/-- `Δ[A077849(n)]-2*A077997(n)` -/
def P9688086870015220374.Spec : Prop :=
  ∀ n, P9688086870015220374.a n = A308589 (n + 1)

end A308589

/-! ## A308589.P8522506836926946932

`A077939(n+1)-2*A077997(n)`
-/

namespace A308589.P8522506836926946932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 (n + 1) - 2 * A077997 n

end

end A308589.P8522506836926946932

namespace A308589

/-- `A077939(n+1)-2*A077997(n)` -/
def P8522506836926946932.Spec : Prop :=
  ∀ n, P8522506836926946932.a n = A308589 (n + 1)

end A308589

/-! ## A308589.P16318254065272586463

`A077939(n+4)%A077997(n+3)-A077997(n)`
-/

namespace A308589.P16318254065272586463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077939 (n + 4)) (A077997 (n + 3)) - A077997 n

end

end A308589.P16318254065272586463

namespace A308589

/-- `A077939(n+4)%A077997(n+3)-A077997(n)` -/
def P16318254065272586463.Spec : Prop :=
  ∀ n, P16318254065272586463.a n = A308589 (n + 1)

end A308589

/-!
# A308591: Number of minimal total dominating sets in the (2n-1)-triangular snake graph.

The programs for A308591, the canonical program `A308591.P12014610250637836025` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308591 has offset 1).

The definition of A308591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308591.P12014610250637836025

`2*a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=7, a(4)=14, a(5)=22, a(6)=42`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308591

/-- `2*a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P12014610250637836025.Spec : Prop :=
  ∀ n, (P12014610250637836025.a n : ℤ) = A308591 (n + 1)

theorem P12014610250637836025.correct : P12014610250637836025.Spec := by
  intro n
  simp only [A308591, Nat.add_sub_cancel]

end A308591

/-!
# A308592: Number of total dominating sets in the (2n-1)-triangular snake (for n > 1).

The programs for A308592, the canonical program `A308592.P4549843952498947355` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308592 has offset 1).

The definition of A308592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308592.P4549843952498947355

`2*a(n-1)+3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308592

/-- `2*a(n-1)+3*a(n-2)+2*a(n-3)` -/
def P4549843952498947355.Spec : Prop :=
  ∀ n, (P4549843952498947355.a n : ℤ) = A308592 (n + 1)

theorem P4549843952498947355.correct : P4549843952498947355.Spec := by
  intro n
  simp only [A308592, Nat.add_sub_cancel]

end A308592

/-! ## A308592.P5801820161792126698

`ogf((1+2x+5x^2)/(1-2x-3x^2-2x^3))`
-/

namespace A308592.P5801820161792126698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5] [1, -2, -3, -2] n

end

end A308592.P5801820161792126698

namespace A308592

/-- `ogf((1+2x+5x^2)/(1-2x-3x^2-2x^3))` -/
def P5801820161792126698.Spec : Prop :=
  ∀ n, P5801820161792126698.a n = A308592 (n + 1)

end A308592

/-! ## A308592.P7459384586306883610

`2*n+A001222(5^(n+1))*A026150(n)`
-/

namespace A308592.P7459384586306883610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A001222 (5 ^ (n + 1)) * A026150 n

end

end A308592.P7459384586306883610

namespace A308592

/-- `2*n+A001222(5^(n+1))*A026150(n)` -/
def P7459384586306883610.Spec : Prop :=
  ∀ n, P7459384586306883610.a n = A308592 (n + 1)

end A308592

/-!
# A308593: a(n) = Sum_{d|n} d^(n^2/d).

The programs for A308593, there is no canonical definition to state claims against.
-/

/-! ## A308593.P7008161436875877326

`∑{d}[n+1, #^((n+1)²/#)]`
-/

namespace A308593.P7008161436875877326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (((n + 1) ^ 2 : ℚ) / (d : ℚ) : ℝ)

end

end A308593.P7008161436875877326

/-! ## A308593.P11390471954592147252

`A308509(2*(n+1)²)`
-/

namespace A308593.P11390471954592147252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308509 (2 * (n + 1) ^ 2)

end

end A308593.P11390471954592147252

/-!
# A308594: a(n) = Sum_{d|n} d^(d+n).

The programs for A308594, the canonical program `A308594.P15100627561420145077` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308594 has offset 1).

The definition of A308594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308594.P15100627561420145077

`∑{d}[n+1, #^(#+n+1)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308594

/-- `∑{d}[n+1, #^(#+n+1)]` -/
def P15100627561420145077.Spec : Prop :=
  ∀ n, (P15100627561420145077.a n : ℤ) = A308594 (n + 1)

theorem P15100627561420145077.correct : P15100627561420145077.Spec := by
  intro n
  simp only [A308594, Nat.add_sub_cancel]

end A308594

/-!
# A308596: a(n) is the product of the prime(n) smallest primes other than prime(n).

The programs for A308596, there is no canonical definition to state claims against.
-/

/-! ## A308596.P6955108716577373467

`A125903(A000040(n+1))`
-/

namespace A308596.P6955108716577373467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125903 (A000040 (n + 1)).toNat

end

end A308596.P6955108716577373467

/-! ## A308596.P3922638126958790115

`A002110(A008864(n+1))/Δ[A007504(n)]`
-/

namespace A308596.P3922638126958790115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A008864 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A308596.P3922638126958790115

/-! ## A308596.P4540767445753639978

`A002110(A008864(n+1))/A000040(n+1)`
-/

namespace A308596.P4540767445753639978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A008864 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A308596.P4540767445753639978

/-! ## A308596.P7904816341655506201

`A002110(A028815(n+1))/A000040(n+1)`
-/

namespace A308596.P7904816341655506201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A028815 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A308596.P7904816341655506201

/-! ## A308596.P3733947823490774757

`A002110(A000040(n+1)+1)/A000040(n+1)`
-/

namespace A308596.P3733947823490774757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A000040 (n + 1) + 1).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A308596.P3733947823490774757

/-!
# A308597: Number of ways to write n as a*(a+1)/2 + b*(b+1)/2 + 2^c*5^d, where a,b,c,d are nonnegative integers with a <= b and d <= 1.

The programs for A308597, there is no canonical definition to state claims against.
-/

/-! ## A308597.P9073265511146415515

`A141285(A229460(n+1)+A008277(3*n+2))`
-/

namespace A308597.P9073265511146415515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A229460 (n + 1) + A008277 (3 * n + 2)).toNat

end

end A308597.P9073265511146415515

/-! ## A308597.P495027805896229601

`A087061(2*n+1)+A010060(A329355(n+3))`
-/

namespace A308597.P495027805896229601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (2 * n + 1) + A010060 (A329355 (n + 3)).toNat

end

end A308597.P495027805896229601

/-!
# A308598: The smaller term of the pair (a(n), a(n+1)) is always prime and in each pair there is a composite number; a(1) = 2 and the sequence is always extended with the smallest integer not yet present and not leading to a contradiction.

The programs for A308598, there is no canonical definition to state claims against.
-/

/-! ## A308598.P4195484348141395691

`p?[ceil(n/2)+2]+n%2`
-/

namespace A308598.P4195484348141395691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ((n % 2 : ℕ) : ℤ)

end

end A308598.P4195484348141395691

/-! ## A308598.P12035829370090637998

`p?[ceil(n/2)+2]+and(1, n)`
-/

namespace A308598.P12035829370090637998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.land 1 n : ℤ)

end

end A308598.P12035829370090637998

/-! ## A308598.P12204969352498441768

`char[or(1, n)]+p?[floor((n+5)/2)]`
-/

namespace A308598.P12204969352498441768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 5 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A308598.P12204969352498441768

/-! ## A308598.P17749470171586446565

`p?[ceil(n/2)+2]+val(n²+1, 2)`
-/

namespace A308598.P17749470171586446565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)

end

end A308598.P17749470171586446565

/-! ## A308598.P8720044574018866500

`char[2*n+1]+p?[ceil(n/2)+2]`
-/

namespace A308598.P8720044574018866500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A308598.P8720044574018866500

/-! ## A308598.P13492965787554026845

`A000040(ceil(n/2)+1)+and(1, n)`
-/

namespace A308598.P13492965787554026845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌈(n : ℚ) / 2⌉ + 1).toNat + (Nat.land 1 n : ℤ)

end

end A308598.P13492965787554026845

/-! ## A308598.P9747076823771505154

`A093515(A065190(n+1))`
-/

namespace A308598.P9747076823771505154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A065190 (n + 1)).toNat

end

end A308598.P9747076823771505154

/-! ## A308598.P2332038514005762546

`A114112(A093515(n+1))`
-/

namespace A308598.P2332038514005762546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A093515 (n + 1)).toNat

end

end A308598.P2332038514005762546

/-! ## A308598.P1999835368094513

`A093515(n+1)+A062157(n)`
-/

namespace A308598.P1999835368094513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) + A062157 n

end

end A308598.P1999835368094513

/-! ## A308598.P1365958858805679672

`A000035(n)+A000040(ceil(n/2)+1)`
-/

namespace A308598.P1365958858805679672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000040 (⌈(n : ℚ) / 2⌉ + 1).toNat

end

end A308598.P1365958858805679672

/-!
# A308599: Number of (not necessarily maximal) cliques in the n-alternating group graph.

The programs for A308599, the canonical program `A308599.P8050619294177292977` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308599 has offset 2).

The definition of A308599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308599.P8050619294177292977

`1+(4*(n+2)-5)*(n+2)!/6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308599

/-- `1+(4*(n+2)-5)*(n+2)!/6` -/
def P8050619294177292977.Spec : Prop :=
  ∀ n, P8050619294177292977.a n = (A308599 (n + 2) : ℚ)

end A308599

/-! ## A308599.P9144160670822588412

`n!*A002412(n+1)+1`
-/

namespace A308599.P9144160670822588412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002412 (n + 1) + 1

end

end A308599.P9144160670822588412

namespace A308599

/-- `n!*A002412(n+1)+1` -/
def P9144160670822588412.Spec : Prop :=
  ∀ n, P9144160670822588412.a n = A308599 (n + 2)

end A308599

/-! ## A308599.P16826984738367843230

`n!*∑[A000384(n+1)]+1`
-/

namespace A308599.P16826984738367843230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A308599.P16826984738367843230

namespace A308599

/-- `n!*∑[A000384(n+1)]+1` -/
def P16826984738367843230.Spec : Prop :=
  ∀ n, P16826984738367843230.a n = A308599 (n + 2)

end A308599

/-! ## A308599.P12905354053783994398

`n!*A023855(2*n+1)+1`
-/

namespace A308599.P12905354053783994398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A023855 (2 * n + 1) + 1

end

end A308599.P12905354053783994398

namespace A308599

/-- `n!*A023855(2*n+1)+1` -/
def P12905354053783994398.Spec : Prop :=
  ∀ n, P12905354053783994398.a n = A308599 (n + 2)

end A308599

/-! ## A308599.P3090953799971907684

`n!*∑[A000217(2*n+1)]+1`
-/

namespace A308599.P3090953799971907684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A308599.P3090953799971907684

namespace A308599

/-- `n!*∑[A000217(2*n+1)]+1` -/
def P3090953799971907684.Spec : Prop :=
  ∀ n, P3090953799971907684.a n = A308599 (n + 2)

end A308599

/-! ## A308599.P10941132054068682122

`A090672(n+1)+n!*∑[(n+1)²]+1`
-/

namespace A308599.P10941132054068682122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090672 (n + 1) + ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℤ)

end

end A308599.P10941132054068682122

namespace A308599

/-- `A090672(n+1)+n!*∑[(n+1)²]+1` -/
def P10941132054068682122.Spec : Prop :=
  ∀ n, P10941132054068682122.a n = A308599 (n + 2)

end A308599

/-! ## A308599.P1382637572314212774

`∑[A101493(∑[n])]*A000142(n)+1`
-/

namespace A308599.P1382637572314212774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101493 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n + 1

end

end A308599.P1382637572314212774

namespace A308599

/-- `∑[A101493(∑[n])]*A000142(n)+1` -/
def P1382637572314212774.Spec : Prop :=
  ∀ n, P1382637572314212774.a n = A308599 (n + 2)

end A308599

/-! ## A308599.P18357909505139992964

`A005990(n+1)+A001286(n+2)+1`
-/

namespace A308599.P18357909505139992964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005990 (n + 1) + (A001286 (n + 2) + 1)

end

end A308599.P18357909505139992964

namespace A308599

/-- `A005990(n+1)+A001286(n+2)+1` -/
def P18357909505139992964.Spec : Prop :=
  ∀ n, P18357909505139992964.a n = A308599 (n + 2)

end A308599

/-! ## A308599.P1824222058262243919

`∑[A000217(A005408(n))]*A000142(n)+1`
-/

namespace A308599.P1824222058262243919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n + 1

end

end A308599.P1824222058262243919

namespace A308599

/-- `∑[A000217(A005408(n))]*A000142(n)+1` -/
def P1824222058262243919.Spec : Prop :=
  ∀ n, P1824222058262243919.a n = A308599 (n + 2)

end A308599

