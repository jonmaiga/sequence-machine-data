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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A133002: Numerators of Blandin-Diaz compositional Bernoulli numbers (B^S)_1,n.

The programs for A133002, there is no canonical definition to state claims against.
-/

/-! ## A133002.P6742420641644513491

`or((-1)^n, A002034(ceil(10^n/9)))`
-/

namespace A133002.P6742420641644513491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A002034 ⌈(10 ^ n : ℚ) / 9⌉.toNat)

end

end A133002.P6742420641644513491

/-!
# A133003: Denominators of Blandin-Diaz compositional Bernoulli numbers (B^S)_1,n.

The programs for A133003, there is no canonical definition to state claims against.
-/

/-! ## A133003.P10130746027827686963

`A132097(n)/A056059(ceil(10^n/9))`
-/

namespace A133003.P10130746027827686963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132097 n : ℚ) / (A056059 ⌈(10 ^ n : ℚ) / 9⌉.toNat : ℚ)

end

end A133003.P10130746027827686963

/-!
# A133008: The defining property of the sequences {A, B} = {A000028, A000379} is that they are the unique pair of sets complementary with respect to the positive integers such that p(n) = |{x : x, y in A, x < y, xy = n}| = |{x : x, y in B, x < y, xy = n}| for all n >= 1. The present sequence gives the values of p(n).

The programs for A133008, the canonical program `A133008.P6727961677655990974` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133008 has offset 1).

The definition of A133008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133008.P15331254524626684635

`A036863(A061336(∑[n])+A000005(n+1)+1)`
-/

namespace A133008.P15331254524626684635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (A061336 (∑ j ∈ Finset.range (n + 1), f1 j) + A000005 (n + 1) + 1).toNat

end

end A133008.P15331254524626684635

namespace A133008

/-- `A036863(A061336(∑[n])+A000005(n+1)+1)` -/
def P15331254524626684635.Spec : Prop :=
  ∀ n, P15331254524626684635.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P7207609761003957393

`val(A178012(∏{e}[n+1, #+1]), 4)`
-/

namespace A133008.P7207609761003957393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178012 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat 4

end

end A133008.P7207609761003957393

namespace A133008

/-- `val(A178012(∏{e}[n+1, #+1]), 4)` -/
def P7207609761003957393.Spec : Prop :=
  ∀ n, (P7207609761003957393.a n : ℤ) = A133008 (n + 1)

end A133008

/-! ## A133008.P6727961677655990974

`A328311(A100587(n+1)+6)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A133008

/-- `A328311(A100587(n+1)+6)` -/
def P6727961677655990974.Spec : Prop :=
  ∀ n, P6727961677655990974.a n = A133008 (n + 1)

theorem P6727961677655990974.correct : P6727961677655990974.Spec := by
  intro n
  simp only [A133008, Nat.add_sub_cancel]

end A133008

/-! ## A133008.P9447650500370796167

`A340691(A001694(∏{e}[n+1, #+1]))`
-/

namespace A133008.P9447650500370796167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (A001694 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A133008.P9447650500370796167

namespace A133008

/-- `A340691(A001694(∏{e}[n+1, #+1]))` -/
def P9447650500370796167.Spec : Prop :=
  ∀ n, P9447650500370796167.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P7341712488853789524

`floor(A244231(A000005(n+1)²²)/3)`
-/

namespace A133008.P7341712488853789524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A244231 ((A000005 (n + 1) ^ 2) ^ 2).toNat : ℚ) / 3⌋

end

end A133008.P7341712488853789524

namespace A133008

/-- `floor(A244231(A000005(n+1)²²)/3)` -/
def P7341712488853789524.Spec : Prop :=
  ∀ n, P7341712488853789524.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P5310926013616632473

`A213725(A002264(2^∏{e}[n+1, #+1]+1))`
-/

namespace A133008.P5310926013616632473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (A002264 (2 ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1)).toNat

end

end A133008.P5310926013616632473

namespace A133008

/-- `A213725(A002264(2^∏{e}[n+1, #+1]+1))` -/
def P5310926013616632473.Spec : Prop :=
  ∀ n, P5310926013616632473.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P8668658807486897077

`A060953(A001037(A000005(n+1)))`
-/

namespace A133008.P8668658807486897077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A001037 (A000005 (n + 1)).toNat).toNat

end

end A133008.P8668658807486897077

namespace A133008

/-- `A060953(A001037(A000005(n+1)))` -/
def P8668658807486897077.Spec : Prop :=
  ∀ n, P8668658807486897077.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P1233140604801093467

`A124010(A007318(A070824(n+1)²))`
-/

namespace A133008.P1233140604801093467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A007318 (A070824 (n + 1) ^ 2).toNat).toNat

end

end A133008.P1233140604801093467

namespace A133008

/-- `A124010(A007318(A070824(n+1)²))` -/
def P1233140604801093467.Spec : Prop :=
  ∀ n, P1233140604801093467.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P8233678762703213814

`A055679(A244231(A000005(n+1)²²))`
-/

namespace A133008.P8233678762703213814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A244231 ((A000005 (n + 1) ^ 2) ^ 2).toNat).toNat

end

end A133008.P8233678762703213814

namespace A133008

/-- `A055679(A244231(A000005(n+1)²²))` -/
def P8233678762703213814.Spec : Prop :=
  ∀ n, P8233678762703213814.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P212965044586068071

`A001222(A001222(A261045(A000005(n+1)+1)+2))`
-/

namespace A133008.P212965044586068071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A261045 (A000005 (n + 1) + 1).toNat + 2).toNat).toNat

end

end A133008.P212965044586068071

namespace A133008

/-- `A001222(A001222(A261045(A000005(n+1)+1)+2))` -/
def P212965044586068071.Spec : Prop :=
  ∀ n, P212965044586068071.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P2267621439205014392

`A296239(A000005(n+1)%A337230(n+1))`
-/

namespace A133008.P2267621439205014392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296239 (Int.tmod (A000005 (n + 1)) (A337230 (n + 1))).toNat

end

end A133008.P2267621439205014392

namespace A133008

/-- `A296239(A000005(n+1)%A337230(n+1))` -/
def P2267621439205014392.Spec : Prop :=
  ∀ n, P2267621439205014392.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P12252213623459774355

`A296239(A000005(n+1))%A109709(n+1)`
-/

namespace A133008.P12252213623459774355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296239 (A000005 (n + 1)).toNat) (A109709 (n + 1))

end

end A133008.P12252213623459774355

namespace A133008

/-- `A296239(A000005(n+1))%A109709(n+1)` -/
def P12252213623459774355.Spec : Prop :=
  ∀ n, P12252213623459774355.a n = A133008 (n + 1)

end A133008

/-! ## A133008.P4905116792393791851

`A296239(A046951((n+1)²))`
-/

namespace A133008.P4905116792393791851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296239 (A046951 ((n + 1) ^ 2)).toNat

end

end A133008.P4905116792393791851

namespace A133008

/-- `A296239(A046951((n+1)²))` -/
def P4905116792393791851.Spec : Prop :=
  ∀ n, P4905116792393791851.a n = A133008 (n + 1)

end A133008

/-!
# A133009: One defining property of the sequences {A, B} = {A000069, A001969} is that they are the unique pair of sets complementary with respect to the nonnegative integers such that q(n) = |{x : x, y in A, x < y, x + y = n}| = |{x : x, y in B, x < y, x + y = n}| for all n >= 0. The present sequence gives the values of q(n).

The programs for A133009, there is no canonical definition to state claims against.
-/

/-! ## A133009.P6718915464706222468

`floor(A108804(n)/2)`
-/

namespace A133009.P6718915464706222468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108804 n : ℚ) / 2⌋

end

end A133009.P6718915464706222468

/-! ## A133009.P11641622166399050254

`floor(A247303(n)/2)`
-/

namespace A133009.P11641622166399050254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247303 n : ℚ) / 2⌋

end

end A133009.P11641622166399050254

/-! ## A133009.P10839287909779776161

`A004526(A108804(n))`
-/

namespace A133009.P10839287909779776161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A108804 n).toNat

end

end A133009.P10839287909779776161

/-! ## A133009.P8520982916023759556

`A004526(A247303(n))`
-/

namespace A133009.P8520982916023759556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A247303 n).toNat

end

end A133009.P8520982916023759556

/-! ## A133009.P17882446781945171228

`A002265(2*A108804(n))`
-/

namespace A133009.P17882446781945171228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A108804 n).toNat

end

end A133009.P17882446781945171228

/-! ## A133009.P7224111249621360611

`A110654(A247303(n)+1)-1`
-/

namespace A133009.P7224111249621360611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A247303 n + 1).toNat - 1

end

end A133009.P7224111249621360611

/-! ## A133009.P11140241029162121305

`A080513(A247303(n)+1)-2`
-/

namespace A133009.P11140241029162121305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A247303 n + 1).toNat - 2

end

end A133009.P11140241029162121305

/-! ## A133009.P6010415042944071318

`(A108804(n)-A254379(n))/2`
-/

namespace A133009.P6010415042944071318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108804 n - A254379 n : ℚ) / 2

end

end A133009.P6010415042944071318

/-! ## A133009.P10354714874664768888

`A002265(A108804(n)+A108804(n)+1)`
-/

namespace A133009.P10354714874664768888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A108804 n + (A108804 n + 1)).toNat

end

end A133009.P10354714874664768888

/-!
# A133010: Characteristic function of the Riemann zeta function: If n is a nearest integer to imaginary part of zero, then a(n)=1 else a(n)=0.

The programs for A133010, there is no canonical definition to state claims against.
-/

/-! ## A133010.P14304348978120862663

`1-A133011(n+1)`
-/

namespace A133010.P14304348978120862663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A133011 (n + 1)

end

end A133010.P14304348978120862663

/-! ## A133010.P11804746934610395988

`char[A002410(n+1)-1]`
-/

namespace A133010.P11804746934610395988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133010.P11804746934610395988

/-! ## A133010.P9040469195536471220

`char[∑[A162774(n+1)]-1]`
-/

namespace A133010.P9040469195536471220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133010.P9040469195536471220

/-! ## A133010.P14758720028366294484

`char[comp[A122526(n+1)-1]]`
-/

namespace A133010.P14758720028366294484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122526 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A133010.P14758720028366294484

/-! ## A133010.P1263302351009076402

`and(1, A133011(char[2]+1+n)+1)`
-/

namespace A133010.P1263302351009076402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A133011 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + 1)

end

end A133010.P1263302351009076402

/-! ## A133010.P17279771655240166372

`char[A023443(A002410(n+1))]`
-/

namespace A133010.P17279771655240166372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002410 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133010.P17279771655240166372

/-! ## A133010.P10921150759864534201

`xor(A133011(n+1), A262681(n))`
-/

namespace A133010.P10921150759864534201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133011 (n + 1)) (A262681 n)

end

end A133010.P10921150759864534201

/-! ## A133010.P10454213139327928702

`xor(A133011(n+1), A361338(n))`
-/

namespace A133010.P10454213139327928702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133011 (n + 1)) (A361338 n)

end

end A133010.P10454213139327928702

/-! ## A133010.P7320113851567647588

`xor(A133011(n+1), A239700(n+1))`
-/

namespace A133010.P7320113851567647588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133011 (n + 1)) (A239700 (n + 1))

end

end A133010.P7320113851567647588

/-!
# A133011: Characteristic function of the Riemann zeta function: If n is a nearest integer to imaginary part of zero, then a(n)=0 else a(n)=1.

The programs for A133011, there is no canonical definition to state claims against.
-/

/-! ## A133011.P8175216747197640751

`1-A133010(n+1)`
-/

namespace A133011.P8175216747197640751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A133010 (n + 1)

end

end A133011.P8175216747197640751

/-! ## A133011.P17590917780765560000

`char[A122526(n+1)-1]`
-/

namespace A133011.P17590917780765560000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122526 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133011.P17590917780765560000

/-! ## A133011.P633762098469672671

`1-char[A002410(n+1)-1]`
-/

namespace A133011.P633762098469672671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A133011.P633762098469672671

/-! ## A133011.P3806808607404109604

`1-char[∑[A162774(n+1)]-1]`
-/

namespace A133011.P3806808607404109604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A133011.P3806808607404109604

/-! ## A133011.P4548870887110722874

`char[A033619(A122526(n+1))]`
-/

namespace A133011.P4548870887110722874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A122526 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133011.P4548870887110722874

/-! ## A133011.P5800501551056134528

`A000007(n*A133010(n+1))`
-/

namespace A133011.P5800501551056134528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A133010 (n + 1)).toNat

end

end A133011.P5800501551056134528

/-! ## A133011.P4337861352688735429

`A130706(n*A133010(n+1))`
-/

namespace A133011.P4337861352688735429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 ((n : ℤ) * A133010 (n + 1)).toNat

end

end A133011.P4337861352688735429

/-! ## A133011.P11967368315816229945

`A130779(n*A133010(n+1))`
-/

namespace A133011.P11967368315816229945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 ((n : ℤ) * A133010 (n + 1)).toNat

end

end A133011.P11967368315816229945

/-! ## A133011.P7896400816161943758

`A186741(n*A133010(n+1))`
-/

namespace A133011.P7896400816161943758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186741 ((n : ℤ) * A133010 (n + 1)).toNat

end

end A133011.P7896400816161943758

/-! ## A133011.P1111050431809753030

`xor(A133010(n+1), A262681(n))`
-/

namespace A133011.P1111050431809753030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133010 (n + 1)) (A262681 n)

end

end A133011.P1111050431809753030

/-!
# A133012: Even imperfect numbers.

The programs for A133012, there is no canonical definition to state claims against.
-/

/-! ## A133012.P6559525356684625706

`2*comp[n*round(exp(n))]`
-/

namespace A133012.P6559525356684625706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.exp (n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133012.P6559525356684625706

/-! ## A133012.P12216778466550848772

`comp[a(n-1)+2]` with `a(0)=6, a(1)=28, a(2)=0, a(3)=1`
-/

namespace A133012.P12216778466550848772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 28, 0, 1] fun n f1 =>
  f1 (n - 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A133012.P12216778466550848772

/-! ## A133012.P10580211465726140762

`comp[xor(1, -a(n-1))]` with `a(0)=6, a(1)=28, a(2)=0`
-/

namespace A133012.P10580211465726140762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 28, 0] fun n f1 =>
  Int.xor 1 (-f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133012.P10580211465726140762

/-! ## A133012.P6462300256339894059

`or(1, comp[∑[2^n]]+n)+1`
-/

namespace A133012.P6462300256339894059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) + 1

end

end A133012.P6462300256339894059

/-! ## A133012.P18021823374956776358

`∩[2*n, comp[C(2*n, n+2)]]`
-/

namespace A133012.P18021823374956776358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A133012.P18021823374956776358

/-! ## A133012.P13827947994802663952

`comp[gcd(2, n)*∑[2^n]]+n+2`
-/

namespace A133012.P13827947994802663952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2)

end

end A133012.P13827947994802663952

/-! ## A133012.P2610185109491915393

`∩[2*n, A054027(n+1)]`
-/

namespace A133012.P2610185109491915393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133012.P2610185109491915393

/-! ## A133012.P7697511947420050310

`∩[2*n, A080907(n+1)]`
-/

namespace A133012.P7697511947420050310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133012.P7697511947420050310

/-! ## A133012.P11783226704478611655

`2*comp[A000045(or(3, n))]+2`
-/

namespace A133012.P11783226704478611655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lor 3 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A133012.P11783226704478611655

/-! ## A133012.P3448323683314340241

`2*comp[A000045(∑[n+3])]+2`
-/

namespace A133012.P3448323683314340241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A133012.P3448323683314340241

/-!
# A133016: Even imperfect numbers, divided by 2.

The programs for A133016, there is no canonical definition to state claims against.
-/

/-! ## A133016.P9751719185393290919

`comp[Δ[ceil(n!/7)]]`
-/

namespace A133016.P9751719185393290919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / 7⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133016.P9751719185393290919

/-!
# A133017: Decimal expansion of the constant formed by concatenating the imperfect numbers.

The programs for A133017, there is no canonical definition to state claims against.
-/

/-! ## A133017.P16404887048579318549

`A007376(n+2)-A329679(A327781(n))`
-/

namespace A133017.P16404887048579318549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n + 2) - A329679 (A327781 n).toNat

end

end A133017.P16404887048579318549

/-! ## A133017.P2367569689465924357

`A007376(A331162(2*n+1)-n)`
-/

namespace A133017.P2367569689465924357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A331162 (2 * n + 1) - (n : ℤ)).toNat

end

end A133017.P2367569689465924357

/-! ## A133017.P14929353472693843025

`A033307(A331162(2*n+1)-(n+1))`
-/

namespace A133017.P14929353472693843025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A331162 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A133017.P14929353472693843025

/-! ## A133017.P761175002148696146

`A007376(n+2)-A010056(A000041(n))`
-/

namespace A133017.P761175002148696146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n + 2) - A010056 (A000041 n).toNat

end

end A133017.P761175002148696146

/-!
# A133018: Partition number of n, raised to power n.

The programs for A133018, there is no canonical definition to state claims against.
-/

/-! ## A133018.P10185513125837167311

`A000041(n)^n`
-/

namespace A133018.P10185513125837167311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ n

end

end A133018.P10185513125837167311

/-! ## A133018.P13648367850682224292

`A213598(n)^n`
-/

namespace A133018.P13648367850682224292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n ^ n

end

end A133018.P13648367850682224292

/-! ## A133018.P8632617909730562718

`A330643(n)^n`
-/

namespace A133018.P8632617909730562718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n ^ n

end

end A133018.P8632617909730562718

/-! ## A133018.P11872999743852007559

`sqrt(A001255(n))^n`
-/

namespace A133018.P11872999743852007559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) ^ n

end

end A133018.P11872999743852007559

/-! ## A133018.P2251219806850285406

`∑[A002865(n)]^n`
-/

namespace A133018.P2251219806850285406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A133018.P2251219806850285406

/-!
# A133019: Product of n-th prime and n-th prime written backwards.

The programs for A133019, there is no canonical definition to state claims against.
-/

/-! ## A133019.P11892490503690496060

`A000040(n+1)*A004087(n+1)`
-/

namespace A133019.P11892490503690496060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004087 (n + 1)

end

end A133019.P11892490503690496060

/-! ## A133019.P14470086317874419122

`Δ[A007504(n)]*A004087(n+1)`
-/

namespace A133019.P14470086317874419122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004087 (n + 1)

end

end A133019.P14470086317874419122

/-! ## A133019.P18135099215301565541

`abs(Δ[A008348(n)]*A004087(n+1))`
-/

namespace A133019.P18135099215301565541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A004087 (n + 1)|

end

end A133019.P18135099215301565541

/-! ## A133019.P12012570856704388917

`sqrt(A001248(n+1))*A004087(n+1)`
-/

namespace A133019.P12012570856704388917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A004087 (n + 1) : ℝ)

end

end A133019.P12012570856704388917

/-! ## A133019.P6958241800664811653

`∑[A054541(n+1)]*A004087(n+1)`
-/

namespace A133019.P6958241800664811653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A004087 (n + 1)

end

end A133019.P6958241800664811653

/-! ## A133019.P16536774308148750996

`(A006093(n+1)+1)*A004087(n+1)`
-/

namespace A133019.P16536774308148750996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A004087 (n + 1)

end

end A133019.P16536774308148750996

/-! ## A133019.P11187255841640080637

`(A040976(n+1)+2)*A004087(n+1)`
-/

namespace A133019.P11187255841640080637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A004087 (n + 1)

end

end A133019.P11187255841640080637

/-! ## A133019.P5514124293795139959

`(A007504(n+1)-A007504(n))*A004087(n+1)`
-/

namespace A133019.P5514124293795139959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A004087 (n + 1)

end

end A133019.P5514124293795139959

/-! ## A133019.P5242987841216626152

`(A061227(n)-A000040(n+1))*A000040(n+1)`
-/

namespace A133019.P5242987841216626152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061227 n - A000040 (n + 1)) * A000040 (n + 1)

end

end A133019.P5242987841216626152

/-! ## A133019.P14627661099043532593

`(A061227(n)-A004087(n+1))*A004087(n+1)`
-/

namespace A133019.P14627661099043532593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061227 n - A004087 (n + 1)) * A004087 (n + 1)

end

end A133019.P14627661099043532593

/-! ## A133019.P3706008407489646296

`(A068396(n+1)+A004087(n+1))*A004087(n+1)`
-/

namespace A133019.P3706008407489646296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068396 (n + 1) + A004087 (n + 1)) * A004087 (n + 1)

end

end A133019.P3706008407489646296

/-! ## A133019.P9335572098482595704

`(A000040(n+1)-A068396(n+1))*A000040(n+1)`
-/

namespace A133019.P9335572098482595704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A068396 (n + 1)) * A000040 (n + 1)

end

end A133019.P9335572098482595704

/-! ## A133019.P5901912497098801900

`A004087(n+1)*A008578(n+2)`
-/

namespace A133019.P5901912497098801900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) * A008578 (n + 2)

end

end A133019.P5901912497098801900

/-! ## A133019.P17144861296518429032

`∏{d}[A000040(n+1), #*A004086(#)]`
-/

namespace A133019.P17144861296518429032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A004086 d

end

end A133019.P17144861296518429032

/-! ## A133019.P5559551567506263004

`A000040(n+1)*A004086(Δ[A007504(n)])`
-/

namespace A133019.P5559551567506263004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004086 (f1 (n + 1) - f1 n).toNat

end

end A133019.P5559551567506263004

/-! ## A133019.P14644757296781473801

`A004086(A182986(n+2))*A182986(n+2)`
-/

namespace A133019.P14644757296781473801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A182986 (n + 2)).toNat * A182986 (n + 2)

end

end A133019.P14644757296781473801

/-! ## A133019.P233371381410483268

`A000040(n+1)*A004086(p?[A000040(n+1)])`
-/

namespace A133019.P233371381410483268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133019.P233371381410483268

/-! ## A133019.P9405751512990293071

`record[A006530(n+2)]*A004086(A000040(n+1))`
-/

namespace A133019.P9405751512990293071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A004086 (A000040 (n + 1)).toNat

end

end A133019.P9405751512990293071

/-! ## A133019.P14492364920556869998

`A000040(n+1)*A004086(A006093(n+1)+1)`
-/

namespace A133019.P14492364920556869998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004086 (A006093 (n + 1) + 1).toNat

end

end A133019.P14492364920556869998

/-! ## A133019.P8752488702395274536

`(A040976(n+1)+2)*A004086(record[A020639(n+2)])`
-/

namespace A133019.P8752488702395274536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A004086 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133019.P8752488702395274536

/-!
# A133020: Divisors of 10000.

The programs for A133020, there is no canonical definition to state claims against.
-/

/-! ## A133020.P5971059009630613558

`∩[A003592(n+1), A067937(n+1)]`
-/

namespace A133020.P5971059009630613558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133020.P5971059009630613558

/-! ## A133020.P13115502560383211108

`∩[A051037(n+1), A067937(n+1)]`
-/

namespace A133020.P13115502560383211108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133020.P13115502560383211108

/-! ## A133020.P663243752854369621

`∩[A067937(n+1), A067938(n+1)]`
-/

namespace A133020.P663243752854369621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133020.P663243752854369621

/-! ## A133020.P1323386996164078732

`∩[A067937(n+1), A070023(n+1)]`
-/

namespace A133020.P1323386996164078732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133020.P1323386996164078732

/-! ## A133020.P18075630824365973752

`∩[A067937(n+1), A257997(n+1)]`
-/

namespace A133020.P18075630824365973752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133020.P18075630824365973752

/-!
# A133021: Irregular triangle read by rows: row n lists divisors of n-th Fibonacci number A000045(n).

The programs for A133021, there is no canonical definition to state claims against.
-/

/-! ## A133021.P1232396176092977433

`A242944(2*n+3)%A219773(n+1)`
-/

namespace A133021.P1232396176092977433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242944 (2 * n + 3)) (A219773 (n + 1))

end

end A133021.P1232396176092977433

/-! ## A133021.P707198274161273158

`A266285(gcd(A056023(n+1), A264693(n+1)))`
-/

namespace A133021.P707198274161273158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (Int.gcd (A056023 (n + 1)) (A264693 (n + 1)))

end

end A133021.P707198274161273158

/-! ## A133021.P10316288453618151266

`gcd(A066194(A301700(n+1)), A244447(n+1))`
-/

namespace A133021.P10316288453618151266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066194 (A301700 (n + 1)).toNat) (A244447 (n + 1))

end

end A133021.P10316288453618151266

/-! ## A133021.P4041133353834928671

`A198380(A070032(3*n+5)^A000607(n))`
-/

namespace A133021.P4041133353834928671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198380 (SequenceMachineLib.roundAway ((A070032 (3 * n + 5) : ℚ) ^ (A000607 n : ℤ))).toNat

end

end A133021.P4041133353834928671

/-! ## A133021.P7999636840030887130

`gcd(∑[A018625(n+1)], A279312(n))`
-/

namespace A133021.P7999636840030887130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A279312 n)

end

end A133021.P7999636840030887130

/-!
# A133022: Product of n-th Fibonacci number and n-th Fibonacci number written backwards.

The programs for A133022, there is no canonical definition to state claims against.
-/

/-! ## A133022.P10302984826243818934

`A000045(n)*A004091(n)`
-/

namespace A133022.P10302984826243818934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A004091 n

end

end A133022.P10302984826243818934

/-! ## A133022.P5850082656006528892

`abs(A004091(n)*A236191(n))`
-/

namespace A133022.P5850082656006528892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004091 n * A236191 n|

end

end A133022.P5850082656006528892

/-! ## A133022.P3814550027082402697

`sqrt(A007598(n))*A004091(n)`
-/

namespace A133022.P3814550027082402697
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * (A004091 n : ℝ)

end

end A133022.P3814550027082402697

/-! ## A133022.P8840031198751991189

`A004091(n)*A212804(n+1)`
-/

namespace A133022.P8840031198751991189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n * A212804 (n + 1)

end

end A133022.P8840031198751991189

/-! ## A133022.P2919705738251759360

`A004091(n)*A324969(n+1)`
-/

namespace A133022.P2919705738251759360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n * A324969 (n + 1)

end

end A133022.P2919705738251759360

/-! ## A133022.P14515326209099854021

`A004091(n)*A053602(2*n)`
-/

namespace A133022.P14515326209099854021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n * A053602 (2 * n)

end

end A133022.P14515326209099854021

/-! ## A133022.P10100987676838118759

`A004091(n)*A103609(2*n)`
-/

namespace A133022.P10100987676838118759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n * A103609 (2 * n)

end

end A133022.P10100987676838118759

/-! ## A133022.P3378096926518916541

`Δ[A000071(n+1)]*A004091(n)`
-/

namespace A133022.P3378096926518916541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004091 n

end

end A133022.P3378096926518916541

/-! ## A133022.P12121609005168961310

`A004091(n)*A039913(A000217(n))`
-/

namespace A133022.P12121609005168961310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n * A039913 (A000217 n).toNat

end

end A133022.P12121609005168961310

/-! ## A133022.P14397897330897740564

`A004091(n)*A039913(A000096(n)-n)`
-/

namespace A133022.P14397897330897740564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n * A039913 (A000096 n - (n : ℤ)).toNat

end

end A133022.P14397897330897740564

/-! ## A133022.P10133731220985725870

`A004091(n)*A039913(A000096(n))`
-/

namespace A133022.P10133731220985725870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n * A039913 (A000096 n).toNat

end

end A133022.P10133731220985725870

/-!
# A133023: Divisors of 2001.

The programs for A133023, there is no canonical definition to state claims against.
-/

/-! ## A133023.P5013267439983856371

`A003961(A018696(n+1))`
-/

namespace A133023.P5013267439983856371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018696 (n + 1)).toNat

end

end A133023.P5013267439983856371

/-! ## A133023.P1481862585763040678

`record[gcd(A000125(n), A125169(n))]`
-/

namespace A133023.P1481862585763040678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000125 n) (A125169 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133023.P1481862585763040678

/-! ## A133023.P9614479071340509108

`∏{p}[A018569(n+1), A060863(#)]`
-/

namespace A133023.P9614479071340509108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A060863 p

end

end A133023.P9614479071340509108

/-! ## A133023.P8399917942455980423

`∏{p}[A018696(n+1), A250469(#)]`
-/

namespace A133023.P8399917942455980423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A250469 p

end

end A133023.P8399917942455980423

/-!
# A133024: Divisors of 8128, the 4th perfect number.

The programs for A133024, there is no canonical definition to state claims against.
-/

/-! ## A133024.P14585669110119537339

`ceil(2^(n-1/88))`
-/

namespace A133024.P14585669110119537339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ ((n : ℚ) - (1 : ℚ) / 88 : ℝ)⌉

end

end A133024.P14585669110119537339

/-! ## A133024.P15023611539371735478

`2*a(n-1)-char[7]` with `a(0)=1`
-/

namespace A133024.P15023611539371735478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133024.P15023611539371735478

/-! ## A133024.P16530362063157321801

`Δ[2*a(n-1)-floor(n/8)]` with `a(0)=1`
-/

namespace A133024.P16530362063157321801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - ⌊(n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133024.P16530362063157321801

/-! ## A133024.P5054797159093096449

`a(n-1)+a(n-1)-char[7]` with `a(0)=1`
-/

namespace A133024.P5054797159093096449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A133024.P5054797159093096449

/-! ## A133024.P6737103653791495998

`a(n-1)-(char[7]-a(n-1))` with `a(0)=1`
-/

namespace A133024.P6737103653791495998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A133024.P6737103653791495998

/-!
# A133025: Divisors of 33550336, the 5th perfect number.

The programs for A133025, there is no canonical definition to state claims against.
-/

/-! ## A133025.P18005187745352968366

`2*a(n-1)-char[13]` with `a(0)=1`
-/

namespace A133025.P18005187745352968366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133025.P18005187745352968366

/-! ## A133025.P13535494233146016649

`a(n-1)+a(n-1)-char[13]` with `a(0)=1`
-/

namespace A133025.P13535494233146016649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A133025.P13535494233146016649

/-! ## A133025.P11875088942424098238

`a(n-1)-(char[13]-a(n-1))` with `a(0)=1`
-/

namespace A133025.P11875088942424098238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A133025.P11875088942424098238

/-! ## A133025.P15061452024880373444

`abs(2*a(n-1)-val(n+1, 14))` with `a(0)=1`
-/

namespace A133025.P15061452024880373444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 * a (n - 1) - (SequenceMachineLib.valuation (n + 1) 14 : ℤ)|

end

end A133025.P15061452024880373444

/-! ## A133025.P11090779430200768324

`ceil(2*a(n-1)-val(n+13, 13))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A133025.P11090779430200768324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (SequenceMachineLib.valuation (n + 13) 13 : ℤ)

end

end A133025.P11090779430200768324

/-!
# A133027: Divisors of 1701.

The programs for A133027, there is no canonical definition to state claims against.
-/

/-! ## A133027.P1696927462672483382

`record[a(floor((n+1)/4))*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=1, a(5)=3, a(6)=7`
-/

namespace A133027.P1696927462672483382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 1, 3, 7] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / 4⌋.toNat * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133027.P1696927462672483382

/-! ## A133027.P14061833731654729258

`a(n-2)*a(2-A228710(n))` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A133027.P14061833731654729258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 2) * a (2 - A228710 n).toNat

end

end A133027.P14061833731654729258

/-! ## A133027.P1432384211835522315

`a(Δ[A051038(n+1)])*a(n-2)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A133027.P1432384211835522315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (f1 (n + 1) - f1 n).toNat * a (n - 2)

end

end A133027.P1432384211835522315

/-! ## A133027.P5792821877632258713

`∪[∪[ceil(7*3^(n-2)), 3^(2^n+1)], 9*A018326(n+1)]`
-/

namespace A133027.P5792821877632258713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (2 ^ n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A018326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A133027.P5792821877632258713

/-!
# A133028: Even perfect numbers divided by 2.

The programs for A133028, there is no canonical definition to state claims against.
-/

/-! ## A133028.P15252164345741437119

`A000396(n+1)/2`
-/

namespace A133028.P15252164345741437119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) : ℚ) / 2

end

end A133028.P15252164345741437119

/-! ## A133028.P11868453791732851822

`2^(A000043(n+1)-2)*A000668(n+1)`
-/

namespace A133028.P11868453791732851822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000043 (n + 1) - 2 : ℤ) * (A000668 (n + 1) : ℚ)

end

end A133028.P11868453791732851822

/-! ## A133028.P12232731052523232424

`A133067(n+1)+1`
-/

namespace A133028.P12232731052523232424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133067 (n + 1) + 1

end

end A133028.P12232731052523232424

/-! ## A133028.P17035876498323999691

`A139256(n+1)/4`
-/

namespace A133028.P17035876498323999691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139256 (n + 1) : ℚ) / 4

end

end A133028.P17035876498323999691

/-! ## A133028.P9739919251678079344

`A065125(n+2)/4`
-/

namespace A133028.P9739919251678079344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065125 (n + 2) : ℚ) / 4

end

end A133028.P9739919251678079344

/-!
# A133029: Divisors of 1729, the 2nd taxicab number (also called the Hardy-Ramanujan number).

The programs for A133029, there is no canonical definition to state claims against.
-/

/-! ## A133029.P17099186923274615570

`record[gcd(C(C(abs(1-n), 2), 3), 6*n+1)]`
-/

namespace A133029.P17099186923274615570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (Nat.choose |1 - (n : ℤ)|.toNat 2) 3) (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133029.P17099186923274615570

/-! ## A133029.P6614110837867415126

`∏{p}[A018730(n+1), #+2]`
-/

namespace A133029.P6614110837867415126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 2)

end

end A133029.P6614110837867415126

/-! ## A133029.P780240165424760011

`A062380(A057743(n))`
-/

namespace A133029.P780240165424760011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062380 (A057743 n).toNat

end

end A133029.P780240165424760011

/-! ## A133029.P10035424529239767339

`A062380(A194360(n))`
-/

namespace A133029.P10035424529239767339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062380 (A194360 n).toNat

end

end A133029.P10035424529239767339

/-!
# A133030: Divisors of 5130.

The programs for A133030, there is no canonical definition to state claims against.
-/

/-! ## A133030.P17295973962918266894

`record[gcd(n+1, A098077(n+10))]`
-/

namespace A133030.P17295973962918266894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A098077 (n + 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133030.P17295973962918266894

/-!
# A133032: a(n) = n^p(n), where p(n) is the partition number of n.

The programs for A133032, there is no canonical definition to state claims against.
-/

/-! ## A133032.P1839324961152524295

`n^A000041(n)`
-/

namespace A133032.P1839324961152524295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A000041 n : ℤ)

end

end A133032.P1839324961152524295

/-! ## A133032.P6799356529156681036

`n^A008635(n)`
-/

namespace A133032.P6799356529156681036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A008635 n : ℤ)

end

end A133032.P6799356529156681036

/-! ## A133032.P11105488857728669370

`n^A008641(n)`
-/

namespace A133032.P11105488857728669370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A008641 n : ℤ)

end

end A133032.P11105488857728669370

/-! ## A133032.P7597691936413335609

`n^A092885(n)`
-/

namespace A133032.P7597691936413335609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A092885 n : ℤ)

end

end A133032.P7597691936413335609

/-! ## A133032.P6854303949173036580

`n^A213598(n)`
-/

namespace A133032.P6854303949173036580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A213598 n : ℤ)

end

end A133032.P6854303949173036580

/-!
# A133033: Number of proper divisors of n-th even perfect number.

The programs for A133033, there is no canonical definition to state claims against.
-/

/-! ## A133033.P5288848293623881264

`A061645(n+1)-1`
-/

namespace A133033.P5288848293623881264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061645 (n + 1) - 1

end

end A133033.P5288848293623881264

/-! ## A133033.P16201917617783984929

`2*A090748(n+1)+1`
-/

namespace A133033.P16201917617783984929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090748 (n + 1) + 1

end

end A133033.P16201917617783984929

/-! ## A133033.P13522272955350121971

`2*A000043(n+1)-1`
-/

namespace A133033.P13522272955350121971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000043 (n + 1) - 1

end

end A133033.P13522272955350121971

/-! ## A133033.P8148236308740753580

`A000043(n+1)+A090748(n+1)`
-/

namespace A133033.P8148236308740753580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) + A090748 (n + 1)

end

end A133033.P8148236308740753580

/-! ## A133033.P5098654081016885538

`2*A153798(n+1)+3`
-/

namespace A133033.P5098654081016885538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153798 (n + 1) + 3

end

end A133033.P5098654081016885538

/-!
# A133034: First differences of Padovan sequence A000931.

The programs for A133034, the canonical program `A133034.P17997943347392917736` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133034 has offset 0).

The definition of A133034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133034.P17997943347392917736

`a(n-2)+a(n-3)` with `a(0)=-1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133034

/-- `a(n-2)+a(n-3)` -/
def P17997943347392917736.Spec : Prop :=
  ∀ n, P17997943347392917736.a n = A133034 n

theorem P17997943347392917736.correct : P17997943347392917736.Spec := by
  intro n
  simp only [A133034]

end A133034

/-! ## A133034.P15835001423669486125

`ogf((1-2x^2)/(-1+x^2+x^3))`
-/

namespace A133034.P15835001423669486125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 0, 2] [1, 0, -1, -1] n

end

end A133034.P15835001423669486125

namespace A133034

/-- `ogf((1-2x^2)/(-1+x^2+x^3))` -/
def P15835001423669486125.Spec : Prop :=
  ∀ n, P15835001423669486125.a n = A133034 n

end A133034

/-! ## A133034.P8151124351527149539

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=-1`
-/

namespace A133034.P8151124351527149539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1, -1] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A133034.P8151124351527149539

namespace A133034

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P8151124351527149539.Spec : Prop :=
  ∀ n, P8151124351527149539.a n = A133034 n

end A133034

/-! ## A133034.P9746081011527762920

`A078027((2*n+1)%(n+3))`
-/

namespace A133034.P9746081011527762920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 ((2 * n + 1) % (n + 3))

end

end A133034.P9746081011527762920

namespace A133034

/-- `A078027((2*n+1)%(n+3))` -/
def P9746081011527762920.Spec : Prop :=
  ∀ n, P9746081011527762920.a n = A133034 n

end A133034

/-! ## A133034.P1217880101603994775

`A078027(n)-Δ[A078027(n+1)]`
-/

namespace A133034.P1217880101603994775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n - (f1 (n + 1) - f1 n)

end

end A133034.P1217880101603994775

namespace A133034

/-- `A078027(n)-Δ[A078027(n+1)]` -/
def P1217880101603994775.Spec : Prop :=
  ∀ n, P1217880101603994775.a n = A133034 n

end A133034

/-! ## A133034.P10128242247600194846

`Δ[a(n-2)-(1-a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A133034.P10128242247600194846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133034.P10128242247600194846

namespace A133034

/-- `Δ[a(n-2)-(1-a(n-3))]` -/
def P10128242247600194846.Spec : Prop :=
  ∀ n, P10128242247600194846.a n = A133034 n

end A133034

/-! ## A133034.P16002960024738413919

`Δ[A000931(n)]`
-/

namespace A133034.P16002960024738413919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133034.P16002960024738413919

namespace A133034

/-- `Δ[A000931(n)]` -/
def P16002960024738413919.Spec : Prop :=
  ∀ n, P16002960024738413919.a n = A133034 n

end A133034

/-! ## A133034.P6297507531459269404

`Δ[A078027(n+2)]`
-/

namespace A133034.P6297507531459269404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133034.P6297507531459269404

namespace A133034

/-- `Δ[A078027(n+2)]` -/
def P6297507531459269404.Spec : Prop :=
  ∀ n, P6297507531459269404.a n = A133034 n

end A133034

/-! ## A133034.P17680271028158147598

`Δ[abs(A124745(n+2))]`
-/

namespace A133034.P17680271028158147598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124745 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133034.P17680271028158147598

namespace A133034

/-- `Δ[abs(A124745(n+2))]` -/
def P17680271028158147598.Spec : Prop :=
  ∀ n, P17680271028158147598.a n = A133034 n

end A133034

/-! ## A133034.P13328482148399016631

`A000931(n+1)-A000931(n)`
-/

namespace A133034.P13328482148399016631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) - A000931 n

end

end A133034.P13328482148399016631

namespace A133034

/-- `A000931(n+1)-A000931(n)` -/
def P13328482148399016631.Spec : Prop :=
  ∀ n, P13328482148399016631.a n = A133034 n

end A133034

/-! ## A133034.P5628141340383460898

`A078027(n+3)-A078027(n+2)`
-/

namespace A133034.P5628141340383460898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 3) - A078027 (n + 2)

end

end A133034.P5628141340383460898

namespace A133034

/-- `A078027(n+3)-A078027(n+2)` -/
def P5628141340383460898.Spec : Prop :=
  ∀ n, P5628141340383460898.a n = A133034 n

end A133034

/-! ## A133034.P11430094522750304426

`Δ[A017899(n+2)-Δ[A017899(n)]]`
-/

namespace A133034.P11430094522750304426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133034.P11430094522750304426

namespace A133034

/-- `Δ[A017899(n+2)-Δ[A017899(n)]]` -/
def P11430094522750304426.Spec : Prop :=
  ∀ n, P11430094522750304426.a n = A133034 n

end A133034

/-! ## A133034.P8294187832275614999

`A182097(n)-A291289(n)`
-/

namespace A133034.P8294187832275614999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n - A291289 n

end

end A133034.P8294187832275614999

namespace A133034

/-- `A182097(n)-A291289(n)` -/
def P8294187832275614999.Spec : Prop :=
  ∀ n, P8294187832275614999.a n = A133034 n

end A133034

/-! ## A133034.P13695129102469840864

`A182097(n)-2*A000931(n)`
-/

namespace A133034.P13695129102469840864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n - 2 * A000931 n

end

end A133034.P13695129102469840864

namespace A133034

/-- `A182097(n)-2*A000931(n)` -/
def P13695129102469840864.Spec : Prop :=
  ∀ n, P13695129102469840864.a n = A133034 n

end A133034

/-! ## A133034.P17425172257389303193

`A134816(n+1)-A276276(n+1)`
-/

namespace A133034.P17425172257389303193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) - A276276 (n + 1)

end

end A133034.P17425172257389303193

namespace A133034

/-- `A134816(n+1)-A276276(n+1)` -/
def P17425172257389303193.Spec : Prop :=
  ∀ n, P17425172257389303193.a n = A133034 n

end A133034

/-! ## A133034.P3693649725550542309

`Δ[Δ[A052954(n+1)]]`
-/

namespace A133034.P3693649725550542309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133034.P3693649725550542309

namespace A133034

/-- `Δ[Δ[A052954(n+1)]]` -/
def P3693649725550542309.Spec : Prop :=
  ∀ n, P3693649725550542309.a n = A133034 n

end A133034

/-! ## A133034.P6778741740371254671

`Δ[Δ[A182097(n+1)]]`
-/

namespace A133034.P6778741740371254671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133034.P6778741740371254671

namespace A133034

/-- `Δ[Δ[A182097(n+1)]]` -/
def P6778741740371254671.Spec : Prop :=
  ∀ n, P6778741740371254671.a n = A133034 n

end A133034

/-! ## A133034.P16217331466350126241

`A007307(n)-A134816(n+1)`
-/

namespace A133034.P16217331466350126241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n - A134816 (n + 1)

end

end A133034.P16217331466350126241

namespace A133034

/-- `A007307(n)-A134816(n+1)` -/
def P16217331466350126241.Spec : Prop :=
  ∀ n, P16217331466350126241.a n = A133034 n

end A133034

/-! ## A133034.P5577119930303803792

`A007307(n)-A182097(n+2)`
-/

namespace A133034.P5577119930303803792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n - A182097 (n + 2)

end

end A133034.P5577119930303803792

namespace A133034

/-- `A007307(n)-A182097(n+2)` -/
def P5577119930303803792.Spec : Prop :=
  ∀ n, P5577119930303803792.a n = A133034 n

end A133034

/-! ## A133034.P18122569391611295249

`A134816(n+2)-A141038(n)`
-/

namespace A133034.P18122569391611295249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) - A141038 n

end

end A133034.P18122569391611295249

namespace A133034

/-- `A134816(n+2)-A141038(n)` -/
def P18122569391611295249.Spec : Prop :=
  ∀ n, P18122569391611295249.a n = A133034 n

end A133034

/-!
# A133035: Divisors of 1810.

The programs for A133035, there is no canonical definition to state claims against.
-/

/-! ## A133035.P14845298170614206656

`∏{p}[A344085(n+1), A005203(#)]`
-/

namespace A133035.P14845298170614206656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005203 p

end

end A133035.P14845298170614206656

/-! ## A133035.P10988382885263802229

`∏{p}[A245479(n+1), A166292(#)]`
-/

namespace A133035.P10988382885263802229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A166292 p

end

end A133035.P10988382885263802229

/-! ## A133035.P12916669891081728468

`record[gcd(A004068(3*(n+1)), A135042(n))]`
-/

namespace A133035.P12916669891081728468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004068 (3 * (n + 1))) (A135042 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133035.P12916669891081728468

/-! ## A133035.P14583514015761523658

`record[gcd(A005893(n+1), A005919(3*n+1))]`
-/

namespace A133035.P14583514015761523658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005893 (n + 1)) (A005919 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133035.P14583514015761523658

/-!
# A133036: Divisors of 1816.

The programs for A133036, there is no canonical definition to state claims against.
-/

/-! ## A133036.P2210177532833027509

`A269854(A018605(n+1))`
-/

namespace A133036.P2210177532833027509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269854 (A018605 (n + 1)).toNat

end

end A133036.P2210177532833027509

/-! ## A133036.P11002296159351312830

`∏{p}[A018615(n+1), A259153(#)]`
-/

namespace A133036.P11002296159351312830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A259153 p

end

end A133036.P11002296159351312830

/-! ## A133036.P16723446660622905663

`∪[A018715(n+1), ∏[A018715(n+1)]]`
-/

namespace A133036.P16723446660622905663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018715 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133036.P16723446660622905663

/-! ## A133036.P1379651718713829659

`∪[2*A018715(n+2), A018715(n+1)]`
-/

namespace A133036.P1379651718713829659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018715 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133036.P1379651718713829659

/-!
# A133037: a(n) = A000931(n)^2.

The programs for A133037, the canonical program `A133037.P1237939868318635299` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133037 has offset 0).

The definition of A133037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000931(n)²` (program `A133037.P1237939868318635299`, by `A133037.P1237939868318635299.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133037.P5850861920251992902

`2*a(n-2)+2*a(n-3)-a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1`
-/

namespace A133037.P5850861920251992902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 1, 1] fun n a =>
  2 * a (n - 2) + 2 * a (n - 3) - a (n - 7)

end

end A133037.P5850861920251992902

namespace A133037

/-- `2*a(n-2)+2*a(n-3)-a(n-7)` -/
def P5850861920251992902.Spec : Prop :=
  ∀ n, P5850861920251992902.a n = A133037 n

end A133037

/-! ## A133037.P15819677272946080848

`a(n-1)+a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1`
-/

namespace A133037.P15819677272946080848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) + a (n - 5) - a (n - 6)

end

end A133037.P15819677272946080848

namespace A133037

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P15819677272946080848.Spec : Prop :=
  ∀ n, P15819677272946080848.a n = A133037 n

end A133037

/-! ## A133037.P1237939868318635299

`A000931(n)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133037

/-- `A000931(n)²` -/
def P1237939868318635299.Spec : Prop :=
  ∀ n, P1237939868318635299.a n = A133037 n

theorem P1237939868318635299.correct : P1237939868318635299.Spec := by
  intro n
  simp only [A133037]

end A133037

/-! ## A133037.P18384435782878894252

`Δ[a(n-2)+a(n-3)]²` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A133037.P18384435782878894252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A133037.P18384435782878894252

namespace A133037

/-- `Δ[a(n-2)+a(n-3)]²` -/
def P18384435782878894252.Spec : Prop :=
  ∀ n, P18384435782878894252.a n = A133037 n

end A133037

/-! ## A133037.P11086837625563263335

`∑[a(n-2)+a(n-3)]²` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=1`
-/

namespace A133037.P11086837625563263335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133037.P11086837625563263335

namespace A133037

/-- `∑[a(n-2)+a(n-3)]²` -/
def P11086837625563263335.Spec : Prop :=
  ∀ n, P11086837625563263335.a n = A133037 n

end A133037

/-! ## A133037.P387205293631967576

`(1-∑[a(n-2)-a(n-3)])²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A133037.P387205293631967576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133037.P387205293631967576

namespace A133037

/-- `(1-∑[a(n-2)-a(n-3)])²` -/
def P387205293631967576.Spec : Prop :=
  ∀ n, P387205293631967576.a n = A133037 n

end A133037

/-! ## A133037.P4679593154747104867

`A078027(n+2)²`
-/

namespace A133037.P4679593154747104867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 2) ^ 2

end

end A133037.P4679593154747104867

namespace A133037

/-- `A078027(n+2)²` -/
def P4679593154747104867.Spec : Prop :=
  ∀ n, P4679593154747104867.a n = A133037 n

end A133037

/-! ## A133037.P13076342053463470735

`A124745(n+2)²`
-/

namespace A133037.P13076342053463470735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 2) ^ 2

end

end A133037.P13076342053463470735

namespace A133037

/-- `A124745(n+2)²` -/
def P13076342053463470735.Spec : Prop :=
  ∀ n, P13076342053463470735.a n = A133037 n

end A133037

/-! ## A133037.P18105042040154000557

`A133034(n+4)²`
-/

namespace A133037.P18105042040154000557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 4) ^ 2

end

end A133037.P18105042040154000557

namespace A133037

/-- `A133034(n+4)²` -/
def P18105042040154000557.Spec : Prop :=
  ∀ n, P18105042040154000557.a n = A133037 n

end A133037

/-! ## A133037.P10119239221639205566

`(A291289(n)/2)²`
-/

namespace A133037.P10119239221639205566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A291289 n : ℚ) / 2) ^ 2

end

end A133037.P10119239221639205566

namespace A133037

/-- `(A291289(n)/2)²` -/
def P10119239221639205566.Spec : Prop :=
  ∀ n, P10119239221639205566.a n = (A133037 n : ℚ)

end A133037

/-! ## A133037.P15752429567101487726

`Δ[A052954(n+1)]²`
-/

namespace A133037.P15752429567101487726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133037.P15752429567101487726

namespace A133037

/-- `Δ[A052954(n+1)]²` -/
def P15752429567101487726.Spec : Prop :=
  ∀ n, P15752429567101487726.a n = A133037 n

end A133037

/-! ## A133037.P5448076960126494981

`Δ[A182097(n+1)]²`
-/

namespace A133037.P5448076960126494981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133037.P5448076960126494981

namespace A133037

/-- `Δ[A182097(n+1)]²` -/
def P5448076960126494981.Spec : Prop :=
  ∀ n, P5448076960126494981.a n = A133037 n

end A133037

/-! ## A133037.P4542775256252017398

`Δ[abs(Δ[A077883(n)])]²`
-/

namespace A133037.P4542775256252017398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133037.P4542775256252017398

namespace A133037

/-- `Δ[abs(Δ[A077883(n)])]²` -/
def P4542775256252017398.Spec : Prop :=
  ∀ n, P4542775256252017398.a n = A133037 n

end A133037

/-! ## A133037.P11467965067857677828

`Δ[A127682(Δ[n²])]²`
-/

namespace A133037.P11467965067857677828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133037.P11467965067857677828

namespace A133037

/-- `Δ[A127682(Δ[n²])]²` -/
def P11467965067857677828.Spec : Prop :=
  ∀ n, P11467965067857677828.a n = A133037 n

end A133037

/-! ## A133037.P13365770716915310701

`Δ[Δ[Δ[A167385(n)]]]²`
-/

namespace A133037.P13365770716915310701
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133037.P13365770716915310701

namespace A133037

/-- `Δ[Δ[Δ[A167385(n)]]]²` -/
def P13365770716915310701.Spec : Prop :=
  ∀ n, P13365770716915310701.a n = A133037 n

end A133037

/-! ## A133037.P7176901610870200750

`Δ[Δ[A023434(n+1)]]²`
-/

namespace A133037.P7176901610870200750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133037.P7176901610870200750

namespace A133037

/-- `Δ[Δ[A023434(n+1)]]²` -/
def P7176901610870200750.Spec : Prop :=
  ∀ n, P7176901610870200750.a n = A133037 n

end A133037

/-! ## A133037.P8733327013782105929

`(∑[A077883(n+1)]-(n+2))²`
-/

namespace A133037.P8733327013782105929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)) ^ 2

end

end A133037.P8733327013782105929

namespace A133037

/-- `(∑[A077883(n+1)]-(n+2))²` -/
def P8733327013782105929.Spec : Prop :=
  ∀ n, P8733327013782105929.a n = A133037 n

end A133037

/-! ## A133037.P9129905235367077676

`A000931(n)*A078027(n+2)`
-/

namespace A133037.P9129905235367077676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n * A078027 (n + 2)

end

end A133037.P9129905235367077676

namespace A133037

/-- `A000931(n)*A078027(n+2)` -/
def P9129905235367077676.Spec : Prop :=
  ∀ n, P9129905235367077676.a n = A133037 n

end A133037

/-! ## A133037.P3716125952069359331

`A000931(n)*A133034(n+4)`
-/

namespace A133037.P3716125952069359331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n * A133034 (n + 4)

end

end A133037.P3716125952069359331

namespace A133037

/-- `A000931(n)*A133034(n+4)` -/
def P3716125952069359331.Spec : Prop :=
  ∀ n, P3716125952069359331.a n = A133037 n

end A133037

/-! ## A133037.P7850089875939121453

`A000931(n)^A000032(C(2, n))`
-/

namespace A133037.P7850089875939121453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000931 n : ℚ) ^ (A000032 (Nat.choose 2 n) : ℤ)

end

end A133037.P7850089875939121453

namespace A133037

/-- `A000931(n)^A000032(C(2, n))` -/
def P7850089875939121453.Spec : Prop :=
  ∀ n, P7850089875939121453.a n = (A133037 n : ℚ)

end A133037

/-!
# A133038: Cubes of A000931.

The programs for A133038, the canonical program `A133038.P77083935429570710` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133038 has offset 0).

The definition of A133038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133038.P77083935429570710

`A000931(n)^3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133038

/-- `A000931(n)^3` -/
def P77083935429570710.Spec : Prop :=
  ∀ n, P77083935429570710.a n = A133038 n

theorem P77083935429570710.correct : P77083935429570710.Spec := by
  intro n
  simp only [A133038]

end A133038

/-! ## A133038.P5989774324586848863

`Δ[Δ[a(n-3)+a(n-2)]]^3` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A133038.P5989774324586848863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 3] fun n f2 =>
  f2 (n - 3) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133038.P5989774324586848863

namespace A133038

/-- `Δ[Δ[a(n-3)+a(n-2)]]^3` -/
def P5989774324586848863.Spec : Prop :=
  ∀ n, P5989774324586848863.a n = A133038 n

end A133038

/-! ## A133038.P12089797581644233733

`∑[a(n-2)+a(n-3)]^3` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=1`
-/

namespace A133038.P12089797581644233733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133038.P12089797581644233733

namespace A133038

/-- `∑[a(n-2)+a(n-3)]^3` -/
def P12089797581644233733.Spec : Prop :=
  ∀ n, P12089797581644233733.a n = A133038 n

end A133038

/-! ## A133038.P5792212447319402456

`sqrt(A133037(n))^3`
-/

namespace A133038.P5792212447319402456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133037 n : ℝ) ^ 3

end

end A133038.P5792212447319402456

namespace A133038

/-- `sqrt(A133037(n))^3` -/
def P5792212447319402456.Spec : Prop :=
  ∀ n, P5792212447319402456.a n = (A133038 n : ℝ)

end A133038

/-! ## A133038.P14355263787969610618

`A078027(n+2)^3`
-/

namespace A133038.P14355263787969610618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 2) ^ 3

end

end A133038.P14355263787969610618

namespace A133038

/-- `A078027(n+2)^3` -/
def P14355263787969610618.Spec : Prop :=
  ∀ n, P14355263787969610618.a n = A133038 n

end A133038

/-! ## A133038.P12815009661924282035

`A133034(n+4)^3`
-/

namespace A133038.P12815009661924282035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 4) ^ 3

end

end A133038.P12815009661924282035

namespace A133038

/-- `A133034(n+4)^3` -/
def P12815009661924282035.Spec : Prop :=
  ∀ n, P12815009661924282035.a n = A133038 n

end A133038

/-! ## A133038.P5268001129568540668

`(A291289(n)/2)^3`
-/

namespace A133038.P5268001129568540668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A291289 n : ℚ) / 2) ^ 3

end

end A133038.P5268001129568540668

namespace A133038

/-- `(A291289(n)/2)^3` -/
def P5268001129568540668.Spec : Prop :=
  ∀ n, P5268001129568540668.a n = (A133038 n : ℚ)

end A133038

/-! ## A133038.P2058046394975795745

`Δ[A052954(n+1)]^3`
-/

namespace A133038.P2058046394975795745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133038.P2058046394975795745

namespace A133038

/-- `Δ[A052954(n+1)]^3` -/
def P2058046394975795745.Spec : Prop :=
  ∀ n, P2058046394975795745.a n = A133038 n

end A133038

/-! ## A133038.P15546061605194507916

`Δ[A182097(n+1)]^3`
-/

namespace A133038.P15546061605194507916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133038.P15546061605194507916

namespace A133038

/-- `Δ[A182097(n+1)]^3` -/
def P15546061605194507916.Spec : Prop :=
  ∀ n, P15546061605194507916.a n = A133038 n

end A133038

/-! ## A133038.P14927869225237990967

`Δ[abs(Δ[A077883(n)])]^3`
-/

namespace A133038.P14927869225237990967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133038.P14927869225237990967

namespace A133038

/-- `Δ[abs(Δ[A077883(n)])]^3` -/
def P14927869225237990967.Spec : Prop :=
  ∀ n, P14927869225237990967.a n = A133038 n

end A133038

/-! ## A133038.P2927723890220890213

`Δ[Δ[Δ[A167385(n)]]]^3`
-/

namespace A133038.P2927723890220890213
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133038.P2927723890220890213

namespace A133038

/-- `Δ[Δ[Δ[A167385(n)]]]^3` -/
def P2927723890220890213.Spec : Prop :=
  ∀ n, P2927723890220890213.a n = A133038 n

end A133038

/-! ## A133038.P14465267762098022801

`Δ[Δ[A023434(n+1)]]^3`
-/

namespace A133038.P14465267762098022801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133038.P14465267762098022801

namespace A133038

/-- `Δ[Δ[A023434(n+1)]]^3` -/
def P14465267762098022801.Spec : Prop :=
  ∀ n, P14465267762098022801.a n = A133038 n

end A133038

/-! ## A133038.P5557992472244847258

`Δ[A127682(2*n+1)]^3`
-/

namespace A133038.P5557992472244847258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133038.P5557992472244847258

namespace A133038

/-- `Δ[A127682(2*n+1)]^3` -/
def P5557992472244847258.Spec : Prop :=
  ∀ n, P5557992472244847258.a n = A133038 n

end A133038

/-! ## A133038.P346003168841357125

`A133039(n)+A133037(n)`
-/

namespace A133038.P346003168841357125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133039 n + A133037 n

end

end A133038.P346003168841357125

namespace A133038

/-- `A133039(n)+A133037(n)` -/
def P346003168841357125.Spec : Prop :=
  ∀ n, P346003168841357125.a n = A133038 n

end A133038

/-! ## A133038.P5757345806471740581

`A000931(n)*A133037(n)`
-/

namespace A133038.P5757345806471740581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n * A133037 n

end

end A133038.P5757345806471740581

namespace A133038

/-- `A000931(n)*A133037(n)` -/
def P5757345806471740581.Spec : Prop :=
  ∀ n, P5757345806471740581.a n = A133038 n

end A133038

/-! ## A133038.P4010581285399675807

`A133039(n)+A000931(n)²`
-/

namespace A133038.P4010581285399675807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133039 n + A000931 n ^ 2

end

end A133038.P4010581285399675807

namespace A133038

/-- `A133039(n)+A000931(n)²` -/
def P4010581285399675807.Spec : Prop :=
  ∀ n, P4010581285399675807.a n = A133038 n

end A133038

/-! ## A133038.P13342454248877828624

`Δ[A182097(n+1)]*A133037(n)`
-/

namespace A133038.P13342454248877828624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A133037 n

end

end A133038.P13342454248877828624

namespace A133038

/-- `Δ[A182097(n+1)]*A133037(n)` -/
def P13342454248877828624.Spec : Prop :=
  ∀ n, P13342454248877828624.a n = A133038 n

end A133038

/-! ## A133038.P12822304504384681891

`Δ[A127682(2*n+1)]*A133037(n)`
-/

namespace A133038.P12822304504384681891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A133037 n

end

end A133038.P12822304504384681891

namespace A133038

/-- `Δ[A127682(2*n+1)]*A133037(n)` -/
def P12822304504384681891.Spec : Prop :=
  ∀ n, P12822304504384681891.a n = A133038 n

end A133038

/-! ## A133038.P5329385498148549509

`A000931(A199969(n+1))*A000931(n)*A000931(n)`
-/

namespace A133038.P5329385498148549509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A199969 (n + 1)).toNat * A000931 n * A000931 n

end

end A133038.P5329385498148549509

namespace A133038

/-- `A000931(A199969(n+1))*A000931(n)*A000931(n)` -/
def P5329385498148549509.Spec : Prop :=
  ∀ n, P5329385498148549509.a n = A133038 n

end A133038

/-! ## A133038.P13684066696045174032

`A144961(∑[n])^3`
-/

namespace A133038.P13684066696045174032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144961 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133038.P13684066696045174032

namespace A133038

/-- `A144961(∑[n])^3` -/
def P13684066696045174032.Spec : Prop :=
  ∀ n, P13684066696045174032.a n = A133038 n

end A133038

/-!
# A133039: a(n) = P(n)^3 - P(n)^2 where P(n) = A000931(n).

The programs for A133039, the canonical program `A133039.P11109720896804741336` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133039 has offset 0).

The definition of A133039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133039.P11109720896804741336

`A133038(n)-A133037(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133039

/-- `A133038(n)-A133037(n)` -/
def P11109720896804741336.Spec : Prop :=
  ∀ n, P11109720896804741336.a n = A133039 n

theorem P11109720896804741336.correct : P11109720896804741336.Spec := by
  intro n
  simp only [A133039]

end A133039

/-! ## A133039.P2537887087567028251

`A133038(n)-A000931(n)²`
-/

namespace A133039.P2537887087567028251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133038 n - A000931 n ^ 2

end

end A133039.P2537887087567028251

namespace A133039

/-- `A133038(n)-A000931(n)²` -/
def P2537887087567028251.Spec : Prop :=
  ∀ n, P2537887087567028251.a n = A133039 n

end A133039

/-! ## A133039.P9930215934522072431

`(A000931(n)-1)*A133037(n)`
-/

namespace A133039.P9930215934522072431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000931 n - 1) * A133037 n

end

end A133039.P9930215934522072431

namespace A133039

/-- `(A000931(n)-1)*A133037(n)` -/
def P9930215934522072431.Spec : Prop :=
  ∀ n, P9930215934522072431.a n = A133039 n

end A133039

/-! ## A133039.P1881914146873134186

`A133034(n+4)^3-A133037(n)`
-/

namespace A133039.P1881914146873134186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 4) ^ 3 - A133037 n

end

end A133039.P1881914146873134186

namespace A133039

/-- `A133034(n+4)^3-A133037(n)` -/
def P1881914146873134186.Spec : Prop :=
  ∀ n, P1881914146873134186.a n = A133039 n

end A133039

/-! ## A133039.P12501592202050618409

`A133034(n+4)^3-A000931(n)²`
-/

namespace A133039.P12501592202050618409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 4) ^ 3 - A000931 n ^ 2

end

end A133039.P12501592202050618409

namespace A133039

/-- `A133034(n+4)^3-A000931(n)²` -/
def P12501592202050618409.Spec : Prop :=
  ∀ n, P12501592202050618409.a n = A133039 n

end A133039

/-! ## A133039.P6338337580797692658

`Δ[A182097(n+1)]^3-A133037(n)`
-/

namespace A133039.P6338337580797692658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3 - A133037 n

end

end A133039.P6338337580797692658

namespace A133039

/-- `Δ[A182097(n+1)]^3-A133037(n)` -/
def P6338337580797692658.Spec : Prop :=
  ∀ n, P6338337580797692658.a n = A133039 n

end A133039

/-! ## A133039.P18247742746250943024

`Δ[A182097(n+1)]^3-A000931(n)²`
-/

namespace A133039.P18247742746250943024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3 - A000931 n ^ 2

end

end A133039.P18247742746250943024

namespace A133039

/-- `Δ[A182097(n+1)]^3-A000931(n)²` -/
def P18247742746250943024.Spec : Prop :=
  ∀ n, P18247742746250943024.a n = A133039 n

end A133039

/-! ## A133039.P15012607120779764644

`Δ[A127682(2*n+1)]^3-A133037(n)`
-/

namespace A133039.P15012607120779764644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3 - A133037 n

end

end A133039.P15012607120779764644

namespace A133039

/-- `Δ[A127682(2*n+1)]^3-A133037(n)` -/
def P15012607120779764644.Spec : Prop :=
  ∀ n, P15012607120779764644.a n = A133039 n

end A133039

/-! ## A133039.P6791446033856179491

`Δ[A127682(2*n+1)]^3-A000931(n)²`
-/

namespace A133039.P6791446033856179491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3 - A000931 n ^ 2

end

end A133039.P6791446033856179491

namespace A133039

/-- `Δ[A127682(2*n+1)]^3-A000931(n)²` -/
def P6791446033856179491.Spec : Prop :=
  ∀ n, P6791446033856179491.a n = A133039 n

end A133039

/-! ## A133039.P11430235445087831456

`Δ[A127682(2*n+1)]^3-A078027(n+2)²`
-/

namespace A133039.P11430235445087831456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3 - A078027 (n + 2) ^ 2

end

end A133039.P11430235445087831456

namespace A133039

/-- `Δ[A127682(2*n+1)]^3-A078027(n+2)²` -/
def P11430235445087831456.Spec : Prop :=
  ∀ n, P11430235445087831456.a n = A133039 n

end A133039

/-!
# A133040: Divisors of 1900.

The programs for A133040, there is no canonical definition to state claims against.
-/

/-! ## A133040.P3899087224002098401

`eq[n, gcd(n, A076389(3*n+5))]`
-/

namespace A133040.P3899087224002098401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A076389 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133040.P3899087224002098401

/-! ## A133040.P16384868751282022532

`record[gcd(n+1, A346942(A097706(n+1)))]`
-/

namespace A133040.P16384868751282022532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A346942 (A097706 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133040.P16384868751282022532

/-! ## A133040.P13539081660937361072

`∪[2*A018739(n+1), A018739(n+1)]`
-/

namespace A133040.P13539081660937361072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133040.P13539081660937361072

/-! ## A133040.P691112336296333837

`∪[A018739(n+1), A004277(A018739(n+1))]`
-/

namespace A133040.P691112336296333837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A018739 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133040.P691112336296333837

/-! ## A133040.P12894995525609676520

`record[gcd(A126759(n), A244631(n))]`
-/

namespace A133040.P12894995525609676520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126759 n) (A244631 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133040.P12894995525609676520

/-!
# A133041: Sum of n and partition number of n.

The programs for A133041, there is no canonical definition to state claims against.
-/

/-! ## A133041.P13591288885839162726

`n+A000041(n)`
-/

namespace A133041.P13591288885839162726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000041 n

end

end A133041.P13591288885839162726

/-! ## A133041.P5571666003691108364

`∑[A232697(n)]`
-/

namespace A133041.P5571666003691108364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133041.P5571666003691108364

/-! ## A133041.P12055088152508556392

`∑[A002865(n)]+n`
-/

namespace A133041.P12055088152508556392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133041.P12055088152508556392

/-! ## A133041.P5446779757535512917

`A000065(n)+1+n`
-/

namespace A133041.P5446779757535512917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 + (n : ℤ)

end

end A133041.P5446779757535512917

/-! ## A133041.P3206657475370865918

`∑[A085811(n+3)]+n`
-/

namespace A133041.P3206657475370865918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133041.P3206657475370865918

/-! ## A133041.P11156550970506823774

`2*n-(n-A000041(2*n-n))`
-/

namespace A133041.P11156550970506823774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - A000041 (2 * n - n))

end

end A133041.P11156550970506823774

/-! ## A133041.P3852131698370069308

`A058984(n)+A032766(n)`
-/

namespace A133041.P3852131698370069308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n + A032766 n

end

end A133041.P3852131698370069308

/-! ## A133041.P3920916086157248037

`A000041(n)-A001489(n)`
-/

namespace A133041.P3920916086157248037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A001489 n

end

end A133041.P3920916086157248037

/-! ## A133041.P5026518303601859725

`A004277(n)+A000094(n+1)`
-/

namespace A133041.P5026518303601859725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A000094 (n + 1)

end

end A133041.P5026518303601859725

/-! ## A133041.P10551784671104360835

`A362548(n)+A002620(n+2)`
-/

namespace A133041.P10551784671104360835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362548 n + A002620 (n + 2)

end

end A133041.P10551784671104360835

/-! ## A133041.P12862453858306047737

`A000837(n)+A018783(n)+n`
-/

namespace A133041.P12862453858306047737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n + (n : ℤ))

end

end A133041.P12862453858306047737

/-! ## A133041.P10680989928212386871

`A003106(n)+A039900(n)+n`
-/

namespace A133041.P10680989928212386871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A039900 n + (n : ℤ))

end

end A133041.P10680989928212386871

/-! ## A133041.P5729050574252617713

`A000701(n)+A046682(n)+n`
-/

namespace A133041.P5729050574252617713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n + (n : ℤ))

end

end A133041.P5729050574252617713

/-! ## A133041.P17174366279538371980

`A047967(n)+A000009(n)+n`
-/

namespace A133041.P17174366279538371980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A000009 n + (n : ℤ))

end

end A133041.P17174366279538371980

/-! ## A133041.P14722062514500183068

`A027187(n)+A027193(n)+n`
-/

namespace A133041.P14722062514500183068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n + (n : ℤ))

end

end A133041.P14722062514500183068

/-! ## A133041.P4938674696929439947

`A295341(n)+A000726(n)+n`
-/

namespace A133041.P4938674696929439947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n + (n : ℤ)

end

end A133041.P4938674696929439947

/-! ## A133041.P16578466935173253393

`A139582(n)/2+n`
-/

namespace A133041.P16578466935173253393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 + (n : ℚ)

end

end A133041.P16578466935173253393

/-! ## A133041.P6533477097273993697

`A194805(n+1)-A000094(n+2)`
-/

namespace A133041.P6533477097273993697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194805 (n + 1) - A000094 (n + 2)

end

end A133041.P6533477097273993697

/-! ## A133041.P2683636928172212974

`A299473(n)/3+n`
-/

namespace A133041.P2683636928172212974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299473 n : ℚ) / 3 + (n : ℚ)

end

end A133041.P2683636928172212974

/-! ## A133041.P164941893683079215

`A299474(n)/4+n`
-/

namespace A133041.P164941893683079215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 n : ℚ) / 4 + (n : ℚ)

end

end A133041.P164941893683079215

/-!
# A133042: Cubes of partition numbers.

The programs for A133042, there is no canonical definition to state claims against.
-/

/-! ## A133042.P4993644764281568802

`A000041(n)^3`
-/

namespace A133042.P4993644764281568802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 3

end

end A133042.P4993644764281568802

/-! ## A133042.P7432708740845781911

`sqrt(A001255(n))^3`
-/

namespace A133042.P7432708740845781911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) ^ 3

end

end A133042.P7432708740845781911

/-! ## A133042.P3023191665521877419

`∑[A002865(n)]^3`
-/

namespace A133042.P3023191665521877419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133042.P3023191665521877419

/-! ## A133042.P8493377422521518874

`(A000065(n)+1)^3`
-/

namespace A133042.P8493377422521518874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) ^ 3

end

end A133042.P8493377422521518874

/-! ## A133042.P15848522361453800787

`A035363(2*n)^3`
-/

namespace A133042.P15848522361453800787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) ^ 3

end

end A133042.P15848522361453800787

/-! ## A133042.P7855579579203576387

`A119620(2*n)^3`
-/

namespace A133042.P7855579579203576387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) ^ 3

end

end A133042.P7855579579203576387

/-! ## A133042.P6697318249680469987

`A035377(3*n)^3`
-/

namespace A133042.P6697318249680469987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) ^ 3

end

end A133042.P6697318249680469987

/-! ## A133042.P12935499097317627611

`(A139582(n)/2)^3`
-/

namespace A133042.P12935499097317627611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139582 n : ℚ) / 2) ^ 3

end

end A133042.P12935499097317627611

/-! ## A133042.P17771991925821773027

`(A133041(n)-n)^3`
-/

namespace A133042.P17771991925821773027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133041 n - (n : ℤ)) ^ 3

end

end A133042.P17771991925821773027

/-! ## A133042.P8623602743424528487

`∑[A085811(n+3)]^3`
-/

namespace A133042.P8623602743424528487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133042.P8623602743424528487

/-! ## A133042.P15943860760204428260

`(A228816(n+1)/(n+1))^3`
-/

namespace A133042.P15943860760204428260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A228816 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A133042.P15943860760204428260

/-! ## A133042.P6997232259682814733

`A000041(n)*A001255(n)`
-/

namespace A133042.P6997232259682814733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A001255 n

end

end A133042.P6997232259682814733

/-! ## A133042.P8399384591647489345

`(A000065(n)+1)*A001255(n)`
-/

namespace A133042.P8399384591647489345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * A001255 n

end

end A133042.P8399384591647489345

/-! ## A133042.P4293510908385187293

`A001255(n)*A035363(2*n)`
-/

namespace A133042.P4293510908385187293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n * A035363 (2 * n)

end

end A133042.P4293510908385187293

/-! ## A133042.P14133733777581221225

`A001255(n)*A119620(2*n)`
-/

namespace A133042.P14133733777581221225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n * A119620 (2 * n)

end

end A133042.P14133733777581221225

/-! ## A133042.P16223306020779831099

`(A295341(n)+A000726(n))^3`
-/

namespace A133042.P16223306020779831099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295341 n + A000726 n) ^ 3

end

end A133042.P16223306020779831099

/-! ## A133042.P3254890021574262016

`(A133041(n)-n)*A001255(n)`
-/

namespace A133042.P3254890021574262016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133041 n - (n : ℤ)) * A001255 n

end

end A133042.P3254890021574262016

/-! ## A133042.P2893702780722875079

`A000041(n)/(2/A139582(n))²`
-/

namespace A133042.P2893702780722875079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / (2 / (A139582 n : ℚ)) ^ 2

end

end A133042.P2893702780722875079

/-! ## A133042.P3827124804318450169

`A299474(n)/(2/A000041(n))²`
-/

namespace A133042.P3827124804318450169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 n : ℚ) / (2 / (A000041 n : ℚ)) ^ 2

end

end A133042.P3827124804318450169

/-! ## A133042.P11805744087181108287

`A000041(2*n-n)²*A000041(n)`
-/

namespace A133042.P11805744087181108287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n - n) ^ 2 * A000041 n

end

end A133042.P11805744087181108287

/-!
# A133043: Number of segments needed to draw the spiral of equilateral triangles with side lengths which follow the Padovan sequence.

The programs for A133043, the canonical program `A133043.P7227720313280191988` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133043 has offset 1).

The definition of A133043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133043.P7227720313280191988

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=5, a(2)=6, a(3)=8, a(4)=9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133043

/-- `2*a(n-1)-a(n-2)` -/
def P7227720313280191988.Spec : Prop :=
  ∀ n, P7227720313280191988.a n = A133043 (n + 1)

theorem P7227720313280191988.correct : P7227720313280191988.Spec := by
  intro n
  simp only [A133043, Nat.add_sub_cancel]

end A133043

/-!
# A133044: Area of the spiral of equilateral triangles with side lengths which follow the Padovan sequence, divided by the area of the initial triangle.

The programs for A133044, the canonical program `A133044.P12859027429085819044` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133044 has offset 1).

The definition of A133044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133044.P12859027429085819044

`a(n-1)+a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=11, a(5)=20`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133044

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P12859027429085819044.Spec : Prop :=
  ∀ n, P12859027429085819044.a n = A133044 (n + 1)

theorem P12859027429085819044.correct : P12859027429085819044.Spec := by
  intro n
  simp only [A133044, Nat.add_sub_cancel]

end A133044

/-! ## A133044.P10042604205589617081

`∑[∑[a(n-2)+a(n-3)]²]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A133044.P10042604205589617081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 2) + f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P10042604205589617081

namespace A133044

/-- `∑[∑[a(n-2)+a(n-3)]²]` -/
def P10042604205589617081.Spec : Prop :=
  ∀ n, (P10042604205589617081.a n : ℤ) = A133044 (n + 1)

end A133044

/-! ## A133044.P13138458290416132317

`∑[Δ[a(n-2)-a(n-3)]²]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A133044.P13138458290416132317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 2) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P13138458290416132317

namespace A133044

/-- `∑[Δ[a(n-2)-a(n-3)]²]` -/
def P13138458290416132317.Spec : Prop :=
  ∀ n, P13138458290416132317.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P49585226164053478

`∑[∑[floor(a(n-2)-a(n-3))]²]` with `a(0)=1, a(1)=-2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A133044.P49585226164053478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n f2 =>
  f2 (n - 2) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P49585226164053478

namespace A133044

/-- `∑[∑[floor(a(n-2)-a(n-3))]²]` -/
def P49585226164053478.Spec : Prop :=
  ∀ n, P49585226164053478.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P6192751753735711486

`∑[A133037(n+5)]`
-/

namespace A133044.P6192751753735711486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133037 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P6192751753735711486

namespace A133044

/-- `∑[A133037(n+5)]` -/
def P6192751753735711486.Spec : Prop :=
  ∀ n, P6192751753735711486.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P4139261604242338674

`∑[∑[A000931(n)]²]`
-/

namespace A133044.P4139261604242338674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P4139261604242338674

namespace A133044

/-- `∑[∑[A000931(n)]²]` -/
def P4139261604242338674.Spec : Prop :=
  ∀ n, P4139261604242338674.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P12184737061589066237

`∑[A134816(n+1)²]`
-/

namespace A133044.P12184737061589066237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P12184737061589066237

namespace A133044

/-- `∑[A134816(n+1)²]` -/
def P12184737061589066237.Spec : Prop :=
  ∀ n, P12184737061589066237.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P10144531255280701258

`∑[A182097(n+2)²]`
-/

namespace A133044.P10144531255280701258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P10144531255280701258

namespace A133044

/-- `∑[A182097(n+2)²]` -/
def P10144531255280701258.Spec : Prop :=
  ∀ n, P10144531255280701258.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P3167207533582050779

`∑[A078027(n+7)²]`
-/

namespace A133044.P3167207533582050779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 7) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P3167207533582050779

namespace A133044

/-- `∑[A078027(n+7)²]` -/
def P3167207533582050779.Spec : Prop :=
  ∀ n, P3167207533582050779.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P17326523839678754609

`∑[A133034(n+9)²]`
-/

namespace A133044.P17326523839678754609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 9) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P17326523839678754609

namespace A133044

/-- `∑[A133034(n+9)²]` -/
def P17326523839678754609.Spec : Prop :=
  ∀ n, P17326523839678754609.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P16372755325953702897

`∑[∑[sqrt(A133037(n))]²]`
-/

namespace A133044.P16372755325953702897
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133037 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P16372755325953702897

namespace A133044

/-- `∑[∑[sqrt(A133037(n))]²]` -/
def P16372755325953702897.Spec : Prop :=
  ∀ n, P16372755325953702897.a n = (A133044 (n + 1) : ℝ)

end A133044

/-! ## A133044.P8380453650842169787

`∑[Δ[Δ[A018917(n)]]²]`
-/

namespace A133044.P8380453650842169787
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P8380453650842169787

namespace A133044

/-- `∑[Δ[Δ[A018917(n)]]²]` -/
def P8380453650842169787.Spec : Prop :=
  ∀ n, P8380453650842169787.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P7401865811343162710

`∑[Δ[A077883(n+1)]²]`
-/

namespace A133044.P7401865811343162710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P7401865811343162710

namespace A133044

/-- `∑[Δ[A077883(n+1)]²]` -/
def P7401865811343162710.Spec : Prop :=
  ∀ n, P7401865811343162710.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P13947372145106447870

`∑[Δ[A164001(n+2)]²]`
-/

namespace A133044.P13947372145106447870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P13947372145106447870

namespace A133044

/-- `∑[Δ[A164001(n+2)]²]` -/
def P13947372145106447870.Spec : Prop :=
  ∀ n, P13947372145106447870.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P6084705445738596144

`∑[(1-A052954(n+2))²]`
-/

namespace A133044.P6084705445738596144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A052954 (n + 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P6084705445738596144

namespace A133044

/-- `∑[(1-A052954(n+2))²]` -/
def P6084705445738596144.Spec : Prop :=
  ∀ n, P6084705445738596144.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P10648543359063683867

`∑[A127682(2*n+3)²]`
-/

namespace A133044.P10648543359063683867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P10648543359063683867

namespace A133044

/-- `∑[A127682(2*n+3)²]` -/
def P10648543359063683867.Spec : Prop :=
  ∀ n, P10648543359063683867.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P7380769701892190740

`A302655(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A133044.P7380769701892190740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302655 (2 * n) + a (n - 1)

end

end A133044.P7380769701892190740

namespace A133044

/-- `A302655(2*n)+a(n-1)` -/
def P7380769701892190740.Spec : Prop :=
  ∀ n, P7380769701892190740.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P10878320474781728328

`∑[(A023434(A289207(n))+1)²]`
-/

namespace A133044.P10878320474781728328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023434 (A289207 n).toNat + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P10878320474781728328

namespace A133044

/-- `∑[(A023434(A289207(n))+1)²]` -/
def P10878320474781728328.Spec : Prop :=
  ∀ n, P10878320474781728328.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P6484194241394593390

`∑[∑[A000931(n)]*A134816(n+1)]`
-/

namespace A133044.P6484194241394593390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A134816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133044.P6484194241394593390

namespace A133044

/-- `∑[∑[A000931(n)]*A134816(n+1)]` -/
def P6484194241394593390.Spec : Prop :=
  ∀ n, P6484194241394593390.a n = A133044 (n + 1)

end A133044

/-! ## A133044.P292196677924551708

`A000931(2*n+7)-A000931(n+1)²`
-/

namespace A133044.P292196677924551708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 7) - A000931 (n + 1) ^ 2

end

end A133044.P292196677924551708

namespace A133044

/-- `A000931(2*n+7)-A000931(n+1)²` -/
def P292196677924551708.Spec : Prop :=
  ∀ n, P292196677924551708.a n = A133044 (n + 1)

end A133044

/-!
# A133047: Starting from the standard 12 against 12 starting position in checkers, the sequence gives the number of distinct positions that can arise after n moves.

The programs for A133047, there is no canonical definition to state claims against.
-/

/-! ## A133047.P14519206149582178403

`A000716(2*n)-A337228(A000716(n))`
-/

namespace A133047.P14519206149582178403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 (2 * n) - A337228 (A000716 n).toNat

end

end A133047.P14519206149582178403

/-!
# A133048: Powerback(n): reverse the decimal expansion of n, drop any leading zeros, then apply the powertrain map of A133500 to the resulting number.

The programs for A133048, there is no canonical definition to state claims against.
-/

/-! ## A133048.P16090003104004979835

`A133500(A004086(n))`
-/

namespace A133048.P16090003104004979835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A004086 n).toNat

end

end A133048.P16090003104004979835

/-! ## A133048.P13718110797866415824

`A133500(A056964(n)-n)`
-/

namespace A133048.P13718110797866415824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A056964 n - (n : ℤ)).toNat

end

end A133048.P13718110797866415824

/-! ## A133048.P14446259187280556190

`A133500(xor(n, A256756(n)))`
-/

namespace A133048.P14446259187280556190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (Int.xor (n : ℤ) (A256756 n)).toNat

end

end A133048.P14446259187280556190

/-! ## A133048.P17222007847555269229

`A133500(A160927(n+1)-(n+1))`
-/

namespace A133048.P17222007847555269229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A160927 (n + 1) - (n + 1 : ℤ)).toNat

end

end A133048.P17222007847555269229

/-! ## A133048.P9438789626432581563

`A133500(A340479(n)-A007953(n))`
-/

namespace A133048.P9438789626432581563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A340479 n - A007953 n).toNat

end

end A133048.P9438789626432581563

/-! ## A133048.P5729881851591319731

`A133500(A160929(n+1)-A061205(n))`
-/

namespace A133048.P5729881851591319731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A160929 (n + 1) - A061205 n).toNat

end

end A133048.P5729881851591319731

/-! ## A133048.P8836953397179823028

`A133500(gcd(A061205(n), A160929(n+1)))`
-/

namespace A133048.P8836953397179823028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (Int.gcd (A061205 n) (A160929 (n + 1)))

end

end A133048.P8836953397179823028

/-! ## A133048.P6454032504388407887

`A133500(A004093(5*n))`
-/

namespace A133048.P6454032504388407887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A004093 (5 * n)).toNat

end

end A133048.P6454032504388407887

/-!
# A133049: Squares of Mersenne primes A000668(n).

The programs for A133049, there is no canonical definition to state claims against.
-/

/-! ## A133049.P9637796978108404054

`A000668(n+1)²`
-/

namespace A133049.P9637796978108404054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) ^ 2

end

end A133049.P9637796978108404054

/-! ## A133049.P1101583658640796116

`A343733(n+2)²`
-/

namespace A133049.P1101583658640796116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2) ^ 2

end

end A133049.P1101583658640796116

/-! ## A133049.P3555006490076772994

`record[A249780(n+2)]`
-/

namespace A133049.P3555006490076772994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249780 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133049.P3555006490076772994

/-! ## A133049.P14697595838539915629

`A169628(∑[n+1])²`
-/

namespace A133049.P14697595838539915629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133049.P14697595838539915629

/-! ## A133049.P10840761351425275772

`record[A016047(n+1)²]`
-/

namespace A133049.P10840761351425275772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016047 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133049.P10840761351425275772

/-!
# A133050: Cubes of Mersenne primes.

The programs for A133050, there is no canonical definition to state claims against.
-/

/-! ## A133050.P15808883983246369062

`A000668(n+1)^3`
-/

namespace A133050.P15808883983246369062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) ^ 3

end

end A133050.P15808883983246369062

/-! ## A133050.P16769421472521904134

`A343733(n+2)^3`
-/

namespace A133050.P16769421472521904134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2) ^ 3

end

end A133050.P16769421472521904134

/-! ## A133050.P10766193968197878506

`sqrt(A133049(n+1))^3`
-/

namespace A133050.P10766193968197878506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133049 (n + 1) : ℝ) ^ 3

end

end A133050.P10766193968197878506

/-! ## A133050.P11601197557704315696

`A169628(∑[n+1])^3`
-/

namespace A133050.P11601197557704315696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133050.P11601197557704315696

/-! ## A133050.P7883592615672915430

`record[A016047(n+1)^3]`
-/

namespace A133050.P7883592615672915430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016047 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133050.P7883592615672915430

/-!
# A133051: Squares of perfect numbers.

The programs for A133051, there is no canonical definition to state claims against.
-/

/-! ## A133051.P1939984823728510941

`A000396(n+1)²`
-/

namespace A133051.P1939984823728510941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) ^ 2

end

end A133051.P1939984823728510941

/-! ## A133051.P10525463479068260885

`A330837(n+1)/4`
-/

namespace A133051.P10525463479068260885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330837 (n + 1) : ℚ) / 4

end

end A133051.P10525463479068260885

/-! ## A133051.P10307129089753688257

`A330817(n+1)/8`
-/

namespace A133051.P10307129089753688257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330817 (n + 1) : ℚ) / 8

end

end A133051.P10307129089753688257

/-! ## A133051.P4729847413814552002

`Δ[A185351(2^n)]²`
-/

namespace A133051.P4729847413814552002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133051.P4729847413814552002

/-!
# A133052: 

The programs for A133052, there is no canonical definition to state claims against.
-/

/-! ## A133052.P1369919768251917978

`A000396(n+1)^3`
-/

namespace A133052.P1369919768251917978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) ^ 3

end

end A133052.P1369919768251917978

/-! ## A133052.P10270972949906510846

`Δ[A185351(2^n)]^3`
-/

namespace A133052.P10270972949906510846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133052.P10270972949906510846

/-! ## A133052.P7648244771401026636

`(A135627(n+1)+1)^3`
-/

namespace A133052.P7648244771401026636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135627 (n + 1) + 1) ^ 3

end

end A133052.P7648244771401026636

/-!
# A133053: Squares of Motzkin numbers.

The programs for A133053, the canonical program `A133053.P7872907574992418741` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133053 has offset 0).

The definition of A133053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133053.P7872907574992418741

`A001006(n)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133053

/-- `A001006(n)²` -/
def P7872907574992418741.Spec : Prop :=
  ∀ n, P7872907574992418741.a n = A133053 n

theorem P7872907574992418741.correct : P7872907574992418741.Spec := by
  intro n
  simp only [A133053]

end A133053

/-! ## A133053.P12276673083940426961

`A064189(∑[n])²`
-/

namespace A133053.P12276673083940426961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133053.P12276673083940426961

namespace A133053

/-- `A064189(∑[n])²` -/
def P12276673083940426961.Spec : Prop :=
  ∀ n, P12276673083940426961.a n = A133053 n

end A133053

/-! ## A133053.P15539675848984774661

`A064191(∑[n])²`
-/

namespace A133053.P15539675848984774661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064191 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133053.P15539675848984774661

namespace A133053

/-- `A064191(∑[n])²` -/
def P15539675848984774661.Spec : Prop :=
  ∀ n, P15539675848984774661.a n = A133053 n

end A133053

/-! ## A133053.P13027146859921672130

`A064645(∑[n])²`
-/

namespace A133053.P13027146859921672130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133053.P13027146859921672130

namespace A133053

/-- `A064645(∑[n])²` -/
def P13027146859921672130.Spec : Prop :=
  ∀ n, P13027146859921672130.a n = A133053 n

end A133053

/-! ## A133053.P16934463069756889370

`A144025(∑[n])²`
-/

namespace A133053.P16934463069756889370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144025 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133053.P16934463069756889370

namespace A133053

/-- `A144025(∑[n])²` -/
def P16934463069756889370.Spec : Prop :=
  ∀ n, P16934463069756889370.a n = A133053 n

end A133053

/-! ## A133053.P1419978474270447727

`Δ[A097332(n)]²`
-/

namespace A133053.P1419978474270447727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133053.P1419978474270447727

namespace A133053

/-- `Δ[A097332(n)]²` -/
def P1419978474270447727.Spec : Prop :=
  ∀ n, P1419978474270447727.a n = A133053 n

end A133053

/-! ## A133053.P8075058762319921949

`A166587(n+1)²`
-/

namespace A133053.P8075058762319921949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1) ^ 2

end

end A133053.P8075058762319921949

namespace A133053

/-- `A166587(n+1)²` -/
def P8075058762319921949.Spec : Prop :=
  ∀ n, P8075058762319921949.a n = A133053 n

end A133053

/-! ## A133053.P2692772666070552577

`A086246(n+2)²`
-/

namespace A133053.P2692772666070552577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) ^ 2

end

end A133053.P2692772666070552577

namespace A133053

/-- `A086246(n+2)²` -/
def P2692772666070552577.Spec : Prop :=
  ∀ n, P2692772666070552577.a n = A133053 n

end A133053

/-! ## A133053.P357212968213800722

`A168049(n+2)²`
-/

namespace A133053.P357212968213800722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) ^ 2

end

end A133053.P357212968213800722

namespace A133053

/-- `A168049(n+2)²` -/
def P357212968213800722.Spec : Prop :=
  ∀ n, P357212968213800722.a n = A133053 n

end A133053

/-! ## A133053.P4473289796230093660

`A168051(n+2)²`
-/

namespace A133053.P4473289796230093660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 2) ^ 2

end

end A133053.P4473289796230093660

namespace A133053

/-- `A168051(n+2)²` -/
def P4473289796230093660.Spec : Prop :=
  ∀ n, P4473289796230093660.a n = A133053 n

end A133053

/-! ## A133053.P12134385851425809192

`A292440(n+2)²`
-/

namespace A133053.P12134385851425809192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 2) ^ 2

end

end A133053.P12134385851425809192

namespace A133053

/-- `A292440(n+2)²` -/
def P12134385851425809192.Spec : Prop :=
  ∀ n, P12134385851425809192.a n = A133053 n

end A133053

/-! ## A133053.P15509483897375868147

`A396585(∑[n]+n)`
-/

namespace A133053.P15509483897375868147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396585 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A133053.P15509483897375868147

namespace A133053

/-- `A396585(∑[n]+n)` -/
def P15509483897375868147.Spec : Prop :=
  ∀ n, P15509483897375868147.a n = A133053 n

end A133053

/-! ## A133053.P16392505871953705956

`∏[ratio[A166587(n)]²]`
-/

namespace A133053.P16392505871953705956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133053.P16392505871953705956

namespace A133053

/-- `∏[ratio[A166587(n)]²]` -/
def P16392505871953705956.Spec : Prop :=
  ∀ n, P16392505871953705956.a n = (A133053 n : ℚ)

end A133053

/-! ## A133053.P17521694244687140753

`A091187(∑[n+1])²`
-/

namespace A133053.P17521694244687140753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133053.P17521694244687140753

namespace A133053

/-- `A091187(∑[n+1])²` -/
def P17521694244687140753.Spec : Prop :=
  ∀ n, P17521694244687140753.a n = A133053 n

end A133053

/-! ## A133053.P12642003273269710120

`A091836(∑[n+1])²`
-/

namespace A133053.P12642003273269710120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133053.P12642003273269710120

namespace A133053

/-- `A091836(∑[n+1])²` -/
def P12642003273269710120.Spec : Prop :=
  ∀ n, P12642003273269710120.a n = A133053 n

end A133053

/-! ## A133053.P4656912066539854337

`A091869(∑[n]+1)²`
-/

namespace A133053.P4656912066539854337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A133053.P4656912066539854337

namespace A133053

/-- `A091869(∑[n]+1)²` -/
def P4656912066539854337.Spec : Prop :=
  ∀ n, P4656912066539854337.a n = A133053 n

end A133053

/-! ## A133053.P17934018254579503526

`A136537(∑[n]+1)²`
-/

namespace A133053.P17934018254579503526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136537 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A133053.P17934018254579503526

namespace A133053

/-- `A136537(∑[n]+1)²` -/
def P17934018254579503526.Spec : Prop :=
  ∀ n, P17934018254579503526.a n = A133053 n

end A133053

/-! ## A133053.P17826337505006404493

`A136787(∑[n]+1)²`
-/

namespace A133053.P17826337505006404493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136787 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A133053.P17826337505006404493

namespace A133053

/-- `A136787(∑[n]+1)²` -/
def P17826337505006404493.Spec : Prop :=
  ∀ n, P17826337505006404493.a n = A133053 n

end A133053

/-! ## A133053.P18040050664564761500

`A247364(∑[n+1])²`
-/

namespace A133053.P18040050664564761500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133053.P18040050664564761500

namespace A133053

/-- `A247364(∑[n+1])²` -/
def P18040050664564761500.Spec : Prop :=
  ∀ n, P18040050664564761500.a n = A133053 n

end A133053

/-! ## A133053.P117972975761615975

`Δ[A099323(n+1)]²`
-/

namespace A133053.P117972975761615975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133053.P117972975761615975

namespace A133053

/-- `Δ[A099323(n+1)]²` -/
def P117972975761615975.Spec : Prop :=
  ∀ n, P117972975761615975.a n = A133053 n

end A133053

/-!
# A133054: Cubes of Motzkin numbers.

The programs for A133054, the canonical program `A133054.P4983043306368321640` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133054 has offset 0).

The definition of A133054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133054.P4983043306368321640

`A001006(n)^3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133054

/-- `A001006(n)^3` -/
def P4983043306368321640.Spec : Prop :=
  ∀ n, P4983043306368321640.a n = A133054 n

theorem P4983043306368321640.correct : P4983043306368321640.Spec := by
  intro n
  simp only [A133054]

end A133054

/-! ## A133054.P5049253182515683548

`sqrt(A133053(n))^3`
-/

namespace A133054.P5049253182515683548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133053 n : ℝ) ^ 3

end

end A133054.P5049253182515683548

namespace A133054

/-- `sqrt(A133053(n))^3` -/
def P5049253182515683548.Spec : Prop :=
  ∀ n, P5049253182515683548.a n = (A133054 n : ℝ)

end A133054

/-! ## A133054.P10587185612801046367

`A064189(∑[n])^3`
-/

namespace A133054.P10587185612801046367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133054.P10587185612801046367

namespace A133054

/-- `A064189(∑[n])^3` -/
def P10587185612801046367.Spec : Prop :=
  ∀ n, P10587185612801046367.a n = A133054 n

end A133054

/-! ## A133054.P6837949789526109183

`A064191(∑[n])^3`
-/

namespace A133054.P6837949789526109183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064191 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133054.P6837949789526109183

namespace A133054

/-- `A064191(∑[n])^3` -/
def P6837949789526109183.Spec : Prop :=
  ∀ n, P6837949789526109183.a n = A133054 n

end A133054

/-! ## A133054.P17665066794179849406

`A064645(∑[n])^3`
-/

namespace A133054.P17665066794179849406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133054.P17665066794179849406

namespace A133054

/-- `A064645(∑[n])^3` -/
def P17665066794179849406.Spec : Prop :=
  ∀ n, P17665066794179849406.a n = A133054 n

end A133054

/-! ## A133054.P16546024705309415820

`A144025(∑[n])^3`
-/

namespace A133054.P16546024705309415820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144025 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133054.P16546024705309415820

namespace A133054

/-- `A144025(∑[n])^3` -/
def P16546024705309415820.Spec : Prop :=
  ∀ n, P16546024705309415820.a n = A133054 n

end A133054

/-! ## A133054.P1950376135959379825

`A258709(∑[n])^3`
-/

namespace A133054.P1950376135959379825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A133054.P1950376135959379825

namespace A133054

/-- `A258709(∑[n])^3` -/
def P1950376135959379825.Spec : Prop :=
  ∀ n, P1950376135959379825.a n = A133054 n

end A133054

/-! ## A133054.P16799730032625571226

`Δ[A097332(n)]^3`
-/

namespace A133054.P16799730032625571226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A133054.P16799730032625571226

namespace A133054

/-- `Δ[A097332(n)]^3` -/
def P16799730032625571226.Spec : Prop :=
  ∀ n, P16799730032625571226.a n = A133054 n

end A133054

/-! ## A133054.P3555804523507841357

`A086246(n+2)^3`
-/

namespace A133054.P3555804523507841357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) ^ 3

end

end A133054.P3555804523507841357

namespace A133054

/-- `A086246(n+2)^3` -/
def P3555804523507841357.Spec : Prop :=
  ∀ n, P3555804523507841357.a n = A133054 n

end A133054

/-! ## A133054.P8232209328916867296

`A168049(n+2)^3`
-/

namespace A133054.P8232209328916867296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) ^ 3

end

end A133054.P8232209328916867296

namespace A133054

/-- `A168049(n+2)^3` -/
def P8232209328916867296.Spec : Prop :=
  ∀ n, P8232209328916867296.a n = A133054 n

end A133054

/-!
# A133059: Records in A133048.

The programs for A133059, there is no canonical definition to state claims against.
-/

/-! ## A133059.P11140409298434798927

`record[A133048(n)]`
-/

namespace A133059.P11140409298434798927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133059.P11140409298434798927

/-! ## A133059.P9116755577052012107

`record[A133500(A004086(n))]`
-/

namespace A133059.P9116755577052012107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133059.P9116755577052012107

/-! ## A133059.P13567435782942457389

`A133048(A133134(n+1))`
-/

namespace A133059.P13567435782942457389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (A133134 (n + 1)).toNat

end

end A133059.P13567435782942457389

/-! ## A133059.P6921314246804605347

`record[A175420(A118759(n))]`
-/

namespace A133059.P6921314246804605347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175420 (A118759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133059.P6921314246804605347

/-! ## A133059.P6691099102463919831

`record[A175420(n)%A084422(n)]`
-/

namespace A133059.P6691099102463919831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175420 n) (A084422 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133059.P6691099102463919831

/-!
# A133061: a(n) = 5*p^5 - 3*p^3 - 2*p^2, where p = prime(n).

The programs for A133061, the canonical program `A133061.P6463067667281600221` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133061 has offset 1).

The definition of A133061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133061.P6463067667281600221

`A133062(n+1)-A069262(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133061

/-- `A133062(n+1)-A069262(n+1)` -/
def P6463067667281600221.Spec : Prop :=
  ∀ n, P6463067667281600221.a n = A133061 (n + 1)

theorem P6463067667281600221.correct : P6463067667281600221.Spec := by
  intro n
  simp only [A133061, Nat.add_sub_cancel]

end A133061

/-! ## A133061.P11311112662251733038

`A134630(p?[comp[n²]])`
-/

namespace A133061.P11311112662251733038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A133061.P11311112662251733038

namespace A133061

/-- `A134630(p?[comp[n²]])` -/
def P11311112662251733038.Spec : Prop :=
  ∀ n, P11311112662251733038.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P3796043921231620601

`A134630(Δ[A007504(n)])`
-/

namespace A133061.P3796043921231620601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (f1 (n + 1) - f1 n).toNat

end

end A133061.P3796043921231620601

namespace A133061

/-- `A134630(Δ[A007504(n)])` -/
def P3796043921231620601.Spec : Prop :=
  ∀ n, P3796043921231620601.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P1320202607320312669

`A134630(record[A051698(n)])`
-/

namespace A133061.P1320202607320312669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133061.P1320202607320312669

namespace A133061

/-- `A134630(record[A051698(n)])` -/
def P1320202607320312669.Spec : Prop :=
  ∀ n, P1320202607320312669.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P10376987773627172400

`A134630(A000040(n+1))`
-/

namespace A133061.P10376987773627172400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (A000040 (n + 1)).toNat

end

end A133061.P10376987773627172400

namespace A133061

/-- `A134630(A000040(n+1))` -/
def P10376987773627172400.Spec : Prop :=
  ∀ n, P10376987773627172400.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P12443052594104866857

`A134630(A008578(n+2))`
-/

namespace A133061.P12443052594104866857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (A008578 (n + 2)).toNat

end

end A133061.P12443052594104866857

namespace A133061

/-- `A134630(A008578(n+2))` -/
def P12443052594104866857.Spec : Prop :=
  ∀ n, P12443052594104866857.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P926760740370761359

`A134630(A182986(n+2))`
-/

namespace A133061.P926760740370761359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (A182986 (n + 2)).toNat

end

end A133061.P926760740370761359

namespace A133061

/-- `A134630(A182986(n+2))` -/
def P926760740370761359.Spec : Prop :=
  ∀ n, P926760740370761359.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P13670342707148407599

`A134630(eq[1, A032741(n)])`
-/

namespace A133061.P13670342707148407599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133061.P13670342707148407599

namespace A133061

/-- `A134630(eq[1, A032741(n)])` -/
def P13670342707148407599.Spec : Prop :=
  ∀ n, P13670342707148407599.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P13494780981336849292

`A134630(record[A006530(n+2)])`
-/

namespace A133061.P13494780981336849292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133061.P13494780981336849292

namespace A133061

/-- `A134630(record[A006530(n+2)])` -/
def P13494780981336849292.Spec : Prop :=
  ∀ n, P13494780981336849292.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P7653783011792168224

`A134630(record[A014963(n+2)])`
-/

namespace A133061.P7653783011792168224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133061.P7653783011792168224

namespace A133061

/-- `A134630(record[A014963(n+2)])` -/
def P7653783011792168224.Spec : Prop :=
  ∀ n, P7653783011792168224.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P17503189625888287015

`A134630(record[A020639(n+2)])`
-/

namespace A133061.P17503189625888287015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133061.P17503189625888287015

namespace A133061

/-- `A134630(record[A020639(n+2)])` -/
def P17503189625888287015.Spec : Prop :=
  ∀ n, P17503189625888287015.a n = A133061 (n + 1)

end A133061

/-! ## A133061.P6731484946239986915

`A134630(A007504(n+1)-A007504(n))`
-/

namespace A133061.P6731484946239986915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134630 (A007504 (n + 1) - A007504 n).toNat

end

end A133061.P6731484946239986915

namespace A133061

/-- `A134630(A007504(n+1)-A007504(n))` -/
def P6731484946239986915.Spec : Prop :=
  ∀ n, P6731484946239986915.a n = A133061 (n + 1)

end A133061

/-!
# A133062: a(n) = 5*p^5 - 3*p^3 + 2*p^2 with p = prime(n).

The programs for A133062, the canonical program `A133062.P15933548885244344016` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133062 has offset 1).

The definition of A133062 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133062.P15933548885244344016

`5*A050997(n+1)-3*A030078(n+1)+2*A001248(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133062

/-- `5*A050997(n+1)-3*A030078(n+1)+2*A001248(n+1)` -/
def P15933548885244344016.Spec : Prop :=
  ∀ n, P15933548885244344016.a n = A133062 (n + 1)

theorem P15933548885244344016.correct : P15933548885244344016.Spec := by
  intro n
  simp only [A133062, Nat.add_sub_cancel]

end A133062

/-! ## A133062.P17258159900105719139

`A134631(A000040(n+1))`
-/

namespace A133062.P17258159900105719139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134631 (A000040 (n + 1)).toNat

end

end A133062.P17258159900105719139

namespace A133062

/-- `A134631(A000040(n+1))` -/
def P17258159900105719139.Spec : Prop :=
  ∀ n, P17258159900105719139.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P2027306438874400178

`A133061(n+1)+A069262(n+1)`
-/

namespace A133062.P2027306438874400178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133061 (n + 1) + A069262 (n + 1)

end

end A133062.P2027306438874400178

namespace A133062

/-- `A133061(n+1)+A069262(n+1)` -/
def P2027306438874400178.Spec : Prop :=
  ∀ n, P2027306438874400178.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P5203537623114143268

`A133061(n+1)+A100484(n+1)²`
-/

namespace A133062.P5203537623114143268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133061 (n + 1) + A100484 (n + 1) ^ 2

end

end A133062.P5203537623114143268

namespace A133062

/-- `A133061(n+1)+A100484(n+1)²` -/
def P5203537623114143268.Spec : Prop :=
  ∀ n, P5203537623114143268.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P8015212565781934710

`A133061(n+1)+Δ[2*A007504(n)]²`
-/

namespace A133062.P8015212565781934710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133061 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A133062.P8015212565781934710

namespace A133062

/-- `A133061(n+1)+Δ[2*A007504(n)]²` -/
def P8015212565781934710.Spec : Prop :=
  ∀ n, P8015212565781934710.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P12411807425223196217

`A133061(n+1)+(A001749(n+1)/2)²`
-/

namespace A133062.P12411807425223196217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133061 (n + 1) : ℚ) + ((A001749 (n + 1) : ℚ) / 2) ^ 2

end

end A133062.P12411807425223196217

namespace A133062

/-- `A133061(n+1)+(A001749(n+1)/2)²` -/
def P12411807425223196217.Spec : Prop :=
  ∀ n, P12411807425223196217.a n = (A133062 (n + 1) : ℚ)

end A133062

/-! ## A133062.P9956944997491888106

`A133061(n+1)+(2*A008578(n+2))²`
-/

namespace A133062.P9956944997491888106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133061 (n + 1) + (2 * A008578 (n + 2)) ^ 2

end

end A133062.P9956944997491888106

namespace A133062

/-- `A133061(n+1)+(2*A008578(n+2))²` -/
def P9956944997491888106.Spec : Prop :=
  ∀ n, P9956944997491888106.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P15648949868301379473

`A134631(p?[comp[n²]])`
-/

namespace A133062.P15648949868301379473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134631 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A133062.P15648949868301379473

namespace A133062

/-- `A134631(p?[comp[n²]])` -/
def P15648949868301379473.Spec : Prop :=
  ∀ n, P15648949868301379473.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P11474143946979395605

`A134631(A008578(n+2))`
-/

namespace A133062.P11474143946979395605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134631 (A008578 (n + 2)).toNat

end

end A133062.P11474143946979395605

namespace A133062

/-- `A134631(A008578(n+2))` -/
def P11474143946979395605.Spec : Prop :=
  ∀ n, P11474143946979395605.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P12736164931564490743

`A134631(A182986(n+2))`
-/

namespace A133062.P12736164931564490743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134631 (A182986 (n + 2)).toNat

end

end A133062.P12736164931564490743

namespace A133062

/-- `A134631(A182986(n+2))` -/
def P12736164931564490743.Spec : Prop :=
  ∀ n, P12736164931564490743.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P8308176619131185429

`A134631(record[A006530(n+2)])`
-/

namespace A133062.P8308176619131185429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134631 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133062.P8308176619131185429

namespace A133062

/-- `A134631(record[A006530(n+2)])` -/
def P8308176619131185429.Spec : Prop :=
  ∀ n, P8308176619131185429.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P4313862368433617091

`A134631(record[A014963(n+2)])`
-/

namespace A133062.P4313862368433617091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134631 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133062.P4313862368433617091

namespace A133062

/-- `A134631(record[A014963(n+2)])` -/
def P4313862368433617091.Spec : Prop :=
  ∀ n, P4313862368433617091.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P14327109716072194798

`A134631(record[A020639(n+2)])`
-/

namespace A133062.P14327109716072194798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134631 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133062.P14327109716072194798

namespace A133062

/-- `A134631(record[A020639(n+2)])` -/
def P14327109716072194798.Spec : Prop :=
  ∀ n, P14327109716072194798.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P5022256307555496816

`A133061(n+1)+A016742(Δ[A007504(n)])`
-/

namespace A133062.P5022256307555496816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133061 (n + 1) + A016742 (f1 (n + 1) - f1 n).toNat

end

end A133062.P5022256307555496816

namespace A133062

/-- `A133061(n+1)+A016742(Δ[A007504(n)])` -/
def P5022256307555496816.Spec : Prop :=
  ∀ n, P5022256307555496816.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P6390631152997497535

`A134631(A030078(n+1)/A001248(n+1))`
-/

namespace A133062.P6390631152997497535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134631 (SequenceMachineLib.roundAway ((A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ))).toNat

end

end A133062.P6390631152997497535

namespace A133062

/-- `A134631(A030078(n+1)/A001248(n+1))` -/
def P6390631152997497535.Spec : Prop :=
  ∀ n, P6390631152997497535.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P5552960701204702895

`A133092(2*A008578(n+2))+A133061(n+1)`
-/

namespace A133062.P5552960701204702895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133092 (2 * A008578 (n + 2)).toNat + A133061 (n + 1)

end

end A133062.P5552960701204702895

namespace A133062

/-- `A133092(2*A008578(n+2))+A133061(n+1)` -/
def P5552960701204702895.Spec : Prop :=
  ∀ n, P5552960701204702895.a n = A133062 (n + 1)

end A133062

/-! ## A133062.P6253208396472356602

`A133061(n+1)+A002620(A001749(n+1))`
-/

namespace A133062.P6253208396472356602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133061 (n + 1) + A002620 (A001749 (n + 1)).toNat

end

end A133062.P6253208396472356602

namespace A133062

/-- `A133061(n+1)+A002620(A001749(n+1))` -/
def P6253208396472356602.Spec : Prop :=
  ∀ n, P6253208396472356602.a n = A133062 (n + 1)

end A133062

/-!
# A133063: a(n) = 5*p^5 + 3*p^3 - 2*p^2, where p = prime(n).

The programs for A133063, there is no canonical definition to state claims against.
-/

/-! ## A133063.P14083284110955826098

`A133064(n+1)-A069262(n+1)`
-/

namespace A133063.P14083284110955826098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133064 (n + 1) - A069262 (n + 1)

end

end A133063.P14083284110955826098

/-! ## A133063.P4919361275561248401

`A134632(p?[comp[n²]])`
-/

namespace A133063.P4919361275561248401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A133063.P4919361275561248401

/-! ## A133063.P13509295098024767455

`A134632(Δ[A007504(n)])`
-/

namespace A133063.P13509295098024767455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (f1 (n + 1) - f1 n).toNat

end

end A133063.P13509295098024767455

/-! ## A133063.P11675895647781783306

`A134632(record[A051698(n)])`
-/

namespace A133063.P11675895647781783306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133063.P11675895647781783306

/-! ## A133063.P10970036517491382433

`A134632(A000040(n+1))`
-/

namespace A133063.P10970036517491382433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (A000040 (n + 1)).toNat

end

end A133063.P10970036517491382433

/-! ## A133063.P9991404192452050809

`A134632(A008578(n+2))`
-/

namespace A133063.P9991404192452050809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (A008578 (n + 2)).toNat

end

end A133063.P9991404192452050809

/-! ## A133063.P13809293187974799121

`A134632(A182986(n+2))`
-/

namespace A133063.P13809293187974799121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (A182986 (n + 2)).toNat

end

end A133063.P13809293187974799121

/-! ## A133063.P11809243710006242838

`A134632(eq[1, A302055(n)])`
-/

namespace A133063.P11809243710006242838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133063.P11809243710006242838

/-! ## A133063.P17151310245339770724

`A134632(record[A006530(n+2)])`
-/

namespace A133063.P17151310245339770724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133063.P17151310245339770724

/-! ## A133063.P325594342783573027

`A134632(record[A014963(n+2)])`
-/

namespace A133063.P325594342783573027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133063.P325594342783573027

/-! ## A133063.P14726084701981092233

`A134632(record[A020639(n+2)])`
-/

namespace A133063.P14726084701981092233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133063.P14726084701981092233

/-! ## A133063.P4009234748055949555

`A134632(A006093(n+1)+1)`
-/

namespace A133063.P4009234748055949555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (A006093 (n + 1) + 1).toNat

end

end A133063.P4009234748055949555

/-! ## A133063.P15655999390454416645

`A134632(A007504(n+1)-A007504(n))`
-/

namespace A133063.P15655999390454416645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134632 (A007504 (n + 1) - A007504 n).toNat

end

end A133063.P15655999390454416645

/-!
# A133064: a(n) = 5*p^5 + 3*p^3 + 2*p^2, where p = prime(n).

The programs for A133064, there is no canonical definition to state claims against.
-/

/-! ## A133064.P15561533441445075181

`A133063(n+1)+A069262(n+1)`
-/

namespace A133064.P15561533441445075181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133063 (n + 1) + A069262 (n + 1)

end

end A133064.P15561533441445075181

/-! ## A133064.P4650486124001814594

`A134633(p?[comp[n²]])`
-/

namespace A133064.P4650486124001814594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134633 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A133064.P4650486124001814594

/-! ## A133064.P4353707669302320057

`A134633(A000040(n+1))`
-/

namespace A133064.P4353707669302320057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134633 (A000040 (n + 1)).toNat

end

end A133064.P4353707669302320057

/-! ## A133064.P7319121392836607748

`A134633(A008578(n+2))`
-/

namespace A133064.P7319121392836607748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134633 (A008578 (n + 2)).toNat

end

end A133064.P7319121392836607748

/-! ## A133064.P6511750564831118716

`A134633(A182986(n+2))`
-/

namespace A133064.P6511750564831118716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134633 (A182986 (n + 2)).toNat

end

end A133064.P6511750564831118716

/-! ## A133064.P14685924614947125269

`A134633(record[A006530(n+2)])`
-/

namespace A133064.P14685924614947125269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133064.P14685924614947125269

/-! ## A133064.P9672118009230104413

`A134633(record[A014963(n+2)])`
-/

namespace A133064.P9672118009230104413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133064.P9672118009230104413

/-! ## A133064.P14713649524487109244

`A134633(record[A020639(n+2)])`
-/

namespace A133064.P14713649524487109244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133064.P14713649524487109244

/-!
# A133067: Perfect numbers divided by 2, minus 1.

The programs for A133067, there is no canonical definition to state claims against.
-/

/-! ## A133067.P10661903873120979026

`A000396(n+1)/2-1`
-/

namespace A133067.P10661903873120979026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) : ℚ) / 2 - 1

end

end A133067.P10661903873120979026

/-! ## A133067.P426485349186281754

`A133028(n+1)-1`
-/

namespace A133067.P426485349186281754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133028 (n + 1) - 1

end

end A133067.P426485349186281754

/-! ## A133067.P9945784069219107785

`floor(A135627(n+1)/2)`
-/

namespace A133067.P9945784069219107785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135627 (n + 1) : ℚ) / 2⌋

end

end A133067.P9945784069219107785

/-! ## A133067.P11412719767304129352

`(A135629(n+1)-3)/2`
-/

namespace A133067.P11412719767304129352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135629 (n + 1) - 3 : ℚ) / 2

end

end A133067.P11412719767304129352

/-! ## A133067.P15979669627272484914

`A139256(n+1)/4-1`
-/

namespace A133067.P15979669627272484914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139256 (n + 1) : ℚ) / 4 - 1

end

end A133067.P15979669627272484914

/-!
# A133068: Number of surjections from an n-element set to an eight-element set.

The programs for A133068, there is no canonical definition to state claims against.
-/

/-! ## A133068.P1527755828331275466

`A131689(eq[8, A002262(n)])`
-/

namespace A133068.P1527755828331275466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133068.P1527755828331275466

/-! ## A133068.P826391520240889550

`A019538(A000096(n+6)+9)`
-/

namespace A133068.P826391520240889550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A000096 (n + 6) + 9).toNat

end

end A133068.P826391520240889550

/-! ## A133068.P5091645043503762685

`A131689(A000217(n+8)+8)`
-/

namespace A133068.P5091645043503762685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A000217 (n + 8) + 8).toNat

end

end A133068.P5091645043503762685

/-! ## A133068.P9398615884755814818

`A131689(eq[7, A327844(n+1)])`
-/

namespace A133068.P9398615884755814818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133068.P9398615884755814818

/-! ## A133068.P9266444546055399648

`A131689(eq[8, A144328(n+1)])`
-/

namespace A133068.P9266444546055399648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133068.P9266444546055399648

/-! ## A133068.P13124368039473776529

`A131689(eq[9, A002260(n+1)])`
-/

namespace A133068.P13124368039473776529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133068.P13124368039473776529

/-! ## A133068.P16119151601292347943

`A131689(eq[9, A134868(n+1)])`
-/

namespace A133068.P16119151601292347943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133068.P16119151601292347943

/-!
# A133069: Successive digits of twin primes A001097.

The programs for A133069, there is no canonical definition to state claims against.
-/

/-! ## A133069.P13120273300658896488

`A033308(∏{p}[n+1, #*val(n+1, #)]^A261494(n))`
-/

namespace A133069.P13120273300658896488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ) ^ (A261494 n : ℤ))).toNat

end

end A133069.P13120273300658896488

/-! ## A133069.P14420171460711808740

`A033308(A043320(n+1)^A261494(n))`
-/

namespace A133069.P14420171460711808740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.roundAway ((A043320 (n + 1) : ℚ) ^ (A261494 n : ℤ))).toNat

end

end A133069.P14420171460711808740

/-! ## A133069.P17267048669763837160

`A033308(A043320(n+1)^A305962(n))`
-/

namespace A133069.P17267048669763837160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.roundAway ((A043320 (n + 1) : ℚ) ^ (A305962 n : ℤ))).toNat

end

end A133069.P17267048669763837160

/-! ## A133069.P14830449433104980657

`A033308(A187829(n+1)^A261494(n))`
-/

namespace A133069.P14830449433104980657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.roundAway ((A187829 (n + 1) : ℚ) ^ (A261494 n : ℤ))).toNat

end

end A133069.P14830449433104980657

/-!
# A133070: a(n) = n^5 - n^3 - n^2.

The programs for A133070, the canonical program `A133070.P9643557693333248287` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133070 has offset 0).

The definition of A133070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^3-n²` (program `A133070.P9643557693333248287`, by `A133070.P9643557693333248287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133070.P9643557693333248287

`n^5-n^3-n²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133070

/-- `n^5-n^3-n²` -/
def P9643557693333248287.Spec : Prop :=
  ∀ n, P9643557693333248287.a n = A133070 n

theorem P9643557693333248287.correct : P9643557693333248287.Spec := by
  intro n
  simp only [A133070]

end A133070

/-! ## A133070.P13910563429531276810

`n*(2*C(n², 2)-n)`
-/

namespace A133070.P13910563429531276810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * Nat.choose (n ^ 2) 2 : ℤ) - (n : ℤ))

end

end A133070.P13910563429531276810

namespace A133070

/-- `n*(2*C(n², 2)-n)` -/
def P13910563429531276810.Spec : Prop :=
  ∀ n, P13910563429531276810.a n = A133070 n

end A133070

/-! ## A133070.P13842219064896337937

`n*(A060886(n)-(n+1))`
-/

namespace A133070.P13842219064896337937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A060886 n - (n + 1 : ℤ))

end

end A133070.P13842219064896337937

namespace A133070

/-- `n*(A060886(n)-(n+1))` -/
def P13842219064896337937.Spec : Prop :=
  ∀ n, P13842219064896337937.a n = A133070 n

end A133070

/-! ## A133070.P9509971987954942489

`n*(n²²-A002378(n))`
-/

namespace A133070.P9509971987954942489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n ^ 2) ^ 2 : ℤ) - A002378 n)

end

end A133070.P9509971987954942489

namespace A133070

/-- `n*(n²²-A002378(n))` -/
def P9509971987954942489.Spec : Prop :=
  ∀ n, P9509971987954942489.a n = A133070 n

end A133070

/-! ## A133070.P12857908976551931569

`(A000578(n)-(n+1))*n²`
-/

namespace A133070.P12857908976551931569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - (n + 1 : ℤ)) * (n ^ 2 : ℤ)

end

end A133070.P12857908976551931569

namespace A133070

/-- `(A000578(n)-(n+1))*n²` -/
def P12857908976551931569.Spec : Prop :=
  ∀ n, P12857908976551931569.a n = A133070 n

end A133070

/-! ## A133070.P13224473594720108446

`(n*A000290(n)-(n+1))*A000290(n)`
-/

namespace A133070.P13224473594720108446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000290 n - (n + 1 : ℤ)) * A000290 n

end

end A133070.P13224473594720108446

namespace A133070

/-- `(n*A000290(n)-(n+1))*A000290(n)` -/
def P13224473594720108446.Spec : Prop :=
  ∀ n, P13224473594720108446.a n = A133070 n

end A133070

/-!
# A133071: a(n) = n^5 - n^3 + n^2.

The programs for A133071, the canonical program `A133071.P1834428480365453793` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133071 has offset 0).

The definition of A133071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^3+n²` (program `A133071.P1834428480365453793`, by `A133071.P1834428480365453793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133071.P1834428480365453793

`n^5-n^3+n²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133071

/-- `n^5-n^3+n²` -/
def P1834428480365453793.Spec : Prop :=
  ∀ n, P1834428480365453793.a n = A133071 n

theorem P1834428480365453793.correct : P1834428480365453793.Spec := by
  intro n
  simp only [A133071]

end A133071

/-! ## A133071.P2088751939271397576

`lcm(n-1-n^3, n²)`
-/

namespace A133071.P2088751939271397576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 - (n ^ 3 : ℤ)) (n ^ 2 : ℤ)

end

end A133071.P2088751939271397576

namespace A133071

/-- `lcm(n-1-n^3, n²)` -/
def P2088751939271397576.Spec : Prop :=
  ∀ n, (P2088751939271397576.a n : ℤ) = A133071 n

end A133071

/-! ## A133071.P1164725748463893283

`n²*A061600(n)`
-/

namespace A133071.P1164725748463893283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A061600 n

end

end A133071.P1164725748463893283

namespace A133071

/-- `n²*A061600(n)` -/
def P1164725748463893283.Spec : Prop :=
  ∀ n, P1164725748463893283.a n = A133071 n

end A133071

/-! ## A133071.P16797504756256478615

`(A152618(n)+n²)*n²`
-/

namespace A133071.P16797504756256478615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152618 n + (n ^ 2 : ℤ)) * (n ^ 2 : ℤ)

end

end A133071.P16797504756256478615

namespace A133071

/-- `(A152618(n)+n²)*n²` -/
def P16797504756256478615.Spec : Prop :=
  ∀ n, P16797504756256478615.a n = A133071 n

end A133071

/-! ## A133071.P7375063240645412573

`n²*Δ[A289121(n+1)]`
-/

namespace A133071.P7375063240645412573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A133071.P7375063240645412573

namespace A133071

/-- `n²*Δ[A289121(n+1)]` -/
def P7375063240645412573.Spec : Prop :=
  ∀ n, P7375063240645412573.a n = A133071 n

end A133071

/-!
# A133072: a(n) = n^5 + n^3 - n^2.

The programs for A133072, the canonical program `A133072.P17384567826697917406` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133072 has offset 0).

The definition of A133072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n^3-n²` (program `A133072.P17384567826697917406`, by `A133072.P17384567826697917406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133072.P17384567826697917406

`n^5+n^3-n²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133072

/-- `n^5+n^3-n²` -/
def P17384567826697917406.Spec : Prop :=
  ∀ n, P17384567826697917406.a n = A133072 n

theorem P17384567826697917406.correct : P17384567826697917406.Spec := by
  intro n
  simp only [A133072]

end A133072

/-! ## A133072.P12649892427912174005

`n*(A071253(n)-n)`
-/

namespace A133072.P12649892427912174005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A071253 n - (n : ℤ))

end

end A133072.P12649892427912174005

namespace A133072

/-- `n*(A071253(n)-n)` -/
def P12649892427912174005.Spec : Prop :=
  ∀ n, P12649892427912174005.a n = A133072 n

end A133072

/-! ## A133072.P9104514914311829622

`(A034262(n)-1)*n²`
-/

namespace A133072.P9104514914311829622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034262 n - 1) * (n ^ 2 : ℤ)

end

end A133072.P9104514914311829622

namespace A133072

/-- `(A034262(n)-1)*n²` -/
def P9104514914311829622.Spec : Prop :=
  ∀ n, P9104514914311829622.a n = A133072 n

end A133072

/-! ## A133072.P6938881577237561061

`(A071568(n)-2)*n²`
-/

namespace A133072.P6938881577237561061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071568 n - 2) * (n ^ 2 : ℤ)

end

end A133072.P6938881577237561061

namespace A133072

/-- `(A071568(n)-2)*n²` -/
def P6938881577237561061.Spec : Prop :=
  ∀ n, P6938881577237561061.a n = A133072 n

end A133072

/-! ## A133072.P15306473938783061716

`n*(A059826(n)-(n+1))`
-/

namespace A133072.P15306473938783061716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A059826 n - (n + 1 : ℤ))

end

end A133072.P15306473938783061716

namespace A133072

/-- `n*(A059826(n)-(n+1))` -/
def P15306473938783061716.Spec : Prop :=
  ∀ n, P15306473938783061716.a n = A133072 n

end A133072

/-! ## A133072.P9842730219554087007

`(A000578(n)+n-1)*n²`
-/

namespace A133072.P9842730219554087007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n + ((n : ℤ) - 1)) * (n ^ 2 : ℤ)

end

end A133072.P9842730219554087007

namespace A133072

/-- `(A000578(n)+n-1)*n²` -/
def P9842730219554087007.Spec : Prop :=
  ∀ n, P9842730219554087007.a n = A133072 n

end A133072

/-!
# A133073: a(n) = n^5 + n^3 + n^2.

The programs for A133073, the canonical program `A133073.P6249455800542436986` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133073 has offset 0).

The definition of A133073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n^3+n²` (program `A133073.P6249455800542436986`, by `A133073.P6249455800542436986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133073.P17107116182453957540

`n²*(n^3+n+1)`
-/

namespace A133073.P17107116182453957540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (n ^ 3 + (n + 1))

end

end A133073.P17107116182453957540

namespace A133073

/-- `n²*(n^3+n+1)` -/
def P17107116182453957540.Spec : Prop :=
  ∀ n, (P17107116182453957540.a n : ℤ) = A133073 n

theorem P17107116182453957540.correct : P17107116182453957540.Spec := by
  intro n
  simp only [A133073, Nat.add_sub_cancel, A133073.P17107116182453957540.a, A133073.P6249455800542436986.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A133073

/-! ## A133073.P6249455800542436986

`n^5+n^3+n²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133073

/-- `n^5+n^3+n²` -/
def P6249455800542436986.Spec : Prop :=
  ∀ n, (P6249455800542436986.a n : ℤ) = A133073 n

theorem P6249455800542436986.correct : P6249455800542436986.Spec := by
  intro n
  simp only [A133073]

end A133073

/-! ## A133073.P4994938857728775209

`lcm(A000290(n), A071568(n))`
-/

namespace A133073.P4994938857728775209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 n) (A071568 n)

end

end A133073.P4994938857728775209

namespace A133073

/-- `lcm(A000290(n), A071568(n))` -/
def P4994938857728775209.Spec : Prop :=
  ∀ n, (P4994938857728775209.a n : ℤ) = A133073 n

end A133073

/-!
# A133075: Divisors of 2000.

The programs for A133075, there is no canonical definition to state claims against.
-/

/-! ## A133075.P15149476261847442023

`A133020(A246079(n+1))`
-/

namespace A133075.P15149476261847442023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 (A246079 (n + 1)).toNat

end

end A133075.P15149476261847442023

/-! ## A133075.P7748574676153875483

`A133020(A246086(n+1))`
-/

namespace A133075.P7748574676153875483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 (A246086 (n + 1)).toNat

end

end A133075.P7748574676153875483

/-! ## A133075.P13214898249540848011

`A133020(A375590(n+1))`
-/

namespace A133075.P13214898249540848011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 (A375590 (n + 1)).toNat

end

end A133075.P13214898249540848011

/-! ## A133075.P11037768087154846809

`filter[A133020(n+1), A228039(#)]`
-/

namespace A133075.P11037768087154846809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A133075.P11037768087154846809

/-! ## A133075.P14397149919910033701

`A133020(lt[A100824(n), A008706(n)])`
-/

namespace A133075.P14397149919910033701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133075.P14397149919910033701

/-!
# A133079: Expansion of f(x)^3 - 3 * x * f(x^9)^3 in powers of x^3 where f() is a Ramanujan theta function.

The programs for A133079, the canonical program `A133079.P11579559650557007468` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133079 has offset 0).

The definition of A133079 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133079.P11579559650557007468

`(-1)^n*A116916(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133079

/-- `(-1)^n*A116916(n)` -/
def P11579559650557007468.Spec : Prop :=
  ∀ n, P11579559650557007468.a n = A133079 n

theorem P11579559650557007468.correct : P11579559650557007468.Spec := by
  intro n
  simp only [A133079]

end A133079

/-! ## A133079.P15610796948235488861

`A133089(3*n)`
-/

namespace A133079.P15610796948235488861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133089 (3 * n)

end

end A133079.P15610796948235488861

namespace A133079

/-- `A133089(3*n)` -/
def P15610796948235488861.Spec : Prop :=
  ∀ n, P15610796948235488861.a n = A133079 n

end A133079

/-! ## A133079.P4981336393515108378

`A204850(3*n)`
-/

namespace A133079.P4981336393515108378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204850 (3 * n)

end

end A133079.P4981336393515108378

namespace A133079

/-- `A204850(3*n)` -/
def P4981336393515108378.Spec : Prop :=
  ∀ n, P4981336393515108378.a n = A133079 n

end A133079

/-! ## A133079.P2175785176981417901

`A010815(n)*A178902(n)`
-/

namespace A133079.P2175785176981417901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A178902 n

end

end A133079.P2175785176981417901

namespace A133079

/-- `A010815(n)*A178902(n)` -/
def P2175785176981417901.Spec : Prop :=
  ∀ n, P2175785176981417901.a n = A133079 n

end A133079

/-! ## A133079.P4267618317108721967

`A080332(n)*A121373(n)`
-/

namespace A133079.P4267618317108721967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n * A121373 n

end

end A133079.P4267618317108721967

namespace A133079

/-- `A080332(n)*A121373(n)` -/
def P4267618317108721967.Spec : Prop :=
  ∀ n, P4267618317108721967.a n = A133079 n

end A133079

/-! ## A133079.P11998040555581863409

`A116916(n)*A133985(n)`
-/

namespace A133079.P11998040555581863409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n * A133985 n

end

end A133079.P11998040555581863409

namespace A133079

/-- `A116916(n)*A133985(n)` -/
def P11998040555581863409.Spec : Prop :=
  ∀ n, P11998040555581863409.a n = A133079 n

end A133079

/-! ## A133079.P10853222322947536722

`A116916(n)/A033999(n)`
-/

namespace A133079.P10853222322947536722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116916 n : ℚ) / (A033999 n : ℚ)

end

end A133079.P10853222322947536722

namespace A133079

/-- `A116916(n)/A033999(n)` -/
def P10853222322947536722.Spec : Prop :=
  ∀ n, P10853222322947536722.a n = (A133079 n : ℚ)

end A133079

/-! ## A133079.P11870788962604752044

`A010816(3*n)/(1-4/2)^n`
-/

namespace A133079.P11870788962604752044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010816 (3 * n) : ℚ) / (1 - (4 : ℚ) / 2) ^ n

end

end A133079.P11870788962604752044

namespace A133079

/-- `A010816(3*n)/(1-4/2)^n` -/
def P11870788962604752044.Spec : Prop :=
  ∀ n, P11870788962604752044.a n = (A133079 n : ℚ)

end A133079

/-! ## A133079.P17040398845240799693

`A010816(3*n)*A106459(3*n)`
-/

namespace A133079.P17040398845240799693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (3 * n) * A106459 (3 * n)

end

end A133079.P17040398845240799693

namespace A133079

/-- `A010816(3*n)*A106459(3*n)` -/
def P17040398845240799693.Spec : Prop :=
  ∀ n, P17040398845240799693.a n = A133079 n

end A133079

/-! ## A133079.P9762273763788284827

`A010816(3*n)*A133988(3*n)`
-/

namespace A133079.P9762273763788284827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (3 * n) * A133988 (3 * n)

end

end A133079.P9762273763788284827

namespace A133079

/-- `A010816(3*n)*A133988(3*n)` -/
def P9762273763788284827.Spec : Prop :=
  ∀ n, P9762273763788284827.a n = A133079 n

end A133079

/-! ## A133079.P15362793000939122373

`A117440(3*n)*A198954(3*n)`
-/

namespace A133079.P15362793000939122373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 (3 * n) * A198954 (3 * n)

end

end A133079.P15362793000939122373

namespace A133079

/-- `A117440(3*n)*A198954(3*n)` -/
def P15362793000939122373.Spec : Prop :=
  ∀ n, P15362793000939122373.a n = A133079 n

end A133079

/-! ## A133079.P1970551333113849490

`A198954(3*n)*A206831(3*n)`
-/

namespace A133079.P1970551333113849490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (3 * n) * A206831 (3 * n)

end

end A133079.P1970551333113849490

namespace A133079

/-- `A198954(3*n)*A206831(3*n)` -/
def P1970551333113849490.Spec : Prop :=
  ∀ n, P1970551333113849490.a n = A133079 n

end A133079

/-! ## A133079.P11217585676577676760

`A134756(n)*A199918(n)`
-/

namespace A133079.P11217585676577676760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134756 n * A199918 n

end

end A133079.P11217585676577676760

namespace A133079

/-- `A134756(n)*A199918(n)` -/
def P11217585676577676760.Spec : Prop :=
  ∀ n, P11217585676577676760.a n = A133079 n

end A133079

/-! ## A133079.P3571204065163204823

`A106459(3*n)*A202394(3*n)`
-/

namespace A133079.P3571204065163204823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (3 * n) * A202394 (3 * n)

end

end A133079.P3571204065163204823

namespace A133079

/-- `A106459(3*n)*A202394(3*n)` -/
def P3571204065163204823.Spec : Prop :=
  ∀ n, P3571204065163204823.a n = A133079 n

end A133079

/-! ## A133079.P16894111926703217207

`A198954(3*n)*A267482(3*n)`
-/

namespace A133079.P16894111926703217207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (3 * n) * A267482 (3 * n)

end

end A133079.P16894111926703217207

namespace A133079

/-- `A198954(3*n)*A267482(3*n)` -/
def P16894111926703217207.Spec : Prop :=
  ∀ n, P16894111926703217207.a n = A133079 n

end A133079

/-!
# A133080: Interpolation operator: Triangle with an even number of zeros in each line followed by 1 or 2 ones.

The programs for A133080, the canonical program `A133080.P11855227960840329333` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133080 has offset 1).

The definition of A133080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133080.P9408359016343602736

`char[∑[xor(1, a(n-3))+1]]` with `a(0)=-1, a(1)=0, a(2)=0, a(3)=-1`
-/

namespace A133080.P9408359016343602736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 0, -1] fun n f2 =>
  Int.xor 1 (f2 (n - 3)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133080.P9408359016343602736

namespace A133080

/-- `char[∑[xor(1, a(n-3))+1]]` -/
def P9408359016343602736.Spec : Prop :=
  ∀ n, (P9408359016343602736.a n : ℤ) = A133080 (n + 1)

end A133080

/-! ## A133080.P9086724210942038148

`A119468(n)%2`
-/

namespace A133080.P9086724210942038148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119468 n) 2

end

end A133080.P9086724210942038148

namespace A133080

/-- `A119468(n)%2` -/
def P9086724210942038148.Spec : Prop :=
  ∀ n, P9086724210942038148.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P12949367914317120614

`A235706(n)%2`
-/

namespace A133080.P12949367914317120614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235706 n) 2

end

end A133080.P12949367914317120614

namespace A133080

/-- `A235706(n)%2` -/
def P12949367914317120614.Spec : Prop :=
  ∀ n, P12949367914317120614.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P3860406807521173378

`and(1, A110314(n))`
-/

namespace A133080.P3860406807521173378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A110314 n)

end

end A133080.P3860406807521173378

namespace A133080

/-- `and(1, A110314(n))` -/
def P3860406807521173378.Spec : Prop :=
  ∀ n, P3860406807521173378.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P7853265453070180493

`and(1, A115633(n))`
-/

namespace A133080.P7853265453070180493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A115633 n)

end

end A133080.P7853265453070180493

namespace A133080

/-- `and(1, A115633(n))` -/
def P7853265453070180493.Spec : Prop :=
  ∀ n, P7853265453070180493.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P13641189674170059128

`and(1, A128229(n+1))`
-/

namespace A133080.P13641189674170059128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A128229 (n + 1))

end

end A133080.P13641189674170059128

namespace A133080

/-- `and(1, A128229(n+1))` -/
def P13641189674170059128.Spec : Prop :=
  ∀ n, P13641189674170059128.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P11855227960840329333

`C(2, 2*A051933(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133080

/-- `C(2, 2*A051933(n))` -/
def P11855227960840329333.Spec : Prop :=
  ∀ n, (P11855227960840329333.a n : ℤ) = A133080 (n + 1)

theorem P11855227960840329333.correct : P11855227960840329333.Spec := by
  intro n
  simp only [A133080, Nat.add_sub_cancel]

end A133080

/-! ## A133080.P779031288454012845

`A070909(A070909(n)+n)`
-/

namespace A133080.P779031288454012845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 (A070909 n + (n : ℤ)).toNat

end

end A133080.P779031288454012845

namespace A133080

/-- `A070909(A070909(n)+n)` -/
def P779031288454012845.Spec : Prop :=
  ∀ n, P779031288454012845.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P14968703989286548484

`A047999(n)*A097806(n)`
-/

namespace A133080.P14968703989286548484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A097806 n

end

end A133080.P14968703989286548484

namespace A133080

/-- `A047999(n)*A097806(n)` -/
def P14968703989286548484.Spec : Prop :=
  ∀ n, P14968703989286548484.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P8151677116161652871

`A051159(n)*A097806(n)`
-/

namespace A133080.P8151677116161652871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n * A097806 n

end

end A133080.P8151677116161652871

namespace A133080

/-- `A051159(n)*A097806(n)` -/
def P8151677116161652871.Spec : Prop :=
  ∀ n, P8151677116161652871.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P15441455814501670165

`A070909(n)*A097806(n)`
-/

namespace A133080.P15441455814501670165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 n * A097806 n

end

end A133080.P15441455814501670165

namespace A133080

/-- `A070909(n)*A097806(n)` -/
def P15441455814501670165.Spec : Prop :=
  ∀ n, P15441455814501670165.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P8344145929669649849

`A071026(n)*A097806(n)`
-/

namespace A133080.P8344145929669649849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071026 n * A097806 n

end

end A133080.P8344145929669649849

namespace A133080

/-- `A071026(n)*A097806(n)` -/
def P8344145929669649849.Spec : Prop :=
  ∀ n, P8344145929669649849.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P17387661043231694255

`A097806(n)*A106465(n)`
-/

namespace A133080.P17387661043231694255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A106465 n

end

end A133080.P17387661043231694255

namespace A133080

/-- `A097806(n)*A106465(n)` -/
def P17387661043231694255.Spec : Prop :=
  ∀ n, P17387661043231694255.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P16110134500266982501

`A097806(n)*A106468(n)`
-/

namespace A133080.P16110134500266982501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A106468 n

end

end A133080.P16110134500266982501

namespace A133080

/-- `A097806(n)*A106468(n)` -/
def P16110134500266982501.Spec : Prop :=
  ∀ n, P16110134500266982501.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P18297882961067517597

`A097806(n)*A112555(n)`
-/

namespace A133080.P18297882961067517597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A112555 n

end

end A133080.P18297882961067517597

namespace A133080

/-- `A097806(n)*A112555(n)` -/
def P18297882961067517597.Spec : Prop :=
  ∀ n, P18297882961067517597.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P18105070921910451074

`A097806(n)*A115954(n)`
-/

namespace A133080.P18105070921910451074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A115954 n

end

end A133080.P18105070921910451074

namespace A133080

/-- `A097806(n)*A115954(n)` -/
def P18105070921910451074.Spec : Prop :=
  ∀ n, P18105070921910451074.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P2696656277397874740

`A097806(n)*A128810(n)`
-/

namespace A133080.P2696656277397874740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A128810 n

end

end A133080.P2696656277397874740

namespace A133080

/-- `A097806(n)*A128810(n)` -/
def P2696656277397874740.Spec : Prop :=
  ∀ n, P2696656277397874740.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P1666333184475392983

`A106467(n)*A167374(n)`
-/

namespace A133080.P1666333184475392983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106467 n * A167374 n

end

end A133080.P1666333184475392983

namespace A133080

/-- `A106467(n)*A167374(n)` -/
def P1666333184475392983.Spec : Prop :=
  ∀ n, P1666333184475392983.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P12223001607057759339

`A115713(n)*A167374(n)`
-/

namespace A133080.P12223001607057759339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115713 n * A167374 n

end

end A133080.P12223001607057759339

namespace A133080

/-- `A115713(n)*A167374(n)` -/
def P12223001607057759339.Spec : Prop :=
  ∀ n, P12223001607057759339.a n = A133080 (n + 1)

end A133080

/-! ## A133080.P15756518017654843304

`lcm(A051159(n), A167374(n))`
-/

namespace A133080.P15756518017654843304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051159 n) (A167374 n)

end

end A133080.P15756518017654843304

namespace A133080

/-- `lcm(A051159(n), A167374(n))` -/
def P15756518017654843304.Spec : Prop :=
  ∀ n, (P15756518017654843304.a n : ℤ) = A133080 (n + 1)

end A133080

/-!
# A133081: An interpolation operator, companion to A133080.

The programs for A133081, there is no canonical definition to state claims against.
-/

/-! ## A133081.P13228656961903614741

`char[∑[or(1, ∑[n])%(n+1)]]`
-/

namespace A133081.P13228656961903614741
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A133081.P13228656961903614741

/-! ## A133081.P9759159262058581513

`char[C(gcd(n+1, ∑[n]), 2)+n]`
-/

namespace A133081.P9759159262058581513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)) 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A133081.P9759159262058581513

/-! ## A133081.P14825666376024664902

`char[∑[∑[n]%(and(2, n)!+n)]]`
-/

namespace A133081.P14825666376024664902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (Nat.factorial (Nat.land 2 n) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A133081.P14825666376024664902

/-! ## A133081.P12413897450860891604

`A047920(n)%2`
-/

namespace A133081.P12413897450860891604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047920 n) 2

end

end A133081.P12413897450860891604

/-! ## A133081.P11437042443074605964

`A076571(n)%2`
-/

namespace A133081.P11437042443074605964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076571 n) 2

end

end A133081.P11437042443074605964

/-! ## A133081.P14402093593990943289

`A099020(n)%2`
-/

namespace A133081.P14402093593990943289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099020 n) 2

end

end A133081.P14402093593990943289

/-! ## A133081.P1007514598853626774

`A108040(n)%2`
-/

namespace A133081.P1007514598853626774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108040 n) 2

end

end A133081.P1007514598853626774

/-! ## A133081.P6711227671755977935

`A053219(n+1)%2`
-/

namespace A133081.P6711227671755977935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053219 (n + 1)) 2

end

end A133081.P6711227671755977935

/-! ## A133081.P17775218071030195317

`A117918(n+1)%2`
-/

namespace A133081.P17775218071030195317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117918 (n + 1)) 2

end

end A133081.P17775218071030195317

/-!
# A133082: Triangle read by rows: T(k,m) = dimension of shape space for k labeled points in R^m (1 <= k <= m-1, m >= 2).

The programs for A133082, there is no canonical definition to state claims against.
-/

/-! ## A133082.P3354991955189030370

`n-C(C(comp[∑[n]]-n, 2)-(n+1), 2)`
-/

namespace A133082.P3354991955189030370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat 2 : ℤ)

end

end A133082.P3354991955189030370

/-! ## A133082.P6826841933145931950

`n-C(C(comp[∑[n]]-n, 2)-n-1, 2)`
-/

namespace A133082.P6826841933145931950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat 2 : ℤ)

end

end A133082.P6826841933145931950

/-! ## A133082.P9951789764578985973

`(∑[eq[1, floor(2*sqrt(n))%2]]-1)%(n+1)`
-/

namespace A133082.P9951789764578985973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A133082.P9951789764578985973

/-! ## A133082.P9739970507160371025

`A141419(n+1)-1`
-/

namespace A133082.P9739970507160371025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - 1

end

end A133082.P9739970507160371025

/-! ## A133082.P15630567681545283728

`n-C(A025581(n), 2)`
-/

namespace A133082.P15630567681545283728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (A025581 n).toNat 2 : ℤ)

end

end A133082.P15630567681545283728

/-! ## A133082.P3909533364953938414

`A141418(comp[∑[n]])-1`
-/

namespace A133082.P3909533364953938414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A133082.P3909533364953938414

/-! ## A133082.P6726508692682367219

`n-C(log2(A130321(n)), 2)`
-/

namespace A133082.P6726508692682367219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat 2 : ℤ)

end

end A133082.P6726508692682367219

/-! ## A133082.P16363674316921726777

`n-C(A025660(n+1), 2)`
-/

namespace A133082.P16363674316921726777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (A025660 (n + 1)).toNat 2 : ℤ)

end

end A133082.P16363674316921726777

/-! ## A133082.P4897148950600440007

`n-C(A025669(n+1), 2)`
-/

namespace A133082.P4897148950600440007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (A025669 (n + 1)).toNat 2 : ℤ)

end

end A133082.P4897148950600440007

/-!
# A133083: A000012 * A133080.

The programs for A133083, the canonical program `A133083.P3500506741540918001` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133083 has offset 1).

The definition of A133083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133083.P157263922813736471

`gcd(2, comp[2*n*(n+2)])`
-/

namespace A133083.P157263922813736471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A133083.P157263922813736471

namespace A133083

/-- `gcd(2, comp[2*n*(n+2)])` -/
def P157263922813736471.Spec : Prop :=
  ∀ n, (P157263922813736471.a n : ℤ) = A133083 (n + 1)

end A133083

/-! ## A133083.P18265764526829448916

`char[comp[n²]+n-1]+1`
-/

namespace A133083.P18265764526829448916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A133083.P18265764526829448916

namespace A133083

/-- `char[comp[n²]+n-1]+1` -/
def P18265764526829448916.Spec : Prop :=
  ∀ n, (P18265764526829448916.a n : ℤ) = A133083 (n + 1)

end A133083

/-! ## A133083.P1601118908297696915

`(∪[2*n, (n+2)²]%4)!`
-/

namespace A133083.P1601118908297696915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n % 4)

end

end A133083.P1601118908297696915

namespace A133083

/-- `(∪[2*n, (n+2)²]%4)!` -/
def P1601118908297696915.Spec : Prop :=
  ∀ n, (P1601118908297696915.a n : ℤ) = A133083 (n + 1)

end A133083

/-! ## A133083.P18295421451292528516

`and(2, ∪[2*n, (n+2)²])!`
-/

namespace A133083.P18295421451292528516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n))

end

end A133083.P18295421451292528516

namespace A133083

/-- `and(2, ∪[2*n, (n+2)²])!` -/
def P18295421451292528516.Spec : Prop :=
  ∀ n, (P18295421451292528516.a n : ℤ) = A133083 (n + 1)

end A133083

/-! ## A133083.P6422263141933294689

`abs(or(-2, A191532(n)))`
-/

namespace A133083.P6422263141933294689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-2) (A191532 n)|

end

end A133083.P6422263141933294689

namespace A133083

/-- `abs(or(-2, A191532(n)))` -/
def P6422263141933294689.Spec : Prop :=
  ∀ n, P6422263141933294689.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P3500506741540918001

`A059268(n+1)%3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A133083

/-- `A059268(n+1)%3` -/
def P3500506741540918001.Spec : Prop :=
  ∀ n, P3500506741540918001.a n = A133083 (n + 1)

theorem P3500506741540918001.correct : P3500506741540918001.Spec := by
  intro n
  simp only [A133083, Nat.add_sub_cancel]

end A133083

/-! ## A133083.P5343527453555373061

`2/(A177990(n+1)+1)`
-/

namespace A133083.P5343527453555373061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A177990 (n + 1) + 1 : ℚ)

end

end A133083.P5343527453555373061

namespace A133083

/-- `2/(A177990(n+1)+1)` -/
def P5343527453555373061.Spec : Prop :=
  ∀ n, P5343527453555373061.a n = (A133083 (n + 1) : ℚ)

end A133083

/-! ## A133083.P2021673739536064929

`and(3, gcd(2, A002260(n+2)))`
-/

namespace A133083.P2021673739536064929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (Int.gcd 2 (A002260 (n + 2)))

end

end A133083.P2021673739536064929

namespace A133083

/-- `and(3, gcd(2, A002260(n+2)))` -/
def P2021673739536064929.Spec : Prop :=
  ∀ n, (P2021673739536064929.a n : ℤ) = A133083 (n + 1)

end A133083

/-! ## A133083.P13347886667101635161

`A000034(A048151(n+1))`
-/

namespace A133083.P13347886667101635161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A048151 (n + 1)).toNat

end

end A133083.P13347886667101635161

namespace A133083

/-- `A000034(A048151(n+1))` -/
def P13347886667101635161.Spec : Prop :=
  ∀ n, P13347886667101635161.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P4622588938358148383

`A000034(A294317(n+1))`
-/

namespace A133083.P4622588938358148383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A294317 (n + 1)).toNat

end

end A133083.P4622588938358148383

namespace A133083

/-- `A000034(A294317(n+1))` -/
def P4622588938358148383.Spec : Prop :=
  ∀ n, P4622588938358148383.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P13615054850489156136

`A040001(A002260(n+2))`
-/

namespace A133083.P13615054850489156136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A002260 (n + 2)).toNat

end

end A133083.P13615054850489156136

namespace A133083

/-- `A040001(A002260(n+2))` -/
def P13615054850489156136.Spec : Prop :=
  ∀ n, P13615054850489156136.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P18159878801873314505

`A000034(A002260(n+2)+1)`
-/

namespace A133083.P18159878801873314505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002260 (n + 2) + 1).toNat

end

end A133083.P18159878801873314505

namespace A133083

/-- `A000034(A002260(n+2)+1)` -/
def P18159878801873314505.Spec : Prop :=
  ∀ n, P18159878801873314505.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P9114805422985379876

`A131953(n+1)%3`
-/

namespace A133083.P9114805422985379876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131953 (n + 1)) 3

end

end A133083.P9114805422985379876

namespace A133083

/-- `A131953(n+1)%3` -/
def P9114805422985379876.Spec : Prop :=
  ∀ n, P9114805422985379876.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P6291975874748259186

`A193849(n+1)%3`
-/

namespace A133083.P6291975874748259186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193849 (n + 1)) 3

end

end A133083.P6291975874748259186

namespace A133083

/-- `A193849(n+1)%3` -/
def P6291975874748259186.Spec : Prop :=
  ∀ n, P6291975874748259186.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P11829385904816543819

`A193856(n+1)%3`
-/

namespace A133083.P11829385904816543819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193856 (n + 1)) 3

end

end A133083.P11829385904816543819

namespace A133083

/-- `A193856(n+1)%3` -/
def P11829385904816543819.Spec : Prop :=
  ∀ n, P11829385904816543819.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P4581891856351533971

`A132728(n+1)%5`
-/

namespace A133083.P4581891856351533971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132728 (n + 1)) 5

end

end A133083.P4581891856351533971

namespace A133083

/-- `A132728(n+1)%5` -/
def P4581891856351533971.Spec : Prop :=
  ∀ n, P4581891856351533971.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P2511064165882794775

`round(sqrt(A274913(n+2)))`
-/

namespace A133083.P2511064165882794775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A274913 (n + 2) : ℝ))

end

end A133083.P2511064165882794775

namespace A133083

/-- `round(sqrt(A274913(n+2)))` -/
def P2511064165882794775.Spec : Prop :=
  ∀ n, P2511064165882794775.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P4833054533063116626

`ceil(sqrt(sqrt(A225743(n+2))))`
-/

namespace A133083.P4833054533063116626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A225743 (n + 2) : ℝ))⌉

end

end A133083.P4833054533063116626

namespace A133083

/-- `ceil(sqrt(sqrt(A225743(n+2))))` -/
def P4833054533063116626.Spec : Prop :=
  ∀ n, P4833054533063116626.a n = A133083 (n + 1)

end A133083

/-! ## A133083.P8806615261703081823

`2/(2-A060510(n+1))`
-/

namespace A133083.P8806615261703081823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (2 - A060510 (n + 1) : ℚ)

end

end A133083.P8806615261703081823

namespace A133083

/-- `2/(2-A060510(n+1))` -/
def P8806615261703081823.Spec : Prop :=
  ∀ n, P8806615261703081823.a n = (A133083 (n + 1) : ℚ)

end A133083

/-! ## A133083.P15973177719306399248

`A000032(Δ[comp[2*n²]-a(n-1)])` with `a(0)=1`
-/

namespace A133083.P15973177719306399248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A133083.P15973177719306399248

namespace A133083

/-- `A000032(Δ[comp[2*n²]-a(n-1)])` -/
def P15973177719306399248.Spec : Prop :=
  ∀ n, P15973177719306399248.a n = A133083 (n + 1)

end A133083

/-!
# A133084: A007318 * A133080.

The programs for A133084, the canonical program `A133084.P4031868736069884571` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133084 has offset 1).

The definition of A133084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133084.P5197643183664779064

`A103371(n)/A133567(n+1)`
-/

namespace A133084.P5197643183664779064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n : ℚ) / (A133567 (n + 1) : ℚ)

end

end A133084.P5197643183664779064

namespace A133084

/-- `A103371(n)/A133567(n+1)` -/
def P5197643183664779064.Spec : Prop :=
  ∀ n, P5197643183664779064.a n = (A133084 (n + 1) : ℚ)

end A133084

/-! ## A133084.P12948975795975640515

`A208914(n+1)/A059268(n)`
-/

namespace A133084.P12948975795975640515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208914 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A133084.P12948975795975640515

namespace A133084

/-- `A208914(n+1)/A059268(n)` -/
def P12948975795975640515.Spec : Prop :=
  ∀ n, P12948975795975640515.a n = (A133084 (n + 1) : ℚ)

end A133084

/-! ## A133084.P9652027088440634669

`A208906(n+1)/A016116(A002262(n))`
-/

namespace A133084.P9652027088440634669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208906 (n + 1) : ℚ) / (A016116 (A002262 n).toNat : ℚ)

end

end A133084.P9652027088440634669

namespace A133084

/-- `A208906(n+1)/A016116(A002262(n))` -/
def P9652027088440634669.Spec : Prop :=
  ∀ n, P9652027088440634669.a n = (A133084 (n + 1) : ℚ)

end A133084

/-! ## A133084.P5272055568808551686

`A208521(n+1)/A016116(A002262(n)+1)`
-/

namespace A133084.P5272055568808551686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208521 (n + 1) : ℚ) / (A016116 (A002262 n + 1).toNat : ℚ)

end

end A133084.P5272055568808551686

namespace A133084

/-- `A208521(n+1)/A016116(A002262(n)+1)` -/
def P5272055568808551686.Spec : Prop :=
  ∀ n, P5272055568808551686.a n = (A133084 (n + 1) : ℚ)

end A133084

/-! ## A133084.P4105768425905600979

`A029638(n+2)-A133567(n+1)`
-/

namespace A133084.P4105768425905600979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (n + 2) - A133567 (n + 1)

end

end A133084.P4105768425905600979

namespace A133084

/-- `A029638(n+2)-A133567(n+1)` -/
def P4105768425905600979.Spec : Prop :=
  ∀ n, P4105768425905600979.a n = A133084 (n + 1)

end A133084

/-! ## A133084.P2553405033459940912

`A177953(n+1)+A177953(n)-A055248(n+1)`
-/

namespace A133084.P2553405033459940912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177953 (n + 1) + (A177953 n - A055248 (n + 1))

end

end A133084.P2553405033459940912

namespace A133084

/-- `A177953(n+1)+A177953(n)-A055248(n+1)` -/
def P2553405033459940912.Spec : Prop :=
  ∀ n, P2553405033459940912.a n = A133084 (n + 1)

end A133084

/-! ## A133084.P4031868736069884571

`A007318(n)+A007318(n+1)*A060510(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A133084

/-- `A007318(n)+A007318(n+1)*A060510(n+1)` -/
def P4031868736069884571.Spec : Prop :=
  ∀ n, P4031868736069884571.a n = A133084 (n + 1)

theorem P4031868736069884571.correct : P4031868736069884571.Spec := by
  intro n
  simp only [A133084, Nat.add_sub_cancel]

end A133084

/-! ## A133084.P16545167983659134798

`A208906(n+1)/A000188(A059268(n))`
-/

namespace A133084.P16545167983659134798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208906 (n + 1) : ℚ) / (A000188 (A059268 n).toNat : ℚ)

end

end A133084.P16545167983659134798

namespace A133084

/-- `A208906(n+1)/A000188(A059268(n))` -/
def P16545167983659134798.Spec : Prop :=
  ∀ n, P16545167983659134798.a n = (A133084 (n + 1) : ℚ)

end A133084

/-! ## A133084.P13108995157124968874

`A208521(n+1)/A059268(n)*A000188(A059268(n))`
-/

namespace A133084.P13108995157124968874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208521 (n + 1) : ℚ) / (A059268 n : ℚ) * (A000188 (A059268 n).toNat : ℚ)

end

end A133084.P13108995157124968874

namespace A133084

/-- `A208521(n+1)/A059268(n)*A000188(A059268(n))` -/
def P13108995157124968874.Spec : Prop :=
  ∀ n, P13108995157124968874.a n = (A133084 (n + 1) : ℚ)

end A133084

/-! ## A133084.P965905112635052959

`A208521(n+1)/A000188(2*A059268(n))`
-/

namespace A133084.P965905112635052959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208521 (n + 1) : ℚ) / (A000188 (2 * A059268 n).toNat : ℚ)

end

end A133084.P965905112635052959

namespace A133084

/-- `A208521(n+1)/A000188(2*A059268(n))` -/
def P965905112635052959.Spec : Prop :=
  ∀ n, P965905112635052959.a n = (A133084 (n + 1) : ℚ)

end A133084

/-!
# A133086: Row sums of triangle A133085.

The programs for A133086, the canonical program `A133086.P13664748565593643039` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133086 has offset 0).

The definition of A133086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133086.P13664748565593643039

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4, a(2)=10, a(3)=26`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133086

/-- `4*(a(n-1)-a(n-2))` -/
def P13664748565593643039.Spec : Prop :=
  ∀ n, P13664748565593643039.a n = A133086 n

theorem P13664748565593643039.correct : P13664748565593643039.Spec := by
  intro n
  simp only [A133086]

end A133086

/-! ## A133086.P9153661761110330060

`ogf((1-2x^2+2x^3)/(1-4x+4x^2))`
-/

namespace A133086.P9153661761110330060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 2] [1, -4, 4] n

end

end A133086.P9153661761110330060

namespace A133086

/-- `ogf((1-2x^2+2x^3)/(1-4x+4x^2))` -/
def P9153661761110330060.Spec : Prop :=
  ∀ n, P9153661761110330060.a n = A133086 n

end A133086

/-! ## A133086.P8705401479049059711

`2*(A106472(n)-2^(n-1))`
-/

namespace A133086.P8705401479049059711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A106472 n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A133086.P8705401479049059711

namespace A133086

/-- `2*(A106472(n)-2^(n-1))` -/
def P8705401479049059711.Spec : Prop :=
  ∀ n, P8705401479049059711.a n = (A133086 n : ℚ)

end A133086

/-! ## A133086.P16744718217987478248

`A057711(n)+A001792(n)`
-/

namespace A133086.P16744718217987478248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + A001792 n

end

end A133086.P16744718217987478248

namespace A133086

/-- `A057711(n)+A001792(n)` -/
def P16744718217987478248.Spec : Prop :=
  ∀ n, P16744718217987478248.a n = A133086 n

end A133086

/-! ## A133086.P237331286053301770

`A129954(n)+A001787(n)`
-/

namespace A133086.P237331286053301770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n + A001787 n

end

end A133086.P237331286053301770

namespace A133086

/-- `A129954(n)+A001787(n)` -/
def P237331286053301770.Spec : Prop :=
  ∀ n, P237331286053301770.a n = A133086 n

end A133086

/-! ## A133086.P2438749159841747172

`A166444(n)+A084858(n)`
-/

namespace A133086.P2438749159841747172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A084858 n

end

end A133086.P2438749159841747172

namespace A133086

/-- `A166444(n)+A084858(n)` -/
def P2438749159841747172.Spec : Prop :=
  ∀ n, P2438749159841747172.a n = A133086 n

end A133086

/-! ## A133086.P4516848875682376917

`A057711(n)+∑[A045623(n)]`
-/

namespace A133086.P4516848875682376917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133086.P4516848875682376917

namespace A133086

/-- `A057711(n)+∑[A045623(n)]` -/
def P4516848875682376917.Spec : Prop :=
  ∀ n, P4516848875682376917.a n = A133086 n

end A133086

/-! ## A133086.P3487681690718963694

`A139756(n+1)+A129954(n)`
-/

namespace A133086.P3487681690718963694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + A129954 n

end

end A133086.P3487681690718963694

namespace A133086

/-- `A139756(n+1)+A129954(n)` -/
def P3487681690718963694.Spec : Prop :=
  ∀ n, P3487681690718963694.a n = A133086 n

end A133086

/-! ## A133086.P11144739199106948180

`A057711(n)+A049610(n+2)`
-/

namespace A133086.P11144739199106948180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + A049610 (n + 2)

end

end A133086.P11144739199106948180

namespace A133086

/-- `A057711(n)+A049610(n+2)` -/
def P11144739199106948180.Spec : Prop :=
  ∀ n, P11144739199106948180.a n = A133086 n

end A133086

/-! ## A133086.P5202956391446719295

`A335903(n+1)-A111297(n)`
-/

namespace A133086.P5202956391446719295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335903 (n + 1) - A111297 n

end

end A133086.P5202956391446719295

namespace A133086

/-- `A335903(n+1)-A111297(n)` -/
def P5202956391446719295.Spec : Prop :=
  ∀ n, P5202956391446719295.a n = A133086 n

end A133086

/-! ## A133086.P5450772983242187101

`A036453(n+1)*A098156(n)`
-/

namespace A133086.P5450772983242187101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A098156 n

end

end A133086.P5450772983242187101

namespace A133086

/-- `A036453(n+1)*A098156(n)` -/
def P5450772983242187101.Spec : Prop :=
  ∀ n, P5450772983242187101.a n = A133086 n

end A133086

/-! ## A133086.P12675960357348630262

`A131352(n)+2*A057711(n)`
-/

namespace A133086.P12675960357348630262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n + 2 * A057711 n

end

end A133086.P12675960357348630262

namespace A133086

/-- `A131352(n)+2*A057711(n)` -/
def P12675960357348630262.Spec : Prop :=
  ∀ n, P12675960357348630262.a n = A133086 n

end A133086

/-! ## A133086.P13991091501469160474

`2*A106472(n)-A000079(n)`
-/

namespace A133086.P13991091501469160474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106472 n - A000079 n

end

end A133086.P13991091501469160474

namespace A133086

/-- `2*A106472(n)-A000079(n)` -/
def P13991091501469160474.Spec : Prop :=
  ∀ n, P13991091501469160474.a n = A133086 n

end A133086

/-! ## A133086.P3160802312340394656

`A057711(n)+∑[∑[A045891(n)]]`
-/

namespace A133086.P3160802312340394656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133086.P3160802312340394656

namespace A133086

/-- `A057711(n)+∑[∑[A045891(n)]]` -/
def P3160802312340394656.Spec : Prop :=
  ∀ n, P3160802312340394656.a n = A133086 n

end A133086

/-! ## A133086.P1227152928742457830

`A000079(n)+n*∑[A122391(n)]`
-/

namespace A133086.P1227152928742457830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133086.P1227152928742457830

namespace A133086

/-- `A000079(n)+n*∑[A122391(n)]` -/
def P1227152928742457830.Spec : Prop :=
  ∀ n, P1227152928742457830.a n = A133086 n

end A133086

/-! ## A133086.P14397275201581102975

`(char[A060000(n+1)]+1)*A098156(n)`
-/

namespace A133086.P14397275201581102975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A098156 n

end

end A133086.P14397275201581102975

namespace A133086

/-- `(char[A060000(n+1)]+1)*A098156(n)` -/
def P14397275201581102975.Spec : Prop :=
  ∀ n, P14397275201581102975.a n = A133086 n

end A133086

/-! ## A133086.P4415936166988775044

`A011782(n+1)+n*A098011(n+2)`
-/

namespace A133086.P4415936166988775044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (n : ℤ) * A098011 (n + 2)

end

end A133086.P4415936166988775044

namespace A133086

/-- `A011782(n+1)+n*A098011(n+2)` -/
def P4415936166988775044.Spec : Prop :=
  ∀ n, P4415936166988775044.a n = A133086 n

end A133086

/-! ## A133086.P16028678120573896418

`A168090(3*n)+n*A098011(n+2)`
-/

namespace A133086.P16028678120573896418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168090 (3 * n) + (n : ℤ) * A098011 (n + 2)

end

end A133086.P16028678120573896418

namespace A133086

/-- `A168090(3*n)+n*A098011(n+2)` -/
def P16028678120573896418.Spec : Prop :=
  ∀ n, P16028678120573896418.a n = A133086 n

end A133086

/-! ## A133086.P5852166418458783544

`A129952(n+1)+A001792(n)-A087447(n)`
-/

namespace A133086.P5852166418458783544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (n + 1) + (A001792 n - A087447 n)

end

end A133086.P5852166418458783544

namespace A133086

/-- `A129952(n+1)+A001792(n)-A087447(n)` -/
def P5852166418458783544.Spec : Prop :=
  ∀ n, P5852166418458783544.a n = A133086 n

end A133086

/-!
# A133087: A133080 * A007318.

The programs for A133087, there is no canonical definition to state claims against.
-/

/-! ## A133087.P4579267926844427570

`A124459(n+1)-A133569(n+1)`
-/

namespace A133087.P4579267926844427570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124459 (n + 1) - A133569 (n + 1)

end

end A133087.P4579267926844427570

/-! ## A133087.P14605397290619511694

`A028326(n)-A053735(A111595(n)²)`
-/

namespace A133087.P14605397290619511694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A053735 (A111595 n ^ 2).toNat

end

end A133087.P14605397290619511694

/-! ## A133087.P6164783686260070689

`A028326(n)-dr(A007089(A111595(n)²))`
-/

namespace A133087.P6164783686260070689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (SequenceMachineLib.digitalRoot (A007089 (A111595 n ^ 2).toNat) : ℤ)

end

end A133087.P6164783686260070689

/-! ## A133087.P10961463004519779077

`A352516(A278253(n+1))+A007318(n)`
-/

namespace A133087.P10961463004519779077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A278253 (n + 1)).toNat + A007318 n

end

end A133087.P10961463004519779077

/-! ## A133087.P10503094928153125423

`A052494(lcm(A112692(n), A278317(3*n+5)))`
-/

namespace A133087.P10503094928153125423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052494 (Int.lcm (A112692 n) (A278317 (3 * n + 5)))

end

end A133087.P10503094928153125423

/-!
# A133089: Expansion of f(x)^3 in powers of x where f() is a Ramanujan theta function.

The programs for A133089, the canonical program `A133089.P8798939129705993137` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133089 has offset 0).

The definition of A133089 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133089.P8798939129705993137

`(-1)^n*A010816(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133089

/-- `(-1)^n*A010816(n)` -/
def P8798939129705993137.Spec : Prop :=
  ∀ n, P8798939129705993137.a n = A133089 n

theorem P8798939129705993137.correct : P8798939129705993137.Spec := by
  intro n
  simp only [A133089]

end A133089

/-! ## A133089.P7354669058349269653

`(-1)^n*Δ[A274094(n)]`
-/

namespace A133089.P7354669058349269653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A133089.P7354669058349269653

namespace A133089

/-- `(-1)^n*Δ[A274094(n)]` -/
def P7354669058349269653.Spec : Prop :=
  ∀ n, P7354669058349269653.a n = A133089 n

end A133089

/-! ## A133089.P15761964224675007647

`A010816(n)*A033999(n)`
-/

namespace A133089.P15761964224675007647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A033999 n

end

end A133089.P15761964224675007647

namespace A133089

/-- `A010816(n)*A033999(n)` -/
def P15761964224675007647.Spec : Prop :=
  ∀ n, P15761964224675007647.a n = A133089 n

end A133089

/-! ## A133089.P17540641455809790219

`A010816(n)*A106459(n)`
-/

namespace A133089.P17540641455809790219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A106459 n

end

end A133089.P17540641455809790219

namespace A133089

/-- `A010816(n)*A106459(n)` -/
def P17540641455809790219.Spec : Prop :=
  ∀ n, P17540641455809790219.a n = A133089 n

end A133089

/-! ## A133089.P8644706329612243426

`A010816(n)*A108086(n)`
-/

namespace A133089.P8644706329612243426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A108086 n

end

end A133089.P8644706329612243426

namespace A133089

/-- `A010816(n)*A108086(n)` -/
def P8644706329612243426.Spec : Prop :=
  ∀ n, P8644706329612243426.a n = A133089 n

end A133089

/-! ## A133089.P6347067194928976296

`A010816(n)*A130777(n)`
-/

namespace A133089.P6347067194928976296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A130777 n

end

end A133089.P6347067194928976296

namespace A133089

/-- `A010816(n)*A130777(n)` -/
def P6347067194928976296.Spec : Prop :=
  ∀ n, P6347067194928976296.a n = A133089 n

end A133089

/-! ## A133089.P4831835625962520628

`A110242(n)*A198954(n)`
-/

namespace A133089.P4831835625962520628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110242 n * A198954 n

end

end A133089.P4831835625962520628

namespace A133089

/-- `A110242(n)*A198954(n)` -/
def P4831835625962520628.Spec : Prop :=
  ∀ n, P4831835625962520628.a n = A133089 n

end A133089

/-! ## A133089.P3452986667800618991

`A117440(n)*A198954(n)`
-/

namespace A133089.P3452986667800618991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n * A198954 n

end

end A133089.P3452986667800618991

namespace A133089

/-- `A117440(n)*A198954(n)` -/
def P3452986667800618991.Spec : Prop :=
  ∀ n, P3452986667800618991.a n = A133089 n

end A133089

/-! ## A133089.P3911465913204432670

`A136523(n)*A198954(n)`
-/

namespace A133089.P3911465913204432670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136523 n * A198954 n

end

end A133089.P3911465913204432670

namespace A133089

/-- `A136523(n)*A198954(n)` -/
def P3911465913204432670.Spec : Prop :=
  ∀ n, P3911465913204432670.a n = A133089 n

end A133089

/-! ## A133089.P15321553735966264279

`A158020(n)*A198954(n)`
-/

namespace A133089.P15321553735966264279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158020 n * A198954 n

end

end A133089.P15321553735966264279

namespace A133089

/-- `A158020(n)*A198954(n)` -/
def P15321553735966264279.Spec : Prop :=
  ∀ n, P15321553735966264279.a n = A133089 n

end A133089

/-! ## A133089.P8337093978449485909

`A198954(n)*A202389(n)`
-/

namespace A133089.P8337093978449485909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n * A202389 n

end

end A133089.P8337093978449485909

namespace A133089

/-- `A198954(n)*A202389(n)` -/
def P8337093978449485909.Spec : Prop :=
  ∀ n, P8337093978449485909.a n = A133089 n

end A133089

/-! ## A133089.P2060557961050655312

`A198954(n)*A206831(n)`
-/

namespace A133089.P2060557961050655312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n * A206831 n

end

end A133089.P2060557961050655312

namespace A133089

/-- `A198954(n)*A206831(n)` -/
def P2060557961050655312.Spec : Prop :=
  ∀ n, P2060557961050655312.a n = A133089 n

end A133089

/-! ## A133089.P18190540100032305902

`A039961(n+1)*A198954(n)`
-/

namespace A133089.P18190540100032305902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039961 (n + 1) * A198954 n

end

end A133089.P18190540100032305902

namespace A133089

/-- `A039961(n+1)*A198954(n)` -/
def P18190540100032305902.Spec : Prop :=
  ∀ n, P18190540100032305902.a n = A133089 n

end A133089

/-! ## A133089.P9541383242656812355

`A010816(n)/A057077(A057077(n)+n)`
-/

namespace A133089.P9541383242656812355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010816 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A133089.P9541383242656812355

namespace A133089

/-- `A010816(n)/A057077(A057077(n)+n)` -/
def P9541383242656812355.Spec : Prop :=
  ∀ n, P9541383242656812355.a n = (A133089 n : ℚ)

end A133089

/-! ## A133089.P13098160739570651955

`A010816(n)*A108299(Δ[A047460(n+1)])`
-/

namespace A133089.P13098160739570651955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A108299 (f1 (n + 1) - f1 n).toNat

end

end A133089.P13098160739570651955

namespace A133089

/-- `A010816(n)*A108299(Δ[A047460(n+1)])` -/
def P13098160739570651955.Spec : Prop :=
  ∀ n, P13098160739570651955.a n = A133089 n

end A133089

/-! ## A133089.P5840813482553424082

`A010816(n)/A108299(Δ[A047460(n+1)]²)`
-/

namespace A133089.P5840813482553424082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010816 n : ℚ) / (A108299 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A133089.P5840813482553424082

namespace A133089

/-- `A010816(n)/A108299(Δ[A047460(n+1)]²)` -/
def P5840813482553424082.Spec : Prop :=
  ∀ n, P5840813482553424082.a n = (A133089 n : ℚ)

end A133089

/-! ## A133089.P4290535321774750214

`A010816(n)*A057079(n+2)`
-/

namespace A133089.P4290535321774750214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A057079 (n + 2)

end

end A133089.P4290535321774750214

namespace A133089

/-- `A010816(n)*A057079(n+2)` -/
def P4290535321774750214.Spec : Prop :=
  ∀ n, P4290535321774750214.a n = A133089 n

end A133089

/-! ## A133089.P7771650734438116473

`A084930(n)*A106459(n)`
-/

namespace A133089.P7771650734438116473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084930 n * A106459 n

end

end A133089.P7771650734438116473

namespace A133089

/-- `A084930(n)*A106459(n)` -/
def P7771650734438116473.Spec : Prop :=
  ∀ n, P7771650734438116473.a n = A133089 n

end A133089

/-! ## A133089.P12395062968501389793

`A010816(n)*A057077(2*n)`
-/

namespace A133089.P12395062968501389793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A057077 (2 * n)

end

end A133089.P12395062968501389793

namespace A133089

/-- `A010816(n)*A057077(2*n)` -/
def P12395062968501389793.Spec : Prop :=
  ∀ n, P12395062968501389793.a n = A133089 n

end A133089

/-! ## A133089.P5303140105745867096

`A010816(n)/A057077(A004277(n))`
-/

namespace A133089.P5303140105745867096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010816 n : ℚ) / (A057077 (A004277 n).toNat : ℚ)

end

end A133089.P5303140105745867096

namespace A133089

/-- `A010816(n)/A057077(A004277(n))` -/
def P5303140105745867096.Spec : Prop :=
  ∀ n, P5303140105745867096.a n = (A133089 n : ℚ)

end A133089

/-!
# A133090: A133081 * [1,2,3,...].

The programs for A133090, the canonical program `A133090.P4726945751417675011` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133090 has offset 1).

The definition of A133090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133090.P4726945751417675011

`3/2*(n+1)-(n+1)/2*(-1)^(n+1)-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133090

/-- `3/2*(n+1)-(n+1)/2*(-1)^(n+1)-1` -/
def P4726945751417675011.Spec : Prop :=
  ∀ n, P4726945751417675011.a n = (A133090 (n + 1) : ℚ)

end A133090

/-! ## A133090.P3896931527182312245

`or(1, n*gcd(2, n))`
-/

namespace A133090.P3896931527182312245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.gcd 2 n)

end

end A133090.P3896931527182312245

namespace A133090

/-- `or(1, n*gcd(2, n))` -/
def P3896931527182312245.Spec : Prop :=
  ∀ n, (P3896931527182312245.a n : ℤ) = A133090 (n + 1)

end A133090

/-! ## A133090.P14645786063730352827

`or(1, n*(char[2*n]+1))`
-/

namespace A133090.P14645786063730352827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * ((if ∃ j, f1 j = n then 1 else 0) + 1))

end

end A133090.P14645786063730352827

namespace A133090

/-- `or(1, n*(char[2*n]+1))` -/
def P14645786063730352827.Spec : Prop :=
  ∀ n, (P14645786063730352827.a n : ℤ) = A133090 (n + 1)

end A133090

/-! ## A133090.P17717475577751739394

`∑{d}[or(n, -2), n-1+#]`
-/

namespace A133090.P17717475577751739394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - 1 + (d : ℤ))

end

end A133090.P17717475577751739394

namespace A133090

/-- `∑{d}[or(n, -2), n-1+#]` -/
def P17717475577751739394.Spec : Prop :=
  ∀ n, P17717475577751739394.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P2256212901454570226

`ogf((1+x+3x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A133090.P2256212901454570226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 1] [1, 0, -2, 0, 1] n

end

end A133090.P2256212901454570226

namespace A133090

/-- `ogf((1+x+3x^2+x^3)/(1-2x^2+x^4))` -/
def P2256212901454570226.Spec : Prop :=
  ∀ n, P2256212901454570226.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P10382230662621182063

`floor((2*n+1)/(n%2+1))`
-/

namespace A133090.P10382230662621182063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

end

end A133090.P10382230662621182063

namespace A133090

/-- `floor((2*n+1)/(n%2+1))` -/
def P10382230662621182063.Spec : Prop :=
  ∀ n, P10382230662621182063.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P6837360035138244907

`floor((2*n+1)/(and(1, n)+1))`
-/

namespace A133090.P6837360035138244907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ)⌋

end

end A133090.P6837360035138244907

namespace A133090

/-- `floor((2*n+1)/(and(1, n)+1))` -/
def P6837360035138244907.Spec : Prop :=
  ∀ n, P6837360035138244907.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P14516328401426371147

`((n+1)²+n)%(2*(n+1))`
-/

namespace A133090.P14516328401426371147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n) % (2 * (n + 1))

end

end A133090.P14516328401426371147

namespace A133090

/-- `((n+1)²+n)%(2*(n+1))` -/
def P14516328401426371147.Spec : Prop :=
  ∀ n, (P14516328401426371147.a n : ℤ) = A133090 (n + 1)

end A133090

/-! ## A133090.P16511257003120407846

`floor(Δ[n²]/gcd(n+1, n-1))`
-/

namespace A133090.P16511257003120407846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ)⌋

end

end A133090.P16511257003120407846

namespace A133090

/-- `floor(Δ[n²]/gcd(n+1, n-1))` -/
def P16511257003120407846.Spec : Prop :=
  ∀ n, P16511257003120407846.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P5853643683835111513

`∑{d}[1-a(n-1), n-1+#]` with `a(0)=2`
-/

namespace A133090.P5853643683835111513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - 1 + (d : ℤ))

end

end A133090.P5853643683835111513

namespace A133090

/-- `∑{d}[1-a(n-1), n-1+#]` -/
def P5853643683835111513.Spec : Prop :=
  ∀ n, P5853643683835111513.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P8744162852437011560

`∑[3-(a(n-1)-(-1)^n)]` with `a(0)=1, a(1)=0`
-/

namespace A133090.P8744162852437011560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 - (f1 (n - 1) - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133090.P8744162852437011560

namespace A133090

/-- `∑[3-(a(n-1)-(-1)^n)]` -/
def P8744162852437011560.Spec : Prop :=
  ∀ n, P8744162852437011560.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P3946147742601797338

`abs(2*n+1-(n+1)*and(1, n))`
-/

namespace A133090.P3946147742601797338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - ((n + 1) * Nat.land 1 n : ℤ)|

end

end A133090.P3946147742601797338

namespace A133090

/-- `abs(2*n+1-(n+1)*and(1, n))` -/
def P3946147742601797338.Spec : Prop :=
  ∀ n, P3946147742601797338.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P16831665930131324227

`abs((n+2)^and(1, n+1)+n-1)`
-/

namespace A133090.P16831665930131324227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 2) ^ Nat.land 1 (n + 1) : ℤ) + ((n : ℤ) - 1)|

end

end A133090.P16831665930131324227

namespace A133090

/-- `abs((n+2)^and(1, n+1)+n-1)` -/
def P16831665930131324227.Spec : Prop :=
  ∀ n, P16831665930131324227.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P12495633175630440603

`floor((2*n+1)/(or(1, n+1)-n))`
-/

namespace A133090.P12495633175630440603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / ((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋

end

end A133090.P12495633175630440603

namespace A133090

/-- `floor((2*n+1)/(or(1, n+1)-n))` -/
def P12495633175630440603.Spec : Prop :=
  ∀ n, P12495633175630440603.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P11459158862554681812

`floor(-(2*n+1)/or(n+1, -2))`
-/

namespace A133090.P11459158862554681812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((2 * n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-2) : ℚ))⌋

end

end A133090.P11459158862554681812

namespace A133090

/-- `floor(-(2*n+1)/or(n+1, -2))` -/
def P11459158862554681812.Spec : Prop :=
  ∀ n, P11459158862554681812.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P9245825069058656410

`-ceil((2*n+1)/or(n+1, -2))`
-/

namespace A133090.P9245825069058656410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(2 * n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-2) : ℚ)⌉

end

end A133090.P9245825069058656410

namespace A133090

/-- `-ceil((2*n+1)/or(n+1, -2))` -/
def P9245825069058656410.Spec : Prop :=
  ∀ n, P9245825069058656410.a n = A133090 (n + 1)

end A133090

/-! ## A133090.P16487156673193369893

`(and(1, n+1)+n/(n+1))*(n+1)`
-/

namespace A133090.P16487156673193369893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (n + 1) : ℚ) + (n : ℚ) / (n + 1 : ℚ)) * (n + 1 : ℚ)

end

end A133090.P16487156673193369893

namespace A133090

/-- `(and(1, n+1)+n/(n+1))*(n+1)` -/
def P16487156673193369893.Spec : Prop :=
  ∀ n, P16487156673193369893.a n = (A133090 (n + 1) : ℚ)

end A133090

/-! ## A133090.P5671955754838877935

`floor((n+1+n)/A000032(and(1, n-1)))`
-/

namespace A133090.P5671955754838877935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 + n : ℚ) / (A000032 (Int.land 1 ((n : ℤ) - 1)).toNat : ℚ)⌋

end

end A133090.P5671955754838877935

namespace A133090

/-- `floor((n+1+n)/A000032(and(1, n-1)))` -/
def P5671955754838877935.Spec : Prop :=
  ∀ n, P5671955754838877935.a n = A133090 (n + 1)

end A133090

/-!
# A133091: A133080 * A002260.

The programs for A133091, the canonical program `A133091.P6564816861379254758` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133091 has offset 1).

The definition of A133091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133091.P6564816861379254758

`gcd(2*A002260(n+1), A128228(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A133091

/-- `gcd(2*A002260(n+1), A128228(n+1))` -/
def P6564816861379254758.Spec : Prop :=
  ∀ n, (P6564816861379254758.a n : ℤ) = A133091 (n + 1)

theorem P6564816861379254758.correct : P6564816861379254758.Spec := by
  intro n
  simp only [A133091, Nat.add_sub_cancel]

end A133091

/-! ## A133091.P6271527198203867260

`gcd(A002024(n+1), A114284(n))*A002260(n+1)`
-/

namespace A133091.P6271527198203867260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002024 (n + 1)) (A114284 n) : ℤ) * A002260 (n + 1)

end

end A133091.P6271527198203867260

namespace A133091

/-- `gcd(A002024(n+1), A114284(n))*A002260(n+1)` -/
def P6271527198203867260.Spec : Prop :=
  ∀ n, P6271527198203867260.a n = A133091 (n + 1)

end A133091

/-! ## A133091.P2252998647512838050

`gcd(Δ[A185877(n+1)], A075362(n+1))`
-/

namespace A133091.P2252998647512838050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A075362 (n + 1))

end

end A133091.P2252998647512838050

namespace A133091

/-- `gcd(Δ[A185877(n+1)], A075362(n+1))` -/
def P2252998647512838050.Spec : Prop :=
  ∀ n, (P2252998647512838050.a n : ℤ) = A133091 (n + 1)

end A133091

/-! ## A133091.P13210197484360001699

`gcd(2, A115718(n))*A002260(n+1)`
-/

namespace A133091.P13210197484360001699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A115718 n) : ℤ) * A002260 (n + 1)

end

end A133091.P13210197484360001699

namespace A133091

/-- `gcd(2, A115718(n))*A002260(n+1)` -/
def P13210197484360001699.Spec : Prop :=
  ∀ n, P13210197484360001699.a n = A133091 (n + 1)

end A133091

/-! ## A133091.P13897215854041956304

`A002260(n+1)*A040001(A183110(n+1))`
-/

namespace A133091.P13897215854041956304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A040001 (A183110 (n + 1)).toNat

end

end A133091.P13897215854041956304

namespace A133091

/-- `A002260(n+1)*A040001(A183110(n+1))` -/
def P13897215854041956304.Spec : Prop :=
  ∀ n, P13897215854041956304.a n = A133091 (n + 1)

end A133091

/-! ## A133091.P4587262890550677266

`A040001(A183110(n+1))*A194832(A194833(n+1))`
-/

namespace A133091.P4587262890550677266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A183110 (n + 1)).toNat * A194832 (A194833 (n + 1)).toNat

end

end A133091.P4587262890550677266

namespace A133091

/-- `A040001(A183110(n+1))*A194832(A194833(n+1))` -/
def P4587262890550677266.Spec : Prop :=
  ∀ n, P4587262890550677266.a n = A133091 (n + 1)

end A133091

/-! ## A133091.P16029207662145089599

`A040001(A183110(n+1))*A194905(A194906(n+1))`
-/

namespace A133091.P16029207662145089599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A183110 (n + 1)).toNat * A194905 (A194906 (n + 1)).toNat

end

end A133091.P16029207662145089599

namespace A133091

/-- `A040001(A183110(n+1))*A194905(A194906(n+1))` -/
def P16029207662145089599.Spec : Prop :=
  ∀ n, P16029207662145089599.a n = A133091 (n + 1)

end A133091

/-! ## A133091.P14446071158199784846

`A040001(A183110(n+1))*A055396(A083221(n+2))`
-/

namespace A133091.P14446071158199784846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A183110 (n + 1)).toNat * A055396 (A083221 (n + 2)).toNat

end

end A133091.P14446071158199784846

namespace A133091

/-- `A040001(A183110(n+1))*A055396(A083221(n+2))` -/
def P14446071158199784846.Spec : Prop :=
  ∀ n, P14446071158199784846.a n = A133091 (n + 1)

end A133091

/-!
# A133092: Row sums of triangle A133091.

The programs for A133092, the canonical program `A133092.P13968623981935565512` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133092 has offset 1).

The definition of A133092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133092.P15803925130571389574

`(n+1)/4*(3*(n+1)+n*(-1)^(n+1)+1)`
-/

namespace A133092.P15803925130571389574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * ((3 * (n + 1) : ℤ) + (n : ℤ) * (-1) ^ (n + 1) + 1 : ℚ)

end

end A133092.P15803925130571389574

namespace A133092

/-- `(n+1)/4*(3*(n+1)+n*(-1)^(n+1)+1)` -/
def P15803925130571389574.Spec : Prop :=
  ∀ n, P15803925130571389574.a n = (A133092 (n + 1) : ℚ)

theorem P15803925130571389574.correct : P15803925130571389574.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A133092, Nat.add_sub_cancel, A133092.P15803925130571389574.a, A133092.P13968623981935565512.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A133092, Nat.add_sub_cancel, A133092.P15803925130571389574.a, A133092.P13968623981935565512.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A133092

/-! ## A133092.P13968623981935565512

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=16, a(4)=15, a(5)=36`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133092

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P13968623981935565512.Spec : Prop :=
  ∀ n, P13968623981935565512.a n = A133092 (n + 1)

theorem P13968623981935565512.correct : P13968623981935565512.Spec := by
  intro n
  simp only [A133092, Nat.add_sub_cancel]

end A133092

/-! ## A133092.P13356297132341325214

`lcm(n+1, ∑[n])+1+n`
-/

namespace A133092.P13356297132341325214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + n

end

end A133092.P13356297132341325214

namespace A133092

/-- `lcm(n+1, ∑[n])+1+n` -/
def P13356297132341325214.Spec : Prop :=
  ∀ n, (P13356297132341325214.a n : ℤ) = A133092 (n + 1)

end A133092

/-! ## A133092.P12331101139785468152

`∑[n]+C(or(1, n+1), n)`
-/

namespace A133092.P12331101139785468152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (Nat.lor 1 (n + 1)) n

end

end A133092.P12331101139785468152

namespace A133092

/-- `∑[n]+C(or(1, n+1), n)` -/
def P12331101139785468152.Spec : Prop :=
  ∀ n, (P12331101139785468152.a n : ℤ) = A133092 (n + 1)

end A133092

/-! ## A133092.P16965350429028971576

`∑[n+1]+and(1, n)*∑[n]`
-/

namespace A133092.P16965350429028971576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A133092.P16965350429028971576

namespace A133092

/-- `∑[n+1]+and(1, n)*∑[n]` -/
def P16965350429028971576.Spec : Prop :=
  ∀ n, (P16965350429028971576.a n : ℤ) = A133092 (n + 1)

end A133092

/-! ## A133092.P7367193851793061723

`floor((n+1)²*∑[n]/a(n-1))` with `a(0)=1`
-/

namespace A133092.P7367193851793061723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A133092.P7367193851793061723

namespace A133092

/-- `floor((n+1)²*∑[n]/a(n-1))` -/
def P7367193851793061723.Spec : Prop :=
  ∀ n, P7367193851793061723.a n = A133092 (n + 1)

end A133092

/-! ## A133092.P9154542205204763919

`floor((n+1)*(n+1)*∑[n]/a(n-1))` with `a(0)=1`
-/

namespace A133092.P9154542205204763919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) * ((n + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ)))⌋

end

end A133092.P9154542205204763919

namespace A133092

/-- `floor((n+1)*(n+1)*∑[n]/a(n-1))` -/
def P9154542205204763919.Spec : Prop :=
  ∀ n, P9154542205204763919.a n = A133092 (n + 1)

end A133092

/-! ## A133092.P15620239634565672803

`floor(∑[n+1]+a(n-1)^(-1)^(n+1))` with `a(0)=1`
-/

namespace A133092.P15620239634565672803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (a (n - 1) : ℚ) ^ ((-1) ^ (n + 1) : ℤ)⌋

end

end A133092.P15620239634565672803

namespace A133092

/-- `floor(∑[n+1]+a(n-1)^(-1)^(n+1))` -/
def P15620239634565672803.Spec : Prop :=
  ∀ n, P15620239634565672803.a n = A133092 (n + 1)

end A133092

/-!
# A133094: A007318 * A133080 * A097806, as infinite lower triangular matrices.

The programs for A133094, there is no canonical definition to state claims against.
-/

/-! ## A133094.P9401980015032784578

`A108611(A022167(n))+A099375(n)`
-/

namespace A133094.P9401980015032784578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A022167 n).toNat + A099375 n

end

end A133094.P9401980015032784578

/-! ## A133094.P12088302425809972334

`A108611(A147565(n))+A099375(n)`
-/

namespace A133094.P12088302425809972334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A147565 n).toNat + A099375 n

end

end A133094.P12088302425809972334

/-! ## A133094.P14383673226490705423

`A176202(A176200(n))+A099375(n)`
-/

namespace A133094.P14383673226490705423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176202 (A176200 n).toNat + A099375 n

end

end A133094.P14383673226490705423

/-!
# A133095: Row sums of triangle A133094.

The programs for A133095, the canonical program `A133095.P8965919824065541320` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133095 has offset 1).

The definition of A133095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133095.P8965919824065541320

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=20`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133095

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P8965919824065541320.Spec : Prop :=
  ∀ n, P8965919824065541320.a n = A133095 (n + 1)

theorem P8965919824065541320.correct : P8965919824065541320.Spec := by
  intro n
  simp only [A133095, Nat.add_sub_cancel]

end A133095

/-! ## A133095.P14018854536081965153

`∑[ogf((1-2x^2+2x^3)/(1-3x+2x^2))]`
-/

namespace A133095.P14018854536081965153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P14018854536081965153

namespace A133095

/-- `∑[ogf((1-2x^2+2x^3)/(1-3x+2x^2))]` -/
def P14018854536081965153.Spec : Prop :=
  ∀ n, P14018854536081965153.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P5721960518858331342

`ogf((1-2x^2+2x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A133095.P5721960518858331342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 2] [1, -4, 5, -2] n

end

end A133095.P5721960518858331342

namespace A133095

/-- `ogf((1-2x^2+2x^3)/(1-4x+5x^2-2x^3))` -/
def P5721960518858331342.Spec : Prop :=
  ∀ n, P5721960518858331342.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P2602954401535405121

`or(1, 3*2^n-2)-n`
-/

namespace A133095.P2602954401535405121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * 2 ^ n : ℤ) - 2) - (n : ℤ)

end

end A133095.P2602954401535405121

namespace A133095

/-- `or(1, 3*2^n-2)-n` -/
def P2602954401535405121.Spec : Prop :=
  ∀ n, P2602954401535405121.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P10683466087018139456

`∑[2*a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A133095.P10683466087018139456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P10683466087018139456

namespace A133095

/-- `∑[2*a(n-1)+1]` -/
def P10683466087018139456.Spec : Prop :=
  ∀ n, (P10683466087018139456.a n : ℤ) = A133095 (n + 1)

end A133095

/-! ## A133095.P8061719145466505061

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=6`
-/

namespace A133095.P8061719145466505061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 6] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P8061719145466505061

namespace A133095

/-- `∑[∑[2*a(n-1)]]` -/
def P8061719145466505061.Spec : Prop :=
  ∀ n, (P8061719145466505061.a n : ℤ) = A133095 (n + 1)

end A133095

/-! ## A133095.P5193789262831730899

`2*a(n-1)-1+n` with `a(0)=1, a(1)=4`
-/

namespace A133095.P5193789262831730899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) - 1 + (n : ℤ)

end

end A133095.P5193789262831730899

namespace A133095

/-- `2*a(n-1)-1+n` -/
def P5193789262831730899.Spec : Prop :=
  ∀ n, P5193789262831730899.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P11706986077344655569

`2*a(n-1)-(1-n)` with `a(0)=1, a(1)=4`
-/

namespace A133095.P11706986077344655569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) - (1 - (n : ℤ))

end

end A133095.P11706986077344655569

namespace A133095

/-- `2*a(n-1)-(1-n)` -/
def P11706986077344655569.Spec : Prop :=
  ∀ n, P11706986077344655569.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P761406198427818591

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A133095.P761406198427818591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P761406198427818591

namespace A133095

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P761406198427818591.Spec : Prop :=
  ∀ n, (P761406198427818591.a n : ℤ) = A133095 (n + 1)

end A133095

/-! ## A133095.P1195280278293757988

`a(n-1)-1+a(n-1)+n` with `a(0)=1, a(1)=4`
-/

namespace A133095.P1195280278293757988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + (n : ℤ))

end

end A133095.P1195280278293757988

namespace A133095

/-- `a(n-1)-1+a(n-1)+n` -/
def P1195280278293757988.Spec : Prop :=
  ∀ n, P1195280278293757988.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P10490196840470078984

`n-(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A133095.P10490196840470078984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1))

end

end A133095.P10490196840470078984

namespace A133095

/-- `n-(1-a(n-1)-a(n-1))` -/
def P10490196840470078984.Spec : Prop :=
  ∀ n, P10490196840470078984.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P4400653961528373259

`∑[A290114(n)]`
-/

namespace A133095.P4400653961528373259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P4400653961528373259

namespace A133095

/-- `∑[A290114(n)]` -/
def P4400653961528373259.Spec : Prop :=
  ∀ n, P4400653961528373259.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P30571032504392505

`A052940(n)-n`
-/

namespace A133095.P30571032504392505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n - (n : ℤ)

end

end A133095.P30571032504392505

namespace A133095

/-- `A052940(n)-n` -/
def P30571032504392505.Spec : Prop :=
  ∀ n, P30571032504392505.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P18043758362896606296

`∑[A058764(n)-1]`
-/

namespace A133095.P18043758362896606296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P18043758362896606296

namespace A133095

/-- `∑[A058764(n)-1]` -/
def P18043758362896606296.Spec : Prop :=
  ∀ n, P18043758362896606296.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P11007110715491431711

`∑[or(1, A055010(n))]`
-/

namespace A133095.P11007110715491431711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055010 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P11007110715491431711

namespace A133095

/-- `∑[or(1, A055010(n))]` -/
def P11007110715491431711.Spec : Prop :=
  ∀ n, P11007110715491431711.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P9270256815670811687

`∑[or(1, A083329(n))]`
-/

namespace A133095.P9270256815670811687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083329 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P9270256815670811687

namespace A133095

/-- `∑[or(1, A083329(n))]` -/
def P9270256815670811687.Spec : Prop :=
  ∀ n, P9270256815670811687.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P12952827239714624540

`∑[A369491(n)]+n`
-/

namespace A133095.P12952827239714624540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133095.P12952827239714624540

namespace A133095

/-- `∑[A369491(n)]+n` -/
def P12952827239714624540.Spec : Prop :=
  ∀ n, P12952827239714624540.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P12201567423893568046

`∑[∑[A111286(n)]]+n`
-/

namespace A133095.P12201567423893568046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133095.P12201567423893568046

namespace A133095

/-- `∑[∑[A111286(n)]]+n` -/
def P12201567423893568046.Spec : Prop :=
  ∀ n, P12201567423893568046.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P7570144576543619180

`∑[A087009(n+2)-1]`
-/

namespace A133095.P7570144576543619180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P7570144576543619180

namespace A133095

/-- `∑[A087009(n+2)-1]` -/
def P7570144576543619180.Spec : Prop :=
  ∀ n, P7570144576543619180.a n = A133095 (n + 1)

end A133095

/-! ## A133095.P6032118819376952604

`∑[or(1, A266550(n+2))]`
-/

namespace A133095.P6032118819376952604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A266550 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133095.P6032118819376952604

namespace A133095

/-- `∑[or(1, A266550(n+2))]` -/
def P6032118819376952604.Spec : Prop :=
  ∀ n, P6032118819376952604.a n = A133095 (n + 1)

end A133095

/-!
# A133096: a(n) = A079848(n) - A062294(n).

The programs for A133096, there is no canonical definition to state claims against.
-/

/-! ## A133096.P12063114683377469528

`A079848(n+1)-A062294(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133096.P12063114683377469528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (n + 1) - A062294 (n + 1)

end

end A133096.P12063114683377469528

/-! ## A133096.P13230003454594645622

`∑[A079849(abs(1-n)+1)]-A062294(n+1)`
-/

namespace A133096.P13230003454594645622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062294 (n + 1)

end

end A133096.P13230003454594645622

/-! ## A133096.P6582274788511779317

`∑[A079849(C(2, n+2)+n)]+1-A062294(n+1)`
-/

namespace A133096.P6582274788511779317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A062294 (n + 1)

end

end A133096.P6582274788511779317

/-! ## A133096.P13633862592160003614

`∑[A079849(n+1-round(n/(n+1)))]+1-A062294(n+1)`
-/

namespace A133096.P13633862592160003614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 ((n + 1 : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A062294 (n + 1)

end

end A133096.P13633862592160003614

/-! ## A133096.P14574095759270245398

`∑[A079849(A028310(n))]-A062294(n+1)+1`
-/

namespace A133096.P14574095759270245398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062294 (n + 1) + 1

end

end A133096.P14574095759270245398

/-!
# A133097: a(n) = A005282(n) - A011185(n-1).

The programs for A133097, there is no canonical definition to state claims against.
-/

/-! ## A133097.P3289829792694167111

`A005282(n+1)-A011185(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133097.P3289829792694167111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) - A011185 (n + 1)

end

end A133097.P3289829792694167111

/-! ## A133097.P17444586499392734529

`A025582(n+1)-A010672(n)`
-/

namespace A133097.P17444586499392734529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) - A010672 n

end

end A133097.P17444586499392734529

/-! ## A133097.P16477250649887128814

`A005282(n+1)-(A010672(n)+1)`
-/

namespace A133097.P16477250649887128814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) - (A010672 n + 1)

end

end A133097.P16477250649887128814

/-! ## A133097.P15559127901279254140

`A025582(n+1)+1-A011185(n+1)`
-/

namespace A133097.P15559127901279254140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) + (1 - A011185 (n + 1))

end

end A133097.P15559127901279254140

/-! ## A133097.P7645586342914186771

`A284917(n+1)-A011185(n+1)+n`
-/

namespace A133097.P7645586342914186771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1) - A011185 (n + 1) + (n : ℤ)

end

end A133097.P7645586342914186771

/-! ## A133097.P5576253747190442696

`A284917(n+1)+A023443(n)-A010672(n)`
-/

namespace A133097.P5576253747190442696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1) + (A023443 n - A010672 n)

end

end A133097.P5576253747190442696

/-! ## A133097.P2356471045849189317

`A284917(n+1)-(A024000(n)+A010672(n))`
-/

namespace A133097.P2356471045849189317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1) - (A024000 n + A010672 n)

end

end A133097.P2356471045849189317

