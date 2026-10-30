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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A333502: a(n) is the n-th number m such that m^2 divides n^m - 1 (or 0 if m does not exist).

The programs for A333502, there is no canonical definition to state claims against.
-/

/-! ## A333502.P7756938217808622775

`A333500(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A333502.P7756938217808622775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333500 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A333502.P7756938217808622775

/-! ## A333502.P18333641427680530086

`A333500(∑[4*n]+1)`
-/

namespace A333502.P18333641427680530086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A333502.P18333641427680530086

/-!
# A333503: Differences between consecutive odd abundant numbers.

The programs for A333503, there is no canonical definition to state claims against.
-/

/-! ## A333503.P16839169961787963961

`Δ[A005231(n+1)]`
-/

namespace A333503.P16839169961787963961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333503.P16839169961787963961

/-! ## A333503.P10253122493936020421

`Δ[A106431(n+1)]`
-/

namespace A333503.P10253122493936020421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333503.P10253122493936020421

/-! ## A333503.P3595668514677657542

`Δ[record[A005231(A329048(n))]]`
-/

namespace A333503.P3595668514677657542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333503.P3595668514677657542

/-! ## A333503.P13812147442436598000

`A005231(n+2)-A005231(n+1)`
-/

namespace A333503.P13812147442436598000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 2) - A005231 (n + 1)

end

end A333503.P13812147442436598000

/-! ## A333503.P14376736991907081149

`A106431(n+2)-A106431(n+1)`
-/

namespace A333503.P14376736991907081149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106431 (n + 2) - A106431 (n + 1)

end

end A333503.P14376736991907081149

/-! ## A333503.P2746301556745777939

`Δ[∪[A156942(n+1), A174865(n+1)]]`
-/

namespace A333503.P2746301556745777939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156942 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333503.P2746301556745777939

/-! ## A333503.P16492982911642639380

`Δ[∪[A174865(n+1), A357607(n+1)]]`
-/

namespace A333503.P16492982911642639380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357607 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333503.P16492982911642639380

/-! ## A333503.P3521450478308163531

`A254572(A005231(n+2)%A005231(n+1))`
-/

namespace A333503.P3521450478308163531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254572 (Int.tmod (A005231 (n + 2)) (A005231 (n + 1))).toNat

end

end A333503.P3521450478308163531

/-! ## A333503.P9356073669941972746

`Δ[record[A005231(A263274(n))]]`
-/

namespace A333503.P9356073669941972746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A263274 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333503.P9356073669941972746

/-! ## A333503.P6375144605186477324

`Δ[record[A005231(A102885(n))]]`
-/

namespace A333503.P6375144605186477324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333503.P6375144605186477324

/-!
# A333504: Sum of the heights of all lattice paths from (0,0) to (n,0) that do not go below the x-axis, and at (x,y) only allow steps (1,v) with v in {-1,0,1,...,y+1}.

The programs for A333504, there is no canonical definition to state claims against.
-/

/-! ## A333504.P4125553047243695168

`A062108(A000701(∑[n]))`
-/

namespace A333504.P4125553047243695168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A000701 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A333504.P4125553047243695168

/-! ## A333504.P14142571723376495883

`round(sqrt(A240496(n²)))`
-/

namespace A333504.P14142571723376495883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A240496 (n ^ 2) : ℝ))

end

end A333504.P14142571723376495883

/-! ## A333504.P13034740313181871436

`A071842(A331473(n))`
-/

namespace A333504.P13034740313181871436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071842 (A331473 n).toNat

end

end A333504.P13034740313181871436

/-! ## A333504.P17158844642752280316

`A071842(A279704(n+1))`
-/

namespace A333504.P17158844642752280316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071842 (A279704 (n + 1)).toNat

end

end A333504.P17158844642752280316

/-!
# A333505: a(n) = Sum_{k=1..n} (-1)^(k+1) * k * ceiling(n/k).

The programs for A333505, the canonical program `A333505.P4476880584982443317` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333505 has offset 1).

The definition of A333505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^(#+2)*(#+1)*ceil((n+1)/(#+1))]` (program `A333505.P4476880584982443317`, by `A333505.P4476880584982443317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333505.P4476880584982443317

`∑{#}[n, (-1)^(#+2)*(#+1)*ceil((n+1)/(#+1))]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333505

/-- `∑{#}[n, (-1)^(#+2)*(#+1)*ceil((n+1)/(#+1))]` -/
def P4476880584982443317.Spec : Prop :=
  ∀ n, P4476880584982443317.a n = A333505 (n + 1)

theorem P4476880584982443317.correct : P4476880584982443317.Spec := by
  intro n
  simp only [A333505, Nat.add_sub_cancel]

end A333505

/-! ## A333505.P16945487546006960901

`A001057(n+1)+∑[∑{d}[n, A181983(#)]]`
-/

namespace A333505.P16945487546006960901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A181983 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333505.P16945487546006960901

namespace A333505

/-- `A001057(n+1)+∑[∑{d}[n, A181983(#)]]` -/
def P16945487546006960901.Spec : Prop :=
  ∀ n, P16945487546006960901.a n = A333505 (n + 1)

end A333505

/-! ## A333505.P17766672121331465343

`∑[A181983(n+1)+∑{d}[n, A181983(#)]]`
-/

namespace A333505.P17766672121331465343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n + 1) + ∑ d ∈ Nat.divisors (f2 n), A181983 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333505.P17766672121331465343

namespace A333505

/-- `∑[A181983(n+1)+∑{d}[n, A181983(#)]]` -/
def P17766672121331465343.Spec : Prop :=
  ∀ n, P17766672121331465343.a n = A333505 (n + 1)

end A333505

/-! ## A333505.P9224697303624480124

`A001057(n+1)-(A024919(n+1)+A002129(n+1))`
-/

namespace A333505.P9224697303624480124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) - (A024919 (n + 1) + A002129 (n + 1))

end

end A333505.P9224697303624480124

namespace A333505

/-- `A001057(n+1)-(A024919(n+1)+A002129(n+1))` -/
def P9224697303624480124.Spec : Prop :=
  ∀ n, P9224697303624480124.a n = A333505 (n + 1)

end A333505

/-!
# A333506: Numbers k that divide 19^k-1.

The programs for A333506, there is no canonical definition to state claims against.
-/

/-! ## A333506.P3288682862194245573

`eq[1, A000045(A335286((n+1)²))]+1`
-/

namespace A333506.P3288682862194245573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A335286 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333506.P3288682862194245573

/-! ## A333506.P12020664870428310292

`record[A094759(n+1)/A001045(A335286((n+1)²))]`
-/

namespace A333506.P12020664870428310292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094759 (n + 1) : ℚ) / (A001045 (A335286 ((n + 1) ^ 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333506.P12020664870428310292

/-! ## A333506.P16755711007411449216

`record[A275987(n+1)/A001045(A335286((n+1)²))]`
-/

namespace A333506.P16755711007411449216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275987 (n + 1) : ℚ) / (A001045 (A335286 ((n + 1) ^ 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333506.P16755711007411449216

/-! ## A333506.P8497374584598401496

`record[A008619(2*n)/A001045(A335286((n+1)²))]`
-/

namespace A333506.P8497374584598401496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A001045 (A335286 ((n + 1) ^ 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333506.P8497374584598401496

/-! ## A333506.P17219190519913093804

`lt[n/2, A000001(A256017(n+1))]+1`
-/

namespace A333506.P17219190519913093804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A256017 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A333506.P17219190519913093804

/-!
# A333508: Central coefficients of polynomials related to Weyl groups and defined in A162206.

The programs for A333508, there is no canonical definition to state claims against.
-/

/-! ## A333508.P15374274068980955847

`A162206(∑[n²+1])`
-/

namespace A333508.P15374274068980955847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162206 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333508.P15374274068980955847

/-! ## A333508.P12630341863014451806

`∑[A216345(A145158(n))]`
-/

namespace A333508.P12630341863014451806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A145158 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333508.P12630341863014451806

/-!
# A333510: Number of self-avoiding walks in the n X 2 grid graph which start at any of the n vertices on left side of the graph and terminate at any of the n vertices on the right side.

The programs for A333510, the canonical program `A333510.P3762203350232599511` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333510 has offset 1).

The definition of A333510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333510.P3762203350232599511

`∑[A308579(n+1)-n]-(2*C(n, 3)-n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A333510

/-- `∑[A308579(n+1)-n]-(2*C(n, 3)-n)` -/
def P3762203350232599511.Spec : Prop :=
  ∀ n, P3762203350232599511.a n = A333510 (n + 1)

theorem P3762203350232599511.correct : P3762203350232599511.Spec := by
  intro n
  simp only [A333510, Nat.add_sub_cancel]

end A333510

/-! ## A333510.P13136379531641978177

`∑[A099041(n)-2*n]-(2*C(n, 3)-n)`
-/

namespace A333510.P13136379531641978177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099041 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((2 * Nat.choose n 3 : ℤ) - (n : ℤ))

end

end A333510.P13136379531641978177

namespace A333510

/-- `∑[A099041(n)-2*n]-(2*C(n, 3)-n)` -/
def P13136379531641978177.Spec : Prop :=
  ∀ n, P13136379531641978177.a n = A333510 (n + 1)

end A333510

/-! ## A333510.P3281541816668612358

`∑[A005010(n)-A027694(n)]+1`
-/

namespace A333510.P3281541816668612358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n - A027694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A333510.P3281541816668612358

namespace A333510

/-- `∑[A005010(n)-A027694(n)]+1` -/
def P3281541816668612358.Spec : Prop :=
  ∀ n, P3281541816668612358.a n = A333510 (n + 1)

end A333510

/-! ## A333510.P10723384271329381185

`∑[2*A053209(n)]-A167875(n)`
-/

namespace A333510.P10723384271329381185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167875 n

end

end A333510.P10723384271329381185

namespace A333510

/-- `∑[2*A053209(n)]-A167875(n)` -/
def P10723384271329381185.Spec : Prop :=
  ∀ n, P10723384271329381185.a n = A333510 (n + 1)

end A333510

/-! ## A333510.P9498353120429905396

`∑[2*A053209(n)-(A084849(n)-n²)]`
-/

namespace A333510.P9498353120429905396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053209 n - (A084849 n - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333510.P9498353120429905396

namespace A333510

/-- `∑[2*A053209(n)-(A084849(n)-n²)]` -/
def P9498353120429905396.Spec : Prop :=
  ∀ n, P9498353120429905396.a n = A333510 (n + 1)

end A333510

/-! ## A333510.P17165264907606575214

`ogf((1+2x-5x^2+2x^3+2x^4)/(1-6x+14x^2-16x^3+9x^4-2x^5))`
-/

namespace A333510.P17165264907606575214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -5, 2, 2] [1, -6, 14, -16, 9, -2] n

end

end A333510.P17165264907606575214

namespace A333510

/-- `ogf((1+2x-5x^2+2x^3+2x^4)/(1-6x+14x^2-16x^3+9x^4-2x^5))` -/
def P17165264907606575214.Spec : Prop :=
  ∀ n, P17165264907606575214.a n = A333510 (n + 1)

end A333510

/-! ## A333510.P14475637952169593114

`(27*2^(n+1)-(n+1)^3-26*(n+1)-24)/3`
-/

namespace A333510.P14475637952169593114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((27 * 2 ^ (n + 1) : ℤ) - ((n + 1) ^ 3 : ℤ) - (26 * (n + 1) : ℤ) - 24 : ℚ) / 3

end

end A333510.P14475637952169593114

namespace A333510

/-- `(27*2^(n+1)-(n+1)^3-26*(n+1)-24)/3` -/
def P14475637952169593114.Spec : Prop :=
  ∀ n, P14475637952169593114.a n = (A333510 (n + 1) : ℚ)

end A333510

/-!
# A333511: Number of self-avoiding walks in the n X 3 grid graph which start at any of the n vertices on left side of the graph and terminate at any of the n vertices on the right side.

The programs for A333511, there is no canonical definition to state claims against.
-/

/-! ## A333511.P3549280844859490827

`A333509(∑[n+2])`
-/

namespace A333511.P3549280844859490827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333511.P3549280844859490827

/-! ## A333511.P5459830035159000187

`record[A333509(A333530(n+1))]`
-/

namespace A333511.P5459830035159000187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333509 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333511.P5459830035159000187

/-! ## A333511.P523250739086072278

`record[A333509(A333531(n+1)-1)]`
-/

namespace A333511.P523250739086072278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333509 (A333531 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333511.P523250739086072278

/-! ## A333511.P10675005997119952733

`record[gcd(A319753(n), A333509(n+1))]`
-/

namespace A333511.P10675005997119952733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319753 n) (A333509 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333511.P10675005997119952733

/-!
# A333514: Number of self-avoiding closed paths on an n X 4 grid which pass through four corners ((0,0), (0,3), (n-1,3), (n-1,0)).

The programs for A333514, the canonical program `A333514.P5145919564674901909` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333514 has offset 2).

The definition of A333514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333514.P5145919564674901909

`ogf((1-4x+2x^2+x^3)/(1-7x+12x^2-7x^3+3x^4+2x^5))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333514

/-- `ogf((1-4x+2x^2+x^3)/(1-7x+12x^2-7x^3+3x^4+2x^5))` -/
def P5145919564674901909.Spec : Prop :=
  ∀ n, P5145919564674901909.a n = A333514 (n + 2)

theorem P5145919564674901909.correct : P5145919564674901909.Spec := by
  intro n
  simp only [A333514, Nat.add_sub_cancel]

end A333514

/-! ## A333514.P7276496658735078999

`A333513(∑[n+3]+2)`
-/

namespace A333514.P7276496658735078999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333514.P7276496658735078999

namespace A333514

/-- `A333513(∑[n+3]+2)` -/
def P7276496658735078999.Spec : Prop :=
  ∀ n, P7276496658735078999.a n = A333514 (n + 2)

end A333514

/-! ## A333514.P3753099520392214148

`record[A333513(A333530(n+1))]`
-/

namespace A333514.P3753099520392214148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333514.P3753099520392214148

namespace A333514

/-- `record[A333513(A333530(n+1))]` -/
def P3753099520392214148.Spec : Prop :=
  ∀ n, P3753099520392214148.a n = A333514 (n + 2)

end A333514

/-! ## A333514.P4894153664864343912

`record[A333513(Δ[A003453(n+5)])]`
-/

namespace A333514.P4894153664864343912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333514.P4894153664864343912

namespace A333514

/-- `record[A333513(Δ[A003453(n+5)])]` -/
def P4894153664864343912.Spec : Prop :=
  ∀ n, P4894153664864343912.a n = A333514 (n + 2)

end A333514

/-! ## A333514.P10109530344859068694

`record[A333513(A333531(n+1)-1)]`
-/

namespace A333514.P10109530344859068694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A333531 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333514.P10109530344859068694

namespace A333514

/-- `record[A333513(A333531(n+1)-1)]` -/
def P10109530344859068694.Spec : Prop :=
  ∀ n, P10109530344859068694.a n = A333514 (n + 2)

end A333514

/-!
# A333515: Number of self-avoiding closed paths on an n X 5 grid which pass through four corners ((0,0), (0,4), (n-1,4), (n-1,0)).

The programs for A333515, there is no canonical definition to state claims against.
-/

/-! ## A333515.P7896094082631891020

`A333513((n+3)²-∑[n+1])`
-/

namespace A333515.P7896094082631891020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333515.P7896094082631891020

/-! ## A333515.P12694147767274562014

`record[A333513(∑[A342937(n+1)])]`
-/

namespace A333515.P12694147767274562014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333515.P12694147767274562014

/-! ## A333515.P3962078187864546304

`record[A333513(A333530(n+2)-1)]`
-/

namespace A333515.P3962078187864546304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A333530 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333515.P3962078187864546304

/-! ## A333515.P3459106325714439711

`record[A333513(A333531(n+2)-2)]`
-/

namespace A333515.P3459106325714439711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A333531 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333515.P3459106325714439711

/-! ## A333515.P14742191403486585106

`record[A010054(n)*A333513(n+5)]`
-/

namespace A333515.P14742191403486585106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A333513 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333515.P14742191403486585106

/-!
# A333516: Irregular triangle read by rows in which row n lists the first A000217(n) terms of A002260, n >= 1.

The programs for A333516, the canonical program `A333516.P17702150738721740833` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333516 has offset 1).

The definition of A333516 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124171, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333516.P17702150738721740833

`A002260(A124171(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A333516

/-- `A002260(A124171(n+1))` -/
def P17702150738721740833.Spec : Prop :=
  ∀ n, P17702150738721740833.a n = A333516 (n + 1)

theorem P17702150738721740833.correct : P17702150738721740833.Spec := by
  intro n
  simp only [A333516, Nat.add_sub_cancel]

end A333516

/-! ## A333516.P12185363643662243798

`val(eq[4, a(and(n, n-1))+1], 2)+1` with `a(0)=1`
-/

namespace A333516.P12185363643662243798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2 + 1

end

end A333516.P12185363643662243798

namespace A333516

/-- `val(eq[4, a(and(n, n-1))+1], 2)+1` -/
def P12185363643662243798.Spec : Prop :=
  ∀ n, (P12185363643662243798.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P16220423397891862775

`A056558(n)+1`
-/

namespace A333516.P16220423397891862775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n + 1

end

end A333516.P16220423397891862775

namespace A333516

/-- `A056558(n)+1` -/
def P16220423397891862775.Spec : Prop :=
  ∀ n, P16220423397891862775.a n = A333516 (n + 1)

end A333516

/-! ## A333516.P10082333389330161687

`Δ[A123575(n)]+1`
-/

namespace A333516.P10082333389330161687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A333516.P10082333389330161687

namespace A333516

/-- `Δ[A123575(n)]+1` -/
def P10082333389330161687.Spec : Prop :=
  ∀ n, P10082333389330161687.a n = A333516 (n + 1)

end A333516

/-! ## A333516.P16305166271902431770

`A175892(∑[n+3])`
-/

namespace A333516.P16305166271902431770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333516.P16305166271902431770

namespace A333516

/-- `A175892(∑[n+3])` -/
def P16305166271902431770.Spec : Prop :=
  ∀ n, P16305166271902431770.a n = A333516 (n + 1)

end A333516

/-! ## A333516.P16836958967477673346

`dr(lt[18, A007953(n)])`
-/

namespace A333516.P16836958967477673346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A333516.P16836958967477673346

namespace A333516

/-- `dr(lt[18, A007953(n)])` -/
def P16836958967477673346.Spec : Prop :=
  ∀ n, (P16836958967477673346.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P208877566714698971

`dr(lt[36, A169805(n)])`
-/

namespace A333516.P208877566714698971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A333516.P208877566714698971

namespace A333516

/-- `dr(lt[36, A169805(n)])` -/
def P208877566714698971.Spec : Prop :=
  ∀ n, (P208877566714698971.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P7399224898549113485

`A279777(n+1)%10`
-/

namespace A333516.P7399224898549113485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279777 (n + 1)) 10

end

end A333516.P7399224898549113485

namespace A333516

/-- `A279777(n+1)%10` -/
def P7399224898549113485.Spec : Prop :=
  ∀ n, P7399224898549113485.a n = A333516 (n + 1)

end A333516

/-! ## A333516.P11493395597713740730

`val(A014311(n+1), 2)+1`
-/

namespace A333516.P11493395597713740730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014311 (n + 1)).toNat 2 + 1

end

end A333516.P11493395597713740730

namespace A333516

/-- `val(A014311(n+1), 2)+1` -/
def P11493395597713740730.Spec : Prop :=
  ∀ n, (P11493395597713740730.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P438060471224277223

`val(A038445(n+1), 2)+1`
-/

namespace A333516.P438060471224277223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038445 (n + 1)).toNat 2 + 1

end

end A333516.P438060471224277223

namespace A333516

/-- `val(A038445(n+1), 2)+1` -/
def P438060471224277223.Spec : Prop :=
  ∀ n, (P438060471224277223.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P2950326123680469875

`val(A038479(n+1), 2)+1`
-/

namespace A333516.P2950326123680469875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038479 (n + 1)).toNat 2 + 1

end

end A333516.P2950326123680469875

namespace A333516

/-- `val(A038479(n+1), 2)+1` -/
def P2950326123680469875.Spec : Prop :=
  ∀ n, (P2950326123680469875.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P10346455286184437401

`val(A173589(n+1), 2)+1`
-/

namespace A333516.P10346455286184437401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173589 (n + 1)).toNat 2 + 1

end

end A333516.P10346455286184437401

namespace A333516

/-- `val(A173589(n+1), 2)+1` -/
def P10346455286184437401.Spec : Prop :=
  ∀ n, (P10346455286184437401.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P12311272072444483602

`val(A052217(n+1), 5)+1`
-/

namespace A333516.P12311272072444483602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052217 (n + 1)).toNat 5 + 1

end

end A333516.P12311272072444483602

namespace A333516

/-- `val(A052217(n+1), 5)+1` -/
def P12311272072444483602.Spec : Prop :=
  ∀ n, (P12311272072444483602.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P1010498754299516937

`val(eq[3, A000120(n)], 2)+1`
-/

namespace A333516.P1010498754299516937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A333516.P1010498754299516937

namespace A333516

/-- `val(eq[3, A000120(n)], 2)+1` -/
def P1010498754299516937.Spec : Prop :=
  ∀ n, (P1010498754299516937.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P14514091663193232221

`val(eq[7, A038573(n)], 2)+1`
-/

namespace A333516.P14514091663193232221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A333516.P14514091663193232221

namespace A333516

/-- `val(eq[7, A038573(n)], 2)+1` -/
def P14514091663193232221.Spec : Prop :=
  ∀ n, (P14514091663193232221.a n : ℤ) = A333516 (n + 1)

end A333516

/-! ## A333516.P14651073743149110769

`A005496(A056558(n))`
-/

namespace A333516.P14651073743149110769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A056558 n).toNat

end

end A333516.P14651073743149110769

namespace A333516

/-- `A005496(A056558(n))` -/
def P14651073743149110769.Spec : Prop :=
  ∀ n, P14651073743149110769.a n = A333516 (n + 1)

end A333516

/-! ## A333516.P4467105100921011394

`A001511(A014311(n+1))`
-/

namespace A333516.P4467105100921011394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A014311 (n + 1)).toNat

end

end A333516.P4467105100921011394

namespace A333516

/-- `A001511(A014311(n+1))` -/
def P4467105100921011394.Spec : Prop :=
  ∀ n, P4467105100921011394.a n = A333516 (n + 1)

end A333516

/-! ## A333516.P14693861794319762152

`A115362(A023746(n+1))`
-/

namespace A333516.P14693861794319762152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A023746 (n + 1)).toNat

end

end A333516.P14693861794319762152

namespace A333516

/-- `A115362(A023746(n+1))` -/
def P14693861794319762152.Spec : Prop :=
  ∀ n, P14693861794319762152.a n = A333516 (n + 1)

end A333516

/-! ## A333516.P10589165256359214018

`A001511(A173589(n+1))`
-/

namespace A333516.P10589165256359214018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A173589 (n + 1)).toNat

end

end A333516.P10589165256359214018

namespace A333516

/-- `A001511(A173589(n+1))` -/
def P10589165256359214018.Spec : Prop :=
  ∀ n, P10589165256359214018.a n = A333516 (n + 1)

end A333516

/-! ## A333516.P389619208034898456

`A035612(A179243(n+1))`
-/

namespace A333516.P389619208034898456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A179243 (n + 1)).toNat

end

end A333516.P389619208034898456

namespace A333516

/-- `A035612(A179243(n+1))` -/
def P389619208034898456.Spec : Prop :=
  ∀ n, P389619208034898456.a n = A333516 (n + 1)

end A333516

/-!
# A333517: Number of set partitions of {1, 2, ..., n} such that, for any two numbers in the same part, one divides the other.

The programs for A333517, there is no canonical definition to state claims against.
-/

/-! ## A333517.P17712209729678730137

`A205488(n)-A110657(A124482(n+1))`
-/

namespace A333517.P17712209729678730137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205488 n - A110657 (A124482 (n + 1)).toNat

end

end A333517.P17712209729678730137

/-!
# A333518: a(n) = A000720(A006530(A334468(n))).

The programs for A333518, there is no canonical definition to state claims against.
-/

/-! ## A333518.P605590050581796184

`A000720(A006530(A334468(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333518.P605590050581796184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (A334468 (n + 1)).toNat).toNat

end

end A333518.P605590050581796184

/-! ## A333518.P11308914829712300346

`A061395(A334468(n+1))`
-/

namespace A333518.P11308914829712300346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A334468 (n + 1)).toNat

end

end A333518.P11308914829712300346

/-! ## A333518.P9405456329385891552

`A055396(A006530(A334468(n+1))²)`
-/

namespace A333518.P9405456329385891552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A006530 (A334468 (n + 1)).toNat ^ 2).toNat

end

end A333518.P9405456329385891552

/-! ## A333518.P17316040303305817207

`A064839(A006530(A334468(n+1))²)`
-/

namespace A333518.P17316040303305817207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A006530 (A334468 (n + 1)).toNat ^ 2).toNat

end

end A333518.P17316040303305817207

/-! ## A333518.P2155513991730054568

`A297167(A006530(A334468(n+1))²)`
-/

namespace A333518.P2155513991730054568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (A006530 (A334468 (n + 1)).toNat ^ 2).toNat

end

end A333518.P2155513991730054568

/-! ## A333518.P1959090612255276459

`∏{p}[A006530(A334468(n+1)), A000006(#)]`
-/

namespace A333518.P1959090612255276459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A334468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000006 p

end

end A333518.P1959090612255276459

/-!
# A333519: Number of regions in a polygon whose boundary consists of n+2 equally spaced points around a semicircle and n+2 equally spaced points along the diameter (a total of 2n+2 points). See Comments for precise definition.

The programs for A333519, there is no canonical definition to state claims against.
-/

/-! ## A333519.P13484109686417639766

`A334459(n)+1-A334458(n)`
-/

namespace A333519.P13484109686417639766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334459 n + (1 - A334458 n)

end

end A333519.P13484109686417639766

/-! ## A333519.P7566577497524345099

`A334459(n)+A024000(A334458(n))`
-/

namespace A333519.P7566577497524345099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334459 n + A024000 (A334458 n).toNat

end

end A333519.P7566577497524345099

/-!
# A333522: Lexicographically earliest sequence of distinct positive integers such that for any nonempty set of k positive integers, say {m_1, ..., m_k}, a(m_1) XOR ... XOR a(m_k) is neither null nor prime (where XOR denotes the bitwise XOR operator).

The programs for A333522, there is no canonical definition to state claims against.
-/

/-! ## A333522.P7589685266497505647

`A333403(2^n)`
-/

namespace A333522.P7589685266497505647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333403 (2 ^ n)

end

end A333522.P7589685266497505647

/-! ## A333522.P3516151904759271611

`record[A333403(n+1)]`
-/

namespace A333522.P3516151904759271611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333522.P3516151904759271611

/-! ## A333522.P4350752383024567442

`A333403(A000079(n))+char[19]`
-/

namespace A333522.P4350752383024567442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333403 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A333522.P4350752383024567442

/-! ## A333522.P3204202229078188952

`A333403(A086066(n))+A102683(n)`
-/

namespace A333522.P3204202229078188952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333403 (A086066 n).toNat + A102683 n

end

end A333522.P3204202229078188952

/-! ## A333522.P13501405051502975182

`A067032(n)*A333403(A054842(n))`
-/

namespace A333522.P13501405051502975182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n * A333403 (A054842 n).toNat

end

end A333522.P13501405051502975182

/-!
# A333524: Normalized volume of polytope representing the number n.

The programs for A333524, there is no canonical definition to state claims against.
-/

/-! ## A333524.P2513772035130066760

`ceil(A065033(n)*A262438(A022348(n))/2)`
-/

namespace A333524.P2513772035130066760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065033 n * A262438 (A022348 n).toNat : ℚ) / 2⌉

end

end A333524.P2513772035130066760

/-! ## A333524.P8463015271859222473

`A065033(A065033(n)*A262438(A022348(n)))`
-/

namespace A333524.P8463015271859222473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 n * A262438 (A022348 n).toNat).toNat

end

end A333524.P8463015271859222473

/-!
# A333525: Degree of polytope representing the number n.

The programs for A333525, there is no canonical definition to state claims against.
-/

/-! ## A333525.P17332616137330221301

`ceil(log2(floor(sqrt(n+1))))`
-/

namespace A333525.P17332616137330221301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.sqrt (n + 1) : ℝ)⌉

end

end A333525.P17332616137330221301

/-! ## A333525.P3946311161811872422

`floor(log(∑[gcd(3, n)/2]))`
-/

namespace A333525.P3946311161811872422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌋

end

end A333525.P3946311161811872422

/-! ## A333525.P12376086022072789524

`round(log(record[or(4, n)]/4))`
-/

namespace A333525.P12376086022072789524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4 : ℝ))

end

end A333525.P12376086022072789524

/-! ## A333525.P13286526252067561442

`floor(log(record[or(5, n)]/5))`
-/

namespace A333525.P13286526252067561442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 5 : ℝ)⌋

end

end A333525.P13286526252067561442

/-! ## A333525.P5663343267511869782

`floor(root(log2(cosh(n-1)), π))`
-/

namespace A333525.P5663343267511869782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.cosh ((n : ℤ) - 1 : ℝ)) ^ (1 / Real.pi)⌋

end

end A333525.P5663343267511869782

/-! ## A333525.P13828028585926494936

`floor(4/(8*acot(n)+1))`
-/

namespace A333525.P13828028585926494936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / (8 * SequenceMachineLib.acot (n : ℝ) + 1)⌋

end

end A333525.P13828028585926494936

/-! ## A333525.P6513801587110404224

`floor(log(acot(log2(2*n+1)))²)`
-/

namespace A333525.P6513801587110404224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (SequenceMachineLib.acot (Real.logb 2 (2 * n + 1 : ℝ))) ^ 2⌋

end

end A333525.P6513801587110404224

/-! ## A333525.P291989534164767909

`round(log(∑[sin(2*n+1)²]))`
-/

namespace A333525.P291989534164767909
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n + 1 : ℝ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A333525.P291989534164767909

/-!
# A333527: Number of facets of the polytope representing the number n.

The programs for A333527, there is no canonical definition to state claims against.
-/

/-! ## A333527.P9016823173661560129

`∑[A240067(A141654(A065259(n+1)))]`
-/

namespace A333527.P9016823173661560129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240067 (A141654 (A065259 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333527.P9016823173661560129

/-!
# A333529: Number of triples [n,k,m] with n <= k <= m satisfying T_n + T_k = T_m, where T_i = i*(i+1)/2 are the triangular numbers.

The programs for A333529, there is no canonical definition to state claims against.
-/

/-! ## A333529.P2171034361996212881

`A087436(A054353(n+1)*A124550(3*n+1))`
-/

namespace A333529.P2171034361996212881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A054353 (n + 1) * A124550 (3 * n + 1)).toNat

end

end A333529.P2171034361996212881

/-! ## A333529.P916587838965063897

`A139352((n+1)*A261962(n))`
-/

namespace A333529.P916587838965063897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 ((n + 1 : ℤ) * A261962 n).toNat

end

end A333529.P916587838965063897

/-! ## A333529.P13946752556222943552

`A139352(lcm(n+1, A261962(n)))`
-/

namespace A333529.P13946752556222943552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Int.lcm (n + 1 : ℤ) (A261962 n))

end

end A333529.P13946752556222943552

/-! ## A333529.P17788101330397991953

`A001221(A064568(n+1)-A303767(n))`
-/

namespace A333529.P17788101330397991953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A064568 (n + 1) - A303767 n).toNat

end

end A333529.P17788101330397991953

/-! ## A333529.P4047787115053907956

`A072047(lcm(A045975(n+1), A332745(n)))`
-/

namespace A333529.P4047787115053907956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072047 (Int.lcm (A045975 (n + 1)) (A332745 n))

end

end A333529.P4047787115053907956

/-!
# A333532: Record high values in A061836.

The programs for A333532, there is no canonical definition to state claims against.
-/

/-! ## A333532.P16450276554603428487

`record[A061836(n)]`
-/

namespace A333532.P16450276554603428487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333532.P16450276554603428487

/-! ## A333532.P10798504279615870456

`A061836(A333533(n+1))`
-/

namespace A333532.P10798504279615870456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 (A333533 (n + 1)).toNat

end

end A333532.P10798504279615870456

/-! ## A333532.P11226838426257112011

`record[and(A123578(2*n+1), A302728(n+2))]`
-/

namespace A333532.P11226838426257112011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123578 (2 * n + 1)) (A302728 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333532.P11226838426257112011

/-! ## A333532.P12533916813043684573

`lt[A020639(A048626(n)), A048648(n+2)]`
-/

namespace A333532.P12533916813043684573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048626 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048648 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333532.P12533916813043684573

/-! ## A333532.P12980269570450535317

`lt[A259761(3*n+4), A002233(A078408(n+2))]`
-/

namespace A333532.P12980269570450535317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259761 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A078408 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333532.P12980269570450535317

/-!
# A333534: a(n) is the number of log(n)-smooth numbers <= n.

The programs for A333534, there is no canonical definition to state claims against.
-/

/-! ## A333534.P13554438716114612775

`A096300(n+2)%(n+1)`
-/

namespace A333534.P13554438716114612775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096300 (n + 2)) (n + 1 : ℤ)

end

end A333534.P13554438716114612775

/-! ## A333534.P2839939872519907613

`A096300(n+2)-A000007(n)`
-/

namespace A333534.P2839939872519907613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096300 (n + 2) - A000007 n

end

end A333534.P2839939872519907613

/-! ## A333534.P15178933807594209179

`A096300(n+2)-A151933(n)`
-/

namespace A333534.P15178933807594209179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096300 (n + 2) - A151933 n

end

end A333534.P15178933807594209179

/-! ## A333534.P8249205049333298934

`A057427(n)*A096300(n+2)`
-/

namespace A333534.P8249205049333298934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A096300 (n + 2)

end

end A333534.P8249205049333298934

/-! ## A333534.P2692369705865462759

`A096300(n+2)*A178334(n)`
-/

namespace A333534.P2692369705865462759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096300 (n + 2) * A178334 n

end

end A333534.P2692369705865462759

/-! ## A333534.P16718211324896593542

`A096300(n+2)-A008683((n+1)²)`
-/

namespace A333534.P16718211324896593542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096300 (n + 2) - A008683 ((n + 1) ^ 2)

end

end A333534.P16718211324896593542

/-! ## A333534.P17778747466731683068

`char[A054269(n+1)]*A096300(n+2)`
-/

namespace A333534.P17778747466731683068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054269 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A096300 (n + 2)

end

end A333534.P17778747466731683068

/-! ## A333534.P157351128801613200

`A096300(n+2)-C(2, comp[A000108(n)])`
-/

namespace A333534.P157351128801613200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096300 (n + 2) - (Nat.choose 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ)

end

end A333534.P157351128801613200

/-! ## A333534.P488437569448889200

`and(1, A000040(n+1))*A096300(n+2)`
-/

namespace A333534.P488437569448889200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A096300 (n + 2)

end

end A333534.P488437569448889200

/-! ## A333534.P12088508198635495103

`A096300(n+2)-A000045(C(2, n+2))`
-/

namespace A333534.P12088508198635495103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096300 (n + 2) - A000045 (Nat.choose 2 (n + 2))

end

end A333534.P12088508198635495103

/-!
# A333535: Card{ k<=n, k such that all prime divisors of k are < sqrt(k) }.

The programs for A333535, the canonical program `A333535.P11527301897847731392` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333535 has offset 1).

The definition of A333535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333535.P11527301897847731392

`n-∑[A341591(n+1)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A333535

/-- `n-∑[A341591(n+1)]` -/
def P11527301897847731392.Spec : Prop :=
  ∀ n, P11527301897847731392.a n = A333535 (n + 1)

theorem P11527301897847731392.correct : P11527301897847731392.Spec := by
  intro n
  simp only [A333535, Nat.add_sub_cancel]

end A333535

/-! ## A333535.P11248723707042991798

`∑[char[lt[A006530(n+1)², n]]]`
-/

namespace A333535.P11248723707042991798
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333535.P11248723707042991798

namespace A333535

/-- `∑[char[lt[A006530(n+1)², n]]]` -/
def P11248723707042991798.Spec : Prop :=
  ∀ n, (P11248723707042991798.a n : ℤ) = A333535 (n + 1)

end A333535

/-! ## A333535.P2302205901451135081

`comp[A063539(n+1)+n-2]-n`
-/

namespace A333535.P2302205901451135081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1) + ((n : ℤ) - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A333535.P2302205901451135081

namespace A333535

/-- `comp[A063539(n+1)+n-2]-n` -/
def P2302205901451135081.Spec : Prop :=
  ∀ n, P2302205901451135081.a n = A333535 (n + 1)

end A333535

/-! ## A333535.P9859291323207095961

`∑[char[lt[n+1, A052126(n+1)²]]]`
-/

namespace A333535.P9859291323207095961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333535.P9859291323207095961

namespace A333535

/-- `∑[char[lt[n+1, A052126(n+1)²]]]` -/
def P9859291323207095961.Spec : Prop :=
  ∀ n, (P9859291323207095961.a n : ℤ) = A333535 (n + 1)

end A333535

/-! ## A333535.P17933117412700738213

`n-∑[A010051(A033677(n+1))]`
-/

namespace A333535.P17933117412700738213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333535.P17933117412700738213

namespace A333535

/-- `n-∑[A010051(A033677(n+1))]` -/
def P17933117412700738213.Spec : Prop :=
  ∀ n, P17933117412700738213.a n = A333535 (n + 1)

end A333535

/-! ## A333535.P15272004009799471860

`∑[A145649(A097975(n+1)+3)]-1`
-/

namespace A333535.P15272004009799471860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A097975 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A333535.P15272004009799471860

namespace A333535

/-- `∑[A145649(A097975(n+1)+3)]-1` -/
def P15272004009799471860.Spec : Prop :=
  ∀ n, P15272004009799471860.a n = A333535 (n + 1)

end A333535

/-! ## A333535.P9476075489740938457

`n-∑[A097975(n+1)/A006530(n+1)]`
-/

namespace A333535.P9476075489740938457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333535.P9476075489740938457

namespace A333535

/-- `n-∑[A097975(n+1)/A006530(n+1)]` -/
def P9476075489740938457.Spec : Prop :=
  ∀ n, P9476075489740938457.a n = (A333535 (n + 1) : ℚ)

end A333535

/-! ## A333535.P7457174084366567256

`n-∑[A000001(A097975(n+1))]`
-/

namespace A333535.P7457174084366567256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A097975 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333535.P7457174084366567256

namespace A333535

/-- `n-∑[A000001(A097975(n+1))]` -/
def P7457174084366567256.Spec : Prop :=
  ∀ n, P7457174084366567256.a n = A333535 (n + 1)

end A333535

/-! ## A333535.P16267745107826193041

`n-∑[∑{p}[n+1, C(2, C(n, #²))]]`
-/

namespace A333535.P16267745107826193041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 (Nat.choose n (p ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333535.P16267745107826193041

namespace A333535

/-- `n-∑[∑{p}[n+1, C(2, C(n, #²))]]` -/
def P16267745107826193041.Spec : Prop :=
  ∀ n, P16267745107826193041.a n = A333535 (n + 1)

end A333535

/-!
# A333537: Greatest prime factor of A332559.

The programs for A333537, there is no canonical definition to state claims against.
-/

/-! ## A333537.P4768766981191831585

`A006530(A332559(1+n))`
-/

namespace A333537.P4768766981191831585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A332559 (1 + n)).toNat

end

end A333537.P4768766981191831585

/-! ## A333537.P7187449092725317936

`A006530(Δ[∑[n]+∑[A061836(n)]])`
-/

namespace A333537.P7187449092725317936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A333537.P7187449092725317936

/-! ## A333537.P14971813610335785227

`A006530(A061836(n+1)+1+n)`
-/

namespace A333537.P14971813610335785227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061836 (n + 1) + 1 + (n : ℤ)).toNat

end

end A333537.P14971813610335785227

/-! ## A333537.P17981013035821828290

`A006530(A332558(n+1)+2+n)`
-/

namespace A333537.P17981013035821828290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A332558 (n + 1) + 2 + (n : ℤ)).toNat

end

end A333537.P17981013035821828290

/-! ## A333537.P8997437638697861689

`A085392(A061836(n+1)+1+n)`
-/

namespace A333537.P8997437638697861689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A061836 (n + 1) + 1 + (n : ℤ)).toNat

end

end A333537.P8997437638697861689

/-! ## A333537.P2025702616571280209

`A006530(A332560(n+1)/A332561(n+1))`
-/

namespace A333537.P2025702616571280209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A332560 (n + 1) : ℚ) / (A332561 (n + 1) : ℚ))).toNat

end

end A333537.P2025702616571280209

/-!
# A333538: Indices of records in A333537.

The programs for A333538, there is no canonical definition to state claims against.
-/

/-! ## A333538.P2404748985441419380

`∑[A339658(∑[A090031(n)])]`
-/

namespace A333538.P2404748985441419380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333538.P2404748985441419380

/-!
# A333541: Records in A333537.

The programs for A333541, there is no canonical definition to state claims against.
-/

/-! ## A333541.P15211092676756586281

`A000040(lt[A089801(n), A195839(3*n+1)])`
-/

namespace A333541.P15211092676756586281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195839 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333541.P15211092676756586281

/-! ## A333541.P13251622128334570363

`p?[eq[A164349(3*n+4), A215581(n+4)]]`
-/

namespace A333541.P13251622128334570363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215581 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A333541.P13251622128334570363

/-! ## A333541.P2920402913706594823

`p?[A065033(A276797(A231963(n+1)))]`
-/

namespace A333541.P2920402913706594823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A276797 (A231963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333541.P2920402913706594823

/-! ## A333541.P7813465098893028464

`eq[A018783(n), A347463(A018783(n+4))]`
-/

namespace A333541.P7813465098893028464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347463 (A018783 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333541.P7813465098893028464

/-!
# A333544: Irregular triangle read by rows, formed from the triangle A333543 by dividing the terms in row n by n!.

The programs for A333544, there is no canonical definition to state claims against.
-/

/-! ## A333544.P17705471053303471075

`A003958(xor(A215039(n), A331397(n)))`
-/

namespace A333544.P17705471053303471075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (Int.xor (A215039 n) (A331397 n)).toNat

end

end A333544.P17705471053303471075

/-!
# A333546: Records in A332580.

The programs for A333546, there is no canonical definition to state claims against.
-/

/-! ## A333546.P628591147478547212

`record[A332580(n+1)]`
-/

namespace A333546.P628591147478547212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333546.P628591147478547212

/-!
# A333548: Numbers k such that A005132(k-1) = k.

The programs for A333548, there is no canonical definition to state claims against.
-/

/-! ## A333548.P9803051453624867444

`record[or(-A333549(n+1), A333552(n+1))]`
-/

namespace A333548.P9803051453624867444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A333549 (n + 1)) (A333552 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333548.P9803051453624867444

/-! ## A333548.P8131483974704766416

`eq[floor(acot(n)²), A334951(n)]`
-/

namespace A333548.P8131483974704766416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333548.P8131483974704766416

/-!
# A333549: Consider the list (A333552) of numbers m defined by property that when the Recamán term A005132(m) is being computed, we are unable to subtract m from A005132(m-1) because, although A003132(m-1) >= m, the result of the subtraction, A005132(m-1)-m, is already in A005132; sequence gives the successive values of A005132(m-1)-m.

The programs for A333549, there is no canonical definition to state claims against.
-/

/-! ## A333549.P10146475625550171301

`A005132(A333552(n+1)-1)-A333552(n+1)`
-/

namespace A333549.P10146475625550171301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A333552 (n + 1) - 1).toNat - A333552 (n + 1)

end

end A333549.P10146475625550171301

/-! ## A333549.P13860960727905057619

`A334951(A333552(1+n))`
-/

namespace A333549.P13860960727905057619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (A333552 (1 + n)).toNat

end

end A333549.P13860960727905057619

/-! ## A333549.P14011701303654640134

`A334950(2*A333552(n+1))`
-/

namespace A333549.P14011701303654640134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334950 (2 * A333552 (n + 1)).toNat

end

end A333549.P14011701303654640134

/-! ## A333549.P1464639618280629215

`A334951(lt[A092213(n), A005132(n)])`
-/

namespace A333549.P1464639618280629215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333549.P1464639618280629215

/-! ## A333549.P31970961735922897

`A334950(2*lt[A092213(n), A005132(n)])`
-/

namespace A333549.P31970961735922897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334950 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333549.P31970961735922897

/-!
# A333550: Records in A333549.

The programs for A333550, there is no canonical definition to state claims against.
-/

/-! ## A333550.P13990338232385281039

`record[A333549(n+1)]`
-/

namespace A333550.P13990338232385281039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333550.P13990338232385281039

/-! ## A333550.P8249832382944579073

`record[A005132(n)-2*n]`
-/

namespace A333550.P8249832382944579073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333550.P8249832382944579073

/-! ## A333550.P1541760631018656359

`A333549(A333551(n+1))`
-/

namespace A333550.P1541760631018656359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333549 (A333551 (n + 1)).toNat

end

end A333550.P1541760631018656359

/-! ## A333550.P10137709909691514635

`A334951(A333553(n+1))`
-/

namespace A333550.P10137709909691514635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (A333553 (n + 1)).toNat

end

end A333550.P10137709909691514635

/-! ## A333550.P142768253110311467

`record[A334951(A057165(n+1))]`
-/

namespace A333550.P142768253110311467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (A057165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333550.P142768253110311467

/-!
# A333551: Indices of records in A333549.

The programs for A333551, there is no canonical definition to state claims against.
-/

/-! ## A333551.P16924495510057339977

`A318995(A339894(n+2))+A045778(A020714(n))`
-/

namespace A333551.P16924495510057339977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A339894 (n + 2)).toNat + A045778 (A020714 n).toNat

end

end A333551.P16924495510057339977

/-! ## A333551.P15974945808664004005

`∑[dr(A061020(A154603(n)))]`
-/

namespace A333551.P15974945808664004005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A061020 (A154603 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333551.P15974945808664004005

/-! ## A333551.P7899048484196689019

`∑[A371572(∑[A006999(2*n+1)])]`
-/

namespace A333551.P7899048484196689019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371572 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333551.P7899048484196689019

/-! ## A333551.P10593474291921063034

`A059841(A041105(n))+A054405(n)`
-/

namespace A333551.P10593474291921063034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A041105 n).toNat + A054405 n

end

end A333551.P10593474291921063034

/-! ## A333551.P15044659191932947473

`A391769(n+3)+A121373(A079007(n))`
-/

namespace A333551.P15044659191932947473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391769 (n + 3) + A121373 (A079007 n).toNat

end

end A333551.P15044659191932947473

/-!
# A333552: List of numbers k defined by property that when the Recamán term A005132(k) is being computed, we are unable to subtract k from A005132(k-1) because, although A003132(k-1) >= k, the result of the subtraction, A005132(k-1)-k, is already in A005132.

The programs for A333552, there is no canonical definition to state claims against.
-/

/-! ## A333552.P14129630049394280995

`eq[2, ceil(ratio[A209387(n)])]+1`
-/

namespace A333552.P14129630049394280995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f3 (n + 1) : ℚ) / (f3 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333552.P14129630049394280995

/-! ## A333552.P13163761462995503206

`lt[0, xor(A005132(n), A334951(n))]`
-/

namespace A333552.P13163761462995503206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005132 n) (A334951 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333552.P13163761462995503206

/-! ## A333552.P585437715680187509

`lt[A092213(n), A005132(n)]`
-/

namespace A333552.P585437715680187509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333552.P585437715680187509

/-! ## A333552.P17996611696023753966

`lt[A326774(n+1), A005132(n)]`
-/

namespace A333552.P17996611696023753966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333552.P17996611696023753966

/-! ## A333552.P15002731929763025186

`lt[A092213(n), A334950(2*n+1)]`
-/

namespace A333552.P15002731929763025186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334950 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333552.P15002731929763025186

/-!
# A333553: a(n) = A333552(A333551(n)): indices of terms in Recamán's sequence A005132 where the construction avoided a record-sized collision.

The programs for A333553, there is no canonical definition to state claims against.
-/

/-! ## A333553.P9279881707400676374

`A333552(A333551(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333553.P9279881707400676374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333552 (A333551 (n + 1)).toNat

end

end A333553.P9279881707400676374

/-! ## A333553.P11083180552244772687

`∩[A277851(n+1), A064292(n)]`
-/

namespace A333553.P11083180552244772687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333553.P11083180552244772687

/-! ## A333553.P2777560470809965011

`A064292(n+3)+A000007(A000139(n))`
-/

namespace A333553.P2777560470809965011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 (n + 3) + A000007 (A000139 n).toNat

end

end A333553.P2777560470809965011

/-! ## A333553.P7348607109873016252

`A064292(n+3)+A000007(A000244(n))`
-/

namespace A333553.P7348607109873016252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 (n + 3) + A000007 (A000244 n).toNat

end

end A333553.P7348607109873016252

/-! ## A333553.P13946616419631259005

`A064292(n+3)+A000007(A143330(n))`
-/

namespace A333553.P13946616419631259005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 (n + 3) + A000007 (A143330 n).toNat

end

end A333553.P13946616419631259005

/-!
# A333555: Lexicographically earliest infinite sequence of positive terms such that for any two distinct nonempty intervals, say [t, u] and [v, w], a(t) XOR ... XOR a(u) <> a(v) XOR ... XOR a(w) (where XOR denotes the bitwise XOR operator).

The programs for A333555, there is no canonical definition to state claims against.
-/

/-! ## A333555.P17399849488050671931

`A343252(A033623(n+1))`
-/

namespace A333555.P17399849488050671931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343252 (A033623 (n + 1)).toNat

end

end A333555.P17399849488050671931

/-! ## A333555.P10867301226431718854

`gcd(A033623(n+1), A033635(n))`
-/

namespace A333555.P10867301226431718854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033623 (n + 1)) (A033635 n)

end

end A333555.P10867301226431718854

/-!
# A333556: a(n) = A333555(1) XOR ... XOR A333555(n) (where XOR denotes the bitwise XOR operator).

The programs for A333556, there is no canonical definition to state claims against.
-/

/-! ## A333556.P10350743797468840676

`xor(a(n-1), A333555(n+1))` with `a(0)=1`
-/

namespace A333556.P10350743797468840676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A333555 (n + 1))

end

end A333556.P10350743797468840676

/-!
# A333557: a(n) = Sum_{d|n, gcd(d, n/d) = 1} uphi(d) * uphi(n/d), where uphi = unitary totient function (A047994).

The programs for A333557, the canonical program `A333557.P6945421188897279653` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333557 has offset 1).

The definition of A333557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333557.P6945421188897279653

`∑{d}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #-1]*∏{p}[n+1, ceil(atan(#))]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333557

/-- `∑{d}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #-1]*∏{p}[n+1, ceil(atan(#))]` -/
def P6945421188897279653.Spec : Prop :=
  ∀ n, P6945421188897279653.a n = A333557 (n + 1)

theorem P6945421188897279653.correct : P6945421188897279653.Spec := by
  intro n
  simp only [A333557, Nat.add_sub_cancel]

end A333557

/-! ## A333557.P5373848073503155378

`abs(∏{e}[n+1, 2*(-1)^#])*A047994(n+1)`
-/

namespace A333557.P5373848073503155378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p| * A047994 (n + 1)

end

end A333557.P5373848073503155378

namespace A333557

/-- `abs(∏{e}[n+1, 2*(-1)^#])*A047994(n+1)` -/
def P5373848073503155378.Spec : Prop :=
  ∀ n, P5373848073503155378.a n = A333557 (n + 1)

end A333557

/-! ## A333557.P13658123082817760317

`∑{d}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #-1]*A000005(∏{p}[n+1, #])`
-/

namespace A333557.P13658123082817760317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)) * A000005 (∏ p ∈ Nat.primeFactors (f4 n), p)

end

end A333557.P13658123082817760317

namespace A333557

/-- `∑{d}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #-1]*A000005(∏{p}[n+1, #])` -/
def P13658123082817760317.Spec : Prop :=
  ∀ n, P13658123082817760317.a n = A333557 (n + 1)

end A333557

/-! ## A333557.P17766832303996351385

`A034444(n+1)*A047994(n+1)`
-/

namespace A333557.P17766832303996351385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A047994 (n + 1)

end

end A333557.P17766832303996351385

namespace A333557

/-- `A034444(n+1)*A047994(n+1)` -/
def P17766832303996351385.Spec : Prop :=
  ∀ n, P17766832303996351385.a n = A333557 (n + 1)

end A333557

/-! ## A333557.P16030434759720133269

`abs(A047994(n+1)*A158522(n+1))`
-/

namespace A333557.P16030434759720133269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047994 (n + 1) * A158522 (n + 1)|

end

end A333557.P16030434759720133269

namespace A333557

/-- `abs(A047994(n+1)*A158522(n+1))` -/
def P16030434759720133269.Spec : Prop :=
  ∀ n, P16030434759720133269.a n = A333557 (n + 1)

end A333557

/-! ## A333557.P13458521637380477782

`2^A001221(n+1)*A047994(n+1)`
-/

namespace A333557.P13458521637380477782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A047994 (n + 1) : ℚ)

end

end A333557.P13458521637380477782

namespace A333557

/-- `2^A001221(n+1)*A047994(n+1)` -/
def P13458521637380477782.Spec : Prop :=
  ∀ n, P13458521637380477782.a n = (A333557 (n + 1) : ℚ)

end A333557

/-! ## A333557.P9581193537958390706

`A000005(∏{p}[n+1, #])*A047994(n+1)`
-/

namespace A333557.P9581193537958390706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) * A047994 (n + 1)

end

end A333557.P9581193537958390706

namespace A333557

/-- `A000005(∏{p}[n+1, #])*A047994(n+1)` -/
def P9581193537958390706.Spec : Prop :=
  ∀ n, P9581193537958390706.a n = A333557 (n + 1)

end A333557

/-! ## A333557.P17505364964746562954

`∑{d}[n+1, abs(A008683(#))]*A047994(n+1)`
-/

namespace A333557.P17505364964746562954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), |A008683 d|) * A047994 (n + 1)

end

end A333557.P17505364964746562954

namespace A333557

/-- `∑{d}[n+1, abs(A008683(#))]*A047994(n+1)` -/
def P17505364964746562954.Spec : Prop :=
  ∀ n, P17505364964746562954.a n = A333557 (n + 1)

end A333557

/-! ## A333557.P18264929669140420349

`2^∑{p}[n+1, A001222(#)]*A047994(n+1)`
-/

namespace A333557.P18264929669140420349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A001222 p : ℤ) * (A047994 (n + 1) : ℚ)

end

end A333557.P18264929669140420349

namespace A333557

/-- `2^∑{p}[n+1, A001222(#)]*A047994(n+1)` -/
def P18264929669140420349.Spec : Prop :=
  ∀ n, P18264929669140420349.a n = (A333557 (n + 1) : ℚ)

end A333557

/-! ## A333557.P7621610384986020228

`2^A001222(∏{p}[n+1, #])*A047994(n+1)`
-/

namespace A333557.P7621610384986020228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * (A047994 (n + 1) : ℚ)

end

end A333557.P7621610384986020228

namespace A333557

/-- `2^A001222(∏{p}[n+1, #])*A047994(n+1)` -/
def P7621610384986020228.Spec : Prop :=
  ∀ n, P7621610384986020228.a n = (A333557 (n + 1) : ℚ)

end A333557

/-! ## A333557.P744619939575515336

`∑{d}[n+1, A055615(#)*A062380((n+1)/#)]`
-/

namespace A333557.P744619939575515336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A062380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333557.P744619939575515336

namespace A333557

/-- `∑{d}[n+1, A055615(#)*A062380((n+1)/#)]` -/
def P744619939575515336.Spec : Prop :=
  ∀ n, P744619939575515336.a n = A333557 (n + 1)

end A333557

/-! ## A333557.P1712185231896542689

`∑{d}[n+1, A023900(#)*A196524((n+1)/#)]`
-/

namespace A333557.P1712185231896542689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A196524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333557.P1712185231896542689

namespace A333557

/-- `∑{d}[n+1, A023900(#)*A196524((n+1)/#)]` -/
def P1712185231896542689.Spec : Prop :=
  ∀ n, P1712185231896542689.a n = A333557 (n + 1)

end A333557

/-! ## A333557.P14436290118287851039

`A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]*2^A001221(n+1)`
-/

namespace A333557.P14436290118287851039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) : ℤ) : ℚ) * (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A333557.P14436290118287851039

namespace A333557

/-- `A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]*2^A001221(n+1)` -/
def P14436290118287851039.Spec : Prop :=
  ∀ n, P14436290118287851039.a n = (A333557 (n + 1) : ℚ)

end A333557

/-! ## A333557.P15551709977542547848

`A000005(A007947(n+1))*A047994(n+1)`
-/

namespace A333557.P15551709977542547848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat * A047994 (n + 1)

end

end A333557.P15551709977542547848

namespace A333557

/-- `A000005(A007947(n+1))*A047994(n+1)` -/
def P15551709977542547848.Spec : Prop :=
  ∀ n, P15551709977542547848.a n = A333557 (n + 1)

end A333557

/-!
# A333558: a(n) = Sum_{d|n} phi(d) * prime(d).

The programs for A333558, the canonical program `A333558.P7569824163856616914` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333558 has offset 1).

The definition of A333558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010(#)*A000040(#)]` (program `A333558.P7569824163856616914`, by `A333558.P7569824163856616914.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333558.P7569824163856616914

`∑{d}[n+1, A000010(#)*A000040(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A333558

/-- `∑{d}[n+1, A000010(#)*A000040(#)]` -/
def P7569824163856616914.Spec : Prop :=
  ∀ n, P7569824163856616914.a n = A333558 (n + 1)

theorem P7569824163856616914.correct : P7569824163856616914.Spec := by
  intro n
  simp only [A333558, Nat.add_sub_cancel]

end A333558

/-! ## A333558.P1794420309619514459

`∑{#}[n, A000040((n+1)/gcd(n+1, #))]`
-/

namespace A333558.P1794420309619514459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) k : ℚ))).toNat

end

end A333558.P1794420309619514459

namespace A333558

/-- `∑{#}[n, A000040((n+1)/gcd(n+1, #))]` -/
def P1794420309619514459.Spec : Prop :=
  ∀ n, P1794420309619514459.a n = A333558 (n + 1)

end A333558

/-!
# A333559: Lexicographically earliest infinite sequence of positive terms such that for any two distinct nonempty intervals, say [t, u] and [v, w], a(t) * ... * a(u) <> a(v) * ... * a(w).

The programs for A333559, there is no canonical definition to state claims against.
-/

/-! ## A333559.P11776342230309410542

`ratio[A079854(n+2)]`
-/

namespace A333559.P11776342230309410542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079854 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A333559.P11776342230309410542

/-! ## A333559.P2395983642821316557

`A079854(n+3)/A079854(n+2)`
-/

namespace A333559.P2395983642821316557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079854 (n + 3) : ℚ) / (A079854 (n + 2) : ℚ)

end

end A333559.P2395983642821316557

/-!
# A333560: Square array read by antidiagonals: T(n,k) = Sum_{j = 0..n*k} binomial(n+j-1,j)*2^j; n,k >= 0.

The programs for A333560, there is no canonical definition to state claims against.
-/

/-! ## A333560.P12410969044658200331

`A066983(A113413(n)%A126691(n+1))`
-/

namespace A333560.P12410969044658200331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (Int.tmod (A113413 n) (A126691 (n + 1))).toNat

end

end A333560.P12410969044658200331

/-! ## A333560.P16321770229155851626

`A166284(A127981(3*n+4)%A132812(n+1))`
-/

namespace A333560.P16321770229155851626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166284 (Int.tmod (A127981 (3 * n + 4)) (A132812 (n + 1))).toNat

end

end A333560.P16321770229155851626

/-! ## A333560.P8459479054881924399

`A279220(C(A137752(2*n+1), A231347(n+1)))`
-/

namespace A333560.P8459479054881924399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279220 (Nat.choose (A137752 (2 * n + 1)).toNat (A231347 (n + 1)).toNat)

end

end A333560.P8459479054881924399

/-! ## A333560.P1870329969166271907

`A337059(A331572(n))+A287222(n)%A155826(n)`
-/

namespace A333560.P1870329969166271907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337059 (A331572 n).toNat + Int.tmod (A287222 n) (A155826 n)

end

end A333560.P1870329969166271907

/-!
# A333561: a(n) = Sum_{j = 0..2*n} binomial(n+j-1,j)*2^j.

The programs for A333561, the canonical program `A333561.P16587595131792702580` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333561 has offset 0).

The definition of A333561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333561.P16587595131792702580

`∑{#}[2*n, (-2)^#*C(3*n, #)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333561

/-- `∑{#}[2*n, (-2)^#*C(3*n, #)]` -/
def P16587595131792702580.Spec : Prop :=
  ∀ n, P16587595131792702580.a n = A333561 n

theorem P16587595131792702580.correct : P16587595131792702580.Spec := by
  intro n
  simp only [A333561]

end A333561

/-! ## A333561.P3065018463298955627

`A193844(A022267(n))`
-/

namespace A333561.P3065018463298955627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A022267 n).toNat

end

end A333561.P3065018463298955627

namespace A333561

/-- `A193844(A022267(n))` -/
def P3065018463298955627.Spec : Prop :=
  ∀ n, P3065018463298955627.a n = A333561 n

end A333561

/-! ## A333561.P5429540177808727206

`A112857(A062725(n))`
-/

namespace A333561.P5429540177808727206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A062725 n).toNat

end

end A333561.P5429540177808727206

namespace A333561

/-- `A112857(A062725(n))` -/
def P5429540177808727206.Spec : Prop :=
  ∀ n, P5429540177808727206.a n = A333561 n

end A333561

/-! ## A333561.P8409844446690509097

`A119258(A062728(n))`
-/

namespace A333561.P8409844446690509097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A062728 n).toNat

end

end A333561.P8409844446690509097

namespace A333561

/-- `A119258(A062728(n))` -/
def P8409844446690509097.Spec : Prop :=
  ∀ n, P8409844446690509097.a n = A333561 n

end A333561

/-! ## A333561.P14338348277718941803

`A119258(A062725(n)+n)`
-/

namespace A333561.P14338348277718941803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A062725 n + (n : ℤ)).toNat

end

end A333561.P14338348277718941803

namespace A333561

/-- `A119258(A062725(n)+n)` -/
def P14338348277718941803.Spec : Prop :=
  ∀ n, P14338348277718941803.a n = A333561 n

end A333561

/-!
# A333562: a(n) = Sum_{j = 0..3*n} binomial(n+j-1,j)*2^j.

The programs for A333562, there is no canonical definition to state claims against.
-/

/-! ## A333562.P9511174888222200224

`A193844(8*n²+n)`
-/

namespace A333562.P9511174888222200224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (8 * n ^ 2 + n)

end

end A333562.P9511174888222200224

/-! ## A333562.P5305792156440012207

`A112857(A139276(n))`
-/

namespace A333562.P5305792156440012207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A139276 n).toNat

end

end A333562.P5305792156440012207

/-! ## A333562.P16730020498786294232

`A119258(A139277(n))`
-/

namespace A333562.P16730020498786294232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A139277 n).toNat

end

end A333562.P16730020498786294232

/-! ## A333562.P18071718093372206285

`A112857(A033585(n)+n)`
-/

namespace A333562.P18071718093372206285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A033585 n + (n : ℤ)).toNat

end

end A333562.P18071718093372206285

/-! ## A333562.P1939581172132502574

`A119258(A033586(n)+n)`
-/

namespace A333562.P1939581172132502574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A033586 n + (n : ℤ)).toNat

end

end A333562.P1939581172132502574

/-!
# A333564: a(n) = [x^n] ( c(x)/c(-x) )^n, where c(x) = (1 - sqrt( 1 - 4*x))/(2*x) is the o.g.f. of the Catalan numbers A000108.

The programs for A333564, the canonical program `A333564.P18087434835058333693` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333564 has offset 1).

The definition of A333564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119259, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333564.P2341379729544102460

`2^(n+1)*∑{#}[n, (-1)^(n+#)*C(n+1+#, #)]`
-/

namespace A333564.P2341379729544102460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (∑ k ∈ Finset.range (f1 n + 1), (-1) ^ (n + k) * (Nat.choose (n + 1 + k) k : ℤ))

end

end A333564.P2341379729544102460

namespace A333564

/-- `2^(n+1)*∑{#}[n, (-1)^(n+#)*C(n+1+#, #)]` -/
def P2341379729544102460.Spec : Prop :=
  ∀ n, P2341379729544102460.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P8831954328895462833

`2^(n+1)*A014300(n+1)`
-/

namespace A333564.P8831954328895462833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A014300 (n + 1)

end

end A333564.P8831954328895462833

namespace A333564

/-- `2^(n+1)*A014300(n+1)` -/
def P8831954328895462833.Spec : Prop :=
  ∀ n, P8831954328895462833.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P18087434835058333693

`1/2*(A119259(n+1)-(-1)^(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333564

/-- `1/2*(A119259(n+1)-(-1)^(n+1))` -/
def P18087434835058333693.Spec : Prop :=
  ∀ n, P18087434835058333693.a n = (A333564 (n + 1) : ℚ)

end A333564

/-! ## A333564.P6821837270001028585

`A000079(n+1)*A124392(∑[n])`
-/

namespace A333564.P6821837270001028585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A124392 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333564.P6821837270001028585

namespace A333564

/-- `A000079(n+1)*A124392(∑[n])` -/
def P6821837270001028585.Spec : Prop :=
  ∀ n, P6821837270001028585.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P4888919331093515192

`A000079(n+1)*Δ[A306409(n)]`
-/

namespace A333564.P4888919331093515192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * (f1 (n + 1) - f1 n)

end

end A333564.P4888919331093515192

namespace A333564

/-- `A000079(n+1)*Δ[A306409(n)]` -/
def P4888919331093515192.Spec : Prop :=
  ∀ n, P4888919331093515192.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P8488555004347305810

`2*A000079(n)*Δ[A306409(n)]`
-/

namespace A333564.P8488555004347305810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n * (f1 (n + 1) - f1 n)

end

end A333564.P8488555004347305810

namespace A333564

/-- `2*A000079(n)*Δ[A306409(n)]` -/
def P8488555004347305810.Spec : Prop :=
  ∀ n, P8488555004347305810.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P13853829680893039959

`A000079(n+1)*record[A124392(n)]`
-/

namespace A333564.P13853829680893039959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333564.P13853829680893039959

namespace A333564

/-- `A000079(n+1)*record[A124392(n)]` -/
def P13853829680893039959.Spec : Prop :=
  ∀ n, P13853829680893039959.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P307794080216118454

`2*A000079(n)*record[A124392(n)]`
-/

namespace A333564.P307794080216118454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333564.P307794080216118454

namespace A333564

/-- `2*A000079(n)*record[A124392(n)]` -/
def P307794080216118454.Spec : Prop :=
  ∀ n, P307794080216118454.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P4917315390156818388

`(A119259(n+1)-A033999(n+1))/2`
-/

namespace A333564.P4917315390156818388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119259 (n + 1) - A033999 (n + 1) : ℚ) / 2

end

end A333564.P4917315390156818388

namespace A333564

/-- `(A119259(n+1)-A033999(n+1))/2` -/
def P4917315390156818388.Spec : Prop :=
  ∀ n, P4917315390156818388.a n = (A333564 (n + 1) : ℚ)

end A333564

/-! ## A333564.P10023664963369234008

`A000079(n+1)*A191526(2*n+1)`
-/

namespace A333564.P10023664963369234008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A191526 (2 * n + 1)

end

end A333564.P10023664963369234008

namespace A333564

/-- `A000079(n+1)*A191526(2*n+1)` -/
def P10023664963369234008.Spec : Prop :=
  ∀ n, P10023664963369234008.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P11425568210466059712

`A014300(n+1)+A000225(n+1)*A014300(n+1)`
-/

namespace A333564.P11425568210466059712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) + A000225 (n + 1) * A014300 (n + 1)

end

end A333564.P11425568210466059712

namespace A333564

/-- `A014300(n+1)+A000225(n+1)*A014300(n+1)` -/
def P11425568210466059712.Spec : Prop :=
  ∀ n, P11425568210466059712.a n = A333564 (n + 1)

end A333564

/-! ## A333564.P1871723781350363972

`(A000984(n+1)-A026641(n+1))*A000079(n+1)`
-/

namespace A333564.P1871723781350363972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) - A026641 (n + 1)) * A000079 (n + 1)

end

end A333564.P1871723781350363972

namespace A333564

/-- `(A000984(n+1)-A026641(n+1))*A000079(n+1)` -/
def P1871723781350363972.Spec : Prop :=
  ∀ n, P1871723781350363972.a n = A333564 (n + 1)

end A333564

/-!
# A333565: O.g.f.: (1 + 4*x)/((1 + x)*sqrt(1 - 8*x)).

The programs for A333565, the canonical program `A333565.P8813464375107094006` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333565 has offset 0).

The definition of A333565 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119259, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333565.P8813464375107094006

`2*A119259(n)-(-1)^n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333565

/-- `2*A119259(n)-(-1)^n` -/
def P8813464375107094006.Spec : Prop :=
  ∀ n, P8813464375107094006.a n = A333565 n

theorem P8813464375107094006.correct : P8813464375107094006.Spec := by
  intro n
  simp only [A333565]

end A333565

/-! ## A333565.P5518517587286285821

`abs(2*A119259(n)-A033999(n))`
-/

namespace A333565.P5518517587286285821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A119259 n - A033999 n|

end

end A333565.P5518517587286285821

namespace A333565

/-- `abs(2*A119259(n)-A033999(n))` -/
def P5518517587286285821.Spec : Prop :=
  ∀ n, P5518517587286285821.a n = A333565 n

end A333565

/-! ## A333565.P9943831430636245850

`A033999(n+1)+2*A119259(n)`
-/

namespace A333565.P9943831430636245850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + 2 * A119259 n

end

end A333565.P9943831430636245850

namespace A333565

/-- `A033999(n+1)+2*A119259(n)` -/
def P9943831430636245850.Spec : Prop :=
  ∀ n, P9943831430636245850.a n = A333565 n

theorem P9943831430636245850.correct : P9943831430636245850.Spec := by
  intro n
  simp only [A333565, Nat.add_sub_cancel, A333565.P9943831430636245850.a, A333565.P8813464375107094006.a, A033999, A033999.P17703899380244199787.a, A119259, A119259.P15056154096299746551.a, A178792, A178792.P3240755536533390895.a, A000984, A000984.P7946844122574426130.a, A064062, A064062.P2466146061458098928.a, A062992, A062992.P6101721318031816608.f1, A062992.P6101721318031816608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333565

/-! ## A333565.P14163349393346147762

`A064062(n)+A178792(n)-A033999(n)`
-/

namespace A333565.P14163349393346147762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n + (A178792 n - A033999 n)

end

end A333565.P14163349393346147762

namespace A333565

/-- `A064062(n)+A178792(n)-A033999(n)` -/
def P14163349393346147762.Spec : Prop :=
  ∀ n, P14163349393346147762.a n = A333565 n

end A333565

/-! ## A333565.P17385242769291783071

`2*A119259(n)-A033999(n)-A010872(3*n)`
-/

namespace A333565.P17385242769291783071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119259 n - A033999 n - A010872 (3 * n)

end

end A333565.P17385242769291783071

namespace A333565

/-- `2*A119259(n)-A033999(n)-A010872(3*n)` -/
def P17385242769291783071.Spec : Prop :=
  ∀ n, P17385242769291783071.a n = A333565 n

end A333565

/-! ## A333565.P10001366121532122367

`A064062(n)+A178792(n)-A091337(A088442(n))`
-/

namespace A333565.P10001366121532122367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n + (A178792 n - A091337 (A088442 n).toNat)

end

end A333565.P10001366121532122367

namespace A333565

/-- `A064062(n)+A178792(n)-A091337(A088442(n))` -/
def P10001366121532122367.Spec : Prop :=
  ∀ n, P10001366121532122367.a n = A333565 n

end A333565

/-!
# A333568: Lexicographically earliest sequence of nonnegative integers such that two distinct terms differ by at least 3 decimal digits.

The programs for A333568, there is no canonical definition to state claims against.
-/

/-! ## A333568.P6428066691591507352

`floor(A346000(n+1)/10)`
-/

namespace A333568.P6428066691591507352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346000 (n + 1) : ℚ) / 10⌋

end

end A333568.P6428066691591507352

/-! ## A333568.P4925527788686935839

`A379180(A319678(n+1))`
-/

namespace A333568.P4925527788686935839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379180 (A319678 (n + 1)).toNat

end

end A333568.P4925527788686935839

/-!
# A333569: a(n) = Sum_{d|n} (-1)^(bigomega(d) - omega(d)) * phi(n/d).

The programs for A333569, the canonical program `A333569.P14617359715698740653` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333569 has offset 1).

The definition of A333569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333569.P14617359715698740653

`∑{d}[n+1, A008683((n+1)/#)*A327668(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A333569

/-- `∑{d}[n+1, A008683((n+1)/#)*A327668(#)]` -/
def P14617359715698740653.Spec : Prop :=
  ∀ n, P14617359715698740653.a n = A333569 (n + 1)

theorem P14617359715698740653.correct : P14617359715698740653.Spec := by
  intro n
  simp only [A333569, Nat.add_sub_cancel]

end A333569

/-! ## A333569.P5142508157415059364

`∑{d}[n+1, (-1)^(A001222(#)-A001221(#))*A000010((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333569.P5142508157415059364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ (A001222 d - A001221 d : ℤ) * (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ)

end

end A333569.P5142508157415059364

namespace A333569

/-- `∑{d}[n+1, (-1)^(A001222(#)-A001221(#))*A000010((n+1)/#)]` -/
def P5142508157415059364.Spec : Prop :=
  ∀ n, P5142508157415059364.a n = (A333569 (n + 1) : ℚ)

end A333569

/-! ## A333569.P14091541220938965615

`∑{#}[n, (-1)^(A001222(gcd(n+1, #+1))-A001221(gcd(n+1, #+1)))]`
-/

namespace A333569.P14091541220938965615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ (A001222 (Nat.gcd (n + 1) (k + 1)) - A001221 (Nat.gcd (n + 1) (k + 1)) : ℤ)

end

end A333569.P14091541220938965615

namespace A333569

/-- `∑{#}[n, (-1)^(A001222(gcd(n+1, #+1))-A001221(gcd(n+1, #+1)))]` -/
def P14091541220938965615.Spec : Prop :=
  ∀ n, P14091541220938965615.a n = (A333569 (n + 1) : ℚ)

end A333569

/-! ## A333569.P7556636571876734900

`∑{d}[n+1, A007431(#)*A055076((n+1)/#)]`
-/

namespace A333569.P7556636571876734900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A055076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333569.P7556636571876734900

namespace A333569

/-- `∑{d}[n+1, A007431(#)*A055076((n+1)/#)]` -/
def P7556636571876734900.Spec : Prop :=
  ∀ n, P7556636571876734900.a n = A333569 (n + 1)

end A333569

/-! ## A333569.P12854545545556444131

`∑{d}[n+1, A074722(#)*A074823((n+1)/#)]`
-/

namespace A333569.P12854545545556444131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A074823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333569.P12854545545556444131

namespace A333569

/-- `∑{d}[n+1, A074722(#)*A074823((n+1)/#)]` -/
def P12854545545556444131.Spec : Prop :=
  ∀ n, P12854545545556444131.a n = A333569 (n + 1)

end A333569

/-! ## A333569.P2822305046173917201

`∑{d}[n+1, A000010(#)*A162511((n+1)/#)]`
-/

namespace A333569.P2822305046173917201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A162511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333569.P2822305046173917201

namespace A333569

/-- `∑{d}[n+1, A000010(#)*A162511((n+1)/#)]` -/
def P2822305046173917201.Spec : Prop :=
  ∀ n, P2822305046173917201.a n = A333569 (n + 1)

end A333569

/-! ## A333569.P14197184389412241289

`∑{d}[n+1, A326415(#)*A344221((n+1)/#)]`
-/

namespace A333569.P14197184389412241289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A344221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333569.P14197184389412241289

namespace A333569

/-- `∑{d}[n+1, A326415(#)*A344221((n+1)/#)]` -/
def P14197184389412241289.Spec : Prop :=
  ∀ n, P14197184389412241289.a n = A333569 (n + 1)

end A333569

/-!
# A333570: Number of nonnegative values c such that c^n == -c (mod n).

The programs for A333570, there is no canonical definition to state claims against.
-/

/-! ## A333570.P8959055985365835534

`A337633(∑[n+1]-A002322(n+1)+1)`
-/

namespace A333570.P8959055985365835534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337633 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002322 (n + 1) + 1).toNat

end

end A333570.P8959055985365835534

/-! ## A333570.P2054269339441776670

`A337633(A051953(n+1)+A000124(n))`
-/

namespace A333570.P2054269339441776670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337633 (A051953 (n + 1) + A000124 n).toNat

end

end A333570.P2054269339441776670

/-! ## A333570.P2198840845496494455

`A337633(A277127(n+1)+A000124(n))`
-/

namespace A333570.P2198840845496494455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337633 (A277127 (n + 1) + A000124 n).toNat

end

end A333570.P2198840845496494455

/-! ## A333570.P9693666986815626634

`gcd(A078599(n+1), A227312(n+1))`
-/

namespace A333570.P9693666986815626634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078599 (n + 1)) (A227312 (n + 1))

end

end A333570.P9693666986815626634

/-! ## A333570.P5633677265560785333

`A360112(A066023(n+1))`
-/

namespace A333570.P5633677265560785333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360112 (A066023 (n + 1)).toNat

end

end A333570.P5633677265560785333

/-!
# A333571: Square array T(n,k), n >= 1, k >= 2, read by antidiagonals, where T(n,k) is the number of Hamiltonian paths in the n X k grid graph which start at any of the n vertices on left side of the graph and terminate at any of the n vertices on the right side.

The programs for A333571, there is no canonical definition to state claims against.
-/

/-! ## A333571.P13406370254333695283

`A358104(A336574(n))`
-/

namespace A333571.P13406370254333695283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358104 (A336574 n).toNat

end

end A333571.P13406370254333695283

/-! ## A333571.P7027445608271489659

`∑{d}[A059274(n), A119338(#)]`
-/

namespace A333571.P7027445608271489659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A119338 d

end

end A333571.P7027445608271489659

/-! ## A333571.P3432508218067771877

`A000005(C(A259153(n), A139600(n)))`
-/

namespace A333571.P3432508218067771877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A259153 n).toNat (A139600 n).toNat)

end

end A333571.P3432508218067771877

/-! ## A333571.P7835776844802493720

`A000005(C(A336574(n), A097805(n)))`
-/

namespace A333571.P7835776844802493720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A336574 n).toNat (A097805 n).toNat)

end

end A333571.P7835776844802493720

/-! ## A333571.P951826141887809786

`A307236(A261763(n))`
-/

namespace A333571.P951826141887809786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307236 (A261763 n).toNat

end

end A333571.P951826141887809786

/-!
# A333572: a(n) is the number of Gaussian integers z with 0 < |z| <= n/2.

The programs for A333572, the canonical program `A333572.P17790517561337561290` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333572 has offset 1).

The definition of A333572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333572.P14998654137997012691

`∑[abs(Δ[A053411(n)])]`
-/

namespace A333572.P14998654137997012691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333572.P14998654137997012691

namespace A333572

/-- `∑[abs(Δ[A053411(n)])]` -/
def P14998654137997012691.Spec : Prop :=
  ∀ n, P14998654137997012691.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P3373885983387832900

`A053411(1+n)-1`
-/

namespace A333572.P3373885983387832900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (1 + n) - 1

end

end A333572.P3373885983387832900

namespace A333572

/-- `A053411(1+n)-1` -/
def P3373885983387832900.Spec : Prop :=
  ∀ n, P3373885983387832900.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P17790517561337561290

`4*A333573(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A333572

/-- `4*A333573(n+1)` -/
def P17790517561337561290.Spec : Prop :=
  ∀ n, P17790517561337561290.a n = A333572 (n + 1)

theorem P17790517561337561290.correct : P17790517561337561290.Spec := by
  intro n
  simp only [A333572, Nat.add_sub_cancel]

end A333572

/-! ## A333572.P2388727542467393821

`∑[4*A333462(n+1)]`
-/

namespace A333572.P2388727542467393821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A333462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333572.P2388727542467393821

namespace A333572

/-- `∑[4*A333462(n+1)]` -/
def P2388727542467393821.Spec : Prop :=
  ∀ n, P2388727542467393821.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P10859412280013421902

`xor(1, A053411(-xor(n, -1)))`
-/

namespace A333572.P10859412280013421902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A053411 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A333572.P10859412280013421902

namespace A333572

/-- `xor(1, A053411(-xor(n, -1)))` -/
def P10859412280013421902.Spec : Prop :=
  ∀ n, P10859412280013421902.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P2674093766128938040

`xor(1, A053411(1-(n-2*n)))`
-/

namespace A333572.P2674093766128938040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A053411 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A333572.P2674093766128938040

namespace A333572

/-- `xor(1, A053411(1-(n-2*n)))` -/
def P2674093766128938040.Spec : Prop :=
  ∀ n, P2674093766128938040.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P13956502581946838263

`∑[A038608(Δ[A053411(n)])]`
-/

namespace A333572.P13956502581946838263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333572.P13956502581946838263

namespace A333572

/-- `∑[A038608(Δ[A053411(n)])]` -/
def P13956502581946838263.Spec : Prop :=
  ∀ n, P13956502581946838263.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P522030051204482110

`record[A053411(A025480(n))-1]`
-/

namespace A333572.P522030051204482110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (A025480 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333572.P522030051204482110

namespace A333572

/-- `record[A053411(A025480(n))-1]` -/
def P522030051204482110.Spec : Prop :=
  ∀ n, P522030051204482110.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P14468346782173879007

`A168273(n+1)+A136485(n+1)`
-/

namespace A333572.P14468346782173879007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) + A136485 (n + 1)

end

end A333572.P14468346782173879007

namespace A333572

/-- `A168273(n+1)+A136485(n+1)` -/
def P14468346782173879007.Spec : Prop :=
  ∀ n, P14468346782173879007.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P4741983110949155082

`∑[Δ[A053411(n)]%A052486(n+1)]`
-/

namespace A333572.P4741983110949155082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A052486 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333572.P4741983110949155082

namespace A333572

/-- `∑[Δ[A053411(n)]%A052486(n+1)]` -/
def P4741983110949155082.Spec : Prop :=
  ∀ n, P4741983110949155082.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P14738256972163769736

`A008586(A333573(n+1))`
-/

namespace A333572.P14738256972163769736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A333573 (n + 1)).toNat

end

end A333572.P14738256972163769736

namespace A333572

/-- `A008586(A333573(n+1))` -/
def P14738256972163769736.Spec : Prop :=
  ∀ n, P14738256972163769736.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P13068053031106640452

`A014198(A002620(n+1))`
-/

namespace A333572.P13068053031106640452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (A002620 (n + 1)).toNat

end

end A333572.P13068053031106640452

namespace A333572

/-- `A014198(A002620(n+1))` -/
def P13068053031106640452.Spec : Prop :=
  ∀ n, P13068053031106640452.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P17878128224588390498

`A014198(A182531(n+1))`
-/

namespace A333572.P17878128224588390498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (A182531 (n + 1)).toNat

end

end A333572.P17878128224588390498

namespace A333572

/-- `A014198(A182531(n+1))` -/
def P17878128224588390498.Spec : Prop :=
  ∀ n, P17878128224588390498.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P8683303950610757492

`A014198(∑[A004526(n+1)])`
-/

namespace A333572.P8683303950610757492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333572.P8683303950610757492

namespace A333572

/-- `A014198(∑[A004526(n+1)])` -/
def P8683303950610757492.Spec : Prop :=
  ∀ n, P8683303950610757492.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P10472432551866124143

`A014198(∑[n-A004526(n)])`
-/

namespace A333572.P10472432551866124143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333572.P10472432551866124143

namespace A333572

/-- `A014198(∑[n-A004526(n)])` -/
def P10472432551866124143.Spec : Prop :=
  ∀ n, P10472432551866124143.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P4375409678771656056

`A004442(A053411(n+1))`
-/

namespace A333572.P4375409678771656056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A053411 (n + 1)).toNat

end

end A333572.P4375409678771656056

namespace A333572

/-- `A004442(A053411(n+1))` -/
def P4375409678771656056.Spec : Prop :=
  ∀ n, P4375409678771656056.a n = A333572 (n + 1)

end A333572

/-! ## A333572.P13376590597140682580

`A110514(A053456(n+1))+A053411(n+1)`
-/

namespace A333572.P13376590597140682580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A053456 (n + 1)).toNat + A053411 (n + 1)

end

end A333572.P13376590597140682580

namespace A333572

/-- `A110514(A053456(n+1))+A053411(n+1)` -/
def P13376590597140682580.Spec : Prop :=
  ∀ n, P13376590597140682580.a n = A333572 (n + 1)

end A333572

/-!
# A333573: a(n) = A333572(n)/4.

The programs for A333573, the canonical program `A333573.P2070379244315738537` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333573 has offset 1).

The definition of A333573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333573.P17159841606441121852

`A333572(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333573.P17159841606441121852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333572 (n + 1) : ℚ) / 4

end

end A333573.P17159841606441121852

namespace A333573

/-- `A333572(n+1)/4` -/
def P17159841606441121852.Spec : Prop :=
  ∀ n, P17159841606441121852.a n = (A333573 (n + 1) : ℚ)

theorem P17159841606441121852.correct : P17159841606441121852.Spec := by
  intro n
  simp only [A333573, Nat.add_sub_cancel, A333573.P17159841606441121852.a, A333573.P2070379244315738537.f1, A333573.P2070379244315738537.f2, A333573.P2070379244315738537.a, A036698, A036698.P3152835247264100802.a, A036711, A036711.P14920642788416913369.a, A333572, A333572.P17790517561337561290.a, A014200, A014200.P16970295702573526038.a, A036704, A036704.P2788393936175939244.a, A014198, A014198.P2354480518814049901.a, A057655, A057655.P8142405424443184292.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333573

/-! ## A333573.P13206911317307872029

`∑[A333462(n+1)]`
-/

namespace A333573.P13206911317307872029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333573.P13206911317307872029

namespace A333573

/-- `∑[A333462(n+1)]` -/
def P13206911317307872029.Spec : Prop :=
  ∀ n, P13206911317307872029.a n = A333573 (n + 1)

end A333573

/-! ## A333573.P14114450719850044115

`∑[Δ[A053411(n)]/4]`
-/

namespace A333573.P14114450719850044115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333573.P14114450719850044115

namespace A333573

/-- `∑[Δ[A053411(n)]/4]` -/
def P14114450719850044115.Spec : Prop :=
  ∀ n, P14114450719850044115.a n = (A333573 (n + 1) : ℚ)

end A333573

/-! ## A333573.P6420826202780666266

`floor(A053411(n+1)/4)`
-/

namespace A333573.P6420826202780666266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053411 (n + 1) : ℚ) / 4⌋

end

end A333573.P6420826202780666266

namespace A333573

/-- `floor(A053411(n+1)/4)` -/
def P6420826202780666266.Spec : Prop :=
  ∀ n, P6420826202780666266.a n = A333573 (n + 1)

end A333573

/-! ## A333573.P10196522992805469837

`A136483(n+1)+floor((n+1)/2)`
-/

namespace A333573.P10196522992805469837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (n + 1) + ⌊(n + 1 : ℚ) / 2⌋

end

end A333573.P10196522992805469837

namespace A333573

/-- `A136483(n+1)+floor((n+1)/2)` -/
def P10196522992805469837.Spec : Prop :=
  ∀ n, P10196522992805469837.a n = A333573 (n + 1)

end A333573

/-! ## A333573.P2070379244315738537

`∪[A036698(n), A036711(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A333573

/-- `∪[A036698(n), A036711(n)]` -/
def P2070379244315738537.Spec : Prop :=
  ∀ n, (P2070379244315738537.a n : ℤ) = A333573 (n + 1)

theorem P2070379244315738537.correct : P2070379244315738537.Spec := by
  intro n
  simp only [A333573, Nat.add_sub_cancel]

end A333573

/-! ## A333573.P17234834123221184575

`A014200(∑[ceil(n/2)])`
-/

namespace A333573.P17234834123221184575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333573.P17234834123221184575

namespace A333573

/-- `A014200(∑[ceil(n/2)])` -/
def P17234834123221184575.Spec : Prop :=
  ∀ n, P17234834123221184575.a n = A333573 (n + 1)

end A333573

/-! ## A333573.P10756650077810867295

`A002265(A053411(n+1))`
-/

namespace A333573.P10756650077810867295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A053411 (n + 1)).toNat

end

end A333573.P10756650077810867295

namespace A333573

/-- `A002265(A053411(n+1))` -/
def P10756650077810867295.Spec : Prop :=
  ∀ n, P10756650077810867295.a n = A333573 (n + 1)

end A333573

/-! ## A333573.P7538961113812019275

`A002265(A333572(n+1))`
-/

namespace A333573.P7538961113812019275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A333572 (n + 1)).toNat

end

end A333573.P7538961113812019275

namespace A333573

/-- `A002265(A333572(n+1))` -/
def P7538961113812019275.Spec : Prop :=
  ∀ n, P7538961113812019275.a n = A333573 (n + 1)

end A333573

/-!
# A333574: Number of Hamiltonian paths in the n X 2 grid graph which start at any of the n vertices on left side of the graph and terminate at any of the n vertices on the right side.

The programs for A333574, the canonical program `A333574.P2117337091251710815` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333574 has offset 1).

The definition of A333574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333574.P3772878177109007799

`ogf((1+x^4)/(1-2x+2x^3-x^4))`
-/

namespace A333574.P3772878177109007799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 1] [1, -2, 0, 2, -1] n

end

end A333574.P3772878177109007799

namespace A333574

/-- `ogf((1+x^4)/(1-2x+2x^3-x^4))` -/
def P3772878177109007799.Spec : Prop :=
  ∀ n, P3772878177109007799.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P2117337091251710815

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333574

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2117337091251710815.Spec : Prop :=
  ∀ n, P2117337091251710815.a n = A333574 (n + 1)

theorem P2117337091251710815.correct : P2117337091251710815.Spec := by
  intro n
  simp only [A333574, Nat.add_sub_cancel]

end A333574

/-! ## A333574.P9858664740360285307

`ceil(2/acot(n/2)²)`
-/

namespace A333574.P9858664740360285307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ) ^ 2⌉

end

end A333574.P9858664740360285307

namespace A333574

/-- `ceil(2/acot(n/2)²)` -/
def P9858664740360285307.Spec : Prop :=
  ∀ n, P9858664740360285307.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P10813321225508367386

`round((n²-1)/2)+2`
-/

namespace A333574.P10813321225508367386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - 1 : ℚ) / 2) + 2

end

end A333574.P10813321225508367386

namespace A333574

/-- `round((n²-1)/2)+2` -/
def P10813321225508367386.Spec : Prop :=
  ∀ n, P10813321225508367386.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P12897677942949350369

`and(a(n-1)+n, -2)` with `a(0)=1`
-/

namespace A333574.P12897677942949350369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) + (n : ℤ)) (-2)

end

end A333574.P12897677942949350369

namespace A333574

/-- `and(a(n-1)+n, -2)` -/
def P12897677942949350369.Spec : Prop :=
  ∀ n, P12897677942949350369.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P9934139691688429385

`∑[char[n^14]+and(n, -2)]`
-/

namespace A333574.P9934139691688429385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P9934139691688429385

namespace A333574

/-- `∑[char[n^14]+and(n, -2)]` -/
def P9934139691688429385.Spec : Prop :=
  ∀ n, P9934139691688429385.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P14778723143742183517

`∑[n-n%a(2%n)]` with `a(0)=1`
-/

namespace A333574.P14778723143742183517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - Int.tmod (n : ℤ) (f1 (2 % n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P14778723143742183517

namespace A333574

/-- `∑[n-n%a(2%n)]` -/
def P14778723143742183517.Spec : Prop :=
  ∀ n, P14778723143742183517.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P13023306412801492124

`∑[a(n-2)+2]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A333574.P13023306412801492124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P13023306412801492124

namespace A333574

/-- `∑[a(n-2)+2]` -/
def P13023306412801492124.Spec : Prop :=
  ∀ n, (P13023306412801492124.a n : ℤ) = A333574 (n + 1)

end A333574

/-! ## A333574.P6106987742094453100

`∑[∑[lcm(2, a(n-2))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A333574.P6106987742094453100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  Nat.lcm 2 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P6106987742094453100

namespace A333574

/-- `∑[∑[lcm(2, a(n-2))]]` -/
def P6106987742094453100.Spec : Prop :=
  ∀ n, (P6106987742094453100.a n : ℤ) = A333574 (n + 1)

end A333574

/-! ## A333574.P5173121051740629143

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A333574.P5173121051740629143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P5173121051740629143

namespace A333574

/-- `∑[∑[2-a(n-1)]]` -/
def P5173121051740629143.Spec : Prop :=
  ∀ n, P5173121051740629143.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P10420867668073172987

`2*floor((a(n-1)+n)/2)` with `a(0)=1`
-/

namespace A333574.P10420867668073172987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊(a (n - 1) + (n : ℤ) : ℚ) / 2⌋

end

end A333574.P10420867668073172987

namespace A333574

/-- `2*floor((a(n-1)+n)/2)` -/
def P10420867668073172987.Spec : Prop :=
  ∀ n, P10420867668073172987.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P2947733618700729580

`floor(C(n, 2)+∑[n+3]/(n+2))`
-/

namespace A333574.P2947733618700729580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A333574.P2947733618700729580

namespace A333574

/-- `floor(C(n, 2)+∑[n+3]/(n+2))` -/
def P2947733618700729580.Spec : Prop :=
  ∀ n, P2947733618700729580.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P776697720024498714

`floor(a(n-2)-2*(1-n))` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A333574.P776697720024498714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) - 2 * (1 - (n : ℤ))

end

end A333574.P776697720024498714

namespace A333574

/-- `floor(a(n-2)-2*(1-n))` -/
def P776697720024498714.Spec : Prop :=
  ∀ n, P776697720024498714.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P8048000503324860746

`floor((1-n)²-a(n-1)+n+3)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A333574.P8048000503324860746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (1 - (n : ℤ)) ^ 2 - a (n - 1) + (n + 3 : ℤ)

end

end A333574.P8048000503324860746

namespace A333574

/-- `floor((1-n)²-a(n-1)+n+3)` -/
def P8048000503324860746.Spec : Prop :=
  ∀ n, P8048000503324860746.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P1013053786696310665

`∑[A131055(or(1, n))]`
-/

namespace A333574.P1013053786696310665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P1013053786696310665

namespace A333574

/-- `∑[A131055(or(1, n))]` -/
def P1013053786696310665.Spec : Prop :=
  ∀ n, P1013053786696310665.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P5112770709347959158

`round(sqrt(A066375(n+1)))`
-/

namespace A333574.P5112770709347959158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A066375 (n + 1) : ℝ))

end

end A333574.P5112770709347959158

namespace A333574

/-- `round(sqrt(A066375(n+1)))` -/
def P5112770709347959158.Spec : Prop :=
  ∀ n, P5112770709347959158.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P12012318334399040222

`∑[A004277(floor(n/2))]`
-/

namespace A333574.P12012318334399040222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P12012318334399040222

namespace A333574

/-- `∑[A004277(floor(n/2))]` -/
def P12012318334399040222.Spec : Prop :=
  ∀ n, P12012318334399040222.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P16049910976303094443

`floor(A133263(n)-n/2)`
-/

namespace A333574.P16049910976303094443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133263 n : ℚ) - (n : ℚ) / 2⌋

end

end A333574.P16049910976303094443

namespace A333574

/-- `floor(A133263(n)-n/2)` -/
def P16049910976303094443.Spec : Prop :=
  ∀ n, P16049910976303094443.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P8285027542998641348

`∑[2-A174296(n)+n]`
-/

namespace A333574.P8285027542998641348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174296 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P8285027542998641348

namespace A333574

/-- `∑[2-A174296(n)+n]` -/
def P8285027542998641348.Spec : Prop :=
  ∀ n, P8285027542998641348.a n = A333574 (n + 1)

end A333574

/-! ## A333574.P1251578869876248377

`∑[or(1, n)-A157928(n)]`
-/

namespace A333574.P1251578869876248377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333574.P1251578869876248377

namespace A333574

/-- `∑[or(1, n)-A157928(n)]` -/
def P1251578869876248377.Spec : Prop :=
  ∀ n, P1251578869876248377.a n = A333574 (n + 1)

end A333574

/-!
# A333575: Number of Hamiltonian paths in the n X 3 grid graph which start at any of the n vertices on left side of the graph and terminate at any of the n vertices on the right side.

The programs for A333575, the canonical program `A333575.P5120171274091446025` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333575 has offset 1).

The definition of A333575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333575.P5120171274091446025

`ogf((1-2x^3-2x^4+6x^5-2x^6-2x^7)/(1-2x-4x^2+8x^3+4x^4-8x^5))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333575

/-- `ogf((1-2x^3-2x^4+6x^5-2x^6-2x^7)/(1-2x-4x^2+8x^3+4x^4-8x^5))` -/
def P5120171274091446025.Spec : Prop :=
  ∀ n, P5120171274091446025.a n = A333575 (n + 1)

theorem P5120171274091446025.correct : P5120171274091446025.Spec := by
  intro n
  simp only [A333575, Nat.add_sub_cancel]

end A333575

/-! ## A333575.P9070992908969064925

`A333571(∑[n+2])`
-/

namespace A333575.P9070992908969064925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333571 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333575.P9070992908969064925

namespace A333575

/-- `A333571(∑[n+2])` -/
def P9070992908969064925.Spec : Prop :=
  ∀ n, P9070992908969064925.a n = A333575 (n + 1)

end A333575

/-! ## A333575.P17294573507131773196

`record[A129186(n)*A333571(n+1)]`
-/

namespace A333575.P17294573507131773196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A333571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333575.P17294573507131773196

namespace A333575

/-- `record[A129186(n)*A333571(n+1)]` -/
def P17294573507131773196.Spec : Prop :=
  ∀ n, P17294573507131773196.a n = A333575 (n + 1)

end A333575

/-! ## A333575.P16573900946776348027

`record[gcd(A319753(n), A333571(n+1))]`
-/

namespace A333575.P16573900946776348027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319753 n) (A333571 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333575.P16573900946776348027

namespace A333575

/-- `record[gcd(A319753(n), A333571(n+1))]` -/
def P16573900946776348027.Spec : Prop :=
  ∀ n, (P16573900946776348027.a n : ℤ) = A333575 (n + 1)

end A333575

/-! ## A333575.P8068419719868425464

`or(A000007(n), A333571(A000096(n+1)))`
-/

namespace A333575.P8068419719868425464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A333571 (A000096 (n + 1)).toNat)

end

end A333575.P8068419719868425464

namespace A333575

/-- `or(A000007(n), A333571(A000096(n+1)))` -/
def P8068419719868425464.Spec : Prop :=
  ∀ n, P8068419719868425464.a n = A333575 (n + 1)

end A333575

/-!
# A333576: a(1) = 1; thereafter a(n) = n * uphi(n) / 2.

The programs for A333576, the canonical program `A333576.P11836017096323049674` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333576 has offset 1).

The definition of A333576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333576.P11836017096323049674

`ceil((n+1)/2*A047994(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333576

/-- `ceil((n+1)/2*A047994(n+1))` -/
def P11836017096323049674.Spec : Prop :=
  ∀ n, P11836017096323049674.a n = A333576 (n + 1)

theorem P11836017096323049674.correct : P11836017096323049674.Spec := by
  intro n
  simp only [A333576, Nat.add_sub_cancel]

end A333576

/-! ## A333576.P2540069920406520315

`ceil((n+1)*(n+1-A323410(n+1))/2)`
-/

namespace A333576.P2540069920406520315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * ((n + 1 : ℤ) - A323410 (n + 1)) : ℚ) / 2⌉

end

end A333576.P2540069920406520315

namespace A333576

/-- `ceil((n+1)*(n+1-A323410(n+1))/2)` -/
def P2540069920406520315.Spec : Prop :=
  ∀ n, P2540069920406520315.a n = A333576 (n + 1)

theorem P2540069920406520315.correct : P2540069920406520315.Spec := by
  intro n
  simp only [A333576, Nat.add_sub_cancel, A333576.P2540069920406520315.a, A333576.P11836017096323049674.a, A047994, A047994.P3003493197761739884.a, A323410, A323410.P6927638298555409235.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333576

/-! ## A333576.P6960821740123225067

`∑{d}[(n+1)/∏{p}[n+1, #], A023896(n+1)/#]`
-/

namespace A333576.P6960821740123225067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (A023896 (n + 1) : ℚ) / (d : ℚ)

end

end A333576.P6960821740123225067

namespace A333576

/-- `∑{d}[(n+1)/∏{p}[n+1, #], A023896(n+1)/#]` -/
def P6960821740123225067.Spec : Prop :=
  ∀ n, P6960821740123225067.a n = (A333576 (n + 1) : ℚ)

end A333576

/-! ## A333576.P17676275088818347399

`A273943((n+1)*A047994(n+1))`
-/

namespace A333576.P17676275088818347399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ((n + 1 : ℤ) * A047994 (n + 1)).toNat

end

end A333576.P17676275088818347399

namespace A333576

/-- `A273943((n+1)*A047994(n+1))` -/
def P17676275088818347399.Spec : Prop :=
  ∀ n, P17676275088818347399.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P17637183234106509220

`A302042((n+1)*A047994(n+1))`
-/

namespace A333576.P17637183234106509220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 ((n + 1 : ℤ) * A047994 (n + 1)).toNat

end

end A333576.P17637183234106509220

namespace A333576

/-- `A302042((n+1)*A047994(n+1))` -/
def P17637183234106509220.Spec : Prop :=
  ∀ n, P17637183234106509220.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P12947132655886301506

`A260739((n+1)*A047994(n+1))`
-/

namespace A333576.P12947132655886301506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 ((n + 1 : ℤ) * A047994 (n + 1)).toNat

end

end A333576.P12947132655886301506

namespace A333576

/-- `A260739((n+1)*A047994(n+1))` -/
def P12947132655886301506.Spec : Prop :=
  ∀ n, P12947132655886301506.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P9390625793245189760

`A004525((n+1)*∏{p}[n+1, #-1]*∑{d}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A333576.P9390625793245189760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d : ℕ) : ℤ)).toNat

end

end A333576.P9390625793245189760

namespace A333576

/-- `A004525((n+1)*∏{p}[n+1, #-1]*∑{d}[(n+1)/∏{p}[n+1, #], #])` -/
def P9390625793245189760.Spec : Prop :=
  ∀ n, P9390625793245189760.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P11941855431912134534

`A026741((n+1)*∑{d}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #-1])`
-/

namespace A333576.P11941855431912134534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 1 : ℤ) * (((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)))).toNat

end

end A333576.P11941855431912134534

namespace A333576

/-- `A026741((n+1)*∑{d}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #-1])` -/
def P11941855431912134534.Spec : Prop :=
  ∀ n, P11941855431912134534.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P7785543265768721824

`A004525((n+1)*A047994(n+1))`
-/

namespace A333576.P7785543265768721824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * A047994 (n + 1)).toNat

end

end A333576.P7785543265768721824

namespace A333576

/-- `A004525((n+1)*A047994(n+1))` -/
def P7785543265768721824.Spec : Prop :=
  ∀ n, P7785543265768721824.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P7252659703783371567

`A026741((n+1)*A047994(n+1))`
-/

namespace A333576.P7252659703783371567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 1 : ℤ) * A047994 (n + 1)).toNat

end

end A333576.P7252659703783371567

namespace A333576

/-- `A026741((n+1)*A047994(n+1))` -/
def P7252659703783371567.Spec : Prop :=
  ∀ n, P7252659703783371567.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P9836505130896142619

`A032742((n+1)*A047994(n+1))`
-/

namespace A333576.P9836505130896142619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n + 1 : ℤ) * A047994 (n + 1)).toNat

end

end A333576.P9836505130896142619

namespace A333576

/-- `A032742((n+1)*A047994(n+1))` -/
def P9836505130896142619.Spec : Prop :=
  ∀ n, P9836505130896142619.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P10753635441439081933

`A078898((n+1)*A047994(n+1))`
-/

namespace A333576.P10753635441439081933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((n + 1 : ℤ) * A047994 (n + 1)).toNat

end

end A333576.P10753635441439081933

namespace A333576

/-- `A078898((n+1)*A047994(n+1))` -/
def P10753635441439081933.Spec : Prop :=
  ∀ n, P10753635441439081933.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P1772814390512625434

`A004525((n+1)*A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1])`
-/

namespace A333576.P1772814390512625434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * (A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)))).toNat

end

end A333576.P1772814390512625434

namespace A333576

/-- `A004525((n+1)*A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1])` -/
def P1772814390512625434.Spec : Prop :=
  ∀ n, P1772814390512625434.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P4249785822932944238

`A026741(A384049(n+1)*A384051(n+1))`
-/

namespace A333576.P4249785822932944238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A384049 (n + 1) * A384051 (n + 1)).toNat

end

end A333576.P4249785822932944238

namespace A333576

/-- `A026741(A384049(n+1)*A384051(n+1))` -/
def P4249785822932944238.Spec : Prop :=
  ∀ n, P4249785822932944238.a n = A333576 (n + 1)

end A333576

/-! ## A333576.P11498327582280015295

`A026741(A384055(n+1)*A384056(n+1))`
-/

namespace A333576.P11498327582280015295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A384055 (n + 1) * A384056 (n + 1)).toNat

end

end A333576.P11498327582280015295

namespace A333576

/-- `A026741(A384055(n+1)*A384056(n+1))` -/
def P11498327582280015295.Spec : Prop :=
  ∀ n, P11498327582280015295.a n = A333576 (n + 1)

end A333576

/-!
# A333579: a(n) = [x^n] ( (1 + x + x^2)/(1 - x + x^2) )^n.

The programs for A333579, there is no canonical definition to state claims against.
-/

/-! ## A333579.P14415602487669643971

`ceil(4^n/2)-A180649(2^n)`
-/

namespace A333579.P14415602487669643971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ - A180649 (2 ^ n)

end

end A333579.P14415602487669643971

/-! ## A333579.P3446527207704920658

`A262978(A150169(n))`
-/

namespace A333579.P3446527207704920658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262978 (A150169 n).toNat

end

end A333579.P3446527207704920658

/-!
# A333580: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) is the number of Hamiltonian paths in an n X k grid starting at the lower left corner and finishing in the upper right corner.

The programs for A333580, there is no canonical definition to state claims against.
-/

/-! ## A333580.P7861673333746174830

`A003714(A187596(n)%A058851(n+1))`
-/

namespace A333580.P7861673333746174830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (Int.tmod (A187596 n) (A058851 (n + 1))).toNat

end

end A333580.P7861673333746174830

/-! ## A333580.P11075670272527764207

`A003714(A187596(n))^A007318(A001204(n))`
-/

namespace A333580.P11075670272527764207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003714 (A187596 n).toNat : ℚ) ^ (A007318 (A001204 n).toNat : ℤ)

end

end A333580.P11075670272527764207

/-! ## A333580.P9027186055120722364

`A003714(A187596(n))^A086620(A007318(n))`
-/

namespace A333580.P9027186055120722364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003714 (A187596 n).toNat : ℚ) ^ (A086620 (A007318 n).toNat : ℤ)

end

end A333580.P9027186055120722364

/-! ## A333580.P17202150679144220076

`A003714(A187596(n))^A007318(A119467(n))`
-/

namespace A333580.P17202150679144220076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003714 (A187596 n).toNat : ℚ) ^ (A007318 (A119467 n).toNat : ℤ)

end

end A333580.P17202150679144220076

/-! ## A333580.P2347778624488232392

`A048766(A187596(n)²²)`
-/

namespace A333580.P2347778624488232392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A187596 n ^ 2) ^ 2).toNat

end

end A333580.P2347778624488232392

/-!
# A333581: Number of Hamiltonian paths in a 6 X (2n+1) grid starting at the lower left corner and finishing in the upper right corner.

The programs for A333581, there is no canonical definition to state claims against.
-/

/-! ## A333581.P255322121030813591

`record[A333580(A052905(n))]`
-/

namespace A333581.P255322121030813591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333581.P255322121030813591

/-! ## A333581.P11673004656209693123

`record[A333580(A167499(n)+1)]`
-/

namespace A333581.P11673004656209693123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A167499 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333581.P11673004656209693123

/-! ## A333581.P1687493232166498443

`record[A333580(A000217(n)+6)]`
-/

namespace A333581.P1687493232166498443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A000217 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333581.P1687493232166498443

/-! ## A333581.P17009808642867896064

`record[A333580(A046691(n)+10)]`
-/

namespace A333581.P17009808642867896064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A046691 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333581.P17009808642867896064

/-! ## A333581.P3925734878951344583

`A333580(A100039(n+1)-1)`
-/

namespace A333581.P3925734878951344583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A100039 (n + 1) - 1).toNat

end

end A333581.P3925734878951344583

/-!
# A333582: Number of Hamiltonian paths in a 7 X n grid starting at the lower left corner and finishing in the upper right corner.

The programs for A333582, there is no canonical definition to state claims against.
-/

/-! ## A333582.P16506732792502733453

`A333580(A374008(n+1))`
-/

namespace A333582.P16506732792502733453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A374008 (n + 1)).toNat

end

end A333582.P16506732792502733453

/-! ## A333582.P16797309680961454949

`A333580(A055999(n+4))`
-/

namespace A333582.P16797309680961454949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A055999 (n + 4)).toNat

end

end A333582.P16797309680961454949

/-! ## A333582.P5995293315946881726

`A333580(eq[4, A219347(n)])`
-/

namespace A333582.P5995293315946881726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333582.P5995293315946881726

/-! ## A333582.P1980648035291428180

`A333580(eq[6, A193592(n)])`
-/

namespace A333582.P1980648035291428180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333582.P1980648035291428180

/-! ## A333582.P1123532417303755961

`A333580(A000096(n+6)-5)`
-/

namespace A333582.P1123532417303755961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A000096 (n + 6) - 5).toNat

end

end A333582.P1123532417303755961

/-!
# A333583: Number of Hamiltonian paths in an 8 X (2n+1) grid starting at the lower left corner and finishing in the upper right corner.

The programs for A333583, there is no canonical definition to state claims against.
-/

/-! ## A333583.P13261458824895688023

`A333580(A100039(n+2)+1)`
-/

namespace A333583.P13261458824895688023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A100039 (n + 2) + 1).toNat

end

end A333583.P13261458824895688023

/-! ## A333583.P17449565083028481772

`record[A333580(∑[A009005(n+1)])]`
-/

namespace A333583.P17449565083028481772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333583.P17449565083028481772

/-! ## A333583.P15595931126953755813

`record[A333580(∑[A160755(n+1)])]`
-/

namespace A333583.P15595931126953755813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333583.P15595931126953755813

/-! ## A333583.P364879637908754169

`record[A333580(A052905(n+1)-2)]`
-/

namespace A333583.P364879637908754169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A052905 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333583.P364879637908754169

/-! ## A333583.P16013796299730376592

`A333580(A374008(2*(n+1))-1)`
-/

namespace A333583.P16013796299730376592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A374008 (2 * (n + 1)) - 1).toNat

end

end A333583.P16013796299730376592

/-!
# A333584: Number of Hamiltonian paths in a 9 X n grid starting at the lower left corner and finishing in the upper right corner.

The programs for A333584, there is no canonical definition to state claims against.
-/

/-! ## A333584.P11483083521352424383

`A333580(A374010(n+1))`
-/

namespace A333584.P11483083521352424383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A374010 (n + 1)).toNat

end

end A333584.P11483083521352424383

/-! ## A333584.P11146869086900808774

`A333580(eq[6, A219347(n)])`
-/

namespace A333584.P11146869086900808774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333584.P11146869086900808774

/-! ## A333584.P12145044493697797700

`A333580(eq[8, A193592(n)])`
-/

namespace A333584.P12145044493697797700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333584.P12145044493697797700

/-! ## A333584.P6194441071421706875

`A333580(A056119(n+2)+30)`
-/

namespace A333584.P6194441071421706875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A056119 (n + 2) + 30).toNat

end

end A333584.P6194441071421706875

/-! ## A333584.P17895484063846842101

`A333580(eq[8, A002262(n)]+1)`
-/

namespace A333584.P17895484063846842101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333584.P17895484063846842101

/-!
# A333585: Number of Hamiltonian paths in a 10 X (2n+1) grid starting at the lower left corner and finishing in the upper right corner.

The programs for A333585, there is no canonical definition to state claims against.
-/

/-! ## A333585.P10926950620306210418

`record[A333580(A000124(n+9)-10)]`
-/

namespace A333585.P10926950620306210418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A000124 (n + 9) - 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333585.P10926950620306210418

/-! ## A333585.P10742558824142585241

`A333580(A374010(2*n+2)-1)`
-/

namespace A333585.P10742558824142585241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A374010 (2 * n + 2) - 1).toNat

end

end A333585.P10742558824142585241

/-! ## A333585.P717099259032095875

`record[A333580(∑[A160755(n+1)]+2)]`
-/

namespace A333585.P717099259032095875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333585.P717099259032095875

/-!
# A333588: a(n) = floor(-(3/2)*a(n-1)), a(1)=-2.

The programs for A333588, the canonical program `A333588.P8094033033820431322` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333588 has offset 1).

The definition of A333588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(-(3/2)*a(n-1))` (program `A333588.P8094033033820431322`, by `A333588.P8094033033820431322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333588.P8094033033820431322

`floor(-(3/2)*a(n-1))` with `a(0)=-2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333588

/-- `floor(-(3/2)*a(n-1))` -/
def P8094033033820431322.Spec : Prop :=
  ∀ n, P8094033033820431322.a n = A333588 (n + 1)

theorem P8094033033820431322.correct : P8094033033820431322.Spec := by
  intro n
  simp only [A333588, Nat.add_sub_cancel]

end A333588

/-! ## A333588.P14847924596402259456

`-ceil(3/2*a(n-1))` with `a(0)=-2`
-/

namespace A333588.P14847924596402259456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  -⌈(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌉

end

end A333588.P14847924596402259456

namespace A333588

/-- `-ceil(3/2*a(n-1))` -/
def P14847924596402259456.Spec : Prop :=
  ∀ n, P14847924596402259456.a n = A333588 (n + 1)

end A333588

/-! ## A333588.P8899043180458269092

`-floor(a(n-1)+(a(n-1)+1)/2)` with `a(0)=-2`
-/

namespace A333588.P8899043180458269092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  -⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / 2⌋

end

end A333588.P8899043180458269092

namespace A333588

/-- `-floor(a(n-1)+(a(n-1)+1)/2)` -/
def P8899043180458269092.Spec : Prop :=
  ∀ n, P8899043180458269092.a n = A333588 (n + 1)

end A333588

/-! ## A333588.P750845809205678000

`1-(ceil(3/2*a(n-1))+ceil(acot(n)))` with `a(0)=-2`
-/

namespace A333588.P750845809205678000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  1 - (⌈(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌉ + ⌈SequenceMachineLib.acot (n : ℝ)⌉)

end

end A333588.P750845809205678000

namespace A333588

/-- `1-(ceil(3/2*a(n-1))+ceil(acot(n)))` -/
def P750845809205678000.Spec : Prop :=
  ∀ n, P750845809205678000.a n = A333588 (n + 1)

end A333588

/-! ## A333588.P7721683036699042432

`1-ceil(3/2*a(n-1))-ceil(acot(n))` with `a(0)=-2`
-/

namespace A333588.P7721683036699042432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  1 - ⌈(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌉ - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A333588.P7721683036699042432

namespace A333588

/-- `1-ceil(3/2*a(n-1))-ceil(acot(n))` -/
def P7721683036699042432.Spec : Prop :=
  ∀ n, P7721683036699042432.a n = A333588 (n + 1)

end A333588

/-!
# A333589: a(n) = floor(a(n-1)*3/2) bitwise-OR LSB(a(n-1)*n), with a(1)=2 (LSB = Least Significant Bit).

The programs for A333589, the canonical program `A333589.P9425012507283902323` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333589 has offset 1).

The definition of A333589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333589.P9425012507283902323

`or(floor(a(n-1)*3/2), (a(n-1)*(n+1))%2)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333589

/-- `or(floor(a(n-1)*3/2), (a(n-1)*(n+1))%2)` -/
def P9425012507283902323.Spec : Prop :=
  ∀ n, P9425012507283902323.a n = A333589 (n + 1)

theorem P9425012507283902323.correct : P9425012507283902323.Spec := by
  intro n
  simp only [A333589, Nat.add_sub_cancel]

end A333589

/-! ## A333589.P12996381250370684472

`round(A133024(n+3)^γ)`
-/

namespace A333589.P12996381250370684472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133024 (n + 3) : ℝ) ^ Real.eulerMascheroniConstant)

end

end A333589.P12996381250370684472

namespace A333589

/-- `round(A133024(n+3)^γ)` -/
def P12996381250370684472.Spec : Prop :=
  ∀ n, P12996381250370684472.a n = A333589 (n + 1)

end A333589

/-! ## A333589.P11904848729862090996

`A202305(A018008(n))`
-/

namespace A333589.P11904848729862090996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A018008 n).toNat

end

end A333589.P11904848729862090996

namespace A333589

/-- `A202305(A018008(n))` -/
def P11904848729862090996.Spec : Prop :=
  ∀ n, P11904848729862090996.a n = A333589 (n + 1)

end A333589

/-! ## A333589.P15014271877520214188

`A202305(or(1, A018007(n)))`
-/

namespace A333589.P15014271877520214188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (Int.lor 1 (A018007 n)).toNat

end

end A333589.P15014271877520214188

namespace A333589

/-- `A202305(or(1, A018007(n)))` -/
def P15014271877520214188.Spec : Prop :=
  ∀ n, P15014271877520214188.a n = A333589 (n + 1)

end A333589

/-! ## A333589.P11174842965968623990

`A172471(∑[A006356(n)])+1`
-/

namespace A333589.P11174842965968623990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A333589.P11174842965968623990

namespace A333589

/-- `A172471(∑[A006356(n)])+1` -/
def P11174842965968623990.Spec : Prop :=
  ∀ n, P11174842965968623990.a n = A333589 (n + 1)

end A333589

/-!
# A333590: a(n) = a(n-1) if half of the previous term pairs are inverted. a(n) = a(n-1) + 1 if more than half of the previous term pairs are inverted. a(n) = a(n-1) - 1 if fewer than half of the previous term pairs are inverted. a(1) = 0.

The programs for A333590, there is no canonical definition to state claims against.
-/

/-! ## A333590.P15513039768713707938

`A018843(A132393(n))-A005136(n)`
-/

namespace A333590.P15513039768713707938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A132393 n).toNat - A005136 n

end

end A333590.P15513039768713707938

/-! ## A333590.P16713206157280484942

`char[∑[n]]-A353741(A353864(n))`
-/

namespace A333590.P16713206157280484942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A353741 (A353864 n).toNat

end

end A333590.P16713206157280484942

/-! ## A333590.P3666283323303231413

`A047999(A186724(n))-(2-char[∑[n]])`
-/

namespace A333590.P3666283323303231413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A186724 n).toNat - (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A333590.P3666283323303231413

/-! ## A333590.P3455771370109007152

`A266619(A185144(n))-A238303(n)`
-/

namespace A333590.P3455771370109007152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 (A185144 n).toNat - A238303 n

end

end A333590.P3455771370109007152

/-! ## A333590.P16133237559352653972

`A010054(n)-A071625(A072610(n+1))`
-/

namespace A333590.P16133237559352653972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n - A071625 (A072610 (n + 1)).toNat

end

end A333590.P16133237559352653972

/-!
# A333592: a(n) = Sum_{k = 0..n} binomial(n+k-1, k)^2.

The programs for A333592, there is no canonical definition to state claims against.
-/

/-! ## A333592.P15134373368940077614

`A357671(n)-record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A333592.P15134373368940077614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357671 n : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333592.P15134373368940077614

/-! ## A333592.P14509717186616702319

`A357671(n)-A000984(n)`
-/

namespace A333592.P14509717186616702319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357671 n - A000984 n

end

end A333592.P14509717186616702319

/-! ## A333592.P4472926055009552710

`A357671(n)-record[A081668(n)]`
-/

namespace A333592.P4472926055009552710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357671 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333592.P4472926055009552710

/-! ## A333592.P10900943533236614406

`A357671(n)-record[A126869(n)]`
-/

namespace A333592.P10900943533236614406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357671 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333592.P10900943533236614406

/-! ## A333592.P2409900625579414486

`A357671(n)-record[A126930(n)]`
-/

namespace A333592.P2409900625579414486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357671 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333592.P2409900625579414486

/-! ## A333592.P17854762694275935308

`A357671(n)-A081668(2*n)`
-/

namespace A333592.P17854762694275935308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357671 n - A081668 (2 * n)

end

end A333592.P17854762694275935308

/-! ## A333592.P10719603417407457505

`A357671(n)-A126869(2*n)`
-/

namespace A333592.P10719603417407457505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357671 n - A126869 (2 * n)

end

end A333592.P10719603417407457505

/-! ## A333592.P9536168751360763869

`A357671(n)-A126930(2*n)`
-/

namespace A333592.P9536168751360763869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357671 n - A126930 (2 * n)

end

end A333592.P9536168751360763869

/-! ## A333592.P4192303686305565595

`A357672(n)/A000984(n)`
-/

namespace A333592.P4192303686305565595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357672 n : ℚ) / (A000984 n : ℚ)

end

end A333592.P4192303686305565595

/-! ## A333592.P16224588232554846163

`A357672(n)/A001405(2*n)`
-/

namespace A333592.P16224588232554846163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357672 n : ℚ) / (A001405 (2 * n) : ℚ)

end

end A333592.P16224588232554846163

/-!
# A333593: a(n) = Sum_{k = 0..n} (-1)^(n + k)*binomial(n + k - 1, k)^2.

The programs for A333593, there is no canonical definition to state claims against.
-/

/-! ## A333593.P880921474511137989

`A240808(A000097(n²))`
-/

namespace A333593.P880921474511137989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A000097 (n ^ 2)).toNat

end

end A333593.P880921474511137989

/-!
# A333596: a(0) = 0; for n > 0, a(n) = a(n-1) + (number of 1's and 3's in base-4 representation of n) - (number of 0's and 2's in base-4 representation of n).

The programs for A333596, there is no canonical definition to state claims against.
-/

/-! ## A333596.P11215231897253585598

`∑[a(floor(n/4))-(-1)^n]` with `a(0)=0`
-/

namespace A333596.P11215231897253585598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333596.P11215231897253585598

/-! ## A333596.P12227663857504429547

`∑[A334841(n)]`
-/

namespace A333596.P12227663857504429547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333596.P12227663857504429547

/-! ## A333596.P12235636383136885506

`∑[A145037(n)-a(A004526(n))]` with `a(0)=0`
-/

namespace A333596.P12235636383136885506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A145037 n - f1 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333596.P12235636383136885506

/-! ## A333596.P17873467562875499694

`∑[A139351(n)-A139351(A003817(n)-n)]`
-/

namespace A333596.P17873467562875499694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A139351 (A003817 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333596.P17873467562875499694

/-! ## A333596.P13561372978384967299

`∑[A139351(n)-A139351(n-A006257(n))]`
-/

namespace A333596.P13561372978384967299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A139351 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333596.P13561372978384967299

/-!
# A333597: The number of unit cells intersected by the circumference of a circle centered on the origin with radius squared equal to the norm of the Gaussian integers A001481(n).

The programs for A333597, there is no canonical definition to state claims against.
-/

/-! ## A333597.P5366122547091828544

`4*A234300(2*n)`
-/

namespace A333597.P5366122547091828544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A234300 (2 * n)

end

end A333597.P5366122547091828544

/-! ## A333597.P8102307522801178617

`A234300(record[and(n, n+1)])/(1/2)²`
-/

namespace A333597.P8102307522801178617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A333597.P8102307522801178617

/-! ## A333597.P11709637089051410694

`A008586(A234300(2*n))`
-/

namespace A333597.P11709637089051410694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A234300 (2 * n)).toNat

end

end A333597.P11709637089051410694

/-! ## A333597.P16422638687970126599

`A234300(record[A160016(n)])/(1/2)²`
-/

namespace A333597.P16422638687970126599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160016 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A333597.P16422638687970126599

/-! ## A333597.P10557725397885046711

`A234300(record[A199084(n+1)-1])/(1/2)²`
-/

namespace A333597.P10557725397885046711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199084 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A333597.P10557725397885046711

/-!
# A333598: Numbers m such that m! has a palindromic number of decimal digits.

The programs for A333598, there is no canonical definition to state claims against.
-/

/-! ## A333598.P13363235877051150216

`eq[1, A088601(A034886(n))]`
-/

namespace A333598.P13363235877051150216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088601 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333598.P13363235877051150216

/-! ## A333598.P1286155041595415158

`lt[A097598(A034886(n)), A025341(n+1)]`
-/

namespace A333598.P1286155041595415158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097598 (A034886 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333598.P1286155041595415158

/-! ## A333598.P12525225548068439571

`lt[A097598(A034886(n)), A097338(n+5)]`
-/

namespace A333598.P12525225548068439571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097598 (A034886 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333598.P12525225548068439571

/-!
# A333599: a(n) = Fibonacci(n) * Fibonacci(n+1) mod Fibonacci(n+2).

The programs for A333599, the canonical program `A333599.P18111296575691850080` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333599 has offset 0).

The definition of A333599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333599.P1558355616297178467

`ogf((x+3x^2-x^4)/(1+x-3x^2-3x^3+x^4+x^5))`
-/

namespace A333599.P1558355616297178467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 0, -1] [1, 1, -3, -3, 1, 1] n

end

end A333599.P1558355616297178467

namespace A333599

/-- `ogf((x+3x^2-x^4)/(1+x-3x^2-3x^3+x^4+x^5))` -/
def P1558355616297178467.Spec : Prop :=
  ∀ n, P1558355616297178467.a n = A333599 n

end A333599

/-! ## A333599.P18111296575691850080

`(A000045(n)*A000045(n+1))%A000045(n+2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A333599

/-- `(A000045(n)*A000045(n+1))%A000045(n+2)` -/
def P18111296575691850080.Spec : Prop :=
  ∀ n, P18111296575691850080.a n = A333599 n

theorem P18111296575691850080.correct : P18111296575691850080.Spec := by
  intro n
  simp only [A333599]

end A333599

/-! ## A333599.P11106424800562042394

`abs(1-A147600(n))`
-/

namespace A333599.P11106424800562042394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A147600 n|

end

end A333599.P11106424800562042394

namespace A333599

/-- `abs(1-A147600(n))` -/
def P11106424800562042394.Spec : Prop :=
  ∀ n, P11106424800562042394.a n = A333599 n

end A333599

/-! ## A333599.P10054096165373103054

`A094966(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A333599.P10054096165373103054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A094966 (n + 1) - a (n - 1)

end

end A333599.P10054096165373103054

namespace A333599

/-- `A094966(n+1)-a(n-1)` -/
def P10054096165373103054.Spec : Prop :=
  ∀ n, P10054096165373103054.a n = A333599 n

end A333599

/-! ## A333599.P9015605253748641274

`A000045(gcd(2, n)+n)-a(n-1)` with `a(0)=0`
-/

namespace A333599.P9015605253748641274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (Nat.gcd 2 n + n) - a (n - 1)

end

end A333599.P9015605253748641274

namespace A333599

/-- `A000045(gcd(2, n)+n)-a(n-1)` -/
def P9015605253748641274.Spec : Prop :=
  ∀ n, P9015605253748641274.a n = A333599 n

end A333599

/-! ## A333599.P4130178561554297139

`A000045(2-and(1, n)+n)-a(n-1)` with `a(0)=0`
-/

namespace A333599.P4130178561554297139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 - (Nat.land 1 n : ℤ) + (n : ℤ)).toNat - a (n - 1)

end

end A333599.P4130178561554297139

namespace A333599

/-- `A000045(2-and(1, n)+n)-a(n-1)` -/
def P4130178561554297139.Spec : Prop :=
  ∀ n, P4130178561554297139.a n = A333599 n

end A333599

/-! ## A333599.P13975749596606160615

`A339572(A266073(n))`
-/

namespace A333599.P13975749596606160615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (A266073 n).toNat

end

end A333599.P13975749596606160615

namespace A333599

/-- `A339572(A266073(n))` -/
def P13975749596606160615.Spec : Prop :=
  ∀ n, P13975749596606160615.a n = A333599 n

end A333599

/-! ## A333599.P3287481193438449385

`A000071(A141310(n)+1)`
-/

namespace A333599.P3287481193438449385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A141310 n + 1).toNat

end

end A333599.P3287481193438449385

namespace A333599

/-- `A000071(A141310(n)+1)` -/
def P3287481193438449385.Spec : Prop :=
  ∀ n, P3287481193438449385.a n = A333599 n

end A333599

/-! ## A333599.P2700294929728599216

`A131524(A265723(n)+1)`
-/

namespace A333599.P2700294929728599216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A265723 n + 1).toNat

end

end A333599.P2700294929728599216

namespace A333599

/-- `A131524(A265723(n)+1)` -/
def P2700294929728599216.Spec : Prop :=
  ∀ n, P2700294929728599216.a n = A333599 n

end A333599

/-! ## A333599.P14130851847378094262

`A131524(A266073(n)+1)`
-/

namespace A333599.P14130851847378094262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A266073 n + 1).toNat

end

end A333599.P14130851847378094262

namespace A333599

/-- `A131524(A266073(n)+1)` -/
def P14130851847378094262.Spec : Prop :=
  ∀ n, P14130851847378094262.a n = A333599 n

end A333599

/-! ## A333599.P4767730264585072312

`A131524(A267352(n+1))`
-/

namespace A333599.P4767730264585072312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A267352 (n + 1)).toNat

end

end A333599.P4767730264585072312

namespace A333599

/-- `A131524(A267352(n+1))` -/
def P4767730264585072312.Spec : Prop :=
  ∀ n, P4767730264585072312.a n = A333599 n

end A333599

/-! ## A333599.P16126380926149628280

`A147600(n)-A033999(n)`
-/

namespace A333599.P16126380926149628280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 n - A033999 n

end

end A333599.P16126380926149628280

namespace A333599

/-- `A147600(n)-A033999(n)` -/
def P16126380926149628280.Spec : Prop :=
  ∀ n, P16126380926149628280.a n = A333599 n

end A333599

/-! ## A333599.P16581491107604269203

`A000071(A124625(n+1)+2)`
-/

namespace A333599.P16581491107604269203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A124625 (n + 1) + 2).toNat

end

end A333599.P16581491107604269203

namespace A333599

/-- `A000071(A124625(n+1)+2)` -/
def P16581491107604269203.Spec : Prop :=
  ∀ n, P16581491107604269203.a n = A333599 n

end A333599

/-! ## A333599.P14751852197654771016

`A000045(A141310(n)+1)-1`
-/

namespace A333599.P14751852197654771016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A141310 n + 1).toNat - 1

end

end A333599.P14751852197654771016

namespace A333599

/-- `A000045(A141310(n)+1)-1` -/
def P14751852197654771016.Spec : Prop :=
  ∀ n, P14751852197654771016.a n = A333599 n

end A333599

/-! ## A333599.P4832870695042923995

`A001611(A141310(n)+1)-2`
-/

namespace A333599.P4832870695042923995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A141310 n + 1).toNat - 2

end

end A333599.P4832870695042923995

namespace A333599

/-- `A001611(A141310(n)+1)-2` -/
def P4832870695042923995.Spec : Prop :=
  ∀ n, P4832870695042923995.a n = A333599 n

end A333599

/-! ## A333599.P16856698135657427470

`A052952(n*A059841(n))-A059841(n)`
-/

namespace A333599.P16856698135657427470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 ((n : ℤ) * A059841 n).toNat - A059841 n

end

end A333599.P16856698135657427470

namespace A333599

/-- `A052952(n*A059841(n))-A059841(n)` -/
def P16856698135657427470.Spec : Prop :=
  ∀ n, P16856698135657427470.a n = A333599 n

end A333599

/-! ## A333599.P14277676215094280221

`A109794(n*A059841(n))-A059841(n)`
-/

namespace A333599.P14277676215094280221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 ((n : ℤ) * A059841 n).toNat - A059841 n

end

end A333599.P14277676215094280221

namespace A333599

/-- `A109794(n*A059841(n))-A059841(n)` -/
def P14277676215094280221.Spec : Prop :=
  ∀ n, P14277676215094280221.a n = A333599 n

end A333599

/-! ## A333599.P3512556587568357470

`A008346(n+1)+A033999(n)*A094966(n)`
-/

namespace A333599.P3512556587568357470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (n + 1) + A033999 n * A094966 n

end

end A333599.P3512556587568357470

namespace A333599

/-- `A008346(n+1)+A033999(n)*A094966(n)` -/
def P3512556587568357470.Spec : Prop :=
  ∀ n, P3512556587568357470.a n = A333599 n

end A333599

/-! ## A333599.P10831128707687643484

`A008346(n+1)-A094966(n)/A033999(n+1)`
-/

namespace A333599.P10831128707687643484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008346 (n + 1) : ℚ) - (A094966 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A333599.P10831128707687643484

namespace A333599

/-- `A008346(n+1)-A094966(n)/A033999(n+1)` -/
def P10831128707687643484.Spec : Prop :=
  ∀ n, P10831128707687643484.a n = (A333599 n : ℚ)

end A333599

/-! ## A333599.P5200221510084790548

`∑[a(n-1)+a(n-2)]^((n+1)%2)` with `a(0)=0, a(1)=1`
-/

namespace A333599.P5200221510084790548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ ((n + 1) % 2)

end

end A333599.P5200221510084790548

namespace A333599

/-- `∑[a(n-1)+a(n-2)]^((n+1)%2)` -/
def P5200221510084790548.Spec : Prop :=
  ∀ n, (P5200221510084790548.a n : ℤ) = A333599 n

end A333599

