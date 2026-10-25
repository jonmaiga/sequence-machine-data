import SequenceMachineLib.Basic
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A381100: Number of integer triples i <= j <= k such that a non-degenerate triangle with sides (i, j, k) fits inside an equilateral triangle with sides (n, n, n), possibly touching its boundary from inside.

The programs for A381100, there is no canonical definition to state claims against.
-/

/-! ## A381100.P6088820709702082981

`∑[A007953(∑[A151366(n)])]`
-/

namespace A381100.P6088820709702082981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381100.P6088820709702082981

/-!
# A381101: Allouche-Johnson binary sequence based on the Narayana's cows sequence A000930.

The programs for A381101, the canonical program `A381101.P6112073308414063635` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381101 has offset 0).

The definition of A381101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381101.P17121489807131291142

`record[A105530(3*n)]%2`
-/

namespace A381101.P17121489807131291142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105530 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A381101.P17121489807131291142

namespace A381101

/-- `record[A105530(3*n)]%2` -/
def P17121489807131291142.Spec : Prop :=
  ∀ n, P17121489807131291142.a n = A381101 n

end A381101

/-! ## A381101.P12069941837981378039

`A010060(A048715(n))`
-/

namespace A381101.P12069941837981378039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A048715 n).toNat

end

end A381101.P12069941837981378039

namespace A381101

/-- `A010060(A048715(n))` -/
def P12069941837981378039.Spec : Prop :=
  ∀ n, P12069941837981378039.a n = A381101 n

end A381101

/-! ## A381101.P3740981897105299473

`A295890(2*A048715(n))`
-/

namespace A381101.P3740981897105299473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295890 (2 * A048715 n).toNat

end

end A381101.P3740981897105299473

namespace A381101

/-- `A295890(2*A048715(n))` -/
def P3740981897105299473.Spec : Prop :=
  ∀ n, P3740981897105299473.a n = A381101 n

end A381101

/-! ## A381101.P11342022717979114932

`A080813(A048715(n)+7)`
-/

namespace A381101.P11342022717979114932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080813 (A048715 n + 7).toNat

end

end A381101.P11342022717979114932

namespace A381101

/-- `A080813(A048715(n)+7)` -/
def P11342022717979114932.Spec : Prop :=
  ∀ n, P11342022717979114932.a n = A381101 n

end A381101

/-! ## A381101.P6112073308414063635

`A010060(eq[0, A048730(n)])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A381101

/-- `A010060(eq[0, A048730(n)])` -/
def P6112073308414063635.Spec : Prop :=
  ∀ n, P6112073308414063635.a n = A381101 n

theorem P6112073308414063635.correct : P6112073308414063635.Spec := by
  intro n
  simp only [A381101]

end A381101

/-! ## A381101.P7043394164417606181

`A010060(eq[0, A048733(n)])`
-/

namespace A381101.P7043394164417606181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A381101.P7043394164417606181

namespace A381101

/-- `A010060(eq[0, A048733(n)])` -/
def P7043394164417606181.Spec : Prop :=
  ∀ n, P7043394164417606181.a n = A381101 n

end A381101

/-! ## A381101.P9439844166861260146

`A032020(n)%A001285(A048715(n))`
-/

namespace A381101.P9439844166861260146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032020 n) (A001285 (A048715 n).toNat)

end

end A381101.P9439844166861260146

namespace A381101

/-- `A032020(n)%A001285(A048715(n))` -/
def P9439844166861260146.Spec : Prop :=
  ∀ n, P9439844166861260146.a n = A381101 n

end A381101

/-! ## A381101.P9179852611574822393

`A010060(record[xor(n, 2*or(n, 2*n))])`
-/

namespace A381101.P9179852611574822393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A381101.P9179852611574822393

namespace A381101

/-- `A010060(record[xor(n, 2*or(n, 2*n))])` -/
def P9179852611574822393.Spec : Prop :=
  ∀ n, P9179852611574822393.a n = A381101 n

end A381101

/-! ## A381101.P13004454261190520791

`A010060(record[A048727(n)])`
-/

namespace A381101.P13004454261190520791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A381101.P13004454261190520791

namespace A381101

/-- `A010060(record[A048727(n)])` -/
def P13004454261190520791.Spec : Prop :=
  ∀ n, P13004454261190520791.a n = A381101 n

end A381101

/-!
# A381103: Number of permissible general positions in three-dimensional space groups obeying the crystallographic restriction theorem.

The programs for A381103, there is no canonical definition to state claims against.
-/

/-! ## A381103.P17568325020328433190

`A364494(A395853(n+2))`
-/

namespace A381103.P17568325020328433190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364494 (A395853 (n + 2)).toNat

end

end A381103.P17568325020328433190

/-!
# A381104: a(n) is the number of prime factors with exponent 1 in the prime factorization of the n-th superabundant number.

The programs for A381104, there is no canonical definition to state claims against.
-/

/-! ## A381104.P1049091251839577854

`A056169(A004394(n+1))`
-/

namespace A381104.P1049091251839577854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A004394 (n + 1)).toNat

end

end A381104.P1049091251839577854

/-! ## A381104.P15539841947017508990

`∑{e}[A004394(n+1), A010057(#)]`
-/

namespace A381104.P15539841947017508990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010057 (Nat.factorization (f1 n).natAbs p)

end

end A381104.P15539841947017508990

/-! ## A381104.P10388678817145053994

`∑{e}[A004394(n+1), A209614(#)]`
-/

namespace A381104.P10388678817145053994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A209614 (Nat.factorization (f1 n).natAbs p)

end

end A381104.P10388678817145053994

/-! ## A381104.P973792844339074330

`∑{e}[A004394(n+1), A222509(#)]`
-/

namespace A381104.P973792844339074330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A222509 (Nat.factorization (f1 n).natAbs p)

end

end A381104.P973792844339074330

/-! ## A381104.P14262712182965257157

`∑{e}[A004394(n+1), A268643(#)]`
-/

namespace A381104.P14262712182965257157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A268643 (Nat.factorization (f1 n).natAbs p)

end

end A381104.P14262712182965257157

/-!
# A381105: Expansion of e.g.f. log(1-x)^2 * (exp(x) - 1) / 2.

The programs for A381105, there is no canonical definition to state claims against.
-/

/-! ## A381105.P14767213196928507311

`A032615(A276366(n+1))`
-/

namespace A381105.P14767213196928507311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A276366 (n + 1)).toNat

end

end A381105.P14767213196928507311

/-! ## A381105.P13700447355060414754

`A111851(A369619(n)+1)`
-/

namespace A381105.P13700447355060414754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (A369619 n + 1).toNat

end

end A381105.P13700447355060414754

/-! ## A381105.P1188822649792625970

`A351976(A394771(n+1))-A394749(3*(n+2))`
-/

namespace A381105.P1188822649792625970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351976 (A394771 (n + 1)).toNat - A394749 (3 * (n + 2))

end

end A381105.P1188822649792625970

/-!
# A381106: Expansion of e.g.f. -log(1-x)^3 * (exp(x) - 1) / 6.

The programs for A381106, there is no canonical definition to state claims against.
-/

/-! ## A381106.P15735995715208351685

`A348710(A151021(n))`
-/

namespace A381106.P15735995715208351685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 (A151021 n).toNat

end

end A381106.P15735995715208351685

/-! ## A381106.P14758483078146689736

`A160736(A389813(n))`
-/

namespace A381106.P14758483078146689736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160736 (A389813 n).toNat

end

end A381106.P14758483078146689736

/-! ## A381106.P5536059282258821969

`A361850(A261649(n))`
-/

namespace A381106.P5536059282258821969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361850 (A261649 n).toNat

end

end A381106.P5536059282258821969

/-!
# A381107: Expansion of e.g.f. -log(1-x) * (exp(x) - 1) / (1-x).

The programs for A381107, there is no canonical definition to state claims against.
-/

/-! ## A381107.P2857088417300821367

`A073596(n)-A000254(n)`
-/

namespace A381107.P2857088417300821367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n - A000254 n

end

end A381107.P2857088417300821367

/-! ## A381107.P1247978278951498379

`A073596(n)-A067176(∑[n])`
-/

namespace A381107.P1247978278951498379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n - A067176 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381107.P1247978278951498379

/-! ## A381107.P15400181610682631996

`Δ[A381021(n)]-A000254(n)`
-/

namespace A381107.P15400181610682631996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000254 n

end

end A381107.P15400181610682631996

/-! ## A381107.P3148910847441151151

`A073596(n)-record[A067176(n)]`
-/

namespace A381107.P3148910847441151151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381107.P3148910847441151151

/-! ## A381107.P7776701978771545800

`A073596(n)-A052517(n+1)/2`
-/

namespace A381107.P7776701978771545800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073596 n : ℚ) - (A052517 (n + 1) : ℚ) / 2

end

end A381107.P7776701978771545800

/-! ## A381107.P16782478100149801462

`A073596(n)-A132393(∑[n+1]+2)`
-/

namespace A381107.P16782478100149801462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n - A132393 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A381107.P16782478100149801462

/-! ## A381107.P9881440187784462290

`A073596(n)-(A092691(n)+A081358(n))`
-/

namespace A381107.P9881440187784462290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n - (A092691 n + A081358 n)

end

end A381107.P9881440187784462290

/-! ## A381107.P3138678523750380840

`A073596(n)-(A000774(n)-A000142(n))`
-/

namespace A381107.P3138678523750380840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n - (A000774 n - A000142 n)

end

end A381107.P3138678523750380840

/-! ## A381107.P14236270077153389271

`A073596(n)-A157525(∑[n])`
-/

namespace A381107.P14236270077153389271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n - A157525 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381107.P14236270077153389271

/-! ## A381107.P7192401825126363176

`A073596(n)-record[A157525(n)]`
-/

namespace A381107.P7192401825126363176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381107.P7192401825126363176

/-!
# A381108: Expansion of e.g.f. log(1-x)^2 * (exp(x) - 1) / (2 * (1-x)).

The programs for A381108, there is no canonical definition to state claims against.
-/

/-! ## A381108.P12763049131347399314

`A381106(n+1)-A381022(n)`
-/

namespace A381108.P12763049131347399314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381106 (n + 1) - A381022 n

end

end A381108.P12763049131347399314

/-! ## A381108.P12538974346364577157

`A111853(A148560(n)²)`
-/

namespace A381108.P12538974346364577157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111853 (A148560 n ^ 2).toNat

end

end A381108.P12538974346364577157

/-!
# A381109: a(n) = (21*n^2 + 9*n + 2)/2.

The programs for A381109, the canonical program `A381109.P15251900957646936400` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381109 has offset 0).

The definition of A381109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381109.P15251900957646936400

`(21*n²+9*n+2)/2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A381109

/-- `(21*n²+9*n+2)/2` -/
def P15251900957646936400.Spec : Prop :=
  ∀ n, P15251900957646936400.a n = (A381109 n : ℚ)

end A381109

/-! ## A381109.P3818165608740008342

`∑[a(n-1)+21]` with `a(0)=1, a(1)=15`
-/

namespace A381109.P3818165608740008342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381109.P3818165608740008342

namespace A381109

/-- `∑[a(n-1)+21]` -/
def P3818165608740008342.Spec : Prop :=
  ∀ n, (P3818165608740008342.a n : ℤ) = A381109 n

end A381109

/-! ## A381109.P12301097533651236327

`21*n+a(n-1)-6` with `a(0)=1`
-/

namespace A381109.P12301097533651236327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (21 * n : ℤ) + (a (n - 1) - 6)

end

end A381109.P12301097533651236327

namespace A381109

/-- `21*n+a(n-1)-6` -/
def P12301097533651236327.Spec : Prop :=
  ∀ n, P12301097533651236327.a n = A381109 n

end A381109

/-! ## A381109.P12000584854068344354

`Δ[C(n, 2)+n*(7*C(n, 2)+1)]`
-/

namespace A381109.P12000584854068344354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n * (7 * Nat.choose n 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381109.P12000584854068344354

namespace A381109

/-- `Δ[C(n, 2)+n*(7*C(n, 2)+1)]` -/
def P12000584854068344354.Spec : Prop :=
  ∀ n, P12000584854068344354.a n = A381109 n

end A381109

/-! ## A381109.P8682365110355140968

`A272039(n)+∑[n]`
-/

namespace A381109.P8682365110355140968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A381109.P8682365110355140968

namespace A381109

/-- `A272039(n)+∑[n]` -/
def P8682365110355140968.Spec : Prop :=
  ∀ n, P8682365110355140968.a n = A381109 n

end A381109

/-! ## A381109.P12477776724568866844

`3*A186029(n)+1`
-/

namespace A381109.P12477776724568866844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A186029 n + 1

end

end A381109.P12477776724568866844

namespace A381109

/-- `3*A186029(n)+1` -/
def P12477776724568866844.Spec : Prop :=
  ∀ n, P12477776724568866844.a n = A381109 n

end A381109

/-! ## A381109.P7861281063779484727

`3*A389615(n)-2`
-/

namespace A381109.P7861281063779484727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A389615 n - 2

end

end A381109.P7861281063779484727

namespace A381109

/-- `3*A389615(n)-2` -/
def P7861281063779484727.Spec : Prop :=
  ∀ n, P7861281063779484727.a n = A381109 n

end A381109

/-! ## A381109.P17209321348726738285

`A014634(n)+A000566(n)`
-/

namespace A381109.P17209321348726738285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n + A000566 n

end

end A381109.P17209321348726738285

namespace A381109

/-- `A014634(n)+A000566(n)` -/
def P17209321348726738285.Spec : Prop :=
  ∀ n, P17209321348726738285.a n = A381109 n

end A381109

/-! ## A381109.P5013605796859685

`A022265(n)+A005892(n)`
-/

namespace A381109.P5013605796859685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + A005892 n

end

end A381109.P5013605796859685

namespace A381109

/-- `A022265(n)+A005892(n)` -/
def P5013605796859685.Spec : Prop :=
  ∀ n, P5013605796859685.a n = A381109 n

end A381109

/-! ## A381109.P3337195595777659449

`A022271(n)+A016754(n)`
-/

namespace A381109.P3337195595777659449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + A016754 n

end

end A381109.P3337195595777659449

namespace A381109

/-- `A022271(n)+A016754(n)` -/
def P3337195595777659449.Spec : Prop :=
  ∀ n, P3337195595777659449.a n = A381109 n

end A381109

/-! ## A381109.P9690673756043107270

`A022279(n)+A016813(n)`
-/

namespace A381109.P9690673756043107270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n + A016813 n

end

end A381109.P9690673756043107270

namespace A381109

/-- `A022279(n)+A016813(n)` -/
def P9690673756043107270.Spec : Prop :=
  ∀ n, P9690673756043107270.a n = A381109 n

end A381109

/-! ## A381109.P13178971148928865383

`A022278(n)+A016861(n)`
-/

namespace A381109.P13178971148928865383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + A016861 n

end

end A381109.P13178971148928865383

namespace A381109

/-- `A022278(n)+A016861(n)` -/
def P13178971148928865383.Spec : Prop :=
  ∀ n, P13178971148928865383.a n = A381109 n

end A381109

/-! ## A381109.P15731943517556543785

`A033585(n)+A005891(n)`
-/

namespace A381109.P15731943517556543785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + A005891 n

end

end A381109.P15731943517556543785

namespace A381109

/-- `A033585(n)+A005891(n)` -/
def P15731943517556543785.Spec : Prop :=
  ∀ n, P15731943517556543785.a n = A381109 n

end A381109

/-! ## A381109.P16734050226335253219

`A033570(n)+A022266(n)`
-/

namespace A381109.P16734050226335253219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n + A022266 n

end

end A381109.P16734050226335253219

namespace A381109

/-- `A033570(n)+A022266(n)` -/
def P16734050226335253219.Spec : Prop :=
  ∀ n, P16734050226335253219.a n = A381109 n

end A381109

/-! ## A381109.P11795507965448372407

`A064225(n)+A033580(n)`
-/

namespace A381109.P11795507965448372407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n + A033580 n

end

end A381109.P11795507965448372407

namespace A381109

/-- `A064225(n)+A033580(n)` -/
def P11795507965448372407.Spec : Prop :=
  ∀ n, P11795507965448372407.a n = A381109 n

end A381109

/-! ## A381109.P16208327105596259461

`A080859(n)+A022267(n)`
-/

namespace A381109.P16208327105596259461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n + A022267 n

end

end A381109.P16208327105596259461

namespace A381109

/-- `A080859(n)+A022267(n)` -/
def P16208327105596259461.Spec : Prop :=
  ∀ n, P16208327105596259461.a n = A381109 n

end A381109

/-! ## A381109.P523789913864698449

`A082111(n)+A022276(n)`
-/

namespace A381109.P523789913864698449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n + A022276 n

end

end A381109.P523789913864698449

namespace A381109

/-- `A082111(n)+A022276(n)` -/
def P523789913864698449.Spec : Prop :=
  ∀ n, P523789913864698449.a n = A381109 n

end A381109

/-! ## A381109.P7625306202278220928

`A102083(n)+A005475(n)`
-/

namespace A381109.P7625306202278220928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n + A005475 n

end

end A381109.P7625306202278220928

namespace A381109

/-- `A102083(n)+A005475(n)` -/
def P7625306202278220928.Spec : Prop :=
  ∀ n, P7625306202278220928.a n = A381109 n

end A381109

/-! ## A381109.P12303533191891797785

`A081268(n)+A033579(n)`
-/

namespace A381109.P12303533191891797785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081268 n + A033579 n

end

end A381109.P12303533191891797785

namespace A381109

/-- `A081268(n)+A033579(n)` -/
def P12303533191891797785.Spec : Prop :=
  ∀ n, P12303533191891797785.a n = A381109 n

end A381109

/-! ## A381109.P14198867065359955446

`A082040(n)+A045943(n)`
-/

namespace A381109.P14198867065359955446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n + A045943 n

end

end A381109.P14198867065359955446

namespace A381109

/-- `A082040(n)+A045943(n)` -/
def P14198867065359955446.Spec : Prop :=
  ∀ n, P14198867065359955446.a n = A381109 n

end A381109

/-!
# A381110: a(n) is the maximum number of points from the set {(k, f(k)); k = 0..n} belonging to a straight line passing through the point (n, f(n)), where f(n) = A060143(n) = floor(n/phi) and phi is the golden ratio (sqrt(5)+1)/2.

The programs for A381110, there is no canonical definition to state claims against.
-/

/-! ## A381110.P2141495577945659539

`A043276(A371001(n+1)-2)`
-/

namespace A381110.P2141495577945659539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A371001 (n + 1) - 2).toNat

end

end A381110.P2141495577945659539

/-!
# A381112: a(1) = 1, let q = greatest prime in S(n) = {p; p = A053669(a(i)); 1 <= i <= n-1}. Then for n > 1, a(n) is the smallest number not yet in the sequence such that: (i) q|a(n), and (ii) p a prime and p^k|a(n) implies p in S(n) and k <= cardinality of p in S(n).

The programs for A381112, there is no canonical definition to state claims against.
-/

/-! ## A381112.P2171556059154405090

`filter[A305325(n+1), A144093(#)]`
-/

namespace A381112.P2171556059154405090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144093 (f1 j).toNat = 1) n)

end

end A381112.P2171556059154405090

/-!
# A381115: Composite terms in A381019 in order of appearance.

The programs for A381115, there is no canonical definition to state claims against.
-/

/-! ## A381115.P11778599041969944116

`A381019(A381116(n+1))`
-/

namespace A381115.P11778599041969944116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381019 (A381116 (n + 1)).toNat

end

end A381115.P11778599041969944116

/-! ## A381115.P6413290280084231333

`A381019(lt[A381019(n+1), n]+1)`
-/

namespace A381115.P6413290280084231333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381019 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381019 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A381115.P6413290280084231333

/-!
# A381116: Indices of composite terms in A381019.

The programs for A381116, there is no canonical definition to state claims against.
-/

/-! ## A381116.P9676691296728200748

`A381119(A381115(n+1))`
-/

namespace A381116.P9676691296728200748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381119 (A381115 (n + 1)).toNat

end

end A381116.P9676691296728200748

/-! ## A381116.P8439324503366794999

`lt[A381019(n+1), n]+1`
-/

namespace A381116.P8439324503366794999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381019 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A381116.P8439324503366794999

/-! ## A381116.P8617334688926079250

`A065475(lt[A381019(n+1), n])`
-/

namespace A381116.P8617334688926079250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381019 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A381116.P8617334688926079250

/-! ## A381116.P18281130229746401694

`lt[A381019(A000007(n)+n), n]`
-/

namespace A381116.P18281130229746401694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381019 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A381116.P18281130229746401694

/-!
# A381118: Index of 2^n in A381019.

The programs for A381118, there is no canonical definition to state claims against.
-/

/-! ## A381118.P6305409363187642091

`A381119(2^n)`
-/

namespace A381118.P6305409363187642091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381119 (2 ^ n)

end

end A381118.P6305409363187642091

/-! ## A381118.P17714328755969881078

`record[A381119(A006519(n+1))]`
-/

namespace A381118.P17714328755969881078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381119 (A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381118.P17714328755969881078

/-! ## A381118.P7017263909439570264

`A381119(A000079(n))%A204812(n+1)`
-/

namespace A381118.P7017263909439570264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381119 (A000079 n).toNat) (A204812 (n + 1))

end

end A381118.P7017263909439570264

/-! ## A381118.P10112264436116174475

`A381119(A000079(n))+A000007(3*n+1)`
-/

namespace A381118.P10112264436116174475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381119 (A000079 n).toNat + A000007 (3 * n + 1)

end

end A381118.P10112264436116174475

/-! ## A381118.P4111060919657645397

`A010690(2*(n+1))*A381119(A000079(n))`
-/

namespace A381118.P4111060919657645397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (2 * (n + 1)) * A381119 (A000079 n).toNat

end

end A381118.P4111060919657645397

/-!
# A381120: Numbers k such that both A381019(k) and A381019(k+1) are composite.

The programs for A381120, there is no canonical definition to state claims against.
-/

/-! ## A381120.P14995705024232915106

`A381119(A379810(n+1))`
-/

namespace A381120.P14995705024232915106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381119 (A379810 (n + 1)).toNat

end

end A381120.P14995705024232915106

/-!
# A381121: Number of partially ordered sets ("posets") covering n unlabeled elements.

The programs for A381121, there is no canonical definition to state claims against.
-/

/-! ## A381121.P7835825256524362590

`A181046(A115625(n))-A078898(n)`
-/

namespace A381121.P7835825256524362590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181046 (A115625 n).toNat - A078898 n

end

end A381121.P7835825256524362590

/-! ## A381121.P16319458857571413517

`A080098(A024317(n+5)*A354730(n))`
-/

namespace A381121.P16319458857571413517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A024317 (n + 5) * A354730 n).toNat

end

end A381121.P16319458857571413517

/-! ## A381121.P8713538519635749391

`or(A017817(n), A350893(A046279(n+1)))`
-/

namespace A381121.P8713538519635749391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017817 n) (A350893 (A046279 (n + 1)).toNat)

end

end A381121.P8713538519635749391

/-!
# A381122: Numbers k such that k^(k+1) == k (mod k+2).

The programs for A381122, the canonical program `A381122.P9181683385261929794` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381122 has offset 1).

The definition of A381122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381122.P9181683385261929794

`eq[n, A110146(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A381122

/-- `eq[n, A110146(n)]` -/
def P9181683385261929794.Spec : Prop :=
  ∀ n, (P9181683385261929794.a n : ℤ) = A381122 (n + 1)

theorem P9181683385261929794.correct : P9181683385261929794.Spec := by
  intro n
  simp only [A381122, Nat.add_sub_cancel]

end A381122

/-! ## A381122.P12593313030085316417

`eq[n+1, A004274(A213859(n))]`
-/

namespace A381122.P12593313030085316417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A213859 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381122.P12593313030085316417

namespace A381122

/-- `eq[n+1, A004274(A213859(n))]` -/
def P12593313030085316417.Spec : Prop :=
  ∀ n, (P12593313030085316417.a n : ℤ) = A381122 (n + 1)

end A381122

/-! ## A381122.P11666705751380678558

`lt[A004526(n), A008619(A110146(n))]`
-/

namespace A381122.P11666705751380678558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A110146 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381122.P11666705751380678558

namespace A381122

/-- `lt[A004526(n), A008619(A110146(n))]` -/
def P11666705751380678558.Spec : Prop :=
  ∀ n, (P11666705751380678558.a n : ℤ) = A381122 (n + 1)

end A381122

/-! ## A381122.P18321953415870326333

`xor(A104435(A192109(n+1)), A192109(n+1))`
-/

namespace A381122.P18321953415870326333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A104435 (A192109 (n + 1)).toNat) (A192109 (n + 1))

end

end A381122.P18321953415870326333

namespace A381122

/-- `xor(A104435(A192109(n+1)), A192109(n+1))` -/
def P18321953415870326333.Spec : Prop :=
  ∀ n, P18321953415870326333.a n = A381122 (n + 1)

end A381122

/-! ## A381122.P10572304728603007692

`A192109(n+1)-A020639(A011782(n))`
-/

namespace A381122.P10572304728603007692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192109 (n + 1) - A020639 (A011782 n).toNat

end

end A381122.P10572304728603007692

namespace A381122

/-- `A192109(n+1)-A020639(A011782(n))` -/
def P10572304728603007692.Spec : Prop :=
  ∀ n, P10572304728603007692.a n = A381122 (n + 1)

end A381122

/-!
# A381123: Number of unlabeled endofunctions on n points whose self-referencing elements are mapped from another element.

The programs for A381123, there is no canonical definition to state claims against.
-/

/-! ## A381123.P1722370504113544110

`A001372(n)-A217897(A000124(n))`
-/

namespace A381123.P1722370504113544110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n - A217897 (A000124 n).toNat

end

end A381123.P1722370504113544110

/-! ## A381123.P16907809200076253706

`Δ[A217897(A000124(n))]`
-/

namespace A381123.P16907809200076253706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217897 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381123.P16907809200076253706

/-! ## A381123.P11394167255293686301

`Δ[A217897(∑[A028310(n)])]`
-/

namespace A381123.P11394167255293686301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217897 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381123.P11394167255293686301

/-! ## A381123.P14012782146358339620

`A350571(A161680(n+1))-A217897(A000124(n))`
-/

namespace A381123.P14012782146358339620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350571 (A161680 (n + 1)).toNat - A217897 (A000124 n).toNat

end

end A381123.P14012782146358339620

/-!
# A381125: Denominators of the convergents to the supergolden ratio.

The programs for A381125, there is no canonical definition to state claims against.
-/

/-! ## A381125.P2747984887130156331

`A005374(A381124(n))`
-/

namespace A381125.P2747984887130156331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A381124 n).toNat

end

end A381125.P2747984887130156331

/-!
# A381126: Primes that are the concatenation of prime(p) and p where p is a prime.

The programs for A381126, there is no canonical definition to state claims against.
-/

/-! ## A381126.P7856081815543992790

`A075110(∩[A000040(n+1), A084670(n+1)])`
-/

namespace A381126.P7856081815543992790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084670 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075110 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A381126.P7856081815543992790

/-!
# A381127: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and Down-SpellUnder dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A381127, there is no canonical definition to state claims against.
-/

/-! ## A381127.P8054719522895169208

`xor(A194959(n+1), A280710(A282986(n)))`
-/

namespace A381127.P8054719522895169208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A194959 (n + 1)) (A280710 (A282986 n).toNat)

end

end A381127.P8054719522895169208

/-! ## A381127.P11385262232159106334

`gcd(A096186(n+1)², A362938(n+3))`
-/

namespace A381127.P11385262232159106334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096186 (n + 1) ^ 2) (A362938 (n + 3))

end

end A381127.P11385262232159106334

/-! ## A381127.P1520981397870778066

`A368096(n)+A124010(A099844(n))`
-/

namespace A381127.P1520981397870778066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368096 n + A124010 (A099844 n).toNat

end

end A381127.P1520981397870778066

/-! ## A381127.P14201084669455079871

`A324692(n)+A055640(A049914(n+1))`
-/

namespace A381127.P14201084669455079871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 n + A055640 (A049914 (n + 1)).toNat

end

end A381127.P14201084669455079871

/-! ## A381127.P283541020177653904

`A001222(A337067(n)+A000124(n))`
-/

namespace A381127.P283541020177653904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A337067 n + A000124 n).toNat

end

end A381127.P283541020177653904

/-!
# A381128: The number of card moves required to deal n cards using Down-SpellUnder dealing.

The programs for A381128, there is no canonical definition to state claims against.
-/

/-! ## A381128.P6539923968081133247

`A067278(n)+n+1`
-/

namespace A381128.P6539923968081133247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067278 n + (n + 1 : ℤ)

end

end A381128.P6539923968081133247

/-! ## A381128.P17330919169841926930

`∑[A181672(A004277(n))]+n`
-/

namespace A381128.P17330919169841926930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181672 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A381128.P17330919169841926930

/-! ## A381128.P1382695904904998133

`A250120(n)+A184159(A242882(n))`
-/

namespace A381128.P1382695904904998133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A184159 (A242882 n).toNat

end

end A381128.P1382695904904998133

/-! ## A381128.P13971928187554897277

`A261092(A002805(n+1))+A219637(2*n+1)`
-/

namespace A381128.P13971928187554897277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261092 (A002805 (n + 1)).toNat + A219637 (2 * n + 1)

end

end A381128.P13971928187554897277

/-! ## A381128.P10193763907558063104

`A250120(n)+A077267(A001250(n))`
-/

namespace A381128.P10193763907558063104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A077267 (A001250 n).toNat

end

end A381128.P10193763907558063104

/-!
# A381129: A version of the Josephus problem: a(n) is the surviving integer under the spelling version of the elimination process, called Down-SpellUnder.

The programs for A381129, there is no canonical definition to state claims against.
-/

/-! ## A381129.P1644589517664463069

`A380204(A028310(n))+A057427(n)`
-/

namespace A381129.P1644589517664463069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380204 (A028310 n).toNat + A057427 n

end

end A381129.P1644589517664463069

/-! ## A381129.P923410063561031281

`A380204(A028310(n))-A057428(n)`
-/

namespace A381129.P923410063561031281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380204 (A028310 n).toNat - A057428 n

end

end A381129.P923410063561031281

/-! ## A381129.P6285817503834674391

`A380204(A233583(n+1))-A057428(n)`
-/

namespace A381129.P6285817503834674391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380204 (A233583 (n + 1)).toNat - A057428 n

end

end A381129.P6285817503834674391

/-!
# A381131: If n = (p_1^e_1)*(p_2^e_2)*(p_3^e_3)*... and min(p_1^e_1,p_2^e_2,...) = p_k^e_k then a(n) = p_k, a(1) = 1.

The programs for A381131, there is no canonical definition to state claims against.
-/

/-! ## A381131.P18275173517536737858

`∏{p}[A034684(n+1), #]`
-/

namespace A381131.P18275173517536737858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A381131.P18275173517536737858

/-! ## A381131.P8094839545017285088

`∏{p}[A285336(n+1), #]`
-/

namespace A381131.P8094839545017285088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A381131.P8094839545017285088

/-! ## A381131.P16236661515969646020

`A006530(A034684(n+1))`
-/

namespace A381131.P16236661515969646020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034684 (n + 1)).toNat

end

end A381131.P16236661515969646020

/-! ## A381131.P7282058385676169480

`A006530(A285336(n+1))`
-/

namespace A381131.P7282058385676169480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A285336 (n + 1)).toNat

end

end A381131.P7282058385676169480

/-! ## A381131.P16695124591573065983

`A007947(A034684((n+1)²))`
-/

namespace A381131.P16695124591573065983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A034684 ((n + 1) ^ 2)).toNat

end

end A381131.P16695124591573065983

/-! ## A381131.P13950390839495009227

`A052410(A034684(n+1)²)`
-/

namespace A381131.P13950390839495009227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A034684 (n + 1) ^ 2).toNat

end

end A381131.P13950390839495009227

/-! ## A381131.P4241764225305907002

`A067695(A034684(n+1)²)`
-/

namespace A381131.P4241764225305907002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A034684 (n + 1) ^ 2).toNat

end

end A381131.P4241764225305907002

/-! ## A381131.P2451317924631345276

`A088387(A034684(n+1)²)`
-/

namespace A381131.P2451317924631345276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A034684 (n + 1) ^ 2).toNat

end

end A381131.P2451317924631345276

/-! ## A381131.P11223416075109208424

`A020639(A285336(n+1)²)`
-/

namespace A381131.P11223416075109208424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285336 (n + 1) ^ 2).toNat

end

end A381131.P11223416075109208424

/-! ## A381131.P14043182097521174711

`A329814(A034684(n+1)²)`
-/

namespace A381131.P14043182097521174711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 (A034684 (n + 1) ^ 2).toNat

end

end A381131.P14043182097521174711

/-!
# A381132: If n = (p_1^e_1)*(p_2^e_2)*(p_3^e_3)*... and min(p_1^e_1,p_2^e_2,...) = p_k^e_k then a(n) = pi(p_k), a(1) = 0.

The programs for A381132, there is no canonical definition to state claims against.
-/

/-! ## A381132.P3329407019434010983

`A055396(A034684(n+1))`
-/

namespace A381132.P3329407019434010983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A034684 (n + 1)).toNat

end

end A381132.P3329407019434010983

/-! ## A381132.P4256981825252537795

`A055396(A285336(n+1))`
-/

namespace A381132.P4256981825252537795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A285336 (n + 1)).toNat

end

end A381132.P4256981825252537795

/-! ## A381132.P10410326276993604432

`A000720(A381131(n+1))`
-/

namespace A381132.P10410326276993604432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A381131 (n + 1)).toNat

end

end A381132.P10410326276993604432

/-! ## A381132.P5581502178945341967

`A061395(A034684((n+1)²))`
-/

namespace A381132.P5581502178945341967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A034684 ((n + 1) ^ 2)).toNat

end

end A381132.P5581502178945341967

/-! ## A381132.P7150391332739722190

`A066328(A034684(n+1)²)`
-/

namespace A381132.P7150391332739722190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A034684 (n + 1) ^ 2).toNat

end

end A381132.P7150391332739722190

/-! ## A381132.P3852408479230199542

`A289508(A034684(n+1)²)`
-/

namespace A381132.P3852408479230199542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A034684 (n + 1) ^ 2).toNat

end

end A381132.P3852408479230199542

/-! ## A381132.P15174211580750518427

`A055396(A381131(n+1)²)`
-/

namespace A381132.P15174211580750518427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A381131 (n + 1) ^ 2).toNat

end

end A381132.P15174211580750518427

/-! ## A381132.P1757628511371474866

`∑{d}[A381131(n+1), A055396(#)]`
-/

namespace A381132.P1757628511371474866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A381132.P1757628511371474866

/-! ## A381132.P18106207338433476004

`A108230(A034684(2*n+1-n))`
-/

namespace A381132.P18106207338433476004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108230 (A034684 (2 * n + 1 - n)).toNat

end

end A381132.P18106207338433476004

/-! ## A381132.P12963023782789952182

`A055396(A381131(2*n+1-n))`
-/

namespace A381132.P12963023782789952182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A381131 (2 * n + 1 - n)).toNat

end

end A381132.P12963023782789952182

/-!
# A381133: If n = (p_1^e_1)*(p_2^e_2)*(p_3^e_3)*... and min(p_1^e_1,p_2^e_2,...) = p_k^e_k then a(n) = e_k, a(1) = 0.

The programs for A381133, there is no canonical definition to state claims against.
-/

/-! ## A381133.P9173871578424046267

`∑{e}[A034684(n+1), #]`
-/

namespace A381133.P9173871578424046267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A381133.P9173871578424046267

/-! ## A381133.P14290730778443225113

`∑{e}[(n+1)/A052125(n+1), #]`
-/

namespace A381133.P14290730778443225113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052125 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A381133.P14290730778443225113

/-! ## A381133.P12303191182791279798

`∑{e}[gcd(n+1, A139084(n+1)), #]`
-/

namespace A381133.P12303191182791279798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A139084 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A381133.P12303191182791279798

/-! ## A381133.P6238019572638285035

`A001222(A034684(n+1))`
-/

namespace A381133.P6238019572638285035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034684 (n + 1)).toNat

end

end A381133.P6238019572638285035

/-! ## A381133.P11728058968672612573

`A293234(A034684((n+1)²))`
-/

namespace A381133.P11728058968672612573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A034684 ((n + 1) ^ 2)).toNat

end

end A381133.P11728058968672612573

/-! ## A381133.P11928450312513533208

`A341508(6*A034684(n+1))`
-/

namespace A381133.P11928450312513533208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341508 (6 * A034684 (n + 1)).toNat

end

end A381133.P11928450312513533208

/-! ## A381133.P13434957315366730601

`∑{d}[A034684(n+1), A001221(#)]`
-/

namespace A381133.P13434957315366730601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A381133.P13434957315366730601

/-! ## A381133.P1627300381837541430

`A088388(A034684(n+1)²)/2`
-/

namespace A381133.P1627300381837541430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088388 (A034684 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A381133.P1627300381837541430

/-! ## A381133.P7502771503087305360

`A067029(A034684(2*n+1-n))`
-/

namespace A381133.P7502771503087305360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A034684 (2 * n + 1 - n)).toNat

end

end A381133.P7502771503087305360

/-! ## A381133.P14928929273381823261

`A088388(A034684(A216972(n+1)))`
-/

namespace A381133.P14928929273381823261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (A034684 (A216972 (n + 1)).toNat).toNat

end

end A381133.P14928929273381823261

/-! ## A381133.P1552271676733745227

`A001222(n+1)-A001222(A052125(n+1))`
-/

namespace A381133.P1552271676733745227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A052125 (n + 1)).toNat

end

end A381133.P1552271676733745227

/-! ## A381133.P17380251502526630181

`A088388(A034684(n+1))*A088388(A088387(n+1))`
-/

namespace A381133.P17380251502526630181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (A034684 (n + 1)).toNat * A088388 (A088387 (n + 1)).toNat

end

end A381133.P17380251502526630181

/-!
# A381135: Numbers of the form d_1 d_2 d_3 ... where the sum of their digits multiplied by their digit positions is equal to their number of digits.

The programs for A381135, there is no canonical definition to state claims against.
-/

/-! ## A381135.P3267615059200725062

`A005086(A002895(n))*A088404(n+1)`
-/

namespace A381135.P3267615059200725062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A002895 n).toNat * A088404 (n + 1)

end

end A381135.P3267615059200725062

/-!
# A381136: a(n) is the number of divisors d of n such that tau(d^(1 + n) + n) = 2^omega(d^(1 + n) + n), where tau = A000005 and omega = A001221.

The programs for A381136, there is no canonical definition to state claims against.
-/

/-! ## A381136.P7633401093156072507

`A014675(A127679(n+1))*A102210(n+2)`
-/

namespace A381136.P7633401093156072507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A127679 (n + 1)).toNat * A102210 (n + 2)

end

end A381136.P7633401093156072507

/-!
# A381137: Lexicographically earliest sequence of distinct positive integers such that no 3 terms are in harmonic progression.

The programs for A381137, there is no canonical definition to state claims against.
-/

/-! ## A381137.P4617637822913763690

`∑[A285963(A357710(n)+n+1)+1]`
-/

namespace A381137.P4617637822913763690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285963 (A357710 n + (n + 1 : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381137.P4617637822913763690

/-!
# A381138: a(n) is the number of divisors d of n such that tau(n^(1 + d) + d) = 2^omega(n^(1 + d) + d), where tau = A000005 and omega = A001221.

The programs for A381138, there is no canonical definition to state claims against.
-/

/-! ## A381138.P3519296843613123614

`C(A034444(n+1), A374757(A325338(n+4)))`
-/

namespace A381138.P3519296843613123614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034444 (n + 1)).toNat (A374757 (A325338 (n + 4)).toNat).toNat

end

end A381138.P3519296843613123614

/-!
# A381140: Expansion of e.g.f. exp( -LambertW(-x * cosh(x)) ).

The programs for A381140, there is no canonical definition to state claims against.
-/

/-! ## A381140.P2994901104943375866

`A361201(A324638(n))+A220352(n)`
-/

namespace A381140.P2994901104943375866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361201 (A324638 n).toNat + A220352 n

end

end A381140.P2994901104943375866

/-! ## A381140.P10519186586329189760

`A132340(A159311(n)*A300323(n))`
-/

namespace A381140.P10519186586329189760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132340 (A159311 n * A300323 n).toNat

end

end A381140.P10519186586329189760

/-!
# A381141: Expansion of e.g.f. exp( -LambertW(-x * cos(x)) ).

The programs for A381141, there is no canonical definition to state claims against.
-/

/-! ## A381141.P11012605262317128475

`A088462(2*A120732(n))`
-/

namespace A381141.P11012605262317128475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (2 * A120732 n).toNat

end

end A381141.P11012605262317128475

/-! ## A381141.P12657611185801572655

`or(1, A302128(A088160(n)))`
-/

namespace A381141.P12657611185801572655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302128 (A088160 n).toNat)

end

end A381141.P12657611185801572655

/-!
# A381142: Expansion of e.g.f. exp( -LambertW(-sin(x)) ).

The programs for A381142, there is no canonical definition to state claims against.
-/

/-! ## A381142.P10833633842677434678

`or(1, A110654(A038172(n+1)))`
-/

namespace A381142.P10833633842677434678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A110654 (A038172 (n + 1)).toNat)

end

end A381142.P10833633842677434678

/-! ## A381142.P9145523339931874536

`A237750(A006906(n))+A007840(n)`
-/

namespace A381142.P9145523339931874536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237750 (A006906 n).toNat + A007840 n

end

end A381142.P9145523339931874536

/-!
# A381143: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x * cosh(x)) ).

The programs for A381143, there is no canonical definition to state claims against.
-/

/-! ## A381143.P187160051708467032

`A362205(n)-A071326(A049300(n+1))`
-/

namespace A381143.P187160051708467032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362205 n - A071326 (A049300 (n + 1)).toNat

end

end A381143.P187160051708467032

/-! ## A381143.P12565296700761211271

`A097065(A208231(n)-A359377(3*n+4))`
-/

namespace A381143.P12565296700761211271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A208231 n - A359377 (3 * n + 4)).toNat

end

end A381143.P12565296700761211271

/-!
# A381144: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x * cos(x)) ).

The programs for A381144, there is no canonical definition to state claims against.
-/

/-! ## A381144.P2146925665035206370

`A329629(A148418(n))`
-/

namespace A381144.P2146925665035206370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (A148418 n).toNat

end

end A381144.P2146925665035206370

/-! ## A381144.P14071842521804740335

`A162220(A376311(n+1))`
-/

namespace A381144.P14071842521804740335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162220 (A376311 (n + 1)).toNat

end

end A381144.P14071842521804740335

/-!
# A381145: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-sin(x)) ).

The programs for A381145, there is no canonical definition to state claims against.
-/

/-! ## A381145.P15374134316872293185

`A001147(n)-A241469(A329739(n))`
-/

namespace A381145.P15374134316872293185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A241469 (A329739 n).toNat

end

end A381145.P15374134316872293185

/-! ## A381145.P4770060956811075163

`A010848(A001147(n))+1`
-/

namespace A381145.P4770060956811075163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A001147 n).toNat + 1

end

end A381145.P4770060956811075163

/-!
# A381147: E.g.f. A(x) satisfies A(x) = exp( sinh(x * A(x)) / A(x) ).

The programs for A381147, there is no canonical definition to state claims against.
-/

/-! ## A381147.P11120111024887862947

`A014085(A191365(n))-A003116(n)`
-/

namespace A381147.P11120111024887862947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A191365 n).toNat - A003116 n

end

end A381147.P11120111024887862947

/-!
# A381158: Prime numbers where digit values decrease while alternating parity.

The programs for A381158, there is no canonical definition to state claims against.
-/

/-! ## A381158.P10740203909686168898

`∩[A030144(n+1), A028912(n)]`
-/

namespace A381158.P10740203909686168898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381158.P10740203909686168898

/-! ## A381158.P2796703674552176182

`∩[A323578(n+1), A028912(n)]`
-/

namespace A381158.P2796703674552176182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381158.P2796703674552176182

/-! ## A381158.P14320073580787830270

`∩[A009995(n+1), A030144(n+1)]`
-/

namespace A381158.P14320073580787830270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381158.P14320073580787830270

/-! ## A381158.P1250416792318733622

`∩[A009996(n+1), A030144(n+1)]`
-/

namespace A381158.P1250416792318733622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381158.P1250416792318733622

/-! ## A381158.P11555393741510317543

`∩[A028867(n+1), A030141(n+1)]`
-/

namespace A381158.P11555393741510317543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381158.P11555393741510317543

/-!
# A381159: Numbers whose prime divisors all end in the same digit.

The programs for A381159, there is no canonical definition to state claims against.
-/

/-! ## A381159.P13559753178617348992

`∪[A380758(n+1), A000961(n+1)]`
-/

namespace A381159.P13559753178617348992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381159.P13559753178617348992

/-!
# A381170: Euler transform of n^2 * A065959(n).

The programs for A381170, there is no canonical definition to state claims against.
-/

/-! ## A381170.P431161921511374969

`A287326(A077054(n)*A332392(n))`
-/

namespace A381170.P431161921511374969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287326 (A077054 n * A332392 n).toNat

end

end A381170.P431161921511374969

/-!
# A381171: Expansion of e.g.f. (1/x) * Series_Reversion( x / (1 + x*cosh(x)) ).

The programs for A381171, there is no canonical definition to state claims against.
-/

/-! ## A381171.P9815765527939533968

`A110656(A377529(n)+A124501(n))`
-/

namespace A381171.P9815765527939533968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A377529 n + A124501 n).toNat

end

end A381171.P9815765527939533968

/-! ## A381171.P11910187787184360013

`A381141(n)-A333223(A000110(n))`
-/

namespace A381171.P11910187787184360013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381141 n - A333223 (A000110 n).toNat

end

end A381171.P11910187787184360013

/-!
# A381174: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x*cos(x)) ).

The programs for A381174, there is no canonical definition to state claims against.
-/

/-! ## A381174.P3333395963947980695

`A380817(A385307(n))`
-/

namespace A381174.P3333395963947980695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A385307 n).toNat

end

end A381174.P3333395963947980695

/-! ## A381174.P2971614367671940733

`A054861(A343260(n)+A004277(n))`
-/

namespace A381174.P2971614367671940733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A343260 n + A004277 n).toNat

end

end A381174.P2971614367671940733

/-!
# A381175: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * A(x)^2 * cos(x * A(x)) ).

The programs for A381175, there is no canonical definition to state claims against.
-/

/-! ## A381175.P14947044699475185064

`A371249(A349556(n))`
-/

namespace A381175.P14947044699475185064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371249 (A349556 n).toNat

end

end A381175.P14947044699475185064

/-!
# A381177: E.g.f. A(x) satisfies A(x) = 1/( 1 - A(x) * sinh(x * A(x)) ).

The programs for A381177, there is no canonical definition to state claims against.
-/

/-! ## A381177.P8365105465646674392

`A097887(A048654(n))`
-/

namespace A381177.P8365105465646674392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097887 (A048654 n).toNat

end

end A381177.P8365105465646674392

/-!
# A381178: Irregular triangle read by rows, where row n lists the elements of the multiset of bases and exponents (including exponents = 1) in the prime factorization of n.

The programs for A381178, there is no canonical definition to state claims against.
-/

/-! ## A381178.P6135204684374101794

`A375781(gcd(A139757(n), A243499(2*(n+1))))`
-/

namespace A381178.P6135204684374101794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375781 (Int.gcd (A139757 n) (A243499 (2 * (n + 1))))

end

end A381178.P6135204684374101794

/-! ## A381178.P15425209193054394723

`gcd(A131902(A374402(n+1)), A385926(n+6))`
-/

namespace A381178.P15425209193054394723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131902 (A374402 (n + 1)).toNat) (A385926 (n + 6))

end

end A381178.P15425209193054394723

/-! ## A381178.P13258213387736336328

`A027750(A169988(2*n+1)+A072774(n+1))`
-/

namespace A381178.P13258213387736336328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A169988 (2 * n + 1) + A072774 (n + 1)).toNat

end

end A381178.P13258213387736336328

/-! ## A381178.P12461869666408098262

`A229349(A363085(3*n+1)+A267463(3*(n+1)))`
-/

namespace A381178.P12461869666408098262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229349 (A363085 (3 * n + 1) + A267463 (3 * (n + 1))).toNat

end

end A381178.P12461869666408098262

/-! ## A381178.P4875896774412165577

`A048296(A050295(n+1))`
-/

namespace A381178.P4875896774412165577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048296 (A050295 (n + 1)).toNat

end

end A381178.P4875896774412165577

/-!
# A381182: E.g.f. A(x) satisfies A(x) = 1/( 1 - A(x) * sin(x * A(x)) ).

The programs for A381182, there is no canonical definition to state claims against.
-/

/-! ## A381182.P287177276555039031

`A039081(A217794(n))`
-/

namespace A381182.P287177276555039031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039081 (A217794 n).toNat

end

end A381182.P287177276555039031

/-!
# A381183: a(n) = the smallest positive integer that produces a product that contains the digit 2 when multiplied by 2 at most n times, and where a further multiplication by 2 produces a number that does not contain the digit 2. Set a(n) = -1 if no such number exists.

The programs for A381183, there is no canonical definition to state claims against.
-/

/-! ## A381183.P1086921073265267532

`A083906(∑[A108995(n)])`
-/

namespace A381183.P1086921073265267532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381183.P1086921073265267532

/-!
# A381186: a(n) = denominator( [x^n] hypergeom([1/4, 3/4], [1], 2^6*x/3^2)/sqrt(1 - 4*x) ).

The programs for A381186, there is no canonical definition to state claims against.
-/

/-! ## A381186.P11225872401294359227

`A072404(A150138(n))`
-/

namespace A381186.P11225872401294359227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072404 (A150138 n).toNat

end

end A381186.P11225872401294359227

/-! ## A381186.P10077488249829808762

`3^A001222(A090139(n))`
-/

namespace A381186.P10077488249829808762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (A090139 n).toNat : ℤ)

end

end A381186.P10077488249829808762

/-! ## A381186.P14910592714754237636

`3^A003434(A150801(n))`
-/

namespace A381186.P14910592714754237636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A003434 (A150801 n).toNat : ℤ)

end

end A381186.P14910592714754237636

/-!
# A381187: Triangle T(n,k) read by rows whose n-th row is the lexicographically first n-tuple of ordered positive integers with sum A380887(n) and product A380887(n) * 100^(n-1).

The programs for A381187, there is no canonical definition to state claims against.
-/

/-! ## A381187.P4195476367432725955

`A383026(A356281(n)+A170885(n))`
-/

namespace A381187.P4195476367432725955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383026 (A356281 n + A170885 n).toNat

end

end A381187.P4195476367432725955

/-!
# A381188: Number of connected minimal dominating sets in the n X n queen graph.

The programs for A381188, there is no canonical definition to state claims against.
-/

/-! ## A381188.P10757861226206557340

`A047309(A153532(n))+n`
-/

namespace A381188.P10757861226206557340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (A153532 n).toNat + (n : ℤ)

end

end A381188.P10757861226206557340

/-!
# A381189: Ulam numbers that are squarefree semiprimes.

The programs for A381189, there is no canonical definition to state claims against.
-/

/-! ## A381189.P11253563920000520536

`filter[A378795(n+1), A008966(#)]`
-/

namespace A381189.P11253563920000520536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381189.P11253563920000520536

/-! ## A381189.P6674805284250972833

`∩[A005117(n+1), A378795(n+1)]`
-/

namespace A381189.P6674805284250972833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P6674805284250972833

/-! ## A381189.P9930617005966757912

`filter[A002858(n+1), A280710(#)]`
-/

namespace A381189.P9930617005966757912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A381189.P9930617005966757912

/-! ## A381189.P12328058299160760327

`filter[A378795(n+1), A049240(#)]`
-/

namespace A381189.P12328058299160760327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A381189.P12328058299160760327

/-! ## A381189.P3891001180318024480

`filter[A378795(n+1), A181183(#)]`
-/

namespace A381189.P3891001180318024480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A381189.P3891001180318024480

/-! ## A381189.P6823131554433434801

`filter[A378795(n+1), A262684(#)]`
-/

namespace A381189.P6823131554433434801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A381189.P6823131554433434801

/-! ## A381189.P13506060081833322993

`filter[A378795(n+1), A280710(#)]`
-/

namespace A381189.P13506060081833322993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A381189.P13506060081833322993

/-! ## A381189.P77185917631010760

`filter[A378795(n+1), A295316(#)]`
-/

namespace A381189.P77185917631010760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A381189.P77185917631010760

/-! ## A381189.P2699703652176519148

`∩[A002858(n+1), A006881(n+1)]`
-/

namespace A381189.P2699703652176519148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P2699703652176519148

/-! ## A381189.P1464808794484282317

`∩[A006881(n+1), A378795(n+1)]`
-/

namespace A381189.P1464808794484282317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P1464808794484282317

/-! ## A381189.P17476768842503282069

`∩[A007422(n+1), A378795(n+1)]`
-/

namespace A381189.P17476768842503282069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P17476768842503282069

/-! ## A381189.P16128503015940289708

`∩[A030513(n+1), A378795(n+1)]`
-/

namespace A381189.P16128503015940289708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P16128503015940289708

/-! ## A381189.P17320182438931018630

`∩[A068993(n+1), A378795(n+1)]`
-/

namespace A381189.P17320182438931018630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P17320182438931018630

/-! ## A381189.P12027616410273917976

`∩[A161918(n+1), A378795(n+1)]`
-/

namespace A381189.P12027616410273917976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P12027616410273917976

/-! ## A381189.P15160035899978299958

`∩[A332269(n+1), A378795(n+1)]`
-/

namespace A381189.P15160035899978299958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P15160035899978299958

/-! ## A381189.P8843769874313457990

`∩[A006881(n+1), A072832(n)+a(n-1)]` with `a(0)=1`
-/

namespace A381189.P8843769874313457990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A072832 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P8843769874313457990

/-! ## A381189.P10685157342635254836

`∩[A367590(n+1), A378795(n+1)]`
-/

namespace A381189.P10685157342635254836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P10685157342635254836

/-! ## A381189.P9159595130400007619

`∩[A325230(n+1), A378795(n+1)]`
-/

namespace A381189.P9159595130400007619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P9159595130400007619

/-! ## A381189.P10490619340198902942

`∩[A374472(n+1), A378795(n+1)]`
-/

namespace A381189.P10490619340198902942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381189.P10490619340198902942

/-!
# A381190: Number of connected minimal dominating sets in the n-trapezohedral graph.

The programs for A381190, there is no canonical definition to state claims against.
-/

/-! ## A381190.P6651387312353767355

`2*(n+3)*A084338(n+1)`
-/

namespace A381190.P6651387312353767355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) * A084338 (n + 1)

end

end A381190.P6651387312353767355

/-! ## A381190.P666801245216094422

`(A134816(n+1)+A007307(n))*2*(n+3)`
-/

namespace A381190.P666801245216094422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134816 (n + 1) + A007307 n) * (2 * (n + 3) : ℤ)

end

end A381190.P666801245216094422

/-!
# A381193: a(n) = (3*n-1)*(n^4-18*n^3+179*n^2-582*n+720)/120.

The programs for A381193, the canonical program `A381193.P5284170118730963565` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381193 has offset 1).

The definition of A381193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381193.P5284170118730963565

`(3*(n+1)-1)*((n+1)^4-18*(n+1)^3+179*(n+1)²-582*(n+1)+720)/120`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A381193

/-- `(3*(n+1)-1)*((n+1)^4-18*(n+1)^3+179*(n+1)²-582*(n+1)+720)/120` -/
def P5284170118730963565.Spec : Prop :=
  ∀ n, P5284170118730963565.a n = (A381193 (n + 1) : ℚ)

end A381193

/-!
# A381194: Number of equal-length matchings of 2n uniformly spaced points on a circle.

The programs for A381194, the canonical program `A381194.P16466113372331178624` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381194 has offset 1).

The definition of A381194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381194.P16466113372331178624

`A306905(n+1)-A000225(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A381194

/-- `A306905(n+1)-A000225(n)` -/
def P16466113372331178624.Spec : Prop :=
  ∀ n, P16466113372331178624.a n = A381194 (n + 1)

theorem P16466113372331178624.correct : P16466113372331178624.Spec := by
  intro n
  simp only [A381194, Nat.add_sub_cancel]

end A381194

/-! ## A381194.P9076999267802851527

`A306905(n+1)+1-A000079(n)`
-/

namespace A381194.P9076999267802851527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306905 (n + 1) + 1 - A000079 n

end

end A381194.P9076999267802851527

namespace A381194

/-- `A306905(n+1)+1-A000079(n)` -/
def P9076999267802851527.Spec : Prop :=
  ∀ n, P9076999267802851527.a n = A381194 (n + 1)

theorem P9076999267802851527.correct : P9076999267802851527.Spec := by
  intro n
  simp only [A381194, Nat.add_sub_cancel, A381194.P9076999267802851527.a, A381194.P16466113372331178624.a, A000079, A000079.P10855139691139572931.a, A000225, A000225.P6535533121115206393.a, A306905, A306905.P16718704859846573319.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381194

/-! ## A381194.P1713837005749986287

`A053635(n+1)-A053636(n+1)/2-record[A355090(n)]`
-/

namespace A381194.P1713837005749986287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355090 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053635 (n + 1) : ℚ) - (A053636 (n + 1) : ℚ) / 2 - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A381194.P1713837005749986287

namespace A381194

/-- `A053635(n+1)-A053636(n+1)/2-record[A355090(n)]` -/
def P1713837005749986287.Spec : Prop :=
  ∀ n, P1713837005749986287.a n = (A381194 (n + 1) : ℚ)

end A381194

/-! ## A381194.P8275015921938433559

`(n+1)*(A000031(n+1)-A000016(n+1))-record[A355090(n)]`
-/

namespace A381194.P8275015921938433559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000031 (n + 1) - A000016 (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381194.P8275015921938433559

namespace A381194

/-- `(n+1)*(A000031(n+1)-A000016(n+1))-record[A355090(n)]` -/
def P8275015921938433559.Spec : Prop :=
  ∀ n, P8275015921938433559.a n = A381194 (n + 1)

end A381194

/-! ## A381194.P16060917233837459253

`A305897(A306898(n+1))-A000079(n)`
-/

namespace A381194.P16060917233837459253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A306898 (n + 1)).toNat - A000079 n

end

end A381194.P16060917233837459253

namespace A381194

/-- `A305897(A306898(n+1))-A000079(n)` -/
def P16060917233837459253.Spec : Prop :=
  ∀ n, P16060917233837459253.a n = A381194 (n + 1)

end A381194

/-!
# A381195: Expansion of g.f. (1 - sqrt(1 - 1728*x))/(864*x).

The programs for A381195, there is no canonical definition to state claims against.
-/

/-! ## A381195.P12777109662760245081

`A000400(A008585(n))*A151374(n)`
-/

namespace A381195.P12777109662760245081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A008585 n).toNat * A151374 n

end

end A381195.P12777109662760245081

/-!
# A381196: Stellated octagon numbers: a(n) = 20*n^2 + 8*n + 1.

The programs for A381196, the canonical program `A381196.P2799879096650830800` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381196 has offset 0).

The definition of A381196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*n²+8*n+1` (program `A381196.P2799879096650830800`, by `A381196.P2799879096650830800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381196.P2799879096650830800

`20*n²+8*n+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A381196

/-- `20*n²+8*n+1` -/
def P2799879096650830800.Spec : Prop :=
  ∀ n, (P2799879096650830800.a n : ℤ) = A381196 n

theorem P2799879096650830800.correct : P2799879096650830800.Spec := by
  intro n
  simp only [A381196]

end A381196

/-! ## A381196.P16331969672664660425

`∑[a(n-1)+40]` with `a(0)=1, a(1)=28`
-/

namespace A381196.P16331969672664660425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 28] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381196.P16331969672664660425

namespace A381196

/-- `∑[a(n-1)+40]` -/
def P16331969672664660425.Spec : Prop :=
  ∀ n, (P16331969672664660425.a n : ℤ) = A381196 n

end A381196

/-! ## A381196.P14512778025490324903

`(A017294(n)+1)/5`
-/

namespace A381196.P14512778025490324903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017294 n + 1 : ℚ) / 5

end

end A381196.P14512778025490324903

namespace A381196

/-- `(A017294(n)+1)/5` -/
def P14512778025490324903.Spec : Prop :=
  ∀ n, P14512778025490324903.a n = (A381196 n : ℚ)

theorem P14512778025490324903.correct : P14512778025490324903.Spec := by
  intro n
  simp only [A381196, Nat.add_sub_cancel, A381196.P14512778025490324903.a, A381196.P2799879096650830800.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381196

/-! ## A381196.P11963010030126474998

`A079273(Δ[n²])`
-/

namespace A381196.P11963010030126474998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A381196.P11963010030126474998

namespace A381196

/-- `A079273(Δ[n²])` -/
def P11963010030126474998.Spec : Prop :=
  ∀ n, P11963010030126474998.a n = A381196 n

end A381196

/-! ## A381196.P7337781859141055483

`A027849(2*n)/(2*n+1)`
-/

namespace A381196.P7337781859141055483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027849 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A381196.P7337781859141055483

namespace A381196

/-- `A027849(2*n)/(2*n+1)` -/
def P7337781859141055483.Spec : Prop :=
  ∀ n, P7337781859141055483.a n = (A381196 n : ℚ)

theorem P7337781859141055483.correct : P7337781859141055483.Spec := by
  intro n
  simp only [A381196, Nat.add_sub_cancel, A381196.P7337781859141055483.a, A381196.P2799879096650830800.a, A027849, A027849.P11589793859807254720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381196

/-! ## A381196.P6339235731483495939

`A062317(3*n+n+1)`
-/

namespace A381196.P6339235731483495939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (3 * n + (n + 1))

end

end A381196.P6339235731483495939

namespace A381196

/-- `A062317(3*n+n+1)` -/
def P6339235731483495939.Spec : Prop :=
  ∀ n, P6339235731483495939.a n = A381196 n

end A381196

/-! ## A381196.P4146936163578075619

`A008738(A017293(n))`
-/

namespace A381196.P4146936163578075619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A017293 n).toNat

end

end A381196.P4146936163578075619

namespace A381196

/-- `A008738(A017293(n))` -/
def P4146936163578075619.Spec : Prop :=
  ∀ n, P4146936163578075619.a n = A381196 n

end A381196

/-! ## A381196.P12900676964743584545

`A231056(A017317(n))`
-/

namespace A381196.P12900676964743584545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231056 (A017317 n).toNat

end

end A381196.P12900676964743584545

namespace A381196

/-- `A231056(A017317(n))` -/
def P12900676964743584545.Spec : Prop :=
  ∀ n, P12900676964743584545.a n = A381196 n

end A381196

/-! ## A381196.P3866048093441384512

`A231056(A017209(n)+n)`
-/

namespace A381196.P3866048093441384512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231056 (A017209 n + (n : ℤ)).toNat

end

end A381196.P3866048093441384512

namespace A381196

/-- `A231056(A017209(n)+n)` -/
def P3866048093441384512.Spec : Prop :=
  ∀ n, P3866048093441384512.a n = A381196 n

end A381196

/-! ## A381196.P16340048913394642390

`A008738(A016885(2*n)-1)`
-/

namespace A381196.P16340048913394642390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A016885 (2 * n) - 1).toNat

end

end A381196.P16340048913394642390

namespace A381196

/-- `A008738(A016885(2*n)-1)` -/
def P16340048913394642390.Spec : Prop :=
  ∀ n, P16340048913394642390.a n = A381196 n

end A381196

/-! ## A381196.P15653868932298048014

`A393093(A017557(n))`
-/

namespace A381196.P15653868932298048014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393093 (A017557 n).toNat

end

end A381196.P15653868932298048014

namespace A381196

/-- `A393093(A017557(n))` -/
def P15653868932298048014.Spec : Prop :=
  ∀ n, P15653868932298048014.a n = A381196 n

end A381196

/-! ## A381196.P6131623648269905914

`A000115(20*n)`
-/

namespace A381196.P6131623648269905914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (20 * n)

end

end A381196.P6131623648269905914

namespace A381196

/-- `A000115(20*n)` -/
def P6131623648269905914.Spec : Prop :=
  ∀ n, P6131623648269905914.a n = A381196 n

end A381196

/-! ## A381196.P10126203096683746853

`A240116(A063143(n+1))`
-/

namespace A381196.P10126203096683746853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240116 (A063143 (n + 1)).toNat

end

end A381196.P10126203096683746853

namespace A381196

/-- `A240116(A063143(n+1))` -/
def P10126203096683746853.Spec : Prop :=
  ∀ n, P10126203096683746853.a n = A381196 n

end A381196

/-! ## A381196.P4884539888646367664

`A005868(A317095(n))`
-/

namespace A381196.P4884539888646367664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005868 (A317095 n).toNat

end

end A381196.P4884539888646367664

namespace A381196

/-- `A005868(A317095(n))` -/
def P4884539888646367664.Spec : Prop :=
  ∀ n, P4884539888646367664.a n = A381196 n

end A381196

/-! ## A381196.P12040599811404125610

`A025835(A169823(n))`
-/

namespace A381196.P12040599811404125610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (A169823 n).toNat

end

end A381196.P12040599811404125610

namespace A381196

/-- `A025835(A169823(n))` -/
def P12040599811404125610.Spec : Prop :=
  ∀ n, P12040599811404125610.a n = A381196 n

end A381196

/-!
# A381198: 

The programs for A381198, there is no canonical definition to state claims against.
-/

/-! ## A381198.P10222765029525696718

`A124399(A248195(n))`
-/

namespace A381198.P10222765029525696718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124399 (A248195 n).toNat

end

end A381198.P10222765029525696718

/-! ## A381198.P13054040410529629544

`A001901(A386725(n))`
-/

namespace A381198.P13054040410529629544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 (A386725 n).toNat

end

end A381198.P13054040410529629544

/-! ## A381198.P15160821908803282250

`A110256(A053229(n+1))`
-/

namespace A381198.P15160821908803282250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110256 (A053229 (n + 1)).toNat

end

end A381198.P15160821908803282250

/-! ## A381198.P2852241984346404817

`A110256(A089684(n+1))`
-/

namespace A381198.P2852241984346404817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110256 (A089684 (n + 1)).toNat

end

end A381198.P2852241984346404817

/-! ## A381198.P5932229083469227800

`A110256(A105356(n+1))`
-/

namespace A381198.P5932229083469227800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110256 (A105356 (n + 1)).toNat

end

end A381198.P5932229083469227800

/-!
# A381199: a(n) = (4*n)!/((n!)^2*(2*n)!)*Sum_{k=0..n} binomial(n,k)^2*binomial(2*k,k).

The programs for A381199, there is no canonical definition to state claims against.
-/

/-! ## A381199.P779797427964796755

`A000897(n)*A002893(n)`
-/

namespace A381199.P779797427964796755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000897 n * A002893 n

end

end A381199.P779797427964796755

/-! ## A381199.P10606023873209947903

`A001448(n)*A002896(n)`
-/

namespace A381199.P10606023873209947903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A002896 n

end

end A381199.P10606023873209947903

/-! ## A381199.P246662164857105909

`A000984(2*n)*A002896(n)`
-/

namespace A381199.P246662164857105909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A002896 n

end

end A381199.P246662164857105909

/-! ## A381199.P177532721693818916

`record[A001405(2*n)*A138547(n)]`
-/

namespace A381199.P177532721693818916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A138547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381199.P177532721693818916

/-! ## A381199.P659421065403500447

`A000984(2*n)*A138547(2*n)`
-/

namespace A381199.P659421065403500447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A138547 (2 * n)

end

end A381199.P659421065403500447

