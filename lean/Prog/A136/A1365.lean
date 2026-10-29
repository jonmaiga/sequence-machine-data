import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A136500: Solution of the complementary equation b(n)=a(a(n))+a(n)+1; this is the sequence b. Sequence a is A136499.

The programs for A136500, there is no canonical definition to state claims against.
-/

/-! ## A136500.P5826955175235022284

`A136499(n+1)+A136499(A136499(n+1))+1`
-/

namespace A136500.P5826955175235022284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136499 (n + 1) + (A136499 (A136499 (n + 1)).toNat + 1)

end

end A136500.P5826955175235022284

/-! ## A136500.P6495840931518955871

`eq[char[A136499(n+1)], A151933(n)]`
-/

namespace A136500.P6495840931518955871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136499 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A136500.P6495840931518955871

/-!
# A136501: Triangle, read by rows, where T(n,k) = C(2^k,n-k) for n>=k>=0.

The programs for A136501, the canonical program `A136501.P15016635335707206885` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136501 has offset 0).

The definition of A136501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^col(n), row(n)-col(n))` (program `A136501.P15016635335707206885`, by `A136501.P15016635335707206885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136501.P15016635335707206885

`C(2^col(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136501

/-- `C(2^col(n), row(n)-col(n))` -/
def P15016635335707206885.Spec : Prop :=
  ∀ n, (P15016635335707206885.a n : ℤ) = A136501 n

theorem P15016635335707206885.correct : P15016635335707206885.Spec := by
  intro n
  simp only [A136501]

end A136501

/-! ## A136501.P17890335393918635826

`C(A059268(n), A025581(n))`
-/

namespace A136501.P17890335393918635826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059268 n).toNat (A025581 n).toNat

end

end A136501.P17890335393918635826

namespace A136501

/-- `C(A059268(n), A025581(n))` -/
def P17890335393918635826.Spec : Prop :=
  ∀ n, (P17890335393918635826.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P10317399955706039589

`C(A059268(n), log2(A130321(n)))`
-/

namespace A136501.P10317399955706039589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059268 n).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A136501.P10317399955706039589

namespace A136501

/-- `C(A059268(n), log2(A130321(n)))` -/
def P10317399955706039589.Spec : Prop :=
  ∀ n, (P10317399955706039589.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P14443049637388399277

`C(Δ[A173786(n)], A025581(n))`
-/

namespace A136501.P14443049637388399277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A025581 n).toNat

end

end A136501.P14443049637388399277

namespace A136501

/-- `C(Δ[A173786(n)], A025581(n))` -/
def P14443049637388399277.Spec : Prop :=
  ∀ n, (P14443049637388399277.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P1580890240239557126

`C(A059268(n), A004736(n+1)-1)`
-/

namespace A136501.P1580890240239557126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059268 n).toNat (A004736 (n + 1) - 1).toNat

end

end A136501.P1580890240239557126

namespace A136501

/-- `C(A059268(n), A004736(n+1)-1)` -/
def P1580890240239557126.Spec : Prop :=
  ∀ n, (P1580890240239557126.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P5156519809181719105

`C(A000079(A002262(n)), A025581(n))`
-/

namespace A136501.P5156519809181719105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000079 (A002262 n).toNat).toNat (A025581 n).toNat

end

end A136501.P5156519809181719105

namespace A136501

/-- `C(A000079(A002262(n)), A025581(n))` -/
def P5156519809181719105.Spec : Prop :=
  ∀ n, (P5156519809181719105.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P13213045216764422186

`C(A059268(n), A002262(A061579(n)))`
-/

namespace A136501.P13213045216764422186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059268 n).toNat (A002262 (A061579 n).toNat).toNat

end

end A136501.P13213045216764422186

namespace A136501

/-- `C(A059268(n), A002262(A061579(n)))` -/
def P13213045216764422186.Spec : Prop :=
  ∀ n, (P13213045216764422186.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P2628011861162175446

`C(A059268(n), A004524(A099375(n)))`
-/

namespace A136501.P2628011861162175446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059268 n).toNat (A004524 (A099375 n).toNat).toNat

end

end A136501.P2628011861162175446

namespace A136501

/-- `C(A059268(n), A004524(A099375(n)))` -/
def P2628011861162175446.Spec : Prop :=
  ∀ n, (P2628011861162175446.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P6850720771416855673

`C(A130321(A061579(n)), A025581(n))`
-/

namespace A136501.P6850720771416855673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130321 (A061579 n).toNat).toNat (A025581 n).toNat

end

end A136501.P6850720771416855673

namespace A136501

/-- `C(A130321(A061579(n)), A025581(n))` -/
def P6850720771416855673.Spec : Prop :=
  ∀ n, (P6850720771416855673.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P4278625552374998292

`C(A059268(n), A059252(A163359(n)))`
-/

namespace A136501.P4278625552374998292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059268 n).toNat (A059252 (A163359 n).toNat).toNat

end

end A136501.P4278625552374998292

namespace A136501

/-- `C(A059268(n), A059252(A163359(n)))` -/
def P4278625552374998292.Spec : Prop :=
  ∀ n, (P4278625552374998292.a n : ℤ) = A136501 n

end A136501

/-! ## A136501.P8124928763826206412

`C(A011782(A002260(n+1)), A025581(n))`
-/

namespace A136501.P8124928763826206412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A011782 (A002260 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A136501.P8124928763826206412

namespace A136501

/-- `C(A011782(A002260(n+1)), A025581(n))` -/
def P8124928763826206412.Spec : Prop :=
  ∀ n, (P8124928763826206412.a n : ℤ) = A136501 n

end A136501

/-!
# A136503: Column 2 of triangle A136502.

The programs for A136503, there is no canonical definition to state claims against.
-/

/-! ## A136503.P15791155548604726578

`A136502(∑[n+2]+3)`
-/

namespace A136503.P15791155548604726578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136502 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A136503.P15791155548604726578

/-!
# A136504: Row sums of triangle A136502.

The programs for A136504, there is no canonical definition to state claims against.
-/

/-! ## A136504.P11645608152140906574

`A165960(n)-A124790(A022130(n))`
-/

namespace A136504.P11645608152140906574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165960 n - A124790 (A022130 n).toNat

end

end A136504.P11645608152140906574

/-!
# A136505: a(n) = binomial(2^n + 1, n).

The programs for A136505, the canonical program `A136505.P12006293940165409054` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136505 has offset 0).

The definition of A136505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^n+1, n)` (program `A136505.P12006293940165409054`, by `A136505.P12006293940165409054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136505.P12006293940165409054

`C(2^n+1, n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136505

/-- `C(2^n+1, n)` -/
def P12006293940165409054.Spec : Prop :=
  ∀ n, (P12006293940165409054.a n : ℤ) = A136505 n

theorem P12006293940165409054.correct : P12006293940165409054.Spec := by
  intro n
  simp only [A136505]

end A136505

/-! ## A136505.P5640968849077900030

`record[C(A052552(n), A085062(n))]`
-/

namespace A136505.P5640968849077900030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052552 n).toNat (A085062 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136505.P5640968849077900030

namespace A136505

/-- `record[C(A052552(n), A085062(n))]` -/
def P5640968849077900030.Spec : Prop :=
  ∀ n, (P5640968849077900030.a n : ℤ) = A136505 n

end A136505

/-! ## A136505.P9060030130967997127

`record[C(A052552(n), A110654(n))]`
-/

namespace A136505.P9060030130967997127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052552 n).toNat (A110654 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136505.P9060030130967997127

namespace A136505

/-- `record[C(A052552(n), A110654(n))]` -/
def P9060030130967997127.Spec : Prop :=
  ∀ n, (P9060030130967997127.a n : ℤ) = A136505 n

end A136505

/-! ## A136505.P5321137771805523125

`record[C(A173786(n), A025581(n))]`
-/

namespace A136505.P5321137771805523125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173786 n).toNat (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136505.P5321137771805523125

namespace A136505

/-- `record[C(A173786(n), A025581(n))]` -/
def P5321137771805523125.Spec : Prop :=
  ∀ n, (P5321137771805523125.a n : ℤ) = A136505 n

end A136505

/-! ## A136505.P13722291367763029574

`A136555(∑[n+3])`
-/

namespace A136505.P13722291367763029574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136555 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136505.P13722291367763029574

namespace A136505

/-- `A136555(∑[n+3])` -/
def P13722291367763029574.Spec : Prop :=
  ∀ n, P13722291367763029574.a n = A136505 n

end A136505

/-!
# A136506: a(n) = binomial(2^n + 2, n).

The programs for A136506, the canonical program `A136506.P7590345047165642179` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136506 has offset 0).

The definition of A136506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^n+2, n)` (program `A136506.P7590345047165642179`, by `A136506.P7590345047165642179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136506.P7590345047165642179

`C(2^n+2, n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136506

/-- `C(2^n+2, n)` -/
def P7590345047165642179.Spec : Prop :=
  ∀ n, (P7590345047165642179.a n : ℤ) = A136506 n

theorem P7590345047165642179.correct : P7590345047165642179.Spec := by
  intro n
  simp only [A136506]

end A136506

/-! ## A136506.P1030365947127013721

`record[C(A173786(n+1), A025581(n))]`
-/

namespace A136506.P1030365947127013721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173786 (n + 1)).toNat (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136506.P1030365947127013721

namespace A136506

/-- `record[C(A173786(n+1), A025581(n))]` -/
def P1030365947127013721.Spec : Prop :=
  ∀ n, (P1030365947127013721.a n : ℤ) = A136506 n

end A136506

/-! ## A136506.P6496098935931052549

`A136555(∑[n+3]+n+3)`
-/

namespace A136506.P6496098935931052549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136555 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A136506.P6496098935931052549

namespace A136506

/-- `A136555(∑[n+3]+n+3)` -/
def P6496098935931052549.Spec : Prop :=
  ∀ n, P6496098935931052549.a n = A136506 n

end A136506

/-! ## A136506.P9134691804514932110

`record[C(n+3, val(n+1, 2))]`
-/

namespace A136506.P9134691804514932110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136506.P9134691804514932110

namespace A136506

/-- `record[C(n+3, val(n+1, 2))]` -/
def P9134691804514932110.Spec : Prop :=
  ∀ n, (P9134691804514932110.a n : ℤ) = A136506 n

end A136506

/-! ## A136506.P2371748320660524013

`record[C(A103517(n), A268726(n))]`
-/

namespace A136506.P2371748320660524013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A103517 n).toNat (A268726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136506.P2371748320660524013

namespace A136506

/-- `record[C(A103517(n), A268726(n))]` -/
def P2371748320660524013.Spec : Prop :=
  ∀ n, (P2371748320660524013.a n : ℤ) = A136506 n

end A136506

/-!
# A136507: a(n) = Sum_{k=0..n} binomial(2^(n-k) + k, n-k).

The programs for A136507, the canonical program `A136507.P9759324895138345690` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136507 has offset 0).

The definition of A136507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2^(n-#)+#, n-#)]` (program `A136507.P9759324895138345690`, by `A136507.P9759324895138345690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136507.P9759324895138345690

`∑{#}[n, C(2^(n-#)+#, n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136507

/-- `∑{#}[n, C(2^(n-#)+#, n-#)]` -/
def P9759324895138345690.Spec : Prop :=
  ∀ n, (P9759324895138345690.a n : ℤ) = A136507 n

theorem P9759324895138345690.correct : P9759324895138345690.Spec := by
  intro n
  simp only [A136507]

end A136507

/-! ## A136507.P17828160505713151881

`A136557(n+1)-A136556(n+1)`
-/

namespace A136507.P17828160505713151881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136557 (n + 1) - A136556 (n + 1)

end

end A136507.P17828160505713151881

namespace A136507

/-- `A136557(n+1)-A136556(n+1)` -/
def P17828160505713151881.Spec : Prop :=
  ∀ n, P17828160505713151881.a n = A136507 n

end A136507

/-!
# A136508: G.f.: A(x) = Sum_{n>=0} (-1)^n * log(1 - x - 2^n*x^2)^n / n! .

The programs for A136508, there is no canonical definition to state claims against.
-/

/-! ## A136508.P3208536471989825245

`A318690(A001452(n))`
-/

namespace A136508.P3208536471989825245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318690 (A001452 n).toNat

end

end A136508.P3208536471989825245

/-! ## A136508.P9159423879178356115

`A322553(A165137(n))`
-/

namespace A136508.P9159423879178356115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (A165137 n).toNat

end

end A136508.P9159423879178356115

/-! ## A136508.P3087698985797464639

`A322553(A328693(n))`
-/

namespace A136508.P3087698985797464639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (A328693 n).toNat

end

end A136508.P3087698985797464639

/-!
# A136509: G.f.: A(x) = Sum_{n>=0} (-1)^n * (1 -x -2^n*x^2)^(-1) * log(1 -x -2^n*x^2)^n / n!.

The programs for A136509, there is no canonical definition to state claims against.
-/

/-! ## A136509.P10690221268489098847

`A149052(n)+A123580(A000225(n))`
-/

namespace A136509.P10690221268489098847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149052 n + A123580 (A000225 n).toNat

end

end A136509.P10690221268489098847

/-! ## A136509.P4467720212783364596

`A106432(A057553(n+1))`
-/

namespace A136509.P4467720212783364596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A057553 (n + 1)).toNat

end

end A136509.P4467720212783364596

/-!
# A136510: Smallest k>1 such that in binary representation n is contained in n^k.

The programs for A136510, there is no canonical definition to state claims against.
-/

/-! ## A136510.P1346574283588709466

`A086063(ceil(acot(n)+n))`
-/

namespace A136510.P1346574283588709466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A136510.P1346574283588709466

/-! ## A136510.P3982934127764380451

`floor(A086063(n+1)+acot(n))`
-/

namespace A136510.P3982934127764380451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086063 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A136510.P3982934127764380451

/-! ## A136510.P11025740245339779049

`A086063(C(2, n²)+n+1)`
-/

namespace A136510.P11025740245339779049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (Nat.choose 2 (n ^ 2) + (n + 1))

end

end A136510.P11025740245339779049

/-! ## A136510.P5348738496913811604

`A086063(ceil(2/(n+1)+n))`
-/

namespace A136510.P5348738496913811604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 ⌈2 / (n + 1 : ℚ) + (n : ℚ)⌉.toNat

end

end A136510.P5348738496913811604

/-! ## A136510.P3373203005124526772

`A254667(A086063(n+1))`
-/

namespace A136510.P3373203005124526772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A086063 (n + 1)).toNat

end

end A136510.P3373203005124526772

/-! ## A136510.P16465693570569193841

`A233583(A086063(n+1)+1)`
-/

namespace A136510.P16465693570569193841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A086063 (n + 1) + 1).toNat

end

end A136510.P16465693570569193841

/-! ## A136510.P2893743215054320705

`A086063(n+1)+A000007(n)`
-/

namespace A136510.P2893743215054320705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) + A000007 n

end

end A136510.P2893743215054320705

/-! ## A136510.P11013172373005273080

`A000038(n)!*A086063(n+1)`
-/

namespace A136510.P11013172373005273080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A086063 (n + 1)

end

end A136510.P11013172373005273080

/-! ## A136510.P15787153039371439219

`A086063(n+1)+and(1, A028607(n))`
-/

namespace A136510.P15787153039371439219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) + Int.land 1 (A028607 n)

end

end A136510.P15787153039371439219

/-! ## A136510.P7821939968182993565

`A086063(n+1)+A010051(2*(n+1))`
-/

namespace A136510.P7821939968182993565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) + A010051 (2 * (n + 1))

end

end A136510.P7821939968182993565

/-! ## A136510.P2406297439906019407

`A086063(n+1)+val(A000040(n+1), 2)`
-/

namespace A136510.P2406297439906019407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A136510.P2406297439906019407

/-! ## A136510.P7253854308887051668

`A086063(n+1)+and(1, A000010(n+2))`
-/

namespace A136510.P7253854308887051668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) + Int.land 1 (A000010 (n + 2))

end

end A136510.P7253854308887051668

/-! ## A136510.P8259584287868309562

`A086063(n+1)+C(2, A000005(2*(n+1)))`
-/

namespace A136510.P8259584287868309562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) + (Nat.choose 2 (A000005 (2 * (n + 1))).toNat : ℤ)

end

end A136510.P8259584287868309562

/-! ## A136510.P7277064776698980081

`A086063(n+1)+A008683(A008653(n))`
-/

namespace A136510.P7277064776698980081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) + A008683 (A008653 n).toNat

end

end A136510.P7277064776698980081

/-! ## A136510.P12592844142178766285

`A086063(n+1)/A001221(a(A001221(n)))` with `a(0)=2`
-/

namespace A136510.P12592844142178766285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A086063 (n + 1) : ℚ) / (A001221 (SequenceMachineLib.roundAway (a (A001221 n).toNat)).toNat : ℚ)

end

end A136510.P12592844142178766285

/-! ## A136510.P11923384343898776608

`A086063(n+1)+C(A000045(n+1), A000045(2*n+1))`
-/

namespace A136510.P11923384343898776608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) + (Nat.choose (A000045 (n + 1)).toNat (A000045 (2 * n + 1)).toNat : ℤ)

end

end A136510.P11923384343898776608

/-! ## A136510.P9414386684378421002

`A086063(n+1)-A008683(A035008(n)+2)`
-/

namespace A136510.P9414386684378421002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 (n + 1) - A008683 (A035008 n + 2).toNat

end

end A136510.P9414386684378421002

/-!
# A136511: Smallest power of n containing it in binary representation.

The programs for A136511, there is no canonical definition to state claims against.
-/

/-! ## A136511.P12132387083177683720

`(n+1)^A086063(n+1)`
-/

namespace A136511.P12132387083177683720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A086063 (n + 1) : ℤ)

end

end A136511.P12132387083177683720

/-! ## A136511.P18305649154927602172

`(n+1)^A136510(n+1)`
-/

namespace A136511.P18305649154927602172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A136510 (n + 1) : ℤ)

end

end A136511.P18305649154927602172

/-! ## A136511.P7771475943963269453

`A094543(n+1)`
-/

namespace A136511.P7771475943963269453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094543 (n + 1)

end

end A136511.P7771475943963269453

/-! ## A136511.P8308081103425956563

`∑[or(1, Δ[A094543(n)])]`
-/

namespace A136511.P8308081103425956563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136511.P8308081103425956563

/-! ## A136511.P2553572474234747451

`A007318(C(2, n))*A094543(Δ[n²]-n)`
-/

namespace A136511.P2553572474234747451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A094543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A136511.P2553572474234747451

/-!
# A136512: Produced by same formula that gives A093934 (signed tournaments), but with LCM instead of GCD in the exponent.

The programs for A136512, there is no canonical definition to state claims against.
-/

/-! ## A136512.P7418939527537793668

`A108504(A364336(n)+n)`
-/

namespace A136512.P7418939527537793668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108504 (A364336 n + (n : ℤ)).toNat

end

end A136512.P7418939527537793668

/-! ## A136512.P11308993326867732403

`∏{e}[n+1, #+1]*A379046(A124344(n+1))`
-/

namespace A136512.P11308993326867732403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A379046 (A124344 (n + 1)).toNat

end

end A136512.P11308993326867732403

/-!
# A136513: Number of unit square lattice cells inside half-plane (two adjacent quadrants) of origin centered circle of diameter n.

The programs for A136513, the canonical program `A136513.P11216211348429770474` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136513 has offset 1).

The definition of A136513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136513.P11216211348429770474

`2*A136483(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136513

/-- `2*A136483(n+1)` -/
def P11216211348429770474.Spec : Prop :=
  ∀ n, P11216211348429770474.a n = A136513 (n + 1)

theorem P11216211348429770474.correct : P11216211348429770474.Spec := by
  intro n
  simp only [A136513, Nat.add_sub_cancel]

end A136513

/-! ## A136513.P5111179118000284904

`1/2*A136485(n+1)`
-/

namespace A136513.P5111179118000284904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A136485 (n + 1) : ℚ)

end

end A136513.P5111179118000284904

namespace A136513

/-- `1/2*A136485(n+1)` -/
def P5111179118000284904.Spec : Prop :=
  ∀ n, P5111179118000284904.a n = (A136513 (n + 1) : ℚ)

theorem P5111179118000284904.correct : P5111179118000284904.Spec := by
  intro n
  simp only [A136513, Nat.add_sub_cancel, A136513.P5111179118000284904.a, A136513.P11216211348429770474.a, A136483, A136483.P16439643101318144746.f1, A136483.P16439643101318144746.a, A136485, A136485.P8885834230539721879.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136513

/-! ## A136513.P10873940930513045041

`2*∑{#}[floor((n+1)/2)-1, floor(sqrt(((n+1)/2)²-(#+1)²))]`
-/

namespace A136513.P10873940930513045041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊Real.sqrt (((n + 1 : ℚ) / 2) ^ 2 - ((k + 1) ^ 2 : ℚ) : ℝ)⌋)

end

end A136513.P10873940930513045041

namespace A136513

/-- `2*∑{#}[floor((n+1)/2)-1, floor(sqrt(((n+1)/2)²-(#+1)²))]` -/
def P10873940930513045041.Spec : Prop :=
  ∀ n, P10873940930513045041.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P7452750609359236807

`A136485(n+1)/2`
-/

namespace A136513.P7452750609359236807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136485 (n + 1) : ℚ) / 2

end

end A136513.P7452750609359236807

namespace A136513

/-- `A136485(n+1)/2` -/
def P7452750609359236807.Spec : Prop :=
  ∀ n, P7452750609359236807.a n = (A136513 (n + 1) : ℚ)

theorem P7452750609359236807.correct : P7452750609359236807.Spec := by
  intro n
  simp only [A136513, Nat.add_sub_cancel, A136513.P7452750609359236807.a, A136513.P11216211348429770474.a, A136483, A136483.P16439643101318144746.f1, A136483.P16439643101318144746.a, A136485, A136485.P8885834230539721879.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136513

/-! ## A136513.P4066621152869302218

`A136485(n+1)-A136483(n+1)-A136483(n+1)`
-/

namespace A136513.P4066621152869302218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136485 (n + 1) - A136483 (n + 1) - A136483 (n + 1)

end

end A136513.P4066621152869302218

namespace A136513

/-- `A136485(n+1)-A136483(n+1)-A136483(n+1)` -/
def P4066621152869302218.Spec : Prop :=
  ∀ n, P4066621152869302218.a n = A136513 (n + 1)

theorem P4066621152869302218.correct : P4066621152869302218.Spec := by
  intro n
  simp only [A136513, Nat.add_sub_cancel, A136513.P4066621152869302218.a, A136513.P11216211348429770474.a, A136483, A136483.P16439643101318144746.f1, A136483.P16439643101318144746.a, A136485, A136485.P8885834230539721879.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136513

/-! ## A136513.P1923939865222862818

`2*ceil(∑[(Δ[A053411(n)]-2)/2]/2)`
-/

namespace A136513.P1923939865222862818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n - 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌉

end

end A136513.P1923939865222862818

namespace A136513

/-- `2*ceil(∑[(Δ[A053411(n)]-2)/2]/2)` -/
def P1923939865222862818.Spec : Prop :=
  ∀ n, P1923939865222862818.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P7962547315616005439

`((-1)^n+A053411(n+1)-2*(n+1))/2`
-/

namespace A136513.P7962547315616005439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + (A053411 (n + 1) - (2 * (n + 1) : ℤ)) : ℚ) / 2

end

end A136513.P7962547315616005439

namespace A136513

/-- `((-1)^n+A053411(n+1)-2*(n+1))/2` -/
def P7962547315616005439.Spec : Prop :=
  ∀ n, P7962547315616005439.a n = (A136513 (n + 1) : ℚ)

end A136513

/-! ## A136513.P15684075871186312777

`2*(A333573(n+1)-ceil(n/2))`
-/

namespace A136513.P15684075871186312777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A333573 (n + 1) - ⌈(n : ℚ) / 2⌉)

end

end A136513.P15684075871186312777

namespace A136513

/-- `2*(A333573(n+1)-ceil(n/2))` -/
def P15684075871186312777.Spec : Prop :=
  ∀ n, P15684075871186312777.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P6286376491932437260

`(A333572(n+1)-A168273(n+1))/2`
-/

namespace A136513.P6286376491932437260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333572 (n + 1) - A168273 (n + 1) : ℚ) / 2

end

end A136513.P6286376491932437260

namespace A136513

/-- `(A333572(n+1)-A168273(n+1))/2` -/
def P6286376491932437260.Spec : Prop :=
  ∀ n, P6286376491932437260.a n = (A136513 (n + 1) : ℚ)

end A136513

/-! ## A136513.P13930842002846757230

`A005843(A136483(n+1))`
-/

namespace A136513.P13930842002846757230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A136483 (n + 1)).toNat

end

end A136513.P13930842002846757230

namespace A136513

/-- `A005843(A136483(n+1))` -/
def P13930842002846757230.Spec : Prop :=
  ∀ n, P13930842002846757230.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P10993832825317624045

`2*A237526(∑[∑[n%2]])`
-/

namespace A136513.P10993832825317624045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136513.P10993832825317624045

namespace A136513

/-- `2*A237526(∑[∑[n%2]])` -/
def P10993832825317624045.Spec : Prop :=
  ∀ n, P10993832825317624045.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P3361997199092030571

`2*A237526(floor(cosh(log(n+1))²))`
-/

namespace A136513.P3361997199092030571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237526 ⌊Real.cosh (Real.log (n + 1 : ℝ)) ^ 2⌋.toNat

end

end A136513.P3361997199092030571

namespace A136513

/-- `2*A237526(floor(cosh(log(n+1))²))` -/
def P3361997199092030571.Spec : Prop :=
  ∀ n, P3361997199092030571.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P4976089408612460243

`2*A237526(A002620(n+1))`
-/

namespace A136513.P4976089408612460243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237526 (A002620 (n + 1)).toNat

end

end A136513.P4976089408612460243

namespace A136513

/-- `2*A237526(A002620(n+1))` -/
def P4976089408612460243.Spec : Prop :=
  ∀ n, P4976089408612460243.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P11532707228153253256

`2*A237526(A076921(n+1))`
-/

namespace A136513.P11532707228153253256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237526 (A076921 (n + 1)).toNat

end

end A136513.P11532707228153253256

namespace A136513

/-- `2*A237526(A076921(n+1))` -/
def P11532707228153253256.Spec : Prop :=
  ∀ n, P11532707228153253256.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P5241223904106882570

`2*A237526(A182531(n+1))`
-/

namespace A136513.P5241223904106882570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237526 (A182531 (n + 1)).toNat

end

end A136513.P5241223904106882570

namespace A136513

/-- `2*A237526(A182531(n+1))` -/
def P5241223904106882570.Spec : Prop :=
  ∀ n, P5241223904106882570.a n = A136513 (n + 1)

end A136513

/-! ## A136513.P3646238952158854235

`A001281(A136485(n+1))`
-/

namespace A136513.P3646238952158854235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A136485 (n + 1)).toNat

end

end A136513.P3646238952158854235

namespace A136513

/-- `A001281(A136485(n+1))` -/
def P3646238952158854235.Spec : Prop :=
  ∀ n, P3646238952158854235.a n = A136513 (n + 1)

end A136513

/-!
# A136514: Number of unit square lattice cells inside half-plane (two adjacent quadrants) of origin centered circle of radius n.

The programs for A136514, the canonical program `A136514.P3670584216684730717` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136514 has offset 1).

The definition of A136514 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001182, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136514.P3670584216684730717

`2*A001182(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A136514

/-- `2*A001182(n+1)` -/
def P3670584216684730717.Spec : Prop :=
  ∀ n, P3670584216684730717.a n = A136514 (n + 1)

theorem P3670584216684730717.correct : P3670584216684730717.Spec := by
  intro n
  simp only [A136514, Nat.add_sub_cancel]

end A136514

/-! ## A136514.P1338849457455894674

`A136513(2*(n+1))`
-/

namespace A136514.P1338849457455894674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136513 (2 * (n + 1))

end

end A136514.P1338849457455894674

namespace A136514

/-- `A136513(2*(n+1))` -/
def P1338849457455894674.Spec : Prop :=
  ∀ n, P1338849457455894674.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P13983620825131464164

`Δ[2*A211636(n)]`
-/

namespace A136514.P13983620825131464164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136514.P13983620825131464164

namespace A136514

/-- `Δ[2*A211636(n)]` -/
def P13983620825131464164.Spec : Prop :=
  ∀ n, P13983620825131464164.a n = A136514 (n + 1)

theorem P13983620825131464164.correct : P13983620825131464164.Spec := by
  intro n
  simp only [A136514, Nat.add_sub_cancel, A136514.P13983620825131464164.f1, A136514.P13983620825131464164.a, A136514.P3670584216684730717.a, A001182, A001182.P18331014380152811402.f1, A001182.P18331014380152811402.a, A211636, A211636.P2652783068528798878.f1, A211636.P2652783068528798878.a, A036698, A036698.P3152835247264100802.a, A014200, A014200.P16970295702573526038.a, A014198, A014198.P2354480518814049901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136514

/-! ## A136514.P13281050010655495402

`A119677(n+1)/2`
-/

namespace A136514.P13281050010655495402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119677 (n + 1) : ℚ) / 2

end

end A136514.P13281050010655495402

namespace A136514

/-- `A119677(n+1)/2` -/
def P13281050010655495402.Spec : Prop :=
  ∀ n, P13281050010655495402.a n = (A136514 (n + 1) : ℚ)

end A136514

/-! ## A136514.P124550903075850200

`∑[Δ[A000328(n)/2]-2]`
-/

namespace A136514.P124550903075850200
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000328 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136514.P124550903075850200

namespace A136514

/-- `∑[Δ[A000328(n)/2]-2]` -/
def P124550903075850200.Spec : Prop :=
  ∀ n, P124550903075850200.a n = (A136514 (n + 1) : ℚ)

end A136514

/-! ## A136514.P4288968699792507566

`∑[2*(A036694(n+1)-1)]`
-/

namespace A136514.P4288968699792507566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036694 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136514.P4288968699792507566

namespace A136514

/-- `∑[2*(A036694(n+1)-1)]` -/
def P4288968699792507566.Spec : Prop :=
  ∀ n, P4288968699792507566.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P7289381606738959573

`A001182(A000027(n+1))+A001182(n+1)`
-/

namespace A136514.P7289381606738959573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001182 (A000027 (n + 1)).toNat + A001182 (n + 1)

end

end A136514.P7289381606738959573

namespace A136514

/-- `A001182(A000027(n+1))+A001182(n+1)` -/
def P7289381606738959573.Spec : Prop :=
  ∀ n, P7289381606738959573.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P9111017456027521297

`A119677(n+1)-A001182(n+1)-A001182(n+1)`
-/

namespace A136514.P9111017456027521297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119677 (n + 1) - A001182 (n + 1) - A001182 (n + 1)

end

end A136514.P9111017456027521297

namespace A136514

/-- `A119677(n+1)-A001182(n+1)-A001182(n+1)` -/
def P9111017456027521297.Spec : Prop :=
  ∀ n, P9111017456027521297.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P10011777713502799863

`∑[Δ[A036695(n)]-3]`
-/

namespace A136514.P10011777713502799863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136514.P10011777713502799863

namespace A136514

/-- `∑[Δ[A036695(n)]-3]` -/
def P10011777713502799863.Spec : Prop :=
  ∀ n, P10011777713502799863.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P16258414482243394765

`∑[A036696(n+1)-3]`
-/

namespace A136514.P16258414482243394765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036696 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136514.P16258414482243394765

namespace A136514

/-- `∑[A036696(n+1)-3]` -/
def P16258414482243394765.Spec : Prop :=
  ∀ n, P16258414482243394765.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P9256605870470941234

`∑[2*(Δ[A000603(n)]-2)]`
-/

namespace A136514.P9256605870470941234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136514.P9256605870470941234

namespace A136514

/-- `∑[2*(Δ[A000603(n)]-2)]` -/
def P9256605870470941234.Spec : Prop :=
  ∀ n, P9256605870470941234.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P11788443724486014514

`∑[2*Δ[∑[A036694(n)]-n]]`
-/

namespace A136514.P11788443724486014514
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136514.P11788443724486014514

namespace A136514

/-- `∑[2*Δ[∑[A036694(n)]-n]]` -/
def P11788443724486014514.Spec : Prop :=
  ∀ n, P11788443724486014514.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P15606516470376799161

`2*(A036698(n+1)-(n+1))`
-/

namespace A136514.P15606516470376799161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036698 (n + 1) - (n + 1 : ℤ))

end

end A136514.P15606516470376799161

namespace A136514

/-- `2*(A036698(n+1)-(n+1))` -/
def P15606516470376799161.Spec : Prop :=
  ∀ n, P15606516470376799161.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P277147676717413258

`2*(A000603(n+1)-(2*n+3))`
-/

namespace A136514.P277147676717413258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000603 (n + 1) - (2 * n + 3 : ℤ))

end

end A136514.P277147676717413258

namespace A136514

/-- `2*(A000603(n+1)-(2*n+3))` -/
def P277147676717413258.Spec : Prop :=
  ∀ n, P277147676717413258.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P4519739887684400036

`(A000328(n+1)-A016813(n+1))/2`
-/

namespace A136514.P4519739887684400036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000328 (n + 1) - A016813 (n + 1) : ℚ) / 2

end

end A136514.P4519739887684400036

namespace A136514

/-- `(A000328(n+1)-A016813(n+1))/2` -/
def P4519739887684400036.Spec : Prop :=
  ∀ n, P4519739887684400036.a n = (A136514 (n + 1) : ℚ)

end A136514

/-! ## A136514.P2102144319952363036

`2*A136483(2*(n+1))`
-/

namespace A136514.P2102144319952363036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136483 (2 * (n + 1))

end

end A136514.P2102144319952363036

namespace A136514

/-- `2*A136483(2*(n+1))` -/
def P2102144319952363036.Spec : Prop :=
  ∀ n, P2102144319952363036.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P12093937822880930850

`A136485(2*(n+1))/2`
-/

namespace A136514.P12093937822880930850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136485 (2 * (n + 1)) : ℚ) / 2

end

end A136514.P12093937822880930850

namespace A136514

/-- `A136485(2*(n+1))/2` -/
def P12093937822880930850.Spec : Prop :=
  ∀ n, P12093937822880930850.a n = (A136514 (n + 1) : ℚ)

end A136514

/-! ## A136514.P6886900023467850794

`A261849(2*(n+1))/2`
-/

namespace A136514.P6886900023467850794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261849 (2 * (n + 1)) : ℚ) / 2

end

end A136514.P6886900023467850794

namespace A136514

/-- `A261849(2*(n+1))/2` -/
def P6886900023467850794.Spec : Prop :=
  ∀ n, P6886900023467850794.a n = (A136514 (n + 1) : ℚ)

end A136514

/-! ## A136514.P1436686791427162843

`2*(A333573(2*(n+1))-(n+1))`
-/

namespace A136514.P1436686791427162843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A333573 (2 * (n + 1)) - (n + 1 : ℤ))

end

end A136514.P1436686791427162843

namespace A136514

/-- `2*(A333573(2*(n+1))-(n+1))` -/
def P1436686791427162843.Spec : Prop :=
  ∀ n, P1436686791427162843.a n = A136514 (n + 1)

end A136514

/-! ## A136514.P14842094369840687417

`(A333572(2*(n+1))-4*(n+1))/2`
-/

namespace A136514.P14842094369840687417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333572 (2 * (n + 1)) - (4 * (n + 1) : ℤ) : ℚ) / 2

end

end A136514.P14842094369840687417

namespace A136514

/-- `(A333572(2*(n+1))-4*(n+1))/2` -/
def P14842094369840687417.Spec : Prop :=
  ∀ n, P14842094369840687417.a n = (A136514 (n + 1) : ℚ)

end A136514

/-!
# A136515: Number of unit square lattice cells inside half-plane (two adjacent quadrants) of origin centered circle of diameter 2n+1.

The programs for A136515, the canonical program `A136515.P2899484087255744926` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136515 has offset 0).

The definition of A136515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136515.P2899484087255744926

`2*A136484(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136515

/-- `2*A136484(n)` -/
def P2899484087255744926.Spec : Prop :=
  ∀ n, P2899484087255744926.a n = A136515 n

theorem P2899484087255744926.correct : P2899484087255744926.Spec := by
  intro n
  simp only [A136515]

end A136515

/-! ## A136515.P9740016553461227461

`2*∑{#}[n-1, floor(sqrt((n+1/2)²-(#+1)²))]`
-/

namespace A136515.P9740016553461227461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊Real.sqrt (((n : ℚ) + (1 : ℚ) / 2) ^ 2 - ((k + 1) ^ 2 : ℚ) : ℝ)⌋)

end

end A136515.P9740016553461227461

namespace A136515

/-- `2*∑{#}[n-1, floor(sqrt((n+1/2)²-(#+1)²))]` -/
def P9740016553461227461.Spec : Prop :=
  ∀ n, P9740016553461227461.a n = A136515 n

end A136515

/-! ## A136515.P4308300938993513590

`A136486(n)/2`
-/

namespace A136515.P4308300938993513590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136486 n : ℚ) / 2

end

end A136515.P4308300938993513590

namespace A136515

/-- `A136486(n)/2` -/
def P4308300938993513590.Spec : Prop :=
  ∀ n, P4308300938993513590.a n = (A136515 n : ℚ)

theorem P4308300938993513590.correct : P4308300938993513590.Spec := by
  intro n
  simp only [A136515, Nat.add_sub_cancel, A136515.P4308300938993513590.a, A136515.P2899484087255744926.a, A136484, A136484.P8245490598374716672.a, A136486, A136486.P13738774024279800787.a, A136483, A136483.P16439643101318144746.f1, A136483.P16439643101318144746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136515

/-! ## A136515.P7127426069088881584

`(A036704(n)-A016813(n))/2`
-/

namespace A136515.P7127426069088881584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036704 n - A016813 n : ℚ) / 2

end

end A136515.P7127426069088881584

namespace A136515

/-- `(A036704(n)-A016813(n))/2` -/
def P7127426069088881584.Spec : Prop :=
  ∀ n, P7127426069088881584.a n = (A136515 n : ℚ)

end A136515

/-! ## A136515.P13338273032327491754

`A136486(n)-A136484(n)-A136484(n)`
-/

namespace A136515.P13338273032327491754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136486 n - A136484 n - A136484 n

end

end A136515.P13338273032327491754

namespace A136515

/-- `A136486(n)-A136484(n)-A136484(n)` -/
def P13338273032327491754.Spec : Prop :=
  ∀ n, P13338273032327491754.a n = A136515 n

theorem P13338273032327491754.correct : P13338273032327491754.Spec := by
  intro n
  simp only [A136515, Nat.add_sub_cancel, A136515.P13338273032327491754.a, A136515.P2899484087255744926.a, A136484, A136484.P8245490598374716672.a, A136486, A136486.P13738774024279800787.a, A136483, A136483.P16439643101318144746.f1, A136483.P16439643101318144746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136515

/-! ## A136515.P3680703206844795114

`2*(A036711(n)-n)`
-/

namespace A136515.P3680703206844795114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036711 n - (n : ℤ))

end

end A136515.P3680703206844795114

namespace A136515

/-- `2*(A036711(n)-n)` -/
def P3680703206844795114.Spec : Prop :=
  ∀ n, P3680703206844795114.a n = A136515 n

end A136515

/-! ## A136515.P7621086965505402000

`A036707(n)-A016777(n)`
-/

namespace A136515.P7621086965505402000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036707 n - A016777 n

end

end A136515.P7621086965505402000

namespace A136515

/-- `A036707(n)-A016777(n)` -/
def P7621086965505402000.Spec : Prop :=
  ∀ n, P7621086965505402000.a n = A136515 n

end A136515

/-! ## A136515.P11204112491146868897

`2*(∑[A036706(n)]-n)`
-/

namespace A136515.P11204112491146868897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A136515.P11204112491146868897

namespace A136515

/-- `2*(∑[A036706(n)]-n)` -/
def P11204112491146868897.Spec : Prop :=
  ∀ n, P11204112491146868897.a n = A136515 n

end A136515

/-! ## A136515.P15470815524144484019

`A136513(Δ[n²])`
-/

namespace A136515.P15470815524144484019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136513 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136515.P15470815524144484019

namespace A136515

/-- `A136513(Δ[n²])` -/
def P15470815524144484019.Spec : Prop :=
  ∀ n, P15470815524144484019.a n = A136515 n

end A136515

/-! ## A136515.P13708447614232838195

`2*A136483(Δ[n²])`
-/

namespace A136515.P13708447614232838195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136483 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136515.P13708447614232838195

namespace A136515

/-- `2*A136483(Δ[n²])` -/
def P13708447614232838195.Spec : Prop :=
  ∀ n, P13708447614232838195.a n = A136515 n

end A136515

/-! ## A136515.P14449489637367077096

`A136485(Δ[n²])/2`
-/

namespace A136515.P14449489637367077096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136485 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A136515.P14449489637367077096

namespace A136515

/-- `A136485(Δ[n²])/2` -/
def P14449489637367077096.Spec : Prop :=
  ∀ n, P14449489637367077096.a n = (A136515 n : ℚ)

end A136515

/-! ## A136515.P11065486735181352173

`lcm(2, A136513(2*n+1))`
-/

namespace A136515.P11065486735181352173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A136513 (2 * n + 1))

end

end A136515.P11065486735181352173

namespace A136515

/-- `lcm(2, A136513(2*n+1))` -/
def P11065486735181352173.Spec : Prop :=
  ∀ n, (P11065486735181352173.a n : ℤ) = A136515 n

end A136515

/-! ## A136515.P13120539034139948481

`A136486(n)-A136513(2*n+1)`
-/

namespace A136515.P13120539034139948481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136486 n - A136513 (2 * n + 1)

end

end A136515.P13120539034139948481

namespace A136515

/-- `A136486(n)-A136513(2*n+1)` -/
def P13120539034139948481.Spec : Prop :=
  ∀ n, P13120539034139948481.a n = A136515 n

theorem P13120539034139948481.correct : P13120539034139948481.Spec := by
  intro n
  simp only [A136515, Nat.add_sub_cancel, A136515.P13120539034139948481.a, A136515.P2899484087255744926.a, A136484, A136484.P8245490598374716672.a, A136486, A136486.P13738774024279800787.a, A136513, A136513.P11216211348429770474.a, A136483, A136483.P16439643101318144746.f1, A136483.P16439643101318144746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136515

/-! ## A136515.P8940793619367422751

`A136483(2*n+1)+A136483(2*n+1)`
-/

namespace A136515.P8940793619367422751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (2 * n + 1) + A136483 (2 * n + 1)

end

end A136515.P8940793619367422751

namespace A136515

/-- `A136483(2*n+1)+A136483(2*n+1)` -/
def P8940793619367422751.Spec : Prop :=
  ∀ n, P8940793619367422751.a n = A136515 n

theorem P8940793619367422751.correct : P8940793619367422751.Spec := by
  intro n
  simp only [A136515, Nat.add_sub_cancel, A136515.P8940793619367422751.a, A136515.P2899484087255744926.a, A136483, A136483.P16439643101318144746.f1, A136483.P16439643101318144746.a, A136484, A136484.P8245490598374716672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136515

/-! ## A136515.P15153427306557367387

`A136485(2*n+1)-A136513(2*n+1)`
-/

namespace A136515.P15153427306557367387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136485 (2 * n + 1) - A136513 (2 * n + 1)

end

end A136515.P15153427306557367387

namespace A136515

/-- `A136485(2*n+1)-A136513(2*n+1)` -/
def P15153427306557367387.Spec : Prop :=
  ∀ n, P15153427306557367387.a n = A136515 n

theorem P15153427306557367387.correct : P15153427306557367387.Spec := by
  intro n
  simp only [A136515, Nat.add_sub_cancel, A136515.P15153427306557367387.a, A136515.P2899484087255744926.a, A136484, A136484.P8245490598374716672.a, A136485, A136485.P8885834230539721879.a, A136513, A136513.P11216211348429770474.a, A136483, A136483.P16439643101318144746.f1, A136483.P16439643101318144746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136515

/-! ## A136515.P4797397377930831000

`A005843(A136484(n))`
-/

namespace A136515.P4797397377930831000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A136484 n).toNat

end

end A136515.P4797397377930831000

namespace A136515

/-- `A005843(A136484(n))` -/
def P4797397377930831000.Spec : Prop :=
  ∀ n, P4797397377930831000.a n = A136515 n

end A136515

/-! ## A136515.P8951255375390625956

`A005843(A136483(2*n+1))`
-/

namespace A136515.P8951255375390625956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A136483 (2 * n + 1)).toNat

end

end A136515.P8951255375390625956

namespace A136515

/-- `A005843(A136483(2*n+1))` -/
def P8951255375390625956.Spec : Prop :=
  ∀ n, P8951255375390625956.a n = A136515 n

end A136515

/-! ## A136515.P10671796051007501386

`2*A237526(∑[2*n])`
-/

namespace A136515.P10671796051007501386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136515.P10671796051007501386

namespace A136515

/-- `2*A237526(∑[2*n])` -/
def P10671796051007501386.Spec : Prop :=
  ∀ n, P10671796051007501386.a n = A136515 n

end A136515

/-!
# A136516: a(n) = (2^n+1)^n.

The programs for A136516, the canonical program `A136516.P4207146833680102269` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136516 has offset 0).

The definition of A136516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+1)^n` (program `A136516.P4207146833680102269`, by `A136516.P4207146833680102269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136516.P4207146833680102269

`(2^n+1)^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136516

/-- `(2^n+1)^n` -/
def P4207146833680102269.Spec : Prop :=
  ∀ n, (P4207146833680102269.a n : ℤ) = A136516 n

theorem P4207146833680102269.correct : P4207146833680102269.Spec := by
  intro n
  simp only [A136516]

end A136516

/-! ## A136516.P167336868362341304

`or(1, or(1, 2^n)^n)`
-/

namespace A136516.P167336868362341304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (2 ^ n) ^ n)

end

end A136516.P167336868362341304

namespace A136516

/-- `or(1, or(1, 2^n)^n)` -/
def P167336868362341304.Spec : Prop :=
  ∀ n, (P167336868362341304.a n : ℤ) = A136516 n

end A136516

/-! ## A136516.P14935049909990211844

`abs(xor(-1, 2^n)^n)`
-/

namespace A136516.P14935049909990211844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (2 ^ n : ℤ) ^ n|

end

end A136516.P14935049909990211844

namespace A136516

/-- `abs(xor(-1, 2^n)^n)` -/
def P14935049909990211844.Spec : Prop :=
  ∀ n, P14935049909990211844.a n = A136516 n

end A136516

/-! ## A136516.P2455052921403413163

`abs(Δ[xor(n, 2^n)]^n)`
-/

namespace A136516.P2455052921403413163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n|

end

end A136516.P2455052921403413163

namespace A136516

/-- `abs(Δ[xor(n, 2^n)]^n)` -/
def P2455052921403413163.Spec : Prop :=
  ∀ n, P2455052921403413163.a n = A136516 n

end A136516

/-! ## A136516.P2490375680551827344

`∑{#}[n, C(n, #)*2^(n*#)]`
-/

namespace A136516.P2490375680551827344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * 2 ^ (n * k)

end

end A136516.P2490375680551827344

namespace A136516

/-- `∑{#}[n, C(n, #)*2^(n*#)]` -/
def P2490375680551827344.Spec : Prop :=
  ∀ n, (P2490375680551827344.a n : ℤ) = A136516 n

end A136516

/-!
# A136518: a(n) = A027907(2^n, n), where A027907 = triangle of trinomial coefficients.

The programs for A136518, there is no canonical definition to state claims against.
-/

/-! ## A136518.P2653868246609750568

`A082601(eq[A025581(n), A059268(n)])`
-/

namespace A136518.P2653868246609750568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136518.P2653868246609750568

/-! ## A136518.P18029828266821105372

`A071675(eq[A002262(n), A130321(n)])`
-/

namespace A136518.P18029828266821105372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136518.P18029828266821105372

/-! ## A136518.P7716057069983786323

`A071675(eq[A002262(n), A057728(n+1)])`
-/

namespace A136518.P7716057069983786323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136518.P7716057069983786323

/-! ## A136518.P12733963019817082377

`A078802(eq[A004736(n+1), A059268(n)])`
-/

namespace A136518.P12733963019817082377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136518.P12733963019817082377

/-!
# A136519: a(n) = A027907(2^n+1, n), where A027907 = triangle of trinomial coefficients.

The programs for A136519, there is no canonical definition to state claims against.
-/

/-! ## A136519.P12346670633229779367

`A078802(eq[A003984(n), A059268(n)])`
-/

namespace A136519.P12346670633229779367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136519.P12346670633229779367

/-! ## A136519.P13255271657519041969

`A078802(eq[A025581(n), A059268(n)])`
-/

namespace A136519.P13255271657519041969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136519.P13255271657519041969

/-! ## A136519.P284757211233418888

`A082601(eq[A059268(n)+1, A025581(n)])`
-/

namespace A136519.P284757211233418888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136519.P284757211233418888

/-! ## A136519.P10080876887943093692

`A071675(eq[A130321(n)+1, A002262(n)])`
-/

namespace A136519.P10080876887943093692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136519.P10080876887943093692

/-!
# A136520: a(n) = Sum_{k=1..n} A001263(n,k) * A027656(k).

The programs for A136520, the canonical program `A136520.P8558273697874953374` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136520 has offset 1).

The definition of A136520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136520.P8558273697874953374

`∑{#}[floor(n/2), (#+1)/(2*#+1)*C(n+1, 2*#)*C(n, 2*#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136520

/-- `∑{#}[floor(n/2), (#+1)/(2*#+1)*C(n+1, 2*#)*C(n, 2*#)]` -/
def P8558273697874953374.Spec : Prop :=
  ∀ n, P8558273697874953374.a n = (A136520 (n + 1) : ℚ)

end A136520

/-! ## A136520.P13214184167391003938

`A360398(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A136520.P13214184167391003938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A360398 (a (n - 1)).toNat + a (n - 1)

end

end A136520.P13214184167391003938

namespace A136520

/-- `A360398(a(n-1))+a(n-1)` -/
def P13214184167391003938.Spec : Prop :=
  ∀ n, P13214184167391003938.a n = A136520 (n + 1)

end A136520

/-!
# A136521: Triangle read by rows: (1, 2, 2, 2, ...) on the main diagonal and the rest zeros.

The programs for A136521, the canonical program `A136521.P12057220829858395137` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136521 has offset 0).

The definition of A136521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136521.P18215192363311834533

`(3-T(n-1,k-1))*T(n-1,k-1)` with `a(0)=1`
-/

namespace A136521.P18215192363311834533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 - SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triUpLeft a n

end

end A136521.P18215192363311834533

namespace A136521

/-- `(3-T(n-1,k-1))*T(n-1,k-1)` -/
def P18215192363311834533.Spec : Prop :=
  ∀ n, P18215192363311834533.a n = A136521 n

end A136521

/-! ## A136521.P11803972582057809037

`(2-char[∑[n]])*char[∑[n-1]]`
-/

namespace A136521.P11803972582057809037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136521.P11803972582057809037

namespace A136521

/-- `(2-char[∑[n]])*char[∑[n-1]]` -/
def P11803972582057809037.Spec : Prop :=
  ∀ n, P11803972582057809037.a n = A136521 n

end A136521

/-! ## A136521.P15708730682697963173

`C(2, A090850(n))`
-/

namespace A136521.P15708730682697963173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A090850 n).toNat

end

end A136521.P15708730682697963173

namespace A136521

/-- `C(2, A090850(n))` -/
def P15708730682697963173.Spec : Prop :=
  ∀ n, (P15708730682697963173.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P8521887839016059166

`C(2, A118964(n+1))`
-/

namespace A136521.P8521887839016059166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A118964 (n + 1)).toNat

end

end A136521.P8521887839016059166

namespace A136521

/-- `C(2, A118964(n+1))` -/
def P8521887839016059166.Spec : Prop :=
  ∀ n, (P8521887839016059166.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P15701971119498557034

`C(2, A011857(n+2))`
-/

namespace A136521.P15701971119498557034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A011857 (n + 2)).toNat

end

end A136521.P15701971119498557034

namespace A136521

/-- `C(2, A011857(n+2))` -/
def P15701971119498557034.Spec : Prop :=
  ∀ n, (P15701971119498557034.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P8032473611717666621

`C(2, A092107(n+2))`
-/

namespace A136521.P8032473611717666621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A092107 (n + 2)).toNat

end

end A136521.P8032473611717666621

namespace A136521

/-- `C(2, A092107(n+2))` -/
def P8032473611717666621.Spec : Prop :=
  ∀ n, (P8032473611717666621.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P7776235683068407663

`C(2, A097607(n+2))`
-/

namespace A136521.P7776235683068407663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A097607 (n + 2)).toNat

end

end A136521.P7776235683068407663

namespace A136521

/-- `C(2, A097607(n+2))` -/
def P7776235683068407663.Spec : Prop :=
  ∀ n, (P7776235683068407663.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P3190837504392286728

`C(2, A102405(n+2))`
-/

namespace A136521.P3190837504392286728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A102405 (n + 2)).toNat

end

end A136521.P3190837504392286728

namespace A136521

/-- `C(2, A102405(n+2))` -/
def P3190837504392286728.Spec : Prop :=
  ∀ n, (P3190837504392286728.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P3825046700993079434

`C(2, A114489(n+2))`
-/

namespace A136521.P3825046700993079434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A114489 (n + 2)).toNat

end

end A136521.P3825046700993079434

namespace A136521

/-- `C(2, A114489(n+2))` -/
def P3825046700993079434.Spec : Prop :=
  ∀ n, (P3825046700993079434.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P17390568340267313580

`round(acot(A214258(n+1)))`
-/

namespace A136521.P17390568340267313580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A214258 (n + 1) : ℝ))

end

end A136521.P17390568340267313580

namespace A136521

/-- `round(acot(A214258(n+1)))` -/
def P17390568340267313580.Spec : Prop :=
  ∀ n, P17390568340267313580.a n = A136521 n

end A136521

/-! ## A136521.P16412370514428650263

`ceil(atan(Δ[A003056(n)²]))`
-/

namespace A136521.P16412370514428650263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (f1 (n + 1) - f1 n : ℝ)⌉

end

end A136521.P16412370514428650263

namespace A136521

/-- `ceil(atan(Δ[A003056(n)²]))` -/
def P16412370514428650263.Spec : Prop :=
  ∀ n, P16412370514428650263.a n = A136521 n

end A136521

/-! ## A136521.P16948606345596872000

`round(2/A128235(n+1))`
-/

namespace A136521.P16948606345596872000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A128235 (n + 1) : ℚ))

end

end A136521.P16948606345596872000

namespace A136521

/-- `round(2/A128235(n+1))` -/
def P16948606345596872000.Spec : Prop :=
  ∀ n, P16948606345596872000.a n = A136521 n

end A136521

/-! ## A136521.P5471904782739642083

`C(2, A053727(n+1)+1)`
-/

namespace A136521.P5471904782739642083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A053727 (n + 1) + 1).toNat

end

end A136521.P5471904782739642083

namespace A136521

/-- `C(2, A053727(n+1)+1)` -/
def P5471904782739642083.Spec : Prop :=
  ∀ n, (P5471904782739642083.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P7225956897352891412

`C(2, A115241(n+1)+1)`
-/

namespace A136521.P7225956897352891412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A115241 (n + 1) + 1).toNat

end

end A136521.P7225956897352891412

namespace A136521

/-- `C(2, A115241(n+1)+1)` -/
def P7225956897352891412.Spec : Prop :=
  ∀ n, (P7225956897352891412.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P15257788750418604970

`C(2, A185782(n+1)+1)`
-/

namespace A136521.P15257788750418604970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A185782 (n + 1) + 1).toNat

end

end A136521.P15257788750418604970

namespace A136521

/-- `C(2, A185782(n+1)+1)` -/
def P15257788750418604970.Spec : Prop :=
  ∀ n, (P15257788750418604970.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P7258960920454710496

`ceil(atan(A198954(n+1)/2))`
-/

namespace A136521.P7258960920454710496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((A198954 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A136521.P7258960920454710496

namespace A136521

/-- `ceil(atan(A198954(n+1)/2))` -/
def P7258960920454710496.Spec : Prop :=
  ∀ n, P7258960920454710496.a n = A136521 n

end A136521

/-! ## A136521.P8188468039177441984

`C(2, (a(n-1)+A007318(n))²)` with `a(0)=1`
-/

namespace A136521.P8188468039177441984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (((a (n - 1) : ℤ) + A007318 n) ^ 2).toNat

end

end A136521.P8188468039177441984

namespace A136521

/-- `C(2, (a(n-1)+A007318(n))²)` -/
def P8188468039177441984.Spec : Prop :=
  ∀ n, (P8188468039177441984.a n : ℤ) = A136521 n

end A136521

/-! ## A136521.P12057220829858395137

`A046698(A131431(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136521

/-- `A046698(A131431(n))` -/
def P12057220829858395137.Spec : Prop :=
  ∀ n, P12057220829858395137.a n = A136521 n

theorem P12057220829858395137.correct : P12057220829858395137.Spec := by
  intro n
  simp only [A136521]

end A136521

/-! ## A136521.P12586115914018330462

`A130130(A127648(n))`
-/

namespace A136521.P12586115914018330462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A127648 n).toNat

end

end A136521.P12586115914018330462

namespace A136521

/-- `A130130(A127648(n))` -/
def P12586115914018330462.Spec : Prop :=
  ∀ n, P12586115914018330462.a n = A136521 n

end A136521

/-! ## A136521.P9094610902453652811

`Δ[A004273(A003056(n))]`
-/

namespace A136521.P9094610902453652811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136521.P9094610902453652811

namespace A136521

/-- `Δ[A004273(A003056(n))]` -/
def P9094610902453652811.Spec : Prop :=
  ∀ n, P9094610902453652811.a n = A136521 n

end A136521

/-!
# A136522: a(n) = 1 if n is a palindrome, otherwise 0.

The programs for A136522, there is no canonical definition to state claims against.
-/

/-! ## A136522.P16987511828179648176

`A000007(A064834(n))`
-/

namespace A136522.P16987511828179648176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A064834 n).toNat

end

end A136522.P16987511828179648176

/-!
# A136523: Triangle T(n,k) = A053120(n,k) + A053120(n-1,k), read by rows.

The programs for A136523, there is no canonical definition to state claims against.
-/

/-! ## A136523.P4715042631238123737

`A201863(A061579(n))+A137422(n)`
-/

namespace A136523.P4715042631238123737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201863 (A061579 n).toNat + A137422 n

end

end A136523.P4715042631238123737

/-! ## A136523.P6212906372191750181

`A137422(A128621(n+1)+n)`
-/

namespace A136523.P6212906372191750181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137422 (A128621 (n + 1) + (n : ℤ)).toNat

end

end A136523.P6212906372191750181

/-! ## A136523.P14879469658389232866

`A143576(A128621(n+1)+n)`
-/

namespace A136523.P14879469658389232866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143576 (A128621 (n + 1) + (n : ℤ)).toNat

end

end A136523.P14879469658389232866

/-!
# A136524: a(n) = 2^n*(2^n + n)^(n-1).

The programs for A136524, the canonical program `A136524.P11682882297783830628` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136524 has offset 0).

The definition of A136524 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A136524.anchor (n : ℕ) : (A136524 n : ℚ) = (2 ^ n : ℚ) * (2 ^ n + n : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A136.A136524`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136524.P11682882297783830628

`2^n*(2^n+n)^(n-1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136524

/-- `2^n*(2^n+n)^(n-1)` -/
def P11682882297783830628.Spec : Prop :=
  ∀ n, P11682882297783830628.a n = (A136524 n : ℚ)

end A136524

/-! ## A136524.P13177590272697938982

`A131520(n+1)^n/A006127(n)`
-/

namespace A136524.P13177590272697938982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131520 (n + 1) ^ n : ℚ) / (A006127 n : ℚ)

end

end A136524.P13177590272697938982

namespace A136524

/-- `A131520(n+1)^n/A006127(n)` -/
def P13177590272697938982.Spec : Prop :=
  ∀ n, P13177590272697938982.a n = (A136524 n : ℚ)

end A136524

/-!
# A136525: a(n) = (2^n + 1)*(2^n + n + 1)^(n-1).

The programs for A136525, the canonical program `A136525.P17908962188976068384` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136525 has offset 0).

The definition of A136525 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A136525.anchor (n : ℕ) : (A136525 n : ℚ) = (2 ^ n + 1 : ℚ) * (2 ^ n + n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A136.A136525`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136525.P17908962188976068384

`(2^n+1)*(2^n+n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136525

/-- `(2^n+1)*(2^n+n+1)^(n-1)` -/
def P17908962188976068384.Spec : Prop :=
  ∀ n, P17908962188976068384.a n = (A136525 n : ℚ)

end A136525

/-!
# A136527: Triangle read by rows: T(n,k) = greatest common divisor of n-th and k-th composite number, 1<=k<=n.

The programs for A136527, the canonical program `A136527.P9800155338990440031` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136527 has offset 1).

The definition of A136527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136527.P9800155338990440031

`gcd(A026239(A037126(n+1)), A111653(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136527

/-- `gcd(A026239(A037126(n+1)), A111653(n+1))` -/
def P9800155338990440031.Spec : Prop :=
  ∀ n, (P9800155338990440031.a n : ℤ) = A136527 (n + 1)

theorem P9800155338990440031.correct : P9800155338990440031.Spec := by
  intro n
  simp only [A136527, Nat.add_sub_cancel]

end A136527

/-! ## A136527.P1477649516062177832

`gcd(A002808(A002260(n+1)), A118508(n+1))`
-/

namespace A136527.P1477649516062177832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (A002260 (n + 1)).toNat) (A118508 (n + 1))

end

end A136527.P1477649516062177832

namespace A136527

/-- `gcd(A002808(A002260(n+1)), A118508(n+1))` -/
def P1477649516062177832.Spec : Prop :=
  ∀ n, (P1477649516062177832.a n : ℤ) = A136527 (n + 1)

end A136527

/-!
# A136529: a(n) = the smallest possible number of positive divisors of the sum of any two distinct positive divisors of n.

The programs for A136529, the canonical program `A136529.P14969292439169779428` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136529 has offset 2).

The definition of A136529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136529.P6620225090327747499

`A000005(A020639(A328617(n+2))+1)`
-/

namespace A136529.P6620225090327747499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020639 (A328617 (n + 2)).toNat + 1).toNat

end

end A136529.P6620225090327747499

namespace A136529

/-- `A000005(A020639(A328617(n+2))+1)` -/
def P6620225090327747499.Spec : Prop :=
  ∀ n, P6620225090327747499.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P18380007317731044241

`∑{d}[A020639(A328617(n+2))+1, A057427(#)]`
-/

namespace A136529.P18380007317731044241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328617 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A136529.P18380007317731044241

namespace A136529

/-- `∑{d}[A020639(A328617(n+2))+1, A057427(#)]` -/
def P18380007317731044241.Spec : Prop :=
  ∀ n, P18380007317731044241.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P15446703215957984948

`∑{d}[A020639(A328617(n+2))+1, A178334(#)]`
-/

namespace A136529.P15446703215957984948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328617 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A178334 d

end

end A136529.P15446703215957984948

namespace A136529

/-- `∑{d}[A020639(A328617(n+2))+1, A178334(#)]` -/
def P15446703215957984948.Spec : Prop :=
  ∀ n, P15446703215957984948.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P4361321791868263978

`A010054(A107005(n+1))+A000005(A020639(n+2)+1)`
-/

namespace A136529.P4361321791868263978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A107005 (n + 1)).toNat + A000005 (A020639 (n + 2) + 1).toNat

end

end A136529.P4361321791868263978

namespace A136529

/-- `A010054(A107005(n+1))+A000005(A020639(n+2)+1)` -/
def P4361321791868263978.Spec : Prop :=
  ∀ n, P4361321791868263978.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P16921089125635422285

`A062011(A020639(n+2)%(A090513(2*(n+1))+1)+1)/2`
-/

namespace A136529.P16921089125635422285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (Int.tmod (A020639 (n + 2)) (A090513 (2 * (n + 1)) + 1) + 1).toNat : ℚ) / 2

end

end A136529.P16921089125635422285

namespace A136529

/-- `A062011(A020639(n+2)%(A090513(2*(n+1))+1)+1)/2` -/
def P16921089125635422285.Spec : Prop :=
  ∀ n, P16921089125635422285.a n = (A136529 (n + 2) : ℚ)

end A136529

/-! ## A136529.P14969292439169779428

`A000005(A020639(n+2)+1)*A014963(A050519(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A136529

/-- `A000005(A020639(n+2)+1)*A014963(A050519(n+1))` -/
def P14969292439169779428.Spec : Prop :=
  ∀ n, P14969292439169779428.a n = A136529 (n + 2)

theorem P14969292439169779428.correct : P14969292439169779428.Spec := by
  intro n
  simp only [A136529, Nat.add_sub_cancel]

end A136529

/-! ## A136529.P10839059544488181882

`A000005(A004737((12-n)²+1)+A020639(n+2))`
-/

namespace A136529.P10839059544488181882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004737 ((12 - (n : ℤ)) ^ 2 + 1).toNat + A020639 (n + 2)).toNat

end

end A136529.P10839059544488181882

namespace A136529

/-- `A000005(A004737((12-n)²+1)+A020639(n+2))` -/
def P10839059544488181882.Spec : Prop :=
  ∀ n, P10839059544488181882.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P6574680898960853601

`A000005(A020639(n+2)+1)+val(n+1, A085929(n+1))`
-/

namespace A136529.P6574680898960853601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020639 (n + 2) + 1).toNat + (SequenceMachineLib.valuation (n + 1) (A085929 (n + 1)).toNat : ℤ)

end

end A136529.P6574680898960853601

namespace A136529

/-- `A000005(A020639(n+2)+1)+val(n+1, A085929(n+1))` -/
def P6574680898960853601.Spec : Prop :=
  ∀ n, P6574680898960853601.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P7700429003131059377

`A000005(A032741(A006530(n²+1))+A020639(n+2))`
-/

namespace A136529.P7700429003131059377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A032741 (A006530 (n ^ 2 + 1)).toNat + A020639 (n + 2)).toNat

end

end A136529.P7700429003131059377

namespace A136529

/-- `A000005(A032741(A006530(n²+1))+A020639(n+2))` -/
def P7700429003131059377.Spec : Prop :=
  ∀ n, P7700429003131059377.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P13384106359184490934

`A000005(A032741(A020639(n²+1))+A020639(n+2))`
-/

namespace A136529.P13384106359184490934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A032741 (A020639 (n ^ 2 + 1)).toNat + A020639 (n + 2)).toNat

end

end A136529.P13384106359184490934

namespace A136529

/-- `A000005(A032741(A020639(n²+1))+A020639(n+2))` -/
def P13384106359184490934.Spec : Prop :=
  ∀ n, P13384106359184490934.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P15669417080132476739

`A000005(A284905(A020639(n²+1)+1)+A020639(n+2))`
-/

namespace A136529.P15669417080132476739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A284905 (A020639 (n ^ 2 + 1) + 1).toNat + A020639 (n + 2)).toNat

end

end A136529.P15669417080132476739

namespace A136529

/-- `A000005(A284905(A020639(n²+1)+1)+A020639(n+2))` -/
def P15669417080132476739.Spec : Prop :=
  ∀ n, P15669417080132476739.a n = A136529 (n + 2)

end A136529

/-! ## A136529.P9067375453642413691

`A000005(A267084((n+1)²)+A020639(n+2))`
-/

namespace A136529.P9067375453642413691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A267084 ((n + 1) ^ 2) + A020639 (n + 2)).toNat

end

end A136529.P9067375453642413691

namespace A136529

/-- `A000005(A267084((n+1)²)+A020639(n+2))` -/
def P9067375453642413691.Spec : Prop :=
  ∀ n, P9067375453642413691.a n = A136529 (n + 2)

end A136529

/-!
# A136530: a(n) = 2^n*(3*n^2 + 13*n + 8)/8.

The programs for A136530, the canonical program `A136530.P1380055559147098285` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136530 has offset 0).

The definition of A136530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(3*n²+13*n+8)/8` (program `A136530.P13074159122106585191`, by `A136530.P13074159122106585191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136530.P11134029735679182477

`2^(n-3)*(3*n²+13*n+8)`
-/

namespace A136530.P11134029735679182477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (3 * n ^ 2 + 13 * n + 8 : ℚ)

end

end A136530.P11134029735679182477

namespace A136530

/-- `2^(n-3)*(3*n²+13*n+8)` -/
def P11134029735679182477.Spec : Prop :=
  ∀ n, P11134029735679182477.a n = (A136530 n : ℚ)

theorem P11134029735679182477.correct : P11134029735679182477.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A136530, Nat.add_sub_cancel, A136530.P11134029735679182477.a, A136530.P1380055559147098285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A136530, Nat.add_sub_cancel, A136530.P11134029735679182477.a, A136530.P1380055559147098285.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A136530

/-! ## A136530.P5288813646303818875

`ogf((1-x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A136530.P5288813646303818875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -6, 12, -8] n

end

end A136530.P5288813646303818875

namespace A136530

/-- `ogf((1-x^2)/(1-6x+12x^2-8x^3))` -/
def P5288813646303818875.Spec : Prop :=
  ∀ n, P5288813646303818875.a n = A136530 n

end A136530

/-! ## A136530.P1380055559147098285

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=6, a(2)=23`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136530

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P1380055559147098285.Spec : Prop :=
  ∀ n, P1380055559147098285.a n = A136530 n

theorem P1380055559147098285.correct : P1380055559147098285.Spec := by
  intro n
  simp only [A136530]

end A136530

/-! ## A136530.P13074159122106585191

`2^n*(3*n²+13*n+8)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136530.P13074159122106585191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * (3 * n ^ 2 + 13 * n + 8) : ℚ) / 8

end

end A136530.P13074159122106585191

namespace A136530

/-- `2^n*(3*n²+13*n+8)/8` -/
def P13074159122106585191.Spec : Prop :=
  ∀ n, P13074159122106585191.a n = (A136530 n : ℚ)

theorem P13074159122106585191.correct : P13074159122106585191.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A136530, Nat.add_sub_cancel, A136530.P13074159122106585191.a, A136530.P1380055559147098285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A136530, Nat.add_sub_cancel, A136530.P13074159122106585191.a, A136530.P1380055559147098285.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A136530

/-! ## A136530.P17317434071930376203

`a(n-1)+A339252(n)+a(n-1)` with `a(0)=1`
-/

namespace A136530.P17317434071930376203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A339252 n + a (n - 1))

end

end A136530.P17317434071930376203

namespace A136530

/-- `a(n-1)+A339252(n)+a(n-1)` -/
def P17317434071930376203.Spec : Prop :=
  ∀ n, P17317434071930376203.a n = A136530 n

end A136530

/-! ## A136530.P3370339330367302629

`A176027(n)+A072863(n)`
-/

namespace A136530.P3370339330367302629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + A072863 n

end

end A136530.P3370339330367302629

namespace A136530

/-- `A176027(n)+A072863(n)` -/
def P3370339330367302629.Spec : Prop :=
  ∀ n, P3370339330367302629.a n = A136530 n

end A136530

/-! ## A136530.P11014009505827794021

`A295288(n)+A001787(n)`
-/

namespace A136530.P11014009505827794021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295288 n + A001787 n

end

end A136530.P11014009505827794021

namespace A136530

/-- `A295288(n)+A001787(n)` -/
def P11014009505827794021.Spec : Prop :=
  ∀ n, P11014009505827794021.a n = A136530 n

end A136530

/-! ## A136530.P16675316221494753632

`A089658(n)+A001787(n+1)`
-/

namespace A136530.P16675316221494753632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089658 n + A001787 (n + 1)

end

end A136530.P16675316221494753632

namespace A136530

/-- `A089658(n)+A001787(n+1)` -/
def P16675316221494753632.Spec : Prop :=
  ∀ n, P16675316221494753632.a n = A136530 n

end A136530

/-! ## A136530.P4066413983202434780

`A276289(n)+A053220(n+1)`
-/

namespace A136530.P4066413983202434780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276289 n + A053220 (n + 1)

end

end A136530.P4066413983202434780

namespace A136530

/-- `A276289(n)+A053220(n+1)` -/
def P4066413983202434780.Spec : Prop :=
  ∀ n, P4066413983202434780.a n = A136530 n

end A136530

/-! ## A136530.P3384671101139779732

`A300451(n)+A058922(n+1)`
-/

namespace A136530.P3384671101139779732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300451 n + A058922 (n + 1)

end

end A136530.P3384671101139779732

namespace A136530

/-- `A300451(n)+A058922(n+1)` -/
def P3384671101139779732.Spec : Prop :=
  ∀ n, P3384671101139779732.a n = A136530 n

end A136530

/-! ## A136530.P8274746443408646047

`A300451(n)-A159964(n+1)`
-/

namespace A136530.P8274746443408646047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300451 n - A159964 (n + 1)

end

end A136530.P8274746443408646047

namespace A136530

/-- `A300451(n)-A159964(n+1)` -/
def P8274746443408646047.Spec : Prop :=
  ∀ n, P8274746443408646047.a n = A136530 n

end A136530

/-! ## A136530.P1185434621875314555

`A084851(n)+n*A045623(n)`
-/

namespace A136530.P1185434621875314555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n + (n : ℤ) * A045623 n

end

end A136530.P1185434621875314555

namespace A136530

/-- `A084851(n)+n*A045623(n)` -/
def P1185434621875314555.Spec : Prop :=
  ∀ n, P1185434621875314555.a n = A136530 n

end A136530

/-! ## A136530.P6137620384490736045

`A001793(n+1)+∑[A049611(n)]`
-/

namespace A136530.P6137620384490736045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136530.P6137620384490736045

namespace A136530

/-- `A001793(n+1)+∑[A049611(n)]` -/
def P6137620384490736045.Spec : Prop :=
  ∀ n, P6137620384490736045.a n = A136530 n

end A136530

/-! ## A136530.P10323790968937536711

`∑[A049611(n+1)+A049611(n)]`
-/

namespace A136530.P10323790968937536711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136530.P10323790968937536711

namespace A136530

/-- `∑[A049611(n+1)+A049611(n)]` -/
def P10323790968937536711.Spec : Prop :=
  ∀ n, P10323790968937536711.a n = A136530 n

end A136530

/-! ## A136530.P5077276666744910017

`2*A001793(n+1)-A084851(n)`
-/

namespace A136530.P5077276666744910017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001793 (n + 1) - A084851 n

end

end A136530.P5077276666744910017

namespace A136530

/-- `2*A001793(n+1)-A084851(n)` -/
def P5077276666744910017.Spec : Prop :=
  ∀ n, P5077276666744910017.a n = A136530 n

end A136530

/-! ## A136530.P479356563878989063

`2*A001793(n+1)-∑[A058396(n)]`
-/

namespace A136530.P479356563878989063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001793 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136530.P479356563878989063

namespace A136530

/-- `2*A001793(n+1)-∑[A058396(n)]` -/
def P479356563878989063.Spec : Prop :=
  ∀ n, P479356563878989063.a n = A136530 n

end A136530

/-! ## A136530.P18400067361164947847

`A001792(n)+A295288(n)-A000079(n)`
-/

namespace A136530.P18400067361164947847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A295288 n - A000079 n)

end

end A136530.P18400067361164947847

namespace A136530

/-- `A001792(n)+A295288(n)-A000079(n)` -/
def P18400067361164947847.Spec : Prop :=
  ∀ n, P18400067361164947847.a n = A136530 n

end A136530

/-! ## A136530.P14293611004374572423

`A084851(n)+∑[A084851(n)]-A001792(n)`
-/

namespace A136530.P14293611004374572423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n + (∑ j ∈ Finset.range (n + 1), f1 j - A001792 n)

end

end A136530.P14293611004374572423

namespace A136530

/-- `A084851(n)+∑[A084851(n)]-A001792(n)` -/
def P14293611004374572423.Spec : Prop :=
  ∀ n, P14293611004374572423.a n = A136530 n

end A136530

/-! ## A136530.P673752637602643531

`A049611(n+1)+A001788(n)+A001787(n)`
-/

namespace A136530.P673752637602643531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + (A001788 n + A001787 n)

end

end A136530.P673752637602643531

namespace A136530

/-- `A049611(n+1)+A001788(n)+A001787(n)` -/
def P673752637602643531.Spec : Prop :=
  ∀ n, P673752637602643531.a n = A136530 n

end A136530

/-! ## A136530.P12936741169834103093

`A001788(n+1)+A000079(n)-A081908(n)`
-/

namespace A136530.P12936741169834103093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + (A000079 n - A081908 n)

end

end A136530.P12936741169834103093

namespace A136530

/-- `A001788(n+1)+A000079(n)-A081908(n)` -/
def P12936741169834103093.Spec : Prop :=
  ∀ n, P12936741169834103093.a n = A136530 n

end A136530

/-!
# A136534: A001263 * A128064 (unsigned).

The programs for A136534, there is no canonical definition to state claims against.
-/

/-! ## A136534.P8168299835796308833

`A002260(n+1)*A118976(n+1)`
-/

namespace A136534.P8168299835796308833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A118976 (n + 1)

end

end A136534.P8168299835796308833

/-! ## A136534.P14549882515678777755

`A132813(n+1)+A132813(n)-A001263(n+2)`
-/

namespace A136534.P14549882515678777755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 (n + 1) + A132813 n - A001263 (n + 2)

end

end A136534.P14549882515678777755

/-! ## A136534.P2800587916726512514

`A118976(n+1)*A125159(A125151(n+1))`
-/

namespace A136534.P2800587916726512514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118976 (n + 1) * A125159 (A125151 (n + 1)).toNat

end

end A136534.P2800587916726512514

/-!
# A136535: A128064 * A001263.

The programs for A136535, the canonical program `A136535.P11251443088563950437` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136535 has offset 1).

The definition of A136535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136535.P17643090957927622935

`A008459(n)+A132813(n)-A001263(n+1)`
-/

namespace A136535.P17643090957927622935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n + (A132813 n - A001263 (n + 1))

end

end A136535.P17643090957927622935

namespace A136535

/-- `A008459(n)+A132813(n)-A001263(n+1)` -/
def P17643090957927622935.Spec : Prop :=
  ∀ n, P17643090957927622935.a n = A136535 (n + 1)

end A136535

/-! ## A136535.P17570458068687547697

`A008459(n)+A001263(n+1)*A002262(n)`
-/

namespace A136535.P17570458068687547697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n + A001263 (n + 1) * A002262 n

end

end A136535.P17570458068687547697

namespace A136535

/-- `A008459(n)+A001263(n+1)*A002262(n)` -/
def P17570458068687547697.Spec : Prop :=
  ∀ n, P17570458068687547697.a n = A136535 (n + 1)

end A136535

/-! ## A136535.P152123699168333386

`A007318(n)²+A132813(n)-A001263(n+1)`
-/

namespace A136535.P152123699168333386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 + (A132813 n - A001263 (n + 1))

end

end A136535.P152123699168333386

namespace A136535

/-- `A007318(n)²+A132813(n)-A001263(n+1)` -/
def P152123699168333386.Spec : Prop :=
  ∀ n, P152123699168333386.a n = A136535 (n + 1)

end A136535

/-! ## A136535.P11251443088563950437

`A132812(n+1)-A007318(n+1)*A198321(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A136535

/-- `A132812(n+1)-A007318(n+1)*A198321(n+1)` -/
def P11251443088563950437.Spec : Prop :=
  ∀ n, P11251443088563950437.a n = A136535 (n + 1)

theorem P11251443088563950437.correct : P11251443088563950437.Spec := by
  intro n
  simp only [A136535, Nat.add_sub_cancel]

end A136535

/-! ## A136535.P16838080983290461225

`A026741(A134058(n))²+A001263(n+1)*A002262(n)`
-/

namespace A136535.P16838080983290461225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A134058 n).toNat ^ 2 + A001263 (n + 1) * A002262 n

end

end A136535.P16838080983290461225

namespace A136535

/-- `A026741(A134058(n))²+A001263(n+1)*A002262(n)` -/
def P16838080983290461225.Spec : Prop :=
  ∀ n, P16838080983290461225.a n = A136535 (n + 1)

end A136535

/-!
# A136545: a(n) = Sum_{k=1..floor(n*log(2))} (1 - (n - floor(n/2^k)) * (n - floor(n/2^(k - 1))) mod 2).

The programs for A136545, there is no canonical definition to state claims against.
-/

/-! ## A136545.P17292485450935100310

`A335881(A282004(n)+A008574(n))`
-/

namespace A136545.P17292485450935100310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (A282004 n + A008574 n).toNat

end

end A136545.P17292485450935100310

/-! ## A136545.P6837035123961392431

`A062153(or(A139321(n), A285844(n)))`
-/

namespace A136545.P6837035123961392431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (Int.lor (A139321 n) (A285844 n)).toNat

end

end A136545.P6837035123961392431

/-! ## A136545.P942359502286212946

`A062153(A282004(n)+A050399(n+1))`
-/

namespace A136545.P942359502286212946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A282004 n + A050399 (n + 1)).toNat

end

end A136545.P942359502286212946

/-! ## A136545.P18417870761359638495

`A062153(A288403(n)+A050399(n+1))`
-/

namespace A136545.P18417870761359638495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A288403 n + A050399 (n + 1)).toNat

end

end A136545.P18417870761359638495

/-! ## A136545.P3598909095716349266

`A062153(A285109(n+1)+A281045(n))`
-/

namespace A136545.P3598909095716349266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A285109 (n + 1) + A281045 n).toNat

end

end A136545.P3598909095716349266

/-!
# A136548: a(n) = max {k >= 1 | sigma(k) <= n}.

The programs for A136548, the canonical program `A136548.P17831031601123252591` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136548 has offset 1).

The definition of A136548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136548.P18124154951428874010

`A096501(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A136548.P18124154951428874010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A096501 n + a (n - 1)

end

end A136548.P18124154951428874010

namespace A136548

/-- `A096501(n)+a(n-1)` -/
def P18124154951428874010.Spec : Prop :=
  ∀ n, P18124154951428874010.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P11261214553096360462

`A076272(a(n-1)-1+n)` with `a(0)=1`
-/

namespace A136548.P11261214553096360462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076272 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A136548.P11261214553096360462

namespace A136548

/-- `A076272(a(n-1)-1+n)` -/
def P11261214553096360462.Spec : Prop :=
  ∀ n, P11261214553096360462.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P1319779806438428698

`A076272(n-(1-a(n-1)))` with `a(0)=1`
-/

namespace A136548.P1319779806438428698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076272 ((n : ℤ) - (1 - a (n - 1))).toNat

end

end A136548.P1319779806438428698

namespace A136548

/-- `A076272(n-(1-a(n-1)))` -/
def P1319779806438428698.Spec : Prop :=
  ∀ n, P1319779806438428698.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P995199261608369977

`A064989(A151800(n))`
-/

namespace A136548.P995199261608369977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A151800 n).toNat

end

end A136548.P995199261608369977

namespace A136548

/-- `A064989(A151800(n))` -/
def P995199261608369977.Spec : Prop :=
  ∀ n, P995199261608369977.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P911478590031822532

`A285727(A101300(n))`
-/

namespace A136548.P911478590031822532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (A101300 n).toNat

end

end A136548.P911478590031822532

namespace A136548

/-- `A285727(A101300(n))` -/
def P911478590031822532.Spec : Prop :=
  ∀ n, P911478590031822532.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P8535489658091008376

`A064989(A007918(n+1))`
-/

namespace A136548.P8535489658091008376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A007918 (n + 1)).toNat

end

end A136548.P8535489658091008376

namespace A136548

/-- `A064989(A007918(n+1))` -/
def P8535489658091008376.Spec : Prop :=
  ∀ n, P8535489658091008376.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P17831031601123252591

`A008578(A230980(n)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136548

/-- `A008578(A230980(n)+1)` -/
def P17831031601123252591.Spec : Prop :=
  ∀ n, P17831031601123252591.a n = A136548 (n + 1)

theorem P17831031601123252591.correct : P17831031601123252591.Spec := by
  intro n
  simp only [A136548, Nat.add_sub_cancel]

end A136548

/-! ## A136548.P11409588270152830332

`A158611(A230980(n)+2)`
-/

namespace A136548.P11409588270152830332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A230980 n + 2).toNat

end

end A136548.P11409588270152830332

namespace A136548

/-- `A158611(A230980(n)+2)` -/
def P11409588270152830332.Spec : Prop :=
  ∀ n, P11409588270152830332.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P9289024011943212542

`A064989(A013632(n)+n)`
-/

namespace A136548.P9289024011943212542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A013632 n + (n : ℤ)).toNat

end

end A136548.P9289024011943212542

namespace A136548

/-- `A064989(A013632(n)+n)` -/
def P9289024011943212542.Spec : Prop :=
  ∀ n, P9289024011943212542.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P15240683921391569638

`A250470(A013632(n)+n)`
-/

namespace A136548.P15240683921391569638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A013632 n + (n : ℤ)).toNat

end

end A136548.P15240683921391569638

namespace A136548

/-- `A250470(A013632(n)+n)` -/
def P15240683921391569638.Spec : Prop :=
  ∀ n, P15240683921391569638.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P5142619775706335947

`A008578(A064427(n+1)-n)`
-/

namespace A136548.P5142619775706335947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064427 (n + 1) - (n : ℤ)).toNat

end

end A136548.P5142619775706335947

namespace A136548

/-- `A008578(A064427(n+1)-n)` -/
def P5142619775706335947.Spec : Prop :=
  ∀ n, P5142619775706335947.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P9454929805050431998

`A008578(A095117(n)+1-n)`
-/

namespace A136548.P9454929805050431998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A095117 n + (1 - (n : ℤ))).toNat

end

end A136548.P9454929805050431998

namespace A136548

/-- `A008578(A095117(n)+1-n)` -/
def P9454929805050431998.Spec : Prop :=
  ∀ n, P9454929805050431998.a n = A136548 (n + 1)

theorem P9454929805050431998.correct : P9454929805050431998.Spec := by
  intro n
  simp only [A136548, Nat.add_sub_cancel, A136548.P9454929805050431998.a, A136548.P17831031601123252591.a, A008578, A008578.P3639467937083264764.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136548

/-! ## A136548.P15669957518849658112

`A008578(1-(n-A095117(n)))`
-/

namespace A136548.P15669957518849658112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 - ((n : ℤ) - A095117 n)).toNat

end

end A136548.P15669957518849658112

namespace A136548

/-- `A008578(1-(n-A095117(n)))` -/
def P15669957518849658112.Spec : Prop :=
  ∀ n, P15669957518849658112.a n = A136548 (n + 1)

theorem P15669957518849658112.correct : P15669957518849658112.Spec := by
  intro n
  simp only [A136548, Nat.add_sub_cancel, A136548.P15669957518849658112.a, A136548.P17831031601123252591.a, A008578, A008578.P3639467937083264764.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136548

/-! ## A136548.P13431168463733216496

`A065769(A151800(2*n-n))`
-/

namespace A136548.P13431168463733216496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (A151800 (2 * n - n)).toNat

end

end A136548.P13431168463733216496

namespace A136548

/-- `A065769(A151800(2*n-n))` -/
def P13431168463733216496.Spec : Prop :=
  ∀ n, P13431168463733216496.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P5036191314281953555

`A008578(∑[char[A061397(n+1)]])`
-/

namespace A136548.P5036191314281953555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136548.P5036191314281953555

namespace A136548

/-- `A008578(∑[char[A061397(n+1)]])` -/
def P5036191314281953555.Spec : Prop :=
  ∀ n, P5036191314281953555.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P11806651397617127808

`A008578(A056172(2*n+1)+1)`
-/

namespace A136548.P11806651397617127808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A056172 (2 * n + 1) + 1).toNat

end

end A136548.P11806651397617127808

namespace A136548

/-- `A008578(A056172(2*n+1)+1)` -/
def P11806651397617127808.Spec : Prop :=
  ∀ n, P11806651397617127808.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P13536912636768432769

`A008578(A242096(2*n+1)+1)`
-/

namespace A136548.P13536912636768432769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A242096 (2 * n + 1) + 1).toNat

end

end A136548.P13536912636768432769

namespace A136548

/-- `A008578(A242096(2*n+1)+1)` -/
def P13536912636768432769.Spec : Prop :=
  ∀ n, P13536912636768432769.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P5952568330620783294

`A158611(A064427(n+1)+1-n)`
-/

namespace A136548.P5952568330620783294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A064427 (n + 1) + (1 - (n : ℤ))).toNat

end

end A136548.P5952568330620783294

namespace A136548

/-- `A158611(A064427(n+1)+1-n)` -/
def P5952568330620783294.Spec : Prop :=
  ∀ n, P5952568330620783294.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P13880265694999913440

`A008578(∑[char[A000040(n+1)]]+1)`
-/

namespace A136548.P13880265694999913440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A136548.P13880265694999913440

namespace A136548

/-- `A008578(∑[char[A000040(n+1)]]+1)` -/
def P13880265694999913440.Spec : Prop :=
  ∀ n, P13880265694999913440.a n = A136548 (n + 1)

end A136548

/-! ## A136548.P7549551029679271351

`A028815(∑[char[A000040(n+1)]])-1`
-/

namespace A136548.P7549551029679271351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A136548.P7549551029679271351

namespace A136548

/-- `A028815(∑[char[A000040(n+1)]])-1` -/
def P7549551029679271351.Spec : Prop :=
  ∀ n, P7549551029679271351.a n = A136548 (n + 1)

end A136548

/-!
# A136549: Expansion of (eta(q^3) * eta(q^5))^3 - (eta(q) * eta(q^15))^3 in powers of q.

The programs for A136549, there is no canonical definition to state claims against.
-/

/-! ## A136549.P15341510746980866132

`2*A030220(n+1)-A115155(n+1)`
-/

namespace A136549.P15341510746980866132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030220 (n + 1) - A115155 (n + 1)

end

end A136549.P15341510746980866132

/-! ## A136549.P8016227191734352980

`A030220(n+1)+A030220(3*(n+1))/3`
-/

namespace A136549.P8016227191734352980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030220 (n + 1) : ℚ) + (A030220 (3 * (n + 1)) : ℚ) / 3

end

end A136549.P8016227191734352980

/-!
# A136550: a(n) = C(2^n + 2*n, n) * 2^n / (2^n + 2*n); a(n) = coefficient of x^n in Catalan(x)^(2^n).

The programs for A136550, the canonical program `A136550.P18400708221351462571` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136550 has offset 0).

The definition of A136550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136550.P18400708221351462571

`C(2^n+2*n, n)*2^n/(2^n+2*n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136550

/-- `C(2^n+2*n, n)*2^n/(2^n+2*n)` -/
def P18400708221351462571.Spec : Prop :=
  ∀ n, P18400708221351462571.a n = (A136550 n : ℚ)

end A136550

/-! ## A136550.P5161810894672333623

`A128899(eq[A002262(n), A155038(n+1)])`
-/

namespace A136550.P5161810894672333623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136550.P5161810894672333623

namespace A136550

/-- `A128899(eq[A002262(n), A155038(n+1)])` -/
def P5161810894672333623.Spec : Prop :=
  ∀ n, P5161810894672333623.a n = A136550 n

end A136550

/-! ## A136550.P1288030845305655098

`A039598(eq[A002260(n+1), A155038(n+1)])`
-/

namespace A136550.P1288030845305655098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136550.P1288030845305655098

namespace A136550

/-- `A039598(eq[A002260(n+1), A155038(n+1)])` -/
def P1288030845305655098.Spec : Prop :=
  ∀ n, P1288030845305655098.a n = A136550 n

end A136550

/-! ## A136550.P797112133400259872

`A009766(eq[1, A073345(n)])`
-/

namespace A136550.P797112133400259872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136550.P797112133400259872

namespace A136550

/-- `A009766(eq[1, A073345(n)])` -/
def P797112133400259872.Spec : Prop :=
  ∀ n, P797112133400259872.a n = A136550 n

end A136550

/-!
# A136551: a(n) = C(2^n + 2*n + 1, n)*(2^n + 1)/(2^n + 2*n + 1); a(n) = coefficient of x^n in Catalan(x)^(2^n+1).

The programs for A136551, the canonical program `A136551.P16994646495914815409` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136551 has offset 0).

The definition of A136551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136551.P16994646495914815409

`C(2^n+2*n+1, n)*(2^n+1)/(2^n+2*n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136551

/-- `C(2^n+2*n+1, n)*(2^n+1)/(2^n+2*n+1)` -/
def P16994646495914815409.Spec : Prop :=
  ∀ n, P16994646495914815409.a n = (A136551 n : ℚ)

end A136551

/-! ## A136551.P13749850180854686270

`2*A132685(n)-A132686(n)`
-/

namespace A136551.P13749850180854686270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132685 n - A132686 n

end

end A136551.P13749850180854686270

namespace A136551

/-- `2*A132685(n)-A132686(n)` -/
def P13749850180854686270.Spec : Prop :=
  ∀ n, P13749850180854686270.a n = A136551 n

end A136551

/-! ## A136551.P4336701925884479145

`A132683(n)/A132684(n)*A132685(n)`
-/

namespace A136551.P4336701925884479145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132683 n : ℚ) / (A132684 n : ℚ) * (A132685 n : ℚ)

end

end A136551.P4336701925884479145

namespace A136551

/-- `A132683(n)/A132684(n)*A132685(n)` -/
def P4336701925884479145.Spec : Prop :=
  ∀ n, P4336701925884479145.a n = (A136551 n : ℚ)

end A136551

/-! ## A136551.P5777412195306616894

`A050165(eq[A025581(n), A054124(n)])`
-/

namespace A136551.P5777412195306616894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136551.P5777412195306616894

namespace A136551

/-- `A050165(eq[A025581(n), A054124(n)])` -/
def P5777412195306616894.Spec : Prop :=
  ∀ n, P5777412195306616894.a n = A136551 n

end A136551

/-! ## A136551.P5605150622805968109

`A050165(eq[A004736(n+2), A054124(n)])`
-/

namespace A136551.P5605150622805968109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136551.P5605150622805968109

namespace A136551

/-- `A050165(eq[A004736(n+2), A054124(n)])` -/
def P5605150622805968109.Spec : Prop :=
  ∀ n, P5605150622805968109.a n = A136551 n

end A136551

/-!
# A136552: a(n) = C(2*2^n + 2*n, n)*2^n/(2^n + n); a(n) = coefficient of x^n in Catalan(x)^(2*2^n).

The programs for A136552, the canonical program `A136552.P4840058738728661116` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136552 has offset 0).

The definition of A136552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136552.P4840058738728661116

`C(2*2^n+2*n, n)*2^n/(2^n+n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136552

/-- `C(2*2^n+2*n, n)*2^n/(2^n+n)` -/
def P4840058738728661116.Spec : Prop :=
  ∀ n, P4840058738728661116.a n = (A136552 n : ℚ)

end A136552

/-! ## A136552.P16434477393567838800

`A050166(eq[1, A073345(n)])`
-/

namespace A136552.P16434477393567838800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136552.P16434477393567838800

namespace A136552

/-- `A050166(eq[1, A073345(n)])` -/
def P16434477393567838800.Spec : Prop :=
  ∀ n, P16434477393567838800.a n = A136552 n

end A136552

/-! ## A136552.P1711076854214421278

`A039598(eq[A038207(n), A103406(n)])`
-/

namespace A136552.P1711076854214421278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136552.P1711076854214421278

namespace A136552

/-- `A039598(eq[A038207(n), A103406(n)])` -/
def P1711076854214421278.Spec : Prop :=
  ∀ n, P1711076854214421278.a n = A136552 n

end A136552

/-! ## A136552.P10133089996242394768

`A128899(eq[A002262(n), A130321(n)])`
-/

namespace A136552.P10133089996242394768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136552.P10133089996242394768

namespace A136552

/-- `A128899(eq[A002262(n), A130321(n)])` -/
def P10133089996242394768.Spec : Prop :=
  ∀ n, P10133089996242394768.a n = A136552 n

end A136552

/-!
# A136553: G.f.: A(x) = Sum_{n>=0} log( Sum_{k>=0} (k+1)^n*x^k )^n / n!.

The programs for A136553, there is no canonical definition to state claims against.
-/

/-! ## A136553.P15547816768638960479

`A325462(A304999(n))+n`
-/

namespace A136553.P15547816768638960479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325462 (A304999 n).toNat + (n : ℤ)

end

end A136553.P15547816768638960479

/-!
# A136554: G.f.: A(x) = Sum_{n>=0} log( (1 + x)*(1 + 2^n*x) )^n / n!.

The programs for A136554, the canonical program `A136554.P5198559829836464749` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136554 has offset 0).

The definition of A136554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136554.P5198559829836464749

`∑{#}[n, C(2^#, #)*C(2^#, n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136554

/-- `∑{#}[n, C(2^#, #)*C(2^#, n-#)]` -/
def P5198559829836464749.Spec : Prop :=
  ∀ n, (P5198559829836464749.a n : ℤ) = A136554 n

theorem P5198559829836464749.correct : P5198559829836464749.Spec := by
  intro n
  simp only [A136554]

end A136554

/-!
# A136555: Square array, read by antidiagonals, where T(n,k) = binomial(2^k + n-1, k).

The programs for A136555, the canonical program `A136555.P3369215003360715938` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136555 has offset 0).

The definition of A136555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^col(n)+row(n)-col(n)-1, col(n))` (program `A136555.P3369215003360715938`, by `A136555.P3369215003360715938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136555.P3369215003360715938

`C(2^col(n)+row(n)-col(n)-1, col(n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136555

/-- `C(2^col(n)+row(n)-col(n)-1, col(n))` -/
def P3369215003360715938.Spec : Prop :=
  ∀ n, (P3369215003360715938.a n : ℤ) = A136555 n

theorem P3369215003360715938.correct : P3369215003360715938.Spec := by
  intro n
  simp only [A136555]

end A136555

/-! ## A136555.P738543349096383036

`C(A132924(n+1)-1, A002262(n))`
-/

namespace A136555.P738543349096383036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A132924 (n + 1) - 1).toNat (A002262 n).toNat

end

end A136555.P738543349096383036

namespace A136555

/-- `C(A132924(n+1)-1, A002262(n))` -/
def P738543349096383036.Spec : Prop :=
  ∀ n, (P738543349096383036.a n : ℤ) = A136555 n

end A136555

/-! ## A136555.P1604949689933224097

`C(A023443(A132924(n+1)), A002262(n))`
-/

namespace A136555.P1604949689933224097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023443 (A132924 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A136555.P1604949689933224097

namespace A136555

/-- `C(A023443(A132924(n+1)), A002262(n))` -/
def P1604949689933224097.Spec : Prop :=
  ∀ n, (P1604949689933224097.a n : ℤ) = A136555 n

end A136555

/-! ## A136555.P10994383541271978190

`C(A091264(A061579(n)), A002262(n))`
-/

namespace A136555.P10994383541271978190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091264 (A061579 n).toNat).toNat (A002262 n).toNat

end

end A136555.P10994383541271978190

namespace A136555

/-- `C(A091264(A061579(n)), A002262(n))` -/
def P10994383541271978190.Spec : Prop :=
  ∀ n, (P10994383541271978190.a n : ℤ) = A136555 n

end A136555

/-!
# A136556: a(n) = binomial(2^n - 1, n).

The programs for A136556, the canonical program `A136556.P13005282713291443754` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136556 has offset 0).

The definition of A136556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^n-1, n)` (program `A136556.P13005282713291443754`, by `A136556.P13005282713291443754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136556.P13005282713291443754

`C(2^n-1, n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136556

/-- `C(2^n-1, n)` -/
def P13005282713291443754.Spec : Prop :=
  ∀ n, (P13005282713291443754.a n : ℤ) = A136556 n

theorem P13005282713291443754.correct : P13005282713291443754.Spec := by
  intro n
  simp only [A136556]

end A136556

/-! ## A136556.P12041680984645264627

`A136555(∑[n]+n)`
-/

namespace A136556.P12041680984645264627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136555 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A136556.P12041680984645264627

namespace A136556

/-- `A136555(∑[n]+n)` -/
def P12041680984645264627.Spec : Prop :=
  ∀ n, P12041680984645264627.a n = A136556 n

end A136556

/-! ## A136556.P5513153738832048411

`or(1, C(A000225(n), n))`
-/

namespace A136556.P5513153738832048411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (A000225 n).toNat n)

end

end A136556.P5513153738832048411

namespace A136556

/-- `or(1, C(A000225(n), n))` -/
def P5513153738832048411.Spec : Prop :=
  ∀ n, (P5513153738832048411.a n : ℤ) = A136556 n

end A136556

/-! ## A136556.P10026093020798231813

`abs(C(A000079(n)-1, n)-1)+1`
-/

namespace A136556.P10026093020798231813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A000079 n - 1).toNat n : ℤ) - 1| + 1

end

end A136556.P10026093020798231813

namespace A136556

/-- `abs(C(A000079(n)-1, n)-1)+1` -/
def P10026093020798231813.Spec : Prop :=
  ∀ n, P10026093020798231813.a n = A136556 n

end A136556

/-! ## A136556.P17968943934508912663

`gcd(C(A000079(n)-1, n), A210067(2*n))`
-/

namespace A136556.P17968943934508912663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (A000079 n - 1).toNat n : ℤ) (A210067 (2 * n))

end

end A136556.P17968943934508912663

namespace A136556

/-- `gcd(C(A000079(n)-1, n), A210067(2*n))` -/
def P17968943934508912663.Spec : Prop :=
  ∀ n, (P17968943934508912663.a n : ℤ) = A136556 n

end A136556

/-!
# A136557: a(n) = Sum_{k=0..n} binomial(2^k + n-k-1, k).

The programs for A136557, the canonical program `A136557.P8299756806304052615` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136557 has offset 0).

The definition of A136557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2^#+n-#-1, #)]` (program `A136557.P8299756806304052615`, by `A136557.P8299756806304052615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136557.P8299756806304052615

`∑{#}[n, C(2^#+n-#-1, #)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136557

/-- `∑{#}[n, C(2^#+n-#-1, #)]` -/
def P8299756806304052615.Spec : Prop :=
  ∀ n, (P8299756806304052615.a n : ℤ) = A136557 n

theorem P8299756806304052615.correct : P8299756806304052615.Spec := by
  intro n
  simp only [A136557]

end A136557

/-!
# A136558: G.f.: A(x) = Sum_{n>=0} arcsinh( 2^(2n+1)*x )^(2n+1) / (2n+1)!; a power series in x with integer coefficients.

The programs for A136558, there is no canonical definition to state claims against.
-/

/-! ## A136558.P9342518158350254818

`A136647(n+1)%(A136559(n+1)+8)`
-/

namespace A136558.P9342518158350254818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136647 (n + 1)) (A136559 (n + 1) + 8)

end

end A136558.P9342518158350254818

/-!
# A136559: G.f.: A(x) = Sum_{n>=0} arctanh( 2^(2n+1)*x )^(2n+1) / (2n+1)!; a power series in x with integer coefficients.

The programs for A136559, there is no canonical definition to state claims against.
-/

/-! ## A136559.P16403882208096679439

`A136706(n)*A136749(A183091(n+1))`
-/

namespace A136559.P16403882208096679439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136706 n * A136749 (A183091 (n + 1)).toNat

end

end A136559.P16403882208096679439

/-!
# A136562: Consider the triangle A136561: the n-th diagonal (from the right) is the sequence of (signed) differences between pairs of consecutive terms in the (n-1)th diagonal. The rightmost diagonal (A136562) is defined: A136562(1)=1; A136562(n) is the smallest integer > A136562(n-1) such that any (signed) integer occurs at most once in the triangle A136561.

The programs for A136562, there is no canonical definition to state claims against.
-/

/-! ## A136562.P9647964911397011299

`A136561(∑[n+1])`
-/

namespace A136562.P9647964911397011299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136562.P9647964911397011299

/-! ## A136562.P9644914163776580023

`abs(A136561(A025747(n)))`
-/

namespace A136562.P9644914163776580023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136561 (A025747 n).toNat|

end

end A136562.P9644914163776580023

/-! ## A136562.P3567814129612320563

`abs(A136561(∑[A010889(n)]))`
-/

namespace A136562.P3567814129612320563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A136562.P3567814129612320563

/-! ## A136562.P11559975572968688005

`abs(A136561(∑[A077168(n)]))`
-/

namespace A136562.P11559975572968688005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A136562.P11559975572968688005

/-! ## A136562.P7704098918564918727

`abs(A136561(∑[A291769(n)]))`
-/

namespace A136562.P7704098918564918727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A136562.P7704098918564918727

/-!
# A136563: Leftmost column of triangle A136561.

The programs for A136563, there is no canonical definition to state claims against.
-/

/-! ## A136563.P18301082406383962885

`A136561(∑[n]+1)`
-/

namespace A136563.P18301082406383962885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136561 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A136563.P18301082406383962885

/-! ## A136563.P7336785385625278101

`A136561(A000124(n))+char[11]`
-/

namespace A136563.P7336785385625278101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136561 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A136563.P7336785385625278101

/-! ## A136563.P11911631080369800216

`A136561(A000124(n))%A002148(n)`
-/

namespace A136563.P11911631080369800216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136561 (A000124 n).toNat) (A002148 n)

end

end A136563.P11911631080369800216

/-! ## A136563.P12567811206438323856

`or(A000007(n), A136561(A000124(n)))`
-/

namespace A136563.P12567811206438323856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A136561 (A000124 n).toNat)

end

end A136563.P12567811206438323856

/-! ## A136563.P16762135977371380020

`or(A120043(n), A136561(A000124(n)))`
-/

namespace A136563.P16762135977371380020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120043 n) (A136561 (A000124 n).toNat)

end

end A136563.P16762135977371380020

/-!
# A136565: a(n) = sum of the distinct values making up the exponents in the prime-factorization of n.

The programs for A136565, the canonical program `A136565.P15066519808259168034` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136565 has offset 1).

The definition of A136565 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066328, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136565.P15066519808259168034

`A066328(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A136565

/-- `A066328(A181819(n+1))` -/
def P15066519808259168034.Spec : Prop :=
  ∀ n, P15066519808259168034.a n = A136565 (n + 1)

theorem P15066519808259168034.correct : P15066519808259168034.Spec := by
  intro n
  simp only [A136565, Nat.add_sub_cancel]

end A136565

/-! ## A136565.P2386143732968195214

`∑{e}[A328400(n+1), #]`
-/

namespace A136565.P2386143732968195214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136565.P2386143732968195214

namespace A136565

/-- `∑{e}[A328400(n+1), #]` -/
def P2386143732968195214.Spec : Prop :=
  ∀ n, (P2386143732968195214.a n : ℤ) = A136565 (n + 1)

end A136565

/-! ## A136565.P5032954551768541447

`A079167(A238745(n+1))`
-/

namespace A136565.P5032954551768541447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079167 (A238745 (n + 1)).toNat

end

end A136565.P5032954551768541447

namespace A136565

/-- `A079167(A238745(n+1))` -/
def P5032954551768541447.Spec : Prop :=
  ∀ n, P5032954551768541447.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P7097068470674070963

`A029931(A297404(n+1))`
-/

namespace A136565.P7097068470674070963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A297404 (n + 1)).toNat

end

end A136565.P7097068470674070963

namespace A136565

/-- `A029931(A297404(n+1))` -/
def P7097068470674070963.Spec : Prop :=
  ∀ n, P7097068470674070963.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P6409443485542767388

`A001222(A328400(n+1))`
-/

namespace A136565.P6409443485542767388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328400 (n + 1)).toNat

end

end A136565.P6409443485542767388

namespace A136565

/-- `A001222(A328400(n+1))` -/
def P6409443485542767388.Spec : Prop :=
  ∀ n, P6409443485542767388.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P9777967610590430143

`A056239(A329601(n+1))`
-/

namespace A136565.P9777967610590430143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A329601 (n + 1)).toNat

end

end A136565.P9777967610590430143

namespace A136565

/-- `A056239(A329601(n+1))` -/
def P9777967610590430143.Spec : Prop :=
  ∀ n, P9777967610590430143.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P283401457527071470

`A333842(A181819(n+1)²)`
-/

namespace A136565.P283401457527071470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (A181819 (n + 1) ^ 2).toNat

end

end A136565.P283401457527071470

namespace A136565

/-- `A333842(A181819(n+1)²)` -/
def P283401457527071470.Spec : Prop :=
  ∀ n, P283401457527071470.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P4728617370348276906

`∑{d}[A181819(n+1), A049084(#)]`
-/

namespace A136565.P4728617370348276906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A136565.P4728617370348276906

namespace A136565

/-- `∑{d}[A181819(n+1), A049084(#)]` -/
def P4728617370348276906.Spec : Prop :=
  ∀ n, P4728617370348276906.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P17322175662681555250

`∑{p}[A181819(n+1), A003963(#)]`
-/

namespace A136565.P17322175662681555250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A136565.P17322175662681555250

namespace A136565

/-- `∑{p}[A181819(n+1), A003963(#)]` -/
def P17322175662681555250.Spec : Prop :=
  ∀ n, P17322175662681555250.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P17127083546825469903

`∑{p}[A181819(n+1), A056239(#)]`
-/

namespace A136565.P17127083546825469903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p

end

end A136565.P17127083546825469903

namespace A136565

/-- `∑{p}[A181819(n+1), A056239(#)]` -/
def P17127083546825469903.Spec : Prop :=
  ∀ n, P17127083546825469903.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P1989133181809492341

`A056239(∏{p}[A181819(n+1), #])`
-/

namespace A136565.P1989133181809492341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A136565.P1989133181809492341

namespace A136565

/-- `A056239(∏{p}[A181819(n+1), #])` -/
def P1989133181809492341.Spec : Prop :=
  ∀ n, P1989133181809492341.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P2237203900895066308

`∑{p}[∏{e}[n+1, A000040(#)], A000720(#)]`
-/

namespace A136565.P2237203900895066308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000040 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A136565.P2237203900895066308

namespace A136565

/-- `∑{p}[∏{e}[n+1, A000040(#)], A000720(#)]` -/
def P2237203900895066308.Spec : Prop :=
  ∀ n, P2237203900895066308.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P11896067876108240100

`∑{p}[∏{e}[n+1, A000040(#)], A003963(#)]`
-/

namespace A136565.P11896067876108240100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000040 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A136565.P11896067876108240100

namespace A136565

/-- `∑{p}[∏{e}[n+1, A000040(#)], A003963(#)]` -/
def P11896067876108240100.Spec : Prop :=
  ∀ n, P11896067876108240100.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P17187723815738407023

`∑{p}[∏{e}[n+1, A095285(#)], A003963(#)]`
-/

namespace A136565.P17187723815738407023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A095285 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A136565.P17187723815738407023

namespace A136565

/-- `∑{p}[∏{e}[n+1, A095285(#)], A003963(#)]` -/
def P17187723815738407023.Spec : Prop :=
  ∀ n, P17187723815738407023.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P6693758850889628932

`∑{p}[∏{e}[n+1, A040976(#)+2], A003963(#)]`
-/

namespace A136565.P6693758850889628932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A040976 (Nat.factorization (f2 n) p) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A136565.P6693758850889628932

namespace A136565

/-- `∑{p}[∏{e}[n+1, A040976(#)+2], A003963(#)]` -/
def P6693758850889628932.Spec : Prop :=
  ∀ n, P6693758850889628932.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P8175047172886197128

`A001222(A181821(∏{p}[A181819(n+1), #]))`
-/

namespace A136565.P8175047172886197128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A136565.P8175047172886197128

namespace A136565

/-- `A001222(A181821(∏{p}[A181819(n+1), #]))` -/
def P8175047172886197128.Spec : Prop :=
  ∀ n, P8175047172886197128.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P4590816114078642184

`A056239(gcd(A086568(n+1), A181819(n+1)))`
-/

namespace A136565.P4590816114078642184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.gcd (A086568 (n + 1)) (A181819 (n + 1)))

end

end A136565.P4590816114078642184

namespace A136565

/-- `A056239(gcd(A086568(n+1), A181819(n+1)))` -/
def P4590816114078642184.Spec : Prop :=
  ∀ n, P4590816114078642184.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P15721208159105678254

`∑{p}[A181819(n+1), A048675(A048675(#²))]`
-/

namespace A136565.P15721208159105678254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 (A048675 (p ^ 2)).toNat

end

end A136565.P15721208159105678254

namespace A136565

/-- `∑{p}[A181819(n+1), A048675(A048675(#²))]` -/
def P15721208159105678254.Spec : Prop :=
  ∀ n, P15721208159105678254.a n = A136565 (n + 1)

end A136565

/-! ## A136565.P16787391129801862870

`A048675(∏{p}[A181819(n+1), A048675(#²)])`
-/

namespace A136565.P16787391129801862870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 (p ^ 2)).toNat

end

end A136565.P16787391129801862870

namespace A136565

/-- `A048675(∏{p}[A181819(n+1), A048675(#²)])` -/
def P16787391129801862870.Spec : Prop :=
  ∀ n, P16787391129801862870.a n = A136565 (n + 1)

end A136565

/-!
# A136566: a(n) = sum of the exponents occurring only once each in the prime-factorization of n.

The programs for A136566, the canonical program `A136566.P5628416057949265605` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136566 has offset 1).

The definition of A136566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136566.P5628416057949265605

`A136567(n+1)+a(floor(n/∏{p}[n+1, #]))` with `a(0)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A136566

/-- `A136567(n+1)+a(floor(n/∏{p}[n+1, #]))` -/
def P5628416057949265605.Spec : Prop :=
  ∀ n, P5628416057949265605.a n = A136566 (n + 1)

theorem P5628416057949265605.correct : P5628416057949265605.Spec := by
  intro n
  simp only [A136566, Nat.add_sub_cancel]

end A136566

/-! ## A136566.P16586712499185278353

`val(A048767(A181819(n+1)), 2)`
-/

namespace A136566.P16586712499185278353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048767 (A181819 (n + 1)).toNat).toNat 2

end

end A136566.P16586712499185278353

namespace A136566

/-- `val(A048767(A181819(n+1)), 2)` -/
def P16586712499185278353.Spec : Prop :=
  ∀ n, (P16586712499185278353.a n : ℤ) = A136566 (n + 1)

end A136566

/-! ## A136566.P16576804900462878955

`A056239(A329376(A181819(n+1)²))`
-/

namespace A136566.P16576804900462878955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A329376 (A181819 (n + 1) ^ 2).toNat).toNat

end

end A136566.P16576804900462878955

namespace A136566

/-- `A056239(A329376(A181819(n+1)²))` -/
def P16576804900462878955.Spec : Prop :=
  ∀ n, P16576804900462878955.a n = A136566 (n + 1)

end A136566

/-! ## A136566.P17483388765487521142

`∑{d}[A304328(A181819(n+1)), A049084(#)]`
-/

namespace A136566.P17483388765487521142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A136566.P17483388765487521142

namespace A136566

/-- `∑{d}[A304328(A181819(n+1)), A049084(#)]` -/
def P17483388765487521142.Spec : Prop :=
  ∀ n, P17483388765487521142.a n = A136566 (n + 1)

end A136566

/-! ## A136566.P5094350467897791289

`dr(A321801(A320390(n+1)))`
-/

namespace A136566.P5094350467897791289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A321801 (A320390 (n + 1)).toNat)

end

end A136566.P5094350467897791289

namespace A136566

/-- `dr(A321801(A320390(n+1)))` -/
def P5094350467897791289.Spec : Prop :=
  ∀ n, (P5094350467897791289.a n : ℤ) = A136566 (n + 1)

end A136566

/-! ## A136566.P16078985012239819231

`and(A001222(n+1), A279356(A069626(n+1)))`
-/

namespace A136566.P16078985012239819231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 1)) (A279356 (A069626 (n + 1)).toNat)

end

end A136566.P16078985012239819231

namespace A136566

/-- `and(A001222(n+1), A279356(A069626(n+1)))` -/
def P16078985012239819231.Spec : Prop :=
  ∀ n, P16078985012239819231.a n = A136566 (n + 1)

end A136566

/-!
# A136567: a(n) is the number of exponents occurring only once each in the prime factorization of n.

The programs for A136567, the canonical program `A136567.P716932558087194068` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136567 has offset 1).

The definition of A136567 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136567.P716932558087194068

`A056169(A181819(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A136567

/-- `A056169(A181819(n+1))` -/
def P716932558087194068.Spec : Prop :=
  ∀ n, P716932558087194068.a n = A136567 (n + 1)

theorem P716932558087194068.correct : P716932558087194068.Spec := by
  intro n
  simp only [A136567, Nat.add_sub_cancel]

end A136567

/-! ## A136567.P13362508183460581225

`val(A328830(n+1), 2)`
-/

namespace A136567.P13362508183460581225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328830 (n + 1)).toNat 2

end

end A136567.P13362508183460581225

namespace A136567

/-- `val(A328830(n+1), 2)` -/
def P13362508183460581225.Spec : Prop :=
  ∀ n, (P13362508183460581225.a n : ℤ) = A136567 (n + 1)

end A136567

/-! ## A136567.P3003740967403178199

`A007814(A328830(n+1))`
-/

namespace A136567.P3003740967403178199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A328830 (n + 1)).toNat

end

end A136567.P3003740967403178199

namespace A136567

/-- `A007814(A328830(n+1))` -/
def P3003740967403178199.Spec : Prop :=
  ∀ n, P3003740967403178199.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P10597771674271011853

`∑{e}[A181819(n+1)², A010051(#)]`
-/

namespace A136567.P10597771674271011853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 (Nat.factorization (f1 n).natAbs p)

end

end A136567.P10597771674271011853

namespace A136567

/-- `∑{e}[A181819(n+1)², A010051(#)]` -/
def P10597771674271011853.Spec : Prop :=
  ∀ n, P10597771674271011853.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P6860131701770146012

`∑{e}[A181819(n+1), A010051(2*#)]`
-/

namespace A136567.P6860131701770146012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 (2 * Nat.factorization (f1 n).natAbs p)

end

end A136567.P6860131701770146012

namespace A136567

/-- `∑{e}[A181819(n+1), A010051(2*#)]` -/
def P6860131701770146012.Spec : Prop :=
  ∀ n, P6860131701770146012.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P6390778387589796625

`∑{e}[∏{e}[n+1, A095313(#)], A327517(#)]`
-/

namespace A136567.P6390778387589796625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A095313 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A327517 (Nat.factorization (f1 n).natAbs p)

end

end A136567.P6390778387589796625

namespace A136567

/-- `∑{e}[∏{e}[n+1, A095313(#)], A327517(#)]` -/
def P6390778387589796625.Spec : Prop :=
  ∀ n, P6390778387589796625.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P12742109673647406972

`∑{e}[∏{e}[n+1, A127052(#)], A327517(#)]`
-/

namespace A136567.P12742109673647406972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A127052 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A327517 (Nat.factorization (f1 n).natAbs p)

end

end A136567.P12742109673647406972

namespace A136567

/-- `∑{e}[∏{e}[n+1, A127052(#)], A327517(#)]` -/
def P12742109673647406972.Spec : Prop :=
  ∀ n, P12742109673647406972.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P1552125644657407920

`∑{e}[∏{e}[n+1, A219697(#)], A327517(#)]`
-/

namespace A136567.P1552125644657407920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A219697 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A327517 (Nat.factorization (f1 n).natAbs p)

end

end A136567.P1552125644657407920

namespace A136567

/-- `∑{e}[∏{e}[n+1, A219697(#)], A327517(#)]` -/
def P1552125644657407920.Spec : Prop :=
  ∀ n, P1552125644657407920.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P12625459067700412805

`val(∏{e}[∏{e}[n+1, A000040(#)], A000040(#)], 2)`
-/

namespace A136567.P12625459067700412805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000040 (Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat 2

end

end A136567.P12625459067700412805

namespace A136567

/-- `val(∏{e}[∏{e}[n+1, A000040(#)], A000040(#)], 2)` -/
def P12625459067700412805.Spec : Prop :=
  ∀ n, (P12625459067700412805.a n : ℤ) = A136567 (n + 1)

end A136567

/-! ## A136567.P2645763503827803987

`A101436(A181819(n+1)²)`
-/

namespace A136567.P2645763503827803987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A181819 (n + 1) ^ 2).toNat

end

end A136567.P2645763503827803987

namespace A136567

/-- `A101436(A181819(n+1)²)` -/
def P2645763503827803987.Spec : Prop :=
  ∀ n, P2645763503827803987.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P7646806664800977174

`A007949(A181819(A181819(n+1)²))`
-/

namespace A136567.P7646806664800977174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A181819 (A181819 (n + 1) ^ 2).toNat).toNat

end

end A136567.P7646806664800977174

namespace A136567

/-- `A007949(A181819(A181819(n+1)²))` -/
def P7646806664800977174.Spec : Prop :=
  ∀ n, P7646806664800977174.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P3963771363240932083

`A101436(A181819(n+1)*A181819(n+1))`
-/

namespace A136567.P3963771363240932083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A181819 (n + 1) * A181819 (n + 1)).toNat

end

end A136567.P3963771363240932083

namespace A136567

/-- `A101436(A181819(n+1)*A181819(n+1))` -/
def P3963771363240932083.Spec : Prop :=
  ∀ n, P3963771363240932083.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P4251256232120395883

`A056169(A295879((n+1)²))`
-/

namespace A136567.P4251256232120395883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A295879 ((n + 1) ^ 2)).toNat

end

end A136567.P4251256232120395883

namespace A136567

/-- `A056169(A295879((n+1)²))` -/
def P4251256232120395883.Spec : Prop :=
  ∀ n, P4251256232120395883.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P13652793279478401085

`∑{e}[A295879((n+1)*∏{p}[n+1, #]), A327517(#)]`
-/

namespace A136567.P13652793279478401085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A327517 (Nat.factorization (f1 n).natAbs p)

end

end A136567.P13652793279478401085

namespace A136567

/-- `∑{e}[A295879((n+1)*∏{p}[n+1, #]), A327517(#)]` -/
def P13652793279478401085.Spec : Prop :=
  ∀ n, P13652793279478401085.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P9957861804538367549

`A007814(A295878(A295879(∑[2*n+1])))`
-/

namespace A136567.P9957861804538367549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A295878 (A295879 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A136567.P9957861804538367549

namespace A136567

/-- `A007814(A295878(A295879(∑[2*n+1])))` -/
def P9957861804538367549.Spec : Prop :=
  ∀ n, P9957861804538367549.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P9689136733647916263

`A369427(A295879((n+1)²)²)`
-/

namespace A136567.P9689136733647916263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A295879 ((n + 1) ^ 2) ^ 2).toNat

end

end A136567.P9689136733647916263

namespace A136567

/-- `A369427(A295879((n+1)²)²)` -/
def P9689136733647916263.Spec : Prop :=
  ∀ n, P9689136733647916263.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P1294517177252670176

`A056169(A353510(∑[n+2]))`
-/

namespace A136567.P1294517177252670176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A353510 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A136567.P1294517177252670176

namespace A136567

/-- `A056169(A353510(∑[n+2]))` -/
def P1294517177252670176.Spec : Prop :=
  ∀ n, P1294517177252670176.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P13861262224144681931

`A125070(A181819((n+1)²))`
-/

namespace A136567.P13861262224144681931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (A181819 ((n + 1) ^ 2)).toNat

end

end A136567.P13861262224144681931

namespace A136567

/-- `A125070(A181819((n+1)²))` -/
def P13861262224144681931.Spec : Prop :=
  ∀ n, P13861262224144681931.a n = A136567 (n + 1)

end A136567

/-! ## A136567.P4082131451992787605

`A346070(A181819(A181819((n+1)*(n+1))))`
-/

namespace A136567.P4082131451992787605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346070 (A181819 (A181819 ((n + 1) * (n + 1))).toNat).toNat

end

end A136567.P4082131451992787605

namespace A136567

/-- `A346070(A181819(A181819((n+1)*(n+1))))` -/
def P4082131451992787605.Spec : Prop :=
  ∀ n, P4082131451992787605.a n = A136567 (n + 1)

end A136567

/-!
# A136568: Irregular triangle read by rows: row n contains the distinct values (in numerical order) making up the nonzero exponents in the prime factorization of n. (Row 1 = (0).).

The programs for A136568, there is no canonical definition to state claims against.
-/

/-! ## A136568.P13126360376939992222

`A124010(lt[A336327(3*n+2), A014945(n+1)])`
-/

namespace A136568.P13126360376939992222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336327 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136568.P13126360376939992222

/-! ## A136568.P11324236071284318382

`A124010(lt[A290451(3*n+2), A241746(n+1)])`
-/

namespace A136568.P11324236071284318382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290451 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136568.P11324236071284318382

/-! ## A136568.P14388717156635758531

`A124010(lt[A038664(n+1), (2*n+1)²])`
-/

namespace A136568.P14388717156635758531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A136568.P14388717156635758531

/-! ## A136568.P2172419303706761598

`A067029(∑[A011782(A193581(n))])`
-/

namespace A136568.P2172419303706761598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A193581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136568.P2172419303706761598

/-! ## A136568.P3526722779151031008

`A001262(A373566(n))%A070082(n+1)`
-/

namespace A136568.P3526722779151031008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001262 (A373566 n).toNat) (A070082 (n + 1))

end

end A136568.P3526722779151031008

/-!
# A136572: Triangle read by rows: row n consists of n zeros followed by n!.

The programs for A136572, the canonical program `A136572.P3186163325720509380` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136572 has offset 0).

The definition of A136572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136572.P1204096194755016890

`col(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A136572.P1204096194755016890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triCol n * SequenceMachineLib.triUpLeft a n

end

end A136572.P1204096194755016890

namespace A136572

/-- `col(n)*T(n-1,k-1)` -/
def P1204096194755016890.Spec : Prop :=
  ∀ n, (P1204096194755016890.a n : ℤ) = A136572 n

end A136572

/-! ## A136572.P4980717913878232931

`row(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A136572.P4980717913878232931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triUpLeft a n

end

end A136572.P4980717913878232931

namespace A136572

/-- `row(n)*T(n-1,k-1)` -/
def P4980717913878232931.Spec : Prop :=
  ∀ n, (P4980717913878232931.a n : ℤ) = A136572 n

end A136572

/-! ## A136572.P1334062775295185069

`col(n)!*C(col(n), row(n))`
-/

namespace A136572.P1334062775295185069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)

end

end A136572.P1334062775295185069

namespace A136572

/-- `col(n)!*C(col(n), row(n))` -/
def P1334062775295185069.Spec : Prop :=
  ∀ n, (P1334062775295185069.a n : ℤ) = A136572 n

end A136572

/-! ## A136572.P3186163325720509380

`Δ[A003422(A003056(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136572

/-- `Δ[A003422(A003056(n))]` -/
def P3186163325720509380.Spec : Prop :=
  ∀ n, P3186163325720509380.a n = A136572 n

theorem P3186163325720509380.correct : P3186163325720509380.Spec := by
  intro n
  simp only [A136572]

end A136572

/-! ## A136572.P10397267703320828424

`A116447(A127775(n+1))`
-/

namespace A136572.P10397267703320828424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A127775 (n + 1)).toNat

end

end A136572.P10397267703320828424

namespace A136572

/-- `A116447(A127775(n+1))` -/
def P10397267703320828424.Spec : Prop :=
  ∀ n, P10397267703320828424.a n = A136572 n

end A136572

/-! ## A136572.P15358070836895163669

`A023531(n)*A054651(n)`
-/

namespace A136572.P15358070836895163669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A054651 n

end

end A136572.P15358070836895163669

namespace A136572

/-- `A023531(n)*A054651(n)` -/
def P15358070836895163669.Spec : Prop :=
  ∀ n, P15358070836895163669.a n = A136572 n

end A136572

/-! ## A136572.P2254583953056180815

`A023531(n)*A080955(n)`
-/

namespace A136572.P2254583953056180815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A080955 n

end

end A136572.P2254583953056180815

namespace A136572

/-- `A023531(n)*A080955(n)` -/
def P2254583953056180815.Spec : Prop :=
  ∀ n, P2254583953056180815.a n = A136572 n

end A136572

/-! ## A136572.P230208556278935278

`A081733(n)*A136579(n)`
-/

namespace A136572.P230208556278935278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081733 n * A136579 n

end

end A136572.P230208556278935278

namespace A136572

/-- `A081733(n)*A136579(n)` -/
def P230208556278935278.Spec : Prop :=
  ∀ n, P230208556278935278.a n = A136572 n

end A136572

/-! ## A136572.P4473958843206100373

`A112334(n)*A136579(n)`
-/

namespace A136572.P4473958843206100373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112334 n * A136579 n

end

end A136572.P4473958843206100373

namespace A136572

/-- `A112334(n)*A136579(n)` -/
def P4473958843206100373.Spec : Prop :=
  ∀ n, P4473958843206100373.a n = A136572 n

end A136572

/-! ## A136572.P7412448703789539409

`A120111(n)*A136579(n)`
-/

namespace A136572.P7412448703789539409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120111 n * A136579 n

end

end A136572.P7412448703789539409

namespace A136572

/-- `A120111(n)*A136579(n)` -/
def P7412448703789539409.Spec : Prop :=
  ∀ n, P7412448703789539409.a n = A136572 n

end A136572

/-! ## A136572.P15699763708859940858

`A120113(n)*A136579(n)`
-/

namespace A136572.P15699763708859940858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120113 n * A136579 n

end

end A136572.P15699763708859940858

namespace A136572

/-- `A120113(n)*A136579(n)` -/
def P15699763708859940858.Spec : Prop :=
  ∀ n, P15699763708859940858.a n = A136572 n

end A136572

/-! ## A136572.P8856980309058557887

`A023531(n)*A233543(n)`
-/

namespace A136572.P8856980309058557887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A233543 n

end

end A136572.P8856980309058557887

namespace A136572

/-- `A023531(n)*A233543(n)` -/
def P8856980309058557887.Spec : Prop :=
  ∀ n, P8856980309058557887.a n = A136572 n

end A136572

/-! ## A136572.P4418727176302358583

`A238341(n)*A355610(n)`
-/

namespace A136572.P4418727176302358583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 n * A355610 n

end

end A136572.P4418727176302358583

namespace A136572

/-- `A238341(n)*A355610(n)` -/
def P4418727176302358583.Spec : Prop :=
  ∀ n, P4418727176302358583.a n = A136572 n

end A136572

/-! ## A136572.P8376154696493505116

`A242451(n)*A355610(n)`
-/

namespace A136572.P8376154696493505116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 n * A355610 n

end

end A136572.P8376154696493505116

namespace A136572

/-- `A242451(n)*A355610(n)` -/
def P8376154696493505116.Spec : Prop :=
  ∀ n, P8376154696493505116.a n = A136572 n

end A136572

/-! ## A136572.P4050014302682051425

`A243978(n)*A355610(n)`
-/

namespace A136572.P4050014302682051425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 n * A355610 n

end

end A136572.P4050014302682051425

namespace A136572

/-- `A243978(n)*A355610(n)` -/
def P4050014302682051425.Spec : Prop :=
  ∀ n, P4050014302682051425.a n = A136572 n

end A136572

/-! ## A136572.P6586786850251776378

`A271424(n)*A355610(n)`
-/

namespace A136572.P6586786850251776378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 n * A355610 n

end

end A136572.P6586786850251776378

namespace A136572

/-- `A271424(n)*A355610(n)` -/
def P6586786850251776378.Spec : Prop :=
  ∀ n, P6586786850251776378.a n = A136572 n

end A136572

/-! ## A136572.P16961306612430024908

`A288318(n)*A355610(n)`
-/

namespace A136572.P16961306612430024908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 n * A355610 n

end

end A136572.P16961306612430024908

namespace A136572

/-- `A288318(n)*A355610(n)` -/
def P16961306612430024908.Spec : Prop :=
  ∀ n, P16961306612430024908.a n = A136572 n

end A136572

/-! ## A136572.P6634771099513499724

`lcm(A054651(n), A134402(n))`
-/

namespace A136572.P6634771099513499724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054651 n) (A134402 n)

end

end A136572.P6634771099513499724

namespace A136572

/-- `lcm(A054651(n), A134402(n))` -/
def P6634771099513499724.Spec : Prop :=
  ∀ n, (P6634771099513499724.a n : ℤ) = A136572 n

end A136572

/-! ## A136572.P4421312503384753247

`char[A000096(n)]*A233543(n)`
-/

namespace A136572.P4421312503384753247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A233543 n

end

end A136572.P4421312503384753247

namespace A136572

/-- `char[A000096(n)]*A233543(n)` -/
def P4421312503384753247.Spec : Prop :=
  ∀ n, P4421312503384753247.a n = A136572 n

end A136572

/-! ## A136572.P226978850148615623

`A084938(A127773(n+1)+1)`
-/

namespace A136572.P226978850148615623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A127773 (n + 1) + 1).toNat

end

end A136572.P226978850148615623

namespace A136572

/-- `A084938(A127773(n+1)+1)` -/
def P226978850148615623.Spec : Prop :=
  ∀ n, P226978850148615623.a n = A136572 n

end A136572

/-!
# A136573: Triangle read by rows: (A000012 * A136572 + A136572 * A000012) - A000012.

The programs for A136573, the canonical program `A136573.P5088925185309932014` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136573 has offset 0).

The definition of A136573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136573.P5088925185309932014

`row(n)!+col(n)!-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136573

/-- `row(n)!+col(n)!-1` -/
def P5088925185309932014.Spec : Prop :=
  ∀ n, P5088925185309932014.a n = A136573 n

theorem P5088925185309932014.correct : P5088925185309932014.Spec := by
  intro n
  simp only [A136573]

end A136573

/-! ## A136573.P11929683925808503740

`A233543(n)+A119502(A245300(n))-1`
-/

namespace A136573.P11929683925808503740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n + (A119502 (A245300 n).toNat - 1)

end

end A136573.P11929683925808503740

namespace A136573

/-- `A233543(n)+A119502(A245300(n))-1` -/
def P11929683925808503740.Spec : Prop :=
  ∀ n, P11929683925808503740.a n = A136573 n

end A136573

/-! ## A136573.P4826774032428231239

`A119502(A245300(n))+A023443(A233543(n))`
-/

namespace A136573.P4826774032428231239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A245300 n).toNat + A023443 (A233543 n).toNat

end

end A136573.P4826774032428231239

namespace A136573

/-- `A119502(A245300(n))+A023443(A233543(n))` -/
def P4826774032428231239.Spec : Prop :=
  ∀ n, P4826774032428231239.a n = A136573 n

end A136573

/-! ## A136573.P15587413534090590540

`A266193(A066847(n)-A057427(n))`
-/

namespace A136573.P15587413534090590540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A066847 n - A057427 n).toNat

end

end A136573.P15587413534090590540

namespace A136573

/-- `A266193(A066847(n)-A057427(n))` -/
def P15587413534090590540.Spec : Prop :=
  ∀ n, P15587413534090590540.a n = A136573 n

end A136573

/-!
# A136574: Row sums of triangle A136573.

The programs for A136574, the canonical program `A136574.P13021674049424972667` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136574 has offset 0).

The definition of A136574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136574.P13021674049424972667

`a(n-1)+n!-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136574

/-- `a(n-1)+n!-1` -/
def P13021674049424972667.Spec : Prop :=
  ∀ n, P13021674049424972667.a n = A136574 n

theorem P13021674049424972667.correct : P13021674049424972667.Spec := by
  intro n
  simp only [A136574]

end A136574

/-! ## A136574.P18406289355135656839

`∑[n!]-n`
-/

namespace A136574.P18406289355135656839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A136574.P18406289355135656839

namespace A136574

/-- `∑[n!]-n` -/
def P18406289355135656839.Spec : Prop :=
  ∀ n, P18406289355135656839.a n = A136574 n

end A136574

/-! ## A136574.P11432612643646053754

`∑[n*a(n-1)]-n` with `a(0)=1`
-/

namespace A136574.P11432612643646053754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A136574.P11432612643646053754

namespace A136574

/-- `∑[n*a(n-1)]-n` -/
def P11432612643646053754.Spec : Prop :=
  ∀ n, P11432612643646053754.a n = A136574 n

end A136574

/-! ## A136574.P12218100839182244189

`n!-floor(ϕ-a(n-1))` with `a(0)=1`
-/

namespace A136574.P12218100839182244189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℤ) - ⌊Real.goldenRatio - (a (n - 1) : ℝ)⌋

end

end A136574.P12218100839182244189

namespace A136574

/-- `n!-floor(ϕ-a(n-1))` -/
def P12218100839182244189.Spec : Prop :=
  ∀ n, P12218100839182244189.a n = A136574 n

end A136574

/-! ## A136574.P18365206072128048432

`∑[lcm(n, a(n-1))+n-1]` with `a(0)=1, a(1)=0`
-/

namespace A136574.P18365206072128048432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (Int.lcm (n : ℤ) (f1 (n - 1)) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136574.P18365206072128048432

namespace A136574

/-- `∑[lcm(n, a(n-1))+n-1]` -/
def P18365206072128048432.Spec : Prop :=
  ∀ n, P18365206072128048432.a n = A136574 n

end A136574

/-! ## A136574.P3831522071451537633

`A143122(∑[n])-n`
-/

namespace A136574.P3831522071451537633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A136574.P3831522071451537633

namespace A136574

/-- `A143122(∑[n])-n` -/
def P3831522071451537633.Spec : Prop :=
  ∀ n, P3831522071451537633.a n = A136574 n

end A136574

/-! ## A136574.P5664662145437755374

`A348482(∑[n])-n`
-/

namespace A136574.P5664662145437755374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348482 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A136574.P5664662145437755374

namespace A136574

/-- `A348482(∑[n])-n` -/
def P5664662145437755374.Spec : Prop :=
  ∀ n, P5664662145437755374.a n = A136574 n

end A136574

/-! ## A136574.P11133628066013176040

`A003422(n+1)-n`
-/

namespace A136574.P11133628066013176040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1) - (n : ℤ)

end

end A136574.P11133628066013176040

namespace A136574

/-- `A003422(n+1)-n` -/
def P11133628066013176040.Spec : Prop :=
  ∀ n, P11133628066013176040.a n = A136574 n

end A136574

/-! ## A136574.P5751597691379367815

`A007489(n)+1-n`
-/

namespace A136574.P5751597691379367815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n + 1 - (n : ℤ)

end

end A136574.P5751597691379367815

namespace A136574

/-- `A007489(n)+1-n` -/
def P5751597691379367815.Spec : Prop :=
  ∀ n, P5751597691379367815.a n = A136574 n

end A136574

/-! ## A136574.P107520023416065761

`A036781(n)-2*n`
-/

namespace A136574.P107520023416065761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036781 n - (2 * n : ℤ)

end

end A136574.P107520023416065761

namespace A136574

/-- `A036781(n)-2*n` -/
def P107520023416065761.Spec : Prop :=
  ∀ n, P107520023416065761.a n = A136574 n

end A136574

/-!
# A136575: A triangular sequence using Stan Wagon's LegendrePhi[a,b] function.

The programs for A136575, there is no canonical definition to state claims against.
-/

/-! ## A136575.P17000046786268052303

`A010766(n+1)-A326793(n)%2`
-/

namespace A136575.P17000046786268052303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - Int.tmod (A326793 n) 2

end

end A136575.P17000046786268052303

/-! ## A136575.P11385419082828978987

`A159075(A201199(n))+A010766(n+1)`
-/

namespace A136575.P11385419082828978987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A201199 n).toNat + A010766 (n + 1)

end

end A136575.P11385419082828978987

/-! ## A136575.P15910554882317416315

`A010766(n+1)-A010052(A187363(n+1))`
-/

namespace A136575.P15910554882317416315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A010052 (A187363 (n + 1)).toNat

end

end A136575.P15910554882317416315

/-! ## A136575.P13828089152986381340

`A010766(n+1)-A147986(A122510(n+1))`
-/

namespace A136575.P13828089152986381340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A147986 (A122510 (n + 1)).toNat

end

end A136575.P13828089152986381340

/-! ## A136575.P5959806043439409877

`A010766(n+1)-A000035(A019538(n+1))`
-/

namespace A136575.P5959806043439409877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A000035 (A019538 (n + 1)).toNat

end

end A136575.P5959806043439409877

/-!
# A136576: Series reversion of x*c(x)/(1 - 2*x), c(x) the g.f. of A000108.

The programs for A136576, the canonical program `A136576.P9301730966538288022` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136576 has offset 0).

The definition of A136576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136576.P12857101466867729207

`ceil(A100238(n+2)/4)`
-/

namespace A136576.P12857101466867729207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100238 (n + 2) : ℚ) / 4⌉

end

end A136576.P12857101466867729207

namespace A136576

/-- `ceil(A100238(n+2)/4)` -/
def P12857101466867729207.Spec : Prop :=
  ∀ n, P12857101466867729207.a n = A136576 n

end A136576

/-! ## A136576.P9301730966538288022

`A062157(n)/2*A071356(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136576

/-- `A062157(n)/2*A071356(n)` -/
def P9301730966538288022.Spec : Prop :=
  ∀ n, P9301730966538288022.a n = (A136576 n : ℚ)

end A136576

/-! ## A136576.P569109065431336933

`A100238(n+2)/4*A057427(n)`
-/

namespace A136576.P569109065431336933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100238 (n + 2) : ℚ) / 4 * (A057427 n : ℚ)

end

end A136576.P569109065431336933

namespace A136576

/-- `A100238(n+2)/4*A057427(n)` -/
def P569109065431336933.Spec : Prop :=
  ∀ n, P569109065431336933.a n = (A136576 n : ℚ)

end A136576

/-! ## A136576.P1783282729145810675

`floor(A000007(n)+A100238(n+2)/4)`
-/

namespace A136576.P1783282729145810675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + (A100238 (n + 2) : ℚ) / 4⌋

end

end A136576.P1783282729145810675

namespace A136576

/-- `floor(A000007(n)+A100238(n+2)/4)` -/
def P1783282729145810675.Spec : Prop :=
  ∀ n, P1783282729145810675.a n = A136576 n

end A136576

/-! ## A136576.P11889643010441800762

`A100238(n+2)/4*A285414(Δ[A018252(n+1)])`
-/

namespace A136576.P11889643010441800762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100238 (n + 2) : ℚ) / 4 * (A285414 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A136576.P11889643010441800762

namespace A136576

/-- `A100238(n+2)/4*A285414(Δ[A018252(n+1)])` -/
def P11889643010441800762.Spec : Prop :=
  ∀ n, P11889643010441800762.a n = (A136576 n : ℚ)

end A136576

/-!
# A136577: Conjectured Hankel transform of A136576(n+1).

The programs for A136577, there is no canonical definition to state claims against.
-/

/-! ## A136577.P1777428441133927295

`∏[A011782(n)]*A146559(n)`
-/

namespace A136577.P1777428441133927295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A146559 n

end

end A136577.P1777428441133927295

/-! ## A136577.P3162066540179375370

`Δ[A009545(n)]*A000079(A161680(n))`
-/

namespace A136577.P3162066540179375370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 (A161680 n).toNat

end

end A136577.P3162066540179375370

/-! ## A136577.P8934514451013852527

`A016116(n²)*A046980(n)`
-/

namespace A136577.P8934514451013852527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n ^ 2) * A046980 n

end

end A136577.P8934514451013852527

/-! ## A136577.P13180026351282111962

`A046980(n)*A146559(n²)`
-/

namespace A136577.P13180026351282111962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A146559 (n ^ 2)

end

end A136577.P13180026351282111962

/-! ## A136577.P14855379594514836100

`∏[A213173(n)]*A046980(n)`
-/

namespace A136577.P14855379594514836100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A046980 n

end

end A136577.P14855379594514836100

/-!
# A136578: G.f.: A(x) = Sum_{n>=0} log( (1 + 2^n*x)*(1 + 3^n*x) )^n / n!.

The programs for A136578, the canonical program `A136578.P4026049351656051725` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136578 has offset 0).

The definition of A136578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136578.P4026049351656051725

`∑{#}[n, C(2^#*3^(n-#), #)*C(2^#*3^(n-#), n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136578

/-- `∑{#}[n, C(2^#*3^(n-#), #)*C(2^#*3^(n-#), n-#)]` -/
def P4026049351656051725.Spec : Prop :=
  ∀ n, (P4026049351656051725.a n : ℤ) = A136578 n

theorem P4026049351656051725.correct : P4026049351656051725.Spec := by
  intro n
  simp only [A136578]

end A136578

/-!
# A136579: Triangle read by rows: A128174 * A136572.

The programs for A136579, the canonical program `A136579.P5647402470606448` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136579 has offset 0).

The definition of A136579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136579.P8115217008166496287

`T(n-2,k)+(1-T(n-2,k))*(col(n)*T(n-1,k-1)-T(n-2,k))` with `a(0)=1`
-/

namespace A136579.P8115217008166496287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + (1 - SequenceMachineLib.triUp2 a n) * ((SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n)

end

end A136579.P8115217008166496287

namespace A136579

/-- `T(n-2,k)+(1-T(n-2,k))*(col(n)*T(n-1,k-1)-T(n-2,k))` -/
def P8115217008166496287.Spec : Prop :=
  ∀ n, P8115217008166496287.a n = A136579 n

end A136579

/-! ## A136579.P14233737394080416906

`T(n-2,k)-(1-T(n-2,k))*(T(n-2,k)-col(n)*T(n-1,k-1))` with `a(0)=1`
-/

namespace A136579.P14233737394080416906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n - (1 - SequenceMachineLib.triUp2 a n) * (SequenceMachineLib.triUp2 a n - (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n)

end

end A136579.P14233737394080416906

namespace A136579

/-- `T(n-2,k)-(1-T(n-2,k))*(T(n-2,k)-col(n)*T(n-1,k-1))` -/
def P14233737394080416906.Spec : Prop :=
  ∀ n, P14233737394080416906.a n = A136579 n

end A136579

/-! ## A136579.P7296813778811202553

`(2-gcd(2, comp[∑[4*n]]))*(n-C(∑[char[∑[n]]], 2))!`
-/

namespace A136579.P7296813778811202553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat : ℤ)

end

end A136579.P7296813778811202553

namespace A136579

/-- `(2-gcd(2, comp[∑[4*n]]))*(n-C(∑[char[∑[n]]], 2))!` -/
def P7296813778811202553.Spec : Prop :=
  ∀ n, P7296813778811202553.a n = A136579 n

end A136579

/-! ## A136579.P18379344306617921706

`and(1, comp[∑[4*n]])*A233543(n)`
-/

namespace A136579.P18379344306617921706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * A233543 n

end

end A136579.P18379344306617921706

namespace A136579

/-- `and(1, comp[∑[4*n]])*A233543(n)` -/
def P18379344306617921706.Spec : Prop :=
  ∀ n, P18379344306617921706.a n = A136579 n

end A136579

/-! ## A136579.P2545566813761858631

`comp[∑[4*n]]%2*A002262(n)!`
-/

namespace A136579.P2545566813761858631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 * Nat.factorial (A002262 n).toNat

end

end A136579.P2545566813761858631

namespace A136579

/-- `comp[∑[4*n]]%2*A002262(n)!` -/
def P2545566813761858631.Spec : Prop :=
  ∀ n, (P2545566813761858631.a n : ℤ) = A136579 n

end A136579

/-! ## A136579.P5647402470606448

`A116447(A133728(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136579

/-- `A116447(A133728(n+1))` -/
def P5647402470606448.Spec : Prop :=
  ∀ n, P5647402470606448.a n = A136579 n

theorem P5647402470606448.correct : P5647402470606448.Spec := by
  intro n
  simp only [A136579]

end A136579

/-! ## A136579.P16333771540984435316

`lcm(A233543(n), A369736(n))`
-/

namespace A136579.P16333771540984435316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A233543 n) (A369736 n)

end

end A136579.P16333771540984435316

namespace A136579

/-- `lcm(A233543(n), A369736(n))` -/
def P16333771540984435316.Spec : Prop :=
  ∀ n, (P16333771540984435316.a n : ℤ) = A136579 n

end A136579

/-! ## A136579.P8292510303110330298

`A128174(n+1)*A233543(n)`
-/

namespace A136579.P8292510303110330298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A233543 n

end

end A136579.P8292510303110330298

namespace A136579

/-- `A128174(n+1)*A233543(n)` -/
def P8292510303110330298.Spec : Prop :=
  ∀ n, P8292510303110330298.a n = A136579 n

end A136579

/-! ## A136579.P13335252082361200401

`A136581(n)/A094587(n)`
-/

namespace A136579.P13335252082361200401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136581 n : ℚ) / (A094587 n : ℚ)

end

end A136579.P13335252082361200401

namespace A136579

/-- `A136581(n)/A094587(n)` -/
def P13335252082361200401.Spec : Prop :=
  ∀ n, P13335252082361200401.a n = (A136579 n : ℚ)

end A136579

/-! ## A136579.P11804588913308539189

`A233543(n)%(abs(A002262(n)!*A060081(n))+1)`
-/

namespace A136579.P11804588913308539189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233543 n) (|(Nat.factorial (A002262 n).toNat : ℤ) * A060081 n| + 1)

end

end A136579.P11804588913308539189

namespace A136579

/-- `A233543(n)%(abs(A002262(n)!*A060081(n))+1)` -/
def P11804588913308539189.Spec : Prop :=
  ∀ n, P11804588913308539189.a n = A136579 n

end A136579

/-! ## A136579.P9932663008968715939

`T(n-1,k+1)*T(n-2,k)+(1-T(n-1,k+1))*col(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A136579.P9932663008968715939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpRight a n * SequenceMachineLib.triUp2 a n + (1 - SequenceMachineLib.triUpRight a n) * (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n

end

end A136579.P9932663008968715939

namespace A136579

/-- `T(n-1,k+1)*T(n-2,k)+(1-T(n-1,k+1))*col(n)*T(n-1,k-1)` -/
def P9932663008968715939.Spec : Prop :=
  ∀ n, P9932663008968715939.a n = A136579 n

end A136579

/-! ## A136579.P6204811298285380368

`T(n-1,k+1)*T(n-2,k)-(T(n-1,k+1)-1)*col(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A136579.P6204811298285380368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpRight a n * SequenceMachineLib.triUp2 a n - (SequenceMachineLib.triUpRight a n - 1) * (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n

end

end A136579.P6204811298285380368

namespace A136579

/-- `T(n-1,k+1)*T(n-2,k)-(T(n-1,k+1)-1)*col(n)*T(n-1,k-1)` -/
def P6204811298285380368.Spec : Prop :=
  ∀ n, P6204811298285380368.a n = A136579 n

end A136579

/-! ## A136579.P11708230936820491001

`∑{e}[lcm(2, A130125(n)), #!]`
-/

namespace A136579.P11708230936820491001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A130125 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)

end

end A136579.P11708230936820491001

namespace A136579

/-- `∑{e}[lcm(2, A130125(n)), #!]` -/
def P11708230936820491001.Spec : Prop :=
  ∀ n, (P11708230936820491001.a n : ℤ) = A136579 n

end A136579

/-! ## A136579.P12529940656800384512

`A059590(A123641(n+1))`
-/

namespace A136579.P12529940656800384512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A123641 (n + 1)).toNat

end

end A136579.P12529940656800384512

namespace A136579

/-- `A059590(A123641(n+1))` -/
def P12529940656800384512.Spec : Prop :=
  ∀ n, P12529940656800384512.a n = A136579 n

end A136579

/-!
# A136580: Row sums of triangle A136579.

The programs for A136580, the canonical program `A136580.P6486255083508863990` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136580 has offset 0).

The definition of A136580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136580.P6486255083508863990

`n*a(n-1)+a(n-2)-n*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136580

/-- `n*a(n-1)+a(n-2)-n*a(n-3)` -/
def P6486255083508863990.Spec : Prop :=
  ∀ n, P6486255083508863990.a n = A136580 n

theorem P6486255083508863990.correct : P6486255083508863990.Spec := by
  intro n
  simp only [A136580]

end A136580

/-! ## A136580.P9655253309131312781

`a(n-2)+n!` with `a(0)=1, a(1)=1`
-/

namespace A136580.P9655253309131312781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.factorial n

end

end A136580.P9655253309131312781

namespace A136580

/-- `a(n-2)+n!` -/
def P9655253309131312781.Spec : Prop :=
  ∀ n, (P9655253309131312781.a n : ℤ) = A136580 n

end A136580

/-! ## A136580.P560497273774794091

`∑[n!-a(n-1)]` with `a(0)=1`
-/

namespace A136580.P560497273774794091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.factorial n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136580.P560497273774794091

namespace A136580

/-- `∑[n!-a(n-1)]` -/
def P560497273774794091.Spec : Prop :=
  ∀ n, P560497273774794091.a n = A136580 n

end A136580

/-! ## A136580.P14081095817492451872

`∑[abs(∑[(-1)^n*n!])]`
-/

namespace A136580.P14081095817492451872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136580.P14081095817492451872

namespace A136580

/-- `∑[abs(∑[(-1)^n*n!])]` -/
def P14081095817492451872.Spec : Prop :=
  ∀ n, P14081095817492451872.a n = A136580 n

end A136580

/-! ## A136580.P17901176476293245211

`n!-floor(-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A136580.P17901176476293245211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.factorial n : ℤ) - (-a (n - 2))

end

end A136580.P17901176476293245211

namespace A136580

/-- `n!-floor(-a(n-2))` -/
def P17901176476293245211.Spec : Prop :=
  ∀ n, P17901176476293245211.a n = A136580 n

end A136580

/-! ## A136580.P215774995503001919

`n!-ceil(-a(n-2))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A136580.P215774995503001919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.factorial n : ℤ) - (-a (n - 2))

end

end A136580.P215774995503001919

namespace A136580

/-- `n!-ceil(-a(n-2))` -/
def P215774995503001919.Spec : Prop :=
  ∀ n, P215774995503001919.a n = A136580 n

end A136580

/-! ## A136580.P17766290073804608309

`n!-round(-a(n-2))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A136580.P17766290073804608309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.factorial n : ℤ) - (-a (n - 2))

end

end A136580.P17766290073804608309

namespace A136580

/-- `n!-round(-a(n-2))` -/
def P17766290073804608309.Spec : Prop :=
  ∀ n, P17766290073804608309.a n = A136580 n

end A136580

/-! ## A136580.P1762067737155377829

`∑{#}[floor(n/2), (n-2*#)!]`
-/

namespace A136580.P1762067737155377829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.factorial ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A136580.P1762067737155377829

namespace A136580

/-- `∑{#}[floor(n/2), (n-2*#)!]` -/
def P1762067737155377829.Spec : Prop :=
  ∀ n, (P1762067737155377829.a n : ℤ) = A136580 n

end A136580

/-! ## A136580.P15483131759884074842

`∑[n*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A136580.P15483131759884074842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A136580.P15483131759884074842

namespace A136580

/-- `∑[n*a(n-1)]-a(n-1)` -/
def P15483131759884074842.Spec : Prop :=
  ∀ n, P15483131759884074842.a n = A136580 n

end A136580

/-! ## A136580.P14239971451765224671

`∏[a(n-1)+1]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A136580.P14239971451765224671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A136580.P14239971451765224671

namespace A136580

/-- `∏[a(n-1)+1]+a(n-2)` -/
def P14239971451765224671.Spec : Prop :=
  ∀ n, (P14239971451765224671.a n : ℤ) = A136580 n

end A136580

/-!
# A136581: Triangle read by rows: A136572 * A128174.

The programs for A136581, the canonical program `A136581.P5726716619279127359` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136581 has offset 0).

The definition of A136581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136581.P1017453086425774048

`row(n)*T(n-1,k+1)+(T(n-1,k-1)-T(n-1,k+1))*col(n)` with `a(0)=1`
-/

namespace A136581.P1017453086425774048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUpRight a n + (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUpRight a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A136581.P1017453086425774048

namespace A136581

/-- `row(n)*T(n-1,k+1)+(T(n-1,k-1)-T(n-1,k+1))*col(n)` -/
def P1017453086425774048.Spec : Prop :=
  ∀ n, P1017453086425774048.a n = A136581 n

end A136581

/-! ## A136581.P4432076999246437331

`row(n)*T(n-1,k+1)-(T(n-1,k+1)-T(n-1,k-1))*col(n)` with `a(0)=1`
-/

namespace A136581.P4432076999246437331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUpRight a n - (SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A136581.P4432076999246437331

namespace A136581

/-- `row(n)*T(n-1,k+1)-(T(n-1,k+1)-T(n-1,k-1))*col(n)` -/
def P4432076999246437331.Spec : Prop :=
  ∀ n, P4432076999246437331.a n = A136581 n

end A136581

/-! ## A136581.P7900449081713885052

`row(n)!*(1+(-1)^(row(n)+col(n)))/2`
-/

namespace A136581.P7900449081713885052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (SequenceMachineLib.triRow n) : ℤ) * (1 + (-1) ^ (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n)) : ℚ) / 2

end

end A136581.P7900449081713885052

namespace A136581

/-- `row(n)!*(1+(-1)^(row(n)+col(n)))/2` -/
def P7900449081713885052.Spec : Prop :=
  ∀ n, P7900449081713885052.a n = (A136581 n : ℚ)

end A136581

/-! ## A136581.P16185338710797685454

`(2-gcd(2, comp[∑[4*n]]))*∑[char[∑[n+1]]]!`
-/

namespace A136581.P16185338710797685454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

end

end A136581.P16185338710797685454

namespace A136581

/-- `(2-gcd(2, comp[∑[4*n]]))*∑[char[∑[n+1]]]!` -/
def P16185338710797685454.Spec : Prop :=
  ∀ n, P16185338710797685454.a n = A136581 n

end A136581

/-! ## A136581.P16930797314336201656

`comp[2*(n²+n)]%2*∑[char[∑[n+1]]]!`
-/

namespace A136581.P16930797314336201656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 * Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A136581.P16930797314336201656

namespace A136581

/-- `comp[2*(n²+n)]%2*∑[char[∑[n+1]]]!` -/
def P16930797314336201656.Spec : Prop :=
  ∀ n, (P16930797314336201656.a n : ℤ) = A136581 n

end A136581

/-! ## A136581.P5535818436392456706

`lcm(∑[char[∑[n+1]]]!, A049310(n))`
-/

namespace A136581.P5535818436392456706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (A049310 n)

end

end A136581.P5535818436392456706

namespace A136581

/-- `lcm(∑[char[∑[n+1]]]!, A049310(n))` -/
def P5535818436392456706.Spec : Prop :=
  ∀ n, (P5535818436392456706.a n : ℤ) = A136581 n

end A136581

/-! ## A136581.P1410079668448332926

`lcm((comp[∑[n]]%(n+2))!, A053121(n))`
-/

namespace A136581.P1410079668448332926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2)) : ℤ) (A053121 n)

end

end A136581.P1410079668448332926

namespace A136581

/-- `lcm((comp[∑[n]]%(n+2))!, A053121(n))` -/
def P1410079668448332926.Spec : Prop :=
  ∀ n, (P1410079668448332926.a n : ℤ) = A136581 n

end A136581

/-! ## A136581.P7329370524174284880

`∑[char[∑[n+1]]]!*A128174(n+1)`
-/

namespace A136581.P7329370524174284880
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A128174 (n + 1)

end

end A136581.P7329370524174284880

namespace A136581

/-- `∑[char[∑[n+1]]]!*A128174(n+1)` -/
def P7329370524174284880.Spec : Prop :=
  ∀ n, P7329370524174284880.a n = A136581 n

end A136581

/-! ## A136581.P10409862722098789290

`A098361(n)*A119467(n)`
-/

namespace A136581.P10409862722098789290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A119467 n

end

end A136581.P10409862722098789290

namespace A136581

/-- `A098361(n)*A119467(n)` -/
def P10409862722098789290.Spec : Prop :=
  ∀ n, P10409862722098789290.a n = A136581 n

end A136581

/-! ## A136581.P5726716619279127359

`A094587(n)*A136579(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136581

/-- `A094587(n)*A136579(n)` -/
def P5726716619279127359.Spec : Prop :=
  ∀ n, P5726716619279127359.a n = A136581 n

theorem P5726716619279127359.correct : P5726716619279127359.Spec := by
  intro n
  simp only [A136581]

end A136581

/-! ## A136581.P194485206114887475

`A136579(n)/A008279(n)*A196347(n)`
-/

namespace A136581.P194485206114887475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136579 n : ℚ) / (A008279 n : ℚ) * (A196347 n : ℚ)

end

end A136581.P194485206114887475

namespace A136581

/-- `A136579(n)/A008279(n)*A196347(n)` -/
def P194485206114887475.Spec : Prop :=
  ∀ n, P194485206114887475.a n = (A136581 n : ℚ)

end A136581

/-!
# A136583: k such that floor(sqrt(10^(2*k-1))) is prime.

The programs for A136583, there is no canonical definition to state claims against.
-/

/-! ## A136583.P10084556563832436918

`A327050(n)+A053645(A138910(n))`
-/

namespace A136583.P10084556563832436918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327050 n + A053645 (A138910 n).toNat

end

end A136583.P10084556563832436918

/-! ## A136583.P2549929131763065083

`A002487(A000051(n)*A149532(n))`
-/

namespace A136583.P2549929131763065083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000051 n * A149532 n).toNat

end

end A136583.P2549929131763065083

/-!
# A136584: G.f. A(x) satisfies: 1+x = Sum_{n>=0} C(2^n,n) * x^n / A(x)^(2^n).

The programs for A136584, there is no canonical definition to state claims against.
-/

/-! ## A136584.P11825924053130356934

`A153636(a(n-2)!)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A136584.P11825924053130356934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A153636 (Nat.factorial (a (n - 2)).toNat)

end

end A136584.P11825924053130356934

/-!
# A136586: Triangle of coefficients of even modified recursive orthogonal Hermite polynomials given in Hochstadt's book:P(x, n) = x*P(x, n - 1) - n*P(x, n - 2) ;A137286; P2(x,n)=P(x,n)+P(x,n-2).

The programs for A136586, there is no canonical definition to state claims against.
-/

/-! ## A136586.P12393955249667100696

`A049310(n)*A090885(A116903(n))`
-/

namespace A136586.P12393955249667100696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A090885 (A116903 n).toNat

end

end A136586.P12393955249667100696

/-! ## A136586.P13217778691334666639

`A049310(n)*A321014(A041493(n))`
-/

namespace A136586.P13217778691334666639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A321014 (A041493 n).toNat

end

end A136586.P13217778691334666639

/-! ## A136586.P7038611230039476303

`A049310(n)*A369278(A183262(n+1))`
-/

namespace A136586.P7038611230039476303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A369278 (A183262 (n + 1)).toNat

end

end A136586.P7038611230039476303

/-!
# A136588: a(n) = Sum_{k=0..n} A136595(n,k)*n^k.

The programs for A136588, there is no canonical definition to state claims against.
-/

/-! ## A136588.P10792134385742817033

`A005865(3*(n+1))-n`
-/

namespace A136588.P10792134385742817033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005865 (3 * (n + 1)) - (n : ℤ)

end

end A136588.P10792134385742817033

/-!
# A136589: a(n) = Sum_{k=0..n} A136595(n,k)*(n+1)^k.

The programs for A136589, there is no canonical definition to state claims against.
-/

/-! ## A136589.P14230022631280921695

`A381624(∑[A046165(n)²])`
-/

namespace A136589.P14230022631280921695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046165 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381624 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136589.P14230022631280921695

/-!
# A136590: Triangle of trinomial logarithmic coefficients: A027907(n,k) = Sum_{i=0..k} T(k,i)*n^i/k!.

The programs for A136590, there is no canonical definition to state claims against.
-/

/-! ## A136590.P13776125879098196986

`A132393(n)*A355635(A269944(n))`
-/

namespace A136590.P13776125879098196986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A355635 (A269944 n).toNat

end

end A136590.P13776125879098196986

/-! ## A136590.P7326332985384300115

`A264433(n)*A355635(A269944(n))`
-/

namespace A136590.P7326332985384300115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264433 n * A355635 (A269944 n).toNat

end

end A136590.P7326332985384300115

/-! ## A136590.P16898708004186266622

`xor(A105564(A181143(n)), A124304(n))`
-/

namespace A136590.P16898708004186266622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A105564 (A181143 n).toNat) (A124304 n)

end

end A136590.P16898708004186266622

/-! ## A136590.P14494799953048709327

`A132393(n)-A380986(A238014(n+3))`
-/

namespace A136590.P14494799953048709327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A380986 (A238014 (n + 3)).toNat

end

end A136590.P14494799953048709327

/-!
# A136591: Column 1 of triangle A136590.

The programs for A136591, the canonical program `A136591.P93203430416818655` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136591 has offset 1).

The definition of A136591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136591.P93203430416818655

`n!*A061347(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136591

/-- `n!*A061347(n+1)` -/
def P93203430416818655.Spec : Prop :=
  ∀ n, P93203430416818655.a n = A136591 (n + 1)

theorem P93203430416818655.correct : P93203430416818655.Spec := by
  intro n
  simp only [A136591, Nat.add_sub_cancel]

end A136591

/-! ## A136591.P4929038244149215837

`n*((1-n)*a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A136591.P4929038244149215837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * ((1 - (n : ℤ)) * a (n - 2) - a (n - 1))

end

end A136591.P4929038244149215837

namespace A136591

/-- `n*((1-n)*a(n-2)-a(n-1))` -/
def P4929038244149215837.Spec : Prop :=
  ∀ n, P4929038244149215837.a n = A136591 (n + 1)

end A136591

/-! ## A136591.P4826995047525645342

`A000142(n)*A061347(n+1)`
-/

namespace A136591.P4826995047525645342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A061347 (n + 1)

end

end A136591.P4826995047525645342

namespace A136591

/-- `A000142(n)*A061347(n+1)` -/
def P4826995047525645342.Spec : Prop :=
  ∀ n, P4826995047525645342.a n = A136591 (n + 1)

end A136591

/-! ## A136591.P14389595485983808605

`A061347(n+1)*A104150(n+1)`
-/

namespace A136591.P14389595485983808605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A104150 (n + 1)

end

end A136591.P14389595485983808605

namespace A136591

/-- `A061347(n+1)*A104150(n+1)` -/
def P14389595485983808605.Spec : Prop :=
  ∀ n, P14389595485983808605.a n = A136591 (n + 1)

end A136591

/-! ## A136591.P4180563912254220869

`(A254745(2*n+1)-2)*A104150(n+1)`
-/

namespace A136591.P4180563912254220869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254745 (2 * n + 1) - 2) * A104150 (n + 1)

end

end A136591.P4180563912254220869

namespace A136591

/-- `(A254745(2*n+1)-2)*A104150(n+1)` -/
def P4180563912254220869.Spec : Prop :=
  ∀ n, P4180563912254220869.a n = A136591 (n + 1)

end A136591

/-! ## A136591.P6504426128756716295

`(A010872(n+1)-A010872(n))*A000142(n)`
-/

namespace A136591.P6504426128756716295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 1) - A010872 n) * A000142 n

end

end A136591.P6504426128756716295

namespace A136591

/-- `(A010872(n+1)-A010872(n))*A000142(n)` -/
def P6504426128756716295.Spec : Prop :=
  ∀ n, P6504426128756716295.a n = A136591 (n + 1)

end A136591

/-! ## A136591.P1978939932430927738

`(A010882(n+1)-A010882(n))*A000142(n)`
-/

namespace A136591.P1978939932430927738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010882 (n + 1) - A010882 n) * A000142 n

end

end A136591.P1978939932430927738

namespace A136591

/-- `(A010882(n+1)-A010882(n))*A000142(n)` -/
def P1978939932430927738.Spec : Prop :=
  ∀ n, P1978939932430927738.a n = A136591 (n + 1)

end A136591

/-! ## A136591.P6045875190821075191

`(A057078(n)-A057078(n+1))*A000142(n)`
-/

namespace A136591.P6045875190821075191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 n - A057078 (n + 1)) * A000142 n

end

end A136591.P6045875190821075191

namespace A136591

/-- `(A057078(n)-A057078(n+1))*A000142(n)` -/
def P6045875190821075191.Spec : Prop :=
  ∀ n, P6045875190821075191.a n = A136591 (n + 1)

end A136591

/-!
# A136592: Column 2 of triangle A136590.

The programs for A136592, there is no canonical definition to state claims against.
-/

/-! ## A136592.P16045534622301181151

`A136590(∑[n+2]+3)`
-/

namespace A136592.P16045534622301181151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136590 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A136592.P16045534622301181151

/-!
# A136593: Column 3 of triangle A136590.

The programs for A136593, there is no canonical definition to state claims against.
-/

/-! ## A136593.P8916807209457947016

`A136590(eq[4, 1-C(∑[char[∑[n]]], 2)+n])`
-/

namespace A136593.P8916807209457947016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136593.P8916807209457947016

/-! ## A136593.P11540759107230782093

`A136590(A167614(n+2))`
-/

namespace A136593.P11540759107230782093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136590 (A167614 (n + 2)).toNat

end

end A136593.P11540759107230782093

/-! ## A136593.P17250211597946044648

`A136590(A141214(n)+6)`
-/

namespace A136593.P17250211597946044648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136590 (A141214 n + 6).toNat

end

end A136593.P17250211597946044648

/-! ## A136593.P16880676550520000276

`A136590(A052905(n)+8)`
-/

namespace A136593.P16880676550520000276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136590 (A052905 n + 8).toNat

end

end A136593.P16880676550520000276

/-!
# A136596: Column 2 of triangle A136595.

The programs for A136596, there is no canonical definition to state claims against.
-/

/-! ## A136596.P4997686063965909876

`(1+(-1)^(n+2)*A048287(n+2))/2`
-/

namespace A136596.P4997686063965909876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ (n + 2) * A048287 (n + 2) : ℚ) / 2

end

end A136596.P4997686063965909876

/-! ## A136596.P11242947284167330358

`A136595(∑[n+2]+3)`
-/

namespace A136596.P11242947284167330358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136595 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A136596.P11242947284167330358

/-!
# A136597: Column 3 of triangle A136595.

The programs for A136597, there is no canonical definition to state claims against.
-/

/-! ## A136597.P3997032407358343938

`A136595(∑[n+3]+6)`
-/

namespace A136597.P3997032407358343938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136595 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A136597.P3997032407358343938

/-! ## A136597.P9557463821088800654

`A136595(A167614(n+2))+A011736(n)`
-/

namespace A136597.P9557463821088800654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136595 (A167614 (n + 2)).toNat + A011736 n

end

end A136597.P9557463821088800654

/-! ## A136597.P2603462247856684955

`A136595(A167614(n+2))+A025437(n)`
-/

namespace A136597.P2603462247856684955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136595 (A167614 (n + 2)).toNat + A025437 n

end

end A136597.P2603462247856684955

/-!
# A136598: Expansion of g.f. (2*x^3 + 5) / ( -x^5 + x^3 + 1).

The programs for A136598, the canonical program `A136598.P7753915386481920551` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136598 has offset 0).

The definition of A136598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5+2x^3)/(1+x^3-x^5))` (program `A136598.P7753915386481920551`, by `A136598.P7753915386481920551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136598.P7753915386481920551

`ogf((5+2x^3)/(1+x^3-x^5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136598

/-- `ogf((5+2x^3)/(1+x^3-x^5))` -/
def P7753915386481920551.Spec : Prop :=
  ∀ n, P7753915386481920551.a n = A136598 n

theorem P7753915386481920551.correct : P7753915386481920551.Spec := by
  intro n
  simp only [A136598]

end A136598

/-! ## A136598.P16746522448776477117

`a(n-5)-a(n-3)` with `a(0)=5, a(1)=0, a(2)=0, a(3)=-3, a(4)=0`
-/

namespace A136598.P16746522448776477117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 0, 0, -3, 0] fun n a =>
  a (n - 5) - a (n - 3)

end

end A136598.P16746522448776477117

namespace A136598

/-- `a(n-5)-a(n-3)` -/
def P16746522448776477117.Spec : Prop :=
  ∀ n, P16746522448776477117.a n = A136598 n

end A136598

/-!
# A136599: Expansion of (eta(q) * eta(q^15))^3 in powers of q.

The programs for A136599, there is no canonical definition to state claims against.
-/

/-! ## A136599.P12568991475933140065

`A115155(n+2)-A030220(n+2)`
-/

namespace A136599.P12568991475933140065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115155 (n + 2) - A030220 (n + 2)

end

end A136599.P12568991475933140065

/-! ## A136599.P4932582154225200746

`A030220(n+2)-A136549(n+2)`
-/

namespace A136599.P4932582154225200746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030220 (n + 2) - A136549 (n + 2)

end

end A136599.P4932582154225200746

/-! ## A136599.P15153607919889809654

`A115155(n+2)*A156595(n+1)`
-/

namespace A136599.P15153607919889809654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115155 (n + 2) * A156595 (n + 1)

end

end A136599.P15153607919889809654

/-! ## A136599.P955933071370711985

`(A115155(n+2)-A136549(n+2))/2`
-/

namespace A136599.P955933071370711985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115155 (n + 2) - A136549 (n + 2) : ℚ) / 2

end

end A136599.P955933071370711985

/-! ## A136599.P9691481008215332873

`-(A030220(3*(n+2))/3)`
-/

namespace A136599.P9691481008215332873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A030220 (3 * (n + 2)) : ℚ) / 3)

end

end A136599.P9691481008215332873

/-! ## A136599.P16022409015766628139

`A030220(A008706(n+2))/5`
-/

namespace A136599.P16022409015766628139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030220 (A008706 (n + 2)).toNat : ℚ) / 5

end

end A136599.P16022409015766628139

