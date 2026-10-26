import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
# A391401: Primes obtained by iterating the map prime(j) -> prime(j + prime(j) + 1) starting at 2.

The programs for A391401, there is no canonical definition to state claims against.
-/

/-! ## A391401.P4632053562496201141

`Δ[A391616(n+1)]-1`
-/

namespace A391401.P4632053562496201141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A391401.P4632053562496201141

/-! ## A391401.P9329513874911451939

`A057428(n+1)+Δ[A391616(n+1)]`
-/

namespace A391401.P9329513874911451939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (f1 (n + 1) - f1 n)

end

end A391401.P9329513874911451939

/-! ## A391401.P14919246590176390247

`A375389(n+1)+Δ[A391616(n+1)]`
-/

namespace A391401.P14919246590176390247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (n + 1) + (f1 (n + 1) - f1 n)

end

end A391401.P14919246590176390247

/-! ## A391401.P2485735287728458172

`A391616(n+2)-(A391616(n+1)+1)`
-/

namespace A391401.P2485735287728458172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391616 (n + 2) - (A391616 (n + 1) + 1)

end

end A391401.P2485735287728458172

/-!
# A391403: Triangle read by rows: T(n,k) is k-th entry of the gamma-vector of the n-dimensional cyclohedron, 0 <= k <= floor(n/2).

The programs for A391403, the canonical program `A391403.P4218804131166072041` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391403 has offset 0).

The definition of A391403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391403.P4218804131166072041

`A011973(n)*A034868(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A391403

/-- `A011973(n)*A034868(n)` -/
def P4218804131166072041.Spec : Prop :=
  ∀ n, P4218804131166072041.a n = A391403 n

theorem P4218804131166072041.correct : P4218804131166072041.Spec := by
  intro n
  simp only [A391403]

end A391403

/-! ## A391403.P1993198434761507067

`A055151(n)*A122197(n+1)`
-/

namespace A391403.P1993198434761507067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055151 n * A122197 (n + 1)

end

end A391403.P1993198434761507067

namespace A391403

/-- `A055151(n)*A122197(n+1)` -/
def P1993198434761507067.Spec : Prop :=
  ∀ n, P1993198434761507067.a n = A391403 n

end A391403

/-! ## A391403.P7591815164782305704

`A089627(lt[0, A089627(n)])`
-/

namespace A391403.P7591815164782305704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A391403.P7591815164782305704

namespace A391403

/-- `A089627(lt[0, A089627(n)])` -/
def P7591815164782305704.Spec : Prop :=
  ∀ n, P7591815164782305704.a n = A391403 n

end A391403

/-! ## A391403.P8895145785103209239

`A063007(A091018(n))`
-/

namespace A391403.P8895145785103209239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A091018 n).toNat

end

end A391403.P8895145785103209239

namespace A391403

/-- `A063007(A091018(n))` -/
def P8895145785103209239.Spec : Prop :=
  ∀ n, P8895145785103209239.a n = A391403 n

end A391403

/-! ## A391403.P8556107747377732486

`filter[A089627(n), A276398(#)]`
-/

namespace A391403.P8556107747377732486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A391403.P8556107747377732486

namespace A391403

/-- `filter[A089627(n), A276398(#)]` -/
def P8556107747377732486.Spec : Prop :=
  ∀ n, P8556107747377732486.a n = A391403 n

end A391403

/-!
# A391404: Expansion of g^3/(1 + x*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391404, there is no canonical definition to state claims against.
-/

/-! ## A391404.P13655766206661375636

`A023053(n+1)+A023053(n)`
-/

namespace A391404.P13655766206661375636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023053 (n + 1) + A023053 n

end

end A391404.P13655766206661375636

/-! ## A391404.P11705155607256333012

`A302478(A011782(n)*A086615(n))`
-/

namespace A391404.P11705155607256333012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A011782 n * A086615 n).toNat

end

end A391404.P11705155607256333012

/-!
# A391405: Expansion of g^3/(1 + x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391405, there is no canonical definition to state claims against.
-/

/-! ## A391405.P4899590836925814864

`A369297(n)-A336356(A088037(n+4))`
-/

namespace A391405.P4899590836925814864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369297 n - A336356 (A088037 (n + 4)).toNat

end

end A391405.P4899590836925814864

/-!
# A391406: Expansion of g^4/(1 + x*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391406, there is no canonical definition to state claims against.
-/

/-! ## A391406.P6669599239504444178

`A001764(n+2)-A391404(n+1)`
-/

namespace A391406.P6669599239504444178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 2) - A391404 (n + 1)

end

end A391406.P6669599239504444178

/-!
# A391407: Expansion of g^4/(1 + x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391407, there is no canonical definition to state claims against.
-/

/-! ## A391407.P16482796998296240495

`A391404(n+1)-A391405(n+1)`
-/

namespace A391407.P16482796998296240495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391404 (n + 1) - A391405 (n + 1)

end

end A391407.P16482796998296240495

/-!
# A391408: Expansion of g^5/(1 + x*g)^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391408, the canonical program `A391408.P396316861093903294` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391408 has offset 0).

The definition of A391408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391408.P396316861093903294

`A114495(n+3)-A389115(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391408

/-- `A114495(n+3)-A389115(n+1)` -/
def P396316861093903294.Spec : Prop :=
  ∀ n, P396316861093903294.a n = A391408 n

theorem P396316861093903294.correct : P396316861093903294.Spec := by
  intro n
  simp only [A391408]

end A391408

/-! ## A391408.P6205149184971442858

`A389115(n+2)-A000958(n+3)`
-/

namespace A391408.P6205149184971442858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389115 (n + 2) - A000958 (n + 3)

end

end A391408.P6205149184971442858

namespace A391408

/-- `A389115(n+2)-A000958(n+3)` -/
def P6205149184971442858.Spec : Prop :=
  ∀ n, P6205149184971442858.a n = A391408 n

end A391408

/-!
# A391411: First of 3 consecutive primes p1 < p2 < p3 such that the pattern of differences [p2-p1, p3-p2] does not occur earlier.

The programs for A391411, there is no canonical definition to state claims against.
-/

/-! ## A391411.P13470178781231483508

`A033302(A391413(n+1))`
-/

namespace A391411.P13470178781231483508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A391413 (n + 1)).toNat

end

end A391411.P13470178781231483508

/-! ## A391411.P7878492248733071339

`A064989(A391412(n+1))`
-/

namespace A391411.P7878492248733071339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A391412 (n + 1)).toNat

end

end A391411.P7878492248733071339

/-! ## A391411.P12658870840333606417

`A129693(A381225(n))`
-/

namespace A391411.P12658870840333606417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129693 (A381225 n).toNat

end

end A391411.P12658870840333606417

/-! ## A391411.P14915421094865966563

`A129693(A001104(n+1))`
-/

namespace A391411.P14915421094865966563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129693 (A001104 (n + 1)).toNat

end

end A391411.P14915421094865966563

/-! ## A391411.P580985777933356506

`A129693(A002998(n+1))`
-/

namespace A391411.P580985777933356506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129693 (A002998 (n + 1)).toNat

end

end A391411.P580985777933356506

/-!
# A391412: Middle of 3 consecutive primes p1 < p2 < p3 such that the pattern of differences [p2-p1, p3-p2] does not occur earlier.

The programs for A391412, there is no canonical definition to state claims against.
-/

/-! ## A391412.P5637860247036269226

`A151800(A391411(n+1))`
-/

namespace A391412.P5637860247036269226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A391411 (n + 1)).toNat

end

end A391412.P5637860247036269226

/-! ## A391412.P13597851226684437573

`A064989(A391413(n+1))`
-/

namespace A391412.P13597851226684437573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A391413 (n + 1)).toNat

end

end A391412.P13597851226684437573

/-! ## A391412.P7746910886161495306

`A097248(A391411(n+1)^2)`
-/

namespace A391412.P7746910886161495306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A391411 (n + 1) ^ 2).toNat

end

end A391412.P7746910886161495306

/-!
# A391413: Last of 3 consecutive primes p1 < p2 < p3 such that the pattern of differences [p2-p1, p3-p2] does not occur earlier.

The programs for A391413, there is no canonical definition to state claims against.
-/

/-! ## A391413.P18007989293045005912

`A151800(A391412(n+1))`
-/

namespace A391413.P18007989293045005912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A391412 (n + 1)).toNat

end

end A391413.P18007989293045005912

/-! ## A391413.P1941419015131449454

`A151800(A151800(A391411(n+1)))`
-/

namespace A391413.P1941419015131449454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A391411 (n + 1)).toNat).toNat

end

end A391413.P1941419015131449454

/-! ## A391413.P11188505605890813551

`A045966(A391411(n+1))`
-/

namespace A391413.P11188505605890813551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A391411 (n + 1)).toNat

end

end A391413.P11188505605890813551

/-! ## A391413.P614307886427597523

`A322184(A095906(n+2))`
-/

namespace A391413.P614307886427597523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322184 (A095906 (n + 2)).toNat

end

end A391413.P614307886427597523

/-!
# A391415: Nonsquarefree numbers that are neither cubefree nor perfect powers.

The programs for A391415, there is no canonical definition to state claims against.
-/

/-! ## A391415.P7874553702006131909

`∪[A052486(n+1), A391319(n+1)]`
-/

namespace A391415.P7874553702006131909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P7874553702006131909

/-! ## A391415.P1945101186650512371

`∪[A389753(n+1), A391319(n+1)]`
-/

namespace A391415.P1945101186650512371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P1945101186650512371

/-! ## A391415.P4551646136943139867

`∩[A046099(n+1), A303946(n+1)]`
-/

namespace A391415.P4551646136943139867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P4551646136943139867

/-! ## A391415.P5426962512388656081

`∩[A074451(n+1), A303946(n+1)]`
-/

namespace A391415.P5426962512388656081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P5426962512388656081

/-! ## A391415.P7075548790676976514

`∩[A303946(n+1), A378767(n+1)]`
-/

namespace A391415.P7075548790676976514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P7075548790676976514

/-! ## A391415.P2192813620822660890

`∩[A046099(n+1), A106543(n+1)]`
-/

namespace A391415.P2192813620822660890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P2192813620822660890

/-! ## A391415.P4791924795315611850

`∩[A074451(n+1), A106543(n+1)]`
-/

namespace A391415.P4791924795315611850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P4791924795315611850

/-! ## A391415.P1946538801813591871

`∩[A106543(n+1), A378767(n+1)]`
-/

namespace A391415.P1946538801813591871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P1946538801813591871

/-! ## A391415.P3679864646192939857

`∩[A007916(n+1), A046099(n+1)]`
-/

namespace A391415.P3679864646192939857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P3679864646192939857

/-! ## A391415.P13429412011674433463

`∩[A007916(n+1), A074451(n+1)]`
-/

namespace A391415.P13429412011674433463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P13429412011674433463

/-! ## A391415.P8647271548378980220

`∩[A007916(n+1), A378767(n+1)]`
-/

namespace A391415.P8647271548378980220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P8647271548378980220

/-! ## A391415.P5291090864922182969

`∩[A046099(n+1), A175082(n+1)]`
-/

namespace A391415.P5291090864922182969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P5291090864922182969

/-! ## A391415.P3217772056368639328

`∩[A074451(n+1), A175082(n+1)]`
-/

namespace A391415.P3217772056368639328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P3217772056368639328

/-! ## A391415.P17166403582910876060

`∩[A175082(n+1), A378767(n+1)]`
-/

namespace A391415.P17166403582910876060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P17166403582910876060

/-! ## A391415.P322473854815395826

`filter[A046099(n+1), A132350(#)]`
-/

namespace A391415.P322473854815395826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391415.P322473854815395826

/-! ## A391415.P14298612355374677922

`filter[A074451(n+1), A132350(#)]`
-/

namespace A391415.P14298612355374677922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391415.P14298612355374677922

/-! ## A391415.P17627024866298111968

`filter[A378767(n+1), A132350(#)]`
-/

namespace A391415.P17627024866298111968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391415.P17627024866298111968

/-!
# A391416: Perfect powers that are neither prime powers nor cubefree.

The programs for A391416, there is no canonical definition to state claims against.
-/

/-! ## A391416.P17622608243429588864

`∪[A366854(n+1), A387255(n+1)]`
-/

namespace A391416.P17622608243429588864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P17622608243429588864

/-! ## A391416.P9588165359947633260

`∪[A366854(n+1), A388304(n+1)]`
-/

namespace A391416.P9588165359947633260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P9588165359947633260

/-! ## A391416.P17600347242377158235

`∪[A380857(n+1), A387255(n+1)]`
-/

namespace A391416.P17600347242377158235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P17600347242377158235

/-! ## A391416.P15132514598793491236

`∪[A386762(n+1), A387255(n+1)]`
-/

namespace A391416.P15132514598793491236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P15132514598793491236

/-! ## A391416.P5007479342624941076

`∪[A387255(n+1), A389864(n+1)]`
-/

namespace A391416.P5007479342624941076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P5007479342624941076

/-! ## A391416.P12794448886574544673

`∪[A387255(n+1), A389947(n+1)]`
-/

namespace A391416.P12794448886574544673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P12794448886574544673

/-! ## A391416.P1965514330987932962

`∪[A387255(n+1), A390379(n+1)]`
-/

namespace A391416.P1965514330987932962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P1965514330987932962

/-! ## A391416.P15739479893706574434

`∪[A388304(n+1), A389864(n+1)]`
-/

namespace A391416.P15739479893706574434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P15739479893706574434

/-! ## A391416.P12835162687023429423

`∩[A001597(n+1), A372404(n+1)]`
-/

namespace A391416.P12835162687023429423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P12835162687023429423

/-! ## A391416.P2823431288494355461

`∩[A131605(n+1), A372404(n+1)]`
-/

namespace A391416.P2823431288494355461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P2823431288494355461

/-! ## A391416.P17778206226324338575

`∩[A131605(n+1), A320966(n+1)]`
-/

namespace A391416.P17778206226324338575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P17778206226324338575

/-! ## A391416.P2365609149037927042

`∩[A001597(n+1), A389528(n+1)]`
-/

namespace A391416.P2365609149037927042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P2365609149037927042

/-! ## A391416.P13875801303278354021

`∩[A131605(n+1), A389528(n+1)]`
-/

namespace A391416.P13875801303278354021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P13875801303278354021

/-! ## A391416.P18130548154945902853

`∩[A059172(n+1), A131605(n+1)]`
-/

namespace A391416.P18130548154945902853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P18130548154945902853

/-! ## A391416.P927236226666538484

`∪[A366854(n+1), A390905(n+1)]`
-/

namespace A391416.P927236226666538484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P927236226666538484

/-! ## A391416.P6442598731311222429

`∪[A380857(n+1), A390905(n+1)]`
-/

namespace A391416.P6442598731311222429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P6442598731311222429

/-! ## A391416.P17301888362273264079

`∪[A389864(n+1), A390905(n+1)]`
-/

namespace A391416.P17301888362273264079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P17301888362273264079

/-! ## A391416.P3824949577520629765

`filter[A131605(n+1), A380439(#)]`
-/

namespace A391416.P3824949577520629765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A391416.P3824949577520629765

/-! ## A391416.P1240554678012436142

`∩[A372404(n+1), A396856(n+1)]`
-/

namespace A391416.P1240554678012436142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P1240554678012436142

/-! ## A391416.P14681785394617364804

`∩[A389528(n+1), A396856(n+1)]`
-/

namespace A391416.P14681785394617364804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P14681785394617364804

/-!
# A391417: Discriminants of real quadratic fields whose class group is isomorphic to (C_2)^r, r >= 0.

The programs for A391417, there is no canonical definition to state claims against.
-/

/-! ## A391417.P9146779882997945562

`filter[A391419(n+1), A290098(#)]`
-/

namespace A391417.P9146779882997945562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A391417.P9146779882997945562

/-! ## A391417.P10876563485126126445

`∩[A003658(n+1), A391419(n+1)]`
-/

namespace A391417.P10876563485126126445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391417.P10876563485126126445

/-! ## A391417.P11878619383635155803

`A003658(n+2)%A087766(A055922(n))`
-/

namespace A391417.P11878619383635155803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003658 (n + 2)) (A087766 (A055922 n).toNat)

end

end A391417.P11878619383635155803

/-! ## A391417.P3847774573052026853

`A003658(n+2)/A061347(A112804(n+1))`
-/

namespace A391417.P3847774573052026853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003658 (n + 2) : ℚ) / (A061347 (A112804 (n + 1)).toNat : ℚ)

end

end A391417.P3847774573052026853

/-! ## A391417.P234893682638356854

`lcm(A003658(n+2), A368433(A060778(n+1)))`
-/

namespace A391417.P234893682638356854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003658 (n + 2)) (A368433 (A060778 (n + 1)).toNat)

end

end A391417.P234893682638356854

/-!
# A391418: Class number of order of real quadratic fields with discriminant D = A079896(n).

The programs for A391418, there is no canonical definition to state claims against.
-/

/-! ## A391418.P2639828941845405772

`and(A116903(n), A391438(n+1))`
-/

namespace A391418.P2639828941845405772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116903 n) (A391438 (n + 1))

end

end A391418.P2639828941845405772

/-! ## A391418.P6145520644981082820

`and(A094841(n+1), A391438(n+1))`
-/

namespace A391418.P6145520644981082820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094841 (n + 1)) (A391438 (n + 1))

end

end A391418.P6145520644981082820

/-! ## A391418.P9152512199730661775

`A391439(n+1)+A102283(A003215(n))`
-/

namespace A391418.P9152512199730661775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A102283 (A003215 n).toNat

end

end A391418.P9152512199730661775

/-! ## A391418.P7948416860683379773

`A391439(n+1)+A051903(A024770(n+1))`
-/

namespace A391418.P7948416860683379773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A051903 (A024770 (n + 1)).toNat

end

end A391418.P7948416860683379773

/-! ## A391418.P931583480891014929

`A089473(A391439(n+1)^(lt[0, A167501(n+1)]+1))`
-/

namespace A391418.P931583480891014929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089473 (A391439 (n + 1) ^ (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)).toNat

end

end A391418.P931583480891014929

/-! ## A391418.P17203725161453258446

`A124771(A391439(n+1)^(lt[0, A167501(n+1)]+1))`
-/

namespace A391418.P17203725161453258446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 (A391439 (n + 1) ^ (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)).toNat

end

end A391418.P17203725161453258446

/-! ## A391418.P13522872432754377444

`and(A002223(n+1), A391438(n+1))`
-/

namespace A391418.P13522872432754377444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A391438 (n + 1))

end

end A391418.P13522872432754377444

/-! ## A391418.P3168340730894617749

`and(A001986(n+1), A391438(n+1))`
-/

namespace A391418.P3168340730894617749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001986 (n + 1)) (A391438 (n + 1))

end

end A391418.P3168340730894617749

/-! ## A391418.P2907045954531449774

`A391439(n+1)+A001065(A057749(n+1))`
-/

namespace A391418.P2907045954531449774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A001065 (A057749 (n + 1)).toNat

end

end A391418.P2907045954531449774

/-! ## A391418.P18384900785372368681

`and(A045535(n), A391438(n+1))`
-/

namespace A391418.P18384900785372368681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A391438 (n + 1))

end

end A391418.P18384900785372368681

/-!
# A391420: Discriminants of real quadratic fields with form class number 2.

The programs for A391420, there is no canonical definition to state claims against.
-/

/-! ## A391420.P5411118680158058502

`filter[A391424(n+1), A359828(#)]`
-/

namespace A391420.P5411118680158058502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A391420.P5411118680158058502

/-! ## A391420.P11124787341386855855

`filter[A391424(n+1), A290098(#)]`
-/

namespace A391420.P11124787341386855855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A391420.P11124787341386855855

/-! ## A391420.P4547113609261464804

`filter[A391422(n+3), A359828(#)]`
-/

namespace A391420.P4547113609261464804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A391420.P4547113609261464804

/-! ## A391420.P2815566751579300717

`∩[A391422(n+1), A391424(n+1)]`
-/

namespace A391420.P2815566751579300717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P2815566751579300717

/-! ## A391420.P2902202337408260279

`∩[A391417(n+1), A391424(n+1)]`
-/

namespace A391420.P2902202337408260279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P2902202337408260279

/-! ## A391420.P17151226714687013834

`∩[A072902(n+1), A391424(n+1)]`
-/

namespace A391420.P17151226714687013834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P17151226714687013834

/-! ## A391420.P6487909653757548470

`∩[A003658(n+1), A391424(n+1)]`
-/

namespace A391420.P6487909653757548470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P6487909653757548470

/-! ## A391420.P8951321434199452846

`∩[A289558(n+1), A391422(n+1)]`
-/

namespace A391420.P8951321434199452846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P8951321434199452846

/-! ## A391420.P5023911966437559924

`∩[A084227(n+1), A391422(n+1)]`
-/

namespace A391420.P5023911966437559924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P5023911966437559924

/-! ## A391420.P966590862975886269

`∩[A007774(n+1), A391422(n+1)]`
-/

namespace A391420.P966590862975886269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P966590862975886269

/-! ## A391420.P12593903165774054458

`∩[A267114(n+1), A391422(n+1)]`
-/

namespace A391420.P12593903165774054458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P12593903165774054458

/-! ## A391420.P12848728797653530182

`filter[A391422(n+1), A215480(#)]`
-/

namespace A391420.P12848728797653530182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A391420.P12848728797653530182

/-!
# A391421: Discriminants of real quadratic fields with form class number 3.

The programs for A391421, there is no canonical definition to state claims against.
-/

/-! ## A391421.P8372939516769869944

`∩[A350165(n+1), A391425(n+1)]`
-/

namespace A391421.P8372939516769869944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P8372939516769869944

/-! ## A391421.P14181346454156706874

`p?[A391425(n+1)]`
-/

namespace A391421.P14181346454156706874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391421.P14181346454156706874

/-! ## A391421.P511667529968104161

`∩[A342368(n+1), A391425(n+1)]`
-/

namespace A391421.P511667529968104161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P511667529968104161

/-! ## A391421.P18217662604551478288

`∩[A029703(n+1), A350165(n+1)]`
-/

namespace A391421.P18217662604551478288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P18217662604551478288

/-! ## A391421.P14097882905747542783

`∩[A029703(n+1), A391425(n+1)]`
-/

namespace A391421.P14097882905747542783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14097882905747542783

/-! ## A391421.P15671869876088690975

`∩[A008846(n+1), A029703(n+1)]`
-/

namespace A391421.P15671869876088690975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P15671869876088690975

/-! ## A391421.P5830836020744606848

`p?[A344409(n+1)]`
-/

namespace A391421.P5830836020744606848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391421.P5830836020744606848

/-! ## A391421.P15644989234815287364

`∩[A008846(n+1), A344409(n+1)]`
-/

namespace A391421.P15644989234815287364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P15644989234815287364

/-! ## A391421.P10926297414497667475

`∩[A344409(n+1), A350165(n+1)]`
-/

namespace A391421.P10926297414497667475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P10926297414497667475

/-! ## A391421.P14234500031306731925

`∩[A029703(n+1), A191218(n+1)]`
-/

namespace A391421.P14234500031306731925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14234500031306731925

/-! ## A391421.P3421449611645941119

`∩[A191218(n+1), A391425(n+1)]`
-/

namespace A391421.P3421449611645941119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P3421449611645941119

/-! ## A391421.P14633951796728494723

`∩[A002144(n+1), A029703(n+1)]`
-/

namespace A391421.P14633951796728494723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14633951796728494723

/-! ## A391421.P11655699058861999048

`∩[A002313(n+1), A029703(n+1)]`
-/

namespace A391421.P11655699058861999048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P11655699058861999048

/-! ## A391421.P13352977197743650306

`∩[A029703(n+1), A280084(n+1)]`
-/

namespace A391421.P13352977197743650306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P13352977197743650306

/-! ## A391421.P14969722979698477476

`∩[A002144(n+1), A344409(n+1)]`
-/

namespace A391421.P14969722979698477476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14969722979698477476

/-! ## A391421.P7473095917838253025

`∩[A002313(n+1), A344409(n+1)]`
-/

namespace A391421.P7473095917838253025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P7473095917838253025

/-! ## A391421.P14226710033109717450

`∩[A029703(n+1), A055025(n+1)]`
-/

namespace A391421.P14226710033109717450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14226710033109717450

/-! ## A391421.P4260276997699662478

`∩[A029703(n+1), A120960(n+1)]`
-/

namespace A391421.P4260276997699662478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P4260276997699662478

/-! ## A391421.P10179510754945638777

`∩[A029703(n+1), A085759(n+1)]`
-/

namespace A391421.P10179510754945638777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P10179510754945638777

/-! ## A391421.P18379411444218530614

`∩[A344409(n+1), A085759(n+1)]`
-/

namespace A391421.P18379411444218530614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P18379411444218530614

/-!
# A391422: Discriminants of real quadratic fields with 1 class per genus.

The programs for A391422, there is no canonical definition to state claims against.
-/

/-! ## A391422.P8873487555059708109

`filter[A390079(n+1), A290098(#)]`
-/

namespace A391422.P8873487555059708109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A391422.P8873487555059708109

/-! ## A391422.P16271827165374413184

`∩[A003658(n+1), A390079(n+1)]`
-/

namespace A391422.P16271827165374413184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391422.P16271827165374413184

/-! ## A391422.P3027927320200066938

`∩[A390079(n+1), A391417(n+1)]`
-/

namespace A391422.P3027927320200066938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391422.P3027927320200066938

/-! ## A391422.P11154252082516843056

`filter[A372519(n+2), A290098(#)]`
-/

namespace A391422.P11154252082516843056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372519 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A391422.P11154252082516843056

/-! ## A391422.P4031242007060904652

`∩[A003658(n+1), A372519(n+1)]`
-/

namespace A391422.P4031242007060904652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391422.P4031242007060904652

/-!
# A391423: Positive discriminants of orders of quadratic fields with form class number 1.

The programs for A391423, there is no canonical definition to state claims against.
-/

/-! ## A391423.P17451908421504023496

`∩[A133315(n+1), A226696(n+1)]`
-/

namespace A391423.P17451908421504023496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P17451908421504023496

/-! ## A391423.P11680810044919857078

`∩[A057129(n+1), A133315(n+1)]`
-/

namespace A391423.P11680810044919857078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P11680810044919857078

/-! ## A391423.P10467392285389472259

`∩[A133315(n+1), A341420(n+1)]`
-/

namespace A391423.P10467392285389472259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P10467392285389472259

/-! ## A391423.P10087407970673554559

`∩[A226696(n+1), A347453(n+1)]`
-/

namespace A391423.P10087407970673554559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P10087407970673554559

/-! ## A391423.P8405695499196116172

`∩[A226696(n+1), A383112(n+1)]`
-/

namespace A391423.P8405695499196116172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P8405695499196116172

/-!
# A391425: Positive discriminants of orders of quadratic fields with form class number 3.

The programs for A391425, there is no canonical definition to state claims against.
-/

/-! ## A391425.P8772223671733800363

`∩[A226696(n+1), A344409(n+1)]`
-/

namespace A391425.P8772223671733800363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391425.P8772223671733800363

/-! ## A391425.P10669153075121691137

`∩[A057129(n+1), A344409(n+1)]`
-/

namespace A391425.P10669153075121691137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391425.P10669153075121691137

/-!
# A391426: Number of elements that square to the identity in the class group of the real quadratic field with discriminant A003658(n), n >= 2.

The programs for A391426, there is no canonical definition to state claims against.
-/

/-! ## A391426.P15848951989352495224

`2^A391436(n+2)`
-/

namespace A391426.P15848951989352495224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391436 (n + 2) : ℤ)

end

end A391426.P15848951989352495224

/-! ## A391426.P15465915595362536958

`A001523(A391436(n+2)+A001511(2*n+1))`
-/

namespace A391426.P15465915595362536958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A391436 (n + 2) + A001511 (2 * n + 1)).toNat

end

end A391426.P15465915595362536958

/-! ## A391426.P1526675774046479676

`A320487(A001511(2*n+1)*A391436(n+2))`
-/

namespace A391426.P1526675774046479676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (A001511 (2 * n + 1) * A391436 (n + 2)).toNat

end

end A391426.P1526675774046479676

/-! ## A391426.P16565408365687009143

`A242350(A391436(n+2)+A027642(2*n+3))`
-/

namespace A391426.P16565408365687009143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242350 (A391436 (n + 2) + A027642 (2 * n + 3)).toNat

end

end A391426.P16565408365687009143

/-! ## A391426.P6125692697340341250

`A033478(A166459(n+1)-A391436(n+2))`
-/

namespace A391426.P6125692697340341250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (A166459 (n + 1) - A391436 (n + 2)).toNat

end

end A391426.P6125692697340341250

/-! ## A391426.P15449198141841624411

`A000005(C(A000040(n+1), A391436(n+2)))`
-/

namespace A391426.P15449198141841624411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A000040 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P15449198141841624411

/-! ## A391426.P3258636405057969055

`A000005(C(A040974(n+1), A391436(n+2)))`
-/

namespace A391426.P3258636405057969055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A040974 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P3258636405057969055

/-! ## A391426.P12866109120909593997

`A073093(C(A000040(n+1), A391436(n+2)))`
-/

namespace A391426.P12866109120909593997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (Nat.choose (A000040 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P12866109120909593997

/-! ## A391426.P11316591202472914601

`A000005(C(A260805(n+1), A391436(n+2)))`
-/

namespace A391426.P11316591202472914601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A260805 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P11316591202472914601

/-! ## A391426.P12104125960435519999

`A349356(C(A153812(n+1), A391436(n+2)))`
-/

namespace A391426.P12104125960435519999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349356 (Nat.choose (A153812 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P12104125960435519999

/-! ## A391426.P9307661323689071960

`A000005(C(A379351(n+3), A391436(n+2)))`
-/

namespace A391426.P9307661323689071960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A379351 (n + 3)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P9307661323689071960

/-! ## A391426.P2623137220273542692

`gcd(A001157(A033205(2*(n+1))), A003652(n+2))`
-/

namespace A391426.P2623137220273542692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001157 (A033205 (2 * (n + 1))).toNat) (A003652 (n + 2))

end

end A391426.P2623137220273542692

/-! ## A391426.P7677406920760149329

`A391436(n+2)+A346704(A141180(2*n+5))`
-/

namespace A391426.P7677406920760149329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391436 (n + 2) + A346704 (A141180 (2 * n + 5)).toNat

end

end A391426.P7677406920760149329

/-! ## A391426.P12757797321602142311

`A000034(A141180(2*n+5)*A391436(n+2))`
-/

namespace A391426.P12757797321602142311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A141180 (2 * n + 5) * A391436 (n + 2)).toNat

end

end A391426.P12757797321602142311

/-! ## A391426.P17365683942557111003

`A000034(A391436(n+2)+A309686(n))`
-/

namespace A391426.P17365683942557111003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A391436 (n + 2) + A309686 n).toNat

end

end A391426.P17365683942557111003

/-! ## A391426.P1731758776840898343

`gcd(A003652(n+2), A033547(A000700(n)))`
-/

namespace A391426.P1731758776840898343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003652 (n + 2)) (A033547 (A000700 n).toNat)

end

end A391426.P1731758776840898343

/-! ## A391426.P9024546296127559878

`A391436(n+2)+A000035(A088563(n+1))`
-/

namespace A391426.P9024546296127559878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391436 (n + 2) + A000035 (A088563 (n + 1)).toNat

end

end A391426.P9024546296127559878

/-! ## A391426.P7921011684399303181

`A391436(n+2)+A005086(A031928(n+1))`
-/

namespace A391426.P7921011684399303181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391436 (n + 2) + A005086 (A031928 (n + 1)).toNat

end

end A391426.P7921011684399303181

/-! ## A391426.P15420643662102310280

`A086669(n+2)+A391436(n+2)-A193140(n+2)`
-/

namespace A391426.P15420643662102310280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (n + 2) + (A391436 (n + 2) - A193140 (n + 2))

end

end A391426.P15420643662102310280

/-!
# A391427: Cubefree exponential abundant numbers: cubefree numbers k for which A051377(k) > 2*k.

The programs for A391427, there is no canonical definition to state claims against.
-/

/-! ## A391427.P12633261061647320090

`filter[A129575(n+1), A212793(#)]`
-/

namespace A391427.P12633261061647320090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A391427.P12633261061647320090

/-! ## A391427.P17832065150881382264

`filter[A129575(n+1), A359429(#)]`
-/

namespace A391427.P17832065150881382264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391427.P17832065150881382264

/-! ## A391427.P5027145514872919509

`filter[A383693(n+1), A212793(#)]`
-/

namespace A391427.P5027145514872919509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A391427.P5027145514872919509

/-! ## A391427.P369486679896007193

`filter[A383697(n+1), A212793(#)]`
-/

namespace A391427.P369486679896007193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A391427.P369486679896007193

/-! ## A391427.P2384501417121925309

`filter[A383697(n+1), A355823(#)]`
-/

namespace A391427.P2384501417121925309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A391427.P2384501417121925309

/-! ## A391427.P4502821240160210338

`filter[A383697(n+1), A355825(#)]`
-/

namespace A391427.P4502821240160210338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A391427.P4502821240160210338

/-! ## A391427.P3675510131479847848

`filter[A383693(n+1), A359429(#)]`
-/

namespace A391427.P3675510131479847848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391427.P3675510131479847848

/-! ## A391427.P4996529767170631105

`filter[A383697(n+1), A359429(#)]`
-/

namespace A391427.P4996529767170631105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391427.P4996529767170631105

/-!
# A391428: Exponential abundant numbers that are squares of squarefree numbers.

The programs for A391428, the canonical program `A391428.P16960108032895023113` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391428 has offset 1).

The definition of A391428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391428.P16960108032895023113

`A087248(n+1)²`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A391428

/-- `A087248(n+1)²` -/
def P16960108032895023113.Spec : Prop :=
  ∀ n, P16960108032895023113.a n = A391428 (n + 1)

theorem P16960108032895023113.correct : P16960108032895023113.Spec := by
  intro n
  simp only [A391428, Nat.add_sub_cancel]

end A391428

/-! ## A391428.P17958095210807468864

`∩[A328136(n+1), A391320(n+1)]`
-/

namespace A391428.P17958095210807468864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P17958095210807468864

namespace A391428

/-- `∩[A328136(n+1), A391320(n+1)]` -/
def P17958095210807468864.Spec : Prop :=
  ∀ n, (P17958095210807468864.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P10263924566717290779

`∩[A383694(n+1), A391320(n+1)]`
-/

namespace A391428.P10263924566717290779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P10263924566717290779

namespace A391428

/-- `∩[A383694(n+1), A391320(n+1)]` -/
def P10263924566717290779.Spec : Prop :=
  ∀ n, (P10263924566717290779.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P9686398672190721162

`∩[A383698(n+1), A391320(n+1)]`
-/

namespace A391428.P9686398672190721162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P9686398672190721162

namespace A391428

/-- `∩[A383698(n+1), A391320(n+1)]` -/
def P9686398672190721162.Spec : Prop :=
  ∀ n, (P9686398672190721162.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P10987438935478920346

`∩[A391087(n+1), A391320(n+1)]`
-/

namespace A391428.P10987438935478920346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P10987438935478920346

namespace A391428

/-- `∩[A391087(n+1), A391320(n+1)]` -/
def P10987438935478920346.Spec : Prop :=
  ∀ n, (P10987438935478920346.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P10700617014557072056

`∩[A391089(n+1), A391320(n+1)]`
-/

namespace A391428.P10700617014557072056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P10700617014557072056

namespace A391428

/-- `∩[A391089(n+1), A391320(n+1)]` -/
def P10700617014557072056.Spec : Prop :=
  ∀ n, (P10700617014557072056.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P14990694777612584356

`∩[A328136(n+1), A392741(n+1)]`
-/

namespace A391428.P14990694777612584356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P14990694777612584356

namespace A391428

/-- `∩[A328136(n+1), A392741(n+1)]` -/
def P14990694777612584356.Spec : Prop :=
  ∀ n, (P14990694777612584356.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P11424390008694658250

`∩[A383694(n+1), A392741(n+1)]`
-/

namespace A391428.P11424390008694658250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P11424390008694658250

namespace A391428

/-- `∩[A383694(n+1), A392741(n+1)]` -/
def P11424390008694658250.Spec : Prop :=
  ∀ n, (P11424390008694658250.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P16341672721347454704

`∩[A383698(n+1), A392741(n+1)]`
-/

namespace A391428.P16341672721347454704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P16341672721347454704

namespace A391428

/-- `∩[A383698(n+1), A392741(n+1)]` -/
def P16341672721347454704.Spec : Prop :=
  ∀ n, (P16341672721347454704.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P17148734916386274269

`∩[A391087(n+1), A392741(n+1)]`
-/

namespace A391428.P17148734916386274269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P17148734916386274269

namespace A391428

/-- `∩[A391087(n+1), A392741(n+1)]` -/
def P17148734916386274269.Spec : Prop :=
  ∀ n, (P17148734916386274269.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P2134745207794268542

`∩[A391089(n+1), A392741(n+1)]`
-/

namespace A391428.P2134745207794268542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P2134745207794268542

namespace A391428

/-- `∩[A391089(n+1), A392741(n+1)]` -/
def P2134745207794268542.Spec : Prop :=
  ∀ n, (P2134745207794268542.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P11149276779492037497

`∩[A328136(n+1), A340674(n+1)]`
-/

namespace A391428.P11149276779492037497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P11149276779492037497

namespace A391428

/-- `∩[A328136(n+1), A340674(n+1)]` -/
def P11149276779492037497.Spec : Prop :=
  ∀ n, (P11149276779492037497.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P16808616755583264317

`∩[A340674(n+1), A383694(n+1)]`
-/

namespace A391428.P16808616755583264317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P16808616755583264317

namespace A391428

/-- `∩[A340674(n+1), A383694(n+1)]` -/
def P16808616755583264317.Spec : Prop :=
  ∀ n, (P16808616755583264317.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P8421422768009266921

`∩[A340674(n+1), A383698(n+1)]`
-/

namespace A391428.P8421422768009266921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P8421422768009266921

namespace A391428

/-- `∩[A340674(n+1), A383698(n+1)]` -/
def P8421422768009266921.Spec : Prop :=
  ∀ n, (P8421422768009266921.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P2966377688072911799

`∩[A072777(n+1), A328136(n+1)]`
-/

namespace A391428.P2966377688072911799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P2966377688072911799

namespace A391428

/-- `∩[A072777(n+1), A328136(n+1)]` -/
def P2966377688072911799.Spec : Prop :=
  ∀ n, (P2966377688072911799.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P17834664545547518899

`∩[A072777(n+1), A383694(n+1)]`
-/

namespace A391428.P17834664545547518899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P17834664545547518899

namespace A391428

/-- `∩[A072777(n+1), A383694(n+1)]` -/
def P17834664545547518899.Spec : Prop :=
  ∀ n, (P17834664545547518899.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P615532355505397701

`∩[A072777(n+1), A383698(n+1)]`
-/

namespace A391428.P615532355505397701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P615532355505397701

namespace A391428

/-- `∩[A072777(n+1), A383698(n+1)]` -/
def P615532355505397701.Spec : Prop :=
  ∀ n, (P615532355505397701.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P1411524714794636480

`∩[A177492(n+1), A328136(n+1)]`
-/

namespace A391428.P1411524714794636480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P1411524714794636480

namespace A391428

/-- `∩[A177492(n+1), A328136(n+1)]` -/
def P1411524714794636480.Spec : Prop :=
  ∀ n, (P1411524714794636480.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P16926077634482205783

`∩[A177492(n+1), A383694(n+1)]`
-/

namespace A391428.P16926077634482205783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P16926077634482205783

namespace A391428

/-- `∩[A177492(n+1), A383694(n+1)]` -/
def P16926077634482205783.Spec : Prop :=
  ∀ n, (P16926077634482205783.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P18305644394788965115

`∩[A177492(n+1), A383698(n+1)]`
-/

namespace A391428.P18305644394788965115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P18305644394788965115

namespace A391428

/-- `∩[A177492(n+1), A383698(n+1)]` -/
def P18305644394788965115.Spec : Prop :=
  ∀ n, (P18305644394788965115.a n : ℤ) = A391428 (n + 1)

end A391428

/-!
# A391430: Odd exponential abundant numbers that are squares of squarefree numbers.

The programs for A391430, there is no canonical definition to state claims against.
-/

/-! ## A391430.P2469840165840415686

`A112643(n+1)²`
-/

namespace A391430.P2469840165840415686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1) ^ 2

end

end A391430.P2469840165840415686

/-! ## A391430.P9855372663913099466

`(A387153(n+1)/2)²`
-/

namespace A391430.P9855372663913099466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A387153 (n + 1) : ℚ) / 2) ^ 2

end

end A391430.P9855372663913099466

/-! ## A391430.P3957478941173191582

`A112643(n+1)^A054348(floor(1/(n+1)))`
-/

namespace A391430.P3957478941173191582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A054348 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A391430.P3957478941173191582

/-! ## A391430.P7520262205586683121

`A112643(A000027(n+1))*A112643(n+1)`
-/

namespace A391430.P7520262205586683121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A000027 (n + 1)).toNat * A112643 (n + 1)

end

end A391430.P7520262205586683121

/-! ## A391430.P18165375123777304729

`A112643(n+1)^A001221(A006881(n+1))`
-/

namespace A391430.P18165375123777304729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A001221 (A006881 (n + 1)).toNat : ℤ)

end

end A391430.P18165375123777304729

/-! ## A391430.P5759767564875700761

`A112643(n+1)^A158478(A109168(2*(n+1)))`
-/

namespace A391430.P5759767564875700761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A158478 (A109168 (2 * (n + 1))).toNat : ℤ)

end

end A391430.P5759767564875700761

/-! ## A391430.P2810121586297896826

`A112643(n+1)^A001055(A001358(n+1))`
-/

namespace A391430.P2810121586297896826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A001055 (A001358 (n + 1)).toNat : ℤ)

end

end A391430.P2810121586297896826

/-! ## A391430.P13381521701563325722

`A112643(n+1)^A158478(A113127(n+4))`
-/

namespace A391430.P13381521701563325722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A158478 (A113127 (n + 4)).toNat : ℤ)

end

end A391430.P13381521701563325722

/-! ## A391430.P3989924672401054130

`∩[A156942(n+1), A391429(n+1)]`
-/

namespace A391430.P3989924672401054130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391430.P3989924672401054130

/-!
# A391435: Number of elements that square to the identity in the class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

The programs for A391435, there is no canonical definition to state claims against.
-/

/-! ## A391435.P13031660213317392190

`2^A391437(n+2)`
-/

namespace A391435.P13031660213317392190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391437 (n + 2) : ℤ)

end

end A391435.P13031660213317392190

/-! ## A391435.P6857524498564084779

`gcd(A003649(n+2), A057709((n+2)²))`
-/

namespace A391435.P6857524498564084779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003649 (n + 2)) (A057709 ((n + 2) ^ 2))

end

end A391435.P6857524498564084779

/-! ## A391435.P9945063082363992804

`A000002(C(A013948(n+1), A391437(n+2)))`
-/

namespace A391435.P9945063082363992804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Nat.choose (A013948 (n + 1)).toNat (A391437 (n + 2)).toNat)

end

end A391435.P9945063082363992804

/-! ## A391435.P1935737505895402386

`A040001(C(A055932(n+1), A391437(n+2)))`
-/

namespace A391435.P1935737505895402386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Nat.choose (A055932 (n + 1)).toNat (A391437 (n + 2)).toNat)

end

end A391435.P1935737505895402386

/-! ## A391435.P3980889499382897040

`A000002(C(A156242(n+1), A391437(n+2)))`
-/

namespace A391435.P3980889499382897040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Nat.choose (A156242 (n + 1)).toNat (A391437 (n + 2)).toNat)

end

end A391435.P3980889499382897040

/-! ## A391435.P11293609376816865028

`A391437(n+2)+A057427(A282291(n+1))`
-/

namespace A391435.P11293609376816865028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A057427 (A282291 (n + 1)).toNat

end

end A391435.P11293609376816865028

/-! ## A391435.P3170169539323308208

`A391437(n+2)+A001222(A085318(n+5))`
-/

namespace A391435.P3170169539323308208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A001222 (A085318 (n + 5)).toNat

end

end A391435.P3170169539323308208

/-! ## A391435.P2624201688649819656

`A391437(n+2)+A000001(A205511(n+1))`
-/

namespace A391435.P2624201688649819656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A000001 (A205511 (n + 1)).toNat

end

end A391435.P2624201688649819656

/-! ## A391435.P12707348130429220678

`A391437(n+2)+A091602(A000217(2*(n+1)))`
-/

namespace A391435.P12707348130429220678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A091602 (A000217 (2 * (n + 1))).toNat

end

end A391435.P12707348130429220678

/-! ## A391435.P10392737198335488437

`A391437(n+2)+A267919(A008000(n))`
-/

namespace A391435.P10392737198335488437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A267919 (A008000 n).toNat

end

end A391435.P10392737198335488437

/-!
# A391436: 2-rank of the class group of the real quadratic field with discriminant A003658(n), n >= 2.

The programs for A391436, there is no canonical definition to state claims against.
-/

/-! ## A391436.P2267528935783319524

`log2(A391426(n+2))`
-/

namespace A391436.P2267528935783319524
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391426 (n + 2) : ℝ)

end

end A391436.P2267528935783319524

/-! ## A391436.P8983499560415415652

`A089309(A391426(n+2)-A028920(2*n))`
-/

namespace A391436.P8983499560415415652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A391426 (n + 2) - A028920 (2 * n)).toNat

end

end A391436.P8983499560415415652

/-! ## A391436.P6241632615698567223

`val(A391426(n+2)-A185014(3*(n+1)), 2)`
-/

namespace A391436.P6241632615698567223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A391426 (n + 2) - A185014 (3 * (n + 1))).toNat 2

end

end A391436.P6241632615698567223

/-! ## A391436.P2068029329313292966

`val(A391426(n+2), A055396(A016945(n)))`
-/

namespace A391436.P2068029329313292966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A391426 (n + 2)).toNat (A055396 (A016945 n).toNat).toNat

end

end A391436.P2068029329313292966

/-! ## A391436.P13786848317801801621

`A007814(A000265(n+1)*A391426(n+2))`
-/

namespace A391436.P13786848317801801621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000265 (n + 1) * A391426 (n + 2)).toNat

end

end A391436.P13786848317801801621

/-! ## A391436.P2705487041397652633

`A007814(A016945(n)*A391426(n+2))`
-/

namespace A391436.P2705487041397652633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016945 n * A391426 (n + 2)).toNat

end

end A391436.P2705487041397652633

/-! ## A391436.P4314422511948817391

`A007814(lcm(A016945(n), A391426(n+2)))`
-/

namespace A391436.P4314422511948817391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm (A016945 n) (A391426 (n + 2)))

end

end A391436.P4314422511948817391

/-! ## A391436.P10952879597094058866

`A007814(A000959(n+1)*A391426(n+2))`
-/

namespace A391436.P10952879597094058866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000959 (n + 1) * A391426 (n + 2)).toNat

end

end A391436.P10952879597094058866

/-! ## A391436.P14373528396692875458

`A128346(A001055(2*n+1))%A391426(n+2)`
-/

namespace A391436.P14373528396692875458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128346 (A001055 (2 * n + 1)).toNat) (A391426 (n + 2))

end

end A391436.P14373528396692875458

/-! ## A391436.P8307676075827073592

`A338010(2*(n+2))%A391426(n+2)`
-/

namespace A391436.P8307676075827073592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338010 (2 * (n + 2))) (A391426 (n + 2))

end

end A391436.P8307676075827073592

/-! ## A391436.P16328564155969861331

`A391426(n+2)+A008683(A306931(n+1))`
-/

namespace A391436.P16328564155969861331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391426 (n + 2) + A008683 (A306931 (n + 1)).toNat

end

end A391436.P16328564155969861331

/-! ## A391436.P7639154697817962626

`A001359(A225485(2*n+5))%A391426(n+2)`
-/

namespace A391436.P7639154697817962626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (A225485 (2 * n + 5)).toNat) (A391426 (n + 2))

end

end A391436.P7639154697817962626

/-! ## A391436.P16208278489576293877

`A391426(n+2)-A005171(A120073(n+2))`
-/

namespace A391436.P16208278489576293877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391426 (n + 2) - A005171 (A120073 (n + 2)).toNat

end

end A391436.P16208278489576293877

/-! ## A391436.P8803930361527719318

`A000040(A138988(2*n+3))%A391426(n+2)`
-/

namespace A391436.P8803930361527719318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A138988 (2 * n + 3)).toNat) (A391426 (n + 2))

end

end A391436.P8803930361527719318

/-! ## A391436.P2243678117028113361

`A000040(A025586(2*n+1))%A391426(n+2)`
-/

namespace A391436.P2243678117028113361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A025586 (2 * n + 1)).toNat) (A391426 (n + 2))

end

end A391436.P2243678117028113361

/-! ## A391436.P15410848843604769172

`A391426(n+2)-A353519(A075585(n+1))`
-/

namespace A391436.P15410848843604769172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391426 (n + 2) - A353519 (A075585 (n + 1)).toNat

end

end A391436.P15410848843604769172

/-!
# A391437: 2-rank of the class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

The programs for A391437, there is no canonical definition to state claims against.
-/

/-! ## A391437.P1889541989104238343

`log2(A391435(n+2))`
-/

namespace A391437.P1889541989104238343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391435 (n + 2) : ℝ)

end

end A391437.P1889541989104238343

/-! ## A391437.P12542633055159719392

`A000120(A391435(n+2)-1)`
-/

namespace A391437.P12542633055159719392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391435 (n + 2) - 1).toNat

end

end A391437.P12542633055159719392

/-! ## A391437.P974823667761364288

`A102489(val(A391435(n+2), 2))`
-/

namespace A391437.P974823667761364288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (SequenceMachineLib.valuation (A391435 (n + 2)).toNat 2)

end

end A391437.P974823667761364288

/-! ## A391437.P13559679334226164638

`A001222(A391435(n+2))%A060747(n)`
-/

namespace A391437.P13559679334226164638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A391435 (n + 2)).toNat) (A060747 n)

end

end A391437.P13559679334226164638

/-! ## A391437.P4680077666980739276

`A077268(A391435(n+2))%A248345(n)`
-/

namespace A391437.P4680077666980739276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077268 (A391435 (n + 2)).toNat) (A248345 n)

end

end A391437.P4680077666980739276

/-! ## A391437.P9193844447936480260

`A001222(A391435(n+2)%A078649(n+1))`
-/

namespace A391437.P9193844447936480260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A391435 (n + 2)) (A078649 (n + 1))).toNat

end

end A391437.P9193844447936480260

/-! ## A391437.P2197850623205299964

`A360678(A391435(n+2)²)`
-/

namespace A391437.P2197850623205299964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (A391435 (n + 2) ^ 2).toNat

end

end A391437.P2197850623205299964

/-! ## A391437.P8709950203111026407

`A001222(A391435(n+2))^A351314(n+1)`
-/

namespace A391437.P8709950203111026407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A391435 (n + 2)).toNat : ℚ) ^ (A351314 (n + 1) : ℤ)

end

end A391437.P8709950203111026407

/-! ## A391437.P1174458224317370358

`A001222(A391435(n+2))^A144436(n+1)`
-/

namespace A391437.P1174458224317370358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A391435 (n + 2)).toNat : ℚ) ^ (A144436 (n + 1) : ℤ)

end

end A391437.P1174458224317370358

/-! ## A391437.P9348234766043515208

`A361165(A000037(A391435(n+2))²)`
-/

namespace A391437.P9348234766043515208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361165 (A000037 (A391435 (n + 2)).toNat ^ 2).toNat

end

end A391437.P9348234766043515208

/-!
# A391438: Number of elements that square to the identity in the class group of the order of real quadratic fields with discriminant A079896(n).

The programs for A391438, there is no canonical definition to state claims against.
-/

/-! ## A391438.P8252034178791918923

`2^A391439(n+1)`
-/

namespace A391438.P8252034178791918923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391439 (n + 1) : ℤ)

end

end A391438.P8252034178791918923

/-! ## A391438.P2160805395527662334

`A001227(C(A006530(3*n+4), A391439(n+1)))`
-/

namespace A391438.P2160805395527662334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Nat.choose (A006530 (3 * n + 4)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P2160805395527662334

/-! ## A391438.P6680435457845581021

`A001227(C(A000040(n+1), A391439(n+1)))`
-/

namespace A391438.P6680435457845581021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Nat.choose (A000040 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P6680435457845581021

/-! ## A391438.P2541310856327691527

`A000002(C(A013948(n+1), A391439(n+1)))`
-/

namespace A391438.P2541310856327691527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Nat.choose (A013948 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P2541310856327691527

/-! ## A391438.P3515711517218772636

`A057567(C(A000040(n+1), A391439(n+1)))`
-/

namespace A391438.P3515711517218772636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (Nat.choose (A000040 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P3515711517218772636

/-! ## A391438.P4921949092076628241

`A057567(C(A002144(n+1), A391439(n+1)))`
-/

namespace A391438.P4921949092076628241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (Nat.choose (A002144 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P4921949092076628241

/-! ## A391438.P4881453078526699267

`A016008(C(A103667(n+1), A391439(n+1)))`
-/

namespace A391438.P4881453078526699267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016008 (Nat.choose (A103667 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P4881453078526699267

/-! ## A391438.P1304648446242635880

`A391439(n+1)+A006519(A046117(2*n+3))`
-/

namespace A391438.P1304648446242635880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A006519 (A046117 (2 * n + 3)).toNat

end

end A391438.P1304648446242635880

/-! ## A391438.P3192829902874487003

`A391439(n+1)+A374466(A119504(n+1))`
-/

namespace A391438.P3192829902874487003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A374466 (A119504 (n + 1)).toNat

end

end A391438.P3192829902874487003

/-! ## A391438.P13426476764798767802

`A391439(n+1)+A324883(A324850(n+3))`
-/

namespace A391438.P13426476764798767802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A324883 (A324850 (n + 3)).toNat

end

end A391438.P13426476764798767802

/-! ## A391438.P110305563733446493

`A391439(n+1)+A007318(A337273(n+1))`
-/

namespace A391438.P110305563733446493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A007318 (A337273 (n + 1)).toNat

end

end A391438.P110305563733446493

/-! ## A391438.P7360064513270867448

`A391439(n+1)+A087436(A119488(3*(n+1)))`
-/

namespace A391438.P7360064513270867448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A087436 (A119488 (3 * (n + 1))).toNat

end

end A391438.P7360064513270867448

/-! ## A391438.P14976412859092869176

`A391439(n+1)+A010051(A385676(3*n+4))`
-/

namespace A391438.P14976412859092869176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A010051 (A385676 (3 * n + 4)).toNat

end

end A391438.P14976412859092869176

/-! ## A391438.P2398494816083304028

`A391439(n+1)+A281118(A077171(n))`
-/

namespace A391438.P2398494816083304028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A281118 (A077171 n).toNat

end

end A391438.P2398494816083304028

/-! ## A391438.P2919579432425502425

`A391439(n+1)+A304327(A284002(n))`
-/

namespace A391438.P2919579432425502425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A304327 (A284002 n).toNat

end

end A391438.P2919579432425502425

/-! ## A391438.P7007919476775347422

`gcd(A016825(A103265(n)), A391418(n+1))`
-/

namespace A391438.P7007919476775347422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016825 (A103265 n).toNat) (A391418 (n + 1))

end

end A391438.P7007919476775347422

/-! ## A391438.P15017482013823982501

`A391439(n+1)+A016068(A324837(3*n+1))`
-/

namespace A391438.P15017482013823982501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A016068 (A324837 (3 * n + 1)).toNat

end

end A391438.P15017482013823982501

/-!
# A391439: 2-rank of the class group of the order of real quadratic fields with discriminant A079896(n).

The programs for A391439, there is no canonical definition to state claims against.
-/

/-! ## A391439.P13407751980153558841

`log2(A391438(n+1))`
-/

namespace A391439.P13407751980153558841
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391438 (n + 1) : ℝ)

end

end A391439.P13407751980153558841

/-! ## A391439.P16159257488971243175

`A000120(A391438(n+1)-A181157(2*n+1))`
-/

namespace A391439.P16159257488971243175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391438 (n + 1) - A181157 (2 * n + 1)).toNat

end

end A391439.P16159257488971243175

/-! ## A391439.P14745319448057452041

`A334108(A007821(n+1)*A391438(n+1))`
-/

namespace A391439.P14745319448057452041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A007821 (n + 1) * A391438 (n + 1)).toNat

end

end A391439.P14745319448057452041

/-! ## A391439.P7094282007131114510

`A007814(A005408(n)*A391438(n+1))`
-/

namespace A391439.P7094282007131114510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005408 n * A391438 (n + 1)).toNat

end

end A391439.P7094282007131114510

/-! ## A391439.P7879929104466769430

`A334108(A002145(n+1)*A391438(n+1))`
-/

namespace A391439.P7879929104466769430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A002145 (n + 1) * A391438 (n + 1)).toNat

end

end A391439.P7879929104466769430

/-! ## A391439.P18292786932524017354

`A007814(or(A177917(n+1), A391438(n+1)))`
-/

namespace A391439.P18292786932524017354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A177917 (n + 1)) (A391438 (n + 1))).toNat

end

end A391439.P18292786932524017354

/-! ## A391439.P10202760454421680494

`A391438(n+1)-A071178(A038908(3*n+1))`
-/

namespace A391439.P10202760454421680494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A071178 (A038908 (3 * n + 1)).toNat

end

end A391439.P10202760454421680494

/-! ## A391439.P13403987283820406379

`A391438(n+1)-A295931(A061238(n+1))`
-/

namespace A391439.P13403987283820406379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A295931 (A061238 (n + 1)).toNat

end

end A391439.P13403987283820406379

/-! ## A391439.P8798217221984040917

`A391438(n+1)-A335511(A006512(n+1))`
-/

namespace A391439.P8798217221984040917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A335511 (A006512 (n + 1)).toNat

end

end A391439.P8798217221984040917

/-! ## A391439.P3876346374250047165

`A391438(n+1)+A099837(A002476(3*n+2))`
-/

namespace A391439.P3876346374250047165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) + A099837 (A002476 (3 * n + 2)).toNat

end

end A391439.P3876346374250047165

/-! ## A391439.P10943566960518889041

`A391438(n+1)-A324828(A045341(3*(n+1)))`
-/

namespace A391439.P10943566960518889041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A324828 (A045341 (3 * (n + 1))).toNat

end

end A391439.P10943566960518889041

/-! ## A391439.P8641601452369854305

`A391438(n+1)-A010051(A019546(n+1))`
-/

namespace A391439.P8641601452369854305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A010051 (A019546 (n + 1)).toNat

end

end A391439.P8641601452369854305

/-! ## A391439.P13059424649361665922

`A120730(A391418(n+1))^A378197(n)`
-/

namespace A391439.P13059424649361665922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120730 (A391418 (n + 1)).toNat : ℚ) ^ (A378197 n : ℤ)

end

end A391439.P13059424649361665922

/-! ## A391439.P8660676339443674761

`A391438(n+1)-A325568(A057326(n+1))`
-/

namespace A391439.P8660676339443674761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A325568 (A057326 (n + 1)).toNat

end

end A391439.P8660676339443674761

/-! ## A391439.P5433708340156803397

`A391438(n+1)+A008683(A237739(2*n+3))`
-/

namespace A391439.P5433708340156803397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) + A008683 (A237739 (2 * n + 3)).toNat

end

end A391439.P5433708340156803397

/-! ## A391439.P6008281818819686630

`A000005(A000290(2*(n+1)))%A391438(n+1)`
-/

namespace A391439.P6008281818819686630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A000290 (2 * (n + 1))).toNat) (A391438 (n + 1))

end

end A391439.P6008281818819686630

/-! ## A391439.P12852499023002631852

`A391438(n+1)-A104714(A235266(2*(n+2)))`
-/

namespace A391439.P12852499023002631852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A104714 (A235266 (2 * (n + 2))).toNat

end

end A391439.P12852499023002631852

/-! ## A391439.P16886334572621008808

`A161835(A161835(2*n+5))%A391438(n+1)`
-/

namespace A391439.P16886334572621008808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161835 (A161835 (2 * n + 5)).toNat) (A391438 (n + 1))

end

end A391439.P16886334572621008808

/-!
# A391440: Number of genera in the order of real quadratic fields with discriminant A079896(n).

The programs for A391440, there is no canonical definition to state claims against.
-/

/-! ## A391440.P10639954255570952891

`2^A391441(n+1)`
-/

namespace A391440.P10639954255570952891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391441 (n + 1) : ℤ)

end

end A391440.P10639954255570952891

/-! ## A391440.P3169348082048312554

`gcd(A087048(n+1), A328596(n+1))`
-/

namespace A391440.P3169348082048312554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087048 (n + 1)) (A328596 (n + 1))

end

end A391440.P3169348082048312554

/-!
# A391441: 2-rank of the form class group of the order of real quadratic fields with discriminant A079896(n).

The programs for A391441, there is no canonical definition to state claims against.
-/

/-! ## A391441.P8836576854642393077

`log2(A391440(n+1))`
-/

namespace A391441.P8836576854642393077
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391440 (n + 1) : ℝ)

end

end A391441.P8836576854642393077

/-! ## A391441.P15597801524248829136

`A083345(A391440(n+1)²)`
-/

namespace A391441.P15597801524248829136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A391440 (n + 1) ^ 2).toNat

end

end A391441.P15597801524248829136

/-! ## A391441.P12037564009867124618

`A000120(A391440(n+1)-1)`
-/

namespace A391441.P12037564009867124618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391440 (n + 1) - 1).toNat

end

end A391441.P12037564009867124618

/-! ## A391441.P14847582026221118597

`A002487(A391440(n+1)-1)`
-/

namespace A391441.P14847582026221118597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A391440 (n + 1) - 1).toNat

end

end A391441.P14847582026221118597

/-! ## A391441.P8488963585194877215

`A159918(A391440(n+1)-1)`
-/

namespace A391441.P8488963585194877215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A391440 (n + 1) - 1).toNat

end

end A391441.P8488963585194877215

/-! ## A391441.P15336315503972036407

`A002487(C(A391440(n+1), 2))`
-/

namespace A391441.P15336315503972036407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose (A391440 (n + 1)).toNat 2)

end

end A391441.P15336315503972036407

/-! ## A391441.P1880086935017033381

`A001222(gcd(A000793(2*(n+1)), A391440(n+1)))`
-/

namespace A391441.P1880086935017033381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000793 (2 * (n + 1))) (A391440 (n + 1)))

end

end A391441.P1880086935017033381

/-! ## A391441.P7688916907616601259

`A001222(gcd(A000079(n), A391440(n+1)))`
-/

namespace A391441.P7688916907616601259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A391440 (n + 1)))

end

end A391441.P7688916907616601259

/-!
# A391446: Numbers k such that gcd(A381466(k-1),k) > 1.

The programs for A391446, there is no canonical definition to state claims against.
-/

/-! ## A391446.P14519677777625450785

`∑[A394761(n)+1]`
-/

namespace A391446.P14519677777625450785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394761 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391446.P14519677777625450785

/-!
# A391449: a(n) = A252489(n) - A059957(n).

The programs for A391449, the canonical program `A391449.P16072565990490432701` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391449 has offset 1).

The definition of A391449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059957, A252489, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391449.P16072565990490432701

`A252489(n+1)-A059957(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A391449

/-- `A252489(n+1)-A059957(n+1)` -/
def P16072565990490432701.Spec : Prop :=
  ∀ n, P16072565990490432701.a n = A391449 (n + 1)

theorem P16072565990490432701.correct : P16072565990490432701.Spec := by
  intro n
  simp only [A391449, Nat.add_sub_cancel]

end A391449

/-! ## A391449.P15231543647648471685

`A252489(n+1)-(A001221(n+1)+A001221(n+2))`
-/

namespace A391449.P15231543647648471685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1) - (A001221 (n + 1) + A001221 (n + 2))

end

end A391449.P15231543647648471685

namespace A391449

/-- `A252489(n+1)-(A001221(n+1)+A001221(n+2))` -/
def P15231543647648471685.Spec : Prop :=
  ∀ n, P15231543647648471685.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P1720770426972419943

`A117371(∑[2*(n+1)])`
-/

namespace A391449.P1720770426972419943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391449.P1720770426972419943

namespace A391449

/-- `A117371(∑[2*(n+1)])` -/
def P1720770426972419943.Spec : Prop :=
  ∀ n, P1720770426972419943.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P14256292423075663933

`A079067(∑[2*(n+1)])`
-/

namespace A391449.P14256292423075663933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391449.P14256292423075663933

namespace A391449

/-- `A079067(∑[2*(n+1)])` -/
def P14256292423075663933.Spec : Prop :=
  ∀ n, P14256292423075663933.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P8901935312185756396

`and(A057428(n), A079067(A046092(n+1)))`
-/

namespace A391449.P8901935312185756396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A079067 (A046092 (n + 1)).toNat)

end

end A391449.P8901935312185756396

namespace A391449

/-- `and(A057428(n), A079067(A046092(n+1)))` -/
def P8901935312185756396.Spec : Prop :=
  ∀ n, P8901935312185756396.a n = A391449 (n + 1)

end A391449

/-!
# A391452: a(n) is the number of 5 element sets of distinct integer-sided trapezoids whose base angles are 60 degrees that fill an equilateral triangular grid of side n units without partitioning a triangle into 3 element sets of trapezoids.

The programs for A391452, there is no canonical definition to state claims against.
-/

/-! ## A391452.P1633326691206129448

`A113221(C(n, 5))`
-/

namespace A391452.P1633326691206129448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (Nat.choose n 5)

end

end A391452.P1633326691206129448

/-! ## A391452.P9503743289248774785

`A113221(A000389(n))`
-/

namespace A391452.P9503743289248774785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A000389 n).toNat

end

end A391452.P9503743289248774785

/-! ## A391452.P8330462238205234836

`A113221(A290993(n))`
-/

namespace A391452.P8330462238205234836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A290993 n).toNat

end

end A391452.P8330462238205234836

/-! ## A391452.P12526413809548361110

`A113221(A100356(n+1))`
-/

namespace A391452.P12526413809548361110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A100356 (n + 1)).toNat

end

end A391452.P12526413809548361110

/-! ## A391452.P9258490010174318967

`A108376(A151762(n+1))`
-/

namespace A391452.P9258490010174318967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108376 (A151762 (n + 1)).toNat

end

end A391452.P9258490010174318967

/-!
# A391453: a(n) is the number of 5 element sets of distinct integer-sided trapezoids whose base angles are 60 degrees that fill an equilateral triangular grid of side n units, where one trapezoid has a larger base of n units.

The programs for A391453, there is no canonical definition to state claims against.
-/

/-! ## A391453.P10895712906929925412

`∑[A389392(n+1)]-A389392(n+1)`
-/

namespace A391453.P10895712906929925412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A389392 (n + 1)

end

end A391453.P10895712906929925412

/-! ## A391453.P16539679429385587008

`∑{e}[(n+1)!, C(n-1, 4*#)]`
-/

namespace A391453.P16539679429385587008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose ((n : ℤ) - 1).toNat (4 * Nat.factorization (f1 n) p)

end

end A391453.P16539679429385587008

/-! ## A391453.P395223756056172287

`A102858(A023425(n))`
-/

namespace A391453.P395223756056172287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102858 (A023425 n).toNat

end

end A391453.P395223756056172287

/-! ## A391453.P10743327563884437961

`A102858(A114299(n))`
-/

namespace A391453.P10743327563884437961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102858 (A114299 n).toNat

end

end A391453.P10743327563884437961

/-! ## A391453.P11235022452201901856

`A316945(A090906(n+1))`
-/

namespace A391453.P11235022452201901856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316945 (A090906 (n + 1)).toNat

end

end A391453.P11235022452201901856

/-!
# A391454: Expansion of g^2/(1 + x^3*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391454, there is no canonical definition to state claims against.
-/

/-! ## A391454.P7574891832149644600

`A165706(n^(n+2))`
-/

namespace A391454.P7574891832149644600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165706 (n ^ (n + 2))

end

end A391454.P7574891832149644600

/-!
# A391455: Expansion of g^2/(1 + x^2*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391455, there is no canonical definition to state claims against.
-/

/-! ## A391455.P774596319303426350

`A360243(A160620(n))`
-/

namespace A391455.P774596319303426350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360243 (A160620 n).toNat

end

end A391455.P774596319303426350

/-!
# A391456: Expansion of g^2/(1 + x^3*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391456, there is no canonical definition to state claims against.
-/

/-! ## A391456.P10324824996684241103

`A193693(∏[2*n+1])`
-/

namespace A391456.P10324824996684241103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193693 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A391456.P10324824996684241103

/-!
# A391457: Expansion of g^2/(1 + x^2*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391457, there is no canonical definition to state claims against.
-/

/-! ## A391457.P11696689931269691940

`A074075(A129549(n))`
-/

namespace A391457.P11696689931269691940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074075 (A129549 n).toNat

end

end A391457.P11696689931269691940

/-!
# A391458: Expansion of g^2/(1 + x^3*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391458, there is no canonical definition to state claims against.
-/

/-! ## A391458.P3885081346048529835

`A349095(A150829(n))`
-/

namespace A391458.P3885081346048529835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349095 (A150829 n).toNat

end

end A391458.P3885081346048529835

/-!
# A391459: Expansion of g/(2 - g^2), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391459, there is no canonical definition to state claims against.
-/

/-! ## A391459.P7396331098770110315

`A391513(n+1)-(A289684(n)+A115141(n+1))`
-/

namespace A391459.P7396331098770110315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391513 (n + 1) - (A289684 n + A115141 (n + 1))

end

end A391459.P7396331098770110315

/-! ## A391459.P8384827995827126980

`A289684(n+1)-A391516(n+1)`
-/

namespace A391459.P8384827995827126980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289684 (n + 1) - A391516 (n + 1)

end

end A391459.P8384827995827126980

/-! ## A391459.P3442804931945477394

`A289684(n+1)-(A391513(n+1)+A289684(n))`
-/

namespace A391459.P3442804931945477394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289684 (n + 1) - (A391513 (n + 1) + A289684 n)

end

end A391459.P3442804931945477394

/-!
# A391460: Expansion of g/(2 - g^2)^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391460, there is no canonical definition to state claims against.
-/

/-! ## A391460.P9149026464551581160

`A130845(A055825(n+1))-ceil(2*(2^n-1)/3)`
-/

namespace A391460.P9149026464551581160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (A055825 (n + 1)).toNat - ⌈2 * (((2 ^ n : ℤ) - 1 : ℚ) / 3)⌉

end

end A391460.P9149026464551581160

/-!
# A391461: Expansion of 1/(2 - g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391461, there is no canonical definition to state claims against.
-/

/-! ## A391461.P17975334726499299868

`A325404(A135039(n))`
-/

namespace A391461.P17975334726499299868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (A135039 n).toNat

end

end A391461.P17975334726499299868

/-!
# A391462: Expansion of g/(2 - g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391462, there is no canonical definition to state claims against.
-/

/-! ## A391462.P212954455166604927

`A056847(A186997(n+1)+1)`
-/

namespace A391462.P212954455166604927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A186997 (n + 1) + 1).toNat

end

end A391462.P212954455166604927

/-!
# A391463: Expansion of g/(2 - g^2)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391463, there is no canonical definition to state claims against.
-/

/-! ## A391463.P9778904947617171836

`A246450(A127194(2*(n+1))*A137573(n))`
-/

namespace A391463.P9778904947617171836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246450 (A127194 (2 * (n + 1)) * A137573 n).toNat

end

end A391463.P9778904947617171836

/-!
# A391464: Expansion of 1/(2 - g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391464, there is no canonical definition to state claims against.
-/

/-! ## A391464.P9980806442324221554

`A187181(A131577(3*n)+A002720(n))`
-/

namespace A391464.P9980806442324221554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A131577 (3 * n) + A002720 n).toNat

end

end A391464.P9980806442324221554

/-!
# A391465: Expansion of g/(2 - g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391465, there is no canonical definition to state claims against.
-/

/-! ## A391465.P18143381225650697938

`A156253(or(1, A106258(n)))`
-/

namespace A391465.P18143381225650697938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Int.lor 1 (A106258 n)).toNat

end

end A391465.P18143381225650697938

/-!
# A391467: Triangle read by rows: T(n,0) = T(n,n) = 0 and T(n,k) = T(n, k-1) + T(n-1, k-1) + T(n-2, k-1) + k for 0 < k < n.

The programs for A391467, there is no canonical definition to state claims against.
-/

/-! ## A391467.P15056001483338161153

`A291812(A327722(n+1))`
-/

namespace A391467.P15056001483338161153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A327722 (n + 1)).toNat

end

end A391467.P15056001483338161153

/-! ## A391467.P15146710864247356628

`A276328(A271141(n+1))`
-/

namespace A391467.P15146710864247356628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276328 (A271141 (n + 1)).toNat

end

end A391467.P15146710864247356628

/-! ## A391467.P13041550750714645471

`floor(A196186(A247306(n+1))/2)`
-/

namespace A391467.P13041550750714645471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196186 (A247306 (n + 1)).toNat : ℚ) / 2⌋

end

end A391467.P13041550750714645471

/-!
# A391468: Number of words of length 3n formed with 3 types of letter where the number of each type == 0 (mod 3).

The programs for A391468, there is no canonical definition to state claims against.
-/

/-! ## A391468.P6849808264698705049

`A073947(A008486(n))`
-/

namespace A391468.P6849808264698705049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (A008486 n).toNat

end

end A391468.P6849808264698705049

/-! ## A391468.P9774375584708600082

`A326474(A167614(n+2))`
-/

namespace A391468.P9774375584708600082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326474 (A167614 (n + 2)).toNat

end

end A391468.P9774375584708600082

/-!
# A391469: Number of words of length 3*n that can be formed with a three-letter alphabet when the number of letters of each type is == 1 (mod 3).

The programs for A391469, there is no canonical definition to state claims against.
-/

/-! ## A391469.P8400371444936697103

`A073949(A008486(n))`
-/

namespace A391469.P8400371444936697103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (A008486 n).toNat

end

end A391469.P8400371444936697103

/-! ## A391469.P6506999922686087913

`A073949(A004273(n)+1+n)`
-/

namespace A391469.P6506999922686087913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (A004273 n + 1 + (n : ℤ)).toNat

end

end A391469.P6506999922686087913

/-!
# A391470: Number of words of length 3*n that can be formed with a three-letter alphabet when the number of letters of each type is == 2 (mod 3).

The programs for A391470, there is no canonical definition to state claims against.
-/

/-! ## A391470.P7461129174982196466

`A073948(A008486(n))`
-/

namespace A391470.P7461129174982196466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (A008486 n).toNat

end

end A391470.P7461129174982196466

/-! ## A391470.P11243078394470329390

`A073948(comp[2*A104634(n+1)]+n+1)`
-/

namespace A391470.P11243078394470329390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104634 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1))

end

end A391470.P11243078394470329390

/-!
# A391471: Integers k such that floor((11/10)*k + 1/2) is a digit permutation of k.

The programs for A391471, there is no canonical definition to state claims against.
-/

/-! ## A391471.P2984033324322294482

`∩[A005520(n+1), A229546(n+1)]`
-/

namespace A391471.P2984033324322294482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391471.P2984033324322294482

/-! ## A391471.P1990360852098729708

`A000040(A045875(a(n-2)))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A391471.P1990360852098729708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  A000040 (A045875 (a (n - 2)).toNat).toNat

end

end A391471.P1990360852098729708

/-!
# A391474: Numbers k for which the symmetric representation of sigma, SRS(k), has at least 3 parts and all positive differences between two parts are at most 10, or all parts have the same size.

The programs for A391474, there is no canonical definition to state claims against.
-/

/-! ## A391474.P11518746272267290051

`∩[A367141(n+1), A391475(n+1)]`
-/

namespace A391474.P11518746272267290051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391474.P11518746272267290051

/-! ## A391474.P2881652922958722059

`∩[A391475(n+1), A395162(n+1)]`
-/

namespace A391474.P2881652922958722059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391474.P2881652922958722059

/-!
# A391476: For n >= 1, a(n) is the sum of the number of divisors A000005(r) for all distinct, nonzero numbers r formed by permuting subsets of the digits of n.

The programs for A391476, there is no canonical definition to state claims against.
-/

/-! ## A391476.P9281364765157944461

`xor(∏{e}[n+1, #+1], A260124(A184983(n)))`
-/

namespace A391476.P9281364765157944461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A260124 (A184983 n).toNat)

end

end A391476.P9281364765157944461

/-! ## A391476.P5141234147312707689

`A127300(A184983(n))+A000005(n+1)`
-/

namespace A391476.P5141234147312707689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127300 (A184983 n).toNat + A000005 (n + 1)

end

end A391476.P5141234147312707689

/-! ## A391476.P4966474562767406941

`A353838(A184983(n)+A000005(n+1))`
-/

namespace A391476.P4966474562767406941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (A184983 n + A000005 (n + 1)).toNat

end

end A391476.P4966474562767406941

/-! ## A391476.P13082048310408044245

`A198317(A362609(n))+A000005(n+1)`
-/

namespace A391476.P13082048310408044245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 (A362609 n).toNat + A000005 (n + 1)

end

end A391476.P13082048310408044245

/-! ## A391476.P17496489753556229918

`or(A095048(n+1), A241458(A069911(n)))`
-/

namespace A391476.P17496489753556229918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095048 (n + 1)) (A241458 (A069911 n).toNat)

end

end A391476.P17496489753556229918

/-!
# A391477: a(n) is the least prime that starts a sequence of consecutive primes whose sum is n^5, or -1 if there is no such prime.

The programs for A391477, there is no canonical definition to state claims against.
-/

/-! ## A391477.P5941833281405722667

`A135347(A273945(n+1)-A002262(n))`
-/

namespace A391477.P5941833281405722667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135347 (A273945 (n + 1) - A002262 n).toNat

end

end A391477.P5941833281405722667

/-!
# A391480: Triangle read by rows: T(n,k) is the number of labeled magmas with n elements and k idempotents.

The programs for A391480, the canonical program `A391480.P17490655852187314359` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391480 has offset 0).

The definition of A391480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391480.P17490655852187314359

`C(row(n), col(n))*row(n)^(row(n)*(row(n)-1))*(row(n)-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A391480

/-- `C(row(n), col(n))*row(n)^(row(n)*(row(n)-1))*(row(n)-1)^(row(n)-col(n))` -/
def P17490655852187314359.Spec : Prop :=
  ∀ n, P17490655852187314359.a n = (A391480 n : ℚ)

end A391480

/-!
# A391481: Number of labeled magmas with n elements and no idempotents.

The programs for A391481, the canonical program `A391481.P4159822313512081732` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391481 has offset 0).

The definition of A391481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391481.P4159822313512081732

`n^(n*(n-1))*(n-1)^n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A391481

/-- `n^(n*(n-1))*(n-1)^n` -/
def P4159822313512081732.Spec : Prop :=
  ∀ n, P4159822313512081732.a n = (A391481 n : ℚ)

end A391481

/-! ## A391481.P4529013038212651726

`A391480(∑[n])`
-/

namespace A391481.P4529013038212651726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391481.P4529013038212651726

namespace A391481

/-- `A391480(∑[n])` -/
def P4529013038212651726.Spec : Prop :=
  ∀ n, P4529013038212651726.a n = A391481 n

end A391481

/-!
# A391482: Triangle read by rows: T(n,k) is the number of labeled commutative magmas with n elements and k idempotents.

The programs for A391482, the canonical program `A391482.P9893536577812814314` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391482 has offset 0).

The definition of A391482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391482.P9893536577812814314

`C(row(n), col(n))*row(n)^(row(n)*(row(n)-1)/2)*(row(n)-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A391482

/-- `C(row(n), col(n))*row(n)^(row(n)*(row(n)-1)/2)*(row(n)-1)^(row(n)-col(n))` -/
def P9893536577812814314.Spec : Prop :=
  ∀ n, P9893536577812814314.a n = (A391482 n : ℝ)

end A391482

/-!
# A391483: Number of labeled commutative magmas with n elements and no idempotents.

The programs for A391483, the canonical program `A391483.P769298527151140074` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391483 has offset 0).

The definition of A391483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391483.P769298527151140074

`n^(n*(n-1)/2)*(n-1)^n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A391483

/-- `n^(n*(n-1)/2)*(n-1)^n` -/
def P769298527151140074.Spec : Prop :=
  ∀ n, P769298527151140074.a n = (A391483 n : ℝ)

end A391483

/-! ## A391483.P17669481732050419203

`A391482(∑[n])`
-/

namespace A391483.P17669481732050419203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391482 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391483.P17669481732050419203

namespace A391483

/-- `A391482(∑[n])` -/
def P17669481732050419203.Spec : Prop :=
  ∀ n, P17669481732050419203.a n = A391483 n

end A391483

/-! ## A391483.P341807814725588119

`xor(A352727(2*n+3), A391482(A000217(n)))`
-/

namespace A391483.P341807814725588119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A352727 (2 * n + 3)) (A391482 (A000217 n).toNat)

end

end A391483.P341807814725588119

namespace A391483

/-- `xor(A352727(2*n+3), A391482(A000217(n)))` -/
def P341807814725588119.Spec : Prop :=
  ∀ n, P341807814725588119.a n = A391483 n

end A391483

/-! ## A391483.P7537060067725466529

`A391481(n)/A076113(n)`
-/

namespace A391483.P7537060067725466529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391481 n : ℚ) / (A076113 n : ℚ)

end

end A391483.P7537060067725466529

namespace A391483

/-- `A391481(n)/A076113(n)` -/
def P7537060067725466529.Spec : Prop :=
  ∀ n, P7537060067725466529.a n = (A391483 n : ℚ)

end A391483

/-!
# A391484: Array read by antidiagonals: T(n,k) is the number of nonequivalent series-parallel networks with longest path of at most n edges and largest cut set of at most k edges.

The programs for A391484, there is no canonical definition to state claims against.
-/

/-! ## A391484.P6473797472447531633

`A307707(A201729(n+1))`
-/

namespace A391484.P6473797472447531633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A201729 (n + 1)).toNat

end

end A391484.P6473797472447531633

/-!
# A391485: Array read by antidiagonals: T(n,k) is the number of nonequivalent essentially parallel series-parallel networks with longest path of at most n edges and largest cut set of at most k edges.

The programs for A391485, there is no canonical definition to state claims against.
-/

/-! ## A391485.P13143208413469958530

`A358370(A156141(n))+A358349(n+1)`
-/

namespace A391485.P13143208413469958530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358370 (A156141 n).toNat + A358349 (n + 1)

end

end A391485.P13143208413469958530

/-!
# A391486: Number of nonequivalent essentially series series-parallel networks with longest path at most n edges and largest cut set of at most 2 edges.

The programs for A391486, there is no canonical definition to state claims against.
-/

/-! ## A391486.P7004470725957727875

`A037294(n+1)-A000217(n+1)`
-/

namespace A391486.P7004470725957727875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037294 (n + 1) - A000217 (n + 1)

end

end A391486.P7004470725957727875

/-! ## A391486.P5020427387044701657

`∑[∑[A000219(n+1)]-n]`
-/

namespace A391486.P5020427387044701657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391486.P5020427387044701657

/-! ## A391486.P7799822854624004560

`∑[A091360(n+1)-(n+1)]`
-/

namespace A391486.P7799822854624004560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391486.P7799822854624004560

/-! ## A391486.P11578539160871175909

`A391485(∑[n+1]+2)`
-/

namespace A391486.P11578539160871175909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391485 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A391486.P11578539160871175909

/-! ## A391486.P17809216238397804080

`∑[∑[record[A387672(n)]]]`
-/

namespace A391486.P17809216238397804080
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391486.P17809216238397804080

/-!
# A391487: Number of nonequivalent essentially parallel series-parallel networks with longest path of at most n edges and largest cut set of at most n edges.

The programs for A391487, there is no canonical definition to state claims against.
-/

/-! ## A391487.P8160723470730625141

`(A007803(n+1)+1)/2`
-/

namespace A391487.P8160723470730625141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007803 (n + 1) + 1 : ℚ) / 2

end

end A391487.P8160723470730625141

/-! ## A391487.P16237634112389852621

`round(A007803(n+1)/2)`
-/

namespace A391487.P16237634112389852621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007803 (n + 1) : ℚ) / 2)

end

end A391487.P16237634112389852621

/-! ## A391487.P1876079021340889884

`A391485((n+1)²+n²)`
-/

namespace A391487.P1876079021340889884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391485 ((n + 1) ^ 2 + n ^ 2)

end

end A391487.P1876079021340889884

/-!
# A391490: Denominator of k + a/k where n = k^2 + 2a + 1 and -k <= a <= k.

The programs for A391490, there is no canonical definition to state claims against.
-/

/-! ## A391490.P9432214643850954106

`A277227(A117384(n+2))`
-/

namespace A391490.P9432214643850954106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A117384 (n + 2)).toNat

end

end A391490.P9432214643850954106

/-! ## A391490.P9458190448093853224

`A381622(A235114(n))`
-/

namespace A391490.P9458190448093853224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381622 (A235114 n).toNat

end

end A391490.P9458190448093853224

/-! ## A391490.P8680140091092117516

`A381622(A235116(n))`
-/

namespace A391490.P8680140091092117516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381622 (A235116 n).toNat

end

end A391490.P8680140091092117516

/-! ## A391490.P10268851782960618412

`A006843(n+2)%A377283(3*n+5)`
-/

namespace A391490.P10268851782960618412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006843 (n + 2)) (A377283 (3 * n + 5))

end

end A391490.P10268851782960618412

/-! ## A391490.P1629130256167420990

`A121373(A076338(n+1))+A006843(n+2)`
-/

namespace A391490.P1629130256167420990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A076338 (n + 1)).toNat + A006843 (n + 2)

end

end A391490.P1629130256167420990

/-!
# A391491: Powerful numbers that are both divisible by only one prime cube and have more than 1 distinct prime factor.

The programs for A391491, there is no canonical definition to state claims against.
-/

/-! ## A391491.P8324918709702083065

`∪[A391923(n+1), A392069(n+1)]`
-/

namespace A391491.P8324918709702083065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P8324918709702083065

/-! ## A391491.P14561369087901102136

`∩[A377847(n+1), A389558(n+1)]`
-/

namespace A391491.P14561369087901102136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P14561369087901102136

/-! ## A391491.P18279224916887145650

`∩[A359280(n+1), A377847(n+1)]`
-/

namespace A391491.P18279224916887145650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P18279224916887145650

/-! ## A391491.P17824979151186901828

`∩[A372404(n+1), A377847(n+1)]`
-/

namespace A391491.P17824979151186901828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P17824979151186901828

/-! ## A391491.P4551535031851814910

`∩[A359280(n+1), A377846(n+1)]`
-/

namespace A391491.P4551535031851814910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P4551535031851814910

/-! ## A391491.P12359478096499441878

`∩[A372404(n+1), A377846(n+1)]`
-/

namespace A391491.P12359478096499441878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P12359478096499441878

/-! ## A391491.P9826936845446418139

`∩[A377846(n+1), A389558(n+1)]`
-/

namespace A391491.P9826936845446418139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P9826936845446418139

/-! ## A391491.P9010473538585533785

`∩[A377847(n+1), A387256(n+1)]`
-/

namespace A391491.P9010473538585533785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P9010473538585533785

/-! ## A391491.P11819167594047134724

`∩[A325240(n+1), A377847(n+1)]`
-/

namespace A391491.P11819167594047134724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P11819167594047134724

/-! ## A391491.P10087218238291182146

`∩[A286708(n+1), A377847(n+1)]`
-/

namespace A391491.P10087218238291182146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P10087218238291182146

/-! ## A391491.P18040365274510664069

`∩[A377846(n+1), A389752(n+1)]`
-/

namespace A391491.P18040365274510664069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P18040365274510664069

/-! ## A391491.P12209334104968902366

`∩[A377847(n+1), A389752(n+1)]`
-/

namespace A391491.P12209334104968902366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P12209334104968902366

/-! ## A391491.P12269723722398535590

`∩[A377846(n+1), A389528(n+1)]`
-/

namespace A391491.P12269723722398535590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P12269723722398535590

/-! ## A391491.P13741200319082695390

`∩[A377847(n+1), A389528(n+1)]`
-/

namespace A391491.P13741200319082695390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P13741200319082695390

/-! ## A391491.P8974038020602917473

`∩[A370266(n+1), A377847(n+1)]`
-/

namespace A391491.P8974038020602917473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P8974038020602917473

/-! ## A391491.P2464939990199772404

`∩[A036785(n+1), A377847(n+1)]`
-/

namespace A391491.P2464939990199772404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P2464939990199772404

/-! ## A391491.P12347044137528424676

`∩[A361098(n+1), A377847(n+1)]`
-/

namespace A391491.P12347044137528424676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P12347044137528424676

/-! ## A391491.P3905846864833930211

`filter[A377847(n+1), A355447(#)]`
-/

namespace A391491.P3905846864833930211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391491.P3905846864833930211

/-! ## A391491.P9816557747757497159

`filter[A377847(n+1), A379958(#)]`
-/

namespace A391491.P9816557747757497159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A391491.P9816557747757497159

/-! ## A391491.P3792217550405781764

`∩[A375397(n+1), A377847(n+1)]`
-/

namespace A391491.P3792217550405781764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P3792217550405781764

/-!
# A391493: Expansion of (g/(2 - g^2))^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391493, there is no canonical definition to state claims against.
-/

/-! ## A391493.P11466520262490254234

`A390423(n)+A390423(n)-A289684(n)`
-/

namespace A391493.P11466520262490254234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390423 n + (A390423 n - A289684 n)

end

end A391493.P11466520262490254234

/-!
# A391494: Expansion of (g/(2 - g^2))^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391494, there is no canonical definition to state claims against.
-/

/-! ## A391494.P4150786610285590063

`A133310(A126504(n))-1`
-/

namespace A391494.P4150786610285590063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A126504 n).toNat - 1

end

end A391494.P4150786610285590063

/-!
# A391496: a(n) is the smallest k which has exactly 2*n divisors d such that tau(k) = tau(k/d + d).

The programs for A391496, there is no canonical definition to state claims against.
-/

/-! ## A391496.P13845311889557685421

`A280849(A006012(n)/A105224(3*n+4))`
-/

namespace A391496.P13845311889557685421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280849 (SequenceMachineLib.roundAway ((A006012 n : ℚ) / (A105224 (3 * n + 4) : ℚ))).toNat

end

end A391496.P13845311889557685421

/-!
# A391497: Biquadratefree numbers that are neither cubefree nor cubefull.

The programs for A391497, the canonical program `A391497.P15735606706962389679` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391497 has offset 1).

The definition of A391497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391497.P15735606706962389679

`∩[A362148(n+1), A375072(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A391497

/-- `∩[A362148(n+1), A375072(n+1)]` -/
def P15735606706962389679.Spec : Prop :=
  ∀ n, (P15735606706962389679.a n : ℤ) = A391497 (n + 1)

theorem P15735606706962389679.correct : P15735606706962389679.Spec := by
  intro n
  simp only [A391497, Nat.add_sub_cancel]

end A391497

/-! ## A391497.P7622732316058537282

`∩[A074451(n+1), A375072(n+1)]`
-/

namespace A391497.P7622732316058537282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P7622732316058537282

namespace A391497

/-- `∩[A074451(n+1), A375072(n+1)]` -/
def P7622732316058537282.Spec : Prop :=
  ∀ n, (P7622732316058537282.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P10891925137693507745

`∩[A074451(n+1), A382967(n+1)]`
-/

namespace A391497.P10891925137693507745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P10891925137693507745

namespace A391497

/-- `∩[A074451(n+1), A382967(n+1)]` -/
def P10891925137693507745.Spec : Prop :=
  ∀ n, (P10891925137693507745.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P7417205521395765481

`∩[A362148(n+1), A382967(n+1)]`
-/

namespace A391497.P7417205521395765481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P7417205521395765481

namespace A391497

/-- `∩[A362148(n+1), A382967(n+1)]` -/
def P7417205521395765481.Spec : Prop :=
  ∀ n, (P7417205521395765481.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P2815714381960131746

`∩[A303946(n+1), A375072(n+1)]`
-/

namespace A391497.P2815714381960131746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P2815714381960131746

namespace A391497

/-- `∩[A303946(n+1), A375072(n+1)]` -/
def P2815714381960131746.Spec : Prop :=
  ∀ n, (P2815714381960131746.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P15809250589180345945

`∩[A059404(n+1), A375072(n+1)]`
-/

namespace A391497.P15809250589180345945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15809250589180345945

namespace A391497

/-- `∩[A059404(n+1), A375072(n+1)]` -/
def P15809250589180345945.Spec : Prop :=
  ∀ n, (P15809250589180345945.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P10437851818591608587

`∩[A106543(n+1), A375072(n+1)]`
-/

namespace A391497.P10437851818591608587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P10437851818591608587

namespace A391497

/-- `∩[A106543(n+1), A375072(n+1)]` -/
def P10437851818591608587.Spec : Prop :=
  ∀ n, (P10437851818591608587.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P11842495996226070609

`∩[A046100(n+1), A074451(n+1)]`
-/

namespace A391497.P11842495996226070609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P11842495996226070609

namespace A391497

/-- `∩[A046100(n+1), A074451(n+1)]` -/
def P11842495996226070609.Spec : Prop :=
  ∀ n, (P11842495996226070609.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P15047420562284959090

`∩[A046100(n+1), A362148(n+1)]`
-/

namespace A391497.P15047420562284959090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15047420562284959090

namespace A391497

/-- `∩[A046100(n+1), A362148(n+1)]` -/
def P15047420562284959090.Spec : Prop :=
  ∀ n, (P15047420562284959090.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P18372765458578475145

`∩[A046100(n+1), A391415(n+1)]`
-/

namespace A391497.P18372765458578475145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P18372765458578475145

namespace A391497

/-- `∩[A046100(n+1), A391415(n+1)]` -/
def P18372765458578475145.Spec : Prop :=
  ∀ n, (P18372765458578475145.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P12171829879145617365

`∩[A007916(n+1), A375072(n+1)]`
-/

namespace A391497.P12171829879145617365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P12171829879145617365

namespace A391497

/-- `∩[A007916(n+1), A375072(n+1)]` -/
def P12171829879145617365.Spec : Prop :=
  ∀ n, (P12171829879145617365.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P4459213607747222774

`∩[A175082(n+1), A375072(n+1)]`
-/

namespace A391497.P4459213607747222774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P4459213607747222774

namespace A391497

/-- `∩[A175082(n+1), A375072(n+1)]` -/
def P4459213607747222774.Spec : Prop :=
  ∀ n, (P4459213607747222774.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P5236942167569492370

`∩[A094784(n+1), A375072(n+1)]`
-/

namespace A391497.P5236942167569492370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P5236942167569492370

namespace A391497

/-- `∩[A094784(n+1), A375072(n+1)]` -/
def P5236942167569492370.Spec : Prop :=
  ∀ n, (P5236942167569492370.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P6241867223832665162

`∩[A259444(n+1), A375072(n+1)]`
-/

namespace A391497.P6241867223832665162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P6241867223832665162

namespace A391497

/-- `∩[A259444(n+1), A375072(n+1)]` -/
def P6241867223832665162.Spec : Prop :=
  ∀ n, (P6241867223832665162.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P4570172568550508433

`∩[A362147(n+1), A375072(n+1)]`
-/

namespace A391497.P4570172568550508433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P4570172568550508433

namespace A391497

/-- `∩[A362147(n+1), A375072(n+1)]` -/
def P4570172568550508433.Spec : Prop :=
  ∀ n, (P4570172568550508433.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P5833826025777294028

`∩[A007412(n+1), A375072(n+1)]`
-/

namespace A391497.P5833826025777294028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P5833826025777294028

namespace A391497

/-- `∩[A007412(n+1), A375072(n+1)]` -/
def P5833826025777294028.Spec : Prop :=
  ∀ n, (P5833826025777294028.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P11286761705701501415

`filter[A074451(n+1), A307430(#)]`
-/

namespace A391497.P11286761705701501415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A391497.P11286761705701501415

namespace A391497

/-- `filter[A074451(n+1), A307430(#)]` -/
def P11286761705701501415.Spec : Prop :=
  ∀ n, P11286761705701501415.a n = A391497 (n + 1)

end A391497

/-! ## A391497.P9044722139204071003

`filter[A375072(n+1), A132350(#)]`
-/

namespace A391497.P9044722139204071003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391497.P9044722139204071003

namespace A391497

/-- `filter[A375072(n+1), A132350(#)]` -/
def P9044722139204071003.Spec : Prop :=
  ∀ n, P9044722139204071003.a n = A391497 (n + 1)

end A391497

/-! ## A391497.P17677498340804283592

`filter[A362148(n+1), A307430(#)]`
-/

namespace A391497.P17677498340804283592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A391497.P17677498340804283592

namespace A391497

/-- `filter[A362148(n+1), A307430(#)]` -/
def P17677498340804283592.Spec : Prop :=
  ∀ n, P17677498340804283592.a n = A391497 (n + 1)

end A391497

