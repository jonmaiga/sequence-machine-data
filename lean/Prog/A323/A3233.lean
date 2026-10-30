import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A323300: Number of ways to fill a matrix with the parts of the integer partition with Heinz number n.

The programs for A323300, the canonical program `A323300.P13098970294854879444` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323300 has offset 1).

The definition of A323300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323300.P13098970294854879444

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*∏{e}[∑{e}[n+1, #], #+1]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323300

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*∏{e}[∑{e}[n+1, #], #+1]` -/
def P13098970294854879444.Spec : Prop :=
  ∀ n, P13098970294854879444.a n = (A323300 (n + 1) : ℚ)

end A323300

/-! ## A323300.P17909631416494855511

`A323295(∑{e}[n+1, #])/∏{e}[n+1, #!]`
-/

namespace A323300.P17909631416494855511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323295 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)

end

end A323300.P17909631416494855511

namespace A323300

/-- `A323295(∑{e}[n+1, #])/∏{e}[n+1, #!]` -/
def P17909631416494855511.Spec : Prop :=
  ∀ n, P17909631416494855511.a n = (A323300 (n + 1) : ℚ)

end A323300

/-! ## A323300.P4432629203096509475

`∏{e}[∑{e}[n+1, #], #+1]*A008480(n+1)`
-/

namespace A323300.P4432629203096509475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A008480 (n + 1)

end

end A323300.P4432629203096509475

namespace A323300

/-- `∏{e}[∑{e}[n+1, #], #+1]*A008480(n+1)` -/
def P4432629203096509475.Spec : Prop :=
  ∀ n, P4432629203096509475.a n = A323300 (n + 1)

end A323300

/-! ## A323300.P10834393107647756328

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A049419(2^∑{e}[n+1, #])`
-/

namespace A323300.P10834393107647756328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A049419 (2 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)) : ℚ)

end

end A323300.P10834393107647756328

namespace A323300

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A049419(2^∑{e}[n+1, #])` -/
def P10834393107647756328.Spec : Prop :=
  ∀ n, P10834393107647756328.a n = (A323300 (n + 1) : ℚ)

end A323300

/-! ## A323300.P13046021403337941775

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A089723(2^∑{e}[n+1, #])`
-/

namespace A323300.P13046021403337941775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A089723 (2 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)) : ℚ)

end

end A323300.P13046021403337941775

namespace A323300

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A089723(2^∑{e}[n+1, #])` -/
def P13046021403337941775.Spec : Prop :=
  ∀ n, P13046021403337941775.a n = (A323300 (n + 1) : ℚ)

end A323300

/-! ## A323300.P18414971913062729426

`A323307(A181819(n+1))`
-/

namespace A323300.P18414971913062729426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323307 (A181819 (n + 1)).toNat

end

end A323300.P18414971913062729426

namespace A323300

/-- `A323307(A181819(n+1))` -/
def P18414971913062729426.Spec : Prop :=
  ∀ n, P18414971913062729426.a n = A323300 (n + 1)

end A323300

/-! ## A323300.P17446351833434076766

`A323307(∏{e}[n+1, A000040(#)])`
-/

namespace A323300.P17446351833434076766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323307 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A323300.P17446351833434076766

namespace A323300

/-- `A323307(∏{e}[n+1, A000040(#)])` -/
def P17446351833434076766.Spec : Prop :=
  ∀ n, P17446351833434076766.a n = A323300 (n + 1)

end A323300

/-! ## A323300.P11765622739486839036

`A008480(n+1)*A323305(n+1)`
-/

namespace A323300.P11765622739486839036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A323305 (n + 1)

end

end A323300.P11765622739486839036

namespace A323300

/-- `A008480(n+1)*A323305(n+1)` -/
def P11765622739486839036.Spec : Prop :=
  ∀ n, P11765622739486839036.a n = A323300 (n + 1)

end A323300

/-!
# A323301: Number of ways to fill a matrix with the parts of a strict integer partition of n.

The programs for A323301, there is no canonical definition to state claims against.
-/

/-! ## A323301.P1664238714403289897

`A294371(A323657(n))`
-/

namespace A323301.P1664238714403289897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294371 (A323657 n).toNat

end

end A323301.P1664238714403289897

/-! ## A323301.P13788595974691869149

`A183162(A216695(n)²)`
-/

namespace A323301.P13788595974691869149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183162 (A216695 n ^ 2).toNat

end

end A323301.P13788595974691869149

/-! ## A323301.P4228946756194470645

`A378358(A351017(n))-1`
-/

namespace A323301.P4228946756194470645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378358 (A351017 n).toNat - 1

end

end A323301.P4228946756194470645

/-! ## A323301.P11518095329549663156

`A130696(2*A032020(n))`
-/

namespace A323301.P11518095329549663156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (2 * A032020 n).toNat

end

end A323301.P11518095329549663156

/-! ## A323301.P11343526458543737626

`A090109(A351017(n)+A057428(n))`
-/

namespace A323301.P11343526458543737626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A351017 n + A057428 n).toNat

end

end A323301.P11343526458543737626

/-!
# A323302: Number of ways to arrange the parts of the integer partition with Heinz number n into a matrix with equal row-sums and equal column-sums.

The programs for A323302, there is no canonical definition to state claims against.
-/

/-! ## A323302.P1960822548852633971

`∏{e}[∑{e}[n+1, #^3], A147851(#)]`
-/

namespace A323302.P1960822548852633971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A147851 (Nat.factorization (f1 n) p)

end

end A323302.P1960822548852633971

/-! ## A323302.P15779868901523984028

`∏{e}[∑{e}[n+1, #*#], A062502(#)]`
-/

namespace A323302.P15779868901523984028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p * Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A062502 (Nat.factorization (f1 n) p)

end

end A323302.P15779868901523984028

/-! ## A323302.P7775328319177166520

`∏{e}[A090885(n+1), A007012(#)]`
-/

namespace A323302.P7775328319177166520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007012 (Nat.factorization (f1 n).natAbs p)

end

end A323302.P7775328319177166520

/-! ## A323302.P2317769802178991988

`∏{e}[A090885(n+1), A062502(#)]`
-/

namespace A323302.P2317769802178991988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A062502 (Nat.factorization (f1 n).natAbs p)

end

end A323302.P2317769802178991988

/-! ## A323302.P12820900695475057701

`∏{e}[A090885(n+1), A115777(#)]`
-/

namespace A323302.P12820900695475057701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A115777 (Nat.factorization (f1 n).natAbs p)

end

end A323302.P12820900695475057701

/-! ## A323302.P8764173273587546074

`∏{e}[A090885(n+1), A322366(#)]`
-/

namespace A323302.P8764173273587546074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A322366 (Nat.factorization (f1 n).natAbs p)

end

end A323302.P8764173273587546074

/-! ## A323302.P8020358409788901258

`and(A089723(n+1), A323300(n+1))`
-/

namespace A323302.P8020358409788901258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089723 (n + 1)) (A323300 (n + 1))

end

end A323302.P8020358409788901258

/-! ## A323302.P5426097810423659604

`and(-A007875(n+1), A089723(n+1))`
-/

namespace A323302.P5426097810423659604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007875 (n + 1)) (A089723 (n + 1))

end

end A323302.P5426097810423659604

/-! ## A323302.P16702967963784878391

`∏{e}[A090885(n+1), A001222(A018252(#))]`
-/

namespace A323302.P16702967963784878391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A018252 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A323302.P16702967963784878391

/-! ## A323302.P2214355301325269856

`and(A000032(A046523(n+1)), A089723(n+1))`
-/

namespace A323302.P2214355301325269856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000032 (A046523 (n + 1)).toNat) (A089723 (n + 1))

end

end A323302.P2214355301325269856

/-!
# A323303: Number of ways to arrange the prime indices of n into a matrix with equal column-sums.

The programs for A323303, there is no canonical definition to state claims against.
-/

/-! ## A323303.P9425690538022672019

`A336737(A122977(n+1))+A262202(n+1)`
-/

namespace A323303.P9425690538022672019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (A122977 (n + 1)).toNat + A262202 (n + 1)

end

end A323303.P9425690538022672019

/-! ## A323303.P1880070357962679398

`A181312(A305149(n+1)%A181310(n+1))`
-/

namespace A323303.P1880070357962679398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181312 (Int.tmod (A305149 (n + 1)) (A181310 (n + 1))).toNat

end

end A323303.P1880070357962679398

/-! ## A323303.P14602516513585357609

`A001065(A210498(n+1))*A200928(A305149(n+1))`
-/

namespace A323303.P14602516513585357609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A210498 (n + 1)).toNat * A200928 (A305149 (n + 1)).toNat

end

end A323303.P14602516513585357609

/-! ## A323303.P15056840204705870725

`A053212(A305149(n+1))%A105746(2*n+5)`
-/

namespace A323303.P15056840204705870725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053212 (A305149 (n + 1)).toNat) (A105746 (2 * n + 5))

end

end A323303.P15056840204705870725

/-! ## A323303.P2363094457900155705

`A038548(n+1)+A010894(A331745(3*n))`
-/

namespace A323303.P2363094457900155705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + A010894 ((A331745 (3 * n)).toNat + 21)

end

end A323303.P2363094457900155705

/-!
# A323304: Heinz numbers of integer partitions that cannot be arranged into a matrix with equal row-sums and equal column-sums.

The programs for A323304, there is no canonical definition to state claims against.
-/

/-! ## A323304.P14197912688874196632

`A106543(n+1)%208`
-/

namespace A323304.P14197912688874196632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106543 (n + 1)) 208

end

end A323304.P14197912688874196632

/-! ## A323304.P11727648201377050082

`comp[n^a(A001221(n))]` with `a(0)=0`
-/

namespace A323304.P11727648201377050082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n ^ f1 (A001221 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A323304.P11727648201377050082

/-! ## A323304.P11023512988059057146

`lt[A384052(n+1), n]+1`
-/

namespace A323304.P11023512988059057146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A323304.P11023512988059057146

/-! ## A323304.P2256823800921225752

`comp[∪[A000961(n+1), n²]]`
-/

namespace A323304.P2256823800921225752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A323304.P2256823800921225752

/-! ## A323304.P11050637322527880175

`comp[∪[A036116(n+1), n²]]`
-/

namespace A323304.P11050637322527880175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A323304.P11050637322527880175

/-! ## A323304.P2328352042036151386

`comp[∪[A137944(n+1), n²]]`
-/

namespace A323304.P2328352042036151386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A323304.P2328352042036151386

/-! ## A323304.P12803082591213505860

`comp[∪[A246655(n+1), n²]]`
-/

namespace A323304.P12803082591213505860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A323304.P12803082591213505860

/-! ## A323304.P15008286398275171726

`comp[A062509(n+1)-1]+1`
-/

namespace A323304.P15008286398275171726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062509 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A323304.P15008286398275171726

/-! ## A323304.P9218325956926671633

`comp[A323306(n+1)-1]+1`
-/

namespace A323304.P9218325956926671633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323306 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A323304.P9218325956926671633

/-!
# A323305: Number of divisors of the number of prime factors of n counted with multiplicity.

The programs for A323305, the canonical program `A323305.P12467677109149275549` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323305 has offset 1).

The definition of A323305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323305.P12467677109149275549

`∏{e}[∑{e}[n+1, #], #+1]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323305

/-- `∏{e}[∑{e}[n+1, #], #+1]` -/
def P12467677109149275549.Spec : Prop :=
  ∀ n, (P12467677109149275549.a n : ℤ) = A323305 (n + 1)

theorem P12467677109149275549.correct : P12467677109149275549.Spec := by
  intro n
  simp only [A323305, Nat.add_sub_cancel]

end A323305

/-! ## A323305.P15624010837363281201

`∏{e}[log(∏{e}[n+1, exp(#)]), #+1]`
-/

namespace A323305.P15624010837363281201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f2 n), Real.exp (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A323305.P15624010837363281201

namespace A323305

/-- `∏{e}[log(∏{e}[n+1, exp(#)]), #+1]` -/
def P15624010837363281201.Spec : Prop :=
  ∀ n, (P15624010837363281201.a n : ℤ) = A323305 (n + 1)

end A323305

/-! ## A323305.P2097803180144026291

`∏{e}[val(∏{e}[n+1, 2^#], 2), #+1]`
-/

namespace A323305.P2097803180144026291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A323305.P2097803180144026291

namespace A323305

/-- `∏{e}[val(∏{e}[n+1, 2^#], 2), #+1]` -/
def P2097803180144026291.Spec : Prop :=
  ∀ n, (P2097803180144026291.a n : ℤ) = A323305 (n + 1)

end A323305

/-! ## A323305.P12036417616967201675

`A032741(∑{e}[n+1, #])+1`
-/

namespace A323305.P12036417616967201675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 1

end

end A323305.P12036417616967201675

namespace A323305

/-- `A032741(∑{e}[n+1, #])+1` -/
def P12036417616967201675.Spec : Prop :=
  ∀ n, P12036417616967201675.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P15469394204503882947

`∏{e}[A001222(n+1), #+1]`
-/

namespace A323305.P15469394204503882947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A323305.P15469394204503882947

namespace A323305

/-- `∏{e}[A001222(n+1), #+1]` -/
def P15469394204503882947.Spec : Prop :=
  ∀ n, (P15469394204503882947.a n : ℤ) = A323305 (n + 1)

end A323305

/-! ## A323305.P4177604537651419817

`A089723(2^∑{e}[n+1, #])`
-/

namespace A323305.P4177604537651419817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A323305.P4177604537651419817

namespace A323305

/-- `A089723(2^∑{e}[n+1, #])` -/
def P4177604537651419817.Spec : Prop :=
  ∀ n, P4177604537651419817.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P4617785803484005024

`A321455(2^∑{e}[n+1, #])`
-/

namespace A323305.P4617785803484005024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A323305.P4617785803484005024

namespace A323305

/-- `A321455(2^∑{e}[n+1, #])` -/
def P4617785803484005024.Spec : Prop :=
  ∀ n, P4617785803484005024.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P5654099354482032409

`A109974(C(∑{e}[n+1, #], 2))`
-/

namespace A323305.P5654099354482032409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) 2)

end

end A323305.P5654099354482032409

namespace A323305

/-- `A109974(C(∑{e}[n+1, #], 2))` -/
def P5654099354482032409.Spec : Prop :=
  ∀ n, P5654099354482032409.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P18201235211994306975

`A000005(∑{e}[abs(1-n)+2, #])`
-/

namespace A323305.P18201235211994306975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A323305.P18201235211994306975

namespace A323305

/-- `A000005(∑{e}[abs(1-n)+2, #])` -/
def P18201235211994306975.Spec : Prop :=
  ∀ n, P18201235211994306975.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P536777722064863563

`A000005(∏{e}[∏{e}[n+1, 2^#], #])`
-/

namespace A323305.P536777722064863563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A323305.P536777722064863563

namespace A323305

/-- `A000005(∏{e}[∏{e}[n+1, 2^#], #])` -/
def P536777722064863563.Spec : Prop :=
  ∀ n, P536777722064863563.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P3754333842636306141

`A000005(A086436(n+1))`
-/

namespace A323305.P3754333842636306141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A086436 (n + 1)).toNat

end

end A323305.P3754333842636306141

namespace A323305

/-- `A000005(A086436(n+1))` -/
def P3754333842636306141.Spec : Prop :=
  ∀ n, P3754333842636306141.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P8646096952977979634

`A049419(A061142(n+1))`
-/

namespace A323305.P8646096952977979634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A061142 (n + 1)).toNat

end

end A323305.P8646096952977979634

namespace A323305

/-- `A049419(A061142(n+1))` -/
def P8646096952977979634.Spec : Prop :=
  ∀ n, P8646096952977979634.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P7045208924708607756

`A049419(A068794(n+1))`
-/

namespace A323305.P7045208924708607756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A068794 (n + 1)).toNat

end

end A323305.P7045208924708607756

namespace A323305

/-- `A049419(A068794(n+1))` -/
def P7045208924708607756.Spec : Prop :=
  ∀ n, P7045208924708607756.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P4986261837600831435

`A000005(A001222(ceil(acot(n)+n)))`
-/

namespace A323305.P4986261837600831435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001222 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat).toNat

end

end A323305.P4986261837600831435

namespace A323305

/-- `A000005(A001222(ceil(acot(n)+n)))` -/
def P4986261837600831435.Spec : Prop :=
  ∀ n, P4986261837600831435.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P1354468450998353867

`A000005(A001222(abs(1-n)+2))`
-/

namespace A323305.P1354468450998353867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001222 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A323305.P1354468450998353867

namespace A323305

/-- `A000005(A001222(abs(1-n)+2))` -/
def P1354468450998353867.Spec : Prop :=
  ∀ n, P1354468450998353867.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P7214102592274380144

`A323300(n+1)/A008480(n+1)`
-/

namespace A323305.P7214102592274380144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323300 (n + 1) : ℚ) / (A008480 (n + 1) : ℚ)

end

end A323305.P7214102592274380144

namespace A323305

/-- `A323300(n+1)/A008480(n+1)` -/
def P7214102592274380144.Spec : Prop :=
  ∀ n, P7214102592274380144.a n = (A323305 (n + 1) : ℚ)

end A323305

/-! ## A323305.P7069055144487537169

`A000005(gcd(C(2, n), A001222(n+1)))`
-/

namespace A323305.P7069055144487537169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (Nat.choose 2 n : ℤ) (A001222 (n + 1)))

end

end A323305.P7069055144487537169

namespace A323305

/-- `A000005(gcd(C(2, n), A001222(n+1)))` -/
def P7069055144487537169.Spec : Prop :=
  ∀ n, P7069055144487537169.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P9082516567829019159

`A000005(A001222(2*n+1-n)+C(2, n+2))`
-/

namespace A323305.P9082516567829019159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001222 (2 * n + 1 - n) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A323305.P9082516567829019159

namespace A323305

/-- `A000005(A001222(2*n+1-n)+C(2, n+2))` -/
def P9082516567829019159.Spec : Prop :=
  ∀ n, P9082516567829019159.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P18133549995523204859

`A049419(A079881(n+1))`
-/

namespace A323305.P18133549995523204859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A079881 (n + 1)).toNat

end

end A323305.P18133549995523204859

namespace A323305

/-- `A049419(A079881(n+1))` -/
def P18133549995523204859.Spec : Prop :=
  ∀ n, P18133549995523204859.a n = A323305 (n + 1)

end A323305

/-! ## A323305.P16089711401996880134

`A043533(A165825(n+1))`
-/

namespace A323305.P16089711401996880134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A165825 (n + 1)).toNat

end

end A323305.P16089711401996880134

namespace A323305

/-- `A043533(A165825(n+1))` -/
def P16089711401996880134.Spec : Prop :=
  ∀ n, P16089711401996880134.a n = A323305 (n + 1)

end A323305

/-!
# A323306: Heinz numbers of integer partitions that can be arranged into a matrix with equal row-sums and equal column-sums.

The programs for A323306, there is no canonical definition to state claims against.
-/

/-! ## A323306.P4157495467220880200

`∪[A000961(n+1), A027709(A030514(n+1))]`
-/

namespace A323306.P4157495467220880200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A030514 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323306.P4157495467220880200

/-! ## A323306.P14943301069590898740

`A396856(n+1)%A335674(A365787(2*(n+2)))`
-/

namespace A323306.P14943301069590898740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396856 (n + 1)) (A335674 (A365787 (2 * (n + 2))).toNat)

end

end A323306.P14943301069590898740

/-! ## A323306.P17359075170221470455

`A396856(n+1)%A335674(A036785(n+1))`
-/

namespace A323306.P17359075170221470455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396856 (n + 1)) (A335674 (A036785 (n + 1)).toNat)

end

end A323306.P17359075170221470455

/-! ## A323306.P17656101127884091705

`lcm(A123271(n+2), A396856(n+1))`
-/

namespace A323306.P17656101127884091705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A396856 (n + 1))

end

end A323306.P17656101127884091705

/-! ## A323306.P207758327043820074

`∩[A082377(n+1), A360247(n+1)]`
-/

namespace A323306.P207758327043820074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323306.P207758327043820074

/-!
# A323307: Number of ways to fill a matrix with the parts of a multiset whose multiplicities are the prime indices of n.

The programs for A323307, there is no canonical definition to state claims against.
-/

/-! ## A323307.P12874060223814816159

`A323295(A056239(n+1))/A321898(n+1)`
-/

namespace A323307.P12874060223814816159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323295 (A056239 (n + 1)).toNat : ℚ) / (A321898 (n + 1) : ℚ)

end

end A323307.P12874060223814816159

/-! ## A323307.P8651199181994990460

`A089723(A248692(n+1))*A318762(n+1)`
-/

namespace A323307.P8651199181994990460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A248692 (n + 1)).toNat * A318762 (n + 1)

end

end A323307.P8651199181994990460

/-! ## A323307.P15829131274247654352

`A323300(A181821(n+1))`
-/

namespace A323307.P15829131274247654352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323300 (A181821 (n + 1)).toNat

end

end A323307.P15829131274247654352

/-! ## A323307.P17860052178430970783

`A318762(n+1)*A323305(A181821(n+1))`
-/

namespace A323307.P17860052178430970783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (n + 1) * A323305 (A181821 (n + 1)).toNat

end

end A323307.P17860052178430970783

/-! ## A323307.P1911986606931757964

`A323300(A304660(n+1))`
-/

namespace A323307.P1911986606931757964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323300 (A304660 (n + 1)).toNat

end

end A323307.P1911986606931757964

/-!
# A323308: The number of exponential semiproper divisors of n.

The programs for A323308, the canonical program `A323308.P13705898636068285078` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323308 has offset 1).

The definition of A323308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323308.P15070448395639792550

`A034444(A000188(n+1))`
-/

namespace A323308.P15070448395639792550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000188 (n + 1)).toNat

end

end A323308.P15070448395639792550

namespace A323308

/-- `A034444(A000188(n+1))` -/
def P15070448395639792550.Spec : Prop :=
  ∀ n, P15070448395639792550.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P6769315887006250492

`A034444(A008833(n+1))`
-/

namespace A323308.P6769315887006250492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A008833 (n + 1)).toNat

end

end A323308.P6769315887006250492

namespace A323308

/-- `A034444(A008833(n+1))` -/
def P6769315887006250492.Spec : Prop :=
  ∀ n, P6769315887006250492.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P13705898636068285078

`A034444(A057521(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A323308

/-- `A034444(A057521(n+1))` -/
def P13705898636068285078.Spec : Prop :=
  ∀ n, P13705898636068285078.a n = A323308 (n + 1)

theorem P13705898636068285078.correct : P13705898636068285078.Spec := by
  intro n
  simp only [A323308, Nat.add_sub_cancel]

end A323308

/-! ## A323308.P14055273397061184293

`A034444((n+1)/A007947(n+1))`
-/

namespace A323308.P14055273397061184293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A323308.P14055273397061184293

namespace A323308

/-- `A034444((n+1)/A007947(n+1))` -/
def P14055273397061184293.Spec : Prop :=
  ∀ n, P14055273397061184293.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P6505760729219272189

`∏{e}[n+1, ceil(atan(#))]`
-/

namespace A323308.P6505760729219272189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (Nat.factorization (f1 n) p : ℝ)⌉

end

end A323308.P6505760729219272189

namespace A323308

/-- `∏{e}[n+1, ceil(atan(#))]` -/
def P6505760729219272189.Spec : Prop :=
  ∀ n, P6505760729219272189.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P8131286486159954811

`∏{e}[n+1, gcd(2, #!)]`
-/

namespace A323308.P8131286486159954811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 2 (Nat.factorial (Nat.factorization (f1 n) p))

end

end A323308.P8131286486159954811

namespace A323308

/-- `∏{e}[n+1, gcd(2, #!)]` -/
def P8131286486159954811.Spec : Prop :=
  ∀ n, (P8131286486159954811.a n : ℤ) = A323308 (n + 1)

end A323308

/-! ## A323308.P4920000376647391631

`∏{e}[n+1, ceil(root(#, 4))]`
-/

namespace A323308.P4920000376647391631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A323308.P4920000376647391631

namespace A323308

/-- `∏{e}[n+1, ceil(root(#, 4))]` -/
def P4920000376647391631.Spec : Prop :=
  ∀ n, P4920000376647391631.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P15528926305955430122

`abs(A390490(n+1))`
-/

namespace A323308.P15528926305955430122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A390490 (n + 1)|

end

end A323308.P15528926305955430122

namespace A323308

/-- `abs(A390490(n+1))` -/
def P15528926305955430122.Spec : Prop :=
  ∀ n, P15528926305955430122.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P4956727620650419849

`2^A056170(n+1)`
-/

namespace A323308.P4956727620650419849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056170 (n + 1) : ℤ)

end

end A323308.P4956727620650419849

namespace A323308

/-- `2^A056170(n+1)` -/
def P4956727620650419849.Spec : Prop :=
  ∀ n, P4956727620650419849.a n = (A323308 (n + 1) : ℚ)

end A323308

/-! ## A323308.P11513346462450417159

`∑{d}[n+1, A227291(#)]`
-/

namespace A323308.P11513346462450417159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d

end

end A323308.P11513346462450417159

namespace A323308

/-- `∑{d}[n+1, A227291(#)]` -/
def P11513346462450417159.Spec : Prop :=
  ∀ n, P11513346462450417159.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P7502239557112872642

`2^A001221((n+1)/∏{p}[n+1, #])`
-/

namespace A323308.P7502239557112872642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℤ)

end

end A323308.P7502239557112872642

namespace A323308

/-- `2^A001221((n+1)/∏{p}[n+1, #])` -/
def P7502239557112872642.Spec : Prop :=
  ∀ n, P7502239557112872642.a n = (A323308 (n + 1) : ℚ)

end A323308

/-! ## A323308.P18276857064820833348

`A000005(∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A323308.P18276857064820833348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A323308.P18276857064820833348

namespace A323308

/-- `A000005(∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P18276857064820833348.Spec : Prop :=
  ∀ n, P18276857064820833348.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P1062730982299723818

`A000688(A007948(n+1))`
-/

namespace A323308.P1062730982299723818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A007948 (n + 1)).toNat

end

end A323308.P1062730982299723818

namespace A323308

/-- `A000688(A007948(n+1))` -/
def P1062730982299723818.Spec : Prop :=
  ∀ n, P1062730982299723818.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P16937441443253494230

`A034444(A000189(n+1))`
-/

namespace A323308.P16937441443253494230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000189 (n + 1)).toNat

end

end A323308.P16937441443253494230

namespace A323308

/-- `A034444(A000189(n+1))` -/
def P16937441443253494230.Spec : Prop :=
  ∀ n, P16937441443253494230.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P2816329745191223148

`A034444(A000190(n+1))`
-/

namespace A323308.P2816329745191223148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000190 (n + 1)).toNat

end

end A323308.P2816329745191223148

namespace A323308

/-- `A034444(A000190(n+1))` -/
def P2816329745191223148.Spec : Prop :=
  ∀ n, P2816329745191223148.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P1472075453684897840

`A034444(A003557(n+1))`
-/

namespace A323308.P1472075453684897840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A003557 (n + 1)).toNat

end

end A323308.P1472075453684897840

namespace A323308

/-- `A034444(A003557(n+1))` -/
def P1472075453684897840.Spec : Prop :=
  ∀ n, P1472075453684897840.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P9357087980306501999

`A001316(A056674(n+1))`
-/

namespace A323308.P9357087980306501999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A056674 (n + 1)).toNat

end

end A323308.P9357087980306501999

namespace A323308

/-- `A001316(A056674(n+1))` -/
def P9357087980306501999.Spec : Prop :=
  ∀ n, P9357087980306501999.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P14748861384629756477

`A000005(A071773(n+1))`
-/

namespace A323308.P14748861384629756477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071773 (n + 1)).toNat

end

end A323308.P14748861384629756477

namespace A323308

/-- `A000005(A071773(n+1))` -/
def P14748861384629756477.Spec : Prop :=
  ∀ n, P14748861384629756477.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P2213095713012976419

`A002487(A073184(n+1))`
-/

namespace A323308.P2213095713012976419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A073184 (n + 1)).toNat

end

end A323308.P2213095713012976419

namespace A323308

/-- `A002487(A073184(n+1))` -/
def P2213095713012976419.Spec : Prop :=
  ∀ n, P2213095713012976419.a n = A323308 (n + 1)

end A323308

/-! ## A323308.P2628997148561898072

`A034444(A292589(n+1))`
-/

namespace A323308.P2628997148561898072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A292589 (n + 1)).toNat

end

end A323308.P2628997148561898072

namespace A323308

/-- `A034444(A292589(n+1))` -/
def P2628997148561898072.Spec : Prop :=
  ∀ n, P2628997148561898072.a n = A323308 (n + 1)

end A323308

/-!
# A323309: The sum of exponential semiproper divisors of n.

The programs for A323309, the canonical program `A323309.P11860908349838440325` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323309 has offset 1).

The definition of A323309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323309.P11860908349838440325

`A007947(n+1)*A034448((n+1)/A007947(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A323309

/-- `A007947(n+1)*A034448((n+1)/A007947(n+1))` -/
def P11860908349838440325.Spec : Prop :=
  ∀ n, P11860908349838440325.a n = A323309 (n + 1)

theorem P11860908349838440325.correct : P11860908349838440325.Spec := by
  intro n
  simp only [A323309, Nat.add_sub_cancel]

end A323309

/-! ## A323309.P4763907514139962917

`∏{p}[n+1, #]*A034448((n+1)/∏{p}[n+1, #])`
-/

namespace A323309.P4763907514139962917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A323309.P4763907514139962917

namespace A323309

/-- `∏{p}[n+1, #]*A034448((n+1)/∏{p}[n+1, #])` -/
def P4763907514139962917.Spec : Prop :=
  ∀ n, P4763907514139962917.a n = A323309 (n + 1)

theorem P4763907514139962917.correct : P4763907514139962917.Spec := by
  intro n
  simp only [A323309, Nat.add_sub_cancel, A323309.P4763907514139962917.f1, A323309.P4763907514139962917.f2, A323309.P4763907514139962917.a, A323309.P11860908349838440325.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323309

/-! ## A323309.P10641763068148381137

`abs(∏{p}[2*n-(n-1), -#])*A034448(A003557(n+1))`
-/

namespace A323309.P10641763068148381137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))| * A034448 (A003557 (n + 1)).toNat

end

end A323309.P10641763068148381137

namespace A323309

/-- `abs(∏{p}[2*n-(n-1), -#])*A034448(A003557(n+1))` -/
def P10641763068148381137.Spec : Prop :=
  ∀ n, P10641763068148381137.a n = A323309 (n + 1)

end A323309

/-! ## A323309.P12546605009258393004

`A007947(n+1)*A034448(A003557(n+1))`
-/

namespace A323309.P12546605009258393004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A034448 (A003557 (n + 1)).toNat

end

end A323309.P12546605009258393004

namespace A323309

/-- `A007947(n+1)*A034448(A003557(n+1))` -/
def P12546605009258393004.Spec : Prop :=
  ∀ n, P12546605009258393004.a n = A323309 (n + 1)

end A323309

/-! ## A323309.P5471881193868245494

`A007947(n+1)*A117658(A057521(n+1))`
-/

namespace A323309.P5471881193868245494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A117658 (A057521 (n + 1)).toNat

end

end A323309.P5471881193868245494

namespace A323309

/-- `A007947(n+1)*A117658(A057521(n+1))` -/
def P5471881193868245494.Spec : Prop :=
  ∀ n, P5471881193868245494.a n = A323309 (n + 1)

end A323309

/-! ## A323309.P12451535267165097806

`gcd(n+1, A144845(n))*A034448(A003557(n+1))`
-/

namespace A323309.P12451535267165097806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A144845 n) : ℤ) * A034448 (A003557 (n + 1)).toNat

end

end A323309.P12451535267165097806

namespace A323309

/-- `gcd(n+1, A144845(n))*A034448(A003557(n+1))` -/
def P12451535267165097806.Spec : Prop :=
  ∀ n, P12451535267165097806.a n = A323309 (n + 1)

end A323309

/-! ## A323309.P5983763021679613206

`A007947(n+1)*A034448(∑{d}[n+1, A300717(#)])`
-/

namespace A323309.P5983763021679613206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A034448 (∑ d ∈ Nat.divisors (f1 n), A300717 d).toNat

end

end A323309.P5983763021679613206

namespace A323309

/-- `A007947(n+1)*A034448(∑{d}[n+1, A300717(#)])` -/
def P5983763021679613206.Spec : Prop :=
  ∀ n, P5983763021679613206.a n = A323309 (n + 1)

end A323309

/-!
# A323311: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} (exp(n*x) - 1)^n/(A(x) + 1 - exp(n*x))^(n+1).

The programs for A323311, there is no canonical definition to state claims against.
-/

/-! ## A323311.P14031757486791278286

`A036814(A050950(n+1))-A082899(n+1)`
-/

namespace A323311.P14031757486791278286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036814 (A050950 (n + 1)).toNat - A082899 (n + 1)

end

end A323311.P14031757486791278286

/-!
# A323313: G.f. A(x) satisfies: 1 = Sum_{n>=0} ((1+x)^n - 1)^n/(A(x) + 1 - (1+x)^n)^(n+1).

The programs for A323313, there is no canonical definition to state claims against.
-/

/-! ## A323313.P17565781147020730546

`A114293(∏{e}[n+1, #+1]+∑[n²+1]+C(n, 4))`
-/

namespace A323313.P17565781147020730546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114293 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + (∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose n 4))

end

end A323313.P17565781147020730546

/-!
# A323323: G.f. Sum_{n>=0} ((1 + 2*x)^n - (1 + x)^n)^n.

The programs for A323323, there is no canonical definition to state claims against.
-/

/-! ## A323323.P18257448266263246028

`∑{d}[A323622(n!), #]`
-/

namespace A323323.P18257448266263246028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323622 (Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A323323.P18257448266263246028

/-!
# A323324: Coefficients T(n,k) of x^n*y^(n-k)*z^k in function A = A(x,y,z) such that A = 1 + x*B*C, B = 1 + y*C*A, and C = 1 + z*A*B, as a triangle read by rows.

The programs for A323324, there is no canonical definition to state claims against.
-/

/-! ## A323324.P5120652191996649177

`A004525(A084534(n)*A208513(n+1))`
-/

namespace A323324.P5120652191996649177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A084534 n * A208513 (n + 1)).toNat

end

end A323324.P5120652191996649177

/-! ## A323324.P1643770001442001391

`A026741(A084534(n)*A208513(n+1))`
-/

namespace A323324.P1643770001442001391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A084534 n * A208513 (n + 1)).toNat

end

end A323324.P1643770001442001391

/-! ## A323324.P11163935442225287311

`A062828(A084534(n)*A208513(n+1))`
-/

namespace A323324.P11163935442225287311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A084534 n * A208513 (n + 1)).toNat

end

end A323324.P11163935442225287311

/-! ## A323324.P9756423118030053424

`A026741(A208513(A038722(n+1))*A208513(n+1))`
-/

namespace A323324.P9756423118030053424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A208513 (A038722 (n + 1)).toNat * A208513 (n + 1)).toNat

end

end A323324.P9756423118030053424

/-! ## A323324.P2611483126658834751

`A284253(A059922(n)^3)`
-/

namespace A323324.P2611483126658834751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284253 (A059922 n ^ 3).toNat

end

end A323324.P2611483126658834751

/-!
# A323325: Coefficients a(n) of x^n*y^n*z^n in function A = A(x,y,z) such that A = 1 + x*B*C, B = 1 + y*C*A, and C = 1 + z*A*B, for n >= 0.

The programs for A323325, there is no canonical definition to state claims against.
-/

/-! ## A323325.P6011377199916458695

`A029651(n)*A125558(n)`
-/

namespace A323325.P6011377199916458695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n * A125558 n

end

end A323325.P6011377199916458695

/-! ## A323325.P11931487459587857861

`A186415(n)-floor(A186415(n)/4)`
-/

namespace A323325.P11931487459587857861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186415 n - ⌊(A186415 n : ℚ) / 4⌋

end

end A323325.P11931487459587857861

/-! ## A323325.P17220675764685465254

`A000108(n)*A029651(n)*A088218(n)`
-/

namespace A323325.P17220675764685465254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A029651 n * A088218 n

end

end A323325.P17220675764685465254

/-! ## A323325.P757693259815076311

`A186415(n)+A186415(n)/4*A057428(n)`
-/

namespace A323325.P757693259815076311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186415 n : ℚ) + (A186415 n : ℚ) / 4 * (A057428 n : ℚ)

end

end A323325.P757693259815076311

/-! ## A323325.P17334902367049762722

`A186415(n)-A186415(n)/4*a(A000038(n))` with `a(0)=1`
-/

namespace A323325.P17334902367049762722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A186415 n : ℚ) - (A186415 n : ℚ) / 4 * a (A000038 n).toNat

end

end A323325.P17334902367049762722

/-!
# A323326: a(n) = 2*T(n) - pi(n), where T(n) (A208251) is the number of refactorable/tau numbers (A033950) <= n and pi(n) (A000720) is the number of primes <= n.

The programs for A323326, the canonical program `A323326.P17752008137620841632` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323326 has offset 1).

The definition of A323326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323326.P10960056257020239726

`2*A208251(n+1)-A000720(n+1)`
-/

namespace A323326.P10960056257020239726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208251 (n + 1) - A000720 (n + 1)

end

end A323326.P10960056257020239726

namespace A323326

/-- `2*A208251(n+1)-A000720(n+1)` -/
def P10960056257020239726.Spec : Prop :=
  ∀ n, P10960056257020239726.a n = A323326 (n + 1)

end A323326

/-! ## A323326.P17752008137620841632

`2*A208251(n+1)-∑[A010051(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A323326

/-- `2*A208251(n+1)-∑[A010051(n+1)]` -/
def P17752008137620841632.Spec : Prop :=
  ∀ n, P17752008137620841632.a n = A323326 (n + 1)

theorem P17752008137620841632.correct : P17752008137620841632.Spec := by
  intro n
  simp only [A323326, Nat.add_sub_cancel]

end A323326

/-! ## A323326.P1338769796408835344

`∑[2*A336040(n+1)]-A000720(n+1)`
-/

namespace A323326.P1338769796408835344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A323326.P1338769796408835344

namespace A323326

/-- `∑[2*A336040(n+1)]-A000720(n+1)` -/
def P1338769796408835344.Spec : Prop :=
  ∀ n, P1338769796408835344.a n = A323326 (n + 1)

end A323326

/-! ## A323326.P12722751488326846111

`A004277(A208251(n+1))-A000720(n+1)`
-/

namespace A323326.P12722751488326846111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208251 (n + 1)).toNat - A000720 (n + 1)

end

end A323326.P12722751488326846111

namespace A323326

/-- `A004277(A208251(n+1))-A000720(n+1)` -/
def P12722751488326846111.Spec : Prop :=
  ∀ n, P12722751488326846111.a n = A323326 (n + 1)

end A323326

/-! ## A323326.P11339307320395294798

`A005408(A208251(n+1))-A036234(n+1)`
-/

namespace A323326.P11339307320395294798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A208251 (n + 1)).toNat - A036234 (n + 1)

end

end A323326.P11339307320395294798

namespace A323326

/-- `A005408(A208251(n+1))-A036234(n+1)` -/
def P11339307320395294798.Spec : Prop :=
  ∀ n, P11339307320395294798.a n = A323326 (n + 1)

end A323326

/-! ## A323326.P15387674998612503344

`A004277(A208251(n+1))-∑[A010051(n+1)]`
-/

namespace A323326.P15387674998612503344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208251 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323326.P15387674998612503344

namespace A323326

/-- `A004277(A208251(n+1))-∑[A010051(n+1)]` -/
def P15387674998612503344.Spec : Prop :=
  ∀ n, P15387674998612503344.a n = A323326 (n + 1)

end A323326

/-! ## A323326.P14274567628250276680

`A005843(∑[A336040(n+1)])-A000720(n+1)`
-/

namespace A323326.P14274567628250276680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000720 (n + 1)

end

end A323326.P14274567628250276680

namespace A323326

/-- `A005843(∑[A336040(n+1)])-A000720(n+1)` -/
def P14274567628250276680.Spec : Prop :=
  ∀ n, P14274567628250276680.a n = A323326 (n + 1)

end A323326

/-!
# A323328: Lexicographically earliest unbounded aliquot-like sequence based on the Dedekind psi function: a(1) = 318, a(n) = t(a(n-1)) where t(k) = A001615(k) - k.

The programs for A323328, there is no canonical definition to state claims against.
-/

/-! ## A323328.P1113693625795386347

`A353692(A216224(n+2))`
-/

namespace A323328.P1113693625795386347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353692 (A216224 (n + 2)).toNat

end

end A323328.P1113693625795386347

/-! ## A323328.P4964021965734747943

`A040006(A002046(n+2))*A216224(n+2)`
-/

namespace A323328.P4964021965734747943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A002046 (n + 2)).toNat * A216224 (n + 2)

end

end A323328.P4964021965734747943

/-! ## A323328.P2915381044648757439

`A040006(A216224(2*(n+1)))*A216224(n+2)`
-/

namespace A323328.P2915381044648757439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A216224 (2 * (n + 1))).toNat * A216224 (n + 2)

end

end A323328.P2915381044648757439

/-!
# A323329: Lesser of amicable pair m < n defined by t(n) = m and t(m) = n where t(n) = psi(n) - n and psi(n) = A001615(n) is the Dedekind psi function.

The programs for A323329, there is no canonical definition to state claims against.
-/

/-! ## A323329.P8056661912289681952

`A387641(n+1)-A323330(n+1)`
-/

namespace A323329.P8056661912289681952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387641 (n + 1) - A323330 (n + 1)

end

end A323329.P8056661912289681952

/-! ## A323329.P10333435163699112821

`A387885(n+1)/A323330(n+1)`
-/

namespace A323329.P10333435163699112821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387885 (n + 1) : ℚ) / (A323330 (n + 1) : ℚ)

end

end A323329.P10333435163699112821

/-! ## A323329.P18295481113615531688

`A387885(A000027(n+1))%(A323330(n+1)-1)`
-/

namespace A323329.P18295481113615531688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387885 (A000027 (n + 1)).toNat) (A323330 (n + 1) - 1)

end

end A323329.P18295481113615531688

/-! ## A323329.P16189528508282900183

`A383943(n+1)/A323330(n+1)*A389098(n+1)`
-/

namespace A323329.P16189528508282900183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383943 (n + 1) : ℚ) / (A323330 (n + 1) : ℚ) * (A389098 (n + 1) : ℚ)

end

end A323329.P16189528508282900183

/-! ## A323329.P9519798636363208699

`A323330(n+1)-A387643(n+1)`
-/

namespace A323329.P9519798636363208699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323330 (n + 1) - A387643 (n + 1)

end

end A323329.P9519798636363208699

/-!
# A323330: Larger of amicable pair m < n defined by t(n) = m and t(m) = n where t(n) = psi(n) - n and psi(n) = A001615(n) is the Dedekind psi function.

The programs for A323330, there is no canonical definition to state claims against.
-/

/-! ## A323330.P15180356627641278132

`A387641(n+1)-A323329(n+1)`
-/

namespace A323330.P15180356627641278132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387641 (n + 1) - A323329 (n + 1)

end

end A323330.P15180356627641278132

/-! ## A323330.P18424886292230510487

`A387885(n+1)/A323329(n+1)`
-/

namespace A323330.P18424886292230510487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387885 (n + 1) : ℚ) / (A323329 (n + 1) : ℚ)

end

end A323330.P18424886292230510487

/-! ## A323330.P14097888948333385497

`A383943(n+1)/A323329(n+1)*A389098(n+1)`
-/

namespace A323330.P14097888948333385497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383943 (n + 1) : ℚ) / (A323329 (n + 1) : ℚ) * (A389098 (n + 1) : ℚ)

end

end A323330.P14097888948333385497

/-! ## A323330.P12648358390287305710

`A387643(n+1)+A323329(n+1)`
-/

namespace A323330.P12648358390287305710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387643 (n + 1) + A323329 (n + 1)

end

end A323330.P12648358390287305710

/-!
# A323332: The Dedekind psi function values of the powerful numbers, A001615(A001694(n)).

The programs for A323332, there is no canonical definition to state claims against.
-/

/-! ## A323332.P6490562167006862721

`A379716(n+1)/A323333(n+1)`
-/

namespace A323332.P6490562167006862721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379716 (n + 1) : ℚ) / (A323333 (n + 1) : ℚ)

end

end A323332.P6490562167006862721

/-! ## A323332.P3460380865039237469

`∑{d}[A084371(n+1), #*A306458(n+1)]`
-/

namespace A323332.P3460380865039237469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A306458 (n + 1)

end

end A323332.P3460380865039237469

/-! ## A323332.P11767570258061895844

`∑{d}[A084371(n+1), A001694(n+1)/#]`
-/

namespace A323332.P11767570258061895844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A001694 (n + 1) : ℚ) / (d : ℚ)

end

end A323332.P11767570258061895844

/-! ## A323332.P3401720684722347082

`A000203(A084371(n+1))*A306458(n+1)`
-/

namespace A323332.P3401720684722347082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A084371 (n + 1)).toNat * A306458 (n + 1)

end

end A323332.P3401720684722347082

/-! ## A323332.P13189284997664117573

`A000203(A001694(n+1)/A306458(n+1))*A306458(n+1)`
-/

namespace A323332.P13189284997664117573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A001694 (n + 1) : ℚ) / (A306458 (n + 1) : ℚ))).toNat * A306458 (n + 1)

end

end A323332.P13189284997664117573

/-! ## A323332.P14143174683163392983

`A181797(A306458(n+1))`
-/

namespace A323332.P14143174683163392983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (A306458 (n + 1)).toNat

end

end A323332.P14143174683163392983

/-! ## A323332.P16782736367191545836

`A181797(A001694(n+1)/A084371(n+1))`
-/

namespace A323332.P16782736367191545836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (SequenceMachineLib.roundAway ((A001694 (n + 1) : ℚ) / (A084371 (n + 1) : ℚ))).toNat

end

end A323332.P16782736367191545836

/-! ## A323332.P15120364281957892992

`A295295(A001694(n+1))*A306458(n+1)`
-/

namespace A323332.P15120364281957892992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 (A001694 (n + 1)).toNat * A306458 (n + 1)

end

end A323332.P15120364281957892992

/-! ## A323332.P16552831593088036364

`A001615(A001694(n+1))`
-/

namespace A323332.P16552831593088036364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A001694 (n + 1)).toNat

end

end A323332.P16552831593088036364

/-! ## A323332.P16935657004615136547

`A001615(record[A057521(n+1)])`
-/

namespace A323332.P16935657004615136547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323332.P16935657004615136547

/-! ## A323332.P3977685378624958309

`A001615(A224866(n+1)-1)`
-/

namespace A323332.P3977685378624958309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A224866 (n + 1) - 1).toNat

end

end A323332.P3977685378624958309

/-! ## A323332.P17823474609998863835

`∑{d}[A001694(n+1), A063659(#)]`
-/

namespace A323332.P17823474609998863835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A063659 d

end

end A323332.P17823474609998863835

/-! ## A323332.P15404160968603666260

`A001615(eq[1, A092261(n+1)]+1)`
-/

namespace A323332.P15404160968603666260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A323332.P15404160968603666260

/-! ## A323332.P11814747152796735511

`A392170(A001694(2*n+1-n))`
-/

namespace A323332.P11814747152796735511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392170 (A001694 (2 * n + 1 - n)).toNat

end

end A323332.P11814747152796735511

/-! ## A323332.P9536442804809159996

`A001615(eq[1, A056169(n+1)+1]+1)`
-/

namespace A323332.P9536442804809159996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A323332.P9536442804809159996

/-! ## A323332.P8328903212339273603

`A007434(A001694(n+1))/A323333(n+1)`
-/

namespace A323332.P8328903212339273603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (A001694 (n + 1)).toNat : ℚ) / (A323333 (n + 1) : ℚ)

end

end A323332.P8328903212339273603

/-!
# A323333: The Euler phi function values of the powerful numbers, A000010(A001694(n)).

The programs for A323333, there is no canonical definition to state claims against.
-/

/-! ## A323333.P12163030533178992417

`A379716(n+1)/A323332(n+1)`
-/

namespace A323333.P12163030533178992417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379716 (n + 1) : ℚ) / (A323332 (n + 1) : ℚ)

end

end A323333.P12163030533178992417

/-! ## A323333.P4810260302645305854

`A000010(A084371(n+1))*A306458(n+1)`
-/

namespace A323333.P4810260302645305854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A084371 (n + 1)).toNat * A306458 (n + 1)

end

end A323333.P4810260302645305854

/-! ## A323333.P15613845505628831386

`A000010(A001694(1+n))`
-/

namespace A323333.P15613845505628831386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001694 (1 + n)).toNat

end

end A323333.P15613845505628831386

/-! ## A323333.P8478153576042891402

`A000010(sqrt(A374291(1+n)))`
-/

namespace A323333.P8478153576042891402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A374291 (1 + n) : ℝ))).toNat

end

end A323333.P8478153576042891402

/-! ## A323333.P1620149172631288750

`A000010(A224866(n+1)-1)`
-/

namespace A323333.P1620149172631288750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A224866 (n + 1) - 1).toNat

end

end A323333.P1620149172631288750

/-! ## A323333.P9483957571957985703

`A000010(col(2*A374291(n+1)))`
-/

namespace A323333.P9483957571957985703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.triCol (2 * A374291 (n + 1)).toNat)

end

end A323333.P9483957571957985703

/-! ## A323333.P5212752693286964712

`A299822(A306458(n+1))`
-/

namespace A323333.P5212752693286964712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (A306458 (n + 1)).toNat

end

end A323333.P5212752693286964712

/-! ## A323333.P2133168406619637453

`A299822(A001694(n+1)/A084371(n+1))`
-/

namespace A323333.P2133168406619637453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (SequenceMachineLib.roundAway ((A001694 (n + 1) : ℚ) / (A084371 (n + 1) : ℚ))).toNat

end

end A323333.P2133168406619637453

/-! ## A323333.P11883886940474998820

`∑{d}[A001694(n+1), A007431(#)]`
-/

namespace A323333.P11883886940474998820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A323333.P11883886940474998820

/-! ## A323333.P9111894849675093489

`A000010(eq[1, A055231(n+1)]+1)`
-/

namespace A323333.P9111894849675093489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A323333.P9111894849675093489

/-! ## A323333.P6949846146592451534

`A000010(lt[A055231(n+1), 2]+1)`
-/

namespace A323333.P6949846146592451534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A323333.P6949846146592451534

/-! ## A323333.P17586510026033240897

`A000010(lt[n, A183097(n+1)]+1)`
-/

namespace A323333.P17586510026033240897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A323333.P17586510026033240897

/-! ## A323333.P5103517609566916583

`A000010(record[A057521(n+1)])`
-/

namespace A323333.P5103517609566916583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323333.P5103517609566916583

/-! ## A323333.P1244655743797654869

`A000010(lt[n, A057521(n+1)]+1)`
-/

namespace A323333.P1244655743797654869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A323333.P1244655743797654869

/-! ## A323333.P16908690749869945187

`A076685(record[A057521(n+1)])`
-/

namespace A323333.P16908690749869945187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076685 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323333.P16908690749869945187

/-! ## A323333.P6789801683154069294

`A109606(record[A057521(n+1)])+1`
-/

namespace A323333.P6789801683154069294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A323333.P6789801683154069294

/-! ## A323333.P18182273810800826997

`A000010(lt[A134193(n+1), 2]+1)`
-/

namespace A323333.P18182273810800826997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134193 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A323333.P18182273810800826997

/-! ## A323333.P8174156515388851323

`A254503(A001694(2*n+1-n))`
-/

namespace A323333.P8174156515388851323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A001694 (2 * n + 1 - n)).toNat

end

end A323333.P8174156515388851323

/-! ## A323333.P6000213196789603382

`A000010(record[A003557(n+1)*A071773(n+1)])`
-/

namespace A323333.P6000213196789603382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323333.P6000213196789603382

/-!
# A323334: Sum of distinct products i*j*k with 1 <= i, j, k <= n.

The programs for A323334, there is no canonical definition to state claims against.
-/

/-! ## A323334.P5732578155525491939

`A321163(∑[n+3]+1)`
-/

namespace A323334.P5732578155525491939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321163 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A323334.P5732578155525491939

/-! ## A323334.P1738546734871034359

`record[A321163(n+1)/A048870(n+2)]`
-/

namespace A323334.P1738546734871034359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321163 (n + 1) : ℚ) / (A048870 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323334.P1738546734871034359

/-! ## A323334.P1247077608085355751

`record[A321163(n+1)/A110107(n+3)]`
-/

namespace A323334.P1247077608085355751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321163 (n + 1) : ℚ) / (A110107 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323334.P1247077608085355751

/-! ## A323334.P13559387927657183765

`record[gcd(A321163(n+3), A321198(n+3))]`
-/

namespace A323334.P13559387927657183765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321163 (n + 3)) (A321198 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323334.P13559387927657183765

/-! ## A323334.P11923453593646522913

`record[A321163(n+1)/A321163(n+4)]`
-/

namespace A323334.P11923453593646522913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321163 (n + 1) : ℚ) / (A321163 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323334.P11923453593646522913

/-!
# A323339: Numerator of the sum of inverse products of parts in all compositions of n.

The programs for A323339, there is no canonical definition to state claims against.
-/

/-! ## A323339.P18134285420187815482

`A007840(n)/A000142(n)*A323340(n)`
-/

namespace A323339.P18134285420187815482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007840 n : ℚ) / (A000142 n : ℚ) * (A323340 n : ℚ)

end

end A323339.P18134285420187815482

/-! ## A323339.P17047091709637042214

`A007840(n)/gcd(A007840(n), A052558(n))`
-/

namespace A323339.P17047091709637042214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007840 n : ℚ) / (Int.gcd (A007840 n) (A052558 n) : ℚ)

end

end A323339.P17047091709637042214

/-! ## A323339.P8691692569864042955

`A007840(n)/A104150(n+1)*A323340(n)`
-/

namespace A323339.P8691692569864042955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007840 n : ℚ) / (A104150 (n + 1) : ℚ) * (A323340 n : ℚ)

end

end A323339.P8691692569864042955

/-! ## A323339.P6966408697180306512

`A355652(∑[n]+n)/A000142(n)*A323340(n)`
-/

namespace A323339.P6966408697180306512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355652 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (A000142 n : ℚ) * (A323340 n : ℚ)

end

end A323339.P6966408697180306512

/-! ## A323339.P18412350116879152530

`A355652(∑[n]+n)/A104150(n+1)*A323340(n)`
-/

namespace A323339.P18412350116879152530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355652 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (A104150 (n + 1) : ℚ) * (A323340 n : ℚ)

end

end A323339.P18412350116879152530

/-! ## A323339.P1465165770227657259

`(A052835(n)-A104150(n))/A000142(n)*A323340(n)`
-/

namespace A323339.P1465165770227657259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052835 n - A104150 n : ℚ) / (A000142 n : ℚ) * (A323340 n : ℚ)

end

end A323339.P1465165770227657259

/-! ## A323339.P7034996534805125616

`(A052835(n)-A104150(n))/A104150(n+1)*A323340(n)`
-/

namespace A323339.P7034996534805125616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052835 n - A104150 n : ℚ) / (A104150 (n + 1) : ℚ) * (A323340 n : ℚ)

end

end A323339.P7034996534805125616

/-! ## A323339.P14135324292304895862

`A052860(n+1)/(n+1)*A323340(n)/A000142(n)`
-/

namespace A323339.P14135324292304895862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052860 (n + 1) : ℚ) / (n + 1 : ℚ) * ((A323340 n : ℚ) / (A000142 n : ℚ))

end

end A323339.P14135324292304895862

/-! ## A323339.P14687011908469624120

`A052860(n+1)/(n+1)*A323340(n)/A104150(n+1)`
-/

namespace A323339.P14687011908469624120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052860 (n + 1) : ℚ) / (n + 1 : ℚ) * ((A323340 n : ℚ) / (A104150 (n + 1) : ℚ))

end

end A323339.P14687011908469624120

/-! ## A323339.P12661933011575512733

`(A052801(n)-A215916(n))/A000142(n)*A323340(n)`
-/

namespace A323339.P12661933011575512733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052801 n - A215916 n : ℚ) / (A000142 n : ℚ) * (A323340 n : ℚ)

end

end A323339.P12661933011575512733

/-!
# A323340: Denominator of the sum of inverse products of parts in all compositions of n.

The programs for A323340, there is no canonical definition to state claims against.
-/

/-! ## A323340.P8820201398430464927

`n!/A007840(n)*A323339(n)`
-/

namespace A323340.P8820201398430464927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A007840 n : ℚ) * (A323339 n : ℚ)

end

end A323340.P8820201398430464927

/-! ## A323340.P15010774761825224714

`n!/gcd(A007840(n), A052558(n))`
-/

namespace A323340.P15010774761825224714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A007840 n) (A052558 n) : ℚ)

end

end A323340.P15010774761825224714

/-! ## A323340.P8955114458770995826

`A000142(n)/A007840(n)*A323339(n)`
-/

namespace A323340.P8955114458770995826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A007840 n : ℚ) * (A323339 n : ℚ)

end

end A323340.P8955114458770995826

/-! ## A323340.P1464045565018070567

`A104150(n+1)/A007840(n)*A323339(n)`
-/

namespace A323340.P1464045565018070567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 (n + 1) : ℚ) / (A007840 n : ℚ) * (A323339 n : ℚ)

end

end A323340.P1464045565018070567

/-! ## A323340.P10706333916924041279

`A000142(n)/A355652(∑[n]+n)*A323339(n)`
-/

namespace A323340.P10706333916924041279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A355652 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) * (A323339 n : ℚ)

end

end A323340.P10706333916924041279

/-! ## A323340.P2297971852446976346

`A000142(n)/(A052835(n)-A104150(n))*A323339(n)`
-/

namespace A323340.P2297971852446976346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A052835 n - A104150 n : ℚ) * (A323339 n : ℚ)

end

end A323340.P2297971852446976346

/-! ## A323340.P4409419195830980738

`A000142(n)/gcd(A052860(n+1)/(n+1), A000142(n))`
-/

namespace A323340.P4409419195830980738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((A052860 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000142 n) : ℚ)

end

end A323340.P4409419195830980738

/-! ## A323340.P1843300144745765130

`A000142(n)/(A052860(n+1)-A218817(n))*A323339(n)`
-/

namespace A323340.P1843300144745765130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A052860 (n + 1) - A218817 n : ℚ) * (A323339 n : ℚ)

end

end A323340.P1843300144745765130

/-! ## A323340.P11267844454503018763

`A000142(n)/(A003713(n+1)-n*A003713(n))*A323339(n)`
-/

namespace A323340.P11267844454503018763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A003713 (n + 1) - (n : ℤ) * A003713 n : ℚ) * (A323339 n : ℚ)

end

end A323340.P11267844454503018763

/-!
# A323345: Square array read by ascending antidiagonals: T(n, k) is the number of partitions of n where parts, if sorted in ascending order, form an arithmetic progression (AP) with common difference of k; n >= 1, k >= 0.

The programs for A323345, there is no canonical definition to state claims against.
-/

/-! ## A323345.P18109183591617282136

`ceil(A334467(n+1)/∑[char[∑[n]]])`
-/

namespace A323345.P18109183591617282136
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334467 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A323345.P18109183591617282136

/-! ## A323345.P3433588874619401331

`A334467(n+1)/A004736(n+1)`
-/

namespace A323345.P3433588874619401331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334467 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A323345.P3433588874619401331

/-! ## A323345.P17711438853524998994

`A334467(n+1)/(A025581(n)+1)`
-/

namespace A323345.P17711438853524998994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334467 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)

end

end A323345.P17711438853524998994

/-! ## A323345.P5645063565450307879

`A334467(n+1)/sqrt(A055461(n+1))`
-/

namespace A323345.P5645063565450307879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A334467 (n + 1) : ℝ) / Real.sqrt (A055461 (n + 1) : ℝ)

end

end A323345.P5645063565450307879

/-! ## A323345.P14041248782090313478

`A334467(n+1)/A005496(A025581(n))`
-/

namespace A323345.P14041248782090313478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334467 (n + 1) : ℚ) / (A005496 (A025581 n).toNat : ℚ)

end

end A323345.P14041248782090313478

/-! ## A323345.P11327427218328768247

`A334467(n+1)/A000005(A130321(n))`
-/

namespace A323345.P11327427218328768247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334467 (n + 1) : ℚ) / (A000005 (A130321 n).toNat : ℚ)

end

end A323345.P11327427218328768247

/-! ## A323345.P3463183484996194617

`A334467(n+1)/A000005(sqrt(A262616(n)))`
-/

namespace A323345.P3463183484996194617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334467 (n + 1) : ℚ) / (A000005 (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))).toNat : ℚ)

end

end A323345.P3463183484996194617

/-!
# A323346: Square array read by ascending antidiagonals: T(p,q) is the number of bases e such that e^2 = 1 (including e = 1) in Clifford algebra Cl(p,q)(R).

The programs for A323346, there is no canonical definition to state claims against.
-/

/-! ## A323346.P12449089878045370919

`A137688(n)-A323100(n)`
-/

namespace A323346.P12449089878045370919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A323100 n

end

end A323346.P12449089878045370919

/-! ## A323346.P2713282528508064451

`Δ[A007664(n)]-A323100(n)`
-/

namespace A323346.P2713282528508064451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A323100 n

end

end A323346.P2713282528508064451

/-! ## A323346.P9623086654792649093

`A000079(A003056(n))-A323100(n)`
-/

namespace A323346.P9623086654792649093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat - A323100 n

end

end A323346.P9623086654792649093

/-! ## A323346.P17796140543653115062

`A131816(A057944(n))-A323100(n)`
-/

namespace A323346.P17796140543653115062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 (A057944 n).toNat - A323100 n

end

end A323346.P17796140543653115062

/-! ## A323346.P2429539183391057819

`A011782(A002024(n+1))-A323100(n)`
-/

namespace A323346.P2429539183391057819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002024 (n + 1)).toNat - A323100 n

end

end A323346.P2429539183391057819

/-!
# A323347: Number of integer partitions of n whose parts can be arranged into a (not necessarily square) matrix with equal row-sums and equal column-sums.

The programs for A323347, there is no canonical definition to state claims against.
-/

/-! ## A323347.P7214710400415009140

`A000041(n)-A323348(n)`
-/

namespace A323347.P7214710400415009140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A323348 n

end

end A323347.P7214710400415009140

/-! ## A323347.P13465459139463421843

`sqrt(A001255(n))-A323348(n)`
-/

namespace A323347.P13465459139463421843
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A323348 n : ℝ)

end

end A323347.P13465459139463421843

/-! ## A323347.P15977104489964706429

`∑[A002865(n)]-A323348(n)`
-/

namespace A323347.P15977104489964706429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A323348 n

end

end A323347.P15977104489964706429

/-! ## A323347.P10552455874871458037

`A054225(∑[n])-A323348(n)`
-/

namespace A323347.P10552455874871458037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A323348 n

end

end A323347.P10552455874871458037

/-! ## A323347.P5279072813291314011

`A000065(n)+1-A323348(n)`
-/

namespace A323347.P5279072813291314011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A323348 n)

end

end A323347.P5279072813291314011

/-! ## A323347.P10635437867870444946

`A035363(2*n)-A323348(n)`
-/

namespace A323347.P10635437867870444946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A323348 n

end

end A323347.P10635437867870444946

/-! ## A323347.P8265945563070367070

`A035444(A008586(n))-A323348(n)`
-/

namespace A323347.P8265945563070367070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A323348 n

end

end A323347.P8265945563070367070

/-! ## A323347.P8656163213207320475

`A194543(A000217(n))-A323348(n)`
-/

namespace A323347.P8656163213207320475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000217 n).toNat - A323348 n

end

end A323347.P8656163213207320475

/-! ## A323347.P8172063619413836477

`A000837(n)+A018783(n)-A323348(n)`
-/

namespace A323347.P8172063619413836477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A323348 n)

end

end A323347.P8172063619413836477

/-!
# A323348: Number of integer partitions of n whose parts cannot be arranged into a (not necessarily square) matrix with equal row-sums and equal column-sums.

The programs for A323348, there is no canonical definition to state claims against.
-/

/-! ## A323348.P11599317834780716652

`A000041(n)-A323347(n)`
-/

namespace A323348.P11599317834780716652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A323347 n

end

end A323348.P11599317834780716652

/-! ## A323348.P11806152022444341965

`sqrt(A001255(n))-A323347(n)`
-/

namespace A323348.P11806152022444341965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A323347 n : ℝ)

end

end A323348.P11806152022444341965

/-! ## A323348.P11306129834134022953

`∑[A002865(n)]-A323347(n)`
-/

namespace A323348.P11306129834134022953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A323347 n

end

end A323348.P11306129834134022953

/-! ## A323348.P8613521240940904291

`A054225(∑[n])-A323347(n)`
-/

namespace A323348.P8613521240940904291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A323347 n

end

end A323348.P8613521240940904291

/-! ## A323348.P11272369863403473505

`A000065(n)+1-A323347(n)`
-/

namespace A323348.P11272369863403473505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A323347 n)

end

end A323348.P11272369863403473505

/-! ## A323348.P7006109281607272875

`A035363(2*n)-A323347(n)`
-/

namespace A323348.P7006109281607272875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A323347 n

end

end A323348.P7006109281607272875

/-! ## A323348.P7275515871003484771

`∑[A085811(n+3)]-A323347(n)`
-/

namespace A323348.P7275515871003484771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A323347 n

end

end A323348.P7275515871003484771

/-! ## A323348.P17452610164256647564

`∑[A232697(n)]-(A323347(n)+n)`
-/

namespace A323348.P17452610164256647564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A323347 n + (n : ℤ))

end

end A323348.P17452610164256647564

/-! ## A323348.P3870701802741613146

`A027293(A000124(n))-A323347(n)`
-/

namespace A323348.P3870701802741613146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (A000124 n).toNat - A323347 n

end

end A323348.P3870701802741613146

/-! ## A323348.P6815627835616797682

`(A000065(n)*A323347(n))%A000041(n)`
-/

namespace A323348.P6815627835616797682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n * A323347 n) (A000041 n)

end

end A323348.P6815627835616797682

/-!
# A323350: Nonprime numbers > 1 whose number of prime factors counted with multiplicity is a perfect square.

The programs for A323350, the canonical program `A323350.P17279732546742867967` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323350 has offset 1).

The definition of A323350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323350.P17279732546742867967

`∪[A014613(n+1), A046312(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A323350

/-- `∪[A014613(n+1), A046312(n+1)]` -/
def P17279732546742867967.Spec : Prop :=
  ∀ n, (P17279732546742867967.a n : ℤ) = A323350 (n + 1)

theorem P17279732546742867967.correct : P17279732546742867967.Spec := by
  intro n
  simp only [A323350, Nat.add_sub_cancel]

end A323350

/-! ## A323350.P13432925201104885168

`eq[6, A193512(A004277(n))]`
-/

namespace A323350.P13432925201104885168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193512 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323350.P13432925201104885168

namespace A323350

/-- `eq[6, A193512(A004277(n))]` -/
def P13432925201104885168.Spec : Prop :=
  ∀ n, (P13432925201104885168.a n : ℤ) = A323350 (n + 1)

end A323350

/-! ## A323350.P9431630254321773189

`eq[6, A193512(A316571(n+1))]`
-/

namespace A323350.P9431630254321773189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193512 (A316571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323350.P9431630254321773189

namespace A323350

/-- `eq[6, A193512(A316571(n+1))]` -/
def P9431630254321773189.Spec : Prop :=
  ∀ n, (P9431630254321773189.a n : ℤ) = A323350 (n + 1)

end A323350

/-! ## A323350.P8932409639961424282

`∪[A014613(n+1), A246277(A046314(n+1))]`
-/

namespace A323350.P8932409639961424282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A046314 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323350.P8932409639961424282

namespace A323350

/-- `∪[A014613(n+1), A246277(A046314(n+1))]` -/
def P8932409639961424282.Spec : Prop :=
  ∀ n, (P8932409639961424282.a n : ℤ) = A323350 (n + 1)

end A323350

/-!
# A323351: Number of ways to fill a (not necessarily square) matrix with n zeros and ones.

The programs for A323351, the canonical program `A323351.P3034822390063686642` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323351 has offset 0).

The definition of A323351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323351.P3034822390063686642

`2^n*∏{e}[n, #+1]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323351

/-- `2^n*∏{e}[n, #+1]` -/
def P3034822390063686642.Spec : Prop :=
  ∀ n, (P3034822390063686642.a n : ℤ) = A323351 n

theorem P3034822390063686642.correct : P3034822390063686642.Spec := by
  intro n
  simp only [A323351]

end A323351

/-! ## A323351.P9225761018115252605

`2^(∑{e}[n, log2(#+1)]+n)`
-/

namespace A323351.P9225761018115252605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ) + (n : ℝ))

end

end A323351.P9225761018115252605

namespace A323351

/-- `2^(∑{e}[n, log2(#+1)]+n)` -/
def P9225761018115252605.Spec : Prop :=
  ∀ n, P9225761018115252605.a n = (A323351 n : ℝ)

end A323351

/-! ## A323351.P15158544237973201441

`2^(log2(∏{e}[n, #+1])+n)`
-/

namespace A323351.P15158544237973201441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ) + (n : ℝ))

end

end A323351.P15158544237973201441

namespace A323351

/-- `2^(log2(∏{e}[n, #+1])+n)` -/
def P15158544237973201441.Spec : Prop :=
  ∀ n, P15158544237973201441.a n = (A323351 n : ℝ)

end A323351

/-! ## A323351.P767609133591405404

`(1+A032741(n))*2^n`
-/

namespace A323351.P767609133591405404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + A032741 n) * (2 ^ n : ℤ)

end

end A323351.P767609133591405404

namespace A323351

/-- `(1+A032741(n))*2^n` -/
def P767609133591405404.Spec : Prop :=
  ∀ n, P767609133591405404.a n = A323351 n

end A323351

/-! ## A323351.P17926959047001441519

`2^n*A000005(ceil(abs(γ-n)))`
-/

namespace A323351.P17926959047001441519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000005 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

end

end A323351.P17926959047001441519

namespace A323351

/-- `2^n*A000005(ceil(abs(γ-n)))` -/
def P17926959047001441519.Spec : Prop :=
  ∀ n, P17926959047001441519.a n = A323351 n

end A323351

/-! ## A323351.P10419944413685790808

`(A032741(n)+1)*A000079(n)`
-/

namespace A323351.P10419944413685790808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 n + 1) * A000079 n

end

end A323351.P10419944413685790808

namespace A323351

/-- `(A032741(n)+1)*A000079(n)` -/
def P10419944413685790808.Spec : Prop :=
  ∀ n, P10419944413685790808.a n = A323351 n

end A323351

/-! ## A323351.P15542385473190364126

`A000005(A028310(n))*A000079(n)`
-/

namespace A323351.P15542385473190364126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat * A000079 n

end

end A323351.P15542385473190364126

namespace A323351

/-- `A000005(A028310(n))*A000079(n)` -/
def P15542385473190364126.Spec : Prop :=
  ∀ n, P15542385473190364126.a n = A323351 n

end A323351

/-! ## A323351.P2715324219620325950

`(A350102(n+1)-A350102(n))*A000079(n)`
-/

namespace A323351.P2715324219620325950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A350102 (n + 1) - A350102 n) * A000079 n

end

end A323351.P2715324219620325950

namespace A323351

/-- `(A350102(n+1)-A350102(n))*A000079(n)` -/
def P2715324219620325950.Spec : Prop :=
  ∀ n, P2715324219620325950.a n = A323351 n

end A323351

/-! ## A323351.P3306715383383929182

`2^n*A055894(∑[n])`
-/

namespace A323351.P3306715383383929182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A055894 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323351.P3306715383383929182

namespace A323351

/-- `2^n*A055894(∑[n])` -/
def P3306715383383929182.Spec : Prop :=
  ∀ n, P3306715383383929182.a n = A323351 n

end A323351

/-! ## A323351.P16302421551716649004

`(A001222(∏{d}[n, A006530(#)])+1)*2^n`
-/

namespace A323351.P16302421551716649004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (∏ d ∈ Nat.divisors (f1 n), A006530 d).toNat + 1) * (2 ^ n : ℤ)

end

end A323351.P16302421551716649004

namespace A323351

/-- `(A001222(∏{d}[n, A006530(#)])+1)*2^n` -/
def P16302421551716649004.Spec : Prop :=
  ∀ n, P16302421551716649004.a n = A323351 n

end A323351

/-!
# A323352: Number of tilings of an 8 X n rectangle using 2*n copies of the disconnected shape [oo__oo].

The programs for A323352, there is no canonical definition to state claims against.
-/

/-! ## A323352.P14674375848246677887

`A132802(C(A135295(n), 5))`
-/

namespace A323352.P14674375848246677887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132802 (Nat.choose (A135295 n).toNat 5)

end

end A323352.P14674375848246677887

/-! ## A323352.P14636150133344035409

`A000196(A132802(C(n, 5))²)`
-/

namespace A323352.P14636150133344035409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A132802 (Nat.choose n 5) ^ 2).toNat

end

end A323352.P14636150133344035409

/-! ## A323352.P8317067759003458580

`A132802(C(A023052(n+1), 5))`
-/

namespace A323352.P8317067759003458580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132802 (Nat.choose (A023052 (n + 1)).toNat 5)

end

end A323352.P8317067759003458580

/-! ## A323352.P14340012766660097098

`A218628(n)+A000688(A146808(n+1))`
-/

namespace A323352.P14340012766660097098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218628 n + A000688 (A146808 (n + 1)).toNat

end

end A323352.P14340012766660097098

/-! ## A323352.P14575160202075148795

`A218628(n)+A107577(A036407(3*n+1))`
-/

namespace A323352.P14575160202075148795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218628 n + A107577 (A036407 (3 * n + 1)).toNat

end

end A323352.P14575160202075148795

/-!
# A323353: Numbers k such that A015525(k) is prime.

The programs for A323353, there is no canonical definition to state claims against.
-/

/-! ## A323353.P8494620957272898698

`A071585(A358654(n)+A000666(n))`
-/

namespace A323353.P8494620957272898698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A358654 n + A000666 n).toNat

end

end A323353.P8494620957272898698

/-!
# A323354: Odd n such that A015525(n) is not squarefree.

The programs for A323354, there is no canonical definition to state claims against.
-/

/-! ## A323354.P16205100872129813316

`or(char[A049336(n+1)], A121025(n+1))`
-/

namespace A323354.P16205100872129813316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049336 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A121025 (n + 1))

end

end A323354.P16205100872129813316

/-! ## A323354.P16640441299814307782

`or(A121025(n+1), A287170(floor(n/2)!))`
-/

namespace A323354.P16640441299814307782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121025 (n + 1)) (A287170 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat))

end

end A323354.P16640441299814307782

/-! ## A323354.P11529684481110880950

`A121025(n+1)+A010054(A016970(n))`
-/

namespace A323354.P11529684481110880950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1) + A010054 (A016970 n).toNat

end

end A323354.P11529684481110880950

/-! ## A323354.P13189735725453765030

`A277592(n+1)+A239705(A001405(n))`
-/

namespace A323354.P13189735725453765030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1) + A239705 (A001405 n).toNat

end

end A323354.P13189735725453765030

/-! ## A323354.P13627135294878354286

`or(A001511(A001644(n)), A121025(n+1))`
-/

namespace A323354.P13627135294878354286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001511 (A001644 n).toNat) (A121025 (n + 1))

end

end A323354.P13627135294878354286

/-!
# A323355: a(1)=1; for n >= 2, a(n) = Sum_{i=1..A000120(n)} a(z(i)), where z(i) are the positions of 1's in the binary expansion of n, counted from left to right.

The programs for A323355, there is no canonical definition to state claims against.
-/

/-! ## A323355.P15117007246680401729

`A325034(A110765(n+1))`
-/

namespace A323355.P15117007246680401729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325034 (A110765 (n + 1)).toNat

end

end A323355.P15117007246680401729

/-! ## A323355.P5936756619014827896

`∑{p}[A110765(n+1)², A211095(#)]`
-/

namespace A323355.P5936756619014827896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110765 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A211095 p

end

end A323355.P5936756619014827896

/-! ## A323355.P5619307953088490358

`∑{e}[A000458((n+1)/2^val(n+1, 2))+2, #]`
-/

namespace A323355.P5619307953088490358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000458 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A323355.P5619307953088490358

/-! ## A323355.P16860915479952374945

`A000120(lt[A127325(3*n+2), A136567(n+1)])`
-/

namespace A323355.P16860915479952374945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127325 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323355.P16860915479952374945

/-! ## A323355.P9169213204841712076

`A293444(∑{d}[n+1, #*#%2]²²)`
-/

namespace A323355.P9169213204841712076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293444 (((∑ d ∈ Nat.divisors (f1 n), d * (d % 2)) ^ 2) ^ 2)

end

end A323355.P9169213204841712076

/-!
# A323357: Number of binary self-dual codes of length 2n (up to permutation equivalence) that have a unique automorphism group size.

The programs for A323357, there is no canonical definition to state claims against.
-/

/-! ## A323357.P16976938186437609279

`A322299(n+1)-A323358(A077168(n))`
-/

namespace A323357.P16976938186437609279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322299 (n + 1) - A323358 (A077168 n).toNat

end

end A323357.P16976938186437609279

/-! ## A323357.P12579911284437674445

`A322299(A044916(n+1))-A323358(n+1)`
-/

namespace A323357.P12579911284437674445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322299 (A044916 (n + 1)).toNat - A323358 (n + 1)

end

end A323357.P12579911284437674445

/-! ## A323357.P5459873769337846685

`A322299(n+1)-A089850(A323358(n+1))`
-/

namespace A323357.P5459873769337846685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322299 (n + 1) - A089850 (A323358 (n + 1)).toNat

end

end A323357.P5459873769337846685

/-! ## A323357.P16888021796543840235

`A118759(A322299(n+1)-A323358(n+1))`
-/

namespace A323357.P16888021796543840235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A322299 (n + 1) - A323358 (n + 1)).toNat

end

end A323357.P16888021796543840235

/-! ## A323357.P7642680718650572487

`A322299(n+1)-∑[A062224(n+1)%A348290(n)]`
-/

namespace A323357.P7642680718650572487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062224 (n + 1)) (A348290 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322299 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323357.P7642680718650572487

/-!
# A323358: Number of distinct automorphism group sizes for binary self-dual codes of length 2n such that multiple same length binary self-dual codes with different weight distributions share the same automorphism group size.

The programs for A323358, there is no canonical definition to state claims against.
-/

/-! ## A323358.P1316434946501341354

`∑[A062224(n+1)%A348290(n)]`
-/

namespace A323358.P1316434946501341354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062224 (n + 1)) (A348290 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323358.P1316434946501341354

/-! ## A323358.P16472438567250632580

`A199413(n)%A199408(A322283(n))`
-/

namespace A323358.P16472438567250632580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199413 n) (A199408 (A322283 n).toNat)

end

end A323358.P16472438567250632580

/-! ## A323358.P913445016040017310

`A322299(n+1)-A323357(A077168(n))`
-/

namespace A323358.P913445016040017310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322299 (n + 1) - A323357 (A077168 n).toNat

end

end A323358.P913445016040017310

/-! ## A323358.P14215670423817342471

`A063425(A034729(n+1))%A348290(n)`
-/

namespace A323358.P14215670423817342471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063425 (A034729 (n + 1)).toNat) (A348290 n)

end

end A323358.P14215670423817342471

/-! ## A323358.P5376165334717413555

`A122295(floor(A000571(n)/A046308(n+5)))`
-/

namespace A323358.P5376165334717413555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122295 ⌊(A000571 n : ℚ) / (A046308 (n + 5) : ℚ)⌋.toNat

end

end A323358.P5376165334717413555

/-!
# A323359: a(n) = b(n+1)/b(n) - 1 where b(1)=2 and b(k) = b(k-1) + lcm(floor(sqrt(k^3)), b(k-1)).

The programs for A323359, there is no canonical definition to state claims against.
-/

/-! ## A323359.P12182934304064542120

`A130418(A176983(n+1))`
-/

namespace A323359.P12182934304064542120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130418 (A176983 (n + 1)).toNat

end

end A323359.P12182934304064542120

/-! ## A323359.P16134874548685062075

`A010333(or(A010342(n+1), A010365(n+2)))`
-/

namespace A323359.P16134874548685062075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010333 (Int.lor (A010342 (n + 1)) (A010365 (n + 2))).toNat

end

end A323359.P16134874548685062075

/-!
# A323360: Least number of consecutive primes beginning with 2, the sum of which (A007504) is >= 2^n.

The programs for A323360, there is no canonical definition to state claims against.
-/

/-! ## A323360.P11991973631110514609

`A103128(∑[∑[A095010(n+1)]])`
-/

namespace A323360.P11991973631110514609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323360.P11991973631110514609

/-! ## A323360.P15184972518420914550

`A003056(∑[A004396(A213710(n))])`
-/

namespace A323360.P15184972518420914550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A213710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323360.P15184972518420914550

/-! ## A323360.P11025863610561876288

`A003056(A058519(n)+A003229(n))`
-/

namespace A323360.P11025863610561876288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A058519 n + A003229 n).toNat

end

end A323360.P11025863610561876288

/-! ## A323360.P7372367872550532407

`A002024(A284904(n)+A000041(n))`
-/

namespace A323360.P7372367872550532407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A284904 n + A000041 n).toNat

end

end A323360.P7372367872550532407

/-! ## A323360.P4190474931553323794

`A002024(A284904(n)+A213598(n))`
-/

namespace A323360.P4190474931553323794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A284904 n + A213598 n).toNat

end

end A323360.P4190474931553323794

/-!
# A323361: Least number of consecutive primes beginning with 2, the sum of which (A007504) exceeds e^n.

The programs for A323361, there is no canonical definition to state claims against.
-/

/-! ## A323361.P18006673966511283862

`A261104(∑[A283642(n)])`
-/

namespace A323361.P18006673966511283862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323361.P18006673966511283862

/-! ## A323361.P16227655509482440666

`A261104(∑[A284426(n)])`
-/

namespace A323361.P16227655509482440666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323361.P16227655509482440666

/-! ## A323361.P6088307886731236014

`A261104(A084639(n+1))`
-/

namespace A323361.P6088307886731236014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A084639 (n + 1)).toNat

end

end A323361.P6088307886731236014

/-! ## A323361.P12095056946192816003

`A261104(A097074(n+1))`
-/

namespace A323361.P12095056946192816003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A097074 (n + 1)).toNat

end

end A323361.P12095056946192816003

/-! ## A323361.P6320048357215970913

`A261104(A083579(n+2))`
-/

namespace A323361.P6320048357215970913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A083579 (n + 2)).toNat

end

end A323361.P6320048357215970913

/-!
# A323362: a(n) is the smallest k such that the sum of the first k primes is >= 10^n.

The programs for A323362, there is no canonical definition to state claims against.
-/

/-! ## A323362.P8220780123514980087

`∑[A100196(A024557(n)²)]`
-/

namespace A323362.P8220780123514980087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A024557 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323362.P8220780123514980087

/-! ## A323362.P14987142587078740051

`A132270(2*floor(sqrt(A254148(n))))`
-/

namespace A323362.P14987142587078740051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (2 * Int.sqrt (A254148 n)).toNat

end

end A323362.P14987142587078740051

/-! ## A323362.P15080142800530368285

`∑[A100196(A292460(n+1)²)]`
-/

namespace A323362.P15080142800530368285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A292460 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323362.P15080142800530368285

/-!
# A323363: Dirichlet inverse of Dedekind's psi, A001615.

The programs for A323363, the canonical program `A323363.P90347779852001049` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323363 has offset 1).

The definition of A323363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323363.P90347779852001049

`A008836(n+1)*A048250(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A323363

/-- `A008836(n+1)*A048250(n+1)` -/
def P90347779852001049.Spec : Prop :=
  ∀ n, P90347779852001049.a n = A323363 (n + 1)

theorem P90347779852001049.correct : P90347779852001049.Spec := by
  intro n
  simp only [A323363, Nat.add_sub_cancel]

end A323363

/-! ## A323363.P13277930398884963865

`(-1)^∑{e}[n+1, #]*∏{p}[1+n, #+1]`
-/

namespace A323363.P13277930398884963865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A323363.P13277930398884963865

namespace A323363

/-- `(-1)^∑{e}[n+1, #]*∏{p}[1+n, #+1]` -/
def P13277930398884963865.Spec : Prop :=
  ∀ n, P13277930398884963865.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P9193840743661635862

`∏{p}[1+n, #+1]/(-1)^∑{e}[n+1, #]`
-/

namespace A323363.P9193840743661635862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ)

end

end A323363.P9193840743661635862

namespace A323363

/-- `∏{p}[1+n, #+1]/(-1)^∑{e}[n+1, #]` -/
def P9193840743661635862.Spec : Prop :=
  ∀ n, P9193840743661635862.a n = (A323363 (n + 1) : ℚ)

end A323363

/-! ## A323363.P15406493610719369084

`∏{p}[1+n, #+1]*A008836(n+1)`
-/

namespace A323363.P15406493610719369084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) * A008836 (n + 1)

end

end A323363.P15406493610719369084

namespace A323363

/-- `∏{p}[1+n, #+1]*A008836(n+1)` -/
def P15406493610719369084.Spec : Prop :=
  ∀ n, P15406493610719369084.a n = A323363 (n + 1)

theorem P15406493610719369084.correct : P15406493610719369084.Spec := by
  intro n
  simp only [A323363, Nat.add_sub_cancel, A323363.P15406493610719369084.f1, A323363.P15406493610719369084.a, A323363.P90347779852001049.a, A008836, A008836.P691704047226663751.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323363

/-! ## A323363.P8185058989142908280

`(-1)^∑{e}[n+1, #]*A048250(n+1)`
-/

namespace A323363.P8185058989142908280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A048250 (n + 1)

end

end A323363.P8185058989142908280

namespace A323363

/-- `(-1)^∑{e}[n+1, #]*A048250(n+1)` -/
def P8185058989142908280.Spec : Prop :=
  ∀ n, P8185058989142908280.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P11733010878531054584

`A323364(n+1)-A001615(n+1)`
-/

namespace A323363.P11733010878531054584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323364 (n + 1) - A001615 (n + 1)

end

end A323363.P11733010878531054584

namespace A323363

/-- `A323364(n+1)-A001615(n+1)` -/
def P11733010878531054584.Spec : Prop :=
  ∀ n, P11733010878531054584.a n = A323363 (n + 1)

theorem P11733010878531054584.correct : P11733010878531054584.Spec := by
  intro n
  simp only [A323363, Nat.add_sub_cancel, A323363.P11733010878531054584.a, A323363.P90347779852001049.a, A001615, A001615.P12078511981713404634.a, A008836, A008836.P691704047226663751.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A323364, A323364.P3739898756084347257.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323363

/-! ## A323363.P6141675220125339561

`A158523(n+1)/A003557(n+1)`
-/

namespace A323363.P6141675220125339561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158523 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A323363.P6141675220125339561

namespace A323363

/-- `A158523(n+1)/A003557(n+1)` -/
def P6141675220125339561.Spec : Prop :=
  ∀ n, P6141675220125339561.a n = (A323363 (n + 1) : ℚ)

end A323363

/-! ## A323363.P11520198261290448842

`A181797(n+1)/A061019(n+1)`
-/

namespace A323363.P11520198261290448842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (A061019 (n + 1) : ℚ)

end

end A323363.P11520198261290448842

namespace A323363

/-- `A181797(n+1)/A061019(n+1)` -/
def P11520198261290448842.Spec : Prop :=
  ∀ n, P11520198261290448842.a n = (A323363 (n + 1) : ℚ)

end A323363

/-! ## A323363.P18227642481316747544

`A304411(n+1)/A303915(n+1)`
-/

namespace A323363.P18227642481316747544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304411 (n + 1) : ℚ) / (A303915 (n + 1) : ℚ)

end

end A323363.P18227642481316747544

namespace A323363

/-- `A304411(n+1)/A303915(n+1)` -/
def P18227642481316747544.Spec : Prop :=
  ∀ n, P18227642481316747544.a n = (A323363 (n + 1) : ℚ)

end A323363

/-! ## A323363.P6078673921996628771

`A304412(n+1)/A329484(n+1)`
-/

namespace A323363.P6078673921996628771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304412 (n + 1) : ℚ) / (A329484 (n + 1) : ℚ)

end

end A323363.P6078673921996628771

namespace A323363

/-- `A304412(n+1)/A329484(n+1)` -/
def P6078673921996628771.Spec : Prop :=
  ∀ n, P6078673921996628771.a n = (A323363 (n + 1) : ℚ)

end A323363

/-! ## A323363.P4106750990734790084

`A328640(n+1)/A367865(n+1)`
-/

namespace A323363.P4106750990734790084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328640 (n + 1) : ℚ) / (A367865 (n + 1) : ℚ)

end

end A323363.P4106750990734790084

namespace A323363

/-- `A328640(n+1)/A367865(n+1)` -/
def P4106750990734790084.Spec : Prop :=
  ∀ n, P4106750990734790084.a n = (A323363 (n + 1) : ℚ)

end A323363

/-! ## A323363.P6993041492293844737

`∑{d}[A007947(n+1), #*A008836(n+1)]`
-/

namespace A323363.P6993041492293844737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A008836 (n + 1)

end

end A323363.P6993041492293844737

namespace A323363

/-- `∑{d}[A007947(n+1), #*A008836(n+1)]` -/
def P6993041492293844737.Spec : Prop :=
  ∀ n, P6993041492293844737.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P1504157721489237767

`A008683(A007913(n+1))*∏{p}[n+1, #+1]`
-/

namespace A323363.P1504157721489237767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (n + 1)).toNat * ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ)

end

end A323363.P1504157721489237767

namespace A323363

/-- `A008683(A007913(n+1))*∏{p}[n+1, #+1]` -/
def P1504157721489237767.Spec : Prop :=
  ∀ n, P1504157721489237767.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P12140955890672325794

`∑{d}[n+1, A010052(#)*A046692((n+1)/#)]`
-/

namespace A323363.P12140955890672325794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323363.P12140955890672325794

namespace A323363

/-- `∑{d}[n+1, A010052(#)*A046692((n+1)/#)]` -/
def P12140955890672325794.Spec : Prop :=
  ∀ n, P12140955890672325794.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P17727699381784518508

`∑{d}[n+1, A008836(#)*A055615((n+1)/#)]`
-/

namespace A323363.P17727699381784518508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323363.P17727699381784518508

namespace A323363

/-- `∑{d}[n+1, A008836(#)*A055615((n+1)/#)]` -/
def P17727699381784518508.Spec : Prop :=
  ∀ n, P17727699381784518508.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P7237816290706884551

`∑{d}[n+1, A074722(#)*A101035((n+1)/#)]`
-/

namespace A323363.P7237816290706884551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323363.P7237816290706884551

namespace A323363

/-- `∑{d}[n+1, A074722(#)*A101035((n+1)/#)]` -/
def P7237816290706884551.Spec : Prop :=
  ∀ n, P7237816290706884551.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P12305182711359343453

`∑{d}[n+1, A023900(#)*A158522((n+1)/#)]`
-/

namespace A323363.P12305182711359343453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323363.P12305182711359343453

namespace A323363

/-- `∑{d}[n+1, A023900(#)*A158522((n+1)/#)]` -/
def P12305182711359343453.Spec : Prop :=
  ∀ n, P12305182711359343453.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P6528661093282460844

`∑{d}[n+1, A000056(#)*A328640((n+1)/#)]`
-/

namespace A323363.P6528661093282460844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A328640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323363.P6528661093282460844

namespace A323363

/-- `∑{d}[n+1, A000056(#)*A328640((n+1)/#)]` -/
def P6528661093282460844.Spec : Prop :=
  ∀ n, P6528661093282460844.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P17212243528876934261

`∑{d}[n+1, A002618(#)*A328639((n+1)/#)]`
-/

namespace A323363.P17212243528876934261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323363.P17212243528876934261

namespace A323363

/-- `∑{d}[n+1, A002618(#)*A328639((n+1)/#)]` -/
def P17212243528876934261.Spec : Prop :=
  ∀ n, P17212243528876934261.a n = A323363 (n + 1)

end A323363

/-! ## A323363.P11165627474435555473

`∑{d}[n+1, A000010(#)*A347092((n+1)/#)]`
-/

namespace A323363.P11165627474435555473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323363.P11165627474435555473

namespace A323363

/-- `∑{d}[n+1, A000010(#)*A347092((n+1)/#)]` -/
def P11165627474435555473.Spec : Prop :=
  ∀ n, P11165627474435555473.a n = A323363 (n + 1)

end A323363

/-!
# A323364: Sum of Dedekind's psi, A001615, and its Dirichlet inverse, A323363.

The programs for A323364, the canonical program `A323364.P3739898756084347257` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323364 has offset 1).

The definition of A323364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323364.P3739898756084347257

`A001615(n+1)+A323363(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A323364

/-- `A001615(n+1)+A323363(n+1)` -/
def P3739898756084347257.Spec : Prop :=
  ∀ n, P3739898756084347257.a n = A323364 (n + 1)

theorem P3739898756084347257.correct : P3739898756084347257.Spec := by
  intro n
  simp only [A323364, Nat.add_sub_cancel]

end A323364

/-! ## A323364.P2117616733859643900

`∑{d}[∏{p}[n+1, #], (n+1)/#]+(-1)^∑{e}[n+1, #]*∏{p}[1+n, #+1]`
-/

namespace A323364.P2117616733859643900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) + ((-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) * ((∏ p ∈ Nat.primeFactors (f4 n), (p + 1) : ℕ) : ℤ) : ℚ)

end

end A323364.P2117616733859643900

namespace A323364

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]+(-1)^∑{e}[n+1, #]*∏{p}[1+n, #+1]` -/
def P2117616733859643900.Spec : Prop :=
  ∀ n, P2117616733859643900.a n = (A323364 (n + 1) : ℚ)

end A323364

/-! ## A323364.P7785440041267479405

`abs(A158523(n+1)+A048250(n+1))`
-/

namespace A323364.P7785440041267479405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158523 (n + 1) + A048250 (n + 1)|

end

end A323364.P7785440041267479405

namespace A323364

/-- `abs(A158523(n+1)+A048250(n+1))` -/
def P7785440041267479405.Spec : Prop :=
  ∀ n, P7785440041267479405.a n = A323364 (n + 1)

end A323364

/-! ## A323364.P12954491052033591436

`A323363(n+1)+A000082(n+1)/(n+1)`
-/

namespace A323364.P12954491052033591436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323363 (n + 1) : ℚ) + (A000082 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A323364.P12954491052033591436

namespace A323364

/-- `A323363(n+1)+A000082(n+1)/(n+1)` -/
def P12954491052033591436.Spec : Prop :=
  ∀ n, P12954491052033591436.a n = (A323364 (n + 1) : ℚ)

end A323364

/-! ## A323364.P15021377048879498927

`A323363(n+1)+A033196(n+1)/(n+1)²`
-/

namespace A323364.P15021377048879498927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323363 (n + 1) : ℚ) + (A033196 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A323364.P15021377048879498927

namespace A323364

/-- `A323363(n+1)+A033196(n+1)/(n+1)²` -/
def P15021377048879498927.Spec : Prop :=
  ∀ n, P15021377048879498927.a n = (A323364 (n + 1) : ℚ)

theorem P15021377048879498927.correct : P15021377048879498927.Spec := by
  intro n
  simp only [A323364, Nat.add_sub_cancel, A323364.P15021377048879498927.a, A323364.P3739898756084347257.a, A001615, A001615.P12078511981713404634.a, A033196, A033196.P14820134467086878798.a, A323363, A323363.P90347779852001049.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008836, A008836.P691704047226663751.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323364

/-! ## A323364.P13682056701549842090

`A001065(n+1)+A344705(n+1)+A323363(n+1)`
-/

namespace A323364.P13682056701549842090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A344705 (n + 1) + A323363 (n + 1))

end

end A323364.P13682056701549842090

namespace A323364

/-- `A001065(n+1)+A344705(n+1)+A323363(n+1)` -/
def P13682056701549842090.Spec : Prop :=
  ∀ n, P13682056701549842090.a n = A323364 (n + 1)

theorem P13682056701549842090.correct : P13682056701549842090.Spec := by
  intro n
  simp only [A323364, Nat.add_sub_cancel, A323364.P13682056701549842090.a, A323364.P3739898756084347257.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A323363, A323363.P90347779852001049.a, A344705, A344705.P1217591774318848897.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008836, A008836.P691704047226663751.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323364

/-! ## A323364.P1355745466794313915

`A000203(n+1)+A323363(n+1)-A244963(n+1)`
-/

namespace A323364.P1355745466794313915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A323363 (n + 1) - A244963 (n + 1))

end

end A323364.P1355745466794313915

namespace A323364

/-- `A000203(n+1)+A323363(n+1)-A244963(n+1)` -/
def P1355745466794313915.Spec : Prop :=
  ∀ n, P1355745466794313915.a n = A323364 (n + 1)

theorem P1355745466794313915.correct : P1355745466794313915.Spec := by
  intro n
  simp only [A323364, Nat.add_sub_cancel, A323364.P1355745466794313915.a, A323364.P3739898756084347257.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A244963, A244963.P8812478636684031312.a, A323363, A323363.P90347779852001049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008836, A008836.P691704047226663751.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323364

/-! ## A323364.P13514687313421182317

`A001615(n+1)+A008836(n+1)*A048250(n+1)`
-/

namespace A323364.P13514687313421182317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + A008836 (n + 1) * A048250 (n + 1)

end

end A323364.P13514687313421182317

namespace A323364

/-- `A001615(n+1)+A008836(n+1)*A048250(n+1)` -/
def P13514687313421182317.Spec : Prop :=
  ∀ n, P13514687313421182317.a n = A323364 (n + 1)

end A323364

/-! ## A323364.P13796737006164394141

`(A008836(n+1)+A003557(n+1))*A048250(n+1)`
-/

namespace A323364.P13796737006164394141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) + A003557 (n + 1)) * A048250 (n + 1)

end

end A323364.P13796737006164394141

namespace A323364

/-- `(A008836(n+1)+A003557(n+1))*A048250(n+1)` -/
def P13796737006164394141.Spec : Prop :=
  ∀ n, P13796737006164394141.a n = A323364 (n + 1)

end A323364

/-! ## A323364.P6970576975295077068

`A323363(n+1)+A003557(n+1)*A048250(n+1)`
-/

namespace A323364.P6970576975295077068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (n + 1) + A003557 (n + 1) * A048250 (n + 1)

end

end A323364.P6970576975295077068

namespace A323364

/-- `A323363(n+1)+A003557(n+1)*A048250(n+1)` -/
def P6970576975295077068.Spec : Prop :=
  ∀ n, P6970576975295077068.a n = A323364 (n + 1)

end A323364

/-! ## A323364.P16917811988896120645

`A001615(n+1)+A001615(A007947(n+1))*A008836(n+1)`
-/

namespace A323364.P16917811988896120645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + A001615 (A007947 (n + 1)).toNat * A008836 (n + 1)

end

end A323364.P16917811988896120645

namespace A323364

/-- `A001615(n+1)+A001615(A007947(n+1))*A008836(n+1)` -/
def P16917811988896120645.Spec : Prop :=
  ∀ n, P16917811988896120645.a n = A323364 (n + 1)

end A323364

/-! ## A323364.P2293429973190979022

`A323363(n+1)+A238498(∑[n+1]+1)`
-/

namespace A323364.P2293429973190979022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (n + 1) + A238498 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A323364.P2293429973190979022

namespace A323364

/-- `A323363(n+1)+A238498(∑[n+1]+1)` -/
def P2293429973190979022.Spec : Prop :=
  ∀ n, P2293429973190979022.a n = A323364 (n + 1)

end A323364

/-!
# A323365: Sum of Stern's Diatomic sequence, A002487 and its Dirichlet inverse, A317843.

The programs for A323365, there is no canonical definition to state claims against.
-/

/-! ## A323365.P6888066101029530287

`A002487(n+1)+A317843(n+1)`
-/

namespace A323365.P6888066101029530287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + A317843 (n + 1)

end

end A323365.P6888066101029530287

/-! ## A323365.P1941338893645166724

`A174868(n+1)+A317843(n+1)-A174868(n)`
-/

namespace A323365.P1941338893645166724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (n + 1) + (A317843 (n + 1) - A174868 n)

end

end A323365.P1941338893645166724

/-! ## A323365.P5355779578839476311

`A317839(n+1)+A317843(n+1)+A317840(n+1)`
-/

namespace A323365.P5355779578839476311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317839 (n + 1) + (A317843 (n + 1) + A317840 (n + 1))

end

end A323365.P5355779578839476311

/-! ## A323365.P4166957444566254362

`A317838(n+1)+A317843(n+1)-A317837(n+1)`
-/

namespace A323365.P4166957444566254362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) + (A317843 (n + 1) - A317837 (n + 1))

end

end A323365.P4166957444566254362

/-! ## A323365.P13535338089442466189

`A317843(n+1)+A318509(n+1)-A319687(n+1)`
-/

namespace A323365.P13535338089442466189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317843 (n + 1) + (A318509 (n + 1) - A319687 (n + 1))

end

end A323365.P13535338089442466189

/-! ## A323365.P14843201251422191461

`A317843(n+1)+A287896(n+1)/A001511(n+1)`
-/

namespace A323365.P14843201251422191461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317843 (n + 1) : ℚ) + (A287896 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A323365.P14843201251422191461

/-! ## A323365.P6899138077386090367

`A317843(n+1)+n+1-A284013(n+1)`
-/

namespace A323365.P6899138077386090367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317843 (n + 1) + ((n + 1 : ℤ) - A284013 (n + 1))

end

end A323365.P6899138077386090367

/-! ## A323365.P11603650076196255440

`A317843(n+1)+A317840(2*(n+1))`
-/

namespace A323365.P11603650076196255440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317843 (n + 1) + A317840 (2 * (n + 1))

end

end A323365.P11603650076196255440

/-!
# A323366: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => A000035(i) = A000035(j) and A003557(i) = A003557(j) and A173557(i) = A173557(j).

The programs for A323366, there is no canonical definition to state claims against.
-/

/-! ## A323366.P14846286034612630479

`A323237(A051755(n+2))-2`
-/

namespace A323366.P14846286034612630479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (A051755 (n + 2)).toNat - 2

end

end A323366.P14846286034612630479

/-! ## A323366.P14876369358194120278

`A323237(2*(n+1))-A020639(A298033(n))`
-/

namespace A323366.P14876369358194120278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * (n + 1)) - A020639 (A298033 n).toNat

end

end A323366.P14876369358194120278

/-! ## A323366.P1914102340931674882

`A323237(2*(n+1))-A020639(A173557(2*n+1))`
-/

namespace A323366.P1914102340931674882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * (n + 1)) - A020639 (A173557 (2 * n + 1)).toNat

end

end A323366.P1914102340931674882

/-! ## A323366.P11679015153326866625

`A323237(2*(n+1))-A000045(A323237(2*n+1))`
-/

namespace A323366.P11679015153326866625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * (n + 1)) - A000045 (A323237 (2 * n + 1)).toNat

end

end A323366.P11679015153326866625

/-! ## A323366.P4345951911221069569

`A323237(2*n+2)-A345082(A323237(2*n+1))`
-/

namespace A323366.P4345951911221069569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * n + 2) - A345082 (A323237 (2 * n + 1)).toNat

end

end A323366.P4345951911221069569

/-! ## A323366.P268078522003922711

`A323237(2*(n+1))-A173557(A323237(2*n+1)²)`
-/

namespace A323366.P268078522003922711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * (n + 1)) - A173557 (A323237 (2 * n + 1) ^ 2).toNat

end

end A323366.P268078522003922711

/-! ## A323366.P3769638184844848485

`A323237(2*(n+1))+A004273(2*n)-(4*n+1)`
-/

namespace A323366.P3769638184844848485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * (n + 1)) + (A004273 (2 * n) - (4 * n + 1 : ℤ))

end

end A323366.P3769638184844848485

/-! ## A323366.P10238614229753587387

`A323237(2*(n+1))-A020639(A048250(2*n+1))`
-/

namespace A323366.P10238614229753587387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * (n + 1)) - A020639 (A048250 (2 * n + 1)).toNat

end

end A323366.P10238614229753587387

/-! ## A323366.P18383526062817019527

`A323237(2*(n+1))-A014963(A165825(2*n+1))`
-/

namespace A323366.P18383526062817019527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * (n + 1)) - A014963 (A165825 (2 * n + 1)).toNat

end

end A323366.P18383526062817019527

/-! ## A323366.P3113285369331705508

`A323237(2*(n+1))-A020639(A213278(n+1))`
-/

namespace A323366.P3113285369331705508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * (n + 1)) - A020639 (A213278 (n + 1)).toNat

end

end A323366.P3113285369331705508

/-!
# A323368: Lexicographically earliest sequence such that a(i) = a(j) => A000035(i) = A000035(j) and A003557(i) = A003557(j) and A048250(i) = A048250(j), for all i, j.

The programs for A323368, there is no canonical definition to state claims against.
-/

/-! ## A323368.P8910805147950842020

`A323238(A051755(n+2))-2`
-/

namespace A323368.P8910805147950842020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323238 (A051755 (n + 2)).toNat - 2

end

end A323368.P8910805147950842020

/-! ## A323368.P9483714265454163570

`A323238(A103517(n))-2%A103517(n)`
-/

namespace A323368.P9483714265454163570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323238 (A103517 n).toNat - Int.tmod 2 (A103517 n)

end

end A323368.P9483714265454163570

/-! ## A323368.P638948299421987829

`A323238(2*(n+1))-A001222(2*A020639(n+1))`
-/

namespace A323368.P638948299421987829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323238 (2 * (n + 1)) - A001222 (2 * A020639 (n + 1)).toNat

end

end A323368.P638948299421987829

/-! ## A323368.P18118518547251018534

`A323238(2*(n+1))-A169891(A323238(2*n+1))`
-/

namespace A323368.P18118518547251018534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323238 (2 * (n + 1)) - A169891 (A323238 (2 * n + 1)).toNat

end

end A323368.P18118518547251018534

/-! ## A323368.P3871546625618630617

`A323238(2*(n+1))-A046698(n+2)`
-/

namespace A323368.P3871546625618630617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323238 (2 * (n + 1)) - A046698 (n + 2)

end

end A323368.P3871546625618630617

/-! ## A323368.P3505871857189898954

`A323238(2*(n+1))-A319702(A005574(n+1))`
-/

namespace A323368.P3505871857189898954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323238 (2 * (n + 1)) - A319702 (A005574 (n + 1)).toNat

end

end A323368.P3505871857189898954

/-! ## A323368.P13469532714574800284

`gcd(A139315(n+2), A296089(n+1))`
-/

namespace A323368.P13469532714574800284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139315 (n + 2)) (A296089 (n + 1))

end

end A323368.P13469532714574800284

/-! ## A323368.P8871507306320193407

`A296089(n+1)%A002189(n)`
-/

namespace A323368.P8871507306320193407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296089 (n + 1)) (A002189 n)

end

end A323368.P8871507306320193407

/-! ## A323368.P7095476731432279850

`A369259(n+1)%A002189(n)`
-/

namespace A323368.P7095476731432279850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369259 (n + 1)) (A002189 n)

end

end A323368.P7095476731432279850

/-!
# A323369: Lexicographically earliest such sequence a that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 for odd primes, and f(n) = A323368(n) for any other number.

The programs for A323369, there is no canonical definition to state claims against.
-/

/-! ## A323369.P8093081385131631436

`A323400(n+1)%A110798(n)`
-/

namespace A323369.P8093081385131631436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323400 (n + 1)) (A110798 n)

end

end A323369.P8093081385131631436

/-! ## A323369.P18142798810353044165

`and(A323400(n+1), A387410(n+1))`
-/

namespace A323369.P18142798810353044165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323400 (n + 1)) (A387410 (n + 1))

end

end A323369.P18142798810353044165

/-! ## A323369.P5467904961234910159

`A007318(A010894(n))*A323400(n+1)`
-/

namespace A323369.P5467904961234910159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A010894 (n + 21)).toNat * A323400 (n + 1)

end

end A323369.P5467904961234910159

/-! ## A323369.P1624701169823419692

`A323400(n+1)+A010894(A010894(n)+1)`
-/

namespace A323369.P1624701169823419692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323400 (n + 1) + A010894 ((A010894 (n + 21) + 1).toNat + 21)

end

end A323369.P1624701169823419692

/-! ## A323369.P4733063654094272710

`A323400(n+1)+A000007(A033014(n+1))`
-/

namespace A323369.P4733063654094272710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323400 (n + 1) + A000007 (A033014 (n + 1)).toNat

end

end A323369.P4733063654094272710

/-!
# A323371: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = A295886(n) for all other numbers, except f(n) = 0 for odd primes.

The programs for A323371, there is no canonical definition to state claims against.
-/

/-! ## A323371.P5439385178900469395

`A305801(A295886(n+1)%A214925(n+1))`
-/

namespace A323371.P5439385178900469395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (Int.tmod (A295886 (n + 1)) (A214925 (n + 1))).toNat

end

end A323371.P5439385178900469395

/-! ## A323371.P1759603229900743417

`A305801(A318893(n+1)%A214925(n+1))`
-/

namespace A323371.P1759603229900743417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (Int.tmod (A318893 (n + 1)) (A214925 (n + 1))).toNat

end

end A323371.P1759603229900743417

/-! ## A323371.P16716966061970115562

`A305801(A295886(n+1))%A016827(A052179(n))`
-/

namespace A323371.P16716966061970115562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305801 (A295886 (n + 1)).toNat) (A016827 (A052179 n).toNat)

end

end A323371.P16716966061970115562

/-! ## A323371.P11686130575441864652

`A305793(n+1)+A015070(A322308(n))`
-/

namespace A323371.P11686130575441864652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305793 (n + 1) + A015070 (A322308 n).toNat

end

end A323371.P11686130575441864652

/-!
# A323373: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => A049559(i) = A049559(j) and A160595(i) = A160595(j).

The programs for A323373, there is no canonical definition to state claims against.
-/

/-! ## A323373.P7081170341962101360

`A323914(2*(n+1))-A085307(A000079(n))`
-/

namespace A323373.P7081170341962101360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323914 (2 * (n + 1)) - A085307 (A000079 n).toNat

end

end A323373.P7081170341962101360

/-!
# A323374: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = A323373(n) for all other numbers, except f(p) = -(p mod 2) for primes p.

The programs for A323374, there is no canonical definition to state claims against.
-/

/-! ## A323374.P17375564761413515608

`A305900(A324197(n+1)%A082716(n+1))`
-/

namespace A323374.P17375564761413515608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (Int.tmod (A324197 (n + 1)) (A082716 (n + 1))).toNat

end

end A323374.P17375564761413515608

/-! ## A323374.P8486751925621470025

`A305818(3^A305801(n+1))+A015269(A054519(n))`
-/

namespace A323374.P8486751925621470025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A305801 (n + 1) : ℤ))).toNat + A015269 (A054519 n).toNat

end

end A323374.P8486751925621470025

/-! ## A323374.P14909237956361566020

`A001222(A064831(n)+1)+ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A323374.P14909237956361566020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064831 n + 1).toNat + ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A323374.P14909237956361566020

/-! ## A323374.P17766380731851741359

`A324197(n+1)-A324179(record[A324185(n)])`
-/

namespace A323374.P17766380731851741359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324197 (n + 1) - A324179 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323374.P17766380731851741359

/-! ## A323374.P18078065820907159693

`A001826(A297388(n+1))+A001222(n+1)`
-/

namespace A323374.P18078065820907159693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A297388 (n + 1)).toNat + A001222 (n + 1)

end

end A323374.P18078065820907159693

/-!
# A323376: Square array read by ascending antidiagonals: T(n,k) is the multiplicative order of the n-th prime modulo the k-th prime, or 0 if n = k, n >= 1, k >= 1.

The programs for A323376, there is no canonical definition to state claims against.
-/

/-! ## A323376.P2048007242016045766

`A250211(C(A000040(col(n)+1)+A000040(row(n)-col(n)+1)-1, 2)+A000040(col(n)+1))`
-/

namespace A323376.P2048007242016045766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250211 ((Nat.choose (A000040 (SequenceMachineLib.triCol n + 1) + A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat - 1).toNat 2 : ℤ) + A000040 (SequenceMachineLib.triCol n + 1)).toNat

end

end A323376.P2048007242016045766

/-! ## A323376.P12593527470790585125

`A307635(A194136(n+1))%A065033(n+4)`
-/

namespace A323376.P12593527470790585125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307635 (A194136 (n + 1)).toNat) (A065033 (n + 4))

end

end A323376.P12593527470790585125

/-!
# A323377: Square array read by ascending antidiagonals: T(n,k) = Kronecker(prime(n)/prime(k)), n, k >= 1.

The programs for A323377, there is no canonical definition to state claims against.
-/

/-! ## A323377.P17357724170796533311

`A215200(C(A000040(row(n)-col(n)+1)+A000040(col(n)+1), 2)+A000040(col(n)+1))`
-/

namespace A323377.P17357724170796533311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 ((Nat.choose (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat + A000040 (SequenceMachineLib.triCol n + 1)).toNat 2 : ℤ) + A000040 (SequenceMachineLib.triCol n + 1)).toNat

end

end A323377.P17357724170796533311

/-! ## A323377.P9362547674358071595

`A062157(A255107(n+1)*A323376(n+1))`
-/

namespace A323377.P9362547674358071595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A255107 (n + 1) * A323376 (n + 1)).toNat

end

end A323377.P9362547674358071595

/-! ## A323377.P18065098620283827129

`A008683(A349748(3*n+4)+Δ[A347405(n+1)])`
-/

namespace A323377.P18065098620283827129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A349748 (3 * n + 4) + (f1 (n + 1) - f1 n)).toNat

end

end A323377.P18065098620283827129

/-! ## A323377.P7344171143257577584

`A337966(A338035(n+1)+A337982(n+1))`
-/

namespace A323377.P7344171143257577584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337966 (A338035 (n + 1) + A337982 (n + 1)).toNat

end

end A323377.P7344171143257577584

/-! ## A323377.P5436775698853598149

`(-A003415(A000374(n+4)))^A058852(n+2)`
-/

namespace A323377.P5436775698853598149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A003415 (A000374 (n + 4)).toNat : ℚ) ^ (A058852 (n + 2) : ℤ)

end

end A323377.P5436775698853598149

/-!
# A323379: Odd k such that d(k-1) < d(k) and d(k) > d(k+1), d = A000005.

The programs for A323379, there is no canonical definition to state claims against.
-/

/-! ## A323379.P17318179507105448995

`∩[2*n+1, A075027(n+1)]`
-/

namespace A323379.P17318179507105448995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P17318179507105448995

/-! ## A323379.P16620819141876857098

`∩[A075027(n+1), A138046(n+1)]`
-/

namespace A323379.P16620819141876857098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P16620819141876857098

/-! ## A323379.P593080245702649428

`∩[A075027(n+1), A138047(n+1)]`
-/

namespace A323379.P593080245702649428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P593080245702649428

/-! ## A323379.P1160817949701499834

`∩[A075027(n+1), A138171(n+1)]`
-/

namespace A323379.P1160817949701499834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P1160817949701499834

/-! ## A323379.P3970997048013656490

`∩[A075027(n+1), A176847(n+1)]`
-/

namespace A323379.P3970997048013656490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P3970997048013656490

/-! ## A323379.P11039829238721745208

`∩[A075027(n+1), A333326(n+1)]`
-/

namespace A323379.P11039829238721745208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P11039829238721745208

/-! ## A323379.P15422220610392431730

`∩[A075027(n+1), A226025(n+1)]`
-/

namespace A323379.P15422220610392431730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P15422220610392431730

/-! ## A323379.P18138153113093818498

`∩[A075027(n+1), A257521(n+1)]`
-/

namespace A323379.P18138153113093818498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P18138153113093818498

/-! ## A323379.P3467865562303325213

`∩[A075027(n+1), A329095(n+1)]`
-/

namespace A323379.P3467865562303325213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P3467865562303325213

/-! ## A323379.P686473092662471000

`∩[A138171(n+1), A240171(n+1)]`
-/

namespace A323379.P686473092662471000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P686473092662471000

/-! ## A323379.P9027550003445841984

`∩[A075027(n+1), A296243(n+1)]`
-/

namespace A323379.P9027550003445841984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P9027550003445841984

/-! ## A323379.P8711461557665696224

`∩[A075027(n+1), A255763(n+1)]`
-/

namespace A323379.P8711461557665696224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P8711461557665696224

/-! ## A323379.P14408634253689743176

`∩[A075027(n+1), A004273(n)]`
-/

namespace A323379.P14408634253689743176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323379.P14408634253689743176

/-! ## A323379.P9393751904448078585

`filter[A075027(n+1), A000035(#)]`
-/

namespace A323379.P9393751904448078585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A323379.P9393751904448078585

/-! ## A323379.P17350668256712083248

`filter[A075027(n+1), A266070(#)]`
-/

namespace A323379.P17350668256712083248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A323379.P17350668256712083248

/-! ## A323379.P17680637241653465445

`filter[A075027(n+1), A266611(#)]`
-/

namespace A323379.P17680637241653465445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A323379.P17680637241653465445

/-! ## A323379.P11461462843263308809

`filter[A075027(n+1), A266719(#)]`
-/

namespace A323379.P11461462843263308809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A323379.P11461462843263308809

/-! ## A323379.P8843496615528616155

`filter[A075027(n+1), A296066(#)]`
-/

namespace A323379.P8843496615528616155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A323379.P8843496615528616155

/-! ## A323379.P8512718578138344832

`filter[A075027(n+2), A266246(#)]`
-/

namespace A323379.P8512718578138344832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A323379.P8512718578138344832

/-! ## A323379.P7766157999960329838

`filter[A075027(n+3), A267256(#)]`
-/

namespace A323379.P7766157999960329838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A323379.P7766157999960329838

/-!
# A323380: Odd n such that sigma(n) > sigma(n+1) and sigma(n) > sigma(n-1), sigma = A000203.

The programs for A323380, there is no canonical definition to state claims against.
-/

/-! ## A323380.P187291568776308336

`∩[A067828(n+1), A333041(n+1)]`
-/

namespace A323380.P187291568776308336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323380.P187291568776308336

/-! ## A323380.P3473042042952128993

`∩[A067825(n+1)+1, A067828(n+1)]`
-/

namespace A323380.P3473042042952128993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067825 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323380.P3473042042952128993

/-! ## A323380.P17552662736853860049

`∩[A333041(n+1), A364657(n+1)]`
-/

namespace A323380.P17552662736853860049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323380.P17552662736853860049

/-! ## A323380.P17315435339143878545

`∩[A067828(n+1), A004275(A082957(n+1)+1)+1]`
-/

namespace A323380.P17315435339143878545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A082957 (n + 1) + 1).toNat + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323380.P17315435339143878545

/-! ## A323380.P4303132082338455492

`A160094(A249375(n+1))+A053224(A053235(n+1))`
-/

namespace A323380.P4303132082338455492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A249375 (n + 1)).toNat + A053224 (A053235 (n + 1)).toNat

end

end A323380.P4303132082338455492

/-! ## A323380.P11711000881395499786

`A160094(A249380(n+1))+A053224(A053235(n+1))`
-/

namespace A323380.P11711000881395499786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A249380 (n + 1)).toNat + A053224 (A053235 (n + 1)).toNat

end

end A323380.P11711000881395499786

/-! ## A323380.P4576205506803094742

`A160094(A005385(n+1))+A053224(A053235(n+1))`
-/

namespace A323380.P4576205506803094742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A005385 (n + 1)).toNat + A053224 (A053235 (n + 1)).toNat

end

end A323380.P4576205506803094742

/-! ## A323380.P16813025879888455598

`A053224(A053235(n+1))+A001222(A059496(n+1))`
-/

namespace A323380.P16813025879888455598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat + A001222 (A059496 (n + 1)).toNat

end

end A323380.P16813025879888455598

/-! ## A323380.P10218205591475886736

`A160094(A030291(n+1))+A053224(A053235(n+1))`
-/

namespace A323380.P10218205591475886736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A030291 (n + 1)).toNat + A053224 (A053235 (n + 1)).toNat

end

end A323380.P10218205591475886736

/-! ## A323380.P9177938249930227766

`A053224(A053235(n+1))-A057428(A271362(n+4))`
-/

namespace A323380.P9177938249930227766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat - A057428 (A271362 (n + 4)).toNat

end

end A323380.P9177938249930227766

/-! ## A323380.P6627124985493161825

`A053224(A053235(n+1))-A132419(A139280(n+1))`
-/

namespace A323380.P6627124985493161825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat - A132419 (A139280 (n + 1)).toNat

end

end A323380.P6627124985493161825

/-! ## A323380.P17423881727937090768

`A057427(A044375(n+1))+A053224(A053235(n+1))`
-/

namespace A323380.P17423881727937090768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A044375 (n + 1)).toNat + A053224 (A053235 (n + 1)).toNat

end

end A323380.P17423881727937090768

/-! ## A323380.P7364858359018452401

`A193267(A073681(n+1))+A053224(A053235(n+1))`
-/

namespace A323380.P7364858359018452401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (A073681 (n + 1)).toNat + A053224 (A053235 (n + 1)).toNat

end

end A323380.P7364858359018452401

/-! ## A323380.P14870039674809977660

`A057427(A037254(n+1))+A053224(A053235(n+1))`
-/

namespace A323380.P14870039674809977660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A037254 (n + 1)).toNat + A053224 (A053235 (n + 1)).toNat

end

end A323380.P14870039674809977660

/-! ## A323380.P13199205690139510434

`A053224(A053235(n+1))+A007337(A022777(n+1))`
-/

namespace A323380.P13199205690139510434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat + A007337 (A022777 (n + 1)).toNat

end

end A323380.P13199205690139510434

/-! ## A323380.P17503457775967683163

`A053224(A053235(n+1))+A034947((A007913(n+1)-n)²)`
-/

namespace A323380.P17503457775967683163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat + A034947 ((A007913 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A323380.P17503457775967683163

/-! ## A323380.P17733901802995856723

`A053224(A053235(n+1))+A000120(A130321(n))`
-/

namespace A323380.P17733901802995856723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat + A000120 (A130321 n).toNat

end

end A323380.P17733901802995856723

/-! ## A323380.P17287621707372676368

`A053224(A053235(n+1))+A010052(n²)`
-/

namespace A323380.P17287621707372676368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat + A010052 (n ^ 2)

end

end A323380.P17287621707372676368

/-! ## A323380.P7515963973829708671

`A053224(A053235(n+1))+A034947(n²+5)²`
-/

namespace A323380.P7515963973829708671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat + A034947 (n ^ 2 + 5) ^ 2

end

end A323380.P7515963973829708671

/-! ## A323380.P4859256132490725491

`A053224(A053235(n+1))+A000034(A027691(n))`
-/

namespace A323380.P4859256132490725491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053235 (n + 1)).toNat + A000034 (A027691 n).toNat

end

end A323380.P4859256132490725491

/-!
# A323385: Expansion of AGM(1,1-16*x) (where AGM denotes the arithmetic-geometric mean).

The programs for A323385, there is no canonical definition to state claims against.
-/

/-! ## A323385.P3374668505695979823

`2^n*A060691(n)`
-/

namespace A323385.P3374668505695979823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A060691 n

end

end A323385.P3374668505695979823

/-! ## A323385.P11836236875154773559

`A060691(n)*A225468(∑[n])`
-/

namespace A323385.P11836236875154773559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060691 n * A225468 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323385.P11836236875154773559

/-! ## A323385.P16323508242572948475

`(floor(acot(n)²)-A075225(n))*2^n`
-/

namespace A323385.P16323508242572948475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A075225 n) * (2 ^ n : ℤ)

end

end A323385.P16323508242572948475

/-! ## A323385.P13507818820220519234

`(A000038(n)-A075225(n))*2^n`
-/

namespace A323385.P13507818820220519234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - A075225 n) * (2 ^ n : ℤ)

end

end A323385.P13507818820220519234

/-! ## A323385.P2702351403080726911

`(A000225(n)+1)*(floor(acot(n)²)-A075225(n))`
-/

namespace A323385.P2702351403080726911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A075225 n)

end

end A323385.P2702351403080726911

/-! ## A323385.P6468000502771901601

`A062157(A073659(n+1))*A075225(n)*2^n`
-/

namespace A323385.P6468000502771901601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A073659 (n + 1)).toNat * A075225 n * (2 ^ n : ℤ)

end

end A323385.P6468000502771901601

/-!
# A323387: Primes whose digits are distinct square digits, i.e., consisting of only digits 0, 1, 4, 9.

The programs for A323387, there is no canonical definition to state claims against.
-/

/-! ## A323387.P11849414332529155730

`record[A137564(A061246(n+2))]`
-/

namespace A323387.P11849414332529155730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A061246 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323387.P11849414332529155730

/-! ## A323387.P9176336553468323533

`filter[A061246(n+1), A178788(#)]`
-/

namespace A323387.P9176336553468323533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A323387.P9176336553468323533

/-! ## A323387.P13993361083012625226

`p?[record[A137564(A046030(n+1))]]`
-/

namespace A323387.P13993361083012625226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A046030 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323387.P13993361083012625226

/-! ## A323387.P10379619584926294541

`p?[A046030(A023799(n+1)+1)]`
-/

namespace A323387.P10379619584926294541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (A023799 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323387.P10379619584926294541

/-! ## A323387.P14368989375086541902

`∩[A029743(n+1), A046030(n+1)]`
-/

namespace A323387.P14368989375086541902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323387.P14368989375086541902

/-!
# A323389: The number of connected, unlabeled, undirected, edge-signed cubic graphs (admitting loops and multiedges) on 2n vertices where the degree of the first sign is 2 at each node.

The programs for A323389, there is no canonical definition to state claims against.
-/

/-! ## A323389.P11148128362216138699

`A008624(2*A362362(n+2))`
-/

namespace A323389.P11148128362216138699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A362362 (n + 2)).toNat

end

end A323389.P11148128362216138699

/-! ## A323389.P3955469861267557841

`A005707(A005651(n+1))+A000045(n)`
-/

namespace A323389.P3955469861267557841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005707 (A005651 (n + 1)).toNat + A000045 n

end

end A323389.P3955469861267557841

/-!
# A323391: Primes containing nonprime digits (from 1 to 9) in their decimal expansion and whose digits are distinct, i.e., consisting of only digits 1, 4, 6, 8, 9.

The programs for A323391, there is no canonical definition to state claims against.
-/

/-! ## A323391.P10053223444828380528

`∩[A029743(n+1), A152313(n+1)]`
-/

namespace A323391.P10053223444828380528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323391.P10053223444828380528

/-! ## A323391.P999572422278291803

`∩[A038618(n+1), A155024(n+1)]`
-/

namespace A323391.P999572422278291803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323391.P999572422278291803

/-! ## A323391.P71842313880875143

`∩[A029743(n+1), A202268(n+1)]`
-/

namespace A323391.P71842313880875143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323391.P71842313880875143

/-! ## A323391.P7624768549928821833

`∩[A152313(n+1), A155024(n+1)]`
-/

namespace A323391.P7624768549928821833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323391.P7624768549928821833

/-! ## A323391.P6575247022759113568

`∩[A155024(n+1), A195943(n+1)]`
-/

namespace A323391.P6575247022759113568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323391.P6575247022759113568

/-!
# A323392: Positive integers that have a record number of divisors in Eisenstein integers.

The programs for A323392, there is no canonical definition to state claims against.
-/

/-! ## A323392.P12793388323219305906

`A323384(A323393(n+1))`
-/

namespace A323392.P12793388323219305906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323384 (A323393 (n + 1)).toNat

end

end A323392.P12793388323219305906

/-! ## A323392.P10141788281456665066

`A323384(record[A319442(n+1)])`
-/

namespace A323392.P10141788281456665066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323384 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323392.P10141788281456665066

/-! ## A323392.P989697507713945735

`A323384(record[∑{d}[n+1, A113063(#²)]])`
-/

namespace A323392.P989697507713945735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A113063 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323384 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323392.P989697507713945735

/-! ## A323392.P11277002949214684266

`record[gcd(A330853(3*n+5), A335433(n+1))]`
-/

namespace A323392.P11277002949214684266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330853 (3 * n + 5)) (A335433 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323392.P11277002949214684266

/-! ## A323392.P2042758226527349300

`A027389(A052787(n))+A015765(n+1)`
-/

namespace A323392.P2042758226527349300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 (A052787 n).toNat + A015765 (n + 1)

end

end A323392.P2042758226527349300

/-!
# A323393: a(n) is the number of divisors of A323392(n) in Eisenstein integers.

The programs for A323393, there is no canonical definition to state claims against.
-/

/-! ## A323393.P15673172150497865022

`A319442(A323392(n+1))`
-/

namespace A323393.P15673172150497865022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (A323392 (n + 1)).toNat

end

end A323393.P15673172150497865022

/-! ## A323393.P16937947714737759504

`record[A319442(n+1)]`
-/

namespace A323393.P16937947714737759504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323393.P16937947714737759504

/-! ## A323393.P2879432987681309922

`record[A035143(n+1)*A035169(n+1)]`
-/

namespace A323393.P2879432987681309922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035143 (n + 1) * A035169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323393.P2879432987681309922

/-! ## A323393.P8156093658243696721

`record[A035155(n+1)*A035157(n+1)]`
-/

namespace A323393.P8156093658243696721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035155 (n + 1) * A035157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323393.P8156093658243696721

/-! ## A323393.P8101712034262801460

`record[A035157(n+1)*A035161(n+1)]`
-/

namespace A323393.P8101712034262801460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035157 (n + 1) * A035161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323393.P8101712034262801460

/-!
# A323395: a(n) is the smallest n-powerful number, that is, the smallest positive integer such that {1,2,...,a(n)} admits a partition into A and B so that the sum of the j-th powers of A equals the sum of the j-th powers of B, for all j = 0, 1, ..., n.

The programs for A323395, there is no canonical definition to state claims against.
-/

/-! ## A323395.P11664180698411054037

`A002131(A260881(n+1))`
-/

namespace A323395.P11664180698411054037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A260881 (n + 1)).toNat

end

end A323395.P11664180698411054037

/-! ## A323395.P4609176961596162226

`∑[A399950(row(A400110(3*n+5)))]`
-/

namespace A323395.P4609176961596162226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399950 (SequenceMachineLib.triRow (A400110 (3 * n + 5)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323395.P4609176961596162226

/-! ## A323395.P8823343157407249114

`A131883(A085739(n+1))`
-/

namespace A323395.P8823343157407249114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A085739 (n + 1)).toNat

end

end A323395.P8823343157407249114

/-! ## A323395.P15822536594491594194

`A001616(A267661(n+1))`
-/

namespace A323395.P15822536594491594194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A267661 (n + 1)).toNat

end

end A323395.P15822536594491594194

/-! ## A323395.P13432690282446088616

`A131883(A161707(n+1))`
-/

namespace A323395.P13432690282446088616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A161707 (n + 1)).toNat

end

end A323395.P13432690282446088616

/-!
# A323397: a(n) = (4^n + 15*n - 1)/9.

The programs for A323397, the canonical program `A323397.P1933871675296263318` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323397 has offset 0).

The definition of A323397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323397.P1933871675296263318

`ogf((2x-7x^2)/(1-6x+9x^2-4x^3))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323397

/-- `ogf((2x-7x^2)/(1-6x+9x^2-4x^3))` -/
def P1933871675296263318.Spec : Prop :=
  ∀ n, P1933871675296263318.a n = A323397 n

theorem P1933871675296263318.correct : P1933871675296263318.Spec := by
  intro n
  simp only [A323397]

end A323397

/-! ## A323397.P17280922275407501805

`(4^n+15*n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323397.P17280922275407501805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n + 15 * n : ℤ) - 1 : ℚ) / 9

end

end A323397.P17280922275407501805

namespace A323397

/-- `(4^n+15*n-1)/9` -/
def P17280922275407501805.Spec : Prop :=
  ∀ n, P17280922275407501805.a n = (A323397 n : ℚ)

end A323397

/-! ## A323397.P7537238487600413557

`∑[ogf((2x-7x^2)/(1-5x+4x^2))]`
-/

namespace A323397.P7537238487600413557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -7] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323397.P7537238487600413557

namespace A323397

/-- `∑[ogf((2x-7x^2)/(1-5x+4x^2))]` -/
def P7537238487600413557.Spec : Prop :=
  ∀ n, P7537238487600413557.a n = A323397 n

end A323397

/-! ## A323397.P18261320040170953609

`∑[4*a(n-1)-5]` with `a(0)=0, a(1)=2`
-/

namespace A323397.P18261320040170953609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  4 * f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323397.P18261320040170953609

namespace A323397

/-- `∑[4*a(n-1)-5]` -/
def P18261320040170953609.Spec : Prop :=
  ∀ n, P18261320040170953609.a n = A323397 n

end A323397

/-! ## A323397.P2072256703857511400

`∑[a(n-1)+4^(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A323397.P2072256703857511400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323397.P2072256703857511400

namespace A323397

/-- `∑[a(n-1)+4^(n-2)]` -/
def P2072256703857511400.Spec : Prop :=
  ∀ n, P2072256703857511400.a n = (A323397 n : ℚ)

end A323397

/-! ## A323397.P2947444252242854167

`4*(a(n-1)+3)-5*(n+1)` with `a(0)=0`
-/

namespace A323397.P2947444252242854167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * (a (n - 1) + 3) - (5 * (n + 1) : ℤ)

end

end A323397.P2947444252242854167

namespace A323397

/-- `4*(a(n-1)+3)-5*(n+1)` -/
def P2947444252242854167.Spec : Prop :=
  ∀ n, P2947444252242854167.a n = A323397 n

end A323397

/-! ## A323397.P13676487560136352941

`∑[A135351(comp[2*(n+1)])]`
-/

namespace A323397.P13676487560136352941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323397.P13676487560136352941

namespace A323397

/-- `∑[A135351(comp[2*(n+1)])]` -/
def P13676487560136352941.Spec : Prop :=
  ∀ n, P13676487560136352941.a n = A323397 n

end A323397

/-! ## A323397.P465859383551058420

`A172447(n)-A100103(n)`
-/

namespace A323397.P465859383551058420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172447 n - A100103 n

end

end A323397.P465859383551058420

namespace A323397

/-- `A172447(n)-A100103(n)` -/
def P465859383551058420.Spec : Prop :=
  ∀ n, P465859383551058420.a n = A323397 n

end A323397

/-! ## A323397.P1605206869825092323

`∑[A163834(n)]%A163834(n)`
-/

namespace A323397.P1605206869825092323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A163834 n)

end

end A323397.P1605206869825092323

namespace A323397

/-- `∑[A163834(n)]%A163834(n)` -/
def P1605206869825092323.Spec : Prop :=
  ∀ n, P1605206869825092323.a n = A323397 n

end A323397

/-! ## A323397.P10996031569516170950

`A158879(n)-A302757(n+1)`
-/

namespace A323397.P10996031569516170950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158879 n - A302757 (n + 1)

end

end A323397.P10996031569516170950

namespace A323397

/-- `A158879(n)-A302757(n+1)` -/
def P10996031569516170950.Spec : Prop :=
  ∀ n, P10996031569516170950.a n = A323397 n

end A323397

/-! ## A323397.P18264848483732839256

`∑[A135351(2*n+1)]%A135351(2*n+1)`
-/

namespace A323397.P18264848483732839256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A135351 (2 * n + 1))

end

end A323397.P18264848483732839256

namespace A323397

/-- `∑[A135351(2*n+1)]%A135351(2*n+1)` -/
def P18264848483732839256.Spec : Prop :=
  ∀ n, P18264848483732839256.a n = A323397 n

end A323397

/-!
# A323398: Lexicographically first 3-free sequence on nonnegative integers not containing the Stanley sequence S(0,1), which is A005836.

The programs for A323398, there is no canonical definition to state claims against.
-/

/-! ## A323398.P1065378273603489356

`eq[1, A006997(n)]`
-/

namespace A323398.P1065378273603489356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323398.P1065378273603489356

/-! ## A323398.P6434585358137320395

`A262057(∑[n+2])`
-/

namespace A323398.P6434585358137320395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323398.P6434585358137320395

/-! ## A323398.P17430811128817981205

`eq[2, A100480(n+1)]`
-/

namespace A323398.P17430811128817981205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323398.P17430811128817981205

/-! ## A323398.P865575009505283899

`eq[2, A268811(n+1)]`
-/

namespace A323398.P865575009505283899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323398.P865575009505283899

/-! ## A323398.P8305337923603796029

`eq[2, A309890(n+1)]`
-/

namespace A323398.P8305337923603796029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323398.P8305337923603796029

/-! ## A323398.P6003555492547910970

`eq[2, A371457(n+1)]`
-/

namespace A323398.P6003555492547910970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323398.P6003555492547910970

/-! ## A323398.P14400229328007573627

`record[gcd(A006997(n+1)+n, 2*(n+1))]`
-/

namespace A323398.P14400229328007573627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006997 (n + 1) + (n : ℤ)) (2 * (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323398.P14400229328007573627

/-! ## A323398.P7298238545694781791

`A354047(A055938(n+1))`
-/

namespace A323398.P7298238545694781791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 (A055938 (n + 1)).toNat

end

end A323398.P7298238545694781791

/-! ## A323398.P13593443689292153140

`filter[A354047(n), A064990(#)]`
-/

namespace A323398.P13593443689292153140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064990 (f1 j).toNat = 1) n)

end

end A323398.P13593443689292153140

/-! ## A323398.P9746258240744651816

`eq[A065361(n), A081611(n)]`
-/

namespace A323398.P9746258240744651816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323398.P9746258240744651816

/-!
# A323399: Sum of Jordan function J_2(n), A007434 and its Dirichlet inverse, A046970.

The programs for A323399, the canonical program `A323399.P15061214207658318257` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323399 has offset 1).

The definition of A323399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323399.P15061214207658318257

`A007434(n+1)+A046970(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323399

/-- `A007434(n+1)+A046970(n+1)` -/
def P15061214207658318257.Spec : Prop :=
  ∀ n, P15061214207658318257.a n = A323399 (n + 1)

theorem P15061214207658318257.correct : P15061214207658318257.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel]

end A323399

/-! ## A323399.P228244975862857868

`A046970(n+1)+Δ[A321879(n)]`
-/

namespace A323399.P228244975862857868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + (f1 (n + 1) - f1 n)

end

end A323399.P228244975862857868

namespace A323399

/-- `A046970(n+1)+Δ[A321879(n)]` -/
def P228244975862857868.Spec : Prop :=
  ∀ n, P228244975862857868.a n = A323399 (n + 1)

end A323399

/-! ## A323399.P7409032664399306304

`A046970(n+1)+A000056(n+1)/(n+1)`
-/

namespace A323399.P7409032664399306304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046970 (n + 1) : ℚ) + (A000056 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A323399.P7409032664399306304

namespace A323399

/-- `A046970(n+1)+A000056(n+1)/(n+1)` -/
def P7409032664399306304.Spec : Prop :=
  ∀ n, P7409032664399306304.a n = (A323399 (n + 1) : ℚ)

theorem P7409032664399306304.correct : P7409032664399306304.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel, A323399.P7409032664399306304.a, A323399.P15061214207658318257.a, A000056, A000056.P18166110637332708364.a, A007434, A007434.P3432859153295839493.a, A046970, A046970.P18046929235984925317.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323399

/-! ## A323399.P2384635010058579110

`(n+1)²+A046970(n+1)-A064279(n+1)`
-/

namespace A323399.P2384635010058579110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A046970 (n + 1) - A064279 (n + 1))

end

end A323399.P2384635010058579110

namespace A323399

/-- `(n+1)²+A046970(n+1)-A064279(n+1)` -/
def P2384635010058579110.Spec : Prop :=
  ∀ n, P2384635010058579110.a n = A323399 (n + 1)

theorem P2384635010058579110.correct : P2384635010058579110.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel, A323399.P2384635010058579110.a, A323399.P15061214207658318257.a, A007434, A007434.P3432859153295839493.a, A046970, A046970.P18046929235984925317.a, A064279, A064279.P12022089793920685943.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323399

/-! ## A323399.P11850058503963594687

`A076792(A007947(n+1))+A007434(n+1)`
-/

namespace A323399.P11850058503963594687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076792 (A007947 (n + 1)).toNat + A007434 (n + 1)

end

end A323399.P11850058503963594687

namespace A323399

/-- `A076792(A007947(n+1))+A007434(n+1)` -/
def P11850058503963594687.Spec : Prop :=
  ∀ n, P11850058503963594687.a n = A323399 (n + 1)

end A323399

/-! ## A323399.P10755517983380881991

`A046970(n+1)+A000010(n+1)*A001615(n+1)`
-/

namespace A323399.P10755517983380881991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + A000010 (n + 1) * A001615 (n + 1)

end

end A323399.P10755517983380881991

namespace A323399

/-- `A046970(n+1)+A000010(n+1)*A001615(n+1)` -/
def P10755517983380881991.Spec : Prop :=
  ∀ n, P10755517983380881991.a n = A323399 (n + 1)

theorem P10755517983380881991.correct : P10755517983380881991.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel, A323399.P10755517983380881991.a, A323399.P15061214207658318257.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A007434, A007434.P3432859153295839493.a, A046970, A046970.P18046929235984925317.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323399

/-! ## A323399.P10296567349926286494

`A046970(n+1)+A000252(n+1)/A002618(n+1)`
-/

namespace A323399.P10296567349926286494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046970 (n + 1) : ℚ) + (A000252 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A323399.P10296567349926286494

namespace A323399

/-- `A046970(n+1)+A000252(n+1)/A002618(n+1)` -/
def P10296567349926286494.Spec : Prop :=
  ∀ n, P10296567349926286494.a n = (A323399 (n + 1) : ℚ)

theorem P10296567349926286494.correct : P10296567349926286494.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel, A323399.P10296567349926286494.a, A323399.P15061214207658318257.a, A000252, A000252.P10509989210323719014.a, A002618, A002618.P8397693677428532773.a, A007434, A007434.P3432859153295839493.a, A046970, A046970.P18046929235984925317.a, A000010, A000010.P4673923239450215316.a, A000056, A000056.P18166110637332708364.a, A001615, A001615.P12078511981713404634.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323399

/-! ## A323399.P5509847743516027817

`A046970(n+1)+(A109606(n+1)+1)*A001615(n+1)`
-/

namespace A323399.P5509847743516027817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + (A109606 (n + 1) + 1) * A001615 (n + 1)

end

end A323399.P5509847743516027817

namespace A323399

/-- `A046970(n+1)+(A109606(n+1)+1)*A001615(n+1)` -/
def P5509847743516027817.Spec : Prop :=
  ∀ n, P5509847743516027817.a n = A323399 (n + 1)

theorem P5509847743516027817.correct : P5509847743516027817.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel, A323399.P5509847743516027817.a, A323399.P15061214207658318257.a, A001615, A001615.P12078511981713404634.a, A007434, A007434.P3432859153295839493.a, A046970, A046970.P18046929235984925317.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323399

/-! ## A323399.P6523487348109004331

`A046970(n+1)+(A039649(n+1)-1)*A001615(n+1)`
-/

namespace A323399.P6523487348109004331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + (A039649 (n + 1) - 1) * A001615 (n + 1)

end

end A323399.P6523487348109004331

namespace A323399

/-- `A046970(n+1)+(A039649(n+1)-1)*A001615(n+1)` -/
def P6523487348109004331.Spec : Prop :=
  ∀ n, P6523487348109004331.a n = A323399 (n + 1)

theorem P6523487348109004331.correct : P6523487348109004331.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel, A323399.P6523487348109004331.a, A323399.P15061214207658318257.a, A001615, A001615.P12078511981713404634.a, A007434, A007434.P3432859153295839493.a, A039649, A039649.P16717312505280968063.a, A046970, A046970.P18046929235984925317.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323399

/-! ## A323399.P5381086307254357168

`A046970(n+1)+(n-A219428(n+1))*A001615(n+1)`
-/

namespace A323399.P5381086307254357168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + ((n : ℤ) - A219428 (n + 1)) * A001615 (n + 1)

end

end A323399.P5381086307254357168

namespace A323399

/-- `A046970(n+1)+(n-A219428(n+1))*A001615(n+1)` -/
def P5381086307254357168.Spec : Prop :=
  ∀ n, P5381086307254357168.a n = A323399 (n + 1)

theorem P5381086307254357168.correct : P5381086307254357168.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel, A323399.P5381086307254357168.a, A323399.P15061214207658318257.a, A001615, A001615.P12078511981713404634.a, A007434, A007434.P3432859153295839493.a, A046970, A046970.P18046929235984925317.a, A219428, A219428.P9184341513320465947.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323399

/-! ## A323399.P9539654864174384703

`A007434(n+1)+A000203(∏{p}[n+1, #])*A023900(n+1)`
-/

namespace A323399.P9539654864174384703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) + A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) * A023900 (n + 1)

end

end A323399.P9539654864174384703

namespace A323399

/-- `A007434(n+1)+A000203(∏{p}[n+1, #])*A023900(n+1)` -/
def P9539654864174384703.Spec : Prop :=
  ∀ n, P9539654864174384703.a n = A323399 (n + 1)

end A323399

/-! ## A323399.P1700926327109021234

`A046970(n+1)+A000252(n+1)/((n+1)*A000010(n+1))`
-/

namespace A323399.P1700926327109021234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046970 (n + 1) : ℚ) + (A000252 (n + 1) : ℚ) / ((n + 1 : ℤ) * A000010 (n + 1) : ℚ)

end

end A323399.P1700926327109021234

namespace A323399

/-- `A046970(n+1)+A000252(n+1)/((n+1)*A000010(n+1))` -/
def P1700926327109021234.Spec : Prop :=
  ∀ n, P1700926327109021234.a n = (A323399 (n + 1) : ℚ)

theorem P1700926327109021234.correct : P1700926327109021234.Spec := by
  intro n
  simp only [A323399, Nat.add_sub_cancel, A323399.P1700926327109021234.a, A323399.P15061214207658318257.a, A000010, A000010.P4673923239450215316.a, A000252, A000252.P10509989210323719014.a, A007434, A007434.P3432859153295839493.a, A046970, A046970.P18046929235984925317.a, A000056, A000056.P18166110637332708364.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323399

/-! ## A323399.P15533211381685110163

`A046970(n+1)+(abs(A051953(n+1)-n)+1)*A001615(n+1)`
-/

namespace A323399.P15533211381685110163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + (|A051953 (n + 1) - (n : ℤ)| + 1) * A001615 (n + 1)

end

end A323399.P15533211381685110163

namespace A323399

/-- `A046970(n+1)+(abs(A051953(n+1)-n)+1)*A001615(n+1)` -/
def P15533211381685110163.Spec : Prop :=
  ∀ n, P15533211381685110163.a n = A323399 (n + 1)

end A323399

/-! ## A323399.P9421618465608635128

`A007434(n+1)+A007434(A007947(n+1))*A076479(n+1)`
-/

namespace A323399.P9421618465608635128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) + A007434 (A007947 (n + 1)).toNat * A076479 (n + 1)

end

end A323399.P9421618465608635128

namespace A323399

/-- `A007434(n+1)+A007434(A007947(n+1))*A076479(n+1)` -/
def P9421618465608635128.Spec : Prop :=
  ∀ n, P9421618465608635128.a n = A323399 (n + 1)

end A323399

/-! ## A323399.P2735786993252545354

`A046970(n+1)+A046073(n+1)*A060594(n+1)*A001615(n+1)`
-/

namespace A323399.P2735786993252545354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + A046073 (n + 1) * A060594 (n + 1) * A001615 (n + 1)

end

end A323399.P2735786993252545354

namespace A323399

/-- `A046970(n+1)+A046073(n+1)*A060594(n+1)*A001615(n+1)` -/
def P2735786993252545354.Spec : Prop :=
  ∀ n, P2735786993252545354.a n = A323399 (n + 1)

end A323399

/-! ## A323399.P7069301107339554903

`A046970(n+1)+A353643(n+1)*A353644(n+1)*A001615(n+1)`
-/

namespace A323399.P7069301107339554903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + A353643 (n + 1) * A353644 (n + 1) * A001615 (n + 1)

end

end A323399.P7069301107339554903

namespace A323399

/-- `A046970(n+1)+A353643(n+1)*A353644(n+1)*A001615(n+1)` -/
def P7069301107339554903.Spec : Prop :=
  ∀ n, P7069301107339554903.a n = A323399 (n + 1)

end A323399

/-! ## A323399.P7183590662636660124

`A046970(n+1)+(A049633(n)-A049632(n))*A001615(n+1)`
-/

namespace A323399.P7183590662636660124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + (A049633 n - A049632 n) * A001615 (n + 1)

end

end A323399.P7183590662636660124

namespace A323399

/-- `A046970(n+1)+(A049633(n)-A049632(n))*A001615(n+1)` -/
def P7183590662636660124.Spec : Prop :=
  ∀ n, P7183590662636660124.a n = A323399 (n + 1)

end A323399

/-! ## A323399.P14880913196969531281

`A046970(n+1)+Δ[A206297(n+1)/2]*A001615(n+1)`
-/

namespace A323399.P14880913196969531281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046970 (n + 1) : ℚ) + (f1 (n + 1) - f1 n) * (A001615 (n + 1) : ℚ)

end

end A323399.P14880913196969531281

namespace A323399

/-- `A046970(n+1)+Δ[A206297(n+1)/2]*A001615(n+1)` -/
def P14880913196969531281.Spec : Prop :=
  ∀ n, P14880913196969531281.a n = (A323399 (n + 1) : ℚ)

end A323399

/-! ## A323399.P17235233266769756610

`A046970(n+1)+A000252(n+1)/A000010((n+1)²)`
-/

namespace A323399.P17235233266769756610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046970 (n + 1) : ℚ) + (A000252 (n + 1) : ℚ) / (A000010 ((n + 1) ^ 2) : ℚ)

end

end A323399.P17235233266769756610

namespace A323399

/-- `A046970(n+1)+A000252(n+1)/A000010((n+1)²)` -/
def P17235233266769756610.Spec : Prop :=
  ∀ n, P17235233266769756610.a n = (A323399 (n + 1) : ℚ)

end A323399

