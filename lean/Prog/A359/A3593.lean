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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A359300: a(n) = (distance from n to nearest prime >= n) - (distance from n to nearest prime <= n).

The programs for A359300, the canonical program `A359300.P5805329302892074238` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359300 has offset 2).

The definition of A359300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359300.P5805329302892074238

`A007917(n+2)+A007918(n+2)-2*(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359300

/-- `A007917(n+2)+A007918(n+2)-2*(n+2)` -/
def P5805329302892074238.Spec : Prop :=
  ∀ n, P5805329302892074238.a n = A359300 (n + 2)

theorem P5805329302892074238.correct : P5805329302892074238.Spec := by
  intro n
  simp only [A359300, Nat.add_sub_cancel]

end A359300

/-! ## A359300.P9022589032381626291

`-(2*A063933(n+2))`
-/

namespace A359300.P9022589032381626291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * A063933 (n + 2))

end

end A359300.P9022589032381626291

namespace A359300

/-- `-(2*A063933(n+2))` -/
def P9022589032381626291.Spec : Prop :=
  ∀ n, P9022589032381626291.a n = A359300 (n + 2)

end A359300

/-! ## A359300.P4843627418945878480

`A119257(n+2)-(n+2)`
-/

namespace A359300.P4843627418945878480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 2) - (n + 2 : ℤ)

end

end A359300.P4843627418945878480

namespace A359300

/-- `A119257(n+2)-(n+2)` -/
def P4843627418945878480.Spec : Prop :=
  ∀ n, P4843627418945878480.a n = A359300 (n + 2)

end A359300

/-! ## A359300.P15511911984929668760

`2*(A063932(n+2)-(n+2))`
-/

namespace A359300.P15511911984929668760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063932 (n + 2) - (n + 2 : ℤ))

end

end A359300.P15511911984929668760

namespace A359300

/-- `2*(A063932(n+2)-(n+2))` -/
def P15511911984929668760.Spec : Prop :=
  ∀ n, P15511911984929668760.a n = A359300 (n + 2)

end A359300

/-! ## A359300.P15137731648883058386

`A063933(n+2)*A113679(n)`
-/

namespace A359300.P15137731648883058386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063933 (n + 2) * A113679 n

end

end A359300.P15137731648883058386

namespace A359300

/-- `A063933(n+2)*A113679(n)` -/
def P15137731648883058386.Spec : Prop :=
  ∀ n, P15137731648883058386.a n = A359300 (n + 2)

end A359300

/-! ## A359300.P10070037077430120154

`A087030(n+1)-(A175851(n+2)+A151800(n+1))`
-/

namespace A359300.P10070037077430120154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087030 (n + 1) - (A175851 (n + 2) + A151800 (n + 1))

end

end A359300.P10070037077430120154

namespace A359300

/-- `A087030(n+1)-(A175851(n+2)+A151800(n+1))` -/
def P10070037077430120154.Spec : Prop :=
  ∀ n, P10070037077430120154.a n = A359300 (n + 2)

end A359300

/-! ## A359300.P6853931216892300716

`A013632(n+1)-A049711(n+3)`
-/

namespace A359300.P6853931216892300716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) - A049711 (n + 3)

end

end A359300.P6853931216892300716

namespace A359300

/-- `A013632(n+1)-A049711(n+3)` -/
def P6853931216892300716.Spec : Prop :=
  ∀ n, P6853931216892300716.a n = A359300 (n + 2)

end A359300

/-! ## A359300.P13742393728728562633

`A007920(n+2)-A064722(n+2)`
-/

namespace A359300.P13742393728728562633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 2) - A064722 (n + 2)

end

end A359300.P13742393728728562633

namespace A359300

/-- `A007920(n+2)-A064722(n+2)` -/
def P13742393728728562633.Spec : Prop :=
  ∀ n, P13742393728728562633.a n = A359300 (n + 2)

end A359300

/-! ## A359300.P17786780368834546370

`A072680(n+2)-A064722(n+2)-A064722(n+2)`
-/

namespace A359300.P17786780368834546370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2) - A064722 (n + 2) - A064722 (n + 2)

end

end A359300.P17786780368834546370

namespace A359300

/-- `A072680(n+2)-A064722(n+2)-A064722(n+2)` -/
def P17786780368834546370.Spec : Prop :=
  ∀ n, P17786780368834546370.a n = A359300 (n + 2)

end A359300

/-!
# A359302: Dirichlet g.f.: zeta(s)^2/zeta(3*s-2).

The programs for A359302, there is no canonical definition to state claims against.
-/

/-! ## A359302.P2704001034749443624

`A000005(n+1)-A151669(A094439(3*(n+1)))`
-/

namespace A359302.P2704001034749443624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A151669 (A094439 (3 * (n + 1))).toNat

end

end A359302.P2704001034749443624

/-! ## A359302.P8502880679126457478

`A000005(n+1)-A329401(3*n+1)%(2^val(n+1, 2))`
-/

namespace A359302.P8502880679126457478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - Int.tmod (A329401 (3 * n + 1)) (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A359302.P8502880679126457478

/-! ## A359302.P13154715190196804125

`C(∏{e}[n+1, #+1], floor(n/∏{p}[n+1, #])!!)`
-/

namespace A359302.P13154715190196804125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (Nat.factorial (Nat.factorial ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋.toNat))

end

end A359302.P13154715190196804125

/-! ## A359302.P3370612354154574540

`∏{e}[n+1, A072175(#^n)]`
-/

namespace A359302.P3370612354154574540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A072175 (Nat.factorization (f1 n) p ^ n)

end

end A359302.P3370612354154574540

/-! ## A359302.P13720456227250099888

`and(∏{e}[n+1, #+1], A091847(Δ[n²]))`
-/

namespace A359302.P13720456227250099888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A091847 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

end

end A359302.P13720456227250099888

/-!
# A359303: Bitwise encoding of the state of a 1D cellular automaton after n steps from ...111000... where adjacent cells swap 01 <-> 10 when within triples 110 or 011.

The programs for A359303, there is no canonical definition to state claims against.
-/

/-! ## A359303.P14961008667628529779

`A030101(A035327(A360142(n+1)))+A360141(n+1)*A062383(A035327(A360142(n+1)))`
-/

namespace A359303.P14961008667628529779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A035327 (A360142 (n + 1)).toNat).toNat + A360141 (n + 1) * A062383 (A035327 (A360142 (n + 1)).toNat).toNat

end

end A359303.P14961008667628529779

/-!
# A359304: Oblong numbers which are products of five distinct primes.

The programs for A359304, there is no canonical definition to state claims against.
-/

/-! ## A359304.P18221440436871522607

`∩[n²+n, A046387(n+1)]`
-/

namespace A359304.P18221440436871522607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P18221440436871522607

/-! ## A359304.P2756939566264118821

`∩[A046387(n+1), A002378(n)]`
-/

namespace A359304.P2756939566264118821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P2756939566264118821

/-! ## A359304.P13646856346270090007

`∩[A046387(n+1), A060798(n+1)]`
-/

namespace A359304.P13646856346270090007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P13646856346270090007

/-! ## A359304.P1855189183458990502

`∩[A046387(n+1), A098827(n+1)]`
-/

namespace A359304.P1855189183458990502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P1855189183458990502

/-! ## A359304.P4789727832975759384

`∩[A046387(n+1), A229882(n+1)]`
-/

namespace A359304.P4789727832975759384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P4789727832975759384

/-! ## A359304.P11803838872668330288

`∩[A046387(n+1), A368249(n+1)]`
-/

namespace A359304.P11803838872668330288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P11803838872668330288

/-! ## A359304.P4122751994269665120

`∩[A046387(n+1), A390326(n+1)]`
-/

namespace A359304.P4122751994269665120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P4122751994269665120

/-! ## A359304.P9682650105457916210

`∩[A051270(n+1), A098827(n+1)]`
-/

namespace A359304.P9682650105457916210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P9682650105457916210

/-! ## A359304.P2317272937999115850

`∩[A051270(n+1), A229882(n+1)]`
-/

namespace A359304.P2317272937999115850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359304.P2317272937999115850

/-!
# A359305: Number of divisors of 6*n-1 of form 6*k+1.

The programs for A359305, the canonical program `A359305.P15500855340478181087` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359305 has offset 1).

The definition of A359305 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279060, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359305.P15500855340478181087

`A279060(6*(n+1)-1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359305

/-- `A279060(6*(n+1)-1)` -/
def P15500855340478181087.Spec : Prop :=
  ∀ n, P15500855340478181087.a n = A359305 (n + 1)

theorem P15500855340478181087.correct : P15500855340478181087.Spec := by
  intro n
  simp only [A359305, Nat.add_sub_cancel]

end A359305

/-! ## A359305.P16240832921570352139

`A319995(6*(n+1)-1)`
-/

namespace A359305.P16240832921570352139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * (n + 1) - 1)

end

end A359305.P16240832921570352139

namespace A359305

/-- `A319995(6*(n+1)-1)` -/
def P16240832921570352139.Spec : Prop :=
  ∀ n, P16240832921570352139.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P6768777857746511849

`A000005(A016969(n))/2`
-/

namespace A359305.P6768777857746511849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A016969 n).toNat : ℚ) / 2

end

end A359305.P6768777857746511849

namespace A359305

/-- `A000005(A016969(n))/2` -/
def P6768777857746511849.Spec : Prop :=
  ∀ n, P6768777857746511849.a n = (A359305 (n + 1) : ℚ)

end A359305

/-! ## A359305.P11462302725019786751

`A320001(6*n+5)`
-/

namespace A359305.P11462302725019786751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (6 * n + 5)

end

end A359305.P11462302725019786751

namespace A359305

/-- `A320001(6*n+5)` -/
def P11462302725019786751.Spec : Prop :=
  ∀ n, P11462302725019786751.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P7814984025398543785

`A000005(6*n+5)/2`
-/

namespace A359305.P7814984025398543785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (6 * n + 5) : ℚ) / 2

end

end A359305.P7814984025398543785

namespace A359305

/-- `A000005(6*n+5)/2` -/
def P7814984025398543785.Spec : Prop :=
  ∀ n, P7814984025398543785.a n = (A359305 (n + 1) : ℚ)

end A359305

/-! ## A359305.P1538229485198721703

`A025480(A000005(6*n+5))`
-/

namespace A359305.P1538229485198721703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000005 (6 * n + 5)).toNat

end

end A359305.P1538229485198721703

namespace A359305

/-- `A025480(A000005(6*n+5))` -/
def P1538229485198721703.Spec : Prop :=
  ∀ n, P1538229485198721703.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P13729627964716389401

`A320005(2*A016969(n))`
-/

namespace A359305.P13729627964716389401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (2 * A016969 n).toNat

end

end A359305.P13729627964716389401

namespace A359305

/-- `A320005(2*A016969(n))` -/
def P13729627964716389401.Spec : Prop :=
  ∀ n, P13729627964716389401.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P15232494520459603237

`A359211(2*(n+1))`
-/

namespace A359305.P15232494520459603237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (2 * (n + 1))

end

end A359305.P15232494520459603237

namespace A359305

/-- `A359211(2*(n+1))` -/
def P15232494520459603237.Spec : Prop :=
  ∀ n, P15232494520459603237.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P4647696801727178759

`A359306(2*(n+1))`
-/

namespace A359305.P4647696801727178759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359306 (2 * (n + 1))

end

end A359305.P4647696801727178759

namespace A359305

/-- `A359306(2*(n+1))` -/
def P4647696801727178759.Spec : Prop :=
  ∀ n, P4647696801727178759.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P8621092975229921932

`A359324(2*(n+1))`
-/

namespace A359305.P8621092975229921932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359324 (2 * (n + 1))

end

end A359305.P8621092975229921932

namespace A359305

/-- `A359324(2*(n+1))` -/
def P8621092975229921932.Spec : Prop :=
  ∀ n, P8621092975229921932.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P4134635050162119717

`A366441(2*(n+1))/2`
-/

namespace A359305.P4134635050162119717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366441 (2 * (n + 1)) : ℚ) / 2

end

end A359305.P4134635050162119717

namespace A359305

/-- `A366441(2*(n+1))/2` -/
def P4134635050162119717.Spec : Prop :=
  ∀ n, P4134635050162119717.a n = (A359305 (n + 1) : ℚ)

end A359305

/-! ## A359305.P13826373246212762152

`A372714(2*(n+1))/2`
-/

namespace A359305.P13826373246212762152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372714 (2 * (n + 1)) : ℚ) / 2

end

end A359305.P13826373246212762152

namespace A359305

/-- `A372714(2*(n+1))/2` -/
def P13826373246212762152.Spec : Prop :=
  ∀ n, P13826373246212762152.a n = (A359305 (n + 1) : ℚ)

end A359305

/-! ## A359305.P15124748565622376138

`A341594(A016777(2*n+1)+1)`
-/

namespace A359305.P15124748565622376138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (A016777 (2 * n + 1) + 1).toNat

end

end A359305.P15124748565622376138

namespace A359305

/-- `A341594(A016777(2*n+1)+1)` -/
def P15124748565622376138.Spec : Prop :=
  ∀ n, P15124748565622376138.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P12937616737723038807

`A359307(3*(n+1))`
-/

namespace A359305.P12937616737723038807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359307 (3 * (n + 1))

end

end A359305.P12937616737723038807

namespace A359305

/-- `A359307(3*(n+1))` -/
def P12937616737723038807.Spec : Prop :=
  ∀ n, P12937616737723038807.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P5601260304858722534

`A359325(3*(n+1))`
-/

namespace A359305.P5601260304858722534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (3 * (n + 1))

end

end A359305.P5601260304858722534

namespace A359305

/-- `A359325(3*(n+1))` -/
def P5601260304858722534.Spec : Prop :=
  ∀ n, P5601260304858722534.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P3640570068064365556

`A193773(3*n+2)`
-/

namespace A359305.P3640570068064365556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (3 * n + 2)

end

end A359305.P3640570068064365556

namespace A359305

/-- `A193773(3*n+2)` -/
def P3640570068064365556.Spec : Prop :=
  ∀ n, P3640570068064365556.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P275447041877851442

`A293895(6*n+5)`
-/

namespace A359305.P275447041877851442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (6 * n + 5)

end

end A359305.P275447041877851442

namespace A359305

/-- `A293895(6*n+5)` -/
def P275447041877851442.Spec : Prop :=
  ∀ n, P275447041877851442.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P8720242566235717484

`A099774(3*(n+1))/2`
-/

namespace A359305.P8720242566235717484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099774 (3 * (n + 1)) : ℚ) / 2

end

end A359305.P8720242566235717484

namespace A359305

/-- `A099774(3*(n+1))/2` -/
def P8720242566235717484.Spec : Prop :=
  ∀ n, P8720242566235717484.a n = (A359305 (n + 1) : ℚ)

end A359305

/-! ## A359305.P15220903048786101743

`A341675(A006370(2*n+1)+1)`
-/

namespace A359305.P15220903048786101743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A006370 (2 * n + 1) + 1).toNat

end

end A359305.P15220903048786101743

namespace A359305

/-- `A341675(A006370(2*n+1)+1)` -/
def P15220903048786101743.Spec : Prop :=
  ∀ n, P15220903048786101743.a n = A359305 (n + 1)

end A359305

/-! ## A359305.P16803044763109712530

`A341675(A008589(n+1)-(n+2))`
-/

namespace A359305.P16803044763109712530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A008589 (n + 1) - (n + 2 : ℤ)).toNat

end

end A359305.P16803044763109712530

namespace A359305

/-- `A341675(A008589(n+1)-(n+2))` -/
def P16803044763109712530.Spec : Prop :=
  ∀ n, P16803044763109712530.a n = A359305 (n + 1)

end A359305

/-!
# A359306: Number of divisors of 6*n-2 of form 6*k+1.

The programs for A359306, the canonical program `A359306.P1809214433957245059` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359306 has offset 1).

The definition of A359306 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279060, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359306.P1809214433957245059

`A279060(6*(n+1)-2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359306

/-- `A279060(6*(n+1)-2)` -/
def P1809214433957245059.Spec : Prop :=
  ∀ n, P1809214433957245059.a n = A359306 (n + 1)

theorem P1809214433957245059.correct : P1809214433957245059.Spec := by
  intro n
  simp only [A359306, Nat.add_sub_cancel]

end A359306

/-! ## A359306.P4640871170865698393

`A320001(3*n+2)`
-/

namespace A359306.P4640871170865698393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (3 * n + 2)

end

end A359306.P4640871170865698393

namespace A359306

/-- `A320001(3*n+2)` -/
def P4640871170865698393.Spec : Prop :=
  ∀ n, P4640871170865698393.a n = A359306 (n + 1)

end A359306

/-! ## A359306.P10700886125060868194

`A359308(2*(n+1))`
-/

namespace A359306.P10700886125060868194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359308 (2 * (n + 1))

end

end A359306.P10700886125060868194

namespace A359306

/-- `A359308(2*(n+1))` -/
def P10700886125060868194.Spec : Prop :=
  ∀ n, P10700886125060868194.a n = A359306 (n + 1)

end A359306

/-! ## A359306.P14665759346506455785

`A359212(2*(n+1))-A359211(n+1)`
-/

namespace A359306.P14665759346506455785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359212 (2 * (n + 1)) - A359211 (n + 1)

end

end A359306.P14665759346506455785

namespace A359306

/-- `A359212(2*(n+1))-A359211(n+1)` -/
def P14665759346506455785.Spec : Prop :=
  ∀ n, P14665759346506455785.a n = A359306 (n + 1)

end A359306

/-! ## A359306.P2217542614512451171

`A359326(2*(n+1))+A033687(2*n+1)`
-/

namespace A359306.P2217542614512451171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (2 * (n + 1)) + A033687 (2 * n + 1)

end

end A359306.P2217542614512451171

namespace A359306

/-- `A359326(2*(n+1))+A033687(2*n+1)` -/
def P2217542614512451171.Spec : Prop :=
  ∀ n, P2217542614512451171.a n = A359306 (n + 1)

end A359306

/-! ## A359306.P10295200908100424583

`A001817(A075677(n+1))`
-/

namespace A359306.P10295200908100424583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A075677 (n + 1)).toNat

end

end A359306.P10295200908100424583

namespace A359306

/-- `A001817(A075677(n+1))` -/
def P10295200908100424583.Spec : Prop :=
  ∀ n, P10295200908100424583.a n = A359306 (n + 1)

end A359306

/-! ## A359306.P11201106696352250310

`A001817(A067745(2*(n+1)))`
-/

namespace A359306.P11201106696352250310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A067745 (2 * (n + 1))).toNat

end

end A359306.P11201106696352250310

namespace A359306

/-- `A001817(A067745(2*(n+1)))` -/
def P11201106696352250310.Spec : Prop :=
  ∀ n, P11201106696352250310.a n = A359306 (n + 1)

end A359306

/-!
# A359307: Number of divisors of 6*n-3 of form 6*k+1.

The programs for A359307, the canonical program `A359307.P11381744597922647443` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359307 has offset 1).

The definition of A359307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279060, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359307.P11381744597922647443

`A279060(6*(n+1)-3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359307

/-- `A279060(6*(n+1)-3)` -/
def P11381744597922647443.Spec : Prop :=
  ∀ n, P11381744597922647443.a n = A359307 (n + 1)

theorem P11381744597922647443.correct : P11381744597922647443.Spec := by
  intro n
  simp only [A359307, Nat.add_sub_cancel]

end A359307

/-! ## A359307.P16467744453300364154

`∑{d}[2*n+1, (#%3)%2]`
-/

namespace A359307.P16467744453300364154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % 3 % 2

end

end A359307.P16467744453300364154

namespace A359307

/-- `∑{d}[2*n+1, (#%3)%2]` -/
def P16467744453300364154.Spec : Prop :=
  ∀ n, (P16467744453300364154.a n : ℤ) = A359307 (n + 1)

end A359307

/-! ## A359307.P18024901556899445082

`A320001(2*(2*n+1))`
-/

namespace A359307.P18024901556899445082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (2 * (2 * n + 1))

end

end A359307.P18024901556899445082

namespace A359307

/-- `A320001(2*(2*n+1))` -/
def P18024901556899445082.Spec : Prop :=
  ∀ n, P18024901556899445082.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P7055362732629990185

`A359325(n+1)+A033762(n)`
-/

namespace A359307.P7055362732629990185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (n + 1) + A033762 n

end

end A359307.P7055362732629990185

namespace A359307

/-- `A359325(n+1)+A033762(n)` -/
def P7055362732629990185.Spec : Prop :=
  ∀ n, P7055362732629990185.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P2179581343289239445

`A035218(2*n+1)-A359325(n+1)`
-/

namespace A359307.P2179581343289239445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (2 * n + 1) - A359325 (n + 1)

end

end A359307.P2179581343289239445

namespace A359307

/-- `A035218(2*n+1)-A359325(n+1)` -/
def P2179581343289239445.Spec : Prop :=
  ∀ n, P2179581343289239445.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P5764225518669980306

`A001817(Δ[n²])`
-/

namespace A359307.P5764225518669980306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359307.P5764225518669980306

namespace A359307

/-- `A001817(Δ[n²])` -/
def P5764225518669980306.Spec : Prop :=
  ∀ n, P5764225518669980306.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P10083578990832511205

`A364011(Δ[n²])`
-/

namespace A359307.P10083578990832511205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359307.P10083578990832511205

namespace A359307

/-- `A364011(Δ[n²])` -/
def P10083578990832511205.Spec : Prop :=
  ∀ n, P10083578990832511205.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P2096183544608175105

`A364204(Δ[n²])`
-/

namespace A359307.P2096183544608175105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359307.P2096183544608175105

namespace A359307

/-- `A364204(Δ[n²])` -/
def P2096183544608175105.Spec : Prop :=
  ∀ n, P2096183544608175105.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P18301676939086609271

`abs(A364011(2*n+1))`
-/

namespace A359307.P18301676939086609271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364011 (2 * n + 1)|

end

end A359307.P18301676939086609271

namespace A359307

/-- `abs(A364011(2*n+1))` -/
def P18301676939086609271.Spec : Prop :=
  ∀ n, P18301676939086609271.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P8120291570912826219

`abs(A364204(2*n+1))`
-/

namespace A359307.P8120291570912826219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364204 (2 * n + 1)|

end

end A359307.P8120291570912826219

namespace A359307

/-- `abs(A364204(2*n+1))` -/
def P8120291570912826219.Spec : Prop :=
  ∀ n, P8120291570912826219.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P8772014300209827823

`dr(A001817(2*n+1))`
-/

namespace A359307.P8772014300209827823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001817 (2 * n + 1))

end

end A359307.P8772014300209827823

namespace A359307

/-- `dr(A001817(2*n+1))` -/
def P8772014300209827823.Spec : Prop :=
  ∀ n, (P8772014300209827823.a n : ℤ) = A359307 (n + 1)

end A359307

/-! ## A359307.P11468820498337025859

`val(A351081(2*n+1), 2)`
-/

namespace A359307.P11468820498337025859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351081 (2 * n + 1)).toNat 2

end

end A359307.P11468820498337025859

namespace A359307

/-- `val(A351081(2*n+1), 2)` -/
def P11468820498337025859.Spec : Prop :=
  ∀ n, (P11468820498337025859.a n : ℤ) = A359307 (n + 1)

end A359307

/-! ## A359307.P16653589784770898312

`val(A351091(2*n+1), 2)`
-/

namespace A359307.P16653589784770898312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351091 (2 * n + 1)).toNat 2

end

end A359307.P16653589784770898312

namespace A359307

/-- `val(A351091(2*n+1), 2)` -/
def P16653589784770898312.Spec : Prop :=
  ∀ n, (P16653589784770898312.a n : ℤ) = A359307 (n + 1)

end A359307

/-! ## A359307.P17621866982941500423

`∑{d}[2*n+1, A088911(#)]`
-/

namespace A359307.P17621866982941500423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088911 d

end

end A359307.P17621866982941500423

namespace A359307

/-- `∑{d}[2*n+1, A088911(#)]` -/
def P17621866982941500423.Spec : Prop :=
  ∀ n, P17621866982941500423.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P14097092766523219809

`∑{d}[2*n+1, A095130(#)]`
-/

namespace A359307.P14097092766523219809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A095130 d

end

end A359307.P14097092766523219809

namespace A359307

/-- `∑{d}[2*n+1, A095130(#)]` -/
def P14097092766523219809.Spec : Prop :=
  ∀ n, P14097092766523219809.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P10836819534861213111

`∑{d}[2*n+1, A105964(#)]`
-/

namespace A359307.P10836819534861213111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A105964 d

end

end A359307.P10836819534861213111

namespace A359307

/-- `∑{d}[2*n+1, A105964(#)]` -/
def P10836819534861213111.Spec : Prop :=
  ∀ n, P10836819534861213111.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P2152458858817521837

`∑{d}[2*n+1, A115357(#)]`
-/

namespace A359307.P2152458858817521837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115357 d

end

end A359307.P2152458858817521837

namespace A359307

/-- `∑{d}[2*n+1, A115357(#)]` -/
def P2152458858817521837.Spec : Prop :=
  ∀ n, P2152458858817521837.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P6492812439265118155

`∑{d}[2*n+1, A117199(#)]`
-/

namespace A359307.P6492812439265118155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117199 d

end

end A359307.P6492812439265118155

namespace A359307

/-- `∑{d}[2*n+1, A117199(#)]` -/
def P6492812439265118155.Spec : Prop :=
  ∀ n, P6492812439265118155.a n = A359307 (n + 1)

end A359307

/-! ## A359307.P2025224328296798277

`A326394(A038502(2*n+1))`
-/

namespace A359307.P2025224328296798277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (A038502 (2 * n + 1)).toNat

end

end A359307.P2025224328296798277

namespace A359307

/-- `A326394(A038502(2*n+1))` -/
def P2025224328296798277.Spec : Prop :=
  ∀ n, P2025224328296798277.a n = A359307 (n + 1)

end A359307

/-!
# A359308: Number of divisors of 6*n-4 of form 6*k+1.

The programs for A359308, the canonical program `A359308.P14380012927581483637` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359308 has offset 1).

The definition of A359308 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279060, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359308.P14380012927581483637

`A279060(6*(n+1)-4)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359308

/-- `A279060(6*(n+1)-4)` -/
def P14380012927581483637.Spec : Prop :=
  ∀ n, P14380012927581483637.a n = A359308 (n + 1)

theorem P14380012927581483637.correct : P14380012927581483637.Spec := by
  intro n
  simp only [A359308, Nat.add_sub_cancel]

end A359308

/-! ## A359308.P5510507396736061356

`A320001(A008458(n)+2)`
-/

namespace A359308.P5510507396736061356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A008458 n + 2).toNat

end

end A359308.P5510507396736061356

namespace A359308

/-- `A320001(A008458(n)+2)` -/
def P5510507396736061356.Spec : Prop :=
  ∀ n, P5510507396736061356.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P18014520564675482106

`A320001(A016945(n)-1)`
-/

namespace A359308.P18014520564675482106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A016945 n - 1).toNat

end

end A359308.P18014520564675482106

namespace A359308

/-- `A320001(A016945(n)-1)` -/
def P18014520564675482106.Spec : Prop :=
  ∀ n, P18014520564675482106.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P15875219465403495166

`A359326(n+1)+A033687(n)`
-/

namespace A359308.P15875219465403495166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (n + 1) + A033687 n

end

end A359308.P15875219465403495166

namespace A359308

/-- `A359326(n+1)+A033687(n)` -/
def P15875219465403495166.Spec : Prop :=
  ∀ n, P15875219465403495166.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P6188508091839818473

`A320001(A017101(n)+n)`
-/

namespace A359308.P6188508091839818473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A017101 n + (n : ℤ)).toNat

end

end A359308.P6188508091839818473

namespace A359308

/-- `A320001(A017101(n)+n)` -/
def P6188508091839818473.Spec : Prop :=
  ∀ n, P6188508091839818473.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P12384240720985995482

`A320001(A008486(2*n)+2)`
-/

namespace A359308.P12384240720985995482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A008486 (2 * n) + 2).toNat

end

end A359308.P12384240720985995482

namespace A359308

/-- `A320001(A008486(2*n)+2)` -/
def P12384240720985995482.Spec : Prop :=
  ∀ n, P12384240720985995482.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P11411068351391569225

`A320001(A298026(2*n)+2)`
-/

namespace A359308.P11411068351391569225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A298026 (2 * n) + 2).toNat

end

end A359308.P11411068351391569225

namespace A359308

/-- `A320001(A298026(2*n)+2)` -/
def P11411068351391569225.Spec : Prop :=
  ∀ n, P11411068351391569225.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P16274372551104837547

`A320001(A004277(2*n)+A004277(n+1))`
-/

namespace A359308.P16274372551104837547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A004277 (2 * n) + A004277 (n + 1)).toNat

end

end A359308.P16274372551104837547

namespace A359308

/-- `A320001(A004277(2*n)+A004277(n+1))` -/
def P16274372551104837547.Spec : Prop :=
  ∀ n, P16274372551104837547.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P15740042183218440599

`A359306(Δ[n²])`
-/

namespace A359308.P15740042183218440599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359308.P15740042183218440599

namespace A359308

/-- `A359306(Δ[n²])` -/
def P15740042183218440599.Spec : Prop :=
  ∀ n, P15740042183218440599.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P7854865617646443728

`A320001(A298028(2*n+1)-1)`
-/

namespace A359308.P7854865617646443728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A298028 (2 * n + 1) - 1).toNat

end

end A359308.P7854865617646443728

namespace A359308

/-- `A320001(A298028(2*n+1)-1)` -/
def P7854865617646443728.Spec : Prop :=
  ∀ n, P7854865617646443728.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P9035329368138126388

`A359211(2*n+1)-A359239(n+1)`
-/

namespace A359308.P9035329368138126388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (2 * n + 1) - A359239 (n + 1)

end

end A359308.P9035329368138126388

namespace A359308

/-- `A359211(2*n+1)-A359239(n+1)` -/
def P9035329368138126388.Spec : Prop :=
  ∀ n, P9035329368138126388.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P6472819853375351920

`A320001(A008574(2*n)+A008574(n+1))`
-/

namespace A359308.P6472819853375351920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A008574 (2 * n) + A008574 (n + 1)).toNat

end

end A359308.P6472819853375351920

namespace A359308

/-- `A320001(A008574(2*n)+A008574(n+1))` -/
def P6472819853375351920.Spec : Prop :=
  ∀ n, P6472819853375351920.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P3544186394385505340

`A320001(A316571(2*n+1)+A316571(n+2))`
-/

namespace A359308.P3544186394385505340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A316571 (2 * n + 1) + A316571 (n + 2)).toNat

end

end A359308.P3544186394385505340

namespace A359308

/-- `A320001(A316571(2*n+1)+A316571(n+2))` -/
def P3544186394385505340.Spec : Prop :=
  ∀ n, P3544186394385505340.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P18100271478059309659

`A320001(A063136(n+1))`
-/

namespace A359308.P18100271478059309659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A063136 (n + 1)).toNat

end

end A359308.P18100271478059309659

namespace A359308

/-- `A320001(A063136(n+1))` -/
def P18100271478059309659.Spec : Prop :=
  ∀ n, P18100271478059309659.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P5939199249496278925

`A001817(A067745(n+1))`
-/

namespace A359308.P5939199249496278925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A067745 (n + 1)).toNat

end

end A359308.P5939199249496278925

namespace A359308

/-- `A001817(A067745(n+1))` -/
def P5939199249496278925.Spec : Prop :=
  ∀ n, P5939199249496278925.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P2905983482351498712

`A001817(A075677(2*n+1))`
-/

namespace A359308.P2905983482351498712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A075677 (2 * n + 1)).toNat

end

end A359308.P2905983482351498712

namespace A359308

/-- `A001817(A075677(2*n+1))` -/
def P2905983482351498712.Spec : Prop :=
  ∀ n, P2905983482351498712.a n = A359308 (n + 1)

end A359308

/-! ## A359308.P6890562821376460743

`A320001(A022144(2*n)+A022144(n+1))`
-/

namespace A359308.P6890562821376460743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A022144 (2 * n) + A022144 (n + 1)).toNat

end

end A359308.P6890562821376460743

namespace A359308

/-- `A320001(A022144(2*n)+A022144(n+1))` -/
def P6890562821376460743.Spec : Prop :=
  ∀ n, P6890562821376460743.a n = A359308 (n + 1)

end A359308

/-!
# A359309: Number of divisors of 6*n-5 of form 6*k+1.

The programs for A359309, the canonical program `A359309.P16012649282733525567` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359309 has offset 1).

The definition of A359309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279060, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359309.P16012649282733525567

`A279060(6*(n+1)-5)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359309

/-- `A279060(6*(n+1)-5)` -/
def P16012649282733525567.Spec : Prop :=
  ∀ n, P16012649282733525567.a n = A359309 (n + 1)

theorem P16012649282733525567.correct : P16012649282733525567.Spec := by
  intro n
  simp only [A359309, Nat.add_sub_cancel]

end A359309

/-! ## A359309.P14703349595399192450

`A359327(n+1)+A097195(n)`
-/

namespace A359309.P14703349595399192450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359327 (n + 1) + A097195 n

end

end A359309.P14703349595399192450

namespace A359309

/-- `A359327(n+1)+A097195(n)` -/
def P14703349595399192450.Spec : Prop :=
  ∀ n, P14703349595399192450.a n = A359309 (n + 1)

theorem P14703349595399192450.correct : P14703349595399192450.Spec := by
  intro n
  simp only [A359309, Nat.add_sub_cancel, A359309.P14703349595399192450.a, A359309.P16012649282733525567.a, A097195, A097195.P12342509602906900209.a, A279060, A279060.P16013489652105091246.f1, A279060.P16013489652105091246.a, A359327, A359327.P16853457965875715644.a, A319995, A319995.P426129462257340288.a, A035218, A035218.P251444375763395184.f1, A035218.P251444375763395184.a, A232991, A232991.P9120970127003175138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359309

/-! ## A359309.P16850878686021393657

`A359327(n+1)+abs(A129451(n))`
-/

namespace A359309.P16850878686021393657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359327 (n + 1) + |A129451 n|

end

end A359309.P16850878686021393657

namespace A359309

/-- `A359327(n+1)+abs(A129451(n))` -/
def P16850878686021393657.Spec : Prop :=
  ∀ n, P16850878686021393657.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P15875644866079778634

`A359327(n+1)+lcm(A000034(n), A129451(n))`
-/

namespace A359309.P15875644866079778634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359327 (n + 1) + (Int.lcm (A000034 n) (A129451 n) : ℤ)

end

end A359309.P15875644866079778634

namespace A359309

/-- `A359327(n+1)+lcm(A000034(n), A129451(n))` -/
def P15875644866079778634.Spec : Prop :=
  ∀ n, P15875644866079778634.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P18115125541653778733

`A359327(n+1)+ratio[A057077(n)]*A129451(n)`
-/

namespace A359309.P18115125541653778733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359327 (n + 1) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A129451 n : ℚ)

end

end A359309.P18115125541653778733

namespace A359309

/-- `A359327(n+1)+ratio[A057077(n)]*A129451(n)` -/
def P18115125541653778733.Spec : Prop :=
  ∀ n, P18115125541653778733.a n = (A359309 (n + 1) : ℚ)

end A359309

/-! ## A359309.P12687476521653995535

`A320001(12*n+2)`
-/

namespace A359309.P12687476521653995535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (12 * n + 2)

end

end A359309.P12687476521653995535

namespace A359309

/-- `A320001(12*n+2)` -/
def P12687476521653995535.Spec : Prop :=
  ∀ n, P12687476521653995535.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P7418725059505456852

`A359212(Δ[n²])`
-/

namespace A359309.P7418725059505456852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359212 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359309.P7418725059505456852

namespace A359309

/-- `A359212(Δ[n²])` -/
def P7418725059505456852.Spec : Prop :=
  ∀ n, P7418725059505456852.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P622400088961934175

`A359308(Δ[n²])`
-/

namespace A359309.P622400088961934175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359308 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359309.P622400088961934175

namespace A359309

/-- `A359308(Δ[n²])` -/
def P622400088961934175.Spec : Prop :=
  ∀ n, P622400088961934175.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P11159267548403748140

`A359239(2*n+1)+A033687(2*n)`
-/

namespace A359309.P11159267548403748140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359239 (2 * n + 1) + A033687 (2 * n)

end

end A359309.P11159267548403748140

namespace A359309

/-- `A359239(2*n+1)+A033687(2*n)` -/
def P11159267548403748140.Spec : Prop :=
  ∀ n, P11159267548403748140.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P16647846823600215964

`A359326(2*n+1)+A033687(2*n)`
-/

namespace A359309.P16647846823600215964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (2 * n + 1) + A033687 (2 * n)

end

end A359309.P16647846823600215964

namespace A359309

/-- `A359326(2*n+1)+A033687(2*n)` -/
def P16647846823600215964.Spec : Prop :=
  ∀ n, P16647846823600215964.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P11265351715843006690

`A372715(2*n+1)-A359239(2*n+1)`
-/

namespace A359309.P11265351715843006690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372715 (2 * n + 1) - A359239 (2 * n + 1)

end

end A359309.P11265351715843006690

namespace A359309

/-- `A372715(2*n+1)-A359239(2*n+1)` -/
def P11265351715843006690.Spec : Prop :=
  ∀ n, P11265351715843006690.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P2854917935597858474

`A001817(A364582(A359212(2*n+1)))`
-/

namespace A359309.P2854917935597858474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A364582 (A359212 (2 * n + 1)).toNat).toNat

end

end A359309.P2854917935597858474

namespace A359309

/-- `A001817(A364582(A359212(2*n+1)))` -/
def P2854917935597858474.Spec : Prop :=
  ∀ n, P2854917935597858474.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P7638632997224660992

`A359307(3*n+1)`
-/

namespace A359309.P7638632997224660992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359307 (3 * n + 1)

end

end A359309.P7638632997224660992

namespace A359309

/-- `A359307(3*n+1)` -/
def P7638632997224660992.Spec : Prop :=
  ∀ n, P7638632997224660992.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P16707771785094202668

`A359306(3*n+n+1)`
-/

namespace A359309.P16707771785094202668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359306 (3 * n + (n + 1))

end

end A359309.P16707771785094202668

namespace A359309

/-- `A359306(3*n+n+1)` -/
def P16707771785094202668.Spec : Prop :=
  ∀ n, P16707771785094202668.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P14510190417306267138

`A001817(6*n+1)`
-/

namespace A359309.P14510190417306267138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (6 * n + 1)

end

end A359309.P14510190417306267138

namespace A359309

/-- `A001817(6*n+1)` -/
def P14510190417306267138.Spec : Prop :=
  ∀ n, P14510190417306267138.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P8302319160731817088

`A326394(6*n+1)`
-/

namespace A359309.P8302319160731817088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (6 * n + 1)

end

end A359309.P8302319160731817088

namespace A359309

/-- `A326394(6*n+1)` -/
def P8302319160731817088.Spec : Prop :=
  ∀ n, P8302319160731817088.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P18222539075619589490

`A364204(A016825(2*n)-(2*n+1))`
-/

namespace A359309.P18222539075619589490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 (A016825 (2 * n) - (2 * n + 1 : ℤ)).toNat

end

end A359309.P18222539075619589490

namespace A359309

/-- `A364204(A016825(2*n)-(2*n+1))` -/
def P18222539075619589490.Spec : Prop :=
  ∀ n, P18222539075619589490.a n = A359309 (n + 1)

end A359309

/-! ## A359309.P17056095729709919580

`A364014(A017569(2*n))`
-/

namespace A359309.P17056095729709919580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364014 (A017569 (2 * n)).toNat

end

end A359309.P17056095729709919580

namespace A359309

/-- `A364014(A017569(2*n))` -/
def P17056095729709919580.Spec : Prop :=
  ∀ n, P17056095729709919580.a n = A359309 (n + 1)

end A359309

/-!
# A359311: Number of Catalan paths (nonnegative, starting and ending at 0, step +/ -1) of 2*n steps which reach at least 6 at some point.

The programs for A359311, the canonical program `A359311.P5103143140979981528` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359311 has offset 0).

The definition of A359311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359311.P5103143140979981528

`A000108(n)-A080937(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359311

/-- `A000108(n)-A080937(n)` -/
def P5103143140979981528.Spec : Prop :=
  ∀ n, P5103143140979981528.a n = A359311 n

theorem P5103143140979981528.correct : P5103143140979981528.Spec := by
  intro n
  simp only [A359311]

end A359311

/-! ## A359311.P15056410463563001544

`A120304(n)+2-A080937(n)`
-/

namespace A359311.P15056410463563001544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + (2 - A080937 n)

end

end A359311.P15056410463563001544

namespace A359311

/-- `A120304(n)+2-A080937(n)` -/
def P15056410463563001544.Spec : Prop :=
  ∀ n, P15056410463563001544.a n = A359311 n

theorem P15056410463563001544.correct : P15056410463563001544.Spec := by
  intro n
  simp only [A359311, Nat.add_sub_cancel, A359311.P15056410463563001544.a, A359311.P5103143140979981528.a, A000108, A000108.P17551949696095299361.a, A080937, A080937.P5242318450844835685.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359311

/-! ## A359311.P61341424312611182

`A000108(n)-A096976(2*n)`
-/

namespace A359311.P61341424312611182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A096976 (2 * n)

end

end A359311.P61341424312611182

namespace A359311

/-- `A000108(n)-A096976(2*n)` -/
def P61341424312611182.Spec : Prop :=
  ∀ n, P61341424312611182.a n = A359311 n

end A359311

/-! ## A359311.P16211154406318620786

`A028304(2*n)-A080937(n)`
-/

namespace A359311.P16211154406318620786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - A080937 n

end

end A359311.P16211154406318620786

namespace A359311

/-- `A028304(2*n)-A080937(n)` -/
def P16211154406318620786.Spec : Prop :=
  ∀ n, P16211154406318620786.a n = A359311 n

end A359311

/-! ## A359311.P11773121815034430917

`A208355(2*n)-A080937(n)`
-/

namespace A359311.P11773121815034430917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - A080937 n

end

end A359311.P11773121815034430917

namespace A359311

/-- `A208355(2*n)-A080937(n)` -/
def P11773121815034430917.Spec : Prop :=
  ∀ n, P11773121815034430917.a n = A359311 n

end A359311

/-! ## A359311.P11499614059105011137

`A097331(Δ[n²])-A080937(n)`
-/

namespace A359311.P11499614059105011137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A080937 n

end

end A359311.P11499614059105011137

namespace A359311

/-- `A097331(Δ[n²])-A080937(n)` -/
def P11499614059105011137.Spec : Prop :=
  ∀ n, P11499614059105011137.a n = A359311 n

end A359311

/-! ## A359311.P8180961404853579143

`abs(A115140(n+1))-A080937(n)`
-/

namespace A359311.P8180961404853579143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1)| - A080937 n

end

end A359311.P8180961404853579143

namespace A359311

/-- `abs(A115140(n+1))-A080937(n)` -/
def P8180961404853579143.Spec : Prop :=
  ∀ n, P8180961404853579143.a n = A359311 n

end A359311

/-! ## A359311.P7106332598578582049

`A097331(Δ[n²])-A096976(2*n)`
-/

namespace A359311.P7106332598578582049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A096976 (2 * n)

end

end A359311.P7106332598578582049

namespace A359311

/-- `A097331(Δ[n²])-A096976(2*n)` -/
def P7106332598578582049.Spec : Prop :=
  ∀ n, P7106332598578582049.a n = A359311 n

end A359311

/-! ## A359311.P1652360035069373670

`A028303(2*n)-(A052975(n)-A006053(2*n+1))`
-/

namespace A359311.P1652360035069373670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) - (A052975 n - A006053 (2 * n + 1))

end

end A359311.P1652360035069373670

namespace A359311

/-- `A028303(2*n)-(A052975(n)-A006053(2*n+1))` -/
def P1652360035069373670.Spec : Prop :=
  ∀ n, P1652360035069373670.a n = A359311 n

end A359311

/-!
# A359312: a(1) = 1; for n >= 1, a(2*n) = A000005(a(n)), a(2*n + 1) = A000005(a(n)) + 1.

The programs for A359312, the canonical program `A359312.P14098866276447558073` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359312 has offset 1).

The definition of A359312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359312.P7134310159506549835

`ceil(log2(gcd(2, n)*a(floor((n+1)/2)-1)+1))` with `a(0)=1`
-/

namespace A359312.P7134310159506549835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.logb 2 ((Nat.gcd 2 n : ℤ) * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 1 : ℝ)⌉

end

end A359312.P7134310159506549835

namespace A359312

/-- `ceil(log2(gcd(2, n)*a(floor((n+1)/2)-1)+1))` -/
def P7134310159506549835.Spec : Prop :=
  ∀ n, P7134310159506549835.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P10246994490086187118

`A285325(gcd(2, n)*a(floor((n-1)/2)))` with `a(0)=1`
-/

namespace A359312.P10246994490086187118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285325 ((Nat.gcd 2 n : ℤ) * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat).toNat

end

end A359312.P10246994490086187118

namespace A359312

/-- `A285325(gcd(2, n)*a(floor((n-1)/2)))` -/
def P10246994490086187118.Spec : Prop :=
  ∀ n, P10246994490086187118.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P14098866276447558073

`A002024(a(floor((n-1)/2))+(-1)^n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359312

/-- `A002024(a(floor((n-1)/2))+(-1)^n+1)` -/
def P14098866276447558073.Spec : Prop :=
  ∀ n, P14098866276447558073.a n = A359312 (n + 1)

theorem P14098866276447558073.correct : P14098866276447558073.Spec := by
  intro n
  simp only [A359312, Nat.add_sub_cancel]

end A359312

/-! ## A359312.P6472439894940906928

`A003056(a(floor((n-1)/2))+(-1)^n)+1` with `a(0)=1`
-/

namespace A359312.P6472439894940906928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (-1) ^ n).toNat + 1

end

end A359312.P6472439894940906928

namespace A359312

/-- `A003056(a(floor((n-1)/2))+(-1)^n)+1` -/
def P6472439894940906928.Spec : Prop :=
  ∀ n, P6472439894940906928.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P9763113577702835757

`A174296(A053645(n+1))`
-/

namespace A359312.P9763113577702835757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (A053645 (n + 1)).toNat

end

end A359312.P9763113577702835757

namespace A359312

/-- `A174296(A053645(n+1))` -/
def P9763113577702835757.Spec : Prop :=
  ∀ n, P9763113577702835757.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P10077772918759938517

`A174296(A319665(n+2))`
-/

namespace A359312.P10077772918759938517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (A319665 (n + 2)).toNat

end

end A359312.P10077772918759938517

namespace A359312

/-- `A174296(A319665(n+2))` -/
def P10077772918759938517.Spec : Prop :=
  ∀ n, P10077772918759938517.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P11484721582944410900

`A043530(A160417(n+1))`
-/

namespace A359312.P11484721582944410900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (A160417 (n + 1)).toNat

end

end A359312.P11484721582944410900

namespace A359312

/-- `A043530(A160417(n+1))` -/
def P11484721582944410900.Spec : Prop :=
  ∀ n, P11484721582944410900.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P2486882423340013100

`A001221(A160415(n+2))`
-/

namespace A359312.P2486882423340013100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160415 (n + 2)).toNat

end

end A359312.P2486882423340013100

namespace A359312

/-- `A001221(A160415(n+2))` -/
def P2486882423340013100.Spec : Prop :=
  ∀ n, P2486882423340013100.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P12559687421142619203

`A046072(A323651(n+2))`
-/

namespace A359312.P12559687421142619203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A323651 (n + 2)).toNat

end

end A359312.P12559687421142619203

namespace A359312

/-- `A046072(A323651(n+2))` -/
def P12559687421142619203.Spec : Prop :=
  ∀ n, P12559687421142619203.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P5772105729018935643

`A326420(A191110(n+1))`
-/

namespace A359312.P5772105729018935643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326420 (A191110 (n + 1)).toNat

end

end A359312.P5772105729018935643

namespace A359312

/-- `A326420(A191110(n+1))` -/
def P5772105729018935643.Spec : Prop :=
  ∀ n, P5772105729018935643.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P17850153528139119505

`A050252(A160797(n+2))`
-/

namespace A359312.P17850153528139119505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A160797 (n + 2)).toNat

end

end A359312.P17850153528139119505

namespace A359312

/-- `A050252(A160797(n+2))` -/
def P17850153528139119505.Spec : Prop :=
  ∀ n, P17850153528139119505.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P7635169821637995361

`A046072(A269695(n+1))`
-/

namespace A359312.P7635169821637995361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A269695 (n + 1)).toNat

end

end A359312.P7635169821637995361

namespace A359312

/-- `A046072(A269695(n+1))` -/
def P7635169821637995361.Spec : Prop :=
  ∀ n, P7635169821637995361.a n = A359312 (n + 1)

end A359312

/-! ## A359312.P11543003065586445663

`A046072(A164032(n+2))`
-/

namespace A359312.P11543003065586445663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A164032 (n + 2)).toNat

end

end A359312.P11543003065586445663

namespace A359312

/-- `A046072(A164032(n+2))` -/
def P11543003065586445663.Spec : Prop :=
  ∀ n, P11543003065586445663.a n = A359312 (n + 1)

end A359312

/-!
# A359313: Triangular array read by rows. T(n,k) is the number of Green's H-classes contained in the D-class of rank k matrices in the semigroup Mat_n(F_2) of n X n matrices over the field F_2. n>=0, 0<=k<=n.

The programs for A359313, there is no canonical definition to state claims against.
-/

/-! ## A359313.P5365700405344638619

`A022166(n)²`
-/

namespace A359313.P5365700405344638619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n ^ 2

end

end A359313.P5365700405344638619

/-! ## A359313.P12628264587748263016

`A022166(char[1]+n)^2`
-/

namespace A359313.P12628264587748263016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2

end

end A359313.P12628264587748263016

/-! ## A359313.P3149616985133774503

`(A176420(n)+A014473(n))²`
-/

namespace A359313.P3149616985133774503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176420 n + A014473 n) ^ 2

end

end A359313.P3149616985133774503

/-! ## A359313.P3972561991610644246

`(A157638(n)/A007318(n))²`
-/

namespace A359313.P3972561991610644246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A157638 n : ℚ) / (A007318 n : ℚ)) ^ 2

end

end A359313.P3972561991610644246

/-! ## A359313.P14342154115760032162

`A157638(n)²/A008459(n)`
-/

namespace A359313.P14342154115760032162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157638 n ^ 2 : ℚ) / (A008459 n : ℚ)

end

end A359313.P14342154115760032162

/-!
# A359316: a(n) is the smallest centered square number with binary weight n.

The programs for A359316, there is no canonical definition to state claims against.
-/

/-! ## A359316.P8271249502516540799

`4*A089999(n)+1`
-/

namespace A359316.P8271249502516540799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089999 n + 1

end

end A359316.P8271249502516540799

/-! ## A359316.P12195128885514417852

`ceil(A089998(n+1)/2)`
-/

namespace A359316.P12195128885514417852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089998 (n + 1) : ℚ) / 2⌉

end

end A359316.P12195128885514417852

/-! ## A359316.P682507418041473967

`xor(3, A089998(A000027(n+1)))/2`
-/

namespace A359316.P682507418041473967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 3 (A089998 (A000027 (n + 1)).toNat) : ℚ) / 2

end

end A359316.P682507418041473967

/-! ## A359316.P3174896746070227339

`2*(A211201(n)+A211201(n)²)+1`
-/

namespace A359316.P3174896746070227339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A211201 n + A211201 n ^ 2) + 1

end

end A359316.P3174896746070227339

/-!
# A359317: a(n) is the smallest tetrahedral number with binary weight n.

The programs for A359317, there is no canonical definition to state claims against.
-/

/-! ## A359317.P17225839219930140959

`A000292(∑{e}[3^n*n!, #])`
-/

namespace A359317.P17225839219930140959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A359317.P17225839219930140959

/-! ## A359317.P5959901366193693062

`C(A007456(A001850(n)), 3)`
-/

namespace A359317.P5959901366193693062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007456 (A001850 n).toNat).toNat 3

end

end A359317.P5959901366193693062

/-! ## A359317.P12327617701709003148

`C(A056239(A144706(n)), 3)`
-/

namespace A359317.P12327617701709003148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056239 (A144706 n).toNat).toNat 3

end

end A359317.P12327617701709003148

/-!
# A359318: a(n) is the smallest square pyramidal number with binary weight n.

The programs for A359318, there is no canonical definition to state claims against.
-/

/-! ## A359318.P5471320827450662171

`lcm(∑[n²], A045778(A005651(n)))`
-/

namespace A359318.P5471320827450662171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A045778 (A005651 n).toNat)

end

end A359318.P5471320827450662171

/-! ## A359318.P14674837246802812769

`lcm(A050253(n), A118759(∑[n²]))`
-/

namespace A359318.P14674837246802812769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050253 n) (A118759 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A359318.P14674837246802812769

/-! ## A359318.P13350647276190632506

`A231685(n)*A327537(A209621(n))`
-/

namespace A359318.P13350647276190632506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231685 n * A327537 (A209621 n).toNat

end

end A359318.P13350647276190632506

/-!
# A359324: Number of divisors of 6*n-2 of form 6*k+5.

The programs for A359324, the canonical program `A359324.P6562747664872002453` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359324 has offset 1).

The definition of A359324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359324.P6562747664872002453

`A319995(6*(n+1)-2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359324

/-- `A319995(6*(n+1)-2)` -/
def P6562747664872002453.Spec : Prop :=
  ∀ n, P6562747664872002453.a n = A359324 (n + 1)

theorem P6562747664872002453.correct : P6562747664872002453.Spec := by
  intro n
  simp only [A359324, Nat.add_sub_cancel]

end A359324

/-! ## A359324.P5024892644173687113

`A320005(A016969(n)-1)`
-/

namespace A359324.P5024892644173687113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A016969 n - 1).toNat

end

end A359324.P5024892644173687113

namespace A359324

/-- `A320005(A016969(n)-1)` -/
def P5024892644173687113.Spec : Prop :=
  ∀ n, P5024892644173687113.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P14910018335811743611

`A320005(xor(1, A016969(n)))`
-/

namespace A359324.P14910018335811743611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (Int.xor 1 (A016969 n)).toNat

end

end A359324.P14910018335811743611

namespace A359324

/-- `A320005(xor(1, A016969(n)))` -/
def P14910018335811743611.Spec : Prop :=
  ∀ n, P14910018335811743611.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P2535314768558095101

`A320005(A004770(n+1)+n+1)`
-/

namespace A359324.P2535314768558095101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A004770 (n + 1) + (n + 1 : ℤ)).toNat

end

end A359324.P2535314768558095101

namespace A359324

/-- `A320005(A004770(n+1)+n+1)` -/
def P2535314768558095101.Spec : Prop :=
  ∀ n, P2535314768558095101.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P15460451078940129900

`A320005(A017593(n)+2)`
-/

namespace A359324.P15460451078940129900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A017593 n + 2).toNat

end

end A359324.P15460451078940129900

namespace A359324

/-- `A320005(A017593(n)+2)` -/
def P15460451078940129900.Spec : Prop :=
  ∀ n, P15460451078940129900.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P3777916783940799356

`A359326(2*(n+1))`
-/

namespace A359324.P3777916783940799356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (2 * (n + 1))

end

end A359324.P3777916783940799356

namespace A359324

/-- `A359326(2*(n+1))` -/
def P3777916783940799356.Spec : Prop :=
  ∀ n, P3777916783940799356.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P12835045632558138872

`A359239(2*(n+1))-A359211(n+1)`
-/

namespace A359324.P12835045632558138872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359239 (2 * (n + 1)) - A359211 (n + 1)

end

end A359324.P12835045632558138872

namespace A359324

/-- `A359239(2*(n+1))-A359211(n+1)` -/
def P12835045632558138872.Spec : Prop :=
  ∀ n, P12835045632558138872.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P2996816448549581127

`A359308(2*(n+1))-A033687(2*n+1)`
-/

namespace A359324.P2996816448549581127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359308 (2 * (n + 1)) - A033687 (2 * n + 1)

end

end A359324.P2996816448549581127

namespace A359324

/-- `A359308(2*(n+1))-A033687(2*n+1)` -/
def P2996816448549581127.Spec : Prop :=
  ∀ n, P2996816448549581127.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P6231860058864139830

`A001822(A075677(n+1))`
-/

namespace A359324.P6231860058864139830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A075677 (n + 1)).toNat

end

end A359324.P6231860058864139830

namespace A359324

/-- `A001822(A075677(n+1))` -/
def P6231860058864139830.Spec : Prop :=
  ∀ n, P6231860058864139830.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P2191305268566280419

`A001822(A067745(2*(n+1)))`
-/

namespace A359324.P2191305268566280419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A067745 (2 * (n + 1))).toNat

end

end A359324.P2191305268566280419

namespace A359324

/-- `A001822(A067745(2*(n+1)))` -/
def P2191305268566280419.Spec : Prop :=
  ∀ n, P2191305268566280419.a n = A359324 (n + 1)

end A359324

/-! ## A359324.P16096296561893896800

`A007814(A351092(2*n+n+2))`
-/

namespace A359324.P16096296561893896800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A351092 (2 * n + (n + 2))).toNat

end

end A359324.P16096296561893896800

namespace A359324

/-- `A007814(A351092(2*n+n+2))` -/
def P16096296561893896800.Spec : Prop :=
  ∀ n, P16096296561893896800.a n = A359324 (n + 1)

end A359324

/-!
# A359325: Number of divisors of 6*n-3 of form 6*k+5.

The programs for A359325, the canonical program `A359325.P14100235319154863886` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359325 has offset 1).

The definition of A359325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359325.P14100235319154863886

`A319995(6*(n+1)-3)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359325

/-- `A319995(6*(n+1)-3)` -/
def P14100235319154863886.Spec : Prop :=
  ∀ n, P14100235319154863886.a n = A359325 (n + 1)

theorem P14100235319154863886.correct : P14100235319154863886.Spec := by
  intro n
  simp only [A359325, Nat.add_sub_cancel]

end A359325

/-! ## A359325.P13261417943388403754

`∑{d}[2*n+1, C(#, 2)%3]`
-/

namespace A359325.P13261417943388403754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2 % 3

end

end A359325.P13261417943388403754

namespace A359325

/-- `∑{d}[2*n+1, C(#, 2)%3]` -/
def P13261417943388403754.Spec : Prop :=
  ∀ n, (P13261417943388403754.a n : ℤ) = A359325 (n + 1)

end A359325

/-! ## A359325.P17934508002848007936

`dr(A319995(2*n+1))`
-/

namespace A359325.P17934508002848007936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A319995 (2 * n + 1))

end

end A359325.P17934508002848007936

namespace A359325

/-- `dr(A319995(2*n+1))` -/
def P17934508002848007936.Spec : Prop :=
  ∀ n, (P17934508002848007936.a n : ℤ) = A359325 (n + 1)

end A359325

/-! ## A359325.P8979074504608722589

`A320005(2*(2*n+1))`
-/

namespace A359325.P8979074504608722589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (2 * (2 * n + 1))

end

end A359325.P8979074504608722589

namespace A359325

/-- `A320005(2*(2*n+1))` -/
def P8979074504608722589.Spec : Prop :=
  ∀ n, P8979074504608722589.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P11343400022477136477

`A061479(A319995(n+1+n))`
-/

namespace A359325.P11343400022477136477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061479 (A319995 (n + 1 + n)).toNat

end

end A359325.P11343400022477136477

namespace A359325

/-- `A061479(A319995(n+1+n))` -/
def P11343400022477136477.Spec : Prop :=
  ∀ n, P11343400022477136477.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P6154806933787674700

`A359307(n+1)-A033762(n)`
-/

namespace A359325.P6154806933787674700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359307 (n + 1) - A033762 n

end

end A359325.P6154806933787674700

namespace A359325

/-- `A359307(n+1)-A033762(n)` -/
def P6154806933787674700.Spec : Prop :=
  ∀ n, P6154806933787674700.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P14985979338258395891

`A035218(2*n+1)-A359307(n+1)`
-/

namespace A359325.P14985979338258395891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (2 * n + 1) - A359307 (n + 1)

end

end A359325.P14985979338258395891

namespace A359325

/-- `A035218(2*n+1)-A359307(n+1)` -/
def P14985979338258395891.Spec : Prop :=
  ∀ n, P14985979338258395891.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P2675310238727299075

`A035218(2*n+1)-A279060(2*n+1)`
-/

namespace A359325.P2675310238727299075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (2 * n + 1) - A279060 (2 * n + 1)

end

end A359325.P2675310238727299075

namespace A359325

/-- `A035218(2*n+1)-A279060(2*n+1)` -/
def P2675310238727299075.Spec : Prop :=
  ∀ n, P2675310238727299075.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P16749790590452076827

`A001822(Δ[n²])`
-/

namespace A359325.P16749790590452076827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359325.P16749790590452076827

namespace A359325

/-- `A001822(Δ[n²])` -/
def P16749790590452076827.Spec : Prop :=
  ∀ n, P16749790590452076827.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P1417507261213581782

`A364205(Δ[n²])`
-/

namespace A359325.P1417507261213581782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364205 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359325.P1417507261213581782

namespace A359325

/-- `A364205(Δ[n²])` -/
def P1417507261213581782.Spec : Prop :=
  ∀ n, P1417507261213581782.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P252266893107237836

`abs(A364014(2*n+1))`
-/

namespace A359325.P252266893107237836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364014 (2 * n + 1)|

end

end A359325.P252266893107237836

namespace A359325

/-- `abs(A364014(2*n+1))` -/
def P252266893107237836.Spec : Prop :=
  ∀ n, P252266893107237836.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P9136399192611261746

`abs(A364205(2*n+1))`
-/

namespace A359325.P9136399192611261746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364205 (2 * n + 1)|

end

end A359325.P9136399192611261746

namespace A359325

/-- `abs(A364205(2*n+1))` -/
def P9136399192611261746.Spec : Prop :=
  ∀ n, P9136399192611261746.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P18084618873272345395

`dr(A001822(2*n+1))`
-/

namespace A359325.P18084618873272345395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001822 (2 * n + 1))

end

end A359325.P18084618873272345395

namespace A359325

/-- `dr(A001822(2*n+1))` -/
def P18084618873272345395.Spec : Prop :=
  ∀ n, (P18084618873272345395.a n : ℤ) = A359325 (n + 1)

end A359325

/-! ## A359325.P1354116933716062842

`val(A351082(2*n+1), 2)`
-/

namespace A359325.P1354116933716062842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351082 (2 * n + 1)).toNat 2

end

end A359325.P1354116933716062842

namespace A359325

/-- `val(A351082(2*n+1), 2)` -/
def P1354116933716062842.Spec : Prop :=
  ∀ n, (P1354116933716062842.a n : ℤ) = A359325 (n + 1)

end A359325

/-! ## A359325.P2083127691338903155

`val(A351092(2*n+1), 2)`
-/

namespace A359325.P2083127691338903155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351092 (2 * n + 1)).toNat 2

end

end A359325.P2083127691338903155

namespace A359325

/-- `val(A351092(2*n+1), 2)` -/
def P2083127691338903155.Spec : Prop :=
  ∀ n, (P2083127691338903155.a n : ℤ) = A359325 (n + 1)

end A359325

/-! ## A359325.P8984691815862056441

`∑{d}[2*n+1, A131532(#)]`
-/

namespace A359325.P8984691815862056441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131532 d

end

end A359325.P8984691815862056441

namespace A359325

/-- `∑{d}[2*n+1, A131532(#)]` -/
def P8984691815862056441.Spec : Prop :=
  ∀ n, P8984691815862056441.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P17408199422022139348

`∑{d}[2*n+1, A214090(#)]`
-/

namespace A359325.P17408199422022139348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A214090 d

end

end A359325.P17408199422022139348

namespace A359325

/-- `∑{d}[2*n+1, A214090(#)]` -/
def P17408199422022139348.Spec : Prop :=
  ∀ n, P17408199422022139348.a n = A359325 (n + 1)

end A359325

/-! ## A359325.P10021212575396459568

`A326395(A038502(2*n+1))`
-/

namespace A359325.P10021212575396459568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326395 (A038502 (2 * n + 1)).toNat

end

end A359325.P10021212575396459568

namespace A359325

/-- `A326395(A038502(2*n+1))` -/
def P10021212575396459568.Spec : Prop :=
  ∀ n, P10021212575396459568.a n = A359325 (n + 1)

end A359325

/-!
# A359326: Number of divisors of 6*n-4 of form 6*k+5.

The programs for A359326, the canonical program `A359326.P15324181314708313720` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359326 has offset 1).

The definition of A359326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359326.P15324181314708313720

`A319995(6*(n+1)-4)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359326

/-- `A319995(6*(n+1)-4)` -/
def P15324181314708313720.Spec : Prop :=
  ∀ n, P15324181314708313720.a n = A359326 (n + 1)

theorem P15324181314708313720.correct : P15324181314708313720.Spec := by
  intro n
  simp only [A359326, Nat.add_sub_cancel]

end A359326

/-! ## A359326.P16960875026052075902

`A320005(3*n+1)`
-/

namespace A359326.P16960875026052075902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (3 * n + 1)

end

end A359326.P16960875026052075902

namespace A359326

/-- `A320005(3*n+1)` -/
def P16960875026052075902.Spec : Prop :=
  ∀ n, P16960875026052075902.a n = A359326 (n + 1)

end A359326

/-! ## A359326.P15314653920557705949

`A359308(n+1)-A033687(n)`
-/

namespace A359326.P15314653920557705949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359308 (n + 1) - A033687 n

end

end A359326.P15314653920557705949

namespace A359326

/-- `A359308(n+1)-A033687(n)` -/
def P15314653920557705949.Spec : Prop :=
  ∀ n, P15314653920557705949.a n = A359326 (n + 1)

end A359326

/-! ## A359326.P8257884181428128414

`A359324(Δ[n²])`
-/

namespace A359326.P8257884181428128414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359326.P8257884181428128414

namespace A359326

/-- `A359324(Δ[n²])` -/
def P8257884181428128414.Spec : Prop :=
  ∀ n, P8257884181428128414.a n = A359326 (n + 1)

end A359326

/-! ## A359326.P9935870958277076808

`dr(A359324(2*n+1))`
-/

namespace A359326.P9935870958277076808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A359324 (2 * n + 1))

end

end A359326.P9935870958277076808

namespace A359326

/-- `dr(A359324(2*n+1))` -/
def P9935870958277076808.Spec : Prop :=
  ∀ n, (P9935870958277076808.a n : ℤ) = A359326 (n + 1)

end A359326

/-! ## A359326.P7392539637086848211

`A359211(2*n+1)-A359212(n+1)`
-/

namespace A359326.P7392539637086848211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (2 * n + 1) - A359212 (n + 1)

end

end A359326.P7392539637086848211

namespace A359326

/-- `A359211(2*n+1)-A359212(n+1)` -/
def P7392539637086848211.Spec : Prop :=
  ∀ n, P7392539637086848211.a n = A359326 (n + 1)

end A359326

/-! ## A359326.P9298240929226147263

`A001822(A067745(n+1))`
-/

namespace A359326.P9298240929226147263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A067745 (n + 1)).toNat

end

end A359326.P9298240929226147263

namespace A359326

/-- `A001822(A067745(n+1))` -/
def P9298240929226147263.Spec : Prop :=
  ∀ n, P9298240929226147263.a n = A359326 (n + 1)

end A359326

/-! ## A359326.P3206950453121709126

`A001822(A075677(2*n+1))`
-/

namespace A359326.P3206950453121709126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A075677 (2 * n + 1)).toNat

end

end A359326.P3206950453121709126

namespace A359326

/-- `A001822(A075677(2*n+1))` -/
def P3206950453121709126.Spec : Prop :=
  ∀ n, P3206950453121709126.a n = A359326 (n + 1)

end A359326

/-! ## A359326.P14903827233409964047

`A007814(A351092(2*n+1+n))`
-/

namespace A359326.P14903827233409964047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A351092 (2 * n + 1 + n)).toNat

end

end A359326.P14903827233409964047

namespace A359326

/-- `A007814(A351092(2*n+1+n))` -/
def P14903827233409964047.Spec : Prop :=
  ∀ n, P14903827233409964047.a n = A359326 (n + 1)

end A359326

/-!
# A359327: Number of divisors of 6*n-5 of form 6*k+5.

The programs for A359327, the canonical program `A359327.P16853457965875715644` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359327 has offset 1).

The definition of A359327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359327.P16853457965875715644

`A319995(6*n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359327

/-- `A319995(6*n+1)` -/
def P16853457965875715644.Spec : Prop :=
  ∀ n, P16853457965875715644.a n = A359327 (n + 1)

theorem P16853457965875715644.correct : P16853457965875715644.Spec := by
  intro n
  simp only [A359327, Nat.add_sub_cancel]

end A359327

/-! ## A359327.P10966100933474279466

`A320005(6*n+1)`
-/

namespace A359327.P10966100933474279466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (6 * n + 1)

end

end A359327.P10966100933474279466

namespace A359327

/-- `A320005(6*n+1)` -/
def P10966100933474279466.Spec : Prop :=
  ∀ n, P10966100933474279466.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P3231887372388105677

`A359309(n+1)-A097195(n)`
-/

namespace A359327.P3231887372388105677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359309 (n + 1) - A097195 n

end

end A359327.P3231887372388105677

namespace A359327

/-- `A359309(n+1)-A097195(n)` -/
def P3231887372388105677.Spec : Prop :=
  ∀ n, P3231887372388105677.a n = A359327 (n + 1)

theorem P3231887372388105677.correct : P3231887372388105677.Spec := by
  intro n
  simp only [A359327, Nat.add_sub_cancel, A359327.P3231887372388105677.a, A359327.P16853457965875715644.a, A097195, A097195.P12342509602906900209.a, A319995, A319995.P426129462257340288.a, A359309, A359309.P16012649282733525567.a, A035218, A035218.P251444375763395184.f1, A035218.P251444375763395184.a, A279060, A279060.P16013489652105091246.f1, A279060.P16013489652105091246.a, A232991, A232991.P9120970127003175138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359327

/-! ## A359327.P14293382414556114658

`A359309(n+1)-A033716(A016921(n))/2`
-/

namespace A359327.P14293382414556114658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359309 (n + 1) : ℚ) - (A033716 (A016921 n).toNat : ℚ) / 2

end

end A359327.P14293382414556114658

namespace A359327

/-- `A359309(n+1)-A033716(A016921(n))/2` -/
def P14293382414556114658.Spec : Prop :=
  ∀ n, P14293382414556114658.a n = (A359327 (n + 1) : ℚ)

end A359327

/-! ## A359327.P5684188365049788953

`A359239(Δ[n²])`
-/

namespace A359327.P5684188365049788953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359239 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359327.P5684188365049788953

namespace A359327

/-- `A359239(Δ[n²])` -/
def P5684188365049788953.Spec : Prop :=
  ∀ n, P5684188365049788953.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P11066312133716685547

`A359326(Δ[n²])`
-/

namespace A359327.P11066312133716685547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359327.P11066312133716685547

namespace A359327

/-- `A359326(Δ[n²])` -/
def P11066312133716685547.Spec : Prop :=
  ∀ n, P11066312133716685547.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P16487713432308322835

`dr(A359239(2*n+1))`
-/

namespace A359327.P16487713432308322835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A359239 (2 * n + 1))

end

end A359327.P16487713432308322835

namespace A359327

/-- `dr(A359239(2*n+1))` -/
def P16487713432308322835.Spec : Prop :=
  ∀ n, (P16487713432308322835.a n : ℤ) = A359327 (n + 1)

end A359327

/-! ## A359327.P17675488527622524642

`dr(A359326(2*n+1))`
-/

namespace A359327.P17675488527622524642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A359326 (2 * n + 1))

end

end A359327.P17675488527622524642

namespace A359327

/-- `dr(A359326(2*n+1))` -/
def P17675488527622524642.Spec : Prop :=
  ∀ n, (P17675488527622524642.a n : ℤ) = A359327 (n + 1)

end A359327

/-! ## A359327.P7043300264811770954

`A359212(2*n+1)-A033687(2*n)`
-/

namespace A359327.P7043300264811770954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359212 (2 * n + 1) - A033687 (2 * n)

end

end A359327.P7043300264811770954

namespace A359327

/-- `A359212(2*n+1)-A033687(2*n)` -/
def P7043300264811770954.Spec : Prop :=
  ∀ n, P7043300264811770954.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P4304118815143430568

`A359308(2*n+1)-A033687(2*n)`
-/

namespace A359327.P4304118815143430568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359308 (2 * n + 1) - A033687 (2 * n)

end

end A359327.P4304118815143430568

namespace A359327

/-- `A359308(2*n+1)-A033687(2*n)` -/
def P4304118815143430568.Spec : Prop :=
  ∀ n, P4304118815143430568.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P18013838811058243993

`A372715(2*n+1)-A359212(2*n+1)`
-/

namespace A359327.P18013838811058243993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372715 (2 * n + 1) - A359212 (2 * n + 1)

end

end A359327.P18013838811058243993

namespace A359327

/-- `A372715(2*n+1)-A359212(2*n+1)` -/
def P18013838811058243993.Spec : Prop :=
  ∀ n, P18013838811058243993.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P9805998360868976910

`A359325(3*n+1)`
-/

namespace A359327.P9805998360868976910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (3 * n + 1)

end

end A359327.P9805998360868976910

namespace A359327

/-- `A359325(3*n+1)` -/
def P9805998360868976910.Spec : Prop :=
  ∀ n, P9805998360868976910.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P13532009082081880532

`A293896(A271114(n))`
-/

namespace A359327.P13532009082081880532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (A271114 n).toNat

end

end A359327.P13532009082081880532

namespace A359327

/-- `A293896(A271114(n))` -/
def P13532009082081880532.Spec : Prop :=
  ∀ n, P13532009082081880532.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P736389245859808346

`A293896(A308196(n))`
-/

namespace A359327.P736389245859808346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (A308196 n).toNat

end

end A359327.P736389245859808346

namespace A359327

/-- `A293896(A308196(n))` -/
def P736389245859808346.Spec : Prop :=
  ∀ n, P736389245859808346.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P4438468578571187715

`A359324(3*n+n+1)`
-/

namespace A359327.P4438468578571187715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359324 (3 * n + (n + 1))

end

end A359327.P4438468578571187715

namespace A359327

/-- `A359324(3*n+n+1)` -/
def P4438468578571187715.Spec : Prop :=
  ∀ n, P4438468578571187715.a n = A359327 (n + 1)

end A359327

/-! ## A359327.P1259916699158478071

`A001822(6*n+1)`
-/

namespace A359327.P1259916699158478071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (6 * n + 1)

end

end A359327.P1259916699158478071

namespace A359327

/-- `A001822(6*n+1)` -/
def P1259916699158478071.Spec : Prop :=
  ∀ n, P1259916699158478071.a n = A359327 (n + 1)

end A359327

/-!
# A359328: Maximal coefficient of x^2*(x^2 + x^3)*(x^2 + x^3 + x^5)*...*(x^2 + x^3 + x^5 + ... + x^prime(n)).

The programs for A359328, there is no canonical definition to state claims against.
-/

/-! ## A359328.P17065543238778159546

`A002635(3*A074361(n))`
-/

namespace A359328.P17065543238778159546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (3 * A074361 n).toNat

end

end A359328.P17065543238778159546

/-! ## A359328.P12767015486952691572

`A220413(or(A085880(n), A117158(n)))`
-/

namespace A359328.P12767015486952691572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (Int.lor (A085880 n) (A117158 n)).toNat

end

end A359328.P12767015486952691572

/-! ## A359328.P2877707613216879060

`A122651(A039996(n+1)+A000166(n))`
-/

namespace A359328.P2877707613216879060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A039996 (n + 1) + A000166 n).toNat

end

end A359328.P2877707613216879060

/-! ## A359328.P16464178584895821429

`A187185(A079456(n+1)+A000032(n))`
-/

namespace A359328.P16464178584895821429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A079456 (n + 1) + A000032 n).toNat

end

end A359328.P16464178584895821429

/-!
# A359329: Number of diagonals in a regular polygon with n sides not passing through the center.

The programs for A359329, the canonical program `A359329.P423799772331683916` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359329 has offset 3).

The definition of A359329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359329.P423799772331683916

`A000096(n)-A142150(n+3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359329

/-- `A000096(n)-A142150(n+3)` -/
def P423799772331683916.Spec : Prop :=
  ∀ n, P423799772331683916.a n = A359329 (n + 3)

theorem P423799772331683916.correct : P423799772331683916.Spec := by
  intro n
  simp only [A359329, Nat.add_sub_cancel]

end A359329

/-! ## A359329.P6245734902120364918

`(n+3)*floor(n/2)`
-/

namespace A359329.P6245734902120364918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ⌊(n : ℚ) / 2⌋

end

end A359329.P6245734902120364918

namespace A359329

/-- `(n+3)*floor(n/2)` -/
def P6245734902120364918.Spec : Prop :=
  ∀ n, P6245734902120364918.a n = A359329 (n + 3)

end A359329

/-! ## A359329.P10997907419801951968

`(n+3)*and(n, -2)/2`
-/

namespace A359329.P10997907419801951968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * Int.land (n : ℤ) (-2) : ℚ) / 2

end

end A359329.P10997907419801951968

namespace A359329

/-- `(n+3)*and(n, -2)/2` -/
def P10997907419801951968.Spec : Prop :=
  ∀ n, P10997907419801951968.a n = (A359329 (n + 3) : ℚ)

end A359329

/-! ## A359329.P7830945452147055940

`(n+3)*(n-n%2)/2`
-/

namespace A359329.P7830945452147055940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * ((n : ℤ) - ((n % 2 : ℕ) : ℤ)) : ℚ) / 2

end

end A359329.P7830945452147055940

namespace A359329

/-- `(n+3)*(n-n%2)/2` -/
def P7830945452147055940.Spec : Prop :=
  ∀ n, P7830945452147055940.a n = (A359329 (n + 3) : ℚ)

end A359329

/-! ## A359329.P14983731856756546371

`(n+3)*(n-and(1, n))/2`
-/

namespace A359329.P14983731856756546371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * ((n : ℤ) - (Nat.land 1 n : ℤ)) : ℚ) / 2

end

end A359329.P14983731856756546371

namespace A359329

/-- `(n+3)*(n-and(1, n))/2` -/
def P14983731856756546371.Spec : Prop :=
  ∀ n, P14983731856756546371.a n = (A359329 (n + 3) : ℚ)

end A359329

/-! ## A359329.P16398879629204089560

`a(n-2)+or(1, n)+n` with `a(0)=0, a(1)=0`
-/

namespace A359329.P16398879629204089560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (Nat.lor 1 n + n)

end

end A359329.P16398879629204089560

namespace A359329

/-- `a(n-2)+or(1, n)+n` -/
def P16398879629204089560.Spec : Prop :=
  ∀ n, (P16398879629204089560.a n : ℤ) = A359329 (n + 3)

end A359329

/-! ## A359329.P3559865797405884024

`∑[n+1]-∑[n+1]%(n+3)`
-/

namespace A359329.P3559865797405884024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 3) : ℕ) : ℤ)

end

end A359329.P3559865797405884024

namespace A359329

/-- `∑[n+1]-∑[n+1]%(n+3)` -/
def P3559865797405884024.Spec : Prop :=
  ∀ n, P3559865797405884024.a n = A359329 (n + 3)

end A359329

/-! ## A359329.P17140580786431063084

`floor((n+3)*∑[1-a(n-1)])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A359329.P17140580786431063084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359329.P17140580786431063084

namespace A359329

/-- `floor((n+3)*∑[1-a(n-1)])` -/
def P17140580786431063084.Spec : Prop :=
  ∀ n, P17140580786431063084.a n = A359329 (n + 3)

end A359329

/-! ## A359329.P11847226608974762122

`lcm(n+3, (n+3)*ceil((n-1)/2))`
-/

namespace A359329.P11847226608974762122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) ((n + 3 : ℤ) * ⌈((n : ℤ) - 1 : ℚ) / 2⌉)

end

end A359329.P11847226608974762122

namespace A359329

/-- `lcm(n+3, (n+3)*ceil((n-1)/2))` -/
def P11847226608974762122.Spec : Prop :=
  ∀ n, (P11847226608974762122.a n : ℤ) = A359329 (n + 3)

end A359329

/-! ## A359329.P13415784817541318112

`(n+3)*∑[and(1, n+1)]-(n+3)`
-/

namespace A359329.P13415784817541318112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n + 3 : ℤ)

end

end A359329.P13415784817541318112

namespace A359329

/-- `(n+3)*∑[and(1, n+1)]-(n+3)` -/
def P13415784817541318112.Spec : Prop :=
  ∀ n, P13415784817541318112.a n = A359329 (n + 3)

end A359329

/-! ## A359329.P13633872096438603614

`(n+3)*(n+1-gcd(2, n+1))/2`
-/

namespace A359329.P13633872096438603614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * ((n + 1 : ℤ) - (Nat.gcd 2 (n + 1) : ℤ)) : ℚ) / 2

end

end A359329.P13633872096438603614

namespace A359329

/-- `(n+3)*(n+1-gcd(2, n+1))/2` -/
def P13633872096438603614.Spec : Prop :=
  ∀ n, P13633872096438603614.a n = (A359329 (n + 3) : ℚ)

end A359329

/-! ## A359329.P3985535490752749844

`ceil(n*or(1, n+2)/2)-Δ[or(1, n)]`
-/

namespace A359329.P3985535490752749844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((Nat.lor 1 (n + 2) : ℚ) / 2)⌉ - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A359329.P3985535490752749844

namespace A359329

/-- `ceil(n*or(1, n+2)/2)-Δ[or(1, n)]` -/
def P3985535490752749844.Spec : Prop :=
  ∀ n, P3985535490752749844.a n = A359329 (n + 3)

end A359329

/-! ## A359329.P12363716906023334405

`and(1, n+1)+a(n-2)+2*n` with `a(0)=0, a(1)=0`
-/

namespace A359329.P12363716906023334405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.land 1 (n + 1) + (a (n - 2) + 2 * n)

end

end A359329.P12363716906023334405

namespace A359329

/-- `and(1, n+1)+a(n-2)+2*n` -/
def P12363716906023334405.Spec : Prop :=
  ∀ n, (P12363716906023334405.a n : ℤ) = A359329 (n + 3)

end A359329

/-! ## A359329.P5133621286400963059

`(n+3)*∑[1-a(n-1)]-(n+3)` with `a(0)=1`
-/

namespace A359329.P5133621286400963059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 3 : ℤ)

end

end A359329.P5133621286400963059

namespace A359329

/-- `(n+3)*∑[1-a(n-1)]-(n+3)` -/
def P5133621286400963059.Spec : Prop :=
  ∀ n, P5133621286400963059.a n = A359329 (n + 3)

end A359329

/-! ## A359329.P14381767406434689942

`(a(n-2)+n+1)*(n+3)/(n+1)` with `a(0)=0, a(1)=0`
-/

namespace A359329.P14381767406434689942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 2) + (n + 1 : ℚ)) * (n + 3 : ℚ) / (n + 1 : ℚ)

end

end A359329.P14381767406434689942

namespace A359329

/-- `(a(n-2)+n+1)*(n+3)/(n+1)` -/
def P14381767406434689942.Spec : Prop :=
  ∀ n, P14381767406434689942.a n = (A359329 (n + 3) : ℚ)

end A359329

/-! ## A359329.P13582683756424519210

`∑[2-a(n-1)]+a(n-2)+n+1` with `a(0)=0, a(1)=0`
-/

namespace A359329.P13582683756424519210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 2) + (n + 1 : ℤ))

end

end A359329.P13582683756424519210

namespace A359329

/-- `∑[2-a(n-1)]+a(n-2)+n+1` -/
def P13582683756424519210.Spec : Prop :=
  ∀ n, P13582683756424519210.a n = A359329 (n + 3)

end A359329

/-! ## A359329.P1446377301087974527

`eq[n-1, and(n+1, n-1)]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A359329.P1446377301087974527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + a (n - 2)

end

end A359329.P1446377301087974527

namespace A359329

/-- `eq[n-1, and(n+1, n-1)]+a(n-2)` -/
def P1446377301087974527.Spec : Prop :=
  ∀ n, (P1446377301087974527.a n : ℤ) = A359329 (n + 3)

end A359329

/-! ## A359329.P8983377589707881555

`A159469(n+3)/2-(n+3)`
-/

namespace A359329.P8983377589707881555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159469 (n + 3) : ℚ) / 2 - (n + 3 : ℚ)

end

end A359329.P8983377589707881555

namespace A359329

/-- `A159469(n+3)/2-(n+3)` -/
def P8983377589707881555.Spec : Prop :=
  ∀ n, P8983377589707881555.a n = (A359329 (n + 3) : ℚ)

end A359329

/-! ## A359329.P1680924713346329976

`A266287(n)-Δ[log2(gcd(2, n))+n]`
-/

namespace A359329.P1680924713346329976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A266287 n : ℝ) - (f1 (n + 1) - f1 n)

end

end A359329.P1680924713346329976

namespace A359329

/-- `A266287(n)-Δ[log2(gcd(2, n))+n]` -/
def P1680924713346329976.Spec : Prop :=
  ∀ n, P1680924713346329976.a n = (A359329 (n + 3) : ℝ)

end A359329

/-! ## A359329.P11555028019046925103

`A131805(n)+A079524(n)`
-/

namespace A359329.P11555028019046925103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131805 n + A079524 n

end

end A359329.P11555028019046925103

namespace A359329

/-- `A131805(n)+A079524(n)` -/
def P11555028019046925103.Spec : Prop :=
  ∀ n, P11555028019046925103.a n = A359329 (n + 3)

end A359329

/-!
# A359330: Composite k for which phi(k) + phi(k') = k, where k' is the arithmetic derivative of k (A003415).

The programs for A359330, there is no canonical definition to state claims against.
-/

/-! ## A359330.P4947784995340524516

`∑[and(6, A124922(2*n+5))]`
-/

namespace A359330.P4947784995340524516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A124922 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359330.P4947784995340524516

/-! ## A359330.P14996892027557536895

`A196245(A248374(n+1))`
-/

namespace A359330.P14996892027557536895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196245 (A248374 (n + 1)).toNat

end

end A359330.P14996892027557536895

/-! ## A359330.P5084691734647437205

`A240834(A097539(n+2))`
-/

namespace A359330.P5084691734647437205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240834 (A097539 (n + 2)).toNat

end

end A359330.P5084691734647437205

/-! ## A359330.P4841315692834078691

`2*A117497(A234696(n+3))`
-/

namespace A359330.P4841315692834078691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117497 (A234696 (n + 3)).toNat

end

end A359330.P4841315692834078691

/-! ## A359330.P14778929267284107392

`∑[A213362(∑[A032239(n+1)])]`
-/

namespace A359330.P14778929267284107392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032239 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213362 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359330.P14778929267284107392

/-!
# A359332: Numbers with arithmetic derivative which is a palindromic prime number (A002385).

The programs for A359332, there is no canonical definition to state claims against.
-/

/-! ## A359332.P8383480364562055683

`lt[A064834(A003415(n)), A341995(n)]`
-/

namespace A359332.P8383480364562055683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359332.P8383480364562055683

/-!
# A359333: a(1) = 0, and for any n > 1, a(n) is chosen among 0 and 1 so as to minimize the length of the longest sequence of distinct integers in arithmetic progression in the interval 1..n and containing n where the sequence is constant; in case of a tie, maximize the least common difference in those longest arithmetic progressions.

The programs for A359333, there is no canonical definition to state claims against.
-/

/-! ## A359333.P11222379444876918613

`A010060(A141399(n+3)%A084493(n+1))`
-/

namespace A359333.P11222379444876918613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.tmod (A141399 (n + 3)) (A084493 (n + 1))).toNat

end

end A359333.P11222379444876918613

/-! ## A359333.P6482507150420270626

`A189028(A007093(record[2-xor(1, -n)])²)`
-/

namespace A359333.P6482507150420270626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A007093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2).toNat

end

end A359333.P6482507150420270626

/-! ## A359333.P5150485940998339501

`A079559(A061783(n+4)-A078633(n+1))`
-/

namespace A359333.P5150485940998339501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 (A061783 (n + 4) - A078633 (n + 1)).toNat

end

end A359333.P5150485940998339501

/-! ## A359333.P1101026472488500056

`A353514(A084683(n))`
-/

namespace A359333.P1101026472488500056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353514 (A084683 n).toNat

end

end A359333.P1101026472488500056

/-! ## A359333.P13115623836413241471

`A079336(A102934(n+1))`
-/

namespace A359333.P13115623836413241471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (A102934 (n + 1)).toNat

end

end A359333.P13115623836413241471

/-!
# A359335: Square root of determinant of skew-symmetric 2n X 2n matrix with entries i XOR j for i < j, i=1..2n, j=1..2n.

The programs for A359335, there is no canonical definition to state claims against.
-/

/-! ## A359335.P4430529469430687125

`A078898(A000079(n)*A027151(n))`
-/

namespace A359335.P4430529469430687125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A000079 n * A027151 n).toNat

end

end A359335.P4430529469430687125

/-! ## A359335.P7701860115448650324

`A055034(A000988(n)*A242727(n+1))`
-/

namespace A359335.P7701860115448650324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A000988 n * A242727 (n + 1)).toNat

end

end A359335.P7701860115448650324

/-!
# A359336: Irregular triangle read by rows: the n-th row lists the values 0..2^n-1 representing all subsets of a set of n elements. When its elements are linearly ordered, the subsets are sorted first by their size and then lexicographically.

The programs for A359336, there is no canonical definition to state claims against.
-/

/-! ## A359336.P13800458401038384397

`A030109(A209862(n+1))`
-/

namespace A359336.P13800458401038384397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A209862 (n + 1)).toNat

end

end A359336.P13800458401038384397

/-! ## A359336.P16309187686816211335

`A030109(A239086(n+1))%A180416(n+1)`
-/

namespace A359336.P16309187686816211335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030109 (A239086 (n + 1)).toNat) (A180416 (n + 1))

end

end A359336.P16309187686816211335

/-! ## A359336.P4356046194145226328

`A025480(lt[A182880(n), A102357(n+1)])`
-/

namespace A359336.P4356046194145226328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359336.P4356046194145226328

/-! ## A359336.P6538461460479738001

`A025480(lt[A330952(n), A359897(2*n+3)])`
-/

namespace A359336.P6538461460479738001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359897 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359336.P6538461460479738001

/-!
# A359337: Irregular triangle read by rows: the n-th row gives the exponents of the powers of x corresponding to the maximal coefficient of the product x^2*(x^2 + x^3)*(x^2 + x^3 + x^5)*...*(x^2 + x^3 + x^5 + ... + x^prime(n)).

The programs for A359337, there is no canonical definition to state claims against.
-/

/-! ## A359337.P11941819315377098904

`∪[A359338(n), A359339(n)]`
-/

namespace A359337.P11941819315377098904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359337.P11941819315377098904

/-!
# A359338: Minimal exponent of the powers of x corresponding to the maximal coefficient of the product x^2*(x^2 + x^3)*(x^2 + x^3 + x^5)*...*(x^2 + x^3 + x^5 + ... + x^prime(n)).

The programs for A359338, there is no canonical definition to state claims against.
-/

/-! ## A359338.P1009075192770672785

`A000096(n)-A001222(A279568(n))`
-/

namespace A359338.P1009075192770672785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A001222 (A279568 n).toNat

end

end A359338.P1009075192770672785

/-! ## A359338.P4514403109031512466

`A035057(3*n+1)-A020497(n+1)`
-/

namespace A359338.P4514403109031512466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035057 (3 * n + 1) - A020497 (n + 1)

end

end A359338.P4514403109031512466

/-! ## A359338.P4557017876410467379

`∑[A161831(2*n+1)]-A000688(2*n+3)`
-/

namespace A359338.P4557017876410467379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161831 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000688 (2 * n + 3)

end

end A359338.P4557017876410467379

/-! ## A359338.P6536858334857884742

`A066113(n+2)+A056556(A029907(2*n))`
-/

namespace A359338.P6536858334857884742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066113 (n + 2) + A056556 (A029907 (2 * n)).toNat

end

end A359338.P6536858334857884742

/-!
# A359339: Maximal exponent of the powers of x corresponding to the maximal coefficient of the product x^2*(x^2 + x^3)*(x^2 + x^3 + x^5)*...*(x^2 + x^3 + x^5 + ... + x^prime(n)).

The programs for A359339, there is no canonical definition to state claims against.
-/

/-! ## A359339.P15710565268796350725

`A389317(n)-A383980(n)`
-/

namespace A359339.P15710565268796350725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389317 n - A383980 n

end

end A359339.P15710565268796350725

/-! ## A359339.P7653377992077427878

`A389317(n)-A086520(A266396(n+1))`
-/

namespace A359339.P7653377992077427878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389317 n - A086520 (A266396 (n + 1)).toNat

end

end A359339.P7653377992077427878

/-!
# A359341: Number of pandigital squares with n digits.

The programs for A359341, there is no canonical definition to state claims against.
-/

/-! ## A359341.P1429579998711386351

`A084497(3*n+4)*A185238(A236026(n+1))`
-/

namespace A359341.P1429579998711386351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084497 (3 * n + 4) * A185238 (A236026 (n + 1)).toNat

end

end A359341.P1429579998711386351

/-! ## A359341.P5296659190306820008

`A036855(A078350(2*(n+2))+A036862(3*n+2))`
-/

namespace A359341.P5296659190306820008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (A078350 (2 * (n + 2)) + A036862 (3 * n + 2)).toNat

end

end A359341.P5296659190306820008

/-!
# A359342: Least pandigital square with n digits.

The programs for A359342, there is no canonical definition to state claims against.
-/

/-! ## A359342.P12033282750181071551

`A359343(n)²`
-/

namespace A359342.P12033282750181071551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359343 (n + 10) ^ 2

end

end A359342.P12033282750181071551

/-! ## A359342.P3024074012838141735

`A359343(n)^(2%A359345(n))`
-/

namespace A359342.P3024074012838141735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359343 (n + 10) : ℚ) ^ (Int.tmod 2 (A359345 (n + 10)) : ℤ)

end

end A359342.P3024074012838141735

/-! ## A359342.P8541116364900842478

`A359343(n)^A000005(A359387(n+1))`
-/

namespace A359342.P8541116364900842478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359343 (n + 10) : ℚ) ^ (A000005 (A359387 (n + 1)).toNat : ℤ)

end

end A359342.P8541116364900842478

/-! ## A359342.P3628726021589229070

`A359343(n)^A000005(A359395(n+1))`
-/

namespace A359342.P3628726021589229070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359343 (n + 10) : ℚ) ^ (A000005 (A359395 (n + 1)).toNat : ℤ)

end

end A359342.P3628726021589229070

/-! ## A359342.P8549830184330077997

`A359343(n)^A000005(A359322(n+2))`
-/

namespace A359342.P8549830184330077997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359343 (n + 10) : ℚ) ^ (A000005 (A359322 (n + 2)).toNat : ℤ)

end

end A359342.P8549830184330077997

/-!
# A359343: Square roots of least pandigital squares with n digits.

The programs for A359343, there is no canonical definition to state claims against.
-/

/-! ## A359343.P3409200612534573995

`sqrt(A359342(n))`
-/

namespace A359343.P3409200612534573995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A359342 (n + 10) : ℝ)

end

end A359343.P3409200612534573995

/-! ## A359343.P12673638384439965292

`root(A359342(n), A020639(2*(n+2)))`
-/

namespace A359343.P12673638384439965292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A359342 (n + 10) : ℝ) ^ (1 / (A020639 (2 * (n + 2)) : ℝ))

end

end A359343.P12673638384439965292

/-! ## A359343.P1717106263250489823

`root(A359342(n), A359309(A359309(3*n+5)))`
-/

namespace A359343.P1717106263250489823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A359342 (n + 10) : ℝ) ^ (1 / (A359309 (A359309 (3 * n + 5)).toNat : ℝ))

end

end A359343.P1717106263250489823

/-!
# A359344: Largest pandigital square with n digits.

The programs for A359344, there is no canonical definition to state claims against.
-/

/-! ## A359344.P17093474210626947651

`A359345(n)²`
-/

namespace A359344.P17093474210626947651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359345 (n + 10) ^ 2

end

end A359344.P17093474210626947651

/-! ## A359344.P12402977258101736622

`A359345(n)^p?[A359305(n+1)]`
-/

namespace A359344.P12402977258101736622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359345 (n + 10) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A359344.P12402977258101736622

/-! ## A359344.P6274397447642677587

`A359345(n)^A000005(A359387(n+1))`
-/

namespace A359344.P6274397447642677587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359345 (n + 10) : ℚ) ^ (A000005 (A359387 (n + 1)).toNat : ℤ)

end

end A359344.P6274397447642677587

/-! ## A359344.P2360033830196285978

`A359345(n)^A000005(A359395(n+1))`
-/

namespace A359344.P2360033830196285978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359345 (n + 10) : ℚ) ^ (A000005 (A359395 (n + 1)).toNat : ℤ)

end

end A359344.P2360033830196285978

/-! ## A359344.P3005065915687466974

`A359345(n)^A000005(A359322(n+2))`
-/

namespace A359344.P3005065915687466974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359345 (n + 10) : ℚ) ^ (A000005 (A359322 (n + 2)).toNat : ℤ)

end

end A359344.P3005065915687466974

/-!
# A359345: Roots of largest pandigital squares with n digits.

The programs for A359345, there is no canonical definition to state claims against.
-/

/-! ## A359345.P3137053217622869908

`sqrt(A359344(n))`
-/

namespace A359345.P3137053217622869908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A359344 (n + 10) : ℝ)

end

end A359345.P3137053217622869908

/-! ## A359345.P6417630490849513751

`root(A359344(n), A359309(A359309(3*n+5)))`
-/

namespace A359345.P6417630490849513751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A359344 (n + 10) : ℝ) ^ (1 / (A359309 (A359309 (3 * n + 5)).toNat : ℝ))

end

end A359345.P6417630490849513751

/-!
# A359346: Reversible pandigital square numbers.

The programs for A359346, there is no canonical definition to state claims against.
-/

/-! ## A359346.P2422580863233509308

`A359347(n+1)²`
-/

namespace A359346.P2422580863233509308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359347 (n + 1) ^ 2

end

end A359346.P2422580863233509308

/-! ## A359346.P16083374411902906724

`A359347(A000027(n+1))*A359347(n+1)`
-/

namespace A359346.P16083374411902906724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359347 (A000027 (n + 1)).toNat * A359347 (n + 1)

end

end A359346.P16083374411902906724

/-! ## A359346.P8743952640154658657

`A359347(n+1)^A000005(A359322(n+2))`
-/

namespace A359346.P8743952640154658657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359347 (n + 1) : ℚ) ^ (A000005 (A359322 (n + 2)).toNat : ℤ)

end

end A359346.P8743952640154658657

/-! ## A359346.P2242834985358974546

`A359347(n+1)^A000005(A359395(n+1))`
-/

namespace A359346.P2242834985358974546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359347 (n + 1) : ℚ) ^ (A000005 (A359395 (n + 1)).toNat : ℤ)

end

end A359346.P2242834985358974546

/-! ## A359346.P10713775121596307765

`A359347(n+1)^A000005(A359387(n+1))`
-/

namespace A359346.P10713775121596307765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359347 (n + 1) : ℚ) ^ (A000005 (A359387 (n + 1)).toNat : ℤ)

end

end A359346.P10713775121596307765

/-!
# A359347: Roots of reversible pandigital square numbers.

The programs for A359347, there is no canonical definition to state claims against.
-/

/-! ## A359347.P8161384471361605995

`sqrt(A359346(n+1))`
-/

namespace A359347.P8161384471361605995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A359346 (n + 1) : ℝ)

end

end A359347.P8161384471361605995

/-! ## A359347.P12533370849122251292

`root(A359346(n+1), A359309(A359309(3*n+5)))`
-/

namespace A359347.P12533370849122251292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A359346 (n + 1) : ℝ) ^ (1 / (A359309 (A359309 (3 * n + 5)).toNat : ℝ))

end

end A359347.P12533370849122251292

/-!
# A359349: The initial bits, written from left to right, in the 2-adic limit of the mod 2^e value of the odd factor of (2^e)!.

The programs for A359349, there is no canonical definition to state claims against.
-/

/-! ## A359349.P3982451691973319331

`(A032352(A308251(n))+1)%2`
-/

namespace A359349.P3982451691973319331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032352 (A308251 n).toNat + 1) 2

end

end A359349.P3982451691973319331

/-! ## A359349.P1368837159984145278

`A024670(A005899(2*n+1)+4)%2`
-/

namespace A359349.P1368837159984145278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024670 (A005899 (2 * n + 1) + 4).toNat) 2

end

end A359349.P1368837159984145278

/-! ## A359349.P2870408697607844281

`A189718(A342528(n)+A323049(3*n+5))`
-/

namespace A359349.P2870408697607844281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (A342528 n + A323049 (3 * n + 5)).toNat

end

end A359349.P2870408697607844281

/-! ## A359349.P17478315345276933154

`A078588(A092119(n)+2)`
-/

namespace A359349.P17478315345276933154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A092119 n + 2).toNat

end

end A359349.P17478315345276933154

/-! ## A359349.P7104085058717412939

`A000161(A346341(2*(n+2))%A242488(3*n+2))`
-/

namespace A359349.P7104085058717412939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (Int.tmod (A346341 (2 * (n + 2))) (A242488 (3 * n + 2))).toNat

end

end A359349.P7104085058717412939

/-!
# A359350: Irregular triangle T(n,k) (n >= 1, k >= 1) read by rows: row n is constructed by replacing A336811(n,k) with the largest partition into consecutive parts of A000217(A336811(n,k)).

The programs for A359350, there is no canonical definition to state claims against.
-/

/-! ## A359350.P4432350223158256040

`A029931(gcd(A094694(n+1), A161146(2*n+1)))`
-/

namespace A359350.P4432350223158256040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (Int.gcd (A094694 (n + 1)) (A161146 (2 * n + 1)))

end

end A359350.P4432350223158256040

/-! ## A359350.P16054420237518986911

`A007814(A094694(n+1)*A343122(2*(n+2)))`
-/

namespace A359350.P16054420237518986911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A094694 (n + 1) * A343122 (2 * (n + 2))).toNat

end

end A359350.P16054420237518986911

/-! ## A359350.P11479730644716811998

`A220779(A387269(n+1))`
-/

namespace A359350.P11479730644716811998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220779 (A387269 (n + 1)).toNat

end

end A359350.P11479730644716811998

/-!
# A359351: a(n) = A001952(A003151(n)).

The programs for A359351, the canonical program `A359351.P7376502984362160420` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359351 has offset 1).

The definition of A359351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001952(A003151(n+1))` (program `A359351.P7376502984362160420`, by `A359351.P7376502984362160420.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A359351.P7376502984362160420

`A001952(A003151(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359351

/-- `A001952(A003151(n+1))` -/
def P7376502984362160420.Spec : Prop :=
  ∀ n, P7376502984362160420.a n = A359351 (n + 1)

theorem P7376502984362160420.correct : P7376502984362160420.Spec := by
  intro n
  simp only [A359351, Nat.add_sub_cancel]

end A359351

/-! ## A359351.P12169167638157990302

`3*comp[floor(n/sqrt(2))+n]+n`
-/

namespace A359351.P12169167638157990302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A359351.P12169167638157990302

namespace A359351

/-- `3*comp[floor(n/sqrt(2))+n]+n` -/
def P12169167638157990302.Spec : Prop :=
  ∀ n, (P12169167638157990302.a n : ℤ) = A359351 (n + 1)

end A359351

/-! ## A359351.P10445392512620732150

`abs(1-A188383(n+1))`
-/

namespace A359351.P10445392512620732150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A188383 (n + 1)|

end

end A359351.P10445392512620732150

namespace A359351

/-- `abs(1-A188383(n+1))` -/
def P10445392512620732150.Spec : Prop :=
  ∀ n, P10445392512620732150.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P17362517181308941162

`abs(4-A188302(n+1))`
-/

namespace A359351.P17362517181308941162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A188302 (n + 1)|

end

end A359351.P17362517181308941162

namespace A359351

/-- `abs(4-A188302(n+1))` -/
def P17362517181308941162.Spec : Prop :=
  ∀ n, P17362517181308941162.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P5715236106131788383

`ceil(sqrt(2)*A140868(n+1))`
-/

namespace A359351.P5715236106131788383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A140868 (n + 1) : ℝ)⌉

end

end A359351.P5715236106131788383

namespace A359351

/-- `ceil(sqrt(2)*A140868(n+1))` -/
def P5715236106131788383.Spec : Prop :=
  ∀ n, P5715236106131788383.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P4566223670479846383

`A341249(A081477(n+1))`
-/

namespace A359351.P4566223670479846383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (A081477 (n + 1)).toNat

end

end A359351.P4566223670479846383

namespace A359351

/-- `A341249(A081477(n+1))` -/
def P4566223670479846383.Spec : Prop :=
  ∀ n, P4566223670479846383.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P10394228691904054624

`∩[A341249(n+1), A395251(n+1)]`
-/

namespace A359351.P10394228691904054624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359351.P10394228691904054624

namespace A359351

/-- `∩[A341249(n+1), A395251(n+1)]` -/
def P10394228691904054624.Spec : Prop :=
  ∀ n, (P10394228691904054624.a n : ℤ) = A359351 (n + 1)

end A359351

/-! ## A359351.P2367073254888966482

`record[A187971(xor(1, n)+1)-1]`
-/

namespace A359351.P2367073254888966482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (Nat.xor 1 n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359351.P2367073254888966482

namespace A359351

/-- `record[A187971(xor(1, n)+1)-1]` -/
def P2367073254888966482.Spec : Prop :=
  ∀ n, P2367073254888966482.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P17247864939691919624

`A001952(floor((sqrt(2)+1)*(n+1)))`
-/

namespace A359351.P17247864939691919624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 ⌊(Real.sqrt (2 : ℝ) + 1) * (n + 1 : ℝ)⌋.toNat

end

end A359351.P17247864939691919624

namespace A359351

/-- `A001952(floor((sqrt(2)+1)*(n+1)))` -/
def P17247864939691919624.Spec : Prop :=
  ∀ n, P17247864939691919624.a n = A359351 (n + 1)

theorem P17247864939691919624.correct : P17247864939691919624.Spec := by
  intro n
  simp only [A359351, Nat.add_sub_cancel, A359351.P17247864939691919624.a, A359351.P7376502984362160420.a, A001952, A001952.P10508951561380553.a, A003151, A003151.P5230567170801236160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A359351

/-! ## A359351.P1262161186852412293

`A289037(A087057(n+1)+n)`
-/

namespace A359351.P1262161186852412293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (A087057 (n + 1) + (n : ℤ)).toNat

end

end A359351.P1262161186852412293

namespace A359351

/-- `A289037(A087057(n+1)+n)` -/
def P1262161186852412293.Spec : Prop :=
  ∀ n, P1262161186852412293.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P14238474174075311643

`∩[A001952(n+1), A395251(n+1)]`
-/

namespace A359351.P14238474174075311643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359351.P14238474174075311643

namespace A359351

/-- `∩[A001952(n+1), A395251(n+1)]` -/
def P14238474174075311643.Spec : Prop :=
  ∀ n, (P14238474174075311643.a n : ℤ) = A359351 (n + 1)

end A359351

/-! ## A359351.P211027314499393107

`A086377(comp[floor(n*sqrt(2))])`
-/

namespace A359351.P211027314499393107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A359351.P211027314499393107

namespace A359351

/-- `A086377(comp[floor(n*sqrt(2))])` -/
def P211027314499393107.Spec : Prop :=
  ∀ n, P211027314499393107.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P15185098654763717408

`A286666(comp[floor(n*sqrt(2))])`
-/

namespace A359351.P15185098654763717408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A359351.P15185098654763717408

namespace A359351

/-- `A286666(comp[floor(n*sqrt(2))])` -/
def P15185098654763717408.Spec : Prop :=
  ∀ n, P15185098654763717408.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P1547105683346607495

`A026250(A184922(n+1))`
-/

namespace A359351.P1547105683346607495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A184922 (n + 1)).toNat

end

end A359351.P1547105683346607495

namespace A359351

/-- `A026250(A184922(n+1))` -/
def P1547105683346607495.Spec : Prop :=
  ∀ n, P1547105683346607495.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P2038359345098954112

`A026250(A001952(n+1)-1)`
-/

namespace A359351.P2038359345098954112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A001952 (n + 1) - 1).toNat

end

end A359351.P2038359345098954112

namespace A359351

/-- `A026250(A001952(n+1)-1)` -/
def P2038359345098954112.Spec : Prop :=
  ∀ n, P2038359345098954112.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P430385477968920810

`∩[A286666(n+1), A395251(n+1)]`
-/

namespace A359351.P430385477968920810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359351.P430385477968920810

namespace A359351

/-- `∩[A286666(n+1), A395251(n+1)]` -/
def P430385477968920810.Spec : Prop :=
  ∀ n, (P430385477968920810.a n : ℤ) = A359351 (n + 1)

end A359351

/-! ## A359351.P8727146982669349057

`A188399(A189380(n+1))`
-/

namespace A359351.P8727146982669349057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188399 (A189380 (n + 1)).toNat

end

end A359351.P8727146982669349057

namespace A359351

/-- `A188399(A189380(n+1))` -/
def P8727146982669349057.Spec : Prop :=
  ∀ n, P8727146982669349057.a n = A359351 (n + 1)

end A359351

/-! ## A359351.P16436560278999204761

`∩[A327179(n+1), A395251(n+1)]`
-/

namespace A359351.P16436560278999204761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359351.P16436560278999204761

namespace A359351

/-- `∩[A327179(n+1), A395251(n+1)]` -/
def P16436560278999204761.Spec : Prop :=
  ∀ n, (P16436560278999204761.a n : ℤ) = A359351 (n + 1)

end A359351

/-! ## A359351.P10360280711152839861

`∩[A327206(n+1), A395251(n+1)]`
-/

namespace A359351.P10360280711152839861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359351.P10360280711152839861

namespace A359351

/-- `∩[A327206(n+1), A395251(n+1)]` -/
def P10360280711152839861.Spec : Prop :=
  ∀ n, (P10360280711152839861.a n : ℤ) = A359351 (n + 1)

end A359351

/-! ## A359351.P14459344510031214494

`A188323(A286923(n+1))`
-/

namespace A359351.P14459344510031214494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (A286923 (n + 1)).toNat

end

end A359351.P14459344510031214494

namespace A359351

/-- `A188323(A286923(n+1))` -/
def P14459344510031214494.Spec : Prop :=
  ∀ n, P14459344510031214494.a n = A359351 (n + 1)

end A359351

/-!
# A359352: a(n) = A026430(1 + A026430(n)).

The programs for A359352, the canonical program `A359352.P14078753108705027464` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359352 has offset 1).

The definition of A359352 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359352.P14078753108705027464

`A026430(1+A026430(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359352

/-- `A026430(1+A026430(n+1))` -/
def P14078753108705027464.Spec : Prop :=
  ∀ n, P14078753108705027464.a n = A359352 (n + 1)

theorem P14078753108705027464.correct : P14078753108705027464.Spec := by
  intro n
  simp only [A359352, Nat.add_sub_cancel]

end A359352

/-! ## A359352.P3633139559521882422

`A285954(∑[2-char[xor(n, 2*n)]]+2)-1`
-/

namespace A359352.P3633139559521882422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 1

end

end A359352.P3633139559521882422

namespace A359352

/-- `A285954(∑[2-char[xor(n, 2*n)]]+2)-1` -/
def P3633139559521882422.Spec : Prop :=
  ∀ n, P3633139559521882422.a n = A359352 (n + 1)

end A359352

/-! ## A359352.P3964532470803018552

`A026430(∑[2-(n-a(floor(n/2)))%2])` with `a(0)=2, a(1)=2`
-/

namespace A359352.P3964532470803018552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 - Int.tmod ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359352.P3964532470803018552

namespace A359352

/-- `A026430(∑[2-(n-a(floor(n/2)))%2])` -/
def P3964532470803018552.Spec : Prop :=
  ∀ n, P3964532470803018552.a n = A359352 (n + 1)

end A359352

/-! ## A359352.P281998794338938347

`A026430(A285954(n+2))`
-/

namespace A359352.P281998794338938347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A285954 (n + 2)).toNat

end

end A359352.P281998794338938347

namespace A359352

/-- `A026430(A285954(n+2))` -/
def P281998794338938347.Spec : Prop :=
  ∀ n, P281998794338938347.a n = A359352 (n + 1)

theorem P281998794338938347.correct : P281998794338938347.Spec := by
  intro n
  simp only [A359352, Nat.add_sub_cancel, A359352.P281998794338938347.a, A359352.P14078753108705027464.a, A026430, A026430.P14890685957938381463.a, A285954, A285954.P14356408792107538698.a, A000069, A000069.P3917626109476666468.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359352

/-! ## A359352.P9972917525428402946

`A026430(∑[A001285(n)]+1)`
-/

namespace A359352.P9972917525428402946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A359352.P9972917525428402946

namespace A359352

/-- `A026430(∑[A001285(n)]+1)` -/
def P9972917525428402946.Spec : Prop :=
  ∀ n, P9972917525428402946.a n = A359352 (n + 1)

end A359352

/-! ## A359352.P16974422955892143257

`A285954(A360392(n+1))-1`
-/

namespace A359352.P16974422955892143257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A360392 (n + 1)).toNat - 1

end

end A359352.P16974422955892143257

namespace A359352

/-- `A285954(A360392(n+1))-1` -/
def P16974422955892143257.Spec : Prop :=
  ∀ n, P16974422955892143257.a n = A359352 (n + 1)

end A359352

/-! ## A359352.P12467128142591210069

`A285954(∑[A001285(n)]+2)-1`
-/

namespace A359352.P12467128142591210069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 1

end

end A359352.P12467128142591210069

namespace A359352

/-- `A285954(∑[A001285(n)]+2)-1` -/
def P12467128142591210069.Spec : Prop :=
  ∀ n, P12467128142591210069.a n = A359352 (n + 1)

end A359352

/-! ## A359352.P11046436564587220516

`A137719(A360134(n+1))`
-/

namespace A359352.P11046436564587220516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 (A360134 (n + 1)).toNat

end

end A359352.P11046436564587220516

namespace A359352

/-- `A137719(A360134(n+1))` -/
def P11046436564587220516.Spec : Prop :=
  ∀ n, P11046436564587220516.a n = A359352 (n + 1)

end A359352

/-! ## A359352.P6615225503134980008

`A174257(A360400(n+1))`
-/

namespace A359352.P6615225503134980008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A360400 (n + 1)).toNat

end

end A359352.P6615225503134980008

namespace A359352

/-- `A174257(A360400(n+1))` -/
def P6615225503134980008.Spec : Prop :=
  ∀ n, P6615225503134980008.a n = A359352 (n + 1)

end A359352

/-!
# A359353: a(n) = A026430(A285953(n+1)).

The programs for A359353, there is no canonical definition to state claims against.
-/

/-! ## A359353.P10989380026693799517

`A026430(A360393(n+2)-1)`
-/

namespace A359353.P10989380026693799517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A360393 (n + 2) - 1).toNat

end

end A359353.P10989380026693799517

/-! ## A359353.P6679036363171064572

`A026430(comp[A026430(n+1)]+1)`
-/

namespace A359353.P6679036363171064572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A359353.P6679036363171064572

/-! ## A359353.P15191556441918919034

`Δ[∑[A285954(A360393(n+1))]-n]`
-/

namespace A359353.P15191556441918919034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A360393 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359353.P15191556441918919034

/-! ## A359353.P17000112595484251067

`A026430(∪[A285953(n+1), A360137(n+1)])`
-/

namespace A359353.P17000112595484251067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360137 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A359353.P17000112595484251067

/-! ## A359353.P7498674806953823432

`A026430(∪[A360137(n+1), A360139(n+1)])`
-/

namespace A359353.P7498674806953823432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A359353.P7498674806953823432

/-! ## A359353.P10771955851165649256

`A137719(A360135(n+1))`
-/

namespace A359353.P10771955851165649256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 (A360135 (n + 1)).toNat

end

end A359353.P10771955851165649256

/-! ## A359353.P24954943929117035

`A174257(A360401(n+2))`
-/

namespace A359353.P24954943929117035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A360401 (n + 2)).toNat

end

end A359353.P24954943929117035

/-! ## A359353.P14480797780234309913

`A137719(A360401(n+2)-2)`
-/

namespace A359353.P14480797780234309913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 (A360401 (n + 2) - 2).toNat

end

end A359353.P14480797780234309913

/-!
# A359355: a(n) = A359107(2*n, n) = Sum_{j=0..n} Stirling2(2*n, j) = Sum_{j=0..n} A048993(2*n, j).

The programs for A359355, there is no canonical definition to state claims against.
-/

/-! ## A359355.P13675222838452603065

`A277364(2*n)`
-/

namespace A359355.P13675222838452603065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277364 (2 * n)

end

end A359355.P13675222838452603065

/-! ## A359355.P10584286227948008553

`A137855(A140064(n))`
-/

namespace A359355.P10584286227948008553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A140064 n).toNat

end

end A359355.P10584286227948008553

/-! ## A359355.P17811116459404731867

`A137855(A152947(3*n+1)-n)`
-/

namespace A359355.P17811116459404731867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A152947 (3 * n + 1) - (n : ℤ)).toNat

end

end A359355.P17811116459404731867

/-! ## A359355.P8005208747728658970

`A278984(A117625(n))`
-/

namespace A359355.P8005208747728658970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A117625 n).toNat

end

end A359355.P8005208747728658970

/-! ## A359355.P15581042804229161642

`A278984(A051682(n)+1)`
-/

namespace A359355.P15581042804229161642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A051682 n + 1).toNat

end

end A359355.P15581042804229161642

/-!
# A359356: a(n-1) + a(n) has only digits also in a(n); lexicographically earliest such sequence of distinct nonnegative integers.

The programs for A359356, there is no canonical definition to state claims against.
-/

/-! ## A359356.P10963925135710819885

`lt[A359517(n), 5]`
-/

namespace A359356.P10963925135710819885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359517 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359356.P10963925135710819885

/-!
# A359358: Let y be the integer partition with Heinz number n. Then a(n) is the size of the Young diagram of y after removing a rectangle of the same length as y and width equal to the smallest part of y.

The programs for A359358, the canonical program `A359358.P4456676198763462925` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359358 has offset 1).

The definition of A359358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359358.P11094557232583422092

`A056239(n+1)-A359360(n+1)`
-/

namespace A359358.P11094557232583422092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A359360 (n + 1)

end

end A359358.P11094557232583422092

namespace A359358

/-- `A056239(n+1)-A359360(n+1)` -/
def P11094557232583422092.Spec : Prop :=
  ∀ n, P11094557232583422092.a n = A359358 (n + 1)

theorem P11094557232583422092.correct : P11094557232583422092.Spec := by
  intro n
  simp only [A359358, Nat.add_sub_cancel, A359358.P11094557232583422092.a, A359358.P4456676198763462925.a, A056239, A056239.P11316688788989965672.a, A318995, A318995.P1948814167447618937.f1, A318995.P1948814167447618937.a, A348717, A348717.P703712104273003584.a, A359360, A359360.P2190220830273332506.a, A022559, A022559.P10554250414511796107.a, A122111, A122111.P18124015185857335041.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243074, A243074.P6910029884229255604.a, A001222, A001222.P11318177267732088261.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A006530, A006530.P13372528560459906635.a, A048896, A048896.P6461019053085857547.a, A051119, A051119.P33126866714900772.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A008578, A008578.P3639467937083264764.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A053585, A053585.P10057542052652531507.a, A061395, A061395.P8431317036300486107.a, A070229, A070229.P5792893597916963980.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A359358

/-! ## A359358.P11562917461163199392

`A056239(n+1)-A001222(n+1)*A055396(n+1)`
-/

namespace A359358.P11562917461163199392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A001222 (n + 1) * A055396 (n + 1)

end

end A359358.P11562917461163199392

namespace A359358

/-- `A056239(n+1)-A001222(n+1)*A055396(n+1)` -/
def P11562917461163199392.Spec : Prop :=
  ∀ n, P11562917461163199392.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P4456676198763462925

`A318995(A348717(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A359358

/-- `A318995(A348717(n+1))` -/
def P4456676198763462925.Spec : Prop :=
  ∀ n, P4456676198763462925.a n = A359358 (n + 1)

theorem P4456676198763462925.correct : P4456676198763462925.Spec := by
  intro n
  simp only [A359358, Nat.add_sub_cancel]

end A359358

/-! ## A359358.P789283857592752746

`A316436(2*(n+1))-1-A359360(n+1)`
-/

namespace A359358.P789283857592752746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A359360 (n + 1)

end

end A359358.P789283857592752746

namespace A359358

/-- `A316436(2*(n+1))-1-A359360(n+1)` -/
def P789283857592752746.Spec : Prop :=
  ∀ n, P789283857592752746.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P14205884929548033616

`n+1-A178503(n+1)-A359360(n+1)`
-/

namespace A359358.P14205884929548033616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A178503 (n + 1) - A359360 (n + 1)

end

end A359358.P14205884929548033616

namespace A359358

/-- `n+1-A178503(n+1)-A359360(n+1)` -/
def P14205884929548033616.Spec : Prop :=
  ∀ n, P14205884929548033616.a n = A359358 (n + 1)

theorem P14205884929548033616.correct : P14205884929548033616.Spec := by
  intro n
  simp only [A359358, Nat.add_sub_cancel, A359358.P14205884929548033616.a, A359358.P4456676198763462925.a, A178503, A178503.P4821530667985743072.a, A318995, A318995.P1948814167447618937.f1, A318995.P1948814167447618937.a, A348717, A348717.P703712104273003584.a, A359360, A359360.P2190220830273332506.a, A022559, A022559.P10554250414511796107.a, A056239, A056239.P11316688788989965672.a, A122111, A122111.P18124015185857335041.a, A243074, A243074.P6910029884229255604.a, A001222, A001222.P11318177267732088261.a, A006530, A006530.P13372528560459906635.a, A051119, A051119.P33126866714900772.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A052126, A052126.P1944428405920482243.a, A053585, A053585.P10057542052652531507.a, A061395, A061395.P8431317036300486107.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A359358

/-! ## A359358.P10875346137797043114

`A056239(n+1)-A056239(A068794(n+1))`
-/

namespace A359358.P10875346137797043114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A068794 (n + 1)).toNat

end

end A359358.P10875346137797043114

namespace A359358

/-- `A056239(n+1)-A056239(A068794(n+1))` -/
def P10875346137797043114.Spec : Prop :=
  ∀ n, P10875346137797043114.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P3877584185108274855

`A056239(A348717(n+1))-A001222(n+1)`
-/

namespace A359358.P3877584185108274855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A348717 (n + 1)).toNat - A001222 (n + 1)

end

end A359358.P3877584185108274855

namespace A359358

/-- `A056239(A348717(n+1))-A001222(n+1)` -/
def P3877584185108274855.Spec : Prop :=
  ∀ n, P3877584185108274855.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P15421211417139733387

`A261079(n+1)-A261079(A032742(n+1))`
-/

namespace A359358.P15421211417139733387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1) - A261079 (A032742 (n + 1)).toNat

end

end A359358.P15421211417139733387

namespace A359358

/-- `A261079(n+1)-A261079(A032742(n+1))` -/
def P15421211417139733387.Spec : Prop :=
  ∀ n, P15421211417139733387.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P16643320408486758050

`A261079(n+1)-A261079(A063928(n+1))`
-/

namespace A359358.P16643320408486758050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1) - A261079 (A063928 (n + 1)).toNat

end

end A359358.P16643320408486758050

namespace A359358

/-- `A261079(n+1)-A261079(A063928(n+1))` -/
def P16643320408486758050.Spec : Prop :=
  ∀ n, P16643320408486758050.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P10053172541700975330

`A318995(A354187(n+1)-A354186(n+1))`
-/

namespace A359358.P10053172541700975330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A354187 (n + 1) - A354186 (n + 1)).toNat

end

end A359358.P10053172541700975330

namespace A359358

/-- `A318995(A354187(n+1)-A354186(n+1))` -/
def P10053172541700975330.Spec : Prop :=
  ∀ n, P10053172541700975330.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P13800222178084022737

`∑{d}[n+1, A297109(#)]-A001222(n+1)*A055396(n+1)`
-/

namespace A359358.P13800222178084022737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297109 d - A001222 (n + 1) * A055396 (n + 1)

end

end A359358.P13800222178084022737

namespace A359358

/-- `∑{d}[n+1, A297109(#)]-A001222(n+1)*A055396(n+1)` -/
def P13800222178084022737.Spec : Prop :=
  ∀ n, P13800222178084022737.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P4325130219775619262

`1-A178503(n+1)+n-A001222(n+1)*A055396(n+1)`
-/

namespace A359358.P4325130219775619262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178503 (n + 1) + (n : ℤ) - A001222 (n + 1) * A055396 (n + 1)

end

end A359358.P4325130219775619262

namespace A359358

/-- `1-A178503(n+1)+n-A001222(n+1)*A055396(n+1)` -/
def P4325130219775619262.Spec : Prop :=
  ∀ n, P4325130219775619262.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P9898472623716865103

`A339894(n+1)-(A055396(n+1)*A086436(n+1)-A339896(n+1))`
-/

namespace A359358.P9898472623716865103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - (A055396 (n + 1) * A086436 (n + 1) - A339896 (n + 1))

end

end A359358.P9898472623716865103

namespace A359358

/-- `A339894(n+1)-(A055396(n+1)*A086436(n+1)-A339896(n+1))` -/
def P9898472623716865103.Spec : Prop :=
  ∀ n, P9898472623716865103.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P5533104369469060142

`A318995(2*(A078898(n+1)+A280492(n+1)+A246277(n+1)))`
-/

namespace A359358.P5533104369469060142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (2 * (A078898 (n + 1) + (A280492 (n + 1) + A246277 (n + 1)))).toNat

end

end A359358.P5533104369469060142

namespace A359358

/-- `A318995(2*(A078898(n+1)+A280492(n+1)+A246277(n+1)))` -/
def P5533104369469060142.Spec : Prop :=
  ∀ n, P5533104369469060142.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P10285343664639316569

`A318283(A032742(n+1))-A318283(A052126(n+1))`
-/

namespace A359358.P10285343664639316569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A032742 (n + 1)).toNat - A318283 (A052126 (n + 1)).toNat

end

end A359358.P10285343664639316569

namespace A359358

/-- `A318283(A032742(n+1))-A318283(A052126(n+1))` -/
def P10285343664639316569.Spec : Prop :=
  ∀ n, P10285343664639316569.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P1395459080698577358

`A326844(A137502(n+1))`
-/

namespace A359358.P1395459080698577358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A137502 (n + 1)).toNat

end

end A359358.P1395459080698577358

namespace A359358

/-- `A326844(A137502(n+1))` -/
def P1395459080698577358.Spec : Prop :=
  ∀ n, P1395459080698577358.a n = A359358 (n + 1)

end A359358

/-! ## A359358.P5975965229161943988

`A326844(A293448(n+1))`
-/

namespace A359358.P5975965229161943988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A293448 (n + 1)).toNat

end

end A359358.P5975965229161943988

namespace A359358

/-- `A326844(A293448(n+1))` -/
def P5975965229161943988.Spec : Prop :=
  ∀ n, P5975965229161943988.a n = A359358 (n + 1)

end A359358

/-!
# A359359: Sum of positions of zeros in the binary expansion of n, where positions are read starting with 1 from the left (big-endian).

The programs for A359359, there is no canonical definition to state claims against.
-/

/-! ## A359359.P7549017771933251499

`A029931(A036044(n))`
-/

namespace A359359.P7549017771933251499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A036044 n).toNat

end

end A359359.P7549017771933251499

/-! ## A359359.P12749556880666497007

`A073642(2*A036044(n))`
-/

namespace A359359.P12749556880666497007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * A036044 n).toNat

end

end A359359.P12749556880666497007

/-! ## A359359.P2232858913476089546

`A083742(n)+A037861(n)`
-/

namespace A359359.P2232858913476089546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083742 n + A037861 n

end

end A359359.P2232858913476089546

/-! ## A359359.P2337431506746935684

`A359400(n)-A359495(n)`
-/

namespace A359359.P2337431506746935684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n - A359495 n

end

end A359359.P2337431506746935684

/-! ## A359359.P8043875681298654317

`A055941(n)+A000217(A023416(n))`
-/

namespace A359359.P8043875681298654317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n + A000217 (A023416 n).toNat

end

end A359359.P8043875681298654317

/-! ## A359359.P1744054580201887856

`A000217(A070939(n))-A230877(n)`
-/

namespace A359359.P1744054580201887856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A070939 n).toNat - A230877 n

end

end A359359.P1744054580201887856

/-! ## A359359.P4142335490173783500

`A029931(A035327(n))-A359495(n)`
-/

namespace A359359.P4142335490173783500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A035327 n).toNat - A359495 n

end

end A359359.P4142335490173783500

/-! ## A359359.P17300361728691156354

`A029931(A035327(n))-(A231204(n)-A073642(n))`
-/

namespace A359359.P17300361728691156354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A035327 n).toNat - (A231204 n - A073642 n)

end

end A359359.P17300361728691156354

/-!
# A359360: Length times minimum part of the integer partition with Heinz number n. Least prime index of n times number of prime indices of n.

The programs for A359360, the canonical program `A359360.P2190220830273332506` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359360 has offset 1).

The definition of A359360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359360.P3502356222535210231

`A001222(n+1)*A055396(n+1)`
-/

namespace A359360.P3502356222535210231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A055396 (n + 1)

end

end A359360.P3502356222535210231

namespace A359360

/-- `A001222(n+1)*A055396(n+1)` -/
def P3502356222535210231.Spec : Prop :=
  ∀ n, P3502356222535210231.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P3241571542532072047

`A056239(A068794(n+1))`
-/

namespace A359360.P3241571542532072047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A068794 (n + 1)).toNat

end

end A359360.P3241571542532072047

namespace A359360

/-- `A056239(A068794(n+1))` -/
def P3241571542532072047.Spec : Prop :=
  ∀ n, P3241571542532072047.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P1357705939729308083

`∑{d}[A068794(n+1), A055396(#)]`
-/

namespace A359360.P1357705939729308083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A359360.P1357705939729308083

namespace A359360

/-- `∑{d}[A068794(n+1), A055396(#)]` -/
def P1357705939729308083.Spec : Prop :=
  ∀ n, P1357705939729308083.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P2880996906390848622

`∑{d}[A068794(n+1), A061395(#)]`
-/

namespace A359360.P2880996906390848622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A359360.P2880996906390848622

namespace A359360

/-- `∑{d}[A068794(n+1), A061395(#)]` -/
def P2880996906390848622.Spec : Prop :=
  ∀ n, P2880996906390848622.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P6709659863661264680

`Δ[A022559(n)]*A055396(n+1)`
-/

namespace A359360.P6709659863661264680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055396 (n + 1)

end

end A359360.P6709659863661264680

namespace A359360

/-- `Δ[A022559(n)]*A055396(n+1)` -/
def P6709659863661264680.Spec : Prop :=
  ∀ n, P6709659863661264680.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P2190220830273332506

`A056239(n+1)-A359358(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A359360

/-- `A056239(n+1)-A359358(n+1)` -/
def P2190220830273332506.Spec : Prop :=
  ∀ n, P2190220830273332506.a n = A359360 (n + 1)

theorem P2190220830273332506.correct : P2190220830273332506.Spec := by
  intro n
  simp only [A359360, Nat.add_sub_cancel]

end A359360

/-! ## A359360.P16127210515112967790

`A055396(n+1)*A086436(n+1)`
-/

namespace A359360.P16127210515112967790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) * A086436 (n + 1)

end

end A359360.P16127210515112967790

namespace A359360

/-- `A055396(n+1)*A086436(n+1)` -/
def P16127210515112967790.Spec : Prop :=
  ∀ n, P16127210515112967790.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P11432568888397451499

`∑{e}[n+1, #]*A000720(A020639(n+1))`
-/

namespace A359360.P11432568888397451499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A000720 (A020639 (n + 1)).toNat

end

end A359360.P11432568888397451499

namespace A359360

/-- `∑{e}[n+1, #]*A000720(A020639(n+1))` -/
def P11432568888397451499.Spec : Prop :=
  ∀ n, P11432568888397451499.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P13070728243045013557

`(A000005(∏{e}[n+1, 2^#])-1)*A055396(n+1)`
-/

namespace A359360.P13070728243045013557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1) * A055396 (n + 1)

end

end A359360.P13070728243045013557

namespace A359360

/-- `(A000005(∏{e}[n+1, 2^#])-1)*A055396(n+1)` -/
def P13070728243045013557.Spec : Prop :=
  ∀ n, P13070728243045013557.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P2728435589304562343

`∑{d}[A068794(n+1), A049084(A006530(#))]`
-/

namespace A359360.P2728435589304562343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 (A006530 d).toNat

end

end A359360.P2728435589304562343

namespace A359360

/-- `∑{d}[A068794(n+1), A049084(A006530(#))]` -/
def P2728435589304562343.Spec : Prop :=
  ∀ n, P2728435589304562343.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P15859594965593887036

`∑{d}[A068794(n+1), A065770(A020639(#))]`
-/

namespace A359360.P15859594965593887036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065770 (A020639 d).toNat

end

end A359360.P15859594965593887036

namespace A359360

/-- `∑{d}[A068794(n+1), A065770(A020639(#))]` -/
def P15859594965593887036.Spec : Prop :=
  ∀ n, P15859594965593887036.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P27535062367653215

`A001222(n+1)*A049084(A020639(n+1))`
-/

namespace A359360.P27535062367653215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A049084 (A020639 (n + 1)).toNat

end

end A359360.P27535062367653215

namespace A359360

/-- `A001222(n+1)*A049084(A020639(n+1))` -/
def P27535062367653215.Spec : Prop :=
  ∀ n, P27535062367653215.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P17187060978963752847

`A055396(n+1)*A055396(A105560(n+1))`
-/

namespace A359360.P17187060978963752847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) * A055396 (A105560 (n + 1)).toNat

end

end A359360.P17187060978963752847

namespace A359360

/-- `A055396(n+1)*A055396(A105560(n+1))` -/
def P17187060978963752847.Spec : Prop :=
  ∀ n, P17187060978963752847.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P13179516237778814377

`A001222(n+1)*A302039(A061228(n+1)-(n+1))`
-/

namespace A359360.P13179516237778814377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A302039 (A061228 (n + 1) - (n + 1 : ℤ)).toNat

end

end A359360.P13179516237778814377

namespace A359360

/-- `A001222(n+1)*A302039(A061228(n+1)-(n+1))` -/
def P13179516237778814377.Spec : Prop :=
  ∀ n, P13179516237778814377.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P12344681930278175250

`A056239(A020639(n+1))*A056239(A181819(n+1))`
-/

namespace A359360.P12344681930278175250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A020639 (n + 1)).toNat * A056239 (A181819 (n + 1)).toNat

end

end A359360.P12344681930278175250

namespace A359360

/-- `A056239(A020639(n+1))*A056239(A181819(n+1))` -/
def P12344681930278175250.Spec : Prop :=
  ∀ n, P12344681930278175250.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P12012308587452315070

`A061395(A074828(n+1))*A252464(A061142(n+1))`
-/

namespace A359360.P12012308587452315070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A074828 (n + 1)).toNat * A252464 (A061142 (n + 1)).toNat

end

end A359360.P12012308587452315070

namespace A359360

/-- `A061395(A074828(n+1))*A252464(A061142(n+1))` -/
def P12012308587452315070.Spec : Prop :=
  ∀ n, P12012308587452315070.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P13485853930062909153

`A001222(n+1)*A286471(2*(n+1))`
-/

namespace A359360.P13485853930062909153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A286471 (2 * (n + 1))

end

end A359360.P13485853930062909153

namespace A359360

/-- `A001222(n+1)*A286471(2*(n+1))` -/
def P13485853930062909153.Spec : Prop :=
  ∀ n, P13485853930062909153.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P13505228439149900424

`A318283(n+1)-A318283(A032742(n+1))`
-/

namespace A359360.P13505228439149900424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (n + 1) - A318283 (A032742 (n + 1)).toNat

end

end A359360.P13505228439149900424

namespace A359360

/-- `A318283(n+1)-A318283(A032742(n+1))` -/
def P13505228439149900424.Spec : Prop :=
  ∀ n, P13505228439149900424.a n = A359360 (n + 1)

end A359360

/-! ## A359360.P11648478172913045751

`A360676(A347043((n+1)²)²)`
-/

namespace A359360.P11648478172913045751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A347043 ((n + 1) ^ 2) ^ 2).toNat

end

end A359360.P11648478172913045751

namespace A359360

/-- `A360676(A347043((n+1)²)²)` -/
def P11648478172913045751.Spec : Prop :=
  ∀ n, P11648478172913045751.a n = A359360 (n + 1)

end A359360

/-!
# A359361: Irregular triangle read by rows whose n-th row lists the partial sums of the integer partition with Heinz number n.

The programs for A359361, there is no canonical definition to state claims against.
-/

/-! ## A359361.P11992266477081716798

`A056239(A285904(n+2))`
-/

namespace A359361.P11992266477081716798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A285904 (n + 2)).toNat

end

end A359361.P11992266477081716798

/-! ## A359361.P17027944844836417480

`∑{d}[A285904(n+2), A297109(#)]`
-/

namespace A359361.P17027944844836417480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285904 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A359361.P17027944844836417480

/-! ## A359361.P2561338288250868308

`A053735(comp[13*n]%A154496(2*n+1))`
-/

namespace A359361.P2561338288250868308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A154496 (2 * n + 1))).toNat

end

end A359361.P2561338288250868308

/-! ## A359361.P10002794115284921516

`A053735(comp[13*n])%A154486(3*(n+1))`
-/

namespace A359361.P10002794115284921516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A154486 (3 * (n + 1)))

end

end A359361.P10002794115284921516

/-! ## A359361.P12244887695956552791

`A053735(A011760(n+1)%A175545(n+2))`
-/

namespace A359361.P12244887695956552791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Int.tmod (A011760 (n + 1)) (A175545 (n + 2))).toNat

end

end A359361.P12244887695956552791

/-!
# A359362: a(n) = (A001222(n) + 1) * A056239(n), where A001222 counts prime indices and A056239 adds them up.

The programs for A359362, the canonical program `A359362.P17874274193599552261` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359362 has offset 1).

The definition of A359362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359362.P17874274193599552261

`(A001222(n+1)+1)*A056239(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A359362

/-- `(A001222(n+1)+1)*A056239(n+1)` -/
def P17874274193599552261.Spec : Prop :=
  ∀ n, P17874274193599552261.a n = A359362 (n + 1)

theorem P17874274193599552261.correct : P17874274193599552261.Spec := by
  intro n
  simp only [A359362, Nat.add_sub_cancel]

end A359362

/-! ## A359362.P18035310276013514999

`2*A304818(n+1)-A261079(n+1)`
-/

namespace A359362.P18035310276013514999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304818 (n + 1) - A261079 (n + 1)

end

end A359362.P18035310276013514999

namespace A359362

/-- `2*A304818(n+1)-A261079(n+1)` -/
def P18035310276013514999.Spec : Prop :=
  ∀ n, P18035310276013514999.a n = A359362 (n + 1)

end A359362

/-! ## A359362.P11815248576734111369

`(1-A178503(n+1)+n)*∑{e}[2*xor(n, -1), #]`
-/

namespace A359362.P11815248576734111369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A178503 (n + 1) + (n : ℤ)) * ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A359362.P11815248576734111369

namespace A359362

/-- `(1-A178503(n+1)+n)*∑{e}[2*xor(n, -1), #]` -/
def P11815248576734111369.Spec : Prop :=
  ∀ n, P11815248576734111369.a n = A359362 (n + 1)

end A359362

/-! ## A359362.P2424073268862802912

`(log2(∏{e}[n+1, 2^#])+1)*(A316436(2*(n+1))-1)`
-/

namespace A359362.P2424073268862802912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) + 1) * (A316436 (2 * (n + 1)) - 1 : ℝ)

end

end A359362.P2424073268862802912

namespace A359362

/-- `(log2(∏{e}[n+1, 2^#])+1)*(A316436(2*(n+1))-1)` -/
def P2424073268862802912.Spec : Prop :=
  ∀ n, P2424073268862802912.a n = (A359362 (n + 1) : ℝ)

end A359362

/-! ## A359362.P16542398659234199727

`A056239(n+1)*A073093(n+1)`
-/

namespace A359362.P16542398659234199727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) * A073093 (n + 1)

end

end A359362.P16542398659234199727

namespace A359362

/-- `A056239(n+1)*A073093(n+1)` -/
def P16542398659234199727.Spec : Prop :=
  ∀ n, P16542398659234199727.a n = A359362 (n + 1)

theorem P16542398659234199727.correct : P16542398659234199727.Spec := by
  intro n
  simp only [A359362, Nat.add_sub_cancel, A359362.P16542398659234199727.a, A359362.P17874274193599552261.a, A001222, A001222.P11318177267732088261.a, A056239, A056239.P11316688788989965672.a, A073093, A073093.P258081957281391684.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A359362

/-! ## A359362.P16212760653416134559

`(Δ[A022559(n)]+1)*A056239(n+1)`
-/

namespace A359362.P16212760653416134559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A056239 (n + 1)

end

end A359362.P16212760653416134559

namespace A359362

/-- `(Δ[A022559(n)]+1)*A056239(n+1)` -/
def P16212760653416134559.Spec : Prop :=
  ∀ n, P16212760653416134559.a n = A359362 (n + 1)

end A359362

/-! ## A359362.P12286974958530967214

`(A086436(n+1)+1)*A056239(n+1)`
-/

namespace A359362.P12286974958530967214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086436 (n + 1) + 1) * A056239 (n + 1)

end

end A359362.P12286974958530967214

namespace A359362

/-- `(A086436(n+1)+1)*A056239(n+1)` -/
def P12286974958530967214.Spec : Prop :=
  ∀ n, P12286974958530967214.a n = A359362 (n + 1)

end A359362

/-! ## A359362.P3404392311301681236

`(A252736(n+1)+2)*A056239(n+1)`
-/

namespace A359362.P3404392311301681236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252736 (n + 1) + 2) * A056239 (n + 1)

end

end A359362.P3404392311301681236

namespace A359362

/-- `(A252736(n+1)+2)*A056239(n+1)` -/
def P3404392311301681236.Spec : Prop :=
  ∀ n, P3404392311301681236.a n = A359362 (n + 1)

end A359362

/-! ## A359362.P14013139832043881003

`A000005(A068794(n+1))*A056239(n+1)`
-/

namespace A359362.P14013139832043881003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068794 (n + 1)).toNat * A056239 (n + 1)

end

end A359362.P14013139832043881003

namespace A359362

/-- `A000005(A068794(n+1))*A056239(n+1)` -/
def P14013139832043881003.Spec : Prop :=
  ∀ n, P14013139832043881003.a n = A359362 (n + 1)

end A359362

/-! ## A359362.P1287025160872003850

`A056239(n+1)*A359360(2*(n+1))`
-/

namespace A359362.P1287025160872003850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) * A359360 (2 * (n + 1))

end

end A359362.P1287025160872003850

namespace A359362

/-- `A056239(n+1)*A359360(2*(n+1))` -/
def P1287025160872003850.Spec : Prop :=
  ∀ n, P1287025160872003850.a n = A359362 (n + 1)

end A359362

/-! ## A359362.P12400777424580441678

`A318283(n+1)+A304818(n+1)`
-/

namespace A359362.P12400777424580441678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (n + 1) + A304818 (n + 1)

end

end A359362.P12400777424580441678

namespace A359362

/-- `A318283(n+1)+A304818(n+1)` -/
def P12400777424580441678.Spec : Prop :=
  ∀ n, P12400777424580441678.a n = A359362 (n + 1)

end A359362

/-! ## A359362.P16436895803418293803

`A261079(n+1)+2*A318283(n+1)`
-/

namespace A359362.P16436895803418293803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1) + 2 * A318283 (n + 1)

end

end A359362.P16436895803418293803

namespace A359362

/-- `A261079(n+1)+2*A318283(n+1)` -/
def P16436895803418293803.Spec : Prop :=
  ∀ n, P16436895803418293803.a n = A359362 (n + 1)

end A359362

/-!
# A359363: Triangle read by rows. The coefficients of the Baxter polynomials p(0, x) = 1 and p(n, x) = x*hypergeom([-1 - n, -n, 1 - n], [2, 3], -x) for n >= 1.

The programs for A359363, there is no canonical definition to state claims against.
-/

/-! ## A359363.P17231607896336804685

`A000292(A097805(n)%A075953(n))`
-/

namespace A359363.P17231607896336804685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.tmod (A097805 n) (A075953 n)).toNat

end

end A359363.P17231607896336804685

/-! ## A359363.P9858815204480629662

`A000292(A097805(n))%A139058(n+3)`
-/

namespace A359363.P9858815204480629662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A097805 n).toNat) (A139058 (n + 3))

end

end A359363.P9858815204480629662

/-! ## A359363.P17208517672509272864

`A121902(C(A005670(3*n+4), A097805(n)))`
-/

namespace A359363.P17208517672509272864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (Nat.choose (A005670 (3 * n + 4)).toNat (A097805 n).toNat)

end

end A359363.P17208517672509272864

/-! ## A359363.P11821521474048441694

`A324662(A088990(n))`
-/

namespace A359363.P11821521474048441694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (A088990 n).toNat

end

end A359363.P11821521474048441694

/-!
# A359364: Triangle read by rows. The Motzkin triangle, the coefficients of the Motzkin polynomials. M(n, k) = binomial(n, k) * CatalanNumber(k/2) if k is even, otherwise 0.

The programs for A359364, the canonical program `A359364.P6184962185695480939` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359364 has offset 0).

The definition of A359364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359364.P6184962185695480939

`A007318(n)*A126120(A002262(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359364

/-- `A007318(n)*A126120(A002262(n))` -/
def P6184962185695480939.Spec : Prop :=
  ∀ n, P6184962185695480939.a n = A359364 n

theorem P6184962185695480939.correct : P6184962185695480939.Spec := by
  intro n
  simp only [A359364]

end A359364

/-! ## A359364.P12907222800223268495

`abs(A108086(n)*A126120(A002262(n)))`
-/

namespace A359364.P12907222800223268495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A126120 (A002262 n).toNat|

end

end A359364.P12907222800223268495

namespace A359364

/-- `abs(A108086(n)*A126120(A002262(n)))` -/
def P12907222800223268495.Spec : Prop :=
  ∀ n, P12907222800223268495.a n = A359364 n

end A359364

/-! ## A359364.P3354445397663379478

`abs(A126120(A002262(n))*A130595(n))`
-/

namespace A359364.P3354445397663379478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126120 (A002262 n).toNat * A130595 n|

end

end A359364.P3354445397663379478

namespace A359364

/-- `abs(A126120(A002262(n))*A130595(n))` -/
def P3354445397663379478.Spec : Prop :=
  ∀ n, P3354445397663379478.a n = A359364 n

end A359364

/-! ## A359364.P3782486375480677113

`A007318(n)*A097331(A002260(n+1))`
-/

namespace A359364.P3782486375480677113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A097331 (A002260 (n + 1)).toNat

end

end A359364.P3782486375480677113

namespace A359364

/-- `A007318(n)*A097331(A002260(n+1))` -/
def P3782486375480677113.Spec : Prop :=
  ∀ n, P3782486375480677113.a n = A359364 n

end A359364

/-! ## A359364.P17239743954055008819

`A080159(A057027(n+1)-1)`
-/

namespace A359364.P17239743954055008819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 (A057027 (n + 1) - 1).toNat

end

end A359364.P17239743954055008819

namespace A359364

/-- `A080159(A057027(n+1)-1)` -/
def P17239743954055008819.Spec : Prop :=
  ∀ n, P17239743954055008819.a n = A359364 n

end A359364

/-! ## A359364.P15596702813944517589

`A097610(∑[2*n]%comp[∑[n]])`
-/

namespace A359364.P15596702813944517589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A359364.P15596702813944517589

namespace A359364

/-- `A097610(∑[2*n]%comp[∑[n]])` -/
def P15596702813944517589.Spec : Prop :=
  ∀ n, P15596702813944517589.a n = A359364 n

end A359364

/-! ## A359364.P818414859964304940

`A097610(∑[char[∑[n]]]²-(n+1))`
-/

namespace A359364.P818414859964304940
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A359364.P818414859964304940

namespace A359364

/-- `A097610(∑[char[∑[n]]]²-(n+1))` -/
def P818414859964304940.Spec : Prop :=
  ∀ n, P818414859964304940.a n = A359364 n

end A359364

/-! ## A359364.P5558434826138929493

`lcm(A141665(n), A189913(n))`
-/

namespace A359364.P5558434826138929493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141665 n) (A189913 n)

end

end A359364.P5558434826138929493

namespace A359364

/-- `lcm(A141665(n), A189913(n))` -/
def P5558434826138929493.Spec : Prop :=
  ∀ n, (P5558434826138929493.a n : ℤ) = A359364 n

end A359364

/-! ## A359364.P16997194355783099005

`A189913(n)*A376583(n+1)`
-/

namespace A359364.P16997194355783099005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189913 n * A376583 (n + 1)

end

end A359364.P16997194355783099005

namespace A359364

/-- `A189913(n)*A376583(n+1)` -/
def P16997194355783099005.Spec : Prop :=
  ∀ n, P16997194355783099005.a n = A359364 n

end A359364

/-! ## A359364.P5611135554046854337

`A124027(∑[char[∑[n]]]²-n+3)`
-/

namespace A359364.P5611135554046854337
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124027 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 3).toNat

end

end A359364.P5611135554046854337

namespace A359364

/-- `A124027(∑[char[∑[n]]]²-n+3)` -/
def P5611135554046854337.Spec : Prop :=
  ∀ n, P5611135554046854337.a n = A359364 n

end A359364

/-!
# A359365: a(n) = lcm([ n!*binomial(n-1, m-1) / m! for m = 1..n ]) with a(0) = 1.

The programs for A359365, there is no canonical definition to state claims against.
-/

/-! ## A359365.P2342848932442823049

`A000142(n)*A107345(A005096(n))`
-/

namespace A359365.P2342848932442823049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A107345 (A005096 n).toNat

end

end A359365.P2342848932442823049

/-! ## A359365.P4827628908705849719

`A139331(A188552(n+2))`
-/

namespace A359365.P4827628908705849719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139331 (A188552 (n + 2)).toNat

end

end A359365.P4827628908705849719

/-! ## A359365.P2601209918605046034

`n!*A121041(A054726(n))`
-/

namespace A359365.P2601209918605046034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A121041 (A054726 n).toNat

end

end A359365.P2601209918605046034

/-!
# A359366: a(n) = (1/8)*(((3*n + 1) + (n - 1)*(-1)^n)*(n + 1)).

The programs for A359366, the canonical program `A359366.P8725897342878204093` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359366 has offset 0).

The definition of A359366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359366.P8725897342878204093

`1/8*(3*n+1+(n-1)*(-1)^n)*(n+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359366

/-- `1/8*(3*n+1+(n-1)*(-1)^n)*(n+1)` -/
def P8725897342878204093.Spec : Prop :=
  ∀ n, P8725897342878204093.a n = (A359366 n : ℚ)

end A359366

/-! ## A359366.P9526014531589705770

`gcd((n+1)*ceil(n/2), ∑[n]²)`
-/

namespace A359366.P9526014531589705770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * ⌈(n : ℚ) / 2⌉) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A359366.P9526014531589705770

namespace A359366

/-- `gcd((n+1)*ceil(n/2), ∑[n]²)` -/
def P9526014531589705770.Spec : Prop :=
  ∀ n, (P9526014531589705770.a n : ℤ) = A359366 n

end A359366

/-! ## A359366.P11559089175933810350

`∑[n]-n%2*floor((n/2)²)`
-/

namespace A359366.P11559089175933810350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ) * ⌊((n : ℚ) / 2) ^ 2⌋

end

end A359366.P11559089175933810350

namespace A359366

/-- `∑[n]-n%2*floor((n/2)²)` -/
def P11559089175933810350.Spec : Prop :=
  ∀ n, P11559089175933810350.a n = A359366 n

end A359366

/-! ## A359366.P9920715365515682080

`gcd(n+1, ∑[n])²%∑[n+1]`
-/

namespace A359366.P9920715365515682080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A359366.P9920715365515682080

namespace A359366

/-- `gcd(n+1, ∑[n])²%∑[n+1]` -/
def P9920715365515682080.Spec : Prop :=
  ∀ n, (P9920715365515682080.a n : ℤ) = A359366 n

end A359366

/-! ## A359366.P15104134416021405539

`lcm(n+1, n+3)²%∑[n+1]`
-/

namespace A359366.P15104134416021405539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 3) ^ 2 % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359366.P15104134416021405539

namespace A359366

/-- `lcm(n+1, n+3)²%∑[n+1]` -/
def P15104134416021405539.Spec : Prop :=
  ∀ n, (P15104134416021405539.a n : ℤ) = A359366 n

end A359366

/-! ## A359366.P11209489277227691509

`lcm(2, 1-n)+a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A359366.P11209489277227691509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm 2 (1 - (n : ℤ)) + (a (n - 2) + 1)

end

end A359366.P11209489277227691509

namespace A359366

/-- `lcm(2, 1-n)+a(n-2)+1` -/
def P11209489277227691509.Spec : Prop :=
  ∀ n, (P11209489277227691509.a n : ℤ) = A359366 n

end A359366

/-! ## A359366.P5631473173622543835

`(n+1)*A029578(n+1)/2`
-/

namespace A359366.P5631473173622543835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A029578 (n + 1) : ℚ) / 2

end

end A359366.P5631473173622543835

namespace A359366

/-- `(n+1)*A029578(n+1)/2` -/
def P5631473173622543835.Spec : Prop :=
  ∀ n, P5631473173622543835.a n = (A359366 n : ℚ)

end A359366

/-! ## A359366.P16243620474456694257

`A354280(n)+A004652(n)`
-/

namespace A359366.P16243620474456694257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354280 n + A004652 n

end

end A359366.P16243620474456694257

namespace A359366

/-- `A354280(n)+A004652(n)` -/
def P16243620474456694257.Spec : Prop :=
  ∀ n, P16243620474456694257.a n = A359366 n

end A359366

/-! ## A359366.P2707743903091560654

`A097066(n)-A110315(n)`
-/

namespace A359366.P2707743903091560654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 n - A110315 n

end

end A359366.P2707743903091560654

namespace A359366

/-- `A097066(n)-A110315(n)` -/
def P2707743903091560654.Spec : Prop :=
  ∀ n, P2707743903091560654.a n = A359366 n

end A359366

/-! ## A359366.P13882543874244317447

`A397990(n)-A147685(n)`
-/

namespace A359366.P13882543874244317447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n - A147685 n

end

end A359366.P13882543874244317447

namespace A359366

/-- `A397990(n)-A147685(n)` -/
def P13882543874244317447.Spec : Prop :=
  ∀ n, P13882543874244317447.a n = A359366 n

end A359366

/-! ## A359366.P2444119343252644088

`A266287(n)-A346004(n)`
-/

namespace A359366.P2444119343252644088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 n - A346004 n

end

end A359366.P2444119343252644088

namespace A359366

/-- `A266287(n)-A346004(n)` -/
def P2444119343252644088.Spec : Prop :=
  ∀ n, P2444119343252644088.a n = A359366 n

end A359366

/-! ## A359366.P2021089647867958586

`A093353(n)/A000034(n)`
-/

namespace A359366.P2021089647867958586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093353 n : ℚ) / (A000034 n : ℚ)

end

end A359366.P2021089647867958586

namespace A359366

/-- `A093353(n)/A000034(n)` -/
def P2021089647867958586.Spec : Prop :=
  ∀ n, P2021089647867958586.a n = (A359366 n : ℚ)

end A359366

/-! ## A359366.P11007109242883217992

`A213390(n)%A186424(n)`
-/

namespace A359366.P11007109242883217992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213390 n) (A186424 n)

end

end A359366.P11007109242883217992

namespace A359366

/-- `A213390(n)%A186424(n)` -/
def P11007109242883217992.Spec : Prop :=
  ∀ n, P11007109242883217992.a n = A359366 n

end A359366

/-! ## A359366.P16624676469598057077

`lcm(A001057(n), A079097(n))`
-/

namespace A359366.P16624676469598057077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001057 n) (A079097 n)

end

end A359366.P16624676469598057077

namespace A359366

/-- `lcm(A001057(n), A079097(n))` -/
def P16624676469598057077.Spec : Prop :=
  ∀ n, (P16624676469598057077.a n : ℤ) = A359366 n

end A359366

/-! ## A359366.P298942458101860941

`A093005(n+1)-A079097(n)`
-/

namespace A359366.P298942458101860941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) - A079097 n

end

end A359366.P298942458101860941

namespace A359366

/-- `A093005(n+1)-A079097(n)` -/
def P298942458101860941.Spec : Prop :=
  ∀ n, P298942458101860941.a n = A359366 n

end A359366

/-! ## A359366.P18363240531246692988

`A006002(n)/A043547(n+1)`
-/

namespace A359366.P18363240531246692988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006002 n : ℚ) / (A043547 (n + 1) : ℚ)

end

end A359366.P18363240531246692988

namespace A359366

/-- `A006002(n)/A043547(n+1)` -/
def P18363240531246692988.Spec : Prop :=
  ∀ n, P18363240531246692988.a n = (A359366 n : ℚ)

end A359366

/-! ## A359366.P4056948577156932146

`A238411(n+1)/A010694(n)`
-/

namespace A359366.P4056948577156932146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238411 (n + 1) : ℚ) / (A010694 n : ℚ)

end

end A359366.P4056948577156932146

namespace A359366

/-- `A238411(n+1)/A010694(n)` -/
def P4056948577156932146.Spec : Prop :=
  ∀ n, P4056948577156932146.a n = (A359366 n : ℚ)

end A359366

/-! ## A359366.P12569742668881800958

`A212766(n)/A133092(n+1)`
-/

namespace A359366.P12569742668881800958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212766 n : ℚ) / (A133092 (n + 1) : ℚ)

end

end A359366.P12569742668881800958

namespace A359366

/-- `A212766(n)/A133092(n+1)` -/
def P12569742668881800958.Spec : Prop :=
  ∀ n, P12569742668881800958.a n = (A359366 n : ℚ)

end A359366

/-! ## A359366.P6082509013615339950

`A238411(n+1)/A382713(n)`
-/

namespace A359366.P6082509013615339950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238411 (n + 1) : ℚ) / (A382713 n : ℚ)

end

end A359366.P6082509013615339950

namespace A359366

/-- `A238411(n+1)/A382713(n)` -/
def P6082509013615339950.Spec : Prop :=
  ∀ n, P6082509013615339950.a n = (A359366 n : ℚ)

end A359366

/-! ## A359366.P17307337381722331937

`A039623(n+1)%A053439(n)`
-/

namespace A359366.P17307337381722331937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039623 (n + 1)) (A053439 n)

end

end A359366.P17307337381722331937

namespace A359366

/-- `A039623(n+1)%A053439(n)` -/
def P17307337381722331937.Spec : Prop :=
  ∀ n, P17307337381722331937.a n = A359366 n

end A359366

/-!
# A359367: a(n) = number of regular polytopes of rank m-n with group S_m, up to isomorphism and duality (this is independent of m if m >= 2n+3).

The programs for A359367, there is no canonical definition to state claims against.
-/

/-! ## A359367.P6021446435317615857

`∑[A237363(A092486(2*n))]`
-/

namespace A359367.P6021446435317615857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237363 (A092486 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359367.P6021446435317615857

/-! ## A359367.P9003839658978984129

`∑[A047588(A240210(2*xor(1, n))+1)]`
-/

namespace A359367.P9003839658978984129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A240210 (2 * Nat.xor 1 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359367.P9003839658978984129

/-! ## A359367.P8393233878932975966

`A214747(A121430(n)*A325818(n+2))`
-/

namespace A359367.P8393233878932975966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214747 (A121430 n * A325818 (n + 2)).toNat

end

end A359367.P8393233878932975966

/-!
# A359369: a(1) = 1. Thereafter a(n) = Sum_{j=1..n} {b(a(j)), where b(a(j)) = b(a(n))}, and b is A000120.

The programs for A359369, there is no canonical definition to state claims against.
-/

/-! ## A359369.P8793488699410783946

`A372433(A093639(n)%A330273(n+1))`
-/

namespace A359369.P8793488699410783946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372433 (Int.tmod (A093639 n) (A330273 (n + 1))).toNat

end

end A359369.P8793488699410783946

/-! ## A359369.P12417606883608987777

`A000120(A165477(n)+A008299(2*n+3))`
-/

namespace A359369.P12417606883608987777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A165477 n + A008299 (2 * n + 3)).toNat

end

end A359369.P12417606883608987777

/-! ## A359369.P9998560858871383433

`A049472(n)+A010060(A221320(n+1))`
-/

namespace A359369.P9998560858871383433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n + A010060 (A221320 (n + 1)).toNat

end

end A359369.P9998560858871383433

/-! ## A359369.P1642645233829672773

`A000120(A061030(n+3)-A333141(n))`
-/

namespace A359369.P1642645233829672773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A061030 (n + 3) - A333141 n).toNat

end

end A359369.P1642645233829672773

/-! ## A359369.P11328643102269210329

`A352745(n)+A005614(A119016(2*n))`
-/

namespace A359369.P11328643102269210329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 n + A005614 (A119016 (2 * n)).toNat

end

end A359369.P11328643102269210329

/-!
# A359370: a(n) = 1 if n is not a multiple of 4 and has an even number of prime factors (with multiplicity), otherwise a(n) = 0.

The programs for A359370, the canonical program `A359370.P4336454204609883909` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359370 has offset 1).

The definition of A359370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359372, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359370.P4336454204609883909

`A166486(n+1)-A359372(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359370

/-- `A166486(n+1)-A359372(n+1)` -/
def P4336454204609883909.Spec : Prop :=
  ∀ n, P4336454204609883909.a n = A359370 (n + 1)

theorem P4336454204609883909.correct : P4336454204609883909.Spec := by
  intro n
  simp only [A359370, Nat.add_sub_cancel]

end A359370

/-! ## A359370.P6297683612885959672

`A359372(3*(n+1))`
-/

namespace A359370.P6297683612885959672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359372 (3 * (n + 1))

end

end A359370.P6297683612885959672

namespace A359370

/-- `A359372(3*(n+1))` -/
def P6297683612885959672.Spec : Prop :=
  ∀ n, P6297683612885959672.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P13972792889031082978

`char[eq[1, A358839(n+1)]]`
-/

namespace A359370.P13972792889031082978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358839 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359370.P13972792889031082978

namespace A359370

/-- `char[eq[1, A358839(n+1)]]` -/
def P13972792889031082978.Spec : Prop :=
  ∀ n, (P13972792889031082978.a n : ℤ) = A359370 (n + 1)

end A359370

/-! ## A359370.P10945916284791266930

`(A347235(n+1)+1)%2`
-/

namespace A359370.P10945916284791266930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347235 (n + 1) + 1) 2

end

end A359370.P10945916284791266930

namespace A359370

/-- `(A347235(n+1)+1)%2` -/
def P10945916284791266930.Spec : Prop :=
  ∀ n, P10945916284791266930.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P12702534397445681190

`and(4^val(n+1, 4), A065043(n+1))`
-/

namespace A359370.P12702534397445681190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℤ) (A065043 (n + 1))

end

end A359370.P12702534397445681190

namespace A359370

/-- `and(4^val(n+1, 4), A065043(n+1))` -/
def P12702534397445681190.Spec : Prop :=
  ∀ n, P12702534397445681190.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P15053237349137110545

`and(∑[∑[n+2]-1], 1-A066829(n+1))`
-/

namespace A359370.P15053237349137110545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (1 - A066829 (n + 1))

end

end A359370.P15053237349137110545

namespace A359370

/-- `and(∑[∑[n+2]-1], 1-A066829(n+1))` -/
def P15053237349137110545.Spec : Prop :=
  ∀ n, P15053237349137110545.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P13267119424766450317

`and(1, A002417(A307000(n+1)))`
-/

namespace A359370.P13267119424766450317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002417 (A307000 (n + 1)).toNat)

end

end A359370.P13267119424766450317

namespace A359370

/-- `and(1, A002417(A307000(n+1)))` -/
def P13267119424766450317.Spec : Prop :=
  ∀ n, P13267119424766450317.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P3284738804227951626

`A004657(n)%A007421(n+1)`
-/

namespace A359370.P3284738804227951626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004657 n) (A007421 (n + 1))

end

end A359370.P3284738804227951626

namespace A359370

/-- `A004657(n)%A007421(n+1)` -/
def P3284738804227951626.Spec : Prop :=
  ∀ n, P3284738804227951626.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P10593302133262352931

`A005920(n)%A007421(n+1)`
-/

namespace A359370.P10593302133262352931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005920 n) (A007421 (n + 1))

end

end A359370.P10593302133262352931

namespace A359370

/-- `A005920(n)%A007421(n+1)` -/
def P10593302133262352931.Spec : Prop :=
  ∀ n, P10593302133262352931.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P8555827544187180564

`A007879(n)%A007421(n+1)`
-/

namespace A359370.P8555827544187180564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007879 n) (A007421 (n + 1))

end

end A359370.P8555827544187180564

namespace A359370

/-- `A007879(n)%A007421(n+1)` -/
def P8555827544187180564.Spec : Prop :=
  ∀ n, P8555827544187180564.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P13293359073545569231

`A008778(n)%A007421(n+1)`
-/

namespace A359370.P13293359073545569231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008778 n) (A007421 (n + 1))

end

end A359370.P13293359073545569231

namespace A359370

/-- `A008778(n)%A007421(n+1)` -/
def P13293359073545569231.Spec : Prop :=
  ∀ n, P13293359073545569231.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P18432308753004243170

`A027629(n)%A007421(n+1)`
-/

namespace A359370.P18432308753004243170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027629 n) (A007421 (n + 1))

end

end A359370.P18432308753004243170

namespace A359370

/-- `A027629(n)%A007421(n+1)` -/
def P18432308753004243170.Spec : Prop :=
  ∀ n, P18432308753004243170.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P4655171706948239440

`A030533(n)%A007421(n+1)`
-/

namespace A359370.P4655171706948239440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030533 n) (A007421 (n + 1))

end

end A359370.P4655171706948239440

namespace A359370

/-- `A030533(n)%A007421(n+1)` -/
def P4655171706948239440.Spec : Prop :=
  ∀ n, P4655171706948239440.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P17215609694987183872

`A036410(n)%A007421(n+1)`
-/

namespace A359370.P17215609694987183872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036410 n) (A007421 (n + 1))

end

end A359370.P17215609694987183872

namespace A359370

/-- `A036410(n)%A007421(n+1)` -/
def P17215609694987183872.Spec : Prop :=
  ∀ n, P17215609694987183872.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P11533493580809104954

`A062748(n)%A007421(n+1)`
-/

namespace A359370.P11533493580809104954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062748 n) (A007421 (n + 1))

end

end A359370.P11533493580809104954

namespace A359370

/-- `A062748(n)%A007421(n+1)` -/
def P11533493580809104954.Spec : Prop :=
  ∀ n, P11533493580809104954.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P12648745408954879412

`A064808(n)%A007421(n+1)`
-/

namespace A359370.P12648745408954879412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064808 n) (A007421 (n + 1))

end

end A359370.P12648745408954879412

namespace A359370

/-- `A064808(n)%A007421(n+1)` -/
def P12648745408954879412.Spec : Prop :=
  ∀ n, P12648745408954879412.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P7983037717967526203

`A070386(n)%A007421(n+1)`
-/

namespace A359370.P7983037717967526203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070386 n) (A007421 (n + 1))

end

end A359370.P7983037717967526203

namespace A359370

/-- `A070386(n)%A007421(n+1)` -/
def P7983037717967526203.Spec : Prop :=
  ∀ n, P7983037717967526203.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P7111844759021241892

`A079097(n)%A007421(n+1)`
-/

namespace A359370.P7111844759021241892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079097 n) (A007421 (n + 1))

end

end A359370.P7111844759021241892

namespace A359370

/-- `A079097(n)%A007421(n+1)` -/
def P7111844759021241892.Spec : Prop :=
  ∀ n, P7111844759021241892.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P7093977265060926409

`A083364(n)%A007421(n+1)`
-/

namespace A359370.P7093977265060926409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083364 n) (A007421 (n + 1))

end

end A359370.P7093977265060926409

namespace A359370

/-- `A083364(n)%A007421(n+1)` -/
def P7093977265060926409.Spec : Prop :=
  ∀ n, P7093977265060926409.a n = A359370 (n + 1)

end A359370

/-! ## A359370.P12566017251826795701

`A093198(n)%A007421(n+1)`
-/

namespace A359370.P12566017251826795701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093198 n) (A007421 (n + 1))

end

end A359370.P12566017251826795701

namespace A359370

/-- `A093198(n)%A007421(n+1)` -/
def P12566017251826795701.Spec : Prop :=
  ∀ n, P12566017251826795701.a n = A359370 (n + 1)

end A359370

/-!
# A359371: Nonmultiples of 4 that have an even number of prime factors (with multiplicity).

The programs for A359371, the canonical program `A359371.P15865394443635031041` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359371 has offset 1).

The definition of A359371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359371.P2718164955904514437

`comp[n*(A359820(n)+1)]`
-/

namespace A359371.P2718164955904514437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A359820 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359371.P2718164955904514437

namespace A359371

/-- `comp[n*(A359820(n)+1)]` -/
def P2718164955904514437.Spec : Prop :=
  ∀ n, (P2718164955904514437.a n : ℤ) = A359371 (n + 1)

end A359371

/-! ## A359371.P5542630456593736226

`lt[0, A358839(n+1)]+1`
-/

namespace A359371.P5542630456593736226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359371.P5542630456593736226

namespace A359371

/-- `lt[0, A358839(n+1)]+1` -/
def P5542630456593736226.Spec : Prop :=
  ∀ n, (P5542630456593736226.a n : ℤ) = A359371 (n + 1)

end A359371

/-! ## A359371.P15865394443635031041

`lt[0, A359370(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359371

/-- `lt[0, A359370(n+1)]+1` -/
def P15865394443635031041.Spec : Prop :=
  ∀ n, (P15865394443635031041.a n : ℤ) = A359371 (n + 1)

theorem P15865394443635031041.correct : P15865394443635031041.Spec := by
  intro n
  simp only [A359371, Nat.add_sub_cancel]

end A359371

/-! ## A359371.P7128826279437374560

`eq[1, A359370(abs(1-n)+1)]`
-/

namespace A359371.P7128826279437374560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359371.P7128826279437374560

namespace A359371

/-- `eq[1, A359370(abs(1-n)+1)]` -/
def P7128826279437374560.Spec : Prop :=
  ∀ n, (P7128826279437374560.a n : ℤ) = A359371 (n + 1)

end A359371

/-! ## A359371.P6419298440388429314

`lt[0, A359372(3*(n+1))]+1`
-/

namespace A359371.P6419298440388429314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359372 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359371.P6419298440388429314

namespace A359371

/-- `lt[0, A359372(3*(n+1))]+1` -/
def P6419298440388429314.Spec : Prop :=
  ∀ n, (P6419298440388429314.a n : ℤ) = A359371 (n + 1)

end A359371

/-! ## A359371.P15825430856871263820

`∪[A046337(n+1), A369966(n+1)]`
-/

namespace A359371.P15825430856871263820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359371.P15825430856871263820

namespace A359371

/-- `∪[A046337(n+1), A369966(n+1)]` -/
def P15825430856871263820.Spec : Prop :=
  ∀ n, (P15825430856871263820.a n : ℤ) = A359371 (n + 1)

end A359371

/-! ## A359371.P14180941426556361483

`filter[A359821(n+1), A065043(#)]`
-/

namespace A359371.P14180941426556361483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359371.P14180941426556361483

namespace A359371

/-- `filter[A359821(n+1), A065043(#)]` -/
def P14180941426556361483.Spec : Prop :=
  ∀ n, P14180941426556361483.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P3646785599455246778

`filter[A359821(n+1), A359370(#)]`
-/

namespace A359371.P3646785599455246778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A359371.P3646785599455246778

namespace A359371

/-- `filter[A359821(n+1), A359370(#)]` -/
def P3646785599455246778.Spec : Prop :=
  ∀ n, P3646785599455246778.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P10329388058301293379

`filter[A028260(n+1), A166486(#)]`
-/

namespace A359371.P10329388058301293379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A359371.P10329388058301293379

namespace A359371

/-- `filter[A028260(n+1), A166486(#)]` -/
def P10329388058301293379.Spec : Prop :=
  ∀ n, P10329388058301293379.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P10324619372359963983

`filter[A028260(n+1), A359370(#)]`
-/

namespace A359371.P10324619372359963983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A359371.P10324619372359963983

namespace A359371

/-- `filter[A028260(n+1), A359370(#)]` -/
def P10324619372359963983.Spec : Prop :=
  ∀ n, P10324619372359963983.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P5381539668088074013

`filter[A028260(n+1), A359820(#)]`
-/

namespace A359371.P5381539668088074013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A359371.P5381539668088074013

namespace A359371

/-- `filter[A028260(n+1), A359820(#)]` -/
def P5381539668088074013.Spec : Prop :=
  ∀ n, P5381539668088074013.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P6930402276611785979

`∩[A028260(n+1), A359821(n+1)]`
-/

namespace A359371.P6930402276611785979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359371.P6930402276611785979

namespace A359371

/-- `∩[A028260(n+1), A359821(n+1)]` -/
def P6930402276611785979.Spec : Prop :=
  ∀ n, (P6930402276611785979.a n : ℤ) = A359371 (n + 1)

end A359371

/-! ## A359371.P4558134282643104075

`record[A061019(ceil((4*n+1)/3))]`
-/

namespace A359371.P4558134282643104075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 ⌈(4 * n + 1 : ℚ) / 3⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359371.P4558134282643104075

namespace A359371

/-- `record[A061019(ceil((4*n+1)/3))]` -/
def P4558134282643104075.Spec : Prop :=
  ∀ n, P4558134282643104075.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P6231260689678550784

`record[A065883(A028260(n+1))]`
-/

namespace A359371.P6231260689678550784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A028260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359371.P6231260689678550784

namespace A359371

/-- `record[A065883(A028260(n+1))]` -/
def P6231260689678550784.Spec : Prop :=
  ∀ n, P6231260689678550784.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P3638253101689449310

`filter[A347450(n+1), A359370(#)]`
-/

namespace A359371.P3638253101689449310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A359371.P3638253101689449310

namespace A359371

/-- `filter[A347450(n+1), A359370(#)]` -/
def P3638253101689449310.Spec : Prop :=
  ∀ n, P3638253101689449310.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P16667514271269546680

`filter[A036347(n+1), A166486(#)]`
-/

namespace A359371.P16667514271269546680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A359371.P16667514271269546680

namespace A359371

/-- `filter[A036347(n+1), A166486(#)]` -/
def P16667514271269546680.Spec : Prop :=
  ∀ n, P16667514271269546680.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P4881269210517554647

`filter[A036347(n+1), A359370(#)]`
-/

namespace A359371.P4881269210517554647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A359371.P4881269210517554647

namespace A359371

/-- `filter[A036347(n+1), A359370(#)]` -/
def P4881269210517554647.Spec : Prop :=
  ∀ n, P4881269210517554647.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P12498201863889074045

`filter[A036347(n+1), A359820(#)]`
-/

namespace A359371.P12498201863889074045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A359371.P12498201863889074045

namespace A359371

/-- `filter[A036347(n+1), A359820(#)]` -/
def P12498201863889074045.Spec : Prop :=
  ∀ n, P12498201863889074045.a n = A359371 (n + 1)

end A359371

/-! ## A359371.P15013715869758303410

`∩[A036347(n+1), A359821(n+1)]`
-/

namespace A359371.P15013715869758303410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359371.P15013715869758303410

namespace A359371

/-- `∩[A036347(n+1), A359821(n+1)]` -/
def P15013715869758303410.Spec : Prop :=
  ∀ n, (P15013715869758303410.a n : ℤ) = A359371 (n + 1)

end A359371

/-! ## A359371.P2177007185895709913

`filter[A359821(n+1), A359768(#)]`
-/

namespace A359371.P2177007185895709913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A359371.P2177007185895709913

namespace A359371

/-- `filter[A359821(n+1), A359768(#)]` -/
def P2177007185895709913.Spec : Prop :=
  ∀ n, P2177007185895709913.a n = A359371 (n + 1)

end A359371

/-!
# A359372: a(n) = 1 if n is not a multiple of 4 and has an odd number of prime factors (with multiplicity), otherwise a(n) = 0.

The programs for A359372, the canonical program `A359372.P10350618056396225445` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359372 has offset 1).

The definition of A359372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359372.P12063299820045531504

`A166486(n+1)-A359370(n+1)`
-/

namespace A359372.P12063299820045531504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (n + 1) - A359370 (n + 1)

end

end A359372.P12063299820045531504

namespace A359372

/-- `A166486(n+1)-A359370(n+1)` -/
def P12063299820045531504.Spec : Prop :=
  ∀ n, P12063299820045531504.a n = A359372 (n + 1)

theorem P12063299820045531504.correct : P12063299820045531504.Spec := by
  intro n
  simp only [A359372, Nat.add_sub_cancel, A359372.P12063299820045531504.a, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A166486, A166486.P13501783531280266850.a, A274179, A274179.P5668171272729194890.a, A359370, A359370.P4336454204609883909.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359372

/-! ## A359372.P17090444867263473302

`A359370(3*(n+1))`
-/

namespace A359372.P17090444867263473302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (3 * (n + 1))

end

end A359372.P17090444867263473302

namespace A359372

/-- `A359370(3*(n+1))` -/
def P17090444867263473302.Spec : Prop :=
  ∀ n, P17090444867263473302.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P7167901003641516149

`and((n+1)^and(2, n), A001222(n+1))`
-/

namespace A359372.P7167901003641516149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ Nat.land 2 n : ℤ) (A001222 (n + 1))

end

end A359372.P7167901003641516149

namespace A359372

/-- `and((n+1)^and(2, n), A001222(n+1))` -/
def P7167901003641516149.Spec : Prop :=
  ∀ n, P7167901003641516149.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P17466043977450155488

`and(∑[∑[n+2]-1], A066829(n+1))`
-/

namespace A359372.P17466043977450155488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A066829 (n + 1))

end

end A359372.P17466043977450155488

namespace A359372

/-- `and(∑[∑[n+2]-1], A066829(n+1))` -/
def P17466043977450155488.Spec : Prop :=
  ∀ n, P17466043977450155488.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P10350618056396225445

`and(∑{e}[n+1, #], A274179(and(n, -(n+2))))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359372

/-- `and(∑{e}[n+1, #], A274179(and(n, -(n+2))))` -/
def P10350618056396225445.Spec : Prop :=
  ∀ n, P10350618056396225445.a n = A359372 (n + 1)

theorem P10350618056396225445.correct : P10350618056396225445.Spec := by
  intro n
  simp only [A359372, Nat.add_sub_cancel]

end A359372

/-! ## A359372.P15294392765874133911

`and(4^val(n+1, 4), 1-A065043(n+1))`
-/

namespace A359372.P15294392765874133911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℤ) (1 - A065043 (n + 1))

end

end A359372.P15294392765874133911

namespace A359372

/-- `and(4^val(n+1, 4), 1-A065043(n+1))` -/
def P15294392765874133911.Spec : Prop :=
  ∀ n, P15294392765874133911.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P1085660354077447716

`and(4^val(n+1, 4), A065043(2*(n+1)))`
-/

namespace A359372.P1085660354077447716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℤ) (A065043 (2 * (n + 1)))

end

end A359372.P1085660354077447716

namespace A359372

/-- `and(4^val(n+1, 4), A065043(2*(n+1)))` -/
def P1085660354077447716.Spec : Prop :=
  ∀ n, P1085660354077447716.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P11780931734634643862

`and(A007421(n+1), A070386(n))`
-/

namespace A359372.P11780931734634643862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007421 (n + 1)) (A070386 n)

end

end A359372.P11780931734634643862

namespace A359372

/-- `and(A007421(n+1), A070386(n))` -/
def P11780931734634643862.Spec : Prop :=
  ∀ n, P11780931734634643862.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P6514772993715920135

`and(A066829(n+1), A070386(n))`
-/

namespace A359372.P6514772993715920135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066829 (n + 1)) (A070386 n)

end

end A359372.P6514772993715920135

namespace A359372

/-- `and(A066829(n+1), A070386(n))` -/
def P6514772993715920135.Spec : Prop :=
  ∀ n, P6514772993715920135.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P15611690139720660762

`and(A066829(n+1), A079097(n))`
-/

namespace A359372.P15611690139720660762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066829 (n + 1)) (A079097 n)

end

end A359372.P15611690139720660762

namespace A359372

/-- `and(A066829(n+1), A079097(n))` -/
def P15611690139720660762.Spec : Prop :=
  ∀ n, P15611690139720660762.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P872847762596351613

`A165560(n+1)-A369965(n+1)`
-/

namespace A359372.P872847762596351613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (n + 1) - A369965 (n + 1)

end

end A359372.P872847762596351613

namespace A359372

/-- `A165560(n+1)-A369965(n+1)` -/
def P872847762596351613.Spec : Prop :=
  ∀ n, P872847762596351613.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P13319101602520687742

`A359370(n+1)-A358839(n+1)`
-/

namespace A359372.P13319101602520687742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1) - A358839 (n + 1)

end

end A359372.P13319101602520687742

namespace A359372

/-- `A359370(n+1)-A358839(n+1)` -/
def P13319101602520687742.Spec : Prop :=
  ∀ n, P13319101602520687742.a n = A359372 (n + 1)

theorem P13319101602520687742.correct : P13319101602520687742.Spec := by
  intro n
  simp only [A359372, Nat.add_sub_cancel, A359372.P13319101602520687742.a, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A274179, A274179.P5668171272729194890.a, A358839, A358839.P16533912957850485554.a, A359370, A359370.P4336454204609883909.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359372

/-! ## A359372.P60332400891197172

`A166486((n+1)*A066829(n+1))`
-/

namespace A359372.P60332400891197172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 ((n + 1 : ℤ) * A066829 (n + 1)).toNat

end

end A359372.P60332400891197172

namespace A359372

/-- `A166486((n+1)*A066829(n+1))` -/
def P60332400891197172.Spec : Prop :=
  ∀ n, P60332400891197172.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P9192004905944130158

`and(A066829(n+1), A075666(n+1))`
-/

namespace A359372.P9192004905944130158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066829 (n + 1)) (A075666 (n + 1))

end

end A359372.P9192004905944130158

namespace A359372

/-- `and(A066829(n+1), A075666(n+1))` -/
def P9192004905944130158.Spec : Prop :=
  ∀ n, P9192004905944130158.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P7525576024312054241

`and(A066829(n+1), A160959(n+1))`
-/

namespace A359372.P7525576024312054241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066829 (n + 1)) (A160959 (n + 1))

end

end A359372.P7525576024312054241

namespace A359372

/-- `and(A066829(n+1), A160959(n+1))` -/
def P7525576024312054241.Spec : Prop :=
  ∀ n, P7525576024312054241.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P8242779447632721638

`and(A066829(n+1), A160960(n+1))`
-/

namespace A359372.P8242779447632721638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066829 (n + 1)) (A160960 (n + 1))

end

end A359372.P8242779447632721638

namespace A359372

/-- `and(A066829(n+1), A160960(n+1))` -/
def P8242779447632721638.Spec : Prop :=
  ∀ n, P8242779447632721638.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P14961761719798497262

`∑{d}[n+1, A359484(#)*A378549((n+1)/#)]`
-/

namespace A359372.P14961761719798497262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359484 d * A378549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359372.P14961761719798497262

namespace A359372

/-- `∑{d}[n+1, A359484(#)*A378549((n+1)/#)]` -/
def P14961761719798497262.Spec : Prop :=
  ∀ n, P14961761719798497262.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P3234039422675207234

`A066829(n+1)-A066829(n+1)*A121262(n+1)`
-/

namespace A359372.P3234039422675207234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A066829 (n + 1) * A121262 (n + 1)

end

end A359372.P3234039422675207234

namespace A359372

/-- `A066829(n+1)-A066829(n+1)*A121262(n+1)` -/
def P3234039422675207234.Spec : Prop :=
  ∀ n, P3234039422675207234.a n = A359372 (n + 1)

end A359372

/-! ## A359372.P18283052809336502247

`A165560(A373188(2*(n+1)))*A165560(n+1)`
-/

namespace A359372.P18283052809336502247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A373188 (2 * (n + 1))).toNat * A165560 (n + 1)

end

end A359372.P18283052809336502247

namespace A359372

/-- `A165560(A373188(2*(n+1)))*A165560(n+1)` -/
def P18283052809336502247.Spec : Prop :=
  ∀ n, P18283052809336502247.a n = A359372 (n + 1)

end A359372

/-!
# A359373: Nonmultiples of 4 that have an odd number of prime factors (with multiplicity).

The programs for A359373, the canonical program `A359373.P13677423627337552667` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359373 has offset 1).

The definition of A359373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359373.P13677423627337552667

`eq[1, A359372(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359373

/-- `eq[1, A359372(n+1)]+1` -/
def P13677423627337552667.Spec : Prop :=
  ∀ n, (P13677423627337552667.a n : ℤ) = A359373 (n + 1)

theorem P13677423627337552667.correct : P13677423627337552667.Spec := by
  intro n
  simp only [A359373, Nat.add_sub_cancel]

end A359373

/-! ## A359373.P2042416887126615732

`lt[A358839(n+1)+1, 1]+1`
-/

namespace A359373.P2042416887126615732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358839 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359373.P2042416887126615732

namespace A359373

/-- `lt[A358839(n+1)+1, 1]+1` -/
def P2042416887126615732.Spec : Prop :=
  ∀ n, (P2042416887126615732.a n : ℤ) = A359373 (n + 1)

end A359373

/-! ## A359373.P17556989546624398517

`eq[A358680(n), A369965(n)]`
-/

namespace A359373.P17556989546624398517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359373.P17556989546624398517

namespace A359373

/-- `eq[A358680(n), A369965(n)]` -/
def P17556989546624398517.Spec : Prop :=
  ∀ n, (P17556989546624398517.a n : ℤ) = A359373 (n + 1)

end A359373

/-! ## A359373.P2464877137823381164

`filter[A026424(n+1), A166486(#)]`
-/

namespace A359373.P2464877137823381164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A359373.P2464877137823381164

namespace A359373

/-- `filter[A026424(n+1), A166486(#)]` -/
def P2464877137823381164.Spec : Prop :=
  ∀ n, P2464877137823381164.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P16888070997448945305

`filter[A026422(n+1), A359372(#)]`
-/

namespace A359373.P16888070997448945305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P16888070997448945305

namespace A359373

/-- `filter[A026422(n+1), A359372(#)]` -/
def P16888070997448945305.Spec : Prop :=
  ∀ n, P16888070997448945305.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P6718899845806230466

`filter[A026424(n+1), A359372(#)]`
-/

namespace A359373.P6718899845806230466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P6718899845806230466

namespace A359373

/-- `filter[A026424(n+1), A359372(#)]` -/
def P6718899845806230466.Spec : Prop :=
  ∀ n, P6718899845806230466.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P15295289052500995883

`filter[A026422(n+2), A166486(#)]`
-/

namespace A359373.P15295289052500995883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A359373.P15295289052500995883

namespace A359373

/-- `filter[A026422(n+2), A166486(#)]` -/
def P15295289052500995883.Spec : Prop :=
  ∀ n, P15295289052500995883.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P1390476103696601923

`filter[A235991(n+1), A066829(#)]`
-/

namespace A359373.P1390476103696601923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359373.P1390476103696601923

namespace A359373

/-- `filter[A235991(n+1), A066829(#)]` -/
def P1390476103696601923.Spec : Prop :=
  ∀ n, P1390476103696601923.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P2748413910677441781

`filter[A235991(n+1), A359372(#)]`
-/

namespace A359373.P2748413910677441781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P2748413910677441781

namespace A359373

/-- `filter[A235991(n+1), A359372(#)]` -/
def P2748413910677441781.Spec : Prop :=
  ∀ n, P2748413910677441781.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P16428947251110161773

`∩[A026422(n+1), A235991(n+1)]`
-/

namespace A359373.P16428947251110161773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359373.P16428947251110161773

namespace A359373

/-- `∩[A026422(n+1), A235991(n+1)]` -/
def P16428947251110161773.Spec : Prop :=
  ∀ n, (P16428947251110161773.a n : ℤ) = A359373 (n + 1)

end A359373

/-! ## A359373.P6426417038585553811

`∩[A026424(n+1), A235991(n+1)]`
-/

namespace A359373.P6426417038585553811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359373.P6426417038585553811

namespace A359373

/-- `∩[A026424(n+1), A235991(n+1)]` -/
def P6426417038585553811.Spec : Prop :=
  ∀ n, (P6426417038585553811.a n : ℤ) = A359373 (n + 1)

end A359373

/-! ## A359373.P2885618109642796698

`filter[A344609(n+1), A359372(#)]`
-/

namespace A359373.P2885618109642796698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P2885618109642796698

namespace A359373

/-- `filter[A344609(n+1), A359372(#)]` -/
def P2885618109642796698.Spec : Prop :=
  ∀ n, P2885618109642796698.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P3695577608266051907

`∩[A235991(n+1), A344609(n+1)]`
-/

namespace A359373.P3695577608266051907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359373.P3695577608266051907

namespace A359373

/-- `∩[A235991(n+1), A344609(n+1)]` -/
def P3695577608266051907.Spec : Prop :=
  ∀ n, (P3695577608266051907.a n : ℤ) = A359373 (n + 1)

end A359373

/-! ## A359373.P16848428098576426833

`filter[A359782(n+1), A359372(#)]`
-/

namespace A359373.P16848428098576426833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P16848428098576426833

namespace A359373

/-- `filter[A359782(n+1), A359372(#)]` -/
def P16848428098576426833.Spec : Prop :=
  ∀ n, P16848428098576426833.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P4454641228841046439

`filter[A359766(n+1), A359372(#)]`
-/

namespace A359373.P4454641228841046439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P4454641228841046439

namespace A359373

/-- `filter[A359766(n+1), A359372(#)]` -/
def P4454641228841046439.Spec : Prop :=
  ∀ n, P4454641228841046439.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P16185101787932065047

`filter[A374473(n+1), A359372(#)]`
-/

namespace A359373.P16185101787932065047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P16185101787932065047

namespace A359373

/-- `filter[A374473(n+1), A359372(#)]` -/
def P16185101787932065047.Spec : Prop :=
  ∀ n, P16185101787932065047.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P10705279231144928459

`filter[A371782(n+1), A359372(#)]`
-/

namespace A359373.P10705279231144928459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P10705279231144928459

namespace A359373

/-- `filter[A371782(n+1), A359372(#)]` -/
def P10705279231144928459.Spec : Prop :=
  ∀ n, P10705279231144928459.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P7196340742755662891

`filter[A368999(n+1), A359372(#)]`
-/

namespace A359373.P7196340742755662891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P7196340742755662891

namespace A359373

/-- `filter[A368999(n+1), A359372(#)]` -/
def P7196340742755662891.Spec : Prop :=
  ∀ n, P7196340742755662891.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P18005342196249633436

`filter[A373376(n+1), A359372(#)]`
-/

namespace A359373.P18005342196249633436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P18005342196249633436

namespace A359373

/-- `filter[A373376(n+1), A359372(#)]` -/
def P18005342196249633436.Spec : Prop :=
  ∀ n, P18005342196249633436.a n = A359373 (n + 1)

end A359373

/-! ## A359373.P12082805181044190254

`filter[A369003(n+1), A359372(#)]`
-/

namespace A359373.P12082805181044190254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359373.P12082805181044190254

namespace A359373

/-- `filter[A369003(n+1), A359372(#)]` -/
def P12082805181044190254.Spec : Prop :=
  ∀ n, P12082805181044190254.a n = A359373 (n + 1)

end A359373

/-!
# A359374: Parity of A252463(n).

The programs for A359374, the canonical program `A359374.P13170479000661243617` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359374 has offset 1).

The definition of A359374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359374.P13170479000661243617

`1-A359379(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359374

/-- `1-A359379(n+1)` -/
def P13170479000661243617.Spec : Prop :=
  ∀ n, P13170479000661243617.a n = A359374 (n + 1)

theorem P13170479000661243617.correct : P13170479000661243617.Spec := by
  intro n
  simp only [A359374, Nat.add_sub_cancel]

end A359374

/-!
# A359375: Numbers that are neither multiples of 4 nor of the form 6u+3.

The programs for A359375, the canonical program `A359375.P2411031256495683042` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359375 has offset 1).

The definition of A359375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359375.P2411031256495683042

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6, a(4)=7, a(5)=10, a(6)=11, a(7)=13`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359375

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P2411031256495683042.Spec : Prop :=
  ∀ n, P2411031256495683042.a n = A359375 (n + 1)

theorem P2411031256495683042.correct : P2411031256495683042.Spec := by
  intro n
  simp only [A359375, Nat.add_sub_cancel]

end A359375

/-! ## A359375.P16862198470549361240

`comp[lcm(2, n)+n]`
-/

namespace A359375.P16862198470549361240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A359375.P16862198470549361240

namespace A359375

/-- `comp[lcm(2, n)+n]` -/
def P16862198470549361240.Spec : Prop :=
  ∀ n, (P16862198470549361240.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P13294969035197416643

`comp[n*(n%2+2)]`
-/

namespace A359375.P13294969035197416643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A359375.P13294969035197416643

namespace A359375

/-- `comp[n*(n%2+2)]` -/
def P13294969035197416643.Spec : Prop :=
  ∀ n, (P13294969035197416643.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P5300631400943278962

`comp[n*(4-gcd(2, n))]`
-/

namespace A359375.P5300631400943278962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - (Nat.gcd 2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359375.P5300631400943278962

namespace A359375

/-- `comp[n*(4-gcd(2, n))]` -/
def P5300631400943278962.Spec : Prop :=
  ∀ n, (P5300631400943278962.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P16767869981861128836

`comp[n*(and(1, n)+2)]`
-/

namespace A359375.P16767869981861128836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A359375.P16767869981861128836

namespace A359375

/-- `comp[n*(and(1, n)+2)]` -/
def P16767869981861128836.Spec : Prop :=
  ∀ n, (P16767869981861128836.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P13466863401695285257

`comp[A359376(n+1)]`
-/

namespace A359375.P13466863401695285257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359375.P13466863401695285257

namespace A359375

/-- `comp[A359376(n+1)]` -/
def P13466863401695285257.Spec : Prop :=
  ∀ n, (P13466863401695285257.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P11220420866867928109

`∪[A007310(n+1), A016825(n)]`
-/

namespace A359375.P11220420866867928109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P11220420866867928109

namespace A359375

/-- `∪[A007310(n+1), A016825(n)]` -/
def P11220420866867928109.Spec : Prop :=
  ∀ n, (P11220420866867928109.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P3504911872482821483

`∪[A108118(n+1), A016825(n)]`
-/

namespace A359375.P3504911872482821483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P3504911872482821483

namespace A359375

/-- `∪[A108118(n+1), A016825(n)]` -/
def P3504911872482821483.Spec : Prop :=
  ∀ n, (P3504911872482821483.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P11622874190050075743

`∪[A108118(n+1), A017593(n)]`
-/

namespace A359375.P11622874190050075743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P11622874190050075743

namespace A359375

/-- `∪[A108118(n+1), A017593(n)]` -/
def P11622874190050075743.Spec : Prop :=
  ∀ n, (P11622874190050075743.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P17500284509404555168

`∪[A259749(n+1), A016825(n)]`
-/

namespace A359375.P17500284509404555168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P17500284509404555168

namespace A359375

/-- `∪[A259749(n+1), A016825(n)]` -/
def P17500284509404555168.Spec : Prop :=
  ∀ n, (P17500284509404555168.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P12101061970304421478

`∪[A007310(n+1), A111284(n+1)]`
-/

namespace A359375.P12101061970304421478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P12101061970304421478

namespace A359375

/-- `∪[A007310(n+1), A111284(n+1)]` -/
def P12101061970304421478.Spec : Prop :=
  ∀ n, (P12101061970304421478.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P6282634050127890154

`∪[A073760(n+1), A108118(n+1)]`
-/

namespace A359375.P6282634050127890154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P6282634050127890154

namespace A359375

/-- `∪[A073760(n+1), A108118(n+1)]` -/
def P6282634050127890154.Spec : Prop :=
  ∀ n, (P6282634050127890154.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P8476440423052799988

`∪[A108118(n+1), A111284(n+1)]`
-/

namespace A359375.P8476440423052799988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P8476440423052799988

namespace A359375

/-- `∪[A108118(n+1), A111284(n+1)]` -/
def P8476440423052799988.Spec : Prop :=
  ∀ n, (P8476440423052799988.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P13427184625710236626

`∪[A108118(n+1), A133653(n+1)]`
-/

namespace A359375.P13427184625710236626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P13427184625710236626

namespace A359375

/-- `∪[A108118(n+1), A133653(n+1)]` -/
def P13427184625710236626.Spec : Prop :=
  ∀ n, (P13427184625710236626.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P16542921223599953730

`∪[A073760(n+1), A259749(n+1)]`
-/

namespace A359375.P16542921223599953730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P16542921223599953730

namespace A359375

/-- `∪[A073760(n+1), A259749(n+1)]` -/
def P16542921223599953730.Spec : Prop :=
  ∀ n, (P16542921223599953730.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P17129649114231541469

`∪[A111284(n+1), A259749(n+1)]`
-/

namespace A359375.P17129649114231541469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P17129649114231541469

namespace A359375

/-- `∪[A111284(n+1), A259749(n+1)]` -/
def P17129649114231541469.Spec : Prop :=
  ∀ n, (P17129649114231541469.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P18415071092379500610

`∪[A133653(n+1), A259749(n+1)]`
-/

namespace A359375.P18415071092379500610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P18415071092379500610

namespace A359375

/-- `∪[A133653(n+1), A259749(n+1)]` -/
def P18415071092379500610.Spec : Prop :=
  ∀ n, (P18415071092379500610.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P16767539413260174084

`∪[A007310(n+1), A008586(n)+2]`
-/

namespace A359375.P16767539413260174084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359375.P16767539413260174084

namespace A359375

/-- `∪[A007310(n+1), A008586(n)+2]` -/
def P16767539413260174084.Spec : Prop :=
  ∀ n, (P16767539413260174084.a n : ℤ) = A359375 (n + 1)

end A359375

/-! ## A359375.P14276173717299274701

`Δ[n²-A056833(n)]`
-/

namespace A359375.P14276173717299274701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A056833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359375.P14276173717299274701

namespace A359375

/-- `Δ[n²-A056833(n)]` -/
def P14276173717299274701.Spec : Prop :=
  ∀ n, P14276173717299274701.a n = A359375 (n + 1)

end A359375

/-! ## A359375.P13135554008299263447

`Δ[n²]-A289120(n+1)`
-/

namespace A359375.P13135554008299263447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A289120 (n + 1)

end

end A359375.P13135554008299263447

namespace A359375

/-- `Δ[n²]-A289120(n+1)` -/
def P13135554008299263447.Spec : Prop :=
  ∀ n, P13135554008299263447.a n = A359375 (n + 1)

end A359375

/-!
# A359376: Numbers that are either odd multiples of 3 or multiples of 4. Numbers k such that A252463(k) is even.

The programs for A359376, the canonical program `A359376.P11258715661706858386` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359376 has offset 1).

The definition of A359376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359376.P11258715661706858386

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=8, a(4)=9, a(5)=12`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359376

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P11258715661706858386.Spec : Prop :=
  ∀ n, P11258715661706858386.a n = A359376 (n + 1)

theorem P11258715661706858386.correct : P11258715661706858386.Spec := by
  intro n
  simp only [A359376, Nat.add_sub_cancel]

end A359376

/-! ## A359376.P5336179999307962107

`eq[n, lcm(n, gcd(2, n)+2)]`
-/

namespace A359376.P5336179999307962107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.gcd 2 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359376.P5336179999307962107

namespace A359376

/-- `eq[n, lcm(n, gcd(2, n)+2)]` -/
def P5336179999307962107.Spec : Prop :=
  ∀ n, (P5336179999307962107.a n : ℤ) = A359376 (n + 1)

end A359376

/-! ## A359376.P4890003856691126264

`∪[3*(2*n+1), 4*n]`
-/

namespace A359376.P4890003856691126264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A359376.P4890003856691126264

namespace A359376

/-- `∪[3*(2*n+1), 4*n]` -/
def P4890003856691126264.Spec : Prop :=
  ∀ n, (P4890003856691126264.a n : ℤ) = A359376 (n + 1)

end A359376

/-! ## A359376.P301660846993417932

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=4, a(4)=1, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A359376.P301660846993417932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 4, 1, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359376.P301660846993417932

namespace A359376

/-- `∑[floor(a(n-5))]` -/
def P301660846993417932.Spec : Prop :=
  ∀ n, (P301660846993417932.a n : ℤ) = A359376 (n + 1)

end A359376

/-! ## A359376.P4430453118953304413

`∩[∪[2*n, 3*n], round(4*n/3)]`
-/

namespace A359376.P4430453118953304413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A359376.P4430453118953304413

namespace A359376

/-- `∩[∪[2*n, 3*n], round(4*n/3)]` -/
def P4430453118953304413.Spec : Prop :=
  ∀ n, (P4430453118953304413.a n : ℤ) = A359376 (n + 1)

end A359376

/-! ## A359376.P2488271785563460563

`A081032(n+1)-Δ[A081032(n+4)]`
-/

namespace A359376.P2488271785563460563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081032 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081032 (n + 1) - (f1 (n + 1) - f1 n)

end

end A359376.P2488271785563460563

namespace A359376

/-- `A081032(n+1)-Δ[A081032(n+4)]` -/
def P2488271785563460563.Spec : Prop :=
  ∀ n, P2488271785563460563.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P2559969602330037320

`comp[A359375(n+1)]`
-/

namespace A359376.P2559969602330037320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359376.P2559969602330037320

namespace A359376

/-- `comp[A359375(n+1)]` -/
def P2559969602330037320.Spec : Prop :=
  ∀ n, (P2559969602330037320.a n : ℤ) = A359376 (n + 1)

end A359376

/-! ## A359376.P6049472511293384840

`A047448(n+1)+A004525(A047448(n+1))`
-/

namespace A359376.P6049472511293384840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + A004525 (A047448 (n + 1)).toNat

end

end A359376.P6049472511293384840

namespace A359376

/-- `A047448(n+1)+A004525(A047448(n+1))` -/
def P6049472511293384840.Spec : Prop :=
  ∀ n, P6049472511293384840.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P129562896114421965

`A047229(A047516(n+1))`
-/

namespace A359376.P129562896114421965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (A047516 (n + 1)).toNat

end

end A359376.P129562896114421965

namespace A359376

/-- `A047229(A047516(n+1))` -/
def P129562896114421965.Spec : Prop :=
  ∀ n, P129562896114421965.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P12980314363968913993

`filter[A047229(n+1), A152822(#)]`
-/

namespace A359376.P12980314363968913993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A359376.P12980314363968913993

namespace A359376

/-- `filter[A047229(n+1), A152822(#)]` -/
def P12980314363968913993.Spec : Prop :=
  ∀ n, P12980314363968913993.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P2435035603608646051

`A047229(2*n+1-A057354(n+1))`
-/

namespace A359376.P2435035603608646051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 ((2 * n + 1 : ℤ) - A057354 (n + 1)).toNat

end

end A359376.P2435035603608646051

namespace A359376

/-- `A047229(2*n+1-A057354(n+1))` -/
def P2435035603608646051.Spec : Prop :=
  ∀ n, P2435035603608646051.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P4970053319271253069

`∩[A042965(n+1), A047229(n+1)]`
-/

namespace A359376.P4970053319271253069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359376.P4970053319271253069

namespace A359376

/-- `∩[A042965(n+1), A047229(n+1)]` -/
def P4970053319271253069.Spec : Prop :=
  ∀ n, (P4970053319271253069.a n : ℤ) = A359376 (n + 1)

end A359376

/-! ## A359376.P18102299065148680811

`6*n-A265227(2*n+1)`
-/

namespace A359376.P18102299065148680811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - A265227 (2 * n + 1)

end

end A359376.P18102299065148680811

namespace A359376

/-- `6*n-A265227(2*n+1)` -/
def P18102299065148680811.Spec : Prop :=
  ∀ n, P18102299065148680811.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P15271147708564389000

`A047309(2*n+1)-A173276(n+1)`
-/

namespace A359376.P15271147708564389000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (2 * n + 1) - A173276 (n + 1)

end

end A359376.P15271147708564389000

namespace A359376

/-- `A047309(2*n+1)-A173276(n+1)` -/
def P15271147708564389000.Spec : Prop :=
  ∀ n, P15271147708564389000.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P13766533209598458498

`A244895(2*n)+A047263(2*n+1)`
-/

namespace A359376.P13766533209598458498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (2 * n) + A047263 (2 * n + 1)

end

end A359376.P13766533209598458498

namespace A359376

/-- `A244895(2*n)+A047263(2*n+1)` -/
def P13766533209598458498.Spec : Prop :=
  ∀ n, P13766533209598458498.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P9264333099283280759

`eq[n, n*A359379(n)]`
-/

namespace A359376.P9264333099283280759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A359379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359376.P9264333099283280759

namespace A359376

/-- `eq[n, n*A359379(n)]` -/
def P9264333099283280759.Spec : Prop :=
  ∀ n, (P9264333099283280759.a n : ℤ) = A359376 (n + 1)

end A359376

/-! ## A359376.P6639902817194338965

`filter[A028392(n), A359379(#)]`
-/

namespace A359376.P6639902817194338965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A359376.P6639902817194338965

namespace A359376

/-- `filter[A028392(n), A359379(#)]` -/
def P6639902817194338965.Spec : Prop :=
  ∀ n, P6639902817194338965.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P2918568569592426330

`filter[A107750(n), A359379(#)]`
-/

namespace A359376.P2918568569592426330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A359376.P2918568569592426330

namespace A359376

/-- `filter[A107750(n), A359379(#)]` -/
def P2918568569592426330.Spec : Prop :=
  ∀ n, P2918568569592426330.a n = A359376 (n + 1)

end A359376

/-! ## A359376.P14001302531227271789

`filter[A151988(n), A359379(#)]`
-/

namespace A359376.P14001302531227271789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A359376.P14001302531227271789

namespace A359376

/-- `filter[A151988(n), A359379(#)]` -/
def P14001302531227271789.Spec : Prop :=
  ∀ n, P14001302531227271789.a n = A359376 (n + 1)

end A359376

/-!
# A359377: a(n) = 1 if 3*n is squarefree, otherwise 0.

The programs for A359377, the canonical program `A359377.P17304344709579879016` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359377 has offset 1).

The definition of A359377 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156277, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359377.P17304344709579879016

`abs(A156277(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A359377

/-- `abs(A156277(n+1))` -/
def P17304344709579879016.Spec : Prop :=
  ∀ n, P17304344709579879016.a n = A359377 (n + 1)

theorem P17304344709579879016.correct : P17304344709579879016.Spec := by
  intro n
  simp only [A359377, Nat.add_sub_cancel]

end A359377

/-! ## A359377.P15515041123464536248

`abs(A365428(n+1))`
-/

namespace A359377.P15515041123464536248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A365428 (n + 1)|

end

end A359377.P15515041123464536248

namespace A359377

/-- `abs(A365428(n+1))` -/
def P15515041123464536248.Spec : Prop :=
  ∀ n, P15515041123464536248.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P9068701971602584258

`A008966(3*(n+1))`
-/

namespace A359377.P9068701971602584258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (3 * (n + 1))

end

end A359377.P9068701971602584258

namespace A359377

/-- `A008966(3*(n+1))` -/
def P9068701971602584258.Spec : Prop :=
  ∀ n, P9068701971602584258.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P7040944425375201462

`C(2, ∏{e}[9*(n+1), #])`
-/

namespace A359377.P7040944425375201462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A359377.P7040944425375201462

namespace A359377

/-- `C(2, ∏{e}[9*(n+1), #])` -/
def P7040944425375201462.Spec : Prop :=
  ∀ n, (P7040944425375201462.a n : ℤ) = A359377 (n + 1)

end A359377

/-! ## A359377.P9207953862391498900

`floor(1/∏{e}[3*(n+1), #])`
-/

namespace A359377.P9207953862391498900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A359377.P9207953862391498900

namespace A359377

/-- `floor(1/∏{e}[3*(n+1), #])` -/
def P9207953862391498900.Spec : Prop :=
  ∀ n, P9207953862391498900.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P12904797692035674901

`and(1, ∏{e}[3*(n+1), #!])`
-/

namespace A359377.P12904797692035674901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A359377.P12904797692035674901

namespace A359377

/-- `and(1, ∏{e}[3*(n+1), #!])` -/
def P12904797692035674901.Spec : Prop :=
  ∀ n, (P12904797692035674901.a n : ℤ) = A359377 (n + 1)

end A359377

/-! ## A359377.P15538230925649955791

`((n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2))²%3`
-/

namespace A359377.P15538230925649955791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1 : ℤ) * (|SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 2| - 2)) ^ 2) 3

end

end A359377.P15538230925649955791

namespace A359377

/-- `((n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2))²%3` -/
def P15538230925649955791.Spec : Prop :=
  ∀ n, P15538230925649955791.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P7935263498723567111

`abs(A319448(n+1))`
-/

namespace A359377.P7935263498723567111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319448 (n + 1)|

end

end A359377.P7935263498723567111

namespace A359377

/-- `abs(A319448(n+1))` -/
def P7935263498723567111.Spec : Prop :=
  ∀ n, P7935263498723567111.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P9865210475497826069

`A359471(9*(n+1))`
-/

namespace A359377.P9865210475497826069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (9 * (n + 1))

end

end A359377.P9865210475497826069

namespace A359377

/-- `A359471(9*(n+1))` -/
def P9865210475497826069.Spec : Prop :=
  ∀ n, P9865210475497826069.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P8954260429126360835

`A359474(9*(n+1))`
-/

namespace A359377.P8954260429126360835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359474 (9 * (n + 1))

end

end A359377.P8954260429126360835

namespace A359377

/-- `A359474(9*(n+1))` -/
def P8954260429126360835.Spec : Prop :=
  ∀ n, P8954260429126360835.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P9414869479649544065

`A254520(n+1)%3`
-/

namespace A359377.P9414869479649544065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254520 (n + 1)) 3

end

end A359377.P9414869479649544065

namespace A359377

/-- `A254520(n+1)%3` -/
def P9414869479649544065.Spec : Prop :=
  ∀ n, P9414869479649544065.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P15900339217610819128

`val(A123623(n+1), 3)`
-/

namespace A359377.P15900339217610819128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A123623 (n + 1)).toNat 3

end

end A359377.P15900339217610819128

namespace A359377

/-- `val(A123623(n+1), 3)` -/
def P15900339217610819128.Spec : Prop :=
  ∀ n, (P15900339217610819128.a n : ℤ) = A359377 (n + 1)

end A359377

/-! ## A359377.P972842866699567733

`and(1, A117997(n+1))`
-/

namespace A359377.P972842866699567733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117997 (n + 1))

end

end A359377.P972842866699567733

namespace A359377

/-- `and(1, A117997(n+1))` -/
def P972842866699567733.Spec : Prop :=
  ∀ n, P972842866699567733.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P259802331835640477

`and(1, A317843(n+1))`
-/

namespace A359377.P259802331835640477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A317843 (n + 1))

end

end A359377.P259802331835640477

namespace A359377

/-- `and(1, A317843(n+1))` -/
def P259802331835640477.Spec : Prop :=
  ∀ n, P259802331835640477.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P6744074707654779586

`and(1, A349125(n+1))`
-/

namespace A359377.P6744074707654779586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A349125 (n + 1))

end

end A359377.P6744074707654779586

namespace A359377

/-- `and(1, A349125(n+1))` -/
def P6744074707654779586.Spec : Prop :=
  ∀ n, P6744074707654779586.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P13384029106656186291

`and(1, A349368(n+1))`
-/

namespace A359377.P13384029106656186291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A349368 (n + 1))

end

end A359377.P13384029106656186291

namespace A359377

/-- `and(1, A349368(n+1))` -/
def P13384029106656186291.Spec : Prop :=
  ∀ n, P13384029106656186291.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P4736854879098229255

`abs(A008683(3*(n+1)))`
-/

namespace A359377.P4736854879098229255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (3 * (n + 1))|

end

end A359377.P4736854879098229255

namespace A359377

/-- `abs(A008683(3*(n+1)))` -/
def P4736854879098229255.Spec : Prop :=
  ∀ n, P4736854879098229255.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P17545256900686741836

`A359155(3*(n+1))²`
-/

namespace A359377.P17545256900686741836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359155 (3 * (n + 1)) ^ 2

end

end A359377.P17545256900686741836

namespace A359377

/-- `A359155(3*(n+1))²` -/
def P17545256900686741836.Spec : Prop :=
  ∀ n, P17545256900686741836.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P13114959308542152815

`A008683(3*n+3)²`
-/

namespace A359377.P13114959308542152815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (3 * n + 3) ^ 2

end

end A359377.P13114959308542152815

namespace A359377

/-- `A008683(3*n+3)²` -/
def P13114959308542152815.Spec : Prop :=
  ∀ n, P13114959308542152815.a n = A359377 (n + 1)

end A359377

/-! ## A359377.P6049845421335028061

`2-A007424(3*(n+1))`
-/

namespace A359377.P6049845421335028061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007424 (3 * (n + 1))

end

end A359377.P6049845421335028061

namespace A359377

/-- `2-A007424(3*(n+1))` -/
def P6049845421335028061.Spec : Prop :=
  ∀ n, P6049845421335028061.a n = A359377 (n + 1)

end A359377

/-!
# A359378: Dirichlet inverse of A359377, where A359377(n) = 1 if 3*n is squarefree, otherwise 0.

The programs for A359378, the canonical program `A359378.P8655727792828051139` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359378 has offset 1).

The definition of A359378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, A359172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359378.P8655727792828051139

`A359170(n+1)-A359172(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A359378

/-- `A359170(n+1)-A359172(n+1)` -/
def P8655727792828051139.Spec : Prop :=
  ∀ n, P8655727792828051139.a n = A359378 (n + 1)

theorem P8655727792828051139.correct : P8655727792828051139.Spec := by
  intro n
  simp only [A359378, Nat.add_sub_cancel]

end A359378

/-! ## A359378.P17117067529464759009

`A008836(n+1)%((n+1)%3+1)`
-/

namespace A359378.P17117067529464759009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008836 (n + 1)) (((n + 1) % 3 + 1 : ℕ) : ℤ)

end

end A359378.P17117067529464759009

namespace A359378

/-- `A008836(n+1)%((n+1)%3+1)` -/
def P17117067529464759009.Spec : Prop :=
  ∀ n, P17117067529464759009.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P14399495465715446275

`A008836(n+1)%A132708(n)`
-/

namespace A359378.P14399495465715446275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008836 (n + 1)) (A132708 n)

end

end A359378.P14399495465715446275

namespace A359378

/-- `A008836(n+1)%A132708(n)` -/
def P14399495465715446275.Spec : Prop :=
  ∀ n, P14399495465715446275.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P17710449584506043916

`abs(A010892(n))*A008836(n+1)`
-/

namespace A359378.P17710449584506043916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010892 n| * A008836 (n + 1)

end

end A359378.P17710449584506043916

namespace A359378

/-- `abs(A010892(n))*A008836(n+1)` -/
def P17710449584506043916.Spec : Prop :=
  ∀ n, P17710449584506043916.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P47731372673145123

`char[A032766(n)]*A008836(n+1)`
-/

namespace A359378.P47731372673145123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A008836 (n + 1)

end

end A359378.P47731372673145123

namespace A359378

/-- `char[A032766(n)]*A008836(n+1)` -/
def P47731372673145123.Spec : Prop :=
  ∀ n, P47731372673145123.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P3910257478677843105

`A358272(n+1)%A144437(n+1)`
-/

namespace A359378.P3910257478677843105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358272 (n + 1)) (A144437 (n + 1))

end

end A359378.P3910257478677843105

namespace A359378

/-- `A358272(n+1)%A144437(n+1)` -/
def P3910257478677843105.Spec : Prop :=
  ∀ n, P3910257478677843105.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P614298310884018986

`char[∑[A010872(n)]]*A008836(n+1)`
-/

namespace A359378.P614298310884018986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A008836 (n + 1)

end

end A359378.P614298310884018986

namespace A359378

/-- `char[∑[A010872(n)]]*A008836(n+1)` -/
def P614298310884018986.Spec : Prop :=
  ∀ n, P614298310884018986.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P10518820724588113808

`A359172(2*(n+1))-A359172(n+1)`
-/

namespace A359378.P10518820724588113808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (2 * (n + 1)) - A359172 (n + 1)

end

end A359378.P10518820724588113808

namespace A359378

/-- `A359172(2*(n+1))-A359172(n+1)` -/
def P10518820724588113808.Spec : Prop :=
  ∀ n, P10518820724588113808.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P18435199332004798636

`A359170(n+1)-A359170(2*(n+1))`
-/

namespace A359378.P18435199332004798636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (n + 1) - A359170 (2 * (n + 1))

end

end A359378.P18435199332004798636

namespace A359378

/-- `A359170(n+1)-A359170(2*(n+1))` -/
def P18435199332004798636.Spec : Prop :=
  ∀ n, P18435199332004798636.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P1355473908010485417

`∑{d}[n+1, A008683(#)*A145377((n+1)/#)]`
-/

namespace A359378.P1355473908010485417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A145377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359378.P1355473908010485417

namespace A359378

/-- `∑{d}[n+1, A008683(#)*A145377((n+1)/#)]` -/
def P1355473908010485417.Spec : Prop :=
  ∀ n, P1355473908010485417.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P670793610626474983

`∑{d}[n+1, A158522(#)*A177702((n+1)/#-1)]`
-/

namespace A359378.P670793610626474983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A177702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A359378.P670793610626474983

namespace A359378

/-- `∑{d}[n+1, A158522(#)*A177702((n+1)/#-1)]` -/
def P670793610626474983.Spec : Prop :=
  ∀ n, P670793610626474983.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P250292420284025667

`A008836(n+1)*A011655(n+1)`
-/

namespace A359378.P250292420284025667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A011655 (n + 1)

end

end A359378.P250292420284025667

namespace A359378

/-- `A008836(n+1)*A011655(n+1)` -/
def P250292420284025667.Spec : Prop :=
  ∀ n, P250292420284025667.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P1653536262331407167

`A359170(n+1)+A359170(n+1)-A011655(n+1)`
-/

namespace A359378.P1653536262331407167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (n + 1) + (A359170 (n + 1) - A011655 (n + 1))

end

end A359378.P1653536262331407167

namespace A359378

/-- `A359170(n+1)+A359170(n+1)-A011655(n+1)` -/
def P1653536262331407167.Spec : Prop :=
  ∀ n, P1653536262331407167.a n = A359378 (n + 1)

theorem P1653536262331407167.correct : P1653536262331407167.Spec := by
  intro n
  simp only [A359378, Nat.add_sub_cancel, A359378.P1653536262331407167.a, A359378.P8655727792828051139.a, A011655, A011655.P15232422005463079339.a, A359170, A359170.P16904216499328120622.a, A359172, A359172.P12560099474824915828.a, A065043, A065043.P15027714353296076488.a, A007421, A007421.P6096517627125049268.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359378

/-! ## A359378.P2822525343992944266

`A011655(n+1)-A359172(n+1)-A359172(n+1)`
-/

namespace A359378.P2822525343992944266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) - A359172 (n + 1) - A359172 (n + 1)

end

end A359378.P2822525343992944266

namespace A359378

/-- `A011655(n+1)-A359172(n+1)-A359172(n+1)` -/
def P2822525343992944266.Spec : Prop :=
  ∀ n, P2822525343992944266.a n = A359378 (n + 1)

theorem P2822525343992944266.correct : P2822525343992944266.Spec := by
  intro n
  simp only [A359378, Nat.add_sub_cancel, A359378.P2822525343992944266.a, A359378.P8655727792828051139.a, A011655, A011655.P15232422005463079339.a, A359170, A359170.P16904216499328120622.a, A359172, A359172.P12560099474824915828.a, A065043, A065043.P15027714353296076488.a, A007421, A007421.P6096517627125049268.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359378

/-! ## A359378.P18173462247461775639

`A166698(A061898(n+1))`
-/

namespace A359378.P18173462247461775639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A061898 (n + 1)).toNat

end

end A359378.P18173462247461775639

namespace A359378

/-- `A166698(A061898(n+1))` -/
def P18173462247461775639.Spec : Prop :=
  ∀ n, P18173462247461775639.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P7268894491439268426

`A166698(A064614(n+1))`
-/

namespace A359378.P7268894491439268426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A064614 (n + 1)).toNat

end

end A359378.P7268894491439268426

namespace A359378

/-- `A166698(A064614(n+1))` -/
def P7268894491439268426.Spec : Prop :=
  ∀ n, P7268894491439268426.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P7168237051140993981

`A166698(A072027(n+1))`
-/

namespace A359378.P7168237051140993981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A072027 (n + 1)).toNat

end

end A359378.P7168237051140993981

namespace A359378

/-- `A166698(A072027(n+1))` -/
def P7168237051140993981.Spec : Prop :=
  ∀ n, P7168237051140993981.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P2828024606590049724

`A166698(A234747(n+1))`
-/

namespace A359378.P2828024606590049724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A234747 (n + 1)).toNat

end

end A359378.P2828024606590049724

namespace A359378

/-- `A166698(A234747(n+1))` -/
def P2828024606590049724.Spec : Prop :=
  ∀ n, P2828024606590049724.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P10936995953203760451

`A166698(A234748(n+1))`
-/

namespace A359378.P10936995953203760451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A234748 (n + 1)).toNat

end

end A359378.P10936995953203760451

namespace A359378

/-- `A166698(A234748(n+1))` -/
def P10936995953203760451.Spec : Prop :=
  ∀ n, P10936995953203760451.a n = A359378 (n + 1)

end A359378

/-! ## A359378.P13376853539465507984

`A166698(A234743(n+1))`
-/

namespace A359378.P13376853539465507984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A234743 (n + 1)).toNat

end

end A359378.P13376853539465507984

namespace A359378

/-- `A166698(A234743(n+1))` -/
def P13376853539465507984.Spec : Prop :=
  ∀ n, P13376853539465507984.a n = A359378 (n + 1)

end A359378

/-!
# A359379: a(n) = 1 if n is either a multiple of 4, or an odd multiple of 3, otherwise 0.

The programs for A359379, the canonical program `A359379.P11651323146356252441` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359379 has offset 0).

The definition of A359379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359379.P11651323146356252441

`A079979(3+n)+A121262(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359379

/-- `A079979(3+n)+A121262(n)` -/
def P11651323146356252441.Spec : Prop :=
  ∀ n, P11651323146356252441.a n = A359379 n

theorem P11651323146356252441.correct : P11651323146356252441.Spec := by
  intro n
  simp only [A359379]

end A359379

/-!
# A359380: Numbers that are neither multiples of 3 nor of the form 4u+2.

The programs for A359380, the canonical program `A359380.P4695297208855954576` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359380 has offset 1).

The definition of A359380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359380.P4695297208855954576

`xor(n+1, ∑[n]%3)+n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359380

/-- `xor(n+1, ∑[n]%3)+n` -/
def P4695297208855954576.Spec : Prop :=
  ∀ n, (P4695297208855954576.a n : ℤ) = A359380 (n + 1)

theorem P4695297208855954576.correct : P4695297208855954576.Spec := by
  intro n
  simp only [A359380, Nat.add_sub_cancel]

end A359380

/-! ## A359380.P6312021178525368640

`∑[4-a(n-3)]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A359380.P6312021178525368640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  4 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359380.P6312021178525368640

namespace A359380

/-- `∑[4-a(n-3)]` -/
def P6312021178525368640.Spec : Prop :=
  ∀ n, P6312021178525368640.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P12094800193017027558

`4*(n-1)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A359380.P12094800193017027558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  4 * ((n : ℤ) - 1) - a (n - 3)

end

end A359380.P12094800193017027558

namespace A359380

/-- `4*(n-1)-a(n-3)` -/
def P12094800193017027558.Spec : Prop :=
  ∀ n, P12094800193017027558.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P4721467532061601263

`a(n-1)+3-(a(n-2)+1)%4` with `a(0)=1, a(1)=4`
-/

namespace A359380.P4721467532061601263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (3 - Int.tmod (a (n - 2) + 1) 4)

end

end A359380.P4721467532061601263

namespace A359380

/-- `a(n-1)+3-(a(n-2)+1)%4` -/
def P4721467532061601263.Spec : Prop :=
  ∀ n, P4721467532061601263.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P9921416365891985809

`A088911(n)+A014601(n)`
-/

namespace A359380.P9921416365891985809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n + A014601 n

end

end A359380.P9921416365891985809

namespace A359380

/-- `A088911(n)+A014601(n)` -/
def P9921416365891985809.Spec : Prop :=
  ∀ n, P9921416365891985809.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P3450103921901907116

`A016825(n)-A108118(n+1)`
-/

namespace A359380.P3450103921901907116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A108118 (n + 1)

end

end A359380.P3450103921901907116

namespace A359380

/-- `A016825(n)-A108118(n+1)` -/
def P3450103921901907116.Spec : Prop :=
  ∀ n, P3450103921901907116.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P325522494795464427

`A168276(n+1)-A131556(n)`
-/

namespace A359380.P325522494795464427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168276 (n + 1) - A131556 n

end

end A359380.P325522494795464427

namespace A359380

/-- `A168276(n+1)-A131556(n)` -/
def P325522494795464427.Spec : Prop :=
  ∀ n, P325522494795464427.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P18087991069158116622

`A047480(n+1)-A267808(n)`
-/

namespace A359380.P18087991069158116622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1) - A267808 n

end

end A359380.P18087991069158116622

namespace A359380

/-- `A047480(n+1)-A267808(n)` -/
def P18087991069158116622.Spec : Prop :=
  ∀ n, P18087991069158116622.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P7885614727106636488

`A267027(n+1)-A131533(n)`
-/

namespace A359380.P7885614727106636488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267027 (n + 1) - A131533 n

end

end A359380.P7885614727106636488

namespace A359380

/-- `A267027(n+1)-A131533(n)` -/
def P7885614727106636488.Spec : Prop :=
  ∀ n, P7885614727106636488.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P11696121769053088801

`A273324(n+1)-A130823(n+1)`
-/

namespace A359380.P11696121769053088801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273324 (n + 1) - A130823 (n + 1)

end

end A359380.P11696121769053088801

namespace A359380

/-- `A273324(n+1)-A130823(n+1)` -/
def P11696121769053088801.Spec : Prop :=
  ∀ n, P11696121769053088801.a n = A359380 (n + 1)

end A359380

/-! ## A359380.P4044197216871641637

`∪[A007310(n+1), A092259(n+1)]`
-/

namespace A359380.P4044197216871641637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359380.P4044197216871641637

namespace A359380

/-- `∪[A007310(n+1), A092259(n+1)]` -/
def P4044197216871641637.Spec : Prop :=
  ∀ n, (P4044197216871641637.a n : ℤ) = A359380 (n + 1)

end A359380

/-! ## A359380.P16062727846104313476

`∪[A084087(n+1), A092259(n+1)]`
-/

namespace A359380.P16062727846104313476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359380.P16062727846104313476

namespace A359380

/-- `∪[A084087(n+1), A092259(n+1)]` -/
def P16062727846104313476.Spec : Prop :=
  ∀ n, (P16062727846104313476.a n : ℤ) = A359380 (n + 1)

end A359380

/-! ## A359380.P10090847228246413474

`∪[A007310(n+1), A174398(n+1)]`
-/

namespace A359380.P10090847228246413474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359380.P10090847228246413474

namespace A359380

/-- `∪[A007310(n+1), A174398(n+1)]` -/
def P10090847228246413474.Spec : Prop :=
  ∀ n, (P10090847228246413474.a n : ℤ) = A359380 (n + 1)

end A359380

/-! ## A359380.P2099290649855328775

`∪[A084087(n+1), A174398(n+1)]`
-/

namespace A359380.P2099290649855328775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359380.P2099290649855328775

namespace A359380

/-- `∪[A084087(n+1), A174398(n+1)]` -/
def P2099290649855328775.Spec : Prop :=
  ∀ n, (P2099290649855328775.a n : ℤ) = A359380 (n + 1)

end A359380

/-! ## A359380.P15279242704300949050

`∪[A168489(n+1), A174398(n+1)]`
-/

namespace A359380.P15279242704300949050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359380.P15279242704300949050

namespace A359380

/-- `∪[A168489(n+1), A174398(n+1)]` -/
def P15279242704300949050.Spec : Prop :=
  ∀ n, (P15279242704300949050.a n : ℤ) = A359380 (n + 1)

end A359380

/-! ## A359380.P16166397715997982079

`∪[A084087(n+1), A259751(n+1)]`
-/

namespace A359380.P16166397715997982079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359380.P16166397715997982079

namespace A359380

/-- `∪[A084087(n+1), A259751(n+1)]` -/
def P16166397715997982079.Spec : Prop :=
  ∀ n, (P16166397715997982079.a n : ℤ) = A359380 (n + 1)

end A359380

/-! ## A359380.P644914907733140774

`∪[A092259(n+1), A374044(n+1)]`
-/

namespace A359380.P644914907733140774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359380.P644914907733140774

namespace A359380

/-- `∪[A092259(n+1), A374044(n+1)]` -/
def P644914907733140774.Spec : Prop :=
  ∀ n, (P644914907733140774.a n : ℤ) = A359380 (n + 1)

end A359380

/-! ## A359380.P16394665037144478862

`∪[A174398(n+1), A374044(n+1)]`
-/

namespace A359380.P16394665037144478862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359380.P16394665037144478862

namespace A359380

/-- `∪[A174398(n+1), A374044(n+1)]` -/
def P16394665037144478862.Spec : Prop :=
  ∀ n, (P16394665037144478862.a n : ℤ) = A359380 (n + 1)

end A359380

/-!
# A359381: Nonmultiples of 3 that have an odd number of prime factors (with multiplicity).

The programs for A359381, the canonical program `A359381.P4166977693379255214` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359381 has offset 1).

The definition of A359381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359381.P4166977693379255214

`lt[0, A359172(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A359381

/-- `lt[0, A359172(n+1)]+1` -/
def P4166977693379255214.Spec : Prop :=
  ∀ n, (P4166977693379255214.a n : ℤ) = A359381 (n + 1)

theorem P4166977693379255214.correct : P4166977693379255214.Spec := by
  intro n
  simp only [A359381, Nat.add_sub_cancel]

end A359381

/-! ## A359381.P6090654112269089901

`lt[A359378(n+1), 0]+1`
-/

namespace A359381.P6090654112269089901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359381.P6090654112269089901

namespace A359381

/-- `lt[A359378(n+1), 0]+1` -/
def P6090654112269089901.Spec : Prop :=
  ∀ n, (P6090654112269089901.a n : ℤ) = A359381 (n + 1)

end A359381

/-! ## A359381.P12929421439127002358

`record[and(n+2, A359378(n+2))]`
-/

namespace A359381.P12929421439127002358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A359378 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359381.P12929421439127002358

namespace A359381

/-- `record[and(n+2, A359378(n+2))]` -/
def P12929421439127002358.Spec : Prop :=
  ∀ n, P12929421439127002358.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P15867320038228318945

`eq[1, A359378(2*(n+1))]+1`
-/

namespace A359381.P15867320038228318945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359381.P15867320038228318945

namespace A359381

/-- `eq[1, A359378(2*(n+1))]+1` -/
def P15867320038228318945.Spec : Prop :=
  ∀ n, (P15867320038228318945.a n : ℤ) = A359381 (n + 1)

end A359381

/-! ## A359381.P17670039887976087037

`lt[0, A359170(2*(n+2))]+2`
-/

namespace A359381.P17670039887976087037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A359381.P17670039887976087037

namespace A359381

/-- `lt[0, A359170(2*(n+2))]+2` -/
def P17670039887976087037.Spec : Prop :=
  ∀ n, (P17670039887976087037.a n : ℤ) = A359381 (n + 1)

end A359381

/-! ## A359381.P3927525081026472150

`filter[A026424(n+1), A359172(#)]`
-/

namespace A359381.P3927525081026472150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P3927525081026472150

namespace A359381

/-- `filter[A026424(n+1), A359172(#)]` -/
def P3927525081026472150.Spec : Prop :=
  ∀ n, P3927525081026472150.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P16934984417691542803

`filter[A026422(n+1), A359172(#)]`
-/

namespace A359381.P16934984417691542803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P16934984417691542803

namespace A359381

/-- `filter[A026422(n+1), A359172(#)]` -/
def P16934984417691542803.Spec : Prop :=
  ∀ n, P16934984417691542803.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P8351292377945256659

`filter[A344609(n+1), A359172(#)]`
-/

namespace A359381.P8351292377945256659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P8351292377945256659

namespace A359381

/-- `filter[A344609(n+1), A359172(#)]` -/
def P8351292377945256659.Spec : Prop :=
  ∀ n, P8351292377945256659.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P10679678939052684244

`filter[A373587(n+1), A359172(#)]`
-/

namespace A359381.P10679678939052684244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P10679678939052684244

namespace A359381

/-- `filter[A373587(n+1), A359172(#)]` -/
def P10679678939052684244.Spec : Prop :=
  ∀ n, P10679678939052684244.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P9677114262436312736

`filter[A374109(n+1), A359172(#)]`
-/

namespace A359381.P9677114262436312736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P9677114262436312736

namespace A359381

/-- `filter[A374109(n+1), A359172(#)]` -/
def P9677114262436312736.Spec : Prop :=
  ∀ n, P9677114262436312736.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P9031224079865887730

`filter[A359766(n+1), A359172(#)]`
-/

namespace A359381.P9031224079865887730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P9031224079865887730

namespace A359381

/-- `filter[A359766(n+1), A359172(#)]` -/
def P9031224079865887730.Spec : Prop :=
  ∀ n, P9031224079865887730.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P8947124975887366451

`filter[A374473(n+1), A359172(#)]`
-/

namespace A359381.P8947124975887366451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P8947124975887366451

namespace A359381

/-- `filter[A374473(n+1), A359172(#)]` -/
def P8947124975887366451.Spec : Prop :=
  ∀ n, P8947124975887366451.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P10890351363419501118

`filter[A371782(n+1), A359172(#)]`
-/

namespace A359381.P10890351363419501118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P10890351363419501118

namespace A359381

/-- `filter[A371782(n+1), A359172(#)]` -/
def P10890351363419501118.Spec : Prop :=
  ∀ n, P10890351363419501118.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P4748186826202955307

`filter[A001651(n+1), A066829(#)]`
-/

namespace A359381.P4748186826202955307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359381.P4748186826202955307

namespace A359381

/-- `filter[A001651(n+1), A066829(#)]` -/
def P4748186826202955307.Spec : Prop :=
  ∀ n, P4748186826202955307.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P9213510294496480790

`filter[A001651(n+1), A359172(#)]`
-/

namespace A359381.P9213510294496480790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P9213510294496480790

namespace A359381

/-- `filter[A001651(n+1), A359172(#)]` -/
def P9213510294496480790.Spec : Prop :=
  ∀ n, P9213510294496480790.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P11318911185473186890

`∩[A001651(n+1), A026424(n+1)]`
-/

namespace A359381.P11318911185473186890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359381.P11318911185473186890

namespace A359381

/-- `∩[A001651(n+1), A026424(n+1)]` -/
def P11318911185473186890.Spec : Prop :=
  ∀ n, (P11318911185473186890.a n : ℤ) = A359381 (n + 1)

end A359381

/-! ## A359381.P17962317121533503975

`∩[A001651(n+1), A373587(n+1)]`
-/

namespace A359381.P17962317121533503975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359381.P17962317121533503975

namespace A359381

/-- `∩[A001651(n+1), A373587(n+1)]` -/
def P17962317121533503975.Spec : Prop :=
  ∀ n, (P17962317121533503975.a n : ℤ) = A359381 (n + 1)

end A359381

/-! ## A359381.P10985826701801369619

`filter[A100959(n+1), A359172(#)]`
-/

namespace A359381.P10985826701801369619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P10985826701801369619

namespace A359381

/-- `filter[A100959(n+1), A359172(#)]` -/
def P10985826701801369619.Spec : Prop :=
  ∀ n, P10985826701801369619.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P6816243453811654873

`filter[A246716(n+1), A359172(#)]`
-/

namespace A359381.P6816243453811654873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P6816243453811654873

namespace A359381

/-- `filter[A246716(n+1), A359172(#)]` -/
def P6816243453811654873.Spec : Prop :=
  ∀ n, P6816243453811654873.a n = A359381 (n + 1)

end A359381

/-! ## A359381.P14620318498700478692

`filter[A007417(n+1), A359172(#)]`
-/

namespace A359381.P14620318498700478692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A359381.P14620318498700478692

namespace A359381

/-- `filter[A007417(n+1), A359172(#)]` -/
def P14620318498700478692.Spec : Prop :=
  ∀ n, P14620318498700478692.a n = A359381 (n + 1)

end A359381

/-!
# A359382: a(n) = number of k < t such that rad(k) = rad(t) and k does not divide t, where t = A360768(n) and rad(k) = A007947(k).

The programs for A359382, there is no canonical definition to state claims against.
-/

/-! ## A359382.P4696079016257801938

`A355432(A360768(n+1))`
-/

namespace A359382.P4696079016257801938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A360768 (n + 1)).toNat

end

end A359382.P4696079016257801938

/-! ## A359382.P9927221161612600685

`A355432(lt[A000007(n), A355432(n+1)]+1)`
-/

namespace A359382.P9927221161612600685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A359382.P9927221161612600685

/-!
# A359384: a(1) = 0. If a(n-1) is a first occurrence, a(n) = A000120(a(n-1)). Otherwise, if a(n-1) is a repeat of a prior terms, a(n) = number of indices j < n such that a(j) = a(n-1).

The programs for A359384, there is no canonical definition to state claims against.
-/

/-! ## A359384.P4599003166818138012

`A037813(A117717(n+2))`
-/

namespace A359384.P4599003166818138012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A117717 (n + 2)).toNat

end

end A359384.P4599003166818138012

/-! ## A359384.P2435655584511925946

`A374630(A374635(n)%A116930(n+1))`
-/

namespace A359384.P2435655584511925946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 (Int.tmod (A374635 n) (A116930 (n + 1))).toNat

end

end A359384.P2435655584511925946

/-! ## A359384.P16067309391800707053

`A001222(or(A023110(n+1), A225244(n)))`
-/

namespace A359384.P16067309391800707053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A023110 (n + 1)) (A225244 n)).toNat

end

end A359384.P16067309391800707053

/-! ## A359384.P14122158409287584515

`A333750(A275957(3*n+1)+A005043(n))`
-/

namespace A359384.P14122158409287584515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A275957 (3 * n + 1) + A005043 n).toNat

end

end A359384.P14122158409287584515

/-! ## A359384.P1833632940260825051

`A124765(A252760(3*n+1)%A000108(2*n))`
-/

namespace A359384.P1833632940260825051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Int.tmod (A252760 (3 * n + 1)) (A000108 (2 * n))).toNat

end

end A359384.P1833632940260825051

/-!
# A359385: The lexicographically earliest "Increasing Term Fractal Jump Sequence" that does not use the digit 0 in any terms.

The programs for A359385, there is no canonical definition to state claims against.
-/

/-! ## A359385.P9292836318968415044

`∑[gcd(A181958(n), A278143(n))]`
-/

namespace A359385.P9292836318968415044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181958 n) (A278143 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359385.P9292836318968415044

/-! ## A359385.P16309306790489353723

`∑[A349174(A202605(n+2)²)]`
-/

namespace A359385.P16309306790489353723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349174 (A202605 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359385.P16309306790489353723

/-!
# A359386: a(n) is the least positive integer that can be expressed as the sum of one or more consecutive prime powers (not including 1) in exactly n ways.

The programs for A359386, there is no canonical definition to state claims against.
-/

/-! ## A359386.P4465298009411280739

`A117536(A053548(n+2))+A037387(n+1)`
-/

namespace A359386.P4465298009411280739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117536 (A053548 (n + 2)).toNat + A037387 (n + 1)

end

end A359386.P4465298009411280739

/-!
# A359387: Primes p such that the smallest prime factor of (2^(p-1)-1)/(3*p) is greater than p.

The programs for A359387, there is no canonical definition to state claims against.
-/

/-! ## A359387.P17489794142830204369

`∪[A161897(n+1), A360827(n+1)]`
-/

namespace A359387.P17489794142830204369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359387.P17489794142830204369

/-! ## A359387.P17105359905251117402

`∩[A090810(n+1), A316188(n+1)]`
-/

namespace A359387.P17105359905251117402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359387.P17105359905251117402

/-!
# A359388: a(n) is the number of compositions of n into prime parts, with the 1st part equal to 2, the 2nd part less than or equal to 3, ..., and the k-th part less than or equal to prime(k), and so on.

The programs for A359388, there is no canonical definition to state claims against.
-/

/-! ## A359388.P3612611045183344807

`Δ[A204166(A001045(n)+A000217(n+4))]`
-/

namespace A359388.P3612611045183344807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A001045 n + A000217 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359388.P3612611045183344807

/-! ## A359388.P14963151230062729845

`round(A089292(n)/A122223(n+1))`
-/

namespace A359388.P14963151230062729845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A089292 n : ℚ) / (A122223 (n + 1) : ℚ))

end

end A359388.P14963151230062729845

/-!
# A359389: Maximal coefficient of Product_{k=1..n} (1 + 2*x^k).

The programs for A359389, there is no canonical definition to state claims against.
-/

/-! ## A359389.P16969542049189824583

`A081611(A047653(n+1)-A000040(n+1))`
-/

namespace A359389.P16969542049189824583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A047653 (n + 1) - A000040 (n + 1)).toNat

end

end A359389.P16969542049189824583

/-! ## A359389.P4149653591782365733

`A280026(A071356(n))`
-/

namespace A359389.P4149653591782365733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 (A071356 n).toNat

end

end A359389.P4149653591782365733

/-! ## A359389.P16551347339999646307

`A302594(A094974(n+1))`
-/

namespace A359389.P16551347339999646307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302594 (A094974 (n + 1)).toNat

end

end A359389.P16551347339999646307

/-! ## A359389.P6470143734171160507

`A302594(A289249(n+1))`
-/

namespace A359389.P6470143734171160507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302594 (A289249 (n + 1)).toNat

end

end A359389.P6470143734171160507

/-!
# A359390: Sequence lists the numbers k such that bottom entry is an integer in the ratio d(i+1)/d(i) triangle of the elements in the divisors of n, where d(1) < d(2) < ... < d(q) denote the divisors of k.

The programs for A359390, there is no canonical definition to state claims against.
-/

/-! ## A359390.P13000333947285709500

`comp[(n+1)*A158052(n+1)]`
-/

namespace A359390.P13000333947285709500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359390.P13000333947285709500

/-! ## A359390.P8331968898603593161

`∪[(n+1)², A000961(n+1)]`
-/

namespace A359390.P8331968898603593161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359390.P8331968898603593161

/-! ## A359390.P6115114768991101123

`∪[(n+1)², A164336(n+1)]`
-/

namespace A359390.P6115114768991101123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359390.P6115114768991101123

/-! ## A359390.P17841180297327783288

`∪[(n+1)², A246551(n+1)]`
-/

namespace A359390.P17841180297327783288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359390.P17841180297327783288

/-! ## A359390.P1963293516832773529

`∪[(n+1)², A246655(n+1)]`
-/

namespace A359390.P1963293516832773529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359390.P1963293516832773529

/-! ## A359390.P7912741542071289497

`∪[(n+1)², A323306(n+1)]`
-/

namespace A359390.P7912741542071289497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359390.P7912741542071289497

/-! ## A359390.P8481707257409268905

`∪[(n+1)², A334393(n+1)]`
-/

namespace A359390.P8481707257409268905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359390.P8481707257409268905

/-! ## A359390.P15478754868249430032

`∪[record[A034684(n+1)], (n+1)²]`
-/

namespace A359390.P15478754868249430032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A359390.P15478754868249430032

/-! ## A359390.P3948526950255888400

`∪[A000961(n+2), ∑[2*n+1]]`
-/

namespace A359390.P3948526950255888400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A359390.P3948526950255888400

/-! ## A359390.P1239449082119532630

`filter[A328957(n+1), A325964(#)]`
-/

namespace A359390.P1239449082119532630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A359390.P1239449082119532630

/-!
# A359392: Number of trees on n unlabeled nodes with all nodes of degree <= 7.

The programs for A359392, there is no canonical definition to state claims against.
-/

/-! ## A359392.P849577522083783807

`A000055(n)-A250213(A036649(n))`
-/

namespace A359392.P849577522083783807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A250213 (A036649 n).toNat

end

end A359392.P849577522083783807

/-! ## A359392.P17481115362006057666

`A000055(n)-A124737(A165627(n))`
-/

namespace A359392.P17481115362006057666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A124737 (A165627 n).toNat

end

end A359392.P17481115362006057666

/-! ## A359392.P4465504507481800766

`A000055(n)-A127324(A184965(n))`
-/

namespace A359392.P4465504507481800766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A127324 (A184965 n).toNat

end

end A359392.P4465504507481800766

/-! ## A359392.P15055291745350605026

`A000055(n)-A086078(A333498(n))`
-/

namespace A359392.P15055291745350605026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A086078 (A333498 n).toNat

end

end A359392.P15055291745350605026

/-! ## A359392.P18338556150434708078

`A133137(A036653(n))`
-/

namespace A359392.P18338556150434708078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A036653 n).toNat

end

end A359392.P18338556150434708078

/-!
# A359393: a(n) is the number of times A025581(n-1) (runs of k..0) occur among terms a(1..n-1).

The programs for A359393, there is no canonical definition to state claims against.
-/

/-! ## A359393.P7558517389649046542

`A323014(A246070(n)+A129251(n+1))`
-/

namespace A359393.P7558517389649046542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A246070 n + A129251 (n + 1)).toNat

end

end A359393.P7558517389649046542

/-! ## A359393.P10387629144514637566

`A080576(A331945(n+1))-A293051(n)`
-/

namespace A359393.P10387629144514637566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080576 (A331945 (n + 1)).toNat - A293051 n

end

end A359393.P10387629144514637566

/-! ## A359393.P10088592546405441468

`A340666(n)+A156259(A270613(n+4))`
-/

namespace A359393.P10088592546405441468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 n + A156259 (A270613 (n + 4)).toNat

end

end A359393.P10088592546405441468

/-!
# A359397: Squarefree numbers with weakly decreasing first differences of 0-prepended prime indices.

The programs for A359397, there is no canonical definition to state claims against.
-/

/-! ## A359397.P13520861765572985285

`record[A007913(A325364(n+1))]`
-/

namespace A359397.P13520861765572985285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A325364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359397.P13520861765572985285

/-! ## A359397.P8633254955972331877

`filter[A325364(n+1), A008966(#)]`
-/

namespace A359397.P8633254955972331877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A359397.P8633254955972331877

/-! ## A359397.P7698121724277453478

`filter[A325364(n+1), A323154(#)]`
-/

namespace A359397.P7698121724277453478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A359397.P7698121724277453478

/-! ## A359397.P11180833678050097966

`filter[A325364(n+1), A353559(#)]`
-/

namespace A359397.P11180833678050097966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A359397.P11180833678050097966

/-! ## A359397.P2238194325298270537

`record[A007947(A325364(n+1)²)]`
-/

namespace A359397.P2238194325298270537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A325364 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359397.P2238194325298270537

/-!
# A359398: Number of unlabeled trees covering 2n nodes, half of which are leaves.

The programs for A359398, there is no canonical definition to state claims against.
-/

/-! ## A359398.P5172309292181499252

`record[A010052(2*n+3)*A055290(n+2)]`
-/

namespace A359398.P5172309292181499252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 3) * A055290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359398.P5172309292181499252

/-! ## A359398.P13995431105754796183

`A055290(A282026(3*n)+A046092(n))`
-/

namespace A359398.P13995431105754796183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A282026 (3 * n) + A046092 n).toNat

end

end A359398.P13995431105754796183

/-! ## A359398.P17643327431606503611

`A055290(or(A046092(n), A282026(3*n)))`
-/

namespace A359398.P17643327431606503611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (Int.lor (A046092 n) (A282026 (3 * n))).toNat

end

end A359398.P17643327431606503611

/-! ## A359398.P18229817303943567870

`A055290(xor(A046092(n), A282026(3*n)))`
-/

namespace A359398.P18229817303943567870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (Int.xor (A046092 n) (A282026 (3 * n))).toNat

end

end A359398.P18229817303943567870

