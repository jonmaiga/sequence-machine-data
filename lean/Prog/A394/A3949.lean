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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A394901: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A393890.

The programs for A394901, there is no canonical definition to state claims against.
-/

/-! ## A394901.P17768241181322235536

`A124778(A124790(2*(n+2)))*A384619(n)`
-/

namespace A394901.P17768241181322235536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A124790 (2 * (n + 2))).toNat * A384619 n

end

end A394901.P17768241181322235536

/-! ## A394901.P2362245434678360657

`A354579(A130780(n))*A384619(n)`
-/

namespace A394901.P2362245434678360657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A130780 n).toNat * A384619 n

end

end A394901.P2362245434678360657

/-! ## A394901.P9376740757344602245

`A055570(A381602(n))`
-/

namespace A394901.P9376740757344602245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A381602 n).toNat

end

end A394901.P9376740757344602245

/-! ## A394901.P13630066004904645413

`A381602(A055648(n))`
-/

namespace A394901.P13630066004904645413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 (A055648 n).toNat

end

end A394901.P13630066004904645413

/-! ## A394901.P1968368784776705825

`A089850(A384751(n))`
-/

namespace A394901.P1968368784776705825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A384751 n).toNat

end

end A394901.P1968368784776705825

/-!
# A394903: Number of square grid edges that are visible through the n-th order Sierpinski carpet fractal.

The programs for A394903, the canonical program `A394903.P272038596754920444` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394903 has offset 0).

The definition of A394903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394903.P1112915462029900571

`8*a(n-1)+2*(3^(2*(n-1))-3^(n-1))` with `a(0)=0`
-/

namespace A394903.P1112915462029900571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  8 * a (n - 1) + 2 * ((3 : ℚ) ^ (2 * ((n : ℤ) - 1) : ℤ) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A394903.P1112915462029900571

namespace A394903

/-- `8*a(n-1)+2*(3^(2*(n-1))-3^(n-1))` -/
def P1112915462029900571.Spec : Prop :=
  ∀ n, P1112915462029900571.a n = (A394903 n : ℚ)

end A394903

/-! ## A394903.P272038596754920444

`20*a(n-1)-123*a(n-2)+216*a(n-3)` with `a(0)=0, a(1)=0, a(2)=12`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394903

/-- `20*a(n-1)-123*a(n-2)+216*a(n-3)` -/
def P272038596754920444.Spec : Prop :=
  ∀ n, P272038596754920444.a n = A394903 n

theorem P272038596754920444.correct : P272038596754920444.Spec := by
  intro n
  simp only [A394903]

end A394903

/-! ## A394903.P15646783065598848856

`2*(5*9^n-6*8^n+3^n)/5`
-/

namespace A394903.P15646783065598848856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((5 * 9 ^ n : ℤ) - (6 * 8 ^ n : ℤ) + (3 ^ n : ℤ)) : ℚ) / 5

end

end A394903.P15646783065598848856

namespace A394903

/-- `2*(5*9^n-6*8^n+3^n)/5` -/
def P15646783065598848856.Spec : Prop :=
  ∀ n, P15646783065598848856.a n = (A394903 n : ℚ)

theorem P15646783065598848856.correct : P15646783065598848856.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A394903, Nat.add_sub_cancel, A394903.P15646783065598848856.a, A394903.P272038596754920444.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A394903, Nat.add_sub_cancel, A394903.P15646783065598848856.a, A394903.P272038596754920444.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A394903

/-!
# A394904: Numbers x*y such that x + y or |x - y| is a square.

The programs for A394904, there is no canonical definition to state claims against.
-/

/-! ## A394904.P4633571231564519809

`∪[A218381(n+1), A395626(n+1)]`
-/

namespace A394904.P4633571231564519809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394904.P4633571231564519809

/-! ## A394904.P15703726167020843082

`comp[A396779(n+1)]`
-/

namespace A394904.P15703726167020843082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394904.P15703726167020843082

/-! ## A394904.P8839632180175990338

`lt[A047993(n+2), A007534(A028914(n+1))]`
-/

namespace A394904.P8839632180175990338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047993 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007534 (A028914 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394904.P8839632180175990338

/-! ## A394904.P5330386628907337932

`lt[A263275(n), A055074(A214686(3*n+4))]`
-/

namespace A394904.P5330386628907337932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055074 (A214686 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394904.P5330386628907337932

/-! ## A394904.P8089196438410938153

`comp[A238476(comp[A000566(n)])]`
-/

namespace A394904.P8089196438410938153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238476 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394904.P8089196438410938153

/-!
# A394906: Representation of n in a positional system with the k-th prime as the k-th place value, choosing the representation that maximizes the decimal value.

The programs for A394906, there is no canonical definition to state claims against.
-/

/-! ## A394906.P1066187916725319204

`A195989(A309884(n+2))`
-/

namespace A394906.P1066187916725319204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195989 (A309884 (n + 2)).toNat

end

end A394906.P1066187916725319204

/-! ## A394906.P9990893227811347212

`filter[A001202(n+1), A395958(#)]`
-/

namespace A394906.P9990893227811347212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395958 (f1 j).toNat = 1) n)

end

end A394906.P9990893227811347212

/-!
# A394910: a(n) = numerator( (2/3)^n*(1/8 - (1/24)*(1/9)^n) ).

The programs for A394910, there is no canonical definition to state claims against.
-/

/-! ## A394910.P16157024851997389318

`A076736(2*n+1)*A164907(2*n)`
-/

namespace A394910.P16157024851997389318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (2 * n + 1) * A164907 (2 * n)

end

end A394910.P16157024851997389318

/-! ## A394910.P12996014700800455712

`A000010(A011782(n))*A046717(2*n+1)`
-/

namespace A394910.P12996014700800455712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A011782 n).toNat * A046717 (2 * n + 1)

end

end A394910.P12996014700800455712

/-! ## A394910.P14412008665710177742

`A051724(A000079(n))*A096053(n)`
-/

namespace A394910.P14412008665710177742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A000079 n).toNat * A096053 n

end

end A394910.P14412008665710177742

/-!
# A394911: a(n) = denominator( (2/3)^n*(1/8 - (1/24)*(1/9)^n) ).

The programs for A394911, there is no canonical definition to state claims against.
-/

/-! ## A394911.P4477886224689922371

`A000244(3*n+1)*A171623((n+1)²)`
-/

namespace A394911.P4477886224689922371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (3 * n + 1) * A171623 ((n + 1) ^ 2)

end

end A394911.P4477886224689922371

/-! ## A394911.P17850883383844969573

`A003946(3*n+2)/A034444(A003946(n))`
-/

namespace A394911.P17850883383844969573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003946 (3 * n + 2) : ℚ) / (A034444 (A003946 n).toNat : ℚ)

end

end A394911.P17850883383844969573

/-!
# A394915: Consider the following process: at step n, draw the line passing through the points (n, prime(n)) and (n+1, prime(n+1)). a(n) gives the total number of distinct single-point line intersections after step n.

The programs for A394915, there is no canonical definition to state claims against.
-/

/-! ## A394915.P18222734096849397800

`∑[A394225(n+1)]`
-/

namespace A394915.P18222734096849397800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394915.P18222734096849397800

/-!
# A394916: Expansion of (Sum_{k>=0} binomial(5*k,k) * x^k)^3.

The programs for A394916, the canonical program `A394916.P7595939199395741070` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394916 has offset 0).

The definition of A394916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394916.P7595939199395741070

`∑{#}[n, (#+1)*5^#*C(5*n-#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394916

/-- `∑{#}[n, (#+1)*5^#*C(5*n-#, n-#)]` -/
def P7595939199395741070.Spec : Prop :=
  ∀ n, (P7595939199395741070.a n : ℤ) = A394916 n

theorem P7595939199395741070.correct : P7595939199395741070.Spec := by
  intro n
  simp only [A394916]

end A394916

/-!
# A394917: Irregular triangle read by rows in which row n lists all k from [1..2^(n - 1)] with exactly n divisors.

The programs for A394917, there is no canonical definition to state claims against.
-/

/-! ## A394917.P10218747484647302088

`filter[A073915(n+1), A322860(#)]`
-/

namespace A394917.P10218747484647302088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A394917.P10218747484647302088

/-! ## A394917.P7511575241416809518

`filter[A073915(n+1), A365429(#)]`
-/

namespace A394917.P7511575241416809518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A394917.P7511575241416809518

/-! ## A394917.P6227092305193268362

`filter[A073915(n+1), A378550(#)]`
-/

namespace A394917.P6227092305193268362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A394917.P6227092305193268362

/-!
# A394927: a(n) is the minimal sum of squares over partitions of n into distinct parts.

The programs for A394927, the canonical program `A394927.P16215032132539986639` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394927 has offset 0).

The definition of A394927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394927.P17844109884889884054

`∑[((n-1)²+n)%(n+round(sqrt(2*n))+1)]`
-/

namespace A394927.P17844109884889884054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - 1) ^ 2 + (n : ℤ)) ((n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394927.P17844109884889884054

namespace A394927

/-- `∑[((n-1)²+n)%(n+round(sqrt(2*n))+1)]` -/
def P17844109884889884054.Spec : Prop :=
  ∀ n, P17844109884889884054.a n = A394927 n

end A394927

/-! ## A394927.P8425538307389045681

`∑[1+2*(row(n)-col(n))]-A099375(n)`
-/

namespace A394927.P8425538307389045681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099375 n

end

end A394927.P8425538307389045681

namespace A394927

/-- `∑[1+2*(row(n)-col(n))]-A099375(n)` -/
def P8425538307389045681.Spec : Prop :=
  ∀ n, P8425538307389045681.a n = A394927 n

end A394927

/-! ## A394927.P16215032132539986639

`∑[A099375(n)]-A099375(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394927

/-- `∑[A099375(n)]-A099375(n)` -/
def P16215032132539986639.Spec : Prop :=
  ∀ n, P16215032132539986639.a n = A394927 n

theorem P16215032132539986639.correct : P16215032132539986639.Spec := by
  intro n
  simp only [A394927]

end A394927

/-! ## A394927.P2709633093430799498

`∪[∑[A099375(n)], A066702(n+1)]`
-/

namespace A394927.P2709633093430799498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A394927.P2709633093430799498

namespace A394927

/-- `∪[∑[A099375(n)], A066702(n+1)]` -/
def P2709633093430799498.Spec : Prop :=
  ∀ n, (P2709633093430799498.a n : ℤ) = A394927 n

end A394927

/-! ## A394927.P4892821441584790360

`∑[A179753(2*n+1)]-A179753(2*n+1)`
-/

namespace A394927.P4892821441584790360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A179753 (2 * n + 1)

end

end A394927.P4892821441584790360

namespace A394927

/-- `∑[A179753(2*n+1)]-A179753(2*n+1)` -/
def P4892821441584790360.Spec : Prop :=
  ∀ n, P4892821441584790360.a n = A394927 n

end A394927

/-! ## A394927.P9328745035809240972

`∑[A253515(2*(n+1))]-A253515(2*(n+1))`
-/

namespace A394927.P9328745035809240972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253515 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A253515 (2 * (n + 1))

end

end A394927.P9328745035809240972

namespace A394927

/-- `∑[A253515(2*(n+1))]-A253515(2*(n+1))` -/
def P9328745035809240972.Spec : Prop :=
  ∀ n, P9328745035809240972.a n = A394927 n

end A394927

/-! ## A394927.P13566256195912159730

`2*eq[1, A192710(n+1)]-n`
-/

namespace A394927.P13566256195912159730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A394927.P13566256195912159730

namespace A394927

/-- `2*eq[1, A192710(n+1)]-n` -/
def P13566256195912159730.Spec : Prop :=
  ∀ n, P13566256195912159730.a n = A394927 n

end A394927

/-! ## A394927.P15086935578039086305

`A191748(n)-A176270(n)`
-/

namespace A394927.P15086935578039086305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191748 n - A176270 n

end

end A394927.P15086935578039086305

namespace A394927

/-- `A191748(n)-A176270(n)` -/
def P15086935578039086305.Spec : Prop :=
  ∀ n, P15086935578039086305.a n = A394927 n

end A394927

/-!
# A394928: Number of endofunctions f:{1,2,...,n}-> {1,2,...,n} whose smallest weakly connected component has exactly 2 nodes.

The programs for A394928, there is no canonical definition to state claims against.
-/

/-! ## A394928.P7102670304996100150

`A347999(A133263(n))`
-/

namespace A394928.P7102670304996100150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (A133263 n).toNat

end

end A394928.P7102670304996100150

/-! ## A394928.P11148656994148624960

`A347999(A238531(n+1))`
-/

namespace A394928.P11148656994148624960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (A238531 (n + 1)).toNat

end

end A394928.P11148656994148624960

/-! ## A394928.P14366926684723358057

`A347999(A000124(n)%A008421(n)+1)`
-/

namespace A394928.P14366926684723358057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (Int.tmod (A000124 n) (A008421 n) + 1).toNat

end

end A394928.P14366926684723358057

/-!
# A394930: Number of graphs with n vertices that have no induced regular subgraph of order 7.

The programs for A394930, there is no canonical definition to state claims against.
-/

/-! ## A394930.P16358135545547509665

`A028310(A394933(n+1))`
-/

namespace A394930.P16358135545547509665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A394933 (n + 1)).toNat

end

end A394930.P16358135545547509665

/-! ## A394930.P14133346911495503918

`A394933(A141769(n+1))`
-/

namespace A394930.P14133346911495503918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394933 (A141769 (n + 1)).toNat

end

end A394930.P14133346911495503918

/-! ## A394930.P2888871301028072482

`A394933(A062944(n+1)+1)`
-/

namespace A394930.P2888871301028072482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394933 (A062944 (n + 1) + 1).toNat

end

end A394930.P2888871301028072482

/-!
# A394934: a(n) is the largest k for which the number of parts of the symmetric representation of sigma of k, SRS(k), is odd and the upper Dyck path of SRS(k) touches the same point on the diagonal as A298856(k).

The programs for A394934, there is no canonical definition to state claims against.
-/

/-! ## A394934.P1807330511509701666

`A298856(n+1)-1`
-/

namespace A394934.P1807330511509701666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298856 (n + 1) - 1

end

end A394934.P1807330511509701666

/-! ## A394934.P6093296364186041667

`A318682(A318666(3*n+4))+A298856(n+1)`
-/

namespace A394934.P6093296364186041667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318682 (A318666 (3 * n + 4)).toNat + A298856 (n + 1)

end

end A394934.P6093296364186041667

/-! ## A394934.P16144497420288075759

`A066182(A298856(n+1))`
-/

namespace A394934.P16144497420288075759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A298856 (n + 1)).toNat

end

end A394934.P16144497420288075759

/-! ## A394934.P11716336646876245016

`A023443(A298856(n+1))`
-/

namespace A394934.P11716336646876245016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A298856 (n + 1)).toNat

end

end A394934.P11716336646876245016

/-! ## A394934.P11510852936146278105

`eq[A033677(n+1), A193974(n)]`
-/

namespace A394934.P11510852936146278105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394934.P11510852936146278105

/-!
# A394935: a(n) is the smallest k for which the number of parts of the symmetric representation of sigma of k, SRS(k), is odd and the lower Dyck path of SRS(k) touches the diagonal at the same point as A298856(k).

The programs for A394935, there is no canonical definition to state claims against.
-/

/-! ## A394935.P15136229433926105993

`comp[A057520(n)]*A029931(A000079(2*n+1))`
-/

namespace A394935.P15136229433926105993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A029931 (A000079 (2 * n + 1)).toNat

end

end A394935.P15136229433926105993

/-! ## A394935.P710448998182694781

`A001511(A000079(2*n+1))*A357413(2*n+3)`
-/

namespace A394935.P710448998182694781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000079 (2 * n + 1)).toNat * A357413 (2 * n + 3)

end

end A394935.P710448998182694781

/-!
# A394938: a(n) = floor(log_2(2*n - 1)) + floor(log_2(2*n - 1 - 2^(floor(log_2(2*n - 2)) - 1))) + 2.

The programs for A394938, the canonical program `A394938.P12412694586539431707` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394938 has offset 2).

The definition of A394938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(2*(n+2)-1))+floor(log2(2*(n+2)-1-2^(floor(log2(2*(n+2)-2))-1)))+2` (program `A394938.P12412694586539431707`, by `A394938.P12412694586539431707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394938.P12412694586539431707

`floor(log2(2*(n+2)-1))+floor(log2(2*(n+2)-1-2^(floor(log2(2*(n+2)-2))-1)))+2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394938

/-- `floor(log2(2*(n+2)-1))+floor(log2(2*(n+2)-1-2^(floor(log2(2*(n+2)-2))-1)))+2` -/
def P12412694586539431707.Spec : Prop :=
  ∀ n, P12412694586539431707.a n = A394938 (n + 2)

theorem P12412694586539431707.correct : P12412694586539431707.Spec := by
  intro n
  simp only [A394938, Nat.add_sub_cancel]

end A394938

/-! ## A394938.P13267404618878369076

`∑[a(floor(n/2))*n%2]` with `a(0)=4, a(1)=1, a(2)=1`
-/

namespace A394938.P13267404618878369076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394938.P13267404618878369076

namespace A394938

/-- `∑[a(floor(n/2))*n%2]` -/
def P13267404618878369076.Spec : Prop :=
  ∀ n, (P13267404618878369076.a n : ℤ) = A394938 (n + 2)

end A394938

/-! ## A394938.P5530824085448038215

`∑[C(2, A036044(n))²]`
-/

namespace A394938.P5530824085448038215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A036044 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394938.P5530824085448038215

namespace A394938

/-- `∑[C(2, A036044(n))²]` -/
def P5530824085448038215.Spec : Prop :=
  ∀ n, (P5530824085448038215.a n : ℤ) = A394938 (n + 2)

end A394938

/-! ## A394938.P5179842664478693369

`A395540(A080637(n+1))`
-/

namespace A394938.P5179842664478693369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395540 (A080637 (n + 1)).toNat

end

end A394938.P5179842664478693369

namespace A394938

/-- `A395540(A080637(n+1))` -/
def P5179842664478693369.Spec : Prop :=
  ∀ n, P5179842664478693369.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P6493415845315221062

`round(log2(A330940(2*n+3)))`
-/

namespace A394938.P6493415845315221062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A330940 (2 * n + 3) : ℝ))

end

end A394938.P6493415845315221062

namespace A394938

/-- `round(log2(A330940(2*n+3)))` -/
def P6493415845315221062.Spec : Prop :=
  ∀ n, P6493415845315221062.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P8170709562971056770

`A294991(A016825(n+1))`
-/

namespace A394938.P8170709562971056770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294991 (A016825 (n + 1)).toNat

end

end A394938.P8170709562971056770

namespace A394938

/-- `A294991(A016825(n+1))` -/
def P8170709562971056770.Spec : Prop :=
  ∀ n, P8170709562971056770.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P7037421088987623386

`A294991(A073760(n+1))`
-/

namespace A394938.P7037421088987623386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294991 (A073760 (n + 1)).toNat

end

end A394938.P7037421088987623386

namespace A394938

/-- `A294991(A073760(n+1))` -/
def P7037421088987623386.Spec : Prop :=
  ∀ n, P7037421088987623386.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P10194496460616968422

`A294991(A133653(n+2))`
-/

namespace A394938.P10194496460616968422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294991 (A133653 (n + 2)).toNat

end

end A394938.P10194496460616968422

namespace A394938

/-- `A294991(A133653(n+2))` -/
def P10194496460616968422.Spec : Prop :=
  ∀ n, P10194496460616968422.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P11447176738157500393

`A239683(A385587(n+2))`
-/

namespace A394938.P11447176738157500393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239683 (A385587 (n + 2)).toNat

end

end A394938.P11447176738157500393

namespace A394938

/-- `A239683(A385587(n+2))` -/
def P11447176738157500393.Spec : Prop :=
  ∀ n, P11447176738157500393.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P16474305395151803133

`A262070(A083094(n+2))`
-/

namespace A394938.P16474305395151803133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262070 (A083094 (n + 2)).toNat

end

end A394938.P16474305395151803133

namespace A394938

/-- `A262070(A083094(n+2))` -/
def P16474305395151803133.Spec : Prop :=
  ∀ n, P16474305395151803133.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P15146588932387321289

`A262070(A190640(n+2))`
-/

namespace A394938.P15146588932387321289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262070 (A190640 (n + 2)).toNat

end

end A394938.P15146588932387321289

namespace A394938

/-- `A262070(A190640(n+2))` -/
def P15146588932387321289.Spec : Prop :=
  ∀ n, P15146588932387321289.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P11645997124992469326

`A080800(A161644(n+1))`
-/

namespace A394938.P11645997124992469326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080800 (A161644 (n + 1)).toNat

end

end A394938.P11645997124992469326

namespace A394938

/-- `A080800(A161644(n+1))` -/
def P11645997124992469326.Spec : Prop :=
  ∀ n, P11645997124992469326.a n = A394938 (n + 2)

end A394938

/-! ## A394938.P16473721205797825505

`A080800(A175544(n+1))`
-/

namespace A394938.P16473721205797825505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080800 (A175544 (n + 1)).toNat

end

end A394938.P16473721205797825505

namespace A394938

/-- `A080800(A175544(n+1))` -/
def P16473721205797825505.Spec : Prop :=
  ∀ n, P16473721205797825505.a n = A394938 (n + 2)

end A394938

/-!
# A394939: Number of well-formed bracketed words of total length n built from the symbol * (of length 1) and two unary bracket types, with no empty bracket pair.

The programs for A394939, there is no canonical definition to state claims against.
-/

/-! ## A394939.P8858553361285249751

`A329358(A360890(n+1))`
-/

namespace A394939.P8858553361285249751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329358 (A360890 (n + 1)).toNat

end

end A394939.P8858553361285249751

/-! ## A394939.P10250284685070549544

`A161957(A001384(n))`
-/

namespace A394939.P10250284685070549544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161957 (A001384 n).toNat

end

end A394939.P10250284685070549544

/-! ## A394939.P2509812418087566577

`A161957(A036622(n))`
-/

namespace A394939.P2509812418087566577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161957 (A036622 n).toNat

end

end A394939.P2509812418087566577

/-! ## A394939.P10209851952847751997

`A265527(A000083(n))`
-/

namespace A394939.P10209851952847751997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (A000083 n).toNat

end

end A394939.P10209851952847751997

/-!
# A394940: Number of well-formed bracketed words of total length n built from the symbol * (of length 1) and three unary bracket types, with no empty bracket pair.

The programs for A394940, there is no canonical definition to state claims against.
-/

/-! ## A394940.P8622514011500274296

`A008618(A077834(n+1))`
-/

namespace A394940.P8622514011500274296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A077834 (n + 1)).toNat

end

end A394940.P8622514011500274296

/-! ## A394940.P7920424766856115064

`A212713(A033139(n+1))`
-/

namespace A394940.P7920424766856115064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212713 (A033139 (n + 1)).toNat

end

end A394940.P7920424766856115064

/-! ## A394940.P7651629042869428467

`A033183(A033130(n+2))`
-/

namespace A394940.P7651629042869428467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A033130 (n + 2)).toNat

end

end A394940.P7651629042869428467

/-! ## A394940.P7992275430554953195

`A352501(A352501(A341054(A007051(n+1))))`
-/

namespace A394940.P7992275430554953195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352501 (A352501 (A341054 (A007051 (n + 1)).toNat).toNat).toNat

end

end A394940.P7992275430554953195

/-!
# A394941: Number of well-formed bracketed words of total length n built from the symbol * (of length 1) and four unary bracket types, with no empty bracket pair.

The programs for A394941, there is no canonical definition to state claims against.
-/

/-! ## A394941.P16316590995771117153

`A157271(A322939(n))`
-/

namespace A394941.P16316590995771117153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A322939 n).toNat

end

end A394941.P16316590995771117153

/-! ## A394941.P4156183822112587982

`A341420(A002905(n))`
-/

namespace A394941.P4156183822112587982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341420 (A002905 n).toNat

end

end A394941.P4156183822112587982

/-! ## A394941.P9596357580204218295

`A294748(A130380(n))`
-/

namespace A394941.P9596357580204218295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (A130380 n).toNat

end

end A394941.P9596357580204218295

/-!
# A394942: Number of well-formed bracketed words of total length n built from the symbol * (of length 1) and two unary bracket types () and [], with no empty bracket pair, where every maximal chain of unary brackets is written in canonical weakly increasing order.

The programs for A394942, there is no canonical definition to state claims against.
-/

/-! ## A394942.P13485797534285941774

`A008676(A382379(n))+A008676(2*n)`
-/

namespace A394942.P13485797534285941774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A382379 n).toNat + A008676 (2 * n)

end

end A394942.P13485797534285941774

/-! ## A394942.P13248444813734153199

`A347454(A072168(n+1))`
-/

namespace A394942.P13248444813734153199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (A072168 (n + 1)).toNat

end

end A394942.P13248444813734153199

/-! ## A394942.P12686194573783376912

`A103128(A214849(n)+A000142(n))`
-/

namespace A394942.P12686194573783376912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A214849 n + A000142 n).toNat

end

end A394942.P12686194573783376912

/-! ## A394942.P11997909374580588997

`A002524(n)-A335525(A102726(n))`
-/

namespace A394942.P11997909374580588997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n - A335525 (A102726 n).toNat

end

end A394942.P11997909374580588997

/-!
# A394944: Number of well-formed bracketed words of total length n built from the symbol * (of length 1) and four unary bracket types (), [], {}, and <>, with no empty bracket pair, where every maximal chain of unary brackets is written in canonical weakly increasing order.

The programs for A394944, there is no canonical definition to state claims against.
-/

/-! ## A394944.P4243753574956142312

`A378945(A036610(n))`
-/

namespace A394944.P4243753574956142312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378945 (A036610 n).toNat

end

end A394944.P4243753574956142312

/-! ## A394944.P9184678148980554770

`A349493(A275389(n))`
-/

namespace A394944.P9184678148980554770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349493 (A275389 n).toNat

end

end A394944.P9184678148980554770

/-! ## A394944.P17330426644276149411

`A114513(A047775(n+2))`
-/

namespace A394944.P17330426644276149411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114513 (A047775 (n + 2)).toNat

end

end A394944.P17330426644276149411

/-!
# A394946: Number of well-formed bracketed words of total length 2n built from the symbol * (of length 2) and three unary bracket types (), [], and {}, with no empty bracket pair, where every maximal chain of unary brackets is written in canonical weakly increasing order.

The programs for A394946, there is no canonical definition to state claims against.
-/

/-! ## A394946.P777052166310770035

`A194442(A001519(n))+A003415(n)`
-/

namespace A394946.P777052166310770035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (A001519 n).toNat + A003415 n

end

end A394946.P777052166310770035

/-! ## A394946.P13388790197925963410

`A327871(n)+A001222(A361065(n))`
-/

namespace A394946.P13388790197925963410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327871 n + A001222 (A361065 n).toNat

end

end A394946.P13388790197925963410

/-!
# A394947: Number of well-formed bracketed words of total length 2n built from the symbol * (of length 2) and four unary bracket types (), [], {}, and <>, with no empty bracket pair, where every maximal chain of unary brackets is written in canonical weakly increasing order.

The programs for A394947, there is no canonical definition to state claims against.
-/

/-! ## A394947.P2100739288920411518

`A361305(n+1)+A216600(A361305(n+1))`
-/

namespace A394947.P2100739288920411518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361305 (n + 1) + A216600 (A361305 (n + 1)).toNat

end

end A394947.P2100739288920411518

/-!
# A394948: Number of equivalence classes of well-formed bracketed words of total length 2n built from the symbol * (of length 2) and two unary bracket types () and [], with no empty bracket pair, modulo commutativity of concatenation.

The programs for A394948, there is no canonical definition to state claims against.
-/

/-! ## A394948.P8595834350733135998

`ceil(A004113(n+1)/2)`
-/

namespace A394948.P8595834350733135998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004113 (n + 1) : ℚ) / 2⌉

end

end A394948.P8595834350733135998

/-! ## A394948.P15007243204546194454

`A004113(1+n)/A040000(n)`
-/

namespace A394948.P15007243204546194454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004113 (1 + n) : ℚ) / (A040000 n : ℚ)

end

end A394948.P15007243204546194454

/-! ## A394948.P11292363772456600631

`A004113(n+1)/A036453(n+1)`
-/

namespace A394948.P11292363772456600631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004113 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A394948.P11292363772456600631

/-! ## A394948.P11322475269529390204

`A004113(n+1)/A034444(A027746(n+1))`
-/

namespace A394948.P11322475269529390204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004113 (n + 1) : ℚ) / (A034444 (A027746 (n + 1)).toNat : ℚ)

end

end A394948.P11322475269529390204

/-! ## A394948.P11244912849142314585

`A004113(n+1)/A034444(A034444(n+1))`
-/

namespace A394948.P11244912849142314585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004113 (n + 1) : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A394948.P11244912849142314585

/-!
# A394949: Number of equivalence classes of well-formed bracketed words of total length 2n built from the symbol * (of length 2) and three unary bracket types (), [], and {}, with no empty bracket pair, modulo commutativity of concatenation.

The programs for A394949, there is no canonical definition to state claims against.
-/

/-! ## A394949.P16794856352067352154

`A109273(A001997(n))`
-/

namespace A394949.P16794856352067352154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109273 (A001997 n).toNat

end

end A394949.P16794856352067352154

/-! ## A394949.P10093481575424312256

`A144832(A000108(n))-1`
-/

namespace A394949.P10093481575424312256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144832 (A000108 n).toNat - 1

end

end A394949.P10093481575424312256

/-!
# A394950: Number of equivalence classes of well-formed bracketed words of total length 2n built from the symbol * (of length 2) and four unary bracket types (), [], {}, and <>, with no empty bracket pair, modulo commutativity of concatenation.

The programs for A394950, there is no canonical definition to state claims against.
-/

/-! ## A394950.P7847281744348267447

`A008620(A128652(n+1)+A073994(n+1))`
-/

namespace A394950.P7847281744348267447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A128652 (n + 1) + A073994 (n + 1)).toNat

end

end A394950.P7847281744348267447

/-!
# A394951: Number of equivalence classes of well-formed bracketed words of total length 2n built from the symbol * (of length 2) and two unary bracket types () and [], with no empty bracket pair, modulo commutativity of concatenation, where every maximal chain of unary brackets is written in canonical weakly increasing order.

The programs for A394951, there is no canonical definition to state claims against.
-/

/-! ## A394951.P8413324861390596295

`A048688(A092497(n))`
-/

namespace A394951.P8413324861390596295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048688 (A092497 n).toNat

end

end A394951.P8413324861390596295

/-! ## A394951.P15275050901020801547

`A376455(A188625(n+1))`
-/

namespace A394951.P15275050901020801547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376455 (A188625 (n + 1)).toNat

end

end A394951.P15275050901020801547

/-! ## A394951.P6752009246175236523

`A321005(A066331(n+2))`
-/

namespace A394951.P6752009246175236523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321005 (A066331 (n + 2)).toNat

end

end A394951.P6752009246175236523

/-!
# A394952: Number of equivalence classes of well-formed bracketed words of total length 2n built from the symbol * (of length 2) and three unary bracket types (), [], and {}, with no empty bracket pair, modulo commutativity of concatenation, where every maximal chain of unary brackets is written in canonical weakly increasing order.

The programs for A394952, there is no canonical definition to state claims against.
-/

/-! ## A394952.P7906324011794949028

`A141204(A002212(n))`
-/

namespace A394952.P7906324011794949028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A002212 n).toNat

end

end A394952.P7906324011794949028

/-! ## A394952.P11949528842075987004

`A149440(n)+A001899(A001147(n))`
-/

namespace A394952.P11949528842075987004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149440 n + A001899 (A001147 n).toNat

end

end A394952.P11949528842075987004

/-!
# A394953: Number of equivalence classes of well-formed bracketed words of total length 2n built from the symbol * (of length 2) and four unary bracket types (), [], {}, and <>, with no empty bracket pair, modulo commutativity of concatenation, where every maximal chain of unary brackets is written in canonical weakly increasing order.

The programs for A394953, there is no canonical definition to state claims against.
-/

/-! ## A394953.P14535892684470866306

`A248180(A150969(n))`
-/

namespace A394953.P14535892684470866306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A150969 n).toNat

end

end A394953.P14535892684470866306

/-! ## A394953.P15730299760112991232

`A322497(n)+A237578(A322495(n))`
-/

namespace A394953.P15730299760112991232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322497 n + A237578 (A322495 n).toNat

end

end A394953.P15730299760112991232

/-!
# A394955: Number of reducible flow graphs on n labeled nodes whose entry node 1 is a global source (in-degree 0, reaches every node).

The programs for A394955, there is no canonical definition to state claims against.
-/

/-! ## A394955.P6346751658019027180

`A398465(n+1)/2^n`
-/

namespace A394955.P6346751658019027180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398465 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A394955.P6346751658019027180

/-! ## A394955.P14642702092098986328

`floor(A398465(n+1)/A000079(n))`
-/

namespace A394955.P14642702092098986328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A398465 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A394955.P14642702092098986328

/-!
# A394959: Number of directed 2n-step 2-dimensional closed self-avoiding paths on square lattice, reduced for symmetry; i.e., where rotations and reflections are not counted as distinct.

The programs for A394959, there is no canonical definition to state claims against.
-/

/-! ## A394959.P15021594490667202668

`A085855(A094970(n+1))`
-/

namespace A394959.P15021594490667202668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085855 (A094970 (n + 1)).toNat

end

end A394959.P15021594490667202668

/-! ## A394959.P15418951053915024195

`A064413(A247810(2*a(n-1)+3*a(n-2)-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A394959.P15418951053915024195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3] fun n a =>
  A064413 (A247810 (2 * a (n - 1) + 3 * a (n - 2) - 2).toNat).toNat

end

end A394959.P15418951053915024195

/-! ## A394959.P10741056512996698558

`A000720(A000720(A355597(n+1))-n)`
-/

namespace A394959.P10741056512996698558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A355597 (n + 1)).toNat - (n : ℤ)).toNat

end

end A394959.P10741056512996698558

/-!
# A394960: a(n) = (2^(n-1)-1) * (2^n-3).

The programs for A394960, the canonical program `A394960.P6409184033975738542` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394960 has offset 0).

The definition of A394960 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A394960.anchor (n : ℕ) : (A394960 n : ℚ) = ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) * ((2 ^ n : ℤ) - 3 : ℚ)` in `Proof.A394.A394960`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394960.P18238327034603672595

`ogf((1-7x+15x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A394960.P18238327034603672595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, 15] [1, -7, 14, -8] n

end

end A394960.P18238327034603672595

namespace A394960

/-- `ogf((1-7x+15x^2)/(1-7x+14x^2-8x^3))` -/
def P18238327034603672595.Spec : Prop :=
  ∀ n, P18238327034603672595.a n = A394960 n

end A394960

/-! ## A394960.P6409184033975738542

`(2^(n-1)-1)*(2^n-3)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394960

/-- `(2^(n-1)-1)*(2^n-3)` -/
def P6409184033975738542.Spec : Prop :=
  ∀ n, P6409184033975738542.a n = (A394960 n : ℚ)

end A394960

/-! ## A394960.P17061029071772438885

`a(n-1)+a(n-1)+4^(n-1)-3` with `a(0)=1, a(1)=0`
-/

namespace A394960.P17061029071772438885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 3

end

end A394960.P17061029071772438885

namespace A394960

/-- `a(n-1)+a(n-1)+4^(n-1)-3` -/
def P17061029071772438885.Spec : Prop :=
  ∀ n, P17061029071772438885.a n = (A394960 n : ℚ)

end A394960

/-! ## A394960.P12746123029720077041

`A134057(n)-A000918(n)`
-/

namespace A394960.P12746123029720077041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 n - A000918 n

end

end A394960.P12746123029720077041

namespace A394960

/-- `A134057(n)-A000918(n)` -/
def P12746123029720077041.Spec : Prop :=
  ∀ n, P12746123029720077041.a n = A394960 n

end A394960

/-! ## A394960.P14035166792276306478

`A094375(n)-A072674(n)`
-/

namespace A394960.P14035166792276306478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n - A072674 n

end

end A394960.P14035166792276306478

namespace A394960

/-- `A094375(n)-A072674(n)` -/
def P14035166792276306478.Spec : Prop :=
  ∀ n, P14035166792276306478.a n = A394960 n

end A394960

/-! ## A394960.P11292319332642284899

`A281481(n)-A033484(n)`
-/

namespace A394960.P11292319332642284899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n - A033484 n

end

end A394960.P11292319332642284899

namespace A394960

/-- `A281481(n)-A033484(n)` -/
def P11292319332642284899.Spec : Prop :=
  ∀ n, P11292319332642284899.a n = A394960 n

end A394960

/-! ## A394960.P16163932438764284092

`A239679(n)-A256871(n)`
-/

namespace A394960.P16163932438764284092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239679 n - A256871 n

end

end A394960.P16163932438764284092

namespace A394960

/-- `A239679(n)-A256871(n)` -/
def P16163932438764284092.Spec : Prop :=
  ∀ n, P16163932438764284092.a n = A394960 n

end A394960

/-! ## A394960.P375148237639875245

`A253208(n)-A256873(n)`
-/

namespace A394960.P375148237639875245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253208 n - A256873 n

end

end A394960.P375148237639875245

namespace A394960

/-- `A253208(n)-A256873(n)` -/
def P375148237639875245.Spec : Prop :=
  ∀ n, P375148237639875245.a n = A394960 n

end A394960

/-! ## A394960.P14371097350624792306

`A006516(n)-A036563(n+1)`
-/

namespace A394960.P14371097350624792306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n - A036563 (n + 1)

end

end A394960.P14371097350624792306

namespace A394960

/-- `A006516(n)-A036563(n+1)` -/
def P14371097350624792306.Spec : Prop :=
  ∀ n, P14371097350624792306.a n = A394960 n

end A394960

/-! ## A394960.P13576097229792940339

`A288492(n+1)-A254667(n)`
-/

namespace A394960.P13576097229792940339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288492 (n + 1) - A254667 n

end

end A394960.P13576097229792940339

namespace A394960

/-- `A288492(n+1)-A254667(n)` -/
def P13576097229792940339.Spec : Prop :=
  ∀ n, P13576097229792940339.a n = A394960 n

end A394960

/-! ## A394960.P3525235230257231116

`A062709(2*n)-A256873(n)`
-/

namespace A394960.P3525235230257231116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 (2 * n) - A256873 n

end

end A394960.P3525235230257231116

namespace A394960

/-- `A062709(2*n)-A256873(n)` -/
def P3525235230257231116.Spec : Prop :=
  ∀ n, P3525235230257231116.a n = A394960 n

end A394960

/-! ## A394960.P17562357276577021699

`A006516(n)-(A000918(n)+A000225(n))`
-/

namespace A394960.P17562357276577021699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n - (A000918 n + A000225 n)

end

end A394960.P17562357276577021699

namespace A394960

/-- `A006516(n)-(A000918(n)+A000225(n))` -/
def P17562357276577021699.Spec : Prop :=
  ∀ n, P17562357276577021699.a n = A394960 n

end A394960

/-! ## A394960.P9081155822378886987

`A006516(n)-A000079(n)-A036563(n)`
-/

namespace A394960.P9081155822378886987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n - A000079 n - A036563 n

end

end A394960.P9081155822378886987

namespace A394960

/-- `A006516(n)-A000079(n)-A036563(n)` -/
def P9081155822378886987.Spec : Prop :=
  ∀ n, P9081155822378886987.a n = A394960 n

end A394960

/-! ## A394960.P8897096251367645914

`A000225(n)+A134057(n)-A036563(n+1)`
-/

namespace A394960.P8897096251367645914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A134057 n - A036563 (n + 1))

end

end A394960.P8897096251367645914

namespace A394960

/-- `A000225(n)+A134057(n)-A036563(n+1)` -/
def P8897096251367645914.Spec : Prop :=
  ∀ n, P8897096251367645914.a n = A394960 n

end A394960

/-! ## A394960.P429700834626991626

`A000225(n)*A131577(n)-A036563(n+1)`
-/

namespace A394960.P429700834626991626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A131577 n - A036563 (n + 1)

end

end A394960.P429700834626991626

namespace A394960

/-- `A000225(n)*A131577(n)-A036563(n+1)` -/
def P429700834626991626.Spec : Prop :=
  ∀ n, P429700834626991626.a n = A394960 n

end A394960

/-! ## A394960.P17134667253133209856

`A032098(n+1)-A161168(n)`
-/

namespace A394960.P17134667253133209856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032098 (n + 1) - A161168 n

end

end A394960.P17134667253133209856

namespace A394960

/-- `A032098(n+1)-A161168(n)` -/
def P17134667253133209856.Spec : Prop :=
  ∀ n, P17134667253133209856.a n = A394960 n

end A394960

/-! ## A394960.P5713513313131999956

`A169720(n)-A170940(n+1)`
-/

namespace A394960.P5713513313131999956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169720 n - A170940 (n + 1)

end

end A394960.P5713513313131999956

namespace A394960

/-- `A169720(n)-A170940(n+1)` -/
def P5713513313131999956.Spec : Prop :=
  ∀ n, P5713513313131999956.a n = A394960 n

end A394960

/-! ## A394960.P4260306729077714351

`A028403(n+1)-A375256(n+1)`
-/

namespace A394960.P4260306729077714351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028403 (n + 1) - A375256 (n + 1)

end

end A394960.P4260306729077714351

namespace A394960

/-- `A028403(n+1)-A375256(n+1)` -/
def P4260306729077714351.Spec : Prop :=
  ∀ n, P4260306729077714351.a n = A394960 n

end A394960

/-! ## A394960.P15182206369760602389

`A297928(n)-(A375256(n+1)+A000225(n))`
-/

namespace A394960.P15182206369760602389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297928 n - (A375256 (n + 1) + A000225 n)

end

end A394960.P15182206369760602389

namespace A394960

/-- `A297928(n)-(A375256(n+1)+A000225(n))` -/
def P15182206369760602389.Spec : Prop :=
  ∀ n, P15182206369760602389.a n = A394960 n

end A394960

/-!
# A394961: a(n) = n! * [x^n] (exp(exp(x) - 1) - 1)/(1 - x).

The programs for A394961, there is no canonical definition to state claims against.
-/

/-! ## A394961.P242608375963100587

`A101053(n)-A000142(n)`
-/

namespace A394961.P242608375963100587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101053 n - A000142 n

end

end A394961.P242608375963100587

/-! ## A394961.P1631567264234332919

`A101053(n)-n!`
-/

namespace A394961.P1631567264234332919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101053 n - (Nat.factorial n : ℤ)

end

end A394961.P1631567264234332919

/-! ## A394961.P17539943178154608889

`A000110(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A394961.P17539943178154608889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000110 n + (n : ℤ) * a (n - 1)

end

end A394961.P17539943178154608889

/-!
# A394968: G.f. A(x) satisfies [x^n] exp( n*x/(1-n*x) - n*A(x) ) = 0 for n >= 1.

The programs for A394968, there is no canonical definition to state claims against.
-/

/-! ## A394968.P2050709636999300613

`A086707((n+1)^(n+1))+1`
-/

namespace A394968.P2050709636999300613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 ((n + 1) ^ (n + 1)) + 1

end

end A394968.P2050709636999300613

/-!
# A394970: Number of isotopism classes of row-Hamiltonian Latin squares of order n.

The programs for A394970, there is no canonical definition to state claims against.
-/

/-! ## A394970.P16967552717808428911

`A059963(A331900(n+1))`
-/

namespace A394970.P16967552717808428911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059963 (A331900 (n + 1)).toNat

end

end A394970.P16967552717808428911

/-! ## A394970.P10918173827903549201

`A035457(n)^A139351(A065238(n))`
-/

namespace A394970.P10918173827903549201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035457 n : ℚ) ^ (A139351 (A065238 n).toNat : ℤ)

end

end A394970.P10918173827903549201

/-! ## A394970.P16405241365705418524

`A000161(A007689(n))^A003415(n+1)`
-/

namespace A394970.P16405241365705418524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000161 (A007689 n).toNat : ℚ) ^ (A003415 (n + 1) : ℤ)

end

end A394970.P16405241365705418524

/-! ## A394970.P11953441557841164917

`A174725(A032011(n))^A008302(n+1)`
-/

namespace A394970.P11953441557841164917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174725 (A032011 n).toNat : ℚ) ^ (A008302 (n + 1) : ℤ)

end

end A394970.P11953441557841164917

/-! ## A394970.P4661928134646418286

`A035457(n)^A002117(A292884(n+1))`
-/

namespace A394970.P4661928134646418286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035457 n : ℚ) ^ (A002117 (A292884 (n + 1)).toNat : ℤ)

end

end A394970.P4661928134646418286

/-!
# A394971: Number of species of order n that contain row-Hamiltonian Latin squares.

The programs for A394971, there is no canonical definition to state claims against.
-/

/-! ## A394971.P3460863745451451496

`A120489(n+1)-A185036(A003557(3*n+2))`
-/

namespace A394971.P3460863745451451496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120489 (n + 1) - A185036 (A003557 (3 * n + 2)).toNat

end

end A394971.P3460863745451451496

/-!
# A394974: a(n) = number of pairs (c,d) of integers with 1 <= c <= n-1 and 1 <= d <= n-1 such that n*c + d divides (n-1)*d.

The programs for A394974, there is no canonical definition to state claims against.
-/

/-! ## A394974.P11460218201735633071

`A366354(n)/A088427(A399528(n+5))`
-/

namespace A394974.P11460218201735633071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366354 n : ℚ) / (A088427 (A399528 (n + 5)).toNat : ℚ)

end

end A394974.P11460218201735633071

/-! ## A394974.P5169852365755775195

`and(A097724(n), A353427(A132017(n+4)))`
-/

namespace A394974.P5169852365755775195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097724 n) (A353427 (A132017 (n + 4)).toNat)

end

end A394974.P5169852365755775195

/-! ## A394974.P7359959052773506843

`A349056(A278256(n+1))-A000005(n+1)`
-/

namespace A394974.P7359959052773506843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (A278256 (n + 1)).toNat - A000005 (n + 1)

end

end A394974.P7359959052773506843

/-! ## A394974.P7750845879954585860

`A094907(n+2)-A373491(A167788(n+1))`
-/

namespace A394974.P7750845879954585860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (n + 2) - A373491 (A167788 (n + 1)).toNat

end

end A394974.P7750845879954585860

/-! ## A394974.P15441459843866940545

`A000120(A048050(n+2)%A226769(n+1))`
-/

namespace A394974.P15441459843866940545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A048050 (n + 2)) (A226769 (n + 1))).toNat

end

end A394974.P15441459843866940545

/-!
# A394981: Given a set of n rectangular tiles, {1 X 1, 1 X 2, 1 X 3, 1 X 4, ..., 1 X n}, then a(n) is the number of tilings up to symmetry of the rectangle having smallest possible perimeter with area n*(n+1)/2 using all n tiles.

The programs for A394981, there is no canonical definition to state claims against.
-/

/-! ## A394981.P5951397588508760594

`A109825(A045632(n))`
-/

namespace A394981.P5951397588508760594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (A045632 n).toNat

end

end A394981.P5951397588508760594

/-! ## A394981.P10395002609897549329

`A235591(A159347(n))`
-/

namespace A394981.P10395002609897549329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235591 (A159347 n).toNat

end

end A394981.P10395002609897549329

/-! ## A394981.P7949850736680930940

`A050378(A148279(n+1))`
-/

namespace A394981.P7949850736680930940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050378 (A148279 (n + 1)).toNat

end

end A394981.P7949850736680930940

/-!
# A394982: G.f. A(x) satisfies [x^n] exp( n*x*(1+n*x+(n*x)^2) - n*A(x) ) = 0 for n >= 1.

The programs for A394982, there is no canonical definition to state claims against.
-/

/-! ## A394982.P5735261309931930162

`A153859(A128153(n))`
-/

namespace A394982.P5735261309931930162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153859 (A128153 n).toNat

end

end A394982.P5735261309931930162

/-!
# A394987: a(n) is the least product x*y of two integers 2^(n-1) <= x <= y < 2^n maximizing the Hamming weight of this product.

The programs for A394987, there is no canonical definition to state claims against.
-/

/-! ## A394987.P9382717796006513354

`A394989(n+1)*A394990(n+1)`
-/

namespace A394987.P9382717796006513354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394989 (n + 1) * A394990 (n + 1)

end

end A394987.P9382717796006513354

/-! ## A394987.P1935745894394600789

`A268273(4^n)`
-/

namespace A394987.P1935745894394600789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (4 ^ n)

end

end A394987.P1935745894394600789

/-!
# A394988: a(n) is the maximum Hamming weight of the product x*y of two integers 2^(n-1) <= x <= y < 2^n.

The programs for A394988, there is no canonical definition to state claims against.
-/

/-! ## A394988.P7062040888793588438

`floor(log2(A394987(n+1)+1))`
-/

namespace A394988.P7062040888793588438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A394987 (n + 1) + 1).toNat

end

end A394988.P7062040888793588438

/-! ## A394988.P5498730562183459096

`A115573(A227269(n+1))+comp[2*(n+1)]`
-/

namespace A394988.P5498730562183459096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115573 (A227269 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A394988.P5498730562183459096

/-! ## A394988.P9783901864255652754

`A079978(A157274(n))+A004277(n)`
-/

namespace A394988.P9783901864255652754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A157274 n).toNat + A004277 n

end

end A394988.P9783901864255652754

/-! ## A394988.P6003660425738278970

`A010060(A222608(n+1))+A005843(n)`
-/

namespace A394988.P6003660425738278970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A222608 (n + 1)).toNat + A005843 n

end

end A394988.P6003660425738278970

/-! ## A394988.P4567103084518117017

`A141743(A281080(n+1))+A004277(n)`
-/

namespace A394988.P4567103084518117017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141743 (A281080 (n + 1)).toNat + A004277 n

end

end A394988.P4567103084518117017

/-!
# A394989: a(n) is the smaller of the two factors whose product is A394987.

The programs for A394989, there is no canonical definition to state claims against.
-/

/-! ## A394989.P2083677402655145774

`A394987(n+1)/A394990(n+1)`
-/

namespace A394989.P2083677402655145774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394987 (n + 1) : ℚ) / (A394990 (n + 1) : ℚ)

end

end A394989.P2083677402655145774

/-! ## A394989.P17624047314178643620

`A378359(n+1)+A375598(A001595(n))`
-/

namespace A394989.P17624047314178643620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378359 (n + 1) + A375598 (A001595 n).toNat

end

end A394989.P17624047314178643620

/-! ## A394989.P4338925248508990968

`A221914(A005176(n+2))+A000225(n)`
-/

namespace A394989.P4338925248508990968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221914 (A005176 (n + 2)).toNat + A000225 n

end

end A394989.P4338925248508990968

/-!
# A394990: a(n) is the larger of the two factors whose product is A394987.

The programs for A394990, there is no canonical definition to state claims against.
-/

/-! ## A394990.P16872023726479666645

`A394987(n+1)/A394989(n+1)`
-/

namespace A394990.P16872023726479666645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394987 (n + 1) : ℚ) / (A394989 (n + 1) : ℚ)

end

end A394990.P16872023726479666645

/-! ## A394990.P1931250804532975464

`A371594(A196724(n))`
-/

namespace A394990.P1931250804532975464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371594 (A196724 n).toNat

end

end A394990.P1931250804532975464

/-! ## A394990.P8013849725178008336

`A033677(A394987(n+1))`
-/

namespace A394990.P8013849725178008336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A394987 (n + 1)).toNat

end

end A394990.P8013849725178008336

/-!
# A394991: a(n) is the greatest product x*y of two integers 2^(n-1) <= x <= y < 2^n maximizing the Hamming weight of this product.

The programs for A394991, there is no canonical definition to state claims against.
-/

/-! ## A394991.P9940650973760379997

`A395003(n+1)*A395004(n+1)`
-/

namespace A394991.P9940650973760379997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395003 (n + 1) * A395004 (n + 1)

end

end A394991.P9940650973760379997

/-! ## A394991.P3372119756064609242

`A317538(A174965(n+4)+A020988(n))`
-/

namespace A394991.P3372119756064609242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317538 (A174965 (n + 4) + A020988 n).toNat

end

end A394991.P3372119756064609242

/-!
# A394992: a(n) = n! * Sum_{k=0..n} F(2*k)/k!, where F(n) is the n-th Fibonacci number, A000045(n).

The programs for A394992, the canonical program `A394992.P15021251122541274444` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394992 has offset 0).

The definition of A394992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394992.P8052038443036170670

`∑{#}[n, C(n, #)*A111139(#)]`
-/

namespace A394992.P8052038443036170670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A111139 k

end

end A394992.P8052038443036170670

namespace A394992

/-- `∑{#}[n, C(n, #)*A111139(#)]` -/
def P8052038443036170670.Spec : Prop :=
  ∀ n, P8052038443036170670.a n = A394992 n

end A394992

/-! ## A394992.P15021251122541274444

`A000045(2*n)+n*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394992

/-- `A000045(2*n)+n*a(n-1)` -/
def P15021251122541274444.Spec : Prop :=
  ∀ n, P15021251122541274444.a n = A394992 n

theorem P15021251122541274444.correct : P15021251122541274444.Spec := by
  intro n
  simp only [A394992]

end A394992

/-!
# A394993: a(n) = n! * Sum_{k=0..n} (-1)^(k+1)*F(k)/k!, where F(n) is the n-th Fibonacci number, A000045(n).

The programs for A394993, the canonical program `A394993.P16828162771782242662` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394993 has offset 0).

The definition of A394993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394993.P16828162771782242662

`(-1)^(n+1)*A000045(n)+n*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394993

/-- `(-1)^(n+1)*A000045(n)+n*a(n-1)` -/
def P16828162771782242662.Spec : Prop :=
  ∀ n, P16828162771782242662.a n = A394993 n

theorem P16828162771782242662.correct : P16828162771782242662.Spec := by
  intro n
  simp only [A394993]

end A394993

/-! ## A394993.P18258865456378003521

`∑{#}[n, C(n, #)*(-1)^(n-#)*A111139(#)]`
-/

namespace A394993.P18258865456378003521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A111139 k : ℚ)

end

end A394993.P18258865456378003521

namespace A394993

/-- `∑{#}[n, C(n, #)*(-1)^(n-#)*A111139(#)]` -/
def P18258865456378003521.Spec : Prop :=
  ∀ n, P18258865456378003521.a n = (A394993 n : ℚ)

end A394993

/-!
# A394994: Matchable numbers: an integer k is matchable if there is a coprime matching between [1..tau(k)] and D(k), where tau(k) is A000005(k) and D(k) is the set of divisors of k.

The programs for A394994, there is no canonical definition to state claims against.
-/

/-! ## A394994.P8248324203725491988

`lt[A007088(A035444(n)), A014682(n)]`
-/

namespace A394994.P8248324203725491988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P8248324203725491988

/-! ## A394994.P1844375574813593608

`lt[A239261(n), A002024(A092964(n))]`
-/

namespace A394994.P1844375574813593608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A092964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P1844375574813593608

/-! ## A394994.P3686456444969292330

`lt[A007088(A035444(n)), A178503(n+1)]`
-/

namespace A394994.P3686456444969292330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P3686456444969292330

/-! ## A394994.P1425056964020067658

`lt[A007088(A035444(n)), A297113(n+1)]`
-/

namespace A394994.P1425056964020067658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P1425056964020067658

/-! ## A394994.P5257945439823018649

`lt[A007088(A035444(n)), A378223(n+1)]`
-/

namespace A394994.P5257945439823018649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P5257945439823018649

/-! ## A394994.P2566451072684442667

`lt[A007088(A035444(n)), A066839(3*(n+1))]`
-/

namespace A394994.P2566451072684442667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P2566451072684442667

/-! ## A394994.P15064712554098062243

`lt[A007088(A035444(n)), A324888(3*(n+1))]`
-/

namespace A394994.P15064712554098062243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P15064712554098062243

/-! ## A394994.P2078624240235094356

`lt[A239261(n), A354531(A296150(n+1))]`
-/

namespace A394994.P2078624240235094356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354531 (A296150 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P2078624240235094356

/-! ## A394994.P9898999006302984461

`∪[A004396(2*n+1), A325042(A347857(n))]`
-/

namespace A394994.P9898999006302984461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325042 (A347857 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394994.P9898999006302984461

/-! ## A394994.P5582309606994171345

`∪[A042968(n+1), A282028(A003683(3*n+2))]`
-/

namespace A394994.P5582309606994171345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282028 (A003683 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394994.P5582309606994171345

/-! ## A394994.P12740910039529121992

`lt[A209862(A035444(n+4)), A077610(2*(n+2))]`
-/

namespace A394994.P12740910039529121992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (A035444 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P12740910039529121992

/-! ## A394994.P2173320388100946020

`comp[4*(A302998(n)+1)-1]+1`
-/

namespace A394994.P2173320388100946020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A302998 n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A394994.P2173320388100946020

/-! ## A394994.P11744036044161612147

`lt[A239261(n), A026416(A102426(n+1))]`
-/

namespace A394994.P11744036044161612147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (A102426 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P11744036044161612147

/-! ## A394994.P14998943990483334413

`lt[A239261(n), A275806(A085913(2*(n+1)))]`
-/

namespace A394994.P14998943990483334413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A085913 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P14998943990483334413

/-! ## A394994.P10896971509472713825

`lt[A328800(n), A363329(1+C(n, 2))]`
-/

namespace A394994.P10896971509472713825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363329 (1 + Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P10896971509472713825

/-! ## A394994.P2497923815260019310

`lt[A000290(A035444(n)), A001227(n+1)]`
-/

namespace A394994.P2497923815260019310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P2497923815260019310

/-! ## A394994.P15878928721077945706

`lt[A008585(A035444(n)), A059855(n+1)]`
-/

namespace A394994.P15878928721077945706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P15878928721077945706

/-! ## A394994.P16014897484036605962

`lt[A000290(A035444(n)), A077610(2*n+4)]`
-/

namespace A394994.P16014897484036605962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (2 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394994.P16014897484036605962

/-! ## A394994.P9544529939744703360

`lt[-((n-1)*a(n-2)), n]` with `a(0)=1, a(1)=0`
-/

namespace A394994.P9544529939744703360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  -(((n : ℤ) - 1) * f1 (n - 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A394994.P9544529939744703360

/-!
# A394997: Wiener index of the divisor prime graph of n.

The programs for A394997, the canonical program `A394997.P14454066831357329865` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394997 has offset 1).

The definition of A394997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394997.P14454066831357329865

`A337524(n+1)-A063647(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A394997

/-- `A337524(n+1)-A063647(n+1)` -/
def P14454066831357329865.Spec : Prop :=
  ∀ n, P14454066831357329865.a n = A394997 (n + 1)

theorem P14454066831357329865.correct : P14454066831357329865.Spec := by
  intro n
  simp only [A394997, Nat.add_sub_cancel]

end A394997

/-! ## A394997.P8277013927674905861

`A089233(n+1)+A065814(n+1)`
-/

namespace A394997.P8277013927674905861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1) + A065814 (n + 1)

end

end A394997.P8277013927674905861

namespace A394997

/-- `A089233(n+1)+A065814(n+1)` -/
def P8277013927674905861.Spec : Prop :=
  ∀ n, P8277013927674905861.a n = A394997 (n + 1)

end A394997

/-! ## A394997.P5570674986332529140

`A275387(n+1)+A066446(n+1)`
-/

namespace A394997.P5570674986332529140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275387 (n + 1) + A066446 (n + 1)

end

end A394997.P5570674986332529140

namespace A394997

/-- `A275387(n+1)+A066446(n+1)` -/
def P5570674986332529140.Spec : Prop :=
  ∀ n, P5570674986332529140.a n = A394997 (n + 1)

end A394997

/-! ## A394997.P4443502660411192633

`A343877(n+1)+A333976(n+1)`
-/

namespace A394997.P4443502660411192633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343877 (n + 1) + A333976 (n + 1)

end

end A394997.P4443502660411192633

namespace A394997

/-- `A343877(n+1)+A333976(n+1)` -/
def P4443502660411192633.Spec : Prop :=
  ∀ n, P4443502660411192633.a n = A394997 (n + 1)

end A394997

/-! ## A394997.P12740024165906050678

`∑{d}[n+1, A066446(#)*A157657((n+1)/#)]`
-/

namespace A394997.P12740024165906050678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066446 d * A157657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A394997.P12740024165906050678

namespace A394997

/-- `∑{d}[n+1, A066446(#)*A157657((n+1)/#)]` -/
def P12740024165906050678.Spec : Prop :=
  ∀ n, P12740024165906050678.a n = A394997 (n + 1)

end A394997

/-! ## A394997.P5960020571797561708

`A275387(n+1)+A275387(n+1)+A063647(n+1)`
-/

namespace A394997.P5960020571797561708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275387 (n + 1) + (A275387 (n + 1) + A063647 (n + 1))

end

end A394997.P5960020571797561708

namespace A394997

/-- `A275387(n+1)+A275387(n+1)+A063647(n+1)` -/
def P5960020571797561708.Spec : Prop :=
  ∀ n, P5960020571797561708.a n = A394997 (n + 1)

end A394997

/-! ## A394997.P3858335319681530839

`A066446(n+1)+A066446(n+1)-A063647(n+1)`
-/

namespace A394997.P3858335319681530839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + (A066446 (n + 1) - A063647 (n + 1))

end

end A394997.P3858335319681530839

namespace A394997

/-- `A066446(n+1)+A066446(n+1)-A063647(n+1)` -/
def P3858335319681530839.Spec : Prop :=
  ∀ n, P3858335319681530839.a n = A394997 (n + 1)

end A394997

/-! ## A394997.P14102606926174369765

`A184389(n+1)+A275387(n+1)-A000005(n+1)`
-/

namespace A394997.P14102606926174369765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + (A275387 (n + 1) - A000005 (n + 1))

end

end A394997.P14102606926174369765

namespace A394997

/-- `A184389(n+1)+A275387(n+1)-A000005(n+1)` -/
def P14102606926174369765.Spec : Prop :=
  ∀ n, P14102606926174369765.a n = A394997 (n + 1)

end A394997

/-!
# A394998: Number of undirected self-avoiding paths of length n in a cubic lattice, reduced for symmetry (with rotations and reflections not counted as distinct).

The programs for A394998, there is no canonical definition to state claims against.
-/

/-! ## A394998.P7878262262138032061

`A026834(A150209(n))`
-/

namespace A394998.P7878262262138032061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150209 n).toNat

end

end A394998.P7878262262138032061

/-! ## A394998.P7184396836960079731

`A371587(A149062(n))`
-/

namespace A394998.P7184396836960079731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A149062 n).toNat

end

end A394998.P7184396836960079731

/-! ## A394998.P5814346393998822479

`A323648(A344490(n+1))`
-/

namespace A394998.P5814346393998822479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323648 (A344490 (n + 1)).toNat

end

end A394998.P5814346393998822479

