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
import Seq.B002.C006
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A140500: Period 18: repeat [1, 1, -2, 2, -1, -1, 1, -2, 1, -1, -1, 2, -2, 1, 1, -1, 2, -1].

The programs for A140500, the canonical program `A140500.P2683069188128357573` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140500 has offset 0).

The definition of A140500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140500.P2683069188128357573

`a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=2, a(4)=-1, a(5)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140500

/-- `a(n-3)-a(n-6)` -/
def P2683069188128357573.Spec : Prop :=
  ∀ n, P2683069188128357573.a n = A140500 n

theorem P2683069188128357573.correct : P2683069188128357573.Spec := by
  intro n
  simp only [A140500]

end A140500

/-!
# A140503: Triangle T(d,n) read by rows, the n-th term of the d-th differences of the Jacobsthal sequence A001045.

The programs for A140503, the canonical program `A140503.P7282706836659793134` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140503 has offset 1).

The definition of A140503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140503.P7282706836659793134

`A059268(n)-2*A140944(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140503

/-- `A059268(n)-2*A140944(n)` -/
def P7282706836659793134.Spec : Prop :=
  ∀ n, P7282706836659793134.a n = A140503 (n + 1)

theorem P7282706836659793134.correct : P7282706836659793134.Spec := by
  intro n
  simp only [A140503, Nat.add_sub_cancel]

end A140503

/-! ## A140503.P12713661411457128497

`A140944(comp[∑[n-1]])`
-/

namespace A140503.P12713661411457128497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A140503.P12713661411457128497

namespace A140503

/-- `A140944(comp[∑[n-1]])` -/
def P12713661411457128497.Spec : Prop :=
  ∀ n, P12713661411457128497.a n = A140503 (n + 1)

end A140503

/-! ## A140503.P11806191749603666174

`A065620(A130328(n))`
-/

namespace A140503.P11806191749603666174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A130328 n).toNat

end

end A140503.P11806191749603666174

namespace A140503

/-- `A065620(A130328(n))` -/
def P11806191749603666174.Spec : Prop :=
  ∀ n, P11806191749603666174.a n = A140503 (n + 1)

end A140503

/-! ## A140503.P1651918829025390351

`A065620(A204985(n+1)/2)`
-/

namespace A140503.P1651918829025390351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.roundAway ((A204985 (n + 1) : ℚ) / 2)).toNat

end

end A140503.P1651918829025390351

namespace A140503

/-- `A065620(A204985(n+1)/2)` -/
def P1651918829025390351.Spec : Prop :=
  ∀ n, P1651918829025390351.a n = A140503 (n + 1)

end A140503

/-! ## A140503.P14925472826964415541

`A065620(2^(comp[C(n, 2)]-(n+1))-A059268(n))`
-/

namespace A140503.P14925472826964415541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) : ℤ) - (A059268 n : ℚ))).toNat

end

end A140503.P14925472826964415541

namespace A140503

/-- `A065620(2^(comp[C(n, 2)]-(n+1))-A059268(n))` -/
def P14925472826964415541.Spec : Prop :=
  ∀ n, P14925472826964415541.a n = A140503 (n + 1)

end A140503

/-! ## A140503.P10307251354741206500

`A065620(2^(comp[C(n, 2)]-n)/2-A059268(n))`
-/

namespace A140503.P10307251354741206500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) / 2 - (A059268 n : ℚ))).toNat

end

end A140503.P10307251354741206500

namespace A140503

/-- `A065620(2^(comp[C(n, 2)]-n)/2-A059268(n))` -/
def P10307251354741206500.Spec : Prop :=
  ∀ n, P10307251354741206500.a n = A140503 (n + 1)

end A140503

/-! ## A140503.P12396047559200033497

`A065620(A173787(n)+A137688(n))`
-/

namespace A140503.P12396047559200033497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A173787 n + A137688 n).toNat

end

end A140503.P12396047559200033497

namespace A140503

/-- `A065620(A173787(n)+A137688(n))` -/
def P12396047559200033497.Spec : Prop :=
  ∀ n, P12396047559200033497.a n = A140503 (n + 1)

end A140503

/-! ## A140503.P661159209221908475

`A065620(A054429(A099627(n)))`
-/

namespace A140503.P661159209221908475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A054429 (A099627 n).toNat).toNat

end

end A140503.P661159209221908475

namespace A140503

/-- `A065620(A054429(A099627(n)))` -/
def P661159209221908475.Spec : Prop :=
  ∀ n, P661159209221908475.a n = A140503 (n + 1)

end A140503

/-! ## A140503.P11346291461004645710

`A065620(A080079(A018900(n+1)))`
-/

namespace A140503.P11346291461004645710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A080079 (A018900 (n + 1)).toNat).toNat

end

end A140503.P11346291461004645710

namespace A140503

/-- `A065620(A080079(A018900(n+1)))` -/
def P11346291461004645710.Spec : Prop :=
  ∀ n, P11346291461004645710.a n = A140503 (n + 1)

end A140503

/-!
# A140504: a(n) = 2^n + 4.

The programs for A140504, the canonical program `A140504.P8641820625195625758` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140504 has offset 0).

The definition of A140504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4` (program `A140504.P8641820625195625758`, by `A140504.P8641820625195625758.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140504.P8641820625195625758

`2^n+4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140504

/-- `2^n+4` -/
def P8641820625195625758.Spec : Prop :=
  ∀ n, (P8641820625195625758.a n : ℤ) = A140504 n

theorem P8641820625195625758.correct : P8641820625195625758.Spec := by
  intro n
  simp only [A140504]

end A140504

/-!
# A140505: Second differences of Jacobsthal sequence A001045, pairs with even and odd indices swapped.

The programs for A140505, the canonical program `A140505.P3081124945350733694` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140505 has offset 0).

The definition of A140505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140505.P3081124945350733694

`4*(a(n-2)-(-1)^n)` with `a(0)=2, a(1)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140505

/-- `4*(a(n-2)-(-1)^n)` -/
def P3081124945350733694.Spec : Prop :=
  ∀ n, P3081124945350733694.a n = A140505 n

theorem P3081124945350733694.correct : P3081124945350733694.Spec := by
  intro n
  simp only [A140505]

end A140505

/-! ## A140505.P14255046109316606085

`A141416(2*xor(1, n))`
-/

namespace A140505.P14255046109316606085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 (2 * Nat.xor 1 n)

end

end A140505.P14255046109316606085

namespace A140505

/-- `A141416(2*xor(1, n))` -/
def P14255046109316606085.Spec : Prop :=
  ∀ n, P14255046109316606085.a n = A140505 n

end A140505

/-! ## A140505.P473051004048815044

`A141416(xor(3, Δ[n²]))`
-/

namespace A140505.P473051004048815044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 (Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A140505.P473051004048815044

namespace A140505

/-- `A141416(xor(3, Δ[n²]))` -/
def P473051004048815044.Spec : Prop :=
  ∀ n, P473051004048815044.a n = A140505 n

end A140505

/-! ## A140505.P12052974563114031341

`A001045(xor(1, n))+(-1)^n`
-/

namespace A140505.P12052974563114031341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Nat.xor 1 n) + (-1) ^ n

end

end A140505.P12052974563114031341

namespace A140505

/-- `A001045(xor(1, n))+(-1)^n` -/
def P12052974563114031341.Spec : Prop :=
  ∀ n, P12052974563114031341.a n = A140505 n

end A140505

/-! ## A140505.P14018375963171472352

`A084221(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A140505.P14018375963171472352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A084221 (n - 1) - a (n - 1)

end

end A140505.P14018375963171472352

namespace A140505

/-- `A084221(n-1)-a(n-1)` -/
def P14018375963171472352.Spec : Prop :=
  ∀ n, P14018375963171472352.a n = A140505 n

end A140505

/-! ## A140505.P2320933736343064543

`A092808(n)+A033999(n)`
-/

namespace A140505.P2320933736343064543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n + A033999 n

end

end A140505.P2320933736343064543

namespace A140505

/-- `A092808(n)+A033999(n)` -/
def P2320933736343064543.Spec : Prop :=
  ∀ n, P2320933736343064543.a n = A140505 n

end A140505

/-! ## A140505.P16727625129158503617

`A094359(n)+2*A033999(n)`
-/

namespace A140505.P16727625129158503617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 n + 2 * A033999 n

end

end A140505.P16727625129158503617

namespace A140505

/-- `A094359(n)+2*A033999(n)` -/
def P16727625129158503617.Spec : Prop :=
  ∀ n, P16727625129158503617.a n = A140505 n

end A140505

/-! ## A140505.P13670407049031931658

`A141416(2*(A033999(n)+n))`
-/

namespace A140505.P13670407049031931658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 (2 * (A033999 n + (n : ℤ))).toNat

end

end A140505.P13670407049031931658

namespace A140505

/-- `A141416(2*(A033999(n)+n))` -/
def P13670407049031931658.Spec : Prop :=
  ∀ n, P13670407049031931658.a n = A140505 n

end A140505

/-! ## A140505.P2231264975723636092

`A033999(n)+A001045(xor(1, n))`
-/

namespace A140505.P2231264975723636092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A001045 (Nat.xor 1 n)

end

end A140505.P2231264975723636092

namespace A140505

/-- `A033999(n)+A001045(xor(1, n))` -/
def P2231264975723636092.Spec : Prop :=
  ∀ n, P2231264975723636092.a n = A140505 n

end A140505

/-! ## A140505.P16347196973071402746

`A001045(A004442(n))+(-1)^n`
-/

namespace A140505.P16347196973071402746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004442 n).toNat + (-1) ^ n

end

end A140505.P16347196973071402746

namespace A140505

/-- `A001045(A004442(n))+(-1)^n` -/
def P16347196973071402746.Spec : Prop :=
  ∀ n, P16347196973071402746.a n = A140505 n

end A140505

/-! ## A140505.P17478596110842414092

`A015811(and(1, -n))+A001045(xor(1, n))`
-/

namespace A140505.P17478596110842414092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 (Int.land 1 (-(n : ℤ))).toNat + A001045 (Nat.xor 1 n)

end

end A140505.P17478596110842414092

namespace A140505

/-- `A015811(and(1, -n))+A001045(xor(1, n))` -/
def P17478596110842414092.Spec : Prop :=
  ∀ n, P17478596110842414092.a n = A140505 n

end A140505

/-! ## A140505.P3755259171064356882

`A133730(2*n)+A133730(A166519(n))`
-/

namespace A140505.P3755259171064356882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (2 * n) + A133730 (A166519 n).toNat

end

end A140505.P3755259171064356882

namespace A140505

/-- `A133730(2*n)+A133730(A166519(n))` -/
def P3755259171064356882.Spec : Prop :=
  ∀ n, P3755259171064356882.a n = A140505 n

end A140505

/-! ## A140505.P4649150887162812854

`A033999(n)+A001045(A033999(n)+n)`
-/

namespace A140505.P4649150887162812854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A001045 (A033999 n + (n : ℤ)).toNat

end

end A140505.P4649150887162812854

namespace A140505

/-- `A033999(n)+A001045(A033999(n)+n)` -/
def P4649150887162812854.Spec : Prop :=
  ∀ n, P4649150887162812854.a n = A140505 n

end A140505

/-! ## A140505.P3275874997879990965

`A092808(n)+A092808(n)-A094359(n)`
-/

namespace A140505.P3275874997879990965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n + (A092808 n - A094359 n)

end

end A140505.P3275874997879990965

namespace A140505

/-- `A092808(n)+A092808(n)-A094359(n)` -/
def P3275874997879990965.Spec : Prop :=
  ∀ n, P3275874997879990965.a n = A140505 n

end A140505

/-! ## A140505.P1355413905021412073

`A033999(n)*A084247(A033999(n)+n)`
-/

namespace A140505.P1355413905021412073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A084247 (A033999 n + (n : ℤ)).toNat

end

end A140505.P1355413905021412073

namespace A140505

/-- `A033999(n)*A084247(A033999(n)+n)` -/
def P1355413905021412073.Spec : Prop :=
  ∀ n, P1355413905021412073.a n = A140505 n

end A140505

/-! ## A140505.P14669629095241785174

`A084640(A124625(n))+A077925(n)`
-/

namespace A140505.P14669629095241785174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 (A124625 n).toNat + A077925 n

end

end A140505.P14669629095241785174

namespace A140505

/-- `A084640(A124625(n))+A077925(n)` -/
def P14669629095241785174.Spec : Prop :=
  ∀ n, P14669629095241785174.a n = A140505 n

end A140505

/-! ## A140505.P7338840485033308693

`Δ[Δ[A082383(A004442(n))]]`
-/

namespace A140505.P7338840485033308693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082383 (A004442 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140505.P7338840485033308693

namespace A140505

/-- `Δ[Δ[A082383(A004442(n))]]` -/
def P7338840485033308693.Spec : Prop :=
  ∀ n, P7338840485033308693.a n = A140505 n

end A140505

/-! ## A140505.P2820366289973018813

`A092808(n+2)-A094360(n)`
-/

namespace A140505.P2820366289973018813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 (n + 2) - A094360 n

end

end A140505.P2820366289973018813

namespace A140505

/-- `A092808(n+2)-A094360(n)` -/
def P2820366289973018813.Spec : Prop :=
  ∀ n, P2820366289973018813.a n = A140505 n

end A140505

/-! ## A140505.P11749267041845777484

`2*A092808(n)-A094359(n)`
-/

namespace A140505.P11749267041845777484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092808 n - A094359 n

end

end A140505.P11749267041845777484

namespace A140505

/-- `2*A092808(n)-A094359(n)` -/
def P11749267041845777484.Spec : Prop :=
  ∀ n, P11749267041845777484.a n = A140505 n

end A140505

/-!
# A140506: Primes congruent to 11 or 19 mod 30.

The programs for A140506, the canonical program `A140506.P15350674435310691045` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140506 has offset 1).

The definition of A140506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140506.P15350674435310691045

`p?[15*n-a(n-1)]` with `a(0)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140506

/-- `p?[15*n-a(n-1)]` -/
def P15350674435310691045.Spec : Prop :=
  ∀ n, P15350674435310691045.a n = A140506 (n + 1)

theorem P15350674435310691045.correct : P15350674435310691045.Spec := by
  intro n
  simp only [A140506, Nat.add_sub_cancel]

end A140506

/-! ## A140506.P934878909524736730

`∪[A132232(n+1), A132234(n+1)]`
-/

namespace A140506.P934878909524736730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P934878909524736730

namespace A140506

/-- `∪[A132232(n+1), A132234(n+1)]` -/
def P934878909524736730.Spec : Prop :=
  ∀ n, (P934878909524736730.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P459433371368467715

`p?[a(n-1)+gcd(6, n+1)]` with `a(0)=4`
-/

namespace A140506.P459433371368467715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + Nat.gcd 6 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140506.P459433371368467715

namespace A140506

/-- `p?[a(n-1)+gcd(6, n+1)]` -/
def P459433371368467715.Spec : Prop :=
  ∀ n, (P459433371368467715.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P11338192455643803355

`∩[A038872(n+1), A271367(n+1)]`
-/

namespace A140506.P11338192455643803355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P11338192455643803355

namespace A140506

/-- `∩[A038872(n+1), A271367(n+1)]` -/
def P11338192455643803355.Spec : Prop :=
  ∀ n, (P11338192455643803355.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P15696423881661708002

`∩[A045468(n+1), A271367(n+1)]`
-/

namespace A140506.P15696423881661708002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P15696423881661708002

namespace A140506

/-- `∩[A045468(n+1), A271367(n+1)]` -/
def P15696423881661708002.Spec : Prop :=
  ∀ n, (P15696423881661708002.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P6918313859690988625

`∩[A064739(n+1), A271367(n+1)]`
-/

namespace A140506.P6918313859690988625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P6918313859690988625

namespace A140506

/-- `∩[A064739(n+1), A271367(n+1)]` -/
def P6918313859690988625.Spec : Prop :=
  ∀ n, (P6918313859690988625.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P12825307556591026023

`∩[A076518(n+1), A271367(n+1)]`
-/

namespace A140506.P12825307556591026023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P12825307556591026023

namespace A140506

/-- `∩[A076518(n+1), A271367(n+1)]` -/
def P12825307556591026023.Spec : Prop :=
  ∀ n, (P12825307556591026023.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P15665559580613993496

`∩[A271367(n+1), A341783(n+1)]`
-/

namespace A140506.P15665559580613993496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P15665559580613993496

namespace A140506

/-- `∩[A271367(n+1), A341783(n+1)]` -/
def P15665559580613993496.Spec : Prop :=
  ∀ n, (P15665559580613993496.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P15456230881828347094

`p?[∑[A288023(A014963(a(n-1))+1)]+n+1]` with `a(0)=3`
-/

namespace A140506.P15456230881828347094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A288023 (A014963 (f2 (n - 1)).toNat + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P15456230881828347094

namespace A140506

/-- `p?[∑[A288023(A014963(a(n-1))+1)]+n+1]` -/
def P15456230881828347094.Spec : Prop :=
  ∀ n, P15456230881828347094.a n = A140506 (n + 1)

end A140506

/-! ## A140506.P4218241579077949940

`∩[A219612(n+1), A271367(n+1)]`
-/

namespace A140506.P4218241579077949940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P4218241579077949940

namespace A140506

/-- `∩[A219612(n+1), A271367(n+1)]` -/
def P4218241579077949940.Spec : Prop :=
  ∀ n, (P4218241579077949940.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P6165483273077979896

`∩[A023173(n+1), A271367(n+1)]`
-/

namespace A140506.P6165483273077979896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P6165483273077979896

namespace A140506

/-- `∩[A023173(n+1), A271367(n+1)]` -/
def P6165483273077979896.Spec : Prop :=
  ∀ n, (P6165483273077979896.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P8594622947909265045

`∩[A271367(n+1), A336403(n+1)]`
-/

namespace A140506.P8594622947909265045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140506.P8594622947909265045

namespace A140506

/-- `∩[A271367(n+1), A336403(n+1)]` -/
def P8594622947909265045.Spec : Prop :=
  ∀ n, (P8594622947909265045.a n : ℤ) = A140506 (n + 1)

end A140506

/-! ## A140506.P17060990153978109357

`p?[∑[A010200(n)]]`
-/

namespace A140506.P17060990153978109357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P17060990153978109357

namespace A140506

/-- `p?[∑[A010200(n)]]` -/
def P17060990153978109357.Spec : Prop :=
  ∀ n, P17060990153978109357.a n = A140506 (n + 1)

end A140506

/-! ## A140506.P5191655128362302994

`p?[A032766(n+3)+6*n+7]`
-/

namespace A140506.P5191655128362302994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 3) + (6 * n + 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P5191655128362302994

namespace A140506

/-- `p?[A032766(n+3)+6*n+7]` -/
def P5191655128362302994.Spec : Prop :=
  ∀ n, P5191655128362302994.a n = A140506 (n + 1)

end A140506

/-! ## A140506.P8403335952337826635

`p?[A017017(n)+A008619(n)]`
-/

namespace A140506.P8403335952337826635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P8403335952337826635

namespace A140506

/-- `p?[A017017(n)+A008619(n)]` -/
def P8403335952337826635.Spec : Prop :=
  ∀ n, P8403335952337826635.a n = A140506 (n + 1)

end A140506

/-! ## A140506.P268996034446590714

`p?[A110654(n)+A017029(n+1)]`
-/

namespace A140506.P268996034446590714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A017029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P268996034446590714

namespace A140506

/-- `p?[A110654(n)+A017029(n+1)]` -/
def P268996034446590714.Spec : Prop :=
  ∀ n, P268996034446590714.a n = A140506 (n + 1)

end A140506

/-! ## A140506.P11066696737784351274

`p?[A004526(n)+A017005(n)+2]`
-/

namespace A140506.P11066696737784351274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A017005 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P11066696737784351274

namespace A140506

/-- `p?[A004526(n)+A017005(n)+2]` -/
def P11066696737784351274.Spec : Prop :=
  ∀ n, P11066696737784351274.a n = A140506 (n + 1)

end A140506

/-! ## A140506.P2089856188425825667

`p?[A008619(n)+A016993(n)+2]`
-/

namespace A140506.P2089856188425825667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A016993 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P2089856188425825667

namespace A140506

/-- `p?[A008619(n)+A016993(n)+2]` -/
def P2089856188425825667.Spec : Prop :=
  ∀ n, P2089856188425825667.a n = A140506 (n + 1)

end A140506

/-! ## A140506.P4179875636904456646

`p?[A017185(n)+2-A007494(n)]`
-/

namespace A140506.P4179875636904456646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n + (2 - A007494 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P4179875636904456646

namespace A140506

/-- `p?[A017185(n)+2-A007494(n)]` -/
def P4179875636904456646.Spec : Prop :=
  ∀ n, P4179875636904456646.a n = A140506 (n + 1)

end A140506

/-! ## A140506.P16948718453555275198

`p?[A008619(n)+A017041(n)-2]`
-/

namespace A140506.P16948718453555275198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A017041 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P16948718453555275198

namespace A140506

/-- `p?[A008619(n)+A017041(n)-2]` -/
def P16948718453555275198.Spec : Prop :=
  ∀ n, P16948718453555275198.a n = A140506 (n + 1)

end A140506

/-!
# A140507: Numbers k such that 3^k-1 contains a divisor which is an overpseudoprime in base 3.

The programs for A140507, there is no canonical definition to state claims against.
-/

/-! ## A140507.P1809545557606104905

`comp[xor(A057954(n+1), A273005(3*(n+1)))]`
-/

namespace A140507.P1809545557606104905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057954 (n + 1)) (A273005 (3 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140507.P1809545557606104905

/-! ## A140507.P9498040925513388720

`comp[A242213(n+1)-A303314(n+1)+n]`
-/

namespace A140507.P9498040925513388720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242213 (n + 1) - A303314 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140507.P9498040925513388720

/-!
# A140508: Mobius transform applied twice to A001414.

The programs for A140508, there is no canonical definition to state claims against.
-/

/-! ## A140508.P6292471157648536214

`∑{p}[n+1, -#]*∏{e}[n+1, floor(log(atan(#)))]`
-/

namespace A140508.P6292471157648536214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) * (∏ p ∈ Nat.primeFactors (f2 n), ⌊Real.log (Real.arctan (Nat.factorization (f2 n) p : ℝ))⌋)

end

end A140508.P6292471157648536214

/-! ## A140508.P10985993135738836127

`-round(acot(∏{e}[n+1, -#]))*∑{p}[n+1, #]`
-/

namespace A140508.P10985993135738836127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ)) * ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ))

end

end A140508.P10985993135738836127

/-! ## A140508.P2187410707387469483

`-∑{p}[n+1, #]*∏{e}[n+1, -C(2, #+1)]`
-/

namespace A140508.P2187410707387469483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.choose 2 (Nat.factorization (f2 n) p + 1) : ℤ))))

end

end A140508.P2187410707387469483

/-! ## A140508.P4160452792136475678

`round(-∏{p}[n+1, -#]/(n+3))*∑{p}[n+1, #]`
-/

namespace A140508.P4160452792136475678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ))) * ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A140508.P4160452792136475678

/-! ## A140508.P12150610760072945539

`-∑{p}[n+1, #*val(n+1, #)]*∏{e}[n+1, -floor(1/#)]`
-/

namespace A140508.P12150610760072945539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋)))

end

end A140508.P12150610760072945539

/-! ## A140508.P17061081223842239391

`-∑{p}[n+1, #^val(n+1, #)]*∏{e}[n+1, 1-ceil(2/#)]`
-/

namespace A140508.P17061081223842239391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (1 - ⌈2 / (Nat.factorization (f2 n) p : ℚ)⌉)))

end

end A140508.P17061081223842239391

/-! ## A140508.P295493836365840956

`∑{p}[n+1, -#*A008683(n+1)]`
-/

namespace A140508.P295493836365840956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (-((p : ℤ) * A008683 (n + 1)))

end

end A140508.P295493836365840956

/-! ## A140508.P13549991162663307066

`A008683(-xor(n, -1))*∑{p}[xor(n, -1), -#]`
-/

namespace A140508.P13549991162663307066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (-Int.xor (n : ℤ) (-1)).toNat * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ)))

end

end A140508.P13549991162663307066

/-! ## A140508.P11525000885626312901

`A137851(A102631(n+1))`
-/

namespace A140508.P11525000885626312901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137851 (A102631 (n + 1)).toNat

end

end A140508.P11525000885626312901

/-! ## A140508.P891719450676055414

`A137851(A355264(n+1))`
-/

namespace A140508.P891719450676055414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137851 (A355264 (n + 1)).toNat

end

end A140508.P891719450676055414

/-!
# A140509: Numbers k such that 5^k-1 contains a divisor which is an overpseudoprime to base 5.

The programs for A140509, there is no canonical definition to state claims against.
-/

/-! ## A140509.P13337931684606783709

`A326178(lt[A000005(n+1), A366611(n+1)])`
-/

namespace A140509.P13337931684606783709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140509.P13337931684606783709

/-! ## A140509.P14944071313716032778

`lt[A158034(A007318(n)), A233327(n)]`
-/

namespace A140509.P14944071313716032778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158034 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140509.P14944071313716032778

/-! ## A140509.P15551863909909218953

`lt[A233418(A233419(n+1)), A001405(n)]`
-/

namespace A140509.P15551863909909218953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233418 (A233419 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140509.P15551863909909218953

/-! ## A140509.P10899669671348377732

`lt[A233418(A233419(n+1)), A004731(n)]`
-/

namespace A140509.P10899669671348377732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233418 (A233419 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140509.P10899669671348377732

/-! ## A140509.P1959505874823205211

`lt[A233400(A233419(n+1)), A233411(n)]`
-/

namespace A140509.P1959505874823205211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233400 (A233419 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140509.P1959505874823205211

/-!
# A140510: Position of the n-th Catalan number in the EKG sequence.

The programs for A140510, there is no canonical definition to state claims against.
-/

/-! ## A140510.P9722550758947621941

`∑{d}[C(2*n, n)/(n+1), A304526(#)]`
-/

namespace A140510.P9722550758947621941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A304526 d

end

end A140510.P9722550758947621941

/-! ## A140510.P9233286306794432493

`A064421(A000108(n))+1`
-/

namespace A140510.P9233286306794432493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (A000108 n).toNat + 1

end

end A140510.P9233286306794432493

/-! ## A140510.P12577745944035252301

`A064664(A000108(n))`
-/

namespace A140510.P12577745944035252301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A000108 n).toNat

end

end A140510.P12577745944035252301

/-! ## A140510.P6109213862670028941

`A064664(A211216(n))`
-/

namespace A140510.P6109213862670028941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A211216 n).toNat

end

end A140510.P6109213862670028941

/-! ## A140510.P16500015103261478490

`A064664(A242450(n))`
-/

namespace A140510.P16500015103261478490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A242450 n).toNat

end

end A140510.P16500015103261478490

/-!
# A140511: a(n) = (prime(n)^2 + prime(n+1))/2.

The programs for A140511, the canonical program `A140511.P17287606289736036124` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140511 has offset 2).

The definition of A140511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140511.P17287606289736036124

`A144519(n+1)+A028334(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140511

/-- `A144519(n+1)+A028334(n+2)` -/
def P17287606289736036124.Spec : Prop :=
  ∀ n, P17287606289736036124.a n = A140511 (n + 2)

theorem P17287606289736036124.correct : P17287606289736036124.Spec := by
  intro n
  simp only [A140511, Nat.add_sub_cancel]

end A140511

/-! ## A140511.P532744440466609439

`(A215848(n+1)+A065091(n+1)²)/2`
-/

namespace A140511.P532744440466609439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215848 (n + 1) + A065091 (n + 1) ^ 2 : ℚ) / 2

end

end A140511.P532744440466609439

namespace A140511

/-- `(A215848(n+1)+A065091(n+1)²)/2` -/
def P532744440466609439.Spec : Prop :=
  ∀ n, P532744440466609439.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P8562386559226919547

`A352851(n+2)/2`
-/

namespace A140511.P8562386559226919547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352851 (n + 2) : ℚ) / 2

end

end A140511.P8562386559226919547

namespace A140511

/-- `A352851(n+2)/2` -/
def P8562386559226919547.Spec : Prop :=
  ∀ n, P8562386559226919547.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P17027927224928396907

`A034953(n+2)+A028334(n+2)`
-/

namespace A140511.P17027927224928396907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 2) + A028334 (n + 2)

end

end A140511.P17027927224928396907

namespace A140511

/-- `A034953(n+2)+A028334(n+2)` -/
def P17027927224928396907.Spec : Prop :=
  ∀ n, P17027927224928396907.a n = A140511 (n + 2)

end A140511

/-! ## A140511.P7226573741762515672

`A066885(n+2)+A005097(n+2)`
-/

namespace A140511.P7226573741762515672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (n + 2) + A005097 (n + 2)

end

end A140511.P7226573741762515672

namespace A140511

/-- `A066885(n+2)+A005097(n+2)` -/
def P7226573741762515672.Spec : Prop :=
  ∀ n, P7226573741762515672.a n = A140511 (n + 2)

end A140511

/-! ## A140511.P7029816833111293125

`A084921(n+2)+A006254(n+2)`
-/

namespace A140511.P7029816833111293125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 2) + A006254 (n + 2)

end

end A140511.P7029816833111293125

namespace A140511

/-- `A084921(n+2)+A006254(n+2)` -/
def P7029816833111293125.Spec : Prop :=
  ∀ n, P7029816833111293125.a n = A140511 (n + 2)

end A140511

/-! ## A140511.P11966358950220598962

`A110494(n+2)+A005097(n+2)`
-/

namespace A140511.P11966358950220598962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 2) + A005097 (n + 2)

end

end A140511.P11966358950220598962

namespace A140511

/-- `A110494(n+2)+A005097(n+2)` -/
def P11966358950220598962.Spec : Prop :=
  ∀ n, P11966358950220598962.a n = A140511 (n + 2)

end A140511

/-! ## A140511.P5865433767235280726

`A216244(n+2)+A006254(n+2)`
-/

namespace A140511.P5865433767235280726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 2) + A006254 (n + 2)

end

end A140511.P5865433767235280726

namespace A140511

/-- `A216244(n+2)+A006254(n+2)` -/
def P5865433767235280726.Spec : Prop :=
  ∀ n, P5865433767235280726.a n = A140511 (n + 2)

end A140511

/-! ## A140511.P4827795934163426275

`A008837(n+2)+A001043(n+2)/2`
-/

namespace A140511.P4827795934163426275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008837 (n + 2) : ℚ) + (A001043 (n + 2) : ℚ) / 2

end

end A140511.P4827795934163426275

namespace A140511

/-- `A008837(n+2)+A001043(n+2)/2` -/
def P4827795934163426275.Spec : Prop :=
  ∀ n, P4827795934163426275.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P4170504648855981271

`(A036689(n+2)+A001043(n+2))/2`
-/

namespace A140511.P4170504648855981271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 2) + A001043 (n + 2) : ℚ) / 2

end

end A140511.P4170504648855981271

namespace A140511

/-- `(A036689(n+2)+A001043(n+2))/2` -/
def P4170504648855981271.Spec : Prop :=
  ∀ n, P4170504648855981271.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P10404394006595982600

`(A036690(n+2)+A001223(n+2))/2`
-/

namespace A140511.P10404394006595982600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 2) + A001223 (n + 2) : ℚ) / 2

end

end A140511.P10404394006595982600

namespace A140511

/-- `(A036690(n+2)+A001223(n+2))/2` -/
def P10404394006595982600.Spec : Prop :=
  ∀ n, P10404394006595982600.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P11151563161530756650

`(A065091(n+2)+A001248(n+2))/2`
-/

namespace A140511.P11151563161530756650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 2) + A001248 (n + 2) : ℚ) / 2

end

end A140511.P11151563161530756650

namespace A140511

/-- `(A065091(n+2)+A001248(n+2))/2` -/
def P11151563161530756650.Spec : Prop :=
  ∀ n, P11151563161530756650.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P8545445292088144287

`(A049001(n+2)+A048974(n+2))/2`
-/

namespace A140511.P8545445292088144287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049001 (n + 2) + A048974 (n + 2) : ℚ) / 2

end

end A140511.P8545445292088144287

namespace A140511

/-- `(A049001(n+2)+A048974(n+2))/2` -/
def P8545445292088144287.Spec : Prop :=
  ∀ n, P8545445292088144287.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P18095815981666278786

`A045344(n+2)+A062235(n+2)/2`
-/

namespace A140511.P18095815981666278786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045344 (n + 2) : ℚ) + (A062235 (n + 2) : ℚ) / 2

end

end A140511.P18095815981666278786

namespace A140511

/-- `A045344(n+2)+A062235(n+2)/2` -/
def P18095815981666278786.Spec : Prop :=
  ∀ n, P18095815981666278786.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P9808853104187666339

`(A060800(n+2)+A046933(n+2))/2`
-/

namespace A140511.P9808853104187666339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060800 (n + 2) + A046933 (n + 2) : ℚ) / 2

end

end A140511.P9808853104187666339

namespace A140511

/-- `(A060800(n+2)+A046933(n+2))/2` -/
def P9808853104187666339.Spec : Prop :=
  ∀ n, P9808853104187666339.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P14176831390910090031

`(A182174(n+2)+A014690(n+2))/2`
-/

namespace A140511.P14176831390910090031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182174 (n + 2) + A014690 (n + 2) : ℚ) / 2

end

end A140511.P14176831390910090031

namespace A140511

/-- `(A182174(n+2)+A014690(n+2))/2` -/
def P14176831390910090031.Spec : Prop :=
  ∀ n, P14176831390910090031.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P10753095468322106517

`(A306190(n+2)+A092949(n+2))/2`
-/

namespace A140511.P10753095468322106517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306190 (n + 2) + A092949 (n + 2) : ℚ) / 2

end

end A140511.P10753095468322106517

namespace A140511

/-- `(A306190(n+2)+A092949(n+2))/2` -/
def P10753095468322106517.Spec : Prop :=
  ∀ n, P10753095468322106517.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P18173449463180672787

`(A079704(n+2)-A062235(n+2))/2`
-/

namespace A140511.P18173449463180672787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 2) - A062235 (n + 2) : ℚ) / 2

end

end A140511.P18173449463180672787

namespace A140511

/-- `(A079704(n+2)-A062235(n+2))/2` -/
def P18173449463180672787.Spec : Prop :=
  ∀ n, P18173449463180672787.a n = (A140511 (n + 2) : ℚ)

end A140511

/-! ## A140511.P5036625421601595470

`A005097(n+1)+A072205(n+2)+A005097(n+2)`
-/

namespace A140511.P5036625421601595470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (A072205 (n + 2) + A005097 (n + 2))

end

end A140511.P5036625421601595470

namespace A140511

/-- `A005097(n+1)+A072205(n+2)+A005097(n+2)` -/
def P5036625421601595470.Spec : Prop :=
  ∀ n, P5036625421601595470.a n = A140511 (n + 2)

end A140511

/-! ## A140511.P12637209463537367131

`A024675(n+1)+A000040(n+2)*A005097(n+1)`
-/

namespace A140511.P12637209463537367131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A000040 (n + 2) * A005097 (n + 1)

end

end A140511.P12637209463537367131

namespace A140511

/-- `A024675(n+1)+A000040(n+2)*A005097(n+1)` -/
def P12637209463537367131.Spec : Prop :=
  ∀ n, P12637209463537367131.a n = A140511 (n + 2)

end A140511

/-!
# A140513: Repeat 2^n n times.

The programs for A140513, the canonical program `A140513.P13579608035938851890` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140513 has offset 0).

The definition of A140513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140513.P13579608035938851890

`2*A137688(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140513

/-- `2*A137688(n)` -/
def P13579608035938851890.Spec : Prop :=
  ∀ n, P13579608035938851890.a n = A140513 n

theorem P13579608035938851890.correct : P13579608035938851890.Spec := by
  intro n
  simp only [A140513]

end A140513

/-! ## A140513.P4443701876502658006

`A018900(n+1)-A059268(n)`
-/

namespace A140513.P4443701876502658006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - A059268 n

end

end A140513.P4443701876502658006

namespace A140513

/-- `A018900(n+1)-A059268(n)` -/
def P4443701876502658006.Spec : Prop :=
  ∀ n, P4443701876502658006.a n = A140513 n

end A140513

/-! ## A140513.P4812743896643453667

`∏[char[∑[n]]+1]`
-/

namespace A140513.P4812743896643453667
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A140513.P4812743896643453667

namespace A140513

/-- `∏[char[∑[n]]+1]` -/
def P4812743896643453667.Spec : Prop :=
  ∀ n, (P4812743896643453667.a n : ℤ) = A140513 n

end A140513

/-! ## A140513.P3794654408012174251

`2^∑[char[C(n, 2)]]`
-/

namespace A140513.P3794654408012174251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140513.P3794654408012174251

namespace A140513

/-- `2^∑[char[C(n, 2)]]` -/
def P3794654408012174251.Spec : Prop :=
  ∀ n, (P3794654408012174251.a n : ℤ) = A140513 n

end A140513

/-! ## A140513.P5472217105428726580

`2^∑[and(1, char[∑[n]])]`
-/

namespace A140513.P5472217105428726580
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140513.P5472217105428726580

namespace A140513

/-- `2^∑[and(1, char[∑[n]])]` -/
def P5472217105428726580.Spec : Prop :=
  ∀ n, (P5472217105428726580.a n : ℤ) = A140513 n

end A140513

/-! ## A140513.P1898252114193921340

`2^(comp[C(n, 2)]-(n+1))`
-/

namespace A140513.P1898252114193921340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A140513.P1898252114193921340

namespace A140513

/-- `2^(comp[C(n, 2)]-(n+1))` -/
def P1898252114193921340.Spec : Prop :=
  ∀ n, P1898252114193921340.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P15597771632949451987

`2^(comp[C(n, 2)]-n)/2`
-/

namespace A140513.P15597771632949451987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) / 2

end

end A140513.P15597771632949451987

namespace A140513

/-- `2^(comp[C(n, 2)]-n)/2` -/
def P15597771632949451987.Spec : Prop :=
  ∀ n, P15597771632949451987.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P10411704723557293467

`2^∑[char[∑[n%(n+1)]]]`
-/

namespace A140513.P10411704723557293467
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140513.P10411704723557293467

namespace A140513

/-- `2^∑[char[∑[n%(n+1)]]]` -/
def P10411704723557293467.Spec : Prop :=
  ∀ n, (P10411704723557293467.a n : ℤ) = A140513 n

end A140513

/-! ## A140513.P3394895259245858642

`2*a(n-round(sqrt(2*n)))` with `a(0)=2`
-/

namespace A140513.P3394895259245858642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A140513.P3394895259245858642

namespace A140513

/-- `2*a(n-round(sqrt(2*n)))` -/
def P3394895259245858642.Spec : Prop :=
  ∀ n, (P3394895259245858642.a n : ℤ) = A140513 n

end A140513

/-! ## A140513.P9224161399379116034

`2^∑[char[a(n-1)+n]]` with `a(0)=0`
-/

namespace A140513.P9224161399379116034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140513.P9224161399379116034

namespace A140513

/-- `2^∑[char[a(n-1)+n]]` -/
def P9224161399379116034.Spec : Prop :=
  ∀ n, (P9224161399379116034.a n : ℤ) = A140513 n

end A140513

/-! ## A140513.P5106957055281473336

`2^(round(sqrt(2*n+1))%(n+2))`
-/

namespace A140513.P5106957055281473336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) (n + 2 : ℤ) : ℤ)

end

end A140513.P5106957055281473336

namespace A140513

/-- `2^(round(sqrt(2*n+1))%(n+2))` -/
def P5106957055281473336.Spec : Prop :=
  ∀ n, P5106957055281473336.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P9410006985574911404

`Δ[2*A007664(n)]`
-/

namespace A140513.P9410006985574911404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140513.P9410006985574911404

namespace A140513

/-- `Δ[2*A007664(n)]` -/
def P9410006985574911404.Spec : Prop :=
  ∀ n, P9410006985574911404.a n = A140513 n

end A140513

/-! ## A140513.P8140148989399638661

`2^∑[A010054(n)]`
-/

namespace A140513.P8140148989399638661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A140513.P8140148989399638661

namespace A140513

/-- `2^∑[A010054(n)]` -/
def P8140148989399638661.Spec : Prop :=
  ∀ n, P8140148989399638661.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P12604285461677139691

`A000079(∑[char[∑[n]]])`
-/

namespace A140513.P12604285461677139691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140513.P12604285461677139691

namespace A140513

/-- `A000079(∑[char[∑[n]]])` -/
def P12604285461677139691.Spec : Prop :=
  ∀ n, P12604285461677139691.a n = A140513 n

end A140513

/-! ## A140513.P487305866577294861

`A098354(n+1)/2`
-/

namespace A140513.P487305866577294861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098354 (n + 1) : ℚ) / 2

end

end A140513.P487305866577294861

namespace A140513

/-- `A098354(n+1)/2` -/
def P487305866577294861.Spec : Prop :=
  ∀ n, P487305866577294861.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P5017945246674617634

`2^A002024(n+1)`
-/

namespace A140513.P5017945246674617634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A140513.P5017945246674617634

namespace A140513

/-- `2^A002024(n+1)` -/
def P5017945246674617634.Spec : Prop :=
  ∀ n, P5017945246674617634.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P4079203948245208844

`2^(A003056(n)+1)`
-/

namespace A140513.P4079203948245208844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n + 1 : ℤ)

end

end A140513.P4079203948245208844

namespace A140513

/-- `2^(A003056(n)+1)` -/
def P4079203948245208844.Spec : Prop :=
  ∀ n, P4079203948245208844.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P14876597445365910485

`2^∑[A106459(n)²]`
-/

namespace A140513.P14876597445365910485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A140513.P14876597445365910485

namespace A140513

/-- `2^∑[A106459(n)²]` -/
def P14876597445365910485.Spec : Prop :=
  ∀ n, P14876597445365910485.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P17597018896864865734

`2^∑[A143433(n)²]`
-/

namespace A140513.P17597018896864865734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A140513.P17597018896864865734

namespace A140513

/-- `2^∑[A143433(n)²]` -/
def P17597018896864865734.Spec : Prop :=
  ∀ n, P17597018896864865734.a n = (A140513 n : ℚ)

end A140513

/-! ## A140513.P14527176752720261324

`2^∑[A143434(n)²]`
-/

namespace A140513.P14527176752720261324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A140513.P14527176752720261324

namespace A140513

/-- `2^∑[A143434(n)²]` -/
def P14527176752720261324.Spec : Prop :=
  ∀ n, P14527176752720261324.a n = (A140513 n : ℚ)

end A140513

/-!
# A140514: a(n) = A000931(n+4) - A010060(n).

The programs for A140514, the canonical program `A140514.P16181118793688981694` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140514 has offset 0).

The definition of A140514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140514.P16181118793688981694

`A000931(n+4)-A010060(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140514

/-- `A000931(n+4)-A010060(n)` -/
def P16181118793688981694.Spec : Prop :=
  ∀ n, P16181118793688981694.a n = A140514 n

theorem P16181118793688981694.correct : P16181118793688981694.Spec := by
  intro n
  simp only [A140514]

end A140514

/-! ## A140514.P8556388388176963343

`A182097(n+1)-A010060(n)`
-/

namespace A140514.P8556388388176963343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1) - A010060 n

end

end A140514.P8556388388176963343

namespace A140514

/-- `A182097(n+1)-A010060(n)` -/
def P8556388388176963343.Spec : Prop :=
  ∀ n, P8556388388176963343.a n = A140514 n

end A140514

/-! ## A140514.P4486318095876441241

`A182097(n+1)-(1-A010059(n))`
-/

namespace A140514.P4486318095876441241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1) - (1 - A010059 n)

end

end A140514.P4486318095876441241

namespace A140514

/-- `A182097(n+1)-(1-A010059(n))` -/
def P4486318095876441241.Spec : Prop :=
  ∀ n, P4486318095876441241.a n = A140514 n

end A140514

/-! ## A140514.P11218426104510356849

`A127682(2*n+1)-A010060(n)`
-/

namespace A140514.P11218426104510356849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 1) - A010060 n

end

end A140514.P11218426104510356849

namespace A140514

/-- `A127682(2*n+1)-A010060(n)` -/
def P11218426104510356849.Spec : Prop :=
  ∀ n, P11218426104510356849.a n = A140514 n

end A140514

/-! ## A140514.P5032694665025614631

`Δ[A023434(n+1)]-A092436(2*n+1)`
-/

namespace A140514.P5032694665025614631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092436 (2 * n + 1)

end

end A140514.P5032694665025614631

namespace A140514

/-- `Δ[A023434(n+1)]-A092436(2*n+1)` -/
def P5032694665025614631.Spec : Prop :=
  ∀ n, P5032694665025614631.a n = A140514 n

end A140514

/-! ## A140514.P18114650505107963099

`Δ[A164001(n+1)]-A008706(A006068(n))%2`
-/

namespace A140514.P18114650505107963099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A008706 (A006068 n).toNat) 2

end

end A140514.P18114650505107963099

namespace A140514

/-- `Δ[A164001(n+1)]-A008706(A006068(n))%2` -/
def P18114650505107963099.Spec : Prop :=
  ∀ n, P18114650505107963099.a n = A140514 n

end A140514

/-!
# A140516: For definition see comments lines.

The programs for A140516, there is no canonical definition to state claims against.
-/

/-! ## A140516.P1451469615672120196

`eq[1, A296657(n+1)+A185238(n)]`
-/

namespace A140516.P1451469615672120196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 1) + A185238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140516.P1451469615672120196

/-! ## A140516.P11363302907639940371

`eq[A161119(A185238(n)), A296657(n+1)]`
-/

namespace A140516.P11363302907639940371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161119 (A185238 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140516.P11363302907639940371

/-! ## A140516.P422423047808518118

`eq[A000602(A025851(n)), A296657(n+1)]`
-/

namespace A140516.P422423047808518118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 (A025851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140516.P422423047808518118

/-! ## A140516.P9987256285508859917

`eq[A000602(A029392(n)), A296657(n+1)]`
-/

namespace A140516.P9987256285508859917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 (A029392 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140516.P9987256285508859917

/-! ## A140516.P14833678707403847838

`eq[A008620(A025878(n)), A296657(n+1)]`
-/

namespace A140516.P14833678707403847838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A025878 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140516.P14833678707403847838

/-!
# A140517: Number of cycles in an n X n grid.

The programs for A140517, there is no canonical definition to state claims against.
-/

/-! ## A140517.P720940074236171450

`A068416(n+2)-A271802(n+2)`
-/

namespace A140517.P720940074236171450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068416 (n + 2) - A271802 (n + 2)

end

end A140517.P720940074236171450

/-!
# A140518: Number of simple paths from corner to corner of an n X n grid with king-moves allowed.

The programs for A140518, there is no canonical definition to state claims against.
-/

/-! ## A140518.P9671552667980011790

`A329118(∑[4*n]+1)`
-/

namespace A140518.P9671552667980011790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A140518.P9671552667980011790

/-! ## A140518.P4638608586807975341

`record[gcd(A114327(n), A329118(n+1))]`
-/

namespace A140518.P4638608586807975341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A329118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140518.P4638608586807975341

/-!
# A140519: Number of (undirected) Hamiltonian cycles on the n X n king graph.

The programs for A140519, there is no canonical definition to state claims against.
-/

/-! ## A140519.P16461289118964891037

`ceil(A140521(n+1)/2)`
-/

namespace A140519.P16461289118964891037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140521 (n + 1) : ℚ) / 2⌉

end

end A140519.P16461289118964891037

/-! ## A140519.P1386694635195361865

`A140521(n+1)/A165113(n)`
-/

namespace A140519.P1386694635195361865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140521 (n + 1) : ℚ) / (A165113 n : ℚ)

end

end A140519.P1386694635195361865

/-! ## A140519.P8013471049674408504

`A140521(n+1)/∑[A279329(n)]`
-/

namespace A140519.P8013471049674408504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140521 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A140519.P8013471049674408504

/-!
# A140520: a(n) = binomial(n+9, 9)*5^n.

The programs for A140520, the canonical program `A140520.P112058103858887671` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140520 has offset 0).

The definition of A140520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140520.P112058103858887671

`5^n*C(n+9, 9)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140520

/-- `5^n*C(n+9, 9)` -/
def P112058103858887671.Spec : Prop :=
  ∀ n, (P112058103858887671.a n : ℤ) = A140520 n

theorem P112058103858887671.correct : P112058103858887671.Spec := by
  intro n
  simp only [A140520]

end A140520

/-! ## A140520.P8265175824778238086

`(45/n+5)*a(n-1)` with `a(0)=1`
-/

namespace A140520.P8265175824778238086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (45 / (n : ℚ) + 5) * a (n - 1)

end

end A140520.P8265175824778238086

namespace A140520

/-- `(45/n+5)*a(n-1)` -/
def P8265175824778238086.Spec : Prop :=
  ∀ n, P8265175824778238086.a n = (A140520 n : ℚ)

end A140520

/-! ## A140520.P12030177409377548898

`5^n*A000582(n+9)`
-/

namespace A140520.P12030177409377548898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000582 (n + 9)

end

end A140520.P12030177409377548898

namespace A140520

/-- `5^n*A000582(n+9)` -/
def P12030177409377548898.Spec : Prop :=
  ∀ n, P12030177409377548898.a n = A140520 n

end A140520

/-! ## A140520.P5597626162752297436

`5^n*∑[A000581(n+8)]`
-/

namespace A140520.P5597626162752297436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140520.P5597626162752297436

namespace A140520

/-- `5^n*∑[A000581(n+8)]` -/
def P5597626162752297436.Spec : Prop :=
  ∀ n, P5597626162752297436.a n = A140520 n

end A140520

/-! ## A140520.P363812307080572605

`∑[A000581(n+8)]*A000351(n)`
-/

namespace A140520.P363812307080572605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000351 n

end

end A140520.P363812307080572605

namespace A140520

/-- `∑[A000581(n+8)]*A000351(n)` -/
def P363812307080572605.Spec : Prop :=
  ∀ n, P363812307080572605.a n = A140520 n

end A140520

/-! ## A140520.P1436755028617491887

`∑[∑[A000580(n+7)]]*A000351(n)`
-/

namespace A140520.P1436755028617491887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000351 n

end

end A140520.P1436755028617491887

namespace A140520

/-- `∑[∑[A000580(n+7)]]*A000351(n)` -/
def P1436755028617491887.Spec : Prop :=
  ∀ n, P1436755028617491887.a n = A140520 n

end A140520

/-! ## A140520.P16517350717017411770

`A013612(eq[9, A025581(n)])`
-/

namespace A140520.P16517350717017411770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140520.P16517350717017411770

namespace A140520

/-- `A013612(eq[9, A025581(n)])` -/
def P16517350717017411770.Spec : Prop :=
  ∀ n, P16517350717017411770.a n = A140520 n

end A140520

/-! ## A140520.P9321778731589902155

`A053109(n)/2^n`
-/

namespace A140520.P9321778731589902155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053109 n : ℚ) / (2 ^ n : ℚ)

end

end A140520.P9321778731589902155

namespace A140520

/-- `A053109(n)/2^n` -/
def P9321778731589902155.Spec : Prop :=
  ∀ n, P9321778731589902155.a n = (A140520 n : ℚ)

end A140520

/-!
# A140521: Number of directed "king tours" on an n X n board.

The programs for A140521, there is no canonical definition to state claims against.
-/

/-! ## A140521.P15835328938281386536

`abs(A140519(n+1)*A280560(n))`
-/

namespace A140521.P15835328938281386536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140519 (n + 1) * A280560 n|

end

end A140521.P15835328938281386536

/-! ## A140521.P1285412954892124666

`∑[A010057(n)]*A140519(n+1)`
-/

namespace A140521.P1285412954892124666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A140519 (n + 1)

end

end A140521.P1285412954892124666

/-! ## A140521.P6543577688034388304

`∑[A059108(n)]*A140519(n+1)`
-/

namespace A140521.P6543577688034388304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A140519 (n + 1)

end

end A140521.P6543577688034388304

/-!
# A140522: Numbers m for which sigma(m) - 2*m exceeds sigma(k) - 2*k for all k < m.

The programs for A140522, there is no canonical definition to state claims against.
-/

/-! ## A140522.P4294868889336929667

`∩[A307225(n+1), A315754(n)]`
-/

namespace A140522.P4294868889336929667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140522.P4294868889336929667

/-! ## A140522.P17875443059467943700

`∩[A090778(n+1), A307225(n+1)]`
-/

namespace A140522.P17875443059467943700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140522.P17875443059467943700

/-! ## A140522.P14762131834499623636

`∩[A116621(n+1), A307225(n+1)]`
-/

namespace A140522.P14762131834499623636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140522.P14762131834499623636

/-! ## A140522.P14696069736676320729

`∩[A305726(n+1), A307225(n+1)]`
-/

namespace A140522.P14696069736676320729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140522.P14696069736676320729

/-! ## A140522.P13734440643756891381

`∩[A306263(n+1), A307225(n+1)]`
-/

namespace A140522.P13734440643756891381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140522.P13734440643756891381

/-!
# A140523: If the highest power of the prime p that divides n is p^b(n,p), then a(n) is the least nonnegative integer that equals some sum{p|n} (+or-)p^b(n, p).

The programs for A140523, there is no canonical definition to state claims against.
-/

/-! ## A140523.P10628656231752247226

`A145037(A064084(n+1)+A014376(n))`
-/

namespace A140523.P10628656231752247226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A064084 (n + 1) + A014376 n).toNat

end

end A140523.P10628656231752247226

/-! ## A140523.P13850699196284885970

`A145037(A080953(n)+A064084(n+1))`
-/

namespace A140523.P13850699196284885970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A080953 n + A064084 (n + 1)).toNat

end

end A140523.P13850699196284885970

/-! ## A140523.P11389204476950734561

`A145037(A146888(n)+A064084(n+1))`
-/

namespace A140523.P11389204476950734561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A146888 n + A064084 (n + 1)).toNat

end

end A140523.P11389204476950734561

/-! ## A140523.P14816282748799881437

`A145037(A064084(n+1)*A178487(n))`
-/

namespace A140523.P14816282748799881437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A064084 (n + 1) * A178487 n).toNat

end

end A140523.P14816282748799881437

/-! ## A140523.P13008404583229631161

`A145037(A064084(n+1))%A190939(n)`
-/

namespace A140523.P13008404583229631161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145037 (A064084 (n + 1)).toNat) (A190939 n)

end

end A140523.P13008404583229631161

/-!
# A140524: a(1)=2. For n >=2, a(n) = the least integer >= n that is non-coprime to both n and a(n-1).

The programs for A140524, there is no canonical definition to state claims against.
-/

/-! ## A140524.P15472168220249962423

`A020639(n+1)+xor(1, n)`
-/

namespace A140524.P15472168220249962423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (Nat.xor 1 n : ℤ)

end

end A140524.P15472168220249962423

/-! ## A140524.P2691898468439511984

`(A078701(n+1)+1)^((n+1)%2)+n`
-/

namespace A140524.P2691898468439511984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078701 (n + 1) + 1) ^ ((n + 1) % 2) + (n : ℤ)

end

end A140524.P2691898468439511984

/-! ## A140524.P11166735883812909672

`A020639(n+1)+A004442(n)`
-/

namespace A140524.P11166735883812909672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + A004442 n

end

end A140524.P11166735883812909672

/-! ## A140524.P2696214613093643608

`A061228(n+1)-A010673(n)`
-/

namespace A140524.P2696214613093643608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - A010673 n

end

end A140524.P2696214613093643608

/-! ## A140524.P17693157865434418

`A124625(A020639(n+1)+2)+n`
-/

namespace A140524.P17693157865434418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A020639 (n + 1) + 2).toNat + (n : ℤ)

end

end A140524.P17693157865434418

/-! ## A140524.P17042203286057476398

`A273724(A020639(n+1)+2)+n`
-/

namespace A140524.P17042203286057476398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (A020639 (n + 1) + 2).toNat + (n : ℤ)

end

end A140524.P17042203286057476398

/-! ## A140524.P465218361384918534

`A061228(n+1)-2*A000035(n)`
-/

namespace A140524.P465218361384918534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - 2 * A000035 n

end

end A140524.P465218361384918534

/-! ## A140524.P5139518673303116667

`A014963(A028233(n+1))+xor(1, n)`
-/

namespace A140524.P5139518673303116667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028233 (n + 1)).toNat + (Nat.xor 1 n : ℤ)

end

end A140524.P5139518673303116667

/-! ## A140524.P3343744152475032905

`A020639(n+1)+A033999(n)+n`
-/

namespace A140524.P3343744152475032905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A033999 n + (n : ℤ))

end

end A140524.P3343744152475032905

/-! ## A140524.P3106865440606686339

`A061228(n+1)-log2(A000034(n)²)`
-/

namespace A140524.P3106865440606686339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061228 (n + 1) : ℝ) - Real.logb 2 (A000034 n ^ 2 : ℝ)

end

end A140524.P3106865440606686339

/-! ## A140524.P15605972544716432596

`A061228(n+1)-2*A134452(n)²`
-/

namespace A140524.P15605972544716432596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - 2 * A134452 n ^ 2

end

end A140524.P15605972544716432596

/-! ## A140524.P15945118384066376175

`A061228(n+1)-Δ[2*A008619(n)]`
-/

namespace A140524.P15945118384066376175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - (f1 (n + 1) - f1 n)

end

end A140524.P15945118384066376175

/-! ## A140524.P13295413658834565796

`A020639(n+1)+A103889(n+1)-1`
-/

namespace A140524.P13295413658834565796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A103889 (n + 1) - 1)

end

end A140524.P13295413658834565796

/-! ## A140524.P9752563744718876916

`A259445(A020639(n+1)+2)+n-1`
-/

namespace A140524.P9752563744718876916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (A020639 (n + 1) + 2).toNat + ((n : ℤ) - 1)

end

end A140524.P9752563744718876916

/-! ## A140524.P4137398173888308678

`C(A020639(n+1), A010690(n))+n+1`
-/

namespace A140524.P4137398173888308678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat (A010690 n).toNat + (n + 1)

end

end A140524.P4137398173888308678

/-! ## A140524.P13931846571235746850

`A109613(n)+A020639(n*char[2*n]+1)`
-/

namespace A140524.P13931846571235746850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A020639 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A140524.P13931846571235746850

/-! ## A140524.P13015202695286077353

`A052928(A020639(n+1)+1)+A052928(n)`
-/

namespace A140524.P13015202695286077353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A020639 (n + 1) + 1).toNat + A052928 n

end

end A140524.P13015202695286077353

/-! ## A140524.P9545692567935339128

`A109613(A020639(n+1)-1)+A109613(n)`
-/

namespace A140524.P9545692567935339128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A020639 (n + 1) - 1).toNat + A109613 n

end

end A140524.P9545692567935339128

/-!
# A140525: a(1)=2. For n >=2, a(n) = the least integer >= a(n-1) that is not coprime to both a(n-1)+1 and a(n-1).

The programs for A140525, there is no canonical definition to state claims against.
-/

/-! ## A140525.P14139641979140608020

`A144751(n+1)-1`
-/

namespace A140525.P14139641979140608020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144751 (n + 1) - 1

end

end A140525.P14139641979140608020

/-! ## A140525.P5319404365034631973

`xor(1, A144751(1-(n-2*n)))`
-/

namespace A140525.P5319404365034631973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A144751 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A140525.P5319404365034631973

/-! ## A140525.P3566894267325610941

`xor(A144751(n+1), A177849(n))`
-/

namespace A140525.P3566894267325610941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144751 (n + 1)) (A177849 n)

end

end A140525.P3566894267325610941

/-! ## A140525.P16972828817958064837

`xor(A144751(n+1), A262681(n))`
-/

namespace A140525.P16972828817958064837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144751 (n + 1)) (A262681 n)

end

end A140525.P16972828817958064837

/-! ## A140525.P5767442348300980660

`xor(A144751(n+1), A304042(n))`
-/

namespace A140525.P5767442348300980660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144751 (n + 1)) (A304042 n)

end

end A140525.P5767442348300980660

/-!
# A140526: Number of derangements of n elements with one pair repeated exactly once (e.g., "ABABCDEF").

The programs for A140526, there is no canonical definition to state claims against.
-/

/-! ## A140526.P3714214692542081272

`A164028(A333090(n))-round(sqrt(n))`
-/

namespace A140526.P3714214692542081272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A333090 n).toNat - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A140526.P3714214692542081272

/-!
# A140528: Sum of digits of Mersenne prime exponents.

The programs for A140528, there is no canonical definition to state claims against.
-/

/-! ## A140528.P2381279110606069814

`A007953(A000043(n+1))`
-/

namespace A140528.P2381279110606069814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000043 (n + 1)).toNat

end

end A140528.P2381279110606069814

/-! ## A140528.P10024159526625418210

`∑{digits}[A090748(n+1)+1, #]`
-/

namespace A140528.P10024159526625418210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140528.P10024159526625418210

/-! ## A140528.P1580436808341254432

`∑{digits}[1-A050475(n+1), #]`
-/

namespace A140528.P1580436808341254432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A050475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140528.P1580436808341254432

/-! ## A140528.P3056010140940690249

`∑{digits}[A153798(n+1)+2, #]`
-/

namespace A140528.P3056010140940690249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140528.P3056010140940690249

/-! ## A140528.P10277982895389515740

`∑{digits}[A061645(n+1)/2, #]`
-/

namespace A140528.P10277982895389515740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061645 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A140528.P10277982895389515740

/-!
# A140529: a(n) = 6*4^n - 1.

The programs for A140529, the canonical program `A140529.P9765266150794200361` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140529 has offset 0).

The definition of A140529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n-1` (program `A140529.P9765266150794200361`, by `A140529.P9765266150794200361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140529.P9765266150794200361

`6*4^n-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140529

/-- `6*4^n-1` -/
def P9765266150794200361.Spec : Prop :=
  ∀ n, P9765266150794200361.a n = A140529 n

theorem P9765266150794200361.correct : P9765266150794200361.Spec := by
  intro n
  simp only [A140529]

end A140529

/-! ## A140529.P8675958714733964527

`or(3, 4*a(n-1))` with `a(0)=5`
-/

namespace A140529.P8675958714733964527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor 3 (4 * a (n - 1))

end

end A140529.P8675958714733964527

namespace A140529

/-- `or(3, 4*a(n-1))` -/
def P8675958714733964527.Spec : Prop :=
  ∀ n, (P8675958714733964527.a n : ℤ) = A140529 n

end A140529

/-! ## A140529.P4398330271660038412

`xor(3, 4*a(n-1))` with `a(0)=5`
-/

namespace A140529.P4398330271660038412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.xor 3 (4 * a (n - 1))

end

end A140529.P4398330271660038412

namespace A140529

/-- `xor(3, 4*a(n-1))` -/
def P4398330271660038412.Spec : Prop :=
  ∀ n, (P4398330271660038412.a n : ℤ) = A140529 n

end A140529

/-! ## A140529.P18214298399103663202

`or(3, lcm(4, a(n-1)))` with `a(0)=5`
-/

namespace A140529.P18214298399103663202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor 3 (Nat.lcm 4 (a (n - 1)))

end

end A140529.P18214298399103663202

namespace A140529

/-- `or(3, lcm(4, a(n-1)))` -/
def P18214298399103663202.Spec : Prop :=
  ∀ n, (P18214298399103663202.a n : ℤ) = A140529 n

end A140529

/-! ## A140529.P9567330574299314223

`∑[4*a(n-1)]` with `a(0)=5, a(1)=18`
-/

namespace A140529.P9567330574299314223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 18] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140529.P9567330574299314223

namespace A140529

/-- `∑[4*a(n-1)]` -/
def P9567330574299314223.Spec : Prop :=
  ∀ n, (P9567330574299314223.a n : ℤ) = A140529 n

end A140529

/-! ## A140529.P2274636215971047032

`abs(4*a(n-1)+3)` with `a(0)=5`
-/

namespace A140529.P2274636215971047032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  4 * a (n - 1) + 3

end

end A140529.P2274636215971047032

namespace A140529

/-- `abs(4*a(n-1)+3)` -/
def P2274636215971047032.Spec : Prop :=
  ∀ n, (P2274636215971047032.a n : ℤ) = A140529 n

end A140529

/-! ## A140529.P7277489878923973952

`record[Δ[(-2)^(n+1)]-1]`
-/

namespace A140529.P7277489878923973952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140529.P7277489878923973952

namespace A140529

/-- `record[Δ[(-2)^(n+1)]-1]` -/
def P7277489878923973952.Spec : Prop :=
  ∀ n, P7277489878923973952.a n = A140529 n

end A140529

/-! ## A140529.P9935065057050238443

`4*(a(n-1)+3/4)` with `a(0)=5`
-/

namespace A140529.P9935065057050238443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * (a (n - 1) + (3 : ℚ) / 4)

end

end A140529.P9935065057050238443

namespace A140529

/-- `4*(a(n-1)+3/4)` -/
def P9935065057050238443.Spec : Prop :=
  ∀ n, P9935065057050238443.a n = (A140529 n : ℚ)

end A140529

/-! ## A140529.P18154199747964169927

`ceil(ϕ²+4*a(n-1))` with `a(0)=5`
-/

namespace A140529.P18154199747964169927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈Real.goldenRatio ^ 2 + (4 * a (n - 1) : ℝ)⌉

end

end A140529.P18154199747964169927

namespace A140529

/-- `ceil(ϕ²+4*a(n-1))` -/
def P18154199747964169927.Spec : Prop :=
  ∀ n, P18154199747964169927.a n = A140529 n

end A140529

/-! ## A140529.P16414336227172759844

`round(ϕ²+4*a(n-1))` with `a(0)=5`
-/

namespace A140529.P16414336227172759844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 + (4 * a (n - 1) : ℝ))

end

end A140529.P16414336227172759844

namespace A140529

/-- `round(ϕ²+4*a(n-1))` -/
def P16414336227172759844.Spec : Prop :=
  ∀ n, P16414336227172759844.a n = A140529 n

end A140529

/-! ## A140529.P3107769144231538628

`-or(1, Δ[-2^(2*n+1)])`
-/

namespace A140529.P3107769144231538628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (f1 (n + 1) - f1 n)

end

end A140529.P3107769144231538628

namespace A140529

/-- `-or(1, Δ[-2^(2*n+1)])` -/
def P3107769144231538628.Spec : Prop :=
  ∀ n, P3107769144231538628.a n = A140529 n

end A140529

/-! ## A140529.P7733517586008076041

`-xor(1, Δ[-2^(2*n+1)])`
-/

namespace A140529.P7733517586008076041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (f1 (n + 1) - f1 n)

end

end A140529.P7733517586008076041

namespace A140529

/-- `-xor(1, Δ[-2^(2*n+1)])` -/
def P7733517586008076041.Spec : Prop :=
  ∀ n, P7733517586008076041.a n = A140529 n

end A140529

/-! ## A140529.P14280721161751213998

`4*(1-(1/4-a(n-1)))` with `a(0)=5`
-/

namespace A140529.P14280721161751213998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * (1 - ((1 : ℚ) / 4 - a (n - 1)))

end

end A140529.P14280721161751213998

namespace A140529

/-- `4*(1-(1/4-a(n-1)))` -/
def P14280721161751213998.Spec : Prop :=
  ∀ n, P14280721161751213998.a n = (A140529 n : ℚ)

end A140529

/-! ## A140529.P10429877316622294144

`floor(a(n-1)+3*(a(n-1)+1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A140529.P10429877316622294144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 3 * (a (n - 1) + 1)

end

end A140529.P10429877316622294144

namespace A140529

/-- `floor(a(n-1)+3*(a(n-1)+1))` -/
def P10429877316622294144.Spec : Prop :=
  ∀ n, (P10429877316622294144.a n : ℤ) = A140529 n

end A140529

/-! ## A140529.P6532933990221801431

`floor(5*a(n-1)-(a(n-1)-3))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A140529.P6532933990221801431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  5 * a (n - 1) - (a (n - 1) - 3)

end

end A140529.P6532933990221801431

namespace A140529

/-- `floor(5*a(n-1)-(a(n-1)-3))` -/
def P6532933990221801431.Spec : Prop :=
  ∀ n, P6532933990221801431.a n = A140529 n

end A140529

/-! ## A140529.P6407567378924076227

`A052940(Δ[n²])`
-/

namespace A140529.P6407567378924076227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140529.P6407567378924076227

namespace A140529

/-- `A052940(Δ[n²])` -/
def P6407567378924076227.Spec : Prop :=
  ∀ n, P6407567378924076227.a n = A140529 n

end A140529

/-! ## A140529.P14750933861177458872

`A140683(Δ[n²])`
-/

namespace A140529.P14750933861177458872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140529.P14750933861177458872

namespace A140529

/-- `A140683(Δ[n²])` -/
def P14750933861177458872.Spec : Prop :=
  ∀ n, P14750933861177458872.a n = A140529 n

end A140529

/-! ## A140529.P915187938356109314

`A153893(Δ[n²])`
-/

namespace A140529.P915187938356109314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140529.P915187938356109314

namespace A140529

/-- `A153893(Δ[n²])` -/
def P915187938356109314.Spec : Prop :=
  ∀ n, P915187938356109314.a n = A140529 n

end A140529

/-! ## A140529.P1228860219137313269

`Δ[A124133(n+1)]`
-/

namespace A140529.P1228860219137313269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140529.P1228860219137313269

namespace A140529

/-- `Δ[A124133(n+1)]` -/
def P1228860219137313269.Spec : Prop :=
  ∀ n, P1228860219137313269.a n = A140529 n

end A140529

/-!
# A140530: Triangle read by rows of coefficients of polynomials defined in comments lines.

The programs for A140530, there is no canonical definition to state claims against.
-/

/-! ## A140530.P1883695045713199785

`A202191(n+1)-A185238(A057728(n+2))`
-/

namespace A140530.P1883695045713199785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (n + 1) - A185238 (A057728 (n + 2)).toNat

end

end A140530.P1883695045713199785

/-! ## A140530.P8465639547458268677

`A202191(n+1)-A272865(n+1)%A333669(n+5)`
-/

namespace A140530.P8465639547458268677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (n + 1) - Int.tmod (A272865 (n + 1)) (A333669 (n + 5))

end

end A140530.P8465639547458268677

/-! ## A140530.P14667398095198533494

`A202191(n+1)-A025469(A292323(n+2))`
-/

namespace A140530.P14667398095198533494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (n + 1) - A025469 (A292323 (n + 2)).toNat

end

end A140530.P14667398095198533494

/-! ## A140530.P5425005722863272253

`A202191(n+1)-A331902(A151722(n))`
-/

namespace A140530.P5425005722863272253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (n + 1) - A331902 (A151722 n).toNat

end

end A140530.P5425005722863272253

/-! ## A140530.P17345646662592153863

`A202191(n+1)-A185284(A014682(n))`
-/

namespace A140530.P17345646662592153863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (n + 1) - A185284 (A014682 n).toNat

end

end A140530.P17345646662592153863

/-!
# A140531: Concatenate subsequences 0, 1, 2, 4, ..., 2^k.

The programs for A140531, the canonical program `A140531.P3500918698213880928` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140531 has offset 0).

The definition of A140531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140531.P12545549536442339171

`floor(2^(n-C(∑[char[∑[n]]], 2))/2)`
-/

namespace A140531.P12545549536442339171
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) / 2⌋

end

end A140531.P12545549536442339171

namespace A140531

/-- `floor(2^(n-C(∑[char[∑[n]]], 2))/2)` -/
def P12545549536442339171.Spec : Prop :=
  ∀ n, P12545549536442339171.a n = A140531 n

end A140531

/-! ## A140531.P9630345189854813437

`ceil(sinh(log(2^(n-C(∑[char[∑[n]]], 2)))))`
-/

namespace A140531.P9630345189854813437
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) : ℝ))⌉

end

end A140531.P9630345189854813437

namespace A140531

/-- `ceil(sinh(log(2^(n-C(∑[char[∑[n]]], 2)))))` -/
def P9630345189854813437.Spec : Prop :=
  ∀ n, P9630345189854813437.a n = A140531 n

end A140531

/-! ## A140531.P16296646621459025901

`round(sinh(log(2^(n-C(∑[char[∑[n]]], 2)))))`
-/

namespace A140531.P16296646621459025901
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) : ℝ)))

end

end A140531.P16296646621459025901

namespace A140531

/-- `round(sinh(log(2^(n-C(∑[char[∑[n]]], 2)))))` -/
def P16296646621459025901.Spec : Prop :=
  ∀ n, P16296646621459025901.a n = A140531 n

end A140531

/-! ## A140531.P3500918698213880928

`floor(A059268(n)/2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140531

/-- `floor(A059268(n)/2)` -/
def P3500918698213880928.Spec : Prop :=
  ∀ n, P3500918698213880928.a n = A140531 n

theorem P3500918698213880928.correct : P3500918698213880928.Spec := by
  intro n
  simp only [A140531]

end A140531

/-! ## A140531.P11957166928254250153

`A232089(n)-char[∑[n]]`
-/

namespace A140531.P11957166928254250153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A140531.P11957166928254250153

namespace A140531

/-- `A232089(n)-char[∑[n]]` -/
def P11957166928254250153.Spec : Prop :=
  ∀ n, P11957166928254250153.a n = A140531 n

end A140531

/-! ## A140531.P17900439238659239885

`floor(2^(A002262(n)-1))`
-/

namespace A140531.P17900439238659239885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A002262 n - 1 : ℤ)⌋

end

end A140531.P17900439238659239885

namespace A140531

/-- `floor(2^(A002262(n)-1))` -/
def P17900439238659239885.Spec : Prop :=
  ∀ n, P17900439238659239885.a n = A140531 n

end A140531

/-! ## A140531.P18271800428252165378

`char[comp[∑[n]]]*A166692(n)`
-/

namespace A140531.P18271800428252165378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A166692 n

end

end A140531.P18271800428252165378

namespace A140531

/-- `char[comp[∑[n]]]*A166692(n)` -/
def P18271800428252165378.Spec : Prop :=
  ∀ n, P18271800428252165378.a n = A140531 n

end A140531

/-! ## A140531.P3022935821352902596

`char[comp[∑[n]]]*A166918(n)`
-/

namespace A140531.P3022935821352902596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A166918 n

end

end A140531.P3022935821352902596

namespace A140531

/-- `char[comp[∑[n]]]*A166918(n)` -/
def P3022935821352902596.Spec : Prop :=
  ∀ n, P3022935821352902596.a n = A140531 n

end A140531

/-! ## A140531.P10614026736422092834

`A131577(A002262(n))`
-/

namespace A140531.P10614026736422092834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A002262 n).toNat

end

end A140531.P10614026736422092834

namespace A140531

/-- `A131577(A002262(n))` -/
def P10614026736422092834.Spec : Prop :=
  ∀ n, P10614026736422092834.a n = A140531 n

end A140531

/-! ## A140531.P4278623815686218822

`A034008(A002260(n+1))`
-/

namespace A140531.P4278623815686218822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A002260 (n + 1)).toNat

end

end A140531.P4278623815686218822

namespace A140531

/-- `A034008(A002260(n+1))` -/
def P4278623815686218822.Spec : Prop :=
  ∀ n, P4278623815686218822.a n = A140531 n

end A140531

/-! ## A140531.P14516158469071640385

`A158780(2*A002262(n))`
-/

namespace A140531.P14516158469071640385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * A002262 n).toNat

end

end A140531.P14516158469071640385

namespace A140531

/-- `A158780(2*A002262(n))` -/
def P14516158469071640385.Spec : Prop :=
  ∀ n, P14516158469071640385.a n = A140531 n

end A140531

/-! ## A140531.P10457754317173450968

`A059268(n)-A232089(n)`
-/

namespace A140531.P10457754317173450968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A232089 n

end

end A140531.P10457754317173450968

namespace A140531

/-- `A059268(n)-A232089(n)` -/
def P10457754317173450968.Spec : Prop :=
  ∀ n, P10457754317173450968.a n = A140531 n

end A140531

/-! ## A140531.P17822963532515851860

`A166692(n)%A008949(n)`
-/

namespace A140531.P17822963532515851860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166692 n) (A008949 n)

end

end A140531.P17822963532515851860

namespace A140531

/-- `A166692(n)%A008949(n)` -/
def P17822963532515851860.Spec : Prop :=
  ∀ n, P17822963532515851860.a n = A140531 n

end A140531

/-! ## A140531.P17007086651174055466

`A166918(n)%A008949(n)`
-/

namespace A140531.P17007086651174055466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166918 n) (A008949 n)

end

end A140531.P17007086651174055466

namespace A140531

/-- `A166918(n)%A008949(n)` -/
def P17007086651174055466.Spec : Prop :=
  ∀ n, P17007086651174055466.a n = A140531 n

end A140531

/-! ## A140531.P11928644556229634384

`A232089(n)%A008949(n)`
-/

namespace A140531.P11928644556229634384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232089 n) (A008949 n)

end

end A140531.P11928644556229634384

namespace A140531

/-- `A232089(n)%A008949(n)` -/
def P11928644556229634384.Spec : Prop :=
  ∀ n, P11928644556229634384.a n = A140531 n

end A140531

/-! ## A140531.P10338343972570837101

`A193900(n)%A059268(n)`
-/

namespace A140531.P10338343972570837101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193900 n) (A059268 n)

end

end A140531.P10338343972570837101

namespace A140531

/-- `A193900(n)%A059268(n)` -/
def P10338343972570837101.Spec : Prop :=
  ∀ n, P10338343972570837101.a n = A140531 n

end A140531

/-! ## A140531.P12375213359539835020

`lcm(A166692(n), A166918(n))`
-/

namespace A140531.P12375213359539835020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166692 n) (A166918 n)

end

end A140531.P12375213359539835020

namespace A140531

/-- `lcm(A166692(n), A166918(n))` -/
def P12375213359539835020.Spec : Prop :=
  ∀ n, (P12375213359539835020.a n : ℤ) = A140531 n

end A140531

/-! ## A140531.P11786631888714298789

`and(A075302(n), A166692(n))`
-/

namespace A140531.P11786631888714298789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075302 n) (A166692 n)

end

end A140531.P11786631888714298789

namespace A140531

/-- `and(A075302(n), A166692(n))` -/
def P11786631888714298789.Spec : Prop :=
  ∀ n, P11786631888714298789.a n = A140531 n

end A140531

/-! ## A140531.P15559976612258354088

`and(A075302(n), A166918(n))`
-/

namespace A140531.P15559976612258354088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075302 n) (A166918 n)

end

end A140531.P15559976612258354088

namespace A140531

/-- `and(A075302(n), A166918(n))` -/
def P15559976612258354088.Spec : Prop :=
  ∀ n, P15559976612258354088.a n = A140531 n

end A140531

/-! ## A140531.P16073826917779814517

`and(A099627(n), A166918(n))`
-/

namespace A140531.P16073826917779814517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099627 n) (A166918 n)

end

end A140531.P16073826917779814517

namespace A140531

/-- `and(A099627(n), A166918(n))` -/
def P16073826917779814517.Spec : Prop :=
  ∀ n, P16073826917779814517.a n = A140531 n

end A140531

/-!
# A140533: Primes congruent to 13 or 17 mod 30.

The programs for A140533, the canonical program `A140533.P549597835408475886` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140533 has offset 1).

The definition of A140533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140533.P549597835408475886

`p?[a(n-2)+30]` with `a(0)=13, a(1)=17`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140533

/-- `p?[a(n-2)+30]` -/
def P549597835408475886.Spec : Prop :=
  ∀ n, (P549597835408475886.a n : ℤ) = A140533 (n + 1)

theorem P549597835408475886.correct : P549597835408475886.Spec := by
  intro n
  simp only [A140533, Nat.add_sub_cancel]

end A140533

/-! ## A140533.P4058019709523230721

`p?[round(10/(7*acot(3*n)))]`
-/

namespace A140533.P4058019709523230721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (10 / (7 * SequenceMachineLib.acot (3 * n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140533.P4058019709523230721

namespace A140533

/-- `p?[round(10/(7*acot(3*n)))]` -/
def P4058019709523230721.Spec : Prop :=
  ∀ n, P4058019709523230721.a n = A140533 (n + 1)

end A140533

/-! ## A140533.P10252963735532035672

`p?[ceil(2*n/7)+3*n+4+n]`
-/

namespace A140533.P10252963735532035672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℚ) / 7)⌉ + (3 * n + 4 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140533.P10252963735532035672

namespace A140533

/-- `p?[ceil(2*n/7)+3*n+4+n]` -/
def P10252963735532035672.Spec : Prop :=
  ∀ n, P10252963735532035672.a n = A140533 (n + 1)

end A140533

/-! ## A140533.P4401137220948437063

`∩[A003631(n+1), A248474(n+1)]`
-/

namespace A140533.P4401137220948437063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P4401137220948437063

namespace A140533

/-- `∩[A003631(n+1), A248474(n+1)]` -/
def P4401137220948437063.Spec : Prop :=
  ∀ n, (P4401137220948437063.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P14762943547471673426

`p?[A248474(n+1)]%A078851(n+1)`
-/

namespace A140533.P14762943547471673426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A078851 (n + 1))

end

end A140533.P14762943547471673426

namespace A140533

/-- `p?[A248474(n+1)]%A078851(n+1)` -/
def P14762943547471673426.Spec : Prop :=
  ∀ n, P14762943547471673426.a n = A140533 (n + 1)

end A140533

/-! ## A140533.P7019715150230363424

`∩[A003631(n+1), A229947(n+1)]`
-/

namespace A140533.P7019715150230363424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P7019715150230363424

namespace A140533

/-- `∩[A003631(n+1), A229947(n+1)]` -/
def P7019715150230363424.Spec : Prop :=
  ∀ n, (P7019715150230363424.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P12013552634625002321

`∩[A042993(n+1), A229947(n+1)]`
-/

namespace A140533.P12013552634625002321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P12013552634625002321

namespace A140533

/-- `∩[A042993(n+1), A229947(n+1)]` -/
def P12013552634625002321.Spec : Prop :=
  ∀ n, (P12013552634625002321.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P18270623506081624003

`∩[A023162(n+1), A229947(n+1)]`
-/

namespace A140533.P18270623506081624003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P18270623506081624003

namespace A140533

/-- `∩[A023162(n+1), A229947(n+1)]` -/
def P18270623506081624003.Spec : Prop :=
  ∀ n, (P18270623506081624003.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P11392079142641975516

`∩[A040169(n+1), A248474(n+1)]`
-/

namespace A140533.P11392079142641975516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P11392079142641975516

namespace A140533

/-- `∩[A040169(n+1), A248474(n+1)]` -/
def P11392079142641975516.Spec : Prop :=
  ∀ n, (P11392079142641975516.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P7592440583273252715

`∩[A248474(n+1), A004139(n+1)]`
-/

namespace A140533.P7592440583273252715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P7592440583273252715

namespace A140533

/-- `∩[A248474(n+1), A004139(n+1)]` -/
def P7592440583273252715.Spec : Prop :=
  ∀ n, (P7592440583273252715.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P10142820378427405805

`∩[A000040(n+1), A248474(n+1)]`
-/

namespace A140533.P10142820378427405805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P10142820378427405805

namespace A140533

/-- `∩[A000040(n+1), A248474(n+1)]` -/
def P10142820378427405805.Spec : Prop :=
  ∀ n, (P10142820378427405805.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P6979855683116930532

`∩[A006005(n+1), A248474(n+1)]`
-/

namespace A140533.P6979855683116930532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P6979855683116930532

namespace A140533

/-- `∩[A006005(n+1), A248474(n+1)]` -/
def P6979855683116930532.Spec : Prop :=
  ∀ n, (P6979855683116930532.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P14396167639496898888

`∩[A053813(n+1), A248474(n+1)]`
-/

namespace A140533.P14396167639496898888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P14396167639496898888

namespace A140533

/-- `∩[A053813(n+1), A248474(n+1)]` -/
def P14396167639496898888.Spec : Prop :=
  ∀ n, (P14396167639496898888.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P13298111767211265502

`∩[A062972(n+1), A248474(n+1)]`
-/

namespace A140533.P13298111767211265502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P13298111767211265502

namespace A140533

/-- `∩[A062972(n+1), A248474(n+1)]` -/
def P13298111767211265502.Spec : Prop :=
  ∀ n, (P13298111767211265502.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P11574207960713510072

`∩[A067126(n+1), A248474(n+1)]`
-/

namespace A140533.P11574207960713510072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P11574207960713510072

namespace A140533

/-- `∩[A067126(n+1), A248474(n+1)]` -/
def P11574207960713510072.Spec : Prop :=
  ∀ n, (P11574207960713510072.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P9421867114796720493

`∩[A055977(n+1), A248474(n+1)]`
-/

namespace A140533.P9421867114796720493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P9421867114796720493

namespace A140533

/-- `∩[A055977(n+1), A248474(n+1)]` -/
def P9421867114796720493.Spec : Prop :=
  ∀ n, (P9421867114796720493.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P15919420555341335860

`∩[A000430(n+1), A248474(n+1)]`
-/

namespace A140533.P15919420555341335860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P15919420555341335860

namespace A140533

/-- `∩[A000430(n+1), A248474(n+1)]` -/
def P15919420555341335860.Spec : Prop :=
  ∀ n, (P15919420555341335860.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P17278499017551911170

`filter[A248474(n+1), A010051(#)]`
-/

namespace A140533.P17278499017551911170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A140533.P17278499017551911170

namespace A140533

/-- `filter[A248474(n+1), A010051(#)]` -/
def P17278499017551911170.Spec : Prop :=
  ∀ n, P17278499017551911170.a n = A140533 (n + 1)

end A140533

/-! ## A140533.P9579583453481308926

`∩[A248474(n+1), A222030(n)]`
-/

namespace A140533.P9579583453481308926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P9579583453481308926

namespace A140533

/-- `∩[A248474(n+1), A222030(n)]` -/
def P9579583453481308926.Spec : Prop :=
  ∀ n, (P9579583453481308926.a n : ℤ) = A140533 (n + 1)

end A140533

/-! ## A140533.P14113641499176201167

`∩[A082378(n+1), A248474(n+1)]`
-/

namespace A140533.P14113641499176201167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140533.P14113641499176201167

namespace A140533

/-- `∩[A082378(n+1), A248474(n+1)]` -/
def P14113641499176201167.Spec : Prop :=
  ∀ n, (P14113641499176201167.a n : ℤ) = A140533 (n + 1)

end A140533

/-!
# A140534: Primes congruent to 11 or 199 mod 210.

The programs for A140534, the canonical program `A140534.P4744227724431225386` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140534 has offset 1).

The definition of A140534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140534.P4744227724431225386

`p?[abs(a(n-1)-5*21*n)]` with `a(0)=11`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140534

/-- `p?[abs(a(n-1)-5*21*n)]` -/
def P4744227724431225386.Spec : Prop :=
  ∀ n, P4744227724431225386.a n = A140534 (n + 1)

theorem P4744227724431225386.correct : P4744227724431225386.Spec := by
  intro n
  simp only [A140534, Nat.add_sub_cancel]

end A140534

/-! ## A140534.P6850715224131777239

`p?[A156674(n+1)+A047298(n+1)]`
-/

namespace A140534.P6850715224131777239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + A047298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P6850715224131777239

namespace A140534

/-- `p?[A156674(n+1)+A047298(n+1)]` -/
def P6850715224131777239.Spec : Prop :=
  ∀ n, P6850715224131777239.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P13949519026673506606

`p?[A008598(A047522(n+1))-A155450(n+1)]`
-/

namespace A140534.P13949519026673506606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A047522 (n + 1)).toNat - A155450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P13949519026673506606

namespace A140534

/-- `p?[A008598(A047522(n+1))-A155450(n+1)]` -/
def P13949519026673506606.Spec : Prop :=
  ∀ n, P13949519026673506606.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P7623248600375961782

`p?[A065186(n+1)+A008592(2*n+1)]`
-/

namespace A140534.P7623248600375961782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065186 (n + 1) + A008592 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P7623248600375961782

namespace A140534

/-- `p?[A065186(n+1)+A008592(2*n+1)]` -/
def P7623248600375961782.Spec : Prop :=
  ∀ n, P7623248600375961782.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P14772577367271294247

`p?[A017053(3*n+1)-(4-A010874(n+2))]`
-/

namespace A140534.P14772577367271294247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (3 * n + 1) - (4 - A010874 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P14772577367271294247

namespace A140534

/-- `p?[A017053(3*n+1)-(4-A010874(n+2))]` -/
def P14772577367271294247.Spec : Prop :=
  ∀ n, P14772577367271294247.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P16581762536000151071

`p?[A056020(A016885(n))+A007775(n+1)]`
-/

namespace A140534.P16581762536000151071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A016885 n).toNat + A007775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P16581762536000151071

namespace A140534

/-- `p?[A056020(A016885(n))+A007775(n+1)]` -/
def P16581762536000151071.Spec : Prop :=
  ∀ n, P16581762536000151071.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P405788389500285507

`p?[A047201(n+1)+A008706(A090772(n+1))]`
-/

namespace A140534.P405788389500285507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1) + A008706 (A090772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P405788389500285507

namespace A140534

/-- `p?[A047201(n+1)+A008706(A090772(n+1))]` -/
def P405788389500285507.Spec : Prop :=
  ∀ n, P405788389500285507.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P14059997071776959921

`p?[A090771(A175887(n+1)+A016789(n))]`
-/

namespace A140534.P14059997071776959921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A175887 (n + 1) + A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P14059997071776959921

namespace A140534

/-- `p?[A090771(A175887(n+1)+A016789(n))]` -/
def P14059997071776959921.Spec : Prop :=
  ∀ n, P14059997071776959921.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P6200438405805030949

`p?[A090771(A322489(n+1)+A008619(n))]`
-/

namespace A140534.P6200438405805030949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A322489 (n + 1) + A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P6200438405805030949

namespace A140534

/-- `p?[A090771(A322489(n+1)+A008619(n))]` -/
def P6200438405805030949.Spec : Prop :=
  ∀ n, P6200438405805030949.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P9980973830364876287

`p?[A090771(A113801(n+1)+A047276(n+1))]`
-/

namespace A140534.P9980973830364876287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A113801 (n + 1) + A047276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P9980973830364876287

namespace A140534

/-- `p?[A090771(A113801(n+1)+A047276(n+1))]` -/
def P9980973830364876287.Spec : Prop :=
  ∀ n, P9980973830364876287.a n = A140534 (n + 1)

end A140534

/-! ## A140534.P15093896180008817977

`p?[A007310(A047374(A090771(n+1)))]`
-/

namespace A140534.P15093896180008817977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A047374 (A090771 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P15093896180008817977

namespace A140534

/-- `p?[A007310(A047374(A090771(n+1)))]` -/
def P15093896180008817977.Spec : Prop :=
  ∀ n, P15093896180008817977.a n = A140534 (n + 1)

end A140534

/-!
# A140535: Primes congruent to 1 or 209 mod 210.

The programs for A140535, the canonical program `A140535.P2681751241068162484` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140535 has offset 1).

The definition of A140535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140535.P2681751241068162484

`∩[A111092(n+1), A132240(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140535

/-- `∩[A111092(n+1), A132240(n+1)]` -/
def P2681751241068162484.Spec : Prop :=
  ∀ n, (P2681751241068162484.a n : ℤ) = A140535 (n + 1)

theorem P2681751241068162484.correct : P2681751241068162484.Spec := by
  intro n
  simp only [A140535, Nat.add_sub_cancel]

end A140535

/-! ## A140535.P12320894423888667972

`p?[35*A091684(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A140535.P12320894423888667972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  35 * A091684 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140535.P12320894423888667972

namespace A140535

/-- `p?[35*A091684(n+1)-a(n-1)]` -/
def P12320894423888667972.Spec : Prop :=
  ∀ n, P12320894423888667972.a n = A140535 (n + 1)

end A140535

/-! ## A140535.P2404336956887529694

`p?[A057539(A090771(n+1)-n)]`
-/

namespace A140535.P2404336956887529694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (A090771 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140535.P2404336956887529694

namespace A140535

/-- `p?[A057539(A090771(n+1)-n)]` -/
def P2404336956887529694.Spec : Prop :=
  ∀ n, P2404336956887529694.a n = A140535 (n + 1)

end A140535

/-! ## A140535.P6899222188596232654

`∩[A038893(n+1), A111092(n+1)]`
-/

namespace A140535.P6899222188596232654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140535.P6899222188596232654

namespace A140535

/-- `∩[A038893(n+1), A111092(n+1)]` -/
def P6899222188596232654.Spec : Prop :=
  ∀ n, (P6899222188596232654.a n : ℤ) = A140535 (n + 1)

end A140535

/-! ## A140535.P15972363196240029777

`∩[A111092(n+1), A161504(n+1)]`
-/

namespace A140535.P15972363196240029777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140535.P15972363196240029777

namespace A140535

/-- `∩[A111092(n+1), A161504(n+1)]` -/
def P15972363196240029777.Spec : Prop :=
  ∀ n, (P15972363196240029777.a n : ℤ) = A140535 (n + 1)

end A140535

/-! ## A140535.P12704296125133777127

`∩[A111092(n+1), A391370(n+1)]`
-/

namespace A140535.P12704296125133777127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140535.P12704296125133777127

namespace A140535

/-- `∩[A111092(n+1), A391370(n+1)]` -/
def P12704296125133777127.Spec : Prop :=
  ∀ n, (P12704296125133777127.a n : ℤ) = A140535 (n + 1)

end A140535

/-! ## A140535.P350138808660423075

`∩[A111092(n+1), A175887(n+1)]`
-/

namespace A140535.P350138808660423075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140535.P350138808660423075

namespace A140535

/-- `∩[A111092(n+1), A175887(n+1)]` -/
def P350138808660423075.Spec : Prop :=
  ∀ n, (P350138808660423075.a n : ℤ) = A140535 (n + 1)

end A140535

/-! ## A140535.P4567928773874612301

`p?[A175887(A168204(n+1)+A146951(n))]`
-/

namespace A140535.P4567928773874612301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A168204 (n + 1) + A146951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140535.P4567928773874612301

namespace A140535

/-- `p?[A175887(A168204(n+1)+A146951(n))]` -/
def P4567928773874612301.Spec : Prop :=
  ∀ n, P4567928773874612301.a n = A140535 (n + 1)

end A140535

/-! ## A140535.P10021502564936185979

`p?[A175887(A175887(n+1)-A004524(n))]`
-/

namespace A140535.P10021502564936185979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A175887 (n + 1) - A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140535.P10021502564936185979

namespace A140535

/-- `p?[A175887(A175887(n+1)-A004524(n))]` -/
def P10021502564936185979.Spec : Prop :=
  ∀ n, P10021502564936185979.a n = A140535 (n + 1)

end A140535

/-! ## A140535.P10950672597475951414

`p?[A175887(A175887(n+1)-A004525(n))]`
-/

namespace A140535.P10950672597475951414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A175887 (n + 1) - A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140535.P10950672597475951414

namespace A140535

/-- `p?[A175887(A175887(n+1)-A004525(n))]` -/
def P10950672597475951414.Spec : Prop :=
  ∀ n, P10950672597475951414.a n = A140535 (n + 1)

end A140535

/-! ## A140535.P11587332913048327368

`p?[A175887(A175887(n+1)-A004526(n))]`
-/

namespace A140535.P11587332913048327368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A175887 (n + 1) - A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140535.P11587332913048327368

namespace A140535

/-- `p?[A175887(A175887(n+1)-A004526(n))]` -/
def P11587332913048327368.Spec : Prop :=
  ∀ n, P11587332913048327368.a n = A140535 (n + 1)

end A140535

/-! ## A140535.P16406478756136820157

`p?[A175887(A168390(n+1)+A047264(n+1))]`
-/

namespace A140535.P16406478756136820157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A168390 (n + 1) + A047264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140535.P16406478756136820157

namespace A140535

/-- `p?[A175887(A168390(n+1)+A047264(n+1))]` -/
def P16406478756136820157.Spec : Prop :=
  ∀ n, P16406478756136820157.a n = A140535 (n + 1)

end A140535

/-!
# A140536: Primes congruent to 13 or 197 mod 210.

The programs for A140536, the canonical program `A140536.P4269880682316229653` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140536 has offset 1).

The definition of A140536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140536.P4269880682316229653

`p?[A154266(n)+1-A057353(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140536

/-- `p?[A154266(n)+1-A057353(n)]` -/
def P4269880682316229653.Spec : Prop :=
  ∀ n, P4269880682316229653.a n = A140536 (n + 1)

theorem P4269880682316229653.correct : P4269880682316229653.Spec := by
  intro n
  simp only [A140536, Nat.add_sub_cancel]

end A140536

/-! ## A140536.P12652301037791919734

`p?[A017209(A016777(n))-A057353(n)]`
-/

namespace A140536.P12652301037791919734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (A016777 n).toNat - A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P12652301037791919734

namespace A140536

/-- `p?[A017209(A016777(n))-A057353(n)]` -/
def P12652301037791919734.Spec : Prop :=
  ∀ n, P12652301037791919734.a n = A140536 (n + 1)

end A140536

/-! ## A140536.P17639868473064344092

`p?[A128468(n)-A304802(A016789(n))]`
-/

namespace A140536.P17639868473064344092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - A304802 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P17639868473064344092

namespace A140536

/-- `p?[A128468(n)-A304802(A016789(n))]` -/
def P17639868473064344092.Spec : Prop :=
  ∀ n, P17639868473064344092.a n = A140536 (n + 1)

end A140536

/-! ## A140536.P9369919079573807904

`p?[A073762(n+1)+A057353(A016789(n))]`
-/

namespace A140536.P9369919079573807904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1) + A057353 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P9369919079573807904

namespace A140536

/-- `p?[A073762(n+1)+A057353(A016789(n))]` -/
def P9369919079573807904.Spec : Prop :=
  ∀ n, P9369919079573807904.a n = A140536 (n + 1)

end A140536

/-! ## A140536.P6374509475531500927

`p?[A175887(A047276(n+1))-(-1)^n]`
-/

namespace A140536.P6374509475531500927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A047276 (n + 1)).toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P6374509475531500927

namespace A140536

/-- `p?[A175887(A047276(n+1))-(-1)^n]` -/
def P6374509475531500927.Spec : Prop :=
  ∀ n, P6374509475531500927.a n = A140536 (n + 1)

end A140536

/-! ## A140536.P475015288776460887

`p?[A047201(5*n+4)+A016897(4*n+1)]`
-/

namespace A140536.P475015288776460887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (5 * n + 4) + A016897 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P475015288776460887

namespace A140536

/-- `p?[A047201(5*n+4)+A016897(4*n+1)]` -/
def P475015288776460887.Spec : Prop :=
  ∀ n, P475015288776460887.a n = A140536 (n + 1)

end A140536

/-! ## A140536.P6477098897187432465

`p?[A007775(A017029(A014601(n)))]`
-/

namespace A140536.P6477098897187432465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A017029 (A014601 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P6477098897187432465

namespace A140536

/-- `p?[A007775(A017029(A014601(n)))]` -/
def P6477098897187432465.Spec : Prop :=
  ∀ n, P6477098897187432465.a n = A140536 (n + 1)

end A140536

/-! ## A140536.P14289566620728461588

`p?[A001651(A047276(A016885(n)))]`
-/

namespace A140536.P14289566620728461588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A047276 (A016885 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P14289566620728461588

namespace A140536

/-- `p?[A001651(A047276(A016885(n)))]` -/
def P14289566620728461588.Spec : Prop :=
  ∀ n, P14289566620728461588.a n = A140536 (n + 1)

end A140536

/-! ## A140536.P7713162162819953274

`p?[A001651(A082286(n)-A008619(n))]`
-/

namespace A140536.P7713162162819953274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A082286 n - A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P7713162162819953274

namespace A140536

/-- `p?[A001651(A082286(n)-A008619(n))]` -/
def P7713162162819953274.Spec : Prop :=
  ∀ n, P7713162162819953274.a n = A140536 (n + 1)

end A140536

/-! ## A140536.P4442478119360529582

`∩[A140533(n+1), A312160(n)]`
-/

namespace A140536.P4442478119360529582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140536.P4442478119360529582

namespace A140536

/-- `∩[A140533(n+1), A312160(n)]` -/
def P4442478119360529582.Spec : Prop :=
  ∀ n, (P4442478119360529582.a n : ℤ) = A140536 (n + 1)

end A140536

/-!
# A140537: Primes congruent to 17 or 193 mod 210.

The programs for A140537, the canonical program `A140537.P2880035962055058606` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140537 has offset 1).

The definition of A140537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140537.P2880035962055058606

`p?[35*n-51-n%3]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140537

/-- `p?[35*n-51-n%3]` -/
def P2880035962055058606.Spec : Prop :=
  ∀ n, P2880035962055058606.a n = A140537 (n + 1)

theorem P2880035962055058606.correct : P2880035962055058606.Spec := by
  intro n
  simp only [A140537, Nat.add_sub_cancel]

end A140537

/-! ## A140537.P2724381298662426527

`p?[A176010(n+1)+A047621(n+1)]`
-/

namespace A140537.P2724381298662426527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176010 (n + 1) + A047621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P2724381298662426527

namespace A140537

/-- `p?[A176010(n+1)+A047621(n+1)]` -/
def P2724381298662426527.Spec : Prop :=
  ∀ n, P2724381298662426527.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P10881305549810132756

`p?[37*n+17-A008585(A004396(n))]`
-/

namespace A140537.P10881305549810132756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n + 17 : ℤ) - A008585 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P10881305549810132756

namespace A140537

/-- `p?[37*n+17-A008585(A004396(n))]` -/
def P10881305549810132756.Spec : Prop :=
  ∀ n, P10881305549810132756.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P8181464644519159865

`p?[A248474(A047276(n+1))]`
-/

namespace A140537.P8181464644519159865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (A047276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P8181464644519159865

namespace A140537

/-- `p?[A248474(A047276(n+1))]` -/
def P8181464644519159865.Spec : Prop :=
  ∀ n, P8181464644519159865.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P8223338858913624146

`p?[A248474(A047218(n+1)+n+2)]`
-/

namespace A140537.P8223338858913624146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (A047218 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P8223338858913624146

namespace A140537

/-- `p?[A248474(A047218(n+1)+n+2)]` -/
def P8223338858913624146.Spec : Prop :=
  ∀ n, P8223338858913624146.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P15178913177399016561

`∩[A063230(n+1), A140533(n+1)]`
-/

namespace A140537.P15178913177399016561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140537.P15178913177399016561

namespace A140537

/-- `∩[A063230(n+1), A140533(n+1)]` -/
def P15178913177399016561.Spec : Prop :=
  ∀ n, (P15178913177399016561.a n : ℤ) = A140537 (n + 1)

end A140537

/-! ## A140537.P6740197443670317415

`p?[A248474(A008619(A017017(n)))]`
-/

namespace A140537.P6740197443670317415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (A008619 (A017017 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P6740197443670317415

namespace A140537

/-- `p?[A248474(A008619(A017017(n)))]` -/
def P6740197443670317415.Spec : Prop :=
  ∀ n, P6740197443670317415.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P16075586835782990002

`p?[A017029(5*n+2)-A049347(n)]`
-/

namespace A140537.P16075586835782990002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (5 * n + 2) - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P16075586835782990002

namespace A140537

/-- `p?[A017029(5*n+2)-A049347(n)]` -/
def P16075586835782990002.Spec : Prop :=
  ∀ n, P16075586835782990002.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P9899308988573266653

`p?[A056021(A016885(n))-A090771(n+1)]`
-/

namespace A140537.P9899308988573266653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A016885 n).toNat - A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P9899308988573266653

namespace A140537

/-- `p?[A056021(A016885(n))-A090771(n+1)]` -/
def P9899308988573266653.Spec : Prop :=
  ∀ n, P9899308988573266653.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P9379363500298185222

`p?[A265035(5*(n+1))+A008619(5*(n+1))]`
-/

namespace A140537.P9379363500298185222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (5 * (n + 1)) + A008619 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P9379363500298185222

namespace A140537

/-- `p?[A265035(5*(n+1))+A008619(5*(n+1))]` -/
def P9379363500298185222.Spec : Prop :=
  ∀ n, P9379363500298185222.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P4987593434726564950

`p?[A016789(A017581(n))-A064429(n)]`
-/

namespace A140537.P4987593434726564950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A017581 n).toNat - A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P4987593434726564950

namespace A140537

/-- `p?[A016789(A017581(n))-A064429(n)]` -/
def P4987593434726564950.Spec : Prop :=
  ∀ n, P4987593434726564950.a n = A140537 (n + 1)

end A140537

/-! ## A140537.P9167622689620413403

`p?[A169600(n+1)+A005408(A155097(n+1))]`
-/

namespace A140537.P9167622689620413403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (n + 1) + A005408 (A155097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P9167622689620413403

namespace A140537

/-- `p?[A169600(n+1)+A005408(A155097(n+1))]` -/
def P9167622689620413403.Spec : Prop :=
  ∀ n, P9167622689620413403.a n = A140537 (n + 1)

end A140537

/-!
# A140538: Greatest prime factor of 2*n^4 + 1.

The programs for A140538, there is no canonical definition to state claims against.
-/

/-! ## A140538.P13885489314219005949

`A379351(2*(n+1)²)`
-/

namespace A140538.P13885489314219005949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379351 (2 * (n + 1) ^ 2)

end

end A140538.P13885489314219005949

/-! ## A140538.P301319182369813077

`A006530(2*(n+1)^4+1)`
-/

namespace A140538.P301319182369813077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1) ^ 4 + 1)

end

end A140538.P301319182369813077

/-! ## A140538.P6466856601283856553

`or(1, A006530(2*(n+1)²²+1)-1)`
-/

namespace A140538.P6466856601283856553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (2 * ((n + 1) ^ 2) ^ 2 + 1) - 1)

end

end A140538.P6466856601283856553

/-! ## A140538.P396763885392830981

`p?[A006530(A058331(n²))]`
-/

namespace A140538.P396763885392830981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A058331 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140538.P396763885392830981

/-! ## A140538.P10553782426939002744

`A006530(2*(n+1)²²+1)%A069275(n+1)`
-/

namespace A140538.P10553782426939002744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (2 * ((n + 1) ^ 2) ^ 2 + 1)) (A069275 (n + 1))

end

end A140538.P10553782426939002744

/-!
# A140539: a(n) is smallest number with divisors which are congruent to 1, 2, ..., n-1 mod n.

The programs for A140539, there is no canonical definition to state claims against.
-/

/-! ## A140539.P2147942635122571854

`A280171(n+1)/ratio[A003418(n)]`
-/

namespace A140539.P2147942635122571854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280171 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A140539.P2147942635122571854

/-! ## A140539.P1518127560541987441

`A280171(n+1)/A014963(n+1)`
-/

namespace A140539.P1518127560541987441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280171 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A140539.P1518127560541987441

/-! ## A140539.P2193049502017983997

`A280171(n+1)/∏{d}[A020500(n+1), #]`
-/

namespace A140539.P2193049502017983997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280171 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ)

end

end A140539.P2193049502017983997

/-! ## A140539.P2574512585432652140

`A280171(n+1)/A006530(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A140539.P2574512585432652140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280171 (n + 1) : ℚ) / (A006530 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat : ℚ)

end

end A140539.P2574512585432652140

/-! ## A140539.P579831746896389322

`A280171(n+1)/A020639(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A140539.P579831746896389322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280171 (n + 1) : ℚ) / (A020639 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat : ℚ)

end

end A140539.P579831746896389322

/-! ## A140539.P266153187098735175

`A280171(n+1)/A028310(A020500(n+1))`
-/

namespace A140539.P266153187098735175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280171 (n + 1) : ℚ) / (A028310 (A020500 (n + 1)).toNat : ℚ)

end

end A140539.P266153187098735175

/-! ## A140539.P1473110905453873582

`A280171(n+1)/A006530(A100994(n+1))`
-/

namespace A140539.P1473110905453873582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280171 (n + 1) : ℚ) / (A006530 (A100994 (n + 1)).toNat : ℚ)

end

end A140539.P1473110905453873582

/-! ## A140539.P7628484009575078043

`A280171(n+1)/gcd(A020500(n+1), A129202(n))`
-/

namespace A140539.P7628484009575078043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280171 (n + 1) : ℚ) / (Int.gcd (A020500 (n + 1)) (A129202 n) : ℚ)

end

end A140539.P7628484009575078043

/-!
# A140540: Primes of form 17*n - 3.

The programs for A140540, there is no canonical definition to state claims against.
-/

/-! ## A140540.P8126828730334632790

`∪[A142485(n+1), A142495(n+1)]`
-/

namespace A140540.P8126828730334632790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P8126828730334632790

/-! ## A140540.P11878468156888499777

`p?[17*n-3]`
-/

namespace A140540.P11878468156888499777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140540.P11878468156888499777

/-! ## A140540.P3999124176685227858

`∩[A049549(n+1), A361692(n+1)-2]`
-/

namespace A140540.P3999124176685227858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P3999124176685227858

/-! ## A140540.P9878357893736126762

`∩[A000040(n+1), A361692(n+1)-2]`
-/

namespace A140540.P9878357893736126762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P9878357893736126762

/-! ## A140540.P483084182686015977

`∩[A004139(n+1), A361692(n+1)-2]`
-/

namespace A140540.P483084182686015977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P483084182686015977

/-! ## A140540.P13617826724727102843

`∩[A006005(n+1), A361692(n+1)-2]`
-/

namespace A140540.P13617826724727102843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P13617826724727102843

/-! ## A140540.P13066501086548128645

`∩[A008578(n+1), A361692(n+1)-2]`
-/

namespace A140540.P13066501086548128645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P13066501086548128645

/-! ## A140540.P5245530268365760089

`∩[A045319(n+1), A361692(n+1)-2]`
-/

namespace A140540.P5245530268365760089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P5245530268365760089

/-! ## A140540.P2198829554247273422

`∩[A045344(n+1), A361692(n+1)-2]`
-/

namespace A140540.P2198829554247273422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P2198829554247273422

/-! ## A140540.P6554779625662438294

`∩[A046022(n+1), A361692(n+1)-2]`
-/

namespace A140540.P6554779625662438294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P6554779625662438294

/-! ## A140540.P13278447721324150392

`∩[A033946(n+1), A361692(n+1)-2]`
-/

namespace A140540.P13278447721324150392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P13278447721324150392

/-! ## A140540.P5307229120638042523

`∩[A067126(n+1), A361692(n+1)-2]`
-/

namespace A140540.P5307229120638042523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P5307229120638042523

/-! ## A140540.P5090695299315174431

`record[A006530(34*(n+1)-3)]`
-/

namespace A140540.P5090695299315174431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (34 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140540.P5090695299315174431

/-! ## A140540.P5453093947564721201

`record[A020639(32*(n+1)+2*n-1)]`
-/

namespace A140540.P5453093947564721201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((32 * (n + 1) : ℤ) + ((2 * n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140540.P5453093947564721201

/-! ## A140540.P18312141400559318824

`p?[A125169(n+1)+n]%A252053(n+1)`
-/

namespace A140540.P18312141400559318824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A252053 (n + 1))

end

end A140540.P18312141400559318824

/-! ## A140540.P11084057353218278250

`A000265(p?[A195035(n+2)+n])`
-/

namespace A140540.P11084057353218278250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195035 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140540.P11084057353218278250

/-! ## A140540.P2720386939789277320

`∩[A071621(n+2), A175887(n+2)+n]`
-/

namespace A140540.P2720386939789277320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140540.P2720386939789277320

/-!
# A140541: Primes of the form 17*k - 1.

The programs for A140541, the canonical program `A140541.P7773721513779311830` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140541 has offset 1).

The definition of A140541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140541.P7773721513779311830

`∪[A142486(n+1), A142507(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140541

/-- `∪[A142486(n+1), A142507(n+1)]` -/
def P7773721513779311830.Spec : Prop :=
  ∀ n, (P7773721513779311830.a n : ℤ) = A140541 (n + 1)

theorem P7773721513779311830.correct : P7773721513779311830.Spec := by
  intro n
  simp only [A140541, Nat.add_sub_cancel]

end A140541

/-! ## A140541.P10692519500857910558

`p?[abs(1-34*n)]`
-/

namespace A140541.P10692519500857910558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (34 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140541.P10692519500857910558

namespace A140541

/-- `p?[abs(1-34*n)]` -/
def P10692519500857910558.Spec : Prop :=
  ∀ n, P10692519500857910558.a n = A140541 (n + 1)

end A140541

/-! ## A140541.P3119653829394163612

`or(1, p?[17*n-1])`
-/

namespace A140541.P3119653829394163612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A140541.P3119653829394163612

namespace A140541

/-- `or(1, p?[17*n-1])` -/
def P3119653829394163612.Spec : Prop :=
  ∀ n, P3119653829394163612.a n = A140541 (n + 1)

end A140541

/-! ## A140541.P16373666891013026771

`∏{d}[p?[17*n-1], #]`
-/

namespace A140541.P16373666891013026771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A140541.P16373666891013026771

namespace A140541

/-- `∏{d}[p?[17*n-1], #]` -/
def P16373666891013026771.Spec : Prop :=
  ∀ n, (P16373666891013026771.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P9157605953541245083

`∑{p}[p?[17*n-1], #]`
-/

namespace A140541.P9157605953541245083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A140541.P9157605953541245083

namespace A140541

/-- `∑{p}[p?[17*n-1], #]` -/
def P9157605953541245083.Spec : Prop :=
  ∀ n, (P9157605953541245083.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P12835599161122911484

`xor(1, p?[17*(n+1)-1])+1`
-/

namespace A140541.P12835599161122911484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A140541.P12835599161122911484

namespace A140541

/-- `xor(1, p?[17*(n+1)-1])+1` -/
def P12835599161122911484.Spec : Prop :=
  ∀ n, P12835599161122911484.a n = A140541 (n + 1)

end A140541

/-! ## A140541.P15294423647731647741

`p?[34*(n+1)-1]*A054977(n+11)`
-/

namespace A140541.P15294423647731647741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (34 * (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A054977 (n + 11)

end

end A140541.P15294423647731647741

namespace A140541

/-- `p?[34*(n+1)-1]*A054977(n+11)` -/
def P15294423647731647741.Spec : Prop :=
  ∀ n, P15294423647731647741.a n = A140541 (n + 1)

end A140541

/-! ## A140541.P2406282851339613365

`∩[A038889(n+1), A361692(n+1)]`
-/

namespace A140541.P2406282851339613365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P2406282851339613365

namespace A140541

/-- `∩[A038889(n+1), A361692(n+1)]` -/
def P2406282851339613365.Spec : Prop :=
  ∀ n, (P2406282851339613365.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P860928714269266533

`∩[A296938(n+1), A361692(n+1)]`
-/

namespace A140541.P860928714269266533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P860928714269266533

namespace A140541

/-- `∩[A296938(n+1), A361692(n+1)]` -/
def P860928714269266533.Spec : Prop :=
  ∀ n, (P860928714269266533.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P14657897897480331033

`∩[A038889(n+1), A215137(n)-2]`
-/

namespace A140541.P14657897897480331033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P14657897897480331033

namespace A140541

/-- `∩[A038889(n+1), A215137(n)-2]` -/
def P14657897897480331033.Spec : Prop :=
  ∀ n, (P14657897897480331033.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P1708519316645522559

`∩[A034849(n+1), A361692(n+1)]`
-/

namespace A140541.P1708519316645522559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P1708519316645522559

namespace A140541

/-- `∩[A034849(n+1), A361692(n+1)]` -/
def P1708519316645522559.Spec : Prop :=
  ∀ n, (P1708519316645522559.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P12073105120052056337

`∩[A176897(n+1), A361692(n+1)]`
-/

namespace A140541.P12073105120052056337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P12073105120052056337

namespace A140541

/-- `∩[A176897(n+1), A361692(n+1)]` -/
def P12073105120052056337.Spec : Prop :=
  ∀ n, (P12073105120052056337.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P3120991309447877572

`∩[A049549(n+1), A361692(n+1)]`
-/

namespace A140541.P3120991309447877572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P3120991309447877572

namespace A140541

/-- `∩[A049549(n+1), A361692(n+1)]` -/
def P3120991309447877572.Spec : Prop :=
  ∀ n, (P3120991309447877572.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P3593666959704481182

`∩[A361692(n+1), A396555(n+1)]`
-/

namespace A140541.P3593666959704481182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P3593666959704481182

namespace A140541

/-- `∩[A361692(n+1), A396555(n+1)]` -/
def P3593666959704481182.Spec : Prop :=
  ∀ n, (P3593666959704481182.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P8382141704836923086

`∩[A000040(n+1), A361692(n+1)]`
-/

namespace A140541.P8382141704836923086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P8382141704836923086

namespace A140541

/-- `∩[A000040(n+1), A361692(n+1)]` -/
def P8382141704836923086.Spec : Prop :=
  ∀ n, (P8382141704836923086.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P15127464248169696613

`∩[A004139(n+1), A361692(n+1)]`
-/

namespace A140541.P15127464248169696613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P15127464248169696613

namespace A140541

/-- `∩[A004139(n+1), A361692(n+1)]` -/
def P15127464248169696613.Spec : Prop :=
  ∀ n, (P15127464248169696613.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P3591388766864173543

`∩[A006005(n+1), A361692(n+1)]`
-/

namespace A140541.P3591388766864173543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P3591388766864173543

namespace A140541

/-- `∩[A006005(n+1), A361692(n+1)]` -/
def P3591388766864173543.Spec : Prop :=
  ∀ n, (P3591388766864173543.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P5425928473716285564

`∩[A008578(n+1), A361692(n+1)]`
-/

namespace A140541.P5425928473716285564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P5425928473716285564

namespace A140541

/-- `∩[A008578(n+1), A361692(n+1)]` -/
def P5425928473716285564.Spec : Prop :=
  ∀ n, (P5425928473716285564.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P14022211632147866321

`∩[A033946(n+1), A361692(n+1)]`
-/

namespace A140541.P14022211632147866321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P14022211632147866321

namespace A140541

/-- `∩[A033946(n+1), A361692(n+1)]` -/
def P14022211632147866321.Spec : Prop :=
  ∀ n, (P14022211632147866321.a n : ℤ) = A140541 (n + 1)

end A140541

/-! ## A140541.P5524763097699450395

`∩[A045319(n+1), A361692(n+1)]`
-/

namespace A140541.P5524763097699450395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P5524763097699450395

namespace A140541

/-- `∩[A045319(n+1), A361692(n+1)]` -/
def P5524763097699450395.Spec : Prop :=
  ∀ n, (P5524763097699450395.a n : ℤ) = A140541 (n + 1)

end A140541

/-!
# A140542: Primes of form 17*n - 6.

The programs for A140542, the canonical program `A140542.P8517154036007489647` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140542 has offset 1).

The definition of A140542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140542.P8517154036007489647

`∪[A142483(n+1), A142493(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140542

/-- `∪[A142483(n+1), A142493(n+1)]` -/
def P8517154036007489647.Spec : Prop :=
  ∀ n, (P8517154036007489647.a n : ℤ) = A140542 (n + 1)

theorem P8517154036007489647.correct : P8517154036007489647.Spec := by
  intro n
  simp only [A140542, Nat.add_sub_cancel]

end A140542

/-! ## A140542.P3530249275615424785

`p?[17*n-6]`
-/

namespace A140542.P3530249275615424785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140542.P3530249275615424785

namespace A140542

/-- `p?[17*n-6]` -/
def P3530249275615424785.Spec : Prop :=
  ∀ n, P3530249275615424785.a n = A140542 (n + 1)

end A140542

/-! ## A140542.P6067282810833409458

`∏{p}[p?[17*n+11], #]`
-/

namespace A140542.P6067282810833409458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A140542.P6067282810833409458

namespace A140542

/-- `∏{p}[p?[17*n+11], #]` -/
def P6067282810833409458.Spec : Prop :=
  ∀ n, (P6067282810833409458.a n : ℤ) = A140542 (n + 1)

end A140542

/-! ## A140542.P13834811855213250932

`record[A020639(8*(2*n+1)+n+3)]`
-/

namespace A140542.P13834811855213250932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * (2 * n + 1) + (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140542.P13834811855213250932

namespace A140542

/-- `record[A020639(8*(2*n+1)+n+3)]` -/
def P13834811855213250932.Spec : Prop :=
  ∀ n, P13834811855213250932.a n = A140542 (n + 1)

end A140542

/-! ## A140542.P5774464471549314490

`A001414(p?[n+1+2*(8*n+5)])`
-/

namespace A140542.P5774464471549314490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + 2 * (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140542.P5774464471549314490

namespace A140542

/-- `A001414(p?[n+1+2*(8*n+5)])` -/
def P5774464471549314490.Spec : Prop :=
  ∀ n, P5774464471549314490.a n = A140542 (n + 1)

end A140542

/-! ## A140542.P7174282596765168544

`filter[A155449(2*(n+1)), A010051(#)]`
-/

namespace A140542.P7174282596765168544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155449 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A140542.P7174282596765168544

namespace A140542

/-- `filter[A155449(2*(n+1)), A010051(#)]` -/
def P7174282596765168544.Spec : Prop :=
  ∀ n, P7174282596765168544.a n = A140542 (n + 1)

end A140542

/-! ## A140542.P17258646427916420649

`filter[A155449(2*(n+1)), A355937(#)]`
-/

namespace A140542.P17258646427916420649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155449 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A140542.P17258646427916420649

namespace A140542

/-- `filter[A155449(2*(n+1)), A355937(#)]` -/
def P17258646427916420649.Spec : Prop :=
  ∀ n, P17258646427916420649.a n = A140542 (n + 1)

end A140542

/-! ## A140542.P2062012464718234063

`∩[A155449(n+1), A215161(n+1)]`
-/

namespace A140542.P2062012464718234063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140542.P2062012464718234063

namespace A140542

/-- `∩[A155449(n+1), A215161(n+1)]` -/
def P2062012464718234063.Spec : Prop :=
  ∀ n, (P2062012464718234063.a n : ℤ) = A140542 (n + 1)

end A140542

/-! ## A140542.P1749272940013964245

`∑{p}[p?[A016825(A016825(n))+1+n], #]`
-/

namespace A140542.P1749272940013964245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A016825 n).toNat + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A140542.P1749272940013964245

namespace A140542

/-- `∑{p}[p?[A016825(A016825(n))+1+n], #]` -/
def P1749272940013964245.Spec : Prop :=
  ∀ n, (P1749272940013964245.a n : ℤ) = A140542 (n + 1)

end A140542

/-! ## A140542.P15595903640951553188

`A000265(p?[A017089(2*n+1)+n+1])`
-/

namespace A140542.P15595903640951553188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (2 * n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140542.P15595903640951553188

namespace A140542

/-- `A000265(p?[A017089(2*n+1)+n+1])` -/
def P15595903640951553188.Spec : Prop :=
  ∀ n, P15595903640951553188.a n = A140542 (n + 1)

end A140542

/-! ## A140542.P514841312319767970

`filter[A155449(2*(n+1)), A302777(#)]`
-/

namespace A140542.P514841312319767970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155449 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A140542.P514841312319767970

namespace A140542

/-- `filter[A155449(2*(n+1)), A302777(#)]` -/
def P514841312319767970.Spec : Prop :=
  ∀ n, P514841312319767970.a n = A140542 (n + 1)

end A140542

/-! ## A140542.P14643359737752728348

`∩[A004769(2*n)+n, A000040(n+2)]`
-/

namespace A140542.P14643359737752728348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140542.P14643359737752728348

namespace A140542

/-- `∩[A004769(2*n)+n, A000040(n+2)]` -/
def P14643359737752728348.Spec : Prop :=
  ∀ n, (P14643359737752728348.a n : ℤ) = A140542 (n + 1)

end A140542

/-! ## A140542.P2263809393377844504

`∩[A004769(2*n)+n, A004139(n+2)]`
-/

namespace A140542.P2263809393377844504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140542.P2263809393377844504

namespace A140542

/-- `∩[A004769(2*n)+n, A004139(n+2)]` -/
def P2263809393377844504.Spec : Prop :=
  ∀ n, (P2263809393377844504.a n : ℤ) = A140542 (n + 1)

end A140542

/-! ## A140542.P1036312930607339484

`∩[A004769(2*n)+n, A006005(n+2)]`
-/

namespace A140542.P1036312930607339484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140542.P1036312930607339484

namespace A140542

/-- `∩[A004769(2*n)+n, A006005(n+2)]` -/
def P1036312930607339484.Spec : Prop :=
  ∀ n, (P1036312930607339484.a n : ℤ) = A140542 (n + 1)

end A140542

/-! ## A140542.P5874231840364805361

`∩[A017101(2*n+1)+n, A000040(n+2)]`
-/

namespace A140542.P5874231840364805361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140542.P5874231840364805361

namespace A140542

/-- `∩[A017101(2*n+1)+n, A000040(n+2)]` -/
def P5874231840364805361.Spec : Prop :=
  ∀ n, (P5874231840364805361.a n : ℤ) = A140542 (n + 1)

end A140542

/-! ## A140542.P4527882821110744466

`∩[A004769(2*n)+n, A000430(n+2)]`
-/

namespace A140542.P4527882821110744466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140542.P4527882821110744466

namespace A140542

/-- `∩[A004769(2*n)+n, A000430(n+2)]` -/
def P4527882821110744466.Spec : Prop :=
  ∀ n, (P4527882821110744466.a n : ℤ) = A140542 (n + 1)

end A140542

/-! ## A140542.P8361718681710007232

`∩[A000040(n+1), A047621(A047621(n+1))+n]`
-/

namespace A140542.P8361718681710007232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (A047621 (n + 1)).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140542.P8361718681710007232

namespace A140542

/-- `∩[A000040(n+1), A047621(A047621(n+1))+n]` -/
def P8361718681710007232.Spec : Prop :=
  ∀ n, (P8361718681710007232.a n : ℤ) = A140542 (n + 1)

end A140542

/-!
# A140543: Primes congruent to 15 mod 17.

The programs for A140543, the canonical program `A140543.P10748940186390529509` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140543 has offset 1).

The definition of A140543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140543.P10748940186390529509

`∪[A142496(n+1), A142506(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140543

/-- `∪[A142496(n+1), A142506(n+1)]` -/
def P10748940186390529509.Spec : Prop :=
  ∀ n, (P10748940186390529509.a n : ℤ) = A140543 (n + 1)

theorem P10748940186390529509.correct : P10748940186390529509.Spec := by
  intro n
  simp only [A140543, Nat.add_sub_cancel]

end A140543

/-! ## A140543.P7000855157567027177

`p?[17*n-2]`
-/

namespace A140543.P7000855157567027177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140543.P7000855157567027177

namespace A140543

/-- `p?[17*n-2]` -/
def P7000855157567027177.Spec : Prop :=
  ∀ n, P7000855157567027177.a n = A140543 (n + 1)

end A140543

/-! ## A140543.P7206538345780514064

`or(1, p?[a(n-1)+17])` with `a(0)=32`
-/

namespace A140543.P7206538345780514064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140543.P7206538345780514064

namespace A140543

/-- `or(1, p?[a(n-1)+17])` -/
def P7206538345780514064.Spec : Prop :=
  ∀ n, (P7206538345780514064.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P10562417121307118470

`∏{d}[p?[a(n-1)+17], #]` with `a(0)=32`
-/

namespace A140543.P10562417121307118470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f2 =>
  f2 (n - 1) + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A140543.P10562417121307118470

namespace A140543

/-- `∏{d}[p?[a(n-1)+17], #]` -/
def P10562417121307118470.Spec : Prop :=
  ∀ n, (P10562417121307118470.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P4450399243380439066

`∑{p}[p?[a(n-1)+17], #]` with `a(0)=32`
-/

namespace A140543.P4450399243380439066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f2 =>
  f2 (n - 1) + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A140543.P4450399243380439066

namespace A140543

/-- `∑{p}[p?[a(n-1)+17], #]` -/
def P4450399243380439066.Spec : Prop :=
  ∀ n, (P4450399243380439066.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P3694391566719098163

`floor(sqrt(p?[16*(n+2)+n]²+1))`
-/

namespace A140543.P3694391566719098163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (n + 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1)

end

end A140543.P3694391566719098163

namespace A140543

/-- `floor(sqrt(p?[16*(n+2)+n]²+1))` -/
def P3694391566719098163.Spec : Prop :=
  ∀ n, (P3694391566719098163.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P9254507556818145698

`∏{p}[p?[2*(A016969(n)+11*n)+5], #]`
-/

namespace A140543.P9254507556818145698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016969 n + (11 * n : ℤ)) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A140543.P9254507556818145698

namespace A140543

/-- `∏{p}[p?[2*(A016969(n)+11*n)+5], #]` -/
def P9254507556818145698.Spec : Prop :=
  ∀ n, (P9254507556818145698.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P8376298236960057321

`∩[A038889(n+1), A361692(n+1)-1]`
-/

namespace A140543.P8376298236960057321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P8376298236960057321

namespace A140543

/-- `∩[A038889(n+1), A361692(n+1)-1]` -/
def P8376298236960057321.Spec : Prop :=
  ∀ n, (P8376298236960057321.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P16559589069263758607

`∩[A296938(n+1), A361692(n+1)-1]`
-/

namespace A140543.P16559589069263758607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P16559589069263758607

namespace A140543

/-- `∩[A296938(n+1), A361692(n+1)-1]` -/
def P16559589069263758607.Spec : Prop :=
  ∀ n, (P16559589069263758607.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P8997587319115745457

`∩[A049549(n+1), A361692(n+1)-1]`
-/

namespace A140543.P8997587319115745457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P8997587319115745457

namespace A140543

/-- `∩[A049549(n+1), A361692(n+1)-1]` -/
def P8997587319115745457.Spec : Prop :=
  ∀ n, (P8997587319115745457.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P284255267676227479

`∩[A000040(n+1), A361692(n+1)-1]`
-/

namespace A140543.P284255267676227479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P284255267676227479

namespace A140543

/-- `∩[A000040(n+1), A361692(n+1)-1]` -/
def P284255267676227479.Spec : Prop :=
  ∀ n, (P284255267676227479.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P17583811104536974100

`∩[A004139(n+1), A361692(n+1)-1]`
-/

namespace A140543.P17583811104536974100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P17583811104536974100

namespace A140543

/-- `∩[A004139(n+1), A361692(n+1)-1]` -/
def P17583811104536974100.Spec : Prop :=
  ∀ n, (P17583811104536974100.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P1151270673183426001

`∩[A006005(n+1), A361692(n+1)-1]`
-/

namespace A140543.P1151270673183426001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P1151270673183426001

namespace A140543

/-- `∩[A006005(n+1), A361692(n+1)-1]` -/
def P1151270673183426001.Spec : Prop :=
  ∀ n, (P1151270673183426001.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P17092116603832164891

`∩[A008578(n+1), A361692(n+1)-1]`
-/

namespace A140543.P17092116603832164891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P17092116603832164891

namespace A140543

/-- `∩[A008578(n+1), A361692(n+1)-1]` -/
def P17092116603832164891.Spec : Prop :=
  ∀ n, (P17092116603832164891.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P17256903884725069895

`∩[A033946(n+1), A361692(n+1)-1]`
-/

namespace A140543.P17256903884725069895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P17256903884725069895

namespace A140543

/-- `∩[A033946(n+1), A361692(n+1)-1]` -/
def P17256903884725069895.Spec : Prop :=
  ∀ n, (P17256903884725069895.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P2659491090635135313

`∩[A045319(n+1), A361692(n+1)-1]`
-/

namespace A140543.P2659491090635135313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P2659491090635135313

namespace A140543

/-- `∩[A045319(n+1), A361692(n+1)-1]` -/
def P2659491090635135313.Spec : Prop :=
  ∀ n, (P2659491090635135313.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P4171371920887441065

`∩[A045344(n+1), A361692(n+1)-1]`
-/

namespace A140543.P4171371920887441065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P4171371920887441065

namespace A140543

/-- `∩[A045344(n+1), A361692(n+1)-1]` -/
def P4171371920887441065.Spec : Prop :=
  ∀ n, (P4171371920887441065.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P9634491316253020132

`∩[A046022(n+1), A361692(n+1)-1]`
-/

namespace A140543.P9634491316253020132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P9634491316253020132

namespace A140543

/-- `∩[A046022(n+1), A361692(n+1)-1]` -/
def P9634491316253020132.Spec : Prop :=
  ∀ n, (P9634491316253020132.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P2349837253905872534

`∩[A067126(n+1), A361692(n+1)-1]`
-/

namespace A140543.P2349837253905872534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P2349837253905872534

namespace A140543

/-- `∩[A067126(n+1), A361692(n+1)-1]` -/
def P2349837253905872534.Spec : Prop :=
  ∀ n, (P2349837253905872534.a n : ℤ) = A140543 (n + 1)

end A140543

/-! ## A140543.P17312881860801664252

`∩[A004771(2*n+1)+n, A000040(n+2)]`
-/

namespace A140543.P17312881860801664252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P17312881860801664252

namespace A140543

/-- `∩[A004771(2*n+1)+n, A000040(n+2)]` -/
def P17312881860801664252.Spec : Prop :=
  ∀ n, (P17312881860801664252.a n : ℤ) = A140543 (n + 1)

end A140543

/-!
# A140544: Primes of form 17*k + 2.

The programs for A140544, the canonical program `A140544.P10410583773126604403` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140544 has offset 1).

The definition of A140544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140544.P3790386850487347888

`∩[A214890(n+1), A215392(n+1)]`
-/

namespace A140544.P3790386850487347888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P3790386850487347888

namespace A140544

/-- `∩[A214890(n+1), A215392(n+1)]` -/
def P3790386850487347888.Spec : Prop :=
  ∀ n, (P3790386850487347888.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P15152686050537520893

`∩[A214890(n+1), A215208(n+1)]`
-/

namespace A140544.P15152686050537520893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P15152686050537520893

namespace A140544

/-- `∩[A214890(n+1), A215208(n+1)]` -/
def P15152686050537520893.Spec : Prop :=
  ∀ n, (P15152686050537520893.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P8185568663112011434

`∩[A214890(n+1), A215169(n+1)]`
-/

namespace A140544.P8185568663112011434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P8185568663112011434

namespace A140544

/-- `∩[A214890(n+1), A215169(n+1)]` -/
def P8185568663112011434.Spec : Prop :=
  ∀ n, (P8185568663112011434.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P14231704945186858354

`∩[A215169(n+1), A215208(n+1)]`
-/

namespace A140544.P14231704945186858354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P14231704945186858354

namespace A140544

/-- `∩[A215169(n+1), A215208(n+1)]` -/
def P14231704945186858354.Spec : Prop :=
  ∀ n, (P14231704945186858354.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P10410583773126604403

`p?[17*n+2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140544

/-- `p?[17*n+2]` -/
def P10410583773126604403.Spec : Prop :=
  ∀ n, (P10410583773126604403.a n : ℤ) = A140544 (n + 1)

theorem P10410583773126604403.correct : P10410583773126604403.Spec := by
  intro n
  simp only [A140544, Nat.add_sub_cancel]

end A140544

/-! ## A140544.P3209558948165918523

`∩[A215153(n+1), A215169(n+1)]`
-/

namespace A140544.P3209558948165918523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P3209558948165918523

namespace A140544

/-- `∩[A215153(n+1), A215169(n+1)]` -/
def P3209558948165918523.Spec : Prop :=
  ∀ n, (P3209558948165918523.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P154772251283128376

`∩[A215153(n+1), A215208(n+1)]`
-/

namespace A140544.P154772251283128376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P154772251283128376

namespace A140544

/-- `∩[A215153(n+1), A215208(n+1)]` -/
def P154772251283128376.Spec : Prop :=
  ∀ n, (P154772251283128376.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P9045421066623342304

`∩[A215104(n+1), A215208(n+1)]`
-/

namespace A140544.P9045421066623342304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P9045421066623342304

namespace A140544

/-- `∩[A215104(n+1), A215208(n+1)]` -/
def P9045421066623342304.Spec : Prop :=
  ∀ n, (P9045421066623342304.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P7987393370945151597

`∩[A215104(n+1), A215392(n+1)]`
-/

namespace A140544.P7987393370945151597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P7987393370945151597

namespace A140544

/-- `∩[A215104(n+1), A215392(n+1)]` -/
def P7987393370945151597.Spec : Prop :=
  ∀ n, (P7987393370945151597.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P12729877905741660503

`∩[A214890(n+1), A215212(n+1)]`
-/

namespace A140544.P12729877905741660503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P12729877905741660503

namespace A140544

/-- `∩[A214890(n+1), A215212(n+1)]` -/
def P12729877905741660503.Spec : Prop :=
  ∀ n, (P12729877905741660503.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P4013085758129172866

`∩[A215153(n+1), A215212(n+1)]`
-/

namespace A140544.P4013085758129172866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P4013085758129172866

namespace A140544

/-- `∩[A215153(n+1), A215212(n+1)]` -/
def P4013085758129172866.Spec : Prop :=
  ∀ n, (P4013085758129172866.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P10062118435592240033

`∩[A215212(n+1), A215376(n+1)]`
-/

namespace A140544.P10062118435592240033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P10062118435592240033

namespace A140544

/-- `∩[A215212(n+1), A215376(n+1)]` -/
def P10062118435592240033.Spec : Prop :=
  ∀ n, (P10062118435592240033.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P1855116207805695915

`∩[A214890(n+1), A215273(n+1)]`
-/

namespace A140544.P1855116207805695915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P1855116207805695915

namespace A140544

/-- `∩[A214890(n+1), A215273(n+1)]` -/
def P1855116207805695915.Spec : Prop :=
  ∀ n, (P1855116207805695915.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P10932756341118079135

`∩[A215169(n+1), A215281(n+1)]`
-/

namespace A140544.P10932756341118079135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P10932756341118079135

namespace A140544

/-- `∩[A215169(n+1), A215281(n+1)]` -/
def P10932756341118079135.Spec : Prop :=
  ∀ n, (P10932756341118079135.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P16262006717888075004

`∩[A215208(n+1), A215273(n+1)]`
-/

namespace A140544.P16262006717888075004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P16262006717888075004

namespace A140544

/-- `∩[A215208(n+1), A215273(n+1)]` -/
def P16262006717888075004.Spec : Prop :=
  ∀ n, (P16262006717888075004.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P16445785388453907634

`∩[A215208(n+1), A215281(n+1)]`
-/

namespace A140544.P16445785388453907634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P16445785388453907634

namespace A140544

/-- `∩[A215208(n+1), A215281(n+1)]` -/
def P16445785388453907634.Spec : Prop :=
  ∀ n, (P16445785388453907634.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P491123130694563402

`∩[A215212(n+1), A215281(n+1)]`
-/

namespace A140544.P491123130694563402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P491123130694563402

namespace A140544

/-- `∩[A215212(n+1), A215281(n+1)]` -/
def P491123130694563402.Spec : Prop :=
  ∀ n, (P491123130694563402.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P15159370592128646477

`∩[A215169(n+1), A215360(n+1)]`
-/

namespace A140544.P15159370592128646477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P15159370592128646477

namespace A140544

/-- `∩[A215169(n+1), A215360(n+1)]` -/
def P15159370592128646477.Spec : Prop :=
  ∀ n, (P15159370592128646477.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P11097886062616222601

`∩[A215273(n+1), A215281(n+1)]`
-/

namespace A140544.P11097886062616222601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P11097886062616222601

namespace A140544

/-- `∩[A215273(n+1), A215281(n+1)]` -/
def P11097886062616222601.Spec : Prop :=
  ∀ n, (P11097886062616222601.a n : ℤ) = A140544 (n + 1)

end A140544

/-! ## A140544.P9796247809872031305

`∩[A215392(n+1), A215388(n+1)]`
-/

namespace A140544.P9796247809872031305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140544.P9796247809872031305

namespace A140544

/-- `∩[A215392(n+1), A215388(n+1)]` -/
def P9796247809872031305.Spec : Prop :=
  ∀ n, (P9796247809872031305.a n : ℤ) = A140544 (n + 1)

end A140544

/-!
# A140545: Primes of form 17n + 6.

The programs for A140545, the canonical program `A140545.P7683708236450502896` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140545 has offset 1).

The definition of A140545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140545.P7683708236450502896

`∪[A142490(n+1), A142500(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140545

/-- `∪[A142490(n+1), A142500(n+1)]` -/
def P7683708236450502896.Spec : Prop :=
  ∀ n, (P7683708236450502896.a n : ℤ) = A140545 (n + 1)

theorem P7683708236450502896.correct : P7683708236450502896.Spec := by
  intro n
  simp only [A140545, Nat.add_sub_cancel]

end A140545

/-! ## A140545.P11925189158542901670

`p?[17*n+6]`
-/

namespace A140545.P11925189158542901670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140545.P11925189158542901670

namespace A140545

/-- `p?[17*n+6]` -/
def P11925189158542901670.Spec : Prop :=
  ∀ n, (P11925189158542901670.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P2773877347589257545

`or(1, p?[17*n-28])`
-/

namespace A140545.P2773877347589257545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A140545.P2773877347589257545

namespace A140545

/-- `or(1, p?[17*n-28])` -/
def P2773877347589257545.Spec : Prop :=
  ∀ n, P2773877347589257545.a n = A140545 (n + 1)

end A140545

/-! ## A140545.P4845896760562888283

`∏{p}[p?[17*n-11], #]`
-/

namespace A140545.P4845896760562888283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A140545.P4845896760562888283

namespace A140545

/-- `∏{p}[p?[17*n-11], #]` -/
def P4845896760562888283.Spec : Prop :=
  ∀ n, (P4845896760562888283.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P15234610325030900514

`∩[A038890(n+1), A154612(n)-1]`
-/

namespace A140545.P15234610325030900514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P15234610325030900514

namespace A140545

/-- `∩[A038890(n+1), A154612(n)-1]` -/
def P15234610325030900514.Spec : Prop :=
  ∀ n, (P15234610325030900514.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P14387412566286897016

`∩[A040140(n+1), A154612(n)-1]`
-/

namespace A140545.P14387412566286897016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P14387412566286897016

namespace A140545

/-- `∩[A040140(n+1), A154612(n)-1]` -/
def P14387412566286897016.Spec : Prop :=
  ∀ n, (P14387412566286897016.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P647560182645975149

`∩[A049549(n+1), A154612(n)-1]`
-/

namespace A140545.P647560182645975149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P647560182645975149

namespace A140545

/-- `∩[A049549(n+1), A154612(n)-1]` -/
def P647560182645975149.Spec : Prop :=
  ∀ n, (P647560182645975149.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P13935433258069297456

`∩[A070303(n+1), A154612(n)-1]`
-/

namespace A140545.P13935433258069297456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P13935433258069297456

namespace A140545

/-- `∩[A070303(n+1), A154612(n)-1]` -/
def P13935433258069297456.Spec : Prop :=
  ∀ n, (P13935433258069297456.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P113788194671201625

`∩[A065376(n+1), A154612(n)-1]`
-/

namespace A140545.P113788194671201625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P113788194671201625

namespace A140545

/-- `∩[A065376(n+1), A154612(n)-1]` -/
def P113788194671201625.Spec : Prop :=
  ∀ n, (P113788194671201625.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P4299748200911241300

`∩[A004139(n+1), A154612(n)-1]`
-/

namespace A140545.P4299748200911241300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P4299748200911241300

namespace A140545

/-- `∩[A004139(n+1), A154612(n)-1]` -/
def P4299748200911241300.Spec : Prop :=
  ∀ n, (P4299748200911241300.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P5756954389546173037

`∩[A261123(n+1), A154612(n)-1]`
-/

namespace A140545.P5756954389546173037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P5756954389546173037

namespace A140545

/-- `∩[A261123(n+1), A154612(n)-1]` -/
def P5756954389546173037.Spec : Prop :=
  ∀ n, (P5756954389546173037.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P4554498319729320346

`∩[A242215(n+1)-n, A261123(n+2)]`
-/

namespace A140545.P4554498319729320346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P4554498319729320346

namespace A140545

/-- `∩[A242215(n+1)-n, A261123(n+2)]` -/
def P4554498319729320346.Spec : Prop :=
  ∀ n, (P4554498319729320346.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P6040700188148856822

`∩[A000040(n+1), A154612(n)-1]`
-/

namespace A140545.P6040700188148856822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P6040700188148856822

namespace A140545

/-- `∩[A000040(n+1), A154612(n)-1]` -/
def P6040700188148856822.Spec : Prop :=
  ∀ n, (P6040700188148856822.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P5132083787760292029

`∩[A006005(n+1), A154612(n)-1]`
-/

namespace A140545.P5132083787760292029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P5132083787760292029

namespace A140545

/-- `∩[A006005(n+1), A154612(n)-1]` -/
def P5132083787760292029.Spec : Prop :=
  ∀ n, (P5132083787760292029.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P4062072705182825376

`∩[A008578(n+1), A154612(n)-1]`
-/

namespace A140545.P4062072705182825376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P4062072705182825376

namespace A140545

/-- `∩[A008578(n+1), A154612(n)-1]` -/
def P4062072705182825376.Spec : Prop :=
  ∀ n, (P4062072705182825376.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P5642298949650578196

`∩[A033946(n+1), A154612(n)-1]`
-/

namespace A140545.P5642298949650578196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P5642298949650578196

namespace A140545

/-- `∩[A033946(n+1), A154612(n)-1]` -/
def P5642298949650578196.Spec : Prop :=
  ∀ n, (P5642298949650578196.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P9723146619574722377

`∩[A067126(n+1), A154612(n)-1]`
-/

namespace A140545.P9723146619574722377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P9723146619574722377

namespace A140545

/-- `∩[A067126(n+1), A154612(n)-1]` -/
def P9723146619574722377.Spec : Prop :=
  ∀ n, (P9723146619574722377.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P931015852439418311

`∩[A242215(n+1)-n, A006005(n+2)]`
-/

namespace A140545.P931015852439418311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P931015852439418311

namespace A140545

/-- `∩[A242215(n+1)-n, A006005(n+2)]` -/
def P931015852439418311.Spec : Prop :=
  ∀ n, (P931015852439418311.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P15270460811439799373

`∩[A242215(n+1)-n, A033946(n+2)]`
-/

namespace A140545.P15270460811439799373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P15270460811439799373

namespace A140545

/-- `∩[A242215(n+1)-n, A033946(n+2)]` -/
def P15270460811439799373.Spec : Prop :=
  ∀ n, (P15270460811439799373.a n : ℤ) = A140545 (n + 1)

end A140545

/-! ## A140545.P8793807842461332538

`∩[A242215(n+1)-n, A051948(n+2)]`
-/

namespace A140545.P8793807842461332538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P8793807842461332538

namespace A140545

/-- `∩[A242215(n+1)-n, A051948(n+2)]` -/
def P8793807842461332538.Spec : Prop :=
  ∀ n, (P8793807842461332538.a n : ℤ) = A140545 (n + 1)

end A140545

/-!
# A140546: Primes p such that neither p - 6 nor p + 6 is prime.

The programs for A140546, there is no canonical definition to state claims against.
-/

/-! ## A140546.P5429171288715304586

`p?[A347610(2*n+1)%A016116(n)]`
-/

namespace A140546.P5429171288715304586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347610 (2 * n + 1)) (A016116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140546.P5429171288715304586

/-!
# A140547: Primes p such that neither p - 10 nor p + 10 is prime.

The programs for A140547, there is no canonical definition to state claims against.
-/

/-! ## A140547.P7883280323351226326

`A111227(n+3)%A030072(A002113(2*n+5))`
-/

namespace A140547.P7883280323351226326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111227 (n + 3)) (A030072 (A002113 (2 * n + 5)).toNat)

end

end A140547.P7883280323351226326

/-! ## A140547.P2641326181832556357

`p?[record[A045537(A008729(n))]]`
-/

namespace A140547.P2641326181832556357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (A008729 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140547.P2641326181832556357

/-! ## A140547.P11506548345978465405

`p?[A055948(n)-A169768(n+4)]`
-/

namespace A140547.P11506548345978465405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n - A169768 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140547.P11506548345978465405

/-!
# A140549: Primes p such that neither p - 22 nor p + 22 is prime.

The programs for A140549, there is no canonical definition to state claims against.
-/

/-! ## A140549.P9322795299867576217

`p?[eq[0, char[A140447(n+1)]]]`
-/

namespace A140549.P9322795299867576217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140447 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140549.P9322795299867576217

/-! ## A140549.P15372271462589999351

`p?[lt[A091023(n+2), 72]]`
-/

namespace A140549.P15372271462589999351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091023 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140549.P15372271462589999351

/-! ## A140549.P7066107577000441692

`p?[∑[A007862(A257503(n+1))]]`
-/

namespace A140549.P7066107577000441692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A257503 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140549.P7066107577000441692

/-! ## A140549.P16572345562768116305

`p?[∑[A218800(A106234(n+1))]]`
-/

namespace A140549.P16572345562768116305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218800 (A106234 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140549.P16572345562768116305

/-! ## A140549.P1850431662384222766

`A000040(lt[A206503(n+1), A286249(n+1)])`
-/

namespace A140549.P1850431662384222766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140549.P1850431662384222766

/-!
# A140551: Primes p such that neither |p - 30| nor |p + 30| is prime.

The programs for A140551, there is no canonical definition to state claims against.
-/

/-! ## A140551.P6496291814483508707

`p?[A029955((n+1)*a((n+1)/∏{p}[n+1, #]-1))]` with `a(0)=2`
-/

namespace A140551.P6496291814483508707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A029955 ((n + 1 : ℤ) * f1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140551.P6496291814483508707

/-!
# A140552: Primes p such that neither p - 34 nor p + 34 is prime.

The programs for A140552, there is no canonical definition to state claims against.
-/

/-! ## A140552.P5659582305263183462

`p?[or(2*n, A122283(3*n+2))]`
-/

namespace A140552.P5659582305263183462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A122283 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140552.P5659582305263183462

/-! ## A140552.P4297266720722707936

`p?[or(2*n, A122288(3*n+2))]`
-/

namespace A140552.P4297266720722707936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A122288 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140552.P4297266720722707936

/-! ## A140552.P16978498322187714331

`p?[∑[A105584(A098782(n+1))]]`
-/

namespace A140552.P16978498322187714331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105584 (A098782 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140552.P16978498322187714331

/-! ## A140552.P10810404554137662598

`A000040(record[gcd(n, A183992(n+1))])`
-/

namespace A140552.P10810404554137662598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A183992 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A140552.P10810404554137662598

/-! ## A140552.P7163427572667920200

`A340059(A126108(n+2))`
-/

namespace A140552.P7163427572667920200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340059 (A126108 (n + 2)).toNat

end

end A140552.P7163427572667920200

/-!
# A140553: Primes p such that neither p - 210 nor p + 210 is prime.

The programs for A140553, there is no canonical definition to state claims against.
-/

/-! ## A140553.P5718351263650186434

`∩[A106317(n+1), A140561(n+1)]`
-/

namespace A140553.P5718351263650186434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140553.P5718351263650186434

/-! ## A140553.P15407638035007925158

`∩[A140561(n+1), A236105(n+1)]`
-/

namespace A140553.P15407638035007925158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140553.P15407638035007925158

/-! ## A140553.P1124028034801741486

`∩[A140561(n+1), A285304(n+1)]`
-/

namespace A140553.P1124028034801741486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140553.P1124028034801741486

/-! ## A140553.P539062270319888141

`∩[A140561(n+1), A316428(n+1)]`
-/

namespace A140553.P539062270319888141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140553.P539062270319888141

/-! ## A140553.P13100316206645244246

`∩[A140561(n+1), A318719(n+1)]`
-/

namespace A140553.P13100316206645244246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140553.P13100316206645244246

/-!
# A140554: First differences of A066841.

The programs for A140554, the canonical program `A140554.P8177830334213448867` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140554 has offset 1).

The definition of A140554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140554.P8118144917989387072

`Δ[∏{d}[n+1, ((n+1)/#)^#]]`
-/

namespace A140554.P8118144917989387072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140554.P8118144917989387072

namespace A140554

/-- `Δ[∏{d}[n+1, ((n+1)/#)^#]]` -/
def P8118144917989387072.Spec : Prop :=
  ∀ n, P8118144917989387072.a n = (A140554 (n + 1) : ℚ)

end A140554

/-! ## A140554.P8299636646044950357

`Δ[∏{d}[n+1, root(#, #)]^(n+1)]`
-/

namespace A140554.P8299636646044950357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f2 n), (d : ℝ) ^ (1 / (d : ℝ))) ^ (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140554.P8299636646044950357

namespace A140554

/-- `Δ[∏{d}[n+1, root(#, #)]^(n+1)]` -/
def P8299636646044950357.Spec : Prop :=
  ∀ n, P8299636646044950357.a n = (A140554 (n + 1) : ℝ)

end A140554

/-! ## A140554.P8177830334213448867

`Δ[A066841(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140554

/-- `Δ[A066841(n+1)]` -/
def P8177830334213448867.Spec : Prop :=
  ∀ n, P8177830334213448867.a n = A140554 (n + 1)

theorem P8177830334213448867.correct : P8177830334213448867.Spec := by
  intro n
  simp only [A140554, Nat.add_sub_cancel]

end A140554

/-! ## A140554.P8638299354536199153

`A066841(n+2)-A066841(n+1)`
-/

namespace A140554.P8638299354536199153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066841 (n + 2) - A066841 (n + 1)

end

end A140554.P8638299354536199153

namespace A140554

/-- `A066841(n+2)-A066841(n+1)` -/
def P8638299354536199153.Spec : Prop :=
  ∀ n, P8638299354536199153.a n = A140554 (n + 1)

theorem P8638299354536199153.correct : P8638299354536199153.Spec := by
  intro n
  simp only [A140554, Nat.add_sub_cancel, A140554.P8638299354536199153.a, A140554.P8177830334213448867.f1, A140554.P8177830334213448867.a, SequenceMachineLib.memo_apply]

end A140554

/-! ## A140554.P10286983518012173535

`Δ[ratio[A129364(A028310(n))]]`
-/

namespace A140554.P10286983518012173535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129364 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140554.P10286983518012173535

namespace A140554

/-- `Δ[ratio[A129364(A028310(n))]]` -/
def P10286983518012173535.Spec : Prop :=
  ∀ n, P10286983518012173535.a n = (A140554 (n + 1) : ℚ)

end A140554

/-!
# A140555: Primes p such that p + 6 is not a prime.

The programs for A140555, there is no canonical definition to state claims against.
-/

/-! ## A140555.P16517108438843936131

`A141426(n+1)+1`
-/

namespace A140555.P16517108438843936131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141426 (n + 1) + 1

end

end A140555.P16517108438843936131

/-! ## A140555.P16062004694047692822

`p?[A002808(n+1)-6]`
-/

namespace A140555.P16062004694047692822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P16062004694047692822

/-! ## A140555.P13649568191433078566

`p?[A018252(n+1)-6]`
-/

namespace A140555.P13649568191433078566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P13649568191433078566

/-! ## A140555.P15610842961336999081

`record[A020639(A018252(n+6)-6)]`
-/

namespace A140555.P15610842961336999081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (n + 6) - 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140555.P15610842961336999081

/-! ## A140555.P9693672425201361939

`p?[A000720(A141468(n+2)+1)-4+n]`
-/

namespace A140555.P9693672425201361939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A141468 (n + 2) + 1).toNat - 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P9693672425201361939

/-! ## A140555.P7949336460692452773

`p?[comp[(n-3)*A001222(n+3)]]`
-/

namespace A140555.P7949336460692452773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A001222 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140555.P7949336460692452773

/-! ## A140555.P3087041499163326057

`p?[A072668(n+1)-5]`
-/

namespace A140555.P3087041499163326057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P3087041499163326057

/-! ## A140555.P14180640118481073108

`p?[A164029(n+1)-5]`
-/

namespace A140555.P14180640118481073108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164029 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P14180640118481073108

/-! ## A140555.P314616373203755795

`p?[A191558(n+1)-6]`
-/

namespace A140555.P314616373203755795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P314616373203755795

/-! ## A140555.P5643718628747275093

`p?[n-(A249355(n)+2)]`
-/

namespace A140555.P5643718628747275093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A249355 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P5643718628747275093

/-! ## A140555.P11960584640155508495

`p?[n-A089026(n+5)]`
-/

namespace A140555.P11960584640155508495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089026 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P11960584640155508495

/-! ## A140555.P13032876912692535167

`A020725(A141426(n+1))`
-/

namespace A140555.P13032876912692535167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A141426 (n + 1)).toNat

end

end A140555.P13032876912692535167

/-! ## A140555.P3430276347655170631

`p?[A023448(A018252(n+1))]`
-/

namespace A140555.P3430276347655170631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P3430276347655170631

/-! ## A140555.P9368937962411809684

`p?[n-A016969(A055672(n+1))]`
-/

namespace A140555.P9368937962411809684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A016969 (A055672 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P9368937962411809684

/-! ## A140555.P9967027865351739266

`p?[n-A006370(A110560(n+1))]`
-/

namespace A140555.P9967027865351739266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006370 (A110560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P9967027865351739266

/-! ## A140555.P15725090583439662900

`p?[n-A016825(A285982(n+1))]`
-/

namespace A140555.P15725090583439662900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A016825 (A285982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P15725090583439662900

/-! ## A140555.P373597815001149718

`p?[n-A284278(2*n+1)²]`
-/

namespace A140555.P373597815001149718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284278 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P373597815001149718

/-! ## A140555.P6766473450120092861

`p?[n-A171783(n+3)]`
-/

namespace A140555.P6766473450120092861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171783 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P6766473450120092861

/-! ## A140555.P8794207173554954494

`p?[A125493(n+1)-6]`
-/

namespace A140555.P8794207173554954494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140555.P8794207173554954494

/-!
# A140556: Primes p such that p + 10 is not a prime.

The programs for A140556, the canonical program `A140556.P7313996650521697734` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140556 has offset 1).

The definition of A140556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1811 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140556.P7313996650521697734

`p?[A002808(n+1)-10]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140556

/-- `p?[A002808(n+1)-10]` -/
def P7313996650521697734.Spec : Prop :=
  ∀ n, P7313996650521697734.a n = A140556 (n + 1)

theorem P7313996650521697734.correct : P7313996650521697734.Spec := by
  intro n
  simp only [A140556, Nat.add_sub_cancel]

end A140556

/-! ## A140556.P4382722037991891086

`p?[A018252(n+2)-10]`
-/

namespace A140556.P4382722037991891086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P4382722037991891086

namespace A140556

/-- `p?[A018252(n+2)-10]` -/
def P4382722037991891086.Spec : Prop :=
  ∀ n, P4382722037991891086.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P12319206649898520998

`p?[A080257(n+1)-10]`
-/

namespace A140556.P12319206649898520998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P12319206649898520998

namespace A140556

/-- `p?[A080257(n+1)-10]` -/
def P12319206649898520998.Spec : Prop :=
  ∀ n, P12319206649898520998.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P10256294470625803677

`p?[comp[p?[2*n+1]-10]]`
-/

namespace A140556.P10256294470625803677
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 10

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140556.P10256294470625803677

namespace A140556

/-- `p?[comp[p?[2*n+1]-10]]` -/
def P10256294470625803677.Spec : Prop :=
  ∀ n, (P10256294470625803677.a n : ℤ) = A140556 (n + 1)

end A140556

/-! ## A140556.P618872729298289476

`p?[A060462(n+1)-9]`
-/

namespace A140556.P618872729298289476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P618872729298289476

namespace A140556

/-- `p?[A060462(n+1)-9]` -/
def P618872729298289476.Spec : Prop :=
  ∀ n, P618872729298289476.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P14326351549775432977

`p?[A072668(n+1)-9]`
-/

namespace A140556.P14326351549775432977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P14326351549775432977

namespace A140556

/-- `p?[A072668(n+1)-9]` -/
def P14326351549775432977.Spec : Prop :=
  ∀ n, P14326351549775432977.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P1993886565557355346

`p?[A164029(n+1)-9]`
-/

namespace A140556.P1993886565557355346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164029 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P1993886565557355346

namespace A140556

/-- `p?[A164029(n+1)-9]` -/
def P1993886565557355346.Spec : Prop :=
  ∀ n, P1993886565557355346.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P12418973488448403839

`p?[A079696(n+1)-11]`
-/

namespace A140556.P12418973488448403839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P12418973488448403839

namespace A140556

/-- `p?[A079696(n+1)-11]` -/
def P12418973488448403839.Spec : Prop :=
  ∀ n, P12418973488448403839.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P17078455378852829548

`p?[comp[A000040(n+1)-10]]`
-/

namespace A140556.P17078455378852829548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 10

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140556.P17078455378852829548

namespace A140556

/-- `p?[comp[A000040(n+1)-10]]` -/
def P17078455378852829548.Spec : Prop :=
  ∀ n, (P17078455378852829548.a n : ℤ) = A140556 (n + 1)

end A140556

/-! ## A140556.P7666570585270949339

`p?[comp[A006530(n+1)-10]]`
-/

namespace A140556.P7666570585270949339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 10

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140556.P7666570585270949339

namespace A140556

/-- `p?[comp[A006530(n+1)-10]]` -/
def P7666570585270949339.Spec : Prop :=
  ∀ n, (P7666570585270949339.a n : ℤ) = A140556 (n + 1)

end A140556

/-! ## A140556.P12951422895550637804

`p?[comp[A020639(n+1)-10]]`
-/

namespace A140556.P12951422895550637804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 10

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140556.P12951422895550637804

namespace A140556

/-- `p?[comp[A020639(n+1)-10]]` -/
def P12951422895550637804.Spec : Prop :=
  ∀ n, (P12951422895550637804.a n : ℤ) = A140556 (n + 1)

end A140556

/-! ## A140556.P17715620529273962021

`p?[A023452(A018252(n+1))]`
-/

namespace A140556.P17715620529273962021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P17715620529273962021

namespace A140556

/-- `p?[A023452(A018252(n+1))]` -/
def P17715620529273962021.Spec : Prop :=
  ∀ n, P17715620529273962021.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P11880174893386672358

`lt[A055672(n+10), A055672(n)]`
-/

namespace A140556.P11880174893386672358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140556.P11880174893386672358

namespace A140556

/-- `lt[A055672(n+10), A055672(n)]` -/
def P11880174893386672358.Spec : Prop :=
  ∀ n, (P11880174893386672358.a n : ℤ) = A140556 (n + 1)

end A140556

/-! ## A140556.P2974422166084107035

`p?[n-A005408(A014973(n+1))²]`
-/

namespace A140556.P2974422166084107035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005408 (A014973 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P2974422166084107035

namespace A140556

/-- `p?[n-A005408(A014973(n+1))²]` -/
def P2974422166084107035.Spec : Prop :=
  ∀ n, P2974422166084107035.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P5954453687847329288

`p?[n-A017017(A049084(n+1))²]`
-/

namespace A140556.P5954453687847329288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A017017 (A049084 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P5954453687847329288

namespace A140556

/-- `p?[n-A017017(A049084(n+1))²]` -/
def P5954453687847329288.Spec : Prop :=
  ∀ n, P5954453687847329288.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P15738219541023886594

`p?[n-A016885(A061397(n+1))²]`
-/

namespace A140556.P15738219541023886594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A016885 (A061397 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P15738219541023886594

namespace A140556

/-- `p?[n-A016885(A061397(n+1))²]` -/
def P15738219541023886594.Spec : Prop :=
  ∀ n, P15738219541023886594.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P11983197653435023647

`p?[n-A292576(A089026(n+1))²]`
-/

namespace A140556.P11983197653435023647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292576 (A089026 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P11983197653435023647

namespace A140556

/-- `p?[n-A292576(A089026(n+1))²]` -/
def P11983197653435023647.Spec : Prop :=
  ∀ n, P11983197653435023647.a n = A140556 (n + 1)

end A140556

/-! ## A140556.P4666890594599823635

`p?[A073846(2*n+1)-10]`
-/

namespace A140556.P4666890594599823635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P4666890594599823635

namespace A140556

/-- `p?[A073846(2*n+1)-10]` -/
def P4666890594599823635.Spec : Prop :=
  ∀ n, P4666890594599823635.a n = A140556 (n + 1)

end A140556

/-!
# A140557: Primes p such that p + 14 is composite.

The programs for A140557, there is no canonical definition to state claims against.
-/

/-! ## A140557.P4997141247078894507

`p?[comp[A140446(2*n+1)]]`
-/

namespace A140557.P4997141247078894507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140446 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140557.P4997141247078894507

/-! ## A140557.P4782486087630362102

`filter[A380784(n+1), A153778(#)]`
-/

namespace A140557.P4782486087630362102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A153778 (f1 j).toNat = 1) n)

end

end A140557.P4782486087630362102

/-! ## A140557.P9154965444741607321

`filter[A380784(n+1), A286064(#)]`
-/

namespace A140557.P9154965444741607321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286064 (f1 j).toNat = 1) n)

end

end A140557.P9154965444741607321

/-! ## A140557.P14303732509172126129

`∩[A050481(n+1), A104885(n+1)]`
-/

namespace A140557.P14303732509172126129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140557.P14303732509172126129

/-! ## A140557.P7225386362311490875

`∩[A104885(n+1), A286066(n+1)]`
-/

namespace A140557.P7225386362311490875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140557.P7225386362311490875

/-!
# A140558: Primes p such that p + 22 is not a prime.

The programs for A140558, the canonical program `A140558.P196578342444340295` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140558 has offset 1).

The definition of A140558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140558.P196578342444340295

`p?[n-21-round(A006530(n+1)/(n+3))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140558

/-- `p?[n-21-round(A006530(n+1)/(n+3))]` -/
def P196578342444340295.Spec : Prop :=
  ∀ n, P196578342444340295.a n = A140558 (n + 1)

theorem P196578342444340295.correct : P196578342444340295.Spec := by
  intro n
  simp only [A140558, Nat.add_sub_cancel]

end A140558

/-! ## A140558.P3716796415890024446

`p?[A002808(n+1)-22]`
-/

namespace A140558.P3716796415890024446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P3716796415890024446

namespace A140558

/-- `p?[A002808(n+1)-22]` -/
def P3716796415890024446.Spec : Prop :=
  ∀ n, P3716796415890024446.a n = A140558 (n + 1)

end A140558

/-! ## A140558.P13845684465613018798

`p?[A018252(n+1)-22]`
-/

namespace A140558.P13845684465613018798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P13845684465613018798

namespace A140558

/-- `p?[A018252(n+1)-22]` -/
def P13845684465613018798.Spec : Prop :=
  ∀ n, P13845684465613018798.a n = A140558 (n + 1)

end A140558

/-! ## A140558.P18088151203277988757

`p?[A175553(n+1)-20]`
-/

namespace A140558.P18088151203277988757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P18088151203277988757

namespace A140558

/-- `p?[A175553(n+1)-20]` -/
def P18088151203277988757.Spec : Prop :=
  ∀ n, P18088151203277988757.a n = A140558 (n + 1)

end A140558

/-! ## A140558.P4071121406989899014

`p?[A164028(n+1)-19]`
-/

namespace A140558.P4071121406989899014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P4071121406989899014

namespace A140558

/-- `p?[A164028(n+1)-19]` -/
def P4071121406989899014.Spec : Prop :=
  ∀ n, P4071121406989899014.a n = A140558 (n + 1)

end A140558

/-! ## A140558.P8277028237196899306

`p?[A060462(n+1)-21]`
-/

namespace A140558.P8277028237196899306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P8277028237196899306

namespace A140558

/-- `p?[A060462(n+1)-21]` -/
def P8277028237196899306.Spec : Prop :=
  ∀ n, P8277028237196899306.a n = A140558 (n + 1)

end A140558

/-! ## A140558.P18342065443091453607

`p?[A072668(n+1)-21]`
-/

namespace A140558.P18342065443091453607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P18342065443091453607

namespace A140558

/-- `p?[A072668(n+1)-21]` -/
def P18342065443091453607.Spec : Prop :=
  ∀ n, P18342065443091453607.a n = A140558 (n + 1)

end A140558

/-! ## A140558.P11737905307142644925

`p?[A164029(n+1)-21]`
-/

namespace A140558.P11737905307142644925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164029 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P11737905307142644925

namespace A140558

/-- `p?[A164029(n+1)-21]` -/
def P11737905307142644925.Spec : Prop :=
  ∀ n, P11737905307142644925.a n = A140558 (n + 1)

end A140558

/-! ## A140558.P1979343167400125706

`p?[A023464(A018252(n+1))]`
-/

namespace A140558.P1979343167400125706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023464 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P1979343167400125706

namespace A140558

/-- `p?[A023464(A018252(n+1))]` -/
def P1979343167400125706.Spec : Prop :=
  ∀ n, P1979343167400125706.a n = A140558 (n + 1)

end A140558

/-!
# A140559: Primes p such that p + 34 is not a prime.

The programs for A140559, the canonical program `A140559.P15766714840253506100` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140559 has offset 1).

The definition of A140559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140559.P15766714840253506100

`p?[C(A006530(n+1), n)-(33-n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140559

/-- `p?[C(A006530(n+1), n)-(33-n)]` -/
def P15766714840253506100.Spec : Prop :=
  ∀ n, P15766714840253506100.a n = A140559 (n + 1)

theorem P15766714840253506100.correct : P15766714840253506100.Spec := by
  intro n
  simp only [A140559, Nat.add_sub_cancel]

end A140559

/-! ## A140559.P15228547123795248066

`p?[A002808(n+1)-34]`
-/

namespace A140559.P15228547123795248066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140559.P15228547123795248066

namespace A140559

/-- `p?[A002808(n+1)-34]` -/
def P15228547123795248066.Spec : Prop :=
  ∀ n, P15228547123795248066.a n = A140559 (n + 1)

end A140559

/-! ## A140559.P14290869706663389645

`p?[A018252(n+1)-34]`
-/

namespace A140559.P14290869706663389645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140559.P14290869706663389645

namespace A140559

/-- `p?[A018252(n+1)-34]` -/
def P14290869706663389645.Spec : Prop :=
  ∀ n, P14290869706663389645.a n = A140559 (n + 1)

end A140559

/-! ## A140559.P8596526565771203424

`p?[A005381(n+1)-34]`
-/

namespace A140559.P8596526565771203424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140559.P8596526565771203424

namespace A140559

/-- `p?[A005381(n+1)-34]` -/
def P8596526565771203424.Spec : Prop :=
  ∀ n, P8596526565771203424.a n = A140559 (n + 1)

end A140559

/-! ## A140559.P5433231571743097677

`p?[A080257(n+1)-34]`
-/

namespace A140559.P5433231571743097677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140559.P5433231571743097677

namespace A140559

/-- `p?[A080257(n+1)-34]` -/
def P5433231571743097677.Spec : Prop :=
  ∀ n, P5433231571743097677.a n = A140559 (n + 1)

end A140559

/-! ## A140559.P7057573206021478280

`p?[comp[A000040(n+1)-34]]`
-/

namespace A140559.P7057573206021478280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 34

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140559.P7057573206021478280

namespace A140559

/-- `p?[comp[A000040(n+1)-34]]` -/
def P7057573206021478280.Spec : Prop :=
  ∀ n, (P7057573206021478280.a n : ℤ) = A140559 (n + 1)

end A140559

/-! ## A140559.P16465462537518589894

`p?[n-A014963(a(n-1)+36)]` with `a(0)=0`
-/

namespace A140559.P16465462537518589894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - A014963 (f1 (n - 1) + 36).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140559.P16465462537518589894

namespace A140559

/-- `p?[n-A014963(a(n-1)+36)]` -/
def P16465462537518589894.Spec : Prop :=
  ∀ n, P16465462537518589894.a n = A140559 (n + 1)

end A140559

/-! ## A140559.P13910312851000400653

`p?[A023476(A018252(n+1))]`
-/

namespace A140559.P13910312851000400653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023476 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140559.P13910312851000400653

namespace A140559

/-- `p?[A023476(A018252(n+1))]` -/
def P13910312851000400653.Spec : Prop :=
  ∀ n, P13910312851000400653.a n = A140559 (n + 1)

end A140559

/-! ## A140559.P7901083279865158509

`p?[A103164(n)-34]`
-/

namespace A140559.P7901083279865158509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140559.P7901083279865158509

namespace A140559

/-- `p?[A103164(n)-34]` -/
def P7901083279865158509.Spec : Prop :=
  ∀ n, P7901083279865158509.a n = A140559 (n + 1)

end A140559

/-! ## A140559.P14128655022575851161

`∪[A003627(n+1), A140552(n+1)]`
-/

namespace A140559.P14128655022575851161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140559.P14128655022575851161

namespace A140559

/-- `∪[A003627(n+1), A140552(n+1)]` -/
def P14128655022575851161.Spec : Prop :=
  ∀ n, (P14128655022575851161.a n : ℤ) = A140559 (n + 1)

end A140559

/-!
# A140560: Primes p such that p + 30 is not a prime.

The programs for A140560, the canonical program `A140560.P8549477506657107626` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140560 has offset 1).

The definition of A140560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140560.P8549477506657107626

`p?[A002808(n+1)-30]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140560

/-- `p?[A002808(n+1)-30]` -/
def P8549477506657107626.Spec : Prop :=
  ∀ n, P8549477506657107626.a n = A140560 (n + 1)

theorem P8549477506657107626.correct : P8549477506657107626.Spec := by
  intro n
  simp only [A140560, Nat.add_sub_cancel]

end A140560

/-! ## A140560.P2058538258075518364

`p?[A141468(n+1)-30]`
-/

namespace A140560.P2058538258075518364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P2058538258075518364

namespace A140560

/-- `p?[A141468(n+1)-30]` -/
def P2058538258075518364.Spec : Prop :=
  ∀ n, P2058538258075518364.a n = A140560 (n + 1)

end A140560

/-! ## A140560.P9836504872808781546

`p?[A018252(n+8)-30]`
-/

namespace A140560.P9836504872808781546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 8) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P9836504872808781546

namespace A140560

/-- `p?[A018252(n+8)-30]` -/
def P9836504872808781546.Spec : Prop :=
  ∀ n, P9836504872808781546.a n = A140560 (n + 1)

end A140560

/-! ## A140560.P806068902605130978

`p?[A005381(n+1)-31]`
-/

namespace A140560.P806068902605130978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P806068902605130978

namespace A140560

/-- `p?[A005381(n+1)-31]` -/
def P806068902605130978.Spec : Prop :=
  ∀ n, P806068902605130978.a n = A140560 (n + 1)

end A140560

/-! ## A140560.P13531469954998137559

`p?[A181569(n+1)-30]`
-/

namespace A140560.P13531469954998137559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P13531469954998137559

namespace A140560

/-- `p?[A181569(n+1)-30]` -/
def P13531469954998137559.Spec : Prop :=
  ∀ n, P13531469954998137559.a n = A140560 (n + 1)

end A140560

/-! ## A140560.P2454884341323378134

`p?[n-(A349826(n)+2)]`
-/

namespace A140560.P2454884341323378134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A349826 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P2454884341323378134

namespace A140560

/-- `p?[n-(A349826(n)+2)]` -/
def P2454884341323378134.Spec : Prop :=
  ∀ n, P2454884341323378134.a n = A140560 (n + 1)

end A140560

/-! ## A140560.P6202586152009354138

`p?[A023472(A018252(n+1))]`
-/

namespace A140560.P6202586152009354138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P6202586152009354138

namespace A140560

/-- `p?[A023472(A018252(n+1))]` -/
def P6202586152009354138.Spec : Prop :=
  ∀ n, P6202586152009354138.a n = A140560 (n + 1)

end A140560

/-! ## A140560.P10467558679338712378

`p?[n-A158560(A061397(n+1)+1)]`
-/

namespace A140560.P10467558679338712378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A158560 (A061397 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P10467558679338712378

namespace A140560

/-- `p?[n-A158560(A061397(n+1)+1)]` -/
def P10467558679338712378.Spec : Prop :=
  ∀ n, P10467558679338712378.a n = A140560 (n + 1)

end A140560

/-! ## A140560.P8527688046548947275

`p?[n-A101096(A014683(n+1)-n+1)]`
-/

namespace A140560.P8527688046548947275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A101096 (A014683 (n + 1) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P8527688046548947275

namespace A140560

/-- `p?[n-A101096(A014683(n+1)-n+1)]` -/
def P8527688046548947275.Spec : Prop :=
  ∀ n, P8527688046548947275.a n = A140560 (n + 1)

end A140560

/-! ## A140560.P18113689994632403952

`p?[n-A000015(A055672(n+1)+28)]`
-/

namespace A140560.P18113689994632403952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000015 (A055672 (n + 1) + 28).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P18113689994632403952

namespace A140560

/-- `p?[n-A000015(A055672(n+1)+28)]` -/
def P18113689994632403952.Spec : Prop :=
  ∀ n, P18113689994632403952.a n = A140560 (n + 1)

end A140560

/-!
# A140562: Primes p such that p + 26 is not a prime.

The programs for A140562, the canonical program `A140562.P5085066410064209920` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140562 has offset 1).

The definition of A140562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140562.P5085066410064209920

`p?[(n+3)%A000203(n+1)-28]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140562

/-- `p?[(n+3)%A000203(n+1)-28]` -/
def P5085066410064209920.Spec : Prop :=
  ∀ n, P5085066410064209920.a n = A140562 (n + 1)

theorem P5085066410064209920.correct : P5085066410064209920.Spec := by
  intro n
  simp only [A140562, Nat.add_sub_cancel]

end A140562

/-! ## A140562.P15093828063577355324

`p?[A018252(n+1)-26]`
-/

namespace A140562.P15093828063577355324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140562.P15093828063577355324

namespace A140562

/-- `p?[A018252(n+1)-26]` -/
def P15093828063577355324.Spec : Prop :=
  ∀ n, P15093828063577355324.a n = A140562 (n + 1)

end A140562

/-! ## A140562.P12002491724980387073

`p?[A308833(n+1)-24]`
-/

namespace A140562.P12002491724980387073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140562.P12002491724980387073

namespace A140562

/-- `p?[A308833(n+1)-24]` -/
def P12002491724980387073.Spec : Prop :=
  ∀ n, P12002491724980387073.a n = A140562 (n + 1)

end A140562

/-! ## A140562.P18231676191134792709

`p?[A061837(n+1)-24]`
-/

namespace A140562.P18231676191134792709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061837 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140562.P18231676191134792709

namespace A140562

/-- `p?[A061837(n+1)-24]` -/
def P18231676191134792709.Spec : Prop :=
  ∀ n, P18231676191134792709.a n = A140562 (n + 1)

end A140562

/-! ## A140562.P1361991983667435738

`p?[comp[A028815(n)-27]]`
-/

namespace A140562.P1361991983667435738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 27

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140562.P1361991983667435738

namespace A140562

/-- `p?[comp[A028815(n)-27]]` -/
def P1361991983667435738.Spec : Prop :=
  ∀ n, (P1361991983667435738.a n : ℤ) = A140562 (n + 1)

end A140562

/-! ## A140562.P12905746102937701411

`p?[A164028(n+1)-23]`
-/

namespace A140562.P12905746102937701411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140562.P12905746102937701411

namespace A140562

/-- `p?[A164028(n+1)-23]` -/
def P12905746102937701411.Spec : Prop :=
  ∀ n, P12905746102937701411.a n = A140562 (n + 1)

end A140562

/-! ## A140562.P1659054489786761749

`p?[A060462(n+1)-25]`
-/

namespace A140562.P1659054489786761749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1) - 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140562.P1659054489786761749

namespace A140562

/-- `p?[A060462(n+1)-25]` -/
def P1659054489786761749.Spec : Prop :=
  ∀ n, P1659054489786761749.a n = A140562 (n + 1)

end A140562

/-! ## A140562.P1585128179544044591

`p?[A023468(A018252(n+1))]`
-/

namespace A140562.P1585128179544044591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023468 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140562.P1585128179544044591

namespace A140562

/-- `p?[A023468(A018252(n+1))]` -/
def P1585128179544044591.Spec : Prop :=
  ∀ n, P1585128179544044591.a n = A140562 (n + 1)

end A140562

/-!
# A140563: Primes p such that p + 38 is not a prime.

The programs for A140563, the canonical program `A140563.P12824830105511435814` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140563 has offset 1).

The definition of A140563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1894 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140563.P12824830105511435814

`p?[A002808(n+1)-38]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140563

/-- `p?[A002808(n+1)-38]` -/
def P12824830105511435814.Spec : Prop :=
  ∀ n, P12824830105511435814.a n = A140563 (n + 1)

theorem P12824830105511435814.correct : P12824830105511435814.Spec := by
  intro n
  simp only [A140563, Nat.add_sub_cancel]

end A140563

/-! ## A140563.P2831060213576623191

`p?[A018252(n+1)-38]`
-/

namespace A140563.P2831060213576623191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140563.P2831060213576623191

namespace A140563

/-- `p?[A018252(n+1)-38]` -/
def P2831060213576623191.Spec : Prop :=
  ∀ n, P2831060213576623191.a n = A140563 (n + 1)

end A140563

/-! ## A140563.P14066943183937188692

`p?[comp[A000040(n+1)-40]+2]`
-/

namespace A140563.P14066943183937188692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 40

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140563.P14066943183937188692

namespace A140563

/-- `p?[comp[A000040(n+1)-40]+2]` -/
def P14066943183937188692.Spec : Prop :=
  ∀ n, (P14066943183937188692.a n : ℤ) = A140563 (n + 1)

end A140563

/-! ## A140563.P6587406045528917486

`record[A020639(comp[A000040(n+1)-40]+2)]`
-/

namespace A140563.P6587406045528917486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 40

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140563.P6587406045528917486

namespace A140563

/-- `record[A020639(comp[A000040(n+1)-40]+2)]` -/
def P6587406045528917486.Spec : Prop :=
  ∀ n, P6587406045528917486.a n = A140563 (n + 1)

end A140563

/-! ## A140563.P500670288648976570

`p?[A164028(n+1)-35]`
-/

namespace A140563.P500670288648976570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140563.P500670288648976570

namespace A140563

/-- `p?[A164028(n+1)-35]` -/
def P500670288648976570.Spec : Prop :=
  ∀ n, P500670288648976570.a n = A140563 (n + 1)

end A140563

/-! ## A140563.P2239859593329437044

`p?[A175553(n+1)-36]`
-/

namespace A140563.P2239859593329437044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 1) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140563.P2239859593329437044

namespace A140563

/-- `p?[A175553(n+1)-36]` -/
def P2239859593329437044.Spec : Prop :=
  ∀ n, P2239859593329437044.a n = A140563 (n + 1)

end A140563

/-! ## A140563.P7353340061093243100

`∩[A000040(n+1), A018252(n+1)-38]`
-/

namespace A140563.P7353340061093243100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 38

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140563.P7353340061093243100

namespace A140563

/-- `∩[A000040(n+1), A018252(n+1)-38]` -/
def P7353340061093243100.Spec : Prop :=
  ∀ n, (P7353340061093243100.a n : ℤ) = A140563 (n + 1)

end A140563

/-! ## A140563.P7936930411666593211

`p?[A023480(A018252(n+1))]`
-/

namespace A140563.P7936930411666593211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140563.P7936930411666593211

namespace A140563

/-- `p?[A023480(A018252(n+1))]` -/
def P7936930411666593211.Spec : Prop :=
  ∀ n, P7936930411666593211.a n = A140563 (n + 1)

end A140563

/-!
# A140564: List of prime quartets (k - 7, k - 5, k + 5, k + 7).

The programs for A140564, there is no canonical definition to state claims against.
-/

/-! ## A140564.P12566299475125609900

`A090303(A140566(n+1))`
-/

namespace A140564.P12566299475125609900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090303 (A140566 (n + 1)).toNat

end

end A140564.P12566299475125609900

/-! ## A140564.P2276836048154596696

`A122565(A235121(n+1)%A235090(n+1))`
-/

namespace A140564.P2276836048154596696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (Int.tmod (A235121 (n + 1)) (A235090 (n + 1))).toNat

end

end A140564.P2276836048154596696

/-! ## A140564.P1078756877775550853

`A007310(A227549(n+1)+A165207(n))`
-/

namespace A140564.P1078756877775550853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A227549 (n + 1) + A165207 n).toNat

end

end A140564.P1078756877775550853

/-!
# A140565: List of prime quartets (k - 7, k - 1, k + 1, k + 7).

The programs for A140565, there is no canonical definition to state claims against.
-/

/-! ## A140565.P7919451200619769604

`A086962(A136208(n+2))`
-/

namespace A140565.P7919451200619769604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086962 (A136208 (n + 2)).toNat

end

end A140565.P7919451200619769604

/-! ## A140565.P995852102484389973

`A136208(n%A136194(n+1)+2)`
-/

namespace A140565.P995852102484389973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136208 (Int.tmod (n : ℤ) (A136194 (n + 1)) + 2).toNat

end

end A140565.P995852102484389973

/-! ## A140565.P6449820565040256716

`∩[A136208(n+1), A382445(n+1)]`
-/

namespace A140565.P6449820565040256716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140565.P6449820565040256716

/-! ## A140565.P17569181213407761834

`A136208(n+2)%A136151(A136169(n))`
-/

namespace A140565.P17569181213407761834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136208 (n + 2)) (A136151 (A136169 n).toNat)

end

end A140565.P17569181213407761834

/-! ## A140565.P16456496007712363486

`A038612(lt[A115139(2*n+5), A327352(n)])`
-/

namespace A140565.P16456496007712363486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140565.P16456496007712363486

/-!
# A140566: List of prime quartets (k - 11, k - 1, k + 1, k + 11).

The programs for A140566, there is no canonical definition to state claims against.
-/

/-! ## A140566.P3464623137760392791

`A140564(A227549(n+1)+A165207(n))`
-/

namespace A140566.P3464623137760392791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (A227549 (n + 1) + A165207 n).toNat

end

end A140566.P3464623137760392791

/-!
# A140569: Primes congruent to 19 or 191 mod 210.

The programs for A140569, the canonical program `A140569.P1939269064577882757` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140569 has offset 1).

The definition of A140569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1805 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140569.P1939269064577882757

`p?[A047209(n+1)+2*A159754(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140569

/-- `p?[A047209(n+1)+2*A159754(n+1)]` -/
def P1939269064577882757.Spec : Prop :=
  ∀ n, P1939269064577882757.a n = A140569 (n + 1)

theorem P1939269064577882757.correct : P1939269064577882757.Spec := by
  intro n
  simp only [A140569, Nat.add_sub_cancel]

end A140569

/-! ## A140569.P8986915923833178585

`p?[A304157(n+1)-A293481(n+1)]`
-/

namespace A140569.P8986915923833178585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - A293481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P8986915923833178585

namespace A140569

/-- `p?[A304157(n+1)-A293481(n+1)]` -/
def P8986915923833178585.Spec : Prop :=
  ∀ n, P8986915923833178585.a n = A140569 (n + 1)

end A140569

/-! ## A140569.P13291938817229965543

`p?[A270296(n+1)-A007775(n+1)]`
-/

namespace A140569.P13291938817229965543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) - A007775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P13291938817229965543

namespace A140569

/-- `p?[A270296(n+1)-A007775(n+1)]` -/
def P13291938817229965543.Spec : Prop :=
  ∀ n, P13291938817229965543.a n = A140569 (n + 1)

end A140569

/-! ## A140569.P13885154456612118877

`p?[∑[A040460(2*n)-A040430(2*n)]]`
-/

namespace A140569.P13885154456612118877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040460 (2 * n) - A040430 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P13885154456612118877

namespace A140569

/-- `p?[∑[A040460(2*n)-A040430(2*n)]]` -/
def P13885154456612118877.Spec : Prop :=
  ∀ n, P13885154456612118877.a n = A140569 (n + 1)

end A140569

/-! ## A140569.P12161563850371472877

`p?[A304809(n)+A004768(A047346(n+1))]`
-/

namespace A140569.P12161563850371472877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304809 n + A004768 (A047346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P12161563850371472877

namespace A140569

/-- `p?[A304809(n)+A004768(A047346(n+1))]` -/
def P12161563850371472877.Spec : Prop :=
  ∀ n, P12161563850371472877.a n = A140569 (n + 1)

end A140569

/-! ## A140569.P7667948411989541458

`record[A020639(A270296(n+1)-A007775(n+1))]`
-/

namespace A140569.P7667948411989541458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A270296 (n + 1) - A007775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140569.P7667948411989541458

namespace A140569

/-- `record[A020639(A270296(n+1)-A007775(n+1))]` -/
def P7667948411989541458.Spec : Prop :=
  ∀ n, P7667948411989541458.a n = A140569 (n + 1)

end A140569

/-! ## A140569.P6340950501288973747

`p?[A017053(3*n+2)-A253671(3*n+2)]`
-/

namespace A140569.P6340950501288973747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (3 * n + 2) - A253671 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P6340950501288973747

namespace A140569

/-- `p?[A017053(3*n+2)-A253671(3*n+2)]` -/
def P6340950501288973747.Spec : Prop :=
  ∀ n, P6340950501288973747.a n = A140569 (n + 1)

end A140569

/-! ## A140569.P7338951489588454800

`p?[A022144(3*n)-A313620(n)]`
-/

namespace A140569.P7338951489588454800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (3 * n) - A313620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P7338951489588454800

namespace A140569

/-- `p?[A022144(3*n)-A313620(n)]` -/
def P7338951489588454800.Spec : Prop :=
  ∀ n, P7338951489588454800.a n = A140569 (n + 1)

end A140569

/-! ## A140569.P11204345566216326524

`p?[A180964(A017341(n))+A008587(n)]`
-/

namespace A140569.P11204345566216326524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180964 (A017341 n).toNat + A008587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P11204345566216326524

namespace A140569

/-- `p?[A180964(A017341(n))+A008587(n)]` -/
def P11204345566216326524.Spec : Prop :=
  ∀ n, P11204345566216326524.a n = A140569 (n + 1)

end A140569

/-! ## A140569.P6879219788284649284

`p?[A047209(n+1)+A005843(A159754(n+1))]`
-/

namespace A140569.P6879219788284649284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) + A005843 (A159754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P6879219788284649284

namespace A140569

/-- `p?[A047209(n+1)+A005843(A159754(n+1))]` -/
def P6879219788284649284.Spec : Prop :=
  ∀ n, P6879219788284649284.a n = A140569 (n + 1)

end A140569

/-!
# A140570: Position of the n-th semiprime A001358(n) in the EKG sequence A064413.

The programs for A140570, there is no canonical definition to state claims against.
-/

/-! ## A140570.P9583773124459439396

`A064664(A001358(n+1))`
-/

namespace A140570.P9583773124459439396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A001358 (n + 1)).toNat

end

end A140570.P9583773124459439396

/-! ## A140570.P14426817994156812680

`A064664(A176540(n+2))`
-/

namespace A140570.P14426817994156812680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A176540 (n + 2)).toNat

end

end A140570.P14426817994156812680

/-! ## A140570.P16146941263185816166

`A064664(eq[2, A105700(n)])`
-/

namespace A140570.P16146941263185816166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140570.P16146941263185816166

/-! ## A140570.P9318599109278518738

`A064664(sqrt(A074985(n+1)))`
-/

namespace A140570.P9318599109278518738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A140570.P9318599109278518738

/-! ## A140570.P8552843866547641693

`A064664(A186621(n+1)+1)`
-/

namespace A140570.P8552843866547641693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A186621 (n + 1) + 1).toNat

end

end A140570.P8552843866547641693

/-!
# A140572: Primes congruent to 23 or 187 mod 210.

The programs for A140572, the canonical program `A140572.P14395771021435114242` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140572 has offset 1).

The definition of A140572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140572.P14395771021435114242

`p?[A241521(n+1)+A047522(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140572

/-- `p?[A241521(n+1)+A047522(n+1)]` -/
def P14395771021435114242.Spec : Prop :=
  ∀ n, P14395771021435114242.a n = A140572 (n + 1)

theorem P14395771021435114242.correct : P14395771021435114242.Spec := by
  intro n
  simp only [A140572, Nat.add_sub_cancel]

end A140572

/-! ## A140572.P7174607579208912478

`p?[A206526(n+1)-2*A017113(n)]`
-/

namespace A140572.P7174607579208912478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206526 (n + 1) - 2 * A017113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P7174607579208912478

namespace A140572

/-- `p?[A206526(n+1)-2*A017113(n)]` -/
def P7174607579208912478.Spec : Prop :=
  ∀ n, P7174607579208912478.a n = A140572 (n + 1)

end A140572

/-! ## A140572.P9649673375307040955

`p?[47*n-12*A113655(n+1)]`
-/

namespace A140572.P9649673375307040955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 12 * A113655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P9649673375307040955

namespace A140572

/-- `p?[47*n-12*A113655(n+1)]` -/
def P9649673375307040955.Spec : Prop :=
  ∀ n, P9649673375307040955.a n = A140572 (n + 1)

end A140572

/-! ## A140572.P4875266614662082792

`p?[A267873(A014601(n))+A241521(n+1)]`
-/

namespace A140572.P4875266614662082792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (A014601 n).toNat + A241521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P4875266614662082792

namespace A140572

/-- `p?[A267873(A014601(n))+A241521(n+1)]` -/
def P4875266614662082792.Spec : Prop :=
  ∀ n, P4875266614662082792.a n = A140572 (n + 1)

end A140572

/-! ## A140572.P4528134110722753152

`p?[A155107(n+1)-A004526(A008619(n))]`
-/

namespace A140572.P4528134110722753152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (n + 1) - A004526 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P4528134110722753152

namespace A140572

/-- `p?[A155107(n+1)-A004526(A008619(n))]` -/
def P4528134110722753152.Spec : Prop :=
  ∀ n, P4528134110722753152.a n = A140572 (n + 1)

end A140572

/-! ## A140572.P4738169948070392117

`p?[A155107(n+1)-A060681(A065033(n))]`
-/

namespace A140572.P4738169948070392117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (n + 1) - A060681 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P4738169948070392117

namespace A140572

/-- `p?[A155107(n+1)-A060681(A065033(n))]` -/
def P4738169948070392117.Spec : Prop :=
  ∀ n, P4738169948070392117.a n = A140572 (n + 1)

end A140572

/-! ## A140572.P8129073182600841596

`p?[A171141(n+1)+A004768(A016813(n))]`
-/

namespace A140572.P8129073182600841596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + A004768 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P8129073182600841596

namespace A140572

/-- `p?[A171141(n+1)+A004768(A016813(n))]` -/
def P8129073182600841596.Spec : Prop :=
  ∀ n, P8129073182600841596.a n = A140572 (n + 1)

end A140572

/-! ## A140572.P3982105961815236217

`p?[A206526(n+1)-A022998(A017113(n))]`
-/

namespace A140572.P3982105961815236217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206526 (n + 1) - A022998 (A017113 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P3982105961815236217

namespace A140572

/-- `p?[A206526(n+1)-A022998(A017113(n))]` -/
def P3982105961815236217.Spec : Prop :=
  ∀ n, P3982105961815236217.a n = A140572 (n + 1)

end A140572

/-! ## A140572.P15038028207202672988

`p?[A008706(A155450(n+1))-A090772(n+1)]`
-/

namespace A140572.P15038028207202672988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A155450 (n + 1)).toNat - A090772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P15038028207202672988

namespace A140572

/-- `p?[A008706(A155450(n+1))-A090772(n+1)]` -/
def P15038028207202672988.Spec : Prop :=
  ∀ n, P15038028207202672988.a n = A140572 (n + 1)

end A140572

/-! ## A140572.P12074292470124056684

`p?[A248474(n+1)+A006368(A248474(n+1))]`
-/

namespace A140572.P12074292470124056684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) + A006368 (A248474 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P12074292470124056684

namespace A140572

/-- `p?[A248474(n+1)+A006368(A248474(n+1))]` -/
def P12074292470124056684.Spec : Prop :=
  ∀ n, P12074292470124056684.a n = A140572 (n + 1)

end A140572

/-!
# A140573: Primes congruent to 29 or 181 mod 210.

The programs for A140573, the canonical program `A140573.P2976857677726739981` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140573 has offset 1).

The definition of A140573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 964 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140573.P2976857677726739981

`p?[A057539(A007310(n+1)+n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140573

/-- `p?[A057539(A007310(n+1)+n+1)]` -/
def P2976857677726739981.Spec : Prop :=
  ∀ n, P2976857677726739981.a n = A140573 (n + 1)

theorem P2976857677726739981.correct : P2976857677726739981.Spec := by
  intro n
  simp only [A140573, Nat.add_sub_cancel]

end A140573

/-! ## A140573.P1322923193390114608

`p?[A249674(n)-A238470(2*n)]`
-/

namespace A140573.P1322923193390114608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - A238470 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140573.P1322923193390114608

namespace A140573

/-- `p?[A249674(n)-A238470(2*n)]` -/
def P1322923193390114608.Spec : Prop :=
  ∀ n, P1322923193390114608.a n = A140573 (n + 1)

end A140573

/-! ## A140573.P16107880417507943081

`∩[A063230(n+1), A132240(n+1)]`
-/

namespace A140573.P16107880417507943081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140573.P16107880417507943081

namespace A140573

/-- `∩[A063230(n+1), A132240(n+1)]` -/
def P16107880417507943081.Spec : Prop :=
  ∀ n, (P16107880417507943081.a n : ℤ) = A140573 (n + 1)

end A140573

/-! ## A140573.P2836162305609773356

`p?[A175887(A016897(n))+A008597(n)]`
-/

namespace A140573.P2836162305609773356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A016897 n).toNat + A008597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140573.P2836162305609773356

namespace A140573

/-- `p?[A175887(A016897(n))+A008597(n)]` -/
def P2836162305609773356.Spec : Prop :=
  ∀ n, P2836162305609773356.a n = A140573 (n + 1)

end A140573

/-! ## A140573.P16391232516687986714

`record[A006530(A057539(A007310(n+1)+n+1))]`
-/

namespace A140573.P16391232516687986714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057539 (A007310 (n + 1) + (n + 1 : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140573.P16391232516687986714

namespace A140573

/-- `record[A006530(A057539(A007310(n+1)+n+1))]` -/
def P16391232516687986714.Spec : Prop :=
  ∀ n, P16391232516687986714.a n = A140573 (n + 1)

end A140573

/-! ## A140573.P9240608980872297656

`p?[A175887(7*n+4)]`
-/

namespace A140573.P9240608980872297656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (7 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140573.P9240608980872297656

namespace A140573

/-- `p?[A175887(7*n+4)]` -/
def P9240608980872297656.Spec : Prop :=
  ∀ n, P9240608980872297656.a n = A140573 (n + 1)

end A140573

/-! ## A140573.P2995766570954130947

`p?[A113801(4*A047336(n+1)+n+1)]`
-/

namespace A140573.P2995766570954130947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (4 * A047336 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140573.P2995766570954130947

namespace A140573

/-- `p?[A113801(4*A047336(n+1)+n+1)]` -/
def P2995766570954130947.Spec : Prop :=
  ∀ n, P2995766570954130947.a n = A140573 (n + 1)

end A140573

/-! ## A140573.P3832451137150311943

`p?[A301291(A301291(2*n+1))+12*n+6]`
-/

namespace A140573.P3832451137150311943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (A301291 (2 * n + 1)).toNat + (12 * n + 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140573.P3832451137150311943

namespace A140573

/-- `p?[A301291(A301291(2*n+1))+12*n+6]` -/
def P3832451137150311943.Spec : Prop :=
  ∀ n, P3832451137150311943.a n = A140573 (n + 1)

end A140573

/-! ## A140573.P17474515127735413740

`p?[A231000(A008458(n))+A008458(n)]`
-/

namespace A140573.P17474515127735413740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A008458 n).toNat + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140573.P17474515127735413740

namespace A140573

/-- `p?[A231000(A008458(n))+A008458(n)]` -/
def P17474515127735413740.Spec : Prop :=
  ∀ n, P17474515127735413740.a n = A140573 (n + 1)

end A140573

/-!
# A140574: Signed Pascal triangle with central coefficients set to zero.

The programs for A140574, there is no canonical definition to state claims against.
-/

/-! ## A140574.P18311550440791922217

`A050326(A061944(n+1)+1)-1`
-/

namespace A140574.P18311550440791922217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A061944 (n + 1) + 1).toNat - 1

end

end A140574.P18311550440791922217

/-!
# A140575: Triangle read by rows: the coefficient of [x^k] of the polynomial 1-(x-1)^n in row n and column k, 0<=k

The programs for A140575, the canonical program `A140575.P13172063658639731110` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140575 has offset 0).

The definition of A140575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140575.P2420795107945137266

`char[∑[n]]-A130595(n)`
-/

namespace A140575.P2420795107945137266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A130595 n

end

end A140575.P2420795107945137266

namespace A140575

/-- `char[∑[n]]-A130595(n)` -/
def P2420795107945137266.Spec : Prop :=
  ∀ n, P2420795107945137266.a n = A140575 n

end A140575

/-! ## A140575.P16265572201369156777

`floor(acot(n)-A091917(n))`
-/

namespace A140575.P16265572201369156777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A091917 n : ℝ)⌋

end

end A140575.P16265572201369156777

namespace A140575

/-- `floor(acot(n)-A091917(n))` -/
def P16265572201369156777.Spec : Prop :=
  ∀ n, P16265572201369156777.a n = A140575 n

end A140575

/-! ## A140575.P13172063658639731110

`A000007(n)-A091917(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140575

/-- `A000007(n)-A091917(n)` -/
def P13172063658639731110.Spec : Prop :=
  ∀ n, P13172063658639731110.a n = A140575 n

theorem P13172063658639731110.correct : P13172063658639731110.Spec := by
  intro n
  simp only [A140575]

end A140575

/-! ## A140575.P11670232631569505180

`A162315(n)-A124927(n)`
-/

namespace A140575.P11670232631569505180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162315 n - A124927 n

end

end A140575.P11670232631569505180

namespace A140575

/-- `A162315(n)-A124927(n)` -/
def P11670232631569505180.Spec : Prop :=
  ∀ n, P11670232631569505180.a n = A140575 n

end A140575

/-! ## A140575.P2309126464873704466

`A057428(n)*A091917(n)`
-/

namespace A140575.P2309126464873704466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A091917 n

end

end A140575.P2309126464873704466

namespace A140575

/-- `A057428(n)*A091917(n)` -/
def P2309126464873704466.Spec : Prop :=
  ∀ n, P2309126464873704466.a n = A140575 n

end A140575

/-! ## A140575.P10417243287615062795

`A019590(n+2)-A091917(n)`
-/

namespace A140575.P10417243287615062795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) - A091917 n

end

end A140575.P10417243287615062795

namespace A140575

/-- `A019590(n+2)-A091917(n)` -/
def P10417243287615062795.Spec : Prop :=
  ∀ n, P10417243287615062795.a n = A140575 n

end A140575

/-! ## A140575.P15385885502066647057

`-A091917(n)%A000032(n+1)`
-/

namespace A140575.P15385885502066647057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A091917 n) (A000032 (n + 1))

end

end A140575.P15385885502066647057

namespace A140575

/-- `-A091917(n)%A000032(n+1)` -/
def P15385885502066647057.Spec : Prop :=
  ∀ n, P15385885502066647057.a n = A140575 n

end A140575

/-! ## A140575.P3586976039741932752

`A004248(∑[n])-A091917(n)`
-/

namespace A140575.P3586976039741932752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (∑ j ∈ Finset.range (n + 1), f1 j) - A091917 n

end

end A140575.P3586976039741932752

namespace A140575

/-- `A004248(∑[n])-A091917(n)` -/
def P3586976039741932752.Spec : Prop :=
  ∀ n, P3586976039741932752.a n = A140575 n

end A140575

/-!
# A140576: Numbers of the form i*9^j-1 (i=1..8, j >= 0).

The programs for A140576, the canonical program `A140576.P956512224196501713` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140576 has offset 1).

The definition of A140576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140576.P956512224196501713

`∑[floor(9^(ceil(n/8)-1))]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140576

/-- `∑[floor(9^(ceil(n/8)-1))]` -/
def P956512224196501713.Spec : Prop :=
  ∀ n, P956512224196501713.a n = A140576 (n + 1)

theorem P956512224196501713.correct : P956512224196501713.Spec := by
  intro n
  simp only [A140576, Nat.add_sub_cancel]

end A140576

/-! ## A140576.P1361721145119859166

`∩[A023751(n+1), A023765(n+1)-1]`
-/

namespace A140576.P1361721145119859166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023765 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140576.P1361721145119859166

namespace A140576

/-- `∩[A023751(n+1), A023765(n+1)-1]` -/
def P1361721145119859166.Spec : Prop :=
  ∀ n, (P1361721145119859166.a n : ℤ) = A140576 (n + 1)

end A140576

/-! ## A140576.P11824786939465561273

`A028310(a(n-1))+A287479(A110655(n))²` with `a(0)=0, a(1)=1`
-/

namespace A140576.P11824786939465561273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A028310 (a (n - 1)).toNat + A287479 (A110655 n).toNat ^ 2

end

end A140576.P11824786939465561273

namespace A140576

/-- `A028310(a(n-1))+A287479(A110655(n))²` -/
def P11824786939465561273.Spec : Prop :=
  ∀ n, P11824786939465561273.a n = A140576 (n + 1)

end A140576

/-! ## A140576.P17803626209757950769

`lt[A004086(A007095(n+1)), 10]`
-/

namespace A140576.P17803626209757950769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007095 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140576.P17803626209757950769

namespace A140576

/-- `lt[A004086(A007095(n+1)), 10]` -/
def P17803626209757950769.Spec : Prop :=
  ∀ n, (P17803626209757950769.a n : ℤ) = A140576 (n + 1)

end A140576

/-! ## A140576.P5733361560432337828

`eq[A037850(n+1), A249733(n)]`
-/

namespace A140576.P5733361560432337828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140576.P5733361560432337828

namespace A140576

/-- `eq[A037850(n+1), A249733(n)]` -/
def P5733361560432337828.Spec : Prop :=
  ∀ n, (P5733361560432337828.a n : ℤ) = A140576 (n + 1)

end A140576

/-!
# A140578: A positive integer n is included if n is the smallest integer in a run of a plural number of consecutive integers all with the same number of divisors.

The programs for A140578, there is no canonical definition to state claims against.
-/

/-! ## A140578.P6899447226391851307

`∩[A005237(n+1), A083794(n+1)]`
-/

namespace A140578.P6899447226391851307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140578.P6899447226391851307

/-! ## A140578.P55106652845496787

`∩[A083794(n+1), A225756(n+1)]`
-/

namespace A140578.P55106652845496787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140578.P55106652845496787

/-! ## A140578.P7529521503374230621

`∩[A083794(n+1), A083795(n+1)-1]`
-/

namespace A140578.P7529521503374230621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140578.P7529521503374230621

/-! ## A140578.P11464864456282746985

`∩[A083794(n+1), A023443(A083795(n+1))]`
-/

namespace A140578.P11464864456282746985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083795 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140578.P11464864456282746985

/-!
# A140579: Triangle read by rows, A014963(n) * 0^(n-k); 1<=k<=n.

The programs for A140579, the canonical program `A140579.P2503757338754458893` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140579 has offset 1).

The definition of A140579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140579.P3190377243507692869

`A023531(n)*A342255(n+1)`
-/

namespace A140579.P3190377243507692869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A342255 (n + 1)

end

end A140579.P3190377243507692869

namespace A140579

/-- `A023531(n)*A342255(n+1)` -/
def P3190377243507692869.Spec : Prop :=
  ∀ n, P3190377243507692869.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P2869400471072970827

`and(A134347(n), A342255(n+1))`
-/

namespace A140579.P2869400471072970827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134347 n) (A342255 (n + 1))

end

end A140579.P2869400471072970827

namespace A140579

/-- `and(A134347(n), A342255(n+1))` -/
def P2869400471072970827.Spec : Prop :=
  ∀ n, P2869400471072970827.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P9024824249838473266

`and(A131436(n+1), A342255(n+1))`
-/

namespace A140579.P9024824249838473266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131436 (n + 1)) (A342255 (n + 1))

end

end A140579.P9024824249838473266

namespace A140579

/-- `and(A131436(n+1), A342255(n+1))` -/
def P9024824249838473266.Spec : Prop :=
  ∀ n, P9024824249838473266.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P16737310684153104096

`A014963(A059897(n+1))*A023531(n)`
-/

namespace A140579.P16737310684153104096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A059897 (n + 1)).toNat * A023531 n

end

end A140579.P16737310684153104096

namespace A140579

/-- `A014963(A059897(n+1))*A023531(n)` -/
def P16737310684153104096.Spec : Prop :=
  ∀ n, P16737310684153104096.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P5507562561754434083

`C(A014963(A002260(n+1)), A116395(n))`
-/

namespace A140579.P5507562561754434083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A002260 (n + 1)).toNat).toNat (A116395 n).toNat

end

end A140579.P5507562561754434083

namespace A140579

/-- `C(A014963(A002260(n+1)), A116395(n))` -/
def P5507562561754434083.Spec : Prop :=
  ∀ n, (P5507562561754434083.a n : ℤ) = A140579 (n + 1)

end A140579

/-! ## A140579.P18129977362159408608

`C(A014963(A003056(n+1)), A116395(n))`
-/

namespace A140579.P18129977362159408608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A003056 (n + 1)).toNat).toNat (A116395 n).toNat

end

end A140579.P18129977362159408608

namespace A140579

/-- `C(A014963(A003056(n+1)), A116395(n))` -/
def P18129977362159408608.Spec : Prop :=
  ∀ n, (P18129977362159408608.a n : ℤ) = A140579 (n + 1)

end A140579

/-! ## A140579.P5460347127010871880

`C(A014963(A002260(n+1)), A187887(n))`
-/

namespace A140579.P5460347127010871880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A002260 (n + 1)).toNat).toNat (A187887 n).toNat

end

end A140579.P5460347127010871880

namespace A140579

/-- `C(A014963(A002260(n+1)), A187887(n))` -/
def P5460347127010871880.Spec : Prop :=
  ∀ n, (P5460347127010871880.a n : ℤ) = A140579 (n + 1)

end A140579

/-! ## A140579.P2503757338754458893

`floor(A014963(A002260(n+1))/A038207(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140579

/-- `floor(A014963(A002260(n+1))/A038207(n))` -/
def P2503757338754458893.Spec : Prop :=
  ∀ n, P2503757338754458893.a n = A140579 (n + 1)

theorem P2503757338754458893.correct : P2503757338754458893.Spec := by
  intro n
  simp only [A140579, Nat.add_sub_cancel]

end A140579

/-! ## A140579.P2796560428153189654

`A014963(∑[A010054(n)])*A010054(n+1)`
-/

namespace A140579.P2796560428153189654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A010054 (n + 1)

end

end A140579.P2796560428153189654

namespace A140579

/-- `A014963(∑[A010054(n)])*A010054(n+1)` -/
def P2796560428153189654.Spec : Prop :=
  ∀ n, P2796560428153189654.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P5512083133073768337

`A014963(A003056(n+1))*Δ[A003056(n)]`
-/

namespace A140579.P5512083133073768337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003056 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A140579.P5512083133073768337

namespace A140579

/-- `A014963(A003056(n+1))*Δ[A003056(n)]` -/
def P5512083133073768337.Spec : Prop :=
  ∀ n, P5512083133073768337.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P1079119044274871870

`A014963(A002024(n+1))*A010054(n+1)`
-/

namespace A140579.P1079119044274871870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A002024 (n + 1)).toNat * A010054 (n + 1)

end

end A140579.P1079119044274871870

namespace A140579

/-- `A014963(A002024(n+1))*A010054(n+1)` -/
def P1079119044274871870.Spec : Prop :=
  ∀ n, P1079119044274871870.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P5316261827510391091

`A014963(A002260(n+1))*A010054(n+1)`
-/

namespace A140579.P5316261827510391091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A002260 (n + 1)).toNat * A010054 (n + 1)

end

end A140579.P5316261827510391091

namespace A140579

/-- `A014963(A002260(n+1))*A010054(n+1)` -/
def P5316261827510391091.Spec : Prop :=
  ∀ n, P5316261827510391091.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P5068391338290627692

`C(A014963(A134226(n+1)), A134234(n+1))`
-/

namespace A140579.P5068391338290627692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A134226 (n + 1)).toNat).toNat (A134234 (n + 1)).toNat

end

end A140579.P5068391338290627692

namespace A140579

/-- `C(A014963(A134226(n+1)), A134234(n+1))` -/
def P5068391338290627692.Spec : Prop :=
  ∀ n, (P5068391338290627692.a n : ℤ) = A140579 (n + 1)

end A140579

/-! ## A140579.P13958707130743627745

`C(A014963(A002260(n+1)), A002260(n+2))`
-/

namespace A140579.P13958707130743627745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A002260 (n + 1)).toNat).toNat (A002260 (n + 2)).toNat

end

end A140579.P13958707130743627745

namespace A140579

/-- `C(A014963(A002260(n+1)), A002260(n+2))` -/
def P13958707130743627745.Spec : Prop :=
  ∀ n, (P13958707130743627745.a n : ℤ) = A140579 (n + 1)

end A140579

/-! ## A140579.P13292810317652783041

`A014963(∑[A073424(n+1)])*A073424(n+1)`
-/

namespace A140579.P13292810317652783041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A073424 (n + 1)

end

end A140579.P13292810317652783041

namespace A140579

/-- `A014963(∑[A073424(n+1)])*A073424(n+1)` -/
def P13292810317652783041.Spec : Prop :=
  ∀ n, P13292810317652783041.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P12919266246376779879

`A023531(n)*A307641(A023531(n)+n)`
-/

namespace A140579.P12919266246376779879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A307641 (A023531 n + (n : ℤ)).toNat

end

end A140579.P12919266246376779879

namespace A140579

/-- `A023531(n)*A307641(A023531(n)+n)` -/
def P12919266246376779879.Spec : Prop :=
  ∀ n, P12919266246376779879.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P15217415491244935669

`A023531(n)*A307641(n+1)`
-/

namespace A140579.P15217415491244935669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A307641 (n + 1)

end

end A140579.P15217415491244935669

namespace A140579

/-- `A023531(n)*A307641(n+1)` -/
def P15217415491244935669.Spec : Prop :=
  ∀ n, P15217415491244935669.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P1722407272514748144

`and(A134347(n), A307641(n+1))`
-/

namespace A140579.P1722407272514748144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134347 n) (A307641 (n + 1))

end

end A140579.P1722407272514748144

namespace A140579

/-- `and(A134347(n), A307641(n+1))` -/
def P1722407272514748144.Spec : Prop :=
  ∀ n, P1722407272514748144.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P16243112072409589679

`and(A193858(n), A307641(n+1))`
-/

namespace A140579.P16243112072409589679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193858 n) (A307641 (n + 1))

end

end A140579.P16243112072409589679

namespace A140579

/-- `and(A193858(n), A307641(n+1))` -/
def P16243112072409589679.Spec : Prop :=
  ∀ n, P16243112072409589679.a n = A140579 (n + 1)

end A140579

/-! ## A140579.P7771494673793046121

`and(A131436(n+1), A307641(n+1))`
-/

namespace A140579.P7771494673793046121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131436 (n + 1)) (A307641 (n + 1))

end

end A140579.P7771494673793046121

namespace A140579

/-- `and(A131436(n+1), A307641(n+1))` -/
def P7771494673793046121.Spec : Prop :=
  ∀ n, P7771494673793046121.a n = A140579 (n + 1)

end A140579

/-!
# A140580: a(n) = (n^2)/A048671(n), = n*A014963(n) = A140579 * [1, 2, 3, ...].

The programs for A140580, the canonical program `A140580.P4488062702494493463` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140580 has offset 1).

The definition of A140580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140580.P2992127799996586144

`(n+1)²/gcd(n+1, ∏{p}[n+1, (n+1)/#])`
-/

namespace A140580.P2992127799996586144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℚ)

end

end A140580.P2992127799996586144

namespace A140580

/-- `(n+1)²/gcd(n+1, ∏{p}[n+1, (n+1)/#])` -/
def P2992127799996586144.Spec : Prop :=
  ∀ n, P2992127799996586144.a n = (A140580 (n + 1) : ℚ)

end A140580

/-! ## A140580.P4488062702494493463

`(n+1)*ceil((n+1)/∏{p}[n+1, (n+1)/#])`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140580

/-- `(n+1)*ceil((n+1)/∏{p}[n+1, (n+1)/#])` -/
def P4488062702494493463.Spec : Prop :=
  ∀ n, P4488062702494493463.a n = A140580 (n + 1)

theorem P4488062702494493463.correct : P4488062702494493463.Spec := by
  intro n
  simp only [A140580, Nat.add_sub_cancel]

end A140580

/-! ## A140580.P7853222089865479335

`floor(ceil((n+1)/∏{p}[n+1, (n+1)/#])/acot(n+1))`
-/

namespace A140580.P7853222089865479335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A140580.P7853222089865479335

namespace A140580

/-- `floor(ceil((n+1)/∏{p}[n+1, (n+1)/#])/acot(n+1))` -/
def P7853222089865479335.Spec : Prop :=
  ∀ n, P7853222089865479335.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P3913291828865915636

`round(ceil((n+1)/∏{p}[n+1, (n+1)/#])/acot(n+1))`
-/

namespace A140580.P3913291828865915636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))

end

end A140580.P3913291828865915636

namespace A140580

/-- `round(ceil((n+1)/∏{p}[n+1, (n+1)/#])/acot(n+1))` -/
def P3913291828865915636.Spec : Prop :=
  ∀ n, P3913291828865915636.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P6297193048098928730

`(n+1)/tan(acot(ceil((n+1)/∏{p}[n+1, (n+1)/#])))`
-/

namespace A140580.P6297193048098928730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℝ))

end

end A140580.P6297193048098928730

namespace A140580

/-- `(n+1)/tan(acot(ceil((n+1)/∏{p}[n+1, (n+1)/#])))` -/
def P6297193048098928730.Spec : Prop :=
  ∀ n, P6297193048098928730.a n = (A140580 (n + 1) : ℝ)

end A140580

/-! ## A140580.P3800992094263436886

`(n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#])^(-1)`
-/

namespace A140580.P3800992094263436886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ) ^ (-1 : ℤ)

end

end A140580.P3800992094263436886

namespace A140580

/-- `(n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#])^(-1)` -/
def P3800992094263436886.Spec : Prop :=
  ∀ n, P3800992094263436886.a n = (A140580 (n + 1) : ℚ)

theorem P3800992094263436886.correct : P3800992094263436886.Spec := by
  intro n
  simp only [A140580, Nat.add_sub_cancel, A140580.P3800992094263436886.f1, A140580.P3800992094263436886.a, A140580.P4488062702494493463.f1, A140580.P4488062702494493463.a, SequenceMachineLib.memo_apply]
  try simp

end A140580

/-! ## A140580.P2970600885796541696

`(n+1)*A014963(n+1)`
-/

namespace A140580.P2970600885796541696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014963 (n + 1)

end

end A140580.P2970600885796541696

namespace A140580

/-- `(n+1)*A014963(n+1)` -/
def P2970600885796541696.Spec : Prop :=
  ∀ n, P2970600885796541696.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P1920466070909453865

`lcm(n+1, A133790(n+1))`
-/

namespace A140580.P1920466070909453865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A133790 (n + 1))

end

end A140580.P1920466070909453865

namespace A140580

/-- `lcm(n+1, A133790(n+1))` -/
def P1920466070909453865.Spec : Prop :=
  ∀ n, (P1920466070909453865.a n : ℤ) = A140580 (n + 1)

end A140580

/-! ## A140580.P10077258810956911756

`(n+1)²/A048671(n+1)`
-/

namespace A140580.P10077258810956911756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A048671 (n + 1) : ℚ)

end

end A140580.P10077258810956911756

namespace A140580

/-- `(n+1)²/A048671(n+1)` -/
def P10077258810956911756.Spec : Prop :=
  ∀ n, P10077258810956911756.a n = (A140580 (n + 1) : ℚ)

end A140580

/-! ## A140580.P2646143185762082616

`(n+1)^3/A140651(n+1)`
-/

namespace A140580.P2646143185762082616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A140651 (n + 1) : ℚ)

end

end A140580.P2646143185762082616

namespace A140580

/-- `(n+1)^3/A140651(n+1)` -/
def P2646143185762082616.Spec : Prop :=
  ∀ n, P2646143185762082616.a n = (A140580 (n + 1) : ℚ)

end A140580

/-! ## A140580.P9575837662982956760

`A066048(n+1)*A073752(n+1)`
-/

namespace A140580.P9575837662982956760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1) * A073752 (n + 1)

end

end A140580.P9575837662982956760

namespace A140580

/-- `A066048(n+1)*A073752(n+1)` -/
def P9575837662982956760.Spec : Prop :=
  ∀ n, P9575837662982956760.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P13942668117240448780

`(n+1)*A369042(A003188(n+1))`
-/

namespace A140580.P13942668117240448780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369042 (A003188 (n + 1)).toNat

end

end A140580.P13942668117240448780

namespace A140580

/-- `(n+1)*A369042(A003188(n+1))` -/
def P13942668117240448780.Spec : Prop :=
  ∀ n, P13942668117240448780.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P7029382858339377029

`(n+1)*A369045(A054429(n+1))`
-/

namespace A140580.P7029382858339377029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369045 (A054429 (n + 1)).toNat

end

end A140580.P7029382858339377029

namespace A140580

/-- `(n+1)*A369045(A054429(n+1))` -/
def P7029382858339377029.Spec : Prop :=
  ∀ n, P7029382858339377029.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P1752702783420790231

`(n+1)*A369044(A057889(n+1))`
-/

namespace A140580.P1752702783420790231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369044 (A057889 (n + 1)).toNat

end

end A140580.P1752702783420790231

namespace A140580

/-- `(n+1)*A369044(A057889(n+1))` -/
def P1752702783420790231.Spec : Prop :=
  ∀ n, P1752702783420790231.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P15885269376047860109

`gcd(A050399(n+1), A074591(n+1))`
-/

namespace A140580.P15885269376047860109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050399 (n + 1)) (A074591 (n + 1))

end

end A140580.P15885269376047860109

namespace A140580

/-- `gcd(A050399(n+1), A074591(n+1))` -/
def P15885269376047860109.Spec : Prop :=
  ∀ n, (P15885269376047860109.a n : ℤ) = A140580 (n + 1)

end A140580

/-! ## A140580.P6003396952961548505

`gcd(A129598(n+1), A285109(n+1))`
-/

namespace A140580.P6003396952961548505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129598 (n + 1)) (A285109 (n + 1))

end

end A140580.P6003396952961548505

namespace A140580

/-- `gcd(A129598(n+1), A285109(n+1))` -/
def P6003396952961548505.Spec : Prop :=
  ∀ n, (P6003396952961548505.a n : ℤ) = A140580 (n + 1)

end A140580

/-! ## A140580.P6718970817462775978

`A006530(n+1)*A020639(n+1)*A073752(n+1)`
-/

namespace A140580.P6718970817462775978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A020639 (n + 1) * A073752 (n + 1)

end

end A140580.P6718970817462775978

namespace A140580

/-- `A006530(n+1)*A020639(n+1)*A073752(n+1)` -/
def P6718970817462775978.Spec : Prop :=
  ∀ n, P6718970817462775978.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P2836701281451005445

`(n+1)*A369041(A006068(n+1))`
-/

namespace A140580.P2836701281451005445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369041 (A006068 (n + 1)).toNat

end

end A140580.P2836701281451005445

namespace A140580

/-- `(n+1)*A369041(A006068(n+1))` -/
def P2836701281451005445.Spec : Prop :=
  ∀ n, P2836701281451005445.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P7037491080253321889

`(n+1)*A369043(A193231(n+1))`
-/

namespace A140580.P7037491080253321889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369043 (A193231 (n + 1)).toNat

end

end A140580.P7037491080253321889

namespace A140580

/-- `(n+1)*A369043(A193231(n+1))` -/
def P7037491080253321889.Spec : Prop :=
  ∀ n, P7037491080253321889.a n = A140580 (n + 1)

end A140580

/-! ## A140580.P9726270090829003954

`(n+1)*ratio[lcm(n, a(n-1))]` with `a(0)=1`
-/

namespace A140580.P9726270090829003954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm n (f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A140580.P9726270090829003954

namespace A140580

/-- `(n+1)*ratio[lcm(n, a(n-1))]` -/
def P9726270090829003954.Spec : Prop :=
  ∀ n, P9726270090829003954.a n = (A140580 (n + 1) : ℚ)

end A140580

/-!
# A140581: Triangle read by rows: T(n,k) = A140254(n/k) if k divides n, T(n,k) = 0 otherwise.

The programs for A140581, there is no canonical definition to state claims against.
-/

/-! ## A140581.P7826023573117917103

`A140254(A164306(n+1)²²*A049834(n+1))`
-/

namespace A140581.P7826023573117917103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 ((A164306 (n + 1) ^ 2) ^ 2 * A049834 (n + 1)).toNat

end

end A140581.P7826023573117917103

/-! ## A140581.P12268232032996861869

`A140254(A164306(n+1)²²*A054531(n+1))`
-/

namespace A140581.P12268232032996861869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 ((A164306 (n + 1) ^ 2) ^ 2 * A054531 (n + 1)).toNat

end

end A140581.P12268232032996861869

/-! ## A140581.P5228681798024411879

`A140254(A049834(n+1)^A164306(n+1))`
-/

namespace A140581.P5228681798024411879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (SequenceMachineLib.roundAway ((A049834 (n + 1) : ℚ) ^ (A164306 (n + 1) : ℤ))).toNat

end

end A140581.P5228681798024411879

/-! ## A140581.P3093085020200376578

`A140254(A054531(n+1)^A164306(n+1))`
-/

namespace A140581.P3093085020200376578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (SequenceMachineLib.roundAway ((A054531 (n + 1) : ℚ) ^ (A164306 (n + 1) : ℤ))).toNat

end

end A140581.P3093085020200376578

/-! ## A140581.P11848995085823330909

`A140254(gcd(A126988(n+1), A334009(n+1)))`
-/

namespace A140581.P11848995085823330909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (Int.gcd (A126988 (n + 1)) (A334009 (n + 1)))

end

end A140581.P11848995085823330909

/-!
# A140582: Triangle read by rows, A000012 * A140581.

The programs for A140582, there is no canonical definition to state claims against.
-/

/-! ## A140582.P1694269319077006524

`A282673(A072107(n+1))+A162944(n+1)`
-/

namespace A140582.P1694269319077006524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282673 (A072107 (n + 1)).toNat + A162944 (n + 1)

end

end A140582.P1694269319077006524

/-! ## A140582.P1640977940501116550

`A282673(∑[A014963(n+1)])+A162944(n+1)`
-/

namespace A140582.P1640977940501116550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282673 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A162944 (n + 1)

end

end A140582.P1640977940501116550

/-! ## A140582.P353518951474801282

`A282673(∑[A020500(n+1)]+1)+A162944(n+1)`
-/

namespace A140582.P353518951474801282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282673 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + A162944 (n + 1)

end

end A140582.P353518951474801282

/-! ## A140582.P365502116946476077

`A282673(∑[(n+1)/A048671(n+1)])+A162944(n+1)`
-/

namespace A140582.P365502116946476077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A048671 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282673 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A162944 (n + 1)

end

end A140582.P365502116946476077

/-! ## A140582.P7493924216729517168

`A162944(n+1)+A016389(A119502(n))`
-/

namespace A140582.P7493924216729517168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162944 (n + 1) + A016389 (A119502 n).toNat

end

end A140582.P7493924216729517168

/-!
# A140583: Triangle read by rows: T(n,k) = Sum_{i=k..n} A140581(n,i).

The programs for A140583, there is no canonical definition to state claims against.
-/

/-! ## A140583.P5483480915716918341

`A138618(n+1)+A102683(A114338(n))`
-/

namespace A140583.P5483480915716918341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (n + 1) + A102683 (A114338 n).toNat

end

end A140583.P5483480915716918341

/-! ## A140583.P8411952482762451993

`A102683(A114338(n))+A072211(A085383(n+1))`
-/

namespace A140583.P8411952482762451993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A114338 n).toNat + A072211 (A085383 (n + 1)).toNat

end

end A140583.P8411952482762451993

/-! ## A140583.P16726677700327814727

`A102683(A114338(n))+A028310(A140256(n+1))`
-/

namespace A140583.P16726677700327814727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A114338 n).toNat + A028310 (A140256 (n + 1)).toNat

end

end A140583.P16726677700327814727

/-! ## A140583.P2435528148988965147

`A138618(n+1)+A010052(A003056(A154105(n)))`
-/

namespace A140583.P2435528148988965147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (n + 1) + A010052 (A003056 (A154105 n).toNat).toNat

end

end A140583.P2435528148988965147

/-! ## A140583.P15208919961974561147

`A138618(n+1)+A010052(A154105(n)-A138618(n+1))`
-/

namespace A140583.P15208919961974561147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (n + 1) + A010052 (A154105 n - A138618 (n + 1)).toNat

end

end A140583.P15208919961974561147

/-!
# A140584: Row sums of A140583.

The programs for A140584, the canonical program `A140584.P2555590282461382423` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140584 has offset 1).

The definition of A140584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140584.P4179548808413838978

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑{p}[n+1, gcd(n, #)]+1+n`
-/

namespace A140584.P4179548808413838978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((∑ p ∈ Nat.primeFactors (f3 n), Nat.gcd n p : ℕ) : ℚ) + 1 + (n : ℚ)

end

end A140584.P4179548808413838978

namespace A140584

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑{p}[n+1, gcd(n, #)]+1+n` -/
def P4179548808413838978.Spec : Prop :=
  ∀ n, P4179548808413838978.a n = (A140584 (n + 1) : ℚ)

end A140584

/-! ## A140584.P16026419659228069946

`A390608(n+1)+1+n`
-/

namespace A140584.P16026419659228069946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390608 (n + 1) + 1 + (n : ℤ)

end

end A140584.P16026419659228069946

namespace A140584

/-- `A390608(n+1)+1+n` -/
def P16026419659228069946.Spec : Prop :=
  ∀ n, P16026419659228069946.a n = A140584 (n + 1)

end A140584

/-! ## A140584.P2555590282461382423

`∑{d}[n+1, #*A140254((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140584

/-- `∑{d}[n+1, #*A140254((n+1)/#)]` -/
def P2555590282461382423.Spec : Prop :=
  ∀ n, P2555590282461382423.a n = A140584 (n + 1)

theorem P2555590282461382423.correct : P2555590282461382423.Spec := by
  intro n
  simp only [A140584, Nat.add_sub_cancel]

end A140584

/-! ## A140584.P16731199197732813412

`A000010(n+1)*A001221(n+1)+1+n`
-/

namespace A140584.P16731199197732813412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001221 (n + 1) + 1 + (n : ℤ)

end

end A140584.P16731199197732813412

namespace A140584

/-- `A000010(n+1)*A001221(n+1)+1+n` -/
def P16731199197732813412.Spec : Prop :=
  ∀ n, P16731199197732813412.a n = A140584 (n + 1)

end A140584

/-! ## A140584.P18339310164850292637

`∑{d}[n+1, A000010(#)*A014963((n+1)/#)]`
-/

namespace A140584.P18339310164850292637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140584.P18339310164850292637

namespace A140584

/-- `∑{d}[n+1, A000010(#)*A014963((n+1)/#)]` -/
def P18339310164850292637.Spec : Prop :=
  ∀ n, P18339310164850292637.a n = A140584 (n + 1)

end A140584

/-!
# A140585: Total number of all hierarchical orderings for all set partitions of n.

The programs for A140585, there is no canonical definition to state claims against.
-/

/-! ## A140585.P14523613340307969545

`A032742(A374986(n))+n`
-/

namespace A140585.P14523613340307969545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A374986 n).toNat + (n : ℤ)

end

end A140585.P14523613340307969545

/-!
# A140586: Triangle t(n,m) read by rows: t(n,m) = binomial(n,m) if m <= floor(n/3) or m >= floor(2n/3), otherwise t(n,m)=0.

The programs for A140586, there is no canonical definition to state claims against.
-/

/-! ## A140586.P11483660409376987693

`lcm(A007318(n), A175629(A101135(n+1)))`
-/

namespace A140586.P11483660409376987693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A175629 (A101135 (n + 1)).toNat)

end

end A140586.P11483660409376987693

/-! ## A140586.P17758302883244672371

`A175629(A101135(n+1))²*A065033(A109128(n))`
-/

namespace A140586.P17758302883244672371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (A101135 (n + 1)).toNat ^ 2 * A065033 (A109128 n).toNat

end

end A140586.P17758302883244672371

/-! ## A140586.P9933280696527228523

`A007318(n)%A039752(A125077(n+5))`
-/

namespace A140586.P9933280696527228523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A039752 (A125077 (n + 5)).toNat)

end

end A140586.P9933280696527228523

/-! ## A140586.P15134097270233198653

`abs(A108086(n))%A154630(A076686(n+1))`
-/

namespace A140586.P15134097270233198653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A108086 n| (A154630 (A076686 (n + 1)).toNat)

end

end A140586.P15134097270233198653

/-! ## A140586.P5282953254176852750

`abs(A130595(n)%A154630(A076686(n+1)))`
-/

namespace A140586.P5282953254176852750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A130595 n) (A154630 (A076686 (n + 1)).toNat)|

end

end A140586.P5282953254176852750

/-!
# A140587: Primes congruent to 31 or 179 mod 210.

The programs for A140587, the canonical program `A140587.P15814081933764653476` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140587 has offset 1).

The definition of A140587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140587.P15814081933764653476

`p?[A249674(n)+A238470(2*n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140587

/-- `p?[A249674(n)+A238470(2*n)]` -/
def P15814081933764653476.Spec : Prop :=
  ∀ n, P15814081933764653476.a n = A140587 (n + 1)

theorem P15814081933764653476.correct : P15814081933764653476.Spec := by
  intro n
  simp only [A140587, Nat.add_sub_cancel]

end A140587

/-! ## A140587.P5771671691373308564

`p?[A156797(n+1)+A008585(A047621(n+1))]`
-/

namespace A140587.P5771671691373308564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156797 (n + 1) + A008585 (A047621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P5771671691373308564

namespace A140587

/-- `p?[A156797(n+1)+A008585(A047621(n+1))]` -/
def P5771671691373308564.Spec : Prop :=
  ∀ n, P5771671691373308564.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P18082658041937223596

`p?[A017413(2*n+1)-A065187(n+1)]`
-/

namespace A140587.P18082658041937223596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 (2 * n + 1) - A065187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P18082658041937223596

namespace A140587

/-- `p?[A017413(2*n+1)-A065187(n+1)]` -/
def P18082658041937223596.Spec : Prop :=
  ∀ n, P18082658041937223596.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P10868937644938830186

`p?[A175887(xor(1, A017029(n)))]`
-/

namespace A140587.P10868937644938830186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (Int.xor 1 (A017029 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P10868937644938830186

namespace A140587

/-- `p?[A175887(xor(1, A017029(n)))]` -/
def P10868937644938830186.Spec : Prop :=
  ∀ n, P10868937644938830186.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P4270235014813077660

`p?[A057538(A084967(n+1)-n)]`
-/

namespace A140587.P4270235014813077660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (A084967 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P4270235014813077660

namespace A140587

/-- `p?[A057538(A084967(n+1)-n)]` -/
def P4270235014813077660.Spec : Prop :=
  ∀ n, P4270235014813077660.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P5447894999494876939

`p?[A175887(A084967(n+1)-n)]`
-/

namespace A140587.P5447894999494876939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A084967 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P5447894999494876939

namespace A140587

/-- `p?[A175887(A084967(n+1)-n)]` -/
def P5447894999494876939.Spec : Prop :=
  ∀ n, P5447894999494876939.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P12957359648537025655

`p?[A175887(A045572(n+1)+n+1)]`
-/

namespace A140587.P12957359648537025655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A045572 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P12957359648537025655

namespace A140587

/-- `p?[A175887(A045572(n+1)+n+1)]` -/
def P12957359648537025655.Spec : Prop :=
  ∀ n, P12957359648537025655.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P7558489042953993193

`p?[A175887(A017005(n)-A047289(n+1))]`
-/

namespace A140587.P7558489042953993193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A017005 n - A047289 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P7558489042953993193

namespace A140587

/-- `p?[A175887(A017005(n)-A047289(n+1))]` -/
def P7558489042953993193.Spec : Prop :=
  ∀ n, P7558489042953993193.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P12474650179119529964

`p?[A298026(A298024(n)+n)+n]`
-/

namespace A140587.P12474650179119529964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (A298024 n + (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P12474650179119529964

namespace A140587

/-- `p?[A298026(A298024(n)+n)+n]` -/
def P12474650179119529964.Spec : Prop :=
  ∀ n, P12474650179119529964.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P11877801268221175677

`p?[A298026(A298014(n)+2)+n]`
-/

namespace A140587.P11877801268221175677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (A298014 n + 2).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P11877801268221175677

namespace A140587

/-- `p?[A298026(A298014(n)+2)+n]` -/
def P11877801268221175677.Spec : Prop :=
  ∀ n, P11877801268221175677.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P13478468608276174065

`p?[A192333(3*(n+1))+A005843(A192333(2*n+3))]`
-/

namespace A140587.P13478468608276174065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (3 * (n + 1)) + A005843 (A192333 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P13478468608276174065

namespace A140587

/-- `p?[A192333(3*(n+1))+A005843(A192333(2*n+3))]` -/
def P13478468608276174065.Spec : Prop :=
  ∀ n, P13478468608276174065.a n = A140587 (n + 1)

end A140587

/-! ## A140587.P5299680550583628541

`p?[A192333(A016993(n))-7]`
-/

namespace A140587.P5299680550583628541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (A016993 n).toNat - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P5299680550583628541

namespace A140587

/-- `p?[A192333(A016993(n))-7]` -/
def P5299680550583628541.Spec : Prop :=
  ∀ n, P5299680550583628541.a n = A140587 (n + 1)

end A140587

/-!
# A140588: a(n) = Bell(n) * Fibonacci(n).

The programs for A140588, there is no canonical definition to state claims against.
-/

/-! ## A140588.P9413196683995019948

`A000045(n)*A000110(n)`
-/

namespace A140588.P9413196683995019948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000110 n

end

end A140588.P9413196683995019948

/-! ## A140588.P6450361432180012415

`abs(A000045(n)*A292935(n))`
-/

namespace A140588.P6450361432180012415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 n * A292935 n|

end

end A140588.P6450361432180012415

/-! ## A140588.P17301185064055144864

`A000045(n)*A011971(∑[n])`
-/

namespace A140588.P17301185064055144864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140588.P17301185064055144864

/-! ## A140588.P11605930208069115144

`A000045(n)*A033306(∑[n])`
-/

namespace A140588.P11605930208069115144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A033306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140588.P11605930208069115144

/-! ## A140588.P6137135206509013302

`A000045(n)*A095149(∑[n])`
-/

namespace A140588.P6137135206509013302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140588.P6137135206509013302

/-! ## A140588.P9813487816173430737

`A000045(n)*A108087(∑[n])`
-/

namespace A140588.P9813487816173430737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140588.P9813487816173430737

/-! ## A140588.P16127821901711486784

`A000045(n)*A123081(∑[n])`
-/

namespace A140588.P16127821901711486784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140588.P16127821901711486784

/-! ## A140588.P9180771689686373204

`A000045(n)*A186020(∑[n])`
-/

namespace A140588.P9180771689686373204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140588.P9180771689686373204

/-! ## A140588.P16052350115698203470

`A000045(n)*A327884(∑[n])`
-/

namespace A140588.P16052350115698203470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A327884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140588.P16052350115698203470

/-!
# A140589: Triangle A(k,n) = (-2)^k+2^n read by rows.

The programs for A140589, there is no canonical definition to state claims against.
-/

/-! ## A140589.P1597372853648774342

`A123344(∑[char[∑[n]]])+2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A140589.P1597372853648774342
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

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123344 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ)

end

end A140589.P1597372853648774342

/-! ## A140589.P11707502497056218660

`A122803(∑[char[∑[n+1]]])+2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A140589.P11707502497056218660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122803 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ)

end

end A140589.P11707502497056218660

/-! ## A140589.P18316657934947371148

`A123876(C(∑[char[∑[n]]], 2))+2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A140589.P18316657934947371148
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

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123876 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ)

end

end A140589.P18316657934947371148

/-! ## A140589.P659054127833674360

`A059268(n)-A162512(2^(comp[C(n, 2)]-(n+1)))`
-/

namespace A140589.P659054127833674360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A162512 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A140589.P659054127833674360

/-! ## A140589.P4444312186666297674

`A059268(n)-A162512(2^(comp[C(n, 2)]-n)/2)`
-/

namespace A140589.P4444312186666297674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A162512 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) / 2)).toNat

end

end A140589.P4444312186666297674

/-! ## A140589.P17594027834046255764

`A122803(A003056(n))+A059268(n)`
-/

namespace A140589.P17594027834046255764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A003056 n).toNat + A059268 n

end

end A140589.P17594027834046255764

/-! ## A140589.P9282939808662826105

`A098503(A057944(n))+A059268(n)`
-/

namespace A140589.P9282939808662826105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098503 (A057944 n).toNat + A059268 n

end

end A140589.P9282939808662826105

/-! ## A140589.P18209226465959073454

`A059268(n)+A030207(A137688(n))`
-/

namespace A140589.P18209226465959073454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A030207 (A137688 n).toNat

end

end A140589.P18209226465959073454

/-! ## A140589.P3754835666812360334

`A122803(A117707(n))+A059268(n)`
-/

namespace A140589.P3754835666812360334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A117707 n).toNat + A059268 n

end

end A140589.P3754835666812360334

/-! ## A140589.P8878196711304265583

`A059268(n)-A162512(A140513(n))`
-/

namespace A140589.P8878196711304265583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A162512 (A140513 n).toNat

end

end A140589.P8878196711304265583

/-!
# A140590: Exchange successive pairs of terms of A000051.

The programs for A140590, the canonical program `A140590.P18125055836469651376` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140590 has offset 0).

The definition of A140590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140590.P18125055836469651376

`2^(n+(-1)^n)+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140590

/-- `2^(n+(-1)^n)+1` -/
def P18125055836469651376.Spec : Prop :=
  ∀ n, P18125055836469651376.a n = (A140590 n : ℚ)

end A140590

/-! ## A140590.P15158540231579101068

`4*(a(n-2)-3/4)` with `a(0)=3, a(1)=2`
-/

namespace A140590.P15158540231579101068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  4 * (a (n - 2) - (3 : ℚ) / 4)

end

end A140590.P15158540231579101068

namespace A140590

/-- `4*(a(n-2)-3/4)` -/
def P15158540231579101068.Spec : Prop :=
  ∀ n, P15158540231579101068.a n = (A140590 n : ℚ)

end A140590

/-! ## A140590.P11314336119691050695

`floor(a(n-2)+3*(a(n-2)-1))` with `a(0)=3, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A140590.P11314336119691050695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) + 3 * (a (n - 2) - 1)

end

end A140590.P11314336119691050695

namespace A140590

/-- `floor(a(n-2)+3*(a(n-2)-1))` -/
def P11314336119691050695.Spec : Prop :=
  ∀ n, P11314336119691050695.a n = A140590 n

end A140590

/-! ## A140590.P4169738861991148695

`floor(a(n-2)-3*(1-a(n-2)))` with `a(0)=3, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A140590.P4169738861991148695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) - 3 * (1 - a (n - 2))

end

end A140590.P4169738861991148695

namespace A140590

/-- `floor(a(n-2)-3*(1-a(n-2)))` -/
def P4169738861991148695.Spec : Prop :=
  ∀ n, P4169738861991148695.a n = A140590 n

end A140590

/-! ## A140590.P11171579679285484160

`A000051(xor(1, n))`
-/

namespace A140590.P11171579679285484160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (Nat.xor 1 n)

end

end A140590.P11171579679285484160

namespace A140590

/-- `A000051(xor(1, n))` -/
def P11171579679285484160.Spec : Prop :=
  ∀ n, P11171579679285484160.a n = A140590 n

end A140590

/-! ## A140590.P6222498308194607985

`A094373(xor(1, n)+1)`
-/

namespace A140590.P6222498308194607985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (Nat.xor 1 n + 1)

end

end A140590.P6222498308194607985

namespace A140590

/-- `A094373(xor(1, n)+1)` -/
def P6222498308194607985.Spec : Prop :=
  ∀ n, P6222498308194607985.a n = A140590 n

end A140590

/-! ## A140590.P9800650703202728210

`A052552(2*xor(1, n))`
-/

namespace A140590.P9800650703202728210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * Nat.xor 1 n)

end

end A140590.P9800650703202728210

namespace A140590

/-- `A052552(2*xor(1, n))` -/
def P9800650703202728210.Spec : Prop :=
  ∀ n, P9800650703202728210.a n = A140590 n

end A140590

/-! ## A140590.P2657025324856402042

`A136417(2*xor(1, n))`
-/

namespace A140590.P2657025324856402042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (2 * Nat.xor 1 n)

end

end A140590.P2657025324856402042

namespace A140590

/-- `A136417(2*xor(1, n))` -/
def P2657025324856402042.Spec : Prop :=
  ∀ n, P2657025324856402042.a n = A140590 n

end A140590

/-! ## A140590.P9945414021549105586

`A051032(xor(3, 2*n))`
-/

namespace A140590.P9945414021549105586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (Nat.xor 3 (2 * n))

end

end A140590.P9945414021549105586

namespace A140590

/-- `A051032(xor(3, 2*n))` -/
def P9945414021549105586.Spec : Prop :=
  ∀ n, P9945414021549105586.a n = A140590 n

end A140590

/-! ## A140590.P2126685701139108509

`A140407(xor(3, 2*n))`
-/

namespace A140590.P2126685701139108509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (Nat.xor 3 (2 * n))

end

end A140590.P2126685701139108509

namespace A140590

/-- `A140407(xor(3, 2*n))` -/
def P2126685701139108509.Spec : Prop :=
  ∀ n, P2126685701139108509.a n = A140590 n

end A140590

/-! ## A140590.P9220993502942042215

`xor(1, A171559(xor(1, n)))`
-/

namespace A140590.P9220993502942042215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A171559 (Nat.xor 1 n))

end

end A140590.P9220993502942042215

namespace A140590

/-- `xor(1, A171559(xor(1, n)))` -/
def P9220993502942042215.Spec : Prop :=
  ∀ n, P9220993502942042215.a n = A140590 n

end A140590

/-! ## A140590.P17238554051494373570

`A000051(A004442(n))`
-/

namespace A140590.P17238554051494373570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A004442 n).toNat

end

end A140590.P17238554051494373570

namespace A140590

/-- `A000051(A004442(n))` -/
def P17238554051494373570.Spec : Prop :=
  ∀ n, P17238554051494373570.a n = A140590 n

end A140590

/-! ## A140590.P4519011934135469366

`A051032(A166519(n))`
-/

namespace A140590.P4519011934135469366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (A166519 n).toNat

end

end A140590.P4519011934135469366

namespace A140590

/-- `A051032(A166519(n))` -/
def P4519011934135469366.Spec : Prop :=
  ∀ n, P4519011934135469366.a n = A140590 n

end A140590

/-! ## A140590.P13976184415892819086

`A094373(A014681(n+1))`
-/

namespace A140590.P13976184415892819086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A014681 (n + 1)).toNat

end

end A140590.P13976184415892819086

namespace A140590

/-- `A094373(A014681(n+1))` -/
def P13976184415892819086.Spec : Prop :=
  ∀ n, P13976184415892819086.a n = A140590 n

end A140590

/-! ## A140590.P713268682390895956

`A094373(A103889(n+1))`
-/

namespace A140590.P713268682390895956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A103889 (n + 1)).toNat

end

end A140590.P713268682390895956

namespace A140590

/-- `A094373(A103889(n+1))` -/
def P713268682390895956.Spec : Prop :=
  ∀ n, P713268682390895956.a n = A140590 n

end A140590

/-! ## A140590.P4580234943955220694

`A000051(A033999(n)+n)`
-/

namespace A140590.P4580234943955220694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A033999 n + (n : ℤ)).toNat

end

end A140590.P4580234943955220694

namespace A140590

/-- `A000051(A033999(n)+n)` -/
def P4580234943955220694.Spec : Prop :=
  ∀ n, P4580234943955220694.a n = A140590 n

end A140590

/-! ## A140590.P99410624236745355

`A000051(A014681(n+1)-1)`
-/

namespace A140590.P99410624236745355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A014681 (n + 1) - 1).toNat

end

end A140590.P99410624236745355

namespace A140590

/-- `A000051(A014681(n+1)-1)` -/
def P99410624236745355.Spec : Prop :=
  ∀ n, P99410624236745355.a n = A140590 n

end A140590

/-! ## A140590.P3747233446384724050

`A000051(A065190(n+2)-2)`
-/

namespace A140590.P3747233446384724050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A065190 (n + 2) - 2).toNat

end

end A140590.P3747233446384724050

namespace A140590

/-- `A000051(A065190(n+2)-2)` -/
def P3747233446384724050.Spec : Prop :=
  ∀ n, P3747233446384724050.a n = A140590 n

end A140590

/-!
# A140592: a(n) = 2n if A010060(n-1) is 0, and a(n) = 2n+1 if A010060(n-1) is 1.

The programs for A140592, the canonical program `A140592.P9802847602468291615` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140592 has offset 1).

The definition of A140592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140592.P9802847602468291615

`A001969(n+1)+2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140592

/-- `A001969(n+1)+2` -/
def P9802847602468291615.Spec : Prop :=
  ∀ n, P9802847602468291615.a n = A140592 (n + 1)

theorem P9802847602468291615.correct : P9802847602468291615.Spec := by
  intro n
  simp only [A140592, Nat.add_sub_cancel]

end A140592

/-! ## A140592.P1454828557363001850

`comp[xor(n, 2*n+1)]+2`
-/

namespace A140592.P1454828557363001850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A140592.P1454828557363001850

namespace A140592

/-- `comp[xor(n, 2*n+1)]+2` -/
def P1454828557363001850.Spec : Prop :=
  ∀ n, (P1454828557363001850.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P10132660778327089554

`record[xor(3, n)]-comp[xor(n, 2*n)]`
-/

namespace A140592.P10132660778327089554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A140592.P10132660778327089554

namespace A140592

/-- `record[xor(3, n)]-comp[xor(n, 2*n)]` -/
def P10132660778327089554.Spec : Prop :=
  ∀ n, P10132660778327089554.a n = A140592 (n + 1)

end A140592

/-! ## A140592.P17966680830336152789

`lt[0, -a(and(n, n-1))]+2` with `a(0)=1`
-/

namespace A140592.P17966680830336152789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A140592.P17966680830336152789

namespace A140592

/-- `lt[0, -a(and(n, n-1))]+2` -/
def P17966680830336152789.Spec : Prop :=
  ∀ n, (P17966680830336152789.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P2952308600563139151

`eq[1, -a(and(n, n-1))]+2` with `a(0)=1`
-/

namespace A140592.P2952308600563139151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A140592.P2952308600563139151

namespace A140592

/-- `eq[1, -a(and(n, n-1))]+2` -/
def P2952308600563139151.Spec : Prop :=
  ∀ n, (P2952308600563139151.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P2652873130503835296

`or(2*n, char[xor(n, Δ[n²])])+2`
-/

namespace A140592.P2652873130503835296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2

end

end A140592.P2652873130503835296

namespace A140592

/-- `or(2*n, char[xor(n, Δ[n²])])+2` -/
def P2652873130503835296.Spec : Prop :=
  ∀ n, (P2652873130503835296.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P13721528395553197270

`n+2+char[xor(n, Δ[n²])]+n`
-/

namespace A140592.P13721528395553197270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A140592.P13721528395553197270

namespace A140592

/-- `n+2+char[xor(n, Δ[n²])]+n` -/
def P13721528395553197270.Spec : Prop :=
  ∀ n, (P13721528395553197270.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P8585890384598025192

`eq[0, 1-a(and(n, n-1))]+2` with `a(0)=0`
-/

namespace A140592.P8585890384598025192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A140592.P8585890384598025192

namespace A140592

/-- `eq[0, 1-a(and(n, n-1))]+2` -/
def P8585890384598025192.Spec : Prop :=
  ∀ n, (P8585890384598025192.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P10325009041508853856

`lt[1-a(and(n, n-1)), 1]+2` with `a(0)=0, a(1)=1`
-/

namespace A140592.P10325009041508853856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A140592.P10325009041508853856

namespace A140592

/-- `lt[1-a(and(n, n-1)), 1]+2` -/
def P10325009041508853856.Spec : Prop :=
  ∀ n, (P10325009041508853856.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P10993769327337760633

`char[xor(n, 2*n+1)]+n+2+n`
-/

namespace A140592.P10993769327337760633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n + 2 + n

end

end A140592.P10993769327337760633

namespace A140592

/-- `char[xor(n, 2*n+1)]+n+2+n` -/
def P10993769327337760633.Spec : Prop :=
  ∀ n, (P10993769327337760633.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P10424663437884750355

`gcd(2, a(and(n, n-1)))+2*n+1` with `a(0)=2`
-/

namespace A140592.P10424663437884750355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + (2 * n + 1)

end

end A140592.P10424663437884750355

namespace A140592

/-- `gcd(2, a(and(n, n-1)))+2*n+1` -/
def P10424663437884750355.Spec : Prop :=
  ∀ n, (P10424663437884750355.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P8419758317557411885

`∑[A317189(n)+1]`
-/

namespace A140592.P8419758317557411885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317189 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140592.P8419758317557411885

namespace A140592

/-- `∑[A317189(n)+1]` -/
def P8419758317557411885.Spec : Prop :=
  ∀ n, P8419758317557411885.a n = A140592 (n + 1)

end A140592

/-! ## A140592.P5296154943417253815

`A026147(n+1)+1`
-/

namespace A140592.P5296154943417253815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1) + 1

end

end A140592.P5296154943417253815

namespace A140592

/-- `A026147(n+1)+1` -/
def P5296154943417253815.Spec : Prop :=
  ∀ n, P5296154943417253815.a n = A140592 (n + 1)

end A140592

/-! ## A140592.P8117391596858923162

`lt[A065620(n), 1]+2`
-/

namespace A140592.P8117391596858923162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A140592.P8117391596858923162

namespace A140592

/-- `lt[A065620(n), 1]+2` -/
def P8117391596858923162.Spec : Prop :=
  ∀ n, (P8117391596858923162.a n : ℤ) = A140592 (n + 1)

end A140592

/-! ## A140592.P10680913624218333383

`A285951(n+1)-n`
-/

namespace A140592.P10680913624218333383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1) - (n : ℤ)

end

end A140592.P10680913624218333383

namespace A140592

/-- `A285951(n+1)-n` -/
def P10680913624218333383.Spec : Prop :=
  ∀ n, P10680913624218333383.a n = A140592 (n + 1)

end A140592

/-! ## A140592.P13695946346583228669

`A001285(n)+Δ[n²]`
-/

namespace A140592.P13695946346583228669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A140592.P13695946346583228669

namespace A140592

/-- `A001285(n)+Δ[n²]` -/
def P13695946346583228669.Spec : Prop :=
  ∀ n, P13695946346583228669.a n = A140592 (n + 1)

end A140592

/-! ## A140592.P5863653810203327404

`Δ[A026430(n)+n²]`
-/

namespace A140592.P5863653810203327404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140592.P5863653810203327404

namespace A140592

/-- `Δ[A026430(n)+n²]` -/
def P5863653810203327404.Spec : Prop :=
  ∀ n, P5863653810203327404.a n = A140592 (n + 1)

end A140592

/-! ## A140592.P6924928332403568910

`∑[A316826(n)+1]-2`
-/

namespace A140592.P6924928332403568910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A140592.P6924928332403568910

namespace A140592

/-- `∑[A316826(n)+1]-2` -/
def P6924928332403568910.Spec : Prop :=
  ∀ n, P6924928332403568910.a n = A140592 (n + 1)

end A140592

/-!
# A140593: Primes congruent to 37 or 173 mod 210.

The programs for A140593, the canonical program `A140593.P10671109267607141112` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140593 has offset 1).

The definition of A140593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140593.P10671109267607141112

`p?[A053741(n)+A017581(A032793(n+1))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140593

/-- `p?[A053741(n)+A017581(A032793(n+1))]` -/
def P10671109267607141112.Spec : Prop :=
  ∀ n, P10671109267607141112.a n = A140593 (n + 1)

theorem P10671109267607141112.correct : P10671109267607141112.Spec := by
  intro n
  simp only [A140593, Nat.add_sub_cancel]

end A140593

/-! ## A140593.P14641745565130066968

`p?[35*n-A130772(n+2)]`
-/

namespace A140593.P14641745565130066968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - A130772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140593.P14641745565130066968

namespace A140593

/-- `p?[35*n-A130772(n+2)]` -/
def P14641745565130066968.Spec : Prop :=
  ∀ n, P14641745565130066968.a n = A140593 (n + 1)

end A140593

/-! ## A140593.P15359222919887823562

`p?[A158060(n+1)+A128464(n+1)]`
-/

namespace A140593.P15359222919887823562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A128464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140593.P15359222919887823562

namespace A140593

/-- `p?[A158060(n+1)+A128464(n+1)]` -/
def P15359222919887823562.Spec : Prop :=
  ∀ n, P15359222919887823562.a n = A140593 (n + 1)

end A140593

/-! ## A140593.P15277250961921024266

`p?[A158065(n+1)-A330396(n+2)]`
-/

namespace A140593.P15277250961921024266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1) - A330396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140593.P15277250961921024266

namespace A140593

/-- `p?[A158065(n+1)-A330396(n+2)]` -/
def P15277250961921024266.Spec : Prop :=
  ∀ n, P15277250961921024266.a n = A140593 (n + 1)

end A140593

/-! ## A140593.P4112293121047850024

`p?[A008458(A008576(n))+19*n]`
-/

namespace A140593.P4112293121047850024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008576 n).toNat + (19 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140593.P4112293121047850024

namespace A140593

/-- `p?[A008458(A008576(n))+19*n]` -/
def P4112293121047850024.Spec : Prop :=
  ∀ n, P4112293121047850024.a n = A140593 (n + 1)

end A140593

/-! ## A140593.P8291393350109976790

`p?[A008364(A159754(n+1)-n)]`
-/

namespace A140593.P8291393350109976790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (A159754 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140593.P8291393350109976790

namespace A140593

/-- `p?[A008364(A159754(n+1)-n)]` -/
def P8291393350109976790.Spec : Prop :=
  ∀ n, P8291393350109976790.a n = A140593 (n + 1)

end A140593

/-! ## A140593.P1231116982288881978

`p?[A007775(9*A007310(n+1)+n+1)]`
-/

namespace A140593.P1231116982288881978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (9 * A007310 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140593.P1231116982288881978

namespace A140593

/-- `p?[A007775(9*A007310(n+1)+n+1)]` -/
def P1231116982288881978.Spec : Prop :=
  ∀ n, P1231116982288881978.a n = A140593 (n + 1)

end A140593

/-! ## A140593.P10795820594516261606

`∩[A132237(n+1), A313875(n)]`
-/

namespace A140593.P10795820594516261606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140593.P10795820594516261606

namespace A140593

/-- `∩[A132237(n+1), A313875(n)]` -/
def P10795820594516261606.Spec : Prop :=
  ∀ n, (P10795820594516261606.a n : ℤ) = A140593 (n + 1)

end A140593

/-! ## A140593.P13783245044846203758

`∩[A132237(n+1), A313793(n)]`
-/

namespace A140593.P13783245044846203758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140593.P13783245044846203758

namespace A140593

/-- `∩[A132237(n+1), A313793(n)]` -/
def P13783245044846203758.Spec : Prop :=
  ∀ n, (P13783245044846203758.a n : ℤ) = A140593 (n + 1)

end A140593

/-! ## A140593.P10484806092942050067

`∩[A132237(n+1), A314848(n)]`
-/

namespace A140593.P10484806092942050067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140593.P10484806092942050067

namespace A140593

/-- `∩[A132237(n+1), A314848(n)]` -/
def P10484806092942050067.Spec : Prop :=
  ∀ n, (P10484806092942050067.a n : ℤ) = A140593 (n + 1)

end A140593

/-!
# A140594: Positions of e-perfect numbers in the EKG sequence.

The programs for A140594, there is no canonical definition to state claims against.
-/

/-! ## A140594.P1102998202829351180

`A064664(A054979(n+1))`
-/

namespace A140594.P1102998202829351180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A054979 (n + 1)).toNat

end

end A140594.P1102998202829351180

/-! ## A140594.P16695072018892258713

`A064664(A335219(n+1))`
-/

namespace A140594.P16695072018892258713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A335219 (n + 1)).toNat

end

end A140594.P16695072018892258713

/-! ## A140594.P8329893971121566556

`A064664(36*A219016(n+1))`
-/

namespace A140594.P8329893971121566556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (36 * A219016 (n + 1)).toNat

end

end A140594.P8329893971121566556

/-! ## A140594.P8772995677078615028

`∑{d}[A054979(n+1), A304526(#)]`
-/

namespace A140594.P8772995677078615028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A140594.P8772995677078615028

/-! ## A140594.P6806291521114001565

`∑{d}[A335219(n+1), A304526(#)]`
-/

namespace A140594.P6806291521114001565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A140594.P6806291521114001565

/-!
# A140595: A140485 read by columns.

The programs for A140595, there is no canonical definition to state claims against.
-/

/-! ## A140595.P10109776497301207281

`A187098(n+1)-A101637(A046630(n))`
-/

namespace A140595.P10109776497301207281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187098 (n + 1) - A101637 (A046630 n).toNat

end

end A140595.P10109776497301207281

/-! ## A140595.P13543370869720917683

`A187098(n+1)-A010060(A184955(n))`
-/

namespace A140595.P13543370869720917683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187098 (n + 1) - A010060 (A184955 n).toNat

end

end A140595.P13543370869720917683

/-! ## A140595.P11515002472127096161

`A187098(n+1)-A185284(A053602(n))`
-/

namespace A140595.P11515002472127096161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187098 (n + 1) - A185284 (A053602 n).toNat

end

end A140595.P11515002472127096161

/-! ## A140595.P15692747434554253271

`A187098(n+1)-A185284(A102363(n))`
-/

namespace A140595.P15692747434554253271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187098 (n + 1) - A185284 (A102363 n).toNat

end

end A140595.P15692747434554253271

/-! ## A140595.P2966258328884716447

`A187098(n+1)-A353495(A063834(n))`
-/

namespace A140595.P2966258328884716447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187098 (n + 1) - A353495 (A063834 n).toNat

end

end A140595.P2966258328884716447

/-!
# A140596: Squares nearest to and < terms in A098562.

The programs for A140596, there is no canonical definition to state claims against.
-/

/-! ## A140596.P9978942290790076961

`floor(sqrt(A098562(n+1)))²`
-/

namespace A140596.P9978942290790076961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A098562 (n + 1)) ^ 2

end

end A140596.P9978942290790076961

/-! ## A140596.P14412832609787465571

`(1-sqrt(A140597(n+1)))²`
-/

namespace A140596.P14412832609787465571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.sqrt (A140597 (n + 1) : ℝ)) ^ 2

end

end A140596.P14412832609787465571

/-! ## A140596.P10978702510296020054

`ceil(sqrt(A098562(n+1))-A280865(n))²`
-/

namespace A140596.P10978702510296020054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A098562 (n + 1) : ℝ) - (A280865 n : ℝ)⌉ ^ 2

end

end A140596.P10978702510296020054

/-! ## A140596.P6807024726540315171

`floor(sqrt(A098562(n+1)))^A010693(2*n)`
-/

namespace A140596.P6807024726540315171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A098562 (n + 1)) : ℚ) ^ (A010693 (2 * n) : ℤ)

end

end A140596.P6807024726540315171

/-! ## A140596.P8917093012602129071

`(ceil(sqrt(A098562(n+1)))-A263919(n²))²`
-/

namespace A140596.P8917093012602129071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A098562 (n + 1) : ℝ)⌉ - A263919 (n ^ 2)) ^ 2

end

end A140596.P8917093012602129071

/-!
# A140597: Squares nearest to and > terms in A098562.

The programs for A140597, there is no canonical definition to state claims against.
-/

/-! ## A140597.P1080917894328313813

`ceil(sqrt(A098562(n+1)))²`
-/

namespace A140597.P1080917894328313813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A098562 (n + 1) : ℝ)⌉ ^ 2

end

end A140597.P1080917894328313813

/-! ## A140597.P4863340093630781214

`(sqrt(A140596(n+1))+1)²`
-/

namespace A140597.P4863340093630781214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A140596 (n + 1) : ℝ) + 1) ^ 2

end

end A140597.P4863340093630781214

/-! ## A140597.P18077871981162582079

`(floor(sqrt(A098562(n+1)))+A165326(n)²)²`
-/

namespace A140597.P18077871981162582079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A098562 (n + 1)) + A165326 n ^ 2) ^ 2

end

end A140597.P18077871981162582079

/-! ## A140597.P6205736517359895646

`ceil(sqrt(A098562(n+1)))^A020639(2*(n+1))`
-/

namespace A140597.P6205736517359895646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A098562 (n + 1) : ℝ)⌉ : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A140597.P6205736517359895646

/-! ## A140597.P14625531499107833118

`ceil(sqrt(A098562(n+1)))^A000034(2*n+3)`
-/

namespace A140597.P14625531499107833118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A098562 (n + 1) : ℝ)⌉ : ℚ) ^ (A000034 (2 * n + 3) : ℤ)

end

end A140597.P14625531499107833118

/-!
# A140599: Grand total of prime factors in composite runs between two primes: first composite.

The programs for A140599, there is no canonical definition to state claims against.
-/

/-! ## A140599.P11087754320398087316

`∩[A062391(n+1)+1, A172284(A172284(n+1))]`
-/

namespace A140599.P11087754320398087316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062391 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172284 (A172284 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140599.P11087754320398087316

