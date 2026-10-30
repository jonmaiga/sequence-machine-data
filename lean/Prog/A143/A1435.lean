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
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
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
# A143500: G.f. A(x) satisfies A(x) = 1 + x*A(x*A(x)^2).

The programs for A143500, there is no canonical definition to state claims against.
-/

/-! ## A143500.P11881036447811431284

`A384580(∑[n+1]+n)`
-/

namespace A143500.P11881036447811431284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A143500.P11881036447811431284

/-! ## A143500.P797092026988379719

`A384580(A034856(n+1))/A291149(n)`
-/

namespace A143500.P797092026988379719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384580 (A034856 (n + 1)).toNat : ℚ) / (A291149 n : ℚ)

end

end A143500.P797092026988379719

/-! ## A143500.P9805353504802098676

`A384580(A034856(n+1))+A000007(n+3)`
-/

namespace A143500.P9805353504802098676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (A034856 (n + 1)).toNat + A000007 (n + 3)

end

end A143500.P9805353504802098676

/-! ## A143500.P4820101279083252144

`A384580(A347633(3*n+1))%A281395(2*n+3)`
-/

namespace A143500.P4820101279083252144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384580 (A347633 (3 * n + 1)).toNat) (A281395 (2 * n + 3))

end

end A143500.P4820101279083252144

/-! ## A143500.P14904649214147220461

`A384580(A347633(3*n+1))+A281400(A333157(n))`
-/

namespace A143500.P14904649214147220461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (A347633 (3 * n + 1)).toNat + A281400 (A333157 n).toNat

end

end A143500.P14904649214147220461

/-!
# A143501: G.f. A(x) satisfies A(x) = 1 + x*A(x*A(x)^3).

The programs for A143501, there is no canonical definition to state claims against.
-/

/-! ## A143501.P18103367422046920777

`A384581(∑[n+1]+n)`
-/

namespace A143501.P18103367422046920777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384581 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A143501.P18103367422046920777

/-! ## A143501.P9609995920757380144

`A093886(A003056(n!))`
-/

namespace A143501.P9609995920757380144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093886 (A003056 (Nat.factorial n)).toNat

end

end A143501.P9609995920757380144

/-! ## A143501.P1371224515742042455

`A311143(A165052(n!))`
-/

namespace A143501.P1371224515742042455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311143 (A165052 (Nat.factorial n)).toNat

end

end A143501.P1371224515742042455

/-!
# A143502: n occurs d(n-1) times.

The programs for A143502, the canonical program `A143502.P12154908491860464719` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143502 has offset 1).

The definition of A143502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143502.P12154908491860464719

`∑[char[∑[∑{d}[n, ceil(acot(#))]]]]+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143502

/-- `∑[char[∑[∑{d}[n, ceil(acot(#))]]]]+1` -/
def P12154908491860464719.Spec : Prop :=
  ∀ n, (P12154908491860464719.a n : ℤ) = A143502 (n + 1)

theorem P12154908491860464719.correct : P12154908491860464719.Spec := by
  intro n
  simp only [A143502, Nat.add_sub_cancel]

end A143502

/-! ## A143502.P16571168528810197908

`∑[char[∑[∑{d}[n, ceil(1/#)]]]]+1`
-/

namespace A143502.P16571168528810197908
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), ⌈1 / (d : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143502.P16571168528810197908

namespace A143502

/-- `∑[char[∑[∑{d}[n, ceil(1/#)]]]]+1` -/
def P16571168528810197908.Spec : Prop :=
  ∀ n, (P16571168528810197908.a n : ℤ) = A143502 (n + 1)

end A143502

/-! ## A143502.P6985763639042388134

`∑[char[∑[∏{e}[n+1, #+1]]]]+2`
-/

namespace A143502.P6985763639042388134
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A143502.P6985763639042388134

namespace A143502

/-- `∑[char[∑[∏{e}[n+1, #+1]]]]+2` -/
def P6985763639042388134.Spec : Prop :=
  ∀ n, (P6985763639042388134.a n : ℤ) = A143502 (n + 1)

end A143502

/-! ## A143502.P7250895635253470479

`comp[∑[∑{d}[n, ceil(2/#)]]]-n+1`
-/

namespace A143502.P7250895635253470479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈2 / (d : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A143502.P7250895635253470479

namespace A143502

/-- `comp[∑[∑{d}[n, ceil(2/#)]]]-n+1` -/
def P7250895635253470479.Spec : Prop :=
  ∀ n, P7250895635253470479.a n = A143502 (n + 1)

end A143502

/-! ## A143502.P3259270352305249045

`∑[char[∑[∑{d}[n, (n+1)%#]]+n]]+1`
-/

namespace A143502.P3259270352305249045
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), (n + 1) % d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143502.P3259270352305249045

namespace A143502

/-- `∑[char[∑[∑{d}[n, (n+1)%#]]+n]]+1` -/
def P3259270352305249045.Spec : Prop :=
  ∀ n, (P3259270352305249045.a n : ℤ) = A143502 (n + 1)

end A143502

/-! ## A143502.P5432854710409003715

`comp[∑[∏{e}[n+1, #+1]]+n]-n+2`
-/

namespace A143502.P5432854710409003715
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 2

end

end A143502.P5432854710409003715

namespace A143502

/-- `comp[∑[∏{e}[n+1, #+1]]+n]-n+2` -/
def P5432854710409003715.Spec : Prop :=
  ∀ n, P5432854710409003715.a n = A143502 (n + 1)

end A143502

/-! ## A143502.P15699332408757141556

`comp[∑[∑{d}[n+1, n²%#]+1]+n]-(n-2)`
-/

namespace A143502.P15699332408757141556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), n ^ 2 % d + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - 2)

end

end A143502.P15699332408757141556

namespace A143502

/-- `comp[∑[∑{d}[n+1, n²%#]+1]+n]-(n-2)` -/
def P15699332408757141556.Spec : Prop :=
  ∀ n, P15699332408757141556.a n = A143502 (n + 1)

end A143502

/-! ## A143502.P5221350921239954355

`comp[∑[∏{p}[n+1, val(n+1, #)+1]]+n]-(n-2)`
-/

namespace A143502.P5221350921239954355
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (SequenceMachineLib.valuation (n + 1) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - 2)

end

end A143502.P5221350921239954355

namespace A143502

/-- `comp[∑[∏{p}[n+1, val(n+1, #)+1]]+n]-(n-2)` -/
def P5221350921239954355.Spec : Prop :=
  ∀ n, P5221350921239954355.a n = A143502 (n + 1)

end A143502

/-! ## A143502.P6954153784040618476

`A061017(n+1)+1`
-/

namespace A143502.P6954153784040618476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) + 1

end

end A143502.P6954153784040618476

namespace A143502

/-- `A061017(n+1)+1` -/
def P6954153784040618476.Spec : Prop :=
  ∀ n, P6954153784040618476.a n = A143502 (n + 1)

theorem P6954153784040618476.correct : P6954153784040618476.Spec := by
  intro n
  simp only [A143502, Nat.add_sub_cancel, A143502.P6954153784040618476.a, A143502.P12154908491860464719.f4, A143502.P12154908491860464719.f3, A143502.P12154908491860464719.f2, A143502.P12154908491860464719.f1, A143502.P12154908491860464719.a, A061017, A061017.P3381662168248992728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143502

/-! ## A143502.P882599813946154535

`∑[char[A006218(n)]]+1`
-/

namespace A143502.P882599813946154535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143502.P882599813946154535

namespace A143502

/-- `∑[char[A006218(n)]]+1` -/
def P882599813946154535.Spec : Prop :=
  ∀ n, (P882599813946154535.a n : ℤ) = A143502 (n + 1)

end A143502

/-! ## A143502.P13890050390426176974

`∑[char[A362059(n+1)]]+1`
-/

namespace A143502.P13890050390426176974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143502.P13890050390426176974

namespace A143502

/-- `∑[char[A362059(n+1)]]+1` -/
def P13890050390426176974.Spec : Prop :=
  ∀ n, (P13890050390426176974.a n : ℤ) = A143502 (n + 1)

end A143502

/-! ## A143502.P16254001673366645659

`A020725(A061017(n+1))`
-/

namespace A143502.P16254001673366645659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A061017 (n + 1)).toNat

end

end A143502.P16254001673366645659

namespace A143502

/-- `A020725(A061017(n+1))` -/
def P16254001673366645659.Spec : Prop :=
  ∀ n, P16254001673366645659.a n = A143502 (n + 1)

end A143502

/-! ## A143502.P11573658043226446951

`∑[A063524(A027750(n+1))]+1`
-/

namespace A143502.P11573658043226446951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143502.P11573658043226446951

namespace A143502

/-- `∑[A063524(A027750(n+1))]+1` -/
def P11573658043226446951.Spec : Prop :=
  ∀ n, P11573658043226446951.a n = A143502 (n + 1)

end A143502

/-! ## A143502.P14638777830122893677

`A036234(n+1)+A088526(n+1)+1`
-/

namespace A143502.P14638777830122893677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + (A088526 (n + 1) + 1)

end

end A143502.P14638777830122893677

namespace A143502

/-- `A036234(n+1)+A088526(n+1)+1` -/
def P14638777830122893677.Spec : Prop :=
  ∀ n, P14638777830122893677.a n = A143502 (n + 1)

theorem P14638777830122893677.correct : P14638777830122893677.Spec := by
  intro n
  simp only [A143502, Nat.add_sub_cancel, A143502.P14638777830122893677.a, A143502.P12154908491860464719.f4, A143502.P12154908491860464719.f3, A143502.P12154908491860464719.f2, A143502.P12154908491860464719.f1, A143502.P12154908491860464719.a, A036234, A036234.P2906282677021386800.a, A088526, A088526.P8703883917156406737.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A061017, A061017.P3381662168248992728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143502

/-! ## A143502.P6970616200993089974

`A027750(n+1)*A056538(n+1)+1`
-/

namespace A143502.P6970616200993089974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A056538 (n + 1) + 1

end

end A143502.P6970616200993089974

namespace A143502

/-- `A027750(n+1)*A056538(n+1)+1` -/
def P6970616200993089974.Spec : Prop :=
  ∀ n, P6970616200993089974.a n = A143502 (n + 1)

end A143502

/-! ## A143502.P62479581850580269

`Δ[A397890(n)]+1`
-/

namespace A143502.P62479581850580269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A143502.P62479581850580269

namespace A143502

/-- `Δ[A397890(n)]+1` -/
def P62479581850580269.Spec : Prop :=
  ∀ n, P62479581850580269.a n = A143502 (n + 1)

end A143502

/-! ## A143502.P21735889413523979

`∑[char[∑{#}[n-1, floor(n/(#+1))]]]+1`
-/

namespace A143502.P21735889413523979
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f3 n + 1).toNat, ⌊(n : ℚ) / (k + 1 : ℚ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143502.P21735889413523979

namespace A143502

/-- `∑[char[∑{#}[n-1, floor(n/(#+1))]]]+1` -/
def P21735889413523979.Spec : Prop :=
  ∀ n, (P21735889413523979.a n : ℤ) = A143502 (n + 1)

end A143502

/-! ## A143502.P12458239595661278271

`A003991(A374817(n+1))+1`
-/

namespace A143502.P12458239595661278271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A374817 (n + 1)).toNat + 1

end

end A143502.P12458239595661278271

namespace A143502

/-- `A003991(A374817(n+1))+1` -/
def P12458239595661278271.Spec : Prop :=
  ∀ n, P12458239595661278271.a n = A143502 (n + 1)

end A143502

/-!
# A143503: Numerators in the asymptotic expansion of Gamma(x+1/2)/Gamma(x).

The programs for A143503, there is no canonical definition to state claims against.
-/

/-! ## A143503.P3006666183011032329

`A370414(∑[4*n])`
-/

namespace A143503.P3006666183011032329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143503.P3006666183011032329

/-! ## A143503.P6699058613850149219

`or(1, A370414(A046092(n)))`
-/

namespace A143503.P6699058613850149219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A370414 (A046092 n).toNat)

end

end A143503.P6699058613850149219

/-!
# A143504: Numbers k such that k > first location of string of k in decimal expansion of e.

The programs for A143504, there is no canonical definition to state claims against.
-/

/-! ## A143504.P5498542711792772415

`lt[A078197(n), n]`
-/

namespace A143504.P5498542711792772415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078197 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A143504.P5498542711792772415

/-!
# A143508: G.f. A(x) satisfies A(x) = 1 + x*A(x*A(x)^2)^2.

The programs for A143508, there is no canonical definition to state claims against.
-/

/-! ## A143508.P1641732777576540729

`A195177(A007047(n))`
-/

namespace A143508.P1641732777576540729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A007047 n).toNat

end

end A143508.P1641732777576540729

/-! ## A143508.P16637279792636676853

`A248227(A337562(n²))`
-/

namespace A143508.P16637279792636676853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A337562 (n ^ 2)).toNat

end

end A143508.P16637279792636676853

/-!
# A143509: First of a pair of twin primes of the form n^2+x with x<2*n, or 0 if no such prime exist.

The programs for A143509, there is no canonical definition to state claims against.
-/

/-! ## A143509.P16878159093772102696

`A111166(n+1)%p?[A214858(n+1)]`
-/

namespace A143509.P16878159093772102696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111166 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A143509.P16878159093772102696

/-! ## A143509.P5327034126934204585

`A111166(n+1)%A171797(A171816(n))`
-/

namespace A143509.P5327034126934204585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111166 (n + 1)) (A171797 (A171816 n).toNat)

end

end A143509.P5327034126934204585

/-! ## A143509.P872417629095458206

`lcm(A008683(A087432(n)), A111166(n+1))`
-/

namespace A143509.P872417629095458206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A087432 n).toNat) (A111166 (n + 1))

end

end A143509.P872417629095458206

/-! ## A143509.P7896487398742499141

`A111166(n+1)*A324732(A344142(n+1))`
-/

namespace A143509.P7896487398742499141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) * A324732 (A344142 (n + 1)).toNat

end

end A143509.P7896487398742499141

/-! ## A143509.P5343623525516350135

`A111166(n+1)^A138740(A331287(n+1))`
-/

namespace A143509.P5343623525516350135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111166 (n + 1) : ℚ) ^ (A138740 (A331287 (n + 1)).toNat : ℤ)

end

end A143509.P5343623525516350135

/-!
# A143510: Numbers m such that the equation phi(x) = m has even but no odd solutions.

The programs for A143510, there is no canonical definition to state claims against.
-/

/-! ## A143510.P14306244448689060885

`A070815(A096924(n+1)-1)`
-/

namespace A143510.P14306244448689060885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070815 (A096924 (n + 1) - 1).toNat

end

end A143510.P14306244448689060885

/-!
# A143512: Numbers of the form 3^a * 5^b * 17^c * 257^d * 65537^e; products of Fermat primes.

The programs for A143512, there is no canonical definition to state claims against.
-/

/-! ## A143512.P12576071121326407231

`A339345(n+1)%A252178(A064402(n+1))`
-/

namespace A143512.P12576071121326407231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339345 (n + 1)) (A252178 (A064402 (n + 1)).toNat)

end

end A143512.P12576071121326407231

/-! ## A143512.P2639407636567616139

`A339345(n+1)+A000007(A061430(3*n+4))`
-/

namespace A143512.P2639407636567616139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339345 (n + 1) + A000007 (A061430 (3 * n + 4)).toNat

end

end A143512.P2639407636567616139

/-! ## A143512.P9208774639107041153

`A114536(A141345(n+1))*A339345(n+1)`
-/

namespace A143512.P9208774639107041153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114536 (A141345 (n + 1)).toNat * A339345 (n + 1)

end

end A143512.P9208774639107041153

/-! ## A143512.P18178766411645078778

`A174688(n+1)/A324384(A054804(n+1))`
-/

namespace A143512.P18178766411645078778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174688 (n + 1) : ℚ) / (A324384 (A054804 (n + 1)).toNat : ℚ)

end

end A143512.P18178766411645078778

/-! ## A143512.P5065943596813491489

`A339345(n+1)/A324384(A054804(n+1))`
-/

namespace A143512.P5065943596813491489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339345 (n + 1) : ℚ) / (A324384 (A054804 (n + 1)).toNat : ℚ)

end

end A143512.P5065943596813491489

/-! ## A143512.P8749394293044821076

`A339345(n+1)+A000007(A331728(3*n+2))`
-/

namespace A143512.P8749394293044821076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339345 (n + 1) + A000007 (A331728 (3 * n + 2)).toNat

end

end A143512.P8749394293044821076

/-! ## A143512.P13968626160463843141

`A084115(A156328(n+1))*A339345(n+1)`
-/

namespace A143512.P13968626160463843141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084115 (A156328 (n + 1)).toNat * A339345 (n + 1)

end

end A143512.P13968626160463843141

/-! ## A143512.P12460783171275117573

`A339345(n+1)+A000007(A004758(3*n+4))`
-/

namespace A143512.P12460783171275117573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339345 (n + 1) + A000007 (A004758 (3 * n + 4)).toNat

end

end A143512.P12460783171275117573

/-! ## A143512.P914366626307139418

`A339345(n+1)+A000007(A166605(2*n+3))`
-/

namespace A143512.P914366626307139418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339345 (n + 1) + A000007 (A166605 (2 * n + 3)).toNat

end

end A143512.P914366626307139418

/-! ## A143512.P16442385858988234455

`∩[A143513(n+1), A342572(n+1)]`
-/

namespace A143512.P16442385858988234455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143512.P16442385858988234455

/-! ## A143512.P5137646395487451720

`and(A174688(n+1), A375155(n+1))`
-/

namespace A143512.P5137646395487451720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174688 (n + 1)) (A375155 (n + 1))

end

end A143512.P5137646395487451720

/-! ## A143512.P7777943916272597627

`and(A339345(n+1), A375155(n+1))`
-/

namespace A143512.P7777943916272597627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A339345 (n + 1)) (A375155 (n + 1))

end

end A143512.P7777943916272597627

/-! ## A143512.P11041187795371619780

`A174688(n+1)%A004733(n)`
-/

namespace A143512.P11041187795371619780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174688 (n + 1)) (A004733 n)

end

end A143512.P11041187795371619780

/-! ## A143512.P12460948218915067613

`A339345(n+1)%A004733(n)`
-/

namespace A143512.P12460948218915067613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339345 (n + 1)) (A004733 n)

end

end A143512.P12460948218915067613

/-! ## A143512.P8819604758191271741

`A174688(and(1, A003261(n+1))+n)`
-/

namespace A143512.P8819604758191271741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174688 (Int.land 1 (A003261 (n + 1)) + (n : ℤ)).toNat

end

end A143512.P8819604758191271741

/-! ## A143512.P3009963309750606095

`A174688(and(1, A163383(n+1))+n)`
-/

namespace A143512.P3009963309750606095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174688 (Int.land 1 (A163383 (n + 1)) + (n : ℤ)).toNat

end

end A143512.P3009963309750606095

/-! ## A143512.P9637052562339287184

`A339345(and(1, A003261(n+1))+n)`
-/

namespace A143512.P9637052562339287184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339345 (Int.land 1 (A003261 (n + 1)) + (n : ℤ)).toNat

end

end A143512.P9637052562339287184

/-! ## A143512.P4734662436653727404

`A339345(and(1, A163383(n+1))+n)`
-/

namespace A143512.P4734662436653727404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339345 (Int.land 1 (A163383 (n + 1)) + (n : ℤ)).toNat

end

end A143512.P4734662436653727404

/-! ## A143512.P14763575799191882200

`A174688(and(1, A055580(n))+n)`
-/

namespace A143512.P14763575799191882200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174688 (Int.land 1 (A055580 n) + (n : ℤ)).toNat

end

end A143512.P14763575799191882200

/-! ## A143512.P8840566220289015170

`A174688(and(1, A107392(n))+n)`
-/

namespace A143512.P8840566220289015170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174688 (Int.land 1 (A107392 n) + (n : ℤ)).toNat

end

end A143512.P8840566220289015170

/-!
# A143513: Numbers of the form 2^a * 3^b * 5^c * 17^d * 257^e * 65537^f; products of 2 and the Fermat primes.

The programs for A143513, the canonical program `A143513.P17585744667518437941` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143513 has offset 1).

The definition of A143513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 612 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143513.P17585744667518437941

`record[(n+1)/A003958(A003958(n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143513

/-- `record[(n+1)/A003958(A003958(n+1))]` -/
def P17585744667518437941.Spec : Prop :=
  ∀ n, P17585744667518437941.a n = (A143513 (n + 1) : ℚ)

end A143513

/-! ## A143513.P8875335061156188985

`record[gcd(n+1, A336396(n+1))]`
-/

namespace A143513.P8875335061156188985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A336396 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143513.P8875335061156188985

namespace A143513

/-- `record[gcd(n+1, A336396(n+1))]` -/
def P8875335061156188985.Spec : Prop :=
  ∀ n, (P8875335061156188985.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P5367893283482477724

`eq[1, A003958(A003958(n+1))]+1`
-/

namespace A143513.P5367893283482477724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003958 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143513.P5367893283482477724

namespace A143513

/-- `eq[1, A003958(A003958(n+1))]+1` -/
def P5367893283482477724.Spec : Prop :=
  ∀ n, (P5367893283482477724.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P8734864330422084217

`eq[1, A126864(A173557(n+1))]+1`
-/

namespace A143513.P8734864330422084217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (A173557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143513.P8734864330422084217

namespace A143513

/-- `eq[1, A126864(A173557(n+1))]+1` -/
def P8734864330422084217.Spec : Prop :=
  ∀ n, (P8734864330422084217.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P16528999868401125816

`∩[A122260(n+1), A230780(n+1)]`
-/

namespace A143513.P16528999868401125816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143513.P16528999868401125816

namespace A143513

/-- `∩[A122260(n+1), A230780(n+1)]` -/
def P16528999868401125816.Spec : Prop :=
  ∀ n, (P16528999868401125816.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P13054341612827874641

`eq[1, A336466(n+1)]+1`
-/

namespace A143513.P13054341612827874641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143513.P13054341612827874641

namespace A143513

/-- `eq[1, A336466(n+1)]+1` -/
def P13054341612827874641.Spec : Prop :=
  ∀ n, (P13054341612827874641.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P2451339416661826950

`record[(n+1)*A000120(C(2, A336466(n+1)))]`
-/

namespace A143513.P2451339416661826950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000120 (Nat.choose 2 (A336466 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143513.P2451339416661826950

namespace A143513

/-- `record[(n+1)*A000120(C(2, A336466(n+1)))]` -/
def P2451339416661826950.Spec : Prop :=
  ∀ n, P2451339416661826950.a n = A143513 (n + 1)

end A143513

/-! ## A143513.P4346308284815733634

`eq[A333787(n+1), A333787(A333787(n+1))]+1`
-/

namespace A143513.P4346308284815733634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (A333787 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143513.P4346308284815733634

namespace A143513

/-- `eq[A333787(n+1), A333787(A333787(n+1))]+1` -/
def P4346308284815733634.Spec : Prop :=
  ∀ n, (P4346308284815733634.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P863157722096497046

`filter[A230780(n+1), A122261(#)]`
-/

namespace A143513.P863157722096497046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A143513.P863157722096497046

namespace A143513

/-- `filter[A230780(n+1), A122261(#)]` -/
def P863157722096497046.Spec : Prop :=
  ∀ n, P863157722096497046.a n = A143513 (n + 1)

end A143513

/-! ## A143513.P4345412913531823831

`lt[A001221(A000010(∏{p}[n+1, #])), 2]+1`
-/

namespace A143513.P4345412913531823831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A143513.P4345412913531823831

namespace A143513

/-- `lt[A001221(A000010(∏{p}[n+1, #])), 2]+1` -/
def P4345412913531823831.Spec : Prop :=
  ∀ n, (P4345412913531823831.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P7206133610367888247

`lt[A001222(∏{p}[A003958(n+1), #]), 2]+1`
-/

namespace A143513.P7206133610367888247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A143513.P7206133610367888247

namespace A143513

/-- `lt[A001222(∏{p}[A003958(n+1), #]), 2]+1` -/
def P7206133610367888247.Spec : Prop :=
  ∀ n, (P7206133610367888247.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P14176502720385405446

`lt[A006530(∏{p}[n+1, A000010(#)]), 3]+1`
-/

namespace A143513.P14176502720385405446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f2 n), A000010 p).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A143513.P14176502720385405446

namespace A143513

/-- `lt[A006530(∏{p}[n+1, A000010(#)]), 3]+1` -/
def P14176502720385405446.Spec : Prop :=
  ∀ n, (P14176502720385405446.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P9638816134517585931

`lt[A006530(∏{p}[n+1, A061397(#)-1]), 3]+1`
-/

namespace A143513.P9638816134517585931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f2 n), (A061397 p - 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A143513.P9638816134517585931

namespace A143513

/-- `lt[A006530(∏{p}[n+1, A061397(#)-1]), 3]+1` -/
def P9638816134517585931.Spec : Prop :=
  ∀ n, (P9638816134517585931.a n : ℤ) = A143513 (n + 1)

end A143513

/-! ## A143513.P17683834810432580405

`eq[2, A051664(∏{p}[n+1, #-1])]+1`
-/

namespace A143513.P17683834810432580405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143513.P17683834810432580405

namespace A143513

/-- `eq[2, A051664(∏{p}[n+1, #-1])]+1` -/
def P17683834810432580405.Spec : Prop :=
  ∀ n, (P17683834810432580405.a n : ℤ) = A143513 (n + 1)

end A143513

/-!
# A143517: Triangle read by rows, A054525 * (A061397 * 0^(n-k)), 1<=k<=n.

The programs for A143517, the canonical program `A143517.P992737143855787768` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143517 has offset 1).

The definition of A143517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143517.P6714954315919580591

`A134199(n)*A143518(n+1)`
-/

namespace A143517.P6714954315919580591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n * A143518 (n + 1)

end

end A143517.P6714954315919580591

namespace A143517

/-- `A134199(n)*A143518(n+1)` -/
def P6714954315919580591.Spec : Prop :=
  ∀ n, P6714954315919580591.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P6155729830715712632

`A002260(n+1)*A143518(n+1)`
-/

namespace A143517.P6155729830715712632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A143518 (n + 1)

end

end A143517.P6155729830715712632

namespace A143517

/-- `A002260(n+1)*A143518(n+1)` -/
def P6155729830715712632.Spec : Prop :=
  ∀ n, P6155729830715712632.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P15570225633298946527

`A050873(n+1)*A143518(n+1)`
-/

namespace A143517.P15570225633298946527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A143518 (n + 1)

end

end A143517.P15570225633298946527

namespace A143517

/-- `A050873(n+1)*A143518(n+1)` -/
def P15570225633298946527.Spec : Prop :=
  ∀ n, P15570225633298946527.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P992737143855787768

`A122414(n+1)*A127448(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143517

/-- `A122414(n+1)*A127448(n+1)` -/
def P992737143855787768.Spec : Prop :=
  ∀ n, P992737143855787768.a n = A143517 (n + 1)

theorem P992737143855787768.correct : P992737143855787768.Spec := by
  intro n
  simp only [A143517, Nat.add_sub_cancel]

end A143517

/-! ## A143517.P6770498578844110690

`A123275(n+1)*A143518(n+1)`
-/

namespace A143517.P6770498578844110690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A143518 (n + 1)

end

end A143517.P6770498578844110690

namespace A143517

/-- `A123275(n+1)*A143518(n+1)` -/
def P6770498578844110690.Spec : Prop :=
  ∀ n, P6770498578844110690.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P7699660897749214579

`A127093(n+1)*A143518(n+1)`
-/

namespace A143517.P7699660897749214579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A143518 (n + 1)

end

end A143517.P7699660897749214579

namespace A143517

/-- `A127093(n+1)*A143518(n+1)` -/
def P7699660897749214579.Spec : Prop :=
  ∀ n, P7699660897749214579.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P17567394367537101731

`A127448(n+1)*A143538(n+1)`
-/

namespace A143517.P17567394367537101731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (n + 1) * A143538 (n + 1)

end

end A143517.P17567394367537101731

namespace A143517

/-- `A127448(n+1)*A143538(n+1)` -/
def P17567394367537101731.Spec : Prop :=
  ∀ n, P17567394367537101731.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P10772541030733317571

`A130106(n+1)*A143518(n+1)`
-/

namespace A143517.P10772541030733317571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130106 (n + 1) * A143518 (n + 1)

end

end A143517.P10772541030733317571

namespace A143517

/-- `A130106(n+1)*A143518(n+1)` -/
def P10772541030733317571.Spec : Prop :=
  ∀ n, P10772541030733317571.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P15830886512496319600

`A131818(n+1)*A143518(n+1)`
-/

namespace A143517.P15830886512496319600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) * A143518 (n + 1)

end

end A143517.P15830886512496319600

namespace A143517

/-- `A131818(n+1)*A143518(n+1)` -/
def P15830886512496319600.Spec : Prop :=
  ∀ n, P15830886512496319600.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P16824423020059835087

`A134226(n+1)*A143518(n+1)`
-/

namespace A143517.P16824423020059835087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n + 1) * A143518 (n + 1)

end

end A143517.P16824423020059835087

namespace A143517

/-- `A134226(n+1)*A143518(n+1)` -/
def P16824423020059835087.Spec : Prop :=
  ∀ n, P16824423020059835087.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P866437971808543946

`A134868(n+1)*A143518(n+1)`
-/

namespace A143517.P866437971808543946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) * A143518 (n + 1)

end

end A143517.P866437971808543946

namespace A143517

/-- `A134868(n+1)*A143518(n+1)` -/
def P866437971808543946.Spec : Prop :=
  ∀ n, P866437971808543946.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P10168650937351531023

`A135223(n+1)*A143518(n+1)`
-/

namespace A143517.P10168650937351531023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) * A143518 (n + 1)

end

end A143517.P10168650937351531023

namespace A143517

/-- `A135223(n+1)*A143518(n+1)` -/
def P10168650937351531023.Spec : Prop :=
  ∀ n, P10168650937351531023.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P11468700744989365425

`A143151(n+1)*A143518(n+1)`
-/

namespace A143517.P11468700744989365425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143151 (n + 1) * A143518 (n + 1)

end

end A143517.P11468700744989365425

namespace A143517

/-- `A143151(n+1)*A143518(n+1)` -/
def P11468700744989365425.Spec : Prop :=
  ∀ n, P11468700744989365425.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P14837113771767248884

`A143518(n+1)*A285730(n+1)`
-/

namespace A143517.P14837113771767248884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143518 (n + 1) * A285730 (n + 1)

end

end A143517.P14837113771767248884

namespace A143517

/-- `A143518(n+1)*A285730(n+1)` -/
def P14837113771767248884.Spec : Prop :=
  ∀ n, P14837113771767248884.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P16547413095675935570

`A112544(n+1)*A143518(n+1)`
-/

namespace A143517.P16547413095675935570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A143518 (n + 1)

end

end A143517.P16547413095675935570

namespace A143517

/-- `A112544(n+1)*A143518(n+1)` -/
def P16547413095675935570.Spec : Prop :=
  ∀ n, P16547413095675935570.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P13621889883107309194

`A122414(n+1)*A143153(n+1)`
-/

namespace A143517.P13621889883107309194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122414 (n + 1) * A143153 (n + 1)

end

end A143517.P13621889883107309194

namespace A143517

/-- `A122414(n+1)*A143153(n+1)` -/
def P13621889883107309194.Spec : Prop :=
  ∀ n, P13621889883107309194.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P3471788940444315242

`A143153(n+1)*A143538(n+1)`
-/

namespace A143517.P3471788940444315242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143153 (n + 1) * A143538 (n + 1)

end

end A143517.P3471788940444315242

namespace A143517

/-- `A143153(n+1)*A143538(n+1)` -/
def P3471788940444315242.Spec : Prop :=
  ∀ n, P3471788940444315242.a n = A143517 (n + 1)

end A143517

/-! ## A143517.P1161876712113396962

`A143518(n+1)*A173539(n+1)`
-/

namespace A143517.P1161876712113396962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143518 (n + 1) * A173539 (n + 1)

end

end A143517.P1161876712113396962

namespace A143517

/-- `A143518(n+1)*A173539(n+1)` -/
def P1161876712113396962.Spec : Prop :=
  ∀ n, P1161876712113396962.a n = A143517 (n + 1)

end A143517

/-!
# A143518: Triangle read by rows, A054525 * (A010051 * 0^(n-k)), 1<=k<=n.

The programs for A143518, the canonical program `A143518.P16129242294580754326` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143518 has offset 1).

The definition of A143518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143518.P8559067415043738343

`round(atan(atan(A143517(n+1))))`
-/

namespace A143518.P8559067415043738343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A143517 (n + 1) : ℝ)))

end

end A143518.P8559067415043738343

namespace A143518

/-- `round(atan(atan(A143517(n+1))))` -/
def P8559067415043738343.Spec : Prop :=
  ∀ n, P8559067415043738343.a n = A143518 (n + 1)

end A143518

/-! ## A143518.P14513426771876495449

`A143517(1+n)/A134199(n)`
-/

namespace A143518.P14513426771876495449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (1 + n) : ℚ) / (A134199 n : ℚ)

end

end A143518.P14513426771876495449

namespace A143518

/-- `A143517(1+n)/A134199(n)` -/
def P14513426771876495449.Spec : Prop :=
  ∀ n, P14513426771876495449.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P16129242294580754326

`A054525(n+1)*A122414(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143518

/-- `A054525(n+1)*A122414(n+1)` -/
def P16129242294580754326.Spec : Prop :=
  ∀ n, P16129242294580754326.a n = A143518 (n + 1)

theorem P16129242294580754326.correct : P16129242294580754326.Spec := by
  intro n
  simp only [A143518, Nat.add_sub_cancel]

end A143518

/-! ## A143518.P11818453679393698707

`A054525(n+1)*A143538(n+1)`
-/

namespace A143518.P11818453679393698707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A143538 (n + 1)

end

end A143518.P11818453679393698707

namespace A143518

/-- `A054525(n+1)*A143538(n+1)` -/
def P11818453679393698707.Spec : Prop :=
  ∀ n, P11818453679393698707.a n = A143518 (n + 1)

end A143518

/-! ## A143518.P1853187996218312377

`A143517(n+1)/A002260(n+1)`
-/

namespace A143518.P1853187996218312377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A143518.P1853187996218312377

namespace A143518

/-- `A143517(n+1)/A002260(n+1)` -/
def P1853187996218312377.Spec : Prop :=
  ∀ n, P1853187996218312377.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P5709648660089302672

`A143517(n+1)/A050873(n+1)`
-/

namespace A143518.P5709648660089302672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A143518.P5709648660089302672

namespace A143518

/-- `A143517(n+1)/A050873(n+1)` -/
def P5709648660089302672.Spec : Prop :=
  ∀ n, P5709648660089302672.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P3975101816011800186

`A143517(n+1)/A123275(n+1)`
-/

namespace A143518.P3975101816011800186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A143518.P3975101816011800186

namespace A143518

/-- `A143517(n+1)/A123275(n+1)` -/
def P3975101816011800186.Spec : Prop :=
  ∀ n, P3975101816011800186.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P2341126420857837621

`A143517(n+1)/A131818(n+1)`
-/

namespace A143518.P2341126420857837621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A131818 (n + 1) : ℚ)

end

end A143518.P2341126420857837621

namespace A143518

/-- `A143517(n+1)/A131818(n+1)` -/
def P2341126420857837621.Spec : Prop :=
  ∀ n, P2341126420857837621.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P2476414918219676435

`A143517(n+1)/A134226(n+1)`
-/

namespace A143518.P2476414918219676435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A134226 (n + 1) : ℚ)

end

end A143518.P2476414918219676435

namespace A143518

/-- `A143517(n+1)/A134226(n+1)` -/
def P2476414918219676435.Spec : Prop :=
  ∀ n, P2476414918219676435.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P16525951770275484918

`A143517(n+1)/A134868(n+1)`
-/

namespace A143518.P16525951770275484918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A134868 (n + 1) : ℚ)

end

end A143518.P16525951770275484918

namespace A143518

/-- `A143517(n+1)/A134868(n+1)` -/
def P16525951770275484918.Spec : Prop :=
  ∀ n, P16525951770275484918.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P11799027210748467094

`A143517(n+1)/A135223(n+1)`
-/

namespace A143518.P11799027210748467094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A135223 (n + 1) : ℚ)

end

end A143518.P11799027210748467094

namespace A143518

/-- `A143517(n+1)/A135223(n+1)` -/
def P11799027210748467094.Spec : Prop :=
  ∀ n, P11799027210748467094.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P8758256003857210387

`A143517(n+1)/A285730(n+1)`
-/

namespace A143518.P8758256003857210387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A285730 (n + 1) : ℚ)

end

end A143518.P8758256003857210387

namespace A143518

/-- `A143517(n+1)/A285730(n+1)` -/
def P8758256003857210387.Spec : Prop :=
  ∀ n, P8758256003857210387.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P15836793597021459595

`A143517(n+1)/A334230(n+1)`
-/

namespace A143518.P15836793597021459595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A334230 (n + 1) : ℚ)

end

end A143518.P15836793597021459595

namespace A143518

/-- `A143517(n+1)/A334230(n+1)` -/
def P15836793597021459595.Spec : Prop :=
  ∀ n, P15836793597021459595.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P13319708298031246013

`A143517(n+1)/A307641(n+1)`
-/

namespace A143518.P13319708298031246013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A307641 (n + 1) : ℚ)

end

end A143518.P13319708298031246013

namespace A143518

/-- `A143517(n+1)/A307641(n+1)` -/
def P13319708298031246013.Spec : Prop :=
  ∀ n, P13319708298031246013.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P10275683640966537902

`A143517(n+1)/A307662(n+1)`
-/

namespace A143518.P10275683640966537902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A307662 (n + 1) : ℚ)

end

end A143518.P10275683640966537902

namespace A143518

/-- `A143517(n+1)/A307662(n+1)` -/
def P10275683640966537902.Spec : Prop :=
  ∀ n, P10275683640966537902.a n = (A143518 (n + 1) : ℚ)

end A143518

/-! ## A143518.P5835821884266866636

`A143517(n+1)/A112544(n+1)`
-/

namespace A143518.P5835821884266866636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143517 (n + 1) : ℚ) / (A112544 (n + 1) : ℚ)

end

end A143518.P5835821884266866636

namespace A143518

/-- `A143517(n+1)/A112544(n+1)` -/
def P5835821884266866636.Spec : Prop :=
  ∀ n, P5835821884266866636.a n = (A143518 (n + 1) : ℚ)

end A143518

/-!
# A143519: Moebius transform of A010051, the characteristic function of the primes: a(n) = Sum_{d|n} mu(n/d)*A010051(d); A054525 * A010051.

The programs for A143519, the canonical program `A143519.P6473244748969008940` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143519 has offset 1).

The definition of A143519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A008683((n+1)/#)*A010051(#)]` (program `A143519.P6473244748969008940`, by `A143519.P6473244748969008940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143519.P6473244748969008940

`∑{d}[n+1, A008683((n+1)/#)*A010051(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143519

/-- `∑{d}[n+1, A008683((n+1)/#)*A010051(#)]` -/
def P6473244748969008940.Spec : Prop :=
  ∀ n, P6473244748969008940.a n = A143519 (n + 1)

theorem P6473244748969008940.correct : P6473244748969008940.Spec := by
  intro n
  simp only [A143519, Nat.add_sub_cancel]

end A143519

/-! ## A143519.P6020410714889428004

`∑{p}[n+1, A008683((n+1)/#)]`
-/

namespace A143519.P6020410714889428004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A143519.P6020410714889428004

namespace A143519

/-- `∑{p}[n+1, A008683((n+1)/#)]` -/
def P6020410714889428004.Spec : Prop :=
  ∀ n, P6020410714889428004.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P15698342825899869184

`A140706(n+1)-A000010(n+1)`
-/

namespace A143519.P15698342825899869184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140706 (n + 1) - A000010 (n + 1)

end

end A143519.P15698342825899869184

namespace A143519

/-- `A140706(n+1)-A000010(n+1)` -/
def P15698342825899869184.Spec : Prop :=
  ∀ n, P15698342825899869184.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P3078253941196955712

`∑{d}[n+1, A001221(#)*A007427((n+1)/#)]`
-/

namespace A143519.P3078253941196955712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P3078253941196955712

namespace A143519

/-- `∑{d}[n+1, A001221(#)*A007427((n+1)/#)]` -/
def P3078253941196955712.Spec : Prop :=
  ∀ n, P3078253941196955712.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P9324658286783399182

`∑{d}[n+1, A007428(#)*A062799((n+1)/#)]`
-/

namespace A143519.P9324658286783399182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P9324658286783399182

namespace A143519

/-- `∑{d}[n+1, A007428(#)*A062799((n+1)/#)]` -/
def P9324658286783399182.Spec : Prop :=
  ∀ n, P9324658286783399182.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P10962765374773315678

`∑{d}[n+1, A046692(#)*A069359((n+1)/#)]`
-/

namespace A143519.P10962765374773315678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P10962765374773315678

namespace A143519

/-- `∑{d}[n+1, A046692(#)*A069359((n+1)/#)]` -/
def P10962765374773315678.Spec : Prop :=
  ∀ n, P10962765374773315678.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P14316060201452352313

`∑{d}[n+1, A055615(#)*A117494((n+1)/#)]`
-/

namespace A143519.P14316060201452352313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P14316060201452352313

namespace A143519

/-- `∑{d}[n+1, A055615(#)*A117494((n+1)/#)]` -/
def P14316060201452352313.Spec : Prop :=
  ∀ n, P14316060201452352313.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P9329572930974506366

`∑{d}[n+1, A053822(#)*A322078((n+1)/#)]`
-/

namespace A143519.P9329572930974506366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A322078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P9329572930974506366

namespace A143519

/-- `∑{d}[n+1, A053822(#)*A322078((n+1)/#)]` -/
def P9329572930974506366.Spec : Prop :=
  ∀ n, P9329572930974506366.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P17244470979535804663

`∑{d}[n+1, A053825(#)*A351242((n+1)/#)]`
-/

namespace A143519.P17244470979535804663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A351242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P17244470979535804663

namespace A143519

/-- `∑{d}[n+1, A053825(#)*A351242((n+1)/#)]` -/
def P17244470979535804663.Spec : Prop :=
  ∀ n, P17244470979535804663.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P6965190031630068920

`∑{d}[n+1, A053826(#)*A351244((n+1)/#)]`
-/

namespace A143519.P6965190031630068920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053826 d * A351244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P6965190031630068920

namespace A143519

/-- `∑{d}[n+1, A053826(#)*A351244((n+1)/#)]` -/
def P6965190031630068920.Spec : Prop :=
  ∀ n, P6965190031630068920.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P8805513443204192406

`∑{d}[n+1, A158523(#)*A369865((n+1)/#)]`
-/

namespace A143519.P8805513443204192406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A369865 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P8805513443204192406

namespace A143519

/-- `∑{d}[n+1, A158523(#)*A369865((n+1)/#)]` -/
def P8805513443204192406.Spec : Prop :=
  ∀ n, P8805513443204192406.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P2446693773296646943

`∑{d}[n+1, A178448(#)*A351245((n+1)/#)]`
-/

namespace A143519.P2446693773296646943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178448 d * A351245 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P2446693773296646943

namespace A143519

/-- `∑{d}[n+1, A178448(#)*A351245((n+1)/#)]` -/
def P2446693773296646943.Spec : Prop :=
  ∀ n, P2446693773296646943.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P8691252895568663859

`∑{d}[n+1, A205745(#)*A327276((n+1)/#)]`
-/

namespace A143519.P8691252895568663859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A205745 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P8691252895568663859

namespace A143519

/-- `∑{d}[n+1, A205745(#)*A327276((n+1)/#)]` -/
def P8691252895568663859.Spec : Prop :=
  ∀ n, P8691252895568663859.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P4175075454704476049

`∑{d}[n+1, A238950(#)*A378213((n+1)/#)]`
-/

namespace A143519.P4175075454704476049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238950 d * A378213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P4175075454704476049

namespace A143519

/-- `∑{d}[n+1, A238950(#)*A378213((n+1)/#)]` -/
def P4175075454704476049.Spec : Prop :=
  ∀ n, P4175075454704476049.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P8463497957533549282

`∑{d}[n+1, A271102(#)*A392285((n+1)/#)]`
-/

namespace A143519.P8463497957533549282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P8463497957533549282

namespace A143519

/-- `∑{d}[n+1, A271102(#)*A392285((n+1)/#)]` -/
def P8463497957533549282.Spec : Prop :=
  ∀ n, P8463497957533549282.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P1550500474768591256

`∑{d}[n+1, A304438(#)*A359591((n+1)/#)]`
-/

namespace A143519.P1550500474768591256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304438 d * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P1550500474768591256

namespace A143519

/-- `∑{d}[n+1, A304438(#)*A359591((n+1)/#)]` -/
def P1550500474768591256.Spec : Prop :=
  ∀ n, P1550500474768591256.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P16502535608502422848

`∑{d}[n+1, A307445(#)*A358769((n+1)/#)]`
-/

namespace A143519.P16502535608502422848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A358769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P16502535608502422848

namespace A143519

/-- `∑{d}[n+1, A307445(#)*A358769((n+1)/#)]` -/
def P16502535608502422848.Spec : Prop :=
  ∀ n, P16502535608502422848.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P4913400233696240691

`∑{d}[n+1, A328722(#)*A347134((n+1)/#)]`
-/

namespace A143519.P4913400233696240691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A347134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P4913400233696240691

namespace A143519

/-- `∑{d}[n+1, A328722(#)*A347134((n+1)/#)]` -/
def P4913400233696240691.Spec : Prop :=
  ∀ n, P4913400233696240691.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P9103180370248060341

`∑{d}[n+1, A327960(#)*A369894((n+1)/#)]`
-/

namespace A143519.P9103180370248060341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A369894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P9103180370248060341

namespace A143519

/-- `∑{d}[n+1, A327960(#)*A369894((n+1)/#)]` -/
def P9103180370248060341.Spec : Prop :=
  ∀ n, P9103180370248060341.a n = A143519 (n + 1)

end A143519

/-! ## A143519.P13187225110490947912

`∑{d}[n+1, A328254(#)*A369904((n+1)/#)]`
-/

namespace A143519.P13187225110490947912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328254 d * A369904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P13187225110490947912

namespace A143519

/-- `∑{d}[n+1, A328254(#)*A369904((n+1)/#)]` -/
def P13187225110490947912.Spec : Prop :=
  ∀ n, P13187225110490947912.a n = A143519 (n + 1)

end A143519

/-!
# A143520: a(n) is n times number of divisors of n if n is odd, zero if n is twice odd, n times number of divisors of n/4 if n is divisible by 4.

The programs for A143520, the canonical program `A143520.P7922226448334733284` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143520 has offset 1).

The definition of A143520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143520.P7922226448334733284

`(n+1)*A112329(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143520

/-- `(n+1)*A112329(n+1)` -/
def P7922226448334733284.Spec : Prop :=
  ∀ n, P7922226448334733284.a n = A143520 (n + 1)

theorem P7922226448334733284.correct : P7922226448334733284.Spec := by
  intro n
  simp only [A143520, Nat.add_sub_cancel]

end A143520

/-! ## A143520.P8657044722440989716

`abs(∑{d}[n+1, (-1)^#])*(n+1)`
-/

namespace A143520.P8657044722440989716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-1) ^ d| * (n + 1 : ℤ)

end

end A143520.P8657044722440989716

namespace A143520

/-- `abs(∑{d}[n+1, (-1)^#])*(n+1)` -/
def P8657044722440989716.Spec : Prop :=
  ∀ n, P8657044722440989716.a n = A143520 (n + 1)

end A143520

/-! ## A143520.P14046427178022669995

`(n+1)*∑{d}[n+1, (-1)^(n*#)]`
-/

namespace A143520.P14046427178022669995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (-1) ^ (n * d))

end

end A143520.P14046427178022669995

namespace A143520

/-- `(n+1)*∑{d}[n+1, (-1)^(n*#)]` -/
def P14046427178022669995.Spec : Prop :=
  ∀ n, P14046427178022669995.a n = A143520 (n + 1)

end A143520

/-! ## A143520.P11687121024270629377

`(n+1)*abs(Δ[A059851(n)])`
-/

namespace A143520.P11687121024270629377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |f1 (n + 1) - f1 n|

end

end A143520.P11687121024270629377

namespace A143520

/-- `(n+1)*abs(Δ[A059851(n)])` -/
def P11687121024270629377.Spec : Prop :=
  ∀ n, P11687121024270629377.a n = A143520 (n + 1)

end A143520

/-! ## A143520.P8760885807529581673

`abs((n+1)*A048272(n+1))`
-/

namespace A143520.P8760885807529581673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A048272 (n + 1)|

end

end A143520.P8760885807529581673

namespace A143520

/-- `abs((n+1)*A048272(n+1))` -/
def P8760885807529581673.Spec : Prop :=
  ∀ n, P8760885807529581673.a n = A143520 (n + 1)

end A143520

/-! ## A143520.P15165998000271902133

`(n+1)/2*A094572(n+1)`
-/

namespace A143520.P15165998000271902133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A094572 (n + 1) : ℚ)

end

end A143520.P15165998000271902133

namespace A143520

/-- `(n+1)/2*A094572(n+1)` -/
def P15165998000271902133.Spec : Prop :=
  ∀ n, P15165998000271902133.a n = (A143520 (n + 1) : ℚ)

theorem P15165998000271902133.correct : P15165998000271902133.Spec := by
  intro n
  simp only [A143520, Nat.add_sub_cancel, A143520.P15165998000271902133.a, A143520.P7922226448334733284.a, A094572, A094572.P824634437400607663.a, A112329, A112329.P3260148740044455417.f1, A112329.P3260148740044455417.a, A140670, A140670.P15032429316490350293.a, A006519, A006519.P10435570611646570274.a, A059841, A059841.P7264174615531153985.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143520

/-! ## A143520.P15594261573970876052

`(n+1)*A001281(A094572(n+1))`
-/

namespace A143520.P15594261573970876052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001281 (A094572 (n + 1)).toNat

end

end A143520.P15594261573970876052

namespace A143520

/-- `(n+1)*A001281(A094572(n+1))` -/
def P15594261573970876052.Spec : Prop :=
  ∀ n, P15594261573970876052.a n = A143520 (n + 1)

end A143520

/-! ## A143520.P12106150159480477604

`(n+1)*A000196(A048272(n+1)²)`
-/

namespace A143520.P12106150159480477604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000196 (A048272 (n + 1) ^ 2).toNat

end

end A143520.P12106150159480477604

namespace A143520

/-- `(n+1)*A000196(A048272(n+1)²)` -/
def P12106150159480477604.Spec : Prop :=
  ∀ n, P12106150159480477604.a n = A143520 (n + 1)

end A143520

/-! ## A143520.P17815316886959062276

`(n+1)*A299480(A114752(n+1))`
-/

namespace A143520.P17815316886959062276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A299480 (A114752 (n + 1)).toNat

end

end A143520.P17815316886959062276

namespace A143520

/-- `(n+1)*A299480(A114752(n+1))` -/
def P17815316886959062276.Spec : Prop :=
  ∀ n, P17815316886959062276.a n = A143520 (n + 1)

end A143520

/-! ## A143520.P6861010437899100694

`(n+1)*A034178(A020338(n+1))`
-/

namespace A143520.P6861010437899100694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034178 (A020338 (n + 1)).toNat

end

end A143520.P6861010437899100694

namespace A143520

/-- `(n+1)*A034178(A020338(n+1))` -/
def P6861010437899100694.Spec : Prop :=
  ∀ n, P6861010437899100694.a n = A143520 (n + 1)

end A143520

/-!
# A143521: Expansion of g.f. Sum_{k>0} k * x^k / (1 + (-x)^k)^2.

The programs for A143521, the canonical program `A143521.P14660616656247215955` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143521 has offset 1).

The definition of A143521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143521.P14660616656247215955

`xor(n, (-1)^n)*∑{d}[n+1, 1-and(4, #²)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143521

/-- `xor(n, (-1)^n)*∑{d}[n+1, 1-and(4, #²)]` -/
def P14660616656247215955.Spec : Prop :=
  ∀ n, P14660616656247215955.a n = A143521 (n + 1)

theorem P14660616656247215955.correct : P14660616656247215955.Spec := by
  intro n
  simp only [A143521, Nat.add_sub_cancel]

end A143521

/-! ## A143521.P13883261915097293135

`∑{d}[n+1, (n+1)*#%2]+∑{d}[n+1, (n+1)*#%2]-(n+1)*abs(∑{d}[n+1, (-1)^#])`
-/

namespace A143521.P13883261915097293135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d % 2) : ℕ) : ℤ) + (((∑ d ∈ Nat.divisors (f2 n), (n + 1) * (d % 2) : ℕ) : ℤ) - (n + 1 : ℤ) * |∑ d ∈ Nat.divisors (f3 n), (-1) ^ d|)

end

end A143521.P13883261915097293135

namespace A143521

/-- `∑{d}[n+1, (n+1)*#%2]+∑{d}[n+1, (n+1)*#%2]-(n+1)*abs(∑{d}[n+1, (-1)^#])` -/
def P13883261915097293135.Spec : Prop :=
  ∀ n, P13883261915097293135.a n = A143521 (n + 1)

end A143521

/-! ## A143521.P7746439015370066077

`(n+1)*(-1)^n*A228441(n+1)`
-/

namespace A143521.P7746439015370066077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((-1) ^ n * A228441 (n + 1))

end

end A143521.P7746439015370066077

namespace A143521

/-- `(n+1)*(-1)^n*A228441(n+1)` -/
def P7746439015370066077.Spec : Prop :=
  ∀ n, P7746439015370066077.a n = A143521 (n + 1)

end A143521

/-! ## A143521.P11493754770447130815

`∑[A157142(n)]*A228441(n+1)`
-/

namespace A143521.P11493754770447130815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A228441 (n + 1)

end

end A143521.P11493754770447130815

namespace A143521

/-- `∑[A157142(n)]*A228441(n+1)` -/
def P11493754770447130815.Spec : Prop :=
  ∀ n, P11493754770447130815.a n = A143521 (n + 1)

end A143521

/-! ## A143521.P3146134612980752291

`xor(n, A033999(n))*A228441(n+1)`
-/

namespace A143521.P3146134612980752291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A033999 n) * A228441 (n + 1)

end

end A143521.P3146134612980752291

namespace A143521

/-- `xor(n, A033999(n))*A228441(n+1)` -/
def P3146134612980752291.Spec : Prop :=
  ∀ n, P3146134612980752291.a n = A143521 (n + 1)

end A143521

/-! ## A143521.P12699189486637872352

`2*A245579(n+1)-A143520(n+1)`
-/

namespace A143521.P12699189486637872352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245579 (n + 1) - A143520 (n + 1)

end

end A143521.P12699189486637872352

namespace A143521

/-- `2*A245579(n+1)-A143520(n+1)` -/
def P12699189486637872352.Spec : Prop :=
  ∀ n, P12699189486637872352.a n = A143521 (n + 1)

end A143521

/-! ## A143521.P12795232548193558356

`∑{d}[n+1, A078439(#)*A344300((n+1)/#)]`
-/

namespace A143521.P12795232548193558356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078439 d * A344300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143521.P12795232548193558356

namespace A143521

/-- `∑{d}[n+1, A078439(#)*A344300((n+1)/#)]` -/
def P12795232548193558356.Spec : Prop :=
  ∀ n, P12795232548193558356.a n = A143521 (n + 1)

end A143521

/-! ## A143521.P6934689259032979325

`∑{d}[n+1, 1-and(4, #²)]*A181983(n+1)`
-/

namespace A143521.P6934689259032979325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.land 4 (d ^ 2) : ℤ))) * A181983 (n + 1)

end

end A143521.P6934689259032979325

namespace A143521

/-- `∑{d}[n+1, 1-and(4, #²)]*A181983(n+1)` -/
def P6934689259032979325.Spec : Prop :=
  ∀ n, P6934689259032979325.a n = A143521 (n + 1)

end A143521

/-! ## A143521.P10753057559767789998

`Δ[A001057(n)]*A228441(n+1)`
-/

namespace A143521.P10753057559767789998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A228441 (n + 1)

end

end A143521.P10753057559767789998

namespace A143521

/-- `Δ[A001057(n)]*A228441(n+1)` -/
def P10753057559767789998.Spec : Prop :=
  ∀ n, P10753057559767789998.a n = A143521 (n + 1)

end A143521

/-!
# A143522: a(n) = n-fold Dumont operator of x evaluated at x=1, y=1, z=2.

The programs for A143522, there is no canonical definition to state claims against.
-/

/-! ## A143522.P17121884309592258910

`record[A264749(A345177(n))]`
-/

namespace A143522.P17121884309592258910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A345177 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143522.P17121884309592258910

/-! ## A143522.P3441212543985510040

`A320154(n+1)+A058488(A003522(n))`
-/

namespace A143522.P3441212543985510040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320154 (n + 1) + A058488 (A003522 n).toNat

end

end A143522.P3441212543985510040

/-!
# A143523: a(n) = n-fold Dumont operator of x evaluated at x=y=1, z=3.

The programs for A143523, there is no canonical definition to state claims against.
-/

/-! ## A143523.P12213313084177491053

`A185419(∑[n]+1)`
-/

namespace A143523.P12213313084177491053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185419 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A143523.P12213313084177491053

/-! ## A143523.P17451669639703258685

`record[gcd(col(n), A185419(n+1))]`
-/

namespace A143523.P17451669639703258685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.triCol n : ℤ) (A185419 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143523.P17451669639703258685

/-! ## A143523.P16199253580181255890

`record[A185419(∑[A057979(n)])]`
-/

namespace A143523.P16199253580181255890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185419 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143523.P16199253580181255890

/-! ## A143523.P1381779745529158038

`record[ratio[A185419(A028310(n))]]`
-/

namespace A143523.P1381779745529158038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185419 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143523.P1381779745529158038

/-! ## A143523.P17232302761982677721

`record[A185419(A056534(n+1))]`
-/

namespace A143523.P17232302761982677721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185419 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143523.P17232302761982677721

/-!
# A143525: a(n) is the number of divisors of (A005179(n)-1), where A005179(n) is the smallest positive integer with n divisors.

The programs for A143525, there is no canonical definition to state claims against.
-/

/-! ## A143525.P11681871468968607239

`A000005(A005179(n+2)-1)`
-/

namespace A143525.P11681871468968607239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005179 (n + 2) - 1).toNat

end

end A143525.P11681871468968607239

/-! ## A143525.P11744274190860322514

`∏{e}[A077569(A096276(n+1)+1)-1, #+1]`
-/

namespace A143525.P11744274190860322514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077569 (A096276 (n + 1) + 1).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A143525.P11744274190860322514

/-! ## A143525.P231855118642914991

`A000005(A037019(n+2)-1)`
-/

namespace A143525.P231855118642914991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A037019 (n + 2) - 1).toNat

end

end A143525.P231855118642914991

/-! ## A143525.P8221693408448167855

`A060764(A005179(n+2)-1)`
-/

namespace A143525.P8221693408448167855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (A005179 (n + 2) - 1).toNat

end

end A143525.P8221693408448167855

/-! ## A143525.P16037501578616917719

`A000005(A385209(2*(n+1))-1)`
-/

namespace A143525.P16037501578616917719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A385209 (2 * (n + 1)) - 1).toNat

end

end A143525.P16037501578616917719

/-!
# A143526: a(n) is the number of divisors of (A005179(n)+1), where A005179(n) is the smallest positive integer with n divisors.

The programs for A143526, there is no canonical definition to state claims against.
-/

/-! ## A143526.P16146032539499671786

`A000005(A005179(n+1)+1)`
-/

namespace A143526.P16146032539499671786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005179 (n + 1) + 1).toNat

end

end A143526.P16146032539499671786

/-! ## A143526.P15358630315190769523

`∏{e}[sqrt(A130279(n+1))+1, #+1]`
-/

namespace A143526.P15358630315190769523
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130279 (n + 1) : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A143526.P15358630315190769523

/-! ## A143526.P13125244198189139025

`∏{e}[A081532(∑[n+1])+1, #+1]`
-/

namespace A143526.P13125244198189139025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A143526.P13125244198189139025

/-! ## A143526.P17924249709162316251

`∑{d}[A005179(ϕ²-(ϕ-n))+1, ceil(acot(#))]`
-/

namespace A143526.P17924249709162316251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A143526.P17924249709162316251

/-! ## A143526.P11907335707503371860

`A000005(1+A005179(n+1))`
-/

namespace A143526.P11907335707503371860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 + A005179 (n + 1)).toNat

end

end A143526.P11907335707503371860

/-!
# A143533: a(n) = A038705(n) - 1.

The programs for A143533, there is no canonical definition to state claims against.
-/

/-! ## A143533.P17350245318815172371

`A038705(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143533.P17350245318815172371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038705 (n + 1) - 1

end

end A143533.P17350245318815172371

/-! ## A143533.P9019599973807294504

`record[Δ[A038705(A152271(n))]]`
-/

namespace A143533.P9019599973807294504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038705 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143533.P9019599973807294504

/-! ## A143533.P16275592377105664133

`record[Δ[A038705(A158416(n))]]`
-/

namespace A143533.P16275592377105664133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038705 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143533.P16275592377105664133

/-! ## A143533.P8574129172437977183

`xor(abs(A260196(n)), A038705(n+1))`
-/

namespace A143533.P8574129172437977183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A260196 n| (A038705 (n + 1))

end

end A143533.P8574129172437977183

/-! ## A143533.P18427851465267936269

`A057428(n+1)+A038705(n+1)`
-/

namespace A143533.P18427851465267936269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A038705 (n + 1)

end

end A143533.P18427851465267936269

/-!
# A143534: Number of decimal digits in the high-water marks of the terms of the continued fraction of the (base-10) Champernowne constant.

The programs for A143534, there is no canonical definition to state claims against.
-/

/-! ## A143534.P861995660332345826

`A143532(A143533(n+1))`
-/

namespace A143534.P861995660332345826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143532 (A143533 (n + 1)).toNat

end

end A143534.P861995660332345826

/-! ## A143534.P6230627256623485661

`A143532(A038705(n+1)-1)`
-/

namespace A143534.P6230627256623485661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143532 (A038705 (n + 1) - 1).toNat

end

end A143534.P6230627256623485661

/-!
# A143535: Triangle read by rows, A122414 * A000012; 1<=k<=n.

The programs for A143535, there is no canonical definition to state claims against.
-/

/-! ## A143535.P18442909414503171296

`A001221(A068424(n+1))-A001221(A008279(n))`
-/

namespace A143535.P18442909414503171296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A068424 (n + 1)).toNat - A001221 (A008279 n).toNat

end

end A143535.P18442909414503171296

/-! ## A143535.P10643462422419012794

`A001221(A199673(n+1))-A001221(A008279(n))`
-/

namespace A143535.P10643462422419012794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A199673 (n + 1)).toNat - A001221 (A008279 n).toNat

end

end A143535.P10643462422419012794

/-!
# A143536: Triangle read by rows, T(n,k) = 1 if n is prime, 0 otherwise.

The programs for A143536, the canonical program `A143536.P10866340339983663400` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143536 has offset 1).

The definition of A143536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143536.P4235935938552156839

`col(C(2, ∑{e}[row(n)+1, #²]))`
-/

namespace A143536.P4235935938552156839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2))

end

end A143536.P4235935938552156839

namespace A143536

/-- `col(C(2, ∑{e}[row(n)+1, #²]))` -/
def P4235935938552156839.Spec : Prop :=
  ∀ n, (P4235935938552156839.a n : ℤ) = A143536 (n + 1)

end A143536

/-! ## A143536.P8785865226609305150

`log2(A143544(n+1))`
-/

namespace A143536.P8785865226609305150
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A143544 (n + 1) : ℝ)

end

end A143536.P8785865226609305150

namespace A143536

/-- `log2(A143544(n+1))` -/
def P8785865226609305150.Spec : Prop :=
  ∀ n, P8785865226609305150.a n = (A143536 (n + 1) : ℝ)

end A143536

/-! ## A143536.P3550496609048795167

`A010051(∑[char[∑[n]]])`
-/

namespace A143536.P3550496609048795167
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143536.P3550496609048795167

namespace A143536

/-- `A010051(∑[char[∑[n]]])` -/
def P3550496609048795167.Spec : Prop :=
  ∀ n, P3550496609048795167.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P8749914490644056670

`A064911(∑[char[∑[n]]]²)`
-/

namespace A143536.P8749914490644056670
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A143536.P8749914490644056670

namespace A143536

/-- `A064911(∑[char[∑[n]]]²)` -/
def P8749914490644056670.Spec : Prop :=
  ∀ n, P8749914490644056670.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P6022777793792434039

`A101040(∑[char[∑[n]]]²)`
-/

namespace A143536.P6022777793792434039
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A143536.P6022777793792434039

namespace A143536

/-- `A101040(∑[char[∑[n]]]²)` -/
def P6022777793792434039.Spec : Prop :=
  ∀ n, P6022777793792434039.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P7496431402340566904

`A302048(∑[char[∑[n]]]²)`
-/

namespace A143536.P7496431402340566904
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A143536.P7496431402340566904

namespace A143536

/-- `A302048(∑[char[∑[n]]]²)` -/
def P7496431402340566904.Spec : Prop :=
  ∀ n, P7496431402340566904.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P15973422202450784165

`1-A005171(∑[char[∑[n]]])`
-/

namespace A143536.P15973422202450784165
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143536.P15973422202450784165

namespace A143536

/-- `1-A005171(∑[char[∑[n]]])` -/
def P15973422202450784165.Spec : Prop :=
  ∀ n, P15973422202450784165.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P1811560728923690059

`A035026(comp[∑[n-1]]-n)%2`
-/

namespace A143536.P1811560728923690059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035026 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)) 2

end

end A143536.P1811560728923690059

namespace A143536

/-- `A035026(comp[∑[n-1]]-n)%2` -/
def P1811560728923690059.Spec : Prop :=
  ∀ n, P1811560728923690059.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P15083771461290946194

`A257994(A005145(n+1))`
-/

namespace A143536.P15083771461290946194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A005145 (n + 1)).toNat

end

end A143536.P15083771461290946194

namespace A143536

/-- `A257994(A005145(n+1))` -/
def P15083771461290946194.Spec : Prop :=
  ∀ n, P15083771461290946194.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P10866340339983663400

`and(1, A010051(A003056(n)+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143536

/-- `and(1, A010051(A003056(n)+1))` -/
def P10866340339983663400.Spec : Prop :=
  ∀ n, P10866340339983663400.a n = A143536 (n + 1)

theorem P10866340339983663400.correct : P10866340339983663400.Spec := by
  intro n
  simp only [A143536, Nat.add_sub_cancel]

end A143536

/-! ## A143536.P6795446798615483224

`A000328(n)%A143544(n+1)`
-/

namespace A143536.P6795446798615483224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A143544 (n + 1))

end

end A143536.P6795446798615483224

namespace A143536

/-- `A000328(n)%A143544(n+1)` -/
def P6795446798615483224.Spec : Prop :=
  ∀ n, P6795446798615483224.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P7275931699592570315

`A000466(n)%A143544(n+1)`
-/

namespace A143536.P7275931699592570315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A143544 (n + 1))

end

end A143536.P7275931699592570315

namespace A143536

/-- `A000466(n)%A143544(n+1)` -/
def P7275931699592570315.Spec : Prop :=
  ∀ n, P7275931699592570315.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P5741329028740000801

`A000605(n)%A143544(n+1)`
-/

namespace A143536.P5741329028740000801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A143544 (n + 1))

end

end A143536.P5741329028740000801

namespace A143536

/-- `A000605(n)%A143544(n+1)` -/
def P5741329028740000801.Spec : Prop :=
  ∀ n, P5741329028740000801.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P3366401554562129427

`A001148(n)%A143544(n+1)`
-/

namespace A143536.P3366401554562129427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A143544 (n + 1))

end

end A143536.P3366401554562129427

namespace A143536

/-- `A001148(n)%A143544(n+1)` -/
def P3366401554562129427.Spec : Prop :=
  ∀ n, P3366401554562129427.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P18311800180574644483

`A001218(n)%A143544(n+1)`
-/

namespace A143536.P18311800180574644483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A143544 (n + 1))

end

end A143536.P18311800180574644483

namespace A143536

/-- `A001218(n)%A143544(n+1)` -/
def P18311800180574644483.Spec : Prop :=
  ∀ n, P18311800180574644483.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P13705554809923196114

`A001513(n)%A143544(n+1)`
-/

namespace A143536.P13705554809923196114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A143544 (n + 1))

end

end A143536.P13705554809923196114

namespace A143536

/-- `A001513(n)%A143544(n+1)` -/
def P13705554809923196114.Spec : Prop :=
  ∀ n, P13705554809923196114.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P4920927930451086700

`A001520(n)%A143544(n+1)`
-/

namespace A143536.P4920927930451086700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A143544 (n + 1))

end

end A143536.P4920927930451086700

namespace A143536

/-- `A001520(n)%A143544(n+1)` -/
def P4920927930451086700.Spec : Prop :=
  ∀ n, P4920927930451086700.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P7683650307093935214

`A001533(n)%A143544(n+1)`
-/

namespace A143536.P7683650307093935214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A143544 (n + 1))

end

end A143536.P7683650307093935214

namespace A143536

/-- `A001533(n)%A143544(n+1)` -/
def P7683650307093935214.Spec : Prop :=
  ∀ n, P7683650307093935214.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P3487426034400902499

`A001535(n)%A143544(n+1)`
-/

namespace A143536.P3487426034400902499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A143544 (n + 1))

end

end A143536.P3487426034400902499

namespace A143536

/-- `A001535(n)%A143544(n+1)` -/
def P3487426034400902499.Spec : Prop :=
  ∀ n, P3487426034400902499.a n = A143536 (n + 1)

end A143536

/-! ## A143536.P13026548008852324513

`A001538(n)%A143544(n+1)`
-/

namespace A143536.P13026548008852324513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A143544 (n + 1))

end

end A143536.P13026548008852324513

namespace A143536

/-- `A001538(n)%A143544(n+1)` -/
def P13026548008852324513.Spec : Prop :=
  ∀ n, P13026548008852324513.a n = A143536 (n + 1)

end A143536

/-!
# A143537: Triangle read by rows: T(n,k) = number of primes in the interval [k..n], n >= 1, 1 <= k <= n.

The programs for A143537, the canonical program `A143537.P315766728573760673` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143537 has offset 1).

The definition of A143537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143537.P315766728573760673

`A000720(A002024(n+1))-A230980(A002262(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143537

/-- `A000720(A002024(n+1))-A230980(A002262(n))` -/
def P315766728573760673.Spec : Prop :=
  ∀ n, P315766728573760673.a n = A143537 (n + 1)

theorem P315766728573760673.correct : P315766728573760673.Spec := by
  intro n
  simp only [A143537, Nat.add_sub_cancel]

end A143537

/-! ## A143537.P1225316063580337578

`A000720(A003056(n)+1)-A230980(A002262(n))`
-/

namespace A143537.P1225316063580337578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A003056 n + 1).toNat - A230980 (A002262 n).toNat

end

end A143537.P1225316063580337578

namespace A143537

/-- `A000720(A003056(n)+1)-A230980(A002262(n))` -/
def P1225316063580337578.Spec : Prop :=
  ∀ n, P1225316063580337578.a n = A143537 (n + 1)

end A143537

/-! ## A143537.P8805909868448094946

`A000720(A002024(n+1))-A000720(A144328(n+1))`
-/

namespace A143537.P8805909868448094946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002024 (n + 1)).toNat - A000720 (A144328 (n + 1)).toNat

end

end A143537.P8805909868448094946

namespace A143537

/-- `A000720(A002024(n+1))-A000720(A144328(n+1))` -/
def P8805909868448094946.Spec : Prop :=
  ∀ n, P8805909868448094946.a n = A143537 (n + 1)

end A143537

/-! ## A143537.P17351970381663076169

`A358138(A156063(n+1)+1)`
-/

namespace A143537.P17351970381663076169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358138 (A156063 (n + 1) + 1).toNat

end

end A143537.P17351970381663076169

namespace A143537

/-- `A358138(A156063(n+1)+1)` -/
def P17351970381663076169.Spec : Prop :=
  ∀ n, P17351970381663076169.a n = A143537 (n + 1)

end A143537

/-! ## A143537.P12431575428299383324

`A001221(A274570(n)*A274921(n))`
-/

namespace A143537.P12431575428299383324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A274570 n * A274921 n).toNat

end

end A143537.P12431575428299383324

namespace A143537

/-- `A001221(A274570(n)*A274921(n))` -/
def P12431575428299383324.Spec : Prop :=
  ∀ n, P12431575428299383324.a n = A143537 (n + 1)

end A143537

/-!
# A143538: Triangle read by rows, T(n,k) = 1 if k is prime, 0 otherwise; 1 <= k <= n.

The programs for A143538, the canonical program `A143538.P17358070422668101230` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143538 has offset 1).

The definition of A143538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143538.P17358070422668101230

`A010051(A002260(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143538

/-- `A010051(A002260(n+1))` -/
def P17358070422668101230.Spec : Prop :=
  ∀ n, P17358070422668101230.a n = A143538 (n + 1)

theorem P17358070422668101230.correct : P17358070422668101230.Spec := by
  intro n
  simp only [A143538, Nat.add_sub_cancel]

end A143538

/-! ## A143538.P7247261165591965121

`A010051(1+col(n))`
-/

namespace A143538.P7247261165591965121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (1 + SequenceMachineLib.triCol n)

end

end A143538.P7247261165591965121

namespace A143538

/-- `A010051(1+col(n))` -/
def P7247261165591965121.Spec : Prop :=
  ∀ n, P7247261165591965121.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P1984893345955412730

`A064911((col(n)+1)²)`
-/

namespace A143538.P1984893345955412730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 ((SequenceMachineLib.triCol n + 1) ^ 2)

end

end A143538.P1984893345955412730

namespace A143538

/-- `A064911((col(n)+1)²)` -/
def P1984893345955412730.Spec : Prop :=
  ∀ n, P1984893345955412730.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P9714011778599399897

`A368701((col(n)+1)²)`
-/

namespace A143538.P9714011778599399897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368701 ((SequenceMachineLib.triCol n + 1) ^ 2)

end

end A143538.P9714011778599399897

namespace A143538

/-- `A368701((col(n)+1)²)` -/
def P9714011778599399897.Spec : Prop :=
  ∀ n, P9714011778599399897.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P12389594352072843457

`A064911(2*(col(n)+1))`
-/

namespace A143538.P12389594352072843457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * (SequenceMachineLib.triCol n + 1))

end

end A143538.P12389594352072843457

namespace A143538

/-- `A064911(2*(col(n)+1))` -/
def P12389594352072843457.Spec : Prop :=
  ∀ n, P12389594352072843457.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P17070990338403910072

`or(T(n-1,k), A143541(n+1))` with `a(0)=0`
-/

namespace A143538.P17070990338403910072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (SequenceMachineLib.triUp a n) (A143541 (n + 1))

end

end A143538.P17070990338403910072

namespace A143538

/-- `or(T(n-1,k), A143541(n+1))` -/
def P17070990338403910072.Spec : Prop :=
  ∀ n, P17070990338403910072.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P13792953431665271204

`A061397(col(n)+1)/(col(n)+1)`
-/

namespace A143538.P13792953431665271204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061397 (SequenceMachineLib.triCol n + 1) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A143538.P13792953431665271204

namespace A143538

/-- `A061397(col(n)+1)/(col(n)+1)` -/
def P13792953431665271204.Spec : Prop :=
  ∀ n, P13792953431665271204.a n = (A143538 (n + 1) : ℚ)

end A143538

/-! ## A143538.P11649883768388241649

`A010051(A002262(n)+1)`
-/

namespace A143538.P11649883768388241649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002262 n + 1).toNat

end

end A143538.P11649883768388241649

namespace A143538

/-- `A010051(A002262(n)+1)` -/
def P11649883768388241649.Spec : Prop :=
  ∀ n, P11649883768388241649.a n = A143538 (n + 1)

theorem P11649883768388241649.correct : P11649883768388241649.Spec := by
  intro n
  simp only [A143538, Nat.add_sub_cancel, A143538.P11649883768388241649.a, A143538.P17358070422668101230.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143538

/-! ## A143538.P7957594637754738691

`A010051(A080511(n+1))`
-/

namespace A143538.P7957594637754738691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A080511 (n + 1)).toNat

end

end A143538.P7957594637754738691

namespace A143538

/-- `A010051(A080511(n+1))` -/
def P7957594637754738691.Spec : Prop :=
  ∀ n, P7957594637754738691.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P11517656587987465706

`A064911(A133819(n+1))`
-/

namespace A143538.P11517656587987465706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A133819 (n + 1)).toNat

end

end A143538.P11517656587987465706

namespace A143538

/-- `A064911(A133819(n+1))` -/
def P11517656587987465706.Spec : Prop :=
  ∀ n, P11517656587987465706.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P12583154145696357215

`A064911(A002260(n+1)²)`
-/

namespace A143538.P12583154145696357215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A002260 (n + 1) ^ 2).toNat

end

end A143538.P12583154145696357215

namespace A143538

/-- `A064911(A002260(n+1)²)` -/
def P12583154145696357215.Spec : Prop :=
  ∀ n, P12583154145696357215.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P12619200162218582252

`A010051(sqrt(A133819(n+1)))`
-/

namespace A143538.P12619200162218582252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A143538.P12619200162218582252

namespace A143538

/-- `A010051(sqrt(A133819(n+1)))` -/
def P12619200162218582252.Spec : Prop :=
  ∀ n, P12619200162218582252.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P5847810696472854660

`A064911(A158405(n+1)+1)`
-/

namespace A143538.P5847810696472854660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A158405 (n + 1) + 1).toNat

end

end A143538.P5847810696472854660

namespace A143538

/-- `A064911(A158405(n+1)+1)` -/
def P5847810696472854660.Spec : Prop :=
  ∀ n, P5847810696472854660.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P16247707527888013809

`A064911(2*A002260(n+1))`
-/

namespace A143538.P16247707527888013809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * A002260 (n + 1)).toNat

end

end A143538.P16247707527888013809

namespace A143538

/-- `A064911(2*A002260(n+1))` -/
def P16247707527888013809.Spec : Prop :=
  ∀ n, P16247707527888013809.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P12226197555348704936

`A010051(1-A057944(n)+n)`
-/

namespace A143538.P12226197555348704936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (1 - A057944 n + (n : ℤ)).toNat

end

end A143538.P12226197555348704936

namespace A143538

/-- `A010051(1-A057944(n)+n)` -/
def P12226197555348704936.Spec : Prop :=
  ∀ n, P12226197555348704936.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P18310952468300148145

`A010051(1-(A057944(n)-n))`
-/

namespace A143538.P18310952468300148145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (1 - (A057944 n - (n : ℤ))).toNat

end

end A143538.P18310952468300148145

namespace A143538

/-- `A010051(1-(A057944(n)-n))` -/
def P18310952468300148145.Spec : Prop :=
  ∀ n, P18310952468300148145.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P10036419376566942453

`A010051(A057554(2*n+1)+1)`
-/

namespace A143538.P10036419376566942453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A057554 (2 * n + 1) + 1).toNat

end

end A143538.P10036419376566942453

namespace A143538

/-- `A010051(A057554(2*n+1)+1)` -/
def P10036419376566942453.Spec : Prop :=
  ∀ n, P10036419376566942453.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P1182661364062770546

`A045840(∏{e}[A002260(n+1), #+2])`
-/

namespace A143538.P1182661364062770546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 2))

end

end A143538.P1182661364062770546

namespace A143538

/-- `A045840(∏{e}[A002260(n+1), #+2])` -/
def P1182661364062770546.Spec : Prop :=
  ∀ n, P1182661364062770546.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P11983639982857387101

`A010051(A000720(A037126(n+1)))`
-/

namespace A143538.P11983639982857387101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000720 (A037126 (n + 1)).toNat).toNat

end

end A143538.P11983639982857387101

namespace A143538

/-- `A010051(A000720(A037126(n+1)))` -/
def P11983639982857387101.Spec : Prop :=
  ∀ n, P11983639982857387101.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P8578685348477025461

`A064911(A002260(n+1)+A002260(n+1))`
-/

namespace A143538.P8578685348477025461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A002260 (n + 1) + A002260 (n + 1)).toNat

end

end A143538.P8578685348477025461

namespace A143538

/-- `A064911(A002260(n+1)+A002260(n+1))` -/
def P8578685348477025461.Spec : Prop :=
  ∀ n, P8578685348477025461.a n = A143538 (n + 1)

end A143538

/-! ## A143538.P1713146274269288864

`col(n)!²%(col(n)+1)`
-/

namespace A143538.P1713146274269288864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.triCol n) ^ 2 % (SequenceMachineLib.triCol n + 1)

end

end A143538.P1713146274269288864

namespace A143538

/-- `col(n)!²%(col(n)+1)` -/
def P1713146274269288864.Spec : Prop :=
  ∀ n, (P1713146274269288864.a n : ℤ) = A143538 (n + 1)

end A143538

/-!
# A143539: Number of ways to express 2n-1 as p+2a^2; p prime, a > 0.

The programs for A143539, there is no canonical definition to state claims against.
-/

/-! ## A143539.P13907994527391878745

`A046923(n)-A101264(n)`
-/

namespace A143539.P13907994527391878745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 n - A101264 n

end

end A143539.P13907994527391878745

/-! ## A143539.P13572369146794087437

`A046923(n)-A010051(2*n+1)`
-/

namespace A143539.P13572369146794087437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 n - A010051 (2 * n + 1)

end

end A143539.P13572369146794087437

/-! ## A143539.P1903814427841224170

`A046922(2*n+1)-A101264(n)`
-/

namespace A143539.P1903814427841224170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (2 * n + 1) - A101264 n

end

end A143539.P1903814427841224170

/-! ## A143539.P6713723067780783743

`A046922(2*n+1)-A010051(2*n+1)`
-/

namespace A143539.P6713723067780783743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (2 * n + 1) - A010051 (2 * n + 1)

end

end A143539.P6713723067780783743

/-! ## A143539.P8024921665143543959

`A317685(2*n+1)-A317683(2*n+1)`
-/

namespace A143539.P8024921665143543959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317685 (2 * n + 1) - A317683 (2 * n + 1)

end

end A143539.P8024921665143543959

/-! ## A143539.P8634225941328927388

`A046920(2*n+1)-(A046920(2*(n+1))+A010051(2*n+1))`
-/

namespace A143539.P8634225941328927388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (2 * n + 1) - (A046920 (2 * (n + 1)) + A010051 (2 * n + 1))

end

end A143539.P8634225941328927388

/-! ## A143539.P14489028263550251747

`A046923(n)-A107279(2*n+1)`
-/

namespace A143539.P14489028263550251747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 n - A107279 (2 * n + 1)

end

end A143539.P14489028263550251747

/-!
# A143540: Triangle read by rows, (A143538)^2; 1<=k<=n.

The programs for A143540, there is no canonical definition to state claims against.
-/

/-! ## A143540.P10523819661046605426

`A143541(n+1)+T(n-1,k)` with `a(0)=0`
-/

namespace A143540.P10523819661046605426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A143541 (n + 1) + SequenceMachineLib.triUp a n

end

end A143540.P10523819661046605426

/-! ## A143540.P16712477462015430517

`A143537(n+1)*A143538(n+1)`
-/

namespace A143540.P16712477462015430517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143537 (n + 1) * A143538 (n + 1)

end

end A143540.P16712477462015430517

/-! ## A143540.P14767427475332131746

`A010051(A002260(n+1))*A143537(n+1)`
-/

namespace A143540.P14767427475332131746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002260 (n + 1)).toNat * A143537 (n + 1)

end

end A143540.P14767427475332131746

/-! ## A143540.P12733621297027552074

`A010051(A002262(n)+1)*A143537(n+1)`
-/

namespace A143540.P12733621297027552074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002262 n + 1).toNat * A143537 (n + 1)

end

end A143540.P12733621297027552074

/-! ## A143540.P1558936932138751027

`A064911(A077320(n+1))*A143537(n+1)`
-/

namespace A143540.P1558936932138751027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A077320 (n + 1)).toNat * A143537 (n + 1)

end

end A143540.P1558936932138751027

/-! ## A143540.P2144536586405155636

`A064911(A133819(n+1))*A143537(n+1)`
-/

namespace A143540.P2144536586405155636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A133819 (n + 1)).toNat * A143537 (n + 1)

end

end A143540.P2144536586405155636

/-! ## A143540.P6238641046069437413

`A004736(A195184(n+1))*A143538(n+1)`
-/

namespace A143540.P6238641046069437413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A195184 (n + 1)).toNat * A143538 (n + 1)

end

end A143540.P6238641046069437413

/-!
# A143541: Triangle read by rows, T(n,k) = 1 if both n and k are prime, 0 otherwise; 1 <= k <= n.

The programs for A143541, the canonical program `A143541.P8324065334006021306` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143541 has offset 1).

The definition of A143541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143541.P8324065334006021306

`A143536(n+1)*A143538(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143541

/-- `A143536(n+1)*A143538(n+1)` -/
def P8324065334006021306.Spec : Prop :=
  ∀ n, P8324065334006021306.a n = A143541 (n + 1)

theorem P8324065334006021306.correct : P8324065334006021306.Spec := by
  intro n
  simp only [A143541, Nat.add_sub_cancel]

end A143541

/-! ## A143541.P6278836039525035765

`A143536(n+1)*A143542(n+1)`
-/

namespace A143541.P6278836039525035765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1) * A143542 (n + 1)

end

end A143541.P6278836039525035765

namespace A143541

/-- `A143536(n+1)*A143542(n+1)` -/
def P6278836039525035765.Spec : Prop :=
  ∀ n, P6278836039525035765.a n = A143541 (n + 1)

end A143541

/-! ## A143541.P5351865271624492982

`A143542(n+1)%A143544(n+1)`
-/

namespace A143541.P5351865271624492982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143542 (n + 1)) (A143544 (n + 1))

end

end A143541.P5351865271624492982

namespace A143541

/-- `A143542(n+1)%A143544(n+1)` -/
def P5351865271624492982.Spec : Prop :=
  ∀ n, P5351865271624492982.a n = A143541 (n + 1)

end A143541

/-! ## A143541.P974364260201226515

`log2(A143544(n+1))*A143538(n+1)`
-/

namespace A143541.P974364260201226515
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A143544 (n + 1) : ℝ) * (A143538 (n + 1) : ℝ)

end

end A143541.P974364260201226515

namespace A143541

/-- `log2(A143544(n+1))*A143538(n+1)` -/
def P974364260201226515.Spec : Prop :=
  ∀ n, P974364260201226515.a n = (A143541 (n + 1) : ℝ)

end A143541

/-! ## A143541.P804732465735231302

`A010051(A002024(n+1))*A143538(n+1)`
-/

namespace A143541.P804732465735231302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002024 (n + 1)).toNat * A143538 (n + 1)

end

end A143541.P804732465735231302

namespace A143541

/-- `A010051(A002024(n+1))*A143538(n+1)` -/
def P804732465735231302.Spec : Prop :=
  ∀ n, P804732465735231302.a n = A143541 (n + 1)

end A143541

/-! ## A143541.P23331508060660585

`A010051(A002260(n+1))*A143536(n+1)`
-/

namespace A143541.P23331508060660585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002260 (n + 1)).toNat * A143536 (n + 1)

end

end A143541.P23331508060660585

namespace A143541

/-- `A010051(A002260(n+1))*A143536(n+1)` -/
def P23331508060660585.Spec : Prop :=
  ∀ n, P23331508060660585.a n = A143541 (n + 1)

theorem P23331508060660585.correct : P23331508060660585.Spec := by
  intro n
  simp only [A143541, Nat.add_sub_cancel, A143541.P23331508060660585.a, A143541.P8324065334006021306.a, A002260, A002260.P9170571874073898642.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A143536, A143536.P10866340339983663400.a, A143538, A143538.P17358070422668101230.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143541

/-! ## A143541.P2209635328420175546

`A143538(A127739(n+1))*A143538(n+1)`
-/

namespace A143541.P2209635328420175546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A127739 (n + 1)).toNat * A143538 (n + 1)

end

end A143541.P2209635328420175546

namespace A143541

/-- `A143538(A127739(n+1))*A143538(n+1)` -/
def P2209635328420175546.Spec : Prop :=
  ∀ n, P2209635328420175546.a n = A143541 (n + 1)

end A143541

/-! ## A143541.P4757745389010317946

`A143538(A127739(n+1)+1-A143538(n+1))`
-/

namespace A143541.P4757745389010317946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A127739 (n + 1) + (1 - A143538 (n + 1))).toNat

end

end A143541.P4757745389010317946

namespace A143541

/-- `A143538(A127739(n+1)+1-A143538(n+1))` -/
def P4757745389010317946.Spec : Prop :=
  ∀ n, P4757745389010317946.a n = A143541 (n + 1)

end A143541

/-! ## A143541.P16857065081697477734

`A143538(A004736(n+1)+n)*A143538(n+1)`
-/

namespace A143541.P16857065081697477734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A004736 (n + 1) + (n : ℤ)).toNat * A143538 (n + 1)

end

end A143541.P16857065081697477734

namespace A143541

/-- `A143538(A004736(n+1)+n)*A143538(n+1)` -/
def P16857065081697477734.Spec : Prop :=
  ∀ n, P16857065081697477734.a n = A143541 (n + 1)

end A143541

/-! ## A143541.P4421020740840648766

`A143538(A004736(n+1)+n+1-A143538(n+1))`
-/

namespace A143541.P4421020740840648766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A004736 (n + 1) + ((n + 1 : ℤ) - A143538 (n + 1))).toNat

end

end A143541.P4421020740840648766

namespace A143541

/-- `A143538(A004736(n+1)+n+1-A143538(n+1))` -/
def P4421020740840648766.Spec : Prop :=
  ∀ n, P4421020740840648766.a n = A143541 (n + 1)

end A143541

/-! ## A143541.P12515305188103874069

`A143538(A002260(n+1)+A038722(n+1)-A143538(n+1))`
-/

namespace A143541.P12515305188103874069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A002260 (n + 1) + (A038722 (n + 1) - A143538 (n + 1))).toNat

end

end A143541.P12515305188103874069

namespace A143541

/-- `A143538(A002260(n+1)+A038722(n+1)-A143538(n+1))` -/
def P12515305188103874069.Spec : Prop :=
  ∀ n, P12515305188103874069.a n = A143541 (n + 1)

end A143541

/-!
# A143542: Triangle read by rows, A051731 * A143541 as infinite lower triangular matrices; 1<=k<=n.

The programs for A143542, there is no canonical definition to state claims against.
-/

/-! ## A143542.P4083854947218632644

`A143535(n+1)*A143538(n+1)`
-/

namespace A143542.P4083854947218632644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143535 (n + 1) * A143538 (n + 1)

end

end A143542.P4083854947218632644

/-! ## A143542.P17233621202168837850

`A010051(A002260(n+1))*A143535(n+1)`
-/

namespace A143542.P17233621202168837850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002260 (n + 1)).toNat * A143535 (n + 1)

end

end A143542.P17233621202168837850

/-! ## A143542.P16067994145892403067

`A143535(n+1)%(A143540(n+1)+1)`
-/

namespace A143542.P16067994145892403067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143535 (n + 1)) (A143540 (n + 1) + 1)

end

end A143542.P16067994145892403067

/-! ## A143542.P7298713705297356860

`A000035(A250486(n))*A143535(n+1)`
-/

namespace A143542.P7298713705297356860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A250486 n).toNat * A143535 (n + 1)

end

end A143542.P7298713705297356860

/-! ## A143542.P1892365946257755606

`A008290(gcd(A107683(n+1), A299208(2*(n+2))))`
-/

namespace A143542.P1892365946257755606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (Int.gcd (A107683 (n + 1)) (A299208 (2 * (n + 2))))

end

end A143542.P1892365946257755606

/-!
# A143544: Triangle read by rows, T(n,k) = 2 if n is prime, 1 otherwise; 1<=k<=n.

The programs for A143544, the canonical program `A143544.P8602869523701442679` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143544 has offset 1).

The definition of A143544 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143536, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143544.P8602869523701442679

`A143536(C(row(n)+1, 2)+col(n)+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143544

/-- `A143536(C(row(n)+1, 2)+col(n)+1)+1` -/
def P8602869523701442679.Spec : Prop :=
  ∀ n, P8602869523701442679.a n = A143544 (n + 1)

theorem P8602869523701442679.correct : P8602869523701442679.Spec := by
  intro n
  simp only [A143544, Nat.add_sub_cancel]

end A143544

/-! ## A143544.P10257376767065616944

`A143536(1+n)+1`
-/

namespace A143544.P10257376767065616944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (1 + n) + 1

end

end A143544.P10257376767065616944

namespace A143544

/-- `A143536(1+n)+1` -/
def P10257376767065616944.Spec : Prop :=
  ∀ n, P10257376767065616944.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P3710606728576033674

`1+A010051(∑[char[∑[n]]])`
-/

namespace A143544.P3710606728576033674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A010051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143544.P3710606728576033674

namespace A143544

/-- `1+A010051(∑[char[∑[n]]])` -/
def P3710606728576033674.Spec : Prop :=
  ∀ n, P3710606728576033674.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P3864673404445567234

`2-A005171(∑[char[∑[n]]])`
-/

namespace A143544.P3864673404445567234
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143544.P3864673404445567234

namespace A143544

/-- `2-A005171(∑[char[∑[n]]])` -/
def P3864673404445567234.Spec : Prop :=
  ∀ n, P3864673404445567234.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P4314489839252598825

`A010051(1+row(n))+1`
-/

namespace A143544.P4314489839252598825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (1 + SequenceMachineLib.triRow n) + 1

end

end A143544.P4314489839252598825

namespace A143544

/-- `A010051(1+row(n))+1` -/
def P4314489839252598825.Spec : Prop :=
  ∀ n, P4314489839252598825.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P13093282583579538678

`C(2, A105700(row(n)+1))`
-/

namespace A143544.P13093282583579538678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A105700 (SequenceMachineLib.triRow n + 1)).toNat

end

end A143544.P13093282583579538678

namespace A143544

/-- `C(2, A105700(row(n)+1))` -/
def P13093282583579538678.Spec : Prop :=
  ∀ n, (P13093282583579538678.a n : ℤ) = A143544 (n + 1)

end A143544

/-! ## A143544.P8373631779537967965

`A064911(∑[char[∑[n]]]²)+1`
-/

namespace A143544.P8373631779537967965
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + 1

end

end A143544.P8373631779537967965

namespace A143544

/-- `A064911(∑[char[∑[n]]]²)+1` -/
def P8373631779537967965.Spec : Prop :=
  ∀ n, P8373631779537967965.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P13041249833335323971

`A101040(∑[char[∑[n]]]²)+1`
-/

namespace A143544.P13041249833335323971
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + 1

end

end A143544.P13041249833335323971

namespace A143544

/-- `A101040(∑[char[∑[n]]]²)+1` -/
def P13041249833335323971.Spec : Prop :=
  ∀ n, P13041249833335323971.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P12834797603500472988

`A360326(A005145(n+1))`
-/

namespace A143544.P12834797603500472988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360326 (A005145 (n + 1)).toNat

end

end A143544.P12834797603500472988

namespace A143544

/-- `A360326(A005145(n+1))` -/
def P12834797603500472988.Spec : Prop :=
  ∀ n, P12834797603500472988.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P935451634828550427

`(A010051(A003056(n)+1)+6)%5`
-/

namespace A143544.P935451634828550427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010051 (A003056 n + 1).toNat + 6) 5

end

end A143544.P935451634828550427

namespace A143544

/-- `(A010051(A003056(n)+1)+6)%5` -/
def P935451634828550427.Spec : Prop :=
  ∀ n, P935451634828550427.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P3361673536551020287

`C(2, C(2, A000005(A084408(n+1))))`
-/

namespace A143544.P3361673536551020287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 2 (A000005 (A084408 (n + 1)).toNat).toNat)

end

end A143544.P3361673536551020287

namespace A143544

/-- `C(2, C(2, A000005(A084408(n+1))))` -/
def P3361673536551020287.Spec : Prop :=
  ∀ n, (P3361673536551020287.a n : ℤ) = A143544 (n + 1)

end A143544

/-! ## A143544.P297116823413504767

`A131789(A000005(round(sqrt(2*n+1))))`
-/

namespace A143544.P297116823413504767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (A000005 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat).toNat

end

end A143544.P297116823413504767

namespace A143544

/-- `A131789(A000005(round(sqrt(2*n+1))))` -/
def P297116823413504767.Spec : Prop :=
  ∀ n, P297116823413504767.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P15048244702594906105

`A156260(A156260(round(sqrt(2*n+1))))`
-/

namespace A143544.P15048244702594906105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156260 (A156260 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat).toNat

end

end A143544.P15048244702594906105

namespace A143544

/-- `A156260(A156260(round(sqrt(2*n+1))))` -/
def P15048244702594906105.Spec : Prop :=
  ∀ n, P15048244702594906105.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P14179494280164840548

`A014683(A003056(n)+1)-A003056(n)`
-/

namespace A143544.P14179494280164840548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A003056 n + 1).toNat - A003056 n

end

end A143544.P14179494280164840548

namespace A143544

/-- `A014683(A003056(n)+1)-A003056(n)` -/
def P14179494280164840548.Spec : Prop :=
  ∀ n, P14179494280164840548.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P3384713728779492698

`abs(A010051(A003056(n)+1)+A000027(n+1)-1-n)+1`
-/

namespace A143544.P3384713728779492698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010051 (A003056 n + 1).toNat + A000027 (n + 1) - 1 - (n : ℤ)| + 1

end

end A143544.P3384713728779492698

namespace A143544

/-- `abs(A010051(A003056(n)+1)+A000027(n+1)-1-n)+1` -/
def P3384713728779492698.Spec : Prop :=
  ∀ n, P3384713728779492698.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P1887265176443963422

`A000005(A000005(A261211(A000005(A261297(n+1)))))`
-/

namespace A143544.P1887265176443963422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A261211 (A000005 (A261297 (n + 1)).toNat).toNat).toNat).toNat

end

end A143544.P1887265176443963422

namespace A143544

/-- `A000005(A000005(A261211(A000005(A261297(n+1)))))` -/
def P1887265176443963422.Spec : Prop :=
  ∀ n, P1887265176443963422.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P2336137475464273880

`A143538(A127739(n+1))+1`
-/

namespace A143544.P2336137475464273880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A127739 (n + 1)).toNat + 1

end

end A143544.P2336137475464273880

namespace A143544

/-- `A143538(A127739(n+1))+1` -/
def P2336137475464273880.Spec : Prop :=
  ∀ n, P2336137475464273880.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P10019429269849964802

`2-A257232(A004736(n+1)+n)`
-/

namespace A143544.P10019429269849964802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A257232 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A143544.P10019429269849964802

namespace A143544

/-- `2-A257232(A004736(n+1)+n)` -/
def P10019429269849964802.Spec : Prop :=
  ∀ n, P10019429269849964802.a n = A143544 (n + 1)

end A143544

/-! ## A143544.P18069518989673726054

`A341488(A053657(A166469(A000194(2*n+1))))`
-/

namespace A143544.P18069518989673726054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341488 (A053657 (A166469 (A000194 (2 * n + 1)).toNat).toNat).toNat

end

end A143544.P18069518989673726054

namespace A143544

/-- `A341488(A053657(A166469(A000194(2*n+1))))` -/
def P18069518989673726054.Spec : Prop :=
  ∀ n, P18069518989673726054.a n = A143544 (n + 1)

end A143544

/-!
# A143545: a(n) = n unless n is a prime, in which case a(n) = 2n.

The programs for A143545, the canonical program `A143545.P10821814786316977648` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143545 has offset 1).

The definition of A143545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143545.P10821814786316977648

`n+1+A061397(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143545

/-- `n+1+A061397(n+1)` -/
def P10821814786316977648.Spec : Prop :=
  ∀ n, P10821814786316977648.a n = A143545 (n + 1)

theorem P10821814786316977648.correct : P10821814786316977648.Spec := by
  intro n
  simp only [A143545, Nat.add_sub_cancel]

end A143545

/-! ## A143545.P18342705301033507571

`∑{p}[1+n, C(#, n)]+n+1`
-/

namespace A143545.P18342705301033507571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + (n + 1)

end

end A143545.P18342705301033507571

namespace A143545

/-- `∑{p}[1+n, C(#, n)]+n+1` -/
def P18342705301033507571.Spec : Prop :=
  ∀ n, (P18342705301033507571.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P11170725439509973338

`(n+1)*C(2, ∑{e}[n+1, #])!`
-/

namespace A143545.P11170725439509973338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A143545.P11170725439509973338

namespace A143545

/-- `(n+1)*C(2, ∑{e}[n+1, #])!` -/
def P11170725439509973338.Spec : Prop :=
  ∀ n, (P11170725439509973338.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P2127600453274933837

`(n+1)*∏{p}[n+1, ceil(#/n)]`
-/

namespace A143545.P2127600453274933837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / (n : ℚ)⌉)

end

end A143545.P2127600453274933837

namespace A143545

/-- `(n+1)*∏{p}[n+1, ceil(#/n)]` -/
def P2127600453274933837.Spec : Prop :=
  ∀ n, P2127600453274933837.a n = A143545 (n + 1)

end A143545

/-! ## A143545.P3488042898909174004

`∑{p}[n+1, floor(#^(#-n))]+1+n`
-/

namespace A143545.P3488042898909174004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) ^ ((p : ℤ) - (n : ℤ) : ℤ)⌋ + 1 + (n : ℤ)

end

end A143545.P3488042898909174004

namespace A143545

/-- `∑{p}[n+1, floor(#^(#-n))]+1+n` -/
def P3488042898909174004.Spec : Prop :=
  ∀ n, P3488042898909174004.a n = A143545 (n + 1)

end A143545

/-! ## A143545.P4959803516952775905

`(C(C(2, ∑{e}[n+1, #]), 2)+1)*(n+1)`
-/

namespace A143545.P4959803516952775905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2 + 1) * (n + 1)

end

end A143545.P4959803516952775905

namespace A143545

/-- `(C(C(2, ∑{e}[n+1, #]), 2)+1)*(n+1)` -/
def P4959803516952775905.Spec : Prop :=
  ∀ n, (P4959803516952775905.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P15636902825182718479

`(n+1)*(C(n, ∏{e}[n+1, n*#])+1)`
-/

namespace A143545.P15636902825182718479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p) + 1)

end

end A143545.P15636902825182718479

namespace A143545

/-- `(n+1)*(C(n, ∏{e}[n+1, n*#])+1)` -/
def P15636902825182718479.Spec : Prop :=
  ∀ n, (P15636902825182718479.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P8211695462910412577

`(n+1)*(∑{p}[n+1, floor(#/(n+1))]+1)`
-/

namespace A143545.P8211695462910412577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋ + 1)

end

end A143545.P8211695462910412577

namespace A143545

/-- `(n+1)*(∑{p}[n+1, floor(#/(n+1))]+1)` -/
def P8211695462910412577.Spec : Prop :=
  ∀ n, P8211695462910412577.a n = A143545 (n + 1)

end A143545

/-! ## A143545.P13012798084144788101

`A175030(n+1)-(n+1)`
-/

namespace A143545.P13012798084144788101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175030 (n + 1) - (n + 1 : ℤ)

end

end A143545.P13012798084144788101

namespace A143545

/-- `A175030(n+1)-(n+1)` -/
def P13012798084144788101.Spec : Prop :=
  ∀ n, P13012798084144788101.a n = A143545 (n + 1)

end A143545

/-! ## A143545.P4240131138225567525

`lcm(n+1, A074828(n+1))`
-/

namespace A143545.P4240131138225567525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A074828 (n + 1))

end

end A143545.P4240131138225567525

namespace A143545

/-- `lcm(n+1, A074828(n+1))` -/
def P4240131138225567525.Spec : Prop :=
  ∀ n, (P4240131138225567525.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P4432097156616512244

`∑{d}[A089026(n+1), #]+n`
-/

namespace A143545.P4432097156616512244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + n

end

end A143545.P4432097156616512244

namespace A143545

/-- `∑{d}[A089026(n+1), #]+n` -/
def P4432097156616512244.Spec : Prop :=
  ∀ n, (P4432097156616512244.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P4318794725783674051

`(n+1)*(A010051(n+1)+1)`
-/

namespace A143545.P4318794725783674051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010051 (n + 1) + 1)

end

end A143545.P4318794725783674051

namespace A143545

/-- `(n+1)*(A010051(n+1)+1)` -/
def P4318794725783674051.Spec : Prop :=
  ∀ n, P4318794725783674051.a n = A143545 (n + 1)

theorem P4318794725783674051.correct : P4318794725783674051.Spec := by
  intro n
  simp only [A143545, Nat.add_sub_cancel, A143545.P4318794725783674051.a, A143545.P10821814786316977648.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143545

/-! ## A143545.P14817905954767483421

`(n+1)*(2-A005171(n+1))`
-/

namespace A143545.P14817905954767483421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A005171 (n + 1))

end

end A143545.P14817905954767483421

namespace A143545

/-- `(n+1)*(2-A005171(n+1))` -/
def P14817905954767483421.Spec : Prop :=
  ∀ n, P14817905954767483421.a n = A143545 (n + 1)

theorem P14817905954767483421.correct : P14817905954767483421.Spec := by
  intro n
  simp only [A143545, Nat.add_sub_cancel, A143545.P14817905954767483421.a, A143545.P10821814786316977648.a, A005171, A005171.P15860856746370777121.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143545

/-! ## A143545.P3483168921578834641

`2*(n+1)-A191558(n+1)`
-/

namespace A143545.P3483168921578834641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A191558 (n + 1)

end

end A143545.P3483168921578834641

namespace A143545

/-- `2*(n+1)-A191558(n+1)` -/
def P3483168921578834641.Spec : Prop :=
  ∀ n, P3483168921578834641.a n = A143545 (n + 1)

theorem P3483168921578834641.correct : P3483168921578834641.Spec := by
  intro n
  simp only [A143545, Nat.add_sub_cancel, A143545.P3483168921578834641.a, A143545.P10821814786316977648.a, A061397, A061397.P17730824645895443051.a, A191558, A191558.P14009675995309042097.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143545

/-! ## A143545.P11482721836340217051

`4*(n+1)-A175029(n+1)`
-/

namespace A143545.P11482721836340217051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A175029 (n + 1)

end

end A143545.P11482721836340217051

namespace A143545

/-- `4*(n+1)-A175029(n+1)` -/
def P11482721836340217051.Spec : Prop :=
  ∀ n, P11482721836340217051.a n = A143545 (n + 1)

end A143545

/-! ## A143545.P11696466343946922395

`(n+1)*(A014683(n+1)-n)`
-/

namespace A143545.P11696466343946922395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A014683 (n + 1) - (n : ℤ))

end

end A143545.P11696466343946922395

namespace A143545

/-- `(n+1)*(A014683(n+1)-n)` -/
def P11696466343946922395.Spec : Prop :=
  ∀ n, P11696466343946922395.a n = A143545 (n + 1)

theorem P11696466343946922395.correct : P11696466343946922395.Spec := by
  intro n
  simp only [A143545, Nat.add_sub_cancel, A143545.P11696466343946922395.a, A143545.P10821814786316977648.a, A014683, A014683.P4274130993241959458.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143545

/-! ## A143545.P8468581311746819912

`(n+1)*C(2, A001222(n+1))!`
-/

namespace A143545.P8468581311746819912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (Nat.choose 2 (A001222 (n + 1)).toNat)

end

end A143545.P8468581311746819912

namespace A143545

/-- `(n+1)*C(2, A001222(n+1))!` -/
def P8468581311746819912.Spec : Prop :=
  ∀ n, (P8468581311746819912.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P13939764633553233409

`(n+1)*C(2, C(2, A000005(n+1)))`
-/

namespace A143545.P13939764633553233409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 2 (Nat.choose 2 (A000005 (n + 1)).toNat)

end

end A143545.P13939764633553233409

namespace A143545

/-- `(n+1)*C(2, C(2, A000005(n+1)))` -/
def P13939764633553233409.Spec : Prop :=
  ∀ n, (P13939764633553233409.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P11136982731985171700

`(n+1)*C(2, C(n+2, A000203(n+1)))`
-/

namespace A143545.P11136982731985171700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 2 (Nat.choose (n + 2) (A000203 (n + 1)).toNat)

end

end A143545.P11136982731985171700

namespace A143545

/-- `(n+1)*C(2, C(n+2, A000203(n+1)))` -/
def P11136982731985171700.Spec : Prop :=
  ∀ n, (P11136982731985171700.a n : ℤ) = A143545 (n + 1)

end A143545

/-! ## A143545.P9188791101252760803

`A000203(A089026(n+1))+n`
-/

namespace A143545.P9188791101252760803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A089026 (n + 1)).toNat + (n : ℤ)

end

end A143545.P9188791101252760803

namespace A143545

/-- `A000203(A089026(n+1))+n` -/
def P9188791101252760803.Spec : Prop :=
  ∀ n, P9188791101252760803.a n = A143545 (n + 1)

end A143545

/-!
# A143546: G.f. A(x) satisfies A(x) = 1 + x*A(x)^3*A(-x)^2.

The programs for A143546, there is no canonical definition to state claims against.
-/

/-! ## A143546.P324038549608905434

`A118968(2*n)`
-/

namespace A143546.P324038549608905434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118968 (2 * n)

end

end A143546.P324038549608905434

/-! ## A143546.P6195160493984027315

`2*A303871(n)-A054365(n)`
-/

namespace A143546.P6195160493984027315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303871 n - A054365 n

end

end A143546.P6195160493984027315

/-! ## A143546.P2244220406674965392

`A370062(∑[n+3])`
-/

namespace A143546.P2244220406674965392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143546.P2244220406674965392

/-! ## A143546.P5676924569384044488

`A370062(A165157(2*(n+1)))+A000007(2*n+1)`
-/

namespace A143546.P5676924569384044488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370062 (A165157 (2 * (n + 1))).toNat + A000007 (2 * n + 1)

end

end A143546.P5676924569384044488

/-! ## A143546.P13148811887980773892

`A369929(A000217(n+4)+n)`
-/

namespace A143546.P13148811887980773892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369929 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A143546.P13148811887980773892

/-!
# A143547: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4*A(-x)^3.

The programs for A143547, there is no canonical definition to state claims against.
-/

/-! ## A143547.P5550013176560869171

`2*A389937(n)-A389936(n)`
-/

namespace A143547.P5550013176560869171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A389937 n - A389936 n

end

end A143547.P5550013176560869171

/-! ## A143547.P8602210469078889275

`A386380(3*n)`
-/

namespace A143547.P8602210469078889275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (3 * n)

end

end A143547.P8602210469078889275

/-! ## A143547.P3533741686302702523

`2*A361239(C(2*(n+2)-n, 2)+n)-A361236(C(2*(n+2)-n, 2)+n)`
-/

namespace A143547.P3533741686302702523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A361239 (Nat.choose ((2 * (n + 2) : ℤ) - (n : ℤ)).toNat 2 + n) - A361236 (Nat.choose ((2 * (n + 2) : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A143547.P3533741686302702523

/-! ## A143547.P7467855560767549147

`2*A361239(C(2*(n+2)-n, 2)+n)-A361236(A052905(n+1)+1)`
-/

namespace A143547.P7467855560767549147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A361239 (Nat.choose ((2 * (n + 2) : ℤ) - (n : ℤ)).toNat 2 + n) - A361236 (A052905 (n + 1) + 1).toNat

end

end A143547.P7467855560767549147

/-! ## A143547.P3420015699889382228

`A370062(A000007(n)+∑[n+5]+5)`
-/

namespace A143547.P3420015699889382228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370062 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ)).toNat

end

end A143547.P3420015699889382228

/-!
# A143549: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4*A(-x).

The programs for A143549, there is no canonical definition to state claims against.
-/

/-! ## A143549.P17426126130026934802

`A232527(or(n, A133494(n)))`
-/

namespace A143549.P17426126130026934802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232527 (Int.lor (n : ℤ) (A133494 n)).toNat

end

end A143549.P17426126130026934802

/-! ## A143549.P7901338215084700162

`A063882(A015523(n)+A001147(n))`
-/

namespace A143549.P7901338215084700162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (A015523 n + A001147 n).toNat

end

end A143549.P7901338215084700162

/-!
# A143550: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4*A(-x)^2.

The programs for A143550, there is no canonical definition to state claims against.
-/

/-! ## A143550.P16314415542056013059

`A219539(A120963(n)+5)`
-/

namespace A143550.P16314415542056013059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219539 (A120963 n + 5).toNat

end

end A143550.P16314415542056013059

/-! ## A143550.P2453771729890383367

`A167865(2*(A216583(n)+1))`
-/

namespace A143550.P2453771729890383367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (2 * (A216583 n + 1)).toNat

end

end A143550.P2453771729890383367

/-!
# A143551: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5*A(-x).

The programs for A143551, there is no canonical definition to state claims against.
-/

/-! ## A143551.P10178057845576345376

`A030058(n!)^floor(atan(n))`
-/

namespace A143551.P10178057845576345376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030058 (Nat.factorial n) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A143551.P10178057845576345376

/-!
# A143552: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5*A(-x)^2.

The programs for A143552, there is no canonical definition to state claims against.
-/

/-! ## A143552.P2991391168876227892

`A235111(A005144(n+2))+A007678(n+1)`
-/

namespace A143552.P2991391168876227892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235111 (A005144 (n + 2)).toNat + A007678 (n + 1)

end

end A143552.P2991391168876227892

/-!
# A143553: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5*A(-x)^3.

The programs for A143553, there is no canonical definition to state claims against.
-/

/-! ## A143553.P90960957275967912

`∑[A336402(A294159(n))]-n`
-/

namespace A143553.P90960957275967912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336402 (A294159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A143553.P90960957275967912

/-! ## A143553.P9551424552494714233

`A270666(n)+A129714(A270598(n))`
-/

namespace A143553.P9551424552494714233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270666 n + A129714 (A270598 n).toNat

end

end A143553.P9551424552494714233

/-!
# A143554: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5*A(-x)^4.

The programs for A143554, there is no canonical definition to state claims against.
-/

/-! ## A143554.P2397024198512376250

`A302439(A033874(n!))`
-/

namespace A143554.P2397024198512376250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302439 (A033874 (Nat.factorial n)).toNat

end

end A143554.P2397024198512376250

/-! ## A143554.P3193159104253621746

`A065648(xor(n+1, A207652(n)))`
-/

namespace A143554.P3193159104253621746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (Int.xor (n + 1 : ℤ) (A207652 n)).toNat

end

end A143554.P3193159104253621746

/-! ## A143554.P16593545160714961400

`A070939(A002664(2*n+1))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A143554.P16593545160714961400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A070939 (A002664 (2 * n + 1)).toNat * a (n - 2)

end

end A143554.P16593545160714961400

/-!
# A143555: G.f. satisfies: A(x) = 1 + x*A(x)^2/A(-x)^2.

The programs for A143555, there is no canonical definition to state claims against.
-/

/-! ## A143555.P9138744960040775031

`xor(3, A146315(A007827(n+2)))`
-/

namespace A143555.P9138744960040775031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A146315 (A007827 (n + 2)).toNat)

end

end A143555.P9138744960040775031

/-! ## A143555.P10171844990550067421

`A003059(A318694(n))*A098859(n)`
-/

namespace A143555.P10171844990550067421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A318694 n).toNat * A098859 n

end

end A143555.P10171844990550067421

/-!
# A143556: G.f. satisfies: A(x) = 1 + x*A(x)^3/A(-x)^3.

The programs for A143556, there is no canonical definition to state claims against.
-/

/-! ## A143556.P14185259413611450959

`A266986(A034234(n))`
-/

namespace A143556.P14185259413611450959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266986 (A034234 n).toNat

end

end A143556.P14185259413611450959

/-! ## A143556.P7345229732837546919

`or(floor(n/2^val(n+1, 2)), A000593(A318696(n+1)))`
-/

namespace A143556.P7345229732837546919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ (A000593 (A318696 (n + 1)).toNat)

end

end A143556.P7345229732837546919

/-!
# A143557: G.f. satisfies: A(x) = 1 + x*A(x)^4/A(-x)^4.

The programs for A143557, there is no canonical definition to state claims against.
-/

/-! ## A143557.P8426389279689278902

`A007614(2*A143564(n))`
-/

namespace A143557.P8426389279689278902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (2 * A143564 n).toNat

end

end A143557.P8426389279689278902

/-! ## A143557.P14761240790340120662

`A171462(A200312(n)+A000110(n))`
-/

namespace A143557.P14761240790340120662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A200312 n + A000110 n).toNat

end

end A143557.P14761240790340120662

/-!
# A143558: G.f. satisfies: A(x) = 1 + x*A(x)^5/A(-x)^5.

The programs for A143558, there is no canonical definition to state claims against.
-/

/-! ## A143558.P14813220058518395976

`A051066(∏[xor(3, 2*n)])`
-/

namespace A143558.P14813220058518395976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051066 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A143558.P14813220058518395976

/-!
# A143559: G.f. satisfies: A(x) = 1 + x*A(x)^6/A(-x)^6.

The programs for A143559, there is no canonical definition to state claims against.
-/

/-! ## A143559.P16471073305716868700

`A384039(A092469(n))`
-/

namespace A143559.P16471073305716868700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384039 (A092469 n).toNat

end

end A143559.P16471073305716868700

/-!
# A143560: G.f. satisfies: A(x) = 1 + x*A(x)/A(-x) + x^2*A(x)^2/A(-x)^2.

The programs for A143560, there is no canonical definition to state claims against.
-/

/-! ## A143560.P1146206879820302784

`2*A122293(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A143560.P1146206879820302784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * A122293 (a (n - 1)).toNat

end

end A143560.P1146206879820302784

/-! ## A143560.P14969058048233638153

`2*A122319(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A143560.P14969058048233638153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * A122319 (a (n - 1)).toNat

end

end A143560.P14969058048233638153

/-! ## A143560.P3130102563622826117

`A254075(2^n-∑{e}[n+1, #])`
-/

namespace A143560.P3130102563622826117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254075 (2 ^ n - ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A143560.P3130102563622826117

/-!
# A143561: G.f. satisfies: A(x) = ( 1 + x*A(x)/A(-x) )^2.

The programs for A143561, there is no canonical definition to state claims against.
-/

/-! ## A143561.P11918720898826316075

`∑{#}[n, A143555(#)*A143555(n-#)]`
-/

namespace A143561.P11918720898826316075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A143555 k * A143555 (n - k)

end

end A143561.P11918720898826316075

/-! ## A143561.P544528483240801404

`A344296(A385267(n)+n²)`
-/

namespace A143561.P544528483240801404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A385267 n + (n ^ 2 : ℤ)).toNat

end

end A143561.P544528483240801404

/-!
# A143562: G.f. satisfies: A(x) = 1 + x*A(x)^3/A(-x)^2.

The programs for A143562, there is no canonical definition to state claims against.
-/

/-! ## A143562.P3440774513125012148

`A143556(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A143562.P3440774513125012148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A143556 n - a (n - 2)

end

end A143562.P3440774513125012148

/-! ## A143562.P1041538574805880598

`A157181(A013025(n))`
-/

namespace A143562.P1041538574805880598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157181 (A013025 n).toNat

end

end A143562.P1041538574805880598

/-!
# A143563: G.f. satisfies: A(x) = 1 + x*A(x)^4/A(-x)^2.

The programs for A143563, there is no canonical definition to state claims against.
-/

/-! ## A143563.P689309134688957415

`A325680(char[comp[∑[n]]]+n²)`
-/

namespace A143563.P689309134688957415
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
  A325680 ((if ∃ j, f1 j = n then 1 else 0) + n ^ 2)

end

end A143563.P689309134688957415

/-!
# A143564: G.f. satisfies: A(x) = 1 + x*A(x)^4/A(-x)^3.

The programs for A143564, there is no canonical definition to state claims against.
-/

/-! ## A143564.P5101094493572772570

`A143557(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A143564.P5101094493572772570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A143557 n - a (n - 2)

end

end A143564.P5101094493572772570

/-!
# A143565: Triangle T(n,k), n>=1, 1<=k<=n, where the e.g.f. for column k satisfies: A_k(x) = exp(x*A_k(x^k/k!)).

The programs for A143565, there is no canonical definition to state claims against.
-/

/-! ## A143565.P3829132279779533745

`A274821(2^n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A143565.P3829132279779533745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274821 (2 ^ n) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A143565.P3829132279779533745

/-! ## A143565.P4408842984789617110

`A350562(A008085(n))`
-/

namespace A143565.P4408842984789617110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350562 (A008085 n).toNat

end

end A143565.P4408842984789617110

/-! ## A143565.P15916535485700967290

`A112480(A308704(n+2))`
-/

namespace A143565.P15916535485700967290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112480 (A308704 (n + 2)).toNat

end

end A143565.P15916535485700967290

/-!
# A143566: E.g.f. satisfies A(x) = exp(x*A(x^2/2!)).

The programs for A143566, there is no canonical definition to state claims against.
-/

/-! ## A143566.P8810474729309199313

`A143565(A238531(n))`
-/

namespace A143566.P8810474729309199313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143565 (A238531 n).toNat

end

end A143566.P8810474729309199313

/-! ## A143566.P10909446415257177713

`A143565(A065475(∑[n+1]-2*n))`
-/

namespace A143566.P10909446415257177713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143565 (A065475 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n)).toNat

end

end A143566.P10909446415257177713

/-! ## A143566.P14426424130928213691

`A143565(A133263(n)-A254667(n))`
-/

namespace A143566.P14426424130928213691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143565 (A133263 n - A254667 n).toNat

end

end A143566.P14426424130928213691

/-! ## A143566.P11678786323960871625

`A143565(A152950(n+1)-A184985(n+1))`
-/

namespace A143566.P11678786323960871625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143565 (A152950 (n + 1) - A184985 (n + 1)).toNat

end

end A143566.P11678786323960871625

/-! ## A143566.P18008677136610986807

`A143565(A152948(n+1)+A097806(A004188(n)))`
-/

namespace A143566.P18008677136610986807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143565 (A152948 (n + 1) + A097806 (A004188 n).toNat).toNat

end

end A143566.P18008677136610986807

/-!
# A143568: E.g.f. satisfies A(x) = exp(x*A(x^4/4!)).

The programs for A143568, there is no canonical definition to state claims against.
-/

/-! ## A143568.P15111497296322836496

`A354552(n)+A185017(A000045(n))`
-/

namespace A143568.P15111497296322836496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354552 n + A185017 (A000045 n).toNat

end

end A143568.P15111497296322836496

/-! ## A143568.P3455290365360454109

`A354552(n)+A000007(A223718(n))`
-/

namespace A143568.P3455290365360454109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354552 n + A000007 (A223718 n).toNat

end

end A143568.P3455290365360454109

/-! ## A143568.P11166323500071483728

`A354552(n)+A000007(A375621(n))`
-/

namespace A143568.P11166323500071483728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354552 n + A000007 (A375621 n).toNat

end

end A143568.P11166323500071483728

/-! ## A143568.P10191832514102173449

`A354552(n)+A324679(A324690(n))`
-/

namespace A143568.P10191832514102173449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354552 n + A324679 (A324690 n).toNat

end

end A143568.P10191832514102173449

/-! ## A143568.P6630768307705456082

`A057427(A025047(n))*A354552(n)`
-/

namespace A143568.P6630768307705456082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025047 n).toNat * A354552 n

end

end A143568.P6630768307705456082

/-!
# A143570: E.g.f. satisfies A(x) = exp(x*A(x^6/6!)).

The programs for A143570, there is no canonical definition to state claims against.
-/

/-! ## A143570.P1164951973817555330

`A028310(n*A000579(abs(1-n))+1)`
-/

namespace A143570.P1164951973817555330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A000579 |1 - (n : ℤ)|.toNat + 1).toNat

end

end A143570.P1164951973817555330

/-! ## A143570.P12878246934932354935

`A008619(Δ[A088625(n)])`
-/

namespace A143570.P12878246934932354935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A143570.P12878246934932354935

/-! ## A143570.P8512392118790423193

`A052938(Δ[A088625(n)])`
-/

namespace A143570.P8512392118790423193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (f1 (n + 1) - f1 n).toNat

end

end A143570.P8512392118790423193

/-! ## A143570.P7998555970533802166

`A080513(Δ[A088625(n)])`
-/

namespace A143570.P7998555970533802166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (f1 (n + 1) - f1 n).toNat

end

end A143570.P7998555970533802166

/-! ## A143570.P3807596570822502184

`A008619(14*A290995(n))`
-/

namespace A143570.P3807596570822502184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (14 * A290995 n).toNat

end

end A143570.P3807596570822502184

/-!
# A143572: E.g.f. satisfies A(x) = exp(x*A(x^8/8!)).

The programs for A143572, there is no canonical definition to state claims against.
-/

/-! ## A143572.P9039128174982930578

`A017173(C(n, 9))`
-/

namespace A143572.P9039128174982930578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (Nat.choose n 9)

end

end A143572.P9039128174982930578

/-! ## A143572.P2653235976528195429

`sqrt(A017174(C(n, 9)))`
-/

namespace A143572.P2653235976528195429
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017174 (Nat.choose n 9) : ℝ)

end

end A143572.P2653235976528195429

/-! ## A143572.P17304420397598531454

`A008591(C(n, 9)+1)-8`
-/

namespace A143572.P17304420397598531454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (Nat.choose n 9 + 1) - 8

end

end A143572.P17304420397598531454

/-! ## A143572.P776803618937244930

`A017173(A115205(n)-1)`
-/

namespace A143572.P776803618937244930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A115205 n - 1).toNat

end

end A143572.P776803618937244930

/-! ## A143572.P4872522486465260200

`A017173(A306860(n)-1)`
-/

namespace A143572.P4872522486465260200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A306860 n - 1).toNat

end

end A143572.P4872522486465260200

/-!
# A143573: E.g.f. satisfies A(x) = exp(x*A(x^9/9!)).

The programs for A143573, there is no canonical definition to state claims against.
-/

/-! ## A143573.P8795994374586905589

`A017281(C(n, 10))`
-/

namespace A143573.P8795994374586905589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (Nat.choose n 10)

end

end A143573.P8795994374586905589

/-! ## A143573.P13434912388956801053

`A017281(Δ[A212390(n)])`
-/

namespace A143573.P13434912388956801053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (f1 (n + 1) - f1 n).toNat

end

end A143573.P13434912388956801053

/-! ## A143573.P8297713336038905426

`A008592(A212389(n))-9`
-/

namespace A143573.P8297713336038905426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A212389 n).toNat - 9

end

end A143573.P8297713336038905426

/-! ## A143573.P3428521522491725824

`A016861(2*C(n, 10))`
-/

namespace A143573.P3428521522491725824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * Nat.choose n 10)

end

end A143573.P3428521522491725824

/-! ## A143573.P11709126486028887260

`A267872(A008706(C(n, 10)))`
-/

namespace A143573.P11709126486028887260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A008706 (Nat.choose n 10)).toNat

end

end A143573.P11709126486028887260

/-!
# A143574: Sum of all distinct squares occurring when partitioning n into two squares.

The programs for A143574, the canonical program `A143574.P16583844992987890859` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143574 has offset 0).

The definition of A143574 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143574.P16583844992987890859

`∑{#}[n-1, (#+1)*A010052(#+1)*A010052(n-(#+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143574

/-- `∑{#}[n-1, (#+1)*A010052(#+1)*A010052(n-(#+1))]` -/
def P16583844992987890859.Spec : Prop :=
  ∀ n, P16583844992987890859.a n = A143574 n

theorem P16583844992987890859.correct : P16583844992987890859.Spec := by
  intro n
  simp only [A143574]

end A143574

/-! ## A143574.P6219052309077414937

`n/2*A000925(n)`
-/

namespace A143574.P6219052309077414937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000925 n : ℚ)

end

end A143574.P6219052309077414937

namespace A143574

/-- `n/2*A000925(n)` -/
def P6219052309077414937.Spec : Prop :=
  ∀ n, P6219052309077414937.a n = (A143574 n : ℚ)

end A143574

/-! ## A143574.P11028937584758535852

`n*(A025435(n)+A000161(n))/2`
-/

namespace A143574.P11028937584758535852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A025435 n + A000161 n : ℚ) / 2)

end

end A143574.P11028937584758535852

namespace A143574

/-- `n*(A025435(n)+A000161(n))/2` -/
def P11028937584758535852.Spec : Prop :=
  ∀ n, P11028937584758535852.a n = (A143574 n : ℚ)

end A143574

/-! ## A143574.P16633336847842658899

`A014682(n*A000925(n))`
-/

namespace A143574.P16633336847842658899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n : ℤ) * A000925 n).toNat

end

end A143574.P16633336847842658899

namespace A143574

/-- `A014682(n*A000925(n))` -/
def P16633336847842658899.Spec : Prop :=
  ∀ n, P16633336847842658899.a n = A143574 n

end A143574

/-! ## A143574.P15619673924969783098

`A001281(n*A000925(n))`
-/

namespace A143574.P15619673924969783098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n : ℤ) * A000925 n).toNat

end

end A143574.P15619673924969783098

namespace A143574

/-- `A001281(n*A000925(n))` -/
def P15619673924969783098.Spec : Prop :=
  ∀ n, P15619673924969783098.a n = A143574 n

end A143574

/-! ## A143574.P14126407480291410375

`A004526(n*A000925(n))`
-/

namespace A143574.P14126407480291410375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * A000925 n).toNat

end

end A143574.P14126407480291410375

namespace A143574

/-- `A004526(n*A000925(n))` -/
def P14126407480291410375.Spec : Prop :=
  ∀ n, P14126407480291410375.a n = A143574 n

end A143574

/-! ## A143574.P2393539396815106713

`A025480(n*A000925(n))`
-/

namespace A143574.P2393539396815106713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ((n : ℤ) * A000925 n).toNat

end

end A143574.P2393539396815106713

namespace A143574

/-- `A025480(n*A000925(n))` -/
def P2393539396815106713.Spec : Prop :=
  ∀ n, P2393539396815106713.a n = A143574 n

end A143574

/-! ## A143574.P5630956578536574183

`A026741(n*A000925(n))`
-/

namespace A143574.P5630956578536574183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n : ℤ) * A000925 n).toNat

end

end A143574.P5630956578536574183

namespace A143574

/-- `A026741(n*A000925(n))` -/
def P5630956578536574183.Spec : Prop :=
  ∀ n, P5630956578536574183.a n = A143574 n

end A143574

/-! ## A143574.P1781577112085819273

`A110654(n*A000925(n))`
-/

namespace A143574.P1781577112085819273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n : ℤ) * A000925 n).toNat

end

end A143574.P1781577112085819273

namespace A143574

/-- `A110654(n*A000925(n))` -/
def P1781577112085819273.Spec : Prop :=
  ∀ n, P1781577112085819273.a n = A143574 n

end A143574

/-! ## A143574.P15373682904782237225

`A142150(n*A000925(n))`
-/

namespace A143574.P15373682904782237225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((n : ℤ) * A000925 n).toNat

end

end A143574.P15373682904782237225

namespace A143574

/-- `A142150(n*A000925(n))` -/
def P15373682904782237225.Spec : Prop :=
  ∀ n, P15373682904782237225.a n = A143574 n

end A143574

/-! ## A143574.P8759064427724992634

`A266285(n*A000925(n))-1`
-/

namespace A143574.P8759064427724992634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 ((n : ℤ) * A000925 n).toNat - 1

end

end A143574.P8759064427724992634

namespace A143574

/-- `A266285(n*A000925(n))-1` -/
def P8759064427724992634.Spec : Prop :=
  ∀ n, P8759064427724992634.a n = A143574 n

end A143574

/-! ## A143574.P945797969672833475

`A002265(2*n*A000925(n))`
-/

namespace A143574.P945797969672833475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * ((n : ℤ) * A000925 n)).toNat

end

end A143574.P945797969672833475

namespace A143574

/-- `A002265(2*n*A000925(n))` -/
def P945797969672833475.Spec : Prop :=
  ∀ n, P945797969672833475.a n = A143574 n

end A143574

/-! ## A143574.P8958534519560878385

`n/2*A045847(∑[n+3])`
-/

namespace A143574.P8958534519560878385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A045847 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A143574.P8958534519560878385

namespace A143574

/-- `n/2*A045847(∑[n+3])` -/
def P8958534519560878385.Spec : Prop :=
  ∀ n, P8958534519560878385.a n = (A143574 n : ℚ)

end A143574

/-!
# A143575: Numbers m such that A143574(m) = m.

The programs for A143575, the canonical program `A143575.P15638247367889798217` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143575 has offset 1).

The definition of A143575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143575.P10158781233223720146

`eq[n, A143574(n)]`
-/

namespace A143575.P10158781233223720146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143575.P10158781233223720146

namespace A143575

/-- `eq[n, A143574(n)]` -/
def P10158781233223720146.Spec : Prop :=
  ∀ n, (P10158781233223720146.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P18261361654326279703

`eq[n, n/2*A000925(n)]`
-/

namespace A143575.P18261361654326279703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000925 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A143575.P18261361654326279703

namespace A143575

/-- `eq[n, n/2*A000925(n)]` -/
def P18261361654326279703.Spec : Prop :=
  ∀ n, (P18261361654326279703.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P16603764273407145717

`eq[2, A000925(A028310(n))]`
-/

namespace A143575.P16603764273407145717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143575.P16603764273407145717

namespace A143575

/-- `eq[2, A000925(A028310(n))]` -/
def P16603764273407145717.Spec : Prop :=
  ∀ n, (P16603764273407145717.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P4997817230781084617

`eq[A000925(n), A040000(n)]`
-/

namespace A143575.P4997817230781084617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P4997817230781084617

namespace A143575

/-- `eq[A000925(n), A040000(n)]` -/
def P4997817230781084617.Spec : Prop :=
  ∀ n, (P4997817230781084617.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P15638247367889798217

`eq[A125061(n), A169695(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143575

/-- `eq[A125061(n), A169695(n)]` -/
def P15638247367889798217.Spec : Prop :=
  ∀ n, (P15638247367889798217.a n : ℤ) = A143575 (n + 1)

theorem P15638247367889798217.correct : P15638247367889798217.Spec := by
  intro n
  simp only [A143575, Nat.add_sub_cancel]

end A143575

/-! ## A143575.P5781558093316498723

`eq[A000925(n), A036453(n+1)]`
-/

namespace A143575.P5781558093316498723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P5781558093316498723

namespace A143575

/-- `eq[A000925(n), A036453(n+1)]` -/
def P5781558093316498723.Spec : Prop :=
  ∀ n, (P5781558093316498723.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P2322281325305761778

`eq[A057427(n)+1, A000925(n)]`
-/

namespace A143575.P2322281325305761778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P2322281325305761778

namespace A143575

/-- `eq[A057427(n)+1, A000925(n)]` -/
def P2322281325305761778.Spec : Prop :=
  ∀ n, (P2322281325305761778.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P8899182802289604542

`eq[A000925(n), A078832(n+1)]`
-/

namespace A143575.P8899182802289604542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P8899182802289604542

namespace A143575

/-- `eq[A000925(n), A078832(n+1)]` -/
def P8899182802289604542.Spec : Prop :=
  ∀ n, (P8899182802289604542.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P3771422471686764453

`eq[A089309(n)+1, A000925(n)]`
-/

namespace A143575.P3771422471686764453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P3771422471686764453

namespace A143575

/-- `eq[A089309(n)+1, A000925(n)]` -/
def P3771422471686764453.Spec : Prop :=
  ∀ n, (P3771422471686764453.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P1288387584848626943

`eq[2, A000925(A000007(n)+n)]`
-/

namespace A143575.P1288387584848626943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143575.P1288387584848626943

namespace A143575

/-- `eq[2, A000925(A000007(n)+n)]` -/
def P1288387584848626943.Spec : Prop :=
  ∀ n, (P1288387584848626943.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P1556884704236595954

`eq[2-A000007(n), A000925(n)]`
-/

namespace A143575.P1556884704236595954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P1556884704236595954

namespace A143575

/-- `eq[2-A000007(n), A000925(n)]` -/
def P1556884704236595954.Spec : Prop :=
  ∀ n, (P1556884704236595954.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P10540997139275860773

`eq[n*A000925(n), A005843(n)]`
-/

namespace A143575.P10540997139275860773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P10540997139275860773

namespace A143575

/-- `eq[n*A000925(n), A005843(n)]` -/
def P10540997139275860773.Spec : Prop :=
  ∀ n, (P10540997139275860773.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P5116627359461859142

`eq[(1-A063725(n))², A000161(n)]`
-/

namespace A143575.P5116627359461859142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A063725 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P5116627359461859142

namespace A143575

/-- `eq[(1-A063725(n))², A000161(n)]` -/
def P5116627359461859142.Spec : Prop :=
  ∀ n, (P5116627359461859142.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P18329358864459903062

`lt[(n-A143574(n))², A229062(n)]`
-/

namespace A143575.P18329358864459903062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A143574 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143575.P18329358864459903062

namespace A143575

/-- `lt[(n-A143574(n))², A229062(n)]` -/
def P18329358864459903062.Spec : Prop :=
  ∀ n, (P18329358864459903062.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P17412328862655675560

`eq[A000925(n), A000925(n²%(n+1))]`
-/

namespace A143575.P17412328862655675560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (n ^ 2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P17412328862655675560

namespace A143575

/-- `eq[A000925(n), A000925(n²%(n+1))]` -/
def P17412328862655675560.Spec : Prop :=
  ∀ n, (P17412328862655675560.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P4333265094512078862

`eq[A116604(A063725(n)), A125061(n)]`
-/

namespace A143575.P4333265094512078862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (A063725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P4333265094512078862

namespace A143575

/-- `eq[A116604(A063725(n)), A125061(n)]` -/
def P4333265094512078862.Spec : Prop :=
  ∀ n, (P4333265094512078862.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P6079855937265942658

`eq[A000925(n), A000925(A089309(n)²)]`
-/

namespace A143575.P6079855937265942658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A089309 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P6079855937265942658

namespace A143575

/-- `eq[A000925(n), A000925(A089309(n)²)]` -/
def P6079855937265942658.Spec : Prop :=
  ∀ n, (P6079855937265942658.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P3120012631283311026

`eq[A000925(n), A000925(A004018(n)+1)]`
-/

namespace A143575.P3120012631283311026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A004018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P3120012631283311026

namespace A143575

/-- `eq[A000925(n), A000925(A004018(n)+1)]` -/
def P3120012631283311026.Spec : Prop :=
  ∀ n, (P3120012631283311026.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P8551673909762764020

`eq[A019425(A019425(n))+1, A000925(n)]`
-/

namespace A143575.P8551673909762764020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A019425 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P8551673909762764020

namespace A143575

/-- `eq[A019425(A019425(n))+1, A000925(n)]` -/
def P8551673909762764020.Spec : Prop :=
  ∀ n, (P8551673909762764020.a n : ℤ) = A143575 (n + 1)

end A143575

/-! ## A143575.P18037707384280173929

`eq[A000161(n), A000161(A342154(n)+2)]`
-/

namespace A143575.P18037707384280173929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A342154 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P18037707384280173929

namespace A143575

/-- `eq[A000161(n), A000161(A342154(n)+2)]` -/
def P18037707384280173929.Spec : Prop :=
  ∀ n, (P18037707384280173929.a n : ℤ) = A143575 (n + 1)

end A143575

/-!
# A143576: A triangle of coefficients formed by adding Chebyshev T(x,n) to x*U(x,n): p(x,n)=ChebyshevT[n, x] + x*ChebyshevU[n, x].

The programs for A143576, there is no canonical definition to state claims against.
-/

/-! ## A143576.P9903127272336757652

`2*T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A143576.P9903127272336757652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A143576.P9903127272336757652

/-!
# A143577: Numbers k such that the continued fraction of (1 + sqrt(k))/2 has period 9.

The programs for A143577, there is no canonical definition to state claims against.
-/

/-! ## A143577.P15489426030111331123

`eq[9, A146326(A028310(n))]`
-/

namespace A143577.P15489426030111331123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143577.P15489426030111331123

/-! ## A143577.P8339112435725263990

`A004442(eq[9, A146326(n+1)])`
-/

namespace A143577.P8339112435725263990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143577.P8339112435725263990

/-! ## A143577.P10817935871205090938

`A153152(eq[9, A146326(n+1)])`
-/

namespace A143577.P10817935871205090938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143577.P10817935871205090938

/-! ## A143577.P18286988575441221377

`A326178(eq[9, A146326(n+1)])`
-/

namespace A143577.P18286988575441221377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143577.P18286988575441221377

/-! ## A143577.P18279355112400008527

`∑{p}[A146354(n+1)², #]`
-/

namespace A143577.P18279355112400008527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146354 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A143577.P18279355112400008527

/-!
# A143578: A positive integer n is included if j+n/j divides k+n/k for every divisor k of n, where j is the largest divisor of n that is <= sqrt(n).

The programs for A143578, there is no canonical definition to state claims against.
-/

/-! ## A143578.P13839920197767962007

`∪[A008578(n+1), A142591(n+1)]`
-/

namespace A143578.P13839920197767962007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143578.P13839920197767962007

/-! ## A143578.P81579332373135700

`eq[n+2, A169901(n+1)]+1`
-/

namespace A143578.P81579332373135700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143578.P81579332373135700

/-! ## A143578.P7000891350778670572

`record[A144396(n+1)-A169901(n+1)]`
-/

namespace A143578.P7000891350778670572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A169901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143578.P7000891350778670572

/-! ## A143578.P2505451213430793560

`eq[A063655(n+1), A143771(n+1)]+1`
-/

namespace A143578.P2505451213430793560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143578.P2505451213430793560

/-! ## A143578.P15408956815335590873

`eq[A111234(n+1), A143771(n+1)]+1`
-/

namespace A143578.P15408956815335590873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143578.P15408956815335590873

/-! ## A143578.P10548405569590732008

`A141310(eq[A063655(n+1), A143771(n+1)])`
-/

namespace A143578.P10548405569590732008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143578.P10548405569590732008

/-! ## A143578.P6822820249356146616

`A141310(eq[A111234(n+1), A143771(n+1)])`
-/

namespace A143578.P6822820249356146616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143578.P6822820249356146616

/-! ## A143578.P11232077131860997841

`record[A079945(A079945(n))-A169901(n+1)]`
-/

namespace A143578.P11232077131860997841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 (A079945 n).toNat - A169901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143578.P11232077131860997841

/-! ## A143578.P14484412476709218396

`record[A022998(2*n+3)-A169901(n+1)]`
-/

namespace A143578.P14484412476709218396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (2 * n + 3) - A169901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143578.P14484412476709218396

/-! ## A143578.P124102841371362367

`record[A008619(4*(n+1))-A169901(n+1)]`
-/

namespace A143578.P124102841371362367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * (n + 1)) - A169901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143578.P124102841371362367

/-!
# A143579: Permutation of the natural numbers (0,1,2,3,...): Odious numbers (A000069) interleaved with Evil numbers (A001969).

The programs for A143579, the canonical program `A143579.P1556342693127990265` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143579 has offset 0).

The definition of A143579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143579.P15615552008545913983

`xor(n, a(floor(n/2))%2)` with `a(0)=1`
-/

namespace A143579.P15615552008545913983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor n (a ⌊(n : ℚ) / 2⌋.toNat % 2)

end

end A143579.P15615552008545913983

namespace A143579

/-- `xor(n, a(floor(n/2))%2)` -/
def P15615552008545913983.Spec : Prop :=
  ∀ n, (P15615552008545913983.a n : ℤ) = A143579 n

theorem P15615552008545913983.correct : P15615552008545913983.Spec := by
  intro n
  simp only [A143579, Nat.add_sub_cancel, A143579.P15615552008545913983.a, A143579.P1556342693127990265.a, SequenceMachineLib.memo_apply]
  try simp

end A143579

/-! ## A143579.P1556342693127990265

`xor(n, and(1, a(floor(n/2))))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143579

/-- `xor(n, and(1, a(floor(n/2))))` -/
def P1556342693127990265.Spec : Prop :=
  ∀ n, (P1556342693127990265.a n : ℤ) = A143579 n

theorem P1556342693127990265.correct : P1556342693127990265.Spec := by
  intro n
  simp only [A143579]

end A143579

/-! ## A143579.P12162686852818147226

`xor(n, char[xor(n, xor(1, n)+n)])`
-/

namespace A143579.P12162686852818147226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.xor 1 n + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f1 j = n then 1 else 0)

end

end A143579.P12162686852818147226

namespace A143579

/-- `xor(n, char[xor(n, xor(1, n)+n)])` -/
def P12162686852818147226.Spec : Prop :=
  ∀ n, (P12162686852818147226.a n : ℤ) = A143579 n

end A143579

/-! ## A143579.P2036112818494429564

`or(1, n)-char[comp[xor(n, 2*n)]]`
-/

namespace A143579.P2036112818494429564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143579.P2036112818494429564

namespace A143579

/-- `or(1, n)-char[comp[xor(n, 2*n)]]` -/
def P2036112818494429564.Spec : Prop :=
  ∀ n, P2036112818494429564.a n = A143579 n

end A143579

/-! ## A143579.P503998499447760714

`or(1, n)-(1-char[xor(n, 2*n)])`
-/

namespace A143579.P503998499447760714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143579.P503998499447760714

namespace A143579

/-- `or(1, n)-(1-char[xor(n, 2*n)])` -/
def P503998499447760714.Spec : Prop :=
  ∀ n, P503998499447760714.a n = A143579 n

end A143579

/-! ## A143579.P10801413926875789465

`comp[xor(n, 2*n)]-(n%2+n)`
-/

namespace A143579.P10801413926875789465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n % 2 + n : ℕ) : ℤ)

end

end A143579.P10801413926875789465

namespace A143579

/-- `comp[xor(n, 2*n)]-(n%2+n)` -/
def P10801413926875789465.Spec : Prop :=
  ∀ n, P10801413926875789465.a n = A143579 n

end A143579

/-! ## A143579.P5613740016381622963

`comp[xor(n, 2*n)]-(and(1, n)+n)`
-/

namespace A143579.P5613740016381622963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (Nat.land 1 n + n : ℤ)

end

end A143579.P5613740016381622963

namespace A143579

/-- `comp[xor(n, 2*n)]-(and(1, n)+n)` -/
def P5613740016381622963.Spec : Prop :=
  ∀ n, P5613740016381622963.a n = A143579 n

end A143579

/-! ## A143579.P7686544487204443009

`comp[xor(n, 2*n)]-and(1, n)-n`
-/

namespace A143579.P7686544487204443009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (Nat.land 1 n : ℤ) - (n : ℤ)

end

end A143579.P7686544487204443009

namespace A143579

/-- `comp[xor(n, 2*n)]-and(1, n)-n` -/
def P7686544487204443009.Spec : Prop :=
  ∀ n, P7686544487204443009.a n = A143579 n

end A143579

/-! ## A143579.P15464868820958081348

`A160017(xor(1, n))`
-/

namespace A143579.P15464868820958081348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (Nat.xor 1 n)

end

end A143579.P15464868820958081348

namespace A143579

/-- `A160017(xor(1, n))` -/
def P15464868820958081348.Spec : Prop :=
  ∀ n, P15464868820958081348.a n = A143579 n

end A143579

/-! ## A143579.P3992137673934879136

`xor(n, A179020(n))`
-/

namespace A143579.P3992137673934879136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A179020 n)

end

end A143579.P3992137673934879136

namespace A143579

/-- `xor(n, A179020(n))` -/
def P3992137673934879136.Spec : Prop :=
  ∀ n, P3992137673934879136.a n = A143579 n

end A143579

/-! ## A143579.P1569834542833242745

`Δ[A228495(n)]+n`
-/

namespace A143579.P1569834542833242745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A143579.P1569834542833242745

namespace A143579

/-- `Δ[A228495(n)]+n` -/
def P1569834542833242745.Spec : Prop :=
  ∀ n, P1569834542833242745.a n = A143579 n

end A143579

/-! ## A143579.P749520314902120407

`n-Δ[A254377(n)]`
-/

namespace A143579.P749520314902120407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A143579.P749520314902120407

namespace A143579

/-- `n-Δ[A254377(n)]` -/
def P749520314902120407.Spec : Prop :=
  ∀ n, P749520314902120407.a n = A143579 n

end A143579

/-! ## A143579.P5499896881035360212

`or(1, n)-A010060(n)`
-/

namespace A143579.P5499896881035360212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A010060 n

end

end A143579.P5499896881035360212

namespace A143579

/-- `or(1, n)-A010060(n)` -/
def P5499896881035360212.Spec : Prop :=
  ∀ n, P5499896881035360212.a n = A143579 n

end A143579

/-! ## A143579.P7537968877680368796

`xor(n, 1-A095190(n))`
-/

namespace A143579.P7537968877680368796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - A095190 n)

end

end A143579.P7537968877680368796

namespace A143579

/-- `xor(n, 1-A095190(n))` -/
def P7537968877680368796.Spec : Prop :=
  ∀ n, P7537968877680368796.a n = A143579 n

end A143579

/-! ## A143579.P12803941704587305983

`xor(n, A095190(xor(2, n)))`
-/

namespace A143579.P12803941704587305983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A095190 (Nat.xor 2 n))

end

end A143579.P12803941704587305983

namespace A143579

/-- `xor(n, A095190(xor(2, n)))` -/
def P12803941704587305983.Spec : Prop :=
  ∀ n, P12803941704587305983.a n = A143579 n

end A143579

/-! ## A143579.P9827824518468775443

`or(1, n)-A254379(2*n)`
-/

namespace A143579.P9827824518468775443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A254379 (2 * n)

end

end A143579.P9827824518468775443

namespace A143579

/-- `or(1, n)-A254379(2*n)` -/
def P9827824518468775443.Spec : Prop :=
  ∀ n, P9827824518468775443.a n = A143579 n

end A143579

/-! ## A143579.P2748458885019675076

`xor(n, A000120(or(1, n))%2)`
-/

namespace A143579.P2748458885019675076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.tmod (A000120 (Nat.lor 1 n)) 2)

end

end A143579.P2748458885019675076

namespace A143579

/-- `xor(n, A000120(or(1, n))%2)` -/
def P2748458885019675076.Spec : Prop :=
  ∀ n, P2748458885019675076.a n = A143579 n

end A143579

/-! ## A143579.P9900500339328631313

`A161560(n+1)+char[2*n]`
-/

namespace A143579.P9900500339328631313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143579.P9900500339328631313

namespace A143579

/-- `A161560(n+1)+char[2*n]` -/
def P9900500339328631313.Spec : Prop :=
  ∀ n, P9900500339328631313.a n = A143579 n

end A143579

/-! ## A143579.P2088890101693551728

`or(1, n)-A254377(2*n+1)`
-/

namespace A143579.P2088890101693551728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A254377 (2 * n + 1)

end

end A143579.P2088890101693551728

namespace A143579

/-- `or(1, n)-A254377(2*n+1)` -/
def P2088890101693551728.Spec : Prop :=
  ∀ n, P2088890101693551728.a n = A143579 n

end A143579

/-! ## A143579.P10603998494260562680

`A160017(A004442(n))`
-/

namespace A143579.P10603998494260562680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (A004442 n).toNat

end

end A143579.P10603998494260562680

namespace A143579

/-- `A160017(A004442(n))` -/
def P10603998494260562680.Spec : Prop :=
  ∀ n, P10603998494260562680.a n = A143579 n

end A143579

/-!
# A143581: Numerators of coefficient of x^(n+1/2) in the series expansion of the haversine.

The programs for A143581, the canonical program `A143581.P12384463592517670465` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143581 has offset 1).

The definition of A143581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143581.P2714674112341792257

`floor(A055786(n)+acot(n))`
-/

namespace A143581.P2714674112341792257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055786 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A143581.P2714674112341792257

namespace A143581

/-- `floor(A055786(n)+acot(n))` -/
def P2714674112341792257.Spec : Prop :=
  ∀ n, P2714674112341792257.a n = A143581 (n + 1)

end A143581

/-! ## A143581.P12384463592517670465

`A055786(n)+A000007(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143581

/-- `A055786(n)+A000007(n)` -/
def P12384463592517670465.Spec : Prop :=
  ∀ n, P12384463592517670465.a n = A143581 (n + 1)

theorem P12384463592517670465.correct : P12384463592517670465.Spec := by
  intro n
  simp only [A143581, Nat.add_sub_cancel]

end A143581

/-! ## A143581.P9118553262255781370

`A054977(n)*A055786(n)`
-/

namespace A143581.P9118553262255781370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A055786 n

end

end A143581.P9118553262255781370

namespace A143581

/-- `A054977(n)*A055786(n)` -/
def P9118553262255781370.Spec : Prop :=
  ∀ n, P9118553262255781370.a n = A143581 (n + 1)

end A143581

/-! ## A143581.P3884188521151819275

`A055786(n)+A036987(2*n)`
-/

namespace A143581.P3884188521151819275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n + A036987 (2 * n)

end

end A143581.P3884188521151819275

namespace A143581

/-- `A055786(n)+A036987(2*n)` -/
def P3884188521151819275.Spec : Prop :=
  ∀ n, P3884188521151819275.a n = A143581 (n + 1)

end A143581

/-! ## A143581.P12840769258101339880

`A055786(n)+A004016(n)%2`
-/

namespace A143581.P12840769258101339880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n + Int.tmod (A004016 n) 2

end

end A143581.P12840769258101339880

namespace A143581

/-- `A055786(n)+A004016(n)%2` -/
def P12840769258101339880.Spec : Prop :=
  ∀ n, P12840769258101339880.a n = A143581 (n + 1)

end A143581

/-! ## A143581.P12764722337634456587

`A055786(n)+A010054(A027699(n+1))`
-/

namespace A143581.P12764722337634456587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n + A010054 (A027699 (n + 1)).toNat

end

end A143581.P12764722337634456587

namespace A143581

/-- `A055786(n)+A010054(A027699(n+1))` -/
def P12764722337634456587.Spec : Prop :=
  ∀ n, P12764722337634456587.a n = A143581 (n + 1)

end A143581

/-! ## A143581.P7776956577114862818

`A055786(n)+A026799(A161914(n+1))`
-/

namespace A143581.P7776956577114862818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n + A026799 (A161914 (n + 1)).toNat

end

end A143581.P7776956577114862818

namespace A143581

/-- `A055786(n)+A026799(A161914(n+1))` -/
def P7776956577114862818.Spec : Prop :=
  ∀ n, P7776956577114862818.a n = A143581 (n + 1)

end A143581

/-! ## A143581.P16588726431421518879

`A055786(n)+A010054(2*n²)`
-/

namespace A143581.P16588726431421518879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n + A010054 (2 * n ^ 2)

end

end A143581.P16588726431421518879

namespace A143581

/-- `A055786(n)+A010054(2*n²)` -/
def P16588726431421518879.Spec : Prop :=
  ∀ n, P16588726431421518879.a n = A143581 (n + 1)

end A143581

/-!
# A143582: Denominators of coefficient of x^(n+1/2) in the series expansion of the haversine.

The programs for A143582, there is no canonical definition to state claims against.
-/

/-! ## A143582.P17564923615244267679

`ceil(A002595(n)/2)`
-/

namespace A143582.P17564923615244267679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002595 n : ℚ) / 2⌉

end

end A143582.P17564923615244267679

/-! ## A143582.P8987159225247390764

`A002595(n*a(floor(acot(n))))/2` with `a(0)=1`
-/

namespace A143582.P8987159225247390764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A002595 (SequenceMachineLib.roundAway ((n : ℚ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat)).toNat : ℚ) / 2

end

end A143582.P8987159225247390764

/-! ## A143582.P13157701862221777475

`A002595(n)/A040000(n)`
-/

namespace A143582.P13157701862221777475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002595 n : ℚ) / (A040000 n : ℚ)

end

end A143582.P13157701862221777475

/-! ## A143582.P6939048205004531160

`A002595(n)/A000122(n²)`
-/

namespace A143582.P6939048205004531160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002595 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A143582.P6939048205004531160

/-! ## A143582.P7800875012054365589

`A002595(n)/A036453(n+1)`
-/

namespace A143582.P7800875012054365589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002595 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A143582.P7800875012054365589

/-!
# A143583: Apéry-like numbers: a(n) = (1/C(2n,n))*Sum_{k=0..n} C(2k,k)*C(4k,2k)*C(2n-2k,n-k)*C(4n-4k,2n-2k).

The programs for A143583, there is no canonical definition to state claims against.
-/

/-! ## A143583.P1750270974463773494

`A102376(n)*A260832(n)`
-/

namespace A143583.P1750270974463773494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n * A260832 n

end

end A143583.P1750270974463773494

/-! ## A143583.P2722725469981361240

`A001316(n)²*A260832(n)`
-/

namespace A143583.P2722725469981361240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 * A260832 n

end

end A143583.P2722725469981361240

/-! ## A143583.P2803303912248216582

`A000302(A000120(n))*A260832(n)`
-/

namespace A143583.P2803303912248216582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A000120 n).toNat * A260832 n

end

end A143583.P2803303912248216582

/-! ## A143583.P18192381918815621457

`lcm(A001316(A005843(n))², A260832(n))`
-/

namespace A143583.P18192381918815621457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A005843 n).toNat ^ 2) (A260832 n)

end

end A143583.P18192381918815621457

/-! ## A143583.P11503471272008542222

`A001316(n)*A001316(A005843(n))*A260832(n)`
-/

namespace A143583.P11503471272008542222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A001316 (A005843 n).toNat * A260832 n

end

end A143583.P11503471272008542222

/-! ## A143583.P3173516179846305947

`A398186(n+1)/A000108(n)`
-/

namespace A143583.P3173516179846305947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398186 (n + 1) : ℚ) / (A000108 n : ℚ)

end

end A143583.P3173516179846305947

/-!
# A143584: Integers that are equal to the multiplicative order of 2 modulo some overpseudoprime to base 2.

The programs for A143584, there is no canonical definition to state claims against.
-/

/-! ## A143584.P8716466868843814555

`lt[1, A086251(n+1)]+1`
-/

namespace A143584.P8716466868843814555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A143584.P8716466868843814555

/-! ## A143584.P14229680102517650285

`lt[2, A063982(n+1)]+1`
-/

namespace A143584.P14229680102517650285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A143584.P14229680102517650285

/-! ## A143584.P5257641005682906873

`lt[2, A063982(A000038(n)+n)]`
-/

namespace A143584.P5257641005682906873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A143584.P5257641005682906873

/-! ## A143584.P8860901651341764544

`eq[1, A007318(a(A086251(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A143584.P8860901651341764544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A007318 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143584.P8860901651341764544

/-! ## A143584.P15776332364560995133

`eq[1, A101608(a(A086251(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A143584.P15776332364560995133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A101608 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143584.P15776332364560995133

/-! ## A143584.P7381821059089436599

`eq[1, A000120(a(A086251(n)))]` with `a(0)=9, a(1)=9`
-/

namespace A143584.P7381821059089436599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9, 9] fun n f2 =>
  A000120 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143584.P7381821059089436599

/-! ## A143584.P2866380895322546805

`eq[1, A046800(a(A086251(n)))]` with `a(0)=9, a(1)=9`
-/

namespace A143584.P2866380895322546805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9, 9] fun n f2 =>
  A046800 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143584.P2866380895322546805

/-!
# A143585: a(n) is the prime index of A146214(n).

The programs for A143585, there is no canonical definition to state claims against.
-/

/-! ## A143585.P12643148670192748589

`A029707(10^n)`
-/

namespace A143585.P12643148670192748589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (10 ^ n)

end

end A143585.P12643148670192748589

/-!
# A143586: Length of row n of the Kolakoski fan A143477.

The programs for A143586, there is no canonical definition to state claims against.
-/

/-! ## A143586.P15062590905370993482

`A143588(n)+a(n-1)` with `a(0)=1`
-/

namespace A143586.P15062590905370993482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143588 n + a (n - 1)

end

end A143586.P15062590905370993482

/-! ## A143586.P15247236788083941386

`∑[A143588(abs(1-n)+1)]`
-/

namespace A143586.P15247236788083941386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143588 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143586.P15247236788083941386

/-! ## A143586.P1153277796206584465

`2*a(n-1)-A143587(n)` with `a(0)=1`
-/

namespace A143586.P1153277796206584465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A143587 n

end

end A143586.P1153277796206584465

/-! ## A143586.P8961699586414181217

`∑[A143588(round(sqrt(n²+1)))]+1`
-/

namespace A143586.P8961699586414181217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143588 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143586.P8961699586414181217

/-! ## A143586.P1656412203264742667

`A143588(n+1)+A143587(n+1)`
-/

namespace A143586.P1656412203264742667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143588 (n + 1) + A143587 (n + 1)

end

end A143586.P1656412203264742667

/-!
# A143587: Number of 1's in row n of the Kolakoski fan A143477.

The programs for A143587, there is no canonical definition to state claims against.
-/

/-! ## A143587.P13780158604317748045

`∑[A143588(abs(1-n)+1)]-A143588(n+1)`
-/

namespace A143587.P13780158604317748045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143588 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143588 (n + 1)

end

end A143587.P13780158604317748045

/-! ## A143587.P2199360485463689630

`∑[A143588(A028310(n))]+1-A143588(n+1)`
-/

namespace A143587.P2199360485463689630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143588 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A143588 (n + 1)

end

end A143587.P2199360485463689630

/-! ## A143587.P16369382591484593174

`A143586(n+1)-A143588(n+1)`
-/

namespace A143587.P16369382591484593174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 (n + 1) - A143588 (n + 1)

end

end A143587.P16369382591484593174

/-! ## A143587.P13236084387998217936

`2*A143586(n+1)-A143586(n+2)`
-/

namespace A143587.P13236084387998217936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143586 (n + 1) - A143586 (n + 2)

end

end A143587.P13236084387998217936

/-! ## A143587.P1321404886613563553

`A143586(A000027(n+1))-Δ[A143586(n+1)]`
-/

namespace A143587.P1321404886613563553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 (A000027 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A143587.P1321404886613563553

/-!
# A143588: Number of 2's in row n of the Kolakoski fan A143477.

The programs for A143588, there is no canonical definition to state claims against.
-/

/-! ## A143588.P12408344212556170852

`Δ[2*a(n-1)-A143587(n)]` with `a(0)=1`
-/

namespace A143588.P12408344212556170852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - A143587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143588.P12408344212556170852

/-! ## A143588.P3864821871916602567

`∑[A143586(A028310(n))-A143587(n+1)]`
-/

namespace A143588.P3864821871916602567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 (A028310 n).toNat - A143587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143588.P3864821871916602567

/-! ## A143588.P1795525160528445505

`A143586(n+1)-A143587(n+1)`
-/

namespace A143588.P1795525160528445505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 (n + 1) - A143587 (n + 1)

end

end A143588.P1795525160528445505

/-! ## A143588.P241318258525876836

`Δ[A143586(n+1)]`
-/

namespace A143588.P241318258525876836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143588.P241318258525876836

/-! ## A143588.P8759129629645732946

`abs(Δ[A143586(Δ[n²]-n)])`
-/

namespace A143588.P8759129629645732946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A143588.P8759129629645732946

/-!
# A143589: Kolakoski fan based on A000034 with initial row 1.

The programs for A143589, there is no canonical definition to state claims against.
-/

/-! ## A143589.P3443244477639419283

`A014709(∑[A056832(∑[∑[3*n]]+1)])`
-/

namespace A143589.P3443244477639419283
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143589.P3443244477639419283

/-! ## A143589.P1438375788686752488

`A000034(A036209(∑[A006163(n+1)]))`
-/

namespace A143589.P1438375788686752488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A036209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A143589.P1438375788686752488

/-! ## A143589.P7825679092369390807

`A131534(A007749(n+1)%A333237(n+1))`
-/

namespace A143589.P7825679092369390807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (Int.tmod (A007749 (n + 1)) (A333237 (n + 1))).toNat

end

end A143589.P7825679092369390807

/-! ## A143589.P17647567251619318989

`A112104(A100916(n+1)+A051222(n+2))`
-/

namespace A143589.P17647567251619318989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112104 (A100916 (n + 1) + A051222 (n + 2)).toNat

end

end A143589.P17647567251619318989

/-! ## A143589.P4522807558018399962

`gcd(A097346(n), A303975(A097319(2*(n+1))))`
-/

namespace A143589.P4522807558018399962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097346 n) (A303975 (A097319 (2 * (n + 1))).toNat)

end

end A143589.P4522807558018399962

/-!
# A143590: Length of row n of A143589 (a Kolakoski fan).

The programs for A143590, there is no canonical definition to state claims against.
-/

/-! ## A143590.P5272067037145190407

`A143592(n)+a(n-1)` with `a(0)=1`
-/

namespace A143590.P5272067037145190407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143592 n + a (n - 1)

end

end A143590.P5272067037145190407

/-! ## A143590.P6156404144715478884

`∑[A143592(abs(1-n)+1)]`
-/

namespace A143590.P6156404144715478884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143592 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143590.P6156404144715478884

/-! ## A143590.P8015318662719135861

`2*a(n-1)-A143591(n)` with `a(0)=1`
-/

namespace A143590.P8015318662719135861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A143591 n

end

end A143590.P8015318662719135861

/-! ## A143590.P6382146620352245960

`∑[A143592(round(sqrt(n²+1)))]+1`
-/

namespace A143590.P6382146620352245960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143592 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143590.P6382146620352245960

/-! ## A143590.P13945102982733455806

`A143592(n+1)+A143591(n+1)`
-/

namespace A143590.P13945102982733455806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143592 (n + 1) + A143591 (n + 1)

end

end A143590.P13945102982733455806

/-!
# A143591: Number of 1's in row n of A143589 (a Kolakoski fan).

The programs for A143591, there is no canonical definition to state claims against.
-/

/-! ## A143591.P8445114934715795497

`A143590(n+1)-A143592(n+1)`
-/

namespace A143591.P8445114934715795497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143590 (n + 1) - A143592 (n + 1)

end

end A143591.P8445114934715795497

/-! ## A143591.P11114186452514295932

`2*A143590(n+1)-A143590(n+2)`
-/

namespace A143591.P11114186452514295932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143590 (n + 1) - A143590 (n + 2)

end

end A143591.P11114186452514295932

/-! ## A143591.P11393689110388557639

`∑[A143592(abs(1-n)+1)]-A143592(n+1)`
-/

namespace A143591.P11393689110388557639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143592 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143592 (n + 1)

end

end A143591.P11393689110388557639

/-! ## A143591.P15202398216182416992

`∑[A143592(A028310(n))]+1-A143592(n+1)`
-/

namespace A143591.P15202398216182416992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143592 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A143592 (n + 1)

end

end A143591.P15202398216182416992

/-! ## A143591.P9827427910286708580

`A143590(A000027(n+1))-Δ[A143590(n+1)]`
-/

namespace A143591.P9827427910286708580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143590 (A000027 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A143591.P9827427910286708580

/-!
# A143592: Number of 2's in row n of A143589 (a Kolakoski fan).

The programs for A143592, there is no canonical definition to state claims against.
-/

/-! ## A143592.P16427587237203167718

`A143590(n+2)-A143590(n+1)`
-/

namespace A143592.P16427587237203167718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143590 (n + 2) - A143590 (n + 1)

end

end A143592.P16427587237203167718

/-! ## A143592.P15580182352600299411

`Δ[A143590(n+1)]`
-/

namespace A143592.P15580182352600299411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143592.P15580182352600299411

/-! ## A143592.P6998362507636281304

`Δ[2*a(n-1)-A143591(n)]` with `a(0)=1`
-/

namespace A143592.P6998362507636281304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - A143591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143592.P6998362507636281304

/-! ## A143592.P1161505455494725969

`A143590(n+1)-A143591(n+1)`
-/

namespace A143592.P1161505455494725969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143590 (n + 1) - A143591 (n + 1)

end

end A143592.P1161505455494725969

/-! ## A143592.P6966559766669081716

`(A143590(n+1)+A001149(n+1))%(A143591(n+1)+A001149(n+1))`
-/

namespace A143592.P6966559766669081716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143590 (n + 1) + A001149 (n + 1)) (A143591 (n + 1) + A001149 (n + 1))

end

end A143592.P6966559766669081716

/-!
# A143593: Triangle read by rows, square of A238303 (an infinite lower triangular matrix with 1's in the first column and the rest 2's).

The programs for A143593, the canonical program `A143593.P13769069135629193761` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143593 has offset 1).

The definition of A143593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143593.P17048071795028451781

`T(n-1,k)+2*(2-T(T(n-1,k-1), 2*T(n-1,k-1)))` with `a(0)=1`
-/

namespace A143593.P17048071795028451781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (2 - SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n) (2 * SequenceMachineLib.triUpLeft a n))

end

end A143593.P17048071795028451781

namespace A143593

/-- `T(n-1,k)+2*(2-T(T(n-1,k-1), 2*T(n-1,k-1)))` -/
def P17048071795028451781.Spec : Prop :=
  ∀ n, P17048071795028451781.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P3812211470632181162

`T(n-1,k)-2*(T(T(n-1,k-1), 2*T(n-1,k-1))-2)` with `a(0)=1`
-/

namespace A143593.P3812211470632181162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n) (2 * SequenceMachineLib.triUpLeft a n) - 2)

end

end A143593.P3812211470632181162

namespace A143593

/-- `T(n-1,k)-2*(T(T(n-1,k-1), 2*T(n-1,k-1))-2)` -/
def P3812211470632181162.Spec : Prop :=
  ∀ n, P3812211470632181162.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P8259007318448980027

`T(n-1,k)+2*(2-T(col(n), 2*col(n)))` with `a(0)=1`
-/

namespace A143593.P8259007318448980027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (2 - SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (2 * SequenceMachineLib.triCol n : ℤ))

end

end A143593.P8259007318448980027

namespace A143593

/-- `T(n-1,k)+2*(2-T(col(n), 2*col(n)))` -/
def P8259007318448980027.Spec : Prop :=
  ∀ n, P8259007318448980027.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P775482767163887095

`T(n-1,k)-2*(T(col(n), 2*col(n))-2)` with `a(0)=1`
-/

namespace A143593.P775482767163887095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (2 * SequenceMachineLib.triCol n : ℤ) - 2)

end

end A143593.P775482767163887095

namespace A143593

/-- `T(n-1,k)-2*(T(col(n), 2*col(n))-2)` -/
def P775482767163887095.Spec : Prop :=
  ∀ n, P775482767163887095.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P17430412618832191914

`((n²+1+n)%(comp[C(n, 2)]+1)+1-char[∑[n]])²/(abs(C(comp[∑[n]]-n, 2)-(n+1))+round(sqrt(2*n))*char[∑[n]]+1)`
-/

namespace A143593.P17430412618832191914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℕ) : ℤ) + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))) ^ 2 : ℚ) / (|(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)| + (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f6 j = n then 1 else 0 : ℕ) : ℤ) + 1) : ℚ)

end

end A143593.P17430412618832191914

namespace A143593

/-- `((n²+1+n)%(comp[C(n, 2)]+1)+1-char[∑[n]])²/(abs(C(comp[∑[n]]-n, 2)-(n+1))+round(sqrt(2*n))*char[∑[n]]+1)` -/
def P17430412618832191914.Spec : Prop :=
  ∀ n, P17430412618832191914.a n = (A143593 (n + 1) : ℚ)

end A143593

/-! ## A143593.P14434833441560307768

`A114112(3+T(n-1,k))` with `a(0)=1`
-/

namespace A143593.P14434833441560307768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114112 (3 + SequenceMachineLib.triUp a n).toNat

end

end A143593.P14434833441560307768

namespace A143593

/-- `A114112(3+T(n-1,k))` -/
def P14434833441560307768.Spec : Prop :=
  ∀ n, P14434833441560307768.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P6382163342228977199

`(2-char[∑[n]])*A143956(n+1)`
-/

namespace A143593.P6382163342228977199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A143956 (n + 1)

end

end A143593.P6382163342228977199

namespace A143593

/-- `(2-char[∑[n]])*A143956(n+1)` -/
def P6382163342228977199.Spec : Prop :=
  ∀ n, P6382163342228977199.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P6870938943623589166

`(2-char[∑[n]])²*A130303(n+1)`
-/

namespace A143593.P6870938943623589166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2 * A130303 (n + 1)

end

end A143593.P6870938943623589166

namespace A143593

/-- `(2-char[∑[n]])²*A130303(n+1)` -/
def P6870938943623589166.Spec : Prop :=
  ∀ n, P6870938943623589166.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P13769069135629193761

`A022998(A143956(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143593

/-- `A022998(A143956(n+1))` -/
def P13769069135629193761.Spec : Prop :=
  ∀ n, P13769069135629193761.a n = A143593 (n + 1)

theorem P13769069135629193761.correct : P13769069135629193761.Spec := by
  intro n
  simp only [A143593, Nat.add_sub_cancel]

end A143593

/-! ## A143593.P15385770464538604334

`A283971(2*A143956(n+1))`
-/

namespace A143593.P15385770464538604334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (2 * A143956 (n + 1)).toNat

end

end A143593.P15385770464538604334

namespace A143593

/-- `A283971(2*A143956(n+1))` -/
def P15385770464538604334.Spec : Prop :=
  ∀ n, P15385770464538604334.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P15193572177811676617

`A143956(n+1)*A238303(n)`
-/

namespace A143593.P15193572177811676617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143956 (n + 1) * A238303 n

end

end A143593.P15193572177811676617

namespace A143593

/-- `A143956(n+1)*A238303(n)` -/
def P15193572177811676617.Spec : Prop :=
  ∀ n, P15193572177811676617.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P11433020683881054092

`A133200(n+1)*A143956(n+1)/A001263(n+1)`
-/

namespace A143593.P11433020683881054092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133200 (n + 1) * A143956 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ)

end

end A143593.P11433020683881054092

namespace A143593

/-- `A133200(n+1)*A143956(n+1)/A001263(n+1)` -/
def P11433020683881054092.Spec : Prop :=
  ∀ n, P11433020683881054092.a n = (A143593 (n + 1) : ℚ)

end A143593

/-! ## A143593.P8160357926750903340

`A038388(A143956(n+1)²)`
-/

namespace A143593.P8160357926750903340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A143956 (n + 1) ^ 2).toNat

end

end A143593.P8160357926750903340

namespace A143593

/-- `A038388(A143956(n+1)²)` -/
def P8160357926750903340.Spec : Prop :=
  ∀ n, P8160357926750903340.a n = A143593 (n + 1)

end A143593

/-! ## A143593.P17935223213970864371

`(4*A004736(n+1))%A221967(n+1)`
-/

namespace A143593.P17935223213970864371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A004736 (n + 1)) (A221967 (n + 1))

end

end A143593.P17935223213970864371

namespace A143593

/-- `(4*A004736(n+1))%A221967(n+1)` -/
def P17935223213970864371.Spec : Prop :=
  ∀ n, P17935223213970864371.a n = A143593 (n + 1)

end A143593

/-!
# A143594: Triangle read by rows, A051731 * (an infinite lower triangular matrix with 1's in the first column and the rest 2's).

The programs for A143594, there is no canonical definition to state claims against.
-/

/-! ## A143594.P13582712803457277803

`(2-char[∑[n]])*A135539(n+1)`
-/

namespace A143594.P13582712803457277803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A135539 (n + 1)

end

end A143594.P13582712803457277803

/-! ## A143594.P8073999900904387686

`A135539(n+1)*A238303(n)`
-/

namespace A143594.P8073999900904387686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (n + 1) * A238303 n

end

end A143594.P8073999900904387686

/-! ## A143594.P289074435751008088

`A135539(n+1)+A135539(n+1)%A208905(n+1)`
-/

namespace A143594.P289074435751008088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (n + 1) + Int.tmod (A135539 (n + 1)) (A208905 (n + 1))

end

end A143594.P289074435751008088

/-! ## A143594.P13336680195863505316

`A072528(A056537(n+1))*A238303(n)`
-/

namespace A143594.P13336680195863505316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072528 (A056537 (n + 1)).toNat * A238303 n

end

end A143594.P13336680195863505316

/-! ## A143594.P16876507404450939363

`A036453(A002260(n+1))*A072528(A056537(n+1))`
-/

namespace A143594.P16876507404450939363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A002260 (n + 1)).toNat * A072528 (A056537 (n + 1)).toNat

end

end A143594.P16876507404450939363

/-! ## A143594.P16403254560025088386

`A006530(A059268(n))*A072528(A056537(n+1))`
-/

namespace A143594.P16403254560025088386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059268 n).toNat * A072528 (A056537 (n + 1)).toNat

end

end A143594.P16403254560025088386

/-! ## A143594.P3923839195456483506

`A000194(A140704(n+1))*A238303(n)`
-/

namespace A143594.P3923839195456483506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A140704 (n + 1)).toNat * A238303 n

end

end A143594.P3923839195456483506

/-! ## A143594.P14913179172378711433

`A000194(A140704(n+1))*A006530(A059268(n))`
-/

namespace A143594.P14913179172378711433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A140704 (n + 1)).toNat * A006530 (A059268 n).toNat

end

end A143594.P14913179172378711433

/-!
# A143595: Triangle read by rows, A000012 * (an infinite lower triangular matrix with 1's in the first column and the rest 2's); 1<=k<=n.

The programs for A143595, the canonical program `A143595.P4643358724247871193` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143595 has offset 1).

The definition of A143595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143595.P2864050618872675546

`T(n-1,k)+a(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A143595.P2864050618872675546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + a (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A143595.P2864050618872675546

namespace A143595

/-- `T(n-1,k)+a(T(n-1,k-1)-T(n-2,k-1))` -/
def P2864050618872675546.Spec : Prop :=
  ∀ n, (P2864050618872675546.a n : ℤ) = A143595 (n + 1)

end A143595

/-! ## A143595.P838518752721972260

`T(n-1,k)+2-T(T(n-1,k-1), 2*T(n-1,k-1))` with `a(0)=1`
-/

namespace A143595.P838518752721972260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 - SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n) (2 * SequenceMachineLib.triUpLeft a n)

end

end A143595.P838518752721972260

namespace A143595

/-- `T(n-1,k)+2-T(T(n-1,k-1), 2*T(n-1,k-1))` -/
def P838518752721972260.Spec : Prop :=
  ∀ n, P838518752721972260.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P4398679376110847640

`T(n-1,k)+2-T(T(n-1,k-1), T(n-1,k-1)+col(n))` with `a(0)=1`
-/

namespace A143595.P4398679376110847640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 - SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n) (SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n : ℤ))

end

end A143595.P4398679376110847640

namespace A143595

/-- `T(n-1,k)+2-T(T(n-1,k-1), T(n-1,k-1)+col(n))` -/
def P4398679376110847640.Spec : Prop :=
  ∀ n, P4398679376110847640.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P8728748205056557416

`T(n-1,k)+2-T(T(n-1,k)-row(n), T(n-1,k-1))` with `a(0)=1`
-/

namespace A143595.P8728748205056557416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 - SequenceMachineLib.triAt a (SequenceMachineLib.triUp a n - (SequenceMachineLib.triRow n : ℤ)) (SequenceMachineLib.triUpLeft a n)

end

end A143595.P8728748205056557416

namespace A143595

/-- `T(n-1,k)+2-T(T(n-1,k)-row(n), T(n-1,k-1))` -/
def P8728748205056557416.Spec : Prop :=
  ∀ n, P8728748205056557416.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P14497447536776357618

`T(n-1,k)+2-T(col(n), 2*col(n))` with `a(0)=1`
-/

namespace A143595.P14497447536776357618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 - SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (2 * SequenceMachineLib.triCol n : ℤ)

end

end A143595.P14497447536776357618

namespace A143595

/-- `T(n-1,k)+2-T(col(n), 2*col(n))` -/
def P14497447536776357618.Spec : Prop :=
  ∀ n, P14497447536776357618.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P16576405327265001170

`T(n-1,k)+2-T(T(1, T(n-1,k+1)+2), T(n-1,k-1))` with `a(0)=1`
-/

namespace A143595.P16576405327265001170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 - SequenceMachineLib.triAt a (SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpRight a n + 2)) (SequenceMachineLib.triUpLeft a n)

end

end A143595.P16576405327265001170

namespace A143595

/-- `T(n-1,k)+2-T(T(1, T(n-1,k+1)+2), T(n-1,k-1))` -/
def P16576405327265001170.Spec : Prop :=
  ∀ n, P16576405327265001170.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P18040852292527643695

`T(n-1,k)+2-T(T(1, T(n-1,k)+2), T(n-1,k-1))` with `a(0)=1`
-/

namespace A143595.P18040852292527643695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 - SequenceMachineLib.triAt a (SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUp a n + 2)) (SequenceMachineLib.triUpLeft a n)

end

end A143595.P18040852292527643695

namespace A143595

/-- `T(n-1,k)+2-T(T(1, T(n-1,k)+2), T(n-1,k-1))` -/
def P18040852292527643695.Spec : Prop :=
  ∀ n, P18040852292527643695.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P3030918508848989915

`T(n-1,k)+2-T(T(1, T(n-1,k+1)+2), col(n))` with `a(0)=1`
-/

namespace A143595.P3030918508848989915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 - SequenceMachineLib.triAt a (SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpRight a n + 2)) (SequenceMachineLib.triCol n : ℤ)

end

end A143595.P3030918508848989915

namespace A143595

/-- `T(n-1,k)+2-T(T(1, T(n-1,k+1)+2), col(n))` -/
def P3030918508848989915.Spec : Prop :=
  ∀ n, P3030918508848989915.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P5728878181970426125

`T(n-1,k)+2-T(T(1, T(n-1,k)+2), col(n))` with `a(0)=1`
-/

namespace A143595.P5728878181970426125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 - SequenceMachineLib.triAt a (SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUp a n + 2)) (SequenceMachineLib.triCol n : ℤ)

end

end A143595.P5728878181970426125

namespace A143595

/-- `T(n-1,k)+2-T(T(1, T(n-1,k)+2), col(n))` -/
def P5728878181970426125.Spec : Prop :=
  ∀ n, P5728878181970426125.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P17261971171232525866

`(2-char[∑[n]])*(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A143595.P17261971171232525866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A143595.P17261971171232525866

namespace A143595

/-- `(2-char[∑[n]])*(C(comp[∑[n]]-n, 2)-n)` -/
def P17261971171232525866.Spec : Prop :=
  ∀ n, P17261971171232525866.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P2754018629008858783

`log2((2^(C(comp[∑[n]]-n, 2)-n))^(2-char[∑[n]]))`
-/

namespace A143595.P2754018629008858783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)) ^ (2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) : ℤ) : ℝ)

end

end A143595.P2754018629008858783

namespace A143595

/-- `log2((2^(C(comp[∑[n]]-n, 2)-n))^(2-char[∑[n]]))` -/
def P2754018629008858783.Spec : Prop :=
  ∀ n, P2754018629008858783.a n = (A143595 (n + 1) : ℝ)

end A143595

/-! ## A143595.P17543553361879418673

`((n²+1+n)%(comp[C(n, 2)]+1)+1)/(char[∑[n]]+1)`
-/

namespace A143595.P17543553361879418673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1 : ℕ) : ℚ) / (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A143595.P17543553361879418673

namespace A143595

/-- `((n²+1+n)%(comp[C(n, 2)]+1)+1)/(char[∑[n]]+1)` -/
def P17543553361879418673.Spec : Prop :=
  ∀ n, P17543553361879418673.a n = (A143595 (n + 1) : ℚ)

end A143595

/-! ## A143595.P7840382504386993590

`A238303(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A143595.P7840382504386993590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A238303 n + SequenceMachineLib.triUp a n

end

end A143595.P7840382504386993590

namespace A143595

/-- `A238303(n)+T(n-1,k)` -/
def P7840382504386993590.Spec : Prop :=
  ∀ n, P7840382504386993590.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P4643358724247871193

`ceil(A143593(n+1)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143595

/-- `ceil(A143593(n+1)/2)` -/
def P4643358724247871193.Spec : Prop :=
  ∀ n, P4643358724247871193.a n = A143595 (n + 1)

theorem P4643358724247871193.correct : P4643358724247871193.Spec := by
  intro n
  simp only [A143595, Nat.add_sub_cancel]

end A143595

/-! ## A143595.P6356998740425764122

`(A099375(n)+1)/(char[∑[n]]+1)`
-/

namespace A143595.P6356998740425764122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 n + 1 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A143595.P6356998740425764122

namespace A143595

/-- `(A099375(n)+1)/(char[∑[n]]+1)` -/
def P6356998740425764122.Spec : Prop :=
  ∀ n, P6356998740425764122.a n = (A143595 (n + 1) : ℚ)

end A143595

/-! ## A143595.P17770927980460053249

`(2-char[∑[n]])*A004736(n+1)`
-/

namespace A143595.P17770927980460053249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A004736 (n + 1)

end

end A143595.P17770927980460053249

namespace A143595

/-- `(2-char[∑[n]])*A004736(n+1)` -/
def P17770927980460053249.Spec : Prop :=
  ∀ n, P17770927980460053249.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P14693588955435927639

`(A025581(n)+1)*(2-char[∑[n]])`
-/

namespace A143595.P14693588955435927639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143595.P14693588955435927639

namespace A143595

/-- `(A025581(n)+1)*(2-char[∑[n]])` -/
def P14693588955435927639.Spec : Prop :=
  ∀ n, P14693588955435927639.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P8385706294361246542

`2*log2(A090988(n+1))/(char[C(n, 2)]+1)`
-/

namespace A143595.P8385706294361246542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.logb 2 (A090988 (n + 1) : ℝ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℝ)

end

end A143595.P8385706294361246542

namespace A143595

/-- `2*log2(A090988(n+1))/(char[C(n, 2)]+1)` -/
def P8385706294361246542.Spec : Prop :=
  ∀ n, P8385706294361246542.a n = (A143595 (n + 1) : ℝ)

end A143595

/-! ## A143595.P5013574799043603278

`A167407(n)+A099375(n)`
-/

namespace A143595.P5013574799043603278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n + A099375 n

end

end A143595.P5013574799043603278

namespace A143595

/-- `A167407(n)+A099375(n)` -/
def P5013574799043603278.Spec : Prop :=
  ∀ n, P5013574799043603278.a n = A143595 (n + 1)

end A143595

/-! ## A143595.P2427257378148277465

`A193974(n)-A158822(n)`
-/

namespace A143595.P2427257378148277465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A158822 n

end

end A143595.P2427257378148277465

namespace A143595

/-- `A193974(n)-A158822(n)` -/
def P2427257378148277465.Spec : Prop :=
  ∀ n, P2427257378148277465.a n = A143595 (n + 1)

end A143595

/-!
# A143596: Triangle read by rows: T(n,k) is the coefficient of x^k in p(x,n) = ((x + 1)^(2*n) - (x^2 + 1)^n)/(2*x), 0 <= k <= 2*n-1.

The programs for A143596, the canonical program `A143596.P3332067871505162553` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143596 has offset 1).

The definition of A143596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143596.P3332067871505162553

`A034877(A161983(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143596

/-- `A034877(A161983(n))` -/
def P3332067871505162553.Spec : Prop :=
  ∀ n, P3332067871505162553.a n = A143596 (n + 1)

theorem P3332067871505162553.correct : P3332067871505162553.Spec := by
  intro n
  simp only [A143596, Nat.add_sub_cancel]

end A143596

/-! ## A143596.P2585850424162462185

`A034877(A316670(n+1))`
-/

namespace A143596.P2585850424162462185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A316670 (n + 1)).toNat

end

end A143596.P2585850424162462185

namespace A143596

/-- `A034877(A316670(n+1))` -/
def P2585850424162462185.Spec : Prop :=
  ∀ n, P2585850424162462185.a n = A143596 (n + 1)

end A143596

/-! ## A143596.P5356513176750039849

`A034877(A116942(2*n))`
-/

namespace A143596.P5356513176750039849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A116942 (2 * n)).toNat

end

end A143596.P5356513176750039849

namespace A143596

/-- `A034877(A116942(2*n))` -/
def P5356513176750039849.Spec : Prop :=
  ∀ n, P5356513176750039849.a n = A143596 (n + 1)

end A143596

/-! ## A143596.P15123364208266222779

`A034877(A007606(n+1)-1)`
-/

namespace A143596.P15123364208266222779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A007606 (n + 1) - 1).toNat

end

end A143596.P15123364208266222779

namespace A143596

/-- `A034877(A007606(n+1)-1)` -/
def P15123364208266222779.Spec : Prop :=
  ∀ n, P15123364208266222779.a n = A143596 (n + 1)

theorem P15123364208266222779.correct : P15123364208266222779.Spec := by
  intro n
  simp only [A143596, Nat.add_sub_cancel, A143596.P15123364208266222779.a, A143596.P3332067871505162553.a, A007606, A007606.P7799483194053309628.f1, A007606.P7799483194053309628.a, A034877, A034877.P11761815301413299691.f1, A034877.P11761815301413299691.f2, A034877.P11761815301413299691.a, A161983, A161983.P7486085872780093251.a, A034852, A034852.P3004687004049579186.a, A381232, A381232.P8771641921475039308.a, A007318, A007318.P11755526479805562006.a, A034851, A034851.P13180539060758219669.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143596

/-! ## A143596.P13945248660563375500

`A034877(eq[1, A057211(n+1)])`
-/

namespace A143596.P13945248660563375500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143596.P13945248660563375500

namespace A143596

/-- `A034877(eq[1, A057211(n+1)])` -/
def P13945248660563375500.Spec : Prop :=
  ∀ n, P13945248660563375500.a n = A143596 (n + 1)

end A143596

/-! ## A143596.P16005116962307101683

`A034877(2*n-A196199(n))`
-/

namespace A143596.P16005116962307101683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 ((2 * n : ℤ) - A196199 n).toNat

end

end A143596.P16005116962307101683

namespace A143596

/-- `A034877(2*n-A196199(n))` -/
def P16005116962307101683.Spec : Prop :=
  ∀ n, P16005116962307101683.a n = A143596 (n + 1)

theorem P16005116962307101683.correct : P16005116962307101683.Spec := by
  intro n
  simp only [A143596, Nat.add_sub_cancel, A143596.P16005116962307101683.a, A143596.P3332067871505162553.a, A034877, A034877.P11761815301413299691.f1, A034877.P11761815301413299691.f2, A034877.P11761815301413299691.a, A161983, A161983.P7486085872780093251.a, A196199, A196199.P3919230471390252242.a, A034852, A034852.P3004687004049579186.a, A007318, A007318.P11755526479805562006.a, A034851, A034851.P13180539060758219669.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143596

/-! ## A143596.P361394197557915950

`A034877(n-A196199(n)+n)`
-/

namespace A143596.P361394197557915950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A143596.P361394197557915950

namespace A143596

/-- `A034877(n-A196199(n)+n)` -/
def P361394197557915950.Spec : Prop :=
  ∀ n, P361394197557915950.a n = A143596 (n + 1)

theorem P361394197557915950.correct : P361394197557915950.Spec := by
  intro n
  simp only [A143596, Nat.add_sub_cancel, A143596.P361394197557915950.a, A143596.P3332067871505162553.a, A034877, A034877.P11761815301413299691.f1, A034877.P11761815301413299691.f2, A034877.P11761815301413299691.a, A161983, A161983.P7486085872780093251.a, A196199, A196199.P3919230471390252242.a, A034852, A034852.P3004687004049579186.a, A007318, A007318.P11755526479805562006.a, A034851, A034851.P13180539060758219669.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143596

/-! ## A143596.P14707021585209437106

`A034877(n-(A196199(n)-n))`
-/

namespace A143596.P14707021585209437106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A143596.P14707021585209437106

namespace A143596

/-- `A034877(n-(A196199(n)-n))` -/
def P14707021585209437106.Spec : Prop :=
  ∀ n, P14707021585209437106.a n = A143596 (n + 1)

theorem P14707021585209437106.correct : P14707021585209437106.Spec := by
  intro n
  simp only [A143596, Nat.add_sub_cancel, A143596.P14707021585209437106.a, A143596.P3332067871505162553.a, A034877, A034877.P11761815301413299691.f1, A034877.P11761815301413299691.f2, A034877.P11761815301413299691.a, A161983, A161983.P7486085872780093251.a, A196199, A196199.P3919230471390252242.a, A034852, A034852.P3004687004049579186.a, A007318, A007318.P11755526479805562006.a, A034851, A034851.P13180539060758219669.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143596

/-! ## A143596.P12436359453131348757

`A034877(A316965(n)+1)`
-/

namespace A143596.P12436359453131348757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A316965 n + 1).toNat

end

end A143596.P12436359453131348757

namespace A143596

/-- `A034877(A316965(n)+1)` -/
def P12436359453131348757.Spec : Prop :=
  ∀ n, P12436359453131348757.a n = A143596 (n + 1)

end A143596

/-!
# A143597: G.f. satisfies: A(x) = 1 + x*A(2x)*A(-x).

The programs for A143597, there is no canonical definition to state claims against.
-/

/-! ## A143597.P10725514738718443232

`A279004(∑[(1-n)²])`
-/

namespace A143597.P10725514738718443232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279004 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143597.P10725514738718443232

/-! ## A143597.P10671521498354454737

`A052092((n-2)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A143597.P10671521498354454737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052092 (((n : ℤ) - 2) * a (n - 1)).toNat

end

end A143597.P10671521498354454737

/-!
# A143599: E.g.f. satisfies: A(x) = exp( x*sqrt(A(x)/A(-x)) ).

The programs for A143599, there is no canonical definition to state claims against.
-/

/-! ## A143599.P13126705498210436102

`A199202(n)-A004178(A056346(n+1))`
-/

namespace A143599.P13126705498210436102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199202 n - A004178 (A056346 (n + 1)).toNat

end

end A143599.P13126705498210436102

/-! ## A143599.P8729834815463998762

`A199202(n)-A004525(A056286(n+1))`
-/

namespace A143599.P8729834815463998762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199202 n - A004525 (A056286 (n + 1)).toNat

end

end A143599.P8729834815463998762

/-! ## A143599.P2642732924503384749

`A028310(A199202(n)-A056346(n+1))`
-/

namespace A143599.P2642732924503384749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A199202 n - A056346 (n + 1)).toNat

end

end A143599.P2642732924503384749

