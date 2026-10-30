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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A113201: Number of isomorphism classes of simple quadrangulations of the sphere having n vertices and n-2 faces, with orientation-reversing isomorphisms permitted.

The programs for A113201, there is no canonical definition to state claims against.
-/

/-! ## A113201.P15964159272803329262

`A062756(A059738(n))+A006758(n)`
-/

namespace A113201.P15964159272803329262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A059738 n).toNat + A006758 n

end

end A113201.P15964159272803329262

/-! ## A113201.P13282611101842620508

`A023190(A158976(n+1)+A003701(n))`
-/

namespace A113201.P13282611101842620508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A158976 (n + 1) + A003701 n).toNat

end

end A113201.P13282611101842620508

/-!
# A113202: Number of isomorphism classes of simple quadrangulations of the sphere having n vertices and n-2 faces, with orientation-reversing isomorphisms forbidden.

The programs for A113202, there is no canonical definition to state claims against.
-/

/-! ## A113202.P3431974655475256349

`A220218(A001004(n)%A146506(n+2))`
-/

namespace A113202.P3431974655475256349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220218 (Int.tmod (A001004 n) (A146506 (n + 2))).toNat

end

end A113202.P3431974655475256349

/-!
# A113205: Same as A002880, but with orientation-reversing isomorphisms forbidden.

The programs for A113205, there is no canonical definition to state claims against.
-/

/-! ## A113205.P14640873097277614315

`A167639(n)+A010054(A167649(n))`
-/

namespace A113205.P14640873097277614315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167639 n + A010054 (A167649 n).toNat

end

end A113205.P14640873097277614315

/-! ## A113205.P3823449385316703752

`A167639(n)+A010054(A255286(n))`
-/

namespace A113205.P3823449385316703752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167639 n + A010054 (A255286 n).toNat

end

end A113205.P3823449385316703752

/-! ## A113205.P18310528042482771542

`A167639(n)+A010054(A258347(n))`
-/

namespace A113205.P18310528042482771542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167639 n + A010054 (A258347 n).toNat

end

end A113205.P18310528042482771542

/-! ## A113205.P11080132980847469310

`A178225(A291981(n))+A167639(n)`
-/

namespace A113205.P11080132980847469310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A291981 n).toNat + A167639 n

end

end A113205.P11080132980847469310

/-! ## A113205.P598848281910372465

`A359828(A349835(n))+A167639(n)`
-/

namespace A113205.P598848281910372465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359828 (A349835 n).toNat + A167639 n

end

end A113205.P598848281910372465

/-!
# A113206: Triangle read by rows of generalized Catalan numbers.

The programs for A113206, there is no canonical definition to state claims against.
-/

/-! ## A113206.P2948342113574105466

`∑{e}[A104029(A324960(n)), #]`
-/

namespace A113206.P2948342113574105466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104029 (A324960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A113206.P2948342113574105466

/-! ## A113206.P9342878329549218779

`A146556(2*n+3)%A138143(n+1)`
-/

namespace A113206.P9342878329549218779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146556 (2 * n + 3)) (A138143 (n + 1))

end

end A113206.P9342878329549218779

/-! ## A113206.P15270103059429574342

`A003056(A321316(n+1)^A119326(n))`
-/

namespace A113206.P15270103059429574342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A321316 (n + 1) : ℚ) ^ (A119326 n : ℤ))).toNat

end

end A113206.P15270103059429574342

/-! ## A113206.P18226716966806665084

`A117707(A321316(n+1)^A119326(n))`
-/

namespace A113206.P18226716966806665084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (SequenceMachineLib.roundAway ((A321316 (n + 1) : ℚ) ^ (A119326 n : ℤ))).toNat

end

end A113206.P18226716966806665084

/-! ## A113206.P12409045923571624863

`A117707(A119326(n)²*A321316(n+1))`
-/

namespace A113206.P12409045923571624863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A119326 n ^ 2 * A321316 (n + 1)).toNat

end

end A113206.P12409045923571624863

/-!
# A113207: Coefficients of inverse of Poincaré series [or Poincare series] of the 5-Gonal operad.

The programs for A113207, there is no canonical definition to state claims against.
-/

/-! ## A113207.P12285218214579912369

`A053438(A000891(n))-A337105(n)`
-/

namespace A113207.P12285218214579912369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A000891 n).toNat - A337105 n

end

end A113207.P12285218214579912369

/-!
# A113208: Half-fixed-point of ascending descending base exponent transform.

The programs for A113208, there is no canonical definition to state claims against.
-/

/-! ## A113208.P8117422649480996514

`A002322(A113059(n)-A080225(n+1))`
-/

namespace A113208.P8117422649480996514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A113059 n - A080225 (n + 1)).toNat

end

end A113208.P8117422649480996514

/-!
# A113213: Smallest number m such that 2^n - m and 2^n + m are primes.

The programs for A113213, there is no canonical definition to state claims against.
-/

/-! ## A113213.P3322859553471568576

`A047160(2^(n+1))`
-/

namespace A113213.P3322859553471568576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (2 ^ (n + 1))

end

end A113213.P3322859553471568576

/-! ## A113213.P10743732126447082791

`A325142(2^(n+1))`
-/

namespace A113213.P10743732126447082791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (2 ^ (n + 1))

end

end A113213.P10743732126447082791

/-! ## A113213.P41426340631243886

`abs(A325142(2*2^n))`
-/

namespace A113213.P41426340631243886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325142 (2 * 2 ^ n)|

end

end A113213.P41426340631243886

/-! ## A113213.P401153147846476126

`A066285(2^(n+1))/2`
-/

namespace A113213.P401153147846476126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066285 (2 ^ (n + 1)) : ℚ) / 2

end

end A113213.P401153147846476126

/-! ## A113213.P2133321503547676993

`floor(A066285(A000079(n+1))/2)`
-/

namespace A113213.P2133321503547676993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066285 (A000079 (n + 1)).toNat : ℚ) / 2⌋

end

end A113213.P2133321503547676993

/-!
# A113214: Riordan array (1+2x,x(1+x)).

The programs for A113214, the canonical program `A113214.P1543907139351502579` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113214 has offset 0).

The definition of A113214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113214.P676478393290805094

`T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A113214.P676478393290805094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n

end

end A113214.P676478393290805094

namespace A113214

/-- `T(n-1,k-1)+T(n-2,k-1)` -/
def P676478393290805094.Spec : Prop :=
  ∀ n, (P676478393290805094.a n : ℤ) = A113214 n

end A113214

/-! ## A113214.P16763114559272123173

`T(row(n)-2, col(n)-1)+T(n-1,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A113214.P16763114559272123173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 1) + SequenceMachineLib.triUpLeft a n

end

end A113214.P16763114559272123173

namespace A113214

/-- `T(row(n)-2, col(n)-1)+T(n-1,k-1)` -/
def P16763114559272123173.Spec : Prop :=
  ∀ n, (P16763114559272123173.a n : ℤ) = A113214 n

end A113214

/-! ## A113214.P12822123035286089283

`abs(A117362(n))`
-/

namespace A113214.P12822123035286089283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117362 n|

end

end A113214.P12822123035286089283

namespace A113214

/-- `abs(A117362(n))` -/
def P12822123035286089283.Spec : Prop :=
  ∀ n, P12822123035286089283.a n = A113214 n

end A113214

/-! ## A113214.P821241867972986337

`A097807(n)*A117362(n)`
-/

namespace A113214.P821241867972986337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A117362 n

end

end A113214.P821241867972986337

namespace A113214

/-- `A097807(n)*A117362(n)` -/
def P821241867972986337.Spec : Prop :=
  ∀ n, P821241867972986337.a n = A113214 n

end A113214

/-! ## A113214.P5395914242057362577

`gcd(A000038(n), A117362(n))`
-/

namespace A113214.P5395914242057362577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A117362 n)

end

end A113214.P5395914242057362577

namespace A113214

/-- `gcd(A000038(n), A117362(n))` -/
def P5395914242057362577.Spec : Prop :=
  ∀ n, (P5395914242057362577.a n : ℤ) = A113214 n

end A113214

/-! ## A113214.P3757660086573362365

`lcm(A008836(n+1), A117362(n))`
-/

namespace A113214.P3757660086573362365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A117362 n)

end

end A113214.P3757660086573362365

namespace A113214

/-- `lcm(A008836(n+1), A117362(n))` -/
def P3757660086573362365.Spec : Prop :=
  ∀ n, (P3757660086573362365.a n : ℤ) = A113214 n

end A113214

/-! ## A113214.P1543907139351502579

`2*A030528(n+1)-A026729(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113214

/-- `2*A030528(n+1)-A026729(n)` -/
def P1543907139351502579.Spec : Prop :=
  ∀ n, P1543907139351502579.a n = A113214 n

theorem P1543907139351502579.correct : P1543907139351502579.Spec := by
  intro n
  simp only [A113214]

end A113214

/-! ## A113214.P9793783082516161896

`abs(A247492(n+1))`
-/

namespace A113214.P9793783082516161896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247492 (n + 1)|

end

end A113214.P9793783082516161896

namespace A113214

/-- `abs(A247492(n+1))` -/
def P9793783082516161896.Spec : Prop :=
  ∀ n, P9793783082516161896.a n = A113214 n

end A113214

/-! ## A113214.P11381716324936617792

`A284938(n+2)+A030528(n+1)`
-/

namespace A113214.P11381716324936617792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 2) + A030528 (n + 1)

end

end A113214.P11381716324936617792

namespace A113214

/-- `A284938(n+2)+A030528(n+1)` -/
def P11381716324936617792.Spec : Prop :=
  ∀ n, P11381716324936617792.a n = A113214 n

end A113214

/-! ## A113214.P2411297406930025297

`A098599(comp[∑[n]])`
-/

namespace A113214.P2411297406930025297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098599 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A113214.P2411297406930025297

namespace A113214

/-- `A098599(comp[∑[n]])` -/
def P2411297406930025297.Spec : Prop :=
  ∀ n, P2411297406930025297.a n = A113214 n

end A113214

/-! ## A113214.P12244053471535272257

`abs(A100218(∑[A035214(n)]))`
-/

namespace A113214.P12244053471535272257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A113214.P12244053471535272257

namespace A113214

/-- `abs(A100218(∑[A035214(n)]))` -/
def P12244053471535272257.Spec : Prop :=
  ∀ n, P12244053471535272257.a n = A113214 n

end A113214

/-! ## A113214.P8891766854632341634

`2*A026729(A014132(n+1))-A026729(n)`
-/

namespace A113214.P8891766854632341634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026729 (A014132 (n + 1)).toNat - A026729 n

end

end A113214.P8891766854632341634

namespace A113214

/-- `2*A026729(A014132(n+1))-A026729(n)` -/
def P8891766854632341634.Spec : Prop :=
  ∀ n, P8891766854632341634.a n = A113214 n

end A113214

/-! ## A113214.P3726211828830498466

`2*A026729(A047839(n+1))-A026729(n)`
-/

namespace A113214.P3726211828830498466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026729 (A047839 (n + 1)).toNat - A026729 n

end

end A113214.P3726211828830498466

namespace A113214

/-- `2*A026729(A047839(n+1))-A026729(n)` -/
def P3726211828830498466.Spec : Prop :=
  ∀ n, P3726211828830498466.a n = A113214 n

end A113214

/-! ## A113214.P2586658764303320691

`2*A026729(A183573(n+1))-A026729(n)`
-/

namespace A113214.P2586658764303320691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026729 (A183573 (n + 1)).toNat - A026729 n

end

end A113214.P2586658764303320691

namespace A113214

/-- `2*A026729(A183573(n+1))-A026729(n)` -/
def P2586658764303320691.Spec : Prop :=
  ∀ n, P2586658764303320691.a n = A113214 n

end A113214

/-! ## A113214.P16785631160726114691

`A061896(A099375(n)+n)`
-/

namespace A113214.P16785631160726114691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 (A099375 n + (n : ℤ)).toNat

end

end A113214.P16785631160726114691

namespace A113214

/-- `A061896(A099375(n)+n)` -/
def P16785631160726114691.Spec : Prop :=
  ∀ n, P16785631160726114691.a n = A113214 n

end A113214

/-! ## A113214.P1490280508817366684

`A061896(2*A004736(n+1)+n-1)`
-/

namespace A113214.P1490280508817366684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 (2 * A004736 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A113214.P1490280508817366684

namespace A113214

/-- `A061896(2*A004736(n+1)+n-1)` -/
def P1490280508817366684.Spec : Prop :=
  ∀ n, P1490280508817366684.a n = A113214 n

end A113214

/-! ## A113214.P17692676901819252427

`A105868(A014132(n+1))/A007318(n)`
-/

namespace A113214.P17692676901819252427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 (A014132 (n + 1)).toNat : ℚ) / (A007318 n : ℚ)

end

end A113214.P17692676901819252427

namespace A113214

/-- `A105868(A014132(n+1))/A007318(n)` -/
def P17692676901819252427.Spec : Prop :=
  ∀ n, P17692676901819252427.a n = (A113214 n : ℚ)

end A113214

/-!
# A113215: Repeat A006218(n) 2n+1 times.

The programs for A113215, the canonical program `A113215.P12781133178255026095` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113215 has offset 0).

The definition of A113215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113215.P15689120573102507157

`A006218(floor(sqrt(n)))`
-/

namespace A113215.P15689120573102507157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.sqrt n)

end

end A113215.P15689120573102507157

namespace A113215

/-- `A006218(floor(sqrt(n)))` -/
def P15689120573102507157.Spec : Prop :=
  ∀ n, P15689120573102507157.a n = A113215 n

end A113215

/-! ## A113215.P7339755943437406626

`A054519(floor(sqrt(n)))-1`
-/

namespace A113215.P7339755943437406626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (Nat.sqrt n) - 1

end

end A113215.P7339755943437406626

namespace A113215

/-- `A054519(floor(sqrt(n)))-1` -/
def P7339755943437406626.Spec : Prop :=
  ∀ n, P7339755943437406626.a n = A113215 n

end A113215

/-! ## A113215.P12781133178255026095

`∑[∏{e}[n, A027656(#)]]-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113215

/-- `∑[∏{e}[n, A027656(#)]]-1` -/
def P12781133178255026095.Spec : Prop :=
  ∀ n, P12781133178255026095.a n = A113215 n

theorem P12781133178255026095.correct : P12781133178255026095.Spec := by
  intro n
  simp only [A113215]

end A113215

/-! ## A113215.P2377861919803713008

`A362059(A000267(n))`
-/

namespace A113215.P2377861919803713008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (A000267 n).toNat

end

end A113215.P2377861919803713008

namespace A113215

/-- `A362059(A000267(n))` -/
def P2377861919803713008.Spec : Prop :=
  ∀ n, P2377861919803713008.a n = A113215 n

end A113215

/-! ## A113215.P2774933330817031562

`A362059(∑[A000122(n)])`
-/

namespace A113215.P2774933330817031562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113215.P2774933330817031562

namespace A113215

/-- `A362059(∑[A000122(n)])` -/
def P2774933330817031562.Spec : Prop :=
  ∀ n, P2774933330817031562.a n = A113215 n

end A113215

/-! ## A113215.P13775430632498170534

`A362059(A001650(n+1))`
-/

namespace A113215.P13775430632498170534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (A001650 (n + 1)).toNat

end

end A113215.P13775430632498170534

namespace A113215

/-- `A362059(A001650(n+1))` -/
def P13775430632498170534.Spec : Prop :=
  ∀ n, P13775430632498170534.a n = A113215 n

end A113215

/-! ## A113215.P6612040197522702451

`A362059(A161205(n+1))`
-/

namespace A113215.P6612040197522702451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (A161205 (n + 1)).toNat

end

end A113215.P6612040197522702451

namespace A113215

/-- `A362059(A161205(n+1))` -/
def P6612040197522702451.Spec : Prop :=
  ∀ n, P6612040197522702451.a n = A113215 n

end A113215

/-! ## A113215.P16126498052069955898

`A350102(A000196(n)+1)-2`
-/

namespace A113215.P16126498052069955898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (A000196 n + 1).toNat - 2

end

end A113215.P16126498052069955898

namespace A113215

/-- `A350102(A000196(n)+1)-2` -/
def P16126498052069955898.Spec : Prop :=
  ∀ n, P16126498052069955898.a n = A113215 n

end A113215

/-! ## A113215.P9764061313229400814

`∑[∑{d}[n, A010052(n)*A010052(#)]]`
-/

namespace A113215.P9764061313229400814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A010052 n * A010052 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113215.P9764061313229400814

namespace A113215

/-- `∑[∑{d}[n, A010052(n)*A010052(#)]]` -/
def P9764061313229400814.Spec : Prop :=
  ∀ n, P9764061313229400814.a n = A113215 n

end A113215

/-! ## A113215.P9446282488186740844

`∑[∑{d}[A037213(n), #^A037213(n+1)]]`
-/

namespace A113215.P9446282488186740844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℚ) ^ (A037213 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113215.P9446282488186740844

namespace A113215

/-- `∑[∑{d}[A037213(n), #^A037213(n+1)]]` -/
def P9446282488186740844.Spec : Prop :=
  ∀ n, P9446282488186740844.a n = (A113215 n : ℚ)

end A113215

/-! ## A113215.P2344953561615761346

`A006218(A000196(n))%A054519(n)`
-/

namespace A113215.P2344953561615761346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (A000196 n).toNat) (A054519 n)

end

end A113215.P2344953561615761346

namespace A113215

/-- `A006218(A000196(n))%A054519(n)` -/
def P2344953561615761346.Spec : Prop :=
  ∀ n, P2344953561615761346.a n = A113215 n

end A113215

/-! ## A113215.P3763395785199660431

`A362059(A000196(2*(2*n+1)))`
-/

namespace A113215.P3763395785199660431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (A000196 (2 * (2 * n + 1))).toNat

end

end A113215.P3763395785199660431

namespace A113215

/-- `A362059(A000196(2*(2*n+1)))` -/
def P3763395785199660431.Spec : Prop :=
  ∀ n, P3763395785199660431.a n = A113215 n

end A113215

/-!
# A113216: Triangle of polynomials P(n,x) of degree n related to Pi (see comment) and derived from Padé approximation to exp(x).

The programs for A113216, there is no canonical definition to state claims against.
-/

/-! ## A113216.P3255241381843002493

`A062157(A303273(n))*A113025(n)`
-/

namespace A113216.P3255241381843002493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A303273 n).toNat * A113025 n

end

end A113216.P3255241381843002493

/-! ## A113216.P56431345775825955

`abs(A303986(n))*A062157(A303273(n))`
-/

namespace A113216.P56431345775825955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303986 n| * A062157 (A303273 n).toNat

end

end A113216.P56431345775825955

/-! ## A113216.P10621995920885322504

`A001498(n)*A059268(n)*A062157(A303273(n))`
-/

namespace A113216.P10621995920885322504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 n * A059268 n * A062157 (A303273 n).toNat

end

end A113216.P10621995920885322504

/-! ## A113216.P15067520674428658193

`A009766(n)*A181511(n+1)*A062157(A303273(n))`
-/

namespace A113216.P15067520674428658193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A181511 (n + 1) * A062157 (A303273 n).toNat

end

end A113216.P15067520674428658193

/-! ## A113216.P8571902911580447029

`A088617(n)*A166350(n+1)*A062157(A303273(n))`
-/

namespace A113216.P8571902911580447029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 n * A166350 (n + 1) * A062157 (A303273 n).toNat

end

end A113216.P8571902911580447029

/-!
# A113217: Parity of decimal digital root of n.

The programs for A113217, the canonical program `A113217.P5350356533558442714` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113217 has offset 0).

The definition of A113217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113217.P5350356533558442714

`A010888(n)%2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113217

/-- `A010888(n)%2` -/
def P5350356533558442714.Spec : Prop :=
  ∀ n, P5350356533558442714.a n = A113217 n

theorem P5350356533558442714.correct : P5350356533558442714.Spec := by
  intro n
  simp only [A113217]

end A113217

/-! ## A113217.P1358132787330702455

`dr(n)%2`
-/

namespace A113217.P1358132787330702455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) % 2

end

end A113217.P1358132787330702455

namespace A113217

/-- `dr(n)%2` -/
def P1358132787330702455.Spec : Prop :=
  ∀ n, (P1358132787330702455.a n : ℤ) = A113217 n

end A113217

/-!
# A113218: Lexicographically earliest permutation of the natural numbers with alternating parities of digital roots in decimal representation.

The programs for A113218, there is no canonical definition to state claims against.
-/

/-! ## A113218.P5745334910293664511

`A113220(A113219(n))`
-/

namespace A113218.P5745334910293664511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (A113219 n).toNat

end

end A113218.P5745334910293664511

/-! ## A113218.P3848249122410995392

`xor(char[A004053(n+2)], A113221(n))`
-/

namespace A113218.P3848249122410995392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A113221 n)

end

end A113218.P3848249122410995392

/-! ## A113218.P6759905884759072692

`A185284(2*n+1)+A113220(n)`
-/

namespace A113218.P6759905884759072692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A113220 n

end

end A113218.P6759905884759072692

/-! ## A113218.P2241172765686752766

`xor(A096268(A061882(n)), A113221(n))`
-/

namespace A113218.P2241172765686752766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096268 (A061882 n).toNat) (A113221 n)

end

end A113218.P2241172765686752766

/-!
# A113219: A113218(A113218(n)).

The programs for A113219, there is no canonical definition to state claims against.
-/

/-! ## A113219.P17584937655292967113

`A113218(A113218(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113219.P17584937655292967113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A113218 n).toNat

end

end A113219.P17584937655292967113

/-!
# A113220: Inverse of A113218.

The programs for A113220, there is no canonical definition to state claims against.
-/

/-! ## A113220.P13789150372064931884

`A113221(A113218(n))`
-/

namespace A113220.P13789150372064931884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A113218 n).toNat

end

end A113220.P13789150372064931884

/-! ## A113220.P5775624928076583421

`xor(n, char[A004053(n+2)])`
-/

namespace A113220.P5775624928076583421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A113220.P5775624928076583421

/-! ## A113220.P3117424070283708552

`xor(n, char[A004209(n+2)])`
-/

namespace A113220.P3117424070283708552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004209 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A113220.P3117424070283708552

/-! ## A113220.P18210907367992824875

`xor(n, A096268(A061882(n)))`
-/

namespace A113220.P18210907367992824875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A096268 (A061882 n).toNat)

end

end A113220.P18210907367992824875

/-! ## A113220.P15332283657140823130

`xor(n, A267636(A005627(n)))`
-/

namespace A113220.P15332283657140823130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A267636 (A005627 n).toNat)

end

end A113220.P15332283657140823130

/-!
# A113221: A113220(A113220(n)).

The programs for A113221, there is no canonical definition to state claims against.
-/

/-! ## A113221.P9966570968902550550

`A113220(A113220(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113221.P9966570968902550550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (A113220 n).toNat

end

end A113221.P9966570968902550550

/-!
# A113222: a(n) = Sum_{p^e | n} F(p^e), where each p^e is the highest power of prime p dividing n (with e > 0), and F(k) is the k-th Fibonacci number.

The programs for A113222, the canonical program `A113222.P11804118331044823861` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113222 has offset 1).

The definition of A113222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113222.P11804118331044823861

`∑{p}[n+1, A000045(#^val(n+1, #))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113222

/-- `∑{p}[n+1, A000045(#^val(n+1, #))]` -/
def P11804118331044823861.Spec : Prop :=
  ∀ n, P11804118331044823861.a n = A113222 (n + 1)

theorem P11804118331044823861.correct : P11804118331044823861.Spec := by
  intro n
  simp only [A113222, Nat.add_sub_cancel]

end A113222

/-! ## A113222.P10685485369937598443

`A290689(n+2)%Δ[A039943(n)]`
-/

namespace A113222.P10685485369937598443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290689 (n + 2)) (f1 (n + 1) - f1 n)

end

end A113222.P10685485369937598443

namespace A113222

/-- `A290689(n+2)%Δ[A039943(n)]` -/
def P10685485369937598443.Spec : Prop :=
  ∀ n, P10685485369937598443.a n = A113222 (n + 1)

end A113222

/-! ## A113222.P4635281882645267330

`A000045(n+1)%A003987(3^n)`
-/

namespace A113222.P4635281882645267330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (A003987 (3 ^ n))

end

end A113222.P4635281882645267330

namespace A113222

/-- `A000045(n+1)%A003987(3^n)` -/
def P4635281882645267330.Spec : Prop :=
  ∀ n, P4635281882645267330.a n = A113222 (n + 1)

end A113222

/-! ## A113222.P15355633299347155336

`A000045(A328847(A027557(n)²))`
-/

namespace A113222.P15355633299347155336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A328847 (A027557 n ^ 2).toNat).toNat

end

end A113222.P15355633299347155336

namespace A113222

/-- `A000045(A328847(A027557(n)²))` -/
def P15355633299347155336.Spec : Prop :=
  ∀ n, P15355633299347155336.a n = A113222 (n + 1)

end A113222

/-! ## A113222.P16665924044124162920

`A117407(A000032(n))-A009194(n+1)`
-/

namespace A113222.P16665924044124162920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117407 (A000032 n).toNat - A009194 (n + 1)

end

end A113222.P16665924044124162920

namespace A113222

/-- `A117407(A000032(n))-A009194(n+1)` -/
def P16665924044124162920.Spec : Prop :=
  ∀ n, P16665924044124162920.a n = A113222 (n + 1)

end A113222

/-!
# A113224: a(2n) = A002315(n), a(2n+1) = A082639(n+1).

The programs for A113224, the canonical program `A113224.P17804576340316238589` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113224 has offset 0).

The definition of A113224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113224.P16170924849731377613

`ogf((1+x^2)/(1-2x-2x^2+2x^3+x^4))`
-/

namespace A113224.P16170924849731377613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, -2, 2, 1] n

end

end A113224.P16170924849731377613

namespace A113224

/-- `ogf((1+x^2)/(1-2x-2x^2+2x^3+x^4))` -/
def P16170924849731377613.Spec : Prop :=
  ∀ n, P16170924849731377613.a n = A113224 n

end A113224

/-! ## A113224.P17804576340316238589

`A001333(n+1)-A000035(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113224

/-- `A001333(n+1)-A000035(n)` -/
def P17804576340316238589.Spec : Prop :=
  ∀ n, P17804576340316238589.a n = A113224 n

theorem P17804576340316238589.correct : P17804576340316238589.Spec := by
  intro n
  simp only [A113224]

end A113224

/-! ## A113224.P17895217723461905415

`1/2*A129744(n+1)`
-/

namespace A113224.P17895217723461905415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A129744 (n + 1) : ℚ)

end

end A113224.P17895217723461905415

namespace A113224

/-- `1/2*A129744(n+1)` -/
def P17895217723461905415.Spec : Prop :=
  ∀ n, P17895217723461905415.a n = (A113224 n : ℚ)

end A113224

/-! ## A113224.P16849951275135236963

`round(a(n-2)+(sqrt(2)+1)^n)` with `a(0)=1, a(1)=2`
-/

namespace A113224.P16849951275135236963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + (Real.sqrt (2 : ℝ) + 1) ^ n)

end

end A113224.P16849951275135236963

namespace A113224

/-- `round(a(n-2)+(sqrt(2)+1)^n)` -/
def P16849951275135236963.Spec : Prop :=
  ∀ n, P16849951275135236963.a n = A113224 n

end A113224

/-! ## A113224.P26133802475888687

`a(n-2)+2*or(1, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A113224.P26133802475888687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * Nat.lor 1 (a (n - 1))

end

end A113224.P26133802475888687

namespace A113224

/-- `a(n-2)+2*or(1, a(n-1))` -/
def P26133802475888687.Spec : Prop :=
  ∀ n, (P26133802475888687.a n : ℤ) = A113224 n

end A113224

/-! ## A113224.P7195087547691715157

`xor(1, 2*a(n-1)+a(n-2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A113224.P7195087547691715157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (2 * a (n - 1) + (a (n - 2) + 1))

end

end A113224.P7195087547691715157

namespace A113224

/-- `xor(1, 2*a(n-1)+a(n-2)+1)` -/
def P7195087547691715157.Spec : Prop :=
  ∀ n, (P7195087547691715157.a n : ℤ) = A113224 n

end A113224

/-! ## A113224.P5464758378436644231

`or(3, 2*a(n-1))-(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A113224.P5464758378436644231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 3 (2 * a (n - 1)) - (1 - a (n - 2))

end

end A113224.P5464758378436644231

namespace A113224

/-- `or(3, 2*a(n-1))-(1-a(n-2))` -/
def P5464758378436644231.Spec : Prop :=
  ∀ n, P5464758378436644231.a n = A113224 n

end A113224

/-! ## A113224.P9559684874883840980

`a(n-2)+2*(a(n-1)+a(n-2)%2)` with `a(0)=1, a(1)=2`
-/

namespace A113224.P9559684874883840980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + a (n - 2) % 2)

end

end A113224.P9559684874883840980

namespace A113224

/-- `a(n-2)+2*(a(n-1)+a(n-2)%2)` -/
def P9559684874883840980.Spec : Prop :=
  ∀ n, (P9559684874883840980.a n : ℤ) = A113224 n

end A113224

/-! ## A113224.P5627682648101870068

`∑[A137199(n+1)]`
-/

namespace A113224.P5627682648101870068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113224.P5627682648101870068

namespace A113224

/-- `∑[A137199(n+1)]` -/
def P5627682648101870068.Spec : Prop :=
  ∀ n, P5627682648101870068.a n = A113224 n

end A113224

/-! ## A113224.P5226054948094284723

`xor(1, A100828(n)-1)`
-/

namespace A113224.P5226054948094284723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A100828 n - 1)

end

end A113224.P5226054948094284723

namespace A113224

/-- `xor(1, A100828(n)-1)` -/
def P5226054948094284723.Spec : Prop :=
  ∀ n, P5226054948094284723.a n = A113224 n

end A113224

/-! ## A113224.P18251217866000737359

`A078057(n)-and(1, n)`
-/

namespace A113224.P18251217866000737359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - (Nat.land 1 n : ℤ)

end

end A113224.P18251217866000737359

namespace A113224

/-- `A078057(n)-and(1, n)` -/
def P18251217866000737359.Spec : Prop :=
  ∀ n, P18251217866000737359.a n = A113224 n

end A113224

/-! ## A113224.P1568347020618073906

`A099425(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A113224.P1568347020618073906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A099425 n + a (n - 2)

end

end A113224.P1568347020618073906

namespace A113224

/-- `A099425(n)+a(n-2)` -/
def P1568347020618073906.Spec : Prop :=
  ∀ n, P1568347020618073906.a n = A113224 n

end A113224

/-! ## A113224.P7047370746662575674

`A082766(2*(n+1))-and(1, n)`
-/

namespace A113224.P7047370746662575674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (2 * (n + 1)) - (Nat.land 1 n : ℤ)

end

end A113224.P7047370746662575674

namespace A113224

/-- `A082766(2*(n+1))-and(1, n)` -/
def P7047370746662575674.Spec : Prop :=
  ∀ n, P7047370746662575674.a n = A113224 n

end A113224

/-! ## A113224.P13098328111202131480

`A155046(2*n+1)-and(1, n)`
-/

namespace A113224.P13098328111202131480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (2 * n + 1) - (Nat.land 1 n : ℤ)

end

end A113224.P13098328111202131480

namespace A113224

/-- `A155046(2*n+1)-and(1, n)` -/
def P13098328111202131480.Spec : Prop :=
  ∀ n, P13098328111202131480.a n = A113224 n

end A113224

/-! ## A113224.P9632064279654722940

`A078057(n)-A000035(n)`
-/

namespace A113224.P9632064279654722940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - A000035 n

end

end A113224.P9632064279654722940

namespace A113224

/-- `A078057(n)-A000035(n)` -/
def P9632064279654722940.Spec : Prop :=
  ∀ n, P9632064279654722940.a n = A113224 n

end A113224

/-! ## A113224.P8396130745229214807

`A100828(n)-A010673(n)`
-/

namespace A113224.P8396130745229214807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 n - A010673 n

end

end A113224.P8396130745229214807

namespace A113224

/-- `A100828(n)-A010673(n)` -/
def P8396130745229214807.Spec : Prop :=
  ∀ n, P8396130745229214807.a n = A113224 n

end A113224

/-! ## A113224.P5004146897994183305

`A182780(n)-A000034(n)`
-/

namespace A113224.P5004146897994183305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n - A000034 n

end

end A113224.P5004146897994183305

namespace A113224

/-- `A182780(n)-A000034(n)` -/
def P5004146897994183305.Spec : Prop :=
  ∀ n, P5004146897994183305.a n = A113224 n

end A113224

/-! ## A113224.P2245840120044105757

`∑[A111954(n)+A000129(n)]`
-/

namespace A113224.P2245840120044105757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113224.P2245840120044105757

namespace A113224

/-- `∑[A111954(n)+A000129(n)]` -/
def P2245840120044105757.Spec : Prop :=
  ∀ n, P2245840120044105757.a n = A113224 n

end A113224

/-! ## A113224.P7133135877607069743

`A078057(n)-Δ[A004526(n)]`
-/

namespace A113224.P7133135877607069743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - (f1 (n + 1) - f1 n)

end

end A113224.P7133135877607069743

namespace A113224

/-- `A078057(n)-Δ[A004526(n)]` -/
def P7133135877607069743.Spec : Prop :=
  ∀ n, P7133135877607069743.a n = A113224 n

end A113224

/-! ## A113224.P5632746324494940072

`A078057(n)-Δ[A008619(n)]`
-/

namespace A113224.P5632746324494940072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - (f1 (n + 1) - f1 n)

end

end A113224.P5632746324494940072

namespace A113224

/-- `A078057(n)-Δ[A008619(n)]` -/
def P5632746324494940072.Spec : Prop :=
  ∀ n, P5632746324494940072.a n = A113224 n

end A113224

/-!
# A113225: a(2n) = A011900(n), a(2n+1) = A001109(n+1).

The programs for A113225, the canonical program `A113225.P9197875293737969191` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113225 has offset 0).

The definition of A113225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113225.P12709157671051956678

`ogf((1-x-x^2)/(1-2x-2x^2+2x^3+x^4))`
-/

namespace A113225.P12709157671051956678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -2, 2, 1] n

end

end A113225.P12709157671051956678

namespace A113225

/-- `ogf((1-x-x^2)/(1-2x-2x^2+2x^3+x^4))` -/
def P12709157671051956678.Spec : Prop :=
  ∀ n, P12709157671051956678.a n = A113225 n

end A113225

/-! ## A113225.P9197875293737969191

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113225

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P9197875293737969191.Spec : Prop :=
  ∀ n, P9197875293737969191.a n = A113225 n

theorem P9197875293737969191.correct : P9197875293737969191.Spec := by
  intro n
  simp only [A113225]

end A113225

/-! ## A113225.P6002698537458611270

`(1+(-1)^n+2*A000129(n+1))/4`
-/

namespace A113225.P6002698537458611270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ n + 2 * A000129 (n + 1) : ℚ) / 4

end

end A113225.P6002698537458611270

namespace A113225

/-- `(1+(-1)^n+2*A000129(n+1))/4` -/
def P6002698537458611270.Spec : Prop :=
  ∀ n, P6002698537458611270.a n = (A113225 n : ℚ)

end A113225

/-! ## A113225.P4481445538638767705

`∑[ogf((-1+x+x^2)/(-1+x+3x^2+x^3))]`
-/

namespace A113225.P4481445538638767705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -3, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113225.P4481445538638767705

namespace A113225

/-- `∑[ogf((-1+x+x^2)/(-1+x+3x^2+x^3))]` -/
def P4481445538638767705.Spec : Prop :=
  ∀ n, P4481445538638767705.a n = A113225 n

end A113225

/-! ## A113225.P11358496640392279693

`2*a(n-1)+a(n-2)-n%2` with `a(0)=1, a(1)=1`
-/

namespace A113225.P11358496640392279693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) + (a (n - 2) - ((n % 2 : ℕ) : ℤ))

end

end A113225.P11358496640392279693

namespace A113225

/-- `2*a(n-1)+a(n-2)-n%2` -/
def P11358496640392279693.Spec : Prop :=
  ∀ n, P11358496640392279693.a n = A113225 n

end A113225

/-! ## A113225.P15767256331376599947

`2*a(n-1)+a(n-2)-and(1, n)` with `a(0)=1, a(1)=1`
-/

namespace A113225.P15767256331376599947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) + (a (n - 2) - (Nat.land 1 n : ℤ))

end

end A113225.P15767256331376599947

namespace A113225

/-- `2*a(n-1)+a(n-2)-and(1, n)` -/
def P15767256331376599947.Spec : Prop :=
  ∀ n, P15767256331376599947.a n = A113225 n

end A113225

/-! ## A113225.P1577566263303625738

`2*a(n-1)-(and(1, n)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A113225.P1577566263303625738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - ((Nat.land 1 n : ℤ) - a (n - 2))

end

end A113225.P1577566263303625738

namespace A113225

/-- `2*a(n-1)-(and(1, n)-a(n-2))` -/
def P1577566263303625738.Spec : Prop :=
  ∀ n, P1577566263303625738.a n = A113225 n

end A113225

/-! ## A113225.P12097779035426060181

`floor((a(n-1)+a(n-2))/(2-sqrt(2)))` with `a(0)=1, a(1)=1`
-/

namespace A113225.P12097779035426060181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 1) + a (n - 2) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

end

end A113225.P12097779035426060181

namespace A113225

/-- `floor((a(n-1)+a(n-2))/(2-sqrt(2)))` -/
def P12097779035426060181.Spec : Prop :=
  ∀ n, P12097779035426060181.a n = A113225 n

end A113225

/-! ## A113225.P13376388744452797619

`∑[3*a(n-2)+a(n-1)+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A113225.P13376388744452797619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  3 * f1 (n - 2) + (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113225.P13376388744452797619

namespace A113225

/-- `∑[3*a(n-2)+a(n-1)+a(n-3)]` -/
def P13376388744452797619.Spec : Prop :=
  ∀ n, (P13376388744452797619.a n : ℤ) = A113225 n

end A113225

/-! ## A113225.P8746384818021698185

`∑[A097075(n)]`
-/

namespace A113225.P8746384818021698185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113225.P8746384818021698185

namespace A113225

/-- `∑[A097075(n)]` -/
def P8746384818021698185.Spec : Prop :=
  ∀ n, P8746384818021698185.a n = A113225 n

end A113225

/-! ## A113225.P9803925307074197724

`A105635(n)+char[2*n]`
-/

namespace A113225.P9803925307074197724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113225.P9803925307074197724

namespace A113225

/-- `A105635(n)+char[2*n]` -/
def P9803925307074197724.Spec : Prop :=
  ∀ n, P9803925307074197724.a n = A113225 n

end A113225

/-! ## A113225.P16533403326083027485

`∑[A171842(n)-and(1, n)]`
-/

namespace A113225.P16533403326083027485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113225.P16533403326083027485

namespace A113225

/-- `∑[A171842(n)-and(1, n)]` -/
def P16533403326083027485.Spec : Prop :=
  ∀ n, P16533403326083027485.a n = A113225 n

end A113225

/-! ## A113225.P7900850126641454669

`A000129(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A113225.P7900850126641454669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000129 n + a (n - 2)

end

end A113225.P7900850126641454669

namespace A113225

/-- `A000129(n)+a(n-2)` -/
def P7900850126641454669.Spec : Prop :=
  ∀ n, P7900850126641454669.a n = A113225 n

end A113225

/-! ## A113225.P507545336373054539

`A215928(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A113225.P507545336373054539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A215928 n + a (n - 2)

end

end A113225.P507545336373054539

namespace A113225

/-- `A215928(n)+a(n-2)` -/
def P507545336373054539.Spec : Prop :=
  ∀ n, P507545336373054539.a n = A113225 n

end A113225

/-! ## A113225.P10256866417767479102

`A113727(n)+A001057(n)`
-/

namespace A113225.P10256866417767479102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113727 n + A001057 n

end

end A113225.P10256866417767479102

namespace A113225

/-- `A113727(n)+A001057(n)` -/
def P10256866417767479102.Spec : Prop :=
  ∀ n, P10256866417767479102.a n = A113225 n

end A113225

/-! ## A113225.P6984516171396405732

`A307465(n)+A004526(n)`
-/

namespace A113225.P6984516171396405732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307465 n + A004526 n

end

end A113225.P6984516171396405732

namespace A113225

/-- `A307465(n)+A004526(n)` -/
def P6984516171396405732.Spec : Prop :=
  ∀ n, P6984516171396405732.a n = A113225 n

end A113225

/-! ## A113225.P9980121675345460807

`A100131(n)-A110654(n)`
-/

namespace A113225.P9980121675345460807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100131 n - A110654 n

end

end A113225.P9980121675345460807

namespace A113225

/-- `A100131(n)-A110654(n)` -/
def P9980121675345460807.Spec : Prop :=
  ∀ n, P9980121675345460807.a n = A113225 n

end A113225

/-! ## A113225.P14889691530445426511

`A113727(n)-A130472(n)`
-/

namespace A113225.P14889691530445426511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113727 n - A130472 n

end

end A113225.P14889691530445426511

namespace A113225

/-- `A113727(n)-A130472(n)` -/
def P14889691530445426511.Spec : Prop :=
  ∀ n, P14889691530445426511.a n = A113225 n

end A113225

/-! ## A113225.P16779279377256648147

`xor(A059841(n), A105635(n))`
-/

namespace A113225.P16779279377256648147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A105635 n)

end

end A113225.P16779279377256648147

namespace A113225

/-- `xor(A059841(n), A105635(n))` -/
def P16779279377256648147.Spec : Prop :=
  ∀ n, P16779279377256648147.a n = A113225 n

end A113225

/-! ## A113225.P2369964276856574066

`A121262(n+2)+A116404(n)`
-/

namespace A113225.P2369964276856574066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (n + 2) + A116404 n

end

end A113225.P2369964276856574066

namespace A113225

/-- `A121262(n+2)+A116404(n)` -/
def P2369964276856574066.Spec : Prop :=
  ∀ n, P2369964276856574066.a n = A113225 n

end A113225

/-!
# A113227: Number of permutations of [n] avoiding the pattern 1-23-4.

The programs for A113227, there is no canonical definition to state claims against.
-/

/-! ## A113227.P14982172198040688749

`A193593(∑[n]+n)`
-/

namespace A113227.P14982172198040688749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193593 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A113227.P14982172198040688749

/-! ## A113227.P14756261626481471669

`A193593(A000096(n))+char[9]`
-/

namespace A113227.P14756261626481471669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193593 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113227.P14756261626481471669

/-! ## A113227.P13746243237347480393

`A193593(A000096(n))%A013709(n)`
-/

namespace A113227.P13746243237347480393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193593 (A000096 n).toNat) (A013709 n)

end

end A113227.P13746243237347480393

/-! ## A113227.P11427010804991463382

`or(A011681(n), A193593(A000096(n)))`
-/

namespace A113227.P11427010804991463382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011681 n) (A193593 (A000096 n).toNat)

end

end A113227.P11427010804991463382

/-! ## A113227.P13918132090883378365

`or(A011731(n), A193593(A000096(n)))`
-/

namespace A113227.P13918132090883378365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011731 n) (A193593 (A000096 n).toNat)

end

end A113227.P13918132090883378365

/-!
# A113228: a(n) is the number of permutations of [1..n] that avoid the consecutive pattern 1324 (equally, the permutations that avoid 4231).

The programs for A113228, there is no canonical definition to state claims against.
-/

/-! ## A113228.P183865219865878722

`A264173(lt[2^(n-2), A264173(n)])`
-/

namespace A113228.P183865219865878722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A113228.P183865219865878722

/-! ## A113228.P4124989556128634245

`A264173(A034891(n)%A132183(n))`
-/

namespace A113228.P4124989556128634245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (Int.tmod (A034891 n) (A132183 n)).toNat

end

end A113228.P4124989556128634245

/-! ## A113228.P14068491949113207676

`A264173(lt[A371796(n), A264319(n)])`
-/

namespace A113228.P14068491949113207676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113228.P14068491949113207676

/-! ## A113228.P7492566260274647473

`A264173(A143611(n+1)%A133001(n))`
-/

namespace A113228.P7492566260274647473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (Int.tmod (A143611 (n + 1)) (A133001 n)).toNat

end

end A113228.P7492566260274647473

/-!
# A113229: Number of permutations avoiding the consecutive pattern 3412.

The programs for A113229, there is no canonical definition to state claims against.
-/

/-! ## A113229.P7892757055769373975

`A264319(lt[A005674(n), A264319(n)])`
-/

namespace A113229.P7892757055769373975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113229.P7892757055769373975

/-! ## A113229.P9025306065248263599

`A264319(lt[A261982(n), A264319(n)])`
-/

namespace A113229.P9025306065248263599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113229.P9025306065248263599

/-! ## A113229.P6735964972798754259

`A264319(lt[A345192(n), A264319(n)])`
-/

namespace A113229.P6735964972798754259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113229.P6735964972798754259

/-! ## A113229.P14022826529705657096

`A264319(lt[A357291(n+3), A264319(n)])`
-/

namespace A113229.P14022826529705657096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357291 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113229.P14022826529705657096

/-! ## A113229.P6656789320709646940

`A264319(lt[A336632(n), 2*A264319(n)])`
-/

namespace A113229.P6656789320709646940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113229.P6656789320709646940

/-!
# A113230: Digits of first n base 10 palindromes.

The programs for A113230, there is no canonical definition to state claims against.
-/

/-! ## A113230.P8403323388009458019

`dr(A381963(n)%A360952(2*n+3))`
-/

namespace A113230.P8403323388009458019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A381963 n) (A360952 (2 * n + 3)))

end

end A113230.P8403323388009458019

/-! ## A113230.P4157204323658930156

`A000030(A061917(n+1)%A375473(2*(n+1)))`
-/

namespace A113230.P4157204323658930156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (Int.tmod (A061917 (n + 1)) (A375473 (2 * (n + 1)))).toNat

end

end A113230.P4157204323658930156

/-! ## A113230.P1217446571781788501

`dr(A087052(eq[0, A138472(n)]))`
-/

namespace A113230.P1217446571781788501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A113230.P1217446571781788501

/-! ## A113230.P15137747586339973719

`A262188(A048307(n)%A054750(n+1))`
-/

namespace A113230.P15137747586339973719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 (Int.tmod (A048307 n) (A054750 (n + 1))).toNat

end

end A113230.P15137747586339973719

/-! ## A113230.P16666109374904791451

`(n-1)%A210606(n+4)+1`
-/

namespace A113230.P16666109374904791451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (A210606 (n + 4)) + 1

end

end A113230.P16666109374904791451

/-!
# A113231: Ascending descending base exponent transform of triangular numbers (A000217).

The programs for A113231, the canonical program `A113231.P2505159733393461039` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113231 has offset 1).

The definition of A113231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113231.P2505159733393461039

`∑{#}[n, A000217(#+1)^A000217(n+1-#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113231

/-- `∑{#}[n, A000217(#+1)^A000217(n+1-#)]` -/
def P2505159733393461039.Spec : Prop :=
  ∀ n, P2505159733393461039.a n = (A113231 (n + 1) : ℚ)

end A113231

/-!
# A113232: A109812(A109812(n)).

The programs for A113232, there is no canonical definition to state claims against.
-/

/-! ## A113232.P13563069702408781708

`A109812(A109812(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113232.P13563069702408781708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (A109812 (n + 1)).toNat

end

end A113232.P13563069702408781708

/-! ## A113232.P15607241070055454905

`or(A000007(n), A109812(A109812(ϕ²-(ϕ-n))))`
-/

namespace A113232.P15607241070055454905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A109812 (A109812 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat)

end

end A113232.P15607241070055454905

/-! ## A113232.P1758163393966317610

`A352794(A305371(2*(n+1))/2)+A305371(2*(n+1))/2`
-/

namespace A113232.P1758163393966317610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352794 (SequenceMachineLib.roundAway ((A305371 (2 * (n + 1)) : ℚ) / 2)).toNat : ℚ) + (A305371 (2 * (n + 1)) : ℚ) / 2

end

end A113232.P1758163393966317610

/-! ## A113232.P15746473323884519852

`A352794(A352794(n+1)+1+n)+A352794(n+1)+1+n`
-/

namespace A113232.P15746473323884519852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352794 (A352794 (n + 1) + 1 + (n : ℤ)).toNat + (A352794 (n + 1) + 1 + (n : ℤ))

end

end A113232.P15746473323884519852

/-! ## A113232.P10165233893940961138

`A305371(A305371(2*(n+1)))/2`
-/

namespace A113232.P10165233893940961138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305371 (A305371 (2 * (n + 1))).toNat : ℚ) / 2

end

end A113232.P10165233893940961138

/-! ## A113232.P1870061987146383420

`floor(A305369(A305369(2*(n+1)))/2)`
-/

namespace A113232.P1870061987146383420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305369 (A305369 (2 * (n + 1))).toNat : ℚ) / 2⌋

end

end A113232.P1870061987146383420

/-! ## A113232.P558325368868778341

`A004526(A305369(A305369(2*(n+1))))`
-/

namespace A113232.P558325368868778341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305369 (A305369 (2 * (n + 1))).toNat).toNat

end

end A113232.P558325368868778341

/-! ## A113232.P1142304816025520559

`A004525(A305371(A305371(2*(n+1))))`
-/

namespace A113232.P1142304816025520559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A305371 (A305371 (2 * (n + 1))).toNat).toNat

end

end A113232.P1142304816025520559

/-! ## A113232.P15150163328214794968

`A004524(A305371(A305371(2*(n+1)))+1)`
-/

namespace A113232.P15150163328214794968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A305371 (A305371 (2 * (n + 1))).toNat + 1).toNat

end

end A113232.P15150163328214794968

/-!
# A113233: Inverse permutation to A109812.

The programs for A113233, there is no canonical definition to state claims against.
-/

/-! ## A113233.P10471210249483924965

`A113234(A109812(1+n))`
-/

namespace A113233.P10471210249483924965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (A109812 (1 + n)).toNat

end

end A113233.P10471210249483924965

/-! ## A113233.P4660822498545445630

`A113234(A305371(2*(n+1))/2)`
-/

namespace A113233.P4660822498545445630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (SequenceMachineLib.roundAway ((A305371 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A113233.P4660822498545445630

/-! ## A113233.P10112710332254538623

`A113234(A352794(n+1)+1+n)`
-/

namespace A113233.P10112710332254538623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (A352794 (n + 1) + 1 + (n : ℤ)).toNat

end

end A113233.P10112710332254538623

/-! ## A113233.P8277083886336002898

`A113234(floor(A305369(2*(n+1))/2))`
-/

namespace A113233.P8277083886336002898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 ⌊(A305369 (2 * (n + 1)) : ℚ) / 2⌋.toNat

end

end A113233.P8277083886336002898

/-! ## A113233.P12347231380018803559

`A113234(and(A305369(2*(n+1)), 1-6/2)/2)`
-/

namespace A113233.P12347231380018803559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (SequenceMachineLib.roundAway ((Int.land (A305369 (2 * (n + 1))) (SequenceMachineLib.roundAway (1 - (6 : ℚ) / 2)) : ℚ) / 2)).toNat

end

end A113233.P12347231380018803559

/-! ## A113233.P5165664259512323400

`A113234(and(A280412(2*n+1), A305369(2*(n+1)))/2)`
-/

namespace A113233.P5165664259512323400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (SequenceMachineLib.roundAway ((Int.land (A280412 (2 * n + 1)) (A305369 (2 * (n + 1))) : ℚ) / 2)).toNat

end

end A113233.P5165664259512323400

/-! ## A113233.P10068576414785599481

`A113234(and(A286772(2*n+1), A305369(2*(n+1)))/2)`
-/

namespace A113233.P10068576414785599481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (SequenceMachineLib.roundAway ((Int.land (A286772 (2 * n + 1)) (A305369 (2 * (n + 1))) : ℚ) / 2)).toNat

end

end A113233.P10068576414785599481

/-!
# A113234: A113233(A113233(n)).

The programs for A113234, there is no canonical definition to state claims against.
-/

/-! ## A113234.P17494601757829811782

`A113233(A113233(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113234.P17494601757829811782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A113233 (n + 1)).toNat

end

end A113234.P17494601757829811782

/-!
# A113235: Number of partitions of {1,..,n} into any number of lists of size not equal to 2, where a list means an ordered subset, cf. A000262.

The programs for A113235, there is no canonical definition to state claims against.
-/

/-! ## A113235.P13753932713511914894

`A351823(∑[ceil(n/2)])`
-/

namespace A113235.P13753932713511914894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113235.P13753932713511914894

/-! ## A113235.P5874309312662555754

`gcd(A185284(n), A351823(A076921(n+1)))`
-/

namespace A113235.P5874309312662555754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A351823 (A076921 (n + 1)).toNat)

end

end A113235.P5874309312662555754

/-! ## A113235.P6729937962996478120

`or(A000007(n), A351823(A076921(n+1)))`
-/

namespace A113235.P6729937962996478120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A351823 (A076921 (n + 1)).toNat)

end

end A113235.P6729937962996478120

/-! ## A113235.P1820730656196360779

`or(A008679(n), A351823(A076921(n+1)))`
-/

namespace A113235.P1820730656196360779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008679 n) (A351823 (A076921 (n + 1)).toNat)

end

end A113235.P1820730656196360779

/-! ## A113235.P7383182395890447123

`or(A011672(n), A351823(A076921(n+1)))`
-/

namespace A113235.P7383182395890447123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011672 n) (A351823 (A076921 (n + 1)).toNat)

end

end A113235.P7383182395890447123

/-!
# A113236: Number of partitions of {1,..,n} into any number of lists of size not equal to 3, where a list means an ordered subset, cf. A000262.

The programs for A113236, there is no canonical definition to state claims against.
-/

/-! ## A113236.P4184210453337816141

`A004442(n*A126737(n+1))`
-/

namespace A113236.P4184210453337816141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n : ℤ) * A126737 (n + 1)).toNat

end

end A113236.P4184210453337816141

/-! ## A113236.P10179862220541641834

`A109613(n*A126737(n+1))`
-/

namespace A113236.P10179862220541641834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ((n : ℤ) * A126737 (n + 1)).toNat

end

end A113236.P10179862220541641834

/-! ## A113236.P344303516813336985

`A118402(n*A126737(n+1))`
-/

namespace A113236.P344303516813336985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118402 ((n : ℤ) * A126737 (n + 1)).toNat

end

end A113236.P344303516813336985

/-!
# A113237: E.g.f.: exp(x*(1 - x^3 + x^4)/(1-x)).

The programs for A113237, there is no canonical definition to state claims against.
-/

/-! ## A113237.P9003224427681498346

`A000265(A193931(n)-A052762(n))`
-/

namespace A113237.P9003224427681498346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A193931 n - A052762 n).toNat

end

end A113237.P9003224427681498346

/-! ## A113237.P13746980487461444700

`A193931(n)-A004442(A190875(n))`
-/

namespace A113237.P13746980487461444700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193931 n - A004442 (A190875 n).toNat

end

end A113237.P13746980487461444700

/-! ## A113237.P12084734494757256569

`A193931(n)-A004442(A205800(n))`
-/

namespace A113237.P12084734494757256569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193931 n - A004442 (A205800 n).toNat

end

end A113237.P12084734494757256569

/-!
# A113238: Differences of nonzero tribonacci numbers.

The programs for A113238, there is no canonical definition to state claims against.
-/

/-! ## A113238.P9129032207576770099

`record[A096858(n+1)%A121871(n+1)]`
-/

namespace A113238.P9129032207576770099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096858 (n + 1)) (A121871 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113238.P9129032207576770099

/-! ## A113238.P4866662428612958251

`lt[A096735(n+1), A097369(3*n+4)]`
-/

namespace A113238.P4866662428612958251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097369 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113238.P4866662428612958251

/-! ## A113238.P12438634420671471815

`eq[A020639(A276777(n)), A214081(n)]`
-/

namespace A113238.P12438634420671471815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113238.P12438634420671471815

/-! ## A113238.P6348861400263726764

`eq[A020639(A276777(n)), A044950(n+1)]`
-/

namespace A113238.P6348861400263726764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113238.P6348861400263726764

/-! ## A113238.P8097279507181096620

`lt[A115055(n+1), A072827(A334081(n+3))]`
-/

namespace A113238.P8097279507181096620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072827 (A334081 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113238.P8097279507181096620

/-!
# A113239: Prime differences of tribonacci numbers.

The programs for A113239, there is no canonical definition to state claims against.
-/

/-! ## A113239.P6738377622836702359

`p?[A113238(n+1)]`
-/

namespace A113239.P6738377622836702359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113239.P6738377622836702359

/-! ## A113239.P1166670403552451976

`p?[record[A113238(A052938(n))]]`
-/

namespace A113239.P1166670403552451976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113238 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113239.P1166670403552451976

/-! ## A113239.P1594630908102252704

`p?[record[A113238(A112382(n))]]`
-/

namespace A113239.P1594630908102252704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113238 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113239.P1594630908102252704

/-! ## A113239.P16696273624690939969

`p?[record[A113238(A117910(n))]]`
-/

namespace A113239.P16696273624690939969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113238 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113239.P16696273624690939969

/-! ## A113239.P3401312857799208064

`record[A006530(A113238(n+3))]`
-/

namespace A113239.P3401312857799208064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A113238 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113239.P3401312857799208064

/-!
# A113240: Expansion of (1/(1-x))*sum(k>=2,x^k/(1-2x^k)).

The programs for A113240, there is no canonical definition to state claims against.
-/

/-! ## A113240.P2543765332915283621

`∑[A247146(n+2)]`
-/

namespace A113240.P2543765332915283621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113240.P2543765332915283621

/-! ## A113240.P670491430599261898

`∑[A328337(n+2)+1]`
-/

namespace A113240.P670491430599261898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328337 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113240.P670491430599261898

/-! ## A113240.P13025856916328576956

`∑[∑{d}[n+2, A178472(#)]]`
-/

namespace A113240.P13025856916328576956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A178472 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113240.P13025856916328576956

/-! ## A113240.P16367929630069716104

`∑[A034729(n+2)%(2^n)]+1`
-/

namespace A113240.P16367929630069716104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034729 (n + 2)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113240.P16367929630069716104

/-! ## A113240.P14494837046193027359

`A268235(n+2)-A000225(n+2)`
-/

namespace A113240.P14494837046193027359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268235 (n + 2) - A000225 (n + 2)

end

end A113240.P14494837046193027359

/-!
# A113241: a(n) = Sum_{k=1..n} (tau(2*k) - 1).

The programs for A113241, the canonical program `A113241.P15415862963170091486` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113241 has offset 0).

The definition of A113241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113241.P15052693678764681829

`∑[∑{d}[2*n, floor(atan(#))]]`
-/

namespace A113241.P15052693678764681829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P15052693678764681829

namespace A113241

/-- `∑[∑{d}[2*n, floor(atan(#))]]` -/
def P15052693678764681829.Spec : Prop :=
  ∀ n, P15052693678764681829.a n = A113241 n

end A113241

/-! ## A113241.P15415862963170091486

`∑[∏{e}[2*n, #+1]-1]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113241

/-- `∑[∏{e}[2*n, #+1]-1]` -/
def P15415862963170091486.Spec : Prop :=
  ∀ n, P15415862963170091486.a n = A113241 n

theorem P15415862963170091486.correct : P15415862963170091486.Spec := by
  intro n
  simp only [A113241]

end A113241

/-! ## A113241.P6623899142165866532

`∑[∑{d}[2*n, (2*n+1)%#]]`
-/

namespace A113241.P6623899142165866532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (2 * n + 1) % d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P6623899142165866532

namespace A113241

/-- `∑[∑{d}[2*n, (2*n+1)%#]]` -/
def P6623899142165866532.Spec : Prop :=
  ∀ n, (P6623899142165866532.a n : ℤ) = A113241 n

end A113241

/-! ## A113241.P15288938206985699831

`∑[abs(∏{e}[Δ[n²]-1, #+1]-1)]`
-/

namespace A113241.P15288938206985699831
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P15288938206985699831

namespace A113241

/-- `∑[abs(∏{e}[Δ[n²]-1, #+1]-1)]` -/
def P15288938206985699831.Spec : Prop :=
  ∀ n, P15288938206985699831.a n = A113241 n

end A113241

/-! ## A113241.P9326655932465484463

`∑[∑{d}[n, (2%A020639(#))!]]`
-/

namespace A113241.P9326655932465484463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.factorial (Int.tmod 2 (A020639 d)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P9326655932465484463

namespace A113241

/-- `∑[∑{d}[n, (2%A020639(#))!]]` -/
def P9326655932465484463.Spec : Prop :=
  ∀ n, (P9326655932465484463.a n : ℤ) = A113241 n

end A113241

/-! ## A113241.P6309712922646661774

`A000005(2*n)+a(n-1)-1` with `a(0)=0`
-/

namespace A113241.P6309712922646661774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (2 * n) + (a (n - 1) - 1)

end

end A113241.P6309712922646661774

namespace A113241

/-- `A000005(2*n)+a(n-1)-1` -/
def P6309712922646661774.Spec : Prop :=
  ∀ n, P6309712922646661774.a n = A113241 n

end A113241

/-! ## A113241.P3205419636467118262

`∑[A000005(comp[2*(n+1)]+1)-1]`
-/

namespace A113241.P3205419636467118262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P3205419636467118262

namespace A113241

/-- `∑[A000005(comp[2*(n+1)]+1)-1]` -/
def P3205419636467118262.Spec : Prop :=
  ∀ n, P3205419636467118262.a n = A113241 n

end A113241

/-! ## A113241.P8685615714857790225

`A000005(lcm(2, 2*n))-(1-a(n-1))` with `a(0)=0`
-/

namespace A113241.P8685615714857790225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (Nat.lcm 2 (2 * n)) - (1 - a (n - 1))

end

end A113241.P8685615714857790225

namespace A113241

/-- `A000005(lcm(2, 2*n))-(1-a(n-1))` -/
def P8685615714857790225.Spec : Prop :=
  ∀ n, P8685615714857790225.a n = A113241 n

end A113241

/-! ## A113241.P7185979902243510529

`A248517(n)+A006218(n)`
-/

namespace A113241.P7185979902243510529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n + A006218 n

end

end A113241.P7185979902243510529

namespace A113241

/-- `A248517(n)+A006218(n)` -/
def P7185979902243510529.Spec : Prop :=
  ∀ n, P7185979902243510529.a n = A113241 n

end A113241

/-! ## A113241.P18271249021722213788

`A006218(n)+A060831(n)-n`
-/

namespace A113241.P18271249021722213788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + (A060831 n - (n : ℤ))

end

end A113241.P18271249021722213788

namespace A113241

/-- `A006218(n)+A060831(n)-n` -/
def P18271249021722213788.Spec : Prop :=
  ∀ n, P18271249021722213788.a n = A113241 n

end A113241

/-! ## A113241.P9833660562784998662

`∑[∑{d}[n, A001221(2*A020639(#))]]`
-/

namespace A113241.P9833660562784998662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001221 (2 * A020639 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P9833660562784998662

namespace A113241

/-- `∑[∑{d}[n, A001221(2*A020639(#))]]` -/
def P9833660562784998662.Spec : Prop :=
  ∀ n, P9833660562784998662.a n = A113241 n

end A113241

/-! ## A113241.P8400275052272363126

`∑[A066660(n+1)]-A066660(n+1)`
-/

namespace A113241.P8400275052272363126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066660 (n + 1)

end

end A113241.P8400275052272363126

namespace A113241

/-- `∑[A066660(n+1)]-A066660(n+1)` -/
def P8400275052272363126.Spec : Prop :=
  ∀ n, P8400275052272363126.a n = A113241 n

end A113241

/-! ## A113241.P16024196226968609434

`∑[A320111(A008574(n))-1]`
-/

namespace A113241.P16024196226968609434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A008574 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P16024196226968609434

namespace A113241

/-- `∑[A320111(A008574(n))-1]` -/
def P16024196226968609434.Spec : Prop :=
  ∀ n, P16024196226968609434.a n = A113241 n

end A113241

/-! ## A113241.P13978038788088184169

`∑[A032741(2*n)]`
-/

namespace A113241.P13978038788088184169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P13978038788088184169

namespace A113241

/-- `∑[A032741(2*n)]` -/
def P13978038788088184169.Spec : Prop :=
  ∀ n, P13978038788088184169.a n = A113241 n

end A113241

/-! ## A113241.P12368879232660380500

`∑[A319410(2*n)/2]`
-/

namespace A113241.P12368879232660380500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319410 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113241.P12368879232660380500

namespace A113241

/-- `∑[A319410(2*n)/2]` -/
def P12368879232660380500.Spec : Prop :=
  ∀ n, P12368879232660380500.a n = (A113241 n : ℚ)

end A113241

/-! ## A113241.P11383344972978210731

`A362059(2*n+1)+A248517(n)`
-/

namespace A113241.P11383344972978210731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (2 * n + 1) + A248517 n

end

end A113241.P11383344972978210731

namespace A113241

/-- `A362059(2*n+1)+A248517(n)` -/
def P11383344972978210731.Spec : Prop :=
  ∀ n, P11383344972978210731.a n = A113241 n

end A113241

/-! ## A113241.P14251337391769495140

`∑[A076984(2*(n+1))]-A076984(2*(n+1))`
-/

namespace A113241.P14251337391769495140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A076984 (2 * (n + 1))

end

end A113241.P14251337391769495140

namespace A113241

/-- `∑[A076984(2*(n+1))]-A076984(2*(n+1))` -/
def P14251337391769495140.Spec : Prop :=
  ∀ n, P14251337391769495140.a n = A113241 n

end A113241

/-! ## A113241.P17564123106674869248

`∑[A325765(2*n+1)]-A325765(2*n+1)`
-/

namespace A113241.P17564123106674869248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325765 (2 * n + 1)

end

end A113241.P17564123106674869248

namespace A113241

/-- `∑[A325765(2*n+1)]-A325765(2*n+1)` -/
def P17564123106674869248.Spec : Prop :=
  ∀ n, P17564123106674869248.a n = A113241 n

end A113241

/-! ## A113241.P3100709293190706453

`∑{#}[n-1, floor(n/(#+1))]+∑[∑{d}[n, (#%#²)%2]]`
-/

namespace A113241.P3100709293190706453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d % d ^ 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊(n : ℚ) / (k + 1 : ℚ)⌋ + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A113241.P3100709293190706453

namespace A113241

/-- `∑{#}[n-1, floor(n/(#+1))]+∑[∑{d}[n, (#%#²)%2]]` -/
def P3100709293190706453.Spec : Prop :=
  ∀ n, P3100709293190706453.a n = A113241 n

end A113241

/-!
# A113242: Numbers of the form 3^i +/ - 3^j.

The programs for A113242, there is no canonical definition to state claims against.
-/

/-! ## A113242.P16942776513532070220

`eq[1, (1-A005812(n))²]`
-/

namespace A113242.P16942776513532070220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A005812 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113242.P16942776513532070220

/-! ## A113242.P1729707927325144311

`record[xor(n+1, 2-A005812(n+1))]`
-/

namespace A113242.P1729707927325144311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (2 - A005812 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113242.P1729707927325144311

/-! ## A113242.P4456600953754405839

`eq[0, A024302(A005812(n))]`
-/

namespace A113242.P4456600953754405839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024302 (A005812 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113242.P4456600953754405839

/-! ## A113242.P124388331221985069

`eq[A005812(n), A275365(n)]`
-/

namespace A113242.P124388331221985069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113242.P124388331221985069

/-! ## A113242.P10325904113004363110

`eq[1, A099917(2*A005812(n))]`
-/

namespace A113242.P10325904113004363110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099917 (2 * A005812 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113242.P10325904113004363110

/-! ## A113242.P4666993979006813182

`eq[1, A308364(abs(1-A308364(n)))]`
-/

namespace A113242.P4666993979006813182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 |1 - A308364 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113242.P4666993979006813182

/-! ## A113242.P11242112817374809062

`record[n*A030341(A005812(2*n))]`
-/

namespace A113242.P11242112817374809062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030341 (A005812 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113242.P11242112817374809062

/-! ## A113242.P7985822217444422012

`lt[A005812(n), A333766(A005812(n)+2)]`
-/

namespace A113242.P7985822217444422012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A005812 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113242.P7985822217444422012

/-! ## A113242.P1907703549005791475

`eq[A005812(A005812(2*n)), A005812(n)]`
-/

namespace A113242.P1907703549005791475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A005812 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113242.P1907703549005791475

/-! ## A113242.P9859938004702398473

`eq[A134024(n)+A065363(n), A134024(n)²]`
-/

namespace A113242.P9859938004702398473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n + A065363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113242.P9859938004702398473

/-!
# A113243: Differences of nonzero tetranacci numbers.

The programs for A113243, there is no canonical definition to state claims against.
-/

/-! ## A113243.P18319027191888854166

`record[A114540(A331857(n)+A331853(n))]`
-/

namespace A113243.P18319027191888854166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114540 (A331857 n + A331853 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113243.P18319027191888854166

/-! ## A113243.P6940284603711468992

`eq[A089311(A004777(n+1)), A185238(n)]`
-/

namespace A113243.P6940284603711468992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A004777 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113243.P6940284603711468992

/-!
# A113244: Prime differences of tetranacci numbers.

The programs for A113244, there is no canonical definition to state claims against.
-/

/-! ## A113244.P9351591698238352884

`p?[A113243(n+1)]`
-/

namespace A113244.P9351591698238352884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113244.P9351591698238352884

/-! ## A113244.P8127942464284352398

`p?[record[A113243(A052938(n))]]`
-/

namespace A113244.P8127942464284352398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113243 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113244.P8127942464284352398

/-! ## A113244.P16117897561743626711

`p?[record[A113243(A324347(n))]]`
-/

namespace A113244.P16117897561743626711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113243 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113244.P16117897561743626711

/-! ## A113244.P3594122205386890833

`p?[record[A113243(A328396(n))]]`
-/

namespace A113244.P3594122205386890833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113243 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113244.P3594122205386890833

/-! ## A113244.P4628432733785898270

`p?[record[A113243(A328399(n))]]`
-/

namespace A113244.P4628432733785898270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113243 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113244.P4628432733785898270

/-!
# A113245: a(n) = floor(binomial(2n,2k)/binomial(n,k)).

The programs for A113245, the canonical program `A113245.P15327802101265257227` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113245 has offset 0).

The definition of A113245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113245.P15327802101265257227

`floor(A086645(n)/A007318(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113245

/-- `floor(A086645(n)/A007318(n))` -/
def P15327802101265257227.Spec : Prop :=
  ∀ n, P15327802101265257227.a n = A113245 n

theorem P15327802101265257227.correct : P15327802101265257227.Spec := by
  intro n
  simp only [A113245]

end A113245

/-! ## A113245.P4783739786395508498

`floor(A123162(n)/A135225(n))`
-/

namespace A113245.P4783739786395508498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123162 n : ℚ) / (A135225 n : ℚ)⌋

end

end A113245.P4783739786395508498

namespace A113245

/-- `floor(A123162(n)/A135225(n))` -/
def P4783739786395508498.Spec : Prop :=
  ∀ n, P4783739786395508498.a n = A113245 n

end A113245

/-! ## A113245.P8618071698110434571

`floor(abs(A086645(n)/A108086(n)))`
-/

namespace A113245.P8618071698110434571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A086645 n : ℚ) / (A108086 n : ℚ)|⌋

end

end A113245.P8618071698110434571

namespace A113245

/-- `floor(abs(A086645(n)/A108086(n)))` -/
def P8618071698110434571.Spec : Prop :=
  ∀ n, P8618071698110434571.a n = A113245 n

end A113245

/-! ## A113245.P504614999292435041

`floor(A086645(n)/sqrt(A008459(n)))`
-/

namespace A113245.P504614999292435041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086645 n : ℝ) / Real.sqrt (A008459 n : ℝ)⌋

end

end A113245.P504614999292435041

namespace A113245

/-- `floor(A086645(n)/sqrt(A008459(n)))` -/
def P504614999292435041.Spec : Prop :=
  ∀ n, P504614999292435041.a n = A113245 n

end A113245

/-! ## A113245.P17956964034069753999

`floor(A086645(n)/Δ[A102363(n)])`
-/

namespace A113245.P17956964034069753999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086645 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A113245.P17956964034069753999

namespace A113245

/-- `floor(A086645(n)/Δ[A102363(n)])` -/
def P17956964034069753999.Spec : Prop :=
  ∀ n, P17956964034069753999.a n = A113245 n

end A113245

/-! ## A113245.P7438182642058432808

`floor(A155495(n)/A008459(n))`
-/

namespace A113245.P7438182642058432808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155495 n : ℚ) / (A008459 n : ℚ)⌋

end

end A113245.P7438182642058432808

namespace A113245

/-- `floor(A155495(n)/A008459(n))` -/
def P7438182642058432808.Spec : Prop :=
  ∀ n, P7438182642058432808.a n = A113245 n

end A113245

/-! ## A113245.P16557445049554100085

`floor(A155495(n)/A007318(n)²)`
-/

namespace A113245.P16557445049554100085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155495 n : ℚ) / (A007318 n ^ 2 : ℚ)⌋

end

end A113245.P16557445049554100085

namespace A113245

/-- `floor(A155495(n)/A007318(n)²)` -/
def P16557445049554100085.Spec : Prop :=
  ∀ n, P16557445049554100085.a n = A113245 n

end A113245

/-! ## A113245.P2745257996760133366

`floor(A155495(n)/A130595(n)²)`
-/

namespace A113245.P2745257996760133366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155495 n : ℚ) / (A130595 n ^ 2 : ℚ)⌋

end

end A113245.P2745257996760133366

namespace A113245

/-- `floor(A155495(n)/A130595(n)²)` -/
def P2745257996760133366.Spec : Prop :=
  ∀ n, P2745257996760133366.a n = A113245 n

end A113245

/-! ## A113245.P4741167861195076514

`floor(A086645(n)²/A155495(n))`
-/

namespace A113245.P4741167861195076514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086645 n ^ 2 : ℚ) / (A155495 n : ℚ)⌋

end

end A113245.P4741167861195076514

namespace A113245

/-- `floor(A086645(n)²/A155495(n))` -/
def P4741167861195076514.Spec : Prop :=
  ∀ n, P4741167861195076514.a n = A113245 n

end A113245

/-! ## A113245.P1149874163977330250

`floor(A085881(n)/A059366(n))`
-/

namespace A113245.P1149874163977330250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085881 n : ℚ) / (A059366 n : ℚ)⌋

end

end A113245.P1149874163977330250

namespace A113245

/-- `floor(A085881(n)/A059366(n))` -/
def P1149874163977330250.Spec : Prop :=
  ∀ n, P1149874163977330250.a n = A113245 n

end A113245

/-!
# A113246: a(2^n+a) = a(2^(n-1)+a) [if 0 <= a < 2^(n-1)], 3^n-a(2^n-a) [if 2^(n-1) <= a < 2^n].

The programs for A113246, there is no canonical definition to state claims against.
-/

/-! ## A113246.P1991976345648276583

`A055247(A062050(n+1))`
-/

namespace A113246.P1991976345648276583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (A062050 (n + 1)).toNat

end

end A113246.P1991976345648276583

/-! ## A113246.P7871378572754001943

`A055247(A053645(n+1)+1)`
-/

namespace A113246.P7871378572754001943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (A053645 (n + 1) + 1).toNat

end

end A113246.P7871378572754001943

/-! ## A113246.P6947152592411769466

`A055247(1-A092323(n+1)+n)`
-/

namespace A113246.P6947152592411769466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (1 - A092323 (n + 1) + (n : ℤ)).toNat

end

end A113246.P6947152592411769466

/-! ## A113246.P13423321042966942657

`A005823(A062050(n+1))+∑[A105812(n)]`
-/

namespace A113246.P13423321042966942657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A062050 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113246.P13423321042966942657

/-! ## A113246.P7439863080162639216

`A005823(A062050(n+1))+char[A004273(n)]`
-/

namespace A113246.P7439863080162639216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A062050 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113246.P7439863080162639216

/-! ## A113246.P3839095134579248333

`A005823(A062050(n+1))+A000035(A028310(n))`
-/

namespace A113246.P3839095134579248333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A062050 (n + 1)).toNat + A000035 (A028310 n).toNat

end

end A113246.P3839095134579248333

/-! ## A113246.P7534099441630966070

`A005823(A062050(n+1))+A000035(A062050(n+1)²)`
-/

namespace A113246.P7534099441630966070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A062050 (n + 1)).toNat + A000035 (A062050 (n + 1) ^ 2).toNat

end

end A113246.P7534099441630966070

/-!
# A113247: Number of permutations pi in S_n such that maj pi and maj pi^(-1) have the same parity where maj is the major index. Equivalently, the number of pi such that maj pi and inv pi have the same parity where inv is the inversion number.

The programs for A113247, there is no canonical definition to state claims against.
-/

/-! ## A113247.P16264537234764494866

`(2^floor(n/2)*floor(n/2)!+n!)/2`
-/

namespace A113247.P16264537234764494866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ) + (Nat.factorial n : ℚ)) / 2

end

end A113247.P16264537234764494866

/-! ## A113247.P8388695926138645458

`(A037223(n)+A000142(n))/2`
-/

namespace A113247.P8388695926138645458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037223 n + A000142 n : ℚ) / 2

end

end A113247.P8388695926138645458

/-! ## A113247.P5736314961454898867

`2*A300931(n)-A000085(n)`
-/

namespace A113247.P5736314961454898867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300931 n - A000085 n

end

end A113247.P5736314961454898867

/-! ## A113247.P2326748971407835820

`A262438(4*(n+2))*A262480(n)`
-/

namespace A113247.P2326748971407835820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262438 (4 * (n + 2)) * A262480 n

end

end A113247.P2326748971407835820

/-! ## A113247.P351066025042761017

`A020639(A024945(n+1))*A262480(n)`
-/

namespace A113247.P351066025042761017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024945 (n + 1)).toNat * A262480 n

end

end A113247.P351066025042761017

/-!
# A113248: Number of permutations pi in S_n such that maj pi and maj pi^(-1) have opposite parity where maj is the major index. Equivalently, the number of pi such that maj pi and inv pi have opposite parity where inv is the inversion number.

The programs for A113248, there is no canonical definition to state claims against.
-/

/-! ## A113248.P8750938887150939954

`(n+1)!-A113247(n+1)`
-/

namespace A113248.P8750938887150939954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A113247 (n + 1)

end

end A113248.P8750938887150939954

/-! ## A113248.P2133868551143093433

`A000142(n+1)-A113247(n+1)`
-/

namespace A113248.P2133868551143093433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A113247 (n + 1)

end

end A113248.P2133868551143093433

/-! ## A113248.P528749245730231588

`A000027(n+1)!%A113247(n+1)`
-/

namespace A113248.P528749245730231588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A000027 (n + 1)).toNat : ℤ) (A113247 (n + 1))

end

end A113248.P528749245730231588

/-! ## A113248.P4344625716158681834

`record[A166350(n+1)]-A113247(n+1)`
-/

namespace A113248.P4344625716158681834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A113247 (n + 1)

end

end A113248.P4344625716158681834

/-! ## A113248.P1766464299523463966

`(A000142(n+1)-A037223(n+1))/2`
-/

namespace A113248.P1766464299523463966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) - A037223 (n + 1) : ℚ) / 2

end

end A113248.P1766464299523463966

/-!
# A113249: Corresponds to m = 3 in a family of 4th-order linear recurrence sequences given by a(m,n) = m^4*a(n-4) + (2*m)^2*a(n-3) - 4*a(n-1), a(m,0) = -1, a(m,1) = 4, a(m,2) = -13 + 6*(m-1) + 3*(m-1)^2, a(m,3) = (-8+m^2)^2.

The programs for A113249, the canonical program `A113249.P1142046031411000295` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113249 has offset 0).

The definition of A113249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113249.P7978071900492319869

`ogf((-1+27x^2+81x^3)/(1+4x-36x^3-81x^4))`
-/

namespace A113249.P7978071900492319869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 0, 27, 81] [1, 4, 0, -36, -81] n

end

end A113249.P7978071900492319869

namespace A113249

/-- `ogf((-1+27x^2+81x^3)/(1+4x-36x^3-81x^4))` -/
def P7978071900492319869.Spec : Prop :=
  ∀ n, P7978071900492319869.a n = A113249 n

end A113249

/-! ## A113249.P1142046031411000295

`81*a(n-4)+36*a(n-3)-4*a(n-1)` with `a(0)=-1, a(1)=4, a(2)=11, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113249

/-- `81*a(n-4)+36*a(n-3)-4*a(n-1)` -/
def P1142046031411000295.Spec : Prop :=
  ∀ n, P1142046031411000295.a n = A113249 n

theorem P1142046031411000295.correct : P1142046031411000295.Spec := by
  intro n
  simp only [A113249]

end A113249

/-!
# A113250: Expansion of g.f. -(1 - 48*x^2 - 256*x^3) / ((1 - 4*x)*(1 + 4*x)*(1 + 4*x + 16*x^2)).

The programs for A113250, the canonical program `A113250.P12128648228767955689` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113250 has offset 0).

The definition of A113250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113250.P12128648228767955689

`(A079757(n+4)+1)*4^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113250

/-- `(A079757(n+4)+1)*4^n` -/
def P12128648228767955689.Spec : Prop :=
  ∀ n, P12128648228767955689.a n = A113250 n

theorem P12128648228767955689.correct : P12128648228767955689.Spec := by
  intro n
  simp only [A113250]

end A113250

/-! ## A113250.P4220380575015977454

`(A021337(n)-(-1)^n)*4^n`
-/

namespace A113250.P4220380575015977454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A021337 n - (-1) ^ n) * (4 ^ n : ℤ)

end

end A113250.P4220380575015977454

namespace A113250

/-- `(A021337(n)-(-1)^n)*4^n` -/
def P4220380575015977454.Spec : Prop :=
  ∀ n, P4220380575015977454.a n = A113250 n

end A113250

/-! ## A113250.P9325225966262262852

`(A178142(n+1)-1)*A000302(n)`
-/

namespace A113250.P9325225966262262852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178142 (n + 1) - 1) * A000302 n

end

end A113250.P9325225966262262852

namespace A113250

/-- `(A178142(n+1)-1)*A000302(n)` -/
def P9325225966262262852.Spec : Prop :=
  ∀ n, P9325225966262262852.a n = A113250 n

end A113250

/-! ## A113250.P12840571423597316816

`A099837(A178941(n+3))*A138340(n)`
-/

namespace A113250.P12840571423597316816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A178941 (n + 3)).toNat * A138340 n

end

end A113250.P12840571423597316816

namespace A113250

/-- `A099837(A178941(n+3))*A138340(n)` -/
def P12840571423597316816.Spec : Prop :=
  ∀ n, P12840571423597316816.a n = A113250 n

end A113250

/-!
# A113257: Ascending descending base exponent transform of squares (A000290).

The programs for A113257, the canonical program `A113257.P4134715909619422464` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113257 has offset 1).

The definition of A113257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113257.P4134715909619422464

`∑{#}[n, A000290(#+1)^A000290(n+1-#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113257

/-- `∑{#}[n, A000290(#+1)^A000290(n+1-#)]` -/
def P4134715909619422464.Spec : Prop :=
  ∀ n, P4134715909619422464.a n = (A113257 (n + 1) : ℚ)

end A113257

/-!
# A113258: Ascending descending base exponent transform of factorials.

The programs for A113258, the canonical program `A113258.P10479159637434042202` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113258 has offset 1).

The definition of A113258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113258.P10479159637434042202

`∑{#}[n, A000142(#+1)^A000142(n+1-#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113258

/-- `∑{#}[n, A000142(#+1)^A000142(n+1-#)]` -/
def P10479159637434042202.Spec : Prop :=
  ∀ n, P10479159637434042202.a n = (A113258 (n + 1) : ℚ)

end A113258

/-!
# A113259: Expansion of psi(x)^5 / psi(x^5) - 25*x^2 * psi(x) * psi(x^5)^3 in powers of x where psi() is a Ramanujan theta function.

The programs for A113259, there is no canonical definition to state claims against.
-/

/-! ## A113259.P3091111820985364426

`A138506(A022998(n))`
-/

namespace A113259.P3091111820985364426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138506 (A022998 n).toNat

end

end A113259.P3091111820985364426

/-! ## A113259.P10436469143305433555

`A109064(2*n)`
-/

namespace A113259.P10436469143305433555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 (2 * n)

end

end A113259.P10436469143305433555

/-! ## A113259.P6177920863579266783

`A138506(2*n)`
-/

namespace A113259.P6177920863579266783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138506 (2 * n)

end

end A113259.P6177920863579266783

/-! ## A113259.P8051670161913477502

`or(char[1], A138506(Δ[n²]-1))`
-/

namespace A113259.P8051670161913477502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A138506 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1).toNat)

end

end A113259.P8051670161913477502

/-! ## A113259.P14393631402228113514

`A138506(record[and(n, n+1)])%(n+2)²`
-/

namespace A113259.P14393631402228113514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) ((n + 2) ^ 2 : ℤ)

end

end A113259.P14393631402228113514

/-! ## A113259.P7585615466629283812

`A109064(n+n)%A061793(n)`
-/

namespace A113259.P7585615466629283812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109064 (n + n)) (A061793 n)

end

end A113259.P7585615466629283812

/-! ## A113259.P5666520064992796053

`A109064(A005843(n))%(n+2)²`
-/

namespace A113259.P5666520064992796053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109064 (A005843 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A113259.P5666520064992796053

/-! ## A113259.P2194739054645406841

`A138506(Δ[n²]-1)%A000040(n+1)²`
-/

namespace A113259.P2194739054645406841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138506 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat) (A000040 (n + 1) ^ 2)

end

end A113259.P2194739054645406841

/-! ## A113259.P6621509481100759766

`A138506(record[and(n, n+1)])/A000045(((-1)^n)²)`
-/

namespace A113259.P6621509481100759766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / (A000045 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A113259.P6621509481100759766

/-! ## A113259.P16548887437073781776

`A205882(2*n)/A324969(2*n+1)`
-/

namespace A113259.P16548887437073781776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205882 (2 * n) : ℚ) / (A324969 (2 * n + 1) : ℚ)

end

end A113259.P16548887437073781776

/-! ## A113259.P8183712060800132181

`A205884(2*n)/A215928(2*n)`
-/

namespace A113259.P8183712060800132181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205884 (2 * n) : ℚ) / (A215928 (2 * n) : ℚ)

end

end A113259.P8183712060800132181

/-!
# A113260: Expansion of (-1 + psi(q)^5/psi(q^5) - 25q^2 psi(q)*psi(q^5)^3)/5 in powers of q where psi(q) is a Ramanujan theta function.

The programs for A113260, the canonical program `A113260.P8698562919777995260` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113260 has offset 1).

The definition of A113260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113260.P8698562919777995260

`2*A109091(n+1)-A109091(A000265(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A113260

/-- `2*A109091(n+1)-A109091(A000265(n+1))` -/
def P8698562919777995260.Spec : Prop :=
  ∀ n, P8698562919777995260.a n = A113260 (n + 1)

theorem P8698562919777995260.correct : P8698562919777995260.Spec := by
  intro n
  simp only [A113260, Nat.add_sub_cancel]

end A113260

/-! ## A113260.P3022779474470568536

`A113259(1+n)/5`
-/

namespace A113260.P3022779474470568536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113259 (1 + n) : ℚ) / 5

end

end A113260.P3022779474470568536

namespace A113260

/-- `A113259(1+n)/5` -/
def P3022779474470568536.Spec : Prop :=
  ∀ n, P3022779474470568536.a n = (A113260 (n + 1) : ℚ)

end A113260

/-! ## A113260.P15378949518156238414

`A138507(A022998(n+1))`
-/

namespace A113260.P15378949518156238414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138507 (A022998 (n + 1)).toNat

end

end A113260.P15378949518156238414

namespace A113260

/-- `A138507(A022998(n+1))` -/
def P15378949518156238414.Spec : Prop :=
  ∀ n, P15378949518156238414.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P12276964910331210699

`A138507(A257088(n+1))`
-/

namespace A113260.P12276964910331210699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138507 (A257088 (n + 1)).toNat

end

end A113260.P12276964910331210699

namespace A113260

/-- `A138507(A257088(n+1))` -/
def P12276964910331210699.Spec : Prop :=
  ∀ n, P12276964910331210699.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P11165101241606160514

`A138507(2*(n+1))`
-/

namespace A113260.P11165101241606160514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138507 (2 * (n + 1))

end

end A113260.P11165101241606160514

namespace A113260

/-- `A138507(2*(n+1))` -/
def P11165101241606160514.Spec : Prop :=
  ∀ n, P11165101241606160514.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P6211330520309042871

`-A109091(2*(n+1))`
-/

namespace A113260.P6211330520309042871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A109091 (2 * (n + 1))

end

end A113260.P6211330520309042871

namespace A113260

/-- `-A109091(2*(n+1))` -/
def P6211330520309042871.Spec : Prop :=
  ∀ n, P6211330520309042871.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P1391910766697244500

`A109064(2*(n+1))/5`
-/

namespace A113260.P1391910766697244500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109064 (2 * (n + 1)) : ℚ) / 5

end

end A113260.P1391910766697244500

namespace A113260

/-- `A109064(2*(n+1))/5` -/
def P1391910766697244500.Spec : Prop :=
  ∀ n, P1391910766697244500.a n = (A113260 (n + 1) : ℚ)

end A113260

/-! ## A113260.P10602415181291433841

`A138506(2*(n+1))/5`
-/

namespace A113260.P10602415181291433841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138506 (2 * (n + 1)) : ℚ) / 5

end

end A113260.P10602415181291433841

namespace A113260

/-- `A138506(2*(n+1))/5` -/
def P10602415181291433841.Spec : Prop :=
  ∀ n, P10602415181291433841.a n = (A113260 (n + 1) : ℚ)

end A113260

/-! ## A113260.P70489821052164285

`(2*n)%2-A109091(2*n+2)`
-/

namespace A113260.P70489821052164285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n % 2 : ℕ) : ℤ) - A109091 (2 * n + 2)

end

end A113260.P70489821052164285

namespace A113260

/-- `(2*n)%2-A109091(2*n+2)` -/
def P70489821052164285.Spec : Prop :=
  ∀ n, P70489821052164285.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P11678684781756895707

`A000007(n+1)-A109091(2*(n+1))`
-/

namespace A113260.P11678684781756895707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A109091 (2 * (n + 1))

end

end A113260.P11678684781756895707

namespace A113260

/-- `A000007(n+1)-A109091(2*(n+1))` -/
def P11678684781756895707.Spec : Prop :=
  ∀ n, P11678684781756895707.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P5423253837078876247

`A000038(n+1)-A109091(2*(n+1))`
-/

namespace A113260.P5423253837078876247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A109091 (2 * (n + 1))

end

end A113260.P5423253837078876247

namespace A113260

/-- `A000038(n+1)-A109091(2*(n+1))` -/
def P5423253837078876247.Spec : Prop :=
  ∀ n, P5423253837078876247.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P10610398858488838080

`A000035(2*n)-A109091(2*n+2)`
-/

namespace A113260.P10610398858488838080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A109091 (2 * n + 2)

end

end A113260.P10610398858488838080

namespace A113260

/-- `A000035(2*n)-A109091(2*n+2)` -/
def P10610398858488838080.Spec : Prop :=
  ∀ n, P10610398858488838080.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P18222466589993577409

`A284152(2*(n+1))-A284150(2*(n+1))`
-/

namespace A113260.P18222466589993577409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284152 (2 * (n + 1)) - A284150 (2 * (n + 1))

end

end A113260.P18222466589993577409

namespace A113260

/-- `A284152(2*(n+1))-A284150(2*(n+1))` -/
def P18222466589993577409.Spec : Prop :=
  ∀ n, P18222466589993577409.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P11729808825063604086

`1-(A109091(2*n+2)+A000034(2*n))`
-/

namespace A113260.P11729808825063604086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A109091 (2 * n + 2) + A000034 (2 * n))

end

end A113260.P11729808825063604086

namespace A113260

/-- `1-(A109091(2*n+2)+A000034(2*n))` -/
def P11729808825063604086.Spec : Prop :=
  ∀ n, P11729808825063604086.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P17330194586549441823

`1-(A109091(2*n+2)+A033999(2*n))`
-/

namespace A113260.P17330194586549441823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A109091 (2 * n + 2) + A033999 (2 * n))

end

end A113260.P17330194586549441823

namespace A113260

/-- `1-(A109091(2*n+2)+A033999(2*n))` -/
def P17330194586549441823.Spec : Prop :=
  ∀ n, P17330194586549441823.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P1548926108190423150

`A033999(2*n+1)*A109091(2*(n+1))`
-/

namespace A113260.P1548926108190423150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A109091 (2 * (n + 1))

end

end A113260.P1548926108190423150

namespace A113260

/-- `A033999(2*n+1)*A109091(2*(n+1))` -/
def P1548926108190423150.Spec : Prop :=
  ∀ n, P1548926108190423150.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P13257180432592455730

`A008683(4*(n+1))-A109091(2*(n+1))`
-/

namespace A113260.P13257180432592455730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A109091 (2 * (n + 1))

end

end A113260.P13257180432592455730

namespace A113260

/-- `A008683(4*(n+1))-A109091(2*(n+1))` -/
def P13257180432592455730.Spec : Prop :=
  ∀ n, P13257180432592455730.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P4760848664309888270

`(2-A010702(2*n))*A109091(2*n+2)`
-/

namespace A113260.P4760848664309888270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010702 (2 * n)) * A109091 (2 * n + 2)

end

end A113260.P4760848664309888270

namespace A113260

/-- `(2-A010702(2*n))*A109091(2*n+2)` -/
def P4760848664309888270.Spec : Prop :=
  ∀ n, P4760848664309888270.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P4164370558307799267

`n*A154955(n+2)-A109091(2*(n+1))`
-/

namespace A113260.P4164370558307799267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A154955 (n + 2) - A109091 (2 * (n + 1))

end

end A113260.P4164370558307799267

namespace A113260

/-- `n*A154955(n+2)-A109091(2*(n+1))` -/
def P4164370558307799267.Spec : Prop :=
  ∀ n, P4164370558307799267.a n = A113260 (n + 1)

end A113260

/-! ## A113260.P10410389748788499083

`1-(A134451(2*n+1)+A109091(2*(n+1)))`
-/

namespace A113260.P10410389748788499083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A134451 (2 * n + 1) + A109091 (2 * (n + 1)))

end

end A113260.P10410389748788499083

namespace A113260

/-- `1-(A134451(2*n+1)+A109091(2*(n+1)))` -/
def P10410389748788499083.Spec : Prop :=
  ∀ n, P10410389748788499083.a n = A113260 (n + 1)

end A113260

/-!
# A113261: Expansion of (9*phi(q)*phi(q^3)^5 - phi(q)^5*phi(q^3))/8 in powers of q where phi(q) is a Ramanujan theta function.

The programs for A113261, there is no canonical definition to state claims against.
-/

/-! ## A113261.P17363249326579133799

`(-1)^n*A132000(n)`
-/

namespace A113261.P17363249326579133799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132000 n

end

end A113261.P17363249326579133799

/-! ## A113261.P10330963389415437141

`A132000(n)/A010815(Δ[or(1, n)])`
-/

namespace A113261.P10330963389415437141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132000 n : ℚ) / (A010815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A113261.P10330963389415437141

/-! ## A113261.P9593861753285049584

`A132000(n)/A021009(Δ[or(1, n)])`
-/

namespace A113261.P9593861753285049584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132000 n : ℚ) / (A021009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A113261.P9593861753285049584

/-! ## A113261.P4425070634395184331

`A132000(n)/A121373(Δ[or(1, n)])`
-/

namespace A113261.P4425070634395184331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132000 n : ℚ) / (A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A113261.P4425070634395184331

/-! ## A113261.P3136643308048344957

`A131943(n)*A132000(n)/A226139(n)`
-/

namespace A113261.P3136643308048344957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n * A132000 n : ℚ) / (A226139 n : ℚ)

end

end A113261.P3136643308048344957

/-! ## A113261.P11560117058910013463

`A132000(n)/A112030(2*n+1)`
-/

namespace A113261.P11560117058910013463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132000 n : ℚ) / (A112030 (2 * n + 1) : ℚ)

end

end A113261.P11560117058910013463

/-! ## A113261.P13222039737046008295

`A132000(n)/A033999(n²)`
-/

namespace A113261.P13222039737046008295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132000 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A113261.P13222039737046008295

/-! ## A113261.P8326918038055429342

`A132000(n)/(A112030(n²)-2)`
-/

namespace A113261.P8326918038055429342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132000 n : ℚ) / (A112030 (n ^ 2) - 2 : ℚ)

end

end A113261.P8326918038055429342

/-!
# A113262: One quarter of the number of solutions to a^2 + b^2 + 3*c^2 + 3*d^2 = n.

The programs for A113262, the canonical program `A113262.P2399975146988731264` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113262 has offset 1).

The definition of A113262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113262.P3359877409174906498

`A034896(n+1)/4`
-/

namespace A113262.P3359877409174906498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 (n + 1) : ℚ) / 4

end

end A113262.P3359877409174906498

namespace A113262

/-- `A034896(n+1)/4` -/
def P3359877409174906498.Spec : Prop :=
  ∀ n, P3359877409174906498.a n = (A113262 (n + 1) : ℚ)

end A113262

/-! ## A113262.P4563913725687714828

`abs(A131947(n+1))`
-/

namespace A113262.P4563913725687714828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131947 (n + 1)|

end

end A113262.P4563913725687714828

namespace A113262

/-- `abs(A131947(n+1))` -/
def P4563913725687714828.Spec : Prop :=
  ∀ n, P4563913725687714828.a n = A113262 (n + 1)

end A113262

/-! ## A113262.P2399975146988731264

`∑{d}[n+1, #*A187074(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113262

/-- `∑{d}[n+1, #*A187074(#)]` -/
def P2399975146988731264.Spec : Prop :=
  ∀ n, P2399975146988731264.a n = A113262 (n + 1)

theorem P2399975146988731264.correct : P2399975146988731264.Spec := by
  intro n
  simp only [A113262, Nat.add_sub_cancel]

end A113262

/-! ## A113262.P16446055085749547257

`A113184(A038502(n+1))`
-/

namespace A113262.P16446055085749547257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (A038502 (n + 1)).toNat

end

end A113262.P16446055085749547257

namespace A113262

/-- `A113184(A038502(n+1))` -/
def P16446055085749547257.Spec : Prop :=
  ∀ n, P16446055085749547257.a n = A113262 (n + 1)

end A113262

/-! ## A113262.P5999265726827973559

`A033999(n)*A131947(n+1)`
-/

namespace A113262.P5999265726827973559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131947 (n + 1)

end

end A113262.P5999265726827973559

namespace A113262

/-- `A033999(n)*A131947(n+1)` -/
def P5999265726827973559.Spec : Prop :=
  ∀ n, P5999265726827973559.a n = A113262 (n + 1)

end A113262

/-! ## A113262.P2332922215356822092

`gcd(A000038(n), A131947(n+1))`
-/

namespace A113262.P2332922215356822092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A131947 (n + 1))

end

end A113262.P2332922215356822092

namespace A113262

/-- `gcd(A000038(n), A131947(n+1))` -/
def P2332922215356822092.Spec : Prop :=
  ∀ n, (P2332922215356822092.a n : ℤ) = A113262 (n + 1)

end A113262

/-! ## A113262.P11811235357642605017

`lcm(A020985(n), A131947(n+1))`
-/

namespace A113262.P11811235357642605017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A131947 (n + 1))

end

end A113262.P11811235357642605017

namespace A113262

/-- `lcm(A020985(n), A131947(n+1))` -/
def P11811235357642605017.Spec : Prop :=
  ∀ n, (P11811235357642605017.a n : ℤ) = A113262 (n + 1)

end A113262

/-! ## A113262.P14717191304155549832

`A113184(n+1)/A080278(n+1)`
-/

namespace A113262.P14717191304155549832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113184 (n + 1) : ℚ) / (A080278 (n + 1) : ℚ)

end

end A113262.P14717191304155549832

namespace A113262

/-- `A113184(n+1)/A080278(n+1)` -/
def P14717191304155549832.Spec : Prop :=
  ∀ n, P14717191304155549832.a n = (A113262 (n + 1) : ℚ)

end A113262

/-! ## A113262.P10317670311228349682

`abs(A002129((n+1)/A038500(n+1)))`
-/

namespace A113262.P10317670311228349682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat|

end

end A113262.P10317670311228349682

namespace A113262

/-- `abs(A002129((n+1)/A038500(n+1)))` -/
def P10317670311228349682.Spec : Prop :=
  ∀ n, P10317670311228349682.a n = A113262 (n + 1)

end A113262

/-! ## A113262.P15383495000675983243

`A111932(n+1)+A121456(n+1)-A131947(n+1)`
-/

namespace A113262.P15383495000675983243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111932 (n + 1) + (A121456 (n + 1) - A131947 (n + 1))

end

end A113262.P15383495000675983243

namespace A113262

/-- `A111932(n+1)+A121456(n+1)-A131947(n+1)` -/
def P15383495000675983243.Spec : Prop :=
  ∀ n, P15383495000675983243.a n = A113262 (n + 1)

end A113262

/-! ## A113262.P1156556375985801049

`abs(∑{d}[n+1, #*A092220(#)])`
-/

namespace A113262.P1156556375985801049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A092220 d|

end

end A113262.P1156556375985801049

namespace A113262

/-- `abs(∑{d}[n+1, #*A092220(#)])` -/
def P1156556375985801049.Spec : Prop :=
  ∀ n, P1156556375985801049.a n = A113262 (n + 1)

end A113262

/-! ## A113262.P17055200475257396827

`gcd(∑{d}[n+1, (-1)^(#+1)*#], A002129(3*(n+1)))`
-/

namespace A113262.P17055200475257396827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f1 n), (-1) ^ (d + 1) * (d : ℤ)) (A002129 (3 * (n + 1)))

end

end A113262.P17055200475257396827

namespace A113262

/-- `gcd(∑{d}[n+1, (-1)^(#+1)*#], A002129(3*(n+1)))` -/
def P17055200475257396827.Spec : Prop :=
  ∀ n, (P17055200475257396827.a n : ℤ) = A113262 (n + 1)

end A113262

/-! ## A113262.P33233158531646459

`gcd(A002129(3*(n+1)), A002129(n+1))`
-/

namespace A113262.P33233158531646459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002129 (3 * (n + 1))) (A002129 (n + 1))

end

end A113262.P33233158531646459

namespace A113262

/-- `gcd(A002129(3*(n+1)), A002129(n+1))` -/
def P33233158531646459.Spec : Prop :=
  ∀ n, (P33233158531646459.a n : ℤ) = A113262 (n + 1)

end A113262

/-! ## A113262.P17828135288397920332

`gcd(A113184(3*(n+1)), A113184(n+1))`
-/

namespace A113262.P17828135288397920332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113184 (3 * (n + 1))) (A113184 (n + 1))

end

end A113262.P17828135288397920332

namespace A113262

/-- `gcd(A113184(3*(n+1)), A113184(n+1))` -/
def P17828135288397920332.Spec : Prop :=
  ∀ n, (P17828135288397920332.a n : ℤ) = A113262 (n + 1)

end A113262

/-! ## A113262.P1576018779568580150

`A002265(A034896(n+1))`
-/

namespace A113262.P1576018779568580150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A034896 (n + 1)).toNat

end

end A113262.P1576018779568580150

namespace A113262

/-- `A002265(A034896(n+1))` -/
def P1576018779568580150.Spec : Prop :=
  ∀ n, P1576018779568580150.a n = A113262 (n + 1)

end A113262

/-! ## A113262.P7079763786822060531

`A003602(A034896(n+1)-2)`
-/

namespace A113262.P7079763786822060531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A034896 (n + 1) - 2).toNat

end

end A113262.P7079763786822060531

namespace A113262

/-- `A003602(A034896(n+1)-2)` -/
def P7079763786822060531.Spec : Prop :=
  ∀ n, P7079763786822060531.a n = A113262 (n + 1)

end A113262

/-! ## A113262.P4352255341527979141

`A209451(n+1)/(A002203(n+1)+A002203(n))`
-/

namespace A113262.P4352255341527979141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209451 (n + 1) : ℚ) / (A002203 (n + 1) + A002203 n : ℚ)

end

end A113262.P4352255341527979141

namespace A113262

/-- `A209451(n+1)/(A002203(n+1)+A002203(n))` -/
def P4352255341527979141.Spec : Prop :=
  ∀ n, P4352255341527979141.a n = (A113262 (n + 1) : ℚ)

end A113262

/-! ## A113262.P3722697395211675348

`abs(A034896(∑[2*n])/A131946(n))`
-/

namespace A113262.P3722697395211675348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A034896 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A131946 n : ℚ)|

end

end A113262.P3722697395211675348

namespace A113262

/-- `abs(A034896(∑[2*n])/A131946(n))` -/
def P3722697395211675348.Spec : Prop :=
  ∀ n, P3722697395211675348.a n = (A113262 (n + 1) : ℚ)

end A113262

/-!
# A113263: a(n) is the number of ways the set {1^3, 2^3, ..., n^3} can be partitioned into two sets of equal sums.

The programs for A113263, there is no canonical definition to state claims against.
-/

/-! ## A113263.P15580199221227106946

`A158118(n+1)/2`
-/

namespace A113263.P15580199221227106946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158118 (n + 1) : ℚ) / 2

end

end A113263.P15580199221227106946

/-! ## A113263.P4369166291076391578

`2^A033999(2*n+1)*A158118(n+1)`
-/

namespace A113263.P4369166291076391578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A033999 (2 * n + 1) : ℤ) * (A158118 (n + 1) : ℚ)

end

end A113263.P4369166291076391578

/-! ## A113263.P9982563939029302717

`2^A008683(A020483(n))*A158118(n+1)`
-/

namespace A113263.P9982563939029302717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A158118 (n + 1) : ℚ)

end

end A113263.P9982563939029302717

/-! ## A113263.P15794875241413648137

`2^A008683(A000040(n+1))*A158118(n+1)`
-/

namespace A113263.P15794875241413648137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ) * (A158118 (n + 1) : ℚ)

end

end A113263.P15794875241413648137

/-! ## A113263.P14419469199282855787

`2^A008683(A001359(n+1))*A158118(n+1)`
-/

namespace A113263.P14419469199282855787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A001359 (n + 1)).toNat : ℤ) * (A158118 (n + 1) : ℚ)

end

end A113263.P14419469199282855787

/-! ## A113263.P14125869339595324313

`2^A008683(A222413(n+1))*A158118(n+1)`
-/

namespace A113263.P14125869339595324313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A222413 (n + 1)).toNat : ℤ) * (A158118 (n + 1) : ℚ)

end

end A113263.P14125869339595324313

/-!
# A113264: Partial sums of Catalan numbers A000108 multiplied by powers of -5.

The programs for A113264, there is no canonical definition to state claims against.
-/

/-! ## A113264.P7456347322592974827

`∑[5^n*A168491(n)]`
-/

namespace A113264.P7456347322592974827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113264.P7456347322592974827

/-! ## A113264.P12975878199684191729

`∑[(-5)^n*A000108(n)]`
-/

namespace A113264.P12975878199684191729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113264.P12975878199684191729

/-! ## A113264.P1204678345563627730

`∑[(-5)^n*A028304(2*n)]`
-/

namespace A113264.P1204678345563627730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n * A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113264.P1204678345563627730

/-! ## A113264.P16811748670316455361

`∑[A033999(n)*A156058(n)]`
-/

namespace A113264.P16811748670316455361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A156058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113264.P16811748670316455361

/-! ## A113264.P1894012329404464929

`∑[A156058(n)*A209615(n²+1)]`
-/

namespace A113264.P1894012329404464929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156058 n * A209615 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113264.P1894012329404464929

/-!
# A113265: Partial sums of Catalan numbers A000108 multiplied by powers of -6.

The programs for A113265, there is no canonical definition to state claims against.
-/

/-! ## A113265.P10830623490991175036

`∑[(-6)^n*A000108(n)]`
-/

namespace A113265.P10830623490991175036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-6) ^ n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113265.P10830623490991175036

/-! ## A113265.P8363344773740080970

`∑[6^n*A090192(2*n+1)]`
-/

namespace A113265.P8363344773740080970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A090192 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113265.P8363344773740080970

/-! ## A113265.P2092681520718396518

`∑[A000400(n)*A168491(n)]`
-/

namespace A113265.P2092681520718396518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113265.P2092681520718396518

/-! ## A113265.P7779460531569036214

`∑[A033999(n)*A156128(n)]`
-/

namespace A113265.P7779460531569036214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A156128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113265.P7779460531569036214

/-! ## A113265.P12260046689558170920

`∑[A000244(n)*A168491(n)*2^n]`
-/

namespace A113265.P12260046689558170920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A168491 n * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113265.P12260046689558170920

/-! ## A113265.P9412682464923159332

`∑[6^n*A000108(n)*A057077(2*n)]`
-/

namespace A113265.P9412682464923159332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000108 n * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113265.P9412682464923159332

/-! ## A113265.P10434450613145271580

`∑[A036561(A046092(n))*A168491(n)]`
-/

namespace A113265.P10434450613145271580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A046092 n).toNat * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113265.P10434450613145271580

/-! ## A113265.P3366333763359281834

`∑[(A004442(n)-n)*A000079(n)*A005159(n)]`
-/

namespace A113265.P3366333763359281834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (A000079 n * A005159 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113265.P3366333763359281834

/-!
# A113266: Partial sums of Catalan numbers A000108 multiplied by powers of -7.

The programs for A113266, there is no canonical definition to state claims against.
-/

/-! ## A113266.P10924556494760145501

`∑[7^n*A168491(n)]`
-/

namespace A113266.P10924556494760145501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113266.P10924556494760145501

/-! ## A113266.P7193844308848306680

`∑[(-1)^n*A156266(n)]`
-/

namespace A113266.P7193844308848306680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A156266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113266.P7193844308848306680

/-! ## A113266.P14449475278925519009

`∑[(-7)^n*A000108(n)]`
-/

namespace A113266.P14449475278925519009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-7) ^ n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113266.P14449475278925519009

/-! ## A113266.P1461857700767612195

`∑[7^n*A090192(2*n+1)]`
-/

namespace A113266.P1461857700767612195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A090192 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113266.P1461857700767612195

/-! ## A113266.P14526751128235250289

`∑[A000108(n)*A000420(n)*A056594(2*n)]`
-/

namespace A113266.P14526751128235250289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000420 n * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113266.P14526751128235250289

/-!
# A113267: Partial sums of Catalan numbers A000108 multiplied by powers of -8.

The programs for A113267, there is no canonical definition to state claims against.
-/

/-! ## A113267.P13296090561826779559

`∑[8^n*A168491(n)]`
-/

namespace A113267.P13296090561826779559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P13296090561826779559

/-! ## A113267.P1493519264092043734

`∑[(-8)^n*A000108(n)]`
-/

namespace A113267.P1493519264092043734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-8) ^ n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P1493519264092043734

/-! ## A113267.P9200852619541449310

`∑[abs(A115140(n+1))*(-8)^n]`
-/

namespace A113267.P9200852619541449310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1)| * (-8) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P9200852619541449310

/-! ## A113267.P17016711161797562519

`∑[abs(A090192(Δ[n²]))*(-8)^n]`
-/

namespace A113267.P17016711161797562519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat| * (-8) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P17016711161797562519

/-! ## A113267.P6582421215186042099

`∑[A033999(n)*A156270(n)]`
-/

namespace A113267.P6582421215186042099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A156270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P6582421215186042099

/-! ## A113267.P6104797661707226765

`∑[A122803(n)*A151403(n)]`
-/

namespace A113267.P6104797661707226765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A151403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P6104797661707226765

/-! ## A113267.P3099532552515469317

`∑[A151374(n)*A262710(n)]`
-/

namespace A113267.P3099532552515469317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151374 n * A262710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P3099532552515469317

/-! ## A113267.P15948735971296340102

`∑[A094267(n²)*A156270(n)]`
-/

namespace A113267.P15948735971296340102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A156270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P15948735971296340102

/-! ## A113267.P18327249613483550726

`∑[(A004442(n)-n)*A156270(n)]`
-/

namespace A113267.P18327249613483550726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A156270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P18327249613483550726

/-! ## A113267.P8446471472573002875

`∑[(A054878(n)-A015518(n))*A156270(n)]`
-/

namespace A113267.P8446471472573002875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054878 n - A015518 n) * A156270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113267.P8446471472573002875

/-!
# A113268: Partial sums of Catalan numbers A000108 multiplied by powers of -9.

The programs for A113268, there is no canonical definition to state claims against.
-/

/-! ## A113268.P11196642759089744084

`∑[3^n/(n+1)*C(2*n, n)*(-3)^n]`
-/

namespace A113268.P11196642759089744084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ) * ((-3) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113268.P11196642759089744084

/-! ## A113268.P2838865158678828163

`∑[9^n*A168491(n)]`
-/

namespace A113268.P2838865158678828163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113268.P2838865158678828163

/-! ## A113268.P1437439560465275336

`∑[(-3)^n*A005159(n)]`
-/

namespace A113268.P1437439560465275336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * A005159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113268.P1437439560465275336

/-! ## A113268.P3840790378109530777

`∑[(-9)^n*A000108(n)]`
-/

namespace A113268.P3840790378109530777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-9) ^ n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113268.P3840790378109530777

/-! ## A113268.P17396127077807205532

`∑[(-9)^n*A089408(2*n+1)]`
-/

namespace A113268.P17396127077807205532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-9) ^ n * A089408 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113268.P17396127077807205532

/-! ## A113268.P9066355333069536610

`∑[A033999(n)*A156273(n)]`
-/

namespace A113268.P9066355333069536610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A156273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113268.P9066355333069536610

/-! ## A113268.P17923668907814909548

`∑[A168491(n)*A352779(n)²]`
-/

namespace A113268.P17923668907814909548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n * A352779 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113268.P17923668907814909548

/-! ## A113268.P12648843805174408895

`∑[A168491(n)*A352779(2*n)]`
-/

namespace A113268.P12648843805174408895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n * A352779 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113268.P12648843805174408895

/-!
# A113269: Partial sums of Catalan numbers A000108 multiplied by powers of -10.

The programs for A113269, there is no canonical definition to state claims against.
-/

/-! ## A113269.P17262109139705480037

`∑[A156275(n)/(-1)^n]`
-/

namespace A113269.P17262109139705480037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156275 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113269.P17262109139705480037

/-! ## A113269.P2394005769529965411

`∑[(-10)^n*A000108(n)]`
-/

namespace A113269.P2394005769529965411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-10) ^ n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113269.P2394005769529965411

/-! ## A113269.P6357182903518580120

`∑[(-10)^n*Δ[A166588(2*n)]]`
-/

namespace A113269.P6357182903518580120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-10) ^ n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113269.P6357182903518580120

/-! ## A113269.P14825758111774561907

`∑[A011557(n)*A168491(n)]`
-/

namespace A113269.P14825758111774561907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113269.P14825758111774561907

/-! ## A113269.P2573079228083557662

`∑[A033999(n)*A156275(n)]`
-/

namespace A113269.P2573079228083557662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A156275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113269.P2573079228083557662

/-! ## A113269.P7851551045034610786

`∑[A122803(n)*A156058(n)]`
-/

namespace A113269.P7851551045034610786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A156058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113269.P7851551045034610786

/-! ## A113269.P13215348241875393057

`∑[A000108(n)*A033999(n)*10^n]`
-/

namespace A113269.P13215348241875393057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A033999 n * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113269.P13215348241875393057

/-! ## A113269.P14143203727210926011

`∑[(A054878(n)-A015518(n))*A156275(n)]`
-/

namespace A113269.P14143203727210926011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054878 n - A015518 n) * A156275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113269.P14143203727210926011

/-!
# A113270: a(n) = sqrt(Product_{k=1..2^n} (Product_{i=1..n} p_i^e_{k,i} + Product_{i=1..n} p_i^(1-e_{k,i}))) * Sum_{i=1..n} ((1/p_i)*Product_{k=1..n} p_k) where p_i is the i-th prime and e_{k,i} is a vector of length n that runs through all combinations of {0,1}.

The programs for A113270, there is no canonical definition to state claims against.
-/

/-! ## A113270.P6772214136937056749

`A024451(n+1)*A112404(n+1)`
-/

namespace A113270.P6772214136937056749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) * A112404 (n + 1)

end

end A113270.P6772214136937056749

/-!
# A113271: Ascending descending base exponent transform of 2^n.

The programs for A113271, the canonical program `A113271.P2909801906258651501` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113271 has offset 0).

The definition of A113271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113271.P2909801906258651501

`∑{#}[n, (2^(n-#))^2^#]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113271

/-- `∑{#}[n, (2^(n-#))^2^#]` -/
def P2909801906258651501.Spec : Prop :=
  ∀ n, P2909801906258651501.a n = (A113271 n : ℚ)

end A113271

/-! ## A113271.P5969181621154876465

`A055225(2^n)`
-/

namespace A113271.P5969181621154876465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (2 ^ n)

end

end A113271.P5969181621154876465

namespace A113271

/-- `A055225(2^n)` -/
def P5969181621154876465.Spec : Prop :=
  ∀ n, P5969181621154876465.a n = A113271 n

end A113271

/-! ## A113271.P7789230872171147679

`2-A308366(2^n)`
-/

namespace A113271.P7789230872171147679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A308366 (2 ^ n)

end

end A113271.P7789230872171147679

namespace A113271

/-- `2-A308366(2^n)` -/
def P7789230872171147679.Spec : Prop :=
  ∀ n, P7789230872171147679.a n = A113271 n

end A113271

/-! ## A113271.P17874469578874476143

`record[A055225(A001316(n))]`
-/

namespace A113271.P17874469578874476143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113271.P17874469578874476143

namespace A113271

/-- `record[A055225(A001316(n))]` -/
def P17874469578874476143.Spec : Prop :=
  ∀ n, P17874469578874476143.a n = A113271 n

end A113271

/-! ## A113271.P911785973145445991

`record[A055225(A060632(n))]`
-/

namespace A113271.P911785973145445991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (A060632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113271.P911785973145445991

namespace A113271

/-- `record[A055225(A060632(n))]` -/
def P911785973145445991.Spec : Prop :=
  ∀ n, P911785973145445991.a n = A113271 n

end A113271

/-!
# A113274: Record gaps between twin primes.

The programs for A113274, there is no canonical definition to state claims against.
-/

/-! ## A113274.P17113457269993220044

`A036063(n+1)+2`
-/

namespace A113274.P17113457269993220044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036063 (n + 1) + 2

end

end A113274.P17113457269993220044

/-! ## A113274.P8004638809992318708

`A321220(A036063(n+1))`
-/

namespace A113274.P8004638809992318708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (A036063 (n + 1)).toNat

end

end A113274.P8004638809992318708

/-! ## A113274.P3171284624890994320

`A059029(A036062(n+1)-A113275(n+1))`
-/

namespace A113274.P3171284624890994320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (A036062 (n + 1) - A113275 (n + 1)).toNat

end

end A113274.P3171284624890994320

/-! ## A113274.P18441881668585338913

`A321220(A036062(n+1)-A036061(n+1))`
-/

namespace A113274.P18441881668585338913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (A036062 (n + 1) - A036061 (n + 1)).toNat

end

end A113274.P18441881668585338913

/-! ## A113274.P5495785599957901099

`A321220(A036062(n+1)%A036061(n+1))`
-/

namespace A113274.P5495785599957901099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (Int.tmod (A036062 (n + 1)) (A036061 (n + 1))).toNat

end

end A113274.P5495785599957901099

/-!
# A113275: Lesser of twin primes for which the gap before the following twin primes is a record.

The programs for A113275, there is no canonical definition to state claims against.
-/

/-! ## A113275.P2650098298235971738

`A036061(n+1)-2`
-/

namespace A113275.P2650098298235971738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036061 (n + 1) - 2

end

end A113275.P2650098298235971738

/-! ## A113275.P10788949964799922513

`A158522(A106856(n+1))+A036061(n+1)`
-/

namespace A113275.P10788949964799922513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A106856 (n + 1)).toNat + A036061 (n + 1)

end

end A113275.P10788949964799922513

/-! ## A113275.P10526420086507547592

`A158522(A107132(n+1))+A036061(n+1)`
-/

namespace A113275.P10526420086507547592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A107132 (n + 1)).toNat + A036061 (n + 1)

end

end A113275.P10526420086507547592

/-! ## A113275.P7623989847585231179

`A158522(A107135(n+1))+A036061(n+1)`
-/

namespace A113275.P7623989847585231179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A107135 (n + 1)).toNat + A036061 (n + 1)

end

end A113275.P7623989847585231179

/-! ## A113275.P9810604733650294207

`A158522(A107179(n+1))+A036061(n+1)`
-/

namespace A113275.P9810604733650294207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A107179 (n + 1)).toNat + A036061 (n + 1)

end

end A113275.P9810604733650294207

/-! ## A113275.P5125339485789608454

`A158522(A141176(n+1))+A036061(n+1)`
-/

namespace A113275.P5125339485789608454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A141176 (n + 1)).toNat + A036061 (n + 1)

end

end A113275.P5125339485789608454

/-! ## A113275.P2714988971450262425

`A158522(A141191(n+1))+A036061(n+1)`
-/

namespace A113275.P2714988971450262425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A141191 (n + 1)).toNat + A036061 (n + 1)

end

end A113275.P2714988971450262425

/-! ## A113275.P2230874574747573563

`A036062(n+1)-A046666(A113274(n+1)+2)`
-/

namespace A113275.P2230874574747573563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036062 (n + 1) - A046666 (A113274 (n + 1) + 2).toNat

end

end A113275.P2230874574747573563

/-!
# A113277: Expansion of q^(-1/3) * eta(q^2)^5 / eta(q)^2 in powers of q.

The programs for A113277, there is no canonical definition to state claims against.
-/

/-! ## A113277.P6855331427288189470

`A033999(n)*A114855(n)`
-/

namespace A113277.P6855331427288189470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A114855 n

end

end A113277.P6855331427288189470

/-! ## A113277.P11049010716030772118

`A087960(n)*A114855(n)`
-/

namespace A113277.P11049010716030772118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A114855 n

end

end A113277.P11049010716030772118

/-! ## A113277.P16611928243127449351

`A089802(n)*A114855(n)`
-/

namespace A113277.P16611928243127449351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n * A114855 n

end

end A113277.P16611928243127449351

/-! ## A113277.P5002132618538866905

`A094267(n)*A114855(n)`
-/

namespace A113277.P5002132618538866905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A114855 n

end

end A113277.P5002132618538866905

/-! ## A113277.P9250301401396460148

`A114855(n)*A219977(n)`
-/

namespace A113277.P9250301401396460148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114855 n * A219977 n

end

end A113277.P9250301401396460148

/-! ## A113277.P3069841029583182185

`A071935(n+1)*A114855(n)`
-/

namespace A113277.P3069841029583182185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A114855 n

end

end A113277.P3069841029583182185

/-! ## A113277.P18329241060411312078

`A114855(n)*A309873(n+1)`
-/

namespace A113277.P18329241060411312078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114855 n * A309873 (n + 1)

end

end A113277.P18329241060411312078

/-! ## A113277.P11953508877521122502

`(A004442(n)-n)*A114855(n)`
-/

namespace A113277.P11953508877521122502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A114855 n

end

end A113277.P11953508877521122502

/-! ## A113277.P695241620051072373

`Δ[A105931(n+1)]*A114855(n)`
-/

namespace A113277.P695241620051072373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A114855 n

end

end A113277.P695241620051072373

/-! ## A113277.P15039106062298716491

`A143064(n)*A278814(n)`
-/

namespace A113277.P15039106062298716491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 n * A278814 n

end

end A113277.P15039106062298716491

/-! ## A113277.P16341899652726130255

`A143064(n)*A216256(n+1)`
-/

namespace A113277.P16341899652726130255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 n * A216256 (n + 1)

end

end A113277.P16341899652726130255

/-! ## A113277.P13169329568863590430

`A143064(n)*A300154(n+1)`
-/

namespace A113277.P13169329568863590430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 n * A300154 (n + 1)

end

end A113277.P13169329568863590430

/-! ## A113277.P14514272490689530140

`(A183855(n+1)-n)*A143064(n)`
-/

namespace A113277.P14514272490689530140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183855 (n + 1) - (n : ℤ)) * A143064 n

end

end A113277.P14514272490689530140

/-! ## A113277.P6050128777646530448

`A046693(n)*A143064(n)`
-/

namespace A113277.P6050128777646530448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 n * A143064 n

end

end A113277.P6050128777646530448

/-!
# A113278: Triangle T, read by rows, such that the matrix square, T^2, forms a simple 2-diagonal triangle where [T^2](n,n) = 1 and [T^2](n+1,n) = 2*(n+1) for n>=0.

The programs for A113278, there is no canonical definition to state claims against.
-/

/-! ## A113278.P4517198359799439455

`T(n-1,k-1)+(2*(col(n)-row(n))+3)*T(n-1,k)` with `a(0)=1`
-/

namespace A113278.P4517198359799439455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (2 * ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) + 3) * SequenceMachineLib.triUp a n

end

end A113278.P4517198359799439455

/-! ## A113278.P12592978895632040918

`T(n-1,k-1)-(2*(row(n)-col(n))-3)*T(n-1,k)` with `a(0)=1`
-/

namespace A113278.P12592978895632040918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) - 3) * SequenceMachineLib.triUp a n

end

end A113278.P12592978895632040918

/-! ## A113278.P14671415178940429409

`(and(2, comp[∑[n]]+n)-1)*A132382(n)`
-/

namespace A113278.P14671415178940429409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A132382 n

end

end A113278.P14671415178940429409

/-! ## A113278.P11979739744516477784

`A097807(n)*A132382(n)`
-/

namespace A113278.P11979739744516477784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A132382 n

end

end A113278.P11979739744516477784

/-! ## A113278.P14106668469720216421

`A132382(abs(1-n)+1)/A097807(n)`
-/

namespace A113278.P14106668469720216421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132382 (|1 - (n : ℤ)| + 1).toNat : ℚ) / (A097807 n : ℚ)

end

end A113278.P14106668469720216421

/-! ## A113278.P2487029928345134583

`A014883(A025581(n))*A132382(n)`
-/

namespace A113278.P2487029928345134583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014883 (A025581 n).toNat * A132382 n

end

end A113278.P2487029928345134583

/-! ## A113278.P4663088862409329959

`A015351(A067731(n))*A132382(n)`
-/

namespace A113278.P4663088862409329959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015351 (A067731 n).toNat * A132382 n

end

end A113278.P4663088862409329959

/-! ## A113278.P8326814529341488007

`A033999(A051162(n))*A132382(n)`
-/

namespace A113278.P8326814529341488007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A132382 n

end

end A113278.P8326814529341488007

/-! ## A113278.P17533602939236044917

`A009531(A099375(n))*A132382(n)`
-/

namespace A113278.P17533602939236044917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A132382 n

end

end A113278.P17533602939236044917

/-! ## A113278.P7297687506300899805

`A132382(n)/A033999(A067731(n)²)`
-/

namespace A113278.P7297687506300899805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132382 n : ℚ) / (A033999 (A067731 n ^ 2).toNat : ℚ)

end

end A113278.P7297687506300899805

/-!
# A113279: Triangle T(n,k) of coefficients of r_1^n+r_2^n in terms of p and q, where r_1,r_2 are the roots of x^2+px+q=0.

The programs for A113279, there is no canonical definition to state claims against.
-/

/-! ## A113279.P17584856901351972899

`Δ[A053615(n)]*A213234(n)`
-/

namespace A113279.P17584856901351972899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A213234 n

end

end A113279.P17584856901351972899

/-! ## A113279.P3281995794000320512

`Δ[A004738(n+1)]*A213234(n)`
-/

namespace A113279.P3281995794000320512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A213234 n

end

end A113279.P3281995794000320512

/-! ## A113279.P11756562025085158075

`A014995(A055086(n))*A213234(n)`
-/

namespace A113279.P11756562025085158075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014995 (A055086 n).toNat * A213234 n

end

end A113279.P11756562025085158075

/-! ## A113279.P8148105853672551924

`A014995(A082375(n))*A213234(n)`
-/

namespace A113279.P8148105853672551924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014995 (A082375 n).toNat * A213234 n

end

end A113279.P8148105853672551924

/-! ## A113279.P1725234809523495590

`A014995(A253580(n))*A213234(n)`
-/

namespace A113279.P1725234809523495590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014995 (A253580 n).toNat * A213234 n

end

end A113279.P1725234809523495590

/-! ## A113279.P11624262704585509580

`A033999(A123663(n+1))*A213234(n)`
-/

namespace A113279.P11624262704585509580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A123663 (n + 1)).toNat * A213234 n

end

end A113279.P11624262704585509580

/-! ## A113279.P17765483680384284008

`A213234(n)/A057428(n)^A082375(n)`
-/

namespace A113279.P17765483680384284008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213234 n : ℚ) / (A057428 n : ℚ) ^ (A082375 n : ℤ)

end

end A113279.P17765483680384284008

/-!
# A113280: A symmetrical triangle of coefficients: t(n,m)=(n - m)*(n - m + 2)*m*(m + 2) + 1.

The programs for A113280, the canonical program `A113280.P4441876692501672264` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113280 has offset 1).

The definition of A113280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))*(row(n)-col(n)+2)*col(n)*(col(n)+2)+1` (program `A113280.P4441876692501672264`, by `A113280.P4441876692501672264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113280.P4441876692501672264

`(row(n)-col(n))*(row(n)-col(n)+2)*col(n)*(col(n)+2)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113280

/-- `(row(n)-col(n))*(row(n)-col(n)+2)*col(n)*(col(n)+2)+1` -/
def P4441876692501672264.Spec : Prop :=
  ∀ n, P4441876692501672264.a n = A113280 (n + 1)

theorem P4441876692501672264.correct : P4441876692501672264.Spec := by
  intro n
  simp only [A113280, Nat.add_sub_cancel]

end A113280

/-! ## A113280.P7911185233889006078

`A077028(n)²+2*A068606(n)`
-/

namespace A113280.P7911185233889006078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n ^ 2 + 2 * A068606 n

end

end A113280.P7911185233889006078

namespace A113280

/-- `A077028(n)²+2*A068606(n)` -/
def P7911185233889006078.Spec : Prop :=
  ∀ n, P7911185233889006078.a n = A113280 (n + 1)

theorem P7911185233889006078.correct : P7911185233889006078.Spec := by
  intro n
  simp only [A113280, Nat.add_sub_cancel, A113280.P7911185233889006078.a, A113280.P4441876692501672264.a, A068606, A068606.P18248460777800522484.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113280

/-! ## A113280.P9934968164051728725

`A004247(n)*A173395(n+1)+1`
-/

namespace A113280.P9934968164051728725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A173395 (n + 1) + 1

end

end A113280.P9934968164051728725

namespace A113280

/-- `A004247(n)*A173395(n+1)+1` -/
def P9934968164051728725.Spec : Prop :=
  ∀ n, P9934968164051728725.a n = A113280 (n + 1)

end A113280

/-! ## A113280.P983360175144392338

`A296180(n)+A004247(n)*A204250(n+1)`
-/

namespace A113280.P983360175144392338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296180 n + A004247 n * A204250 (n + 1)

end

end A113280.P983360175144392338

namespace A113280

/-- `A296180(n)+A004247(n)*A204250(n+1)` -/
def P983360175144392338.Spec : Prop :=
  ∀ n, P983360175144392338.a n = A113280 (n + 1)

theorem P983360175144392338.correct : P983360175144392338.Spec := by
  intro n
  simp only [A113280, Nat.add_sub_cancel, A113280.P983360175144392338.a, A113280.P4441876692501672264.a, A004247, A004247.P2751605162508615148.a, A204250, A204250.P2607520245277091701.a, A296180, A296180.P14152267377895258393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113280

/-! ## A113280.P14205827218648402727

`A005843(A068606(n))+A077028(n)²`
-/

namespace A113280.P14205827218648402727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A068606 n).toNat + A077028 n ^ 2

end

end A113280.P14205827218648402727

namespace A113280

/-- `A005843(A068606(n))+A077028(n)²` -/
def P14205827218648402727.Spec : Prop :=
  ∀ n, P14205827218648402727.a n = A113280 (n + 1)

end A113280

/-! ## A113280.P13074694829922282777

`A003991(lt[2, A268436(n)])*A004247(n)+1`
-/

namespace A113280.P13074694829922282777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A004247 n + 1

end

end A113280.P13074694829922282777

namespace A113280

/-- `A003991(lt[2, A268436(n)])*A004247(n)+1` -/
def P13074694829922282777.Spec : Prop :=
  ∀ n, P13074694829922282777.a n = A113280 (n + 1)

end A113280

/-!
# A113281: Self-convolution equals A113224.

The programs for A113281, there is no canonical definition to state claims against.
-/

/-! ## A113281.P13658052753378823395

`floor(A067251(A100087(n+1)+1)/(n+2))`
-/

namespace A113281.P13658052753378823395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067251 (A100087 (n + 1) + 1).toNat : ℚ) / (n + 2 : ℚ)⌋

end

end A113281.P13658052753378823395

/-! ## A113281.P18121898030865805379

`A080605(A071969(n))`
-/

namespace A113281.P18121898030865805379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A071969 n).toNat

end

end A113281.P18121898030865805379

/-! ## A113281.P17494755224153501600

`A249728(A148901(n))`
-/

namespace A113281.P17494755224153501600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A148901 n).toNat

end

end A113281.P17494755224153501600

/-! ## A113281.P15964566437000842638

`A080605(A176950(n+1))`
-/

namespace A113281.P15964566437000842638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A176950 (n + 1)).toNat

end

end A113281.P15964566437000842638

/-! ## A113281.P8880950322427333811

`or(1, A026819(A149871(n)))`
-/

namespace A113281.P8880950322427333811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026819 (A149871 n).toNat)

end

end A113281.P8880950322427333811

/-!
# A113282: Logarithmic derivative of the g.f. of A113281.

The programs for A113282, the canonical program `A113282.P5188912554997719872` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113282 has offset 0).

The definition of A113282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113282.P5188912554997719872

`ogf((1+3x-5x^2-5x^3+3x^4+x^5+x^6+x^7)/(1-2x-2x^2+2x^3+2x^5+2x^6-2x^7-x^8))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113282

/-- `ogf((1+3x-5x^2-5x^3+3x^4+x^5+x^6+x^7)/(1-2x-2x^2+2x^3+2x^5+2x^6-2x^7-x^8))` -/
def P5188912554997719872.Spec : Prop :=
  ∀ n, P5188912554997719872.a n = A113282 n

theorem P5188912554997719872.correct : P5188912554997719872.Spec := by
  intro n
  simp only [A113282]

end A113282

/-! ## A113282.P12522905124999059652

`A001333(n+1)+∑[∑[2*n]]%4`
-/

namespace A113282.P12522905124999059652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % 4 : ℕ) : ℤ)

end

end A113282.P12522905124999059652

namespace A113282

/-- `A001333(n+1)+∑[∑[2*n]]%4` -/
def P12522905124999059652.Spec : Prop :=
  ∀ n, P12522905124999059652.a n = A113282 n

end A113282

/-! ## A113282.P10409325356814127487

`A101455(n)+A100828(n)`
-/

namespace A113282.P10409325356814127487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n + A100828 n

end

end A113282.P10409325356814127487

namespace A113282

/-- `A101455(n)+A100828(n)` -/
def P10409325356814127487.Spec : Prop :=
  ∀ n, P10409325356814127487.a n = A113282 n

end A113282

/-! ## A113282.P3159979518685147875

`xor(A100828(n), A109718(n))`
-/

namespace A113282.P3159979518685147875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100828 n) (A109718 n)

end

end A113282.P3159979518685147875

namespace A113282

/-- `xor(A100828(n), A109718(n))` -/
def P3159979518685147875.Spec : Prop :=
  ∀ n, P3159979518685147875.a n = A113282 n

end A113282

/-! ## A113282.P6005836731857804171

`A100828(n)-A056594(n+1)`
-/

namespace A113282.P6005836731857804171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 n - A056594 (n + 1)

end

end A113282.P6005836731857804171

namespace A113282

/-- `A100828(n)-A056594(n+1)` -/
def P6005836731857804171.Spec : Prop :=
  ∀ n, P6005836731857804171.a n = A113282 n

end A113282

/-! ## A113282.P2224746422411713262

`or(A010673(n), A182780(n))-1`
-/

namespace A113282.P2224746422411713262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010673 n) (A182780 n) - 1

end

end A113282.P2224746422411713262

namespace A113282

/-- `or(A010673(n), A182780(n))-1` -/
def P2224746422411713262.Spec : Prop :=
  ∀ n, P2224746422411713262.a n = A113282 n

end A113282

/-! ## A113282.P7274331127935656398

`A155046(2*n+1)+and(2, A155046(2*(n+1)))`
-/

namespace A113282.P7274331127935656398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (2 * n + 1) + Int.land 2 (A155046 (2 * (n + 1)))

end

end A113282.P7274331127935656398

namespace A113282

/-- `A155046(2*n+1)+and(2, A155046(2*(n+1)))` -/
def P7274331127935656398.Spec : Prop :=
  ∀ n, P7274331127935656398.a n = A113282 n

end A113282

/-! ## A113282.P12411946922008011328

`A001333(n+1)+and(2, A024001(n)+A005563(n))`
-/

namespace A113282.P12411946922008011328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + Int.land 2 (A024001 n + A005563 n)

end

end A113282.P12411946922008011328

namespace A113282

/-- `A001333(n+1)+and(2, A024001(n)+A005563(n))` -/
def P12411946922008011328.Spec : Prop :=
  ∀ n, P12411946922008011328.a n = A113282 n

end A113282

/-!
# A113283: Even bisection of A113281: a(n) = A113281(2*n).

The programs for A113283, there is no canonical definition to state claims against.
-/

/-! ## A113283.P14198480064358032979

`A113281(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113283.P14198480064358032979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (2 * n)

end

end A113283.P14198480064358032979

/-! ## A113283.P3510384568108504226

`record[A113281(A014681(n))]`
-/

namespace A113283.P3510384568108504226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P3510384568108504226

/-! ## A113283.P14943349311735241057

`record[A113281(A227140(n)+1)]`
-/

namespace A113283.P14943349311735241057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (A227140 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P14943349311735241057

/-! ## A113283.P8679077202003557755

`record[A113281(n)/A033999(n)]`
-/

namespace A113283.P8679077202003557755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113281 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P8679077202003557755

/-! ## A113283.P8307200176846438381

`record[A113281(n)/A072345(n)]`
-/

namespace A113283.P8307200176846438381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113281 n : ℚ) / (A072345 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P8307200176846438381

/-! ## A113283.P10469627801412908054

`record[A113281(A000265(n+1)-1)]`
-/

namespace A113283.P10469627801412908054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P10469627801412908054

/-! ## A113283.P11349084323007670734

`record[A113281(n-A007814(n+1))]`
-/

namespace A113283.P11349084323007670734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P11349084323007670734

/-! ## A113283.P1772708286586772156

`record[gcd(A007814(n+1), A113281(n))]`
-/

namespace A113283.P1772708286586772156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A113281 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P1772708286586772156

/-! ## A113283.P3526843812809908320

`record[and(A033999(n+1), A113281(n))]`
-/

namespace A113283.P3526843812809908320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (n + 1)) (A113281 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P3526843812809908320

/-! ## A113283.P5411136964125118256

`record[A113281(n)/A006519(n+1)²]`
-/

namespace A113283.P5411136964125118256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113281 n : ℚ) / (A006519 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113283.P5411136964125118256

/-!
# A113284: Odd bisection of A113281: a(n) = A113281(2*n+1).

The programs for A113284, there is no canonical definition to state claims against.
-/

/-! ## A113284.P18036295594322434042

`A113281(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113284.P18036295594322434042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (2 * n + 1)

end

end A113284.P18036295594322434042

/-! ## A113284.P14404892112126788120

`record[A113281(A227140(n))]`
-/

namespace A113284.P14404892112126788120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (A227140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113284.P14404892112126788120

/-! ## A113284.P10546280051783119508

`record[A113281(A000265(n+1))]`
-/

namespace A113284.P10546280051783119508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113284.P10546280051783119508

/-! ## A113284.P1743143355827262067

`record[A113281(A014681(n)+1)]`
-/

namespace A113284.P1743143355827262067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113284.P1743143355827262067

/-! ## A113284.P7276884324086784236

`record[A113281(A033999(n)+n)]`
-/

namespace A113284.P7276884324086784236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113284.P7276884324086784236

/-! ## A113284.P7576359453389550691

`record[A113281(n*A000035(n))]`
-/

namespace A113284.P7576359453389550691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113284.P7576359453389550691

/-! ## A113284.P16213557623421243561

`record[A113281(and(n, A033999(n)))]`
-/

namespace A113284.P16213557623421243561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113284.P16213557623421243561

/-! ## A113284.P11264989205427293595

`record[gcd(A007814(n+2), A113281(n))]`
-/

namespace A113284.P11264989205427293595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 2)) (A113281 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113284.P11264989205427293595

/-! ## A113284.P9884432015283435271

`A113281(A005408(n))^ceil(sin(n)²)`
-/

namespace A113284.P9884432015283435271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113281 (A005408 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A113284.P9884432015283435271

/-! ## A113284.P2312048835880616379

`A113281(n+1+n)+A000007(n+1)`
-/

namespace A113284.P2312048835880616379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (n + 1 + n) + A000007 (n + 1)

end

end A113284.P2312048835880616379

/-! ## A113284.P5618078008630798311

`A113281(n+1+n)+A000038(n+1)`
-/

namespace A113284.P5618078008630798311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 (n + 1 + n) + A000038 (n + 1)

end

end A113284.P5618078008630798311

/-!
# A113287: Triangle T, read by rows, where row n of T equals row n of matrix (n+1)-th power of triangle A112555.

The programs for A113287, there is no canonical definition to state claims against.
-/

/-! ## A113287.P6460338856926680230

`A112555(n)*A183110(n+1)`
-/

namespace A113287.P6460338856926680230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112555 n * A183110 (n + 1)

end

end A113287.P6460338856926680230

/-! ## A113287.P11572177204516619617

`A122188(n+1)*A183110(n+1)*A108561(n)`
-/

namespace A113287.P11572177204516619617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122188 (n + 1) * A183110 (n + 1) * A108561 n

end

end A113287.P11572177204516619617

/-! ## A113287.P16710969388755753614

`Δ[-A010751(n+1)]*A108561(n)*A183110(n+1)`
-/

namespace A113287.P16710969388755753614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A108561 n * A183110 (n + 1)

end

end A113287.P16710969388755753614

/-! ## A113287.P7567074925260793117

`A122188(n+1)*A183110(n+1)*A112465(A061579(n))`
-/

namespace A113287.P7567074925260793117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122188 (n + 1) * A183110 (n + 1) * A112465 (A061579 n).toNat

end

end A113287.P7567074925260793117

/-! ## A113287.P6621953741606706749

`A033999(A002024(n+2))*A108561(n)*A183110(n+1)`
-/

namespace A113287.P6621953741606706749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002024 (n + 2)).toNat * A108561 n * A183110 (n + 1)

end

end A113287.P6621953741606706749

/-! ## A113287.P954653423823316122

`A112465(A114327(n)+n)*A122188(n+1)*A183110(n+1)`
-/

namespace A113287.P954653423823316122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A114327 n + (n : ℤ)).toNat * A122188 (n + 1) * A183110 (n + 1)

end

end A113287.P954653423823316122

/-! ## A113287.P9961786719139936845

`(2*A059259(n)-A007318(n))*A122188(n+1)*A183110(n+1)`
-/

namespace A113287.P9961786719139936845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A059259 n - A007318 n) * A122188 (n + 1) * A183110 (n + 1)

end

end A113287.P9961786719139936845

/-!
# A113292: Column 0 of triangle A113290, which is the matrix log of A113287.

The programs for A113292, there is no canonical definition to state claims against.
-/

/-! ## A113292.P17983401832498769668

`A113290(∑[n])`
-/

namespace A113292.P17983401832498769668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113292.P17983401832498769668

/-! ## A113292.P10320179625327996371

`A113290(A000217(n))%(4^n)`
-/

namespace A113292.P10320179625327996371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113290 (A000217 n).toNat) (4 ^ n : ℤ)

end

end A113292.P10320179625327996371

/-! ## A113292.P8479498186398258904

`A280832(n+1)+A113290(C(n+1, 2))`
-/

namespace A113292.P8479498186398258904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280832 (n + 1) + A113290 (Nat.choose (n + 1) 2)

end

end A113292.P8479498186398258904

/-! ## A113292.P10634017915287991004

`A280832(n+1)+A113290((n²+n)/2)`
-/

namespace A113292.P10634017915287991004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280832 (n + 1) + A113290 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A113292.P10634017915287991004

/-! ## A113292.P1186820458278345690

`A184955(n)+A113290(A000217(n))`
-/

namespace A113292.P1186820458278345690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A113290 (A000217 n).toNat

end

end A113292.P1186820458278345690

/-!
# A113293: Numbers expressible as the difference of two Lucas 3-step numbers.

The programs for A113293, there is no canonical definition to state claims against.
-/

/-! ## A113293.P5872566230585557992

`∑[A001222(A004089(n+1)²)]`
-/

namespace A113293.P5872566230585557992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004089 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113293.P5872566230585557992

/-! ## A113293.P18121168546951087379

`eq[A007318(A300966(n+1)), A000034(n)]`
-/

namespace A113293.P18121168546951087379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A300966 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113293.P18121168546951087379

/-! ## A113293.P9122299957875495782

`eq[A007318(A300966(n+1)), A033999(n)]`
-/

namespace A113293.P9122299957875495782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A300966 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113293.P9122299957875495782

/-! ## A113293.P5581454681768118598

`eq[A001511(n+1), A209635(A331485(n))]`
-/

namespace A113293.P5581454681768118598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (A331485 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113293.P5581454681768118598

/-! ## A113293.P17870112622321749506

`lt[A122856(A059820(n)), A122856(2*n+1)]`
-/

namespace A113293.P17870112622321749506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (A059820 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113293.P17870112622321749506

/-!
# A113295: Prime differences of Lucas 4-step numbers.

The programs for A113295, there is no canonical definition to state claims against.
-/

/-! ## A113295.P1892467314490042600

`p?[A113294(n+1)]`
-/

namespace A113295.P1892467314490042600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113295.P1892467314490042600

/-! ## A113295.P10148915263746832711

`p?[record[A113294(A102885(n))]]`
-/

namespace A113295.P10148915263746832711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113294 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113295.P10148915263746832711

/-! ## A113295.P13969911152897677805

`p?[record[A113294(A112382(n))]]`
-/

namespace A113295.P13969911152897677805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113294 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113295.P13969911152897677805

/-! ## A113295.P1513127399315845962

`record[A020639(A113294(n+2))]`
-/

namespace A113295.P1513127399315845962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A113294 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113295.P1513127399315845962

/-!
# A113296: Cumulative product of double factorial A006882.

The programs for A113296, there is no canonical definition to state claims against.
-/

/-! ## A113296.P17869439584444595623

`a(n-2)*n!` with `a(0)=1, a(1)=1`
-/

namespace A113296.P17869439584444595623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * Nat.factorial n

end

end A113296.P17869439584444595623

/-! ## A113296.P12985120957430545757

`∏[a(n-2)*n]` with `a(0)=1, a(1)=1`
-/

namespace A113296.P12985120957430545757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A113296.P12985120957430545757

/-! ## A113296.P8748106691471012064

`∏[n!/a(n-1)]` with `a(0)=1`
-/

namespace A113296.P8748106691471012064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.factorial n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A113296.P8748106691471012064

/-! ## A113296.P17524328503669880638

`∏[∏[n/a(n-1)]]` with `a(0)=1`
-/

namespace A113296.P17524328503669880638
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A113296.P17524328503669880638

/-! ## A113296.P8312645098563993620

`∏[floor(n*a(floor(n/(2/n+1))))]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A113296.P8312645098563993620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 ⌊(n : ℚ) / (2 / (n : ℚ) + 1)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A113296.P8312645098563993620

/-!
# A113297: Expansion of chi(-q) / chi(-q^7) in powers of q where chi() is a Ramanujan theta function.

The programs for A113297, there is no canonical definition to state claims against.
-/

/-! ## A113297.P17901693570251736165

`A112197(Δ[n²])`
-/

namespace A113297.P17901693570251736165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112197 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113297.P17901693570251736165

/-! ## A113297.P1559688703125628086

`-A112198(2*n+1)`
-/

namespace A113297.P1559688703125628086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A112198 (2 * n + 1)

end

end A113297.P1559688703125628086

/-! ## A113297.P16790662540199535619

`A000035(2*n)-A112198(2*n+1)`
-/

namespace A113297.P16790662540199535619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A112198 (2 * n + 1)

end

end A113297.P16790662540199535619

/-! ## A113297.P4830820198340805444

`1-(A112198(2*n+1)+A000034(2*n))`
-/

namespace A113297.P4830820198340805444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A112198 (2 * n + 1) + A000034 (2 * n))

end

end A113297.P4830820198340805444

/-! ## A113297.P14605911268560009394

`A007814(2*n+1)-A112198(2*n+1)`
-/

namespace A113297.P14605911268560009394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A112198 (2 * n + 1)

end

end A113297.P14605911268560009394

/-! ## A113297.P16113330393894205412

`1-(A112198(2*n+1)+A033999(2*n))`
-/

namespace A113297.P16113330393894205412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A112198 (2 * n + 1) + A033999 (2 * n))

end

end A113297.P16113330393894205412

/-! ## A113297.P5478916881915720941

`1-(A266303(2*n)+A112198(2*n+1))`
-/

namespace A113297.P5478916881915720941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A266303 (2 * n) + A112198 (2 * n + 1))

end

end A113297.P5478916881915720941

/-! ## A113297.P5198790238802307102

`A033999(2*n+1)*A112198(2*n+1)`
-/

namespace A113297.P5198790238802307102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A112198 (2 * n + 1)

end

end A113297.P5198790238802307102

/-! ## A113297.P12338800180373563649

`A057077(n)²*A112197(A005408(n))`
-/

namespace A113297.P12338800180373563649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A112197 (A005408 n).toNat

end

end A113297.P12338800180373563649

/-! ## A113297.P11955664491303195497

`A239496(A266303(2*n))-A112198(2*n+1)`
-/

namespace A113297.P11955664491303195497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239496 (A266303 (2 * n)).toNat - A112198 (2 * n + 1)

end

end A113297.P11955664491303195497

/-! ## A113297.P6118199652693051895

`A112198(2*n+1)*A112198(A266303(2*n)²)`
-/

namespace A113297.P6118199652693051895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112198 (2 * n + 1) * A112198 (A266303 (2 * n) ^ 2).toNat

end

end A113297.P6118199652693051895

/-! ## A113297.P14388537954547802401

`A112207(3*n+2)-A112198(2*n+1)`
-/

namespace A113297.P14388537954547802401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (3 * n + 2) - A112198 (2 * n + 1)

end

end A113297.P14388537954547802401

/-! ## A113297.P4496264958181548188

`A008683(A109308(n+1))*A112198(n+1+n)`
-/

namespace A113297.P4496264958181548188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A109308 (n + 1)).toNat * A112198 (n + 1 + n)

end

end A113297.P4496264958181548188

/-! ## A113297.P13800510380190162291

`A008683(A090705(2*(n+1)))*A112198(2*n+1)`
-/

namespace A113297.P13800510380190162291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A090705 (2 * (n + 1))).toNat * A112198 (2 * n + 1)

end

end A113297.P13800510380190162291

/-! ## A113297.P5428784374894456324

`A112197(2*n+1)%(2^(n+1))`
-/

namespace A113297.P5428784374894456324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112197 (2 * n + 1)) (2 ^ (n + 1) : ℤ)

end

end A113297.P5428784374894456324

/-!
# A113298: Expansion of q^(1/12) * eta(q^10)^5 / ( eta(q^2) * eta(q^5)^2 * eta(q^20)^2) in powers of q.

The programs for A113298, there is no canonical definition to state claims against.
-/

/-! ## A113298.P523265248447081497

`and(record[A193903(n)], A119620(n))`
-/

namespace A113298.P523265248447081497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A119620 n)

end

end A113298.P523265248447081497

/-! ## A113298.P10781086964050485319

`and(A000069(A000079(n)), A119620(n))`
-/

namespace A113298.P10781086964050485319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000069 (A000079 n).toNat) (A119620 n)

end

end A113298.P10781086964050485319

/-! ## A113298.P18404877573621761263

`and(A075427(n), A117707(A016116(n)))`
-/

namespace A113298.P18404877573621761263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075427 n) (A117707 (A016116 n).toNat)

end

end A113298.P18404877573621761263

/-! ## A113298.P17462836186178658828

`and(A052905(A279811(n)), A119620(n))`
-/

namespace A113298.P17462836186178658828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052905 (A279811 n).toNat) (A119620 n)

end

end A113298.P17462836186178658828

/-! ## A113298.P18391643283112736492

`A119620(n)-A128174(A014234(n+1))`
-/

namespace A113298.P18391643283112736492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 n - A128174 (A014234 (n + 1)).toNat

end

end A113298.P18391643283112736492

/-!
# A113299: Expansion of solution to an algebraic functional equation.

The programs for A113299, there is no canonical definition to state claims against.
-/

/-! ## A113299.P10319507324526418620

`A093126(2*(n+1))`
-/

namespace A113299.P10319507324526418620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093126 (2 * (n + 1))

end

end A113299.P10319507324526418620

/-! ## A113299.P13551498952063437697

`record[A093126(xor(1, n)+1)]`
-/

namespace A113299.P13551498952063437697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093126 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113299.P13551498952063437697

/-! ## A113299.P4729413976972644215

`record[A093126(n+1)^(n%2)]`
-/

namespace A113299.P4729413976972644215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093126 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113299.P4729413976972644215

/-! ## A113299.P4195485939648620375

`record[A093126(A004442(n)+1)]`
-/

namespace A113299.P4195485939648620375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093126 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113299.P4195485939648620375

/-! ## A113299.P5144997229429967415

`record[A093126(A014681(n+1))]`
-/

namespace A113299.P5144997229429967415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093126 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113299.P5144997229429967415

