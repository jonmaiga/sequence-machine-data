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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A082400: Numbers k such that 2^k + 3^(k-1) is prime.

The programs for A082400, there is no canonical definition to state claims against.
-/

/-! ## A082400.P4740418210719040199

`A123924(n+1)+1`
-/

namespace A082400.P4740418210719040199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123924 (n + 1) + 1

end

end A082400.P4740418210719040199

/-! ## A082400.P5970862003242866706

`lt[n, A159267(n+1)+1]+1`
-/

namespace A082400.P5970862003242866706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159267 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082400.P5970862003242866706

/-!
# A082401: a(n) = A005374(n) - floor(r*n) where r is the positive root of x^3+x-1=0.

The programs for A082401, there is no canonical definition to state claims against.
-/

/-! ## A082401.P3154127089068574464

`A202340(n)-A033776(A294880(A076989(n+1)))`
-/

namespace A082401.P3154127089068574464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n - A033776 (A294880 (A076989 (n + 1)).toNat).toNat

end

end A082401.P3154127089068574464

/-! ## A082401.P5340811684453050111

`A195376(A175126(∑[A177044(n+1)]))`
-/

namespace A082401.P5340811684453050111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195376 (A175126 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A082401.P5340811684453050111

/-! ## A082401.P3476675482474058902

`A000035(A181835(n)^A004603(n+1))`
-/

namespace A082401.P3476675482474058902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((A181835 n : ℚ) ^ (A004603 (n + 1) : ℤ))).toNat

end

end A082401.P3476675482474058902

/-! ## A082401.P3240786638793669814

`A341389(∑[A123679(n+1)+A084849(n)])`
-/

namespace A082401.P3240786638793669814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123679 (n + 1) + A084849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082401.P3240786638793669814

/-! ## A082401.P3974638322737976024

`A010060(A109048(n)+A067154(3*(n+3)))`
-/

namespace A082401.P3974638322737976024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A109048 n + A067154 (3 * (n + 3))).toNat

end

end A082401.P3974638322737976024

/-!
# A082402: Number of n-node labeled weakly connected acyclic digraphs.

The programs for A082402, there is no canonical definition to state claims against.
-/

/-! ## A082402.P6349478633248781985

`A361591(A212342(n+1))`
-/

namespace A082402.P6349478633248781985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361591 (A212342 (n + 1)).toNat

end

end A082402.P6349478633248781985

/-! ## A082402.P9179418432757009119

`A361591(A347553(n+3))`
-/

namespace A082402.P9179418432757009119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361591 (A347553 (n + 3)).toNat

end

end A082402.P9179418432757009119

/-! ## A082402.P8379458487031442371

`A361591(lt[A085853(n), A316844(n+1)])`
-/

namespace A082402.P8379458487031442371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361591 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082402.P8379458487031442371

/-! ## A082402.P2904867555609643359

`A361591(lt[A361540(n), A361565(n+1)])`
-/

namespace A082402.P2904867555609643359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361591 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082402.P2904867555609643359

/-! ## A082402.P7010557523402470391

`A361591(A134189(n+1))`
-/

namespace A082402.P7010557523402470391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361591 (A134189 (n + 1)).toNat

end

end A082402.P7010557523402470391

/-!
# A082403: E.g.f.: 1-1/B(x) where B(x) is e.g.f. for A003024.

The programs for A082403, there is no canonical definition to state claims against.
-/

/-! ## A082403.P18429539436727745597

`A029804(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=13`
-/

namespace A082403.P18429539436727745597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 13] fun n a =>
  A029804 (a (n - 1)).toNat

end

end A082403.P18429539436727745597

/-!
# A082405: a(n) = 34*a(n-1) - a(n-2); a(0)=0, a(1)=6.

The programs for A082405, the canonical program `A082405.P9226546927375995482` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082405 has offset 0).

The definition of A082405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `34*a(n-1)-a(n-2)` (program `A082405.P9226546927375995482`, by `A082405.P9226546927375995482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082405.P9226546927375995482

`34*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082405

/-- `34*a(n-1)-a(n-2)` -/
def P9226546927375995482.Spec : Prop :=
  ∀ n, P9226546927375995482.a n = A082405 n

theorem P9226546927375995482.correct : P9226546927375995482.Spec := by
  intro n
  simp only [A082405]

end A082405

/-! ## A082405.P17602690101287919787

`A001109(2*n)`
-/

namespace A082405.P17602690101287919787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (2 * n)

end

end A082405.P17602690101287919787

namespace A082405

/-- `A001109(2*n)` -/
def P17602690101287919787.Spec : Prop :=
  ∀ n, P17602690101287919787.a n = A082405 n

end A082405

/-! ## A082405.P2975956568869691382

`A350984(n)/3`
-/

namespace A082405.P2975956568869691382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350984 n : ℚ) / 3

end

end A082405.P2975956568869691382

namespace A082405

/-- `A350984(n)/3` -/
def P2975956568869691382.Spec : Prop :=
  ∀ n, P2975956568869691382.a n = (A082405 n : ℚ)

end A082405

/-! ## A082405.P10755700165215333903

`6*A091761(n)`
-/

namespace A082405.P10755700165215333903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A091761 n

end

end A082405.P10755700165215333903

namespace A082405

/-- `6*A091761(n)` -/
def P10755700165215333903.Spec : Prop :=
  ∀ n, P10755700165215333903.a n = A082405 n

end A082405

/-! ## A082405.P1507016218326348226

`floor(A004294(n)/6)`
-/

namespace A082405.P1507016218326348226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004294 n : ℚ) / 6⌋

end

end A082405.P1507016218326348226

namespace A082405

/-- `floor(A004294(n)/6)` -/
def P1507016218326348226.Spec : Prop :=
  ∀ n, P1507016218326348226.a n = A082405 n

end A082405

/-! ## A082405.P854854195916680241

`Δ[C(A182435(n), 2)]`
-/

namespace A082405.P854854195916680241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182435 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082405.P854854195916680241

namespace A082405

/-- `Δ[C(A182435(n), 2)]` -/
def P854854195916680241.Spec : Prop :=
  ∀ n, P854854195916680241.a n = A082405 n

end A082405

/-! ## A082405.P8030784051734042233

`A204512(4*n+2)`
-/

namespace A082405.P8030784051734042233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (4 * n + 2)

end

end A082405.P8030784051734042233

namespace A082405

/-- `A204512(4*n+2)` -/
def P8030784051734042233.Spec : Prop :=
  ∀ n, P8030784051734042233.a n = A082405 n

end A082405

/-! ## A082405.P10169735336581985680

`A001542(2*n)/2`
-/

namespace A082405.P10169735336581985680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001542 (2 * n) : ℚ) / 2

end

end A082405.P10169735336581985680

namespace A082405

/-- `A001542(2*n)/2` -/
def P10169735336581985680.Spec : Prop :=
  ∀ n, P10169735336581985680.a n = (A082405 n : ℚ)

end A082405

/-! ## A082405.P2843344430512580120

`A000129(4*n)/2`
-/

namespace A082405.P2843344430512580120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (4 * n) : ℚ) / 2

end

end A082405.P2843344430512580120

namespace A082405

/-- `A000129(4*n)/2` -/
def P2843344430512580120.Spec : Prop :=
  ∀ n, P2843344430512580120.a n = (A082405 n : ℚ)

end A082405

/-! ## A082405.P10033408190276721436

`A005319(2*n)/4`
-/

namespace A082405.P10033408190276721436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005319 (2 * n) : ℚ) / 4

end

end A082405.P10033408190276721436

namespace A082405

/-- `A005319(2*n)/4` -/
def P10033408190276721436.Spec : Prop :=
  ∀ n, P10033408190276721436.a n = (A082405 n : ℚ)

end A082405

/-!
# A082406: Numbers k such that k divides Sum_{j=1..k} binomial(2j,j).

The programs for A082406, there is no canonical definition to state claims against.
-/

/-! ## A082406.P8018850234333212612

`record[gcd(n+1, A066796(n+1))]`
-/

namespace A082406.P8018850234333212612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A066796 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082406.P8018850234333212612

/-! ## A082406.P15857485223775911190

`A040065(n+1)+A010815(A076550(n))`
-/

namespace A082406.P15857485223775911190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1) + A010815 (A076550 n).toNat

end

end A082406.P15857485223775911190

/-! ## A082406.P6403592346435086840

`A167409(lt[A000700(n), A034444(n+1)])`
-/

namespace A082406.P6403592346435086840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082406.P6403592346435086840

/-! ## A082406.P3084968687661923462

`∩[A167409(n+1), A346132(n+1)]`
-/

namespace A082406.P3084968687661923462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082406.P3084968687661923462

/-!
# A082409: Composite numbers k such that the continued fraction for k/m contains no 2 for any 1 <= m <= k.

The programs for A082409, there is no canonical definition to state claims against.
-/

/-! ## A082409.P437603600904505867

`∩[A008367(n+1), A055114(n+1)]`
-/

namespace A082409.P437603600904505867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082409.P437603600904505867

/-! ## A082409.P14974807100861901379

`∩[A038512(n+1), A055114(n+1)]`
-/

namespace A082409.P14974807100861901379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082409.P14974807100861901379

/-! ## A082409.P8958924099699738265

`∩[A038511(n+1), A055114(n+1)]`
-/

namespace A082409.P8958924099699738265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082409.P8958924099699738265

/-! ## A082409.P12865303594944647649

`∩[A055114(n+1), A287391(n+1)]`
-/

namespace A082409.P12865303594944647649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082409.P12865303594944647649

/-! ## A082409.P14931373426983013402

`∩[A055114(n+1), A285784(n+1)]`
-/

namespace A082409.P14931373426983013402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082409.P14931373426983013402

/-!
# A082410: a(1)=0. Thereafter, the sequence is constructed using the rule: for any k >= 0, if a(1), a(2), ..., a(2^k+1) are known, the next 2^k terms are given as follows: a(2^k+1+i) = 1 - a(2^k+1-i) for 1 <= i <= 2^k.

The programs for A082410, the canonical program `A082410.P13304981050769810358` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082410 has offset 1).

The definition of A082410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082410.P2009549753360572344

`char[and(n, n+1)+1+n]`
-/

namespace A082410.P2009549753360572344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A082410.P2009549753360572344

namespace A082410

/-- `char[and(n, n+1)+1+n]` -/
def P2009549753360572344.Spec : Prop :=
  ∀ n, (P2009549753360572344.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P9850582479145715600

`1-char[or(n, abs(xor(n, -n)))]`
-/

namespace A082410.P9850582479145715600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) |Int.xor (n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A082410.P9850582479145715600

namespace A082410

/-- `1-char[or(n, abs(xor(n, -n)))]` -/
def P9850582479145715600.Spec : Prop :=
  ∀ n, P9850582479145715600.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P1493504871564095236

`1-char[or(n, -xor(n, -n))]`
-/

namespace A082410.P1493504871564095236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-Int.xor (n : ℤ) (-(n : ℤ)))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A082410.P1493504871564095236

namespace A082410

/-- `1-char[or(n, -xor(n, -n))]` -/
def P1493504871564095236.Spec : Prop :=
  ∀ n, P1493504871564095236.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P2903718586152958882

`xor(1, char[or(n, -xor(n, -n))])`
-/

namespace A082410.P2903718586152958882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-Int.xor (n : ℤ) (-(n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A082410.P2903718586152958882

namespace A082410

/-- `xor(1, char[or(n, -xor(n, -n))])` -/
def P2903718586152958882.Spec : Prop :=
  ∀ n, (P2903718586152958882.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P7333469569063104914

`char[comp[or(n, n-1)+n+1]]`
-/

namespace A082410.P7333469569063104914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A082410.P7333469569063104914

namespace A082410

/-- `char[comp[or(n, n-1)+n+1]]` -/
def P7333469569063104914.Spec : Prop :=
  ∀ n, (P7333469569063104914.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P2154342434308564234

`1-char[or(n, n-1)+n+1]`
-/

namespace A082410.P2154342434308564234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A082410.P2154342434308564234

namespace A082410

/-- `1-char[or(n, n-1)+n+1]` -/
def P2154342434308564234.Spec : Prop :=
  ∀ n, P2154342434308564234.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P13304981050769810358

`1-a((xor(n, -n)+n)%n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082410

/-- `1-a((xor(n, -n)+n)%n)` -/
def P13304981050769810358.Spec : Prop :=
  ∀ n, P13304981050769810358.a n = A082410 (n + 1)

theorem P13304981050769810358.correct : P13304981050769810358.Spec := by
  intro n
  simp only [A082410, Nat.add_sub_cancel]

end A082410

/-! ## A082410.P861725733668204730

`char[2*(n+1)-2^val(n+1, 2)]`
-/

namespace A082410.P861725733668204730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A082410.P861725733668204730

namespace A082410

/-- `char[2*(n+1)-2^val(n+1, 2)]` -/
def P861725733668204730.Spec : Prop :=
  ∀ n, (P861725733668204730.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P8710562108316877710

`char[(2*n+1)%or(n, n+1)+n+1]`
-/

namespace A082410.P8710562108316877710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % Nat.lor n (n + 1) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A082410.P8710562108316877710

namespace A082410

/-- `char[(2*n+1)%or(n, n+1)+n+1]` -/
def P8710562108316877710.Spec : Prop :=
  ∀ n, (P8710562108316877710.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P15858887418124294950

`1-A089013(n)`
-/

namespace A082410.P15858887418124294950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089013 n

end

end A082410.P15858887418124294950

namespace A082410

/-- `1-A089013(n)` -/
def P15858887418124294950.Spec : Prop :=
  ∀ n, P15858887418124294950.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P11575661950975738348

`A073089(Δ[n²])`
-/

namespace A082410.P11575661950975738348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082410.P11575661950975738348

namespace A082410

/-- `A073089(Δ[n²])` -/
def P11575661950975738348.Spec : Prop :=
  ∀ n, P11575661950975738348.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P4396199693399030731

`char[A091072(n+1)]`
-/

namespace A082410.P4396199693399030731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A082410.P4396199693399030731

namespace A082410

/-- `char[A091072(n+1)]` -/
def P4396199693399030731.Spec : Prop :=
  ∀ n, (P4396199693399030731.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P15160857315119208958

`char[A269361(n+1)]`
-/

namespace A082410.P15160857315119208958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A082410.P15160857315119208958

namespace A082410

/-- `char[A269361(n+1)]` -/
def P15160857315119208958.Spec : Prop :=
  ∀ n, (P15160857315119208958.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P14651209329310270318

`val(A317333(n+1), 2)`
-/

namespace A082410.P14651209329310270318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317333 (n + 1)).toNat 2

end

end A082410.P14651209329310270318

namespace A082410

/-- `val(A317333(n+1), 2)` -/
def P14651209329310270318.Spec : Prop :=
  ∀ n, (P14651209329310270318.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P4875475770082997823

`char[∑[A088742(n+1)]]`
-/

namespace A082410.P4875475770082997823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088742 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A082410.P4875475770082997823

namespace A082410

/-- `char[∑[A088742(n+1)]]` -/
def P4875475770082997823.Spec : Prop :=
  ∀ n, (P4875475770082997823.a n : ℤ) = A082410 (n + 1)

end A082410

/-! ## A082410.P9660339763484457796

`and(1, A073089(2*n+1))`
-/

namespace A082410.P9660339763484457796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A073089 (2 * n + 1))

end

end A082410.P9660339763484457796

namespace A082410

/-- `and(1, A073089(2*n+1))` -/
def P9660339763484457796.Spec : Prop :=
  ∀ n, P9660339763484457796.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P9455313457884573428

`A112347(n)+A038189(n)`
-/

namespace A082410.P9455313457884573428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n + A038189 n

end

end A082410.P9455313457884573428

namespace A082410

/-- `A112347(n)+A038189(n)` -/
def P9455313457884573428.Spec : Prop :=
  ∀ n, P9455313457884573428.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P6795504111649408025

`A057427(n)-A038189(n)`
-/

namespace A082410.P6795504111649408025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A038189 n

end

end A082410.P6795504111649408025

namespace A082410

/-- `A057427(n)-A038189(n)` -/
def P6795504111649408025.Spec : Prop :=
  ∀ n, P6795504111649408025.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P1771728227072877655

`A005811(n)-A382732(n)`
-/

namespace A082410.P1771728227072877655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A382732 n

end

end A082410.P1771728227072877655

namespace A082410

/-- `A005811(n)-A382732(n)` -/
def P1771728227072877655.Spec : Prop :=
  ∀ n, P1771728227072877655.a n = A082410 (n + 1)

end A082410

/-! ## A082410.P9153260709915823167

`A088748(n)-A382733(n)`
-/

namespace A082410.P9153260709915823167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n - A382733 n

end

end A082410.P9153260709915823167

namespace A082410

/-- `A088748(n)-A382733(n)` -/
def P9153260709915823167.Spec : Prop :=
  ∀ n, P9153260709915823167.a n = A082410 (n + 1)

end A082410

/-!
# A082412: a(n) = (2*8^n + 2^n)/3.

The programs for A082412, the canonical program `A082412.P15403250840934277229` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082412 has offset 0).

The definition of A082412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082412.P13990870367733430583

`(2*8^n+2^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082412.P13990870367733430583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 8 ^ n + 2 ^ n : ℚ) / 3

end

end A082412.P13990870367733430583

namespace A082412

/-- `(2*8^n+2^n)/3` -/
def P13990870367733430583.Spec : Prop :=
  ∀ n, P13990870367733430583.a n = (A082412 n : ℚ)

end A082412

/-! ## A082412.P15403250840934277229

`2^n*A001045(2*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082412

/-- `2^n*A001045(2*n+1)` -/
def P15403250840934277229.Spec : Prop :=
  ∀ n, P15403250840934277229.a n = A082412 n

theorem P15403250840934277229.correct : P15403250840934277229.Spec := by
  intro n
  simp only [A082412]

end A082412

/-! ## A082412.P7342126281125375101

`ogf((1-4x)/(1-10x+16x^2))`
-/

namespace A082412.P7342126281125375101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -10, 16] n

end

end A082412.P7342126281125375101

namespace A082412

/-- `ogf((1-4x)/(1-10x+16x^2))` -/
def P7342126281125375101.Spec : Prop :=
  ∀ n, P7342126281125375101.a n = A082412 n

end A082412

/-! ## A082412.P9591975071313525717

`8*a(n-1)-2^n` with `a(0)=1`
-/

namespace A082412.P9591975071313525717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - (2 ^ n : ℤ)

end

end A082412.P9591975071313525717

namespace A082412

/-- `8*a(n-1)-2^n` -/
def P9591975071313525717.Spec : Prop :=
  ∀ n, P9591975071313525717.a n = A082412 n

end A082412

/-! ## A082412.P3214345459202251245

`lcm(2^n, ∑[ceil(4^n/2)])`
-/

namespace A082412.P3214345459202251245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082412.P3214345459202251245

namespace A082412

/-- `lcm(2^n, ∑[ceil(4^n/2)])` -/
def P3214345459202251245.Spec : Prop :=
  ∀ n, (P3214345459202251245.a n : ℤ) = A082412 n

end A082412

/-! ## A082412.P10882250132931846716

`2*or(3*a(n-1), a(n-1))` with `a(0)=1`
-/

namespace A082412.P10882250132931846716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.lor (3 * a (n - 1)) (a (n - 1))

end

end A082412.P10882250132931846716

namespace A082412

/-- `2*or(3*a(n-1), a(n-1))` -/
def P10882250132931846716.Spec : Prop :=
  ∀ n, (P10882250132931846716.a n : ℤ) = A082412 n

end A082412

/-! ## A082412.P7266674047018844421

`A083333(2*n)`
-/

namespace A082412.P7266674047018844421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083333 (2 * n)

end

end A082412.P7266674047018844421

namespace A082412

/-- `A083333(2*n)` -/
def P7266674047018844421.Spec : Prop :=
  ∀ n, P7266674047018844421.a n = A082412 n

end A082412

/-! ## A082412.P6856079077134873151

`A068010(3*n+1)`
-/

namespace A082412.P6856079077134873151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 (3 * n + 1)

end

end A082412.P6856079077134873151

namespace A082412

/-- `A068010(3*n+1)` -/
def P6856079077134873151.Spec : Prop :=
  ∀ n, P6856079077134873151.a n = A082412 n

end A082412

/-! ## A082412.P3154190107220181050

`A068033(3*(n+1))`
-/

namespace A082412.P3154190107220181050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068033 (3 * (n + 1))

end

end A082412.P3154190107220181050

namespace A082412

/-- `A068033(3*(n+1))` -/
def P3154190107220181050.Spec : Prop :=
  ∀ n, P3154190107220181050.a n = A082412 n

end A082412

/-! ## A082412.P6470834621277656763

`A068012(3*n+2)`
-/

namespace A082412.P6470834621277656763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068012 (3 * n + 2)

end

end A082412.P6470834621277656763

namespace A082412

/-- `A068012(3*n+2)` -/
def P6470834621277656763.Spec : Prop :=
  ∀ n, P6470834621277656763.a n = A082412 n

end A082412

/-! ## A082412.P12969540874466784229

`2^n*A007583(n)`
-/

namespace A082412.P12969540874466784229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007583 n

end

end A082412.P12969540874466784229

namespace A082412

/-- `2^n*A007583(n)` -/
def P12969540874466784229.Spec : Prop :=
  ∀ n, P12969540874466784229.a n = A082412 n

end A082412

/-! ## A082412.P7215764298333647533

`2^n*record[A077925(n)]`
-/

namespace A082412.P7215764298333647533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082412.P7215764298333647533

namespace A082412

/-- `2^n*record[A077925(n)]` -/
def P7215764298333647533.Spec : Prop :=
  ∀ n, P7215764298333647533.a n = A082412 n

end A082412

/-! ## A082412.P4614876023311016871

`2^n*A077925(2*n)`
-/

namespace A082412.P4614876023311016871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A077925 (2 * n)

end

end A082412.P4614876023311016871

namespace A082412

/-- `2^n*A077925(2*n)` -/
def P4614876023311016871.Spec : Prop :=
  ∀ n, P4614876023311016871.a n = A082412 n

end A082412

/-! ## A082412.P3331494387647560937

`record[∑[(-2)^n]]*A000079(n)`
-/

namespace A082412.P3331494387647560937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A082412.P3331494387647560937

namespace A082412

/-- `record[∑[(-2)^n]]*A000079(n)` -/
def P3331494387647560937.Spec : Prop :=
  ∀ n, P3331494387647560937.a n = A082412 n

end A082412

/-! ## A082412.P11274284984964205025

`2^(n-1)*A047849(n+1)`
-/

namespace A082412.P11274284984964205025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A047849 (n + 1) : ℚ)

end

end A082412.P11274284984964205025

namespace A082412

/-- `2^(n-1)*A047849(n+1)` -/
def P11274284984964205025.Spec : Prop :=
  ∀ n, P11274284984964205025.a n = (A082412 n : ℚ)

end A082412

/-! ## A082412.P2299605588933843168

`2^(n-2)*A039301(n+2)`
-/

namespace A082412.P2299605588933843168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A039301 (n + 2) : ℚ)

end

end A082412.P2299605588933843168

namespace A082412

/-- `2^(n-2)*A039301(n+2)` -/
def P2299605588933843168.Spec : Prop :=
  ∀ n, P2299605588933843168.a n = (A082412 n : ℚ)

end A082412

/-! ## A082412.P16253116680743824766

`a(n-1)+A092811(n)+a(n-1)` with `a(0)=1`
-/

namespace A082412.P16253116680743824766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A092811 n + a (n - 1))

end

end A082412.P16253116680743824766

namespace A082412

/-- `a(n-1)+A092811(n)+a(n-1)` -/
def P16253116680743824766.Spec : Prop :=
  ∀ n, P16253116680743824766.a n = A082412 n

end A082412

/-! ## A082412.P9507011222197993663

`A082311(n)+A001045(n)`
-/

namespace A082412.P9507011222197993663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082311 n + A001045 n

end

end A082412.P9507011222197993663

namespace A082412

/-- `A082311(n)+A001045(n)` -/
def P9507011222197993663.Spec : Prop :=
  ∀ n, P9507011222197993663.a n = A082412 n

end A082412

/-! ## A082412.P15295395179873746698

`A132804(n)+A078008(n)`
-/

namespace A082412.P15295395179873746698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132804 n + A078008 n

end

end A082412.P15295395179873746698

namespace A082412

/-- `A132804(n)+A078008(n)` -/
def P15295395179873746698.Spec : Prop :=
  ∀ n, P15295395179873746698.a n = A082412 n

end A082412

/-! ## A082412.P9983739741302328978

`∑[A081294(n)]*A000079(n)`
-/

namespace A082412.P9983739741302328978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A082412.P9983739741302328978

namespace A082412

/-- `∑[A081294(n)]*A000079(n)` -/
def P9983739741302328978.Spec : Prop :=
  ∀ n, P9983739741302328978.a n = A082412 n

end A082412

/-!
# A082413: a(n) = (2*9^n + 3^n)/3.

The programs for A082413, the canonical program `A082413.P4108660368599229593` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082413 has offset 0).

The definition of A082413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*9^n+3^n)/3` (program `A082413.P10734426145198917437`, by `A082413.P10734426145198917437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082413.P10734426145198917437

`(2*9^n+3^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082413.P10734426145198917437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 9 ^ n + 3 ^ n : ℚ) / 3

end

end A082413.P10734426145198917437

namespace A082413

/-- `(2*9^n+3^n)/3` -/
def P10734426145198917437.Spec : Prop :=
  ∀ n, P10734426145198917437.a n = (A082413 n : ℚ)

theorem P10734426145198917437.correct : P10734426145198917437.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A082413, Nat.add_sub_cancel, A082413.P10734426145198917437.a, A082413.P4108660368599229593.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A082413, Nat.add_sub_cancel, A082413.P10734426145198917437.a, A082413.P4108660368599229593.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A082413

/-! ## A082413.P4108660368599229593

`12*a(n-1)-27*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082413

/-- `12*a(n-1)-27*a(n-2)` -/
def P4108660368599229593.Spec : Prop :=
  ∀ n, P4108660368599229593.a n = A082413 n

theorem P4108660368599229593.correct : P4108660368599229593.Spec := by
  intro n
  simp only [A082413]

end A082413

/-! ## A082413.P872280652773830383

`A374721(Δ[n²])`
-/

namespace A082413.P872280652773830383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374721 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082413.P872280652773830383

namespace A082413

/-- `A374721(Δ[n²])` -/
def P872280652773830383.Spec : Prop :=
  ∀ n, P872280652773830383.a n = A082413 n

end A082413

/-! ## A082413.P4508744409715583666

`Δ[A275636(n)/2]`
-/

namespace A082413.P4508744409715583666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275636 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082413.P4508744409715583666

namespace A082413

/-- `Δ[A275636(n)/2]` -/
def P4508744409715583666.Spec : Prop :=
  ∀ n, P4508744409715583666.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P9247540618203030630

`Δ[A051500(n)/3]`
-/

namespace A082413.P9247540618203030630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051500 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082413.P9247540618203030630

namespace A082413

/-- `Δ[A051500(n)/3]` -/
def P9247540618203030630.Spec : Prop :=
  ∀ n, P9247540618203030630.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P15949942096208507795

`Δ[A007051(n)²/3]`
-/

namespace A082413.P15949942096208507795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007051 n ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082413.P15949942096208507795

namespace A082413

/-- `Δ[A007051(n)²/3]` -/
def P15949942096208507795.Spec : Prop :=
  ∀ n, P15949942096208507795.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P16456598220939067096

`Δ[A341463(n)²/3]`
-/

namespace A082413.P16456598220939067096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341463 n ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082413.P16456598220939067096

namespace A082413

/-- `Δ[A341463(n)²/3]` -/
def P16456598220939067096.Spec : Prop :=
  ∀ n, P16456598220939067096.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P6954136455703291389

`Δ[A124302(n+1)²/3]`
-/

namespace A082413.P6954136455703291389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124302 (n + 1) ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082413.P6954136455703291389

namespace A082413

/-- `Δ[A124302(n+1)²/3]` -/
def P6954136455703291389.Spec : Prop :=
  ∀ n, P6954136455703291389.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P14686904938044167880

`Δ[A123183(n+2)²/3]`
-/

namespace A082413.P14686904938044167880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123183 (n + 2) ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082413.P14686904938044167880

namespace A082413

/-- `Δ[A123183(n+2)²/3]` -/
def P14686904938044167880.Spec : Prop :=
  ∀ n, P14686904938044167880.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P16960846685675457638

`floor(Δ[Δ[A164039(n)]²]/3)`
-/

namespace A082413.P16960846685675457638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 3⌋

end

end A082413.P16960846685675457638

namespace A082413

/-- `floor(Δ[Δ[A164039(n)]²]/3)` -/
def P16960846685675457638.Spec : Prop :=
  ∀ n, P16960846685675457638.a n = A082413 n

end A082413

/-! ## A082413.P988303218593063651

`3^(n-1)*A052919(n+1)`
-/

namespace A082413.P988303218593063651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052919 (n + 1) : ℚ)

end

end A082413.P988303218593063651

namespace A082413

/-- `3^(n-1)*A052919(n+1)` -/
def P988303218593063651.Spec : Prop :=
  ∀ n, P988303218593063651.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P13856292737802382724

`3^(n-1)*A100702(n+1)`
-/

namespace A082413.P13856292737802382724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A100702 (n + 1) : ℚ)

end

end A082413.P13856292737802382724

namespace A082413

/-- `3^(n-1)*A100702(n+1)` -/
def P13856292737802382724.Spec : Prop :=
  ∀ n, P13856292737802382724.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P10038249421791518163

`(Δ[A000244(n)]+1)*3^(n-1)`
-/

namespace A082413.P10038249421791518163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A082413.P10038249421791518163

namespace A082413

/-- `(Δ[A000244(n)]+1)*3^(n-1)` -/
def P10038249421791518163.Spec : Prop :=
  ∀ n, P10038249421791518163.a n = (A082413 n : ℚ)

end A082413

/-! ## A082413.P4759064370760082883

`Δ[A003462(n)*A124302(n)]`
-/

namespace A082413.P4759064370760082883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082413.P4759064370760082883

namespace A082413

/-- `Δ[A003462(n)*A124302(n)]` -/
def P4759064370760082883.Spec : Prop :=
  ∀ n, P4759064370760082883.a n = A082413 n

end A082413

/-! ## A082413.P12958696197269234862

`A140429(n)+A025192(2*n)`
-/

namespace A082413.P12958696197269234862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A025192 (2 * n)

end

end A082413.P12958696197269234862

namespace A082413

/-- `A140429(n)+A025192(2*n)` -/
def P12958696197269234862.Spec : Prop :=
  ∀ n, P12958696197269234862.a n = A082413 n

end A082413

/-! ## A082413.P5747735885745527292

`A154992(2*n+1)+A094388(n)`
-/

namespace A082413.P5747735885745527292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (2 * n + 1) + A094388 n

end

end A082413.P5747735885745527292

namespace A082413

/-- `A154992(2*n+1)+A094388(n)` -/
def P5747735885745527292.Spec : Prop :=
  ∀ n, P5747735885745527292.a n = A082413 n

end A082413

/-! ## A082413.P6407345101040263136

`A167993(2*n)+A032120(2*n)`
-/

namespace A082413.P6407345101040263136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (2 * n) + A032120 (2 * n)

end

end A082413.P6407345101040263136

namespace A082413

/-- `A167993(2*n)+A032120(2*n)` -/
def P6407345101040263136.Spec : Prop :=
  ∀ n, P6407345101040263136.a n = A082413 n

end A082413

/-! ## A082413.P12134252921901924374

`record[A254006(n)²-A122006(n+1)]`
-/

namespace A082413.P12134252921901924374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n ^ 2 - A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082413.P12134252921901924374

namespace A082413

/-- `record[A254006(n)²-A122006(n+1)]` -/
def P12134252921901924374.Spec : Prop :=
  ∀ n, P12134252921901924374.a n = A082413 n

end A082413

/-! ## A082413.P5771543057191040206

`record[A254006(n)²-A122007(n+1)]`
-/

namespace A082413.P5771543057191040206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n ^ 2 - A122007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082413.P5771543057191040206

namespace A082413

/-- `record[A254006(n)²-A122007(n+1)]` -/
def P5771543057191040206.Spec : Prop :=
  ∀ n, P5771543057191040206.a n = A082413 n

end A082413

/-! ## A082413.P950712581957021064

`A000244(n)²-A122006(2*n+1)`
-/

namespace A082413.P950712581957021064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 - A122006 (2 * n + 1)

end

end A082413.P950712581957021064

namespace A082413

/-- `A000244(n)²-A122006(2*n+1)` -/
def P950712581957021064.Spec : Prop :=
  ∀ n, P950712581957021064.a n = A082413 n

end A082413

/-!
# A082414: a(n) = (2*10^n + 4^n)/3.

The programs for A082414, the canonical program `A082414.P17676285663284506980` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082414 has offset 0).

The definition of A082414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082414.P17676285663284506980

`(2*10^n+4^n)/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082414

/-- `(2*10^n+4^n)/3` -/
def P17676285663284506980.Spec : Prop :=
  ∀ n, P17676285663284506980.a n = (A082414 n : ℚ)

end A082414

/-! ## A082414.P3708179771418278992

`4*(a(n-1)+10^(n-1))` with `a(0)=1`
-/

namespace A082414.P3708179771418278992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A082414.P3708179771418278992

namespace A082414

/-- `4*(a(n-1)+10^(n-1))` -/
def P3708179771418278992.Spec : Prop :=
  ∀ n, P3708179771418278992.a n = (A082414 n : ℚ)

end A082414

/-! ## A082414.P9928789824872246382

`10*a(n-1)-4^n/2` with `a(0)=1`
-/

namespace A082414.P9928789824872246382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - (4 ^ n : ℚ) / 2

end

end A082414.P9928789824872246382

namespace A082414

/-- `10*a(n-1)-4^n/2` -/
def P9928789824872246382.Spec : Prop :=
  ∀ n, P9928789824872246382.a n = (A082414 n : ℚ)

end A082414

/-! ## A082414.P8922462332997925109

`2*abs(4^(n-1)-5*a(n-1))` with `a(0)=1`
-/

namespace A082414.P8922462332997925109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * |(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 5 * a (n - 1)|

end

end A082414.P8922462332997925109

namespace A082414

/-- `2*abs(4^(n-1)-5*a(n-1))` -/
def P8922462332997925109.Spec : Prop :=
  ∀ n, P8922462332997925109.a n = (A082414 n : ℚ)

end A082414

/-! ## A082414.P10736290920021429047

`2^n*A082685(n)`
-/

namespace A082414.P10736290920021429047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A082685 n

end

end A082414.P10736290920021429047

namespace A082414

/-- `2^n*A082685(n)` -/
def P10736290920021429047.Spec : Prop :=
  ∀ n, P10736290920021429047.a n = A082414 n

end A082414

/-! ## A082414.P7870453677824192896

`A093141(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A082414.P7870453677824192896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093141 n + 4 * a (n - 1)

end

end A082414.P7870453677824192896

namespace A082414

/-- `A093141(n)+4*a(n-1)` -/
def P7870453677824192896.Spec : Prop :=
  ∀ n, P7870453677824192896.a n = A082414 n

end A082414

/-! ## A082414.P2474115577067476915

`∑[floor(2^(n-1))²]+2*A002277(n)+1`
-/

namespace A082414.P2474115577067476915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * A002277 n + 1)

end

end A082414.P2474115577067476915

namespace A082414

/-- `∑[floor(2^(n-1))²]+2*A002277(n)+1` -/
def P2474115577067476915.Spec : Prop :=
  ∀ n, P2474115577067476915.a n = A082414 n

end A082414

/-! ## A082414.P5912180310864623857

`A002280(n)+A002450(n)+1`
-/

namespace A082414.P5912180310864623857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n + (A002450 n + 1)

end

end A082414.P5912180310864623857

namespace A082414

/-- `A002280(n)+A002450(n)+1` -/
def P5912180310864623857.Spec : Prop :=
  ∀ n, P5912180310864623857.a n = A082414 n

end A082414

/-! ## A082414.P4147381952827834629

`A067275(n+1)+A002450(n)`
-/

namespace A082414.P4147381952827834629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 1) + A002450 n

end

end A082414.P4147381952827834629

namespace A082414

/-- `A067275(n+1)+A002450(n)` -/
def P4147381952827834629.Spec : Prop :=
  ∀ n, P4147381952827834629.a n = A082414 n

end A082414

/-! ## A082414.P520315341490913815

`A002280(n)+∑[A011782(n)²]`
-/

namespace A082414.P520315341490913815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082414.P520315341490913815

namespace A082414

/-- `A002280(n)+∑[A011782(n)²]` -/
def P520315341490913815.Spec : Prop :=
  ∀ n, P520315341490913815.a n = A082414 n

end A082414

/-! ## A082414.P12656959342803517847

`A067275(n+1)+A001045(2*n)`
-/

namespace A082414.P12656959342803517847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 1) + A001045 (2 * n)

end

end A082414.P12656959342803517847

namespace A082414

/-- `A067275(n+1)+A001045(2*n)` -/
def P12656959342803517847.Spec : Prop :=
  ∀ n, P12656959342803517847.a n = A082414 n

end A082414

/-! ## A082414.P2769904780999428647

`(A016127(n)-A005057(n))*A000079(n)`
-/

namespace A082414.P2769904780999428647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016127 n - A005057 n) * A000079 n

end

end A082414.P2769904780999428647

namespace A082414

/-- `(A016127(n)-A005057(n))*A000079(n)` -/
def P2769904780999428647.Spec : Prop :=
  ∀ n, P2769904780999428647.a n = A082414 n

end A082414

/-! ## A082414.P12340596568346367737

`(A074600(n)-A247313(n))*A000079(n)`
-/

namespace A082414.P12340596568346367737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074600 n - A247313 n) * A000079 n

end

end A082414.P12340596568346367737

namespace A082414

/-- `(A074600(n)-A247313(n))*A000079(n)` -/
def P12340596568346367737.Spec : Prop :=
  ∀ n, P12340596568346367737.a n = A082414 n

end A082414

/-!
# A082416: Parity of A073941(n).

The programs for A082416, there is no canonical definition to state claims against.
-/

/-! ## A082416.P9434407716376828065

`(Δ[A205083(n+1)]^n)²`
-/

namespace A082416.P9434407716376828065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ n) ^ 2

end

end A082416.P9434407716376828065

/-! ## A082416.P126781506862417163

`(A000007(n)+Δ[A205083(n+1)])²`
-/

namespace A082416.P126781506862417163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (f1 (n + 1) - f1 n)) ^ 2

end

end A082416.P126781506862417163

/-! ## A082416.P9768913170270660382

`abs(Δ[A304273(n+1)])`
-/

namespace A082416.P9768913170270660382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A082416.P9768913170270660382

/-! ## A082416.P13410081715278829507

`A029137(Δ[A304273(n+1)]+1)`
-/

namespace A082416.P13410081715278829507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029137 (f1 (n + 1) - f1 n + 1).toNat

end

end A082416.P13410081715278829507

/-! ## A082416.P12051040453149679380

`Δ[A304273(n+1)]^A255056(n)`
-/

namespace A082416.P12051040453149679380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A255056 n : ℤ)

end

end A082416.P12051040453149679380

/-! ## A082416.P6495834953094059916

`(A304273(n+1)-A304273(n+2))²`
-/

namespace A082416.P6495834953094059916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304273 (n + 1) - A304273 (n + 2)) ^ 2

end

end A082416.P6495834953094059916

/-! ## A082416.P17341117686964631370

`A061909(∑{digits}[Δ[A304273(n+1)], #]+1)`
-/

namespace A082416.P17341117686964631370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1)

end

end A082416.P17341117686964631370

/-! ## A082416.P13180195453094001871

`A073941(n+1)%2`
-/

namespace A082416.P13180195453094001871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073941 (n + 1)) 2

end

end A082416.P13180195453094001871

/-! ## A082416.P17492119936250654301

`A005428(abs(1-n))%2`
-/

namespace A082416.P17492119936250654301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005428 |1 - (n : ℤ)|.toNat) 2

end

end A082416.P17492119936250654301

/-! ## A082416.P15126377714558011506

`and(A073941(n+1), A158388(n))`
-/

namespace A082416.P15126377714558011506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073941 (n + 1)) (A158388 n)

end

end A082416.P15126377714558011506

/-! ## A082416.P10186162272138514005

`and(A073941(n+1), A267871(n))`
-/

namespace A082416.P10186162272138514005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073941 (n + 1)) (A267871 n)

end

end A082416.P10186162272138514005

/-! ## A082416.P1352992571594293629

`A081848(n+1)%2`
-/

namespace A082416.P1352992571594293629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081848 (n + 1)) 2

end

end A082416.P1352992571594293629

/-! ## A082416.P5784344819322662329

`ceil(A061419(n+1)/3)%2`
-/

namespace A082416.P5784344819322662329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A061419 (n + 1) : ℚ) / 3⌉ 2

end

end A082416.P5784344819322662329

/-! ## A082416.P363906822562321886

`and(A081848(n+1), A267871(n))`
-/

namespace A082416.P363906822562321886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081848 (n + 1)) (A267871 n)

end

end A082416.P363906822562321886

/-! ## A082416.P13026291367302521796

`(2*A005428(n)-A081848(n+1))²`
-/

namespace A082416.P13026291367302521796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A005428 n - A081848 (n + 1)) ^ 2

end

end A082416.P13026291367302521796

/-! ## A082416.P12144283003605505555

`Δ[(A061418(n+1)+1)%3]²`
-/

namespace A082416.P12144283003605505555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061418 (n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A082416.P12144283003605505555

/-! ## A082416.P15246613015856756223

`and(A008683(A049436(n+1))+2, A073941(n+1))`
-/

namespace A082416.P15246613015856756223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A049436 (n + 1)).toNat + 2) (A073941 (n + 1))

end

end A082416.P15246613015856756223

/-! ## A082416.P14682471791577102022

`and(A073941(n+1), A083318(n))`
-/

namespace A082416.P14682471791577102022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073941 (n + 1)) (A083318 n)

end

end A082416.P14682471791577102022

/-! ## A082416.P6365008548830153723

`and(A048578(n), A073941(n+1))`
-/

namespace A082416.P6365008548830153723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A073941 (n + 1))

end

end A082416.P6365008548830153723

/-! ## A082416.P12462091176501527104

`and(A073941(n+1), A114001(n))`
-/

namespace A082416.P12462091176501527104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073941 (n + 1)) (A114001 n)

end

end A082416.P12462091176501527104

/-!
# A082417: Numbers k such that P(k) < P(k+1) > P(k+2), where P(k) is the largest prime factor of k (A006530).

The programs for A082417, the canonical program `A082417.P15956254284807999064` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082417 has offset 1).

The definition of A082417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082417.P5499849945860858282

`A100392(n+1)-1`
-/

namespace A082417.P5499849945860858282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1) - 1

end

end A082417.P5499849945860858282

namespace A082417

/-- `A100392(n+1)-1` -/
def P5499849945860858282.Spec : Prop :=
  ∀ n, P5499849945860858282.a n = A082417 (n + 1)

theorem P5499849945860858282.correct : P5499849945860858282.Spec := by
  intro n
  simp only [A082417, Nat.add_sub_cancel, A082417.P5499849945860858282.a, A082417.P15956254284807999064.f1, A082417.P15956254284807999064.f2, A082417.P15956254284807999064.a, A070087, A070087.P14390244323313631810.f1, A070087.P14390244323313631810.f2, A070087.P14390244323313631810.a, A070089, A070089.P8160623282101571297.f1, A070089.P8160623282101571297.f2, A070089.P8160623282101571297.a, A100392, A100392.P5549897110138831043.a, A006530, A006530.P13372528560459906635.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A070229, A070229.P5792893597916963980.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082417

/-! ## A082417.P11854423047780528339

`∪[A065091(n+1), A100393(n+1)]-1`
-/

namespace A082417.P11854423047780528339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100393 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A082417.P11854423047780528339

namespace A082417

/-- `∪[A065091(n+1), A100393(n+1)]-1` -/
def P11854423047780528339.Spec : Prop :=
  ∀ n, P11854423047780528339.a n = A082417 (n + 1)

end A082417

/-! ## A082417.P15956254284807999064

`∩[A070087(n+1)-1, A070089(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A082417

/-- `∩[A070087(n+1)-1, A070089(n+1)]` -/
def P15956254284807999064.Spec : Prop :=
  ∀ n, (P15956254284807999064.a n : ℤ) = A082417 (n + 1)

theorem P15956254284807999064.correct : P15956254284807999064.Spec := by
  intro n
  simp only [A082417, Nat.add_sub_cancel]

end A082417

/-! ## A082417.P12363622886150205217

`eq[2, A100376(n+2)]+2`
-/

namespace A082417.P12363622886150205217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100376 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A082417.P12363622886150205217

namespace A082417

/-- `eq[2, A100376(n+2)]+2` -/
def P12363622886150205217.Spec : Prop :=
  ∀ n, (P12363622886150205217.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P5195631656934591293

`A023443(A100392(n+1))`
-/

namespace A082417.P5195631656934591293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A100392 (n + 1)).toNat

end

end A082417.P5195631656934591293

namespace A082417

/-- `A023443(A100392(n+1))` -/
def P5195631656934591293.Spec : Prop :=
  ∀ n, P5195631656934591293.a n = A082417 (n + 1)

end A082417

/-! ## A082417.P16902465150087021933

`eq[A006530(n+1), A093074(n+1)]`
-/

namespace A082417.P16902465150087021933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082417.P16902465150087021933

namespace A082417

/-- `eq[A006530(n+1), A093074(n+1)]` -/
def P16902465150087021933.Spec : Prop :=
  ∀ n, (P16902465150087021933.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P10938180955408370522

`eq[A025492(n+1), A093074(n+1)]`
-/

namespace A082417.P10938180955408370522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082417.P10938180955408370522

namespace A082417

/-- `eq[A025492(n+1), A093074(n+1)]` -/
def P10938180955408370522.Spec : Prop :=
  ∀ n, (P10938180955408370522.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P9813385615919486700

`eq[A093074(n+1), A284695(n+1)]`
-/

namespace A082417.P9813385615919486700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082417.P9813385615919486700

namespace A082417

/-- `eq[A093074(n+1), A284695(n+1)]` -/
def P9813385615919486700.Spec : Prop :=
  ∀ n, (P9813385615919486700.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P15325902441058151516

`eq[A093074(n+1), A299766(n+1)]`
-/

namespace A082417.P15325902441058151516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082417.P15325902441058151516

namespace A082417

/-- `eq[A093074(n+1), A299766(n+1)]` -/
def P15325902441058151516.Spec : Prop :=
  ∀ n, (P15325902441058151516.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P4530031484824558794

`eq[A093074(n+1), A345931(n+1)]`
-/

namespace A082417.P4530031484824558794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082417.P4530031484824558794

namespace A082417

/-- `eq[A093074(n+1), A345931(n+1)]` -/
def P4530031484824558794.Spec : Prop :=
  ∀ n, (P4530031484824558794.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P2403659698425011870

`eq[A074399(n+2), A074399(n+1)]+1`
-/

namespace A082417.P2403659698425011870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082417.P2403659698425011870

namespace A082417

/-- `eq[A074399(n+2), A074399(n+1)]+1` -/
def P2403659698425011870.Spec : Prop :=
  ∀ n, (P2403659698425011870.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P17268027033929764443

`eq[2, A068068(gcd(n+1, A093074(n+1)))]`
-/

namespace A082417.P17268027033929764443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (Int.gcd (n + 1 : ℤ) (A093074 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082417.P17268027033929764443

namespace A082417

/-- `eq[2, A068068(gcd(n+1, A093074(n+1)))]` -/
def P17268027033929764443.Spec : Prop :=
  ∀ n, (P17268027033929764443.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P6913382378066691127

`eq[0, A001222((n+1)%A093074(n+1)+1)]`
-/

namespace A082417.P6913382378066691127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (n + 1 : ℤ) (A093074 (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082417.P6913382378066691127

namespace A082417

/-- `eq[0, A001222((n+1)%A093074(n+1)+1)]` -/
def P6913382378066691127.Spec : Prop :=
  ∀ n, (P6913382378066691127.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P16024943612043929603

`eq[A014963(A053585(n+1)), A093074(n+1)]`
-/

namespace A082417.P16024943612043929603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053585 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082417.P16024943612043929603

namespace A082417

/-- `eq[A014963(A053585(n+1)), A093074(n+1)]` -/
def P16024943612043929603.Spec : Prop :=
  ∀ n, (P16024943612043929603.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P5067449890191822556

`eq[A055396(A093074(n+1)), A061395(n+1)]`
-/

namespace A082417.P5067449890191822556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A093074 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082417.P5067449890191822556

namespace A082417

/-- `eq[A055396(A093074(n+1)), A061395(n+1)]` -/
def P5067449890191822556.Spec : Prop :=
  ∀ n, (P5067449890191822556.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P7752768791243234607

`lt[A093074(n+1), A006530(A003961(n+1))]`
-/

namespace A082417.P7752768791243234607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003961 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082417.P7752768791243234607

namespace A082417

/-- `lt[A093074(n+1), A006530(A003961(n+1))]` -/
def P7752768791243234607.Spec : Prop :=
  ∀ n, (P7752768791243234607.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P5191335612905219372

`eq[A076605(A233583(2*(n+1))), A076605(2*n+3)]`
-/

namespace A082417.P5191335612905219372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082417.P5191335612905219372

namespace A082417

/-- `eq[A076605(A233583(2*(n+1))), A076605(2*n+3)]` -/
def P5191335612905219372.Spec : Prop :=
  ∀ n, (P5191335612905219372.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P7063291936444526997

`eq[0, Δ[A006530((n+1)*(n+2))]]+1`
-/

namespace A082417.P7063291936444526997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082417.P7063291936444526997

namespace A082417

/-- `eq[0, Δ[A006530((n+1)*(n+2))]]+1` -/
def P7063291936444526997.Spec : Prop :=
  ∀ n, (P7063291936444526997.a n : ℤ) = A082417 (n + 1)

end A082417

/-! ## A082417.P12108050985397128966

`lt[A006530(A060798(n+1)+n), A006530(n+1)]`
-/

namespace A082417.P12108050985397128966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060798 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082417.P12108050985397128966

namespace A082417

/-- `lt[A006530(A060798(n+1)+n), A006530(n+1)]` -/
def P12108050985397128966.Spec : Prop :=
  ∀ n, (P12108050985397128966.a n : ℤ) = A082417 (n + 1)

end A082417

/-!
# A082418: Numbers k such that P(k) > P(k+1) < P(k+2), where P(n) = largest prime factor of n (A006530).

The programs for A082418, the canonical program `A082418.P10152609501168817494` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082418 has offset 1).

The definition of A082418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6722 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082418.P10917651494796305883

`A100390(n+1)-1`
-/

namespace A082418.P10917651494796305883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1) - 1

end

end A082418.P10917651494796305883

namespace A082418

/-- `A100390(n+1)-1` -/
def P10917651494796305883.Spec : Prop :=
  ∀ n, P10917651494796305883.a n = A082418 (n + 1)

theorem P10917651494796305883.correct : P10917651494796305883.Spec := by
  intro n
  simp only [A082418, Nat.add_sub_cancel, A082418.P10917651494796305883.a, A082418.P10152609501168817494.f1, A082418.P10152609501168817494.f2, A082418.P10152609501168817494.a, A070087, A070087.P14390244323313631810.f1, A070087.P14390244323313631810.f2, A070087.P14390244323313631810.a, A070089, A070089.P8160623282101571297.f1, A070089.P8160623282101571297.f2, A070089.P8160623282101571297.a, A100390, A100390.P17410593274530359535.a, A006530, A006530.P13372528560459906635.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A070229, A070229.P5792893597916963980.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082418

/-! ## A082418.P1298379747587854913

`∪[A082421(n+1), A082422(n+1)]`
-/

namespace A082418.P1298379747587854913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082418.P1298379747587854913

namespace A082418

/-- `∪[A082421(n+1), A082422(n+1)]` -/
def P1298379747587854913.Spec : Prop :=
  ∀ n, (P1298379747587854913.a n : ℤ) = A082418 (n + 1)

end A082418

/-! ## A082418.P17011632880510553070

`A115638(A100375(n+1))+A100390(n+1)`
-/

namespace A082418.P17011632880510553070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (A100375 (n + 1)).toNat + A100390 (n + 1)

end

end A082418.P17011632880510553070

namespace A082418

/-- `A115638(A100375(n+1))+A100390(n+1)` -/
def P17011632880510553070.Spec : Prop :=
  ∀ n, P17011632880510553070.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P5028613142470022874

`A134824(n+2)+A100390(n+1)`
-/

namespace A082418.P5028613142470022874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A100390 (n + 1)

end

end A082418.P5028613142470022874

namespace A082418

/-- `A134824(n+2)+A100390(n+1)` -/
def P5028613142470022874.Spec : Prop :=
  ∀ n, P5028613142470022874.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P10152609501168817494

`∩[A070087(n+1), A070089(n+1)-1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A082418

/-- `∩[A070087(n+1), A070089(n+1)-1]` -/
def P10152609501168817494.Spec : Prop :=
  ∀ n, (P10152609501168817494.a n : ℤ) = A082418 (n + 1)

theorem P10152609501168817494.correct : P10152609501168817494.Spec := by
  intro n
  simp only [A082418, Nat.add_sub_cancel]

end A082418

/-! ## A082418.P7200230130572302098

`A302050(A006005(n+2))+A100390(n+1)`
-/

namespace A082418.P7200230130572302098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A006005 (n + 2)).toNat + A100390 (n + 1)

end

end A082418.P7200230130572302098

namespace A082418

/-- `A302050(A006005(n+2))+A100390(n+1)` -/
def P7200230130572302098.Spec : Prop :=
  ∀ n, P7200230130572302098.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P11379207679920529942

`A023443(A100390(n+1))`
-/

namespace A082418.P11379207679920529942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A100390 (n + 1)).toNat

end

end A082418.P11379207679920529942

namespace A082418

/-- `A023443(A100390(n+1))` -/
def P11379207679920529942.Spec : Prop :=
  ∀ n, P11379207679920529942.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P11119524820102943105

`A302050(A002313(n+1))+A100390(n+1)`
-/

namespace A082418.P11119524820102943105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A002313 (n + 1)).toNat + A100390 (n + 1)

end

end A082418.P11119524820102943105

namespace A082418

/-- `A302050(A002313(n+1))+A100390(n+1)` -/
def P11119524820102943105.Spec : Prop :=
  ∀ n, P11119524820102943105.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P520372205748476146

`A228826(A016813(n))+A100390(n+1)`
-/

namespace A082418.P520372205748476146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A016813 n).toNat + A100390 (n + 1)

end

end A082418.P520372205748476146

namespace A082418

/-- `A228826(A016813(n))+A100390(n+1)` -/
def P520372205748476146.Spec : Prop :=
  ∀ n, P520372205748476146.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P14607115840190202036

`A114592(A000040(n+1))+A100390(n+1)`
-/

namespace A082418.P14607115840190202036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A000040 (n + 1)).toNat + A100390 (n + 1)

end

end A082418.P14607115840190202036

namespace A082418

/-- `A114592(A000040(n+1))+A100390(n+1)` -/
def P14607115840190202036.Spec : Prop :=
  ∀ n, P14607115840190202036.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P6814884194393342134

`A302050(A100395(n+2))+A100390(n+1)`
-/

namespace A082418.P6814884194393342134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A100395 (n + 2)).toNat + A100390 (n + 1)

end

end A082418.P6814884194393342134

namespace A082418

/-- `A302050(A100395(n+2))+A100390(n+1)` -/
def P6814884194393342134.Spec : Prop :=
  ∀ n, P6814884194393342134.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P10476408338621916200

`A233583(A100390(abs(xor(n, -1))))`
-/

namespace A082418.P10476408338621916200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A100390 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A082418.P10476408338621916200

namespace A082418

/-- `A233583(A100390(abs(xor(n, -1))))` -/
def P10476408338621916200.Spec : Prop :=
  ∀ n, P10476408338621916200.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P15672877877397799240

`A114592(A007521(n+1))+A100390(n+1)`
-/

namespace A082418.P15672877877397799240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A007521 (n + 1)).toNat + A100390 (n + 1)

end

end A082418.P15672877877397799240

namespace A082418

/-- `A114592(A007521(n+1))+A100390(n+1)` -/
def P15672877877397799240.Spec : Prop :=
  ∀ n, P15672877877397799240.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P4454999366559348035

`A114592(A007520(n+1))+A100390(n+1)`
-/

namespace A082418.P4454999366559348035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A007520 (n + 1)).toNat + A100390 (n + 1)

end

end A082418.P4454999366559348035

namespace A082418

/-- `A114592(A007520(n+1))+A100390(n+1)` -/
def P4454999366559348035.Spec : Prop :=
  ∀ n, P4454999366559348035.a n = A082418 (n + 1)

end A082418

/-! ## A082418.P9338194403430059663

`A114592(A007519(n+1))+A100390(n+1)`
-/

namespace A082418.P9338194403430059663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A007519 (n + 1)).toNat + A100390 (n + 1)

end

end A082418.P9338194403430059663

namespace A082418

/-- `A114592(A007519(n+1))+A100390(n+1)` -/
def P9338194403430059663.Spec : Prop :=
  ∀ n, P9338194403430059663.a n = A082418 (n + 1)

end A082418

/-!
# A082419: Numbers n such that P(n+2) < P(n) < P(n+1), where P(n) = largest prime factor of n (A006530).

The programs for A082419, there is no canonical definition to state claims against.
-/

/-! ## A082419.P17740616816766805176

`eq[2, A174869(n+1)]+1`
-/

namespace A082419.P17740616816766805176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082419.P17740616816766805176

/-! ## A082419.P15984906368703084222

`eq[2, A174869(A028310(n))]`
-/

namespace A082419.P15984906368703084222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082419.P15984906368703084222

/-! ## A082419.P8973773362906984596

`A061767(eq[2, A174869(n+1)])`
-/

namespace A082419.P8973773362906984596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082419.P8973773362906984596

/-! ## A082419.P3255494764507427108

`A065475(eq[2, A174869(n+1)])`
-/

namespace A082419.P3255494764507427108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082419.P3255494764507427108

/-! ## A082419.P11880297780913803276

`A153152(eq[2, A174869(n+1)])`
-/

namespace A082419.P11880297780913803276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082419.P11880297780913803276

/-! ## A082419.P5187046063633835802

`A181569(eq[2, A174869(n+1)])`
-/

namespace A082419.P5187046063633835802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082419.P5187046063633835802

/-! ## A082419.P1259992907209693790

`eq[2, A174869(A065033(2*n))]`
-/

namespace A082419.P1259992907209693790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082419.P1259992907209693790

/-! ## A082419.P9210495315912975590

`A113484(eq[2, A174869(n+1)])`
-/

namespace A082419.P9210495315912975590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082419.P9210495315912975590

/-! ## A082419.P17082792454508505160

`eq[2, A174869(A233583(n+1))]`
-/

namespace A082419.P17082792454508505160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082419.P17082792454508505160

/-!
# A082420: Numbers n such that P(n) < P(n+2) < P(n+1), where P(n) = largest prime factor of n (A006530).

The programs for A082420, there is no canonical definition to state claims against.
-/

/-! ## A082420.P15912333512705263231

`∩[comp[A082419(n+1)], A082417(n+2)]`
-/

namespace A082420.P15912333512705263231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082417 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A082420.P15912333512705263231

/-!
# A082421: Numbers n such that P(n+1) < P(n) < P(n+2), where P(n) = largest prime factor of n (A006530).

The programs for A082421, the canonical program `A082421.P5861673394981884252` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082421 has offset 1).

The definition of A082421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082421.P5861673394981884252

`∩[A082418(n+1), comp[A082422(n+1)]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A082421

/-- `∩[A082418(n+1), comp[A082422(n+1)]]` -/
def P5861673394981884252.Spec : Prop :=
  ∀ n, (P5861673394981884252.a n : ℤ) = A082421 (n + 1)

theorem P5861673394981884252.correct : P5861673394981884252.Spec := by
  intro n
  simp only [A082421, Nat.add_sub_cancel]

end A082421

/-! ## A082421.P17660945578008137876

`∩[comp[A082422(n+1)], A100390(n+1)-1]`
-/

namespace A082421.P17660945578008137876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A082421.P17660945578008137876

namespace A082421

/-- `∩[comp[A082422(n+1)], A100390(n+1)-1]` -/
def P17660945578008137876.Spec : Prop :=
  ∀ n, (P17660945578008137876.a n : ℤ) = A082421 (n + 1)

end A082421

/-! ## A082421.P15437703263752647715

`lt[A079748(A028310(n)), A093075(n+1)]`
-/

namespace A082421.P15437703263752647715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079748 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082421.P15437703263752647715

namespace A082421

/-- `lt[A079748(A028310(n)), A093075(n+1)]` -/
def P15437703263752647715.Spec : Prop :=
  ∀ n, (P15437703263752647715.a n : ℤ) = A082421 (n + 1)

end A082421

/-! ## A082421.P11077562304697825213

`eq[A093075(n+1), A100376(A233583(n+1))]`
-/

namespace A082421.P11077562304697825213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100376 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082421.P11077562304697825213

namespace A082421

/-- `eq[A093075(n+1), A100376(A233583(n+1))]` -/
def P11077562304697825213.Spec : Prop :=
  ∀ n, (P11077562304697825213.a n : ℤ) = A082421 (n + 1)

end A082421

/-! ## A082421.P14293029061709717158

`eq[Δ[A337473(2*n+1)], A337509(2*(n+2))]`
-/

namespace A082421.P14293029061709717158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337473 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337509 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A082421.P14293029061709717158

namespace A082421

/-- `eq[Δ[A337473(2*n+1)], A337509(2*(n+2))]` -/
def P14293029061709717158.Spec : Prop :=
  ∀ n, (P14293029061709717158.a n : ℤ) = A082421 (n + 1)

end A082421

/-!
# A082422: Numbers n such that P(n) > P(n+2) > P(n+1), where P(n) = largest prime factor of n (A006530).

The programs for A082422, the canonical program `A082422.P3239356437200771040` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082422 has offset 1).

The definition of A082422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082422.P3239356437200771040

`eq[A074399(n+1)%A093074(n+1), A076566(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A082422

/-- `eq[A074399(n+1)%A093074(n+1), A076566(n+1)]` -/
def P3239356437200771040.Spec : Prop :=
  ∀ n, (P3239356437200771040.a n : ℤ) = A082422 (n + 1)

theorem P3239356437200771040.correct : P3239356437200771040.Spec := by
  intro n
  simp only [A082422, Nat.add_sub_cancel]

end A082422

/-! ## A082422.P9808379183838591282

`lt[(A093075(n+1)+1)², A079748(n+1)]`
-/

namespace A082422.P9808379183838591282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093075 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082422.P9808379183838591282

namespace A082422

/-- `lt[(A093075(n+1)+1)², A079748(n+1)]` -/
def P9808379183838591282.Spec : Prop :=
  ∀ n, (P9808379183838591282.a n : ℤ) = A082422 (n + 1)

end A082422

/-!
# A082423: a(1)=1, a(n)=ceiling(n/(n+1)*sum(k=1,n-1,a(k))).

The programs for A082423, the canonical program `A082423.P8421950519896274675` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082423 has offset 1).

The definition of A082423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082423.P8421950519896274675

`Δ[floor((2*n+1)/(n+1)*a(n-1))]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082423

/-- `Δ[floor((2*n+1)/(n+1)*a(n-1))]` -/
def P8421950519896274675.Spec : Prop :=
  ∀ n, P8421950519896274675.a n = A082423 (n + 1)

theorem P8421950519896274675.correct : P8421950519896274675.Spec := by
  intro n
  simp only [A082423, Nat.add_sub_cancel]

end A082423

/-! ## A082423.P17936009517344396399

`Δ[A008619(floor((4-2/(n+1))*a(n-1)))]` with `a(0)=0`
-/

namespace A082423.P17936009517344396399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A008619 ⌊(4 - 2 / (n + 1 : ℚ)) * (f1 (n - 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082423.P17936009517344396399

namespace A082423

/-- `Δ[A008619(floor((4-2/(n+1))*a(n-1)))]` -/
def P17936009517344396399.Spec : Prop :=
  ∀ n, P17936009517344396399.a n = A082423 (n + 1)

end A082423

/-! ## A082423.P14771706978029461544

`A226190(A003945(n)-A027934(n))`
-/

namespace A082423.P14771706978029461544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A003945 n - A027934 n).toNat

end

end A082423.P14771706978029461544

namespace A082423

/-- `A226190(A003945(n)-A027934(n))` -/
def P14771706978029461544.Spec : Prop :=
  ∀ n, P14771706978029461544.a n = A082423 (n + 1)

end A082423

/-! ## A082423.P1529215997924854031

`A038567(A006788(n+1)*A094537(n))`
-/

namespace A082423.P1529215997924854031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A006788 (n + 1) * A094537 n).toNat

end

end A082423.P1529215997924854031

namespace A082423

/-- `A038567(A006788(n+1)*A094537(n))` -/
def P1529215997924854031.Spec : Prop :=
  ∀ n, P1529215997924854031.a n = A082423 (n + 1)

end A082423

/-! ## A082423.P14531778803132701780

`A193832(A078483(n))`
-/

namespace A082423.P14531778803132701780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A078483 n).toNat

end

end A082423.P14531778803132701780

namespace A082423

/-- `A193832(A078483(n))` -/
def P14531778803132701780.Spec : Prop :=
  ∀ n, P14531778803132701780.a n = A082423 (n + 1)

end A082423

/-!
# A082424: Coefficient of s(2n) in s(n,n) * s(n,n) * s(n,n) * s(n,n) * s(n,n) * s(n,n), where s(n,n) is the Schur function indexed by two parts of size n, s(2n) is the Schur function corresponding to the trivial representation and * represents the inner or Kronecker product.

The programs for A082424, there is no canonical definition to state claims against.
-/

/-! ## A082424.P15406839787892847051

`C(A360005(a(n-1)), 2)-(n+1)` with `a(0)=1, a(1)=1, a(2)=11`
-/

namespace A082424.P15406839787892847051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 11] fun n a =>
  (Nat.choose (A360005 (a (n - 1)).toNat).toNat 2 : ℤ) - (n + 1 : ℤ)

end

end A082424.P15406839787892847051

/-!
# A082425: a(1)=1, a(n) = -1 + n*Sum_{j=1..n-1} a(j).

The programs for A082425, the canonical program `A082425.P8518969502685838414` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082425 has offset 1).

The definition of A082425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082425.P8518969502685838414

`(n+3)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082425

/-- `(n+3)*a(n-1)-n*a(n-2)` -/
def P8518969502685838414.Spec : Prop :=
  ∀ n, P8518969502685838414.a n = A082425 (n + 1)

theorem P8518969502685838414.correct : P8518969502685838414.Spec := by
  intro n
  simp only [A082425, Nat.add_sub_cancel]

end A082425

/-! ## A082425.P7573508549095543099

`((n+1)²*a(n-1)+1)/n` with `a(0)=1, a(1)=1`
-/

namespace A082425.P7573508549095543099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (((n + 1) ^ 2 : ℚ) * a (n - 1) + 1) / (n : ℚ)

end

end A082425.P7573508549095543099

namespace A082425

/-- `((n+1)²*a(n-1)+1)/n` -/
def P7573508549095543099.Spec : Prop :=
  ∀ n, P7573508549095543099.a n = (A082425 (n + 1) : ℚ)

end A082425

/-! ## A082425.P893759956501273301

`Δ[(n+1)*(a(n-1)-1)]` with `a(0)=1, a(1)=2`
-/

namespace A082425.P893759956501273301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1 : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082425.P893759956501273301

namespace A082425

/-- `Δ[(n+1)*(a(n-1)-1)]` -/
def P893759956501273301.Spec : Prop :=
  ∀ n, P893759956501273301.a n = A082425 (n + 1)

end A082425

/-! ## A082425.P18305190972270036189

`ceil((n+1)²/n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A082425.P18305190972270036189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈((n + 1) ^ 2 : ℚ) / (n : ℚ) * (a (n - 1) : ℚ)⌉

end

end A082425.P18305190972270036189

namespace A082425

/-- `ceil((n+1)²/n*a(n-1))` -/
def P18305190972270036189.Spec : Prop :=
  ∀ n, P18305190972270036189.a n = A082425 (n + 1)

end A082425

/-! ## A082425.P14538150768046547143

`Δ[lcm(n+1, a(n-1))-(n+1)]` with `a(0)=1, a(1)=2`
-/

namespace A082425.P14538150768046547143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (Int.lcm (n + 1 : ℤ) (f1 (n - 1)) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082425.P14538150768046547143

namespace A082425

/-- `Δ[lcm(n+1, a(n-1))-(n+1)]` -/
def P14538150768046547143.Spec : Prop :=
  ∀ n, P14538150768046547143.a n = A082425 (n + 1)

end A082425

/-! ## A082425.P12333989680892008808

`or(1, Δ[A056543(n+1)])`
-/

namespace A082425.P12333989680892008808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A082425.P12333989680892008808

namespace A082425

/-- `or(1, Δ[A056543(n+1)])` -/
def P12333989680892008808.Spec : Prop :=
  ∀ n, P12333989680892008808.a n = A082425 (n + 1)

end A082425

/-! ## A082425.P9811713487279975496

`A074143(n+1)+A074143(n+1)-A007808(n+1)`
-/

namespace A082425.P9811713487279975496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1) + (A074143 (n + 1) - A007808 (n + 1))

end

end A082425.P9811713487279975496

namespace A082425

/-- `A074143(n+1)+A074143(n+1)-A007808(n+1)` -/
def P9811713487279975496.Spec : Prop :=
  ∀ n, P9811713487279975496.a n = A082425 (n + 1)

end A082425

/-!
# A082426: a(n) = floor(n*n!/2 + 1).

The programs for A082426, the canonical program `A082426.P9477908709064286689` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082426 has offset 1).

The definition of A082426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(n+1)!/2+1)` (program `A082426.P9477908709064286689`, by `A082426.P9477908709064286689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082426.P9477908709064286689

`floor((n+1)*(n+1)!/2+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082426

/-- `floor((n+1)*(n+1)!/2+1)` -/
def P9477908709064286689.Spec : Prop :=
  ∀ n, P9477908709064286689.a n = A082426 (n + 1)

theorem P9477908709064286689.correct : P9477908709064286689.Spec := by
  intro n
  simp only [A082426, Nat.add_sub_cancel]

end A082426

/-! ## A082426.P6575961360435670022

`Δ[(n+1)*a(n-1)]+1` with `a(0)=1, a(1)=1`
-/

namespace A082426.P6575961360435670022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A082426.P6575961360435670022

namespace A082426

/-- `Δ[(n+1)*a(n-1)]+1` -/
def P6575961360435670022.Spec : Prop :=
  ∀ n, P6575961360435670022.a n = A082426 (n + 1)

end A082426

/-! ## A082426.P8941512720855004369

`(n+1)*floor(a(n-1)+a(n-1)/n)-n` with `a(0)=1`
-/

namespace A082426.P8941512720855004369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * ⌊(a (n - 1) : ℚ) + (a (n - 1) : ℚ) / (n : ℚ)⌋ - (n : ℤ)

end

end A082426.P8941512720855004369

namespace A082426

/-- `(n+1)*floor(a(n-1)+a(n-1)/n)-n` -/
def P8941512720855004369.Spec : Prop :=
  ∀ n, P8941512720855004369.a n = A082426 (n + 1)

end A082426

/-! ## A082426.P14369970569303956639

`Δ[Δ[A014288(n)]]+1`
-/

namespace A082426.P14369970569303956639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A082426.P14369970569303956639

namespace A082426

/-- `Δ[Δ[A014288(n)]]+1` -/
def P14369970569303956639.Spec : Prop :=
  ∀ n, P14369970569303956639.a n = A082426 (n + 1)

end A082426

/-! ## A082426.P3944024264987453889

`Δ[A001710(n+1)]+1`
-/

namespace A082426.P3944024264987453889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A082426.P3944024264987453889

namespace A082426

/-- `Δ[A001710(n+1)]+1` -/
def P3944024264987453889.Spec : Prop :=
  ∀ n, P3944024264987453889.a n = A082426 (n + 1)

end A082426

/-! ## A082426.P17631865731492549843

`Δ[Δ[A093468(n+1)]]+1`
-/

namespace A082426.P17631865731492549843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A082426.P17631865731492549843

namespace A082426

/-- `Δ[Δ[A093468(n+1)]]+1` -/
def P17631865731492549843.Spec : Prop :=
  ∀ n, P17631865731492549843.a n = A082426 (n + 1)

end A082426

/-! ## A082426.P11204531195236324282

`floor(Δ[(n+1)!/2])+1`
-/

namespace A082426.P11204531195236324282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + 1

end

end A082426.P11204531195236324282

namespace A082426

/-- `floor(Δ[(n+1)!/2])+1` -/
def P11204531195236324282.Spec : Prop :=
  ∀ n, P11204531195236324282.a n = A082426 (n + 1)

theorem P11204531195236324282.correct : P11204531195236324282.Spec := by
  intro n
  simp only [A082426, Nat.add_sub_cancel, A082426.P11204531195236324282.f1, A082426.P11204531195236324282.a, A082426.P9477908709064286689.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A082426

/-! ## A082426.P15621867750691300356

`Δ[ceil((n+1)!/2)]+1`
-/

namespace A082426.P15621867750691300356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A082426.P15621867750691300356

namespace A082426

/-- `Δ[ceil((n+1)!/2)]+1` -/
def P15621867750691300356.Spec : Prop :=
  ∀ n, P15621867750691300356.a n = A082426 (n + 1)

end A082426

/-! ## A082426.P13297447144952562398

`Δ[round((n+1)!/2)]+1`
-/

namespace A082426.P13297447144952562398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A082426.P13297447144952562398

namespace A082426

/-- `Δ[round((n+1)!/2)]+1` -/
def P13297447144952562398.Spec : Prop :=
  ∀ n, P13297447144952562398.a n = A082426 (n + 1)

end A082426

/-! ## A082426.P13149138443208292607

`A254040(A034856(n+2))+1`
-/

namespace A082426.P13149138443208292607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A034856 (n + 2)).toNat + 1

end

end A082426.P13149138443208292607

namespace A082426

/-- `A254040(A034856(n+2))+1` -/
def P13149138443208292607.Spec : Prop :=
  ∀ n, P13149138443208292607.a n = A082426 (n + 1)

end A082426

/-!
# A082427: a(1)=1, a(n) = n * (Sum_{k=1..n-1} a(k)) - 2.

The programs for A082427, the canonical program `A082427.P13442834230341488515` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082427 has offset 1).

The definition of A082427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082427.P13442834230341488515

`(n+3)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082427

/-- `(n+3)*a(n-1)-n*a(n-2)` -/
def P13442834230341488515.Spec : Prop :=
  ∀ n, P13442834230341488515.a n = A082427 (n + 1)

theorem P13442834230341488515.correct : P13442834230341488515.Spec := by
  intro n
  simp only [A082427, Nat.add_sub_cancel]

end A082427

/-! ## A082427.P5245259966737938416

`((n+1)²*a(n-1)+2)/n` with `a(0)=1, a(1)=0`
-/

namespace A082427.P5245259966737938416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (((n + 1) ^ 2 : ℚ) * a (n - 1) + 2) / (n : ℚ)

end

end A082427.P5245259966737938416

namespace A082427

/-- `((n+1)²*a(n-1)+2)/n` -/
def P5245259966737938416.Spec : Prop :=
  ∀ n, P5245259966737938416.a n = (A082427 (n + 1) : ℚ)

end A082427

/-! ## A082427.P15830743196973805643

`Δ[(n+1)*(a(n-1)-2)]` with `a(0)=2, a(1)=3`
-/

namespace A082427.P15830743196973805643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  (n + 1 : ℤ) * (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082427.P15830743196973805643

namespace A082427

/-- `Δ[(n+1)*(a(n-1)-2)]` -/
def P15830743196973805643.Spec : Prop :=
  ∀ n, P15830743196973805643.a n = A082427 (n + 1)

end A082427

/-! ## A082427.P470748813435279699

`Δ[(a(n-1)-2)*(ϕ²-(ϕ-n))]` with `a(0)=2, a(1)=3`
-/

namespace A082427.P470748813435279699
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  (f1 (n - 1) - 2) * (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082427.P470748813435279699

namespace A082427

/-- `Δ[(a(n-1)-2)*(ϕ²-(ϕ-n))]` -/
def P470748813435279699.Spec : Prop :=
  ∀ n, P470748813435279699.a n = (A082427 (n + 1) : ℝ)

end A082427

/-! ## A082427.P10527773255581053609

`2*A082425(n+1)-A074143(n+1)`
-/

namespace A082427.P10527773255581053609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082425 (n + 1) - A074143 (n + 1)

end

end A082427.P10527773255581053609

namespace A082427

/-- `2*A082425(n+1)-A074143(n+1)` -/
def P10527773255581053609.Spec : Prop :=
  ∀ n, P10527773255581053609.a n = A082427 (n + 1)

end A082427

/-!
# A082428: a(1) = 1; a(n) = 3 + n * Sum_{k=1..n-1} a(k).

The programs for A082428, the canonical program `A082428.P17802955614035557393` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082428 has offset 1).

The definition of A082428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082428.P17802955614035557393

`(n+3)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=5, a(2)=21`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082428

/-- `(n+3)*a(n-1)-n*a(n-2)` -/
def P17802955614035557393.Spec : Prop :=
  ∀ n, P17802955614035557393.a n = A082428 (n + 1)

theorem P17802955614035557393.correct : P17802955614035557393.Spec := by
  intro n
  simp only [A082428, Nat.add_sub_cancel]

end A082428

/-! ## A082428.P17561498490824446063

`((n+1)²*a(n-1)-3)/n` with `a(0)=1, a(1)=5`
-/

namespace A082428.P17561498490824446063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (((n + 1) ^ 2 : ℚ) * a (n - 1) - 3) / (n : ℚ)

end

end A082428.P17561498490824446063

namespace A082428

/-- `((n+1)²*a(n-1)-3)/n` -/
def P17561498490824446063.Spec : Prop :=
  ∀ n, P17561498490824446063.a n = (A082428 (n + 1) : ℚ)

end A082428

/-! ## A082428.P232221909016431367

`Δ[(n+1)*a(n-1)-(n-3)]` with `a(0)=1, a(1)=2`
-/

namespace A082428.P232221909016431367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1 : ℤ) * f1 (n - 1) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082428.P232221909016431367

namespace A082428

/-- `Δ[(n+1)*a(n-1)-(n-3)]` -/
def P232221909016431367.Spec : Prop :=
  ∀ n, P232221909016431367.a n = A082428 (n + 1)

end A082428

/-! ## A082428.P8879868946338878048

`A007808(n+1)+A007808(n+1)-A082425(n+1)`
-/

namespace A082428.P8879868946338878048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 (n + 1) + (A007808 (n + 1) - A082425 (n + 1))

end

end A082428.P8879868946338878048

namespace A082428

/-- `A007808(n+1)+A007808(n+1)-A082425(n+1)` -/
def P8879868946338878048.Spec : Prop :=
  ∀ n, P8879868946338878048.a n = A082428 (n + 1)

end A082428

/-! ## A082428.P9384245222248568144

`A082427(n+1)+A082430(n+1)-A082425(n+1)`
-/

namespace A082428.P9384245222248568144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082427 (n + 1) + (A082430 (n + 1) - A082425 (n + 1))

end

end A082428.P9384245222248568144

namespace A082428

/-- `A082427(n+1)+A082430(n+1)-A082425(n+1)` -/
def P9384245222248568144.Spec : Prop :=
  ∀ n, P9384245222248568144.a n = A082428 (n + 1)

end A082428

/-!
# A082429: a(n) is the cardinality of the smallest subset S1 of S={1,2,3,...,n} such that every element of S is either in S1 or is the sum of two distinct elements of S1.

The programs for A082429, there is no canonical definition to state claims against.
-/

/-! ## A082429.P16265548502469691682

`floor(log2(A027585(n+2)))`
-/

namespace A082429.P16265548502469691682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A027585 (n + 2)).toNat

end

end A082429.P16265548502469691682

/-! ## A082429.P17832269576004057996

`A226764(A190323(n+1))`
-/

namespace A082429.P17832269576004057996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (A190323 (n + 1)).toNat

end

end A082429.P17832269576004057996

/-! ## A082429.P13299009824631095769

`A135664(A189133(n+2)+2*n+1)`
-/

namespace A082429.P13299009824631095769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A189133 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A082429.P13299009824631095769

/-! ## A082429.P13552695924430785967

`A085141(A378724(3*(n+1))+A092695(n))`
-/

namespace A082429.P13552695924430785967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A378724 (3 * (n + 1)) + A092695 n).toNat

end

end A082429.P13552695924430785967

/-! ## A082429.P5073384554894099679

`A029836(A239958(n+1))`
-/

namespace A082429.P5073384554894099679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029836 (A239958 (n + 1)).toNat

end

end A082429.P5073384554894099679

/-!
# A082430: a(1)=1; for n > 1, a(n) = n*(a(n-1) + a(n-2) + ... + a(2) + a(1)) + 4.

The programs for A082430, the canonical program `A082430.P12159741033291370128` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082430 has offset 1).

The definition of A082430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082430.P12159741033291370128

`(n+3)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=6, a(2)=25`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082430

/-- `(n+3)*a(n-1)-n*a(n-2)` -/
def P12159741033291370128.Spec : Prop :=
  ∀ n, P12159741033291370128.a n = A082430 (n + 1)

theorem P12159741033291370128.correct : P12159741033291370128.Spec := by
  intro n
  simp only [A082430, Nat.add_sub_cancel]

end A082430

/-! ## A082430.P5205547683845753324

`((n+1)²*a(n-1)-4)/n` with `a(0)=1, a(1)=6`
-/

namespace A082430.P5205547683845753324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (((n + 1) ^ 2 : ℚ) * a (n - 1) - 4) / (n : ℚ)

end

end A082430.P5205547683845753324

namespace A082430

/-- `((n+1)²*a(n-1)-4)/n` -/
def P5205547683845753324.Spec : Prop :=
  ∀ n, P5205547683845753324.a n = (A082430 (n + 1) : ℚ)

end A082430

/-! ## A082430.P9451380758833679331

`Δ[8/2+(n+1)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A082430.P9451380758833679331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (8 : ℚ) / 2 + (n + 1 : ℚ) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082430.P9451380758833679331

namespace A082430

/-- `Δ[8/2+(n+1)*a(n-1)]` -/
def P9451380758833679331.Spec : Prop :=
  ∀ n, P9451380758833679331.a n = (A082430 (n + 1) : ℚ)

end A082430

/-! ## A082430.P8988614631086639469

`A074143(n+1)+A082428(n+1)-A082425(n+1)`
-/

namespace A082430.P8988614631086639469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1) + (A082428 (n + 1) - A082425 (n + 1))

end

end A082430.P8988614631086639469

namespace A082430

/-- `A074143(n+1)+A082428(n+1)-A082425(n+1)` -/
def P8988614631086639469.Spec : Prop :=
  ∀ n, P8988614631086639469.a n = A082430 (n + 1)

end A082430

/-! ## A082430.P8745524462764783410

`A082425(n+1)+A082428(n+1)-A082427(n+1)`
-/

namespace A082430.P8745524462764783410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082425 (n + 1) + (A082428 (n + 1) - A082427 (n + 1))

end

end A082430.P8745524462764783410

namespace A082430

/-- `A082425(n+1)+A082428(n+1)-A082427(n+1)` -/
def P8745524462764783410.Spec : Prop :=
  ∀ n, P8745524462764783410.a n = A082430 (n + 1)

end A082430

/-! ## A082430.P14020233866451291918

`A074143(n+1)+A383437(n+1)-A007808(n+1)`
-/

namespace A082430.P14020233866451291918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1) + (A383437 (n + 1) - A007808 (n + 1))

end

end A082430.P14020233866451291918

namespace A082430

/-- `A074143(n+1)+A383437(n+1)-A007808(n+1)` -/
def P14020233866451291918.Spec : Prop :=
  ∀ n, P14020233866451291918.a n = A082430 (n + 1)

end A082430

/-!
# A082431: a(n) = the smallest prime p such that there are exactly n sets of consecutive primes, each of which has an arithmetic mean of p.

The programs for A082431, there is no canonical definition to state claims against.
-/

/-! ## A082431.P14497257786679803360

`A007918(A096695(n)%A056570(n+3))`
-/

namespace A082431.P14497257786679803360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A096695 n) (A056570 (n + 3))).toNat

end

end A082431.P14497257786679803360

/-! ## A082431.P3912188585305932198

`A020639(A096695(n)*A096705(3*n+1))`
-/

namespace A082431.P3912188585305932198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A096695 n * A096705 (3 * n + 1)).toNat

end

end A082431.P3912188585305932198

/-!
# A082434: Let q_n be least prime > x_n := 1 + 2*n!; sequence gives a(n) = q_n-x_n+1.

The programs for A082434, there is no canonical definition to state claims against.
-/

/-! ## A082434.P3991253712661126703

`A190663(n+1)-A052849(n+1)`
-/

namespace A082434.P3991253712661126703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190663 (n + 1) - A052849 (n + 1)

end

end A082434.P3991253712661126703

/-! ## A082434.P14321085961601434810

`A190662(n+1)/A190663(n+1)`
-/

namespace A082434.P14321085961601434810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190662 (n + 1) : ℚ) / (A190663 (n + 1) : ℚ)

end

end A082434.P14321085961601434810

/-!
# A082435: Palindromic primes with middle digit 0.

The programs for A082435, there is no canonical definition to state claims against.
-/

/-! ## A082435.P1186544771727575192

`∩[A002385(n+1), A002113(A017377(n)+1)]`
-/

namespace A082435.P1186544771727575192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A017377 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082435.P1186544771727575192

/-! ## A082435.P8730620028589123972

`∩[A350836(n+1), A002113(A017377(n)+1)]`
-/

namespace A082435.P8730620028589123972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A017377 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082435.P8730620028589123972

/-! ## A082435.P16656010170967371680

`∩[A350836(n+1), A056525(A017377(n)+1)]`
-/

namespace A082435.P16656010170967371680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017377 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082435.P16656010170967371680

/-! ## A082435.P16530635274034847630

`∩[A002385(n+1), A029950(A017377(n)+2)]`
-/

namespace A082435.P16530635274034847630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (A017377 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082435.P16530635274034847630

/-! ## A082435.P9160431912252323400

`∩[A002385(n+1), A056525(A017365(n)+2)]`
-/

namespace A082435.P9160431912252323400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017365 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082435.P9160431912252323400

/-! ## A082435.P13185531935358575844

`∩[A069217(n+1), A029950(A017377(n)+2)]`
-/

namespace A082435.P13185531935358575844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (A017377 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082435.P13185531935358575844

/-!
# A082436: Palindromic primes with middle digit 1.

The programs for A082436, there is no canonical definition to state claims against.
-/

/-! ## A082436.P12140905912428308567

`∩[A002385(n+1), A056525(A017293(n)-1)]`
-/

namespace A082436.P12140905912428308567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017293 n - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082436.P12140905912428308567

/-! ## A082436.P15170950838736298930

`∩[A350836(n+1), A056525(A017377(n)+2)]`
-/

namespace A082436.P15170950838736298930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017377 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082436.P15170950838736298930

/-! ## A082436.P7723216064179989181

`∩[A002385(n+1), A056525(A017305(n)-2)]`
-/

namespace A082436.P7723216064179989181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082436.P7723216064179989181

/-!
# A082438: Palindromic primes with middle digit 2.

The programs for A082438, there is no canonical definition to state claims against.
-/

/-! ## A082438.P4506183371787953705

`∩[A072382(n+1), A076609(n+1)]`
-/

namespace A082438.P4506183371787953705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082438.P4506183371787953705

/-! ## A082438.P9106062997196923656

`∩[A072382(n+1), A076611(n+1)]`
-/

namespace A082438.P9106062997196923656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082438.P9106062997196923656

/-! ## A082438.P3586555420891455366

`∩[A002385(n+1), A056525(A017293(n))]`
-/

namespace A082438.P3586555420891455366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017293 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082438.P3586555420891455366

/-! ## A082438.P11715836423198194588

`∩[A002385(n+1), A056525(A017305(n)-1)]`
-/

namespace A082438.P11715836423198194588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082438.P11715836423198194588

/-! ## A082438.P7017691363242008920

`∩[A350836(n+1), A056525(A017305(n)-1)]`
-/

namespace A082438.P7017691363242008920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082438.P7017691363242008920

/-!
# A082439: Palindromic primes with middle digit 3.

The programs for A082439, there is no canonical definition to state claims against.
-/

/-! ## A082439.P605646373995321645

`∩[A002385(n+1), A056525(A017305(n))]`
-/

namespace A082439.P605646373995321645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082439.P605646373995321645

/-! ## A082439.P158011691258299806

`∩[A324989(n+1), A056525(A017305(n))]`
-/

namespace A082439.P158011691258299806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082439.P158011691258299806

/-! ## A082439.P9612521457555244706

`∩[A327325(n+1), A056525(A017305(n))]`
-/

namespace A082439.P9612521457555244706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082439.P9612521457555244706

/-! ## A082439.P4081813001952201598

`∩[A340252(n+1), A056525(A017305(n))]`
-/

namespace A082439.P4081813001952201598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082439.P4081813001952201598

/-! ## A082439.P4986148731109988377

`∩[A350836(n+1), A056525(A017305(n))]`
-/

namespace A082439.P4986148731109988377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082439.P4986148731109988377

/-! ## A082439.P913852535175153071

`∩[A002385(n+1), A056525(A017293(n)+1)]`
-/

namespace A082439.P913852535175153071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017293 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082439.P913852535175153071

/-! ## A082439.P3364631809391729766

`∩[A069217(n+1), A056525(A017293(n)+1)]`
-/

namespace A082439.P3364631809391729766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017293 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082439.P3364631809391729766

/-!
# A082440: Palindromic primes with middle digit 4.

The programs for A082440, there is no canonical definition to state claims against.
-/

/-! ## A082440.P11349233626283039642

`∩[A002385(n+1), A056525(A017305(n)+1)]`
-/

namespace A082440.P11349233626283039642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082440.P11349233626283039642

/-! ## A082440.P3475777756661067698

`∩[A350836(n+1), A056525(A017305(n)+1)]`
-/

namespace A082440.P3475777756661067698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082440.P3475777756661067698

/-! ## A082440.P7244286442962651776

`∩[A002385(n+1), A056525(A017293(n)+2)]`
-/

namespace A082440.P7244286442962651776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017293 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082440.P7244286442962651776

/-! ## A082440.P5611943728291352227

`∩[A069217(n+1), A056525(A017293(n)+2)]`
-/

namespace A082440.P5611943728291352227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017293 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082440.P5611943728291352227

/-!
# A082441: Palindromic primes with middle digit 5.

The programs for A082441, there is no canonical definition to state claims against.
-/

/-! ## A082441.P8849874811169431935

`∩[A002385(n+1), A056525(A017305(n)+2)]`
-/

namespace A082441.P8849874811169431935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082441.P8849874811169431935

/-! ## A082441.P9743320164115716212

`∩[A002385(n+1), A056525(A017341(n)-1)]`
-/

namespace A082441.P9743320164115716212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082441.P9743320164115716212

/-! ## A082441.P492790901385501721

`∩[A324989(n+1), A056525(A017305(n)+2)]`
-/

namespace A082441.P492790901385501721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082441.P492790901385501721

/-! ## A082441.P9971551381205445658

`∩[A324989(n+1), A056525(A017341(n)-1)]`
-/

namespace A082441.P9971551381205445658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082441.P9971551381205445658

/-! ## A082441.P4042326846965795324

`∩[A327325(n+1), A056525(A017305(n)+2)]`
-/

namespace A082441.P4042326846965795324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017305 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082441.P4042326846965795324

/-!
# A082442: Palindromic primes with middle digit 6.

The programs for A082442, there is no canonical definition to state claims against.
-/

/-! ## A082442.P9049160649853897250

`∩[A002385(n+1), A056525(A017341(n))]`
-/

namespace A082442.P9049160649853897250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082442.P9049160649853897250

/-! ## A082442.P3029765954804172798

`∩[A324989(n+1), A056525(A017341(n))]`
-/

namespace A082442.P3029765954804172798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082442.P3029765954804172798

/-! ## A082442.P8524733649584474307

`∩[A327325(n+1), A056525(A017341(n))]`
-/

namespace A082442.P8524733649584474307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082442.P8524733649584474307

/-! ## A082442.P12838655563521008918

`∩[A340252(n+1), A056525(A017341(n))]`
-/

namespace A082442.P12838655563521008918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082442.P12838655563521008918

/-! ## A082442.P9341758849620915117

`∩[A350836(n+1), A056525(A017341(n))]`
-/

namespace A082442.P9341758849620915117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082442.P9341758849620915117

/-!
# A082443: Palindromic primes with middle digit 7.

The programs for A082443, there is no canonical definition to state claims against.
-/

/-! ## A082443.P11215275397477494837

`p?[A056525(10*n+7)]`
-/

namespace A082443.P11215275397477494837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (10 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082443.P11215275397477494837

/-! ## A082443.P17796544453210868996

`p?[A076609(Δ[A001844(n)])]`
-/

namespace A082443.P17796544453210868996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082443.P17796544453210868996

/-! ## A082443.P4377900385859779146

`p?[A076609(Δ[A046092(n)])]`
-/

namespace A082443.P4377900385859779146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082443.P4377900385859779146

/-! ## A082443.P6547185449086085174

`p?[A068061(Δ[A147875(n)])]`
-/

namespace A082443.P6547185449086085174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068061 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082443.P6547185449086085174

/-! ## A082443.P14470577479393707073

`p?[A068061(A016885(n)+1)]`
-/

namespace A082443.P14470577479393707073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068061 (A016885 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082443.P14470577479393707073

/-!
# A082444: Palindromic primes with middle digit 8.

The programs for A082444, there is no canonical definition to state claims against.
-/

/-! ## A082444.P4162792068164120024

`∩[A002385(n+1), A029950(A017377(n))]`
-/

namespace A082444.P4162792068164120024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (A017377 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082444.P4162792068164120024

/-! ## A082444.P2462892304891082982

`∩[A002385(n+1), A056525(A017365(n))]`
-/

namespace A082444.P2462892304891082982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017365 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082444.P2462892304891082982

/-! ## A082444.P20853473453983675

`∩[A002385(n+1), A056525(A017341(n)+2)]`
-/

namespace A082444.P20853473453983675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082444.P20853473453983675

/-! ## A082444.P12312660519172954505

`∩[A324989(n+1), A056525(A017341(n)+2)]`
-/

namespace A082444.P12312660519172954505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082444.P12312660519172954505

/-! ## A082444.P14906829174241928214

`∩[A327325(n+1), A056525(A017341(n)+2)]`
-/

namespace A082444.P14906829174241928214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082444.P14906829174241928214

/-! ## A082444.P6473433705241707791

`∩[A340252(n+1), A056525(A017341(n)+2)]`
-/

namespace A082444.P6473433705241707791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082444.P6473433705241707791

/-! ## A082444.P10508853264372747574

`∩[A350836(n+1), A056525(A017341(n)+2)]`
-/

namespace A082444.P10508853264372747574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017341 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082444.P10508853264372747574

/-! ## A082444.P12769131185846214553

`∩[A350836(n+1), A056525(A017377(n)-1)]`
-/

namespace A082444.P12769131185846214553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017377 n - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082444.P12769131185846214553

/-!
# A082445: Palindromic primes with middle digit 9.

The programs for A082445, there is no canonical definition to state claims against.
-/

/-! ## A082445.P17275157231221967020

`∩[A002385(n+1), A002113(A017377(n))]`
-/

namespace A082445.P17275157231221967020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A017377 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082445.P17275157231221967020

/-! ## A082445.P13686310198834584083

`∩[A169829(n+1), A002113(A017377(n))]`
-/

namespace A082445.P13686310198834584083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A017377 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082445.P13686310198834584083

/-! ## A082445.P15518198596359599611

`∩[A324989(n+1), A002113(A017377(n))]`
-/

namespace A082445.P15518198596359599611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A017377 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082445.P15518198596359599611

/-! ## A082445.P12575385610046201852

`∩[A327325(n+1), A002113(A017377(n))]`
-/

namespace A082445.P12575385610046201852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A017377 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082445.P12575385610046201852

/-! ## A082445.P9337654051182878663

`∩[A340252(n+1), A002113(A017377(n))]`
-/

namespace A082445.P9337654051182878663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A017377 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082445.P9337654051182878663

/-! ## A082445.P10403024469207048993

`∩[A350836(n+1), A002113(A017377(n))]`
-/

namespace A082445.P10403024469207048993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A017377 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082445.P10403024469207048993

/-! ## A082445.P9752990874038427540

`∩[A002385(n+1), A029950(A017377(n)+1)]`
-/

namespace A082445.P9752990874038427540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (A017377 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082445.P9752990874038427540

/-! ## A082445.P12782728658212698323

`∩[A002385(n+1), A056525(A017365(n)+1)]`
-/

namespace A082445.P12782728658212698323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A017365 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082445.P12782728658212698323

/-!
# A082446: a(0)=0, a(1)=1, a(2)=0; thereafter, if k>=0 and a block of the first 3*2^k terms is known, then a(3*2^k+i)=1-a(i) for 0<=i<3*2^k.

The programs for A082446, the canonical program `A082446.P9602963096395604126` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082446 has offset 0).

The definition of A082446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082446.P10010457758357438382

`char[comp[xor(n, 2*n)]-ceil(n/2)]`
-/

namespace A082446.P10010457758357438382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - ⌈(n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A082446.P10010457758357438382

namespace A082446

/-- `char[comp[xor(n, 2*n)]-ceil(n/2)]` -/
def P10010457758357438382.Spec : Prop :=
  ∀ n, (P10010457758357438382.a n : ℤ) = A082446 n

end A082446

/-! ## A082446.P5828021576227473582

`char[comp[3*n]-char[xor(n, Δ[n²])]]`
-/

namespace A082446.P5828021576227473582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A082446.P5828021576227473582

namespace A082446

/-- `char[comp[3*n]-char[xor(n, Δ[n²])]]` -/
def P5828021576227473582.Spec : Prop :=
  ∀ n, (P5828021576227473582.a n : ℤ) = A082446 n

end A082446

/-! ## A082446.P7408402542078517211

`char[xor(char[xor(n, Δ[n²])], comp[3*n])]`
-/

namespace A082446.P7408402542078517211
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (if ∃ j, f2 j = (n : ℤ) then 1 else 0) (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A082446.P7408402542078517211

namespace A082446

/-- `char[xor(char[xor(n, Δ[n²])], comp[3*n])]` -/
def P7408402542078517211.Spec : Prop :=
  ∀ n, (P7408402542078517211.a n : ℤ) = A082446 n

end A082446

/-! ## A082446.P11295117074226195543

`char[char[xor(n, 2*n)]+floor(3*n/2)]`
-/

namespace A082446.P11295117074226195543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ⌊3 * ((n : ℚ) / 2)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A082446.P11295117074226195543

namespace A082446

/-- `char[char[xor(n, 2*n)]+floor(3*n/2)]` -/
def P11295117074226195543.Spec : Prop :=
  ∀ n, (P11295117074226195543.a n : ℤ) = A082446 n

end A082446

/-! ## A082446.P12545585256849658042

`char[∑[gcd(2, n)]-(2-char[xor(n, 2*n)])]`
-/

namespace A082446.P12545585256849658042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A082446.P12545585256849658042

namespace A082446

/-- `char[∑[gcd(2, n)]-(2-char[xor(n, 2*n)])]` -/
def P12545585256849658042.Spec : Prop :=
  ∀ n, (P12545585256849658042.a n : ℤ) = A082446 n

end A082446

/-! ## A082446.P9602963096395604126

`A010060(A006369(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082446

/-- `A010060(A006369(n))` -/
def P9602963096395604126.Spec : Prop :=
  ∀ n, P9602963096395604126.a n = A082446 n

theorem P9602963096395604126.correct : P9602963096395604126.Spec := by
  intro n
  simp only [A082446]

end A082446

/-! ## A082446.P8686356363456077868

`A059448(A385457(n))`
-/

namespace A082446.P8686356363456077868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (A385457 n).toNat

end

end A082446.P8686356363456077868

namespace A082446

/-- `A059448(A385457(n))` -/
def P8686356363456077868.Spec : Prop :=
  ∀ n, P8686356363456077868.a n = A082446 n

end A082446

/-! ## A082446.P16212326430655120931

`A010060(A004772(n+1))`
-/

namespace A082446.P16212326430655120931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004772 (n + 1)).toNat

end

end A082446.P16212326430655120931

namespace A082446

/-- `A010060(A004772(n+1))` -/
def P16212326430655120931.Spec : Prop :=
  ∀ n, P16212326430655120931.a n = A082446 n

end A082446

/-! ## A082446.P7117665876658886717

`A010060(A042965(n+1))`
-/

namespace A082446.P7117665876658886717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A042965 (n + 1)).toNat

end

end A082446.P7117665876658886717

namespace A082446

/-- `A010060(A042965(n+1))` -/
def P7117665876658886717.Spec : Prop :=
  ∀ n, P7117665876658886717.a n = A082446 n

end A082446

/-! ## A082446.P9664997727372146481

`and(A254614(n+1), A285952(n+1))`
-/

namespace A082446.P9664997727372146481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A254614 (n + 1)) (A285952 (n + 1))

end

end A082446.P9664997727372146481

namespace A082446

/-- `and(A254614(n+1), A285952(n+1))` -/
def P9664997727372146481.Spec : Prop :=
  ∀ n, P9664997727372146481.a n = A082446 n

end A082446

/-! ## A082446.P1283942822045425617

`A285952(n+1)-A285949(n+2)*A285952(n+1)`
-/

namespace A082446.P1283942822045425617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285952 (n + 1) - A285949 (n + 2) * A285952 (n + 1)

end

end A082446.P1283942822045425617

namespace A082446

/-- `A285952(n+1)-A285949(n+2)*A285952(n+1)` -/
def P1283942822045425617.Spec : Prop :=
  ∀ n, P1283942822045425617.a n = A082446 n

end A082446

/-! ## A082446.P6457186936331080677

`A010060(2*n+1-A131737(n+2))`
-/

namespace A082446.P6457186936331080677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ((2 * n + 1 : ℤ) - A131737 (n + 2)).toNat

end

end A082446.P6457186936331080677

namespace A082446

/-- `A010060(2*n+1-A131737(n+2))` -/
def P6457186936331080677.Spec : Prop :=
  ∀ n, P6457186936331080677.a n = A082446 n

end A082446

/-! ## A082446.P5275273004999994744

`A095190(A074305(n))`
-/

namespace A082446.P5275273004999994744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A074305 n).toNat

end

end A082446.P5275273004999994744

namespace A082446

/-- `A095190(A074305(n))` -/
def P5275273004999994744.Spec : Prop :=
  ∀ n, P5275273004999994744.a n = A082446 n

end A082446

/-! ## A082446.P6165087569269194150

`A095190(A226122(n))`
-/

namespace A082446.P6165087569269194150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A226122 n).toNat

end

end A082446.P6165087569269194150

namespace A082446

/-- `A095190(A226122(n))` -/
def P6165087569269194150.Spec : Prop :=
  ∀ n, P6165087569269194150.a n = A082446 n

end A082446

/-! ## A082446.P8558367616789487378

`A095190(A131452(n))`
-/

namespace A082446.P8558367616789487378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A131452 n).toNat

end

end A082446.P8558367616789487378

namespace A082446

/-- `A095190(A131452(n))` -/
def P8558367616789487378.Spec : Prop :=
  ∀ n, P8558367616789487378.a n = A082446 n

end A082446

/-! ## A082446.P18113240814593455683

`A095190(A367286(n))`
-/

namespace A082446.P18113240814593455683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A367286 n).toNat

end

end A082446.P18113240814593455683

namespace A082446

/-- `A095190(A367286(n))` -/
def P18113240814593455683.Spec : Prop :=
  ∀ n, P18113240814593455683.a n = A082446 n

end A082446

/-! ## A082446.P8462177417146085184

`A010060(A047394(n+1))`
-/

namespace A082446.P8462177417146085184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A047394 (n + 1)).toNat

end

end A082446.P8462177417146085184

namespace A082446

/-- `A010060(A047394(n+1))` -/
def P8462177417146085184.Spec : Prop :=
  ∀ n, P8462177417146085184.a n = A082446 n

end A082446

/-! ## A082446.P7941336550589482677

`A010060(A047395(n+1))`
-/

namespace A082446.P7941336550589482677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A047395 (n + 1)).toNat

end

end A082446.P7941336550589482677

namespace A082446

/-- `A010060(A047395(n+1))` -/
def P7941336550589482677.Spec : Prop :=
  ∀ n, P7941336550589482677.a n = A082446 n

end A082446

/-! ## A082446.P5850355499326101557

`A010060(A047407(n+1))`
-/

namespace A082446.P5850355499326101557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A047407 (n + 1)).toNat

end

end A082446.P5850355499326101557

namespace A082446

/-- `A010060(A047407(n+1))` -/
def P5850355499326101557.Spec : Prop :=
  ∀ n, P5850355499326101557.a n = A082446 n

end A082446

/-! ## A082446.P2272031681272364327

`A010060(A047413(n+1))`
-/

namespace A082446.P2272031681272364327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A047413 (n + 1)).toNat

end

end A082446.P2272031681272364327

namespace A082446

/-- `A010060(A047413(n+1))` -/
def P2272031681272364327.Spec : Prop :=
  ∀ n, P2272031681272364327.a n = A082446 n

end A082446

/-!
# A082447: a(n) = the number k such that s(k)=0 where s(0)=n and s(i)=s(i-1)-(s(i-1) modulo (i+1)).

The programs for A082447, there is no canonical definition to state claims against.
-/

/-! ## A082447.P14529765730538901543

`A073047(n+1)-A001222(A025473(n+3))`
-/

namespace A082447.P14529765730538901543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) - A001222 (A025473 (n + 3)).toNat

end

end A082447.P14529765730538901543

/-! ## A082447.P69247383085110115

`A073047(n+1)+A008683(A000040(n+1))`
-/

namespace A082447.P69247383085110115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) + A008683 (A000040 (n + 1)).toNat

end

end A082447.P69247383085110115

/-! ## A082447.P943163150659959411

`A073047(n+1)-A286987(A286989(n+1))`
-/

namespace A082447.P943163150659959411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) - A286987 (A286989 (n + 1)).toNat

end

end A082447.P943163150659959411

/-! ## A082447.P3461216838335330799

`A073047(A006370(2*n)+1)-1`
-/

namespace A082447.P3461216838335330799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (A006370 (2 * n) + 1).toNat - 1

end

end A082447.P3461216838335330799

/-! ## A082447.P7846438302312100122

`A073047(A130747(2*n+1))-1`
-/

namespace A082447.P7846438302312100122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (A130747 (2 * n + 1)).toNat - 1

end

end A082447.P7846438302312100122

/-! ## A082447.P14966744090538558557

`A073047(n+1)-A028920(2*n)`
-/

namespace A082447.P14966744090538558557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) - A028920 (2 * n)

end

end A082447.P14966744090538558557

/-! ## A082447.P10894193916577244740

`A073047(n+1)-A000035(2*n+1)`
-/

namespace A082447.P10894193916577244740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) - A000035 (2 * n + 1)

end

end A082447.P10894193916577244740

/-! ## A082447.P16619717725499806341

`A073047(n+1)-A023201(2*(n+2))%2`
-/

namespace A082447.P16619717725499806341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) - Int.tmod (A023201 (2 * (n + 2))) 2

end

end A082447.P16619717725499806341

/-! ## A082447.P1945551099654259371

`A073047(n+1)-A324732(p?[A000120(n)])`
-/

namespace A082447.P1945551099654259371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) - A324732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082447.P1945551099654259371

/-! ## A082447.P14407570283405264741

`A073047(n+1)+A008683(A073024(n+1))`
-/

namespace A082447.P14407570283405264741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) + A008683 (A073024 (n + 1)).toNat

end

end A082447.P14407570283405264741

/-! ## A082447.P275285306283777584

`A073047(n+1)-A324732(p?[A073047(n+1)])`
-/

namespace A082447.P275285306283777584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) - A324732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082447.P275285306283777584

/-! ## A082447.P2756629939870750732

`A073047(n+1)+A008683(A073026(n+1))`
-/

namespace A082447.P2756629939870750732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) + A008683 (A073026 (n + 1)).toNat

end

end A082447.P2756629939870750732

/-! ## A082447.P8085581396051264887

`A073047(n+1)+A008683(A005385(n+1))`
-/

namespace A082447.P8085581396051264887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) + A008683 (A005385 (n + 1)).toNat

end

end A082447.P8085581396051264887

/-! ## A082447.P5904274650709503896

`∑[A130779(A130747(n+1)²)]`
-/

namespace A082447.P5904274650709503896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A130747 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082447.P5904274650709503896

/-! ## A082447.P10924052331603467646

`A073047(n+1)-A130747(A002491(n+1))`
-/

namespace A082447.P10924052331603467646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (n + 1) - A130747 (A002491 (n + 1)).toNat

end

end A082447.P10924052331603467646

/-! ## A082447.P8546004521159209133

`A072828(n+1)%A073047(n+1)`
-/

namespace A082447.P8546004521159209133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A073047 (n + 1))

end

end A082447.P8546004521159209133

/-!
# A082448: Add 1, multiply by 1, add 2, multiply by 2, etc.; start with 4.

The programs for A082448, the canonical program `A082448.P17099624679947118891` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082448 has offset 0).

The definition of A082448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082448.P6884389265459574145

`A019462(n)+floor(n/2)!`
-/

namespace A082448.P6884389265459574145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 n + (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A082448.P6884389265459574145

namespace A082448

/-- `A019462(n)+floor(n/2)!` -/
def P6884389265459574145.Spec : Prop :=
  ∀ n, P6884389265459574145.a n = A082448 n

theorem P6884389265459574145.correct : P6884389265459574145.Spec := by
  intro n
  simp only [A082448, Nat.add_sub_cancel, A082448.P6884389265459574145.a, A082448.P17099624679947118891.a, A019462, A019462.P18100823857315622739.a, A019463, A019463.P7413512839023386045.a, A019460, A019460.P18320416044288335793.a, A019461, A019461.P12105906875557875900.a, A081123, A081123.P8894457904069050108.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082448

/-! ## A082448.P10742301189029581476

`A019460(n)+2*floor(n/2)!`
-/

namespace A082448.P10742301189029581476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + (2 * Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A082448.P10742301189029581476

namespace A082448

/-- `A019460(n)+2*floor(n/2)!` -/
def P10742301189029581476.Spec : Prop :=
  ∀ n, P10742301189029581476.a n = A082448 n

theorem P10742301189029581476.correct : P10742301189029581476.Spec := by
  intro n
  simp only [A082448, Nat.add_sub_cancel, A082448.P10742301189029581476.a, A082448.P17099624679947118891.a, A019460, A019460.P18320416044288335793.a, A019463, A019463.P7413512839023386045.a, A019461, A019461.P12105906875557875900.a, A081123, A081123.P8894457904069050108.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082448

/-! ## A082448.P17099624679947118891

`A019463(n)+3*floor(n/2)!`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082448

/-- `A019463(n)+3*floor(n/2)!` -/
def P17099624679947118891.Spec : Prop :=
  ∀ n, P17099624679947118891.a n = A082448 n

theorem P17099624679947118891.correct : P17099624679947118891.Spec := by
  intro n
  simp only [A082448]

end A082448

/-! ## A082448.P1912153677674228114

`A019461(n)+4*floor(n/2)!`
-/

namespace A082448.P1912153677674228114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 n + (4 * Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A082448.P1912153677674228114

namespace A082448

/-- `A019461(n)+4*floor(n/2)!` -/
def P1912153677674228114.Spec : Prop :=
  ∀ n, P1912153677674228114.a n = A082448 n

theorem P1912153677674228114.correct : P1912153677674228114.Spec := by
  intro n
  simp only [A082448, Nat.add_sub_cancel, A082448.P1912153677674228114.a, A082448.P17099624679947118891.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082448

/-! ## A082448.P3006298195357274000

`A081123(n)+A019462(n)`
-/

namespace A082448.P3006298195357274000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n + A019462 n

end

end A082448.P3006298195357274000

namespace A082448

/-- `A081123(n)+A019462(n)` -/
def P3006298195357274000.Spec : Prop :=
  ∀ n, P3006298195357274000.a n = A082448 n

theorem P3006298195357274000.correct : P3006298195357274000.Spec := by
  intro n
  simp only [A082448, Nat.add_sub_cancel, A082448.P3006298195357274000.a, A082448.P17099624679947118891.a, A019462, A019462.P18100823857315622739.a, A019463, A019463.P7413512839023386045.a, A081123, A081123.P8894457904069050108.a, A019460, A019460.P18320416044288335793.a, A019461, A019461.P12105906875557875900.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082448

/-! ## A082448.P3463448506831450533

`A019460(n)+A019460(n)-A019461(n)`
-/

namespace A082448.P3463448506831450533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + (A019460 n - A019461 n)

end

end A082448.P3463448506831450533

namespace A082448

/-- `A019460(n)+A019460(n)-A019461(n)` -/
def P3463448506831450533.Spec : Prop :=
  ∀ n, P3463448506831450533.a n = A082448 n

theorem P3463448506831450533.correct : P3463448506831450533.Spec := by
  intro n
  simp only [A082448, Nat.add_sub_cancel, A082448.P3463448506831450533.a, A082448.P17099624679947118891.a, A019460, A019460.P18320416044288335793.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082448

/-! ## A082448.P3048495803772419540

`A019460(n)+A019462(n)-A019463(n)`
-/

namespace A082448.P3048495803772419540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + (A019462 n - A019463 n)

end

end A082448.P3048495803772419540

namespace A082448

/-- `A019460(n)+A019462(n)-A019463(n)` -/
def P3048495803772419540.Spec : Prop :=
  ∀ n, P3048495803772419540.a n = A082448 n

theorem P3048495803772419540.correct : P3048495803772419540.Spec := by
  intro n
  simp only [A082448, Nat.add_sub_cancel, A082448.P3048495803772419540.a, A082448.P17099624679947118891.a, A019460, A019460.P18320416044288335793.a, A019462, A019462.P18100823857315622739.a, A019463, A019463.P7413512839023386045.a, A019461, A019461.P12105906875557875900.a, A081123, A081123.P8894457904069050108.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082448

/-! ## A082448.P3426755286423465950

`A019462(n)+A019463(n)-A019461(n)`
-/

namespace A082448.P3426755286423465950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 n + (A019463 n - A019461 n)

end

end A082448.P3426755286423465950

namespace A082448

/-- `A019462(n)+A019463(n)-A019461(n)` -/
def P3426755286423465950.Spec : Prop :=
  ∀ n, P3426755286423465950.a n = A082448 n

theorem P3426755286423465950.correct : P3426755286423465950.Spec := by
  intro n
  simp only [A082448, Nat.add_sub_cancel, A082448.P3426755286423465950.a, A082448.P17099624679947118891.a, A019461, A019461.P12105906875557875900.a, A019462, A019462.P18100823857315622739.a, A019463, A019463.P7413512839023386045.a, A004526, A004526.P10084182425416171735.a, A019460, A019460.P18320416044288335793.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082448

/-!
# A082449: Let f(p) = greatest prime divisor of p-1. Sequence gives smallest prime which takes at least n steps to reach 2 when f is iterated.

The programs for A082449, there is no canonical definition to state claims against.
-/

/-! ## A082449.P14035129363584872247

`A246497(n%a(n-1))` with `a(0)=2`
-/

namespace A082449.P14035129363584872247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A246497 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A082449.P14035129363584872247

/-! ## A082449.P4588736044008407371

`or(floor((3*n-2)/a(n-1)), A246497(n))` with `a(0)=2`
-/

namespace A082449.P4588736044008407371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor ⌊((3 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋ (A246497 n)

end

end A082449.P4588736044008407371

/-! ## A082449.P17839233293480696639

`A246497(A028310(n))-floor(acot(n))`
-/

namespace A082449.P17839233293480696639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246497 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A082449.P17839233293480696639

/-! ## A082449.P1339057650380898126

`A246497(round(sqrt(n²+1)))-A000007(n)`
-/

namespace A082449.P1339057650380898126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246497 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A000007 n

end

end A082449.P1339057650380898126

/-! ## A082449.P4090193429571916968

`xor(A000007(n), A246497(A028310(n)))`
-/

namespace A082449.P4090193429571916968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A246497 (A028310 n).toNat)

end

end A082449.P4090193429571916968

/-!
# A082450: a(n) = 5*(n^2 - n + 2)/2.

The programs for A082450, the canonical program `A082450.P10495458497955973017` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082450 has offset 0).

The definition of A082450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n²-n+2)/2` (program `A082450.P15140376252362915505`, by `A082450.P15140376252362915505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082450.P15140376252362915505

`5*(n²-n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082450.P15140376252362915505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * ((n ^ 2 : ℤ) - (n : ℤ) + 2) : ℚ) / 2

end

end A082450.P15140376252362915505

namespace A082450

/-- `5*(n²-n+2)/2` -/
def P15140376252362915505.Spec : Prop :=
  ∀ n, P15140376252362915505.a n = (A082450 n : ℚ)

theorem P15140376252362915505.correct : P15140376252362915505.Spec := by
  intro n
  induction n with
  | zero => simp [A082450, A082450.P15140376252362915505.a, A082450.P10495458497955973017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A082450, Nat.add_sub_cancel, A082450.P15140376252362915505.a, A082450.P10495458497955973017.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A082450

/-! ## A082450.P10495458497955973017

`5*n+a(n-1)-5` with `a(0)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082450

/-- `5*n+a(n-1)-5` -/
def P10495458497955973017.Spec : Prop :=
  ∀ n, P10495458497955973017.a n = A082450 n

theorem P10495458497955973017.correct : P10495458497955973017.Spec := by
  intro n
  simp only [A082450]

end A082450

/-! ## A082450.P3521261809748610094

`5*A152947(n+1)`
-/

namespace A082450.P3521261809748610094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A152947 (n + 1)

end

end A082450.P3521261809748610094

namespace A082450

/-- `5*A152947(n+1)` -/
def P3521261809748610094.Spec : Prop :=
  ∀ n, P3521261809748610094.a n = A082450 n

end A082450

/-! ## A082450.P14912588085555280801

`5*(C(n, 2)+1)`
-/

namespace A082450.P14912588085555280801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (Nat.choose n 2 + 1)

end

end A082450.P14912588085555280801

namespace A082450

/-- `5*(C(n, 2)+1)` -/
def P14912588085555280801.Spec : Prop :=
  ∀ n, (P14912588085555280801.a n : ℤ) = A082450 n

end A082450

/-! ## A082450.P11883845242426358240

`lcm(5, C(n, 2)+1)`
-/

namespace A082450.P11883845242426358240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (Nat.choose n 2 + 1)

end

end A082450.P11883845242426358240

namespace A082450

/-- `lcm(5, C(n, 2)+1)` -/
def P11883845242426358240.Spec : Prop :=
  ∀ n, (P11883845242426358240.a n : ℤ) = A082450 n

end A082450

/-! ## A082450.P12682110390161851140

`∑[a(n-1)+5]` with `a(0)=5, a(1)=0`
-/

namespace A082450.P12682110390161851140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082450.P12682110390161851140

namespace A082450

/-- `∑[a(n-1)+5]` -/
def P12682110390161851140.Spec : Prop :=
  ∀ n, (P12682110390161851140.a n : ℤ) = A082450 n

end A082450

/-! ## A082450.P8529809467075745884

`∑[ogf((5-10x+10x^2)/(1-2x+x^2))]`
-/

namespace A082450.P8529809467075745884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082450.P8529809467075745884

namespace A082450

/-- `∑[ogf((5-10x+10x^2)/(1-2x+x^2))]` -/
def P8529809467075745884.Spec : Prop :=
  ∀ n, P8529809467075745884.a n = A082450 n

end A082450

/-! ## A082450.P5824378438293796837

`ogf((5-10x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A082450.P5824378438293796837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10, 10] [1, -3, 3, -1] n

end

end A082450.P5824378438293796837

namespace A082450

/-- `ogf((5-10x+10x^2)/(1-3x+3x^2-x^3))` -/
def P5824378438293796837.Spec : Prop :=
  ∀ n, P5824378438293796837.a n = A082450 n

end A082450

/-! ## A082450.P15439341245889391222

`10-∑[a(n-1)-5]` with `a(0)=5`
-/

namespace A082450.P15439341245889391222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082450.P15439341245889391222

namespace A082450

/-- `10-∑[a(n-1)-5]` -/
def P15439341245889391222.Spec : Prop :=
  ∀ n, P15439341245889391222.a n = A082450 n

end A082450

/-! ## A082450.P3593865087765968727

`5*∑[gcd(1-n, n-1)]`
-/

namespace A082450.P3593865087765968727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082450.P3593865087765968727

namespace A082450

/-- `5*∑[gcd(1-n, n-1)]` -/
def P3593865087765968727.Spec : Prop :=
  ∀ n, (P3593865087765968727.a n : ℤ) = A082450 n

end A082450

/-! ## A082450.P3580897168980359913

`5*∑[lcm(1-n, n-1)]`
-/

namespace A082450.P3580897168980359913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082450.P3580897168980359913

namespace A082450

/-- `5*∑[lcm(1-n, n-1)]` -/
def P3580897168980359913.Spec : Prop :=
  ∀ n, (P3580897168980359913.a n : ℤ) = A082450 n

end A082450

/-! ## A082450.P10970237935353909689

`5*n-(5-a(n-1))` with `a(0)=5`
-/

namespace A082450.P10970237935353909689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (5 * n : ℤ) - (5 - a (n - 1))

end

end A082450.P10970237935353909689

namespace A082450

/-- `5*n-(5-a(n-1))` -/
def P10970237935353909689.Spec : Prop :=
  ∀ n, P10970237935353909689.a n = A082450 n

theorem P10970237935353909689.correct : P10970237935353909689.Spec := by
  intro n
  simp only [A082450, Nat.add_sub_cancel, A082450.P10970237935353909689.a, A082450.P10495458497955973017.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082450

/-! ## A082450.P8794529261052706424

`5*∑[(2*n+1)%(n+2)]`
-/

namespace A082450.P8794529261052706424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082450.P8794529261052706424

namespace A082450

/-- `5*∑[(2*n+1)%(n+2)]` -/
def P8794529261052706424.Spec : Prop :=
  ∀ n, (P8794529261052706424.a n : ℤ) = A082450 n

end A082450

/-! ## A082450.P4446604893766112188

`5*(∑[n+1]-xor(1, 2*n+1))`
-/

namespace A082450.P4446604893766112188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.xor 1 (2 * n + 1) : ℤ))

end

end A082450.P4446604893766112188

namespace A082450

/-- `5*(∑[n+1]-xor(1, 2*n+1))` -/
def P4446604893766112188.Spec : Prop :=
  ∀ n, P4446604893766112188.a n = A082450 n

end A082450

/-! ## A082450.P2623723564215299127

`∑[n+3]+or(2, (n-3)*2*n)`
-/

namespace A082450.P2623723564215299127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.lor 2 (((n : ℤ) - 3) * (2 * n : ℤ))

end

end A082450.P2623723564215299127

namespace A082450

/-- `∑[n+3]+or(2, (n-3)*2*n)` -/
def P2623723564215299127.Spec : Prop :=
  ∀ n, P2623723564215299127.a n = A082450 n

end A082450

/-! ## A082450.P15436428300169811891

`∑[n-1]+lcm(2, (1-n)²+n+2)`
-/

namespace A082450.P15436428300169811891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Int.lcm 2 ((1 - (n : ℤ)) ^ 2 + (n + 2 : ℤ)) : ℤ)

end

end A082450.P15436428300169811891

namespace A082450

/-- `∑[n-1]+lcm(2, (1-n)²+n+2)` -/
def P15436428300169811891.Spec : Prop :=
  ∀ n, P15436428300169811891.a n = A082450 n

end A082450

/-! ## A082450.P15860102454455679615

`5*(∑[n+1]-and(2*n+1, 2*n))`
-/

namespace A082450.P15860102454455679615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land (2 * n + 1) (2 * n) : ℤ))

end

end A082450.P15860102454455679615

namespace A082450

/-- `5*(∑[n+1]-and(2*n+1, 2*n))` -/
def P15860102454455679615.Spec : Prop :=
  ∀ n, P15860102454455679615.a n = A082450 n

end A082450

/-! ## A082450.P11130933538124923233

`a(n-1)+a(n-1)+5-a(n-2)` with `a(0)=5, a(1)=5`
-/

namespace A082450.P11130933538124923233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  a (n - 1) + (a (n - 1) + 5) - a (n - 2)

end

end A082450.P11130933538124923233

namespace A082450

/-- `a(n-1)+a(n-1)+5-a(n-2)` -/
def P11130933538124923233.Spec : Prop :=
  ∀ n, P11130933538124923233.a n = A082450 n

end A082450

/-! ## A082450.P6528211415828107791

`5-floor(a(n-2)-a(n-1)-a(n-1))` with `a(0)=5, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A082450.P6528211415828107791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  5 - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A082450.P6528211415828107791

namespace A082450

/-- `5-floor(a(n-2)-a(n-1)-a(n-1))` -/
def P6528211415828107791.Spec : Prop :=
  ∀ n, P6528211415828107791.a n = A082450 n

end A082450

/-! ## A082450.P6298468175561559583

`5*(A161680(n)+1)`
-/

namespace A082450.P6298468175561559583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A161680 n + 1)

end

end A082450.P6298468175561559583

namespace A082450

/-- `5*(A161680(n)+1)` -/
def P6298468175561559583.Spec : Prop :=
  ∀ n, P6298468175561559583.a n = A082450 n

end A082450

/-!
# A082451: Sum over divisors d of n of Kronecker symbol (-60, d).

The programs for A082451, the canonical program `A082451.P7121663205053929701` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082451 has offset 1).

The definition of A082451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082451.P13969649552417065474

`A128616(n+1)+A128617(n+1)`
-/

namespace A082451.P13969649552417065474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (n + 1) + A128617 (n + 1)

end

end A082451.P13969649552417065474

namespace A082451

/-- `A128616(n+1)+A128617(n+1)` -/
def P13969649552417065474.Spec : Prop :=
  ∀ n, P13969649552417065474.a n = A082451 (n + 1)

theorem P13969649552417065474.correct : P13969649552417065474.Spec := by
  intro n
  simp only [A082451, Nat.add_sub_cancel, A082451.P13969649552417065474.a, A082451.P7121663205053929701.a, A000265, A000265.P16482698636471710744.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A128616, A128616.P5791470407128350833.a, A128617, A128617.P2599063269449293282.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A316569, A316569.P8191093053662298645.a, A081603, A081603.P9418366050176887204.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082451

/-! ## A082451.P528791634139907267

`abs(A121362(n+1))`
-/

namespace A082451.P528791634139907267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121362 (n + 1)|

end

end A082451.P528791634139907267

namespace A082451

/-- `abs(A121362(n+1))` -/
def P528791634139907267.Spec : Prop :=
  ∀ n, P528791634139907267.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P13449265128225900385

`A035175((n+1)/2^val(n+1, 2))`
-/

namespace A082451.P13449265128225900385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A082451.P13449265128225900385

namespace A082451

/-- `A035175((n+1)/2^val(n+1, 2))` -/
def P13449265128225900385.Spec : Prop :=
  ∀ n, P13449265128225900385.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P3286671922248892630

`A123864((n+1)/2^val(n+1, 2))`
-/

namespace A082451.P3286671922248892630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A082451.P3286671922248892630

namespace A082451

/-- `A123864((n+1)/2^val(n+1, 2))` -/
def P3286671922248892630.Spec : Prop :=
  ∀ n, P3286671922248892630.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P7121663205053929701

`A035175(A000265(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082451

/-- `A035175(A000265(n+1))` -/
def P7121663205053929701.Spec : Prop :=
  ∀ n, P7121663205053929701.a n = A082451 (n + 1)

theorem P7121663205053929701.correct : P7121663205053929701.Spec := by
  intro n
  simp only [A082451, Nat.add_sub_cancel]

end A082451

/-! ## A082451.P18328416639054562294

`A035175(A065330(n+1))`
-/

namespace A082451.P18328416639054562294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (A065330 (n + 1)).toNat

end

end A082451.P18328416639054562294

namespace A082451

/-- `A035175(A065330(n+1))` -/
def P18328416639054562294.Spec : Prop :=
  ∀ n, P18328416639054562294.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P5078774426005821200

`A035175(A132740(n+1))`
-/

namespace A082451.P5078774426005821200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (A132740 (n + 1)).toNat

end

end A082451.P5078774426005821200

namespace A082451

/-- `A035175(A132740(n+1))` -/
def P5078774426005821200.Spec : Prop :=
  ∀ n, P5078774426005821200.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P7867446613172367660

`A035175(A165725(n+1))`
-/

namespace A082451.P7867446613172367660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (A165725 (n + 1)).toNat

end

end A082451.P7867446613172367660

namespace A082451

/-- `A035175(A165725(n+1))` -/
def P7867446613172367660.Spec : Prop :=
  ∀ n, P7867446613172367660.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P17435746470604379879

`gcd(A000038(n), A121362(n+1))`
-/

namespace A082451.P17435746470604379879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A121362 (n + 1))

end

end A082451.P17435746470604379879

namespace A082451

/-- `gcd(A000038(n), A121362(n+1))` -/
def P17435746470604379879.Spec : Prop :=
  ∀ n, (P17435746470604379879.a n : ℤ) = A082451 (n + 1)

end A082451

/-! ## A082451.P8553972020253911833

`lcm(A020985(n), A121362(n+1))`
-/

namespace A082451.P8553972020253911833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A121362 (n + 1))

end

end A082451.P8553972020253911833

namespace A082451

/-- `lcm(A020985(n), A121362(n+1))` -/
def P8553972020253911833.Spec : Prop :=
  ∀ n, (P8553972020253911833.a n : ℤ) = A082451 (n + 1)

end A082451

/-! ## A082451.P10076315441661174321

`A035175(n+1)/A001511(n+1)`
-/

namespace A082451.P10076315441661174321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035175 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A082451.P10076315441661174321

namespace A082451

/-- `A035175(n+1)/A001511(n+1)` -/
def P10076315441661174321.Spec : Prop :=
  ∀ n, P10076315441661174321.a n = (A082451 (n + 1) : ℚ)

end A082451

/-! ## A082451.P14205054078572372909

`A121362(n+1)+2*A128617(n+1)`
-/

namespace A082451.P14205054078572372909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121362 (n + 1) + 2 * A128617 (n + 1)

end

end A082451.P14205054078572372909

namespace A082451

/-- `A121362(n+1)+2*A128617(n+1)` -/
def P14205054078572372909.Spec : Prop :=
  ∀ n, P14205054078572372909.a n = A082451 (n + 1)

theorem P14205054078572372909.correct : P14205054078572372909.Spec := by
  intro n
  simp only [A082451, Nat.add_sub_cancel, A082451.P14205054078572372909.a, A082451.P7121663205053929701.a, A000265, A000265.P16482698636471710744.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A121362, A121362.P4931692809741161158.a, A128617, A128617.P2599063269449293282.a, A128616, A128616.P5791470407128350833.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A316569, A316569.P8191093053662298645.a, A081603, A081603.P9418366050176887204.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082451

/-! ## A082451.P7408627851108161870

`2*A128616(n+1)-A121362(n+1)`
-/

namespace A082451.P7408627851108161870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128616 (n + 1) - A121362 (n + 1)

end

end A082451.P7408627851108161870

namespace A082451

/-- `2*A128616(n+1)-A121362(n+1)` -/
def P7408627851108161870.Spec : Prop :=
  ∀ n, P7408627851108161870.a n = A082451 (n + 1)

theorem P7408627851108161870.correct : P7408627851108161870.Spec := by
  intro n
  simp only [A082451, Nat.add_sub_cancel, A082451.P7408627851108161870.a, A082451.P7121663205053929701.a, A000265, A000265.P16482698636471710744.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A121362, A121362.P4931692809741161158.a, A128616, A128616.P5791470407128350833.a, A128617, A128617.P2599063269449293282.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A316569, A316569.P8191093053662298645.a, A081603, A081603.P9418366050176887204.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082451

/-! ## A082451.P3751111768063649419

`∑{d}[n+1, A035175(#)*A154955((n+1)/#)]`
-/

namespace A082451.P3751111768063649419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035175 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A082451.P3751111768063649419

namespace A082451

/-- `∑{d}[n+1, A035175(#)*A154955((n+1)/#)]` -/
def P3751111768063649419.Spec : Prop :=
  ∀ n, P3751111768063649419.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P5574659671381488599

`lcm(A001511(n+1), A106406(n+1))/A001511(n+1)`
-/

namespace A082451.P5574659671381488599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001511 (n + 1)) (A106406 (n + 1)) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A082451.P5574659671381488599

namespace A082451

/-- `lcm(A001511(n+1), A106406(n+1))/A001511(n+1)` -/
def P5574659671381488599.Spec : Prop :=
  ∀ n, P5574659671381488599.a n = (A082451 (n + 1) : ℚ)

end A082451

/-! ## A082451.P2089074994098895822

`A128616(2*(n+1))+A128616(n+1)`
-/

namespace A082451.P2089074994098895822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (2 * (n + 1)) + A128616 (n + 1)

end

end A082451.P2089074994098895822

namespace A082451

/-- `A128616(2*(n+1))+A128616(n+1)` -/
def P2089074994098895822.Spec : Prop :=
  ∀ n, P2089074994098895822.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P6788585393193583494

`A128617(2*(n+1))+A128617(n+1)`
-/

namespace A082451.P6788585393193583494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (2 * (n + 1)) + A128617 (n + 1)

end

end A082451.P6788585393193583494

namespace A082451

/-- `A128617(2*(n+1))+A128617(n+1)` -/
def P6788585393193583494.Spec : Prop :=
  ∀ n, P6788585393193583494.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P3295432799323522615

`A035175(2*(n+1))-A035175(n+1)`
-/

namespace A082451.P3295432799323522615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (2 * (n + 1)) - A035175 (n + 1)

end

end A082451.P3295432799323522615

namespace A082451

/-- `A035175(2*(n+1))-A035175(n+1)` -/
def P3295432799323522615.Spec : Prop :=
  ∀ n, P3295432799323522615.a n = A082451 (n + 1)

end A082451

/-! ## A082451.P12900703596975300868

`gcd(A260649(2*(n+1)), A260649(n+1))`
-/

namespace A082451.P12900703596975300868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260649 (2 * (n + 1))) (A260649 (n + 1))

end

end A082451.P12900703596975300868

namespace A082451

/-- `gcd(A260649(2*(n+1)), A260649(n+1))` -/
def P12900703596975300868.Spec : Prop :=
  ∀ n, (P12900703596975300868.a n : ℤ) = A082451 (n + 1)

end A082451

/-! ## A082451.P2744740404431310080

`A123864(2*(n+1))-A123864(n+1)`
-/

namespace A082451.P2744740404431310080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 (2 * (n + 1)) - A123864 (n + 1)

end

end A082451.P2744740404431310080

namespace A082451

/-- `A123864(2*(n+1))-A123864(n+1)` -/
def P2744740404431310080.Spec : Prop :=
  ∀ n, P2744740404431310080.a n = A082451 (n + 1)

end A082451

/-!
# A082452: a(n)=2n+1 where n is such that A083344(n) is not zero.

The programs for A082452, there is no canonical definition to state claims against.
-/

/-! ## A082452.P8104881605564263278

`A386318(A031336(n+2))`
-/

namespace A082452.P8104881605564263278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386318 (A031336 (n + 2)).toNat

end

end A082452.P8104881605564263278

/-!
# A082453: a(n)=2n+1 where n is such that A083344(n) is zero.

The programs for A082453, there is no canonical definition to state claims against.
-/

/-! ## A082453.P5720202379482735980

`record[gcd(2*n+3, A083344(n+1))]`
-/

namespace A082453.P5720202379482735980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 3 : ℤ) (A083344 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082453.P5720202379482735980

/-! ## A082453.P6097175589582035095

`∪[A282057(n+1), A348748(n+1)]`
-/

namespace A082453.P6097175589582035095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082453.P6097175589582035095

/-! ## A082453.P3429216354671886192

`lt[A008486(A365433(n+1))-n-n, 3]+1`
-/

namespace A082453.P3429216354671886192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A365433 (n + 1)).toNat - (n : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A082453.P3429216354671886192

/-! ## A082453.P4553488856684189442

`lt[A355627(A342859(n+3)), val(n+1, 2)]`
-/

namespace A082453.P4553488856684189442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355627 ((A342859 (n + 3)).toNat + 10)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A082453.P4553488856684189442

/-! ## A082453.P18279119626219420055

`lt[A340108(A054704(n+5)), (n-1)^((1-(-1)^n)/2)]`
-/

namespace A082453.P18279119626219420055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340108 (A054704 (n + 5)).toNat

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A082453.P18279119626219420055

/-!
# A082454: a(n) = prime(n) + prime(n-1) - a(n-1) with a(0) = a(1) = 0.

The programs for A082454, the canonical program `A082454.P5554322877171607482` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082454 has offset 0).

The definition of A082454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n)+A000040(n-1)-a(n-1)` (program `A082454.P5554322877171607482`, by `A082454.P5554322877171607482.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082454.P5554322877171607482

`A000040(n)+A000040(n-1)-a(n-1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082454

/-- `A000040(n)+A000040(n-1)-a(n-1)` -/
def P5554322877171607482.Spec : Prop :=
  ∀ n, P5554322877171607482.a n = A082454 n

theorem P5554322877171607482.correct : P5554322877171607482.Spec := by
  intro n
  simp only [A082454]

end A082454

/-! ## A082454.P6617542880565573363

`A011974(n)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A082454.P6617542880565573363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A011974 n - a (n - 1)

end

end A082454.P6617542880565573363

namespace A082454

/-- `A011974(n)-a(n-1)` -/
def P6617542880565573363.Spec : Prop :=
  ∀ n, P6617542880565573363.a n = A082454 n

end A082454

/-! ## A082454.P12754843890515630764

`A164653(n+1)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A082454.P12754843890515630764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A164653 (n + 1) - a (n - 1)

end

end A082454.P12754843890515630764

namespace A082454

/-- `A164653(n+1)-a(n-1)` -/
def P12754843890515630764.Spec : Prop :=
  ∀ n, P12754843890515630764.a n = A082454 n

end A082454

/-! ## A082454.P5983707088408164809

`abs(A273960(A028310(n))+2)`
-/

namespace A082454.P5983707088408164809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (A028310 n).toNat + 2|

end

end A082454.P5983707088408164809

namespace A082454

/-- `abs(A273960(A028310(n))+2)` -/
def P5983707088408164809.Spec : Prop :=
  ∀ n, P5983707088408164809.a n = A082454 n

end A082454

/-! ## A082454.P3708699785262041553

`A090178(n+1)-A065164(n+1)`
-/

namespace A082454.P3708699785262041553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - A065164 (n + 1)

end

end A082454.P3708699785262041553

namespace A082454

/-- `A090178(n+1)-A065164(n+1)` -/
def P3708699785262041553.Spec : Prop :=
  ∀ n, P3708699785262041553.a n = A082454 n

end A082454

/-! ## A082454.P919001757866068054

`A008578(n+1)-A084099(comp[2*(n+1)])`
-/

namespace A082454.P919001757866068054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A084099 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A082454.P919001757866068054

namespace A082454

/-- `A008578(n+1)-A084099(comp[2*(n+1)])` -/
def P919001757866068054.Spec : Prop :=
  ∀ n, P919001757866068054.a n = A082454 n

end A082454

/-! ## A082454.P996581569421651576

`record[A353270(n+1)]-A138034(3*n)`
-/

namespace A082454.P996581569421651576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A138034 (3 * n)

end

end A082454.P996581569421651576

namespace A082454

/-- `record[A353270(n+1)]-A138034(3*n)` -/
def P996581569421651576.Spec : Prop :=
  ∀ n, P996581569421651576.a n = A082454 n

end A082454

/-! ## A082454.P10244716543540700976

`(A002448(n²)+record[A020639(n+1)])%∑[n+1]²`
-/

namespace A082454.P10244716543540700976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002448 (n ^ 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A082454.P10244716543540700976

namespace A082454

/-- `(A002448(n²)+record[A020639(n+1)])%∑[n+1]²` -/
def P10244716543540700976.Spec : Prop :=
  ∀ n, P10244716543540700976.a n = A082454 n

end A082454

/-!
# A082455: a(n) = prime(n) + prime(n-1) - a(n-1), a(0) = 0, a(1) = 4.

The programs for A082455, the canonical program `A082455.P12470785555536744890` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082455 has offset 0).

The definition of A082455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n)+A000040(n-1)-a(n-1)` (program `A082455.P12470785555536744890`, by `A082455.P12470785555536744890.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082455.P12470785555536744890

`A000040(n)+A000040(n-1)-a(n-1)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082455

/-- `A000040(n)+A000040(n-1)-a(n-1)` -/
def P12470785555536744890.Spec : Prop :=
  ∀ n, P12470785555536744890.a n = A082455 n

theorem P12470785555536744890.correct : P12470785555536744890.Spec := by
  intro n
  simp only [A082455]

end A082455

/-! ## A082455.P18148634248903732267

`A164653(n+1)-a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A082455.P18148634248903732267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A164653 (n + 1) - a (n - 1)

end

end A082455.P18148634248903732267

namespace A082455

/-- `A164653(n+1)-a(n-1)` -/
def P18148634248903732267.Spec : Prop :=
  ∀ n, P18148634248903732267.a n = A082455 n

end A082455

/-! ## A082455.P9214368242063056493

`A001043(n-1)-a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A082455.P9214368242063056493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A001043 (n - 1) - a (n - 1)

end

end A082455.P9214368242063056493

namespace A082455

/-- `A001043(n-1)-a(n-1)` -/
def P9214368242063056493.Spec : Prop :=
  ∀ n, P9214368242063056493.a n = A082455 n

end A082455

/-! ## A082455.P10695808072358602088

`A000040(n)+2-a((n+1)%2)` with `a(0)=0`
-/

namespace A082455.P10695808072358602088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 n + 2 - a ((n + 1) % 2)

end

end A082455.P10695808072358602088

namespace A082455

/-- `A000040(n)+2-a((n+1)%2)` -/
def P10695808072358602088.Spec : Prop :=
  ∀ n, P10695808072358602088.a n = A082455 n

end A082455

/-! ## A082455.P18225134648131240090

`A000040(floor(sqrt(n²+1)))-2*(-1)^n`
-/

namespace A082455.P18225134648131240090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.sqrt (n ^ 2 + 1)) - 2 * (-1) ^ n

end

end A082455.P18225134648131240090

namespace A082455

/-- `A000040(floor(sqrt(n²+1)))-2*(-1)^n` -/
def P18225134648131240090.Spec : Prop :=
  ∀ n, P18225134648131240090.a n = A082455 n

end A082455

/-! ## A082455.P14419615780019764995

`A028815(n)-Δ[A014681(n)]`
-/

namespace A082455.P14419615780019764995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - (f1 (n + 1) - f1 n)

end

end A082455.P14419615780019764995

namespace A082455

/-- `A028815(n)-Δ[A014681(n)]` -/
def P14419615780019764995.Spec : Prop :=
  ∀ n, P14419615780019764995.a n = A082455 n

end A082455

/-! ## A082455.P16108503179071053520

`A008578(n+1)-A280560(n)`
-/

namespace A082455.P16108503179071053520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A280560 n

end

end A082455.P16108503179071053520

namespace A082455

/-- `A008578(n+1)-A280560(n)` -/
def P16108503179071053520.Spec : Prop :=
  ∀ n, P16108503179071053520.a n = A082455 n

end A082455

/-! ## A082455.P9685081417252219639

`record[A020639(n+1)]-A280560(n)`
-/

namespace A082455.P9685081417252219639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A280560 n

end

end A082455.P9685081417252219639

namespace A082455

/-- `record[A020639(n+1)]-A280560(n)` -/
def P9685081417252219639.Spec : Prop :=
  ∀ n, P9685081417252219639.a n = A082455 n

end A082455

/-! ## A082455.P7490983456998638772

`A324050(n+1)-A280560(n²)`
-/

namespace A082455.P7490983456998638772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1) - A280560 (n ^ 2)

end

end A082455.P7490983456998638772

namespace A082455

/-- `A324050(n+1)-A280560(n²)` -/
def P7490983456998638772.Spec : Prop :=
  ∀ n, P7490983456998638772.a n = A082455 n

end A082455

/-!
# A082456: a(n) = prime(n) + prime(n-1) - a(n-1), with a(0)=0, a(1)=127, and prime(i) is the i-th prime.

The programs for A082456, the canonical program `A082456.P7101227833489858989` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082456 has offset 0).

The definition of A082456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n)+A000040(n-1)-a(n-1)` (program `A082456.P7101227833489858989`, by `A082456.P7101227833489858989.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082456.P7101227833489858989

`A000040(n)+A000040(n-1)-a(n-1)` with `a(0)=0, a(1)=127`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082456

/-- `A000040(n)+A000040(n-1)-a(n-1)` -/
def P7101227833489858989.Spec : Prop :=
  ∀ n, P7101227833489858989.a n = A082456 n

theorem P7101227833489858989.correct : P7101227833489858989.Spec := by
  intro n
  simp only [A082456]

end A082456

/-!
# A082457: a(n) = gcd(1+2n, A057643(1+2n)).

The programs for A082457, there is no canonical definition to state claims against.
-/

/-! ## A082457.P10866369196204151576

`gcd(1+2*(n+1), A057643(1+2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082457.P10866369196204151576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + 2 * (n + 1) : ℤ) (A057643 (1 + 2 * (n + 1)))

end

end A082457.P10866369196204151576

/-! ## A082457.P4039791485659080960

`A083344(n+1)+A066715(n+1)`
-/

namespace A082457.P4039791485659080960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083344 (n + 1) + A066715 (n + 1)

end

end A082457.P4039791485659080960

/-! ## A082457.P17477459867131091544

`A083344(n+1)+A009194(2*n+3)`
-/

namespace A082457.P17477459867131091544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083344 (n + 1) + A009194 (2 * n + 3)

end

end A082457.P17477459867131091544

/-! ## A082457.P11611156808995593351

`gcd(A057643(2*n+3), A144396(n+1))`
-/

namespace A082457.P11611156808995593351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057643 (2 * n + 3)) (A144396 (n + 1))

end

end A082457.P11611156808995593351

/-! ## A082457.P3773179579313346226

`gcd(A016825(n+1), A336567(A016754(n+1)))`
-/

namespace A082457.P3773179579313346226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016825 (n + 1)) (A336567 (A016754 (n + 1)).toNat)

end

end A082457.P3773179579313346226

/-!
# A082458: Multiply by 1, add 1, multiply by 2, add 2, etc., starting with 0.

The programs for A082458, the canonical program `A082458.P9280145308101820266` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082458 has offset 0).

The definition of A082458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082458.P7872355507634587800

`A082459(n)+ceil(n/2)!`
-/

namespace A082458.P7872355507634587800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082459 n + (Nat.factorial ⌈(n : ℚ) / 2⌉.toNat : ℤ)

end

end A082458.P7872355507634587800

namespace A082458

/-- `A082459(n)+ceil(n/2)!` -/
def P7872355507634587800.Spec : Prop :=
  ∀ n, P7872355507634587800.a n = A082458 n

end A082458

/-! ## A082458.P6058064032938384090

`A019464(n)-ceil(n/2)!`
-/

namespace A082458.P6058064032938384090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n - (Nat.factorial ⌈(n : ℚ) / 2⌉.toNat : ℤ)

end

end A082458.P6058064032938384090

namespace A082458

/-- `A019464(n)-ceil(n/2)!` -/
def P6058064032938384090.Spec : Prop :=
  ∀ n, P6058064032938384090.a n = A082458 n

end A082458

/-! ## A082458.P9280145308101820266

`lcm(ceil(n/2), A007526(floor(n/2)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082458

/-- `lcm(ceil(n/2), A007526(floor(n/2)))` -/
def P9280145308101820266.Spec : Prop :=
  ∀ n, (P9280145308101820266.a n : ℤ) = A082458 n

theorem P9280145308101820266.correct : P9280145308101820266.Spec := by
  intro n
  simp only [A082458]

end A082458

/-! ## A082458.P18150234741618789388

`A082459(n)+∏[A152271(n)]`
-/

namespace A082458.P18150234741618789388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082459 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082458.P18150234741618789388

namespace A082458

/-- `A082459(n)+∏[A152271(n)]` -/
def P18150234741618789388.Spec : Prop :=
  ∀ n, P18150234741618789388.a n = A082458 n

end A082458

/-! ## A082458.P14347864866545944785

`A019464(n)-∏[A152271(n)]`
-/

namespace A082458.P14347864866545944785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082458.P14347864866545944785

namespace A082458

/-- `A019464(n)-∏[A152271(n)]` -/
def P14347864866545944785.Spec : Prop :=
  ∀ n, P14347864866545944785.a n = A082458 n

end A082458

/-! ## A082458.P14135561279702346727

`A019464(n)-A081123(n+1)`
-/

namespace A082458.P14135561279702346727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n - A081123 (n + 1)

end

end A082458.P14135561279702346727

namespace A082458

/-- `A019464(n)-A081123(n+1)` -/
def P14135561279702346727.Spec : Prop :=
  ∀ n, P14135561279702346727.a n = A082458 n

theorem P14135561279702346727.correct : P14135561279702346727.Spec := by
  intro n
  simp only [A082458, Nat.add_sub_cancel, A082458.P14135561279702346727.a, A082458.P9280145308101820266.a, A007526, A007526.P5708673910196540201.a, A019464, A019464.P11505818576841532554.a, A081123, A081123.P8894457904069050108.a, A082459, A082459.P3654004726301315485.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082458

/-! ## A082458.P12668886338502790071

`2*A019464(n)-A019465(n)`
-/

namespace A082458.P12668886338502790071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019464 n - A019465 n

end

end A082458.P12668886338502790071

namespace A082458

/-- `2*A019464(n)-A019465(n)` -/
def P12668886338502790071.Spec : Prop :=
  ∀ n, P12668886338502790071.a n = A082458 n

end A082458

/-! ## A082458.P7007195020614808598

`(A082459(n)+A019464(n))/2`
-/

namespace A082458.P7007195020614808598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082459 n + A019464 n : ℚ) / 2

end

end A082458.P7007195020614808598

namespace A082458

/-- `(A082459(n)+A019464(n))/2` -/
def P7007195020614808598.Spec : Prop :=
  ∀ n, P7007195020614808598.a n = (A082458 n : ℚ)

theorem P7007195020614808598.correct : P7007195020614808598.Spec := by
  intro n
  simp only [A082458, Nat.add_sub_cancel, A082458.P7007195020614808598.a, A082458.P9280145308101820266.a, A007526, A007526.P5708673910196540201.a, A019464, A019464.P11505818576841532554.a, A082459, A082459.P3654004726301315485.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082458

/-! ## A082458.P3167592086085015206

`A019464(n)+A019465(n)-A019466(n)`
-/

namespace A082458.P3167592086085015206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (A019465 n - A019466 n)

end

end A082458.P3167592086085015206

namespace A082458

/-- `A019464(n)+A019465(n)-A019466(n)` -/
def P3167592086085015206.Spec : Prop :=
  ∀ n, P3167592086085015206.a n = A082458 n

end A082458

/-! ## A082458.P2446230258500792185

`A019460(n+1)+A019464(n)-A019462(n+1)`
-/

namespace A082458.P2446230258500792185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019464 n - A019462 (n + 1))

end

end A082458.P2446230258500792185

namespace A082458

/-- `A019460(n+1)+A019464(n)-A019462(n+1)` -/
def P2446230258500792185.Spec : Prop :=
  ∀ n, P2446230258500792185.a n = A082458 n

theorem P2446230258500792185.correct : P2446230258500792185.Spec := by
  intro n
  simp only [A082458, Nat.add_sub_cancel, A082458.P2446230258500792185.a, A082458.P9280145308101820266.a, A007526, A007526.P5708673910196540201.a, A019460, A019460.P18320416044288335793.a, A019462, A019462.P18100823857315622739.a, A019464, A019464.P11505818576841532554.a, A019463, A019463.P7413512839023386045.a, A081123, A081123.P8894457904069050108.a, A082459, A082459.P3654004726301315485.a, A019461, A019461.P12105906875557875900.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082458

/-! ## A082458.P14816077843979782575

`A019461(n+1)+A019464(n)-A019463(n+1)`
-/

namespace A082458.P14816077843979782575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A019464 n - A019463 (n + 1))

end

end A082458.P14816077843979782575

namespace A082458

/-- `A019461(n+1)+A019464(n)-A019463(n+1)` -/
def P14816077843979782575.Spec : Prop :=
  ∀ n, P14816077843979782575.a n = A082458 n

theorem P14816077843979782575.correct : P14816077843979782575.Spec := by
  intro n
  simp only [A082458, Nat.add_sub_cancel, A082458.P14816077843979782575.a, A082458.P9280145308101820266.a, A007526, A007526.P5708673910196540201.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A019464, A019464.P11505818576841532554.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A082459, A082459.P3654004726301315485.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082458

/-! ## A082458.P4222685267747886179

`A019461(n+1)+A019466(n)-A019462(n+1)`
-/

namespace A082458.P4222685267747886179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A019466 n - A019462 (n + 1))

end

end A082458.P4222685267747886179

namespace A082458

/-- `A019461(n+1)+A019466(n)-A019462(n+1)` -/
def P4222685267747886179.Spec : Prop :=
  ∀ n, P4222685267747886179.a n = A082458 n

end A082458

/-! ## A082458.P8780012759913544114

`A019463(n+1)+A019464(n)-A019460(n+1)`
-/

namespace A082458.P8780012759913544114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019464 n - A019460 (n + 1))

end

end A082458.P8780012759913544114

namespace A082458

/-- `A019463(n+1)+A019464(n)-A019460(n+1)` -/
def P8780012759913544114.Spec : Prop :=
  ∀ n, P8780012759913544114.a n = A082458 n

theorem P8780012759913544114.correct : P8780012759913544114.Spec := by
  intro n
  simp only [A082458, Nat.add_sub_cancel, A082458.P8780012759913544114.a, A082458.P9280145308101820266.a, A007526, A007526.P5708673910196540201.a, A019460, A019460.P18320416044288335793.a, A019463, A019463.P7413512839023386045.a, A019464, A019464.P11505818576841532554.a, A019461, A019461.P12105906875557875900.a, A081123, A081123.P8894457904069050108.a, A082459, A082459.P3654004726301315485.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082458

/-! ## A082458.P12281073095169422762

`A019463(n+1)+A019465(n)-A019462(n+1)`
-/

namespace A082458.P12281073095169422762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019465 n - A019462 (n + 1))

end

end A082458.P12281073095169422762

namespace A082458

/-- `A019463(n+1)+A019465(n)-A019462(n+1)` -/
def P12281073095169422762.Spec : Prop :=
  ∀ n, P12281073095169422762.a n = A082458 n

end A082458

/-! ## A082458.P14158165219549220297

`A019460(n+1)+A019465(n)-A082448(n+1)`
-/

namespace A082458.P14158165219549220297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019465 n - A082448 (n + 1))

end

end A082458.P14158165219549220297

namespace A082458

/-- `A019460(n+1)+A019465(n)-A082448(n+1)` -/
def P14158165219549220297.Spec : Prop :=
  ∀ n, P14158165219549220297.a n = A082458 n

end A082458

/-! ## A082458.P16627082161608897620

`A019462(n+1)+A019464(n)-A082448(n+1)`
-/

namespace A082458.P16627082161608897620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 (n + 1) + (A019464 n - A082448 (n + 1))

end

end A082458.P16627082161608897620

namespace A082458

/-- `A019462(n+1)+A019464(n)-A082448(n+1)` -/
def P16627082161608897620.Spec : Prop :=
  ∀ n, P16627082161608897620.a n = A082458 n

theorem P16627082161608897620.correct : P16627082161608897620.Spec := by
  intro n
  simp only [A082458, Nat.add_sub_cancel, A082458.P16627082161608897620.a, A082458.P9280145308101820266.a, A007526, A007526.P5708673910196540201.a, A019462, A019462.P18100823857315622739.a, A019464, A019464.P11505818576841532554.a, A082448, A082448.P17099624679947118891.a, A019460, A019460.P18320416044288335793.a, A019463, A019463.P7413512839023386045.a, A081123, A081123.P8894457904069050108.a, A082459, A082459.P3654004726301315485.a, A019461, A019461.P12105906875557875900.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082458

/-! ## A082458.P3969836938000890466

`A019463(n+1)+A019466(n)-A082448(n+1)`
-/

namespace A082458.P3969836938000890466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019466 n - A082448 (n + 1))

end

end A082458.P3969836938000890466

namespace A082458

/-- `A019463(n+1)+A019466(n)-A082448(n+1)` -/
def P3969836938000890466.Spec : Prop :=
  ∀ n, P3969836938000890466.a n = A082458 n

end A082458

/-! ## A082458.P14092376849080839672

`A082448(n+1)+A082459(n)-A019462(n+1)`
-/

namespace A082458.P14092376849080839672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082448 (n + 1) + (A082459 n - A019462 (n + 1))

end

end A082458.P14092376849080839672

namespace A082458

/-- `A082448(n+1)+A082459(n)-A019462(n+1)` -/
def P14092376849080839672.Spec : Prop :=
  ∀ n, P14092376849080839672.a n = A082458 n

theorem P14092376849080839672.correct : P14092376849080839672.Spec := by
  intro n
  simp only [A082458, Nat.add_sub_cancel, A082458.P14092376849080839672.a, A082458.P9280145308101820266.a, A007526, A007526.P5708673910196540201.a, A019462, A019462.P18100823857315622739.a, A082448, A082448.P17099624679947118891.a, A082459, A082459.P3654004726301315485.a, A019460, A019460.P18320416044288335793.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A081123, A081123.P8894457904069050108.a, A004526, A004526.P10084182425416171735.a, A057979, A057979.P16537735927241777837.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082458

/-!
# A082459: Multiply by 1, add 1, multiply by 2, add 2, etc.

The programs for A082459, the canonical program `A082459.P3654004726301315485` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082459 has offset 0).

The definition of A082459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082459.P8719691633851223399

`2*A019464(n)-A019466(n)`
-/

namespace A082459.P8719691633851223399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019464 n - A019466 n

end

end A082459.P8719691633851223399

namespace A082459

/-- `2*A019464(n)-A019466(n)` -/
def P8719691633851223399.Spec : Prop :=
  ∀ n, P8719691633851223399.a n = A082459 n

end A082459

/-! ## A082459.P13404402897386805549

`2*A082458(n)-A019464(n)`
-/

namespace A082459.P13404402897386805549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082458 n - A019464 n

end

end A082459.P13404402897386805549

namespace A082459

/-- `2*A082458(n)-A019464(n)` -/
def P13404402897386805549.Spec : Prop :=
  ∀ n, P13404402897386805549.a n = A082459 n

theorem P13404402897386805549.correct : P13404402897386805549.Spec := by
  intro n
  simp only [A082459, Nat.add_sub_cancel, A082459.P13404402897386805549.a, A082459.P3654004726301315485.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A019464, A019464.P11505818576841532554.a, A082458, A082458.P9280145308101820266.a, A004526, A004526.P10084182425416171735.a, A007526, A007526.P5708673910196540201.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082459

/-! ## A082459.P2484339491578718591

`A019464(n)-2*∏[A152271(n)]`
-/

namespace A082459.P2484339491578718591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n - 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A082459.P2484339491578718591

namespace A082459

/-- `A019464(n)-2*∏[A152271(n)]` -/
def P2484339491578718591.Spec : Prop :=
  ∀ n, P2484339491578718591.a n = A082459 n

end A082459

/-! ## A082459.P16251818989468307704

`3*A019464(n)-2*A019465(n)`
-/

namespace A082459.P16251818989468307704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A019464 n - 2 * A019465 n

end

end A082459.P16251818989468307704

namespace A082459

/-- `3*A019464(n)-2*A019465(n)` -/
def P16251818989468307704.Spec : Prop :=
  ∀ n, P16251818989468307704.a n = A082459 n

end A082459

/-! ## A082459.P5498066363417999560

`A019464(n)-A052849(A065033(n))`
-/

namespace A082459.P5498066363417999560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n - A052849 (A065033 n).toNat

end

end A082459.P5498066363417999560

namespace A082459

/-- `A019464(n)-A052849(A065033(n))` -/
def P5498066363417999560.Spec : Prop :=
  ∀ n, P5498066363417999560.a n = A082459 n

end A082459

/-! ## A082459.P13951713213264124483

`A019464(n)+A082458(n)-A019465(n)`
-/

namespace A082459.P13951713213264124483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (A082458 n - A019465 n)

end

end A082459.P13951713213264124483

namespace A082459

/-- `A019464(n)+A082458(n)-A019465(n)` -/
def P13951713213264124483.Spec : Prop :=
  ∀ n, P13951713213264124483.a n = A082459 n

end A082459

/-! ## A082459.P7571621354066603744

`A019465(n)+A082458(n)-A019466(n)`
-/

namespace A082459.P7571621354066603744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n + (A082458 n - A019466 n)

end

end A082459.P7571621354066603744

namespace A082459

/-- `A019465(n)+A082458(n)-A019466(n)` -/
def P7571621354066603744.Spec : Prop :=
  ∀ n, P7571621354066603744.a n = A082459 n

end A082459

/-! ## A082459.P2598473767235391657

`A019464(n)-A081123(n)*A133265(n)`
-/

namespace A082459.P2598473767235391657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n - A081123 n * A133265 n

end

end A082459.P2598473767235391657

namespace A082459

/-- `A019464(n)-A081123(n)*A133265(n)` -/
def P2598473767235391657.Spec : Prop :=
  ∀ n, P2598473767235391657.a n = A082459 n

end A082459

/-! ## A082459.P2687737644323754661

`A019461(n+1)+A019464(n)-A019460(n+1)`
-/

namespace A082459.P2687737644323754661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A019464 n - A019460 (n + 1))

end

end A082459.P2687737644323754661

namespace A082459

/-- `A019461(n+1)+A019464(n)-A019460(n+1)` -/
def P2687737644323754661.Spec : Prop :=
  ∀ n, P2687737644323754661.a n = A082459 n

theorem P2687737644323754661.correct : P2687737644323754661.Spec := by
  intro n
  simp only [A082459, Nat.add_sub_cancel, A082459.P2687737644323754661.a, A082459.P3654004726301315485.a, A019460, A019460.P18320416044288335793.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A019464, A019464.P11505818576841532554.a, A082458, A082458.P9280145308101820266.a, A004526, A004526.P10084182425416171735.a, A007526, A007526.P5708673910196540201.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082459

/-! ## A082459.P10471035811619808762

`A019461(n+1)+A019465(n)-A019462(n+1)`
-/

namespace A082459.P10471035811619808762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A019465 n - A019462 (n + 1))

end

end A082459.P10471035811619808762

namespace A082459

/-- `A019461(n+1)+A019465(n)-A019462(n+1)` -/
def P10471035811619808762.Spec : Prop :=
  ∀ n, P10471035811619808762.a n = A082459 n

end A082459

/-! ## A082459.P15833924867372798221

`A019463(n+1)+A019464(n)-A019462(n+1)`
-/

namespace A082459.P15833924867372798221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019464 n - A019462 (n + 1))

end

end A082459.P15833924867372798221

namespace A082459

/-- `A019463(n+1)+A019464(n)-A019462(n+1)` -/
def P15833924867372798221.Spec : Prop :=
  ∀ n, P15833924867372798221.a n = A082459 n

theorem P15833924867372798221.correct : P15833924867372798221.Spec := by
  intro n
  simp only [A082459, Nat.add_sub_cancel, A082459.P15833924867372798221.a, A082459.P3654004726301315485.a, A019461, A019461.P12105906875557875900.a, A019462, A019462.P18100823857315622739.a, A019463, A019463.P7413512839023386045.a, A019464, A019464.P11505818576841532554.a, A082458, A082458.P9280145308101820266.a, A004526, A004526.P10084182425416171735.a, A007526, A007526.P5708673910196540201.a, A019460, A019460.P18320416044288335793.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082459

/-! ## A082459.P861859075030346995

`A019460(n+1)+A019464(n)-A082448(n+1)`
-/

namespace A082459.P861859075030346995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019464 n - A082448 (n + 1))

end

end A082459.P861859075030346995

namespace A082459

/-- `A019460(n+1)+A019464(n)-A082448(n+1)` -/
def P861859075030346995.Spec : Prop :=
  ∀ n, P861859075030346995.a n = A082459 n

theorem P861859075030346995.correct : P861859075030346995.Spec := by
  intro n
  simp only [A082459, Nat.add_sub_cancel, A082459.P861859075030346995.a, A082459.P3654004726301315485.a, A019460, A019460.P18320416044288335793.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A019464, A019464.P11505818576841532554.a, A082448, A082448.P17099624679947118891.a, A082458, A082458.P9280145308101820266.a, A004526, A004526.P10084182425416171735.a, A007526, A007526.P5708673910196540201.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082459

/-! ## A082459.P6627774360108677280

`A019460(n+1)+A082458(n)-A019462(n+1)`
-/

namespace A082459.P6627774360108677280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A082458 n - A019462 (n + 1))

end

end A082459.P6627774360108677280

namespace A082459

/-- `A019460(n+1)+A082458(n)-A019462(n+1)` -/
def P6627774360108677280.Spec : Prop :=
  ∀ n, P6627774360108677280.a n = A082459 n

theorem P6627774360108677280.correct : P6627774360108677280.Spec := by
  intro n
  simp only [A082459, Nat.add_sub_cancel, A082459.P6627774360108677280.a, A082459.P3654004726301315485.a, A019460, A019460.P18320416044288335793.a, A019461, A019461.P12105906875557875900.a, A019462, A019462.P18100823857315622739.a, A019463, A019463.P7413512839023386045.a, A082458, A082458.P9280145308101820266.a, A004526, A004526.P10084182425416171735.a, A007526, A007526.P5708673910196540201.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082459

/-! ## A082459.P13176963455740314

`A019461(n+1)+A019466(n)-A082448(n+1)`
-/

namespace A082459.P13176963455740314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A019466 n - A082448 (n + 1))

end

end A082459.P13176963455740314

namespace A082459

/-- `A019461(n+1)+A019466(n)-A082448(n+1)` -/
def P13176963455740314.Spec : Prop :=
  ∀ n, P13176963455740314.a n = A082459 n

end A082459

/-! ## A082459.P3654004726301315485

`A019461(n+1)+A082458(n)-A019463(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082459

/-- `A019461(n+1)+A082458(n)-A019463(n+1)` -/
def P3654004726301315485.Spec : Prop :=
  ∀ n, P3654004726301315485.a n = A082459 n

theorem P3654004726301315485.correct : P3654004726301315485.Spec := by
  intro n
  simp only [A082459]

end A082459

/-! ## A082459.P14362317425139512329

`A019463(n+1)+A019465(n)-A082448(n+1)`
-/

namespace A082459.P14362317425139512329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019465 n - A082448 (n + 1))

end

end A082459.P14362317425139512329

namespace A082459

/-- `A019463(n+1)+A019465(n)-A082448(n+1)` -/
def P14362317425139512329.Spec : Prop :=
  ∀ n, P14362317425139512329.a n = A082459 n

end A082459

/-! ## A082459.P12507872436091382865

`A019463(n+1)+A082458(n)-A019460(n+1)`
-/

namespace A082459.P12507872436091382865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A082458 n - A019460 (n + 1))

end

end A082459.P12507872436091382865

namespace A082459

/-- `A019463(n+1)+A082458(n)-A019460(n+1)` -/
def P12507872436091382865.Spec : Prop :=
  ∀ n, P12507872436091382865.a n = A082459 n

theorem P12507872436091382865.correct : P12507872436091382865.Spec := by
  intro n
  simp only [A082459, Nat.add_sub_cancel, A082459.P12507872436091382865.a, A082459.P3654004726301315485.a, A019460, A019460.P18320416044288335793.a, A019461, A019461.P12105906875557875900.a, A019463, A019463.P7413512839023386045.a, A082458, A082458.P9280145308101820266.a, A004526, A004526.P10084182425416171735.a, A007526, A007526.P5708673910196540201.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082459

/-! ## A082459.P10081562589897406874

`A019462(n+1)+A082458(n)-A082448(n+1)`
-/

namespace A082459.P10081562589897406874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 (n + 1) + (A082458 n - A082448 (n + 1))

end

end A082459.P10081562589897406874

namespace A082459

/-- `A019462(n+1)+A082458(n)-A082448(n+1)` -/
def P10081562589897406874.Spec : Prop :=
  ∀ n, P10081562589897406874.a n = A082459 n

theorem P10081562589897406874.correct : P10081562589897406874.Spec := by
  intro n
  simp only [A082459, Nat.add_sub_cancel, A082459.P10081562589897406874.a, A082459.P3654004726301315485.a, A019461, A019461.P12105906875557875900.a, A019462, A019462.P18100823857315622739.a, A019463, A019463.P7413512839023386045.a, A082448, A082448.P17099624679947118891.a, A082458, A082458.P9280145308101820266.a, A004526, A004526.P10084182425416171735.a, A007526, A007526.P5708673910196540201.a, A019460, A019460.P18320416044288335793.a, A057979, A057979.P16537735927241777837.a, A081123, A081123.P8894457904069050108.a, A111063, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082459

/-!
# A082460: a(n) = pi(n) - a(n - 1) where pi(n) = A000720(n).

The programs for A082460, the canonical program `A082460.P6862711592877225157` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082460 has offset 1).

The definition of A082460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)-a(n-1)` (program `A082460.P6862711592877225157`, by `A082460.P6862711592877225157.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082460.P6862711592877225157

`A000720(n+1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082460

/-- `A000720(n+1)-a(n-1)` -/
def P6862711592877225157.Spec : Prop :=
  ∀ n, P6862711592877225157.a n = A082460 (n + 1)

theorem P6862711592877225157.correct : P6862711592877225157.Spec := by
  intro n
  simp only [A082460, Nat.add_sub_cancel]

end A082460

/-! ## A082460.P11443638440782236700

`∑[val(n+2, ∑{d}[n+1, #])-a(n-1)]` with `a(0)=0`
-/

namespace A082460.P11443638440782236700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (SequenceMachineLib.valuation (n + 2) (∑ d ∈ Nat.divisors (f2 n), d) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082460.P11443638440782236700

namespace A082460

/-- `∑[val(n+2, ∑{d}[n+1, #])-a(n-1)]` -/
def P11443638440782236700.Spec : Prop :=
  ∀ n, P11443638440782236700.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P8626299609891617477

`A084360(n+3)`
-/

namespace A082460.P8626299609891617477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 3)

end

end A082460.P8626299609891617477

namespace A082460

/-- `A084360(n+3)` -/
def P8626299609891617477.Spec : Prop :=
  ∀ n, P8626299609891617477.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P4436267484695515401

`C(A033270(n+1), log2(gcd(2, n)))`
-/

namespace A082460.P4436267484695515401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033270 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat

end

end A082460.P4436267484695515401

namespace A082460

/-- `C(A033270(n+1), log2(gcd(2, n)))` -/
def P4436267484695515401.Spec : Prop :=
  ∀ n, (P4436267484695515401.a n : ℤ) = A082460 (n + 1)

end A082460

/-! ## A082460.P8542155686946204156

`A010051(n+1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A082460.P8542155686946204156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010051 (n + 1) + a (n - 2)

end

end A082460.P8542155686946204156

namespace A082460

/-- `A010051(n+1)+a(n-2)` -/
def P8542155686946204156.Spec : Prop :=
  ∀ n, P8542155686946204156.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P13591743585576415554

`a(n-2)+C(2, A000005(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A082460.P13591743585576415554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.choose 2 (A000005 (n + 1)).toNat

end

end A082460.P13591743585576415554

namespace A082460

/-- `a(n-2)+C(2, A000005(n+1))` -/
def P13591743585576415554.Spec : Prop :=
  ∀ n, (P13591743585576415554.a n : ℤ) = A082460 (n + 1)

end A082460

/-! ## A082460.P8975779553633703862

`a(n-2)+val(A000010(n+1), n)` with `a(0)=0, a(1)=1`
-/

namespace A082460.P8975779553633703862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + SequenceMachineLib.valuation (A000010 (n + 1)).toNat n

end

end A082460.P8975779553633703862

namespace A082460

/-- `a(n-2)+val(A000010(n+1), n)` -/
def P8975779553633703862.Spec : Prop :=
  ∀ n, (P8975779553633703862.a n : ℤ) = A082460 (n + 1)

end A082460

/-! ## A082460.P10122213771354385413

`floor(a(n-2)+1/A001222(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A082460.P10122213771354385413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + 1 / (A001222 (n + 1) : ℚ)⌋

end

end A082460.P10122213771354385413

namespace A082460

/-- `floor(a(n-2)+1/A001222(n+1))` -/
def P10122213771354385413.Spec : Prop :=
  ∀ n, P10122213771354385413.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P7649196542351987655

`char[A000040(n+1)-1]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A082460.P7649196542351987655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 2)

end

end A082460.P7649196542351987655

namespace A082460

/-- `char[A000040(n+1)-1]+a(n-2)` -/
def P7649196542351987655.Spec : Prop :=
  ∀ n, (P7649196542351987655.a n : ℤ) = A082460 (n + 1)

end A082460

/-! ## A082460.P7898792093040515188

`floor(a(n-2)+A006530(n+1)/n)` with `a(0)=0, a(1)=1`
-/

namespace A082460.P7898792093040515188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (A006530 (n + 1) : ℚ) / (n : ℚ)⌋

end

end A082460.P7898792093040515188

namespace A082460

/-- `floor(a(n-2)+A006530(n+1)/n)` -/
def P7898792093040515188.Spec : Prop :=
  ∀ n, P7898792093040515188.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P6120779502212185152

`a(n-2)+C(n+2, A000203(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A082460.P6120779502212185152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.choose (n + 2) (A000203 (n + 1)).toNat

end

end A082460.P6120779502212185152

namespace A082460

/-- `a(n-2)+C(n+2, A000203(n+1))` -/
def P6120779502212185152.Spec : Prop :=
  ∀ n, (P6120779502212185152.a n : ℤ) = A082460 (n + 1)

end A082460

/-! ## A082460.P566245250541705158

`A033270(3-A093178(n)+n)`
-/

namespace A082460.P566245250541705158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (3 - A093178 n + (n : ℤ)).toNat

end

end A082460.P566245250541705158

namespace A082460

/-- `A033270(3-A093178(n)+n)` -/
def P566245250541705158.Spec : Prop :=
  ∀ n, P566245250541705158.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P2142050447768049109

`A033270(n/A093178(n)+2)`
-/

namespace A082460.P2142050447768049109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ) + 2)).toNat

end

end A082460.P2142050447768049109

namespace A082460

/-- `A033270(n/A093178(n)+2)` -/
def P2142050447768049109.Spec : Prop :=
  ∀ n, P2142050447768049109.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P4521618516659677890

`gcd(A033270(n+1), A091337(n))`
-/

namespace A082460.P4521618516659677890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033270 (n + 1)) (A091337 n)

end

end A082460.P4521618516659677890

namespace A082460

/-- `gcd(A033270(n+1), A091337(n))` -/
def P4521618516659677890.Spec : Prop :=
  ∀ n, (P4521618516659677890.a n : ℤ) = A082460 (n + 1)

end A082460

/-! ## A082460.P12216736289563282950

`A230980(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A082460.P12216736289563282950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A230980 (n + 1) - a (n - 1)

end

end A082460.P12216736289563282950

namespace A082460

/-- `A230980(n+1)-a(n-1)` -/
def P12216736289563282950.Spec : Prop :=
  ∀ n, P12216736289563282950.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P13796724397081984872

`∑[char[A000010(A014963(n+1))]]-a(n-1)` with `a(0)=0`
-/

namespace A082460.P13796724397081984872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A082460.P13796724397081984872

namespace A082460

/-- `∑[char[A000010(A014963(n+1))]]-a(n-1)` -/
def P13796724397081984872.Spec : Prop :=
  ∀ n, P13796724397081984872.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P3426294144082270655

`A008683((n+1)*A000005(n+1))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A082460.P3426294144082270655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008683 ((n + 1 : ℤ) * A000005 (n + 1)).toNat + a (n - 2)

end

end A082460.P3426294144082270655

namespace A082460

/-- `A008683((n+1)*A000005(n+1))+a(n-2)` -/
def P3426294144082270655.Spec : Prop :=
  ∀ n, P3426294144082270655.a n = A082460 (n + 1)

end A082460

/-! ## A082460.P1496466099695298689

`a(n-2)+C(2, A001222((n+1)²))` with `a(0)=0, a(1)=1`
-/

namespace A082460.P1496466099695298689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.choose 2 (A001222 ((n + 1) ^ 2)).toNat

end

end A082460.P1496466099695298689

namespace A082460

/-- `a(n-2)+C(2, A001222((n+1)²))` -/
def P1496466099695298689.Spec : Prop :=
  ∀ n, (P1496466099695298689.a n : ℤ) = A082460 (n + 1)

end A082460

/-!
# A082462: Let chi(k) = 1 if prime(k+1) - prime(k) = 2, = 0 otherwise; sequence gives a(n) = Sum_{k <= n} chi(k).

The programs for A082462, the canonical program `A082462.P1976247485161842933` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082462 has offset 1).

The definition of A082462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071538, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082462.P1976247485161842933

`A071538(A000040(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082462

/-- `A071538(A000040(n+1))` -/
def P1976247485161842933.Spec : Prop :=
  ∀ n, P1976247485161842933.a n = A082462 (n + 1)

theorem P1976247485161842933.correct : P1976247485161842933.Spec := by
  intro n
  simp only [A082462, Nat.add_sub_cancel]

end A082462

/-! ## A082462.P2853247539008002354

`n-A074239(n)`
-/

namespace A082462.P2853247539008002354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A074239 n

end

end A082462.P2853247539008002354

namespace A082462

/-- `n-A074239(n)` -/
def P2853247539008002354.Spec : Prop :=
  ∀ n, P2853247539008002354.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P15991279955497814037

`∑[char[A155752(n+1)]]`
-/

namespace A082462.P15991279955497814037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P15991279955497814037

namespace A082462

/-- `∑[char[A155752(n+1)]]` -/
def P15991279955497814037.Spec : Prop :=
  ∀ n, (P15991279955497814037.a n : ℤ) = A082462 (n + 1)

end A082462

/-! ## A082462.P3862731162853040544

`∑[val(A163981(n+1), 2)]`
-/

namespace A082462.P3862731162853040544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163981 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P3862731162853040544

namespace A082462

/-- `∑[val(A163981(n+1), 2)]` -/
def P3862731162853040544.Spec : Prop :=
  ∀ n, (P3862731162853040544.a n : ℤ) = A082462 (n + 1)

end A082462

/-! ## A082462.P14468139505470463237

`n-∑[A106002(n+1)]`
-/

namespace A082462.P14468139505470463237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P14468139505470463237

namespace A082462

/-- `n-∑[A106002(n+1)]` -/
def P14468139505470463237.Spec : Prop :=
  ∀ n, P14468139505470463237.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P8713496775796566

`∑[char[A029707(n+1)-1]]`
-/

namespace A082462.P8713496775796566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P8713496775796566

namespace A082462

/-- `∑[char[A029707(n+1)-1]]` -/
def P8713496775796566.Spec : Prop :=
  ∀ n, (P8713496775796566.a n : ℤ) = A082462 (n + 1)

end A082462

/-! ## A082462.P15890964070371276338

`∑[A062301(n+2)]`
-/

namespace A082462.P15890964070371276338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P15890964070371276338

namespace A082462

/-- `∑[A062301(n+2)]` -/
def P15890964070371276338.Spec : Prop :=
  ∀ n, P15890964070371276338.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P7261386246824400676

`A071538(p?[xor(2, n)])`
-/

namespace A082462.P7261386246824400676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A082462.P7261386246824400676

namespace A082462

/-- `A071538(p?[xor(2, n)])` -/
def P7261386246824400676.Spec : Prop :=
  ∀ n, P7261386246824400676.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P12879303912277729815

`A071538(A006005(n+1))`
-/

namespace A082462.P12879303912277729815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A006005 (n + 1)).toNat

end

end A082462.P12879303912277729815

namespace A082462

/-- `A071538(A006005(n+1))` -/
def P12879303912277729815.Spec : Prop :=
  ∀ n, P12879303912277729815.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P2177113819492332669

`A071538(A055670(n+1))`
-/

namespace A082462.P2177113819492332669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A055670 (n + 1)).toNat

end

end A082462.P2177113819492332669

namespace A082462

/-- `A071538(A055670(n+1))` -/
def P2177113819492332669.Spec : Prop :=
  ∀ n, P2177113819492332669.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P16827617968904743780

`A071538(A078444(n+1))`
-/

namespace A082462.P16827617968904743780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A078444 (n + 1)).toNat

end

end A082462.P16827617968904743780

namespace A082462

/-- `A071538(A078444(n+1))` -/
def P16827617968904743780.Spec : Prop :=
  ∀ n, P16827617968904743780.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P9429694326286827761

`A071538(A162735(n+1))`
-/

namespace A082462.P9429694326286827761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A162735 (n + 1)).toNat

end

end A082462.P9429694326286827761

namespace A082462

/-- `A071538(A162735(n+1))` -/
def P9429694326286827761.Spec : Prop :=
  ∀ n, P9429694326286827761.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P12246908896287232436

`A071538(A162800(n+1))`
-/

namespace A082462.P12246908896287232436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A162800 (n + 1)).toNat

end

end A082462.P12246908896287232436

namespace A082462

/-- `A071538(A162800(n+1))` -/
def P12246908896287232436.Spec : Prop :=
  ∀ n, P12246908896287232436.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P18123093229241186245

`∑[A353464(p?[2*n+1])]`
-/

namespace A082462.P18123093229241186245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P18123093229241186245

namespace A082462

/-- `∑[A353464(p?[2*n+1])]` -/
def P18123093229241186245.Spec : Prop :=
  ∀ n, P18123093229241186245.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P17159869465749302364

`A071538(A157049(n+1))`
-/

namespace A082462.P17159869465749302364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A157049 (n + 1)).toNat

end

end A082462.P17159869465749302364

namespace A082462

/-- `A071538(A157049(n+1))` -/
def P17159869465749302364.Spec : Prop :=
  ∀ n, P17159869465749302364.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P14501852686374972449

`A071538(A165972(n+1))`
-/

namespace A082462.P14501852686374972449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A165972 (n + 1)).toNat

end

end A082462.P14501852686374972449

namespace A082462

/-- `A071538(A165972(n+1))` -/
def P14501852686374972449.Spec : Prop :=
  ∀ n, P14501852686374972449.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P12094310920820577006

`A071538(A172367(n+1))`
-/

namespace A082462.P12094310920820577006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A172367 (n + 1)).toNat

end

end A082462.P12094310920820577006

namespace A082462

/-- `A071538(A172367(n+1))` -/
def P12094310920820577006.Spec : Prop :=
  ∀ n, P12094310920820577006.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P13914797001862339105

`∑[A322975(p?[2*n+1])]`
-/

namespace A082462.P13914797001862339105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322975 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P13914797001862339105

namespace A082462

/-- `∑[A322975(p?[2*n+1])]` -/
def P13914797001862339105.Spec : Prop :=
  ∀ n, P13914797001862339105.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P15327360457748440334

`∑[A061358(p?[2*n+1])]`
-/

namespace A082462.P15327360457748440334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P15327360457748440334

namespace A082462

/-- `∑[A061358(p?[2*n+1])]` -/
def P15327360457748440334.Spec : Prop :=
  ∀ n, P15327360457748440334.a n = A082462 (n + 1)

end A082462

/-! ## A082462.P18147548661733171450

`∑[A079055(p?[2*n+1])]`
-/

namespace A082462.P18147548661733171450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079055 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082462.P18147548661733171450

namespace A082462

/-- `∑[A079055(p?[2*n+1])]` -/
def P18147548661733171450.Spec : Prop :=
  ∀ n, P18147548661733171450.a n = A082462 (n + 1)

end A082462

/-!
# A082465: Least k>=1 such that n^2+kn+1 is prime.

The programs for A082465, there is no canonical definition to state claims against.
-/

/-! ## A082465.P2719764918802793816

`A074846(n+1)-(n+1)`
-/

namespace A082465.P2719764918802793816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074846 (n + 1) - (n + 1 : ℤ)

end

end A082465.P2719764918802793816

/-! ## A082465.P1588444249102832270

`A023443(A074846(n+1)-n)`
-/

namespace A082465.P1588444249102832270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074846 (n + 1) - (n : ℤ)).toNat

end

end A082465.P1588444249102832270

/-! ## A082465.P5154507946600322407

`(A074846(n+1)+1)%A020725(n+1)`
-/

namespace A082465.P5154507946600322407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074846 (n + 1) + 1) (A020725 (n + 1))

end

end A082465.P5154507946600322407

/-! ## A082465.P4246347584752094312

`(A089726(n+1)-n²)/(n+1)-2`
-/

namespace A082465.P4246347584752094312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089726 (n + 1) - (n ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ) - 2

end

end A082465.P4246347584752094312

/-! ## A082465.P13436900827066529885

`A002260(A074846(n+1)+A000217(n))`
-/

namespace A082465.P13436900827066529885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A074846 (n + 1) + A000217 n).toNat

end

end A082465.P13436900827066529885

/-! ## A082465.P11701948813308574992

`A144328(A161680(n)+A074846(n+1))`
-/

namespace A082465.P11701948813308574992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A161680 n + A074846 (n + 1)).toNat

end

end A082465.P11701948813308574992

/-! ## A082465.P14071079874459977911

`A056737(A089726(n+1)-1)`
-/

namespace A082465.P14071079874459977911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A089726 (n + 1) - 1).toNat

end

end A082465.P14071079874459977911

/-! ## A082465.P10650465845363845315

`A056737(xor(1, A089726(n+1)))`
-/

namespace A082465.P10650465845363845315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (Int.xor 1 (A089726 (n + 1))).toNat

end

end A082465.P10650465845363845315

/-!
# A082467: Least k>0 such that n-k and n+k are both primes.

The programs for A082467, there is no canonical definition to state claims against.
-/

/-! ## A082467.P4289961730889145606

`n+4-A078587(n+4)`
-/

namespace A082467.P4289961730889145606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) - A078587 (n + 4)

end

end A082467.P4289961730889145606

/-! ## A082467.P7486541782573850497

`sqrt(A143697(n+4))`
-/

namespace A082467.P7486541782573850497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143697 (n + 4) : ℝ)

end

end A082467.P7486541782573850497

/-! ## A082467.P2379697624350851360

`A078496(n+4)-(n+4)`
-/

namespace A082467.P2379697624350851360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (n + 4) - (n + 4 : ℤ)

end

end A082467.P2379697624350851360

/-! ## A082467.P9778687609323931449

`A078496(n+4)%A020705(n)`
-/

namespace A082467.P9778687609323931449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078496 (n + 4)) (A020705 n)

end

end A082467.P9778687609323931449

/-! ## A082467.P10346766141968871312

`4-A241686(n+4)+n`
-/

namespace A082467.P10346766141968871312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A241686 (n + 4) + (n : ℤ)

end

end A082467.P10346766141968871312

/-! ## A082467.P8220556458285042765

`A025581(2*A143697(n+4))+1`
-/

namespace A082467.P8220556458285042765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A143697 (n + 4)).toNat + 1

end

end A082467.P8220556458285042765

/-! ## A082467.P17098286973296270440

`A025581(A143697(n+4)+A143697(n+4)-1)`
-/

namespace A082467.P17098286973296270440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A143697 (n + 4) + (A143697 (n + 4) - 1)).toNat

end

end A082467.P17098286973296270440

/-! ## A082467.P12647246064153237613

`A138567(n+4)`
-/

namespace A082467.P12647246064153237613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138567 (n + 4)

end

end A082467.P12647246064153237613

/-!
# A082470: a(n) is the number of k >= 0 such that k! + prime(n) is prime.

The programs for A082470, there is no canonical definition to state claims against.
-/

/-! ## A082470.P14288871000031087120

`A125162(A000040(n+1))+C(2, n+2)`
-/

namespace A082470.P14288871000031087120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (A000040 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A082470.P14288871000031087120

/-! ## A082470.P15204921296920396206

`A125162(A000040(n+1))+A000007(n)`
-/

namespace A082470.P15204921296920396206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (A000040 (n + 1)).toNat + A000007 n

end

end A082470.P15204921296920396206

/-! ## A082470.P6787012189134089233

`A151815(n)+A125162(A000040(n+1))`
-/

namespace A082470.P6787012189134089233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151815 n + A125162 (A000040 (n + 1)).toNat

end

end A082470.P6787012189134089233

/-! ## A082470.P6650293992984767061

`A000038(n)!*A125162(A000040(n+1))`
-/

namespace A082470.P6650293992984767061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A125162 (A000040 (n + 1)).toNat

end

end A082470.P6650293992984767061

/-! ## A082470.P458626408555296983

`A125162(A014692(n+1)+n)+A000007(n)`
-/

namespace A082470.P458626408555296983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (A014692 (n + 1) + (n : ℤ)).toNat + A000007 n

end

end A082470.P458626408555296983

/-!
# A082471: a(1)=1, a(n) = Sum_{k=1..n-1} Fibonacci(k)*a(k).

The programs for A082471, the canonical program `A082471.P7523873616813199` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082471 has offset 1).

The definition of A082471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082471.P7523873616813199

`(A000045(n)+1)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082471

/-- `(A000045(n)+1)*a(n-1)` -/
def P7523873616813199.Spec : Prop :=
  ∀ n, P7523873616813199.a n = A082471 (n + 1)

theorem P7523873616813199.correct : P7523873616813199.Spec := by
  intro n
  simp only [A082471, Nat.add_sub_cancel]

end A082471

/-! ## A082471.P12908533424422524797

`∏[floor(ϕ*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A082471.P12908533424422524797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082471.P12908533424422524797

namespace A082471

/-- `∏[floor(ϕ*a(n-1))]` -/
def P12908533424422524797.Spec : Prop :=
  ∀ n, P12908533424422524797.a n = A082471 (n + 1)

end A082471

/-! ## A082471.P11497492691793196436

`round(∏[A000045(n)+1]/2)`
-/

namespace A082471.P11497492691793196436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A082471.P11497492691793196436

namespace A082471

/-- `round(∏[A000045(n)+1]/2)` -/
def P11497492691793196436.Spec : Prop :=
  ∀ n, P11497492691793196436.a n = A082471 (n + 1)

end A082471

/-! ## A082471.P3135128928769569467

`∏[A000045(n-char[1])+1]`
-/

namespace A082471.P3135128928769569467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n - (if ∃ j, f2 j = n then 1 else 0)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082471.P3135128928769569467

namespace A082471

/-- `∏[A000045(n-char[1])+1]` -/
def P3135128928769569467.Spec : Prop :=
  ∀ n, P3135128928769569467.a n = A082471 (n + 1)

end A082471

/-! ## A082471.P16447313209764685567

`a(n-1)*A001611(n)` with `a(0)=1, a(1)=1`
-/

namespace A082471.P16447313209764685567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A001611 n

end

end A082471.P16447313209764685567

namespace A082471

/-- `a(n-1)*A001611(n)` -/
def P16447313209764685567.Spec : Prop :=
  ∀ n, P16447313209764685567.a n = A082471 (n + 1)

end A082471

/-!
# A082472: a(1) = 1, a(n) = Sum_{k=1..n-1} a(k)*2^k.

The programs for A082472, there is no canonical definition to state claims against.
-/

/-! ## A082472.P14514310406125758960

`∏[floor(atan(n))+2^n]`
-/

namespace A082472.P14514310406125758960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082472.P14514310406125758960

/-! ## A082472.P14034512414864886035

`∏[or(2^n, floor(atan(n)))]`
-/

namespace A082472.P14034512414864886035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082472.P14034512414864886035

/-! ## A082472.P960536604050225247

`∏[xor(2^n, floor(atan(n)))]`
-/

namespace A082472.P960536604050225247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082472.P960536604050225247

/-! ## A082472.P11934213781206443871

`ceil(∏[2^n+1]/3)`
-/

namespace A082472.P11934213781206443871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉

end

end A082472.P11934213781206443871

/-! ## A082472.P4697016748417668472

`∏[or(char[1]+1, 2^n)]`
-/

namespace A082472.P4697016748417668472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((if ∃ j, f2 j = n then 1 else 0) + 1) (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082472.P4697016748417668472

/-!
# A082473: Numbers k such that k = phi(x)*core(x) for some x <= k, where phi(x) is the Euler totient function and core(x) the squarefree part of x.

The programs for A082473, there is no canonical definition to state claims against.
-/

/-! ## A082473.P10315662753623046473

`A002618(A194507(n+1))`
-/

namespace A082473.P10315662753623046473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A194507 (n + 1)).toNat

end

end A082473.P10315662753623046473

/-! ## A082473.P3167253385122700807

`A046152(A194507(n+1))-A033999(n)²`
-/

namespace A082473.P3167253385122700807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (A194507 (n + 1)).toNat - A033999 n ^ 2

end

end A082473.P3167253385122700807

/-! ## A082473.P15599605654997701124

`A046152(A194507(n+1))-A000120(2^val(n+1, 2))`
-/

namespace A082473.P15599605654997701124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (A194507 (n + 1)).toNat - A000120 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A082473.P15599605654997701124

/-! ## A082473.P4623598667382907767

`A118830(A129926(n+1))+A046152(A194507(n+1))`
-/

namespace A082473.P4623598667382907767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A129926 (n + 1)).toNat + A046152 (A194507 (n + 1)).toNat

end

end A082473.P4623598667382907767

/-! ## A082473.P15776866775708203021

`A000010(A194507(n+1)²)`
-/

namespace A082473.P15776866775708203021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A194507 (n + 1) ^ 2).toNat

end

end A082473.P15776866775708203021

/-! ## A082473.P850589483052597539

`A000010(A194507(n+1)^2)`
-/

namespace A082473.P850589483052597539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A194507 (n + 1) ^ 2).toNat

end

end A082473.P850589483052597539

/-! ## A082473.P14222764669974232719

`A000010(A194507(n+1)*A194507(n+1))`
-/

namespace A082473.P14222764669974232719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A194507 (n + 1) * A194507 (n + 1)).toNat

end

end A082473.P14222764669974232719

/-! ## A082473.P15396497143225951888

`lt[0, char[A002618(n+1)]]`
-/

namespace A082473.P15396497143225951888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082473.P15396497143225951888

/-! ## A082473.P15138280598624686580

`eq[1, char[A327171(n+1)]]`
-/

namespace A082473.P15138280598624686580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082473.P15138280598624686580

/-! ## A082473.P14294550053617115112

`eq[1, char[(n+1)*A000010(n+1)]]`
-/

namespace A082473.P14294550053617115112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082473.P14294550053617115112

/-! ## A082473.P7756013682874385050

`eq[1, char[(n+1)*(A039649(n+1)-1)]]`
-/

namespace A082473.P7756013682874385050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039649 (n + 1) - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082473.P7756013682874385050

/-! ## A082473.P472171177990796044

`lt[0, char[A000010((n+1)²)]]`
-/

namespace A082473.P472171177990796044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082473.P472171177990796044

/-! ## A082473.P13276516046635867102

`eq[1, char[A000010(∑[2*n+1])]]`
-/

namespace A082473.P13276516046635867102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f4 j)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082473.P13276516046635867102

/-! ## A082473.P7044993097439805071

`A327171(A194507(n+1)²)`
-/

namespace A082473.P7044993097439805071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (A194507 (n + 1) ^ 2).toNat

end

end A082473.P7044993097439805071

/-! ## A082473.P17280587084078435082

`A327171(A194507(n+1)*A194507(n+1))`
-/

namespace A082473.P17280587084078435082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (A194507 (n + 1) * A194507 (n + 1)).toNat

end

end A082473.P17280587084078435082

/-!
# A082474: Numbers n such that n=phi(x)*sigma(x) for some x<=n.

The programs for A082474, there is no canonical definition to state claims against.
-/

/-! ## A082474.P16410540649273112230

`record[A062354(A147981(n+1))]`
-/

namespace A082474.P16410540649273112230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (A147981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082474.P16410540649273112230

/-!
# A082475: Prime index i for consecutive primes p(i),p(i+1),p(i+2),p(i+3) that do not have a solution for the congruences p(i)^x+p(i+1)^x = p(i+2) mod p(i+3) and p(i+1)^x-p(i)^x = p(i+2) mod p(i+3).

The programs for A082475, there is no canonical definition to state claims against.
-/

/-! ## A082475.P13272385308859120788

`A000720(A082484(n+1))`
-/

namespace A082475.P13272385308859120788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082484 (n + 1)).toNat

end

end A082475.P13272385308859120788

/-! ## A082475.P8391295141371071919

`∩[A082371(n+1), A082374(n+1)]`
-/

namespace A082475.P8391295141371071919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082475.P8391295141371071919

/-!
# A082476: a(n) = Sum_{d|n} mu(d)^2*tau(d)^2.

The programs for A082476, the canonical program `A082476.P11184737203512620716` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082476 has offset 1).

The definition of A082476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061200, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082476.P9851632824355037098

`5^A001221(n+1)`
-/

namespace A082476.P9851632824355037098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A082476.P9851632824355037098

namespace A082476

/-- `5^A001221(n+1)` -/
def P9851632824355037098.Spec : Prop :=
  ∀ n, P9851632824355037098.a n = (A082476 (n + 1) : ℚ)

end A082476

/-! ## A082476.P11184737203512620716

`A061200(A007947(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082476

/-- `A061200(A007947(n+1))` -/
def P11184737203512620716.Spec : Prop :=
  ∀ n, P11184737203512620716.a n = A082476 (n + 1)

theorem P11184737203512620716.correct : P11184737203512620716.Spec := by
  intro n
  simp only [A082476, Nat.add_sub_cancel]

end A082476

/-! ## A082476.P13898627017060921816

`∏{p}[n+1, 5%(#+4)]`
-/

namespace A082476.P13898627017060921816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 5 % (p + 4)

end

end A082476.P13898627017060921816

namespace A082476

/-- `∏{p}[n+1, 5%(#+4)]` -/
def P13898627017060921816.Spec : Prop :=
  ∀ n, (P13898627017060921816.a n : ℤ) = A082476 (n + 1)

end A082476

/-! ## A082476.P905973522464225405

`∏{p}[n+1, val(#, 4)+5]`
-/

namespace A082476.P905973522464225405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation p 4 + 5)

end

end A082476.P905973522464225405

namespace A082476

/-- `∏{p}[n+1, val(#, 4)+5]` -/
def P905973522464225405.Spec : Prop :=
  ∀ n, (P905973522464225405.a n : ℤ) = A082476 (n + 1)

end A082476

/-! ## A082476.P3704320972989745305

`∏{p}[n+1, gcd(5, 5*#)]`
-/

namespace A082476.P3704320972989745305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 5 (5 * p)

end

end A082476.P3704320972989745305

namespace A082476

/-- `∏{p}[n+1, gcd(5, 5*#)]` -/
def P3704320972989745305.Spec : Prop :=
  ∀ n, (P3704320972989745305.a n : ℤ) = A082476 (n + 1)

end A082476

/-! ## A082476.P15404744744379924077

`∏{e}[n+1, (5^#)%10]`
-/

namespace A082476.P15404744744379924077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 5 ^ Nat.factorization (f1 n) p % 10

end

end A082476.P15404744744379924077

namespace A082476

/-- `∏{e}[n+1, (5^#)%10]` -/
def P15404744744379924077.Spec : Prop :=
  ∀ n, (P15404744744379924077.a n : ℤ) = A082476 (n + 1)

end A082476

/-! ## A082476.P8222763194409419369

`∏{e}[n+1, or(5, 4%#)]`
-/

namespace A082476.P8222763194409419369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 5 (4 % Nat.factorization (f1 n) p)

end

end A082476.P8222763194409419369

namespace A082476

/-- `∏{e}[n+1, or(5, 4%#)]` -/
def P8222763194409419369.Spec : Prop :=
  ∀ n, (P8222763194409419369.a n : ℤ) = A082476 (n + 1)

end A082476

/-! ## A082476.P12987154628631155382

`∏{e}[∏{p}[n+1, #], #+4]`
-/

namespace A082476.P12987154628631155382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 4)

end

end A082476.P12987154628631155382

namespace A082476

/-- `∏{e}[∏{p}[n+1, #], #+4]` -/
def P12987154628631155382.Spec : Prop :=
  ∀ n, (P12987154628631155382.a n : ℤ) = A082476 (n + 1)

end A082476

/-! ## A082476.P9683199852247842582

`5^∑{e}[∏{p}[n+1, #], #]`
-/

namespace A082476.P9683199852247842582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A082476.P9683199852247842582

namespace A082476

/-- `5^∑{e}[∏{p}[n+1, #], #]` -/
def P9683199852247842582.Spec : Prop :=
  ∀ n, (P9683199852247842582.a n : ℤ) = A082476 (n + 1)

end A082476

/-! ## A082476.P4293401499025584598

`∏{p}[n+1, C(2, #²)+5]`
-/

namespace A082476.P4293401499025584598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.choose 2 (p ^ 2) + 5)

end

end A082476.P4293401499025584598

namespace A082476

/-- `∏{p}[n+1, C(2, #²)+5]` -/
def P4293401499025584598.Spec : Prop :=
  ∀ n, (P4293401499025584598.a n : ℤ) = A082476 (n + 1)

end A082476

/-! ## A082476.P11954200919690244892

`∏{p}[n+1, 4-or(#, -1)]`
-/

namespace A082476.P11954200919690244892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (4 - Int.lor (p : ℤ) (-1))

end

end A082476.P11954200919690244892

namespace A082476

/-- `∏{p}[n+1, 4-or(#, -1)]` -/
def P11954200919690244892.Spec : Prop :=
  ∀ n, P11954200919690244892.a n = A082476 (n + 1)

end A082476

/-! ## A082476.P18092289981051275737

`∏{p}[n+1, floor(1/#)+5]`
-/

namespace A082476.P18092289981051275737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊1 / (p : ℚ)⌋ + 5)

end

end A082476.P18092289981051275737

namespace A082476

/-- `∏{p}[n+1, floor(1/#)+5]` -/
def P18092289981051275737.Spec : Prop :=
  ∀ n, P18092289981051275737.a n = A082476 (n + 1)

end A082476

/-! ## A082476.P3250647655979680060

`∏{e}[n+1, ceil(1/#)+4]`
-/

namespace A082476.P3250647655979680060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ + 4)

end

end A082476.P3250647655979680060

namespace A082476

/-- `∏{e}[n+1, ceil(1/#)+4]` -/
def P3250647655979680060.Spec : Prop :=
  ∀ n, P3250647655979680060.a n = A082476 (n + 1)

end A082476

/-! ## A082476.P15159986775751389273

`5^∑{p}[n+1, ceil(1/#)]`
-/

namespace A082476.P15159986775751389273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ)

end

end A082476.P15159986775751389273

namespace A082476

/-- `5^∑{p}[n+1, ceil(1/#)]` -/
def P15159986775751389273.Spec : Prop :=
  ∀ n, P15159986775751389273.a n = (A082476 (n + 1) : ℚ)

end A082476

/-! ## A082476.P15354680974328167246

`5^∑{e}[n+1, ceil(1/#)]`
-/

namespace A082476.P15354680974328167246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ)

end

end A082476.P15354680974328167246

namespace A082476

/-- `5^∑{e}[n+1, ceil(1/#)]` -/
def P15354680974328167246.Spec : Prop :=
  ∀ n, P15354680974328167246.a n = (A082476 (n + 1) : ℚ)

end A082476

/-! ## A082476.P12360262546416804196

`∑{d}[n+1, A351521(#)]`
-/

namespace A082476.P12360262546416804196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351521 d

end

end A082476.P12360262546416804196

namespace A082476

/-- `∑{d}[n+1, A351521(#)]` -/
def P12360262546416804196.Spec : Prop :=
  ∀ n, P12360262546416804196.a n = A082476 (n + 1)

end A082476

/-! ## A082476.P685309200390540808

`A061200(∏{p}[n+1, #])`
-/

namespace A082476.P685309200390540808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A082476.P685309200390540808

namespace A082476

/-- `A061200(∏{p}[n+1, #])` -/
def P685309200390540808.Spec : Prop :=
  ∀ n, P685309200390540808.a n = A082476 (n + 1)

end A082476

/-! ## A082476.P12681749167931404520

`A061391(∏{p}[n+1, #])`
-/

namespace A082476.P12681749167931404520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A082476.P12681749167931404520

namespace A082476

/-- `A061391(∏{p}[n+1, #])` -/
def P12681749167931404520.Spec : Prop :=
  ∀ n, P12681749167931404520.a n = A082476 (n + 1)

end A082476

/-! ## A082476.P16546379521134269221

`A062367(∏{p}[n+1, #])`
-/

namespace A082476.P16546379521134269221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062367 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A082476.P16546379521134269221

namespace A082476

/-- `A062367(∏{p}[n+1, #])` -/
def P16546379521134269221.Spec : Prop :=
  ∀ n, P16546379521134269221.a n = A082476 (n + 1)

end A082476

/-! ## A082476.P2532729117507824701

`A165826(∏{p}[n+1, #])`
-/

namespace A082476.P2532729117507824701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A082476.P2532729117507824701

namespace A082476

/-- `A165826(∏{p}[n+1, #])` -/
def P2532729117507824701.Spec : Prop :=
  ∀ n, P2532729117507824701.a n = A082476 (n + 1)

end A082476

/-!
# A082477: Number of divisors d of n such that d+1 is also a divisor of n+1.

The programs for A082477, the canonical program `A082477.P4870333948597579502` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082477 has offset 1).

The definition of A082477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082477.P4870333948597579502

`∑{d}[n+1, val(#²+n+1, n+1+#)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082477

/-- `∑{d}[n+1, val(#²+n+1, n+1+#)]` -/
def P4870333948597579502.Spec : Prop :=
  ∀ n, (P4870333948597579502.a n : ℤ) = A082477 (n + 1)

theorem P4870333948597579502.correct : P4870333948597579502.Spec := by
  intro n
  simp only [A082477, Nat.add_sub_cancel]

end A082477

/-! ## A082477.P10965825495522488588

`∑{d}[n+1, A135523(A184636(n+2)%A184636(#+1)+1)]`
-/

namespace A082477.P10965825495522488588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A135523 (Int.tmod (A184636 (n + 2)) (A184636 (d + 1)) + 1).toNat

end

end A082477.P10965825495522488588

namespace A082477

/-- `∑{d}[n+1, A135523(A184636(n+2)%A184636(#+1)+1)]` -/
def P10965825495522488588.Spec : Prop :=
  ∀ n, P10965825495522488588.a n = A082477 (n + 1)

end A082477

/-! ## A082477.P16944936562514462112

`∑{d}[n+1, A051731(A000124(n+1)+#)]`
-/

namespace A082477.P16944936562514462112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051731 (A000124 (n + 1) + (d : ℤ)).toNat

end

end A082477.P16944936562514462112

namespace A082477

/-- `∑{d}[n+1, A051731(A000124(n+1)+#)]` -/
def P16944936562514462112.Spec : Prop :=
  ∀ n, P16944936562514462112.a n = A082477 (n + 1)

end A082477

/-! ## A082477.P15112741539218613303

`∑{d}[n+1, A051731(A000096(n)+2+#)]`
-/

namespace A082477.P15112741539218613303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051731 (A000096 n + 2 + (d : ℤ)).toNat

end

end A082477.P15112741539218613303

namespace A082477

/-- `∑{d}[n+1, A051731(A000096(n)+2+#)]` -/
def P15112741539218613303.Spec : Prop :=
  ∀ n, P15112741539218613303.a n = A082477 (n + 1)

end A082477

/-! ## A082477.P17165728473214405249

`∑{d}[n+1, A051731(A000217(n+1)+1+#)]`
-/

namespace A082477.P17165728473214405249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051731 (A000217 (n + 1) + 1 + (d : ℤ)).toNat

end

end A082477.P17165728473214405249

namespace A082477

/-- `∑{d}[n+1, A051731(A000217(n+1)+1+#)]` -/
def P17165728473214405249.Spec : Prop :=
  ∀ n, P17165728473214405249.a n = A082477 (n + 1)

end A082477

/-!
# A082478: Number of divisors d of n such that (d+1) is a divisor of (n+1) and (d+2) a divisor of (n+2).

The programs for A082478, there is no canonical definition to state claims against.
-/

/-! ## A082478.P459718719188577923

`gcd(A100051(A129760(n+1)), A152406(n))`
-/

namespace A082478.P459718719188577923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100051 (A129760 (n + 1)).toNat) (A152406 n)

end

end A082478.P459718719188577923

/-! ## A082478.P13757397862190604811

`A177702(A284475(n+1)*A284510(n+1))`
-/

namespace A082478.P13757397862190604811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (A284475 (n + 1) * A284510 (n + 1)).toNat

end

end A082478.P13757397862190604811

/-! ## A082478.P3267280676611401484

`gcd(A107753(n+1), A284098(n+1))`
-/

namespace A082478.P3267280676611401484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107753 (n + 1)) (A284098 (n + 1))

end

end A082478.P3267280676611401484

/-! ## A082478.P16738954368064348800

`A000120(gcd(A000120(n+1), A321162(n+1)))`
-/

namespace A082478.P16738954368064348800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.gcd (A000120 (n + 1)) (A321162 (n + 1)))

end

end A082478.P16738954368064348800

/-! ## A082478.P7524378330570147653

`gcd(A001285(2*(n+1)), A348747(A321162(n+1)))`
-/

namespace A082478.P7524378330570147653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001285 (2 * (n + 1))) (A348747 (A321162 (n + 1)).toNat)

end

end A082478.P7524378330570147653

/-!
# A082479: a(1)=1, a(n)=a(floor(n/2))+a(floor(n/3)).

The programs for A082479, the canonical program `A082479.P12551636185061714668` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082479 has offset 1).

The definition of A082479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/2)-1)+a(floor((n+1)/3)-1)` (program `A082479.P12551636185061714668`, by `A082479.P12551636185061714668.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082479.P12551636185061714668

`a(floor((n+1)/2)-1)+a(floor((n+1)/3)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082479

/-- `a(floor((n+1)/2)-1)+a(floor((n+1)/3)-1)` -/
def P12551636185061714668.Spec : Prop :=
  ∀ n, (P12551636185061714668.a n : ℤ) = A082479 (n + 1)

theorem P12551636185061714668.correct : P12551636185061714668.Spec := by
  intro n
  simp only [A082479, Nat.add_sub_cancel]

end A082479

/-! ## A082479.P1435512953436542207

`A088468(ceil(n/2))`
-/

namespace A082479.P1435512953436542207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 ⌈(n : ℚ) / 2⌉.toNat

end

end A082479.P1435512953436542207

namespace A082479

/-- `A088468(ceil(n/2))` -/
def P1435512953436542207.Spec : Prop :=
  ∀ n, P1435512953436542207.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P12978768323778060826

`A061984(ceil(n/2))+1`
-/

namespace A082479.P12978768323778060826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 ⌈(n : ℚ) / 2⌉.toNat + 1

end

end A082479.P12978768323778060826

namespace A082479

/-- `A061984(ceil(n/2))+1` -/
def P12978768323778060826.Spec : Prop :=
  ∀ n, P12978768323778060826.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P9650035782948691453

`A160519(A069924(n+1))`
-/

namespace A082479.P9650035782948691453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160519 (A069924 (n + 1)).toNat

end

end A082479.P9650035782948691453

namespace A082479

/-- `A160519(A069924(n+1))` -/
def P9650035782948691453.Spec : Prop :=
  ∀ n, P9650035782948691453.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P15118435305560947064

`A088468(n+1)-A099741(n+1)`
-/

namespace A082479.P15118435305560947064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (n + 1) - A099741 (n + 1)

end

end A082479.P15118435305560947064

namespace A082479

/-- `A088468(n+1)-A099741(n+1)` -/
def P15118435305560947064.Spec : Prop :=
  ∀ n, P15118435305560947064.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P15199165826061584586

`A088468(A008619(n+1)-1)%(n+2)`
-/

namespace A082479.P15199165826061584586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088468 (A008619 (n + 1) - 1).toNat) (n + 2 : ℤ)

end

end A082479.P15199165826061584586

namespace A082479

/-- `A088468(A008619(n+1)-1)%(n+2)` -/
def P15199165826061584586.Spec : Prop :=
  ∀ n, P15199165826061584586.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P5003808053363089489

`A088468(n+1)-A088468(A002264(n+1))`
-/

namespace A082479.P5003808053363089489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (n + 1) - A088468 (A002264 (n + 1)).toNat

end

end A082479.P5003808053363089489

namespace A082479

/-- `A088468(n+1)-A088468(A002264(n+1))` -/
def P5003808053363089489.Spec : Prop :=
  ∀ n, P5003808053363089489.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P11707336602140353718

`A099741(A032766(n+1))`
-/

namespace A082479.P11707336602140353718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A032766 (n + 1)).toNat

end

end A082479.P11707336602140353718

namespace A082479

/-- `A099741(A032766(n+1))` -/
def P11707336602140353718.Spec : Prop :=
  ∀ n, P11707336602140353718.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P9970583136223183900

`A099741(A168233(n+1))`
-/

namespace A082479.P9970583136223183900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A168233 (n + 1)).toNat

end

end A082479.P9970583136223183900

namespace A082479

/-- `A099741(A168233(n+1))` -/
def P9970583136223183900.Spec : Prop :=
  ∀ n, P9970583136223183900.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P10848450981870825719

`A099741(A189669(n+1))`
-/

namespace A082479.P10848450981870825719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A189669 (n + 1)).toNat

end

end A082479.P10848450981870825719

namespace A082479

/-- `A099741(A189669(n+1))` -/
def P10848450981870825719.Spec : Prop :=
  ∀ n, P10848450981870825719.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P17316713035238089091

`A099741(A189725(n+1))`
-/

namespace A082479.P17316713035238089091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A189725 (n + 1)).toNat

end

end A082479.P17316713035238089091

namespace A082479

/-- `A099741(A189725(n+1))` -/
def P17316713035238089091.Spec : Prop :=
  ∀ n, P17316713035238089091.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P4618418476933581812

`A099741(∑[gcd(2, n)])`
-/

namespace A082479.P4618418476933581812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082479.P4618418476933581812

namespace A082479

/-- `A099741(∑[gcd(2, n)])` -/
def P4618418476933581812.Spec : Prop :=
  ∀ n, P4618418476933581812.a n = A082479 (n + 1)

end A082479

/-! ## A082479.P12930629045528380889

`A099741(comp[3*n]+1)`
-/

namespace A082479.P12930629045528380889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A082479.P12930629045528380889

namespace A082479

/-- `A099741(comp[3*n]+1)` -/
def P12930629045528380889.Spec : Prop :=
  ∀ n, P12930629045528380889.a n = A082479 (n + 1)

end A082479

/-!
# A082480: a(n) = Product_{k=1..n} (F(k)+1) where F(k) denotes the k-th Fibonacci number.

The programs for A082480, the canonical program `A082480.P1599197227695491752` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082480 has offset 0).

The definition of A082480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082480.P1599197227695491752

`(A000045(n)+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082480

/-- `(A000045(n)+1)*a(n-1)` -/
def P1599197227695491752.Spec : Prop :=
  ∀ n, P1599197227695491752.a n = A082480 n

theorem P1599197227695491752.correct : P1599197227695491752.Spec := by
  intro n
  simp only [A082480]

end A082480

/-! ## A082480.P4467383367849616259

`∏[a(n-1)+a(n-2)-1]` with `a(0)=1, a(1)=2`
-/

namespace A082480.P4467383367849616259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082480.P4467383367849616259

namespace A082480

/-- `∏[a(n-1)+a(n-2)-1]` -/
def P4467383367849616259.Spec : Prop :=
  ∀ n, P4467383367849616259.a n = A082480 n

end A082480

/-! ## A082480.P2301817805039755883

`∏[a(n-1)-(1-a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A082480.P2301817805039755883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082480.P2301817805039755883

namespace A082480

/-- `∏[a(n-1)-(1-a(n-2))]` -/
def P2301817805039755883.Spec : Prop :=
  ∀ n, P2301817805039755883.a n = A082480 n

end A082480

/-! ## A082480.P5142776638729084205

`∏[A001611(n)]`
-/

namespace A082480.P5142776638729084205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082480.P5142776638729084205

namespace A082480

/-- `∏[A001611(n)]` -/
def P5142776638729084205.Spec : Prop :=
  ∀ n, P5142776638729084205.a n = A082480 n

end A082480

/-!
# A082482: a(n) = floor of (2^n-1)/n.

The programs for A082482, the canonical program `A082482.P16917293129588664612` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082482 has offset 1).

The definition of A082482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082482.P16917293129588664612

`floor((2^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082482

/-- `floor((2^(n+1)-1)/(n+1))` -/
def P16917293129588664612.Spec : Prop :=
  ∀ n, P16917293129588664612.a n = A082482 (n + 1)

theorem P16917293129588664612.correct : P16917293129588664612.Spec := by
  intro n
  simp only [A082482, Nat.add_sub_cancel]

end A082482

/-! ## A082482.P7699301158968662686

`A162214(n+1)/(n+1)`
-/

namespace A082482.P7699301158968662686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162214 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082482.P7699301158968662686

namespace A082482

/-- `A162214(n+1)/(n+1)` -/
def P7699301158968662686.Spec : Prop :=
  ∀ n, P7699301158968662686.a n = (A082482 (n + 1) : ℚ)

end A082482

/-! ## A082482.P10073057706656939215

`(2^(n+1)-1-A082495(n+1))/(n+1)`
-/

namespace A082482.P10073057706656939215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1 - A082495 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082482.P10073057706656939215

namespace A082482

/-- `(2^(n+1)-1-A082495(n+1))/(n+1)` -/
def P10073057706656939215.Spec : Prop :=
  ∀ n, P10073057706656939215.a n = (A082482 (n + 1) : ℚ)

end A082482

/-! ## A082482.P12876540615544850621

`A053638(n+1)-1`
-/

namespace A082482.P12876540615544850621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) - 1

end

end A082482.P12876540615544850621

namespace A082482

/-- `A053638(n+1)-1` -/
def P12876540615544850621.Spec : Prop :=
  ∀ n, P12876540615544850621.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P3668186338580849638

`A000799(n+1)-A036987(n)`
-/

namespace A082482.P3668186338580849638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - A036987 n

end

end A082482.P3668186338580849638

namespace A082482

/-- `A000799(n+1)-A036987(n)` -/
def P3668186338580849638.Spec : Prop :=
  ∀ n, P3668186338580849638.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P599353817184190645

`A000799(n+1)+A043545(n)-1`
-/

namespace A082482.P599353817184190645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) + (A043545 n - 1)

end

end A082482.P599353817184190645

namespace A082482

/-- `A000799(n+1)+A043545(n)-1` -/
def P599353817184190645.Spec : Prop :=
  ∀ n, P599353817184190645.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P12139126024310068410

`A373895(n+1)-A036453(n+1)`
-/

namespace A082482.P12139126024310068410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373895 (n + 1) - A036453 (n + 1)

end

end A082482.P12139126024310068410

namespace A082482

/-- `A373895(n+1)-A036453(n+1)` -/
def P12139126024310068410.Spec : Prop :=
  ∀ n, P12139126024310068410.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P295337914744627899

`A373895(n+1)-(A057427(n)+1)`
-/

namespace A082482.P295337914744627899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373895 (n + 1) - (A057427 n + 1)

end

end A082482.P295337914744627899

namespace A082482

/-- `A373895(n+1)-(A057427(n)+1)` -/
def P295337914744627899.Spec : Prop :=
  ∀ n, P295337914744627899.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P11336372246569092532

`A373895(n+1)+A057428(n)-1`
-/

namespace A082482.P11336372246569092532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373895 (n + 1) + (A057428 n - 1)

end

end A082482.P11336372246569092532

namespace A082482

/-- `A373895(n+1)+A057428(n)-1` -/
def P11336372246569092532.Spec : Prop :=
  ∀ n, P11336372246569092532.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P8251319467592110979

`A053637(n+1)+A054650(n+1)-1`
-/

namespace A082482.P8251319467592110979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053637 (n + 1) + (A054650 (n + 1) - 1)

end

end A082482.P8251319467592110979

namespace A082482

/-- `A053637(n+1)+A054650(n+1)-1` -/
def P8251319467592110979.Spec : Prop :=
  ∀ n, P8251319467592110979.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P11585639133550520892

`A053639(n+1)-(A065482(n+1)+1)`
-/

namespace A082482.P11585639133550520892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (n + 1) - (A065482 (n + 1) + 1)

end

end A082482.P11585639133550520892

namespace A082482

/-- `A053639(n+1)-(A065482(n+1)+1)` -/
def P11585639133550520892.Spec : Prop :=
  ∀ n, P11585639133550520892.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P8710432399120844521

`ceil(A000325(n+1)/(n+1))`
-/

namespace A082482.P8710432399120844521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000325 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A082482.P8710432399120844521

namespace A082482

/-- `ceil(A000325(n+1)/(n+1))` -/
def P8710432399120844521.Spec : Prop :=
  ∀ n, P8710432399120844521.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P8316110214580783756

`ceil(A130103(n+1)/(n+1))`
-/

namespace A082482.P8316110214580783756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130103 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A082482.P8316110214580783756

namespace A082482

/-- `ceil(A130103(n+1)/(n+1))` -/
def P8316110214580783756.Spec : Prop :=
  ∀ n, P8316110214580783756.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P2208365802964943476

`A128093(n+1)/(n+1)-1`
-/

namespace A082482.P2208365802964943476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128093 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A082482.P2208365802964943476

namespace A082482

/-- `A128093(n+1)/(n+1)-1` -/
def P2208365802964943476.Spec : Prop :=
  ∀ n, P2208365802964943476.a n = (A082482 (n + 1) : ℚ)

end A082482

/-! ## A082482.P1109510462804277408

`2^(n+1)-A213255(n+2)`
-/

namespace A082482.P1109510462804277408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A213255 (n + 2)

end

end A082482.P1109510462804277408

namespace A082482

/-- `2^(n+1)-A213255(n+2)` -/
def P1109510462804277408.Spec : Prop :=
  ∀ n, P1109510462804277408.a n = A082482 (n + 1)

theorem P1109510462804277408.correct : P1109510462804277408.Spec := by
  intro n
  simp only [A082482, Nat.add_sub_cancel, A082482.P1109510462804277408.a, A082482.P16917293129588664612.a, A213255, A213255.P16176587692621198560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082482

/-! ## A082482.P5041933391630187294

`ceil((∑[A000225(n)]+1)/(n+1))`
-/

namespace A082482.P5041933391630187294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A082482.P5041933391630187294

namespace A082482

/-- `ceil((∑[A000225(n)]+1)/(n+1))` -/
def P5041933391630187294.Spec : Prop :=
  ∀ n, P5041933391630187294.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P6241789777004155902

`round(∑[A141023(n)]/(n+1))+1`
-/

namespace A082482.P6241789777004155902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)) + 1

end

end A082482.P6241789777004155902

namespace A082482

/-- `round(∑[A141023(n)]/(n+1))+1` -/
def P6241789777004155902.Spec : Prop :=
  ∀ n, P6241789777004155902.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P2276430912718453458

`ceil(A011782(n+2)/(n+1))-1`
-/

namespace A082482.P2276430912718453458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011782 (n + 2) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A082482.P2276430912718453458

namespace A082482

/-- `ceil(A011782(n+2)/(n+1))-1` -/
def P2276430912718453458.Spec : Prop :=
  ∀ n, P2276430912718453458.a n = A082482 (n + 1)

end A082482

/-! ## A082482.P13583206153959062717

`A048578(n)-(A213255(n+2)+1)`
-/

namespace A082482.P13583206153959062717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A213255 (n + 2) + 1)

end

end A082482.P13583206153959062717

namespace A082482

/-- `A048578(n)-(A213255(n+2)+1)` -/
def P13583206153959062717.Spec : Prop :=
  ∀ n, P13583206153959062717.a n = A082482 (n + 1)

theorem P13583206153959062717.correct : P13583206153959062717.Spec := by
  intro n
  simp only [A082482, Nat.add_sub_cancel, A082482.P13583206153959062717.a, A082482.P16917293129588664612.a, A048578, A048578.P13686089786535013419.a, A213255, A213255.P16176587692621198560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082482

/-!
# A082483: Numbers k such that 1/(5-s(k)) is an integer where s(k) = Sum_{i=1..k} 1/2^floor(sqrt(i)).

The programs for A082483, there is no canonical definition to state claims against.
-/

/-! ## A082483.P18263232931612925765

`A002024(A016897(Δ[(n+1)²²]))+8`
-/

namespace A082483.P18263232931612925765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A016897 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + 8

end

end A082483.P18263232931612925765

/-! ## A082483.P6354644172603542233

`A000326(n+4)-A081604(A120053(n))`
-/

namespace A082483.P6354644172603542233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 4) - A081604 (A120053 n).toNat

end

end A082483.P6354644172603542233

/-! ## A082483.P6915920102655407063

`A000326(n+4)-A345032(A000105(n))`
-/

namespace A082483.P6915920102655407063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 4) - A345032 (A000105 n).toNat

end

end A082483.P6915920102655407063

/-!
# A082484: First of four consecutive primes p, q, r, s such that neither of the congruences p^x+q^x = r (mod s) and q^x-p^x = r (mod s) has a solution.

The programs for A082484, there is no canonical definition to state claims against.
-/

/-! ## A082484.P3626594301747766464

`A000040(A082475(n+1))`
-/

namespace A082484.P3626594301747766464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A082475 (n + 1)).toNat

end

end A082484.P3626594301747766464

/-! ## A082484.P7270461890958894292

`A008578(A082475(n+1)+1)`
-/

namespace A082484.P7270461890958894292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A082475 (n + 1) + 1).toNat

end

end A082484.P7270461890958894292

/-! ## A082484.P17074092435124325181

`A065091(A082475(n+1)-1)`
-/

namespace A082484.P17074092435124325181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A082475 (n + 1) - 1).toNat

end

end A082484.P17074092435124325181

/-! ## A082484.P735931124657437966

`A073846(2*A082475(n+1))`
-/

namespace A082484.P735931124657437966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A082475 (n + 1)).toNat

end

end A082484.P735931124657437966

/-! ## A082484.P16737146289133473428

`A082500(2*A082475(n+1))`
-/

namespace A082484.P16737146289133473428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A082475 (n + 1)).toNat

end

end A082484.P16737146289133473428

/-! ## A082484.P2924588872098822524

`∩[A082372(n+1), A082376(n+1)]`
-/

namespace A082484.P2924588872098822524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082484.P2924588872098822524

/-!
# A082485: Numbers k such that 1/(2-s(k)) is an integer where s(k) = Sum_{i=1..k} 1/3^floor(sqrt(i)).

The programs for A082485, the canonical program `A082485.P16970956585615996064` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082485 has offset 1).

The definition of A082485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082485.P16970956585615996064

`∑[2*comp[3^n-1]+2]-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082485

/-- `∑[2*comp[3^n-1]+2]-1` -/
def P16970956585615996064.Spec : Prop :=
  ∀ n, P16970956585615996064.a n = A082485 (n + 1)

theorem P16970956585615996064.correct : P16970956585615996064.Spec := by
  intro n
  simp only [A082485, Nat.add_sub_cancel]

end A082485

/-! ## A082485.P720267778225366057

`A004273(∑[comp[floor(3^(n-1))]])`
-/

namespace A082485.P720267778225366057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082485.P720267778225366057

namespace A082485

/-- `A004273(∑[comp[floor(3^(n-1))]])` -/
def P720267778225366057.Spec : Prop :=
  ∀ n, P720267778225366057.a n = A082485 (n + 1)

end A082485

/-! ## A082485.P11432225878958010302

`A060747(∑[comp[floor(3^(n-1))]])`
-/

namespace A082485.P11432225878958010302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082485.P11432225878958010302

namespace A082485

/-- `A060747(∑[comp[floor(3^(n-1))]])` -/
def P11432225878958010302.Spec : Prop :=
  ∀ n, P11432225878958010302.a n = A082485 (n + 1)

end A082485

/-! ## A082485.P1404875893704185109

`A285250(∑[comp[floor(3^(n-1))]])`
-/

namespace A082485.P1404875893704185109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082485.P1404875893704185109

namespace A082485

/-- `A285250(∑[comp[floor(3^(n-1))]])` -/
def P1404875893704185109.Spec : Prop :=
  ∀ n, P1404875893704185109.a n = A082485 (n + 1)

end A082485

/-! ## A082485.P3056405942832388129

`∑[∑[A182743(A207626(n+1))]]`
-/

namespace A082485.P3056405942832388129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182743 (A207626 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082485.P3056405942832388129

namespace A082485

/-- `∑[∑[A182743(A207626(n+1))]]` -/
def P3056405942832388129.Spec : Prop :=
  ∀ n, P3056405942832388129.a n = A082485 (n + 1)

end A082485

/-!
# A082486: Decimal expansion of the constant c satisfying Sum_{k>=1} 1/c^sqrtint(k) = 1 where sqrtint(k) = floor(sqrt(k)).

The programs for A082486, there is no canonical definition to state claims against.
-/

/-! ## A082486.P405496858049160868

`floor(A178255(n)+acot(n))`
-/

namespace A082486.P405496858049160868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178255 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A082486.P405496858049160868

/-! ## A082486.P5024075861403780658

`ceil(acot(n))*A222132(n)`
-/

namespace A082486.P5024075861403780658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A222132 (n + 1)

end

end A082486.P5024075861403780658

/-! ## A082486.P4045161768856098355

`A178255(n)+A000007(n)`
-/

namespace A082486.P4045161768856098355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) + A000007 n

end

end A082486.P4045161768856098355

/-! ## A082486.P708871848853314726

`A054977(n)*A222132(n)`
-/

namespace A082486.P708871848853314726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A222132 (n + 1)

end

end A082486.P708871848853314726

/-! ## A082486.P13531087007469015978

`A054977(n)²*A222133(n)`
-/

namespace A082486.P13531087007469015978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n ^ 2 * A222133 (n + 1)

end

end A082486.P13531087007469015978

/-! ## A082486.P5625831215263815501

`(A000007(n)+1)*A222132(n)`
-/

namespace A082486.P5625831215263815501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A222132 (n + 1)

end

end A082486.P5625831215263815501

/-! ## A082486.P7349145539816648125

`A222133(n)+3*A000007(n)`
-/

namespace A082486.P7349145539816648125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222133 (n + 1) + 3 * A000007 n

end

end A082486.P7349145539816648125

/-! ## A082486.P8958415409880004149

`2*A178255(n)-A222132(n)`
-/

namespace A082486.P8958415409880004149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178255 (n + 1) - A222132 (n + 1)

end

end A082486.P8958415409880004149

/-! ## A082486.P17464546940801154809

`8/A040012(n)*A222132(n)`
-/

namespace A082486.P17464546940801154809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (A040012 n : ℚ) * (A222132 (n + 1) : ℚ)

end

end A082486.P17464546940801154809

/-! ## A082486.P6258186161031119055

`A178255(n)+A001316(n)%2`
-/

namespace A082486.P6258186161031119055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) + Int.tmod (A001316 n) 2

end

end A082486.P6258186161031119055

/-! ## A082486.P11515211052215350266

`A178255(n)+A000035(A001316(n))`
-/

namespace A082486.P11515211052215350266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) + A000035 (A001316 n).toNat

end

end A082486.P11515211052215350266

/-! ## A082486.P16212239020152057117

`A000034(A001316(n))*A222132(n)`
-/

namespace A082486.P16212239020152057117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001316 n).toNat * A222132 (n + 1)

end

end A082486.P16212239020152057117

/-! ## A082486.P5280116497368192848

`A178255(n)-(A222133(n)-A222132(n))`
-/

namespace A082486.P5280116497368192848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - (A222133 (n + 1) - A222132 (n + 1))

end

end A082486.P5280116497368192848

/-! ## A082486.P16948011553543725499

`A014963(A322489(n+1))*A222132(n)`
-/

namespace A082486.P16948011553543725499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A322489 (n + 1)).toNat * A222132 (n + 1)

end

end A082486.P16948011553543725499

/-! ## A082486.P5440419396440503260

`A178255(n)+A073424(A000124(n))`
-/

namespace A082486.P5440419396440503260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) + A073424 (A000124 n).toNat

end

end A082486.P5440419396440503260

/-! ## A082486.P13186464899198754653

`A035214(A000124(n))*A222132(n)`
-/

namespace A082486.P13186464899198754653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000124 n).toNat * A222132 (n + 1)

end

end A082486.P13186464899198754653

/-! ## A082486.P244317058418928251

`A035214(A000124(n))²*A222133(n)`
-/

namespace A082486.P244317058418928251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000124 n).toNat ^ 2 * A222133 (n + 1)

end

end A082486.P244317058418928251

/-! ## A082486.P3429368140308144985

`A035214(A000096(n))*A222132(n)`
-/

namespace A082486.P3429368140308144985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000096 n).toNat * A222132 (n + 1)

end

end A082486.P3429368140308144985

/-! ## A082486.P15447573741571016824

`A178255(n)+A073424(A137688(n))`
-/

namespace A082486.P15447573741571016824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) + A073424 (A137688 n).toNat

end

end A082486.P15447573741571016824

/-! ## A082486.P11066082774625886716

`A035214(A137688(n))*A222132(n)`
-/

namespace A082486.P11066082774625886716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A137688 n).toNat * A222132 (n + 1)

end

end A082486.P11066082774625886716

/-!
# A082488: a(n) = Sum_{k = 0..n} C(n,k) * C(n+k,k) * C(n+2*k,k) * C(n+3*k,k).

The programs for A082488, there is no canonical definition to state claims against.
-/

/-! ## A082488.P5250654084646974091

`A229142(eq[4, A025581(n)])`
-/

namespace A082488.P5250654084646974091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082488.P5250654084646974091

/-! ## A082488.P1776018741226036337

`A229142(eq[5, A193739(n)])`
-/

namespace A082488.P1776018741226036337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082488.P1776018741226036337

/-! ## A082488.P17478783127431495248

`A229142(eq[16, A130321(n)])`
-/

namespace A082488.P17478783127431495248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082488.P17478783127431495248

/-! ## A082488.P10587194297671039446

`A229142(A055999(n+2)+1)`
-/

namespace A082488.P10587194297671039446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (A055999 (n + 2) + 1).toNat

end

end A082488.P10587194297671039446

/-! ## A082488.P3399503923942121108

`A229142(eq[5, A004736(n+1)])`
-/

namespace A082488.P3399503923942121108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082488.P3399503923942121108

/-!
# A082489: a(n) = Sum_{k = 0..n} C(n,k) * C(n+k,k) * C(n+2*k,k) * C(n+3*k,k) * C(n+4*k,k).

The programs for A082489, there is no canonical definition to state claims against.
-/

/-! ## A082489.P9513661646566025631

`A229142(eq[5, A025581(n)])`
-/

namespace A082489.P9513661646566025631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082489.P9513661646566025631

/-! ## A082489.P539378375200040712

`A229142(Δ[A023551(n+1)])`
-/

namespace A082489.P539378375200040712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (f1 (n + 1) - f1 n).toNat

end

end A082489.P539378375200040712

/-! ## A082489.P5424526985075767052

`A229142(Δ[A026054(n+3)])`
-/

namespace A082489.P5424526985075767052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (f1 (n + 1) - f1 n).toNat

end

end A082489.P5424526985075767052

/-! ## A082489.P8749280001490410559

`A229142(A000124(n+6)-7)`
-/

namespace A082489.P8749280001490410559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (A000124 (n + 6) - 7).toNat

end

end A082489.P8749280001490410559

/-!
# A082490: Exponent of highest power of 3 dividing sum(0<=k<n, C(2n,n)).

The programs for A082490, the canonical program `A082490.P13979797646623718017` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082490 has offset 1).

The definition of A082490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082490.P13979797646623718017

`2*A007949(n+1)+A000989(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082490

/-- `2*A007949(n+1)+A000989(n+1)` -/
def P13979797646623718017.Spec : Prop :=
  ∀ n, P13979797646623718017.a n = A082490 (n + 1)

theorem P13979797646623718017.correct : P13979797646623718017.Spec := by
  intro n
  simp only [A082490, Nat.add_sub_cancel]

end A082490

/-! ## A082490.P7537322340380381502

`val((n+1)²*C(2*(n+1), n+1), 3)`
-/

namespace A082490.P7537322340380381502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2 * Nat.choose (2 * (n + 1)) (n + 1)) 3

end

end A082490.P7537322340380381502

namespace A082490

/-- `val((n+1)²*C(2*(n+1), n+1), 3)` -/
def P7537322340380381502.Spec : Prop :=
  ∀ n, (P7537322340380381502.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P9409370150549159754

`A053735(n)+1-A089643(n+1)`
-/

namespace A082490.P9409370150549159754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + (1 - A089643 (n + 1))

end

end A082490.P9409370150549159754

namespace A082490

/-- `A053735(n)+1-A089643(n+1)` -/
def P9409370150549159754.Spec : Prop :=
  ∀ n, P9409370150549159754.a n = A082490 (n + 1)

end A082490

/-! ## A082490.P4019957672183534562

`A173523(n+1)-A089643(n+1)`
-/

namespace A082490.P4019957672183534562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) - A089643 (n + 1)

end

end A082490.P4019957672183534562

namespace A082490

/-- `A173523(n+1)-A089643(n+1)` -/
def P4019957672183534562.Spec : Prop :=
  ∀ n, P4019957672183534562.a n = A082490 (n + 1)

end A082490

/-! ## A082490.P3682792004567658308

`A000989(n+1)+A001222(A318666(2*(n+1))²)`
-/

namespace A082490.P3682792004567658308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (n + 1) + A001222 (A318666 (2 * (n + 1)) ^ 2).toNat

end

end A082490.P3682792004567658308

namespace A082490

/-- `A000989(n+1)+A001222(A318666(2*(n+1))²)` -/
def P3682792004567658308.Spec : Prop :=
  ∀ n, P3682792004567658308.a n = A082490 (n + 1)

end A082490

/-! ## A082490.P6472388496182289305

`A000989(n)+Δ[A054861(2*n)]`
-/

namespace A082490.P6472388496182289305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n + (f1 (n + 1) - f1 n)

end

end A082490.P6472388496182289305

namespace A082490

/-- `A000989(n)+Δ[A054861(2*n)]` -/
def P6472388496182289305.Spec : Prop :=
  ∀ n, P6472388496182289305.a n = A082490 (n + 1)

end A082490

/-! ## A082490.P18227144150577689960

`A054861(2*(n+1))-A344853(n)`
-/

namespace A082490.P18227144150577689960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (2 * (n + 1)) - A344853 n

end

end A082490.P18227144150577689960

namespace A082490

/-- `A054861(2*(n+1))-A344853(n)` -/
def P18227144150577689960.Spec : Prop :=
  ∀ n, P18227144150577689960.a n = A082490 (n + 1)

end A082490

/-! ## A082490.P9486821763808462331

`A054861(2*(n+1))-2*A054861(n)`
-/

namespace A082490.P9486821763808462331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (2 * (n + 1)) - 2 * A054861 n

end

end A082490.P9486821763808462331

namespace A082490

/-- `A054861(2*(n+1))-2*A054861(n)` -/
def P9486821763808462331.Spec : Prop :=
  ∀ n, P9486821763808462331.a n = A082490 (n + 1)

end A082490

/-! ## A082490.P14511253917091084690

`A004525(A344853(2*(n+1)))-A344853(n)`
-/

namespace A082490.P14511253917091084690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A344853 (2 * (n + 1))).toNat - A344853 n

end

end A082490.P14511253917091084690

namespace A082490

/-- `A004525(A344853(2*(n+1)))-A344853(n)` -/
def P14511253917091084690.Spec : Prop :=
  ∀ n, P14511253917091084690.a n = A082490 (n + 1)

end A082490

/-! ## A082490.P6199845337944401134

`A000989(n+1)+A001222(A318666((n+1)²))`
-/

namespace A082490.P6199845337944401134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (n + 1) + A001222 (A318666 ((n + 1) ^ 2)).toNat

end

end A082490.P6199845337944401134

namespace A082490

/-- `A000989(n+1)+A001222(A318666((n+1)²))` -/
def P6199845337944401134.Spec : Prop :=
  ∀ n, P6199845337944401134.a n = A082490 (n + 1)

end A082490

/-! ## A082490.P7134302160020904522

`val(A006134(n), 3)`
-/

namespace A082490.P7134302160020904522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006134 n).toNat 3

end

end A082490.P7134302160020904522

namespace A082490

/-- `val(A006134(n), 3)` -/
def P7134302160020904522.Spec : Prop :=
  ∀ n, (P7134302160020904522.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P17194994785545758142

`val(∑[A000984(n)], 3)`
-/

namespace A082490.P17194994785545758142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A082490.P17194994785545758142

namespace A082490

/-- `val(∑[A000984(n)], 3)` -/
def P17194994785545758142.Spec : Prop :=
  ∀ n, (P17194994785545758142.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P5742741569461806260

`val(A100066(2*(n+1)), 3)`
-/

namespace A082490.P5742741569461806260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A100066 (2 * (n + 1))).toNat 3

end

end A082490.P5742741569461806260

namespace A082490

/-- `val(A100066(2*(n+1)), 3)` -/
def P5742741569461806260.Spec : Prop :=
  ∀ n, (P5742741569461806260.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P7265327157130042984

`val(A124642(2*n+1), 3)`
-/

namespace A082490.P7265327157130042984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124642 (2 * n + 1)).toNat 3

end

end A082490.P7265327157130042984

namespace A082490

/-- `val(A124642(2*n+1), 3)` -/
def P7265327157130042984.Spec : Prop :=
  ∀ n, (P7265327157130042984.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P14036342033552214769

`val(A174783(2*n+1), 3)`
-/

namespace A082490.P14036342033552214769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A174783 (2 * n + 1)).toNat 3

end

end A082490.P14036342033552214769

namespace A082490

/-- `val(A174783(2*n+1), 3)` -/
def P14036342033552214769.Spec : Prop :=
  ∀ n, (P14036342033552214769.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P7703113008818980364

`val(A078478(2*(n+2)), 3)`
-/

namespace A082490.P7703113008818980364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078478 (2 * (n + 2))).toNat 3

end

end A082490.P7703113008818980364

namespace A082490

/-- `val(A078478(2*(n+2)), 3)` -/
def P7703113008818980364.Spec : Prop :=
  ∀ n, (P7703113008818980364.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P15658749005134777857

`val(∑[(n+1)*A000108(n)], 3)`
-/

namespace A082490.P15658749005134777857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A082490.P15658749005134777857

namespace A082490

/-- `val(∑[(n+1)*A000108(n)], 3)` -/
def P15658749005134777857.Spec : Prop :=
  ∀ n, (P15658749005134777857.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P5293896680252385752

`val(∑[A028329(n)], 3)`
-/

namespace A082490.P5293896680252385752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A082490.P5293896680252385752

namespace A082490

/-- `val(∑[A028329(n)], 3)` -/
def P5293896680252385752.Spec : Prop :=
  ∀ n, (P5293896680252385752.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P18098220071830321700

`val(∑[round(A100320(n)/2)], 3)`
-/

namespace A082490.P18098220071830321700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100320 n : ℚ) / 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A082490.P18098220071830321700

namespace A082490

/-- `val(∑[round(A100320(n)/2)], 3)` -/
def P18098220071830321700.Spec : Prop :=
  ∀ n, (P18098220071830321700.a n : ℤ) = A082490 (n + 1)

end A082490

/-! ## A082490.P7765715549763004572

`val(A002544(n), 3)`
-/

namespace A082490.P7765715549763004572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002544 n).toNat 3

end

end A082490.P7765715549763004572

namespace A082490

/-- `val(A002544(n), 3)` -/
def P7765715549763004572.Spec : Prop :=
  ∀ n, (P7765715549763004572.a n : ℤ) = A082490 (n + 1)

end A082490

/-!
# A082491: a(n) = n! * d(n), where n! = factorial numbers (A000142), d(n) = subfactorial numbers (A000166).

The programs for A082491, the canonical program `A082491.P14553396994209066988` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082491 has offset 0).

The definition of A082491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082491.P5203993870432494596

`n²*a(n-1)+(-1)^n*n!` with `a(0)=1`
-/

namespace A082491.P5203993870432494596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 2 : ℤ) * a (n - 1) + (-1) ^ n * (Nat.factorial n : ℤ)

end

end A082491.P5203993870432494596

namespace A082491

/-- `n²*a(n-1)+(-1)^n*n!` -/
def P5203993870432494596.Spec : Prop :=
  ∀ n, P5203993870432494596.a n = A082491 n

end A082491

/-! ## A082491.P14553396994209066988

`n!*A000166(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082491

/-- `n!*A000166(n)` -/
def P14553396994209066988.Spec : Prop :=
  ∀ n, P14553396994209066988.a n = A082491 n

theorem P14553396994209066988.correct : P14553396994209066988.Spec := by
  intro n
  simp only [A082491]

end A082491

/-! ## A082491.P10277375101970068869

`abs(n!*A182386(n))`
-/

namespace A082491.P10277375101970068869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A182386 n|

end

end A082491.P10277375101970068869

namespace A082491

/-- `abs(n!*A182386(n))` -/
def P10277375101970068869.Spec : Prop :=
  ∀ n, P10277375101970068869.a n = A082491 n

end A082491

/-! ## A082491.P4073599862218016865

`n!*A008290(∑[n])`
-/

namespace A082491.P4073599862218016865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082491.P4073599862218016865

namespace A082491

/-- `n!*A008290(∑[n])` -/
def P4073599862218016865.Spec : Prop :=
  ∀ n, P4073599862218016865.a n = A082491 n

end A082491

/-! ## A082491.P7364255439895673420

`n!*A068106(∑[n])`
-/

namespace A082491.P7364255439895673420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A068106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082491.P7364255439895673420

namespace A082491

/-- `n!*A068106(∑[n])` -/
def P7364255439895673420.Spec : Prop :=
  ∀ n, P7364255439895673420.a n = A082491 n

end A082491

/-!
# A082492: Integer n expressed in bases from n, n-1, ..., 1.

The programs for A082492, there is no canonical definition to state claims against.
-/

/-! ## A082492.P232513656922891026

`A063432(∑[char[∑[n]]]²-n)`
-/

namespace A082492.P232513656922891026
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082492.P232513656922891026

/-! ## A082492.P11253352355435065367

`and(-1, A063432(A038722(n+1)))`
-/

namespace A082492.P11253352355435065367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A063432 (A038722 (n + 1)).toNat)

end

end A082492.P11253352355435065367

/-! ## A082492.P9947781847397831248

`gcd(floor(acot(n)), A063432(A061579(n)+1))`
-/

namespace A082492.P9947781847397831248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A063432 (A061579 n + 1).toNat)

end

end A082492.P9947781847397831248

/-! ## A082492.P10034321810308934096

`gcd(A000038(n), A063432(A038722(n+1)))`
-/

namespace A082492.P10034321810308934096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A063432 (A038722 (n + 1)).toNat)

end

end A082492.P10034321810308934096

/-! ## A082492.P1675826009117605240

`A063432(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A082492.P1675826009117605240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A082492.P1675826009117605240

/-!
# A082493: a(n) = n*ceiling(2^n/n) - 2^n.

The programs for A082493, the canonical program `A082493.P16454038366450422022` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082493 has offset 1).

The definition of A082493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*ceil(2^(n+1)/(n+1))-2^(n+1)` (program `A082493.P16454038366450422022`, by `A082493.P16454038366450422022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082493.P16454038366450422022

`(n+1)*ceil(2^(n+1)/(n+1))-2^(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082493

/-- `(n+1)*ceil(2^(n+1)/(n+1))-2^(n+1)` -/
def P16454038366450422022.Spec : Prop :=
  ∀ n, P16454038366450422022.a n = A082493 (n + 1)

theorem P16454038366450422022.correct : P16454038366450422022.Spec := by
  intro n
  simp only [A082493, Nat.add_sub_cancel]

end A082493

/-! ## A082493.P10348616438970142942

`A082494(n+1)%(n+1)`
-/

namespace A082493.P10348616438970142942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082494 (n + 1)) (n + 1 : ℤ)

end

end A082493.P10348616438970142942

namespace A082493

/-- `A082494(n+1)%(n+1)` -/
def P10348616438970142942.Spec : Prop :=
  ∀ n, P10348616438970142942.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P3684677916809492713

`A043545(n)*A082494(n+1)`
-/

namespace A082493.P3684677916809492713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A082494 (n + 1)

end

end A082493.P3684677916809492713

namespace A082493

/-- `A043545(n)*A082494(n+1)` -/
def P3684677916809492713.Spec : Prop :=
  ∀ n, P3684677916809492713.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P3064714838562847216

`and(A003817(n), A082494(n+1))`
-/

namespace A082493.P3064714838562847216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A082494 (n + 1))

end

end A082493.P3064714838562847216

namespace A082493

/-- `and(A003817(n), A082494(n+1))` -/
def P3064714838562847216.Spec : Prop :=
  ∀ n, P3064714838562847216.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P15142137929844252838

`lcm(A080940(n+1), A082494(n+1))`
-/

namespace A082493.P15142137929844252838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080940 (n + 1)) (A082494 (n + 1))

end

end A082493.P15142137929844252838

namespace A082493

/-- `lcm(A080940(n+1), A082494(n+1))` -/
def P15142137929844252838.Spec : Prop :=
  ∀ n, (P15142137929844252838.a n : ℤ) = A082493 (n + 1)

end A082493

/-! ## A082493.P7846414195424148358

`A082494(n+1)*A099894(2*A099894(n))`
-/

namespace A082493.P7846414195424148358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082494 (n + 1) * A099894 (2 * A099894 n).toNat

end

end A082493.P7846414195424148358

namespace A082493

/-- `A082494(n+1)*A099894(2*A099894(n))` -/
def P7846414195424148358.Spec : Prop :=
  ∀ n, P7846414195424148358.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P13524815624540475275

`(A053638(n+1)-A000799(n+1))*A082494(n+1)`
-/

namespace A082493.P13524815624540475275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053638 (n + 1) - A000799 (n + 1)) * A082494 (n + 1)

end

end A082493.P13524815624540475275

namespace A082493

/-- `(A053638(n+1)-A000799(n+1))*A082494(n+1)` -/
def P13524815624540475275.Spec : Prop :=
  ∀ n, P13524815624540475275.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P11119426380928523696

`(n*(2^(n+1))%(n+1))%(n+1)`
-/

namespace A082493.P11119426380928523696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 ^ (n + 1) % (n + 1)) % (n + 1)

end

end A082493.P11119426380928523696

namespace A082493

/-- `(n*(2^(n+1))%(n+1))%(n+1)` -/
def P11119426380928523696.Spec : Prop :=
  ∀ n, (P11119426380928523696.a n : ℤ) = A082493 (n + 1)

end A082493

/-! ## A082493.P11644273316611664356

`abs(∑[A000079(n)]%(n+1)-n)`
-/

namespace A082493.P11644273316611664356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) - (n : ℤ)|

end

end A082493.P11644273316611664356

namespace A082493

/-- `abs(∑[A000079(n)]%(n+1)-n)` -/
def P11644273316611664356.Spec : Prop :=
  ∀ n, P11644273316611664356.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P15251687897459786649

`abs(∑[A267615(n)]%(n+1)-n)`
-/

namespace A082493.P15251687897459786649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) - (n : ℤ)|

end

end A082493.P15251687897459786649

namespace A082493

/-- `abs(∑[A267615(n)]%(n+1)-n)` -/
def P15251687897459786649.Spec : Prop :=
  ∀ n, P15251687897459786649.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P4915912192046325361

`abs(A000225(n+1)%(n+1)-n)`
-/

namespace A082493.P4915912192046325361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000225 (n + 1)) (n + 1 : ℤ) - (n : ℤ)|

end

end A082493.P4915912192046325361

namespace A082493

/-- `abs(A000225(n+1)%(n+1)-n)` -/
def P4915912192046325361.Spec : Prop :=
  ∀ n, P4915912192046325361.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P6069588786714381685

`A128093(n+1)%A000079(n)`
-/

namespace A082493.P6069588786714381685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128093 (n + 1)) (A000079 n)

end

end A082493.P6069588786714381685

namespace A082493

/-- `A128093(n+1)%A000079(n)` -/
def P6069588786714381685.Spec : Prop :=
  ∀ n, P6069588786714381685.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P10033135820636920310

`and(A000225(n), A128093(n+1))`
-/

namespace A082493.P10033135820636920310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A128093 (n + 1))

end

end A082493.P10033135820636920310

namespace A082493

/-- `and(A000225(n), A128093(n+1))` -/
def P10033135820636920310.Spec : Prop :=
  ∀ n, P10033135820636920310.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P8717927730921516084

`and(A003817(n), A128093(n+1))`
-/

namespace A082493.P8717927730921516084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A128093 (n + 1))

end

end A082493.P8717927730921516084

namespace A082493

/-- `and(A003817(n), A128093(n+1))` -/
def P8717927730921516084.Spec : Prop :=
  ∀ n, P8717927730921516084.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P11750963394096296257

`and(A052551(n), A128093(n+1))`
-/

namespace A082493.P11750963394096296257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A128093 (n + 1))

end

end A082493.P11750963394096296257

namespace A082493

/-- `and(A052551(n), A128093(n+1))` -/
def P11750963394096296257.Spec : Prop :=
  ∀ n, P11750963394096296257.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P732033649480895554

`and(A052955(n), A128093(n+1))`
-/

namespace A082493.P732033649480895554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052955 n) (A128093 (n + 1))

end

end A082493.P732033649480895554

namespace A082493

/-- `and(A052955(n), A128093(n+1))` -/
def P732033649480895554.Spec : Prop :=
  ∀ n, P732033649480895554.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P4090027981326693359

`and(A055010(n), A128093(n+1))`
-/

namespace A082493.P4090027981326693359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055010 n) (A128093 (n + 1))

end

end A082493.P4090027981326693359

namespace A082493

/-- `and(A055010(n), A128093(n+1))` -/
def P4090027981326693359.Spec : Prop :=
  ∀ n, P4090027981326693359.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P18306520620158732421

`and(A075427(n), A128093(n+1))`
-/

namespace A082493.P18306520620158732421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075427 n) (A128093 (n + 1))

end

end A082493.P18306520620158732421

namespace A082493

/-- `and(A075427(n), A128093(n+1))` -/
def P18306520620158732421.Spec : Prop :=
  ∀ n, P18306520620158732421.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P5474911686100543037

`and(A077858(n), A128093(n+1))`
-/

namespace A082493.P5474911686100543037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077858 n) (A128093 (n + 1))

end

end A082493.P5474911686100543037

namespace A082493

/-- `and(A077858(n), A128093(n+1))` -/
def P5474911686100543037.Spec : Prop :=
  ∀ n, P5474911686100543037.a n = A082493 (n + 1)

end A082493

/-! ## A082493.P11342177037253251228

`and(A077885(n), A128093(n+1))`
-/

namespace A082493.P11342177037253251228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077885 n) (A128093 (n + 1))

end

end A082493.P11342177037253251228

namespace A082493

/-- `and(A077885(n), A128093(n+1))` -/
def P11342177037253251228.Spec : Prop :=
  ∀ n, P11342177037253251228.a n = A082493 (n + 1)

end A082493

/-!
# A082494: a(n) = n - (2^n (mod n)).

The programs for A082494, the canonical program `A082494.P7337767156106625034` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082494 has offset 1).

The definition of A082494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082494.P7337767156106625034

`1-A015910(n+1)+n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082494

/-- `1-A015910(n+1)+n` -/
def P7337767156106625034.Spec : Prop :=
  ∀ n, P7337767156106625034.a n = A082494 (n + 1)

theorem P7337767156106625034.correct : P7337767156106625034.Spec := by
  intro n
  simp only [A082494, Nat.add_sub_cancel]

end A082494

/-! ## A082494.P6307048084983370094

`n+1-A191561(n+1)%(n+1)`
-/

namespace A082494.P6307048084983370094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A191561 (n + 1)) (n + 1 : ℤ)

end

end A082494.P6307048084983370094

namespace A082494

/-- `n+1-A191561(n+1)%(n+1)` -/
def P6307048084983370094.Spec : Prop :=
  ∀ n, P6307048084983370094.a n = A082494 (n + 1)

end A082494

/-! ## A082494.P18220073421692836717

`A082493(n+1)+Δ[or(n, a(n-1))]` with `a(0)=0`
-/

namespace A082494.P18220073421692836717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082493 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A082494.P18220073421692836717

namespace A082494

/-- `A082493(n+1)+Δ[or(n, a(n-1))]` -/
def P18220073421692836717.Spec : Prop :=
  ∀ n, P18220073421692836717.a n = A082494 (n + 1)

end A082494

/-! ## A082494.P6978359404193019860

`A024000(A015910(n+1))+n`
-/

namespace A082494.P6978359404193019860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A015910 (n + 1)).toNat + (n : ℤ)

end

end A082494.P6978359404193019860

namespace A082494

/-- `A024000(A015910(n+1))+n` -/
def P6978359404193019860.Spec : Prop :=
  ∀ n, P6978359404193019860.a n = A082494 (n + 1)

end A082494

/-! ## A082494.P2019415783919610224

`A099894(n)+A082493(n+1)`
-/

namespace A082494.P2019415783919610224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n + A082493 (n + 1)

end

end A082494.P2019415783919610224

namespace A082494

/-- `A099894(n)+A082493(n+1)` -/
def P2019415783919610224.Spec : Prop :=
  ∀ n, P2019415783919610224.a n = A082494 (n + 1)

end A082494

/-! ## A082494.P912703774137445470

`1-log2(A112987(n+1))+n`
-/

namespace A082494.P912703774137445470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.logb 2 (A112987 (n + 1) : ℝ) + (n : ℝ)

end

end A082494.P912703774137445470

namespace A082494

/-- `1-log2(A112987(n+1))+n` -/
def P912703774137445470.Spec : Prop :=
  ∀ n, P912703774137445470.a n = (A082494 (n + 1) : ℝ)

end A082494

/-! ## A082494.P5605639439448323810

`1-(2^(n+1))%(n+1)+n`
-/

namespace A082494.P5605639439448323810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 ^ (n + 1) % (n + 1) : ℕ) : ℤ) + (n : ℤ)

end

end A082494.P5605639439448323810

namespace A082494

/-- `1-(2^(n+1))%(n+1)+n` -/
def P5605639439448323810.Spec : Prop :=
  ∀ n, P5605639439448323810.a n = A082494 (n + 1)

end A082494

/-! ## A082494.P697376431061665662

`-2^(n+1)%(n+1)+n+1`
-/

namespace A082494.P697376431061665662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(2 ^ (n + 1) : ℤ)) (n + 1 : ℤ) + (n + 1 : ℤ)

end

end A082494.P697376431061665662

namespace A082494

/-- `-2^(n+1)%(n+1)+n+1` -/
def P697376431061665662.Spec : Prop :=
  ∀ n, P697376431061665662.a n = A082494 (n + 1)

end A082494

/-! ## A082494.P12968201438196759354

`n+1-∑[2*a(n-1)]%(n+1)` with `a(0)=2, a(1)=2`
-/

namespace A082494.P12968201438196759354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A082494.P12968201438196759354

namespace A082494

/-- `n+1-∑[2*a(n-1)]%(n+1)` -/
def P12968201438196759354.Spec : Prop :=
  ∀ n, P12968201438196759354.a n = A082494 (n + 1)

end A082494

/-! ## A082494.P15819626108898446463

`abs(A000079(n+1)%(n+1)-n)+1`
-/

namespace A082494.P15819626108898446463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000079 (n + 1)) (n + 1 : ℤ) - (n : ℤ)| + 1

end

end A082494.P15819626108898446463

namespace A082494

/-- `abs(A000079(n+1)%(n+1)-n)+1` -/
def P15819626108898446463.Spec : Prop :=
  ∀ n, P15819626108898446463.a n = A082494 (n + 1)

end A082494

/-!
# A082495: a(n) = (2^n - 1) mod n.

The programs for A082495, the canonical program `A082495.P9407354496609593188` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082495 has offset 1).

The definition of A082495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1)-1)%(n+1)` (program `A082495.P9407354496609593188`, by `A082495.P9407354496609593188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082495.P9625627706192654257

`A015910(n+1)+A048298(n+1)-1`
-/

namespace A082495.P9625627706192654257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1) + A048298 (n + 1) - 1

end

end A082495.P9625627706192654257

namespace A082495

/-- `A015910(n+1)+A048298(n+1)-1` -/
def P9625627706192654257.Spec : Prop :=
  ∀ n, P9625627706192654257.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P9407354496609593188

`(2^(n+1)-1)%(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082495

/-- `(2^(n+1)-1)%(n+1)` -/
def P9407354496609593188.Spec : Prop :=
  ∀ n, P9407354496609593188.a n = A082495 (n + 1)

theorem P9407354496609593188.correct : P9407354496609593188.Spec := by
  intro n
  simp only [A082495, Nat.add_sub_cancel]

end A082495

/-! ## A082495.P16265799637660217093

`A357531(n+1)-1`
-/

namespace A082495.P16265799637660217093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357531 (n + 1) - 1

end

end A082495.P16265799637660217093

namespace A082495

/-- `A357531(n+1)-1` -/
def P16265799637660217093.Spec : Prop :=
  ∀ n, P16265799637660217093.a n = A082495 (n + 1)

theorem P16265799637660217093.correct : P16265799637660217093.Spec := by
  intro n
  simp only [A082495, Nat.add_sub_cancel, A082495.P16265799637660217093.a, A082495.P9407354496609593188.a, A357531, A357531.P3489620701216592602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082495

/-! ## A082495.P14798058294546383011

`n-A082493(n+1)`
-/

namespace A082495.P14798058294546383011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082493 (n + 1)

end

end A082495.P14798058294546383011

namespace A082495

/-- `n-A082493(n+1)` -/
def P14798058294546383011.Spec : Prop :=
  ∀ n, P14798058294546383011.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P2282226089708967383

`A015910(n+1)+A099894(n)-1`
-/

namespace A082495.P2282226089708967383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1) + (A099894 n - 1)

end

end A082495.P2282226089708967383

namespace A082495

/-- `A015910(n+1)+A099894(n)-1` -/
def P2282226089708967383.Spec : Prop :=
  ∀ n, P2282226089708967383.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P9698675336574723105

`A099894(n)-A082494(n+1)+n`
-/

namespace A082495.P9698675336574723105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n - A082494 (n + 1) + (n : ℤ)

end

end A082495.P9698675336574723105

namespace A082495

/-- `A099894(n)-A082494(n+1)+n` -/
def P9698675336574723105.Spec : Prop :=
  ∀ n, P9698675336574723105.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P14413378958642079288

`n-A043545(n)*A082494(n+1)`
-/

namespace A082495.P14413378958642079288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A043545 n * A082494 (n + 1)

end

end A082495.P14413378958642079288

namespace A082495

/-- `n-A043545(n)*A082494(n+1)` -/
def P14413378958642079288.Spec : Prop :=
  ∀ n, P14413378958642079288.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P17546261930814127404

`and(n-A082494(n+1), A003817(n))`
-/

namespace A082495.P17546261930814127404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A082494 (n + 1)) (A003817 n)

end

end A082495.P17546261930814127404

namespace A082495

/-- `and(n-A082494(n+1), A003817(n))` -/
def P17546261930814127404.Spec : Prop :=
  ∀ n, P17546261930814127404.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P3393118673105761452

`n-A082494(n+1)%A000015(n+1)`
-/

namespace A082495.P3393118673105761452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A082494 (n + 1)) (A000015 (n + 1))

end

end A082495.P3393118673105761452

namespace A082495

/-- `n-A082494(n+1)%A000015(n+1)` -/
def P3393118673105761452.Spec : Prop :=
  ∀ n, P3393118673105761452.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P433375238830304486

`n-lcm(A080940(n+1), A082494(n+1))`
-/

namespace A082495.P433375238830304486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.lcm (A080940 (n + 1)) (A082494 (n + 1)) : ℤ)

end

end A082495.P433375238830304486

namespace A082495

/-- `n-lcm(A080940(n+1), A082494(n+1))` -/
def P433375238830304486.Spec : Prop :=
  ∀ n, P433375238830304486.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P17474471462224661815

`A126646(n)-A162214(n+1)`
-/

namespace A082495.P17474471462224661815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A162214 (n + 1)

end

end A082495.P17474471462224661815

namespace A082495

/-- `A126646(n)-A162214(n+1)` -/
def P17474471462224661815.Spec : Prop :=
  ∀ n, P17474471462224661815.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P14415280823504936255

`and(n-A128093(n+1), A000225(n))`
-/

namespace A082495.P14415280823504936255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A128093 (n + 1)) (A000225 n)

end

end A082495.P14415280823504936255

namespace A082495

/-- `and(n-A128093(n+1), A000225(n))` -/
def P14415280823504936255.Spec : Prop :=
  ∀ n, P14415280823504936255.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P9175586033015352311

`and(n-A128093(n+1), A003817(n))`
-/

namespace A082495.P9175586033015352311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A128093 (n + 1)) (A003817 n)

end

end A082495.P9175586033015352311

namespace A082495

/-- `and(n-A128093(n+1), A003817(n))` -/
def P9175586033015352311.Spec : Prop :=
  ∀ n, P9175586033015352311.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P14373422219287231130

`and(n-A128093(n+1), A052551(n))`
-/

namespace A082495.P14373422219287231130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A128093 (n + 1)) (A052551 n)

end

end A082495.P14373422219287231130

namespace A082495

/-- `and(n-A128093(n+1), A052551(n))` -/
def P14373422219287231130.Spec : Prop :=
  ∀ n, P14373422219287231130.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P4836554046812213160

`n-and(A052955(n), A128093(n+1))`
-/

namespace A082495.P4836554046812213160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A052955 n) (A128093 (n + 1))

end

end A082495.P4836554046812213160

namespace A082495

/-- `n-and(A052955(n), A128093(n+1))` -/
def P4836554046812213160.Spec : Prop :=
  ∀ n, P4836554046812213160.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P16247169071658470304

`n-and(A055010(n), A128093(n+1))`
-/

namespace A082495.P16247169071658470304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A055010 n) (A128093 (n + 1))

end

end A082495.P16247169071658470304

namespace A082495

/-- `n-and(A055010(n), A128093(n+1))` -/
def P16247169071658470304.Spec : Prop :=
  ∀ n, P16247169071658470304.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P3097540018278717458

`n-and(A075427(n), A128093(n+1))`
-/

namespace A082495.P3097540018278717458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A075427 n) (A128093 (n + 1))

end

end A082495.P3097540018278717458

namespace A082495

/-- `n-and(A075427(n), A128093(n+1))` -/
def P3097540018278717458.Spec : Prop :=
  ∀ n, P3097540018278717458.a n = A082495 (n + 1)

end A082495

/-! ## A082495.P4666685512864461236

`and(n-A128093(n+1), A077858(n))`
-/

namespace A082495.P4666685512864461236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A128093 (n + 1)) (A077858 n)

end

end A082495.P4666685512864461236

namespace A082495

/-- `and(n-A128093(n+1), A077858(n))` -/
def P4666685512864461236.Spec : Prop :=
  ∀ n, P4666685512864461236.a n = A082495 (n + 1)

end A082495

/-!
# A082496: Numbers of the form 2p+1, where p and p+2 are a pair of twin primes.

The programs for A082496, the canonical program `A082496.P17448569529172864271` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082496 has offset 1).

The definition of A082496 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082496.P17448569529172864271

`2*A001359(n+1)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A082496

/-- `2*A001359(n+1)+1` -/
def P17448569529172864271.Spec : Prop :=
  ∀ n, P17448569529172864271.a n = A082496 (n + 1)

theorem P17448569529172864271.correct : P17448569529172864271.Spec := by
  intro n
  simp only [A082496, Nat.add_sub_cancel]

end A082496

/-! ## A082496.P12566561455229952289

`2*A006512(n+1)-3`
-/

namespace A082496.P12566561455229952289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006512 (n + 1) - 3

end

end A082496.P12566561455229952289

namespace A082496

/-- `2*A006512(n+1)-3` -/
def P12566561455229952289.Spec : Prop :=
  ∀ n, P12566561455229952289.a n = A082496 (n + 1)

theorem P12566561455229952289.correct : P12566561455229952289.Spec := by
  intro n
  simp only [A082496, Nat.add_sub_cancel, A082496.P12566561455229952289.a, A082496.P17448569529172864271.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082496

/-! ## A082496.P653573270105266266

`A001359(n+1)+A006512(n+1)-1`
-/

namespace A082496.P653573270105266266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + A006512 (n + 1) - 1

end

end A082496.P653573270105266266

namespace A082496

/-- `A001359(n+1)+A006512(n+1)-1` -/
def P653573270105266266.Spec : Prop :=
  ∀ n, P653573270105266266.a n = A082496 (n + 1)

theorem P653573270105266266.correct : P653573270105266266.Spec := by
  intro n
  simp only [A082496, Nat.add_sub_cancel, A082496.P653573270105266266.a, A082496.P17448569529172864271.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082496

/-! ## A082496.P6965225283805137922

`A108605(n+1)+1`
-/

namespace A082496.P6965225283805137922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + 1

end

end A082496.P6965225283805137922

namespace A082496

/-- `A108605(n+1)+1` -/
def P6965225283805137922.Spec : Prop :=
  ∀ n, P6965225283805137922.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P9879008586098984336

`A054735(n+1)-1`
-/

namespace A082496.P9879008586098984336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) - 1

end

end A082496.P9879008586098984336

namespace A082496

/-- `A054735(n+1)-1` -/
def P9879008586098984336.Spec : Prop :=
  ∀ n, P9879008586098984336.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P14299779396165291644

`A176810(n+1)-3`
-/

namespace A082496.P14299779396165291644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) - 3

end

end A082496.P14299779396165291644

namespace A082496

/-- `A176810(n+1)-3` -/
def P14299779396165291644.Spec : Prop :=
  ∀ n, P14299779396165291644.a n = A082496 (n + 1)

theorem P14299779396165291644.correct : P14299779396165291644.Spec := by
  intro n
  simp only [A082496, Nat.add_sub_cancel, A082496.P14299779396165291644.a, A082496.P17448569529172864271.a, A001359, A001359.P8865495035699438537.a, A176810, A176810.P15699924405240602414.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082496

/-! ## A082496.P17724942389816382294

`2*A014574(n+1)-1`
-/

namespace A082496.P17724942389816382294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014574 (n + 1) - 1

end

end A082496.P17724942389816382294

namespace A082496

/-- `2*A014574(n+1)-1` -/
def P17724942389816382294.Spec : Prop :=
  ∀ n, P17724942389816382294.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P14316995084449243808

`A111046(n+1)/2-1`
-/

namespace A082496.P14316995084449243808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 2 - 1

end

end A082496.P14316995084449243808

namespace A082496

/-- `A111046(n+1)/2-1` -/
def P14316995084449243808.Spec : Prop :=
  ∀ n, P14316995084449243808.a n = (A082496 (n + 1) : ℚ)

end A082496

/-! ## A082496.P8114224541775141161

`2*A144834(n+1)+3`
-/

namespace A082496.P8114224541775141161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144834 (n + 1) + 3

end

end A082496.P8114224541775141161

namespace A082496

/-- `2*A144834(n+1)+3` -/
def P8114224541775141161.Spec : Prop :=
  ∀ n, P8114224541775141161.a n = A082496 (n + 1)

theorem P8114224541775141161.correct : P8114224541775141161.Spec := by
  intro n
  simp only [A082496, Nat.add_sub_cancel, A082496.P8114224541775141161.a, A082496.P17448569529172864271.a, A001359, A001359.P8865495035699438537.a, A144834, A144834.P8121320371945032170.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082496

/-! ## A082496.P12804176531293095401

`4*A040040(n+1)-1`
-/

namespace A082496.P12804176531293095401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040040 (n + 1) - 1

end

end A082496.P12804176531293095401

namespace A082496

/-- `4*A040040(n+1)-1` -/
def P12804176531293095401.Spec : Prop :=
  ∀ n, P12804176531293095401.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P9867361614694975505

`floor(2*sqrt(A037074(n+1)))`
-/

namespace A082496.P9867361614694975505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A037074 (n + 1) : ℝ)⌋

end

end A082496.P9867361614694975505

namespace A082496

/-- `floor(2*sqrt(A037074(n+1)))` -/
def P9867361614694975505.Spec : Prop :=
  ∀ n, P9867361614694975505.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P17351031926238231995

`floor(sqrt(2*A071142(n+1)))`
-/

namespace A082496.P17351031926238231995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A071142 (n + 1))

end

end A082496.P17351031926238231995

namespace A082496

/-- `floor(sqrt(2*A071142(n+1)))` -/
def P17351031926238231995.Spec : Prop :=
  ∀ n, P17351031926238231995.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P6859851487180905413

`floor(2*sqrt(A120875(n+1)))`
-/

namespace A082496.P6859851487180905413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A120875 (n + 1) : ℝ)⌋

end

end A082496.P6859851487180905413

namespace A082496

/-- `floor(2*sqrt(A120875(n+1)))` -/
def P6859851487180905413.Spec : Prop :=
  ∀ n, P6859851487180905413.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P4753893390199663303

`A014574(n+1)+A001359(n+1)`
-/

namespace A082496.P4753893390199663303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + A001359 (n + 1)

end

end A082496.P4753893390199663303

namespace A082496

/-- `A014574(n+1)+A001359(n+1)` -/
def P4753893390199663303.Spec : Prop :=
  ∀ n, P4753893390199663303.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P16413949660895851754

`A144834(n+1)+A006512(n+1)`
-/

namespace A082496.P16413949660895851754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + A006512 (n + 1)

end

end A082496.P16413949660895851754

namespace A082496

/-- `A144834(n+1)+A006512(n+1)` -/
def P16413949660895851754.Spec : Prop :=
  ∀ n, P16413949660895851754.a n = A082496 (n + 1)

theorem P16413949660895851754.correct : P16413949660895851754.Spec := by
  intro n
  simp only [A082496, Nat.add_sub_cancel, A082496.P16413949660895851754.a, A082496.P17448569529172864271.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A144834, A144834.P8121320371945032170.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082496

/-! ## A082496.P14150355820787551527

`A037074(n+1)%A054735(n+1)`
-/

namespace A082496.P14150355820787551527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037074 (n + 1)) (A054735 (n + 1))

end

end A082496.P14150355820787551527

namespace A082496

/-- `A037074(n+1)%A054735(n+1)` -/
def P14150355820787551527.Spec : Prop :=
  ∀ n, P14150355820787551527.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P7550659083613084307

`A097973(n+1)%A054735(n+1)`
-/

namespace A082496.P7550659083613084307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097973 (n + 1)) (A054735 (n + 1))

end

end A082496.P7550659083613084307

namespace A082496

/-- `A097973(n+1)%A054735(n+1)` -/
def P7550659083613084307.Spec : Prop :=
  ∀ n, P7550659083613084307.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P7892881524800438805

`A075369(n+1)-A001359(n+1)²`
-/

namespace A082496.P7892881524800438805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) - A001359 (n + 1) ^ 2

end

end A082496.P7892881524800438805

namespace A082496

/-- `A075369(n+1)-A001359(n+1)²` -/
def P7892881524800438805.Spec : Prop :=
  ∀ n, P7892881524800438805.a n = A082496 (n + 1)

end A082496

/-! ## A082496.P10286732017238178932

`(A071142(n+1)+A006512(n+1))/A006512(n+1)`
-/

namespace A082496.P10286732017238178932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) + A006512 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A082496.P10286732017238178932

namespace A082496

/-- `(A071142(n+1)+A006512(n+1))/A006512(n+1)` -/
def P10286732017238178932.Spec : Prop :=
  ∀ n, P10286732017238178932.a n = (A082496 (n + 1) : ℚ)

end A082496

/-! ## A082496.P17087766404517625610

`A181747(n+2)+A014574(n+1)`
-/

namespace A082496.P17087766404517625610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 2) + A014574 (n + 1)

end

end A082496.P17087766404517625610

namespace A082496

/-- `A181747(n+2)+A014574(n+1)` -/
def P17087766404517625610.Spec : Prop :=
  ∀ n, P17087766404517625610.a n = A082496 (n + 1)

end A082496

/-!
# A082498: a(0)=0, a(1)=1, a(2n)=a(n), a(2n+1)=a(n)+a(n-1).

The programs for A082498, there is no canonical definition to state claims against.
-/

/-! ## A082498.P9590492859783430994

`A106345(A010078(n+2)-1)`
-/

namespace A082498.P9590492859783430994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A010078 (n + 2) - 1).toNat

end

end A082498.P9590492859783430994

/-! ## A082498.P7044415764882781934

`A214126(n+1)-A120562(n)`
-/

namespace A082498.P7044415764882781934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214126 (n + 1) - A120562 n

end

end A082498.P7044415764882781934

/-! ## A082498.P6153496063638391280

`A214127(n+1)-2*A120562(n)`
-/

namespace A082498.P6153496063638391280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214127 (n + 1) - 2 * A120562 n

end

end A082498.P6153496063638391280

/-! ## A082498.P8217581724371594681

`2*A214126(n+1)-A214127(n+1)`
-/

namespace A082498.P8217581724371594681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214126 (n + 1) - A214127 (n + 1)

end

end A082498.P8217581724371594681

/-! ## A082498.P5298878415581853036

`A120562(A004760(n+2))-A120562(n)`
-/

namespace A082498.P5298878415581853036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A004760 (n + 2)).toNat - A120562 n

end

end A082498.P5298878415581853036

/-! ## A082498.P1457921915340405259

`A120562(A038572(2*n+1))-A120562(n)`
-/

namespace A082498.P1457921915340405259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A038572 (2 * n + 1)).toNat - A120562 n

end

end A082498.P1457921915340405259

/-! ## A082498.P17516404887701437901

`A120562(A206332(n+1))-A120562(n)`
-/

namespace A082498.P17516404887701437901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A206332 (n + 1)).toNat - A120562 n

end

end A082498.P17516404887701437901

/-! ## A082498.P13491471580575917360

`A120562(record[A153142(n+1)])-A120562(n)`
-/

namespace A082498.P13491471580575917360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A120562 n

end

end A082498.P13491471580575917360

/-!
# A082499: Take a string of n x's and insert n-1 ^'s and n-2 pairs of parentheses in all possible legal ways. Sequence gives number of distinct values when x = sqrt(2).

The programs for A082499, there is no canonical definition to state claims against.
-/

/-! ## A082499.P221751944311020493

`A119685(n+1)-A024362(A056654(n+2))`
-/

namespace A082499.P221751944311020493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119685 (n + 1) - A024362 (A056654 (n + 2)).toNat

end

end A082499.P221751944311020493

/-! ## A082499.P5236016571262159251

`A054846(A365692(n+1))`
-/

namespace A082499.P5236016571262159251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A365692 (n + 1)).toNat

end

end A082499.P5236016571262159251

/-! ## A082499.P15752666569668036848

`A100196(2*A148208(n))`
-/

namespace A082499.P15752666569668036848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * A148208 n).toNat

end

end A082499.P15752666569668036848

