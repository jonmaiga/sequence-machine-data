import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A324600: a(n) = (k(n)*(k(n) + 1))/2 with k = A018252 (nonprime numbers), for n >= 1.

The programs for A324600, the canonical program `A324600.P4691746058931788140` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324600 has offset 1).

The definition of A324600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324600.P4691746058931788140

`A000217(A018252(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324600

/-- `A000217(A018252(n+1))` -/
def P4691746058931788140.Spec : Prop :=
  ∀ n, P4691746058931788140.a n = A324600 (n + 1)

theorem P4691746058931788140.correct : P4691746058931788140.Spec := by
  intro n
  simp only [A324600, Nat.add_sub_cancel]

end A324600

/-! ## A324600.P7971200079652808587

`C(Δ[A051349(n)]+1, 2)`
-/

namespace A324600.P7971200079652808587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A324600.P7971200079652808587

namespace A324600

/-- `C(Δ[A051349(n)]+1, 2)` -/
def P7971200079652808587.Spec : Prop :=
  ∀ n, (P7971200079652808587.a n : ℤ) = A324600 (n + 1)

end A324600

/-! ## A324600.P7693824960827796749

`A161570(n+1)+∑[n]`
-/

namespace A324600.P7693824960827796749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161570 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A324600.P7693824960827796749

namespace A324600

/-- `A161570(n+1)+∑[n]` -/
def P7693824960827796749.Spec : Prop :=
  ∀ n, P7693824960827796749.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P14939395561762933827

`C(A141468(n+2)+1, 2)`
-/

namespace A324600.P14939395561762933827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141468 (n + 2) + 1).toNat 2

end

end A324600.P14939395561762933827

namespace A324600

/-- `C(A141468(n+2)+1, 2)` -/
def P14939395561762933827.Spec : Prop :=
  ∀ n, (P14939395561762933827.a n : ℤ) = A324600 (n + 1)

end A324600

/-! ## A324600.P12523091552260078257

`C(A073425(n)+2+n, 2)`
-/

namespace A324600.P12523091552260078257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A073425 n + 2 + (n : ℤ)).toNat 2

end

end A324600.P12523091552260078257

namespace A324600

/-- `C(A073425(n)+2+n, 2)` -/
def P12523091552260078257.Spec : Prop :=
  ∀ n, (P12523091552260078257.a n : ℤ) = A324600 (n + 1)

end A324600

/-! ## A324600.P5108166221621734609

`C(A171504(n+1)-n, 2)`
-/

namespace A324600.P5108166221621734609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A171504 (n + 1) - (n : ℤ)).toNat 2

end

end A324600.P5108166221621734609

namespace A324600

/-- `C(A171504(n+1)-n, 2)` -/
def P5108166221621734609.Spec : Prop :=
  ∀ n, (P5108166221621734609.a n : ℤ) = A324600 (n + 1)

end A324600

/-! ## A324600.P9547927525164543009

`C(∑[A054546(n+1)]+1, 2)`
-/

namespace A324600.P9547927525164543009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A324600.P9547927525164543009

namespace A324600

/-- `C(∑[A054546(n+1)]+1, 2)` -/
def P9547927525164543009.Spec : Prop :=
  ∀ n, (P9547927525164543009.a n : ℤ) = A324600 (n + 1)

end A324600

/-! ## A324600.P1249492778337721020

`C(comp[A057237(n+1)]+2, 2)`
-/

namespace A324600.P1249492778337721020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) 2

end

end A324600.P1249492778337721020

namespace A324600

/-- `C(comp[A057237(n+1)]+2, 2)` -/
def P1249492778337721020.Spec : Prop :=
  ∀ n, (P1249492778337721020.a n : ℤ) = A324600 (n + 1)

end A324600

/-! ## A324600.P4632947733270761599

`C(A222307(2*n+1)+1, 2)`
-/

namespace A324600.P4632947733270761599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A222307 (2 * n + 1) + 1).toNat 2

end

end A324600.P4632947733270761599

namespace A324600

/-- `C(A222307(2*n+1)+1, 2)` -/
def P4632947733270761599.Spec : Prop :=
  ∀ n, (P4632947733270761599.a n : ℤ) = A324600 (n + 1)

end A324600

/-! ## A324600.P2980925699258922895

`C(comp[record[A000010(n+1)]]+2, 2)`
-/

namespace A324600.P2980925699258922895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) 2

end

end A324600.P2980925699258922895

namespace A324600

/-- `C(comp[record[A000010(n+1)]]+2, 2)` -/
def P2980925699258922895.Spec : Prop :=
  ∀ n, (P2980925699258922895.a n : ℤ) = A324600 (n + 1)

end A324600

/-! ## A324600.P2991557637067496420

`A000217(comp[p?[xor(1, n)]-1]+1)`
-/

namespace A324600.P2991557637067496420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A324600.P2991557637067496420

namespace A324600

/-- `A000217(comp[p?[xor(1, n)]-1]+1)` -/
def P2991557637067496420.Spec : Prop :=
  ∀ n, P2991557637067496420.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P14780572366934178291

`A000217(Δ[A051349(n)])`
-/

namespace A324600.P14780572366934178291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat

end

end A324600.P14780572366934178291

namespace A324600

/-- `A000217(Δ[A051349(n)])` -/
def P14780572366934178291.Spec : Prop :=
  ∀ n, P14780572366934178291.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P14742502637992597380

`A000217(A141468(n+2))`
-/

namespace A324600.P14742502637992597380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A141468 (n + 2)).toNat

end

end A324600.P14742502637992597380

namespace A324600

/-- `A000217(A141468(n+2))` -/
def P14742502637992597380.Spec : Prop :=
  ∀ n, P14742502637992597380.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P15372484172159546023

`A000217(comp[A006093(n+1)]+1)`
-/

namespace A324600.P15372484172159546023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A324600.P15372484172159546023

namespace A324600

/-- `A000217(comp[A006093(n+1)]+1)` -/
def P15372484172159546023.Spec : Prop :=
  ∀ n, P15372484172159546023.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P7913962833967441022

`A161777(n+1)+A018252(n+1)`
-/

namespace A324600.P7913962833967441022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161777 (n + 1) + A018252 (n + 1)

end

end A324600.P7913962833967441022

namespace A324600

/-- `A161777(n+1)+A018252(n+1)` -/
def P7913962833967441022.Spec : Prop :=
  ∀ n, P7913962833967441022.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P11944547988837457466

`A062312(n+1)-A161777(n+1)`
-/

namespace A324600.P11944547988837457466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1) - A161777 (n + 1)

end

end A324600.P11944547988837457466

namespace A324600

/-- `A062312(n+1)-A161777(n+1)` -/
def P11944547988837457466.Spec : Prop :=
  ∀ n, P11944547988837457466.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P12219872233320888086

`A051349(n+1)+A007504(A073425(n))`
-/

namespace A324600.P12219872233320888086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1) + A007504 (A073425 n).toNat

end

end A324600.P12219872233320888086

namespace A324600

/-- `A051349(n+1)+A007504(A073425(n))` -/
def P12219872233320888086.Spec : Prop :=
  ∀ n, P12219872233320888086.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P15169078440845246456

`A034953(n+1)+A161570(n+1)-A161624(n+1)`
-/

namespace A324600.P15169078440845246456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + (A161570 (n + 1) - A161624 (n + 1))

end

end A324600.P15169078440845246456

namespace A324600

/-- `A034953(n+1)+A161570(n+1)-A161624(n+1)` -/
def P15169078440845246456.Spec : Prop :=
  ∀ n, P15169078440845246456.a n = A324600 (n + 1)

end A324600

/-! ## A324600.P400633198774843386

`A100542(A065090(n+2))`
-/

namespace A324600.P400633198774843386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100542 (A065090 (n + 2)).toNat

end

end A324600.P400633198774843386

namespace A324600

/-- `A100542(A065090(n+2))` -/
def P400633198774843386.Spec : Prop :=
  ∀ n, P400633198774843386.a n = A324600 (n + 1)

end A324600

/-!
# A324601: Unique solution x of the congruence x^2 = -1 (mod m(n)), with m(n) = A002559(n) (Markoff numbers) in the interval [1, floor(m(n)/2)], assuming the Markoff uniqueness conjecture, for n >= 3.

The programs for A324601, there is no canonical definition to state claims against.
-/

/-! ## A324601.P1862204662810661422

`A305310(A073790(n)+3)`
-/

namespace A324601.P1862204662810661422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (A073790 n + 3).toNat

end

end A324601.P1862204662810661422

/-! ## A324601.P13049758296953461591

`A305310(A032559(n+1)+2)`
-/

namespace A324601.P13049758296953461591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (A032559 (n + 1) + 2).toNat

end

end A324601.P13049758296953461591

/-! ## A324601.P12084063112411193493

`A305310(A032563(n+1)+2)`
-/

namespace A324601.P12084063112411193493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (A032563 (n + 1) + 2).toNat

end

end A324601.P12084063112411193493

/-! ## A324601.P14850262301737359971

`A305310(A032569(n+1)+2)`
-/

namespace A324601.P14850262301737359971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (A032569 (n + 1) + 2).toNat

end

end A324601.P14850262301737359971

/-! ## A324601.P8677432613397895060

`A305310(A052426(n+1)+2)`
-/

namespace A324601.P8677432613397895060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (A052426 (n + 1) + 2).toNat

end

end A324601.P8677432613397895060

/-!
# A324602: Irregular triangle read by rows: T(n, k) gives the coefficients of the Girard-Waring formula for the sum of n-th power of four indeterminates in terms of their elementary symmetric functions (reverse Abramowitz-Stegun order of partitions).

The programs for A324602, there is no canonical definition to state claims against.
-/

/-! ## A324602.P9321355154699132712

`A307449(lt[A326541(n), A292257(n+1)])`
-/

namespace A324602.P9321355154699132712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307449 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324602.P9321355154699132712

/-! ## A324602.P16575755686750088195

`A307449(n+1)%A035116(A256801(n+1))`
-/

namespace A324602.P16575755686750088195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307449 (n + 1)) (A035116 (A256801 (n + 1)).toNat)

end

end A324602.P16575755686750088195

/-! ## A324602.P549698300774477195

`A307449(gcd(A031285(2*n+1), A031285(n)))`
-/

namespace A324602.P549698300774477195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307449 (Int.gcd (A031285 (2 * n + 1)) (A031285 n))

end

end A324602.P549698300774477195

/-! ## A324602.P16318013263063116721

`A307449(n+1)^A307416(A307433(n))`
-/

namespace A324602.P16318013263063116721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307449 (n + 1) : ℚ) ^ (A307416 (A307433 n).toNat : ℤ)

end

end A324602.P16318013263063116721

/-! ## A324602.P11514706617960418377

`A307449(n+1)%A006530(A000051(n))`
-/

namespace A324602.P11514706617960418377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307449 (n + 1)) (A006530 (A000051 n).toNat)

end

end A324602.P11514706617960418377

/-!
# A324603: Number of non-intersecting loops starting at (0,0) on the n X n torus consisting of steps up and to the right.

The programs for A324603, there is no canonical definition to state claims against.
-/

/-! ## A324603.P11305727613367901484

`A324604(∑[n+1])`
-/

namespace A324603.P11305727613367901484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324604 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324603.P11305727613367901484

/-! ## A324603.P15865600170494742289

`record[A324604(comp[∑[n-1]])]`
-/

namespace A324603.P15865600170494742289
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324604 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324603.P15865600170494742289

/-! ## A324603.P417601240204580658

`record[2-Δ[A324604(n+1)]]`
-/

namespace A324603.P417601240204580658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324604 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324603.P417601240204580658

/-!
# A324604: Triangle read by rows: T(n,k) is the number of non-intersecting loops starting at (0,0) on the n X k torus consisting of steps up and to the right, 1 <= k <= n.

The programs for A324604, there is no canonical definition to state claims against.
-/

/-! ## A324604.P16992411542353578755

`A002024(3^A076110(n+1))`
-/

namespace A324604.P16992411542353578755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A076110 (n + 1) : ℤ))).toNat

end

end A324604.P16992411542353578755

/-! ## A324604.P17745559720914149463

`A002024(3^(A079904(n)+1))`
-/

namespace A324604.P17745559720914149463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A079904 n + 1 : ℤ))).toNat

end

end A324604.P17745559720914149463

/-! ## A324604.P5182470959438275756

`A002024(3^A117584(n+1))`
-/

namespace A324604.P5182470959438275756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A117584 (n + 1) : ℤ))).toNat

end

end A324604.P5182470959438275756

/-! ## A324604.P7820289008308600827

`A107436(3^A076110(n+1))`
-/

namespace A324604.P7820289008308600827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A076110 (n + 1) : ℤ))).toNat

end

end A324604.P7820289008308600827

/-! ## A324604.P16173043961522124489

`A123578(3^A076110(n+1))`
-/

namespace A324604.P16173043961522124489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A076110 (n + 1) : ℤ))).toNat

end

end A324604.P16173043961522124489

/-!
# A324606: The x-coordinates of squares visited by knight moves on a spirally numbered board and moving to the lowest available unvisited square at each step.

The programs for A324606, there is no canonical definition to state claims against.
-/

/-! ## A324606.P9568200704053469677

`A174344(A316667(n+1))`
-/

namespace A324606.P9568200704053469677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A316667 (n + 1)).toNat

end

end A324606.P9568200704053469677

/-! ## A324606.P15045286118211203577

`A296030(2*A316328(n)+1)`
-/

namespace A324606.P15045286118211203577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A316328 n + 1).toNat

end

end A324606.P15045286118211203577

/-! ## A324606.P7115156833939014970

`A296030(2*A316667(n+1)-1)`
-/

namespace A324606.P7115156833939014970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A316667 (n + 1) - 1).toNat

end

end A324606.P7115156833939014970

/-! ## A324606.P8830382130806604579

`A296030(A316328(n)+A316328(n)+1)`
-/

namespace A324606.P8830382130806604579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A316328 n + (A316328 n + 1)).toNat

end

end A324606.P8830382130806604579

/-! ## A324606.P8387899543209142431

`A296030(A316667(n+1)+A316667(n+1)-1)`
-/

namespace A324606.P8387899543209142431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A316667 (n + 1) + (A316667 (n + 1) - 1)).toNat

end

end A324606.P8387899543209142431

/-! ## A324606.P12446125801613385540

`A174344(A317620(n+1))/2`
-/

namespace A324606.P12446125801613385540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174344 (A317620 (n + 1)).toNat : ℚ) / 2

end

end A324606.P12446125801613385540

/-!
# A324607: The y-coordinates of squares visited by knight moves on a spirally numbered board and moving to the lowest available unvisited square at each step.

The programs for A324607, there is no canonical definition to state claims against.
-/

/-! ## A324607.P1692333084939824874

`A274923(A316667(n+1))`
-/

namespace A324607.P1692333084939824874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A316667 (n + 1)).toNat

end

end A324607.P1692333084939824874

/-! ## A324607.P10934029631333866668

`A296030(2*(A316328(n)+1))`
-/

namespace A324607.P10934029631333866668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * (A316328 n + 1)).toNat

end

end A324607.P10934029631333866668

/-! ## A324607.P4020552042371602286

`A296030(2*A316667(n+1))`
-/

namespace A324607.P4020552042371602286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A316667 (n + 1)).toNat

end

end A324607.P4020552042371602286

/-! ## A324607.P10472448586454556687

`A296030(A316328(n)+A316328(n)+2)`
-/

namespace A324607.P10472448586454556687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A316328 n + (A316328 n + 2)).toNat

end

end A324607.P10472448586454556687

/-! ## A324607.P16836295024972955063

`A274923(A317620(n+1))/2`
-/

namespace A324607.P16836295024972955063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274923 (A317620 (n + 1)).toNat : ℚ) / 2

end

end A324607.P16836295024972955063

/-!
# A324609: E.g.f. C(x,y) = cos(y) / sqrt(1 - sin(x)^2 - sin(y)^2).

The programs for A324609, there is no canonical definition to state claims against.
-/

/-! ## A324609.P11561140219605894159

`A324611(A061579(n))`
-/

namespace A324609.P11561140219605894159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324611 (A061579 n).toNat

end

end A324609.P11561140219605894159

/-! ## A324609.P7990822094608091025

`A324611(A114327(n)+n)`
-/

namespace A324609.P7990822094608091025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324611 (A114327 n + (n : ℤ)).toNat

end

end A324609.P7990822094608091025

/-! ## A324609.P16598954541409146614

`A324611(A038722(n+1)-1)`
-/

namespace A324609.P16598954541409146614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324611 (A038722 (n + 1) - 1).toNat

end

end A324609.P16598954541409146614

/-! ## A324609.P9870523393245767444

`A324611(A002378(n)%A014132(n+1))`
-/

namespace A324609.P9870523393245767444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324611 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A324609.P9870523393245767444

/-! ## A324609.P16623467228425625205

`A324611(A127739(n+1)-A002260(n+1))`
-/

namespace A324609.P16623467228425625205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324611 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A324609.P16623467228425625205

/-!
# A324610: E.g.f. S(x,y) = sin(x) / sqrt(1 - sin(x)^2 - sin(y)^2).

The programs for A324610, there is no canonical definition to state claims against.
-/

/-! ## A324610.P15006432297060392600

`A324612(A061579(n))`
-/

namespace A324610.P15006432297060392600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324612 (A061579 n).toNat

end

end A324610.P15006432297060392600

/-! ## A324610.P3967091899871372462

`A324612(A114327(n)+n)`
-/

namespace A324610.P3967091899871372462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324612 (A114327 n + (n : ℤ)).toNat

end

end A324610.P3967091899871372462

/-! ## A324610.P444156243744859836

`A324612(∑[A198954(n)-1])`
-/

namespace A324610.P444156243744859836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324612 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324610.P444156243744859836

/-! ## A324610.P4649498901129729062

`A324612(A038722(n+1)-1)`
-/

namespace A324610.P4649498901129729062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324612 (A038722 (n + 1) - 1).toNat

end

end A324610.P4649498901129729062

/-! ## A324610.P10641206108148456384

`A324612(A023443(A038722(n+1)))`
-/

namespace A324610.P10641206108148456384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324612 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A324610.P10641206108148456384

/-! ## A324610.P10003383347437639179

`A324612(A259361(A038722(n+1)²))`
-/

namespace A324610.P10003383347437639179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324612 (A259361 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A324610.P10003383347437639179

/-!
# A324611: E.g.f. C(y,x) = cos(x) / sqrt(1 - sin(x)^2 - sin(y)^2).

The programs for A324611, there is no canonical definition to state claims against.
-/

/-! ## A324611.P7136265349025792666

`A324609(A061579(n))`
-/

namespace A324611.P7136265349025792666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (A061579 n).toNat

end

end A324611.P7136265349025792666

/-! ## A324611.P5866559582984300322

`A324609(A114327(n)+n)`
-/

namespace A324611.P5866559582984300322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (A114327 n + (n : ℤ)).toNat

end

end A324611.P5866559582984300322

/-! ## A324611.P9944312872702123345

`A324609(∑[A198954(n)-1])`
-/

namespace A324611.P9944312872702123345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324611.P9944312872702123345

/-! ## A324611.P2196862485988267024

`A324609(A038722(n+1)-1)`
-/

namespace A324611.P2196862485988267024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (A038722 (n + 1) - 1).toNat

end

end A324611.P2196862485988267024

/-! ## A324611.P11420073558883323772

`A324609(A002378(n)%A014132(n+1))`
-/

namespace A324611.P11420073558883323772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A324611.P11420073558883323772

/-! ## A324611.P13897337224518248538

`A324609(∑[A005843(n)]%A014132(n+1))`
-/

namespace A324611.P13897337224518248538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A014132 (n + 1))).toNat

end

end A324611.P13897337224518248538

/-! ## A324611.P15947429633382023178

`A324609(A127739(n+1)-A002260(n+1))`
-/

namespace A324611.P15947429633382023178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A324611.P15947429633382023178

/-!
# A324612: E.g.f. S(y,x) = sin(y) / sqrt(1 - sin(x)^2 - sin(y)^2).

The programs for A324612, there is no canonical definition to state claims against.
-/

/-! ## A324612.P9213717591724150634

`A324610(A061579(n))`
-/

namespace A324612.P9213717591724150634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324610 (A061579 n).toNat

end

end A324612.P9213717591724150634

/-! ## A324612.P7847885871220364664

`A324610(A114327(n)+n)`
-/

namespace A324612.P7847885871220364664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324610 (A114327 n + (n : ℤ)).toNat

end

end A324612.P7847885871220364664

/-! ## A324612.P6144401595169740240

`A324610(A038722(n+1)-1)`
-/

namespace A324612.P6144401595169740240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324610 (A038722 (n + 1) - 1).toNat

end

end A324612.P6144401595169740240

/-! ## A324612.P5170382640068704012

`A324610(A002378(n)%A014132(n+1))`
-/

namespace A324612.P5170382640068704012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324610 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A324612.P5170382640068704012

/-! ## A324612.P2017169507780003805

`A324610(∑[A005843(n)]%A014132(n+1))`
-/

namespace A324612.P2017169507780003805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324610 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A014132 (n + 1))).toNat

end

end A324612.P2017169507780003805

/-! ## A324612.P17630645029762409922

`A324610(A127739(n+1)-A002260(n+1))`
-/

namespace A324612.P17630645029762409922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324610 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A324612.P17630645029762409922

/-!
# A324615: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n / A(x)^(n+1) * Product_{k=1..n} (1 + k*x).

The programs for A324615, there is no canonical definition to state claims against.
-/

/-! ## A324615.P6237074325749847606

`ceil(A319629(n+1)/4)`
-/

namespace A324615.P6237074325749847606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319629 (n + 1) : ℚ) / 4⌉

end

end A324615.P6237074325749847606

/-! ## A324615.P9158250124215104432

`A197432(A048736(n))`
-/

namespace A324615.P9158250124215104432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197432 (A048736 n).toNat

end

end A324615.P9158250124215104432

/-! ## A324615.P15604841726743126764

`A347707(Δ[A000055(n)])`
-/

namespace A324615.P15604841726743126764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347707 (f1 (n + 1) - f1 n).toNat

end

end A324615.P15604841726743126764

/-! ## A324615.P14456241727213433167

`A110029(A080498(n+1))`
-/

namespace A324615.P14456241727213433167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (A080498 (n + 1)).toNat

end

end A324615.P14456241727213433167

/-! ## A324615.P8856449028975587015

`A050761(A327734(n+2))`
-/

namespace A324615.P8856449028975587015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050761 (A327734 (n + 2)).toNat

end

end A324615.P8856449028975587015

/-!
# A324618: G.f. A(x) = Sum_{n>=0} x^n*(A(x)^n - 1)^n/(1 - x*A(x)^n)^(n+1).

The programs for A324618, there is no canonical definition to state claims against.
-/

/-! ## A324618.P15842231742075537555

`A107037(A049774(n))`
-/

namespace A324618.P15842231742075537555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A049774 n).toNat

end

end A324618.P15842231742075537555

/-! ## A324618.P3810730133046691164

`∑[A242062(∑[A053418(n)])]`
-/

namespace A324618.P3810730133046691164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324618.P3810730133046691164

/-! ## A324618.P15693141977262575020

`A108954(or(2*n, A155857(n)))`
-/

namespace A324618.P15693141977262575020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor (2 * n : ℤ) (A155857 n)).toNat

end

end A324618.P15693141977262575020

/-!
# A324619: G.f. A(x) = Sum_{n>=0} x^n*(A(x)^n + i)^n/(1 + i*x*A(x)^n)^(n+1), where i^2 = -1.

The programs for A324619, there is no canonical definition to state claims against.
-/

/-! ## A324619.P13184986137690096943

`A208529(n+2)-A000120(A032315(n+1))`
-/

namespace A324619.P13184986137690096943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208529 (n + 2) - A000120 (A032315 (n + 1)).toNat

end

end A324619.P13184986137690096943

/-! ## A324619.P4059062210383435109

`A318757(2*n²)+A028242(A248869(2*n))`
-/

namespace A324619.P4059062210383435109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (2 * n ^ 2) + A028242 (A248869 (2 * n)).toNat

end

end A324619.P4059062210383435109

/-! ## A324619.P16415576561745057604

`A028242(A248869(2*n))+A095341(n+1)/(n+1)`
-/

namespace A324619.P16415576561745057604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (A248869 (2 * n)).toNat : ℚ) + (A095341 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A324619.P16415576561745057604

/-!
# A324620: G.f. A(x) = Sum_{n>=0} x^n*(A(x)^n + sqrt(2))^n/(1 + sqrt(2)*x*A(x)^n)^(n+1).

The programs for A324620, there is no canonical definition to state claims against.
-/

/-! ## A324620.P8006176604489579564

`A070868(A250205(n+1)+n!)`
-/

namespace A324620.P8006176604489579564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A250205 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A324620.P8006176604489579564

/-! ## A324620.P18195729631203864195

`A070868(A091862(n+1)+A000142(n))`
-/

namespace A324620.P18195729631203864195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A091862 (n + 1) + A000142 n).toNat

end

end A324620.P18195729631203864195

/-! ## A324620.P14516897753656883113

`A070868(A250205(n+1)+A177281(n))`
-/

namespace A324620.P14516897753656883113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A250205 (n + 1) + A177281 n).toNat

end

end A324620.P14516897753656883113

/-! ## A324620.P7211163921161149439

`A008615(A350907(n)+A154866(n+1))`
-/

namespace A324620.P7211163921161149439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A350907 n + A154866 (n + 1)).toNat

end

end A324620.P7211163921161149439

/-!
# A324621: Number of permutations p of [1+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(1+n)*[i

The programs for A324621, there is no canonical definition to state claims against.
-/

/-! ## A324621.P13166792487954707260

`A000166(n+1)-A335700(n+1)`
-/

namespace A324621.P13166792487954707260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) - A335700 (n + 1)

end

end A324621.P13166792487954707260

/-! ## A324621.P5649623397199791768

`A324564(∑[n+1]+1)`
-/

namespace A324621.P5649623397199791768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A324621.P5649623397199791768

/-! ## A324621.P2790515783785610639

`A324563(∑[n+2]-1)`
-/

namespace A324621.P2790515783785610639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A324621.P2790515783785610639

/-! ## A324621.P12706572099136589008

`lcm((-1)^n, A324563(A034856(n+1)))`
-/

namespace A324621.P12706572099136589008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A324563 (A034856 (n + 1)).toNat)

end

end A324621.P12706572099136589008

/-! ## A324621.P4576714203289088854

`A324563(A034856(n+1))+A025469(n)`
-/

namespace A324621.P4576714203289088854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A034856 (n + 1)).toNat + A025469 n

end

end A324621.P4576714203289088854

/-!
# A324622: Number of permutations p of [2+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(2+n)*[i

The programs for A324622, there is no canonical definition to state claims against.
-/

/-! ## A324622.P14237928663464808705

`A000179(n+2)-A000183(n+2)`
-/

namespace A324622.P14237928663464808705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 (n + 2) - A000183 (n + 2)

end

end A324622.P14237928663464808705

/-! ## A324622.P10955419070948314978

`Δ[A000271(n+1)]-A000183(n+2)`
-/

namespace A324622.P10955419070948314978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000183 (n + 2)

end

end A324622.P10955419070948314978

/-! ## A324622.P16239268163327748623

`A094314(A253145(n+1))-A000183(n+2)`
-/

namespace A324622.P16239268163327748623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A253145 (n + 1)).toNat - A000183 (n + 2)

end

end A324622.P16239268163327748623

/-! ## A324622.P1949720250327361731

`A058087(A000096(n+2))-A000183(n+2)`
-/

namespace A324622.P1949720250327361731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A000096 (n + 2)).toNat - A000183 (n + 2)

end

end A324622.P1949720250327361731

/-! ## A324622.P16187714438554270139

`A094314(A000217(n+2))-A000183(n+2)`
-/

namespace A324622.P16187714438554270139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A000217 (n + 2)).toNat - A000183 (n + 2)

end

end A324622.P16187714438554270139

/-!
# A324623: Number of permutations p of [3+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(3+n)*[i

The programs for A324623, there is no canonical definition to state claims against.
-/

/-! ## A324623.P13212200036729068207

`A324563(∑[n+3]+n+3)`
-/

namespace A324623.P13212200036729068207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A324623.P13212200036729068207

/-! ## A324623.P7201270467610972363

`A324564(A167614(n+2))`
-/

namespace A324623.P7201270467610972363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A167614 (n + 2)).toNat

end

end A324623.P7201270467610972363

/-! ## A324623.P6951774244463535471

`A324564(A152950(n+4))`
-/

namespace A324623.P6951774244463535471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A152950 (n + 4)).toNat

end

end A324623.P6951774244463535471

/-! ## A324623.P18232094122511668654

`A324564(A141214(n)+6)`
-/

namespace A324623.P18232094122511668654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A141214 n + 6).toNat

end

end A324623.P18232094122511668654

/-! ## A324623.P16538656328667680933

`A324564(A052905(n)+8)`
-/

namespace A324623.P16538656328667680933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A052905 n + 8).toNat

end

end A324623.P16538656328667680933

/-!
# A324624: Number of permutations p of [4+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(4+n)*[i

The programs for A324624, there is no canonical definition to state claims against.
-/

/-! ## A324624.P16909705141769991649

`A004307(n+4)-A189389(n+4)`
-/

namespace A324624.P16909705141769991649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004307 (n + 4) - A189389 (n + 4)

end

end A324624.P16909705141769991649

/-! ## A324624.P13873056734040916044

`A324563(A052905(n+2))`
-/

namespace A324624.P13873056734040916044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A052905 (n + 2)).toNat

end

end A324624.P13873056734040916044

/-! ## A324624.P16241152865582064602

`A324564(eq[3, A141169(n)])`
-/

namespace A324624.P16241152865582064602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324624.P16241152865582064602

/-! ## A324624.P14841278867359421004

`A324563(A141214(n+2)-2)`
-/

namespace A324624.P14841278867359421004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A141214 (n + 2) - 2).toNat

end

end A324624.P14841278867359421004

/-! ## A324624.P12626045257405092369

`A324564(A034856(n+3)+6)`
-/

namespace A324624.P12626045257405092369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A034856 (n + 3) + 6).toNat

end

end A324624.P12626045257405092369

/-!
# A324625: Number of permutations p of [5+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(5+n)*[i

The programs for A324625, there is no canonical definition to state claims against.
-/

/-! ## A324625.P5487521338788695529

`A189389(n+5)-A184965(n+5)`
-/

namespace A324625.P5487521338788695529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189389 (n + 5) - A184965 (n + 5)

end

end A324625.P5487521338788695529

/-! ## A324625.P14445309612790052855

`A324563(∑[n+6]+9)`
-/

namespace A324625.P14445309612790052855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A324625.P14445309612790052855

/-! ## A324625.P7748811947796904681

`A324564(eq[5, A002262(n)])`
-/

namespace A324625.P7748811947796904681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324625.P7748811947796904681

/-! ## A324625.P16523858689514677944

`A324564(eq[5, A141169(n)])`
-/

namespace A324625.P16523858689514677944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324625.P16523858689514677944

/-! ## A324625.P11027050130510225664

`A324564(eq[6, A002260(n+1)])`
-/

namespace A324625.P11027050130510225664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324625.P11027050130510225664

/-!
# A324626: Number of permutations p of [6+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(6+n)*[i

The programs for A324626, there is no canonical definition to state claims against.
-/

/-! ## A324626.P6415066372418425506

`A324564(eq[6, A002262(n)])`
-/

namespace A324626.P6415066372418425506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324626.P6415066372418425506

/-! ## A324626.P16703966558834714354

`A324563(eq[6, A025581(n)])`
-/

namespace A324626.P16703966558834714354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324626.P16703966558834714354

/-! ## A324626.P7268161550946230182

`A324564(eq[8, A141169(n)])`
-/

namespace A324626.P7268161550946230182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324626.P7268161550946230182

/-! ## A324626.P1579172028433287861

`A324564(eq[7, A002260(n+1)])`
-/

namespace A324626.P1579172028433287861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324626.P1579172028433287861

/-! ## A324626.P15485972194396293278

`A324563(eq[7, A004736(n+1)])`
-/

namespace A324626.P15485972194396293278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324626.P15485972194396293278

/-!
# A324627: Number of permutations p of [7+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(7+n)*[i

The programs for A324627, there is no canonical definition to state claims against.
-/

/-! ## A324627.P10823778275210788971

`A324563(A155212(n+4))`
-/

namespace A324627.P10823778275210788971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A155212 (n + 4)).toNat

end

end A324627.P10823778275210788971

/-! ## A324627.P9251537364648395529

`A324564(eq[7, A002262(n)])`
-/

namespace A324627.P9251537364648395529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324627.P9251537364648395529

/-! ## A324627.P6692299692136293648

`A324563(eq[7, A025581(n)])`
-/

namespace A324627.P6692299692136293648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324627.P6692299692136293648

/-! ## A324627.P4539903556994029687

`A324564(eq[8, A002260(n+1)])`
-/

namespace A324627.P4539903556994029687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324627.P4539903556994029687

/-! ## A324627.P5431380275611944767

`A324563(eq[8, A004736(n+1)])`
-/

namespace A324627.P5431380275611944767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324627.P5431380275611944767

/-!
# A324628: Number of permutations p of [8+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(8+n)*[i

The programs for A324628, there is no canonical definition to state claims against.
-/

/-! ## A324628.P7642523848769890220

`A324564(eq[8, A002262(n)])`
-/

namespace A324628.P7642523848769890220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324628.P7642523848769890220

/-! ## A324628.P5527025448387701092

`A324563(eq[8, A025581(n)])`
-/

namespace A324628.P5527025448387701092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324628.P5527025448387701092

/-! ## A324628.P5934383036062995080

`A324564(eq[21, A141169(n)])`
-/

namespace A324628.P5934383036062995080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324628.P5934383036062995080

/-! ## A324628.P4161500590869631763

`A324564(eq[9, A002260(n+1)])`
-/

namespace A324628.P4161500590869631763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324628.P4161500590869631763

/-! ## A324628.P7396383263248463450

`A324564(eq[17, A158405(n+1)])`
-/

namespace A324628.P7396383263248463450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324628.P7396383263248463450

/-!
# A324629: Number of permutations p of [9+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(9+n)*[i

The programs for A324629, there is no canonical definition to state claims against.
-/

/-! ## A324629.P10689040077757430930

`A324563(eq[8, A116598(n)])`
-/

namespace A324629.P10689040077757430930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324629.P10689040077757430930

/-! ## A324629.P3853237765850265628

`A324564(eq[9, A002262(n)])`
-/

namespace A324629.P3853237765850265628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324629.P3853237765850265628

/-! ## A324629.P14271936514848440610

`A324563(eq[9, A025581(n)])`
-/

namespace A324629.P14271936514848440610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324629.P14271936514848440610

/-! ## A324629.P17447054607014512340

`A324564(eq[9, A191532(n)])`
-/

namespace A324629.P17447054607014512340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324629.P17447054607014512340

/-!
# A324630: Number of permutations p of [10+n] such that n is the maximum of the number of elements in any integer interval [p(i)..i+(10+n)*[i

The programs for A324630, there is no canonical definition to state claims against.
-/

/-! ## A324630.P5838167581051285977

`A324564(eq[10, A002262(n)])`
-/

namespace A324630.P5838167581051285977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324630.P5838167581051285977

/-! ## A324630.P9785756432924511571

`A324563(eq[10, A025581(n)])`
-/

namespace A324630.P9785756432924511571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324630.P9785756432924511571

/-! ## A324630.P13374560382998805265

`A324564(eq[10, A327844(n+1)])`
-/

namespace A324630.P13374560382998805265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324630.P13374560382998805265

/-! ## A324630.P15174759790210582518

`A324564(eq[11, A002260(n+1)])`
-/

namespace A324630.P15174759790210582518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324630.P15174759790210582518

/-!
# A324631: Number of permutations p of [n] such that four is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

The programs for A324631, the canonical program `A324631.P5598610693582606053` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324631 has offset 4).

The definition of A324631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324631.P5598610693582606053

`A004306(n+4)-A000211(n+4)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A324631

/-- `A004306(n+4)-A000211(n+4)` -/
def P5598610693582606053.Spec : Prop :=
  ∀ n, P5598610693582606053.a n = A324631 (n + 4)

theorem P5598610693582606053.correct : P5598610693582606053.Spec := by
  intro n
  simp only [A324631, Nat.add_sub_cancel]

end A324631

/-! ## A324631.P16020048618488710876

`A000803(n+6)-A000211(n+4)`
-/

namespace A324631.P16020048618488710876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000803 (n + 6) - A000211 (n + 4)

end

end A324631.P16020048618488710876

namespace A324631

/-- `A000803(n+6)-A000211(n+4)` -/
def P16020048618488710876.Spec : Prop :=
  ∀ n, P16020048618488710876.a n = A324631 (n + 4)

end A324631

/-! ## A324631.P15889780765473356896

`A001644(n+1)+A001644(n+5)-A000204(n+4)`
-/

namespace A324631.P15889780765473356896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + (A001644 (n + 5) - A000204 (n + 4))

end

end A324631.P15889780765473356896

namespace A324631

/-- `A001644(n+1)+A001644(n+5)-A000204(n+4)` -/
def P15889780765473356896.Spec : Prop :=
  ∀ n, P15889780765473356896.a n = A324631 (n + 4)

end A324631

/-! ## A324631.P10492481048496888645

`A324564(A052905(n+2))`
-/

namespace A324631.P10492481048496888645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A052905 (n + 2)).toNat

end

end A324631.P10492481048496888645

namespace A324631

/-- `A324564(A052905(n+2))` -/
def P10492481048496888645.Spec : Prop :=
  ∀ n, P10492481048496888645.a n = A324631 (n + 4)

end A324631

/-! ## A324631.P17021441084946589983

`A324563(A000096(n+3)+5)`
-/

namespace A324631.P17021441084946589983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A000096 (n + 3) + 5).toNat

end

end A324631.P17021441084946589983

namespace A324631

/-- `A324563(A000096(n+3)+5)` -/
def P17021441084946589983.Spec : Prop :=
  ∀ n, P17021441084946589983.a n = A324631 (n + 4)

end A324631

/-!
# A324632: Number of permutations p of [n] such that five is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

The programs for A324632, there is no canonical definition to state claims against.
-/

/-! ## A324632.P11605738518403815654

`A000804(n+5)-A004306(n+5)`
-/

namespace A324632.P11605738518403815654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000804 (n + 5) - A004306 (n + 5)

end

end A324632.P11605738518403815654

/-! ## A324632.P17466601621216028891

`A000804(n+5)-A000803(n+7)`
-/

namespace A324632.P17466601621216028891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000804 (n + 5) - A000803 (n + 7)

end

end A324632.P17466601621216028891

/-! ## A324632.P11688364921390315668

`A324564(A055999(n+3))`
-/

namespace A324632.P11688364921390315668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A055999 (n + 3)).toNat

end

end A324632.P11688364921390315668

/-! ## A324632.P9263290556271760026

`A324563(eq[5, A002262(n)])`
-/

namespace A324632.P9263290556271760026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324632.P9263290556271760026

/-! ## A324632.P14193130923816902493

`A324563(A161680(n+7)-(n+1))`
-/

namespace A324632.P14193130923816902493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A161680 (n + 7) - (n + 1 : ℤ)).toNat

end

end A324632.P14193130923816902493

/-!
# A324633: Number of permutations p of [n] such that six is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

The programs for A324633, there is no canonical definition to state claims against.
-/

/-! ## A324633.P10066025787501694898

`A324563(eq[6, A002262(n)])`
-/

namespace A324633.P10066025787501694898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324633.P10066025787501694898

/-! ## A324633.P11829294865914432264

`A324563(eq[8, A141169(n)])`
-/

namespace A324633.P11829294865914432264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324633.P11829294865914432264

/-! ## A324633.P4033675445347747327

`A324563(eq[64, A059268(n)])`
-/

namespace A324633.P4033675445347747327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324633.P4033675445347747327

/-! ## A324633.P13598115813173790020

`A324563(eq[5, A327844(n+1)])`
-/

namespace A324633.P13598115813173790020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324633.P13598115813173790020

/-! ## A324633.P2243092653741158942

`A324563(eq[7, A002260(n+1)])`
-/

namespace A324633.P2243092653741158942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324633.P2243092653741158942

/-!
# A324634: Number of permutations p of [n] such that seven is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

The programs for A324634, there is no canonical definition to state claims against.
-/

/-! ## A324634.P10993181779386957176

`A324563(eq[7, A002262(n)])`
-/

namespace A324634.P10993181779386957176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324634.P10993181779386957176

/-! ## A324634.P3288125916821668743

`A324564(eq[7, A025581(n)])`
-/

namespace A324634.P3288125916821668743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324634.P3288125916821668743

/-! ## A324634.P1711833588631679730

`A324564(eq[8, A195663(n)])`
-/

namespace A324634.P1711833588631679730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324634.P1711833588631679730

/-! ## A324634.P11250672496130098209

`A324563(eq[13, A141169(n)])`
-/

namespace A324634.P11250672496130098209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324634.P11250672496130098209

/-!
# A324635: Number of permutations p of [n] such that eight is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

The programs for A324635, there is no canonical definition to state claims against.
-/

/-! ## A324635.P12018915249693471948

`A324563(eq[8, A002262(n)])`
-/

namespace A324635.P12018915249693471948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324635.P12018915249693471948

/-! ## A324635.P5254110397450485974

`A324564(eq[8, A025581(n)])`
-/

namespace A324635.P5254110397450485974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324635.P5254110397450485974

/-! ## A324635.P2498065139106717472

`A324563(eq[21, A141169(n)])`
-/

namespace A324635.P2498065139106717472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324635.P2498065139106717472

/-! ## A324635.P1615628794071955710

`A324563(eq[9, A002260(n+1)])`
-/

namespace A324635.P1615628794071955710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324635.P1615628794071955710

/-! ## A324635.P11411678856423920832

`A324564(eq[9, A004736(n+1)])`
-/

namespace A324635.P11411678856423920832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324635.P11411678856423920832

/-!
# A324636: Number of permutations p of [n] such that nine is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

The programs for A324636, there is no canonical definition to state claims against.
-/

/-! ## A324636.P12375918634234883734

`A324564(A056000(n+6))`
-/

namespace A324636.P12375918634234883734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A056000 (n + 6)).toNat

end

end A324636.P12375918634234883734

/-! ## A324636.P8906239662045391179

`A324563(eq[9, A002262(n)])`
-/

namespace A324636.P8906239662045391179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324636.P8906239662045391179

/-! ## A324636.P5784968720854671389

`A324564(eq[9, A025581(n)])`
-/

namespace A324636.P5784968720854671389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324636.P5784968720854671389

/-! ## A324636.P10140637794363858354

`A324563(eq[10, A002260(n+1)])`
-/

namespace A324636.P10140637794363858354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324636.P10140637794363858354

/-! ## A324636.P5384142282001880901

`A324564(eq[10, A004736(n+1)])`
-/

namespace A324636.P5384142282001880901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324636.P5384142282001880901

/-!
# A324637: Number of permutations p of [n] such that ten is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

The programs for A324637, there is no canonical definition to state claims against.
-/

/-! ## A324637.P14834079875096420025

`A324563(eq[10, A002262(n)])`
-/

namespace A324637.P14834079875096420025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324637.P14834079875096420025

/-! ## A324637.P8461517719839010217

`A324564(eq[10, A025581(n)])`
-/

namespace A324637.P8461517719839010217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324637.P8461517719839010217

/-! ## A324637.P16616219190634136150

`A324564(eq[11, A195663(n)])`
-/

namespace A324637.P16616219190634136150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324637.P16616219190634136150

/-! ## A324637.P12726773277618473652

`A324563(eq[11, A002260(n+1)])`
-/

namespace A324637.P12726773277618473652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324637.P12726773277618473652

/-! ## A324637.P13322678599814746789

`A324564(eq[11, A004736(n+1)])`
-/

namespace A324637.P13322678599814746789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324637.P13322678599814746789

/-!
# A324638: Number of permutations p of [2n] such that n is the maximum of 0 and the number of elements in any integer interval [p(i)..i+2n*[i

The programs for A324638, there is no canonical definition to state claims against.
-/

/-! ## A324638.P12220257863447663165

`A324563(∑[4*n])`
-/

namespace A324638.P12220257863447663165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324638.P12220257863447663165

/-! ## A324638.P10875594904028692205

`A324564(∑[4*n])`
-/

namespace A324638.P10875594904028692205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324638.P10875594904028692205

/-! ## A324638.P6929250269402886709

`A015838(n)*A324563(A046092(n))`
-/

namespace A324638.P6929250269402886709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 n * A324563 (A046092 n).toNat

end

end A324638.P6929250269402886709

/-! ## A324638.P5287043637439838519

`gcd(A000038(n), A324563(A046092(n)))`
-/

namespace A324638.P5287043637439838519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A324563 (A046092 n).toNat)

end

end A324638.P5287043637439838519

/-! ## A324638.P1031527014032661506

`A324563(A046092(n))%A000108(A000040(n+1))`
-/

namespace A324638.P1031527014032661506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324563 (A046092 n).toNat) (A000108 (A000040 (n + 1)).toNat)

end

end A324638.P1031527014032661506

/-!
# A324639: Numbers k such that bitand(2k,sigma(k)) = 2*bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

The programs for A324639, the canonical program `A324639.P17877870540520381496` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324639 has offset 1).

The definition of A324639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324639.P17877870540520381496

`eq[(A318466(n+1)-A318467(n+1))/2, A318458(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A324639

/-- `eq[(A318466(n+1)-A318467(n+1))/2, A318458(n+1)]+1` -/
def P17877870540520381496.Spec : Prop :=
  ∀ n, (P17877870540520381496.a n : ℤ) = A324639 (n + 1)

theorem P17877870540520381496.correct : P17877870540520381496.Spec := by
  intro n
  simp only [A324639, Nat.add_sub_cancel]

end A324639

/-! ## A324639.P11714803893178368850

`eq[A318458(n+1), A324659(n+1)]+1`
-/

namespace A324639.P11714803893178368850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324659 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324639.P11714803893178368850

namespace A324639

/-- `eq[A318458(n+1), A324659(n+1)]+1` -/
def P11714803893178368850.Spec : Prop :=
  ∀ n, (P11714803893178368850.a n : ℤ) = A324639 (n + 1)

end A324639

/-! ## A324639.P14093348877226993139

`eq[A324648(n+1), A324658(n+1)]+1`
-/

namespace A324639.P14093348877226993139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324639.P14093348877226993139

namespace A324639

/-- `eq[A324648(n+1), A324658(n+1)]+1` -/
def P14093348877226993139.Spec : Prop :=
  ∀ n, (P14093348877226993139.a n : ℤ) = A324639 (n + 1)

end A324639

/-! ## A324639.P8075282939659800070

`eq[A001221(A270339(n+1)), A333939(n)]`
-/

namespace A324639.P8075282939659800070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A270339 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324639.P8075282939659800070

namespace A324639

/-- `eq[A001221(A270339(n+1)), A333939(n)]` -/
def P8075282939659800070.Spec : Prop :=
  ∀ n, (P8075282939659800070.a n : ℤ) = A324639 (n + 1)

end A324639

/-! ## A324639.P15553995884629350017

`lt[A121400(A210971(n+1)), A211006(n+1)]`
-/

namespace A324639.P15553995884629350017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121400 (A210971 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324639.P15553995884629350017

namespace A324639

/-- `lt[A121400(A210971(n+1)), A211006(n+1)]` -/
def P15553995884629350017.Spec : Prop :=
  ∀ n, (P15553995884629350017.a n : ℤ) = A324639 (n + 1)

end A324639

/-!
# A324640: Dirichlet inverse of the Doudna sequence, A005940.

The programs for A324640, there is no canonical definition to state claims against.
-/

/-! ## A324640.P12251038867036080326

`A324641(n+1)-A005940(n+1)`
-/

namespace A324640.P12251038867036080326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A005940 (n + 1)

end

end A324640.P12251038867036080326

/-! ## A324640.P8832665233511620839

`A324641(n+1)-(A340362(n+1)+A324106(n+1))`
-/

namespace A324640.P8832665233511620839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - (A340362 (n + 1) + A324106 (n + 1))

end

end A324640.P8832665233511620839

/-! ## A324640.P9005185633551312133

`A324641(n+1)-A243353(A006068(n))`
-/

namespace A324640.P9005185633551312133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A243353 (A006068 n).toNat

end

end A324640.P9005185633551312133

/-! ## A324640.P18124822676571627633

`A324641(n+1)-A279338(A279344(n))`
-/

namespace A324640.P18124822676571627633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A279338 (A279344 n).toNat

end

end A324640.P18124822676571627633

/-! ## A324640.P11436800160241266031

`A324641(n+1)-A253565(A030109(2*n+1))`
-/

namespace A324640.P11436800160241266031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A253565 (A030109 (2 * n + 1)).toNat

end

end A324640.P11436800160241266031

/-! ## A324640.P8345543800518831175

`A324641(n+1)-A292602(A004767(n))`
-/

namespace A324640.P8345543800518831175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A292602 (A004767 n).toNat

end

end A324640.P8345543800518831175

/-! ## A324640.P2898312150227165691

`A324641(n+1)-A292602(A016813(n)+2)`
-/

namespace A324640.P2898312150227165691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A292602 (A016813 n + 2).toNat

end

end A324640.P2898312150227165691

/-! ## A324640.P3205414183675216972

`A324641(n+1)-A292602(eq[0, A292603(n)])`
-/

namespace A324640.P3205414183675216972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A292602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324640.P3205414183675216972

/-! ## A324640.P809356690243354136

`A324641(n+1)-A292602(lt[A292603(n), 1])`
-/

namespace A324640.P809356690243354136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292603 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A292602 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A324640.P809356690243354136

/-! ## A324640.P17341203791400221427

`A324641(n+1)-A250246(A252753(n))`
-/

namespace A324640.P17341203791400221427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A250246 (A252753 n).toNat

end

end A324640.P17341203791400221427

/-! ## A324640.P3034818987177015977

`A324641(n+1)-A302026(A269387(n))`
-/

namespace A324640.P3034818987177015977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A302026 (A269387 n).toNat

end

end A324640.P3034818987177015977

/-! ## A324640.P10777167337744242898

`A324641(n+1)-A332808(A332815(n))`
-/

namespace A324640.P10777167337744242898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A332808 (A332815 n).toNat

end

end A324640.P10777167337744242898

/-! ## A324640.P13243495621227093514

`A324641(n+1)-A091203(A305417(n))`
-/

namespace A324640.P13243495621227093514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A091203 (A305417 n).toNat

end

end A324640.P13243495621227093514

/-!
# A324641: Sum of the Doudna sequence and its Dirichlet inverse: a(n) = A005940(n) + A324640(n).

The programs for A324641, there is no canonical definition to state claims against.
-/

/-! ## A324641.P8193503702710211294

`A005940(n+1)+A324640(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324641.P8193503702710211294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) + A324640 (n + 1)

end

end A324641.P8193503702710211294

/-! ## A324641.P8971543522840861819

`A324640(n+1)+A324394(n)*A324395(n)`
-/

namespace A324641.P8971543522840861819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A324394 n * A324395 n

end

end A324641.P8971543522840861819

/-! ## A324641.P13948509187663666524

`A324640(n+1)+(A324055(n)+A324054(n))/2`
-/

namespace A324641.P13948509187663666524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324640 (n + 1) : ℚ) + (A324055 n + A324054 n : ℚ) / 2

end

end A324641.P13948509187663666524

/-! ## A324641.P17600597633124949290

`A324640(n+1)+A324106(n+1)*A340365(n+1)/A340366(n+1)`
-/

namespace A324641.P17600597633124949290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324640 (n + 1) : ℚ) + (A324106 (n + 1) * A340365 (n + 1) : ℚ) / (A340366 (n + 1) : ℚ)

end

end A324641.P17600597633124949290

/-! ## A324641.P9251371239491571862

`A324640(n+1)+A243353(A006068(n))`
-/

namespace A324641.P9251371239491571862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A243353 (A006068 n).toNat

end

end A324641.P9251371239491571862

/-! ## A324641.P16251034122902800574

`A324640(n+1)+A337375(n)*A337376(n)`
-/

namespace A324641.P16251034122902800574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A337375 n * A337376 n

end

end A324641.P16251034122902800574

/-! ## A324641.P4386690466913165660

`A324640(n+1)+A279338(A279344(n))`
-/

namespace A324641.P4386690466913165660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A279338 (A279344 n).toNat

end

end A324641.P4386690466913165660

/-! ## A324641.P17398833712073320969

`A324640(n+1)+A292602(4*n+3)`
-/

namespace A324641.P17398833712073320969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A292602 (4 * n + 3)

end

end A324641.P17398833712073320969

/-! ## A324641.P12538467266764568194

`A324640(n+1)+A250246(A252753(n))`
-/

namespace A324641.P12538467266764568194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A250246 (A252753 n).toNat

end

end A324641.P12538467266764568194

/-! ## A324641.P3341350127161885587

`A324640(n+1)+A302026(A269387(n))`
-/

namespace A324641.P3341350127161885587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A302026 (A269387 n).toNat

end

end A324641.P3341350127161885587

/-! ## A324641.P5493020077422024214

`A332808(A332815(n))+A324640(n+1)`
-/

namespace A324641.P5493020077422024214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A332815 n).toNat + A324640 (n + 1)

end

end A324641.P5493020077422024214

/-! ## A324641.P13612781414268486175

`A324640(n+1)+A091203(A305417(n))`
-/

namespace A324641.P13612781414268486175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A091203 (A305417 n).toNat

end

end A324641.P13612781414268486175

/-! ## A324641.P10401328119444151736

`A324640(n+1)+A246367(A227413(n+1))`
-/

namespace A324641.P10401328119444151736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A246367 (A227413 (n + 1)).toNat

end

end A324641.P10401328119444151736

/-! ## A324641.P5936921870734151189

`A324640(n+1)+A064216(A244154(n))`
-/

namespace A324641.P5936921870734151189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A064216 (A244154 n).toNat

end

end A324641.P5936921870734151189

/-! ## A324641.P2075265109312281615

`A324640(n+1)+A241916(A253565(n))`
-/

namespace A324641.P2075265109312281615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A241916 (A253565 n).toNat

end

end A324641.P2075265109312281615

/-! ## A324641.P13949653769320969939

`A324640(n+1)+A302024(A052330(n))`
-/

namespace A324641.P13949653769320969939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1) + A302024 (A052330 n).toNat

end

end A324641.P13949653769320969939

/-!
# A324642: Number of iterations of map x -> x + A002110(A235224(x)) required to reach a composite when starting from x = n. Here A002110(A235224(x)) gives the least primorial number > x.

The programs for A324642, there is no canonical definition to state claims against.
-/

/-! ## A324642.P8860253386470553642

`A007920(A002817(n)*A080339(n+1))*A080339(n+1)`
-/

namespace A324642.P8860253386470553642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A002817 n * A080339 (n + 1)).toNat * A080339 (n + 1)

end

end A324642.P8860253386470553642

/-! ## A324642.P5130908548617252939

`char[A248614(n)]*A007920(A002817(n))`
-/

namespace A324642.P5130908548617252939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007920 (A002817 n).toNat

end

end A324642.P5130908548617252939

/-! ## A324642.P4500860476958284700

`A007920(A002817(n))*A080339(n+1)`
-/

namespace A324642.P4500860476958284700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A002817 n).toNat * A080339 (n + 1)

end

end A324642.P4500860476958284700

/-! ## A324642.P13517281309346056101

`A007920(A002817(n))%A014963(n+7)`
-/

namespace A324642.P13517281309346056101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007920 (A002817 n).toNat) (A014963 (n + 7))

end

end A324642.P13517281309346056101

/-! ## A324642.P14898597264829054220

`C(A000010(n+1), n)*A007920(A002817(n))`
-/

namespace A324642.P14898597264829054220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000010 (n + 1)).toNat n : ℤ) * A007920 (A002817 n).toNat

end

end A324642.P14898597264829054220

/-!
# A324643: Numbers k such that bitand(2k,sigma(k))/2 = k = bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

The programs for A324643, the canonical program `A324643.P7794025302369254202` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324643 has offset 1).

The definition of A324643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324643.P7794025302369254202

`∩[A324639(n+1), A324652(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324643

/-- `∩[A324639(n+1), A324652(n+1)]` -/
def P7794025302369254202.Spec : Prop :=
  ∀ n, (P7794025302369254202.a n : ℤ) = A324643 (n + 1)

theorem P7794025302369254202.correct : P7794025302369254202.Spec := by
  intro n
  simp only [A324643, Nat.add_sub_cancel]

end A324643

/-! ## A324643.P15709554982803149006

`∩[A324639(n+1), A324649(n+1)]`
-/

namespace A324643.P15709554982803149006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324643.P15709554982803149006

namespace A324643

/-- `∩[A324639(n+1), A324649(n+1)]` -/
def P15709554982803149006.Spec : Prop :=
  ∀ n, (P15709554982803149006.a n : ℤ) = A324643 (n + 1)

end A324643

/-! ## A324643.P8667008675667676600

`∩[A324649(n+1), A324652(n+1)]`
-/

namespace A324643.P8667008675667676600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324643.P8667008675667676600

namespace A324643

/-- `∩[A324649(n+1), A324652(n+1)]` -/
def P8667008675667676600.Spec : Prop :=
  ∀ n, (P8667008675667676600.a n : ℤ) = A324643 (n + 1)

end A324643

/-! ## A324643.P3335246914162540983

`∩[A324652(n+1), A324639(A020705(n))]`
-/

namespace A324643.P3335246914162540983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (A020705 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324643.P3335246914162540983

namespace A324643

/-- `∩[A324652(n+1), A324639(A020705(n))]` -/
def P3335246914162540983.Spec : Prop :=
  ∀ n, (P3335246914162540983.a n : ℤ) = A324643 (n + 1)

end A324643

/-! ## A324643.P7155798759503101504

`∩[A324649(n+1), eq[n+1, A318468(n+1)-(n+1)]+1]`
-/

namespace A324643.P7155798759503101504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324649 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318468 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A324643.P7155798759503101504

namespace A324643

/-- `∩[A324649(n+1), eq[n+1, A318468(n+1)-(n+1)]+1]` -/
def P7155798759503101504.Spec : Prop :=
  ∀ n, (P7155798759503101504.a n : ℤ) = A324643 (n + 1)

end A324643

/-! ## A324643.P11120230963146546682

`∩[eq[1, A324658(n+1)+1]+1, A324649(n+1)]`
-/

namespace A324643.P11120230963146546682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324658 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A324643.P11120230963146546682

namespace A324643

/-- `∩[eq[1, A324658(n+1)+1]+1, A324649(n+1)]` -/
def P11120230963146546682.Spec : Prop :=
  ∀ n, (P11120230963146546682.a n : ℤ) = A324643 (n + 1)

end A324643

/-!
# A324644: a(n) = gcd(sigma(n), A276086(n)), where A276086 is the primorial base exp-function, and sigma gives the sum of divisors of its argument.

The programs for A324644, there is no canonical definition to state claims against.
-/

/-! ## A324644.P9653839020235090225

`A000203(n+1)/A369445(n+1)`
-/

namespace A324644.P9653839020235090225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A369445 (n + 1) : ℚ)

end

end A324644.P9653839020235090225

/-! ## A324644.P4313602429129933760

`A379487(n+1)/A322361(n+1)`
-/

namespace A324644.P4313602429129933760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379487 (n + 1) : ℚ) / (A322361 (n + 1) : ℚ)

end

end A324644.P4313602429129933760

/-! ## A324644.P18025092819541581

`(A328844(n+1)+A328843(n+1))/A369446(n+1)`
-/

namespace A324644.P18025092819541581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328844 (n + 1) + A328843 (n + 1) : ℚ) / (A369446 (n + 1) : ℚ)

end

end A324644.P18025092819541581

/-! ## A324644.P18425544912061508661

`gcd(Δ[A160664(n)], A276086(n+1))`
-/

namespace A324644.P18425544912061508661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A276086 (n + 1))

end

end A324644.P18425544912061508661

/-! ## A324644.P10290292240019713440

`A276086(n+1)/A369446(n+1)`
-/

namespace A324644.P10290292240019713440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 (n + 1) : ℚ) / (A369446 (n + 1) : ℚ)

end

end A324644.P10290292240019713440

/-! ## A324644.P11347403410159754723

`gcd(A143348(n+1), A276086(A000027(n+1)))`
-/

namespace A324644.P11347403410159754723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A276086 (A000027 (n + 1)).toNat)

end

end A324644.P11347403410159754723

/-! ## A324644.P13555961568416080467

`gcd(A245092(A004273(n+1)), A276086(2*n+1-n))`
-/

namespace A324644.P13555961568416080467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A245092 (A004273 (n + 1)).toNat) (A276086 (2 * n + 1 - n))

end

end A324644.P13555961568416080467

/-! ## A324644.P16277978252139442778

`gcd(A276086(n+1)+A245092(2*n+1), A245092(2*n+1))`
-/

namespace A324644.P16277978252139442778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1) + A245092 (2 * n + 1)) (A245092 (2 * n + 1))

end

end A324644.P16277978252139442778

/-! ## A324644.P347915370237705348

`gcd(A000203(n+1), A346101(A289234(n+1)))`
-/

namespace A324644.P347915370237705348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A346101 (A289234 (n + 1)).toNat)

end

end A324644.P347915370237705348

/-! ## A324644.P13686768566655742982

`gcd(A097012(n+1), A276086(A216455(n+1)))`
-/

namespace A324644.P13686768566655742982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097012 (n + 1)) (A276086 (A216455 (n + 1)).toNat)

end

end A324644.P13686768566655742982

/-!
# A324645: a(n) = gcd(d(n), A276086(n)), where d(n) gives the number of divisors (A000005).

The programs for A324645, there is no canonical definition to state claims against.
-/

/-! ## A324645.P4264621780674664900

`gcd(Δ[A054519(n)], A346101(n+1))`
-/

namespace A324645.P4264621780674664900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A346101 (n + 1))

end

end A324645.P4264621780674664900

/-! ## A324645.P12496412728155808591

`gcd(Δ[A006218(n)], A276086(n+1))`
-/

namespace A324645.P12496412728155808591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A276086 (n + 1))

end

end A324645.P12496412728155808591

/-! ## A324645.P8019646468638070671

`gcd(A000005(n+1), A276086(A000027(n+1)))`
-/

namespace A324645.P8019646468638070671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A276086 (A000027 (n + 1)).toNat)

end

end A324645.P8019646468638070671

/-! ## A324645.P12193279503516039415

`gcd(∏{e}[n+1, #+1], A276086(A004526(2*(n+1))))`
-/

namespace A324645.P12193279503516039415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A276086 (A004526 (2 * (n + 1))).toNat)

end

end A324645.P12193279503516039415

/-! ## A324645.P7597416283689489343

`gcd(A183063(2*(n+1)), A346101(A289234(n+1)))`
-/

namespace A324645.P7597416283689489343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183063 (2 * (n + 1))) (A346101 (A289234 (n + 1)).toNat)

end

end A324645.P7597416283689489343

/-! ## A324645.P16574147898294325140

`gcd(A000005(n+1), A328571(A033577(n)))`
-/

namespace A324645.P16574147898294325140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A328571 (A033577 n).toNat)

end

end A324645.P16574147898294325140

/-!
# A324646: a(n) = gcd(n, A276086(n-1)).

The programs for A324646, there is no canonical definition to state claims against.
-/

/-! ## A324646.P12832863063281471246

`gcd(n+1, A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324646.P12832863063281471246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A276086 n)

end

end A324646.P12832863063281471246

/-! ## A324646.P2691674172284972465

`gcd(xor(n, -1), A351251(n))`
-/

namespace A324646.P2691674172284972465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A351251 n)

end

end A324646.P2691674172284972465

/-! ## A324646.P5777410789830321213

`gcd(A351225(n)+n, 2*(n+1))`
-/

namespace A324646.P5777410789830321213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A351225 n + (n : ℤ)) (2 * (n + 1) : ℤ)

end

end A324646.P5777410789830321213

/-! ## A324646.P13764227135961648544

`gcd(A131738(n), A351251(n))`
-/

namespace A324646.P13764227135961648544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A351251 n)

end

end A324646.P13764227135961648544

/-! ## A324646.P1725212168699663516

`gcd(A000027(n+1), A328584(n))`
-/

namespace A324646.P1725212168699663516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A328584 n)

end

end A324646.P1725212168699663516

/-! ## A324646.P6755037647089175437

`gcd(2*A328584(n), A327937(n+1))`
-/

namespace A324646.P6755037647089175437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A328584 n) (A327937 (n + 1))

end

end A324646.P6755037647089175437

/-! ## A324646.P2798548569515694644

`gcd(A103517(n)-A276086(n), A103517(n))`
-/

namespace A324646.P2798548569515694644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 n - A276086 n) (A103517 n)

end

end A324646.P2798548569515694644

/-! ## A324646.P7134382678471724042

`gcd(A085731(A064549(n+1)), A346101(n))`
-/

namespace A324646.P7134382678471724042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085731 (A064549 (n + 1)).toNat) (A346101 n)

end

end A324646.P7134382678471724042

/-!
# A324648: a(n) = n - A318458(n), where A318458(n) is bitwise-AND of n and the sum of proper divisors of n (sigma(n)-n).

The programs for A324648, the canonical program `A324648.P5203091077092456117` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324648 has offset 1).

The definition of A324648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318458, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324648.P5203091077092456117

`n+1-A318458(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324648

/-- `n+1-A318458(n+1)` -/
def P5203091077092456117.Spec : Prop :=
  ∀ n, P5203091077092456117.a n = A324648 (n + 1)

theorem P5203091077092456117.correct : P5203091077092456117.Spec := by
  intro n
  simp only [A324648, Nat.add_sub_cancel]

end A324648

/-! ## A324648.P16116640713234492545

`and(n+1, n-∑{d}[n+1, #])`
-/

namespace A324648.P16116640713234492545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A324648.P16116640713234492545

namespace A324648

/-- `and(n+1, n-∑{d}[n+1, #])` -/
def P16116640713234492545.Spec : Prop :=
  ∀ n, P16116640713234492545.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P16968401245687835372

`and(n+1, A318457(n+1))`
-/

namespace A324648.P16968401245687835372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A318457 (n + 1))

end

end A324648.P16968401245687835372

namespace A324648

/-- `and(n+1, A318457(n+1))` -/
def P16968401245687835372.Spec : Prop :=
  ∀ n, P16968401245687835372.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P16926853036214875322

`and(n+1, n-Δ[A160664(n)])`
-/

namespace A324648.P16926853036214875322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A324648.P16926853036214875322

namespace A324648

/-- `and(n+1, n-Δ[A160664(n)])` -/
def P16926853036214875322.Spec : Prop :=
  ∀ n, P16926853036214875322.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P2274821223172148854

`and(n+1, n-A000203(n+1))`
-/

namespace A324648.P2274821223172148854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - A000203 (n + 1))

end

end A324648.P2274821223172148854

namespace A324648

/-- `and(n+1, n-A000203(n+1))` -/
def P2274821223172148854.Spec : Prop :=
  ∀ n, P2274821223172148854.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P15190110709012232023

`and(n+1, -(A001065(n+1)+1))`
-/

namespace A324648.P15190110709012232023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(A001065 (n + 1) + 1))

end

end A324648.P15190110709012232023

namespace A324648

/-- `and(n+1, -(A001065(n+1)+1))` -/
def P15190110709012232023.Spec : Prop :=
  ∀ n, P15190110709012232023.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P15080259055294999730

`and(n+1, n-(A088580(n+1)-1))`
-/

namespace A324648.P15080259055294999730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - (A088580 (n + 1) - 1))

end

end A324648.P15080259055294999730

namespace A324648

/-- `and(n+1, n-(A088580(n+1)-1))` -/
def P15080259055294999730.Spec : Prop :=
  ∀ n, P15080259055294999730.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P8882559989723628721

`and(n+1, n-A245092(2*n+1))`
-/

namespace A324648.P8882559989723628721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - A245092 (2 * n + 1))

end

end A324648.P8882559989723628721

namespace A324648

/-- `and(n+1, n-A245092(2*n+1))` -/
def P8882559989723628721.Spec : Prop :=
  ∀ n, P8882559989723628721.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P4260116865226405562

`A318456(n+1)-A001065(n+1)`
-/

namespace A324648.P4260116865226405562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (n + 1) - A001065 (n + 1)

end

end A324648.P4260116865226405562

namespace A324648

/-- `A318456(n+1)-A001065(n+1)` -/
def P4260116865226405562.Spec : Prop :=
  ∀ n, P4260116865226405562.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P6991943686850241739

`xor(n+1, A318458(A000027(n+1)))`
-/

namespace A324648.P6991943686850241739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A318458 (A000027 (n + 1)).toNat)

end

end A324648.P6991943686850241739

namespace A324648

/-- `xor(n+1, A318458(A000027(n+1)))` -/
def P6991943686850241739.Spec : Prop :=
  ∀ n, P6991943686850241739.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P10587528318450466018

`1-A324398(A005940(n+2))+n`
-/

namespace A324648.P10587528318450466018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324398 (A005940 (n + 2)).toNat + (n : ℤ)

end

end A324648.P10587528318450466018

namespace A324648

/-- `1-A324398(A005940(n+2))+n` -/
def P10587528318450466018.Spec : Prop :=
  ∀ n, P10587528318450466018.a n = A324648 (n + 1)

end A324648

/-! ## A324648.P6695838879022195134

`and(n+1, n-A245093(∑[n+1]))`
-/

namespace A324648.P6695838879022195134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - A245093 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A324648.P6695838879022195134

namespace A324648

/-- `and(n+1, n-A245093(∑[n+1]))` -/
def P6695838879022195134.Spec : Prop :=
  ∀ n, P6695838879022195134.a n = A324648 (n + 1)

end A324648

/-!
# A324649: Numbers k such that A318458(k) (bitwise-AND of k and sigma(k)-k) is equal to k.

The programs for A324649, the canonical program `A324649.P3122999716778518876` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324649 has offset 1).

The definition of A324649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324649.P3122999716778518876

`eq[n+1, A318458(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324649

/-- `eq[n+1, A318458(n+1)]+1` -/
def P3122999716778518876.Spec : Prop :=
  ∀ n, (P3122999716778518876.a n : ℤ) = A324649 (n + 1)

theorem P3122999716778518876.correct : P3122999716778518876.Spec := by
  intro n
  simp only [A324649, Nat.add_sub_cancel]

end A324649

/-! ## A324649.P4515414540318489070

`lt[A324648(n+1), 1]+1`
-/

namespace A324649.P4515414540318489070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324648 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324649.P4515414540318489070

namespace A324649

/-- `lt[A324648(n+1), 1]+1` -/
def P4515414540318489070.Spec : Prop :=
  ∀ n, (P4515414540318489070.a n : ℤ) = A324649 (n + 1)

end A324649

/-! ## A324649.P7882023914586031394

`eq[0, A324648(A028310(n))]`
-/

namespace A324649.P7882023914586031394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324648 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324649.P7882023914586031394

namespace A324649

/-- `eq[0, A324648(A028310(n))]` -/
def P7882023914586031394.Spec : Prop :=
  ∀ n, (P7882023914586031394.a n : ℤ) = A324649 (n + 1)

end A324649

/-! ## A324649.P2735885830497065779

`eq[0, A324648(A060000(n+1))]`
-/

namespace A324649.P2735885830497065779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324648 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324649.P2735885830497065779

namespace A324649

/-- `eq[0, A324648(A060000(n+1))]` -/
def P2735885830497065779.Spec : Prop :=
  ∀ n, (P2735885830497065779.a n : ℤ) = A324649 (n + 1)

end A324649

/-! ## A324649.P12514372142625541293

`A020725(lt[A324648(n+1), 1])`
-/

namespace A324649.P12514372142625541293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324648 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A324649.P12514372142625541293

namespace A324649

/-- `A020725(lt[A324648(n+1), 1])` -/
def P12514372142625541293.Spec : Prop :=
  ∀ n, P12514372142625541293.a n = A324649 (n + 1)

end A324649

/-! ## A324649.P8571150693431849948

`A020725(lt[n, and(n+1, A001065(n+1))])`
-/

namespace A324649.P8571150693431849948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A001065 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A324649.P8571150693431849948

namespace A324649

/-- `A020725(lt[n, and(n+1, A001065(n+1))])` -/
def P8571150693431849948.Spec : Prop :=
  ∀ n, P8571150693431849948.a n = A324649 (n + 1)

end A324649

/-! ## A324649.P6042982013919916350

`A020725(lt[and(n+1, n-A000203(n+1)), 1])`
-/

namespace A324649.P6042982013919916350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A324649.P6042982013919916350

namespace A324649

/-- `A020725(lt[and(n+1, n-A000203(n+1)), 1])` -/
def P6042982013919916350.Spec : Prop :=
  ∀ n, P6042982013919916350.a n = A324649 (n + 1)

end A324649

/-! ## A324649.P6281365772071054596

`A020725(lt[n, and(n+1, A319699(2*(n+1)))])`
-/

namespace A324649.P6281365772071054596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A319699 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A324649.P6281365772071054596

namespace A324649

/-- `A020725(lt[n, and(n+1, A319699(2*(n+1)))])` -/
def P6281365772071054596.Spec : Prop :=
  ∀ n, P6281365772071054596.a n = A324649 (n + 1)

end A324649

/-!
# A324650: a(n) = A000010(A276086(n)).

The programs for A324650, there is no canonical definition to state claims against.
-/

/-! ## A324650.P148434739113334248

`A000010(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324650.P148434739113334248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A276086 n).toNat

end

end A324650.P148434739113334248

/-! ## A324650.P15263436755604319513

`A324651(floor(n/2))`
-/

namespace A324650.P15263436755604319513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324651 ⌊(n : ℚ) / 2⌋.toNat

end

end A324650.P15263436755604319513

/-! ## A324650.P12623643777391888419

`abs(A328572(n)*A328583(n))`
-/

namespace A324650.P12623643777391888419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328572 n * A328583 n|

end

end A324650.P12623643777391888419

/-! ## A324650.P14206059333550180967

`A000010(A328571(n))*A328572(n)`
-/

namespace A324650.P14206059333550180967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A328571 n).toNat * A328572 n

end

end A324650.P14206059333550180967

/-! ## A324650.P5090388782833686242

`gcd(2, A000265(n+1))*A324651(A004526(n))`
-/

namespace A324650.P5090388782833686242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000265 (n + 1)) : ℤ) * A324651 (A004526 n).toNat

end

end A324650.P5090388782833686242

/-! ## A324650.P5011229313468391946

`gcd(n, A006530(n+1))*A324651(A004526(n))`
-/

namespace A324650.P5011229313468391946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A006530 (n + 1)) : ℤ) * A324651 (A004526 n).toNat

end

end A324650.P5011229313468391946

/-! ## A324650.P9313793527893804282

`A324651(A004526(n))%A324647(n+1)`
-/

namespace A324650.P9313793527893804282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324651 (A004526 n).toNat) (A324647 (n + 1))

end

end A324650.P9313793527893804282

/-! ## A324650.P17058029697434317612

`A290077(A277022(n))`
-/

namespace A324650.P17058029697434317612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A277022 n).toNat

end

end A324650.P17058029697434317612

/-! ## A324650.P180462597613694069

`A000010(A351225(n)+n)`
-/

namespace A324650.P180462597613694069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A351225 n + (n : ℤ)).toNat

end

end A324650.P180462597613694069

/-! ## A324650.P1115771590986943388

`A000010(A346101(A289234(n)))`
-/

namespace A324650.P1115771590986943388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A346101 (A289234 n).toNat).toNat

end

end A324650.P1115771590986943388

/-!
# A324651: Bisection of A324650: a(n) = A000010(A276086(2*n)).

The programs for A324651, there is no canonical definition to state claims against.
-/

/-! ## A324651.P8792981511538914281

`A324650(2*n)`
-/

namespace A324651.P8792981511538914281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324650 (2 * n)

end

end A324651.P8792981511538914281

/-! ## A324651.P975001287384796814

`A000010(A276086(2*n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324651.P975001287384796814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A276086 (2 * n)).toNat

end

end A324651.P975001287384796814

/-! ## A324651.P17938307947408638933

`lcm((-1)^n, A324650(Δ[n²]))`
-/

namespace A324651.P17938307947408638933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A324650 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A324651.P17938307947408638933

/-! ## A324651.P5111331348281493914

`abs(A328572(2*n)*A328583(2*n))`
-/

namespace A324651.P5111331348281493914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328572 (2 * n) * A328583 (2 * n)|

end

end A324651.P5111331348281493914

/-! ## A324651.P2101734755471490830

`A000010(A328571(2*n))*A328572(2*n)`
-/

namespace A324651.P2101734755471490830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A328571 (2 * n)).toNat * A328572 (2 * n)

end

end A324651.P2101734755471490830

/-! ## A324651.P17645174020445248574

`A324650(A005843(n))/A000034(A005843(n))`
-/

namespace A324651.P17645174020445248574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324650 (A005843 n).toNat : ℚ) / (A000034 (A005843 n).toNat : ℚ)

end

end A324651.P17645174020445248574

/-! ## A324651.P16097335927340198905

`A324650(A005843(n))%A324647(n+1)`
-/

namespace A324651.P16097335927340198905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324650 (A005843 n).toNat) (A324647 (n + 1))

end

end A324651.P16097335927340198905

/-! ## A324651.P1282981653117260886

`A290077(A277022(2*n))`
-/

namespace A324651.P1282981653117260886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A277022 (2 * n)).toNat

end

end A324651.P1282981653117260886

/-!
# A324652: Numbers k such that A318468(k) (bitwise-AND of 2*k and sigma(k)) is equal to 2*k.

The programs for A324652, the canonical program `A324652.P15448140147024622737` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324652 has offset 1).

The definition of A324652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324652.P11808102717706436132

`eq[n+1, A318468(n+1)-(n+1)]+1`
-/

namespace A324652.P11808102717706436132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318468 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324652.P11808102717706436132

namespace A324652

/-- `eq[n+1, A318468(n+1)-(n+1)]+1` -/
def P11808102717706436132.Spec : Prop :=
  ∀ n, (P11808102717706436132.a n : ℤ) = A324652 (n + 1)

end A324652

/-! ## A324652.P10574374054215051569

`eq[A000203(n+1), A318466(n+1)]+1`
-/

namespace A324652.P10574374054215051569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324652.P10574374054215051569

namespace A324652

/-- `eq[A000203(n+1), A318466(n+1)]+1` -/
def P10574374054215051569.Spec : Prop :=
  ∀ n, (P10574374054215051569.a n : ℤ) = A324652 (n + 1)

end A324652

/-! ## A324652.P15448140147024622737

`eq[1, A324658(n+1)+1]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A324652

/-- `eq[1, A324658(n+1)+1]+1` -/
def P15448140147024622737.Spec : Prop :=
  ∀ n, (P15448140147024622737.a n : ℤ) = A324652 (n + 1)

theorem P15448140147024622737.correct : P15448140147024622737.Spec := by
  intro n
  simp only [A324652, Nat.add_sub_cancel]

end A324652

/-! ## A324652.P3114919845966422348

`A324659(eq[n+1, A324659(n+1)]+1)`
-/

namespace A324652.P3114919845966422348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324652.P3114919845966422348

namespace A324652

/-- `A324659(eq[n+1, A324659(n+1)]+1)` -/
def P3114919845966422348.Spec : Prop :=
  ∀ n, P3114919845966422348.a n = A324652 (n + 1)

end A324652

/-! ## A324652.P5453535653768286269

`eq[1, A031125(A324658(n+1))]+1`
-/

namespace A324652.P5453535653768286269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031125 (A324658 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324652.P5453535653768286269

namespace A324652

/-- `eq[1, A031125(A324658(n+1))]+1` -/
def P5453535653768286269.Spec : Prop :=
  ∀ n, (P5453535653768286269.a n : ℤ) = A324652 (n + 1)

end A324652

/-!
# A324653: a(n) = A000203(A276086(n)).

The programs for A324653, there is no canonical definition to state claims against.
-/

/-! ## A324653.P8023573940300185720

`A000203(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324653.P8023573940300185720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A276086 n).toNat

end

end A324653.P8023573940300185720

/-! ## A324653.P1083138489950600038

`2*A276086(n)-A324654(n)`
-/

namespace A324653.P1083138489950600038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276086 n - A324654 n

end

end A324653.P1083138489950600038

/-! ## A324653.P18021830270882672302

`A324054(A277022(n))`
-/

namespace A324653.P18021830270882672302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A277022 n).toNat

end

end A324653.P18021830270882672302

/-! ## A324653.P5438901358958772354

`∑{d}[A351225(n)+n, #]`
-/

namespace A324653.P5438901358958772354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324653.P5438901358958772354

/-! ## A324653.P9082465723642262825

`∑{d}[A054842(A049345(n)), #]`
-/

namespace A324653.P9082465723642262825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A049345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324653.P9082465723642262825

/-! ## A324653.P14648040481155469066

`∑{d}[A346101(A289234(n)), #]`
-/

namespace A324653.P14648040481155469066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324653.P14648040481155469066

/-! ## A324653.P8633427960872005599

`∑{d}[A328627(A328625(n)), #]`
-/

namespace A324653.P8633427960872005599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324653.P8633427960872005599

/-! ## A324653.P8824282392679504578

`∑{d}[A328624(A328626(n)), #]`
-/

namespace A324653.P8824282392679504578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324653.P8824282392679504578

/-! ## A324653.P13953669816967530011

`∑{d}[A328844(n)+A328843(n), #]`
-/

namespace A324653.P13953669816967530011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328844 n + A328843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324653.P13953669816967530011

/-! ## A324653.P7458931145606938447

`∑{d}[A348949(n)-A348950(n), #]`
-/

namespace A324653.P7458931145606938447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - A348950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324653.P7458931145606938447

/-!
# A324654: a(n) = A033879(A276086(n)).

The programs for A324654, there is no canonical definition to state claims against.
-/

/-! ## A324654.P4306938580251669294

`2*A276086(n)-A324653(n)`
-/

namespace A324654.P4306938580251669294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276086 n - A324653 n

end

end A324654.P4306938580251669294

/-! ## A324654.P12193147547843784956

`A033879(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324654.P12193147547843784956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A276086 n).toNat

end

end A324654.P12193147547843784956

/-! ## A324654.P6200401456212515484

`A324055(A277022(n))`
-/

namespace A324654.P6200401456212515484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 (A277022 n).toNat

end

end A324654.P6200401456212515484

/-! ## A324654.P2975103795114418834

`A033879(A351225(n)+n)`
-/

namespace A324654.P2975103795114418834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A351225 n + (n : ℤ)).toNat

end

end A324654.P2975103795114418834

/-! ## A324654.P11656102972121793025

`A033879(A373849(n)+A003415(n))`
-/

namespace A324654.P11656102972121793025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A373849 n + A003415 n).toNat

end

end A324654.P11656102972121793025

/-! ## A324654.P17560938613988406634

`A033879(A328580(n)+A328476(n))`
-/

namespace A324654.P17560938613988406634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A328580 n + A328476 n).toNat

end

end A324654.P17560938613988406634

/-! ## A324654.P12719770190781338954

`A033879(A328844(n)+A328843(n))`
-/

namespace A324654.P12719770190781338954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A328844 n + A328843 n).toNat

end

end A324654.P12719770190781338954

/-! ## A324654.P7392957555219602548

`A033879(A327860(n)-A342016(n))`
-/

namespace A324654.P7392957555219602548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A327860 n - A342016 n).toNat

end

end A324654.P7392957555219602548

/-! ## A324654.P5123832850494483698

`A033879(A328571(n)*A328572(n))`
-/

namespace A324654.P5123832850494483698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A328571 n * A328572 n).toNat

end

end A324654.P5123832850494483698

/-! ## A324654.P16764852592491149719

`A033879(A327858(n)*A351231(n))`
-/

namespace A324654.P16764852592491149719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A327858 n * A351231 n).toNat

end

end A324654.P16764852592491149719

/-!
# A324655: a(n) = A000005(A276086(n)).

The programs for A324655, there is no canonical definition to state claims against.
-/

/-! ## A324655.P58210980064189702

`A000005(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324655.P58210980064189702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276086 n).toNat

end

end A324655.P58210980064189702

/-! ## A324655.P10399187797377934106

`∏{digits}[A049345(n), #+1]`
-/

namespace A324655.P10399187797377934106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A324655.P10399187797377934106

/-! ## A324655.P6369569628287428463

`A064553(A328835(n))`
-/

namespace A324655.P6369569628287428463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A328835 n).toNat

end

end A324655.P6369569628287428463

/-! ## A324655.P3523484670448026640

`∏{e}[A278226(n), #+1]`
-/

namespace A324655.P3523484670448026640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A324655.P3523484670448026640

/-! ## A324655.P10228924442054416156

`∑{d}[A278226(n), gcd(#, A000040(n+1))]`
-/

namespace A324655.P10228924442054416156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A000040 (n + 1))

end

end A324655.P10228924442054416156

/-! ## A324655.P3723706209494079011

`∑{d}[A278226(n), A090192(A278226(n)%#)]`
-/

namespace A324655.P3723706209494079011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A090192 (Int.tmod (A278226 n) (d : ℤ)).toNat

end

end A324655.P3723706209494079011

/-! ## A324655.P3456868765952042707

`A089898(A049345(n))`
-/

namespace A324655.P3456868765952042707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A049345 n).toNat

end

end A324655.P3456868765952042707

/-! ## A324655.P2396729208605989359

`A000005(A278226(n))`
-/

namespace A324655.P2396729208605989359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278226 n).toNat

end

end A324655.P2396729208605989359

/-! ## A324655.P6278652628638944065

`A106737(A277022(n))`
-/

namespace A324655.P6278652628638944065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A277022 n).toNat

end

end A324655.P6278652628638944065

/-! ## A324655.P5665284546944878616

`∏{e}[A351225(n)+n, #+1]`
-/

namespace A324655.P5665284546944878616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A324655.P5665284546944878616

/-! ## A324655.P15912331650974192122

`∏{e}[A348949(n)-A348950(n), #+1]`
-/

namespace A324655.P15912331650974192122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - A348950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A324655.P15912331650974192122

/-!
# A324656: a(n) is the number of successive primorials A002110(i) larger than n that need to be tried before sum n + A002110(i) is found to be composite.

The programs for A324656, there is no canonical definition to state claims against.
-/

/-! ## A324656.P16736254138079578769

`A056239(gcd(A007305(n), A196271(3*(n+1))))`
-/

namespace A324656.P16736254138079578769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.gcd (A007305 n) (A196271 (3 * (n + 1))))

end

end A324656.P16736254138079578769

/-! ## A324656.P12460755989293964615

`val(A158367(A158365(n+1)), A158327(2*(n+1)))`
-/

namespace A324656.P12460755989293964615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A158367 (A158365 (n + 1)).toNat).toNat (A158327 (2 * (n + 1))).toNat

end

end A324656.P12460755989293964615

/-! ## A324656.P17381118255477370611

`round(A106120(n+1)/43^A001221(A037019(n+1)))`
-/

namespace A324656.P17381118255477370611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A106120 (n + 1) : ℚ) / (43 : ℚ) ^ (A001221 (A037019 (n + 1)).toNat : ℤ))

end

end A324656.P17381118255477370611

/-! ## A324656.P16884599966313980747

`C(A192182(n+4), A189847(gcd(n+1, (n+13)^9)))`
-/

namespace A324656.P16884599966313980747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A192182 (n + 4)).toNat (A189847 (Nat.gcd (n + 1) ((n + 13) ^ 9))).toNat

end

end A324656.P16884599966313980747

/-! ## A324656.P7646910540716340348

`A063377(A164164(n)+n²+1)`
-/

namespace A324656.P7646910540716340348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A164164 n + (n ^ 2 + 1 : ℤ)).toNat

end

end A324656.P7646910540716340348

/-!
# A324657: a(n) is the number of successive primorials A002110(i) larger than prime(n) that need to be tried before sum prime(n)+A002110(i) is found to be composite.

The programs for A324657, there is no canonical definition to state claims against.
-/

/-! ## A324657.P726195833331670765

`A324656(A000040(n+1))`
-/

namespace A324657.P726195833331670765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (A000040 (n + 1)).toNat

end

end A324657.P726195833331670765

/-! ## A324657.P15130882080830795594

`A324656(A008578(n+2))`
-/

namespace A324657.P15130882080830795594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (A008578 (n + 2)).toNat

end

end A324657.P15130882080830795594

/-! ## A324657.P9784358949760534762

`A324656(A175787(n+2))`
-/

namespace A324657.P9784358949760534762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (A175787 (n + 2)).toNat

end

end A324657.P9784358949760534762

/-! ## A324657.P8300150654649345422

`A324656(A182986(n+2))`
-/

namespace A324657.P8300150654649345422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (A182986 (n + 2)).toNat

end

end A324657.P8300150654649345422

/-! ## A324657.P2958574687419772691

`A324656(record[A006530(n+2)])`
-/

namespace A324657.P2958574687419772691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324657.P2958574687419772691

/-! ## A324657.P15455722826236916741

`A324656(record[A020639(n+2)])`
-/

namespace A324657.P15455722826236916741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324657.P15455722826236916741

/-! ## A324657.P16017961422887907568

`A324656(record[A014963(n+2)])`
-/

namespace A324657.P16017961422887907568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324657.P16017961422887907568

/-! ## A324657.P1218013154096859651

`A324656(A002110(n+1)/A002110(n))`
-/

namespace A324657.P1218013154096859651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (SequenceMachineLib.roundAway ((A002110 (n + 1) : ℚ) / (A002110 n : ℚ))).toNat

end

end A324657.P1218013154096859651

/-!
# A324658: a(n) = n - A324659(n), where A324659(n) is half of bitwise-AND of 2*n and sigma(n).

The programs for A324658, the canonical program `A324658.P12557822130857951693` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324658 has offset 1).

The definition of A324658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324659, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324658.P12557822130857951693

`n+1-A324659(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A324658

/-- `n+1-A324659(n+1)` -/
def P12557822130857951693.Spec : Prop :=
  ∀ n, P12557822130857951693.a n = A324658 (n + 1)

theorem P12557822130857951693.correct : P12557822130857951693.Spec := by
  intro n
  simp only [A324658, Nat.add_sub_cancel]

end A324658

/-! ## A324658.P5859589325416281400

`1-and(n+1, floor(∑{d}[n+1, #/2]))+n`
-/

namespace A324658.P5859589325416281400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n + 1 : ℤ) ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2⌋ + (n : ℤ)

end

end A324658.P5859589325416281400

namespace A324658

/-- `1-and(n+1, floor(∑{d}[n+1, #/2]))+n` -/
def P5859589325416281400.Spec : Prop :=
  ∀ n, P5859589325416281400.a n = A324658 (n + 1)

end A324658

/-! ## A324658.P14207255463225684989

`n+1-A318468(n+1)/2`
-/

namespace A324658.P14207255463225684989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A318468 (n + 1) : ℚ) / 2

end

end A324658.P14207255463225684989

namespace A324658

/-- `n+1-A318468(n+1)/2` -/
def P14207255463225684989.Spec : Prop :=
  ∀ n, P14207255463225684989.a n = (A324658 (n + 1) : ℚ)

end A324658

/-! ## A324658.P667832982146508435

`1-and(n+1, floor(A000203(n+1)/2))+n`
-/

namespace A324658.P667832982146508435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n + 1 : ℤ) ⌊(A000203 (n + 1) : ℚ) / 2⌋ + (n : ℤ)

end

end A324658.P667832982146508435

namespace A324658

/-- `1-and(n+1, floor(A000203(n+1)/2))+n` -/
def P667832982146508435.Spec : Prop :=
  ∀ n, P667832982146508435.a n = A324658 (n + 1)

end A324658

/-! ## A324658.P10067486230074265406

`and(2*(n+1), -(A245092(2*n+1)+1))/2`
-/

namespace A324658.P10067486230074265406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * (n + 1) : ℤ) (-(A245092 (2 * n + 1) + 1)) : ℚ) / 2

end

end A324658.P10067486230074265406

namespace A324658

/-- `and(2*(n+1), -(A245092(2*n+1)+1))/2` -/
def P10067486230074265406.Spec : Prop :=
  ∀ n, P10067486230074265406.a n = (A324658 (n + 1) : ℚ)

end A324658

/-! ## A324658.P14618276525290185519

`xor(n+1, A324659(A000027(n+1)))`
-/

namespace A324658.P14618276525290185519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A324659 (A000027 (n + 1)).toNat)

end

end A324658.P14618276525290185519

namespace A324658

/-- `xor(n+1, A324659(A000027(n+1)))` -/
def P14618276525290185519.Spec : Prop :=
  ∀ n, P14618276525290185519.a n = A324658 (n + 1)

end A324658

/-! ## A324658.P6908838272626272663

`(A318466(n+1)-A000203(n+1))/2`
-/

namespace A324658.P6908838272626272663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318466 (n + 1) - A000203 (n + 1) : ℚ) / 2

end

end A324658.P6908838272626272663

namespace A324658

/-- `(A318466(n+1)-A000203(n+1))/2` -/
def P6908838272626272663.Spec : Prop :=
  ∀ n, P6908838272626272663.a n = (A324658 (n + 1) : ℚ)

end A324658

/-! ## A324658.P11134114821299974665

`1-A001281(A318468(n+1))+n`
-/

namespace A324658.P11134114821299974665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001281 (A318468 (n + 1)).toNat + (n : ℤ)

end

end A324658.P11134114821299974665

namespace A324658

/-- `1-A001281(A318468(n+1))+n` -/
def P11134114821299974665.Spec : Prop :=
  ∀ n, P11134114821299974665.a n = A324658 (n + 1)

end A324658

/-! ## A324658.P10338207174733788136

`A324716(A005940(n+2))/2`
-/

namespace A324658.P10338207174733788136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324716 (A005940 (n + 2)).toNat : ℚ) / 2

end

end A324658.P10338207174733788136

namespace A324658

/-- `A324716(A005940(n+2))/2` -/
def P10338207174733788136.Spec : Prop :=
  ∀ n, P10338207174733788136.a n = (A324658 (n + 1) : ℚ)

end A324658

/-!
# A324659: a(n) = (1/2)*A318468(n), where A318468(n) is bitwise-AND of 2*n and sigma(n).

The programs for A324659, the canonical program `A324659.P451335093830536093` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324659 has offset 1).

The definition of A324659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324659.P451335093830536093

`A318468(n+1)/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324659

/-- `A318468(n+1)/2` -/
def P451335093830536093.Spec : Prop :=
  ∀ n, P451335093830536093.a n = (A324659 (n + 1) : ℚ)

end A324659

/-! ## A324659.P18405994699073364599

`1/2*A318468(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324659.P18405994699073364599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A318468 (n + 1) : ℚ)

end

end A324659.P18405994699073364599

namespace A324659

/-- `1/2*A318468(n+1)` -/
def P18405994699073364599.Spec : Prop :=
  ∀ n, P18405994699073364599.a n = (A324659 (n + 1) : ℚ)

end A324659

/-! ## A324659.P8431790158155507645

`n+1-A324658(n+1)`
-/

namespace A324659.P8431790158155507645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A324658 (n + 1)

end

end A324659.P8431790158155507645

namespace A324659

/-- `n+1-A324658(n+1)` -/
def P8431790158155507645.Spec : Prop :=
  ∀ n, P8431790158155507645.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P6372647605278174430

`and(n+1, floor(∑{d}[n+1, #/2]))`
-/

namespace A324659.P6372647605278174430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2⌋

end

end A324659.P6372647605278174430

namespace A324659

/-- `and(n+1, floor(∑{d}[n+1, #/2]))` -/
def P6372647605278174430.Spec : Prop :=
  ∀ n, P6372647605278174430.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P3483963989328900609

`and(2*(n+1), ∑{d}[n+1, #])/2`
-/

namespace A324659.P3483963989328900609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * (n + 1)) (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / 2

end

end A324659.P3483963989328900609

namespace A324659

/-- `and(2*(n+1), ∑{d}[n+1, #])/2` -/
def P3483963989328900609.Spec : Prop :=
  ∀ n, P3483963989328900609.a n = (A324659 (n + 1) : ℚ)

end A324659

/-! ## A324659.P12067210564380207143

`and(n+1, floor(A000203(n+1)/2))`
-/

namespace A324659.P12067210564380207143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ⌊(A000203 (n + 1) : ℚ) / 2⌋

end

end A324659.P12067210564380207143

namespace A324659

/-- `and(n+1, floor(A000203(n+1)/2))` -/
def P12067210564380207143.Spec : Prop :=
  ∀ n, P12067210564380207143.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P15510523281990520539

`xor(n+1, A324658(A000027(n+1)))`
-/

namespace A324659.P15510523281990520539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A324658 (A000027 (n + 1)).toNat)

end

end A324659.P15510523281990520539

namespace A324659

/-- `xor(n+1, A324658(A000027(n+1)))` -/
def P15510523281990520539.Spec : Prop :=
  ∀ n, P15510523281990520539.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P6147809799598061226

`(A224880(n+1)-A318466(n+1))/2`
-/

namespace A324659.P6147809799598061226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224880 (n + 1) - A318466 (n + 1) : ℚ) / 2

end

end A324659.P6147809799598061226

namespace A324659

/-- `(A224880(n+1)-A318466(n+1))/2` -/
def P6147809799598061226.Spec : Prop :=
  ∀ n, P6147809799598061226.a n = (A324659 (n + 1) : ℚ)

end A324659

/-! ## A324659.P1741979944332508821

`(A318466(n+1)-A318467(n+1))/2`
-/

namespace A324659.P1741979944332508821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318466 (n + 1) - A318467 (n + 1) : ℚ) / 2

end

end A324659.P1741979944332508821

namespace A324659

/-- `(A318466(n+1)-A318467(n+1))/2` -/
def P1741979944332508821.Spec : Prop :=
  ∀ n, P1741979944332508821.a n = (A324659 (n + 1) : ℚ)

end A324659

/-! ## A324659.P14674339667618220383

`and(A000203(n+1), A163300(n+1))/2`
-/

namespace A324659.P14674339667618220383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A000203 (n + 1)) (A163300 (n + 1)) : ℚ) / 2

end

end A324659.P14674339667618220383

namespace A324659

/-- `and(A000203(n+1), A163300(n+1))/2` -/
def P14674339667618220383.Spec : Prop :=
  ∀ n, P14674339667618220383.a n = (A324659 (n + 1) : ℚ)

end A324659

/-! ## A324659.P12164050108638589146

`and(A004277(n+1), A245092(2*n+1))/2`
-/

namespace A324659.P12164050108638589146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A004277 (n + 1)) (A245092 (2 * n + 1)) : ℚ) / 2

end

end A324659.P12164050108638589146

namespace A324659

/-- `and(A004277(n+1), A245092(2*n+1))/2` -/
def P12164050108638589146.Spec : Prop :=
  ∀ n, P12164050108638589146.a n = (A324659 (n + 1) : ℚ)

end A324659

/-! ## A324659.P12625552611701770067

`A078898(and(∑{d}[n+1, #], 2*(n+1)))`
-/

namespace A324659.P12625552611701770067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Nat.land (∑ d ∈ Nat.divisors (f1 n), d) (2 * (n + 1)))

end

end A324659.P12625552611701770067

namespace A324659

/-- `A078898(and(∑{d}[n+1, #], 2*(n+1)))` -/
def P12625552611701770067.Spec : Prop :=
  ∀ n, P12625552611701770067.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P3945944460201272035

`A001281(A318468(n+1))`
-/

namespace A324659.P3945944460201272035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A318468 (n + 1)).toNat

end

end A324659.P3945944460201272035

namespace A324659

/-- `A001281(A318468(n+1))` -/
def P3945944460201272035.Spec : Prop :=
  ∀ n, P3945944460201272035.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P1405975694004372799

`and(n+1, A004526(∑{d}[n+1, #]))`
-/

namespace A324659.P1405975694004372799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A004526 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A324659.P1405975694004372799

namespace A324659

/-- `and(n+1, A004526(∑{d}[n+1, #]))` -/
def P1405975694004372799.Spec : Prop :=
  ∀ n, P1405975694004372799.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P9309768554684480898

`and(n+1, A004526(A000203(n+1)))`
-/

namespace A324659.P9309768554684480898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A004526 (A000203 (n + 1)).toNat)

end

end A324659.P9309768554684480898

namespace A324659

/-- `and(n+1, A004526(A000203(n+1)))` -/
def P9309768554684480898.Spec : Prop :=
  ∀ n, P9309768554684480898.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P11316676922298415388

`and(n+1, A002265(A074400(n+1)))`
-/

namespace A324659.P11316676922298415388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A002265 (A074400 (n + 1)).toNat)

end

end A324659.P11316676922298415388

namespace A324659

/-- `and(n+1, A002265(A074400(n+1)))` -/
def P11316676922298415388.Spec : Prop :=
  ∀ n, P11316676922298415388.a n = A324659 (n + 1)

end A324659

/-! ## A324659.P16064664271516680436

`A324815(A005940(n+2))/2`
-/

namespace A324659.P16064664271516680436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324815 (A005940 (n + 2)).toNat : ℚ) / 2

end

end A324659.P16064664271516680436

namespace A324659

/-- `A324815(A005940(n+2))/2` -/
def P16064664271516680436.Spec : Prop :=
  ∀ n, P16064664271516680436.a n = (A324659 (n + 1) : ℚ)

end A324659

/-!
# A324660: Starting at n, a(n) is the total number of moves made to the right according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324660, there is no canonical definition to state claims against.
-/

/-! ## A324660.P18325559444959891513

`A324688(n)+A324665(n)`
-/

namespace A324660.P18325559444959891513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324688 n + A324665 n

end

end A324660.P18325559444959891513

/-! ## A324660.P8726439373105554625

`(A228474(n)-A324662(n))/2`
-/

namespace A324660.P8726439373105554625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228474 n - A324662 n : ℚ) / 2

end

end A324660.P8726439373105554625

/-! ## A324660.P3048271211317292296

`A324665(n)+A324687(n)-A324686(n)`
-/

namespace A324660.P3048271211317292296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324665 n + (A324687 n - A324686 n)

end

end A324660.P3048271211317292296

/-! ## A324660.P835645543010935747

`A324665(n)-A057428(n)*A324688(n)`
-/

namespace A324660.P835645543010935747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324665 n - A057428 n * A324688 n

end

end A324660.P835645543010935747

/-! ## A324660.P11633543264560311276

`A324665(n)-A134824(n)*A324688(n)`
-/

namespace A324660.P11633543264560311276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324665 n - A134824 n * A324688 n

end

end A324660.P11633543264560311276

/-! ## A324660.P15292284276304080350

`A228474(n)-A324661(n)`
-/

namespace A324660.P15292284276304080350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - A324661 n

end

end A324660.P15292284276304080350

/-! ## A324660.P17353524454793639734

`A324661(n)-A324662(n)`
-/

namespace A324660.P17353524454793639734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 n - A324662 n

end

end A324660.P17353524454793639734

/-! ## A324660.P5648399450443573419

`A228474(n)%A324661(A028310(n))`
-/

namespace A324660.P5648399450443573419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228474 n) (A324661 (A028310 n).toNat)

end

end A324660.P5648399450443573419

/-! ## A324660.P2664868738577894059

`A228474(n)+A324688(n)-A324666(n)`
-/

namespace A324660.P2664868738577894059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n + (A324688 n - A324666 n)

end

end A324660.P2664868738577894059

/-!
# A324661: Starting at n, a(n) is the total number of moves made to the left according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324661, there is no canonical definition to state claims against.
-/

/-! ## A324661.P15508285292655165570

`A324662(n)+A324660(n)`
-/

namespace A324661.P15508285292655165570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 n + A324660 n

end

end A324661.P15508285292655165570

/-! ## A324661.P1640444496656374630

`A228474(n)-A324660(n)`
-/

namespace A324661.P1640444496656374630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - A324660 n

end

end A324661.P1640444496656374630

/-! ## A324661.P3604583443309916826

`A324666(n)-A324688(n)`
-/

namespace A324661.P3604583443309916826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 n - A324688 n

end

end A324661.P3604583443309916826

/-! ## A324661.P8292837130558625719

`(A324662(n)+A228474(n))/2`
-/

namespace A324661.P8292837130558625719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324662 n + A228474 n : ℚ) / 2

end

end A324661.P8292837130558625719

/-! ## A324661.P4076704287143834454

`A324662(n)+A324688(n)+A324665(n)`
-/

namespace A324661.P4076704287143834454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 n + (A324688 n + A324665 n)

end

end A324661.P4076704287143834454

/-! ## A324661.P9345016148713339099

`A228474(n)-(A324688(n)+A324665(n))`
-/

namespace A324661.P9345016148713339099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - (A324688 n + A324665 n)

end

end A324661.P9345016148713339099

/-! ## A324661.P3595956323141746161

`A324665(n)+A324666(n)-A324660(n)`
-/

namespace A324661.P3595956323141746161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324665 n + (A324666 n - A324660 n)

end

end A324661.P3595956323141746161

/-! ## A324661.P8429189480995166254

`A324666(n)+A324686(n)-A324687(n)`
-/

namespace A324661.P8429189480995166254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 n + (A324686 n - A324687 n)

end

end A324661.P8429189480995166254

/-! ## A324661.P4636213532827446652

`A228474(n)+A057428(n)*A324660(n)`
-/

namespace A324661.P4636213532827446652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n + A057428 n * A324660 n

end

end A324661.P4636213532827446652

/-!
# A324662: Starting at n, a(n) is the difference of the number of left moves and the number of right moves according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324662, there is no canonical definition to state claims against.
-/

/-! ## A324662.P15924732242003659804

`A228474(n)-2*A324660(n)`
-/

namespace A324662.P15924732242003659804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - 2 * A324660 n

end

end A324662.P15924732242003659804

/-! ## A324662.P16178497570577108931

`A228474(n)-2*(A324688(n)+A324665(n))`
-/

namespace A324662.P16178497570577108931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - 2 * (A324688 n + A324665 n)

end

end A324662.P16178497570577108931

/-! ## A324662.P8180399328635526843

`A228474(n)-A324660(n)-A324660(A028310(n))`
-/

namespace A324662.P8180399328635526843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - A324660 n - A324660 (A028310 n).toNat

end

end A324662.P8180399328635526843

/-! ## A324662.P17210339217998956776

`A228474(n)-(A324660(n)+A324688(n)+A324665(n))`
-/

namespace A324662.P17210339217998956776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - (A324660 n + (A324688 n + A324665 n))

end

end A324662.P17210339217998956776

/-! ## A324662.P16827863384664877087

`A228474(n)-2*(A324665(n)+A324687(n)-A324686(n))`
-/

namespace A324662.P16827863384664877087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - 2 * (A324665 n + (A324687 n - A324686 n))

end

end A324662.P16827863384664877087

/-! ## A324662.P7345170916519314361

`A324661(n)-A324660(n)`
-/

namespace A324662.P7345170916519314361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 n - A324660 n

end

end A324662.P7345170916519314361

/-! ## A324662.P8899633248101062618

`2*A324661(n)-A228474(n)`
-/

namespace A324662.P8899633248101062618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324661 n - A228474 n

end

end A324662.P8899633248101062618

/-! ## A324662.P11417173793334179983

`A324661(n)-(A324688(n)+A324665(n))`
-/

namespace A324662.P11417173793334179983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 n - (A324688 n + A324665 n)

end

end A324662.P11417173793334179983

/-! ## A324662.P8550936438081141140

`A324666(n)-(A324688(n)+A324660(n))`
-/

namespace A324662.P8550936438081141140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 n - (A324688 n + A324660 n)

end

end A324662.P8550936438081141140

/-! ## A324662.P7796419242066351741

`A324661(n)+A057428(n)*A324660(n)`
-/

namespace A324662.P7796419242066351741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 n + A057428 n * A324660 n

end

end A324662.P7796419242066351741

/-!
# A324663: Starting at n, a(n) is the number of moves made away from zero according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324663, there is no canonical definition to state claims against.
-/

/-! ## A324663.P14564344156876446355

`A324687(n)+A324686(n)`
-/

namespace A324663.P14564344156876446355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n + A324686 n

end

end A324663.P14564344156876446355

/-! ## A324663.P2281521988879590315

`A324686(n)-A057428(n)*A324687(n)`
-/

namespace A324663.P2281521988879590315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324686 n - A057428 n * A324687 n

end

end A324663.P2281521988879590315

/-! ## A324663.P15110836781119750397

`A324686(n)-A134824(n)*A324687(n)`
-/

namespace A324663.P15110836781119750397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324686 n - A134824 n * A324687 n

end

end A324663.P15110836781119750397

/-! ## A324663.P5204311376247567658

`A324688(n)+2*A324686(n)`
-/

namespace A324663.P5204311376247567658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324688 n + 2 * A324686 n

end

end A324663.P5204311376247567658

/-! ## A324663.P10283599681845141762

`2*A324687(n)-A324688(n)`
-/

namespace A324663.P10283599681845141762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324687 n - A324688 n

end

end A324663.P10283599681845141762

/-!
# A324664: Starting at n, a(n) is the smallest distance from zero for which the next move is a step away from zero, or zero if no such move is ever made, according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324664, there is no canonical definition to state claims against.
-/

/-! ## A324664.P17641793314688242382

`gcd(A180020(A322128(n+1)), A326296(n+1))`
-/

namespace A324664.P17641793314688242382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180020 (A322128 (n + 1)).toNat) (A326296 (n + 1))

end

end A324664.P17641793314688242382

/-! ## A324664.P10050761315559020122

`A005940(A260239(n))%A142977(n)`
-/

namespace A324664.P10050761315559020122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (A260239 n).toNat) (A142977 n)

end

end A324664.P10050761315559020122

/-! ## A324664.P9554773153169848846

`A081577(n)-A046051(2^A294046(n))`
-/

namespace A324664.P9554773153169848846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 n - A046051 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A294046 n : ℤ))).toNat

end

end A324664.P9554773153169848846

/-! ## A324664.P17909456334762945158

`A048991(A093190(n+1))-A300302(A294609(n))`
-/

namespace A324664.P17909456334762945158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048991 (A093190 (n + 1)).toNat - A300302 (A294609 n).toNat

end

end A324664.P17909456334762945158

/-! ## A324664.P1827822585123806539

`A324190(A322730(n))`
-/

namespace A324664.P1827822585123806539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (A322730 n).toNat

end

end A324664.P1827822585123806539

/-!
# A324665: Starting at n, a(n) is the total number of negative positions visited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324665, there is no canonical definition to state claims against.
-/

/-! ## A324665.P12332028750823466149

`A324660(n)-A324688(n)`
-/

namespace A324665.P12332028750823466149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n - A324688 n

end

end A324665.P12332028750823466149

/-! ## A324665.P14886900968564339874

`A324660(n)+A324686(n)-A324687(n)`
-/

namespace A324665.P14886900968564339874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + (A324686 n - A324687 n)

end

end A324665.P14886900968564339874

/-! ## A324665.P18067427853401317864

`A324660(n)+A057428(n)*A324688(n)`
-/

namespace A324665.P18067427853401317864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + A057428 n * A324688 n

end

end A324665.P18067427853401317864

/-! ## A324665.P16436496045768445079

`A324660(n)+A134824(n)*A324688(n)`
-/

namespace A324665.P16436496045768445079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + A134824 n * A324688 n

end

end A324665.P16436496045768445079

/-! ## A324665.P14533160615237853783

`A324660(n)-(2*A324687(n)-A324663(n))`
-/

namespace A324665.P14533160615237853783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n - (2 * A324687 n - A324663 n)

end

end A324665.P14533160615237853783

/-! ## A324665.P6374609407972407065

`A324660(n)-(A324663(n)-2*A324686(n))`
-/

namespace A324665.P6374609407972407065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n - (A324663 n - 2 * A324686 n)

end

end A324665.P6374609407972407065

/-! ## A324665.P12005867288258539626

`(A228474(n)-A324662(n))/2-A324688(n)`
-/

namespace A324665.P12005867288258539626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228474 n - A324662 n : ℚ) / 2 - (A324688 n : ℚ)

end

end A324665.P12005867288258539626

/-! ## A324665.P9353599592150005129

`A228474(n)-A324666(n)`
-/

namespace A324665.P9353599592150005129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - A324666 n

end

end A324665.P9353599592150005129

/-! ## A324665.P6317877864794395207

`A228474(n)-(A324688(n)+A324661(n))`
-/

namespace A324665.P6317877864794395207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - (A324688 n + A324661 n)

end

end A324665.P6317877864794395207

/-! ## A324665.P4538803059511477229

`A324660(n)+A324661(n)-A324666(n)`
-/

namespace A324665.P4538803059511477229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + (A324661 n - A324666 n)

end

end A324665.P4538803059511477229

/-!
# A324666: Starting at n, a(n) is the total number of positive positions visited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324666, there is no canonical definition to state claims against.
-/

/-! ## A324666.P3778278117626791812

`A324688(n)+A324661(n)`
-/

namespace A324666.P3778278117626791812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324688 n + A324661 n

end

end A324666.P3778278117626791812

/-! ## A324666.P14332446630771680869

`A228474(n)-A324665(n)`
-/

namespace A324666.P14332446630771680869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - A324665 n

end

end A324666.P14332446630771680869

/-! ## A324666.P5299695875685760432

`A324660(n)+A324688(n)+A324662(n)`
-/

namespace A324666.P5299695875685760432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + (A324688 n + A324662 n)

end

end A324666.P5299695875685760432

/-! ## A324666.P13271586972868184191

`A228474(n)+A324688(n)-A324660(n)`
-/

namespace A324666.P13271586972868184191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n + (A324688 n - A324660 n)

end

end A324666.P13271586972868184191

/-! ## A324666.P3855340367000577537

`A324660(n)+A324661(n)-A324665(n)`
-/

namespace A324666.P3855340367000577537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + (A324661 n - A324665 n)

end

end A324666.P3855340367000577537

/-! ## A324666.P12244261532658271842

`A324661(n)+A324687(n)-A324686(n)`
-/

namespace A324666.P12244261532658271842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 n + (A324687 n - A324686 n)

end

end A324666.P12244261532658271842

/-! ## A324666.P11047306663681806546

`A228474(n)+A057428(n)*A324665(n)`
-/

namespace A324666.P11047306663681806546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n + A057428 n * A324665 n

end

end A324666.P11047306663681806546

/-! ## A324666.P10773510739434002246

`A228474(n)+A134824(n)*A324665(n)`
-/

namespace A324666.P10773510739434002246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n + A134824 n * A324665 n

end

end A324666.P10773510739434002246

/-! ## A324666.P4851921235681550290

`A324661(n)-A057428(n)*A324688(n)`
-/

namespace A324666.P4851921235681550290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 n - A057428 n * A324688 n

end

end A324666.P4851921235681550290

/-!
# A324667: Starting at n, a(n) is the maximum negative point visited, or zero if no negative points are visited, according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324667, there is no canonical definition to state claims against.
-/

/-! ## A324667.P17847757648700251146

`-A001221(A228894(A065826(n+1)))`
-/

namespace A324667.P17847757648700251146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001221 (A228894 (A065826 (n + 1)).toNat).toNat

end

end A324667.P17847757648700251146

/-! ## A324667.P7548979159224149160

`A128431(n+1)-A115362(A000217(A337472(n)))`
-/

namespace A324667.P7548979159224149160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128431 (n + 1) - A115362 (A000217 (A337472 n).toNat).toNat

end

end A324667.P7548979159224149160

/-! ## A324667.P6031095022327696118

`A010060(A187829(n+1))-A106254(n+1)`
-/

namespace A324667.P6031095022327696118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A187829 (n + 1)).toNat - A106254 (n + 1)

end

end A324667.P6031095022327696118

/-! ## A324667.P2289517282882651567

`A000035(A328282(n+1))-A106254(n+1)`
-/

namespace A324667.P2289517282882651567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328282 (n + 1)).toNat - A106254 (n + 1)

end

end A324667.P2289517282882651567

/-!
# A324668: Starting at n, a(n) is the minimum positive point visited, or zero if no positive points are visited, according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away from zero instead.

The programs for A324668, there is no canonical definition to state claims against.
-/

/-! ## A324668.P15326204974718823903

`A052409(A038229(n)-char[4*n+1])`
-/

namespace A324668.P15326204974718823903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A038229 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A324668.P15326204974718823903

/-! ## A324668.P5204721942027354094

`gcd(A052409(A038229(n)), A324666(n))`
-/

namespace A324668.P5204721942027354094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052409 (A038229 n).toNat) (A324666 n)

end

end A324668.P5204721942027354094

/-! ## A324668.P12417323323760292125

`A166639(A010049(n))%A131818(n+1)`
-/

namespace A324668.P12417323323760292125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166639 (A010049 n).toNat) (A131818 (n + 1))

end

end A324668.P12417323323760292125

/-! ## A324668.P13643488824053759262

`gcd(A003984(A271075(n+1)), A003984(n))`
-/

namespace A324668.P13643488824053759262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003984 (A271075 (n + 1)).toNat) (A003984 n)

end

end A324668.P13643488824053759262

/-! ## A324668.P371077294904528658

`gcd(A085207(n), A240575(A208913(n+1)))`
-/

namespace A324668.P371077294904528658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085207 n) (A240575 (A208913 (n + 1)).toNat)

end

end A324668.P371077294904528658

/-!
# A324670: Number of simple graphs on n unlabeled nodes with minimum degree exactly 2.

The programs for A324670, there is no canonical definition to state claims against.
-/

/-! ## A324670.P11278769852043749781

`A261919(n+1)-A007111(n+1)`
-/

namespace A324670.P11278769852043749781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261919 (n + 1) - A007111 (n + 1)

end

end A324670.P11278769852043749781

/-! ## A324670.P300401524038484078

`Δ[A004110(n)-∑[A007111(n)]]`
-/

namespace A324670.P300401524038484078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004110 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324670.P300401524038484078

/-! ## A324670.P2543072198147230577

`Δ[A004110(n)]-A007111(n+1)`
-/

namespace A324670.P2543072198147230577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007111 (n + 1)

end

end A324670.P2543072198147230577

/-! ## A324670.P2534638653488691858

`A294217(A152950(n+1))%(2^C(n, 2))`
-/

namespace A324670.P2534638653488691858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294217 (A152950 (n + 1)).toNat) (2 ^ Nat.choose n 2 : ℤ)

end

end A324670.P2534638653488691858

/-! ## A324670.P18124256820652435547

`and(A134824(n), A294217(A152950(n+1)))`
-/

namespace A324670.P18124256820652435547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A294217 (A152950 (n + 1)).toNat)

end

end A324670.P18124256820652435547

/-!
# A324672: Starting at n, a(n) is the sign of the farthest point from zero visited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away. In case of a tie, a(n)=0.

The programs for A324672, there is no canonical definition to state claims against.
-/

/-! ## A324672.P3750685570078817789

`Δ[A324692(n)]`
-/

namespace A324672.P3750685570078817789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324672.P3750685570078817789

/-! ## A324672.P13887046176107395639

`A324692(n+1)-A324692(n)`
-/

namespace A324672.P13887046176107395639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (n + 1) - A324692 n

end

end A324672.P13887046176107395639

/-! ## A324672.P1077081890529615938

`A057428(n)^A274089(A271062(n))`
-/

namespace A324672.P1077081890529615938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A274089 (A271062 n).toNat : ℤ)

end

end A324672.P1077081890529615938

/-! ## A324672.P11154405330688647755

`A057428(n)^A035214(A212026(n+1))`
-/

namespace A324672.P11154405330688647755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A035214 (A212026 (n + 1)).toNat : ℤ)

end

end A324672.P11154405330688647755

/-! ## A324672.P6963893282262891376

`A134824(n)^A035214(A212026(n+1))`
-/

namespace A324672.P6963893282262891376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134824 n : ℚ) ^ (A035214 (A212026 (n + 1)).toNat : ℤ)

end

end A324672.P6963893282262891376

/-!
# A324673: Starting at n, a(n) is the length of the smallest interval containing all points visited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324673, there is no canonical definition to state claims against.
-/

/-! ## A324673.P6449033098758890046

`A248953(n)-A248952(n)`
-/

namespace A324673.P6449033098758890046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248953 n - A248952 n

end

end A324673.P6449033098758890046

/-! ## A324673.P10813150458214021533

`A248953(n)+A057428(n)*A248952(n)`
-/

namespace A324673.P10813150458214021533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248953 n + A057428 n * A248952 n

end

end A324673.P10813150458214021533

/-! ## A324673.P17417185231697747958

`A248953(n)+A134824(n)*A248952(n)`
-/

namespace A324673.P17417185231697747958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248953 n + A134824 n * A248952 n

end

end A324673.P17417185231697747958

/-!
# A324674: Starting at n, a(n) is the number of times we travel to a position already visited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324674, there is no canonical definition to state claims against.
-/

/-! ## A324674.P6176309589647558252

`A324684(n)+A324683(n)`
-/

namespace A324674.P6176309589647558252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 n + A324683 n

end

end A324674.P6176309589647558252

/-! ## A324674.P14194269949383507677

`A324685(n)+2*A324683(n)`
-/

namespace A324674.P14194269949383507677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324685 n + 2 * A324683 n

end

end A324674.P14194269949383507677

/-! ## A324674.P8585423551135978683

`2*A324684(n)-A324685(n)`
-/

namespace A324674.P8585423551135978683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324684 n - A324685 n

end

end A324674.P8585423551135978683

/-! ## A324674.P2226305218434279532

`A324683(n)-A134824(n)*A324684(n)`
-/

namespace A324674.P2226305218434279532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324683 n - A134824 n * A324684 n

end

end A324674.P2226305218434279532

/-! ## A324674.P6394853538702211739

`A324685(n)-2*A324683(n)*A057428(n)`
-/

namespace A324674.P6394853538702211739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324685 n - 2 * A324683 n * A057428 n

end

end A324674.P6394853538702211739

/-! ## A324674.P12916100581313118175

`A324683(A028310(n))+A324685(n)+A324683(n)`
-/

namespace A324674.P12916100581313118175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324683 (A028310 n).toNat + (A324685 n + A324683 n)

end

end A324674.P12916100581313118175

/-!
# A324680: Starting at n, a(n) is the largest distance from zero among all positions from which a spot must be revisited on the next move, or zero if no such positions exist, according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324680, there is no canonical definition to state claims against.
-/

/-! ## A324680.P16823259857210147131

`lcm(p?[A324668(2*n+3)], A324679(n))`
-/

namespace A324680.P16823259857210147131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324668 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A324679 n)

end

end A324680.P16823259857210147131

/-! ## A324680.P1026674653100480869

`A324679(n)*A324725(A285839(n))`
-/

namespace A324680.P1026674653100480869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324679 n * A324725 (A285839 n).toNat

end

end A324680.P1026674653100480869

/-! ## A324680.P10214317015995703629

`lcm(A324679(n), A324692(A228807(n)))`
-/

namespace A324680.P10214317015995703629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A324679 n) (A324692 (A228807 n).toNat)

end

end A324680.P10214317015995703629

/-! ## A324680.P4978065992557913953

`A058094(A324684(n+4))*A324679(n)`
-/

namespace A324680.P4978065992557913953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058094 (A324684 (n + 4)).toNat * A324679 n

end

end A324680.P4978065992557913953

/-! ## A324680.P5181082368838540900

`A324679(n)*A324725(A324713(3*n+4))`
-/

namespace A324680.P5181082368838540900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324679 n * A324725 (A324713 (3 * n + 4)).toNat

end

end A324680.P5181082368838540900

/-!
# A324681: Starting at n, a(n) is the sign of the closest nonzero position to zero visited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away. In the cases of a tie or n=0, we set a(n)=0.

The programs for A324681, there is no canonical definition to state claims against.
-/

/-! ## A324681.P2649814511821249914

`A016371(A339942(n+1)%A181573(3*(n+1)))`
-/

namespace A324681.P2649814511821249914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016371 (Int.tmod (A339942 (n + 1)) (A181573 (3 * (n + 1)))).toNat

end

end A324681.P2649814511821249914

/-! ## A324681.P17754172242043359908

`A023532(n)-A286044(A208355(n))`
-/

namespace A324681.P17754172242043359908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n - A286044 (A208355 n).toNat

end

end A324681.P17754172242043359908

/-! ## A324681.P9850612434821998049

`A145706(A156663(n))-A286044(A208355(n))`
-/

namespace A324681.P9850612434821998049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145706 (A156663 n).toNat - A286044 (A208355 n).toNat

end

end A324681.P9850612434821998049

/-! ## A324681.P822244507502093987

`A168046(A095667(n))-char[∑[n-1]]`
-/

namespace A324681.P822244507502093987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A095667 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A324681.P822244507502093987

/-! ## A324681.P14533246078566430256

`A088705(and(A038573(n), A234852(3*n+4)))`
-/

namespace A324681.P14533246078566430256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (Int.land (A038573 n) (A234852 (3 * n + 4))).toNat

end

end A324681.P14533246078566430256

/-!
# A324682: Starting at n, a(n) is the sign of the closest nonzero point to zero visited for which the next move is a step away from zero, according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away. In the case of a tie, or if the set of points is empty, we set a(n)=0.

The programs for A324682, there is no canonical definition to state claims against.
-/

/-! ## A324682.P7886001257445097808

`A011587(A008591(n*A090683(n)))`
-/

namespace A324682.P7886001257445097808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (A008591 ((n : ℤ) * A090683 n).toNat).toNat

end

end A324682.P7886001257445097808

/-! ## A324682.P8989074770536470252

`A011617(n)*A165481(A324665(n))`
-/

namespace A324682.P8989074770536470252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011617 n * A165481 (A324665 n).toNat

end

end A324682.P8989074770536470252

/-! ## A324682.P15225747584832455072

`A010892(A124494(n+1)-A013610(n))`
-/

namespace A324682.P15225747584832455072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A124494 (n + 1) - A013610 n).toNat

end

end A324682.P15225747584832455072

/-! ## A324682.P17868918582534479825

`A062157(A171376(n+1)*A326476(n))`
-/

namespace A324682.P17868918582534479825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A171376 (n + 1) * A326476 n).toNat

end

end A324682.P17868918582534479825

/-! ## A324682.P2869958797943160526

`A165471(A344612(n)*A373934(n+1))`
-/

namespace A324682.P2869958797943160526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A344612 n * A373934 (n + 1)).toNat

end

end A324682.P2869958797943160526

/-!
# A324683: Starting at n, a(n) is the number of times we move from a negative position to a spot we have already visited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324683, there is no canonical definition to state claims against.
-/

/-! ## A324683.P4251257320833222609

`A324674(n)-A324684(n)`
-/

namespace A324683.P4251257320833222609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 n - A324684 n

end

end A324683.P4251257320833222609

/-! ## A324683.P4387890924308267165

`A324684(n)-A324685(n)`
-/

namespace A324683.P4387890924308267165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 n - A324685 n

end

end A324683.P4387890924308267165

/-! ## A324683.P11333548796060357223

`(A324674(n)-A324685(n))/2`
-/

namespace A324683.P11333548796060357223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324674 n - A324685 n : ℚ) / 2

end

end A324683.P11333548796060357223

/-! ## A324683.P4538920454159376741

`A324674(n)+A134824(n)*A324684(n)`
-/

namespace A324683.P4538920454159376741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 n + A134824 n * A324684 n

end

end A324683.P4538920454159376741

/-! ## A324683.P8838224769195138150

`A324684(n)+A134824(n)*A324685(n)`
-/

namespace A324683.P8838224769195138150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 n + A134824 n * A324685 n

end

end A324683.P8838224769195138150

/-! ## A324683.P2725807375725293635

`A324684(n)+A324685(n)/A134824(n+2)`
-/

namespace A324683.P2725807375725293635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324684 n : ℚ) + (A324685 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A324683.P2725807375725293635

/-!
# A324684: Starting at n, a(n) is the number of times we move from a positive spot to a spot we have already visited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324684, there is no canonical definition to state claims against.
-/

/-! ## A324684.P18208880442438415117

`A324685(n)+A324683(n)`
-/

namespace A324684.P18208880442438415117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324685 n + A324683 n

end

end A324684.P18208880442438415117

/-! ## A324684.P8420414502478478352

`A324674(n)-A324683(n)`
-/

namespace A324684.P8420414502478478352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 n - A324683 n

end

end A324684.P8420414502478478352

/-! ## A324684.P3376116786017415073

`(A324685(n)+A324674(n))/2`
-/

namespace A324684.P3376116786017415073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324685 n + A324674 n : ℚ) / 2

end

end A324684.P3376116786017415073

/-! ## A324684.P14084276867185669655

`A324674(n)+A057428(n)*A324683(n)`
-/

namespace A324684.P14084276867185669655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 n + A057428 n * A324683 n

end

end A324684.P14084276867185669655

/-! ## A324684.P11604708367533623731

`A324674(n)+A134824(n)*A324683(n)`
-/

namespace A324684.P11604708367533623731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 n + A134824 n * A324683 n

end

end A324684.P11604708367533623731

/-! ## A324684.P4322190131377492427

`A324683(n)-A057428(n)*A324685(n)`
-/

namespace A324684.P4322190131377492427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324683 n - A057428 n * A324685 n

end

end A324684.P4322190131377492427

/-! ## A324684.P3883464840526274382

`A324683(n)-A134824(n)*A324685(n)`
-/

namespace A324684.P3883464840526274382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324683 n - A134824 n * A324685 n

end

end A324684.P3883464840526274382

/-!
# A324685: Starting at n, a(n) is the difference of the number of times we revisit spots coming from positive spots and the number of times we revisit spots coming from negative spots according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324685, there is no canonical definition to state claims against.
-/

/-! ## A324685.P10350530365402473357

`A324684(n)-A324683(n)`
-/

namespace A324685.P10350530365402473357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 n - A324683 n

end

end A324685.P10350530365402473357

/-! ## A324685.P7267582570694154537

`2*A324684(n)-A324674(n)`
-/

namespace A324685.P7267582570694154537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324684 n - A324674 n

end

end A324685.P7267582570694154537

/-! ## A324685.P15775639515525247434

`A324674(n)-2*A324683(n)`
-/

namespace A324685.P15775639515525247434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 n - 2 * A324683 n

end

end A324685.P15775639515525247434

/-! ## A324685.P12998399791575538695

`A324684(n)+A134824(n)*A324683(n)`
-/

namespace A324685.P12998399791575538695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 n + A134824 n * A324683 n

end

end A324685.P12998399791575538695

/-! ## A324685.P13068997110902187971

`A324674(n)+2*A324683(n)*A057428(n)`
-/

namespace A324685.P13068997110902187971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 n + 2 * A324683 n * A057428 n

end

end A324685.P13068997110902187971

/-! ## A324685.P14320020082878525636

`A324674(n)+2*A324683(n)*A164117(2*n+1)`
-/

namespace A324685.P14320020082878525636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 n + 2 * A324683 n * A164117 (2 * n + 1)

end

end A324685.P14320020082878525636

/-! ## A324685.P11569972471538939893

`A324684(A028310(n))-(A324674(n)-A324684(n))`
-/

namespace A324685.P11569972471538939893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 (A028310 n).toNat - (A324674 n - A324684 n)

end

end A324685.P11569972471538939893

/-!
# A324686: Starting at n, a(n) is the number of times we move away from zero from a negative position according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324686, there is no canonical definition to state claims against.
-/

/-! ## A324686.P16182264483546140261

`A324663(n)-A324687(n)`
-/

namespace A324686.P16182264483546140261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324663 n - A324687 n

end

end A324686.P16182264483546140261

/-! ## A324686.P16665868901557499985

`A324687(n)-A324688(n)`
-/

namespace A324686.P16665868901557499985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n - A324688 n

end

end A324686.P16665868901557499985

/-! ## A324686.P18162812506761328139

`(A324663(n)-A324688(n))/2`
-/

namespace A324686.P18162812506761328139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324663 n - A324688 n : ℚ) / 2

end

end A324686.P18162812506761328139

/-! ## A324686.P13173910063648512564

`A324665(n)+A324687(n)-A324660(n)`
-/

namespace A324686.P13173910063648512564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324665 n + (A324687 n - A324660 n)

end

end A324686.P13173910063648512564

/-! ## A324686.P2419050243154696898

`A324687(n)+A057428(n)*A324688(n)`
-/

namespace A324686.P2419050243154696898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n + A057428 n * A324688 n

end

end A324686.P2419050243154696898

/-! ## A324686.P10916686301436401419

`A324687(n)+A134824(n)*A324688(n)`
-/

namespace A324686.P10916686301436401419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n + A134824 n * A324688 n

end

end A324686.P10916686301436401419

/-! ## A324686.P8328046181763980417

`A324661(n)+A324687(n)-A324666(n)`
-/

namespace A324686.P8328046181763980417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 n + (A324687 n - A324666 n)

end

end A324686.P8328046181763980417

/-!
# A324687: Starting at n, a(n) is the number of times we move away from zero from a positive position according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324687, there is no canonical definition to state claims against.
-/

/-! ## A324687.P9523448804733556686

`A324663(n)-A324686(n)`
-/

namespace A324687.P9523448804733556686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324663 n - A324686 n

end

end A324687.P9523448804733556686

/-! ## A324687.P12662122196606361535

`A324663(n)+A134824(n)*A324686(n)`
-/

namespace A324687.P12662122196606361535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324663 n + A134824 n * A324686 n

end

end A324687.P12662122196606361535

/-! ## A324687.P16742834262519349523

`A324688(n)+A324686(n)`
-/

namespace A324687.P16742834262519349523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324688 n + A324686 n

end

end A324687.P16742834262519349523

/-! ## A324687.P9880333849795537765

`(A324688(n)+A324663(n))/2`
-/

namespace A324687.P9880333849795537765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324688 n + A324663 n : ℚ) / 2

end

end A324687.P9880333849795537765

/-! ## A324687.P1235285690883771258

`A324660(n)+A324686(n)-A324665(n)`
-/

namespace A324687.P1235285690883771258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + (A324686 n - A324665 n)

end

end A324687.P1235285690883771258

/-! ## A324687.P17582275018070007377

`A324686(n)-A057428(n)*A324688(n)`
-/

namespace A324687.P17582275018070007377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324686 n - A057428 n * A324688 n

end

end A324687.P17582275018070007377

/-! ## A324687.P1404917051695476562

`A324686(n)-A134824(n)*A324688(n)`
-/

namespace A324687.P1404917051695476562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324686 n - A134824 n * A324688 n

end

end A324687.P1404917051695476562

/-! ## A324687.P12252556620540608074

`A324666(n)+A324686(n)-A324661(n)`
-/

namespace A324687.P12252556620540608074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 n + (A324686 n - A324661 n)

end

end A324687.P12252556620540608074

/-!
# A324688: Starting at n, a(n) is the difference of the number of times we move away from zero from positive spots and the number of times we move away from zero from negative spots according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324688, there is no canonical definition to state claims against.
-/

/-! ## A324688.P15538041381600413324

`A324660(n)-A324665(n)`
-/

namespace A324688.P15538041381600413324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n - A324665 n

end

end A324688.P15538041381600413324

/-! ## A324688.P17022044454254739443

`A324687(n)-A324686(n)`
-/

namespace A324688.P17022044454254739443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n - A324686 n

end

end A324688.P17022044454254739443

/-! ## A324688.P17233867710660612047

`2*A324687(n)-A324663(n)`
-/

namespace A324688.P17233867710660612047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324687 n - A324663 n

end

end A324688.P17233867710660612047

/-! ## A324688.P920580759686451533

`A324663(n)-2*A324686(n)`
-/

namespace A324688.P920580759686451533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324663 n - 2 * A324686 n

end

end A324688.P920580759686451533

/-! ## A324688.P4584266681017127189

`A324660(n)+A057428(n)*A324665(n)`
-/

namespace A324688.P4584266681017127189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + A057428 n * A324665 n

end

end A324688.P4584266681017127189

/-! ## A324688.P9555950497355306537

`A324687(n)+A057428(n)*A324686(n)`
-/

namespace A324688.P9555950497355306537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n + A057428 n * A324686 n

end

end A324688.P9555950497355306537

/-! ## A324688.P12111340985777225311

`A324687(n)+A134824(n)*A324686(n)`
-/

namespace A324688.P12111340985777225311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n + A134824 n * A324686 n

end

end A324688.P12111340985777225311

/-! ## A324688.P14132416802009203197

`A324666(n)-A324661(n)`
-/

namespace A324688.P14132416802009203197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 n - A324661 n

end

end A324688.P14132416802009203197

/-! ## A324688.P4147934389638932319

`A228474(n)-(A324665(n)+A324661(n))`
-/

namespace A324688.P4147934389638932319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - (A324665 n + A324661 n)

end

end A324688.P4147934389638932319

/-! ## A324688.P7236708898464072848

`A324660(n)+A324666(n)-A228474(n)`
-/

namespace A324688.P7236708898464072848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + (A324666 n - A228474 n)

end

end A324688.P7236708898464072848

/-!
# A324689: List of all starting positions for which no position is revisited according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324689, there is no canonical definition to state claims against.
-/

/-! ## A324689.P12160122014763760874

`eq[0, A324677(n)]`
-/

namespace A324689.P12160122014763760874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324689.P12160122014763760874

/-! ## A324689.P15010088006944906611

`lt[A324677(A028310(n)), 1]`
-/

namespace A324689.P15010088006944906611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324677 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324689.P15010088006944906611

/-! ## A324689.P15096992280543546244

`lt[A324677(n), A000122(n)!]`
-/

namespace A324689.P15096992280543546244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324677 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324689.P15096992280543546244

/-! ## A324689.P9697621260115815121

`lt[A001221(A324677(n)+1), 1]`
-/

namespace A324689.P9697621260115815121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324677 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324689.P9697621260115815121

/-! ## A324689.P15669613350671253072

`lt[A000005(A324677(n)+1), 2]`
-/

namespace A324689.P15669613350671253072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324677 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324689.P15669613350671253072

/-!
# A324690: List of all starting positions for which all moves away from zero, if any, occur at negative positions, according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324690, there is no canonical definition to state claims against.
-/

/-! ## A324690.P16854363706610885099

`∪[A000217(n), A324691(n)]`
-/

namespace A324690.P16854363706610885099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324691 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324690.P16854363706610885099

/-! ## A324690.P15823883171497444029

`eq[0, A324687(n)]`
-/

namespace A324690.P15823883171497444029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324690.P15823883171497444029

/-! ## A324690.P9769989772675898244

`lt[A324687(A028310(n)), 1]`
-/

namespace A324690.P9769989772675898244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324690.P9769989772675898244

/-! ## A324690.P1537840358450434826

`A248953(lt[A324687(n), 1])`
-/

namespace A324690.P1537840358450434826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A324690.P1537840358450434826

/-! ## A324690.P16823289380918724961

`eq[A324663(n), A324686(n)]`
-/

namespace A324690.P16823289380918724961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324686 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324690.P16823289380918724961

/-!
# A324691: List of all starting positions for which all moves away from zero occur at negative positions, and at least one such move occurs, according to the following rules. On the k-th step (k=1,2,3,...) move a distance of k in the direction of zero. If the number landed on has been landed on before, move a distance of k away.

The programs for A324691, there is no canonical definition to state claims against.
-/

/-! ## A324691.P5034059142738119898

`filter[A324690(n+1), A123110(#)]`
-/

namespace A324691.P5034059142738119898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A324691.P5034059142738119898

/-! ## A324691.P16436252358415594344

`∩[A242401(n+1), A324690(n)]`
-/

namespace A324691.P16436252358415594344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324691.P16436252358415594344

/-! ## A324691.P9211869336140803861

`∩[comp[∑[n]], A324690(n)]`
-/

namespace A324691.P9211869336140803861
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A324691.P9211869336140803861

/-! ## A324691.P11356415535312685166

`eq[A010054(n), A324687(n)]`
-/

namespace A324691.P11356415535312685166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324691.P11356415535312685166

/-! ## A324691.P8907702946224430509

`eq[A010816(n), A324687(n)]`
-/

namespace A324691.P8907702946224430509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324691.P8907702946224430509

/-!
# A324692: a(n) = partial sums of A324672.

The programs for A324692, there is no canonical definition to state claims against.
-/

/-! ## A324692.P5079346544999417265

`∑[A324672(n-ceil(sin(n)²))]`
-/

namespace A324692.P5079346544999417265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324692.P5079346544999417265

/-! ## A324692.P5764815232790987129

`∑[A324672(floor(acot(n)+n)-1)]`
-/

namespace A324692.P5764815232790987129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324692.P5764815232790987129

/-! ## A324692.P16538491738604117450

`A324672(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A324692.P16538491738604117450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324672 (n - 1) + a (n - 1)

end

end A324692.P16538491738604117450

/-! ## A324692.P9543933995237720470

`∑[A324672(round(sqrt(n²+1))-1)]`
-/

namespace A324692.P9543933995237720470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324692.P9543933995237720470

/-! ## A324692.P4041667118260353804

`∑[A324672(A028310(n)-1)]%(n+1)`
-/

namespace A324692.P4041667118260353804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A324692.P4041667118260353804

/-! ## A324692.P9880866336529450921

`∑[A324672(n)]-A324672(n)`
-/

namespace A324692.P9880866336529450921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A324672 n

end

end A324692.P9880866336529450921

/-!
# A324693: Number of simple graphs on n unlabeled nodes with minimum degree exactly 1.

The programs for A324693, there is no canonical definition to state claims against.
-/

/-! ## A324693.P17203997315911220316

`A002494(n+1)-A261919(n+1)`
-/

namespace A324693.P17203997315911220316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (n + 1) - A261919 (n + 1)

end

end A324693.P17203997315911220316

/-! ## A324693.P13449486040459051675

`Δ[A000088(n)-A004110(n)]`
-/

namespace A324693.P13449486040459051675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A004110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324693.P13449486040459051675

/-! ## A324693.P14710839748028981455

`Δ[A000088(n)-∑[A261919(n)]]`
-/

namespace A324693.P14710839748028981455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324693.P14710839748028981455

/-! ## A324693.P3135011552969417225

`Δ[A000088(n)-A327371(∑[n])]`
-/

namespace A324693.P3135011552969417225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A327371 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324693.P3135011552969417225

/-! ## A324693.P10102887142313971646

`A141580(n+1)-A141580(A028310(n))`
-/

namespace A324693.P10102887142313971646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141580 (n + 1) - A141580 (A028310 n).toNat

end

end A324693.P10102887142313971646

/-!
# A324694: Lexicographically earliest sequence of positive integers divisible by prime(m) for some m not already in the sequence.

The programs for A324694, there is no canonical definition to state claims against.
-/

/-! ## A324694.P5630113868199874021

`comp[A324695(n+1)-1]+1`
-/

namespace A324694.P5630113868199874021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324694.P5630113868199874021

/-! ## A324694.P9762623903485298252

`eq[0, A184160(n+2)%2]+2`
-/

namespace A324694.P9762623903485298252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A324694.P9762623903485298252

/-! ## A324694.P7513139928187729527

`eq[2, gcd(2, A184160(n+1))]+1`
-/

namespace A324694.P7513139928187729527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A184160 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324694.P7513139928187729527

/-! ## A324694.P12407428802430469208

`lt[23, a(A184160(n)%2)²]` with `a(0)=5, a(1)=2`
-/

namespace A324694.P12407428802430469208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  f2 (Int.tmod (A184160 n) 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324694.P12407428802430469208

/-! ## A324694.P1202795193471453102

`lt[A184160(round(sqrt(n²+1)))%2, 1]`
-/

namespace A324694.P1202795193471453102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324694.P1202795193471453102

/-! ## A324694.P10995677535587511693

`eq[0, A184160(n^ceil(sin(n)²))%2]`
-/

namespace A324694.P10995677535587511693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324694.P10995677535587511693

/-! ## A324694.P13284152366620482615

`eq[0, A184160(floor(2/acot(n))-n)%2]`
-/

namespace A324694.P13284152366620482615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324694.P13284152366620482615

/-! ## A324694.P18404717111549763966

`eq[0, A184160(2*n/a(and(1, n-1)))%2]` with `a(0)=2`
-/

namespace A324694.P18404717111549763966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  Int.tmod (A184160 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (f2 (Int.land 1 ((n : ℤ) - 1)).toNat : ℚ))).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324694.P18404717111549763966

/-! ## A324694.P15942930905833797981

`comp[A023443(A324695(n+1))]+1`
-/

namespace A324694.P15942930905833797981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A324695 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324694.P15942930905833797981

/-! ## A324694.P10607759616002853956

`comp[A015600(n)*A324695(n+1)]`
-/

namespace A324694.P10607759616002853956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A324695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324694.P10607759616002853956

/-!
# A324695: Lexicographically earliest sequence of positive integers whose prime indices are not already in the sequence.

The programs for A324695, there is no canonical definition to state claims against.
-/

/-! ## A324695.P14755835438197146574

`lt[0, A184160(n+1)%2]+1`
-/

namespace A324695.P14755835438197146574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324695.P14755835438197146574

/-! ## A324695.P10122753635119969620

`eq[1, A184160(xor(1, n)+1)%2]`
-/

namespace A324695.P10122753635119969620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (Nat.xor 1 n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324695.P10122753635119969620

/-! ## A324695.P6199678257162354687

`eq[1, a(A184160(n)%2)²]` with `a(0)=0, a(1)=1`
-/

namespace A324695.P6199678257162354687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (Int.tmod (A184160 n) 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324695.P6199678257162354687

/-! ## A324695.P11890076589799578957

`eq[1, A184160(abs(xor(n, -2)))%2]`
-/

namespace A324695.P11890076589799578957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 |Int.xor (n : ℤ) (-2)|.toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324695.P11890076589799578957

/-! ## A324695.P18079284987121033454

`eq[1, A184160(-xor(n, -2))%2]`
-/

namespace A324695.P18079284987121033454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (-Int.xor (n : ℤ) (-2)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324695.P18079284987121033454

/-! ## A324695.P11268596246847293523

`eq[1, A184160(abs(1-n)+1)%2]`
-/

namespace A324695.P11268596246847293523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (|1 - (n : ℤ)| + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324695.P11268596246847293523

/-! ## A324695.P6230519995006747841

`comp[n+1-A184160(n+2)%2]+1`
-/

namespace A324695.P6230519995006747841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A184160 (n + 2)) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324695.P6230519995006747841

/-! ## A324695.P2038626370890677527

`eq[1, A040001(A184160(n+1))]+1`
-/

namespace A324695.P2038626370890677527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A184160 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324695.P2038626370890677527

/-! ## A324695.P5115461494567969223

`eq[1, A000034(A184160(n+1)+1)]+1`
-/

namespace A324695.P5115461494567969223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A184160 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324695.P5115461494567969223

/-! ## A324695.P1762501106755472688

`eq[2, A020639(A184160(n+1)+1)]+1`
-/

namespace A324695.P1762501106755472688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A184160 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324695.P1762501106755472688

/-!
# A324696: Lexicographically earliest sequence containing 1 and all numbers divisible by prime(m) for some m not already in the sequence.

The programs for A324696, there is no canonical definition to state claims against.
-/

/-! ## A324696.P351121732289680019

`comp[A304360(n+1)-1]+1`
-/

namespace A324696.P351121732289680019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324696.P351121732289680019

/-! ## A324696.P16263102814329234189

`comp[A317963(n)+a(n-1)]+1` with `a(0)=1`
-/

namespace A324696.P16263102814329234189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A317963 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324696.P16263102814329234189

/-! ## A324696.P3316721712990308718

`comp[∑[A317963(abs(1-n)+1)]]+1`
-/

namespace A324696.P3316721712990308718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324696.P3316721712990308718

/-! ## A324696.P15088310859255248811

`comp[∑[A317963(C(3, n²)+n)]-1]+1`
-/

namespace A324696.P15088310859255248811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (Nat.choose 3 (n ^ 2) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324696.P15088310859255248811

/-! ## A324696.P9295771589617849948

`A000720(A317964(n+1))`
-/

namespace A324696.P9295771589617849948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A317964 (n + 1)).toNat

end

end A324696.P9295771589617849948

/-! ## A324696.P3559364575636125254

`record[A003963(A304360(n+1))]`
-/

namespace A324696.P3559364575636125254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A304360 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324696.P3559364575636125254

/-! ## A324696.P10450393495998358275

`A000720(p?[A304360(n+1)])`
-/

namespace A324696.P10450393495998358275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324696.P10450393495998358275

/-! ## A324696.P5244308636402772827

`A003963(p?[A304360(n+1)])`
-/

namespace A324696.P5244308636402772827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324696.P5244308636402772827

/-! ## A324696.P5976765452351828262

`A003963(p?[A317964(n+1)])`
-/

namespace A324696.P5976765452351828262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324696.P5976765452351828262

/-! ## A324696.P15032705296232561227

`A026238(p?[A304360(n+1)])`
-/

namespace A324696.P15032705296232561227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324696.P15032705296232561227

/-!
# A324697: Lexicographically earliest sequence of positive integers > 1 that are prime or whose prime indices already belong to the sequence.

The programs for A324697, there is no canonical definition to state claims against.
-/

/-! ## A324697.P4697990580787496026

`eq[char[A324705(n+1)], A151909(n)]`
-/

namespace A324697.P4697990580787496026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324697.P4697990580787496026

/-! ## A324697.P10931616927902623587

`eq[char[A324705(n+1)], A151933(n)]`
-/

namespace A324697.P10931616927902623587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324697.P10931616927902623587

/-! ## A324697.P5518718474202121297

`A293754(eq[(-1)^val(n+1, 2), A293895(n+1)])`
-/

namespace A324697.P5518718474202121297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324697.P5518718474202121297

/-! ## A324697.P13568823350138763971

`A293754(eq[A057979(n), A293895(n+1)])`
-/

namespace A324697.P13568823350138763971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324697.P13568823350138763971

/-! ## A324697.P1255554974849685164

`record[A064680(n+1)/A320011(A319991(n+1))]`
-/

namespace A324697.P1255554974849685164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064680 (n + 1) : ℚ) / (A320011 (A319991 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324697.P1255554974849685164

/-!
# A324698: Lexicographically earliest sequence containing 2 and all numbers > 1 whose prime indices already belong to the sequence.

The programs for A324698, there is no canonical definition to state claims against.
-/

/-! ## A324698.P12261526914442216051

`∩[comp[A324704(n+1)], A353866(n+1)]`
-/

namespace A324698.P12261526914442216051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324704 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A324698.P12261526914442216051

/-! ## A324698.P16831140752382309686

`∑[A178305(∑[n+4])]`
-/

namespace A324698.P16831140752382309686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178305 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324698.P16831140752382309686

/-! ## A324698.P14527366636969258497

`floor(A244780(A061497(n+1))+acot(n))`
-/

namespace A324698.P14527366636969258497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A244780 (A061497 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A324698.P14527366636969258497

/-! ## A324698.P1251378959258084145

`A244780(n+1)+A010054(A008780(n))`
-/

namespace A324698.P1251378959258084145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244780 (n + 1) + A010054 (A008780 n).toNat

end

end A324698.P1251378959258084145

/-! ## A324698.P1098379626302691125

`A244780(n+1)+A010054(A055875(n))`
-/

namespace A324698.P1098379626302691125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244780 (n + 1) + A010054 (A055875 n).toNat

end

end A324698.P1098379626302691125

/-!
# A324699: Lexicographically earliest sequence of positive integers whose prime indices minus 1 already belong to the sequence.

The programs for A324699, there is no canonical definition to state claims against.
-/

/-! ## A324699.P1082162770789110969

`A306719(n+1)-1`
-/

namespace A324699.P1082162770789110969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306719 (n + 1) - 1

end

end A324699.P1082162770789110969

/-! ## A324699.P5379150707097371728

`abs(1-A306719(Δ[n²]-n))`
-/

namespace A324699.P5379150707097371728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A306719 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A324699.P5379150707097371728

/-! ## A324699.P1843930414511534466

`abs(A306719(comp[2*n]-n)-1)`
-/

namespace A324699.P1843930414511534466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A306719 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - 1|

end

end A324699.P1843930414511534466

/-! ## A324699.P12134619292508029675

`abs(xor(A306719(record[n^(n%2)]-n)-1, -2))`
-/

namespace A324699.P12134619292508029675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A306719 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n) - 1) (-2)|

end

end A324699.P12134619292508029675

/-! ## A324699.P5956666337337718693

`A014681(A306719(n+1))`
-/

namespace A324699.P5956666337337718693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A306719 (n + 1)).toNat

end

end A324699.P5956666337337718693

/-! ## A324699.P5807250179152932357

`record[A306719(A100727(n))-1]`
-/

namespace A324699.P5807250179152932357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306719 (A100727 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324699.P5807250179152932357

/-! ## A324699.P12164533716603705296

`record[A306719(A126759(n))-1]`
-/

namespace A324699.P12164533716603705296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306719 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324699.P12164533716603705296

/-! ## A324699.P10341740318341026310

`record[A306719(A133310(n))-1]`
-/

namespace A324699.P10341740318341026310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306719 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324699.P10341740318341026310

/-! ## A324699.P17718048802383876611

`record[A306719(A290094(n))-1]`
-/

namespace A324699.P17718048802383876611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306719 (A290094 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324699.P17718048802383876611

/-! ## A324699.P16183359253531704229

`A023444(A306719(n+1)+1)`
-/

namespace A324699.P16183359253531704229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A306719 (n + 1) + 1).toNat

end

end A324699.P16183359253531704229

