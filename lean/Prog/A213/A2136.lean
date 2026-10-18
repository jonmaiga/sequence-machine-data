import SequenceMachineLib
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
import Seq.B000.C033
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.B014.C000
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

/-!
# A213600: Triangle T(n,k) read by rows: Number of Dyck n-paths with midpoint at height k.

The programs for A213600, the canonical program `A213600.P5414421497863625237` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213600 has offset 0).

The definition of A213600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213600.P5414421497863625237

`A053121(n)²`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A213600

/-- `A053121(n)²` -/
def P5414421497863625237.Spec : Prop :=
  ∀ n, P5414421497863625237.a n = A213600 n

theorem P5414421497863625237.correct : P5414421497863625237.Spec := by
  intro n
  simp only [A213600]

end A213600

/-! ## A213600.P116189091646397343

`A053121(abs(1-n)+1)^2`
-/

namespace A213600.P116189091646397343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (|1 - (n : ℤ)| + 1).toNat ^ 2

end

end A213600.P116189091646397343

namespace A213600

/-- `A053121(abs(1-n)+1)^2` -/
def P116189091646397343.Spec : Prop :=
  ∀ n, P116189091646397343.a n = A213600 n

end A213600

/-! ## A213600.P2289641089352137076

`A052173(∑[2*n]%comp[∑[n]])²`
-/

namespace A213600.P2289641089352137076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ 2

end

end A213600.P2289641089352137076

namespace A213600

/-- `A052173(∑[2*n]%comp[∑[n]])²` -/
def P2289641089352137076.Spec : Prop :=
  ∀ n, P2289641089352137076.a n = A213600 n

end A213600

/-! ## A213600.P16756202285182165624

`A052173(∑[char[∑[n]]]²-n-1)²`
-/

namespace A213600.P16756202285182165624
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat ^ 2

end

end A213600.P16756202285182165624

namespace A213600

/-- `A052173(∑[char[∑[n]]]²-n-1)²` -/
def P16756202285182165624.Spec : Prop :=
  ∀ n, P16756202285182165624.a n = A213600 n

end A213600

/-! ## A213600.P1686103210623061614

`A155761(n)²/2^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A213600.P1686103210623061614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155761 n ^ 2 : ℚ) / (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A213600.P1686103210623061614

namespace A213600

/-- `A155761(n)²/2^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P1686103210623061614.Spec : Prop :=
  ∀ n, P1686103210623061614.a n = (A213600 n : ℚ)

end A213600

/-! ## A213600.P8075271316761139823

`A002620(2*A053121(n))`
-/

namespace A213600.P8075271316761139823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A053121 n).toNat

end

end A213600.P8075271316761139823

namespace A213600

/-- `A002620(2*A053121(n))` -/
def P8075271316761139823.Spec : Prop :=
  ∀ n, P8075271316761139823.a n = A213600 n

end A213600

/-! ## A213600.P12141769324745343777

`A004652(2*A053121(n))`
-/

namespace A213600.P12141769324745343777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A053121 n).toNat

end

end A213600.P12141769324745343777

namespace A213600

/-- `A004652(2*A053121(n))` -/
def P12141769324745343777.Spec : Prop :=
  ∀ n, P12141769324745343777.a n = A213600 n

end A213600

/-! ## A213600.P2147814562453223413

`A008794(2*A053121(n))`
-/

namespace A213600.P2147814562453223413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A053121 n).toNat

end

end A213600.P2147814562453223413

namespace A213600

/-- `A008794(2*A053121(n))` -/
def P2147814562453223413.Spec : Prop :=
  ∀ n, P2147814562453223413.a n = A213600 n

end A213600

/-! ## A213600.P15708726538347385990

`A053121(n)*A189231(n)`
-/

namespace A213600.P15708726538347385990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A189231 n

end

end A213600.P15708726538347385990

namespace A213600

/-- `A053121(n)*A189231(n)` -/
def P15708726538347385990.Spec : Prop :=
  ∀ n, P15708726538347385990.a n = A213600 n

end A213600

/-! ## A213600.P922494925299881640

`(A189230(n)-A189231(n))²`
-/

namespace A213600.P922494925299881640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189230 n - A189231 n) ^ 2

end

end A213600.P922494925299881640

namespace A213600

/-- `(A189230(n)-A189231(n))²` -/
def P922494925299881640.Spec : Prop :=
  ∀ n, P922494925299881640.a n = A213600 n

end A213600

/-!
# A213601: Initial members of prime 12-tuplets (p, p+6, p+10, p+12, p+16, p+22, p+24, p+30, p+34, p+36, p+40, p+42).

The programs for A213601, there is no canonical definition to state claims against.
-/

/-! ## A213601.P14457540075657293468

`∩[A257129(n+1)-6, A257131(n+1)]`
-/

namespace A213601.P14457540075657293468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213601.P14457540075657293468

/-! ## A213601.P14282763583166427655

`A257131(A087051(n)+2)`
-/

namespace A213601.P14282763583166427655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257131 (A087051 n + 2).toNat

end

end A213601.P14282763583166427655

/-! ## A213601.P12013190925074929185

`record[A257131(A187201(n+2))]`
-/

namespace A213601.P12013190925074929185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257131 (A187201 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213601.P12013190925074929185

/-! ## A213601.P4041394470563702722

`record[A257131(A206437(n+2))]`
-/

namespace A213601.P4041394470563702722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257131 (A206437 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213601.P4041394470563702722

/-! ## A213601.P16101231931800860303

`A257131(A062399(n+1)+1)`
-/

namespace A213601.P16101231931800860303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257131 (A062399 (n + 1) + 1).toNat

end

end A213601.P16101231931800860303

/-!
# A213604: Cumulative sums of digital roots of A005891(n).

The programs for A213604, the canonical program `A213604.P14326404384855386302` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213604 has offset 0).

The definition of A213604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213604.P14326404384855386302

`∑[dr(A005891(A248375(n)))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213604

/-- `∑[dr(A005891(A248375(n)))]` -/
def P14326404384855386302.Spec : Prop :=
  ∀ n, (P14326404384855386302.a n : ℤ) = A213604 n

theorem P14326404384855386302.correct : P14326404384855386302.Spec := by
  intro n
  simp only [A213604]

end A213604

/-! ## A213604.P7490485608915415476

`∑[A254374(A248375(n)+1)]`
-/

namespace A213604.P7490485608915415476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254374 (A248375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213604.P7490485608915415476

namespace A213604

/-- `∑[A254374(A248375(n)+1)]` -/
def P7490485608915415476.Spec : Prop :=
  ∀ n, P7490485608915415476.a n = A213604 n

end A213604

/-! ## A213604.P9295833936197203264

`∑[A254374(comp[A168411(n+1)+1]+1)]`
-/

namespace A213604.P9295833936197203264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168411 (n + 1) + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254374 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213604.P9295833936197203264

namespace A213604

/-- `∑[A254374(comp[A168411(n+1)+1]+1)]` -/
def P9295833936197203264.Spec : Prop :=
  ∀ n, P9295833936197203264.a n = A213604 n

end A213604

/-! ## A213604.P3762621573995764734

`∑[dr(A005891(A037477(n)))]`
-/

namespace A213604.P3762621573995764734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005891 (A037477 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213604.P3762621573995764734

namespace A213604

/-- `∑[dr(A005891(A037477(n)))]` -/
def P3762621573995764734.Spec : Prop :=
  ∀ n, (P3762621573995764734.a n : ℤ) = A213604 n

end A213604

/-! ## A213604.P8169272007029610315

`∑[A254374(A037477(n)+1)]`
-/

namespace A213604.P8169272007029610315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254374 (A037477 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213604.P8169272007029610315

namespace A213604

/-- `∑[A254374(A037477(n)+1)]` -/
def P8169272007029610315.Spec : Prop :=
  ∀ n, P8169272007029610315.a n = A213604 n

end A213604

/-!
# A213607: Expansion of psi(x^4) * f(-x^3)^3 / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A213607, there is no canonical definition to state claims against.
-/

/-! ## A213607.P16668320610617285558

`A257651(Δ[n²])/2`
-/

namespace A213607.P16668320610617285558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257651 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A213607.P16668320610617285558

/-! ## A213607.P5211056587704267229

`A298932(Δ[n²]+n+1)/2`
-/

namespace A213607.P5211056587704267229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298932 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat : ℚ) / 2

end

end A213607.P5211056587704267229

/-! ## A213607.P12911372877457946279

`A004525(A298932(3*n+2))`
-/

namespace A213607.P12911372877457946279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A298932 (3 * n + 2)).toNat

end

end A213607.P12911372877457946279

/-! ## A213607.P14726646603162629436

`A213592(4*n+3)/2`
-/

namespace A213607.P14726646603162629436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213592 (4 * n + 3) : ℚ) / 2

end

end A213607.P14726646603162629436

/-! ## A213607.P13555766373175991209

`A005875(A016969(n))/24`
-/

namespace A213607.P13555766373175991209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (A016969 n).toNat : ℚ) / 24

end

end A213607.P13555766373175991209

/-! ## A213607.P1459438100307214569

`A298931(sqrt(A017234(n)))/2`
-/

namespace A213607.P1459438100307214569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298931 (SequenceMachineLib.roundAway (Real.sqrt (A017234 n : ℝ))).toNat : ℚ) / 2

end

end A213607.P1459438100307214569

/-!
# A213608: Number of n X n binary matrices with zero diagonal and x(i,j)+x(j,k)+x(k,i) not equal to one for i,j,k all different.

The programs for A213608, there is no canonical definition to state claims against.
-/

/-! ## A213608.P12919208152342391659

`Δ[A365565(n+1)+A289537(n)]`
-/

namespace A213608.P12919208152342391659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365565 (n + 1) + A289537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213608.P12919208152342391659

/-!
# A213615: Triangle read by rows, coefficients of the Bernoulli polynomials B_{n}(x) times A144845(n) in descending order of powers.

The programs for A213615, there is no canonical definition to state claims against.
-/

/-! ## A213615.P2600665861587346532

`A218853(A061579(n))`
-/

namespace A213615.P2600665861587346532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218853 (A061579 n).toNat

end

end A213615.P2600665861587346532

/-! ## A213615.P7074882147585411162

`A218853(A114327(n)+n)`
-/

namespace A213615.P7074882147585411162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218853 (A114327 n + (n : ℤ)).toNat

end

end A213615.P7074882147585411162

/-! ## A213615.P13641510950192998149

`A218853(A038722(n+1)-1)`
-/

namespace A213615.P13641510950192998149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218853 (A038722 (n + 1) - 1).toNat

end

end A213615.P13641510950192998149

/-! ## A213615.P15925261124993058796

`A218853(A002024(n+1)²-(n+1))`
-/

namespace A213615.P15925261124993058796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218853 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A213615.P15925261124993058796

/-! ## A213615.P13192334152328377230

`A218853(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A213615.P13192334152328377230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218853 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A213615.P13192334152328377230

/-!
# A213617: Expansion of psi(x) * f(-x^3)^3 in powers of x where psi() and f() are Ramanujan theta functions.

The programs for A213617, there is no canonical definition to state claims against.
-/

/-! ## A213617.P5739756591442114771

`A008443(3*n+1)/3`
-/

namespace A213617.P5739756591442114771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008443 (3 * n + 1) : ℚ) / 3

end

end A213617.P5739756591442114771

/-! ## A213617.P3386866571469453272

`A002264(A008443(3*n+1))`
-/

namespace A213617.P3386866571469453272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008443 (3 * n + 1)).toNat

end

end A213617.P3386866571469453272

/-! ## A213617.P12916926508606418807

`A213607(4*n+1)`
-/

namespace A213617.P12916926508606418807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213607 (4 * n + 1)

end

end A213617.P12916926508606418807

/-! ## A213617.P567793545472181560

`A257651(A017089(n)+1)/2`
-/

namespace A213617.P567793545472181560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257651 (A017089 n + 1).toNat : ℚ) / 2

end

end A213617.P567793545472181560

/-! ## A213617.P18303897506287133531

`A006371(12*n+5)`
-/

namespace A213617.P18303897506287133531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (12 * n + 5)

end

end A213617.P18303897506287133531

/-! ## A213617.P11206679956737599040

`A298932(A017569(n)+1)/2`
-/

namespace A213617.P11206679956737599040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298932 (A017569 n + 1).toNat : ℚ) / 2

end

end A213617.P11206679956737599040

/-! ## A213617.P17722119350719312903

`A058305(A348845(n))`
-/

namespace A213617.P17722119350719312903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A348845 n).toNat

end

end A213617.P17722119350719312903

/-! ## A213617.P5469397001164931928

`A058305(A017653(2*n))`
-/

namespace A213617.P5469397001164931928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A017653 (2 * n)).toNat

end

end A213617.P5469397001164931928

/-! ## A213617.P7648217842773075997

`A058305(A008594(2*n+1)-1)`
-/

namespace A213617.P7648217842773075997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A008594 (2 * n + 1) - 1).toNat

end

end A213617.P7648217842773075997

/-! ## A213617.P12495655331854120284

`A058305(A017533(2*n+1)-2)`
-/

namespace A213617.P12495655331854120284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A017533 (2 * n + 1) - 2).toNat

end

end A213617.P12495655331854120284

/-!
# A213618: Expansion of phi(-q^3) * b(q^8) in powers of q where phi() is a Ramanujan theta function and b() is a cubic AGM theta function.

The programs for A213618, there is no canonical definition to state claims against.
-/

/-! ## A213618.P11376908338126120019

`A102560(n)*A257653(n)`
-/

namespace A213618.P11376908338126120019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A257653 n

end

end A213618.P11376908338126120019

/-!
# A213620: Triangle read by rows, coefficients of the Euler polynomials E_{n}(x) times A006519(n+1) in descending order of powers.

The programs for A213620, there is no canonical definition to state claims against.
-/

/-! ## A213620.P4817116885735755416

`A058940(∑[2*n]%comp[∑[n]])`
-/

namespace A213620.P4817116885735755416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058940 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A213620.P4817116885735755416

/-! ## A213620.P4697092216251121641

`A058940(∑[char[∑[n]]]²-(n+1))`
-/

namespace A213620.P4697092216251121641
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058940 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A213620.P4697092216251121641

/-! ## A213620.P14467075470706450892

`A007318(C(2, n+2))*A058940(A061579(n))`
-/

namespace A213620.P14467075470706450892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A058940 (A061579 n).toNat

end

end A213620.P14467075470706450892

/-! ## A213620.P9646414459633067860

`A007318(and(3, n-2))*A058940(A061579(n))`
-/

namespace A213620.P9646414459633067860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 ((n : ℤ) - 2)).toNat * A058940 (A061579 n).toNat

end

end A213620.P9646414459633067860

/-! ## A213620.P6553131181364067389

`A058940(A061579(n))+A000045(C(n, n+2))`
-/

namespace A213620.P6553131181364067389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058940 (A061579 n).toNat + A000045 (Nat.choose n (n + 2))

end

end A213620.P6553131181364067389

/-! ## A213620.P2182781712711020706

`A004175(n)/A084623(A002024(n+1))`
-/

namespace A213620.P2182781712711020706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004175 n : ℚ) / (A084623 (A002024 (n + 1)).toNat : ℚ)

end

end A213620.P2182781712711020706

/-! ## A213620.P9879555170969048203

`A058940(A061579(n))+val(A000203((n+2)²), 2)`
-/

namespace A213620.P9879555170969048203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058940 (A061579 n).toNat + (SequenceMachineLib.valuation (A000203 ((n + 2) ^ 2)).toNat 2 : ℤ)

end

end A213620.P9879555170969048203

/-!
# A213621: The denominator of the Bernoulli polynomial B(n,x) divided by the Clausen number C(n), A144845(n)/A141056(n).

The programs for A213621, there is no canonical definition to state claims against.
-/

/-! ## A213621.P9165313292318582490

`A144845(n)/A141056(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213621.P9165313292318582490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A141056 n : ℚ)

end

end A213621.P9165313292318582490

/-! ## A213621.P16806967551589249199

`lcm(2, A286515(n))/2`
-/

namespace A213621.P16806967551589249199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A286515 n) : ℚ) / 2

end

end A213621.P16806967551589249199

/-! ## A213621.P3596121468141382786

`gcd(A006882(n), A286515(n))`
-/

namespace A213621.P3596121468141382786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006882 n) (A286515 n)

end

end A213621.P3596121468141382786

/-! ## A213621.P120002603033213712

`∏{p}[A286515(n), A000265(#)]`
-/

namespace A213621.P120002603033213712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 p

end

end A213621.P120002603033213712

/-! ## A213621.P8022176296303300928

`∏{p}[A286515(n), A026741(#)]`
-/

namespace A213621.P8022176296303300928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026741 p

end

end A213621.P8022176296303300928

/-! ## A213621.P2727225186166486287

`∏{p}[A286515(n), A060819(#)]`
-/

namespace A213621.P2727225186166486287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A060819 p

end

end A213621.P2727225186166486287

/-! ## A213621.P4627858769356615851

`∏{p}[A286515(n), A063196(#)]`
-/

namespace A213621.P4627858769356615851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A063196 p

end

end A213621.P4627858769356615851

/-! ## A213621.P15024275461063122147

`∏{p}[A286515(n), A082725(#)]`
-/

namespace A213621.P15024275461063122147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A082725 p

end

end A213621.P15024275461063122147

/-! ## A213621.P13000579857907252572

`∏{p}[A286515(n), A086571(#)]`
-/

namespace A213621.P13000579857907252572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A086571 p

end

end A213621.P13000579857907252572

/-! ## A213621.P10836369600651953771

`A286515(n)/A091090(n²)`
-/

namespace A213621.P10836369600651953771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286515 n : ℚ) / (A091090 (n ^ 2) : ℚ)

end

end A213621.P10836369600651953771

/-!
# A213622: Expansion of phi(x) * psi(x) * phi(x^2) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A213622, there is no canonical definition to state claims against.
-/

/-! ## A213622.P13355816968735236167

`A213625(2*n)`
-/

namespace A213622.P13355816968735236167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213625 (2 * n)

end

end A213622.P13355816968735236167

/-! ## A213622.P11528598782612244269

`A246835(2*n)`
-/

namespace A213622.P11528598782612244269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246835 (2 * n)

end

end A213622.P11528598782612244269

/-! ## A213622.P3165780289572494811

`A045828(4*n)`
-/

namespace A213622.P3165780289572494811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (4 * n)

end

end A213622.P3165780289572494811

/-! ## A213622.P7678549715506794569

`A045828(A008574(n))-A185012(n+2)`
-/

namespace A213622.P7678549715506794569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (A008574 n).toNat - A185012 (n + 2)

end

end A213622.P7678549715506794569

/-! ## A213622.P14247311491538460335

`A246815(4*n)`
-/

namespace A213622.P14247311491538460335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246815 (4 * n)

end

end A213622.P14247311491538460335

/-! ## A213622.P7230292056426524474

`A246836(4*n)`
-/

namespace A213622.P7230292056426524474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246836 (4 * n)

end

end A213622.P7230292056426524474

/-! ## A213622.P3132069574772898263

`A246953(4*n)`
-/

namespace A213622.P3132069574772898263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246953 (4 * n)

end

end A213622.P3132069574772898263

/-! ## A213622.P13122217729145766147

`A127786(A008590(n)+1)/2`
-/

namespace A213622.P13122217729145766147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (A008590 n + 1).toNat : ℚ) / 2

end

end A213622.P13122217729145766147

/-! ## A213622.P7007940878165756307

`A033717(A017089(n)-1)/2`
-/

namespace A213622.P7007940878165756307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 (A017089 n - 1).toNat : ℚ) / 2

end

end A213622.P7007940878165756307

/-! ## A213622.P12736027352699715140

`A006374(A017089(2*n))`
-/

namespace A213622.P12736027352699715140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A017089 (2 * n)).toNat

end

end A213622.P12736027352699715140

/-! ## A213622.P13066655864244897539

`A080918(A008598(n)+2)/2`
-/

namespace A213622.P13066655864244897539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080918 (A008598 n + 2).toNat : ℚ) / 2

end

end A213622.P13066655864244897539

/-! ## A213622.P11270490211423883247

`A045836(2*A017077(n))/2`
-/

namespace A213622.P11270490211423883247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045836 (2 * A017077 n).toNat : ℚ) / 2

end

end A213622.P11270490211423883247

/-! ## A213622.P6555633949528317061

`A080918(2*A017077(n))/2`
-/

namespace A213622.P6555633949528317061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080918 (2 * A017077 n).toNat : ℚ) / 2

end

end A213622.P6555633949528317061

/-! ## A213622.P312715009539673060

`A080917(A119413(n+1)-2)/2`
-/

namespace A213622.P312715009539673060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080917 (A119413 (n + 1) - 2).toNat : ℚ) / 2

end

end A213622.P312715009539673060

/-! ## A213622.P9831940197010930864

`A006374(A017089(n)+A017089(n)-2)`
-/

namespace A213622.P9831940197010930864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A017089 n + (A017089 n - 2)).toNat

end

end A213622.P9831940197010930864

/-! ## A213622.P10702554097038630610

`A002265(A005877(4*n))`
-/

namespace A213622.P10702554097038630610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005877 (4 * n)).toNat

end

end A213622.P10702554097038630610

/-! ## A213622.P9984113293287217843

`A001281(A005877(4*n)/2)`
-/

namespace A213622.P9984113293287217843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway ((A005877 (4 * n) : ℚ) / 2)).toNat

end

end A213622.P9984113293287217843

/-! ## A213622.P9937756279458536743

`A005884(4*n)/2`
-/

namespace A213622.P9937756279458536743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005884 (4 * n) : ℚ) / 2

end

end A213622.P9937756279458536743

/-! ## A213622.P2339679544974793365

`A001281(A005884(4*n))`
-/

namespace A213622.P2339679544974793365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005884 (4 * n)).toNat

end

end A213622.P2339679544974793365

/-!
# A213623: Numbers n such that the denominator of the Bernoulli polynomial B(n,x) equals the Clausen number C(n), {n | A144845(n) = A141056(n)}.

The programs for A213623, there is no canonical definition to state claims against.
-/

/-! ## A213623.P6036298838072497286

`lt[A286515(n), 3]`
-/

namespace A213623.P6036298838072497286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A213623.P6036298838072497286

/-! ## A213623.P4162623476723608759

`eq[A141056(n), A144845(n)]`
-/

namespace A213623.P4162623476723608759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213623.P4162623476723608759

/-! ## A213623.P2085809694161090508

`eq[A091090(n), A286515(n)]`
-/

namespace A213623.P2085809694161090508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213623.P2085809694161090508

/-! ## A213623.P1900992275557639890

`eq[A115362(n), A286515(n)]`
-/

namespace A213623.P1900992275557639890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213623.P1900992275557639890

/-! ## A213623.P6699317365357024732

`eq[A130008(n), A286515(n)]`
-/

namespace A213623.P6699317365357024732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213623.P6699317365357024732

/-!
# A213624: Expansion of psi(x)^2 * psi(x^4) in powers of x where psi() is a Ramanujan theta function.

The programs for A213624, there is no canonical definition to state claims against.
-/

/-! ## A213624.P15301916398412776294

`abs(A246833(n))`
-/

namespace A213624.P15301916398412776294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246833 n|

end

end A213624.P15301916398412776294

/-! ## A213624.P16876170303072227963

`A033999(n)*A246833(n)`
-/

namespace A213624.P16876170303072227963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246833 n

end

end A213624.P16876170303072227963

/-! ## A213624.P2829811595729476120

`gcd(A000038(n), A246833(n))`
-/

namespace A213624.P2829811595729476120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246833 n)

end

end A213624.P2829811595729476120

/-! ## A213624.P7068701379914685073

`lcm(A000034(n), A246833(n))`
-/

namespace A213624.P7068701379914685073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A246833 n)

end

end A213624.P7068701379914685073

/-! ## A213624.P14139391082130662587

`A246815(n)*A246833(n)/A246836(n)`
-/

namespace A213624.P14139391082130662587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246815 n * A246833 n : ℚ) / (A246836 n : ℚ)

end

end A213624.P14139391082130662587

/-! ## A213624.P4250070269397153777

`A045828(Δ[n²])/2`
-/

namespace A213624.P4250070269397153777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A213624.P4250070269397153777

/-! ## A213624.P1336680817409447620

`abs(A246836(Δ[n²])/2)`
-/

namespace A213624.P1336680817409447620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A246836 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2|

end

end A213624.P1336680817409447620

/-! ## A213624.P13045260136783896857

`abs(A246815(2*n+1)/2)`
-/

namespace A213624.P13045260136783896857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A246815 (2 * n + 1) : ℚ) / 2|

end

end A213624.P13045260136783896857

/-! ## A213624.P7864604567022832349

`abs(A246953(2*n+1)/2)`
-/

namespace A213624.P7864604567022832349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A246953 (2 * n + 1) : ℚ) / 2|

end

end A213624.P7864604567022832349

/-! ## A213624.P16524901150022773937

`A246815(2*n+1)/(2*A033999(n+1))`
-/

namespace A213624.P16524901150022773937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246815 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A213624.P16524901150022773937

/-! ## A213624.P2087707541940955646

`A246836(2*n+1)/(2*A057077(2*n))`
-/

namespace A213624.P2087707541940955646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246836 (2 * n + 1) : ℚ) / (2 * A057077 (2 * n) : ℚ)

end

end A213624.P2087707541940955646

/-! ## A213624.P11126398946142614307

`A246836(2*n+1)/(2*A087960(2*n))`
-/

namespace A213624.P11126398946142614307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246836 (2 * n + 1) : ℚ) / (2 * A087960 (2 * n) : ℚ)

end

end A213624.P11126398946142614307

/-! ## A213624.P2511678554886764251

`gcd(A246815(2*n+1)/2, A000038(n+1))`
-/

namespace A213624.P2511678554886764251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A246815 (2 * n + 1) : ℚ) / 2)) (A000038 (n + 1))

end

end A213624.P2511678554886764251

/-! ## A213624.P15766256293213559007

`lcm(A000034(n+1), A246815(2*n+1))/2`
-/

namespace A213624.P15766256293213559007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A246815 (2 * n + 1)) : ℚ) / 2

end

end A213624.P15766256293213559007

/-! ## A213624.P17492902130522746296

`lcm(A246836(2*n+1)/2, A020985(n+1))`
-/

namespace A213624.P17492902130522746296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A246836 (2 * n + 1) : ℚ) / 2)) (A020985 (n + 1))

end

end A213624.P17492902130522746296

/-! ## A213624.P10826091055689245129

`A246953(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A213624.P10826091055689245129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246953 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A213624.P10826091055689245129

/-! ## A213624.P8062717566944747576

`A087960(2*n+1)*A246815(2*n+1)/2`
-/

namespace A213624.P8062717566944747576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) * A246815 (2 * n + 1) : ℚ) / 2

end

end A213624.P8062717566944747576

/-! ## A213624.P14636875128030430640

`A005794(8*n+6)`
-/

namespace A213624.P14636875128030430640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (8 * n + 6)

end

end A213624.P14636875128030430640

/-! ## A213624.P13472046798995133259

`A006371(2*A017137(n))/2`
-/

namespace A213624.P13472046798995133259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006371 (2 * A017137 n).toNat : ℚ) / 2

end

end A213624.P13472046798995133259

/-! ## A213624.P6901669001257598210

`A005877(2*n+1)/8`
-/

namespace A213624.P6901669001257598210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005877 (2 * n + 1) : ℚ) / 8

end

end A213624.P6901669001257598210

/-!
# A213625: Expansion of psi(x)^2 * phi(x^2) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A213625, there is no canonical definition to state claims against.
-/

/-! ## A213625.P11878796721853000410

`abs(A246835(n))`
-/

namespace A213625.P11878796721853000410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246835 n|

end

end A213625.P11878796721853000410

/-! ## A213625.P13728734107194186794

`A033999(n)*A246835(n)`
-/

namespace A213625.P13728734107194186794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246835 n

end

end A213625.P13728734107194186794

/-! ## A213625.P9397714092887339982

`gcd(A000038(n), A246835(n))`
-/

namespace A213625.P9397714092887339982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246835 n)

end

end A213625.P9397714092887339982

/-! ## A213625.P5174031851683407304

`lcm(A000034(n), A246835(n))`
-/

namespace A213625.P5174031851683407304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A246835 n)

end

end A213625.P5174031851683407304

/-! ## A213625.P14322341948670264109

`A132969(n)/A132970(n)*A246835(n)`
-/

namespace A213625.P14322341948670264109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132969 n : ℚ) / (A132970 n : ℚ) * (A246835 n : ℚ)

end

end A213625.P14322341948670264109

/-! ## A213625.P13677788772760246887

`A246815(n)*A246835(n)/A246836(n)`
-/

namespace A213625.P13677788772760246887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246815 n * A246835 n : ℚ) / (A246836 n : ℚ)

end

end A213625.P13677788772760246887

/-! ## A213625.P5902415908625266034

`A045828(2*n)`
-/

namespace A213625.P5902415908625266034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (2 * n)

end

end A213625.P5902415908625266034

/-! ## A213625.P14475657361188849871

`A246953(2*n)`
-/

namespace A213625.P14475657361188849871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246953 (2 * n)

end

end A213625.P14475657361188849871

/-! ## A213625.P3707851913460123645

`abs(A246815(2*n))`
-/

namespace A213625.P3707851913460123645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246815 (2 * n)|

end

end A213625.P3707851913460123645

/-! ## A213625.P15857921324094731289

`abs(A246836(2*n))`
-/

namespace A213625.P15857921324094731289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246836 (2 * n)|

end

end A213625.P15857921324094731289

/-! ## A213625.P13799272804335630531

`A033999(n)*A246815(2*n)`
-/

namespace A213625.P13799272804335630531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246815 (2 * n)

end

end A213625.P13799272804335630531

/-! ## A213625.P8182620103781217554

`A033999(n)*A246836(2*n)`
-/

namespace A213625.P8182620103781217554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246836 (2 * n)

end

end A213625.P8182620103781217554

/-! ## A213625.P8207667080391170664

`lcm(A143431(n), A246836(2*n))`
-/

namespace A213625.P8207667080391170664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143431 n) (A246836 (2 * n))

end

end A213625.P8207667080391170664

/-! ## A213625.P3650930349445879281

`A033717(A008574(n)+1)/2`
-/

namespace A213625.P3650930349445879281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 (A008574 n + 1).toNat : ℚ) / 2

end

end A213625.P3650930349445879281

/-! ## A213625.P8216809528041281986

`A033717(A017089(n)/2)/2`
-/

namespace A213625.P8216809528041281986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 (SequenceMachineLib.roundAway ((A017089 n : ℚ) / 2)).toNat : ℚ) / 2

end

end A213625.P8216809528041281986

/-! ## A213625.P12768067601301208310

`abs(A127786(A008574(n)+1)/2)`
-/

namespace A213625.P12768067601301208310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A127786 (A008574 n + 1).toNat : ℚ) / 2|

end

end A213625.P12768067601301208310

/-! ## A213625.P4304832657441312095

`A006374(2*(4*n+1))`
-/

namespace A213625.P4304832657441312095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (2 * (4 * n + 1))

end

end A213625.P4304832657441312095

/-! ## A213625.P17700511511129082476

`A080917(8*n+2)/2`
-/

namespace A213625.P17700511511129082476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080917 (8 * n + 2) : ℚ) / 2

end

end A213625.P17700511511129082476

/-! ## A213625.P1980455230190414922

`A045836(A017077(n)+1)/2`
-/

namespace A213625.P1980455230190414922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045836 (A017077 n + 1).toNat : ℚ) / 2

end

end A213625.P1980455230190414922

/-! ## A213625.P10079062984393985336

`A006371(A063110(n+1))`
-/

namespace A213625.P10079062984393985336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (A063110 (n + 1)).toNat

end

end A213625.P10079062984393985336

/-!
# A213626: a(n) = Sum_{0<=i

The programs for A213626, there is no canonical definition to state claims against.
-/

/-! ## A213626.P5923120284399997642

`A359045(n)+A213786(n)`
-/

namespace A213626.P5923120284399997642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359045 n + A213786 n

end

end A213626.P5923120284399997642

/-! ## A213626.P5465414457051044894

`A359045(n)+A099392(A020986(n))-A008619(n)`
-/

namespace A213626.P5465414457051044894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359045 n + (A099392 (A020986 n).toNat - A008619 n)

end

end A213626.P5465414457051044894

/-! ## A213626.P15871218862854502456

`A359045(n)+A099392(A020986(n))-A008624(2*n)`
-/

namespace A213626.P15871218862854502456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359045 n + (A099392 (A020986 n).toNat - A008624 (2 * n))

end

end A213626.P15871218862854502456

/-!
# A213627: Expansion of psi(x)^4 / psi(x^3) in powers of x where psi() is a Ramanujan theta function.

The programs for A213627, there is no canonical definition to state claims against.
-/

/-! ## A213627.P15138645846054101887

`A008443(3*n)`
-/

namespace A213627.P15138645846054101887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (3 * n)

end

end A213627.P15138645846054101887

/-! ## A213627.P2907164866166274630

`A008443(A008585(n))%A002997(n+1)`
-/

namespace A213627.P2907164866166274630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008443 (A008585 n).toNat) (A002997 (n + 1))

end

end A213627.P2907164866166274630

/-! ## A213627.P12623686215879734479

`A005869(3*n)/2`
-/

namespace A213627.P12623686215879734479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005869 (3 * n) : ℚ) / 2

end

end A213627.P12623686215879734479

/-! ## A213627.P1044499248555273565

`A005886(3*n)/4`
-/

namespace A213627.P1044499248555273565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005886 (3 * n) : ℚ) / 4

end

end A213627.P1044499248555273565

/-! ## A213627.P9270743701626477033

`A001281(A005869(3*n))`
-/

namespace A213627.P9270743701626477033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005869 (3 * n)).toNat

end

end A213627.P9270743701626477033

/-! ## A213627.P2075459866216452137

`A002265(A005886(3*n))`
-/

namespace A213627.P2075459866216452137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005886 (3 * n)).toNat

end

end A213627.P2075459866216452137

/-! ## A213627.P7562859875479958019

`A004526(A005869(n+n+n))`
-/

namespace A213627.P7562859875479958019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005869 (n + n + n)).toNat

end

end A213627.P7562859875479958019

/-! ## A213627.P1636554021469503218

`A238872(6*n+1)`
-/

namespace A213627.P1636554021469503218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (6 * n + 1)

end

end A213627.P1636554021469503218

/-! ## A213627.P8064079848136902925

`A005878(3*n)/8`
-/

namespace A213627.P8064079848136902925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005878 (3 * n) : ℚ) / 8

end

end A213627.P8064079848136902925

/-! ## A213627.P16355308657153650458

`A026730(A005878(3*n))`
-/

namespace A213627.P16355308657153650458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (A005878 (3 * n)).toNat

end

end A213627.P16355308657153650458

/-! ## A213627.P2895277754604387950

`A292511(6*n)`
-/

namespace A213627.P2895277754604387950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292511 (6 * n)

end

end A213627.P2895277754604387950

/-! ## A213627.P12355620445367632157

`A211648(A017077(n))`
-/

namespace A213627.P12355620445367632157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211648 (A017077 n).toNat

end

end A213627.P12355620445367632157

/-!
# A213628: G.f. satisfies: A(x) = 1 - (x^2/A(x)) / A( x^2/A(x) ).

The programs for A213628, there is no canonical definition to state claims against.
-/

/-! ## A213628.P15935723214649495191

`n%5+A097992(Δ[Δ[n!]])-n`
-/

namespace A213628.P15935723214649495191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 5 : ℕ) : ℤ) + (A097992 (f1 (n + 1) - f1 n).toNat - (n : ℤ))

end

end A213628.P15935723214649495191

/-! ## A213628.P7981249682123038036

`A247833(A343787(n))`
-/

namespace A213628.P7981249682123038036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A343787 n).toNat

end

end A213628.P7981249682123038036

/-!
# A213629: In binary representation: T(n,k) = number of (possibly overlapping) occurrences of k in n, triangle read by rows, 1<=k<=n.

The programs for A213629, there is no canonical definition to state claims against.
-/

/-! ## A213629.P556812598933846462

`A107286(floor(ratio[A152971(n)]))`
-/

namespace A213629.P556812598933846462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A213629.P556812598933846462

/-! ## A213629.P7152970591324701854

`A002828(A137712(n+1)^A000196(n))`
-/

namespace A213629.P7152970591324701854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.roundAway ((A137712 (n + 1) : ℚ) ^ (A000196 n : ℤ))).toNat

end

end A213629.P7152970591324701854

/-! ## A213629.P4381361365788367874

`gcd(A238858(n), A333766(A269129(n+3)))`
-/

namespace A213629.P4381361365788367874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238858 n) (A333766 (A269129 (n + 3)).toNat)

end

end A213629.P4381361365788367874

/-! ## A213629.P10224319765311837173

`A115722(A117170(n+1)^A000005(n+3))`
-/

namespace A213629.P10224319765311837173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (SequenceMachineLib.roundAway ((A117170 (n + 1) : ℚ) ^ (A000005 (n + 3) : ℤ))).toNat

end

end A213629.P10224319765311837173

/-! ## A213629.P13567659931671308628

`A363484(A124943(n+1)^A008284(n+5))`
-/

namespace A213629.P13567659931671308628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363484 (SequenceMachineLib.roundAway ((A124943 (n + 1) : ℚ) ^ (A008284 (n + 5) : ℤ))).toNat

end

end A213629.P13567659931671308628

/-!
# A213630: a(t_1 t_2...t_n) = (t_1 + t_2)*t_1 t_2 + ... + (t_n-1 + t_n)*t_n-1 t_n.

The programs for A213630, there is no canonical definition to state claims against.
-/

/-! ## A213630.P14005249152175086388

`∑{digits}[A168652(n+1), #*(n+1)]`
-/

namespace A213630.P14005249152175086388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * (n + 1)).sum

end

end A213630.P14005249152175086388

/-! ## A213630.P1659813347356873691

`(n+1)*∑{digits}[A000194((n+1)²), #]`
-/

namespace A213630.P1659813347356873691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A213630.P1659813347356873691

/-! ## A213630.P7503232236640227166

`∑{digits}[n+1, #]*A053615((n+1)²)`
-/

namespace A213630.P7503232236640227166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A053615 ((n + 1) ^ 2)

end

end A213630.P7503232236640227166

/-! ## A213630.P1095142527369700360

`∑{digits}[n+1, #]*A259361((n+2)²)`
-/

namespace A213630.P1095142527369700360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A259361 ((n + 2) ^ 2)

end

end A213630.P1095142527369700360

/-! ## A213630.P12911193950092168806

`(n+1)*A061762(10*10*(n+1))`
-/

namespace A213630.P12911193950092168806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061762 (10 * (10 * (n + 1)))

end

end A213630.P12911193950092168806

/-! ## A213630.P3721844860439590033

`(n+1)*A062329(10*10*(n+1))`
-/

namespace A213630.P3721844860439590033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062329 (10 * (10 * (n + 1)))

end

end A213630.P3721844860439590033

/-! ## A213630.P6912347942098572073

`(A000007((n+1)²)+1+n)*∑{digits}[n+1, #]`
-/

namespace A213630.P6912347942098572073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 ((n + 1) ^ 2) + 1 + (n : ℤ)) * ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A213630.P6912347942098572073

/-! ## A213630.P16650767893134769754

`A057147(A000194((n+1)²))`
-/

namespace A213630.P16650767893134769754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (A000194 ((n + 1) ^ 2)).toNat

end

end A213630.P16650767893134769754

/-! ## A213630.P5740989235372531928

`(n+1)*A179987(A179977(n+1))`
-/

namespace A213630.P5740989235372531928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A179987 (A179977 (n + 1)).toNat

end

end A213630.P5740989235372531928

/-!
# A213631: Primes p such that primality of (p+p')/2+4 and of (p+p')/2-4 differ, where p'=nextprime(p+1), the next larger prime.

The programs for A213631, there is no canonical definition to state claims against.
-/

/-! ## A213631.P14629247040719533987

`A064989(A213632(n+1))`
-/

namespace A213631.P14629247040719533987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A213632 (n + 1)).toNat

end

end A213631.P14629247040719533987

/-! ## A213631.P9657825801404144860

`A079068(p?[A213632(n+1)])`
-/

namespace A213631.P9657825801404144860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A213631.P9657825801404144860

/-! ## A213631.P11133741054071085203

`A136548(p?[A213632(n+1)])`
-/

namespace A213631.P11133741054071085203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A213631.P11133741054071085203

/-!
# A213632: Primes p such that primality of (p+p')/2+4 and of (p+p')/2-4 differ, where p'=prevprime(p-1), the next smaller prime.

The programs for A213632, there is no canonical definition to state claims against.
-/

/-! ## A213632.P1946436519755196155

`A003961(A213631(n+1))`
-/

namespace A213632.P1946436519755196155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A213631 (n + 1)).toNat

end

end A213632.P1946436519755196155

/-! ## A213632.P15925805432624823327

`A151800(p?[A213631(n+1)])`
-/

namespace A213632.P15925805432624823327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A213632.P15925805432624823327

/-! ## A213632.P17229994910818202860

`A000015(A213631(n+1)+1)`
-/

namespace A213632.P17229994910818202860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A213631 (n + 1) + 1).toNat

end

end A213632.P17229994910818202860

/-! ## A213632.P8713413639536007061

`A007918(A213631(n+1)+1)`
-/

namespace A213632.P8713413639536007061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A213631 (n + 1) + 1).toNat

end

end A213632.P8713413639536007061

/-!
# A213633: [A000027/A007978], where [ ] = floor.

The programs for A213633, there is no canonical definition to state claims against.
-/

/-! ## A213633.P4451025390354515413

`floor(n/A007978(n+1))`
-/

namespace A213633.P4451025390354515413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A007978 (n + 1) : ℚ)⌋

end

end A213633.P4451025390354515413

/-! ## A213633.P9602340001676965372

`1-A213634(n+1)+n`
-/

namespace A213633.P9602340001676965372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A213634 (n + 1) + (n : ℤ)

end

end A213633.P9602340001676965372

/-! ## A213633.P5429602121218679725

`floor(n/(A055874(n+1)+1))`
-/

namespace A213633.P5429602121218679725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A055874 (n + 1) + 1 : ℚ)⌋

end

end A213633.P5429602121218679725

/-! ## A213633.P4973998337921094348

`A213635(n+1)/A007978(n+1)`
-/

namespace A213633.P4973998337921094348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213635 (n + 1) : ℚ) / (A007978 (n + 1) : ℚ)

end

end A213633.P4973998337921094348

/-! ## A213633.P11178672155750398300

`A000027(n+1)%A213634(n+1)`
-/

namespace A213633.P11178672155750398300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A213634 (n + 1))

end

end A213633.P11178672155750398300

/-! ## A213633.P14543616445120588798

`A087156(n+1)%A213634(n+1)`
-/

namespace A213633.P14543616445120588798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A213634 (n + 1))

end

end A213633.P14543616445120588798

/-! ## A213633.P3300142040442573469

`A178915(n+1)%A213634(n+1)`
-/

namespace A213633.P3300142040442573469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178915 (n + 1)) (A213634 (n + 1))

end

end A213633.P3300142040442573469

/-! ## A213633.P10952745733680368216

`A187012(n+2)%A213634(n+1)`
-/

namespace A213633.P10952745733680368216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187012 (n + 2)) (A213634 (n + 1))

end

end A213633.P10952745733680368216

/-! ## A213633.P6416294981290823423

`gcd(A213635(n+1), A242342(n+1))`
-/

namespace A213633.P6416294981290823423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213635 (n + 1)) (A242342 (n + 1))

end

end A213633.P6416294981290823423

/-! ## A213633.P6327026355048917481

`floor(n/(A053669(n+1)-A061853(n+1)))`
-/

namespace A213633.P6327026355048917481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A053669 (n + 1) - A061853 (n + 1) : ℚ)⌋

end

end A213633.P6327026355048917481

/-! ## A213633.P17137648359712107916

`A213634(2*n+1)%A213634(n+1)`
-/

namespace A213633.P17137648359712107916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213634 (2 * n + 1)) (A213634 (n + 1))

end

end A213633.P17137648359712107916

/-! ## A213633.P13499088460425475013

`(n+1)%A213634(A213634(n+1+n))`
-/

namespace A213633.P13499088460425475013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A213634 (A213634 (n + 1 + n)).toNat)

end

end A213633.P13499088460425475013

/-! ## A213633.P5309222732770328809

`A060401(n+1)%A213634(n+1)`
-/

namespace A213633.P5309222732770328809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A213634 (n + 1))

end

end A213633.P5309222732770328809

/-!
# A213634: n-[n/m], where m is the least nondivisor of n (as in A007978) and [ ] = floor.

The programs for A213634, there is no canonical definition to state claims against.
-/

/-! ## A213634.P2234635964255813616

`1-A213633(n+1)+n`
-/

namespace A213634.P2234635964255813616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A213633 (n + 1) + (n : ℤ)

end

end A213634.P2234635964255813616

/-! ## A213634.P10699938003855614400

`n+1-floor(n/A007978(n+1))`
-/

namespace A213634.P10699938003855614400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(n : ℚ) / (A007978 (n + 1) : ℚ)⌋

end

end A213634.P10699938003855614400

/-! ## A213634.P4769218219506270892

`abs(A213633(n+1)+A001478(n+1))`
-/

namespace A213634.P4769218219506270892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213633 (n + 1) + A001478 (n + 1)|

end

end A213634.P4769218219506270892

/-! ## A213634.P13985130890945755635

`ceil(n+1-A131717(n+1)/A007978(n+1))`
-/

namespace A213634.P13985130890945755635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) - (A131717 (n + 1) : ℚ) / (A007978 (n + 1) : ℚ)⌉

end

end A213634.P13985130890945755635

/-! ## A213634.P2160584604884739094

`A213636(n+1)+A055874(n+1)*A213633(n+1)`
-/

namespace A213634.P2160584604884739094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1) + A055874 (n + 1) * A213633 (n + 1)

end

end A213634.P2160584604884739094

/-! ## A213634.P6828693139936211375

`1-(A213633(A331886(∑[n]))-n)`
-/

namespace A213634.P6828693139936211375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A213633 (A331886 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n : ℤ))

end

end A213634.P6828693139936211375

/-! ## A213634.P7632697167067101817

`1-A331902(2*(n+1)²)+n`
-/

namespace A213634.P7632697167067101817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A331902 (2 * (n + 1) ^ 2) + (n : ℤ)

end

end A213634.P7632697167067101817

/-!
# A213635: m*[n/m], where m is the least nondivisor of n (as in A007978) and [ ] = floor.

The programs for A213635, there is no canonical definition to state claims against.
-/

/-! ## A213635.P2554225946965839177

`1-A213636(n+1)+n`
-/

namespace A213635.P2554225946965839177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A213636 (n + 1) + (n : ℤ)

end

end A213635.P2554225946965839177

/-! ## A213635.P11987014866713755345

`n-n%A007978(n+1)`
-/

namespace A213635.P11987014866713755345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n : ℤ) (A007978 (n + 1))

end

end A213635.P11987014866713755345

/-! ## A213635.P17975781094136247672

`1-(n-2*n)-A213636(1-(n-2*n))`
-/

namespace A213635.P17975781094136247672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A213636 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A213635.P17975781094136247672

/-! ## A213635.P11324081663043186000

`A007978(n+1)*A213633(n+1)`
-/

namespace A213635.P11324081663043186000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (n + 1) * A213633 (n + 1)

end

end A213635.P11324081663043186000

/-! ## A213635.P3299566369825509099

`A199968(n+1)*A213633(n+1)`
-/

namespace A213635.P3299566369825509099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (n + 1) * A213633 (n + 1)

end

end A213635.P3299566369825509099

/-! ## A213635.P7794941894397480462

`A038608(n)%A007978(n+1)+n`
-/

namespace A213635.P7794941894397480462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038608 n) (A007978 (n + 1)) + (n : ℤ)

end

end A213635.P7794941894397480462

/-! ## A213635.P2743495631218287902

`(A055874(n+1)+1)*A213633(n+1)`
-/

namespace A213635.P2743495631218287902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055874 (n + 1) + 1) * A213633 (n + 1)

end

end A213635.P2743495631218287902

/-! ## A213635.P11362260646407891880

`n+1-(n+1)%(A230403((n+1)²)+2)`
-/

namespace A213635.P11362260646407891880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (n + 1 : ℤ) (A230403 ((n + 1) ^ 2) + 2)

end

end A213635.P11362260646407891880

/-!
# A213636: Remainder when n is divided by its least nondivisor.

The programs for A213636, there is no canonical definition to state claims against.
-/

/-! ## A213636.P1766883058917088721

`n+1-A213635(n+1)`
-/

namespace A213636.P1766883058917088721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A213635 (n + 1)

end

end A213636.P1766883058917088721

/-! ## A213636.P14157950432598889250

`(n+1)%A007978(n+1)`
-/

namespace A213636.P14157950432598889250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007978 (n + 1))

end

end A213636.P14157950432598889250

/-! ## A213636.P2610494412168212529

`n%(A055874(n+1)+1)+1`
-/

namespace A213636.P2610494412168212529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A055874 (n + 1) + 1) + 1

end

end A213636.P2610494412168212529

/-! ## A213636.P14318171859836197929

`A048379(n-A213635(n+1))`
-/

namespace A213636.P14318171859836197929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 ((n : ℤ) - A213635 (n + 1)).toNat

end

end A213636.P14318171859836197929

/-! ## A213636.P6563496555041812248

`gcd(A110332(n), A213635(n+1))`
-/

namespace A213636.P6563496555041812248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110332 n) (A213635 (n + 1))

end

end A213636.P6563496555041812248

/-! ## A213636.P15741795032659099148

`n+1-A007978(n+1)*A213633(n+1)`
-/

namespace A213636.P15741795032659099148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007978 (n + 1) * A213633 (n + 1)

end

end A213636.P15741795032659099148

/-! ## A213636.P8532239210549138650

`A346563(n+1)%(n+1-A346563(n+1))`
-/

namespace A213636.P8532239210549138650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346563 (n + 1)) ((n + 1 : ℤ) - A346563 (n + 1))

end

end A213636.P8532239210549138650

/-! ## A213636.P5716784234526436780

`A213634(n+1)-A055874(n+1)*A213633(n+1)`
-/

namespace A213636.P5716784234526436780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213634 (n + 1) - A055874 (n + 1) * A213633 (n + 1)

end

end A213636.P5716784234526436780

/-! ## A213636.P4011871611972183093

`A028310(n+1)%(A055881((n+1)²)+1)`
-/

namespace A213636.P4011871611972183093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 1)) (A055881 ((n + 1) ^ 2) + 1)

end

end A213636.P4011871611972183093

/-! ## A213636.P11789848806883135430

`A000027(n+1)%(A230403((n+1)²)+2)`
-/

namespace A213636.P11789848806883135430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A230403 ((n + 1) ^ 2) + 2)

end

end A213636.P11789848806883135430

/-! ## A213636.P12811149071837341844

`A065033(2*n+1)%(A230403((n+1)²)+2)`
-/

namespace A213636.P12811149071837341844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (2 * n + 1)) (A230403 ((n + 1) ^ 2) + 2)

end

end A213636.P12811149071837341844

/-!
# A213637: Values of n for which A213636(n) = 1.

The programs for A213637, there is no canonical definition to state claims against.
-/

/-! ## A213637.P2195959870526568489

`record[A213635(n+1)+1]`
-/

namespace A213637.P2195959870526568489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213635 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213637.P2195959870526568489

/-! ## A213637.P7301742519059525739

`eq[1, A213636(n+1)]+1`
-/

namespace A213637.P7301742519059525739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213637.P7301742519059525739

/-! ## A213637.P4202404241874487973

`record[n+1-n%A007978(n+1)]`
-/

namespace A213637.P4202404241874487973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (n : ℤ) (A007978 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213637.P4202404241874487973

/-! ## A213637.P15346752081952924137

`record[A000027(n+2)-A213636(n+1)]`
-/

namespace A213637.P15346752081952924137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2) - A213636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213637.P15346752081952924137

/-! ## A213637.P1726714684996176428

`record[A000027(n+1)/A213636(n+1)]`
-/

namespace A213637.P1726714684996176428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A213636 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213637.P1726714684996176428

/-! ## A213637.P12504395149105362913

`record[A007978(n+1)*A213633(n+1)+1]`
-/

namespace A213637.P12504395149105362913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (n + 1) * A213633 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213637.P12504395149105362913

/-! ## A213637.P6513514279586031958

`record[A008620(n)/A213636(A008620(n))]`
-/

namespace A213637.P6513514279586031958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) / (A213636 (A008620 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213637.P6513514279586031958

/-! ## A213637.P1308468368474829732

`record[A008621(n)/A213636(A008621(n))]`
-/

namespace A213637.P1308468368474829732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008621 n : ℚ) / (A213636 (A008621 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213637.P1308468368474829732

/-!
# A213638: Positions of 2 in A213636.

The programs for A213638, there is no canonical definition to state claims against.
-/

/-! ## A213638.P14302676544671892602

`eq[2, A213636(n+1)]+1`
-/

namespace A213638.P14302676544671892602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213638.P14302676544671892602

/-! ## A213638.P3358938847575378027

`eq[1, n%A007978(n+1)]+1`
-/

namespace A213638.P3358938847575378027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007978 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213638.P3358938847575378027

/-! ## A213638.P15405359982685055256

`A014681(eq[2, A213636(n+1)])`
-/

namespace A213638.P15405359982685055256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213638.P15405359982685055256

/-! ## A213638.P12466879150850548966

`eq[2, A213636(A065190(n+1))]`
-/

namespace A213638.P12466879150850548966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213638.P12466879150850548966

/-! ## A213638.P4695028817192330299

`A092486(eq[2, A213636(n+1)])`
-/

namespace A213638.P4695028817192330299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213638.P4695028817192330299

/-! ## A213638.P6544626197428118160

`A133265(eq[2, A213636(n+1)])`
-/

namespace A213638.P6544626197428118160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213638.P6544626197428118160

/-! ## A213638.P16779211890267909129

`A285326(eq[2, A213636(n+1)])`
-/

namespace A213638.P16779211890267909129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213638.P16779211890267909129

/-! ## A213638.P2502055663892991059

`eq[2, A213636(A000007(n)+n)]`
-/

namespace A213638.P2502055663892991059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213638.P2502055663892991059

/-! ## A213638.P3150470718811432309

`eq[2, A213636(gcd(n, A008706(n)))]`
-/

namespace A213638.P3150470718811432309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213638.P3150470718811432309

/-! ## A213638.P1261175980560938652

`eq[2, A213636(A065033(2*n))]`
-/

namespace A213638.P1261175980560938652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213638.P1261175980560938652

/-!
# A213639: G.f. A(x) satisfies x = A( x - A(x)^3/x ).

The programs for A213639, there is no canonical definition to state claims against.
-/

/-! ## A213639.P1466817770239348650

`A384620(∑[n+1]+n)`
-/

namespace A213639.P1466817770239348650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384620 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A213639.P1466817770239348650

/-! ## A213639.P1811077693741061231

`A005843(A145347(n))-A121687(n)`
-/

namespace A213639.P1811077693741061231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A145347 n).toNat - A121687 n

end

end A213639.P1811077693741061231

/-!
# A213640: E.g.f. satisfies: A(x) = x - log(1 - A(x)^2).

The programs for A213640, there is no canonical definition to state claims against.
-/

/-! ## A213640.P17564174579340131563

`(n+1)*A213641(n)`
-/

namespace A213640.P17564174579340131563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A213641 n

end

end A213640.P17564174579340131563

/-! ## A213640.P15863965099267058127

`A213641(n)*A277813(comp[xor(n, 2*n)])`
-/

namespace A213640.P15863965099267058127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213641 n * A277813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A213640.P15863965099267058127

/-! ## A213640.P1013477864017626706

`A213641(n)*A234575(A000124(n))`
-/

namespace A213640.P1013477864017626706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213641 n * A234575 (A000124 n).toNat

end

end A213640.P1013477864017626706

/-! ## A213640.P3116039558130460815

`A213641(n)*A234575(A001844(n))`
-/

namespace A213640.P3116039558130460815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213641 n * A234575 (A001844 n).toNat

end

end A213640.P3116039558130460815

/-! ## A213640.P7645854463786750465

`A213641(n)*A325560(A000079(n))`
-/

namespace A213640.P7645854463786750465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213641 n * A325560 (A000079 n).toNat

end

end A213640.P7645854463786750465

/-!
# A213641: E.g.f. A(x) satisfies A(x) = 1 - log(1 - x^2*A(x)^2) / x.

The programs for A213641, there is no canonical definition to state claims against.
-/

/-! ## A213641.P14233458600234929568

`A213640(n+1)/(n+1)`
-/

namespace A213641.P14233458600234929568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213640 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A213641.P14233458600234929568

/-!
# A213642: a(n) = prime(odd part of n).

The programs for A213642, the canonical program `A213642.P6358489440238174870` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213642 has offset 1).

The definition of A213642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213642.P6358489440238174870

`A000040(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A213642

/-- `A000040(A000265(n+1))` -/
def P6358489440238174870.Spec : Prop :=
  ∀ n, P6358489440238174870.a n = A213642 (n + 1)

theorem P6358489440238174870.correct : P6358489440238174870.Spec := by
  intro n
  simp only [A213642, Nat.add_sub_cancel]

end A213642

/-! ## A213642.P4466369634208007141

`A000040((n+1)/2^val(n+1, 2))`
-/

namespace A213642.P4466369634208007141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A213642.P4466369634208007141

namespace A213642

/-- `A000040((n+1)/2^val(n+1, 2))` -/
def P4466369634208007141.Spec : Prop :=
  ∀ n, P4466369634208007141.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P2569835533399145467

`A000040((n+1)/(or(n, n+1)-n))`
-/

namespace A213642.P2569835533399145467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A213642.P2569835533399145467

namespace A213642

/-- `A000040((n+1)/(or(n, n+1)-n))` -/
def P2569835533399145467.Spec : Prop :=
  ∀ n, P2569835533399145467.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P16757955042115512918

`A000040((n+1)/xor(n, or(n, n+1)))`
-/

namespace A213642.P16757955042115512918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A213642.P16757955042115512918

namespace A213642

/-- `A000040((n+1)/xor(n, or(n, n+1)))` -/
def P16757955042115512918.Spec : Prop :=
  ∀ n, P16757955042115512918.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P5103036616846684477

`A000040((n+1)/and(n+1, -(n+1)))`
-/

namespace A213642.P5103036616846684477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A213642.P5103036616846684477

namespace A213642

/-- `A000040((n+1)/and(n+1, -(n+1)))` -/
def P5103036616846684477.Spec : Prop :=
  ∀ n, P5103036616846684477.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P6191986633206332780

`A000040((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A213642.P6191986633206332780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A213642.P6191986633206332780

namespace A213642

/-- `A000040((n+1)/ceil(xor(n, n+1)/2))` -/
def P6191986633206332780.Spec : Prop :=
  ∀ n, P6191986633206332780.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P13338555903643725401

`A031368(A003602(n+1))`
-/

namespace A213642.P13338555903643725401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A003602 (n + 1)).toNat

end

end A213642.P13338555903643725401

namespace A213642

/-- `A031368(A003602(n+1))` -/
def P13338555903643725401.Spec : Prop :=
  ∀ n, P13338555903643725401.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P5700810756658460515

`A000040(A153733(n)+1)`
-/

namespace A213642.P5700810756658460515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A153733 n + 1).toNat

end

end A213642.P5700810756658460515

namespace A213642

/-- `A000040(A153733(n)+1)` -/
def P5700810756658460515.Spec : Prop :=
  ∀ n, P5700810756658460515.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P9579849754396457935

`A045344(A322250(n+1))`
-/

namespace A213642.P9579849754396457935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A322250 (n + 1)).toNat

end

end A213642.P9579849754396457935

namespace A213642

/-- `A045344(A322250(n+1))` -/
def P9579849754396457935.Spec : Prop :=
  ∀ n, P9579849754396457935.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P2549510770164744955

`A008578(A000265(n+1)+1)`
-/

namespace A213642.P2549510770164744955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000265 (n + 1) + 1).toNat

end

end A213642.P2549510770164744955

namespace A213642

/-- `A008578(A000265(n+1)+1)` -/
def P2549510770164744955.Spec : Prop :=
  ∀ n, P2549510770164744955.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P8164630223646779619

`A008578(2*A003602(n+1))`
-/

namespace A213642.P8164630223646779619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * A003602 (n + 1)).toNat

end

end A213642.P8164630223646779619

namespace A213642

/-- `A008578(2*A003602(n+1))` -/
def P8164630223646779619.Spec : Prop :=
  ∀ n, P8164630223646779619.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P2323645234150904646

`A000040(A171435(2*(n+1)))`
-/

namespace A213642.P2323645234150904646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A171435 (2 * (n + 1))).toNat

end

end A213642.P2323645234150904646

namespace A213642

/-- `A000040(A171435(2*(n+1)))` -/
def P2323645234150904646.Spec : Prop :=
  ∀ n, P2323645234150904646.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P7792072920564870631

`A000040(A302034(2*(n+1)))`
-/

namespace A213642.P7792072920564870631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A302034 (2 * (n + 1))).toNat

end

end A213642.P7792072920564870631

namespace A213642

/-- `A000040(A302034(2*(n+1)))` -/
def P7792072920564870631.Spec : Prop :=
  ∀ n, P7792072920564870631.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P9378995542164110905

`A000040(A302044(2*(n+1)))`
-/

namespace A213642.P9378995542164110905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A302044 (2 * (n + 1))).toNat

end

end A213642.P9378995542164110905

namespace A213642

/-- `A000040(A302044(2*(n+1)))` -/
def P9378995542164110905.Spec : Prop :=
  ∀ n, P9378995542164110905.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P15700145684161788941

`A000040((n+1)/A006519(n+1))`
-/

namespace A213642.P15700145684161788941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A213642.P15700145684161788941

namespace A213642

/-- `A000040((n+1)/A006519(n+1))` -/
def P15700145684161788941.Spec : Prop :=
  ∀ n, P15700145684161788941.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P13961450247749002059

`A000040(A003961(A064989(n+1)))`
-/

namespace A213642.P13961450247749002059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003961 (A064989 (n + 1)).toNat).toNat

end

end A213642.P13961450247749002059

namespace A213642

/-- `A000040(A003961(A064989(n+1)))` -/
def P13961450247749002059.Spec : Prop :=
  ∀ n, P13961450247749002059.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P11572971500574339235

`A000040(A025480(n)+A003602(n+1))`
-/

namespace A213642.P11572971500574339235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025480 n + A003602 (n + 1)).toNat

end

end A213642.P11572971500574339235

namespace A213642

/-- `A000040(A025480(n)+A003602(n+1))` -/
def P11572971500574339235.Spec : Prop :=
  ∀ n, P11572971500574339235.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P3929279980852765583

`A008578(A003602(n+1)+A003602(n+1))`
-/

namespace A213642.P3929279980852765583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A003602 (n + 1) + A003602 (n + 1)).toNat

end

end A213642.P3929279980852765583

namespace A213642

/-- `A008578(A003602(n+1)+A003602(n+1))` -/
def P3929279980852765583.Spec : Prop :=
  ∀ n, P3929279980852765583.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P16258304931196929414

`A000040((n+1)/A000079(A007814(n+1)))`
-/

namespace A213642.P16258304931196929414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000079 (A007814 (n + 1)).toNat : ℚ))).toNat

end

end A213642.P16258304931196929414

namespace A213642

/-- `A000040((n+1)/A000079(A007814(n+1)))` -/
def P16258304931196929414.Spec : Prop :=
  ∀ n, P16258304931196929414.a n = A213642 (n + 1)

end A213642

/-! ## A213642.P10717815651174478917

`A158611(A000265(n+1)+2)`
-/

namespace A213642.P10717815651174478917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A000265 (n + 1) + 2).toNat

end

end A213642.P10717815651174478917

namespace A213642

/-- `A158611(A000265(n+1)+2)` -/
def P10717815651174478917.Spec : Prop :=
  ∀ n, P10717815651174478917.a n = A213642 (n + 1)

end A213642

/-!
# A213643: E.g.f. satisfies: A(x) = x + A(x)^2*exp(A(x)).

The programs for A213643, there is no canonical definition to state claims against.
-/

/-! ## A213643.P11108955352671456459

`(n+1)*A213644(n)`
-/

namespace A213643.P11108955352671456459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A213644 n

end

end A213643.P11108955352671456459

/-! ## A213643.P7135632312761696105

`A213644(n)*A277813(comp[xor(n, 2*n)])`
-/

namespace A213643.P7135632312761696105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213644 n * A277813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A213643.P7135632312761696105

/-! ## A213643.P11070885748241980335

`A213644(n)*A234575(A000124(n))`
-/

namespace A213643.P11070885748241980335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213644 n * A234575 (A000124 n).toNat

end

end A213643.P11070885748241980335

/-! ## A213643.P1541612372314317524

`A213644(n)*A234575(A001844(n))`
-/

namespace A213643.P1541612372314317524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213644 n * A234575 (A001844 n).toNat

end

end A213643.P1541612372314317524

/-! ## A213643.P1721626843181951396

`A213644(n)*A324293(A000079(n))`
-/

namespace A213643.P1721626843181951396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213644 n * A324293 (A000079 n).toNat

end

end A213643.P1721626843181951396

/-!
# A213644: E.g.f. satisfies: A(x) = 1 + x*A(x)^2*exp(x*A(x)).

The programs for A213644, there is no canonical definition to state claims against.
-/

/-! ## A213644.P6477523484618815969

`A213643(n+1)/(n+1)`
-/

namespace A213644.P6477523484618815969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213643 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A213644.P6477523484618815969

/-!
# A213645: Initial members of prime 12-tuplets. Primes p such that p + (0, 2, 6, 8, 12, 18, 20, 26, 30, 32, 36, 42) are all prime.

The programs for A213645, there is no canonical definition to state claims against.
-/

/-! ## A213645.P10107196116233592641

`∩[A213647(n+1), A257131(n+1)]`
-/

namespace A213645.P10107196116233592641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213645.P10107196116233592641

/-!
# A213646: Initial members of prime 11-tuplets: primes p such that p + (0, 4, 6, 10, 16, 18, 24, 28, 30, 34, 36) are all prime.

The programs for A213646, there is no canonical definition to state claims against.
-/

/-! ## A213646.P5425096809600835446

`∩[A027570(n+1)-4, A257129(n+1)]`
-/

namespace A213646.P5425096809600835446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027570 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213646.P5425096809600835446

/-! ## A213646.P17662265255518465528

`∩[A257127(n+1)-4, A257129(n+1)]`
-/

namespace A213646.P17662265255518465528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213646.P17662265255518465528

/-! ## A213646.P6298998261346655543

`∩[A257129(n+1), A273217(n+1)]`
-/

namespace A213646.P6298998261346655543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213646.P6298998261346655543

/-! ## A213646.P9393005803052733742

`∩[A257127(n+1)-4, A273217(n+1)]`
-/

namespace A213646.P9393005803052733742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213646.P9393005803052733742

/-!
# A213647: Initial members of prime 11-tuplets: primes p such that p + (0, 2, 6, 8, 12, 18, 20, 26, 30, 32, 36) are all prime.

The programs for A213647, there is no canonical definition to state claims against.
-/

/-! ## A213647.P16552110312624493581

`∩[A027569(n+1), A257129(n+1)]`
-/

namespace A213647.P16552110312624493581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213647.P16552110312624493581

/-! ## A213647.P12919896306549927064

`∩[A257127(n+1), A257129(n+1)]`
-/

namespace A213647.P12919896306549927064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213647.P12919896306549927064

/-! ## A213647.P10825030768079310303

`∩[A257129(n+1), A273217(n+1)-2]`
-/

namespace A213647.P10825030768079310303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273217 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213647.P10825030768079310303

/-!
# A213648: The minimum number of 1's in the relation n*[n,1,1,...,1,n] = [x,...,x] between simple continued fractions.

The programs for A213648, there is no canonical definition to state claims against.
-/

/-! ## A213648.P10850040933976684549

`A001177(n+2)-1`
-/

namespace A213648.P10850040933976684549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 2) - 1

end

end A213648.P10850040933976684549

/-! ## A213648.P2755687947843591723

`∑[Δ[A001177(n+1)]%47]`
-/

namespace A213648.P2755687947843591723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213648.P2755687947843591723

/-! ## A213648.P6913234755116346930

`A023443(A001177(n+2))`
-/

namespace A213648.P6913234755116346930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001177 (n + 2)).toNat

end

end A213648.P6913234755116346930

/-! ## A213648.P4115213110785115272

`A057918(A001177(n+2)²)`
-/

namespace A213648.P4115213110785115272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A001177 (n + 2) ^ 2).toNat

end

end A213648.P4115213110785115272

/-! ## A213648.P7016233484008404827

`A171173(A001177(n+2)²)`
-/

namespace A213648.P7016233484008404827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A001177 (n + 2) ^ 2).toNat

end

end A213648.P7016233484008404827

/-! ## A213648.P11997136848641640186

`A289207(A001177(n+2)+1)`
-/

namespace A213648.P11997136848641640186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A001177 (n + 2) + 1).toNat

end

end A213648.P11997136848641640186

/-! ## A213648.P11012999377542504959

`A059169(4*A001177(n+2))`
-/

namespace A213648.P11012999377542504959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A001177 (n + 2)).toNat

end

end A213648.P11012999377542504959

/-! ## A213648.P9183625673616155074

`A057428(n+1)+A001177(n+2)`
-/

namespace A213648.P9183625673616155074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A001177 (n + 2)

end

end A213648.P9183625673616155074

/-! ## A213648.P18356738519083507909

`A033999(2*n+1)+A001177(n+2)`
-/

namespace A213648.P18356738519083507909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001177 (n + 2)

end

end A213648.P18356738519083507909

/-! ## A213648.P9431602966733530002

`A001175(n+2)/A001176(n+2)-1`
-/

namespace A213648.P9431602966733530002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 2) : ℚ) / (A001176 (n + 2) : ℚ) - 1

end

end A213648.P9431602966733530002

/-!
# A213649: Smallest k such that there exists a square between prime(n) and prime(n+k).

The programs for A213649, the canonical program `A213649.P8547143096557772554` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213649 has offset 1).

The definition of A213649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213649.P13468142191112474681

`A038107(A104103(n+1))-n`
-/

namespace A213649.P13468142191112474681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A104103 (n + 1)).toNat - (n : ℤ)

end

end A213649.P13468142191112474681

namespace A213649

/-- `A038107(A104103(n+1))-n` -/
def P13468142191112474681.Spec : Prop :=
  ∀ n, P13468142191112474681.a n = A213649 (n + 1)

end A213649

/-! ## A213649.P8547143096557772554

`A000720(A145445(n+1))-n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213649

/-- `A000720(A145445(n+1))-n` -/
def P8547143096557772554.Spec : Prop :=
  ∀ n, P8547143096557772554.a n = A213649 (n + 1)

theorem P8547143096557772554.correct : P8547143096557772554.Spec := by
  intro n
  simp only [A213649, Nat.add_sub_cancel]

end A213649

/-! ## A213649.P733184434907322754

`A000720(A104103(n+1)²)-n`
-/

namespace A213649.P733184434907322754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104103 (n + 1) ^ 2).toNat - (n : ℤ)

end

end A213649.P733184434907322754

namespace A213649

/-- `A000720(A104103(n+1)²)-n` -/
def P733184434907322754.Spec : Prop :=
  ∀ n, P733184434907322754.a n = A213649 (n + 1)

end A213649

/-! ## A213649.P11091395429642399157

`A038107(A000006(n+1)+1)-n`
-/

namespace A213649.P11091395429642399157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000006 (n + 1) + 1).toNat - (n : ℤ)

end

end A213649.P11091395429642399157

namespace A213649

/-- `A038107(A000006(n+1)+1)-n` -/
def P11091395429642399157.Spec : Prop :=
  ∀ n, P11091395429642399157.a n = A213649 (n + 1)

end A213649

/-! ## A213649.P16011231049831738493

`A000720((A000006(n+1)+1)²)-n`
-/

namespace A213649.P16011231049831738493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((A000006 (n + 1) + 1) ^ 2).toNat - (n : ℤ)

end

end A213649.P16011231049831738493

namespace A213649

/-- `A000720((A000006(n+1)+1)²)-n` -/
def P16011231049831738493.Spec : Prop :=
  ∀ n, P16011231049831738493.a n = A213649 (n + 1)

end A213649

/-! ## A213649.P8686853328751759299

`A038107(ceil(root(A060800(n+1), 4)))-n`
-/

namespace A213649.P8686853328751759299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 ⌈(A060800 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉.toNat - (n : ℤ)

end

end A213649.P8686853328751759299

namespace A213649

/-- `A038107(ceil(root(A060800(n+1), 4)))-n` -/
def P8686853328751759299.Spec : Prop :=
  ∀ n, P8686853328751759299.a n = A213649 (n + 1)

end A213649

/-! ## A213649.P7718602599403407983

`A000720((floor(sqrt(A000040(n+1)))+1)²)-n`
-/

namespace A213649.P7718602599403407983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((Int.sqrt (A000040 (n + 1)) + 1) ^ 2).toNat - (n : ℤ)

end

end A213649.P7718602599403407983

namespace A213649

/-- `A000720((floor(sqrt(A000040(n+1)))+1)²)-n` -/
def P7718602599403407983.Spec : Prop :=
  ∀ n, P7718602599403407983.a n = A213649 (n + 1)

end A213649

/-! ## A213649.P6047051604186688903

`A161187(A161188(n+1)-n)-A161188(n+1)`
-/

namespace A213649.P6047051604186688903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (A161188 (n + 1) - (n : ℤ)).toNat - A161188 (n + 1)

end

end A213649.P6047051604186688903

namespace A213649

/-- `A161187(A161188(n+1)-n)-A161188(n+1)` -/
def P6047051604186688903.Spec : Prop :=
  ∀ n, P6047051604186688903.a n = A213649 (n + 1)

end A213649

/-! ## A213649.P10535852620923843047

`∑{p}[A007491(A000006(n+1)+1), A000720(#+1)-(n+1)]`
-/

namespace A213649.P10535852620923843047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A000006 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000720 (p + 1) - (n + 1 : ℤ))

end

end A213649.P10535852620923843047

namespace A213649

/-- `∑{p}[A007491(A000006(n+1)+1), A000720(#+1)-(n+1)]` -/
def P10535852620923843047.Spec : Prop :=
  ∀ n, P10535852620923843047.a n = A213649 (n + 1)

end A213649

/-! ## A213649.P11151125120677577448

`A230980(A104103(n+1)²)-n`
-/

namespace A213649.P11151125120677577448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A104103 (n + 1) ^ 2).toNat - (n : ℤ)

end

end A213649.P11151125120677577448

namespace A213649

/-- `A230980(A104103(n+1)²)-n` -/
def P11151125120677577448.Spec : Prop :=
  ∀ n, P11151125120677577448.a n = A213649 (n + 1)

end A213649

/-!
# A213650: Numbers k such that the sum of the first k primes is semiprime.

The programs for A213650, the canonical program `A213650.P4295961381760451156` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213650 has offset 1).

The definition of A213650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213650.P4295961381760451156

`eq[2, A102862(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A213650

/-- `eq[2, A102862(n+1)]+1` -/
def P4295961381760451156.Spec : Prop :=
  ∀ n, (P4295961381760451156.a n : ℤ) = A213650 (n + 1)

theorem P4295961381760451156.correct : P4295961381760451156.Spec := by
  intro n
  simp only [A213650, Nat.add_sub_cancel]

end A213650

/-! ## A213650.P829644669056459878

`eq[4, A074369(n+1)]+1`
-/

namespace A213650.P829644669056459878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213650.P829644669056459878

namespace A213650

/-- `eq[4, A074369(n+1)]+1` -/
def P829644669056459878.Spec : Prop :=
  ∀ n, (P829644669056459878.a n : ℤ) = A213650 (n + 1)

end A213650

/-! ## A213650.P6142041147413362162

`eq[2, A102862(A000007(n)+n)]`
-/

namespace A213650.P6142041147413362162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213650.P6142041147413362162

namespace A213650

/-- `eq[2, A102862(A000007(n)+n)]` -/
def P6142041147413362162.Spec : Prop :=
  ∀ n, (P6142041147413362162.a n : ℤ) = A213650 (n + 1)

end A213650

/-! ## A213650.P6457072146309463599

`eq[2, A102862(A000038(n)+n)]`
-/

namespace A213650.P6457072146309463599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213650.P6457072146309463599

namespace A213650

/-- `eq[2, A102862(A000038(n)+n)]` -/
def P6457072146309463599.Spec : Prop :=
  ∀ n, (P6457072146309463599.a n : ℤ) = A213650 (n + 1)

end A213650

/-! ## A213650.P13399027140276097200

`eq[4, A074369(A000038(n)+n)]`
-/

namespace A213650.P13399027140276097200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213650.P13399027140276097200

namespace A213650

/-- `eq[4, A074369(A000038(n)+n)]` -/
def P13399027140276097200.Spec : Prop :=
  ∀ n, (P13399027140276097200.a n : ℤ) = A213650 (n + 1)

end A213650

/-! ## A213650.P6720183466928945070

`eq[2, A102862(xor(n, A000007(n)))]`
-/

namespace A213650.P6720183466928945070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213650.P6720183466928945070

namespace A213650

/-- `eq[2, A102862(xor(n, A000007(n)))]` -/
def P6720183466928945070.Spec : Prop :=
  ∀ n, (P6720183466928945070.a n : ℤ) = A213650 (n + 1)

end A213650

/-! ## A213650.P6590861344291026186

`A344180(eq[2, A102862(A344180(n))])`
-/

namespace A213650.P6590861344291026186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213650.P6590861344291026186

namespace A213650

/-- `A344180(eq[2, A102862(A344180(n))])` -/
def P6590861344291026186.Spec : Prop :=
  ∀ n, P6590861344291026186.a n = A213650 (n + 1)

end A213650

/-! ## A213650.P6449960847439864314

`eq[2, A102862(A065033(2*n))]`
-/

namespace A213650.P6449960847439864314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213650.P6449960847439864314

namespace A213650

/-- `eq[2, A102862(A065033(2*n))]` -/
def P6449960847439864314.Spec : Prop :=
  ∀ n, (P6449960847439864314.a n : ℤ) = A213650 (n + 1)

end A213650

/-! ## A213650.P13774151507135360425

`eq[4, A074369(A080513(A004275(n)))]`
-/

namespace A213650.P13774151507135360425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (A080513 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213650.P13774151507135360425

namespace A213650

/-- `eq[4, A074369(A080513(A004275(n)))]` -/
def P13774151507135360425.Spec : Prop :=
  ∀ n, (P13774151507135360425.a n : ℤ) = A213650 (n + 1)

end A213650

/-! ## A213650.P531516565984210591

`eq[2, A102862(A233583(n+1))]`
-/

namespace A213650.P531516565984210591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213650.P531516565984210591

namespace A213650

/-- `eq[2, A102862(A233583(n+1))]` -/
def P531516565984210591.Spec : Prop :=
  ∀ n, (P531516565984210591.a n : ℤ) = A213650 (n + 1)

end A213650

/-! ## A213650.P18377456087962305929

`eq[2, ∑{e}[A007504(n), #]]`
-/

namespace A213650.P18377456087962305929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213650.P18377456087962305929

namespace A213650

/-- `eq[2, ∑{e}[A007504(n), #]]` -/
def P18377456087962305929.Spec : Prop :=
  ∀ n, (P18377456087962305929.a n : ℤ) = A213650 (n + 1)

end A213650

/-!
# A213652: 9-nomial coefficient array: Coefficients of the polynomial (1+...+X^8)^n, n=0,1,...

The programs for A213652, there is no canonical definition to state claims against.
-/

/-! ## A213652.P9086290529993726645

`A213651(lt[A008615(n), A162909(2*n+3)])`
-/

namespace A213652.P9086290529993726645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A213652.P9086290529993726645

/-!
# A213655: Number of dominating subsets of the theta-graph TH(2,2,n) (n>=1). A tribonacci sequence with initial values 13, 23, and 41.

The programs for A213655, the canonical program `A213655.P18160493581762310639` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213655 has offset 1).

The definition of A213655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213655.P18160493581762310639

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=13, a(1)=23, a(2)=41`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A213655

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P18160493581762310639.Spec : Prop :=
  ∀ n, (P18160493581762310639.a n : ℤ) = A213655 (n + 1)

theorem P18160493581762310639.correct : P18160493581762310639.Spec := by
  intro n
  simp only [A213655, Nat.add_sub_cancel]

end A213655

/-! ## A213655.P15375569136459033300

`A213665(n+3)-A354784(n)`
-/

namespace A213655.P15375569136459033300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213665 (n + 3) - A354784 n

end

end A213655.P15375569136459033300

namespace A213655

/-- `A213665(n+3)-A354784(n)` -/
def P15375569136459033300.Spec : Prop :=
  ∀ n, P15375569136459033300.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P4029431316454657487

`A100683(n+5)+A081172(n)`
-/

namespace A213655.P4029431316454657487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 5) + A081172 n

end

end A213655.P4029431316454657487

namespace A213655

/-- `A100683(n+5)+A081172(n)` -/
def P4029431316454657487.Spec : Prop :=
  ∀ n, P4029431316454657487.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P2309333304124109135

`A086192(n+2)+A086192(n+3)`
-/

namespace A213655.P2309333304124109135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086192 (n + 2) + A086192 (n + 3)

end

end A213655.P2309333304124109135

namespace A213655

/-- `A086192(n+2)+A086192(n+3)` -/
def P2309333304124109135.Spec : Prop :=
  ∀ n, P2309333304124109135.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P4164618957635245894

`A135491(n+4)-A001644(n+1)`
-/

namespace A213655.P4164618957635245894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 4) - A001644 (n + 1)

end

end A213655.P4164618957635245894

namespace A213655

/-- `A135491(n+4)-A001644(n+1)` -/
def P4164618957635245894.Spec : Prop :=
  ∀ n, P4164618957635245894.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P16289000901382335566

`A280308(n+3)+A001590(n+3)`
-/

namespace A213655.P16289000901382335566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280308 (n + 3) + A001590 (n + 3)

end

end A213655.P16289000901382335566

namespace A213655

/-- `A280308(n+3)+A001590(n+3)` -/
def P16289000901382335566.Spec : Prop :=
  ∀ n, P16289000901382335566.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P11029806830674976072

`A214828(n+3)-A081172(n+2)`
-/

namespace A213655.P11029806830674976072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214828 (n + 3) - A081172 (n + 2)

end

end A213655.P11029806830674976072

namespace A213655

/-- `A214828(n+3)-A081172(n+2)` -/
def P11029806830674976072.Spec : Prop :=
  ∀ n, P11029806830674976072.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P6639891080832106852

`A214826(n+3)+A141036(n+3)`
-/

namespace A213655.P6639891080832106852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 (n + 3) + A141036 (n + 3)

end

end A213655.P6639891080832106852

namespace A213655

/-- `A214826(n+3)+A141036(n+3)` -/
def P6639891080832106852.Spec : Prop :=
  ∀ n, P6639891080832106852.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P5961287628878566152

`A145027(n+1)+A001590(n+7)`
-/

namespace A213655.P5961287628878566152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 1) + A001590 (n + 7)

end

end A213655.P5961287628878566152

namespace A213655

/-- `A145027(n+1)+A001590(n+7)` -/
def P5961287628878566152.Spec : Prop :=
  ∀ n, P5961287628878566152.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P14681358270574705290

`Δ[A086192(n+4)]`
-/

namespace A213655.P14681358270574705290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086192 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213655.P14681358270574705290

namespace A213655

/-- `Δ[A086192(n+4)]` -/
def P14681358270574705290.Spec : Prop :=
  ∀ n, P14681358270574705290.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P17499704010289293789

`A000213(n)+Δ[A135491(n+4)]`
-/

namespace A213655.P17499704010289293789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (f1 (n + 1) - f1 n)

end

end A213655.P17499704010289293789

namespace A213655

/-- `A000213(n)+Δ[A135491(n+4)]` -/
def P17499704010289293789.Spec : Prop :=
  ∀ n, P17499704010289293789.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P16369278792765983521

`A145027(n+1)+Δ[A000073(n+7)]`
-/

namespace A213655.P16369278792765983521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 1) + (f1 (n + 1) - f1 n)

end

end A213655.P16369278792765983521

namespace A213655

/-- `A145027(n+1)+Δ[A000073(n+7)]` -/
def P16369278792765983521.Spec : Prop :=
  ∀ n, P16369278792765983521.a n = A213655 (n + 1)

end A213655

/-! ## A213655.P1286672259919866507

`A000213(n)+Δ[Δ[A027025(n+3)]]`
-/

namespace A213655.P1286672259919866507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027025 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (f1 (n + 1) - f1 n)

end

end A213655.P1286672259919866507

namespace A213655

/-- `A000213(n)+Δ[Δ[A027025(n+3)]]` -/
def P1286672259919866507.Spec : Prop :=
  ∀ n, P1286672259919866507.a n = A213655 (n + 1)

end A213655

/-!
# A213656: Value of A114183 at end of n-th doubling run.

The programs for A213656, there is no canonical definition to state claims against.
-/

/-! ## A213656.P1714167204163019896

`A011782(A221716(n+1))*A221715(n+1)`
-/

namespace A213656.P1714167204163019896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A221716 (n + 1)).toNat * A221715 (n + 1)

end

end A213656.P1714167204163019896

/-! ## A213656.P14576463861752749317

`A011782(Δ[A213220(n+1)])*A221715(n+1)`
-/

namespace A213656.P14576463861752749317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (f1 (n + 1) - f1 n).toNat * A221715 (n + 1)

end

end A213656.P14576463861752749317

/-! ## A213656.P17934900492128503381

`A011782(A213220(n+2)-A213220(n+1))*A221715(n+1)`
-/

namespace A213656.P17934900492128503381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A213220 (n + 2) - A213220 (n + 1)).toNat * A221715 (n + 1)

end

end A213656.P17934900492128503381

/-! ## A213656.P9077116102902482300

`A011782(A221716(n+1))*A114183(A213220(n+1))`
-/

namespace A213656.P9077116102902482300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A221716 (n + 1)).toNat * A114183 (A213220 (n + 1)).toNat

end

end A213656.P9077116102902482300

/-! ## A213656.P5690933696908767491

`A114183(∑[A221716(n+1)])`
-/

namespace A213656.P5690933696908767491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213656.P5690933696908767491

/-! ## A213656.P5473266210100297995

`A114183(A213220(n+2)-1)`
-/

namespace A213656.P5473266210100297995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (A213220 (n + 2) - 1).toNat

end

end A213656.P5473266210100297995

/-!
# A213657: Irregular triangle read by rows: T(n,k) is the number of dominating subsets with k vertices of the graph G(n) consisting of an edge ab, n vertices c_1, c_2, ..., c_n, and 2n edges ac_i, bc_i (i=1..n). (n triangles with a common edge).

The programs for A213657, there is no canonical definition to state claims against.
-/

/-! ## A213657.P2826818525571383461

`A029653(n+3)+char[∑[n-3]]`
-/

namespace A213657.P2826818525571383461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (n + 3) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A213657.P2826818525571383461

/-! ## A213657.P13983079464992951525

`A073424(n+6)+A029653(n+3)`
-/

namespace A213657.P13983079464992951525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 6) + A029653 (n + 3)

end

end A213657.P13983079464992951525

/-! ## A213657.P17782322763691250791

`A283991(A130321(n+4))+A029653(n+3)`
-/

namespace A213657.P17782322763691250791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (A130321 (n + 4)).toNat + A029653 (n + 3)

end

end A213657.P17782322763691250791

/-! ## A213657.P5034012908276975383

`A073424(n+6)+A029635(A038722(n+5))`
-/

namespace A213657.P5034012908276975383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 6) + A029635 (A038722 (n + 5)).toNat

end

end A213657.P5034012908276975383

/-!
# A213659: a(n) = 3^n + 2^(2*n + 1).

The programs for A213659, the canonical program `A213659.P11338152578716693213` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213659 has offset 1).

The definition of A213659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)+2^(2*(n+1)+1)` (program `A213659.P11338152578716693213`, by `A213659.P11338152578716693213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213659.P11338152578716693213

`3^(n+1)+2^(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A213659

/-- `3^(n+1)+2^(2*(n+1)+1)` -/
def P11338152578716693213.Spec : Prop :=
  ∀ n, (P11338152578716693213.a n : ℤ) = A213659 (n + 1)

theorem P11338152578716693213.correct : P11338152578716693213.Spec := by
  intro n
  simp only [A213659, Nat.add_sub_cancel]

end A213659

/-! ## A213659.P5625107936269923035

`or(2^Δ[(n+1)^2], 3^(n+1))`
-/

namespace A213659.P5625107936269923035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ))) (3 ^ (n + 1) : ℤ)

end

end A213659.P5625107936269923035

namespace A213659

/-- `or(2^Δ[(n+1)^2], 3^(n+1))` -/
def P5625107936269923035.Spec : Prop :=
  ∀ n, P5625107936269923035.a n = A213659 (n + 1)

end A213659

/-! ## A213659.P7143164705132832969

`A085613(2*(n+2))`
-/

namespace A213659.P7143164705132832969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085613 (2 * (n + 2))

end

end A213659.P7143164705132832969

namespace A213659

/-- `A085613(2*(n+2))` -/
def P7143164705132832969.Spec : Prop :=
  ∀ n, P7143164705132832969.a n = A213659 (n + 1)

end A213659

/-! ## A213659.P1130460443660236692

`Δ[A000079(n+1)²-A162725(n+1)]`
-/

namespace A213659.P1130460443660236692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A162725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213659.P1130460443660236692

namespace A213659

/-- `Δ[A000079(n+1)²-A162725(n+1)]` -/
def P1130460443660236692.Spec : Prop :=
  ∀ n, P1130460443660236692.a n = A213659 (n + 1)

end A213659

/-! ## A213659.P6528830234248534375

`Δ[A007051(n+1)+2*A002450(n+1)]`
-/

namespace A213659.P6528830234248534375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) + 2 * A002450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213659.P6528830234248534375

namespace A213659

/-- `Δ[A007051(n+1)+2*A002450(n+1)]` -/
def P6528830234248534375.Spec : Prop :=
  ∀ n, P6528830234248534375.a n = A213659 (n + 1)

end A213659

/-! ## A213659.P8490073581092410703

`xor(A085350(n+1)+A024036(n+1), A024036(n+1))`
-/

namespace A213659.P8490073581092410703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085350 (n + 1) + A024036 (n + 1)) (A024036 (n + 1))

end

end A213659.P8490073581092410703

namespace A213659

/-- `xor(A085350(n+1)+A024036(n+1), A024036(n+1))` -/
def P8490073581092410703.Spec : Prop :=
  ∀ n, P8490073581092410703.a n = A213659 (n + 1)

end A213659

/-! ## A213659.P7404208673644084794

`Δ[Δ[A085282(n+1)]-A085282(n+1)]`
-/

namespace A213659.P7404208673644084794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A085282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213659.P7404208673644084794

namespace A213659

/-- `Δ[Δ[A085282(n+1)]-A085282(n+1)]` -/
def P7404208673644084794.Spec : Prop :=
  ∀ n, P7404208673644084794.a n = A213659 (n + 1)

end A213659

/-! ## A213659.P3089310946349670448

`A093834(2*n+3)/A085350(n+1)`
-/

namespace A213659.P3089310946349670448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093834 (2 * n + 3) : ℚ) / (A085350 (n + 1) : ℚ)

end

end A213659.P3089310946349670448

namespace A213659

/-- `A093834(2*n+3)/A085350(n+1)` -/
def P3089310946349670448.Spec : Prop :=
  ∀ n, P3089310946349670448.a n = (A213659 (n + 1) : ℚ)

end A213659

/-!
# A213661: Number of dominating subsets of the wheel graph W_n.

The programs for A213661, the canonical program `A213661.P906046948516936966` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213661 has offset 1).

The definition of A213661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213661.P14161927869102847222

`a(n-1)+a(n-2)+a(n-3)+2^(n-3)` with `a(0)=4, a(1)=3, a(2)=7`
-/

namespace A213661.P14161927869102847222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 3, 7] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A213661.P14161927869102847222

namespace A213661

/-- `a(n-1)+a(n-2)+a(n-3)+2^(n-3)` -/
def P14161927869102847222.Spec : Prop :=
  ∀ n, P14161927869102847222.a n = (A213661 (n + 1) : ℚ)

end A213661

/-! ## A213661.P7586040872630002056

`2^n-A000073(n+3)+4*A000073(n+2)-A000073(n+1)`
-/

namespace A213661.P7586040872630002056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000073 (n + 3) + 4 * A000073 (n + 2) - A000073 (n + 1)

end

end A213661.P7586040872630002056

namespace A213661

/-- `2^n-A000073(n+3)+4*A000073(n+2)-A000073(n+1)` -/
def P7586040872630002056.Spec : Prop :=
  ∀ n, P7586040872630002056.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P906046948516936966

`3*a(n-1)-a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=4, a(1)=3, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A213661

/-- `3*a(n-1)-a(n-2)-a(n-3)-2*a(n-4)` -/
def P906046948516936966.Spec : Prop :=
  ∀ n, P906046948516936966.a n = A213661 (n + 1)

theorem P906046948516936966.correct : P906046948516936966.Spec := by
  intro n
  simp only [A213661, Nat.add_sub_cancel]

end A213661

/-! ## A213661.P16893826515249548842

`A001644(n)+2^n`
-/

namespace A213661.P16893826515249548842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + (2 ^ n : ℤ)

end

end A213661.P16893826515249548842

namespace A213661

/-- `A001644(n)+2^n` -/
def P16893826515249548842.Spec : Prop :=
  ∀ n, P16893826515249548842.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P12478697957831893967

`Δ[Δ[A214727(n+1)]]+2^n`
-/

namespace A213661.P12478697957831893967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 ^ n : ℤ)

end

end A213661.P12478697957831893967

namespace A213661

/-- `Δ[Δ[A214727(n+1)]]+2^n` -/
def P12478697957831893967.Spec : Prop :=
  ∀ n, P12478697957831893967.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P1638009283156212146

`A000225(n)+A001644(n)+1`
-/

namespace A213661.P1638009283156212146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A001644 n + 1)

end

end A213661.P1638009283156212146

namespace A213661

/-- `A000225(n)+A001644(n)+1` -/
def P1638009283156212146.Spec : Prop :=
  ∀ n, P1638009283156212146.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P18359117104613311474

`A011782(n+1)+A001644(n)`
-/

namespace A213661.P18359117104613311474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + A001644 n

end

end A213661.P18359117104613311474

namespace A213661

/-- `A011782(n+1)+A001644(n)` -/
def P18359117104613311474.Spec : Prop :=
  ∀ n, P18359117104613311474.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P231729484074798229

`A000051(n)+A001644(n)-1`
-/

namespace A213661.P231729484074798229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A001644 n - 1)

end

end A213661.P231729484074798229

namespace A213661

/-- `A000051(n)+A001644(n)-1` -/
def P231729484074798229.Spec : Prop :=
  ∀ n, P231729484074798229.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P3377608188663774395

`A000918(n)+A001644(n)+2`
-/

namespace A213661.P3377608188663774395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (A001644 n + 2)

end

end A213661.P3377608188663774395

namespace A213661

/-- `A000918(n)+A001644(n)+2` -/
def P3377608188663774395.Spec : Prop :=
  ∀ n, P3377608188663774395.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P4224209569148754875

`A131575(2*n+1)+A001644(n)`
-/

namespace A213661.P4224209569148754875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (2 * n + 1) + A001644 n

end

end A213661.P4224209569148754875

namespace A213661

/-- `A131575(2*n+1)+A001644(n)` -/
def P4224209569148754875.Spec : Prop :=
  ∀ n, P4224209569148754875.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P17343248200494863009

`A048675(A000040(n+1))+A001644(n)`
-/

namespace A213661.P17343248200494863009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A000040 (n + 1)).toNat + A001644 n

end

end A213661.P17343248200494863009

namespace A213661

/-- `A048675(A000040(n+1))+A001644(n)` -/
def P17343248200494863009.Spec : Prop :=
  ∀ n, P17343248200494863009.a n = A213661 (n + 1)

end A213661

/-! ## A213661.P2019821483729554075

`Δ[A000079(n)+Δ[A214727(n+1)]]`
-/

namespace A213661.P2019821483729554075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213661.P2019821483729554075

namespace A213661

/-- `Δ[A000079(n)+Δ[A214727(n+1)]]` -/
def P2019821483729554075.Spec : Prop :=
  ∀ n, P2019821483729554075.a n = A213661 (n + 1)

end A213661

/-!
# A213663: Number of dominating subsets of the graph G(n) obtained by joining each vertex of the path graph P_{n+1} on n+1 vertices with an additional vertex (the join of K_1 and P_{n+1}).

The programs for A213663, the canonical program `A213663.P4673642208201560639` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213663 has offset 1).

The definition of A213663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213663.P3622274500140333842

`a(n-1)+a(n-2)+a(n-3)+2^(n-1)` with `a(0)=7, a(1)=13, a(2)=25`
-/

namespace A213663.P3622274500140333842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7, 13, 25] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A213663.P3622274500140333842

namespace A213663

/-- `a(n-1)+a(n-2)+a(n-3)+2^(n-1)` -/
def P3622274500140333842.Spec : Prop :=
  ∀ n, P3622274500140333842.a n = (A213663 (n + 1) : ℚ)

end A213663

/-! ## A213663.P4673642208201560639

`2^(n+2)+A000213(n+3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213663

/-- `2^(n+2)+A000213(n+3)` -/
def P4673642208201560639.Spec : Prop :=
  ∀ n, P4673642208201560639.a n = A213663 (n + 1)

theorem P4673642208201560639.correct : P4673642208201560639.Spec := by
  intro n
  simp only [A213663, Nat.add_sub_cancel]

end A213663

/-! ## A213663.P10419966520278830192

`or(A000213(n+3), A020737(n))`
-/

namespace A213663.P10419966520278830192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000213 (n + 3)) (A020737 n)

end

end A213663.P10419966520278830192

namespace A213663

/-- `or(A000213(n+3), A020737(n))` -/
def P10419966520278830192.Spec : Prop :=
  ∀ n, P10419966520278830192.a n = A213663 (n + 1)

end A213663

/-! ## A213663.P982703823775263140

`A054668(n+2)+A000051(n+2)`
-/

namespace A213663.P982703823775263140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 2) + A000051 (n + 2)

end

end A213663.P982703823775263140

namespace A213663

/-- `A054668(n+2)+A000051(n+2)` -/
def P982703823775263140.Spec : Prop :=
  ∀ n, P982703823775263140.a n = A213663 (n + 1)

end A213663

/-! ## A213663.P11804849535248883124

`Δ[A027053(n+2)+2^(n+2)]`
-/

namespace A213663.P11804849535248883124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2) + (2 ^ (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213663.P11804849535248883124

namespace A213663

/-- `Δ[A027053(n+2)+2^(n+2)]` -/
def P11804849535248883124.Spec : Prop :=
  ∀ n, P11804849535248883124.a n = A213663 (n + 1)

end A213663

/-! ## A213663.P1222654027443050872

`Δ[A020707(n)+A001590(n+5)]`
-/

namespace A213663.P1222654027443050872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + A001590 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213663.P1222654027443050872

namespace A213663

/-- `Δ[A020707(n)+A001590(n+5)]` -/
def P1222654027443050872.Spec : Prop :=
  ∀ n, P1222654027443050872.a n = A213663 (n + 1)

end A213663

/-! ## A213663.P9475121955351311056

`Δ[A000225(n+2)+∑[A000213(n+2)]]`
-/

namespace A213663.P9475121955351311056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213663.P9475121955351311056

namespace A213663

/-- `Δ[A000225(n+2)+∑[A000213(n+2)]]` -/
def P9475121955351311056.Spec : Prop :=
  ∀ n, P9475121955351311056.a n = A213663 (n + 1)

end A213663

/-!
# A213665: Number of dominating subsets of the graph G(n) obtained by joining a vertex with two consecutive vertices of the cycle graph C_n (n >= 3).

The programs for A213665, the canonical program `A213665.P2599115932837495329` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213665 has offset 3).

The definition of A213665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213665.P2599115932837495329

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=13, a(1)=23, a(2)=43`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A213665

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P2599115932837495329.Spec : Prop :=
  ∀ n, (P2599115932837495329.a n : ℤ) = A213665 (n + 3)

theorem P2599115932837495329.correct : P2599115932837495329.Spec := by
  intro n
  simp only [A213665, Nat.add_sub_cancel]

end A213665

/-! ## A213665.P2992886057877172619

`A214825(n+4)`
-/

namespace A213665.P2992886057877172619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 (n + 4)

end

end A213665.P2992886057877172619

namespace A213665

/-- `A214825(n+4)` -/
def P2992886057877172619.Spec : Prop :=
  ∀ n, P2992886057877172619.a n = A213665 (n + 3)

end A213665

/-! ## A213665.P4778782382349502

`2*A202012(n+3)+1`
-/

namespace A213665.P4778782382349502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202012 (n + 3) + 1

end

end A213665.P4778782382349502

namespace A213665

/-- `2*A202012(n+3)+1` -/
def P4778782382349502.Spec : Prop :=
  ∀ n, P4778782382349502.a n = A213665 (n + 3)

end A213665

/-! ## A213665.P15137844137064669963

`A354784(n)+A213655(n+1)`
-/

namespace A213665.P15137844137064669963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A213655 (n + 1)

end

end A213665.P15137844137064669963

namespace A213665

/-- `A354784(n)+A213655(n+1)` -/
def P15137844137064669963.Spec : Prop :=
  ∀ n, P15137844137064669963.a n = A213665 (n + 3)

end A213665

/-! ## A213665.P4439502591712918466

`A000073(n+7)-A000073(n+1)`
-/

namespace A213665.P4439502591712918466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 7) - A000073 (n + 1)

end

end A213665.P4439502591712918466

namespace A213665

/-- `A000073(n+7)-A000073(n+1)` -/
def P4439502591712918466.Spec : Prop :=
  ∀ n, P4439502591712918466.a n = A213665 (n + 3)

end A213665

/-! ## A213665.P6549230310596850564

`Δ[A214899(n+5)]`
-/

namespace A213665.P6549230310596850564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213665.P6549230310596850564

namespace A213665

/-- `Δ[A214899(n+5)]` -/
def P6549230310596850564.Spec : Prop :=
  ∀ n, P6549230310596850564.a n = A213665 (n + 3)

end A213665

/-! ## A213665.P8647608812179857519

`Δ[A027053(n+2)+2*A027053(n+3)]`
-/

namespace A213665.P8647608812179857519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2) + 2 * A027053 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213665.P8647608812179857519

namespace A213665

/-- `Δ[A027053(n+2)+2*A027053(n+3)]` -/
def P8647608812179857519.Spec : Prop :=
  ∀ n, P8647608812179857519.a n = A213665 (n + 3)

end A213665

/-!
# A213667: Number of dominating subsets with k vertices in all the graphs G(n) (n>=1) obtained by taking n copies of the path P_3 and identifying one of their endpoints (a star with n branches of length 2).

The programs for A213667, the canonical program `A213667.P10737519175379480549` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213667 has offset 1).

The definition of A213667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213667.P10737519175379480549

`2*a(n-1)+a(n-2)+2` with `a(0)=1, a(1)=6, a(2)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A213667

/-- `2*a(n-1)+a(n-2)+2` -/
def P10737519175379480549.Spec : Prop :=
  ∀ n, (P10737519175379480549.a n : ℤ) = A213667 (n + 1)

theorem P10737519175379480549.correct : P10737519175379480549.Spec := by
  intro n
  simp only [A213667, Nat.add_sub_cancel]

end A213667

/-! ## A213667.P2343301377067834520

`round(∑[root(2, 2)*A001333(n+1)])`
-/

namespace A213667.P2343301377067834520
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (2 : ℝ)) * (A001333 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213667.P2343301377067834520

namespace A213667

/-- `round(∑[root(2, 2)*A001333(n+1)])` -/
def P2343301377067834520.Spec : Prop :=
  ∀ n, P2343301377067834520.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P14597453355554507956

`∑[A163271(n+2)+char[1]]-1`
-/

namespace A213667.P14597453355554507956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A213667.P14597453355554507956

namespace A213667

/-- `∑[A163271(n+2)+char[1]]-1` -/
def P14597453355554507956.Spec : Prop :=
  ∀ n, P14597453355554507956.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P12081835290620905597

`A052542(n+1)+a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A213667.P12081835290620905597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A052542 (n + 1) + a (n - 1)

end

end A213667.P12081835290620905597

namespace A213667

/-- `A052542(n+1)+a(n-1)` -/
def P12081835290620905597.Spec : Prop :=
  ∀ n, P12081835290620905597.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P9251665979887294390

`A078057(n+1)-C(2, C(2, n²))`
-/

namespace A213667.P9251665979887294390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) - (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A213667.P9251665979887294390

namespace A213667

/-- `A078057(n+1)-C(2, C(2, n²))` -/
def P9251665979887294390.Spec : Prop :=
  ∀ n, P9251665979887294390.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P3749643359037894112

`A034182(n+1)+n²%(n+1)`
-/

namespace A213667.P3749643359037894112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (n + 1) + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A213667.P3749643359037894112

namespace A213667

/-- `A034182(n+1)+n²%(n+1)` -/
def P3749643359037894112.Spec : Prop :=
  ∀ n, P3749643359037894112.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P9236442830722944142

`abs(1-3*n)%3*∑[A000129(n+1)]`
-/

namespace A213667.P9236442830722944142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |1 - (3 * n : ℤ)| 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213667.P9236442830722944142

namespace A213667

/-- `abs(1-3*n)%3*∑[A000129(n+1)]` -/
def P9236442830722944142.Spec : Prop :=
  ∀ n, P9236442830722944142.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P15033812525626615331

`A265278(A065475(n+1))`
-/

namespace A213667.P15033812525626615331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (A065475 (n + 1)).toNat

end

end A213667.P15033812525626615331

namespace A213667

/-- `A265278(A065475(n+1))` -/
def P15033812525626615331.Spec : Prop :=
  ∀ n, P15033812525626615331.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P878731357079534382

`A265278(A181440(n+2))`
-/

namespace A213667.P878731357079534382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (A181440 (n + 2)).toNat

end

end A213667.P878731357079534382

namespace A213667

/-- `A265278(A181440(n+2))` -/
def P878731357079534382.Spec : Prop :=
  ∀ n, P878731357079534382.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P2719529505651201784

`A265278(A184985(n+2))`
-/

namespace A213667.P2719529505651201784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (A184985 (n + 2)).toNat

end

end A213667.P2719529505651201784

namespace A213667

/-- `A265278(A184985(n+2))` -/
def P2719529505651201784.Spec : Prop :=
  ∀ n, P2719529505651201784.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P8204334528033127599

`A073301(A016777(n)+1)-1`
-/

namespace A213667.P8204334528033127599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073301 (A016777 n + 1).toNat - 1

end

end A213667.P8204334528033127599

namespace A213667

/-- `A073301(A016777(n)+1)-1` -/
def P8204334528033127599.Spec : Prop :=
  ∀ n, P8204334528033127599.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P16931157628431819226

`A265278(A199969(n+2)+1)`
-/

namespace A213667.P16931157628431819226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (A199969 (n + 2) + 1).toNat

end

end A213667.P16931157628431819226

namespace A213667

/-- `A265278(A199969(n+2)+1)` -/
def P16931157628431819226.Spec : Prop :=
  ∀ n, P16931157628431819226.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P15123651986136485934

`A082766(A103517(n)+2)-1`
-/

namespace A213667.P15123651986136485934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A103517 n + 2).toNat - 1

end

end A213667.P15123651986136485934

namespace A213667

/-- `A082766(A103517(n)+2)-1` -/
def P15123651986136485934.Spec : Prop :=
  ∀ n, P15123651986136485934.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P16465870889241122248

`A057427(n)+A034182(n+1)`
-/

namespace A213667.P16465870889241122248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A034182 (n + 1)

end

end A213667.P16465870889241122248

namespace A213667

/-- `A057427(n)+A034182(n+1)` -/
def P16465870889241122248.Spec : Prop :=
  ∀ n, P16465870889241122248.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P18216383329172626671

`A034182(n+1)-A057428(n)`
-/

namespace A213667.P18216383329172626671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (n + 1) - A057428 n

end

end A213667.P18216383329172626671

namespace A213667

/-- `A034182(n+1)-A057428(n)` -/
def P18216383329172626671.Spec : Prop :=
  ∀ n, P18216383329172626671.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P15930980041994931078

`A001333(n+2)-A054977(n)`
-/

namespace A213667.P15930980041994931078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - A054977 n

end

end A213667.P15930980041994931078

namespace A213667

/-- `A001333(n+2)-A054977(n)` -/
def P15930980041994931078.Spec : Prop :=
  ∀ n, P15930980041994931078.a n = A213667 (n + 1)

end A213667

/-! ## A213667.P14124410219107539116

`A036453(n+1)*A048739(n)`
-/

namespace A213667.P14124410219107539116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A048739 n

end

end A213667.P14124410219107539116

namespace A213667

/-- `A036453(n+1)*A048739(n)` -/
def P14124410219107539116.Spec : Prop :=
  ∀ n, P14124410219107539116.a n = A213667 (n + 1)

end A213667

/-!
# A213668: Irregular triangle read by rows: T(n,k) is the number of dominating subsets with k vertices of the graph G(n) consisting of a pair of endvertices joined by n internally disjoint paths of length 2 (the n-ary generalized theta graph THETA_{2,2,...2}; n>=1, 1<=k<=n+2).

The programs for A213668, there is no canonical definition to state claims against.
-/

/-! ## A213668.P16435675173278579225

`A213657(n+1)%(A096334(n+2)+1)`
-/

namespace A213668.P16435675173278579225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213657 (n + 1)) (A096334 (n + 2) + 1)

end

end A213668.P16435675173278579225

/-! ## A213668.P8574491944504568693

`A208510(n+4)+A073424(n+6)-A073424(n+3)`
-/

namespace A213668.P8574491944504568693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 4) + (A073424 (n + 6) - A073424 (n + 3))

end

end A213668.P8574491944504568693

/-! ## A213668.P14829483286473985397

`(A132200(n+3)+A073424(n+6))%A029600(n+3)`
-/

namespace A213668.P14829483286473985397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132200 (n + 3) + A073424 (n + 6)) (A029600 (n + 3))

end

end A213668.P14829483286473985397

/-! ## A213668.P15731630418960929699

`A073424(n+6)+A208510(n+4)%A110813(n+2)`
-/

namespace A213668.P15731630418960929699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 6) + Int.tmod (A208510 (n + 4)) (A110813 (n + 2))

end

end A213668.P15731630418960929699

/-! ## A213668.P16215888191703519683

`A213657(n+1)%A000079(A130321(n+2))`
-/

namespace A213668.P16215888191703519683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213657 (n + 1)) (A000079 (A130321 (n + 2)).toNat)

end

end A213668.P16215888191703519683

/-!
# A213670: Irregular triangle read by rows: a(n,k) is the number of vertex subsets of the rooted tree with Matula-Goebel number n having k components in the induced subgraph (n>=1, k>=0).

The programs for A213670, there is no canonical definition to state claims against.
-/

/-! ## A213670.P17549768540776619664

`A127377(A213275(2*n+1))%A002024(A314913(n+1))`
-/

namespace A213670.P17549768540776619664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127377 (A213275 (2 * n + 1)).toNat) (A002024 (A314913 (n + 1)).toNat)

end

end A213670.P17549768540776619664

/-!
# A213671: The odd part of n^2 - n + 2.

The programs for A213671, the canonical program `A213671.P12934676949970422598` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213671 has offset 1).

The definition of A213671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213671.P12934676949970422598

`A000265(∑[n]+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A213671

/-- `A000265(∑[n]+1)` -/
def P12934676949970422598.Spec : Prop :=
  ∀ n, P12934676949970422598.a n = A213671 (n + 1)

theorem P12934676949970422598.correct : P12934676949970422598.Spec := by
  intro n
  simp only [A213671, Nat.add_sub_cancel]

end A213671

/-! ## A213671.P4569775980990976968

`or(1, A000265(A000124(n)))`
-/

namespace A213671.P4569775980990976968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000265 (A000124 n).toNat)

end

end A213671.P4569775980990976968

namespace A213671

/-- `or(1, A000265(A000124(n)))` -/
def P4569775980990976968.Spec : Prop :=
  ∀ n, P4569775980990976968.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P8840661903047085907

`and(-1, A000265(A000217(n)+1))`
-/

namespace A213671.P8840661903047085907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000265 (A000217 n + 1).toNat)

end

end A213671.P8840661903047085907

namespace A213671

/-- `and(-1, A000265(A000217(n)+1))` -/
def P8840661903047085907.Spec : Prop :=
  ∀ n, P8840661903047085907.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P4338001398020188346

`A000265(A000124(n))%A000230(n)`
-/

namespace A213671.P4338001398020188346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A000124 n).toNat) (A000230 n)

end

end A213671.P4338001398020188346

namespace A213671

/-- `A000265(A000124(n))%A000230(n)` -/
def P4338001398020188346.Spec : Prop :=
  ∀ n, P4338001398020188346.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P4242846535408575664

`gcd(A000038(n), A000265(A000124(n)))`
-/

namespace A213671.P4242846535408575664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A000265 (A000124 n).toNat)

end

end A213671.P4242846535408575664

namespace A213671

/-- `gcd(A000038(n), A000265(A000124(n)))` -/
def P4242846535408575664.Spec : Prop :=
  ∀ n, (P4242846535408575664.a n : ℤ) = A213671 (n + 1)

end A213671

/-! ## A213671.P1638412153488834771

`lcm(A000265(A000124(n)), A020985(n))`
-/

namespace A213671.P1638412153488834771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A000124 n).toNat) (A020985 n)

end

end A213671.P1638412153488834771

namespace A213671

/-- `lcm(A000265(A000124(n)), A020985(n))` -/
def P1638412153488834771.Spec : Prop :=
  ∀ n, (P1638412153488834771.a n : ℤ) = A213671 (n + 1)

end A213671

/-! ## A213671.P15367146785254762033

`A063524(n+4)+A000265(A000124(n))`
-/

namespace A213671.P15367146785254762033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 4) + A000265 (A000124 n).toNat

end

end A213671.P15367146785254762033

namespace A213671

/-- `A063524(n+4)+A000265(A000124(n))` -/
def P15367146785254762033.Spec : Prop :=
  ∀ n, P15367146785254762033.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P5534618068290307542

`A000265(A000124(n))+A000007(3*(n+1))`
-/

namespace A213671.P5534618068290307542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000124 n).toNat + A000007 (3 * (n + 1))

end

end A213671.P5534618068290307542

namespace A213671

/-- `A000265(A000124(n))+A000007(3*(n+1))` -/
def P5534618068290307542.Spec : Prop :=
  ∀ n, P5534618068290307542.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P14929356938794098473

`A091227(2*(n+2))+A000265(A000124(n))`
-/

namespace A213671.P14929356938794098473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (2 * (n + 2)) + A000265 (A000124 n).toNat

end

end A213671.P14929356938794098473

namespace A213671

/-- `A091227(2*(n+2))+A000265(A000124(n))` -/
def P14929356938794098473.Spec : Prop :=
  ∀ n, P14929356938794098473.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P6819611032565711199

`A000265(A000124(n))*A006519(2*n+1)`
-/

namespace A213671.P6819611032565711199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000124 n).toNat * A006519 (2 * n + 1)

end

end A213671.P6819611032565711199

namespace A213671

/-- `A000265(A000124(n))*A006519(2*n+1)` -/
def P6819611032565711199.Spec : Prop :=
  ∀ n, P6819611032565711199.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P17666487978359931612

`A000265(A000124(n))/A062157(2*n+3)`
-/

namespace A213671.P17666487978359931612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A000124 n).toNat : ℚ) / (A062157 (2 * n + 3) : ℚ)

end

end A213671.P17666487978359931612

namespace A213671

/-- `A000265(A000124(n))/A062157(2*n+3)` -/
def P17666487978359931612.Spec : Prop :=
  ∀ n, P17666487978359931612.a n = (A213671 (n + 1) : ℚ)

end A213671

/-! ## A213671.P9874864753519057147

`A175676(3*n+2)+A000265(A175686(2*n+1))`
-/

namespace A213671.P9874864753519057147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (3 * n + 2) + A000265 (A175686 (2 * n + 1)).toNat

end

end A213671.P9874864753519057147

namespace A213671

/-- `A175676(3*n+2)+A000265(A175686(2*n+1))` -/
def P9874864753519057147.Spec : Prop :=
  ∀ n, P9874864753519057147.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P10077417089389919636

`A171435(2*(∑[n]+1))`
-/

namespace A213671.P10077417089389919636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A213671.P10077417089389919636

namespace A213671

/-- `A171435(2*(∑[n]+1))` -/
def P10077417089389919636.Spec : Prop :=
  ∀ n, P10077417089389919636.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P10515156571553092735

`or(1, A000265(A014206(n)))`
-/

namespace A213671.P10515156571553092735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000265 (A014206 n).toNat)

end

end A213671.P10515156571553092735

namespace A213671

/-- `or(1, A000265(A014206(n)))` -/
def P10515156571553092735.Spec : Prop :=
  ∀ n, P10515156571553092735.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P5209593708658262671

`A093411(∑[n]+1)`
-/

namespace A213671.P5209593708658262671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213671.P5209593708658262671

namespace A213671

/-- `A093411(∑[n]+1)` -/
def P5209593708658262671.Spec : Prop :=
  ∀ n, P5209593708658262671.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P16130867198125085986

`A302044(2*(∑[n]+1))`
-/

namespace A213671.P16130867198125085986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A213671.P16130867198125085986

namespace A213671

/-- `A302044(2*(∑[n]+1))` -/
def P16130867198125085986.Spec : Prop :=
  ∀ n, P16130867198125085986.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P2468371202604735342

`A328478(∑[n]+1)`
-/

namespace A213671.P2468371202604735342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213671.P2468371202604735342

namespace A213671

/-- `A328478(∑[n]+1)` -/
def P2468371202604735342.Spec : Prop :=
  ∀ n, P2468371202604735342.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P11739644997743151548

`A082725(∑[n]+1)`
-/

namespace A213671.P11739644997743151548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213671.P11739644997743151548

namespace A213671

/-- `A082725(∑[n]+1)` -/
def P11739644997743151548.Spec : Prop :=
  ∀ n, P11739644997743151548.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P8955463502345712234

`A302034(2*(∑[n]+1))`
-/

namespace A213671.P8955463502345712234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A213671.P8955463502345712234

namespace A213671

/-- `A302034(2*(∑[n]+1))` -/
def P8955463502345712234.Spec : Prop :=
  ∀ n, P8955463502345712234.a n = A213671 (n + 1)

end A213671

/-! ## A213671.P3520770265014887211

`A038502(A000265(n²+2+n))`
-/

namespace A213671.P3520770265014887211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A000265 (n ^ 2 + 2 + n)).toNat

end

end A213671.P3520770265014887211

namespace A213671

/-- `A038502(A000265(n²+2+n))` -/
def P3520770265014887211.Spec : Prop :=
  ∀ n, P3520770265014887211.a n = A213671 (n + 1)

end A213671

/-!
# A213673: (n^2 - A000695(n))/4.

The programs for A213673, the canonical program `A213673.P3226696509757726817` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213673 has offset 0).

The definition of A213673 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213673.P3226696509757726817

`(n²-A000695(n))/4`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213673

/-- `(n²-A000695(n))/4` -/
def P3226696509757726817.Spec : Prop :=
  ∀ n, P3226696509757726817.a n = (A213673 n : ℚ)

end A213673

/-! ## A213673.P10289267239253028723

`(n²-(2*∑[and(n, -n)²]+n)/3)/4`
-/

namespace A213673.P10289267239253028723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℚ) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3) / 4

end

end A213673.P10289267239253028723

namespace A213673

/-- `(n²-(2*∑[and(n, -n)²]+n)/3)/4` -/
def P10289267239253028723.Spec : Prop :=
  ∀ n, P10289267239253028723.a n = (A213673 n : ℚ)

end A213673

/-! ## A213673.P4064263970410527147

`(A222423(n)-n)/3`
-/

namespace A213673.P4064263970410527147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222423 n - (n : ℤ) : ℚ) / 3

end

end A213673.P4064263970410527147

namespace A213673

/-- `(A222423(n)-n)/3` -/
def P4064263970410527147.Spec : Prop :=
  ∀ n, P4064263970410527147.a n = (A213673 n : ℚ)

end A213673

/-! ## A213673.P14466562700973876005

`(∑[n]-A350094(n)-n)/3`
-/

namespace A213673.P14466562700973876005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A350094 n - (n : ℤ) : ℚ) / 3

end

end A213673.P14466562700973876005

namespace A213673

/-- `(∑[n]-A350094(n)-n)/3` -/
def P14466562700973876005.Spec : Prop :=
  ∀ n, P14466562700973876005.a n = (A213673 n : ℚ)

end A213673

/-! ## A213673.P6193369858646247038

`A002620(n)-A000695(floor(n/2))`
-/

namespace A213673.P6193369858646247038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A000695 ⌊(n : ℚ) / 2⌋.toNat

end

end A213673.P6193369858646247038

namespace A213673

/-- `A002620(n)-A000695(floor(n/2))` -/
def P6193369858646247038.Spec : Prop :=
  ∀ n, P6193369858646247038.a n = A213673 n

end A213673

/-! ## A213673.P5492225494998619684

`(A058331(n)-A145812(n+1))/8`
-/

namespace A213673.P5492225494998619684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058331 n - A145812 (n + 1) : ℚ) / 8

end

end A213673.P5492225494998619684

namespace A213673

/-- `(A058331(n)-A145812(n+1))/8` -/
def P5492225494998619684.Spec : Prop :=
  ∀ n, P5492225494998619684.a n = (A213673 n : ℚ)

end A213673

/-! ## A213673.P3242002250743936799

`A174571(n²-A000695(n))`
-/

namespace A213673.P3242002250743936799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 ((n ^ 2 : ℤ) - A000695 n).toNat

end

end A213673.P3242002250743936799

namespace A213673

/-- `A174571(n²-A000695(n))` -/
def P3242002250743936799.Spec : Prop :=
  ∀ n, P3242002250743936799.a n = A213673 n

end A213673

/-! ## A213673.P2957367763208041876

`A002264(A222423(n)-n)`
-/

namespace A213673.P2957367763208041876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A222423 n - (n : ℤ)).toNat

end

end A213673.P2957367763208041876

namespace A213673

/-- `A002264(A222423(n)-n)` -/
def P2957367763208041876.Spec : Prop :=
  ∀ n, P2957367763208041876.a n = A213673 n

end A213673

/-! ## A213673.P17409568774237866111

`(n²-A054238(∑[n]))/4`
-/

namespace A213673.P17409568774237866111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A054238 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A213673.P17409568774237866111

namespace A213673

/-- `(n²-A054238(∑[n]))/4` -/
def P17409568774237866111.Spec : Prop :=
  ∀ n, P17409568774237866111.a n = (A213673 n : ℚ)

end A213673

/-! ## A213673.P16943407474210153965

`A110657(n²-A000695(n))`
-/

namespace A213673.P16943407474210153965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 ((n ^ 2 : ℤ) - A000695 n).toNat

end

end A213673.P16943407474210153965

namespace A213673

/-- `A110657(n²-A000695(n))` -/
def P16943407474210153965.Spec : Prop :=
  ∀ n, P16943407474210153965.a n = A213673 n

end A213673

/-!
# A213674: Number of rooted trees with n nodes, where cycles are allowed instead of subtrees.

The programs for A213674, there is no canonical definition to state claims against.
-/

/-! ## A213674.P955289298327346173

`A213683(n)+A000081(n)`
-/

namespace A213674.P955289298327346173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213683 n + A000081 n

end

end A213674.P955289298327346173

/-! ## A213674.P7675179190954478771

`A213683(n)+∑[A174145(abs(1-n))]`
-/

namespace A213674.P7675179190954478771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213683 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213674.P7675179190954478771

/-! ## A213674.P12953112897360027536

`A213683(n)+A095341(n+1)/(n+1)`
-/

namespace A213674.P12953112897360027536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213683 n : ℚ) + (A095341 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A213674.P12953112897360027536

/-! ## A213674.P14648382442239999267

`A213683(n)+A222380(n)+A222379(n)`
-/

namespace A213674.P14648382442239999267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213683 n + (A222380 n + A222379 n)

end

end A213674.P14648382442239999267

/-! ## A213674.P2137397759128407282

`A000081(n)-A057428(n)*A213683(n)`
-/

namespace A213674.P2137397759128407282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n - A057428 n * A213683 n

end

end A213674.P2137397759128407282

/-! ## A213674.P16033097298804900428

`∑[A174145(n)]+A213683(n)-A174145(n)`
-/

namespace A213674.P16033097298804900428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A213683 n - A174145 n)

end

end A213674.P16033097298804900428

/-! ## A213674.P14813328600870079802

`A213683(n)+A211192(n)+2*A222379(n)`
-/

namespace A213674.P14813328600870079802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213683 n + (A211192 n + 2 * A222379 n)

end

end A213674.P14813328600870079802

/-! ## A213674.P246322306837851392

`A038001(A005408(n))+A213683(n)-A174145(n)`
-/

namespace A213674.P246322306837851392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A005408 n).toNat + (A213683 n - A174145 n)

end

end A213674.P246322306837851392

/-! ## A213674.P3978789658319364430

`A038001(A004280(n+1))+A213683(n)-A000007(n)`
-/

namespace A213674.P3978789658319364430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A004280 (n + 1)).toNat + (A213683 n - A000007 n)

end

end A213674.P3978789658319364430

/-! ## A213674.P8778491434087945111

`A213683(n)+A106234(∑[n]+2)`
-/

namespace A213674.P8778491434087945111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213683 n + A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213674.P8778491434087945111

/-! ## A213674.P17713043658081204177

`A318753(A001105(n))+A213683(n)`
-/

namespace A213674.P17713043658081204177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A001105 n).toNat + A213683 n

end

end A213674.P17713043658081204177

/-! ## A213674.P2754877505828906391

`A318753(A046092(n))+A213683(n)`
-/

namespace A213674.P2754877505828906391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A046092 n).toNat + A213683 n

end

end A213674.P2754877505828906391

/-! ## A213674.P6094854528920484610

`A318757(A008586(∑[n]))+A213683(n)`
-/

namespace A213674.P6094854528920484610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A213683 n

end

end A213674.P6094854528920484610

/-! ## A213674.P12545890631668666735

`A318757(A001105(n))+A213683(A028310(n))`
-/

namespace A213674.P12545890631668666735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A001105 n).toNat + A213683 (A028310 n).toNat

end

end A213674.P12545890631668666735

/-! ## A213674.P5598779538360866505

`A318757(A046092(n))+A213683(A028310(n))`
-/

namespace A213674.P5598779538360866505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A046092 n).toNat + A213683 (A028310 n).toNat

end

end A213674.P5598779538360866505

/-! ## A213674.P13677572734863228976

`A318757(A001105(n))+A213683(A233583(n+1))`
-/

namespace A213674.P13677572734863228976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A001105 n).toNat + A213683 (A233583 (n + 1)).toNat

end

end A213674.P13677572734863228976

/-!
# A213675: a(n) = Chowla's function(n) + anti-Chowla's function(n).

The programs for A213675, there is no canonical definition to state claims against.
-/

/-! ## A213675.P7711981710151277882

`A048050(n+1)+A216982(n+1)`
-/

namespace A213675.P7711981710151277882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) + A216982 (n + 1)

end

end A213675.P7711981710151277882

/-! ## A213675.P14747990111582460009

`A173455(n+1)+A216982(n+1)-1`
-/

namespace A213675.P14747990111582460009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) + (A216982 (n + 1) - 1)

end

end A213675.P14747990111582460009

/-! ## A213675.P2458170834131053808

`A216982(n+1)+(A000203(n+1)-(n+2))%(n+1)²`
-/

namespace A213675.P2458170834131053808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216982 (n + 1) + Int.tmod (A000203 (n + 1) - (n + 2 : ℤ)) ((n + 1) ^ 2 : ℤ)

end

end A213675.P2458170834131053808

/-! ## A213675.P10001563726134626057

`A001065(n+1)+A216982(n+1)+A057428(n)`
-/

namespace A213675.P10001563726134626057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A216982 (n + 1) + A057428 n)

end

end A213675.P10001563726134626057

/-! ## A213675.P8786244111004488672

`A033880(n+1)+A216982(n+1)+A028310(n)`
-/

namespace A213675.P8786244111004488672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (A216982 (n + 1) + A028310 n)

end

end A213675.P8786244111004488672

/-! ## A213675.P4958894684635978828

`A216982(n+1)+A004277(n)-A353190(n+1)`
-/

namespace A213675.P4958894684635978828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216982 (n + 1) + (A004277 n - A353190 (n + 1))

end

end A213675.P4958894684635978828

/-! ## A213675.P5595067384082789889

`A216982(n+1)+A001065(n+1)-A134824(n)²`
-/

namespace A213675.P5595067384082789889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216982 (n + 1) + (A001065 (n + 1) - A134824 n ^ 2)

end

end A213675.P5595067384082789889

/-! ## A213675.P2327991090708386411

`A016035(n+1)+A216982(n+1)+A051709(n+1)`
-/

namespace A213675.P2327991090708386411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) + (A216982 (n + 1) + A051709 (n + 1))

end

end A213675.P2327991090708386411

/-! ## A213675.P11371208457624154551

`A057237(n+1)+A326146(n+1)+A216982(n+1)`
-/

namespace A213675.P11371208457624154551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + (A326146 (n + 1) + A216982 (n + 1))

end

end A213675.P11371208457624154551

/-!
# A213676: Reversed Zeckendorf binary representation of natural numbers.

The programs for A213676, there is no canonical definition to state claims against.
-/

/-! ## A213676.P2572102499575173730

`A030308(eq[0, A318921(A030530(n))])`
-/

namespace A213676.P2572102499575173730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A030530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213676.P2572102499575173730

/-! ## A213676.P16773913145441548046

`A327174(A032766(n)+A032020(n))`
-/

namespace A213676.P16773913145441548046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (A032766 n + A032020 n).toNat

end

end A213676.P16773913145441548046

/-! ## A213676.P1852868961883110

`A008616(A008778(A008778(n+7))%A001055(n+10))`
-/

namespace A213676.P1852868961883110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.tmod (A008778 (A008778 (n + 7)).toNat) (A001055 (n + 10))).toNat

end

end A213676.P1852868961883110

/-! ## A213676.P6138081298724213129

`and(A171895(A382132(n+1)), A359550(n))`
-/

namespace A213676.P6138081298724213129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171895 (A382132 (n + 1)).toNat) (A359550 n)

end

end A213676.P6138081298724213129

/-! ## A213676.P4149841632755173521

`A286339(A094947(n+1))`
-/

namespace A213676.P4149841632755173521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286339 (A094947 (n + 1)).toNat

end

end A213676.P4149841632755173521

/-!
# A213677: Numbers n such that n and n + 12 are prime and there is a power of two in the interval (n, n+12).

The programs for A213677, there is no canonical definition to state claims against.
-/

/-! ## A213677.P6149882486617374013

`p?[or(A089633(n), A202186(n+1))]`
-/

namespace A213677.P6149882486617374013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089633 n) (A202186 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213677.P6149882486617374013

/-! ## A213677.P16477514094738814285

`record[A020639(or(n, A088721(n+4)))]`
-/

namespace A213677.P16477514094738814285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor (n : ℤ) (A088721 (n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213677.P16477514094738814285

/-! ## A213677.P2718672873908165954

`A008578(∪[A014574(n+1), A168162(3*n+2)])`
-/

namespace A213677.P2718672873908165954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168162 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A213677.P2718672873908165954

/-!
# A213678: Number of terms k such that difference between halving and tripling steps in Collatz (3x+1) trajectory of k is n.

The programs for A213678, there is no canonical definition to state claims against.
-/

/-! ## A213678.P406690220886708966

`∑[A222753(n)]`
-/

namespace A213678.P406690220886708966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213678.P406690220886708966

/-! ## A213678.P18054532559964971309

`A222753(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A213678.P18054532559964971309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222753 n + a (A023443 n).toNat

end

end A213678.P18054532559964971309

/-! ## A213678.P16543961895814786239

`A222753(A004524(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A213678.P16543961895814786239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222753 (A004524 (2 * n + 1)).toNat + a (n - 1)

end

end A213678.P16543961895814786239

/-! ## A213678.P17384918527440032636

`A338478(A338478(a(n-1)))+A222753(n)` with `a(0)=1`
-/

namespace A213678.P17384918527440032636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338478 (A338478 (a (n - 1)).toNat).toNat + A222753 n

end

end A213678.P17384918527440032636

/-!
# A213679: Total sum of parts <= n of multiplicity 0 in all partitions of n.

The programs for A213679, there is no canonical definition to state claims against.
-/

/-! ## A213679.P13968906725715526825

`A222730(∑[n])`
-/

namespace A213679.P13968906725715526825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213679.P13968906725715526825

/-! ## A213679.P5910387771771773198

`record[A222730(n)]-char[1]`
-/

namespace A213679.P5910387771771773198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A213679.P5910387771771773198

/-! ## A213679.P15269562213993928689

`and(-1, A222730(C(n+1, 2)))`
-/

namespace A213679.P15269562213993928689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222730 (Nat.choose (n + 1) 2))

end

end A213679.P15269562213993928689

/-! ## A213679.P10145367618627197682

`or(char[2], A222730((n²+n)/2))`
-/

namespace A213679.P10145367618627197682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A213679.P10145367618627197682

/-! ## A213679.P13641334136784598142

`and(-1, A222730(A000217(n)))`
-/

namespace A213679.P13641334136784598142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222730 (A000217 n).toNat)

end

end A213679.P13641334136784598142

/-! ## A213679.P10468101674354228554

`A222730((n²+n)/2)+A000007(n+1)`
-/

namespace A213679.P10468101674354228554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A000007 (n + 1)

end

end A213679.P10468101674354228554

/-! ## A213679.P15629586372502421645

`A222730((n²+n)/2)%A058996(n+1)`
-/

namespace A213679.P15629586372502421645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A058996 (n + 1))

end

end A213679.P15629586372502421645

/-! ## A213679.P9031161477046176361

`A007318(C(2, n))*A222730((n²+n)/2)`
-/

namespace A213679.P9031161477046176361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A213679.P9031161477046176361

/-! ## A213679.P13616458213972888660

`A222730((n²+n)/2)/A000108(C(2, n))`
-/

namespace A213679.P13616458213972888660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℚ) / (A000108 (Nat.choose 2 n) : ℚ)

end

end A213679.P13616458213972888660

/-! ## A213679.P7176687155838867561

`∏{p}[n, A001221(#)]*A222730((n²+n)/2)`
-/

namespace A213679.P7176687155838867561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A213679.P7176687155838867561

/-! ## A213679.P9173427699364480941

`A222730((n²+n)/2)+A008683(4*(n+1))`
-/

namespace A213679.P9173427699364480941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A008683 (4 * (n + 1))

end

end A213679.P9173427699364480941

/-! ## A213679.P5758357472683093143

`A014963(4*n+2)*A222730((n²+n)/2)`
-/

namespace A213679.P5758357472683093143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A213679.P5758357472683093143

/-! ## A213679.P7922159992051405913

`A000040(n+1)%2*A222730((n²+n)/2)`
-/

namespace A213679.P7922159992051405913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A213679.P7922159992051405913

/-! ## A213679.P4264630412725415645

`A000108(and(1, 1-n))*A222730((n²+n)/2)`
-/

namespace A213679.P4264630412725415645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (1 - (n : ℤ))).toNat * A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A213679.P4264630412725415645

/-! ## A213679.P15091352864693499272

`A222730((n²+n)/2)^A007318(C(2, n)+1)`
-/

namespace A213679.P15091352864693499272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n + 1) : ℤ)

end

end A213679.P15091352864693499272

/-! ## A213679.P18247210914851645908

`A000010(gcd(n, n+1))*A222730((n²+n)/2)`
-/

namespace A213679.P18247210914851645908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A213679.P18247210914851645908

/-! ## A213679.P18172334609866273286

`A000041(abs((-1)^n))*A222730((n²+n)/2)`
-/

namespace A213679.P18172334609866273286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |(-1) ^ n|.toNat * A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A213679.P18172334609866273286

/-! ## A213679.P14008016083002672863

`A222730(A000217(n))%A000041(2*(n+4))`
-/

namespace A213679.P14008016083002672863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222730 (A000217 n).toNat) (A000041 (2 * (n + 4)))

end

end A213679.P14008016083002672863

/-! ## A213679.P16817000794157541917

`A007318(A020639(10*n+5))*A222730((n²+n)/2)`
-/

namespace A213679.P16817000794157541917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (10 * n + 5)).toNat * A222730 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A213679.P16817000794157541917

/-! ## A213679.P7093498325720238292

`A007318(A014963(2*(n+1)))*A222730(A000217(n))`
-/

namespace A213679.P7093498325720238292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A222730 (A000217 n).toNat

end

end A213679.P7093498325720238292

/-!
# A213680: a(n) = 2*a(n-1)^2/3-3 with a(0)=6.

The programs for A213680, the canonical program `A213680.P15146379615030054354` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213680 has offset 0).

The definition of A213680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213680.P15146379615030054354

`3*A002812(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213680

/-- `3*A002812(n)` -/
def P15146379615030054354.Spec : Prop :=
  ∀ n, P15146379615030054354.a n = A213680 n

theorem P15146379615030054354.correct : P15146379615030054354.Spec := by
  intro n
  simp only [A213680]

end A213680

/-! ## A213680.P6578220599589466296

`2/3*a(n-1)²-3` with `a(0)=6`
-/

namespace A213680.P6578220599589466296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (2 : ℚ) / 3 * a (n - 1) ^ 2 - 3

end

end A213680.P6578220599589466296

namespace A213680

/-- `2/3*a(n-1)²-3` -/
def P6578220599589466296.Spec : Prop :=
  ∀ n, P6578220599589466296.a n = (A213680 n : ℚ)

end A213680

/-! ## A213680.P12321687711219398270

`3*A006695(2*n)`
-/

namespace A213680.P12321687711219398270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006695 (2 * n)

end

end A213680.P12321687711219398270

namespace A213680

/-- `3*A006695(2*n)` -/
def P12321687711219398270.Spec : Prop :=
  ∀ n, P12321687711219398270.a n = A213680 n

end A213680

/-! ## A213680.P8736422880475237218

`3*A003010(n)/2`
-/

namespace A213680.P8736422880475237218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A003010 n : ℚ) / 2)

end

end A213680.P8736422880475237218

namespace A213680

/-- `3*A003010(n)/2` -/
def P8736422880475237218.Spec : Prop :=
  ∀ n, P8736422880475237218.a n = (A213680 n : ℚ)

end A213680

/-!
# A213681: a(n) = a(n-1)^2/2 - 4 with a(0) = 6.

The programs for A213681, the canonical program `A213681.P11754835071327202549` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213681 has offset 0).

The definition of A213681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213681.P11754835071327202549

`a(n-1)²/2-4` with `a(0)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A213681

/-- `a(n-1)²/2-4` -/
def P11754835071327202549.Spec : Prop :=
  ∀ n, P11754835071327202549.a n = (A213681 n : ℚ)

end A213681

/-! ## A213681.P9667849431129970049

`ceil(2*ϕ^2^(n+1))`
-/

namespace A213681.P9667849431129970049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.goldenRatio ^ 2 ^ (n + 1)⌉

end

end A213681.P9667849431129970049

namespace A213681

/-- `ceil(2*ϕ^2^(n+1))` -/
def P9667849431129970049.Spec : Prop :=
  ∀ n, P9667849431129970049.a n = A213681 n

end A213681

/-! ## A213681.P16596456406833346007

`2*A001566(n)`
-/

namespace A213681.P16596456406833346007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001566 n

end

end A213681.P16596456406833346007

namespace A213681

/-- `2*A001566(n)` -/
def P16596456406833346007.Spec : Prop :=
  ∀ n, P16596456406833346007.a n = A213681 n

end A213681

/-! ## A213681.P9221477585351778280

`2*A000032(2^(n+1))`
-/

namespace A213681.P9221477585351778280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (2 ^ (n + 1))

end

end A213681.P9221477585351778280

namespace A213681

/-- `2*A000032(2^(n+1))` -/
def P9221477585351778280.Spec : Prop :=
  ∀ n, P9221477585351778280.a n = A213681 n

end A213681

/-!
# A213683: Number of rooted trees with n nodes having some subtrees replaced by cycles.

The programs for A213683, there is no canonical definition to state claims against.
-/

/-! ## A213683.P13411994917540510826

`A213674(n)-A000081(n)`
-/

namespace A213683.P13411994917540510826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - A000081 n

end

end A213683.P13411994917540510826

/-! ## A213683.P13021543091105528177

`A213674(n)-∑[A174145(abs(1-n))]`
-/

namespace A213683.P13021543091105528177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213683.P13021543091105528177

/-! ## A213683.P3618231680424816937

`A213674(n)-A095341(n+1)/(n+1)`
-/

namespace A213683.P3618231680424816937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213674 n : ℚ) - (A095341 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A213683.P3618231680424816937

/-! ## A213683.P8005699235402403503

`A213674(n)-(A222380(n)+A222379(n))`
-/

namespace A213683.P8005699235402403503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - (A222380 n + A222379 n)

end

end A213683.P8005699235402403503

/-! ## A213683.P2268122273092568788

`A213674(n)+A000081(n)*A057428(n)`
-/

namespace A213683.P2268122273092568788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n + A000081 n * A057428 n

end

end A213683.P2268122273092568788

/-! ## A213683.P228197125555252931

`A174145(n)+A213674(n)-∑[A174145(n)]`
-/

namespace A213683.P228197125555252931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n + (A213674 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213683.P228197125555252931

/-! ## A213683.P5518722159238021891

`A213674(n)-(A211192(n)+2*A222379(n))`
-/

namespace A213683.P5518722159238021891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - (A211192 n + 2 * A222379 n)

end

end A213683.P5518722159238021891

/-! ## A213683.P13518848921669869927

`A213674(n)-(∑[A174145(A028310(n)-1)]-1)`
-/

namespace A213683.P13518848921669869927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A213683.P13518848921669869927

/-! ## A213683.P17543755254653823414

`A174145(n)+A213674(n)-A038001(A005408(n))`
-/

namespace A213683.P17543755254653823414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n + (A213674 n - A038001 (A005408 n).toNat)

end

end A213683.P17543755254653823414

/-! ## A213683.P2772150302180668511

`A000007(n)+A213674(n)-A038001(A004280(n+1))`
-/

namespace A213683.P2772150302180668511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A213674 n - A038001 (A004280 (n + 1)).toNat)

end

end A213683.P2772150302180668511

/-! ## A213683.P746777986427137880

`A213674(n)-A106234(∑[n]+2)`
-/

namespace A213683.P746777986427137880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213683.P746777986427137880

/-! ## A213683.P15679387647192024070

`A213674(n)-A318753(A001105(n))`
-/

namespace A213683.P15679387647192024070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - A318753 (A001105 n).toNat

end

end A213683.P15679387647192024070

/-! ## A213683.P9415146078283377980

`A213674(n)-A318753(A046092(n))`
-/

namespace A213683.P9415146078283377980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - A318753 (A046092 n).toNat

end

end A213683.P9415146078283377980

/-!
# A213684: Logarithmic derivative of A001002.

The programs for A213684, there is no canonical definition to state claims against.
-/

/-! ## A213684.P11258218197083103888

`A055836(n)-A038112(n)`
-/

namespace A213684.P11258218197083103888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055836 n - A038112 n

end

end A213684.P11258218197083103888

/-! ## A213684.P16220818266619201238

`A038112(n+1)-A055834(n+1)`
-/

namespace A213684.P16220818266619201238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038112 (n + 1) - A055834 (n + 1)

end

end A213684.P16220818266619201238

/-! ## A213684.P3288625970210328388

`A362078(A034856(n+2))`
-/

namespace A213684.P3288625970210328388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362078 (A034856 (n + 2)).toNat

end

end A213684.P3288625970210328388

/-! ## A213684.P10869241262099516544

`A362078(A027379(n+1)+1)`
-/

namespace A213684.P10869241262099516544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362078 (A027379 (n + 1) + 1).toNat

end

end A213684.P10869241262099516544

/-! ## A213684.P17957222560544047699

`A362078(A055998(n+1)+1)`
-/

namespace A213684.P17957222560544047699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362078 (A055998 (n + 1) + 1).toNat

end

end A213684.P17957222560544047699

/-! ## A213684.P14763299667102081086

`A038137(2*(n+1)²)`
-/

namespace A213684.P14763299667102081086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (2 * (n + 1) ^ 2)

end

end A213684.P14763299667102081086

/-! ## A213684.P6496521025570212342

`A037027(2*(n+1)²-1)`
-/

namespace A213684.P6496521025570212342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (2 * (n + 1) ^ 2 - 1)

end

end A213684.P6496521025570212342

/-! ## A213684.P17684028322235330296

`A210565((n+1)²+n²)`
-/

namespace A213684.P17684028322235330296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 ((n + 1) ^ 2 + n ^ 2)

end

end A213684.P17684028322235330296

/-! ## A213684.P7109456069429725119

`A182001(2*(n+1)²)`
-/

namespace A213684.P7109456069429725119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182001 (2 * (n + 1) ^ 2)

end

end A213684.P7109456069429725119

/-! ## A213684.P5430365817489369575

`A155161(∑[4*(n+1)])`
-/

namespace A213684.P5430365817489369575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213684.P5430365817489369575

/-!
# A213685: Arises in enumerating maximal antichains of minimum size.

The programs for A213685, there is no canonical definition to state claims against.
-/

/-! ## A213685.P2354131436400779789

`round(∑[A261954(n+3)/6])`
-/

namespace A213685.P2354131436400779789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261954 (n + 3) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213685.P2354131436400779789

/-! ## A213685.P7917468665550277054

`∑[A057979(n)+1+n-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A213685.P7917468665550277054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A057979 n + 1 + (n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213685.P7917468665550277054

/-! ## A213685.P10080053322032642961

`∑[∑[1-(a(n-1)-A131379(n-2))]]` with `a(0)=1, a(1)=1`
-/

namespace A213685.P10080053322032642961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  1 - (f2 (n - 1) - A131379 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213685.P10080053322032642961

/-! ## A213685.P10097991573714224173

`A367069(A264041(n+2))`
-/

namespace A213685.P10097991573714224173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367069 (A264041 (n + 2)).toNat

end

end A213685.P10097991573714224173

/-! ## A213685.P14755719812797577613

`∑[A232615((n+1)²+2)]`
-/

namespace A213685.P14755719812797577613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232615 ((n + 1) ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213685.P14755719812797577613

/-!
# A213686: Numbers which are the values of the quadratic polynomial 13+20*t+24*k+32*k*t at nonnegative integers.

The programs for A213686, there is no canonical definition to state claims against.
-/

/-! ## A213686.P4088891879569057505

`lt[A146076(A245471(n+1)), A188171(2*(n+2))]`
-/

namespace A213686.P4088891879569057505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A245471 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213686.P4088891879569057505

/-! ## A213686.P14825889570152129421

`lt[A064234(n+1), A000523(A008315(n))]`
-/

namespace A213686.P14825889570152129421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A008315 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213686.P14825889570152129421

/-!
# A213687: Numbers which are the values of the quadratic polynomial 3+4*k+7*t+8*k*t on nonnegative integers.

The programs for A213687, there is no canonical definition to state claims against.
-/

/-! ## A213687.P17179611094008872776

`lt[0, A188172(2*n+1)]`
-/

namespace A213687.P17179611094008872776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213687.P17179611094008872776

/-! ## A213687.P6297851653959762962

`eq[1, gcd(5, A188172(4*n+2))]`
-/

namespace A213687.P6297851653959762962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A188172 (4 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213687.P6297851653959762962

/-! ## A213687.P384760788891105468

`comp[A057979(A343110(n+1))]`
-/

namespace A213687.P384760788891105468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A343110 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A213687.P384760788891105468

/-! ## A213687.P3658233428464160915

`eq[A091379(4*n+2), A091392(2*n+1)]`
-/

namespace A213687.P3658233428464160915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091392 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213687.P3658233428464160915

/-! ## A213687.P6108383709328990283

`eq[A188172(2*n+1)!, A188172(4*n+2)]`
-/

namespace A213687.P6108383709328990283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A188172 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213687.P6108383709328990283

/-! ## A213687.P2550433667956244339

`eq[sin(A091392(2*n+1)), A091400(2*n+1)]`
-/

namespace A213687.P2550433667956244339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A091392 (2 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A213687.P2550433667956244339

/-! ## A213687.P18210440769401758495

`eq[atan(A000089(2*n+1)), A091392(2*n+1)]`
-/

namespace A213687.P18210440769401758495
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A000089 (2 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091392 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A213687.P18210440769401758495

/-!
# A213688: a(n) = Sum_{i=0..n} A000129(i)^3.

The programs for A213688, there is no canonical definition to state claims against.
-/

/-! ## A213688.P2950574158915684945

`∑[A110272(n)]`
-/

namespace A213688.P2950574158915684945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P2950574158915684945

/-! ## A213688.P8697979046569746190

`∑[A000129(n)^3]`
-/

namespace A213688.P8697979046569746190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P8697979046569746190

/-! ## A213688.P14889252379123385262

`∑[Δ[A171842(n)]^3]`
-/

namespace A213688.P14889252379123385262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P14889252379123385262

/-! ## A213688.P9995395412531836980

`∑[(A174191(n)-1)^3]`
-/

namespace A213688.P9995395412531836980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174191 n - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P9995395412531836980

/-! ## A213688.P14963139315234319529

`∑[A215928(n)^3]-1`
-/

namespace A213688.P14963139315234319529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A213688.P14963139315234319529

/-! ## A213688.P17891696790398315091

`∑[A002965(2*n)^3]`
-/

namespace A213688.P17891696790398315091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P17891696790398315091

/-! ## A213688.P1189443319133984542

`∑[A116558(2*n)^3]`
-/

namespace A213688.P1189443319133984542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P1189443319133984542

/-! ## A213688.P15214929603737470403

`∑[A249576(3*n)^3]`
-/

namespace A213688.P15214929603737470403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P15214929603737470403

/-! ## A213688.P2891879082135083048

`∑[xor(1, A111954(n))^3]`
-/

namespace A213688.P2891879082135083048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P2891879082135083048

/-! ## A213688.P3098902748687497612

`∑[abs(A176981(n+1))^3]`
-/

namespace A213688.P3098902748687497612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 1)| ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213688.P3098902748687497612

/-!
# A213690: Half the number of (n+1)X(n+1) symmetric 0..1 arrays with no 2X2 subblock summing to 2.

The programs for A213690, there is no canonical definition to state claims against.
-/

/-! ## A213690.P15434167331048220861

`A213697(∑[n+1])`
-/

namespace A213690.P15434167331048220861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213690.P15434167331048220861

/-! ## A213690.P12186340002977352824

`record[A023531(n)*A213697(n+1)]`
-/

namespace A213690.P12186340002977352824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A213697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213690.P12186340002977352824

/-! ## A213690.P10622063281710849563

`record[root(A213697(n+1), A121575(n))]`
-/

namespace A213690.P10622063281710849563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A213697 (n + 1) : ℝ) ^ (1 / (A121575 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213690.P10622063281710849563

/-! ## A213690.P17584487681476502144

`record[root(A213697(n+1), A207823(n))]`
-/

namespace A213690.P17584487681476502144
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A213697 (n + 1) : ℝ) ^ (1 / (A207823 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213690.P17584487681476502144

/-! ## A213690.P6328173704532778167

`record[gcd(A091435(n), A213697(n+1))]`
-/

namespace A213690.P6328173704532778167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091435 n) (A213697 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213690.P6328173704532778167

/-!
# A213691: Half the number of (n+1)X(n+1) symmetric 0..2 arrays with no 2X2 subblock summing to 4.

The programs for A213691, there is no canonical definition to state claims against.
-/

/-! ## A213691.P17526430158238268635

`A213697(∑[n+2])`
-/

namespace A213691.P17526430158238268635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213691.P17526430158238268635

/-! ## A213691.P50727266801467039

`record[A213697(abs(A201163(n)))]`
-/

namespace A213691.P50727266801467039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213691.P50727266801467039

/-! ## A213691.P2635440528410256920

`A235145(n)+A213697(A167614(n+1)-4)`
-/

namespace A213691.P2635440528410256920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A213697 (A167614 (n + 1) - 4).toNat

end

end A213691.P2635440528410256920

/-! ## A213691.P7097925193276813232

`A016168(n)*A213697(A167614(n+1)-4)`
-/

namespace A213691.P7097925193276813232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 n * A213697 (A167614 (n + 1) - 4).toNat

end

end A213691.P7097925193276813232

/-! ## A213691.P17478644246297071068

`lcm(A033999(n), A213697(A167614(n+1)-4))`
-/

namespace A213691.P17478644246297071068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A213697 (A167614 (n + 1) - 4).toNat)

end

end A213691.P17478644246297071068

/-!
# A213692: Half the number of (n+1) X (n+1) symmetric 0..3 arrays with no 2 X 2 subblock summing to 6.

The programs for A213692, there is no canonical definition to state claims against.
-/

/-! ## A213692.P13674922960261844777

`A213697(∑[n+3]+1)`
-/

namespace A213692.P13674922960261844777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213692.P13674922960261844777

/-!
# A213693: Half the number of (n+1) X (n+1) symmetric 0..4 arrays with no 2 X 2 subblock summing to 8.

The programs for A213693, there is no canonical definition to state claims against.
-/

/-! ## A213693.P17663803339559118839

`A213697(A141214(n+1))`
-/

namespace A213693.P17663803339559118839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A141214 (n + 1)).toNat

end

end A213693.P17663803339559118839

/-! ## A213693.P14000987826281162373

`A213697(A155212(n)+5)`
-/

namespace A213693.P14000987826281162373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A155212 n + 5).toNat

end

end A213693.P14000987826281162373

/-! ## A213693.P12938823014347455287

`A213697(A052905(n+1)+2)`
-/

namespace A213693.P12938823014347455287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A052905 (n + 1) + 2).toNat

end

end A213693.P12938823014347455287

/-!
# A213694: Half the number of (n+1)X(n+1) symmetric 0..5 arrays with no 2X2 subblock summing to 10.

The programs for A213694, there is no canonical definition to state claims against.
-/

/-! ## A213694.P13068549371599740467

`A213697(A046691(n+3))`
-/

namespace A213694.P13068549371599740467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A046691 (n + 3)).toNat

end

end A213694.P13068549371599740467

/-! ## A213694.P16859567716914510779

`A213697(Δ[A023545(n+1)])`
-/

namespace A213694.P16859567716914510779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (f1 (n + 1) - f1 n).toNat

end

end A213694.P16859567716914510779

/-! ## A213694.P2273510359265812681

`A213697(A052905(n+2)+1)`
-/

namespace A213694.P2273510359265812681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A052905 (n + 2) + 1).toNat

end

end A213694.P2273510359265812681

/-!
# A213695: 

The programs for A213695, there is no canonical definition to state claims against.
-/

/-! ## A213695.P15486642870304504600

`A213697(Δ[Δ[A006504(n+1)]])`
-/

namespace A213695.P15486642870304504600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (f1 (n + 1) - f1 n).toNat

end

end A213695.P15486642870304504600

/-!
# A213696: 

The programs for A213696, there is no canonical definition to state claims against.
-/

/-! ## A213696.P12592225106288868414

`A213697(A052905(n+4)-1)`
-/

namespace A213696.P12592225106288868414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A052905 (n + 4) - 1).toNat

end

end A213696.P12592225106288868414

/-!
# A213697: T(n,k)=Half the number of (n+1)X(n+1) symmetric 0..k arrays with no 2X2 subblock summing to 2k.

The programs for A213697, there is no canonical definition to state claims against.
-/

/-! ## A213697.P12173090862758541248

`A168381(n+1)+A018693(A000219(n))`
-/

namespace A213697.P12173090862758541248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168381 (n + 1) + A018693 (A000219 n).toNat

end

end A213697.P12173090862758541248

/-!
# A213698: Half the number of 3 X 3 0..n symmetric arrays with no 2 X 2 subblock summing to 2n.

The programs for A213698, there is no canonical definition to state claims against.
-/

/-! ## A213698.P9512735791906455877

`A213697(∑[n+1]+2)`
-/

namespace A213698.P9512735791906455877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213698.P9512735791906455877

/-! ## A213698.P7163725827891873837

`record[gcd(A182259(n+1), A213697(n+3))]`
-/

namespace A213698.P7163725827891873837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182259 (n + 1)) (A213697 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213698.P7163725827891873837

/-! ## A213698.P14038762727884195114

`record[root(A213697(n+3), A211790(n+1))]`
-/

namespace A213698.P14038762727884195114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A213697 (n + 3) : ℝ) ^ (1 / (A211790 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213698.P14038762727884195114

/-!
# A213699: Half the number of 4X4 0..n symmetric arrays with no 2X2 subblock summing to 2n.

The programs for A213699, there is no canonical definition to state claims against.
-/

/-! ## A213699.P7803258805676303499

`A213697(∑[n+2]+4)`
-/

namespace A213699.P7803258805676303499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A213699.P7803258805676303499

/-! ## A213699.P11434661393801876083

`A235145(n)+A213697(A167614(n+1))`
-/

namespace A213699.P11434661393801876083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A213697 (A167614 (n + 1)).toNat

end

end A213699.P11434661393801876083

/-! ## A213699.P8092143016354135953

`A016168(n)*A213697(A167614(n+1))`
-/

namespace A213699.P8092143016354135953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 n * A213697 (A167614 (n + 1)).toNat

end

end A213699.P8092143016354135953

/-! ## A213699.P10991811943778254955

`A213697(A167614(n+1))*A246465(n)`
-/

namespace A213699.P10991811943778254955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A167614 (n + 1)).toNat * A246465 n

end

end A213699.P10991811943778254955

/-! ## A213699.P2515508417087117114

`lcm(A033999(n), A213697(A167614(n+1)))`
-/

namespace A213699.P2515508417087117114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A213697 (A167614 (n + 1)).toNat)

end

end A213699.P2515508417087117114

