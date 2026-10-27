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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B004.C002
import Seq.B005.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A266600: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north or northeast neighbor modulo 3 and the upper left element equal to 0.

The programs for A266600, there is no canonical definition to state claims against.
-/

/-! ## A266600.P4180689253106634653

`A267553(∑[n+2]+4)`
-/

namespace A266600.P4180689253106634653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266600.P4180689253106634653

/-! ## A266600.P457622709756954251

`A267553(A167614(n+1))+char[17]`
-/

namespace A266600.P457622709756954251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266600.P457622709756954251

/-! ## A266600.P6109262691784226111

`record[A010054(n)*A267553(n+3)]`
-/

namespace A266600.P6109262691784226111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A267553 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266600.P6109262691784226111

/-! ## A266600.P13989917558187422686

`record[gcd(A267553(n+1), A293293(n))]`
-/

namespace A266600.P13989917558187422686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267553 (n + 1)) (A293293 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266600.P13989917558187422686

/-! ## A266600.P13181298645750797092

`record[gcd(A084938(n), A267553(n+3))]`
-/

namespace A266600.P13181298645750797092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 n) (A267553 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266600.P13181298645750797092

/-!
# A266601: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north or northeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A266601, there is no canonical definition to state claims against.
-/

/-! ## A266601.P6209189575675580913

`A266599(∑[n+3]+7)`
-/

namespace A266601.P6209189575675580913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266599 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266601.P6209189575675580913

/-!
# A266602: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north or northeast neighbor modulo 5 and the upper left element equal to 0.

The programs for A266602, there is no canonical definition to state claims against.
-/

/-! ## A266602.P11805893148773377609

`A266599(∑[n+4]+11)`
-/

namespace A266602.P11805893148773377609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266599 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A266602.P11805893148773377609

/-! ## A266602.P7974869260031464177

`A266599(A167499(n+3))/A227655(n)`
-/

namespace A266602.P7974869260031464177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266599 (A167499 (n + 3)).toNat : ℚ) / (A227655 n : ℚ)

end

end A266602.P7974869260031464177

/-! ## A266602.P9450533791775011527

`A266599(A167499(n+3))+A059841(2*n+1)`
-/

namespace A266602.P9450533791775011527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266599 (A167499 (n + 3)).toNat + A059841 (2 * n + 1)

end

end A266602.P9450533791775011527

/-!
# A266605: Triangle read by rows giving successive states of cellular automaton generated by "Rule 39" initiated with a single ON (black) cell.

The programs for A266605, the canonical program `A266605.P12090074785028019429` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266605 has offset 0).

The definition of A266605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266605.P2368291025705643444

`A266669(A020703(n+1)-1)`
-/

namespace A266605.P2368291025705643444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266669 (A020703 (n + 1) - 1).toNat

end

end A266605.P2368291025705643444

namespace A266605

/-- `A266669(A020703(n+1)-1)` -/
def P2368291025705643444.Spec : Prop :=
  ∀ n, P2368291025705643444.a n = A266605 n

end A266605

/-! ## A266605.P12090074785028019429

`A266848(1-A053188(n)+n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A266605

/-- `A266848(1-A053188(n)+n)` -/
def P12090074785028019429.Spec : Prop :=
  ∀ n, P12090074785028019429.a n = A266605 n

theorem P12090074785028019429.correct : P12090074785028019429.Spec := by
  intro n
  simp only [A266605]

end A266605

/-! ## A266605.P1584654701231198410

`A266848(1-(A053188(n)-n))`
-/

namespace A266605.P1584654701231198410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 (1 - (A053188 n - (n : ℤ))).toNat

end

end A266605.P1584654701231198410

namespace A266605

/-- `A266848(1-(A053188(n)-n))` -/
def P1584654701231198410.Spec : Prop :=
  ∀ n, P1584654701231198410.a n = A266605 n

theorem P1584654701231198410.correct : P1584654701231198410.Spec := by
  intro n
  simp only [A266605, Nat.add_sub_cancel, A266605.P1584654701231198410.a, A266605.P12090074785028019429.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A266605

/-! ## A266605.P13306033190148626383

`Δ[∑[A266459(n)]-A263428(n)]`
-/

namespace A266605.P13306033190148626383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A263428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266605.P13306033190148626383

namespace A266605

/-- `Δ[∑[A266459(n)]-A263428(n)]` -/
def P13306033190148626383.Spec : Prop :=
  ∀ n, P13306033190148626383.a n = A266605 n

end A266605

/-! ## A266605.P1163747449268814969

`A266459(n+1)-Δ[A263428(n)]`
-/

namespace A266605.P1163747449268814969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266459 (n + 1) - (f1 (n + 1) - f1 n)

end

end A266605.P1163747449268814969

namespace A266605

/-- `A266459(n+1)-Δ[A263428(n)]` -/
def P1163747449268814969.Spec : Prop :=
  ∀ n, P1163747449268814969.a n = A266605 n

end A266605

/-! ## A266605.P10470148610975969902

`A266669(A020703(n+2)%A004277(n+1))`
-/

namespace A266605.P10470148610975969902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266669 (Int.tmod (A020703 (n + 2)) (A004277 (n + 1))).toNat

end

end A266605.P10470148610975969902

namespace A266605

/-- `A266669(A020703(n+2)%A004277(n+1))` -/
def P10470148610975969902.Spec : Prop :=
  ∀ n, P10470148610975969902.a n = A266605 n

end A266605

/-! ## A266605.P4026827452918834481

`A266848(1-A325181(n)+n)`
-/

namespace A266605.P4026827452918834481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 (1 - A325181 n + (n : ℤ)).toNat

end

end A266605.P4026827452918834481

namespace A266605

/-- `A266848(1-A325181(n)+n)` -/
def P4026827452918834481.Spec : Prop :=
  ∀ n, P4026827452918834481.a n = A266605 n

end A266605

/-! ## A266605.P15775437796226798526

`A266848(1-(A325181(n)-n))`
-/

namespace A266605.P15775437796226798526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 (1 - (A325181 n - (n : ℤ))).toNat

end

end A266605.P15775437796226798526

namespace A266605

/-- `A266848(1-(A325181(n)-n))` -/
def P15775437796226798526.Spec : Prop :=
  ∀ n, P15775437796226798526.a n = A266605 n

end A266605

/-!
# A266606: Binary representation of the n-th iteration of the "Rule 39" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266606, there is no canonical definition to state claims against.
-/

/-! ## A266606.P3352980736738222072

`A266460(n)+Δ[A007088(A016116(n))]`
-/

namespace A266606.P3352980736738222072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A016116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266460 n + (f1 (n + 1) - f1 n)

end

end A266606.P3352980736738222072

/-! ## A266606.P5114867347750909648

`A007088(A266607(n))`
-/

namespace A266606.P5114867347750909648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266607 n).toNat

end

end A266606.P5114867347750909648

/-! ## A266606.P12685391203477219594

`A007088(xor(A131572(n), A266436(n)))`
-/

namespace A266606.P12685391203477219594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A131572 n) (A266436 n)).toNat

end

end A266606.P12685391203477219594

/-! ## A266606.P17565872807713910869

`A007088(abs(A131572(n)-A266436(n)))`
-/

namespace A266606.P17565872807713910869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 |A131572 n - A266436 n|.toNat

end

end A266606.P17565872807713910869

/-! ## A266606.P10249014940399622199

`A007088(A266461(n)+Δ[A016116(n)])`
-/

namespace A266606.P10249014940399622199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266461 n + (f1 (n + 1) - f1 n)).toNat

end

end A266606.P10249014940399622199

/-!
# A266607: Decimal representation of the n-th iteration of the "Rule 39" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266607, the canonical program `A266607.P6288959086002507873` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266607 has offset 0).

The definition of A266607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266607.P6288959086002507873

`xor(A131572(n), A266436(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266607

/-- `xor(A131572(n), A266436(n))` -/
def P6288959086002507873.Spec : Prop :=
  ∀ n, P6288959086002507873.a n = A266607 n

theorem P6288959086002507873.correct : P6288959086002507873.Spec := by
  intro n
  simp only [A266607]

end A266607

/-! ## A266607.P9172130971518445663

`A266461(n)+Δ[A016116(n)]`
-/

namespace A266607.P9172130971518445663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266461 n + (f1 (n + 1) - f1 n)

end

end A266607.P9172130971518445663

namespace A266607

/-- `A266461(n)+Δ[A016116(n)]` -/
def P9172130971518445663.Spec : Prop :=
  ∀ n, P9172130971518445663.a n = A266607 n

end A266607

/-! ## A266607.P12602773191082022265

`or(∑[A131575(n)], A266069(n))`
-/

namespace A266607.P12602773191082022265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A266069 n)

end

end A266607.P12602773191082022265

namespace A266607

/-- `or(∑[A131575(n)], A266069(n))` -/
def P12602773191082022265.Spec : Prop :=
  ∀ n, P12602773191082022265.a n = A266607 n

end A266607

/-! ## A266607.P5383350974354616018

`A266069(n)+A077957(n+1)`
-/

namespace A266607.P5383350974354616018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266069 n + A077957 (n + 1)

end

end A266607.P5383350974354616018

namespace A266607

/-- `A266069(n)+A077957(n+1)` -/
def P5383350974354616018.Spec : Prop :=
  ∀ n, P5383350974354616018.a n = A266607 n

end A266607

/-! ## A266607.P2506297383875034418

`A266069(n)+A131575(n+2)`
-/

namespace A266607.P2506297383875034418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266069 n + A131575 (n + 2)

end

end A266607.P2506297383875034418

namespace A266607

/-- `A266069(n)+A131575(n+2)` -/
def P2506297383875034418.Spec : Prop :=
  ∀ n, P2506297383875034418.a n = A266607 n

end A266607

/-! ## A266607.P13581974885244887618

`or(A016116(n+1), A266069(n))`
-/

namespace A266607.P13581974885244887618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 (n + 1)) (A266069 n)

end

end A266607.P13581974885244887618

namespace A266607

/-- `or(A016116(n+1), A266069(n))` -/
def P13581974885244887618.Spec : Prop :=
  ∀ n, P13581974885244887618.a n = A266607 n

end A266607

/-! ## A266607.P8286556867593945579

`or(A131572(n+1), A266069(n))`
-/

namespace A266607.P8286556867593945579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131572 (n + 1)) (A266069 n)

end

end A266607.P8286556867593945579

namespace A266607

/-- `or(A131572(n+1), A266069(n))` -/
def P8286556867593945579.Spec : Prop :=
  ∀ n, P8286556867593945579.a n = A266607 n

end A266607

/-! ## A266607.P5388978204021191766

`or(Δ[A209722(n+2)], A266069(n))`
-/

namespace A266607.P5388978204021191766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A266069 n)

end

end A266607.P5388978204021191766

namespace A266607

/-- `or(Δ[A209722(n+2)], A266069(n))` -/
def P5388978204021191766.Spec : Prop :=
  ∀ n, P5388978204021191766.a n = A266607 n

end A266607

/-! ## A266607.P1210907725270745474

`xor(A016116(n), A279872(A266303(n)))`
-/

namespace A266607.P1210907725270745474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016116 n) (A279872 (A266303 n).toNat)

end

end A266607.P1210907725270745474

namespace A266607

/-- `xor(A016116(n), A279872(A266303(n)))` -/
def P1210907725270745474.Spec : Prop :=
  ∀ n, P1210907725270745474.a n = A266607 n

end A266607

/-! ## A266607.P16183441762662465154

`xor(A131572(n), A282413(A042963(n+1)))`
-/

namespace A266607.P16183441762662465154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n) (A282413 (A042963 (n + 1)).toNat)

end

end A266607.P16183441762662465154

namespace A266607

/-- `xor(A131572(n), A282413(A042963(n+1)))` -/
def P16183441762662465154.Spec : Prop :=
  ∀ n, P16183441762662465154.a n = A266607 n

end A266607

/-!
# A266608: Triangle read by rows giving successive states of cellular automaton generated by "Rule 41" initiated with a single ON (black) cell.

The programs for A266608, there is no canonical definition to state claims against.
-/

/-! ## A266608.P15172030335280195904

`A267056(A020703(n+1)-1)`
-/

namespace A266608.P15172030335280195904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267056 (A020703 (n + 1) - 1).toNat

end

end A266608.P15172030335280195904

/-! ## A266608.P14184026718922627944

`A267056(A020703(n+2))`
-/

namespace A266608.P14184026718922627944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267056 (A020703 (n + 2)).toNat

end

end A266608.P14184026718922627944

/-!
# A266609: Binary representation of the n-th iteration of the "Rule 41" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266609, there is no canonical definition to state claims against.
-/

/-! ## A266609.P10984085486729956089

`A007088(A266610(n*A193592(n)))`
-/

namespace A266609.P10984085486729956089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266610 ((n : ℤ) * A193592 n).toNat).toNat

end

end A266609.P10984085486729956089

/-! ## A266609.P12275640464974988244

`A007088(A219347(n)*A266610(n))`
-/

namespace A266609.P12275640464974988244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A219347 n * A266610 n).toNat

end

end A266609.P12275640464974988244

/-! ## A266609.P14131550950240567979

`A007088(A266610(n)^A193592(n))`
-/

namespace A266609.P14131550950240567979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A266610 n : ℚ) ^ (A193592 n : ℤ))).toNat

end

end A266609.P14131550950240567979

/-!
# A266611: Middle column of the "Rule 41" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266611, the canonical program `A266611.P4022207615295064869` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266611 has offset 0).

The definition of A266611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266611.P4022207615295064869

`(C(3, n)+n)%2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266611

/-- `(C(3, n)+n)%2` -/
def P4022207615295064869.Spec : Prop :=
  ∀ n, (P4022207615295064869.a n : ℤ) = A266611 n

theorem P4022207615295064869.correct : P4022207615295064869.Spec := by
  intro n
  simp only [A266611]

end A266611

/-!
# A266612: Binary representation of the middle column of the "Rule 41" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266612, there is no canonical definition to state claims against.
-/

/-! ## A266612.P5409219303463325592

`Δ[A104720(n)-A267879(n)]`
-/

namespace A266612.P5409219303463325592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104720 n - A267879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266612.P5409219303463325592

/-! ## A266612.P6642474354460824426

`Δ[∑[A056830(n+1)]-A267879(n)]`
-/

namespace A266612.P6642474354460824426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A267879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266612.P6642474354460824426

/-! ## A266612.P4436863103830573920

`Δ[∑[A287742(2*n)]-A267879(n)]`
-/

namespace A266612.P4436863103830573920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A267879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266612.P4436863103830573920

/-! ## A266612.P13501347026138690176

`xor(10*a(n-1), A022003(A107685(n+1)))` with `a(0)=1`
-/

namespace A266612.P13501347026138690176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A022003 (A107685 (n + 1)).toNat)

end

end A266612.P13501347026138690176

/-! ## A266612.P5929013190414539683

`A007088(A266613(n))`
-/

namespace A266612.P5929013190414539683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266613 n).toNat

end

end A266612.P5929013190414539683

/-!
# A266613: Decimal representation of the middle column of the "Rule 41" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266613, the canonical program `A266613.P13493115588785496830` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266613 has offset 0).

The definition of A266613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266613.P13357370495450469966

`ogf((1-x^4+x^5)/(1-2x-x^2+2x^3))`
-/

namespace A266613.P13357370495450469966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -1, 1] [1, -2, -1, 2] n

end

end A266613.P13357370495450469966

namespace A266613

/-- `ogf((1-x^4+x^5)/(1-2x-x^2+2x^3))` -/
def P13357370495450469966.Spec : Prop :=
  ∀ n, P13357370495450469966.a n = A266613 n

end A266613

/-! ## A266613.P13493115588785496830

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=20, a(5)=41`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266613

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P13493115588785496830.Spec : Prop :=
  ∀ n, P13493115588785496830.a n = A266613 n

theorem P13493115588785496830.correct : P13493115588785496830.Spec := by
  intro n
  simp only [A266613]

end A266613

/-! ## A266613.P10548353533722313698

`a(n-1)+A266611(n)+a(n-1)` with `a(0)=1`
-/

namespace A266613.P10548353533722313698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A266611 n + a (n - 1))

end

end A266613.P10548353533722313698

namespace A266613

/-- `a(n-1)+A266611(n)+a(n-1)` -/
def P10548353533722313698.Spec : Prop :=
  ∀ n, P10548353533722313698.a n = A266613 n

end A266613

/-! ## A266613.P5829226750487608389

`a(n-1)+or(a(n-1), Δ[A096386(n)])` with `a(0)=1, a(1)=2`
-/

namespace A266613.P5829226750487608389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.lor (a (n - 1)) (f1 (n + 1) - f1 n)

end

end A266613.P5829226750487608389

namespace A266613

/-- `a(n-1)+or(a(n-1), Δ[A096386(n)])` -/
def P5829226750487608389.Spec : Prop :=
  ∀ n, P5829226750487608389.a n = A266613 n

end A266613

/-! ## A266613.P2720201545972256473

`and(A266248(n), A266721(n))`
-/

namespace A266613.P2720201545972256473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266248 n) (A266721 n)

end

end A266613.P2720201545972256473

namespace A266613

/-- `and(A266248(n), A266721(n))` -/
def P2720201545972256473.Spec : Prop :=
  ∀ n, P2720201545972256473.a n = A266613 n

end A266613

/-! ## A266613.P12448277295199568454

`and(A266248(n), A267589(n))`
-/

namespace A266613.P12448277295199568454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266248 n) (A267589 n)

end

end A266613.P12448277295199568454

namespace A266613

/-- `and(A266248(n), A267589(n))` -/
def P12448277295199568454.Spec : Prop :=
  ∀ n, P12448277295199568454.a n = A266613 n

end A266613

/-! ## A266613.P5164585359636196912

`and(A266721(n), A267589(n))`
-/

namespace A266613.P5164585359636196912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266721 n) (A267589 n)

end

end A266613.P5164585359636196912

namespace A266613

/-- `and(A266721(n), A267589(n))` -/
def P5164585359636196912.Spec : Prop :=
  ∀ n, P5164585359636196912.a n = A266613 n

end A266613

/-! ## A266613.P8690206948414304213

`and(A266721(n), A267880(n))`
-/

namespace A266613.P8690206948414304213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266721 n) (A267880 n)

end

end A266613.P8690206948414304213

namespace A266613

/-- `and(A266721(n), A267880(n))` -/
def P8690206948414304213.Spec : Prop :=
  ∀ n, P8690206948414304213.a n = A266613 n

end A266613

/-! ## A266613.P10621680477792895270

`a(n-1)+or(a(n-1), A267533(A037227(n+2)))` with `a(0)=1`
-/

namespace A266613.P10621680477792895270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (a (n - 1)) (A267533 (A037227 (n + 2)).toNat)

end

end A266613.P10621680477792895270

namespace A266613

/-- `a(n-1)+or(a(n-1), A267533(A037227(n+2)))` -/
def P10621680477792895270.Spec : Prop :=
  ∀ n, P10621680477792895270.a n = A266613 n

end A266613

/-! ## A266613.P2057711646359853937

`and(A266248(n+2), A266248(n))`
-/

namespace A266613.P2057711646359853937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266248 (n + 2)) (A266248 n)

end

end A266613.P2057711646359853937

namespace A266613

/-- `and(A266248(n+2), A266248(n))` -/
def P2057711646359853937.Spec : Prop :=
  ∀ n, P2057711646359853937.a n = A266613 n

end A266613

/-!
# A266614: Number of ON (black) cells in the n-th iteration of the "Rule 41" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266614, the canonical program `A266614.P6787645730243455754` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266614 has offset 0).

The definition of A266614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266614.P10665279080772232206

`2*n-(a(n-1)+gcd(4, n))` with `a(0)=1`
-/

namespace A266614.P10665279080772232206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - (a (n - 1) + (Nat.gcd 4 n : ℤ))

end

end A266614.P10665279080772232206

namespace A266614

/-- `2*n-(a(n-1)+gcd(4, n))` -/
def P10665279080772232206.Spec : Prop :=
  ∀ n, P10665279080772232206.a n = A266614 n

end A266614

/-! ## A266614.P6787645730243455754

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3, a(4)=1, a(5)=8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266614

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P6787645730243455754.Spec : Prop :=
  ∀ n, P6787645730243455754.a n = A266614 n

theorem P6787645730243455754.correct : P6787645730243455754.Spec := by
  intro n
  simp only [A266614]

end A266614

/-! ## A266614.P17028236499006738809

`Δ[n²]-A266616(n)`
-/

namespace A266614.P17028236499006738809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266616 n

end

end A266614.P17028236499006738809

namespace A266614

/-- `Δ[n²]-A266616(n)` -/
def P17028236499006738809.Spec : Prop :=
  ∀ n, P17028236499006738809.a n = A266614 n

end A266614

/-! ## A266614.P8980383753741475468

`A005843(n)+1-A266616(n)`
-/

namespace A266614.P8980383753741475468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A266616 n)

end

end A266614.P8980383753741475468

namespace A266614

/-- `A005843(n)+1-A266616(n)` -/
def P8980383753741475468.Spec : Prop :=
  ∀ n, P8980383753741475468.a n = A266614 n

end A266614

/-! ## A266614.P7885835434066210476

`A016777(n)-(A266616(n)+n)`
-/

namespace A266614.P7885835434066210476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A266616 n + (n : ℤ))

end

end A266614.P7885835434066210476

namespace A266614

/-- `A016777(n)-(A266616(n)+n)` -/
def P7885835434066210476.Spec : Prop :=
  ∀ n, P7885835434066210476.a n = A266614 n

end A266614

/-! ## A266614.P5311688218164467553

`A016789(n)-(A266616(n)+1+n)`
-/

namespace A266614.P5311688218164467553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A266616 n + 1 + (n : ℤ))

end

end A266614.P5311688218164467553

namespace A266614

/-- `A016789(n)-(A266616(n)+1+n)` -/
def P5311688218164467553.Spec : Prop :=
  ∀ n, P5311688218164467553.a n = A266614 n

end A266614

/-! ## A266614.P12571721728070007342

`A047524(A029579(n))-A047482(n+1)`
-/

namespace A266614.P12571721728070007342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (A029579 n).toNat - A047482 (n + 1)

end

end A266614.P12571721728070007342

namespace A266614

/-- `A047524(A029579(n))-A047482(n+1)` -/
def P12571721728070007342.Spec : Prop :=
  ∀ n, P12571721728070007342.a n = A266614 n

end A266614

/-! ## A266614.P15070807830672187963

`A266626(n)+A266628(n)-A266616(n)`
-/

namespace A266614.P15070807830672187963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266626 n + (A266628 n - A266616 n)

end

end A266614.P15070807830672187963

namespace A266614

/-- `A266626(n)+A266628(n)-A266616(n)` -/
def P15070807830672187963.Spec : Prop :=
  ∀ n, P15070807830672187963.a n = A266614 n

end A266614

/-! ## A266614.P16587418989136035198

`A033999(n)+and(A033999(n), A047460(n+1))`
-/

namespace A266614.P16587418989136035198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + Int.land (A033999 n) (A047460 (n + 1))

end

end A266614.P16587418989136035198

namespace A266614

/-- `A033999(n)+and(A033999(n), A047460(n+1))` -/
def P16587418989136035198.Spec : Prop :=
  ∀ n, P16587418989136035198.a n = A266614 n

end A266614

/-! ## A266614.P6270143451431172428

`n-Δ[A042948(A057979(n))]`
-/

namespace A266614.P6270143451431172428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A266614.P6270143451431172428

namespace A266614

/-- `n-Δ[A042948(A057979(n))]` -/
def P6270143451431172428.Spec : Prop :=
  ∀ n, P6270143451431172428.a n = A266614 n

end A266614

/-! ## A266614.P4795073410756726702

`A113778(a(n-2)+2)` with `a(0)=1, a(1)=0`
-/

namespace A266614.P4795073410756726702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A113778 (a (n - 2) + 2).toNat

end

end A266614.P4795073410756726702

namespace A266614

/-- `A113778(a(n-2)+2)` -/
def P4795073410756726702.Spec : Prop :=
  ∀ n, P4795073410756726702.a n = A266614 n

end A266614

/-! ## A266614.P10751664477345398397

`A023443(A005843(n)-(A266616(n)-2))`
-/

namespace A266614.P10751664477345398397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A005843 n - (A266616 n - 2)).toNat

end

end A266614.P10751664477345398397

namespace A266614

/-- `A023443(A005843(n)-(A266616(n)-2))` -/
def P10751664477345398397.Spec : Prop :=
  ∀ n, P10751664477345398397.a n = A266614 n

end A266614

/-! ## A266614.P9688478457876876859

`A047482(2*A029579(n))-A047482(n+1)`
-/

namespace A266614.P9688478457876876859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (2 * A029579 n).toNat - A047482 (n + 1)

end

end A266614.P9688478457876876859

namespace A266614

/-- `A047482(2*A029579(n))-A047482(n+1)` -/
def P9688478457876876859.Spec : Prop :=
  ∀ n, P9688478457876876859.a n = A266614 n

end A266614

/-! ## A266614.P15134482628480373897

`A005843(n)-A023443(A266616(n))`
-/

namespace A266614.P15134482628480373897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A023443 (A266616 n).toNat

end

end A266614.P15134482628480373897

namespace A266614

/-- `A005843(n)-A023443(A266616(n))` -/
def P15134482628480373897.Spec : Prop :=
  ∀ n, P15134482628480373897.a n = A266614 n

end A266614

/-! ## A266614.P14482375168902803559

`A023443(2*n+1)-A023443(A266616(n))`
-/

namespace A266614.P14482375168902803559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * n + 1) - A023443 (A266616 n).toNat

end

end A266614.P14482375168902803559

namespace A266614

/-- `A023443(2*n+1)-A023443(A266616(n))` -/
def P14482375168902803559.Spec : Prop :=
  ∀ n, P14482375168902803559.a n = A266614 n

end A266614

/-! ## A266614.P6958040001732899678

`abs(A131507(∑[n])-A266616(n))`
-/

namespace A266614.P6958040001732899678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131507 (∑ j ∈ Finset.range (n + 1), f1 j) - A266616 n|

end

end A266614.P6958040001732899678

namespace A266614

/-- `abs(A131507(∑[n])-A266616(n))` -/
def P6958040001732899678.Spec : Prop :=
  ∀ n, P6958040001732899678.a n = A266614 n

end A266614

/-!
# A266615: Total number of ON (black) cells after n iterations of the "Rule 41" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266615, the canonical program `A266615.P4468046601715971324` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266615 has offset 0).

The definition of A266615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266615.P4468046601715971324

`2*n+a(n-2)-gcd(4, n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266615

/-- `2*n+a(n-2)-gcd(4, n)` -/
def P4468046601715971324.Spec : Prop :=
  ∀ n, P4468046601715971324.a n = A266615 n

theorem P4468046601715971324.correct : P4468046601715971324.Spec := by
  intro n
  simp only [A266615]

end A266615

/-! ## A266615.P10516842844282218431

`∑[A266614(n)]`
-/

namespace A266615.P10516842844282218431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266615.P10516842844282218431

namespace A266615

/-- `∑[A266614(n)]` -/
def P10516842844282218431.Spec : Prop :=
  ∀ n, P10516842844282218431.a n = A266615 n

end A266615

/-! ## A266615.P8238164549701626012

`(n+1)²-A266617(n)`
-/

namespace A266615.P8238164549701626012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266617 n

end

end A266615.P8238164549701626012

namespace A266615

/-- `(n+1)²-A266617(n)` -/
def P8238164549701626012.Spec : Prop :=
  ∀ n, P8238164549701626012.a n = A266615 n

end A266615

/-! ## A266615.P7158936931420408523

`∑[Δ[n²]-A266616(n)]`
-/

namespace A266615.P7158936931420408523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266615.P7158936931420408523

namespace A266615

/-- `∑[Δ[n²]-A266616(n)]` -/
def P7158936931420408523.Spec : Prop :=
  ∀ n, P7158936931420408523.a n = A266615 n

end A266615

/-! ## A266615.P591242693077668821

`or((n+1)%2, A128918(n))`
-/

namespace A266615.P591242693077668821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n + 1) % 2 : ℕ) : ℤ) (A128918 n)

end

end A266615.P591242693077668821

namespace A266615

/-- `or((n+1)%2, A128918(n))` -/
def P591242693077668821.Spec : Prop :=
  ∀ n, P591242693077668821.a n = A266615 n

end A266615

/-! ## A266615.P14278128397613616890

`gcd(n, A266257(n))+∑[n]-n`
-/

namespace A266615.P14278128397613616890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A266257 n) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A266615.P14278128397613616890

namespace A266615

/-- `gcd(n, A266257(n))+∑[n]-n` -/
def P14278128397613616890.Spec : Prop :=
  ∀ n, P14278128397613616890.a n = A266615 n

end A266615

/-! ## A266615.P14484578443851553243

`or(A059841(n), A128918(n))`
-/

namespace A266615.P14484578443851553243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A128918 n)

end

end A266615.P14484578443851553243

namespace A266615

/-- `or(A059841(n), A128918(n))` -/
def P14484578443851553243.Spec : Prop :=
  ∀ n, P14484578443851553243.a n = A266615 n

end A266615

/-! ## A266615.P15320183865334458737

`or(∑[A019425(n)], A059841(n))`
-/

namespace A266615.P15320183865334458737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A059841 n)

end

end A266615.P15320183865334458737

namespace A266615

/-- `or(∑[A019425(n)], A059841(n))` -/
def P15320183865334458737.Spec : Prop :=
  ∀ n, P15320183865334458737.a n = A266615 n

end A266615

/-! ## A266615.P17857904608958312326

`or(∑[A265722(n)], A059841(n))`
-/

namespace A266615.P17857904608958312326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A059841 n)

end

end A266615.P17857904608958312326

namespace A266615

/-- `or(∑[A265722(n)], A059841(n))` -/
def P17857904608958312326.Spec : Prop :=
  ∀ n, P17857904608958312326.a n = A266615 n

end A266615

/-! ## A266615.P10567450721822381739

`A267353(n)-A047403(n+1)`
-/

namespace A266615.P10567450721822381739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267353 n - A047403 (n + 1)

end

end A266615.P10567450721822381739

namespace A266615

/-- `A267353(n)-A047403(n+1)` -/
def P10567450721822381739.Spec : Prop :=
  ∀ n, P10567450721822381739.a n = A266615 n

end A266615

/-! ## A266615.P15531825950736347468

`A338824(n+1)+A152947(n+1)`
-/

namespace A266615.P15531825950736347468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338824 (n + 1) + A152947 (n + 1)

end

end A266615.P15531825950736347468

namespace A266615

/-- `A338824(n+1)+A152947(n+1)` -/
def P15531825950736347468.Spec : Prop :=
  ∀ n, P15531825950736347468.a n = A266615 n

end A266615

/-! ## A266615.P12123283272267674331

`A266614(n%A000606(n))+a(n-1)` with `a(0)=1`
-/

namespace A266615.P12123283272267674331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266614 (Int.tmod (n : ℤ) (A000606 n)).toNat + a (n - 1)

end

end A266615.P12123283272267674331

namespace A266615

/-- `A266614(n%A000606(n))+a(n-1)` -/
def P12123283272267674331.Spec : Prop :=
  ∀ n, P12123283272267674331.a n = A266615 n

end A266615

/-! ## A266615.P1597531805881211925

`or(1-A265722(A265722(n)), A128918(n))`
-/

namespace A266615.P1597531805881211925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A265722 (A265722 n).toNat) (A128918 n)

end

end A266615.P1597531805881211925

namespace A266615

/-- `or(1-A265722(A265722(n)), A128918(n))` -/
def P1597531805881211925.Spec : Prop :=
  ∀ n, P1597531805881211925.a n = A266615 n

end A266615

/-! ## A266615.P7311299970386000931

`or(A265722(A265722(n+1)), A128918(n))`
-/

namespace A266615.P7311299970386000931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265722 (A265722 (n + 1)).toNat) (A128918 n)

end

end A266615.P7311299970386000931

namespace A266615

/-- `or(A265722(A265722(n+1)), A128918(n))` -/
def P7311299970386000931.Spec : Prop :=
  ∀ n, P7311299970386000931.a n = A266615 n

end A266615

/-!
# A266616: Number of OFF (white) cells in the n-th iteration of the "Rule 41" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266616, the canonical program `A266616.P510205836360718219` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266616 has offset 0).

The definition of A266616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266616.P7847116108940023678

`2*n+gcd(4, n)-a(n-1)` with `a(0)=0`
-/

namespace A266616.P7847116108940023678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) + ((Nat.gcd 4 n : ℤ) - a (n - 1))

end

end A266616.P7847116108940023678

namespace A266616

/-- `2*n+gcd(4, n)-a(n-1)` -/
def P7847116108940023678.Spec : Prop :=
  ∀ n, P7847116108940023678.a n = A266616 n

end A266616

/-! ## A266616.P510205836360718219

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=3, a(3)=4, a(4)=8, a(5)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266616

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P510205836360718219.Spec : Prop :=
  ∀ n, P510205836360718219.a n = A266616 n

theorem P510205836360718219.correct : P510205836360718219.Spec := by
  intro n
  simp only [A266616]

end A266616

/-! ## A266616.P13530498276999292075

`Δ[n²]-A266614(n)`
-/

namespace A266616.P13530498276999292075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266614 n

end

end A266616.P13530498276999292075

namespace A266616

/-- `Δ[n²]-A266614(n)` -/
def P13530498276999292075.Spec : Prop :=
  ∀ n, P13530498276999292075.a n = A266616 n

end A266616

/-! ## A266616.P243158213697470164

`∑[gcd(4, n+1)]-A265722(n)`
-/

namespace A266616.P243158213697470164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A265722 n

end

end A266616.P243158213697470164

namespace A266616

/-- `∑[gcd(4, n+1)]-A265722(n)` -/
def P243158213697470164.Spec : Prop :=
  ∀ n, P243158213697470164.a n = A266616 n

end A266616

/-! ## A266616.P2664871534816126427

`n+1-A266614(n%(n+1))+n`
-/

namespace A266616.P2664871534816126427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A266614 (n % (n + 1)) + (n : ℤ)

end

end A266616.P2664871534816126427

namespace A266616

/-- `n+1-A266614(n%(n+1))+n` -/
def P2664871534816126427.Spec : Prop :=
  ∀ n, P2664871534816126427.a n = A266616 n

end A266616

/-! ## A266616.P10178237874559745803

`A016789(n)-(A266614(n)+1+n)`
-/

namespace A266616.P10178237874559745803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A266614 n + 1 + (n : ℤ))

end

end A266616.P10178237874559745803

namespace A266616

/-- `A016789(n)-(A266614(n)+1+n)` -/
def P10178237874559745803.Spec : Prop :=
  ∀ n, P10178237874559745803.a n = A266616 n

end A266616

/-! ## A266616.P871440065906679695

`A003815(2*(A266073(n)-A003815(n)))`
-/

namespace A266616.P871440065906679695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * (A266073 n - A003815 n)).toNat

end

end A266616.P871440065906679695

namespace A266616

/-- `A003815(2*(A266073(n)-A003815(n)))` -/
def P871440065906679695.Spec : Prop :=
  ∀ n, P871440065906679695.a n = A266616 n

end A266616

/-!
# A266617: Total number of OFF (white) cells after n iterations of the "Rule 41" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266617, the canonical program `A266617.P14535656566812649225` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266617 has offset 0).

The definition of A266617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266617.P14535656566812649225

`2*n+a(n-2)+gcd(4, n)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266617

/-- `2*n+a(n-2)+gcd(4, n)` -/
def P14535656566812649225.Spec : Prop :=
  ∀ n, (P14535656566812649225.a n : ℤ) = A266617 n

theorem P14535656566812649225.correct : P14535656566812649225.Spec := by
  intro n
  simp only [A266617]

end A266617

/-! ## A266617.P16241245308195366893

`∑[A266616(n)]`
-/

namespace A266617.P16241245308195366893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266617.P16241245308195366893

namespace A266617

/-- `∑[A266616(n)]` -/
def P16241245308195366893.Spec : Prop :=
  ∀ n, P16241245308195366893.a n = A266617 n

end A266617

/-! ## A266617.P8854465877660709675

`(n+1)²-A266615(n)`
-/

namespace A266617.P8854465877660709675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266615 n

end

end A266617.P8854465877660709675

namespace A266617

/-- `(n+1)²-A266615(n)` -/
def P8854465877660709675.Spec : Prop :=
  ∀ n, P8854465877660709675.a n = A266617 n

end A266617

/-! ## A266617.P15016102462127950349

`∑[Δ[n²]-A266614(n)]`
-/

namespace A266617.P15016102462127950349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266617.P15016102462127950349

namespace A266617

/-- `∑[Δ[n²]-A266614(n)]` -/
def P15016102462127950349.Spec : Prop :=
  ∀ n, P15016102462127950349.a n = A266617 n

end A266617

/-! ## A266617.P5158642630302377563

`A131179(n)+A047403(n+1)`
-/

namespace A266617.P5158642630302377563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 n + A047403 (n + 1)

end

end A266617.P5158642630302377563

namespace A266617

/-- `A131179(n)+A047403(n+1)` -/
def P5158642630302377563.Spec : Prop :=
  ∀ n, P5158642630302377563.a n = A266617 n

end A266617

/-! ## A266617.P17025507816584056906

`A055998(n)-A338824(n+1)`
-/

namespace A266617.P17025507816584056906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n - A338824 (n + 1)

end

end A266617.P17025507816584056906

namespace A266617

/-- `A055998(n)-A338824(n+1)` -/
def P17025507816584056906.Spec : Prop :=
  ∀ n, P17025507816584056906.a n = A266617 n

end A266617

/-! ## A266617.P9691033333705718878

`A291271(n+2)+A266074(n)`
-/

namespace A266617.P9691033333705718878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291271 (n + 2) + A266074 n

end

end A266617.P9691033333705718878

namespace A266617

/-- `A291271(n+2)+A266074(n)` -/
def P9691033333705718878.Spec : Prop :=
  ∀ n, P9691033333705718878.a n = A266617 n

end A266617

/-! ## A266617.P1768224361958966207

`A047544(n+1)+A131179(n)-1`
-/

namespace A266617.P1768224361958966207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047544 (n + 1) + (A131179 n - 1)

end

end A266617.P1768224361958966207

namespace A266617

/-- `A047544(n+1)+A131179(n)-1` -/
def P1768224361958966207.Spec : Prop :=
  ∀ n, P1768224361958966207.a n = A266617 n

end A266617

/-! ## A266617.P7390781538218721919

`∑[A016789(n)-(A266614(n)+1+n)]`
-/

namespace A266617.P7390781538218721919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A266614 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266617.P7390781538218721919

namespace A266617

/-- `∑[A016789(n)-(A266614(n)+1+n)]` -/
def P7390781538218721919.Spec : Prop :=
  ∀ n, P7390781538218721919.a n = A266617 n

end A266617

/-! ## A266617.P3306376281958113430

`and(A265724(n), A281500(n))`
-/

namespace A266617.P3306376281958113430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265724 n) (A281500 n)

end

end A266617.P3306376281958113430

namespace A266617

/-- `and(A265724(n), A281500(n))` -/
def P3306376281958113430.Spec : Prop :=
  ∀ n, P3306376281958113430.a n = A266617 n

end A266617

/-!
# A266619: Triangle read by rows giving successive states of cellular automaton generated by "Rule 45" initiated with a single ON (black) cell.

The programs for A266619, there is no canonical definition to state claims against.
-/

/-! ## A266619.P9796982721616762586

`A267129(A020703(n+1)-1)`
-/

namespace A266619.P9796982721616762586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267129 (A020703 (n + 1) - 1).toNat

end

end A266619.P9796982721616762586

/-! ## A266619.P10449469749899285714

`A267129(n-2*A196199(n))`
-/

namespace A266619.P10449469749899285714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267129 ((n : ℤ) - 2 * A196199 n).toNat

end

end A266619.P10449469749899285714

/-! ## A266619.P10291602961974580050

`A267129(n-A196199(n)-A196199(n))`
-/

namespace A266619.P10291602961974580050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267129 ((n : ℤ) - A196199 n - A196199 n).toNat

end

end A266619.P10291602961974580050

/-! ## A266619.P16190959604889726016

`A267129(A020703(n+2))`
-/

namespace A266619.P16190959604889726016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267129 (A020703 (n + 2)).toNat

end

end A266619.P16190959604889726016

/-! ## A266619.P12249187362987940850

`A136431(A373953(3*n+2)-A352967(n))`
-/

namespace A266619.P12249187362987940850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A373953 (3 * n + 2) - A352967 n).toNat

end

end A266619.P12249187362987940850

/-!
# A266620: a(n) = least non-divisor of n!.

The programs for A266620, the canonical program `A266620.P16243253378753888357` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266620 has offset 1).

The definition of A266620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266620.P510911404158540198

`A064778(n+1)+1`
-/

namespace A266620.P510911404158540198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064778 (n + 1) + 1

end

end A266620.P510911404158540198

namespace A266620

/-- `A064778(n+1)+1` -/
def P510911404158540198.Spec : Prop :=
  ∀ n, P510911404158540198.a n = A266620 (n + 1)

end A266620

/-! ## A266620.P5332109857940436476

`A151800(n+1)-char[2]`
-/

namespace A266620.P5332109857940436476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266620.P5332109857940436476

namespace A266620

/-- `A151800(n+1)-char[2]` -/
def P5332109857940436476.Spec : Prop :=
  ∀ n, P5332109857940436476.a n = A266620 (n + 1)

end A266620

/-! ## A266620.P6842414561617976682

`A071960(n+1)+2+n`
-/

namespace A266620.P6842414561617976682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071960 (n + 1) + 2 + (n : ℤ)

end

end A266620.P6842414561617976682

namespace A266620

/-- `A071960(n+1)+2+n` -/
def P6842414561617976682.Spec : Prop :=
  ∀ n, P6842414561617976682.a n = A266620 (n + 1)

end A266620

/-! ## A266620.P16243253378753888357

`A066169(n+1)+1-A294619(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A266620

/-- `A066169(n+1)+1-A294619(n)` -/
def P16243253378753888357.Spec : Prop :=
  ∀ n, P16243253378753888357.a n = A266620 (n + 1)

theorem P16243253378753888357.correct : P16243253378753888357.Spec := by
  intro n
  simp only [A266620, Nat.add_sub_cancel]

end A266620

/-! ## A266620.P5433257511887342225

`A000040(A000720(n+1)+1)-char[2]`
-/

namespace A266620.P5433257511887342225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (n + 1) + 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266620.P5433257511887342225

namespace A266620

/-- `A000040(A000720(n+1)+1)-char[2]` -/
def P5433257511887342225.Spec : Prop :=
  ∀ n, P5433257511887342225.a n = A266620 (n + 1)

end A266620

/-! ## A266620.P18141804961005681696

`A007918(n+2)-char[2]`
-/

namespace A266620.P18141804961005681696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266620.P18141804961005681696

namespace A266620

/-- `A007918(n+2)-char[2]` -/
def P18141804961005681696.Spec : Prop :=
  ∀ n, P18141804961005681696.a n = A266620 (n + 1)

end A266620

/-! ## A266620.P13394096633799240665

`A154955(A055266(n+3))+A007918(n+2)`
-/

namespace A266620.P13394096633799240665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A055266 (n + 3)).toNat + A007918 (n + 2)

end

end A266620.P13394096633799240665

namespace A266620

/-- `A154955(A055266(n+3))+A007918(n+2)` -/
def P13394096633799240665.Spec : Prop :=
  ∀ n, P13394096633799240665.a n = A266620 (n + 1)

end A266620

/-! ## A266620.P13883656914067643973

`A020725(A064778(n+1))`
-/

namespace A266620.P13883656914067643973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A064778 (n + 1)).toNat

end

end A266620.P13883656914067643973

namespace A266620

/-- `A020725(A064778(n+1))` -/
def P13883656914067643973.Spec : Prop :=
  ∀ n, P13883656914067643973.a n = A266620 (n + 1)

end A266620

/-!
# A266621: Binary representation of the n-th iteration of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266621, there is no canonical definition to state claims against.
-/

/-! ## A266621.P5977345359826248796

`A007088(A266622(n))`
-/

namespace A266621.P5977345359826248796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266622 n).toNat

end

end A266621.P5977345359826248796

/-! ## A266621.P14965186198611430506

`A185544(2*A266622(n))`
-/

namespace A266621.P14965186198611430506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266622 n).toNat

end

end A266621.P14965186198611430506

/-! ## A266621.P584459843794948650

`A185544(A266622(n)+A266622(n))`
-/

namespace A266621.P584459843794948650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A266622 n + A266622 n).toNat

end

end A266621.P584459843794948650

/-!
# A266622: Decimal representation of the n-th iteration of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266622, there is no canonical definition to state claims against.
-/

/-! ## A266622.P8478685727925906446

`A194061(A068484(n+1))`
-/

namespace A266622.P8478685727925906446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194061 (A068484 (n + 1)).toNat

end

end A266622.P8478685727925906446

/-!
# A266623: Middle column of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266623, there is no canonical definition to state claims against.
-/

/-! ## A266623.P6191345085798584990

`A266625(n)%2`
-/

namespace A266623.P6191345085798584990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266625 n) 2

end

end A266623.P6191345085798584990

/-! ## A266623.P409211495407303572

`and(A048578(n), A266625(n))`
-/

namespace A266623.P409211495407303572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A266625 n)

end

end A266623.P409211495407303572

/-! ## A266623.P2274269228715400703

`and(A158388(n), A266625(n))`
-/

namespace A266623.P2274269228715400703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A266625 n)

end

end A266623.P2274269228715400703

/-! ## A266623.P2390638441164298649

`and(A266625(n), A267871(n))`
-/

namespace A266623.P2390638441164298649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266625 n) (A267871 n)

end

end A266623.P2390638441164298649

/-! ## A266623.P10142125974833724521

`and(A066827(n+1), A266625(n))`
-/

namespace A266623.P10142125974833724521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A266625 n)

end

end A266623.P10142125974833724521

/-! ## A266623.P8296221515413756126

`and(A020737(n), A266625(n))`
-/

namespace A266623.P8296221515413756126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A266625 n)

end

end A266623.P8296221515413756126

/-! ## A266623.P3319453897401897342

`and(A195744(n), A266625(n))`
-/

namespace A266623.P3319453897401897342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A266625 n)

end

end A266623.P3319453897401897342

/-! ## A266623.P12428471688908252590

`and(A122041(n+1), A266625(n))`
-/

namespace A266623.P12428471688908252590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A266625 n)

end

end A266623.P12428471688908252590

/-! ## A266623.P5030984016750944982

`and(A196657(n), A266625(n))`
-/

namespace A266623.P5030984016750944982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A266625 n)

end

end A266623.P5030984016750944982

/-! ## A266623.P7364137409816092856

`and(1, and(A051900(n), A266625(n)))`
-/

namespace A266623.P7364137409816092856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.land (A051900 n) (A266625 n))

end

end A266623.P7364137409816092856

/-! ## A266623.P2949367872350491030

`and(A048479(n), A266625(n))`
-/

namespace A266623.P2949367872350491030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A266625 n)

end

end A266623.P2949367872350491030

/-! ## A266623.P4124118940159467537

`and(A134854(n+1), A266625(n))`
-/

namespace A266623.P4124118940159467537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134854 (n + 1)) (A266625 n)

end

end A266623.P4124118940159467537

/-! ## A266623.P11164653603430513270

`and(A266625(n), A295926(n+3))`
-/

namespace A266623.P11164653603430513270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266625 n) (A295926 (n + 3))

end

end A266623.P11164653603430513270

/-! ## A266623.P9996882658864576740

`and(A115342(n+6), A266625(n))`
-/

namespace A266623.P9996882658864576740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115342 (n + 6)) (A266625 n)

end

end A266623.P9996882658864576740

/-! ## A266623.P11535844713057361836

`and(A258073(n+1), A266625(n))`
-/

namespace A266623.P11535844713057361836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A258073 (n + 1)) (A266625 n)

end

end A266623.P11535844713057361836

/-! ## A266623.P11970854781493989469

`and(A027608(n), A266625(n))`
-/

namespace A266623.P11970854781493989469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A266625 n)

end

end A266623.P11970854781493989469

/-! ## A266623.P12823871070393741785

`and(A211388(n), A266625(n))`
-/

namespace A266623.P12823871070393741785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211388 n) (A266625 n)

end

end A266623.P12823871070393741785

/-! ## A266623.P15627141144833782279

`and(A209530(n+1), A266625(n))`
-/

namespace A266623.P15627141144833782279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A209530 (n + 1)) (A266625 n)

end

end A266623.P15627141144833782279

/-! ## A266623.P2475362802118742035

`and(A189318(n), A266625(n))`
-/

namespace A266623.P2475362802118742035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189318 n) (A266625 n)

end

end A266623.P2475362802118742035

/-! ## A266623.P13601386388701939147

`and(A204708(n+1), A266625(n))`
-/

namespace A266623.P13601386388701939147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204708 (n + 1)) (A266625 n)

end

end A266623.P13601386388701939147

/-!
# A266624: Binary representation of the middle column of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266624, there is no canonical definition to state claims against.
-/

/-! ## A266624.P14627434317190540164

`A007088(A266625(n))`
-/

namespace A266624.P14627434317190540164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266625 n).toNat

end

end A266624.P14627434317190540164

/-! ## A266624.P1734102588330150408

`A185544(2*A266625(n))`
-/

namespace A266624.P1734102588330150408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266625 n).toNat

end

end A266624.P1734102588330150408

/-! ## A266624.P9449342309294840998

`A007088(A151754(n+1)^A123895(n))`
-/

namespace A266624.P9449342309294840998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A151754 (n + 1) : ℚ) ^ (A123895 n : ℤ))).toNat

end

end A266624.P9449342309294840998

/-!
# A266625: Decimal representation of the middle column of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266625, there is no canonical definition to state claims against.
-/

/-! ## A266625.P4328827108019891615

`a(n-1)+A266623(n)+a(n-1)` with `a(0)=1`
-/

namespace A266625.P4328827108019891615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A266623 n + a (n - 1))

end

end A266625.P4328827108019891615

/-! ## A266625.P17469808921169987953

`A334727(A267157(n))`
-/

namespace A266625.P17469808921169987953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334727 (A267157 n).toNat

end

end A266625.P17469808921169987953

/-! ## A266625.P16036274398630778104

`A100281(A055143(n+1))`
-/

namespace A266625.P16036274398630778104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100281 (A055143 (n + 1)).toNat

end

end A266625.P16036274398630778104

/-! ## A266625.P17462085546993179459

`A081600(A000225(n+1)-(n-n%10)/10)`
-/

namespace A266625.P17462085546993179459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (SequenceMachineLib.roundAway ((A000225 (n + 1) : ℚ) - ((n : ℤ) - ((n % 10 : ℕ) : ℤ) : ℚ) / 10)).toNat

end

end A266625.P17462085546993179459

/-! ## A266625.P5241280071292789170

`A081600(A000225(n+1)-ceil(cos(3)+n/10))`
-/

namespace A266625.P5241280071292789170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A000225 (n + 1) - ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 10 : ℝ)⌉).toNat

end

end A266625.P5241280071292789170

/-!
# A266626: Number of ON (black) cells in the n-th iteration of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266626, there is no canonical definition to state claims against.
-/

/-! ## A266626.P7436264548895408132

`Δ[n²]-A266628(n)`
-/

namespace A266626.P7436264548895408132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266628 n

end

end A266626.P7436264548895408132

/-! ## A266626.P4758082261006125787

`n+1-A266628(n%(n+1))+n`
-/

namespace A266626.P4758082261006125787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A266628 (n % (n + 1)) + (n : ℤ)

end

end A266626.P4758082261006125787

/-! ## A266626.P4639193998310936914

`abs(A005408(n)-A266628(n))`
-/

namespace A266626.P4639193998310936914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A266628 n|

end

end A266626.P4639193998310936914

/-! ## A266626.P17366276417040692275

`A005843(n)+1-A266628(n)`
-/

namespace A266626.P17366276417040692275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A266628 n)

end

end A266626.P17366276417040692275

/-! ## A266626.P8041446617669418130

`A266614(n)+A266616(n)-A266628(n)`
-/

namespace A266626.P8041446617669418130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266614 n + (A266616 n - A266628 n)

end

end A266626.P8041446617669418130

/-! ## A266626.P4570745548038790384

`A016813(n)-A266628(n)-A005843(n)`
-/

namespace A266626.P4570745548038790384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A266628 n - A005843 n

end

end A266626.P4570745548038790384

/-! ## A266626.P7529167316687020677

`or(A005408(n)-A266628(n), A000007(n))`
-/

namespace A266626.P7529167316687020677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005408 n - A266628 n) (A000007 n)

end

end A266626.P7529167316687020677

/-! ## A266626.P3622476405507030044

`(A005408(n)-A266628(n))%A001747(n+2)`
-/

namespace A266626.P3622476405507030044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n - A266628 n) (A001747 (n + 2))

end

end A266626.P3622476405507030044

/-! ## A266626.P1110764155174512695

`A343609(9*(A005408(n)-A266628(n)))`
-/

namespace A266626.P1110764155174512695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (9 * (A005408 n - A266628 n)).toNat

end

end A266626.P1110764155174512695

/-!
# A266627: Total number of ON (black) cells after n iterations of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266627, there is no canonical definition to state claims against.
-/

/-! ## A266627.P8634491115725117519

`∑[A266626(n)]`
-/

namespace A266627.P8634491115725117519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266627.P8634491115725117519

/-! ## A266627.P14238564881399059088

`(n+1)²-A266629(n)`
-/

namespace A266627.P14238564881399059088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266629 n

end

end A266627.P14238564881399059088

/-! ## A266627.P5489232448831056325

`∑[Δ[n²]-A266628(n)]`
-/

namespace A266627.P5489232448831056325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266627.P5489232448831056325

/-! ## A266627.P6067063169626404169

`∑[A005843(n)+1-A266628(n)]`
-/

namespace A266627.P6067063169626404169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A266628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266627.P6067063169626404169

/-! ## A266627.P8174692583110964752

`∑[A016813(n)-A266628(n)-2*n]`
-/

namespace A266627.P8174692583110964752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A266628 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266627.P8174692583110964752

/-! ## A266627.P10992884224854204062

`∑[∑{digits}[A266621(n), #]]`
-/

namespace A266627.P10992884224854204062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266621 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266627.P10992884224854204062

/-!
# A266628: Number of OFF (white) cells in the n-th iteration of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266628, there is no canonical definition to state claims against.
-/

/-! ## A266628.P4269715761148765616

`Δ[n²]-A266626(n)`
-/

namespace A266628.P4269715761148765616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266626 n

end

end A266628.P4269715761148765616

/-! ## A266628.P3977747054155626336

`Δ[A266629(n-n²%(n+1))]`
-/

namespace A266628.P3977747054155626336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266629 (n - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266628.P3977747054155626336

/-! ## A266628.P1016197552582180746

`A266629(n)-A266629((2*n)%(n+1))`
-/

namespace A266628.P1016197552582180746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266629 n - A266629 (2 * n % (n + 1))

end

end A266628.P1016197552582180746

/-! ## A266628.P9463139359331987330

`A266614(n)+A266616(n)-A266626(n)`
-/

namespace A266628.P9463139359331987330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266614 n + (A266616 n - A266626 n)

end

end A266628.P9463139359331987330

/-! ## A266628.P10252581096411047370

`A266629(n)-A266629(log2(A011782(n)))`
-/

namespace A266628.P10252581096411047370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266629 n - A266629 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A266628.P10252581096411047370

/-! ## A266628.P7113188050183229978

`Δ[A266629(log2(A011782(n)))]`
-/

namespace A266628.P7113188050183229978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266629 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266628.P7113188050183229978

/-!
# A266629: Total number of OFF (white) cells after n iterations of the "Rule 45" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266629, there is no canonical definition to state claims against.
-/

/-! ## A266629.P15471656259756553448

`∑[A266628(n)]`
-/

namespace A266629.P15471656259756553448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266629.P15471656259756553448

/-! ## A266629.P2964258337435878551

`(n+1)²-A266627(n)`
-/

namespace A266629.P2964258337435878551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266627 n

end

end A266629.P2964258337435878551

/-! ## A266629.P9564855567768631824

`∑[Δ[n²]-A266626(n)]`
-/

namespace A266629.P9564855567768631824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266629.P9564855567768631824

/-! ## A266629.P17605981020356082790

`A266615(n)+A266617(n)-A266627(n)`
-/

namespace A266629.P17605981020356082790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266615 n + (A266617 n - A266627 n)

end

end A266629.P17605981020356082790

/-! ## A266629.P8226989996587860649

`∑[A266614(n)+A266616(n)-A266626(n)]`
-/

namespace A266629.P8226989996587860649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266614 n + (A266616 n - A266626 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266629.P8226989996587860649

/-!
# A266630: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, west, southeast or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266630, there is no canonical definition to state claims against.
-/

/-! ## A266630.P7138342198646151260

`A266632(∑[n+2])`
-/

namespace A266630.P7138342198646151260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266630.P7138342198646151260

/-! ## A266630.P7083633991445866511

`A326596(n)+A266632(A000096(n+1))`
-/

namespace A266630.P7083633991445866511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 n + A266632 (A000096 (n + 1)).toNat

end

end A266630.P7083633991445866511

/-! ## A266630.P18304303552605299404

`or(A151620(n), A266632(A000096(n+1)))`
-/

namespace A266630.P18304303552605299404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151620 n) (A266632 (A000096 (n + 1)).toNat)

end

end A266630.P18304303552605299404

/-! ## A266630.P7307950454902645666

`A266632(A000096(n+1))+A010893(n+3)`
-/

namespace A266630.P7307950454902645666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A000096 (n + 1)).toNat + A010893 (n + 3 + 13)

end

end A266630.P7307950454902645666

/-! ## A266630.P9076016135044093302

`A266632(A000096(n+1))+A151620(2*(n+2))`
-/

namespace A266630.P9076016135044093302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A000096 (n + 1)).toNat + A151620 (2 * (n + 2))

end

end A266630.P9076016135044093302

/-!
# A266631: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, west, southeast or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266631, there is no canonical definition to state claims against.
-/

/-! ## A266631.P16807562023541100791

`A266632(∑[n+3]+1)`
-/

namespace A266631.P16807562023541100791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266631.P16807562023541100791

/-! ## A266631.P7227959610502356884

`A266632(A034856(n+2))+C(n, 8)`
-/

namespace A266631.P7227959610502356884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A034856 (n + 2)).toNat + (Nat.choose n 8 : ℤ)

end

end A266631.P7227959610502356884

/-! ## A266631.P16885387420749632250

`or(A000038(n+1), A266632(A055999(n)+4))`
-/

namespace A266631.P16885387420749632250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 1)) (A266632 (A055999 n + 4).toNat)

end

end A266631.P16885387420749632250

/-! ## A266631.P13562669648944190048

`A304572(n+1)+A266632(A000096(n+2)-1)`
-/

namespace A266631.P13562669648944190048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304572 (n + 1) + A266632 (A000096 (n + 2) - 1).toNat

end

end A266631.P13562669648944190048

/-!
# A266632: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, west, southeast or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266632, there is no canonical definition to state claims against.
-/

/-! ## A266632.P3097627456894877173

`A123492(A266886(n+1))`
-/

namespace A266632.P3097627456894877173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123492 (A266886 (n + 1)).toNat

end

end A266632.P3097627456894877173

/-! ## A266632.P12753350111356122970

`A334387(A267546(n+1))`
-/

namespace A266632.P12753350111356122970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 (A267546 (n + 1)).toNat

end

end A266632.P12753350111356122970

/-! ## A266632.P13832992515471033001

`A075423((A267546(n+1)+1)²)`
-/

namespace A266632.P13832992515471033001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 ((A267546 (n + 1) + 1) ^ 2).toNat

end

end A266632.P13832992515471033001

/-! ## A266632.P8329432918011849546

`floor(A033183(A271075(n+1))^γ)`
-/

namespace A266632.P8329432918011849546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033183 (A271075 (n + 1)).toNat : ℝ) ^ Real.eulerMascheroniConstant⌋

end

end A266632.P8329432918011849546

/-! ## A266632.P3392830023836724299

`and(A066207(A000219(n)), A266904(n+1))`
-/

namespace A266632.P3392830023836724299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066207 (A000219 n).toNat) (A266904 (n + 1))

end

end A266632.P3392830023836724299

/-!
# A266633: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, west, southeast or southwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A266633, there is no canonical definition to state claims against.
-/

/-! ## A266633.P4561623111478584791

`A266632(A141214(n)+7)`
-/

namespace A266633.P4561623111478584791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A141214 n + 7).toNat

end

end A266633.P4561623111478584791

/-! ## A266633.P8703186624712390514

`A266632(A052905(n)+9)`
-/

namespace A266633.P8703186624712390514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A052905 n + 9).toNat

end

end A266633.P8703186624712390514

/-! ## A266633.P269587356528154592

`A266632(A055999(n)+10)`
-/

namespace A266633.P269587356528154592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A055999 n + 10).toNat

end

end A266633.P269587356528154592

/-! ## A266633.P9329092062736607318

`A266632(eq[5, A066657(n)])`
-/

namespace A266633.P9329092062736607318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266633.P9329092062736607318

/-!
# A266634: Number of 5 X n arrays containing n copies of 0..5-1 with no element 1 greater than its north, west, southeast or southwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A266634, there is no canonical definition to state claims against.
-/

/-! ## A266634.P7421482747300951493

`A266632(A167499(n+3))`
-/

namespace A266634.P7421482747300951493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A167499 (n + 3)).toNat

end

end A266634.P7421482747300951493

/-! ## A266634.P988368389793442138

`A266632(A155212(n)+13)`
-/

namespace A266634.P988368389793442138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A155212 n + 13).toNat

end

end A266634.P988368389793442138

/-! ## A266634.P4160374452679650656

`A266632(A056000(n)+15)`
-/

namespace A266634.P4160374452679650656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (A056000 n + 15).toNat

end

end A266634.P4160374452679650656

/-!
# A266635: Permutation of natural numbers: a(n) = A126760(A264965(A007310(n))).

The programs for A266635, there is no canonical definition to state claims against.
-/

/-! ## A266635.P4534211886734681304

`A126760(A264965(A007310(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266635.P4534211886734681304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A264965 (A007310 (n + 1)).toNat).toNat

end

end A266635.P4534211886734681304

/-! ## A266635.P18008710698901875306

`A126760(A264965(or(1, 3*n+1)))`
-/

namespace A266635.P18008710698901875306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A264965 (Nat.lor 1 (3 * n + 1))).toNat

end

end A266635.P18008710698901875306

/-! ## A266635.P16775579060764367173

`A126760(A264965(Δ[floor(3/2*n²)]))`
-/

namespace A266635.P16775579060764367173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A264965 (f1 (n + 1) - f1 n).toNat).toNat

end

end A266635.P16775579060764367173

/-! ## A266635.P11310139420390336233

`A008620(A264965(lt[3*n, lcm(6, n)]))`
-/

namespace A266635.P11310139420390336233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264965 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)).toNat

end

end A266635.P11310139420390336233

/-! ## A266635.P15827445666416024253

`A008620(A264965(∑[4/gcd(2, n)]-1))`
-/

namespace A266635.P15827445666416024253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264965 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat).toNat

end

end A266635.P15827445666416024253

/-! ## A266635.P10043702828470918126

`A008620(A264965(∑[3^and(1, n)]+n))`
-/

namespace A266635.P10043702828470918126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264965 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A266635.P10043702828470918126

/-!
# A266636: Permutation of natural numbers: a(n) = A126760(A264966(A007310(n))).

The programs for A266636, there is no canonical definition to state claims against.
-/

/-! ## A266636.P7383263389025160124

`A126760(A264966(A007310(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266636.P7383263389025160124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A264966 (A007310 (n + 1)).toNat).toNat

end

end A266636.P7383263389025160124

/-! ## A266636.P1807988034711943006

`A126760(A264966(Δ[floor(3/2*n²)]))`
-/

namespace A266636.P1807988034711943006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A264966 (f1 (n + 1) - f1 n).toNat).toNat

end

end A266636.P1807988034711943006

/-! ## A266636.P1387828638095587282

`A008620(A264966(or(1, 3*n+1)))`
-/

namespace A266636.P1387828638095587282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264966 (Nat.lor 1 (3 * n + 1))).toNat

end

end A266636.P1387828638095587282

/-! ## A266636.P2795072042010881644

`A008620(A264966(lt[3*n, lcm(6, n)]))`
-/

namespace A266636.P2795072042010881644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264966 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)).toNat

end

end A266636.P2795072042010881644

/-! ## A266636.P13291363824575050731

`A008620(A264966(∑[4/gcd(2, n)]-1))`
-/

namespace A266636.P13291363824575050731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264966 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat).toNat

end

end A266636.P13291363824575050731

/-! ## A266636.P17802432336252765316

`A008620(A264966(record[A065330(n+1)]))`
-/

namespace A266636.P17802432336252765316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A266636.P17802432336252765316

/-! ## A266636.P15697455794455630283

`A008620(A264966(A016777(n)+A000035(n)))`
-/

namespace A266636.P15697455794455630283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264966 (A016777 n + A000035 n).toNat).toNat

end

end A266636.P15697455794455630283

/-!
# A266637: a(1) = 1; for n > 1, if A192490(2*n + 1) = 1 [when 2n+1 is a Ludic number] a(n) = A003309(1+a(A266350(n)-1)), otherwise a(n) = A192607(a(n-A266350(n))).

The programs for A266637, there is no canonical definition to state claims against.
-/

/-! ## A266637.P18196967917056564186

`A237126(A266417(n+1))`
-/

namespace A266637.P18196967917056564186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (A266417 (n + 1)).toNat

end

end A266637.P18196967917056564186

/-!
# A266638: a(1) = 1, a(ludic(n)) = (ludic(3+a(n-1))-1)/2, a(nonludic(n)) = A266410(a(n)), where ludic(n) = n-th ludic number A003309, nonludic(n) = n-th nonludic number A192607 and A266410 = numbers n such that 2n+1 is nonludic.

The programs for A266638, there is no canonical definition to state claims against.
-/

/-! ## A266638.P547967798984611698

`A266418(A237427(n+1))`
-/

namespace A266638.P547967798984611698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266418 (A237427 (n + 1)).toNat

end

end A266638.P547967798984611698

/-! ## A266638.P12394945911814006202

`A266418(A246377(n+1))%A145692(n+3)`
-/

namespace A266638.P12394945911814006202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266418 (A246377 (n + 1)).toNat) (A145692 (n + 3))

end

end A266638.P12394945911814006202

/-! ## A266638.P8345855422537038990

`A266418(A260421(n+1))%A145692(n+3)`
-/

namespace A266638.P8345855422537038990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266418 (A260421 (n + 1)).toNat) (A145692 (n + 3))

end

end A266638.P8345855422537038990

/-!
# A266640: Reversed reduced frequency counts for A004001: a(n) = A265754(A054429(n)).

The programs for A266640, the canonical program `A266640.P4776473646735869985` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266640 has offset 1).

The definition of A266640 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A265754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A266640.P4776473646735869985

`A265754(A054429(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A266640

/-- `A265754(A054429(n+1))` -/
def P4776473646735869985.Spec : Prop :=
  ∀ n, P4776473646735869985.a n = A266640 (n + 1)

theorem P4776473646735869985.correct : P4776473646735869985.Spec := by
  intro n
  simp only [A266640, Nat.add_sub_cancel]

end A266640

/-! ## A266640.P3909053103563292471

`A065120(A209862(n+1))`
-/

namespace A266640.P3909053103563292471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A209862 (n + 1)).toNat

end

end A266640.P3909053103563292471

namespace A266640

/-- `A065120(A209862(n+1))` -/
def P3909053103563292471.Spec : Prop :=
  ∀ n, P3909053103563292471.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P13111042787986911626

`A065120(A267111(n+1))`
-/

namespace A266640.P13111042787986911626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A267111 (n + 1)).toNat

end

end A266640.P13111042787986911626

namespace A266640

/-- `A065120(A267111(n+1))` -/
def P13111042787986911626.Spec : Prop :=
  ∀ n, P13111042787986911626.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P4900439091501599728

`A065120(A276443(n+1))`
-/

namespace A266640.P4900439091501599728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A276443 (n + 1)).toNat

end

end A266640.P4900439091501599728

namespace A266640

/-- `A065120(A276443(n+1))` -/
def P4900439091501599728.Spec : Prop :=
  ∀ n, P4900439091501599728.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P12441157533612663420

`A090996(A276441(n+1))`
-/

namespace A266640.P12441157533612663420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A276441 (n + 1)).toNat

end

end A266640.P12441157533612663420

namespace A266640

/-- `A090996(A276441(n+1))` -/
def P12441157533612663420.Spec : Prop :=
  ∀ n, P12441157533612663420.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P1890430300431413480

`A265332(A122155(n+1))`
-/

namespace A266640.P1890430300431413480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A122155 (n + 1)).toNat

end

end A266640.P1890430300431413480

namespace A266640

/-- `A265332(A122155(n+1))` -/
def P1890430300431413480.Spec : Prop :=
  ∀ n, P1890430300431413480.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P10532561522276298160

`A087686(A080677(n+1)+1)-(n+1)`
-/

namespace A266640.P10532561522276298160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (A080677 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A266640.P10532561522276298160

namespace A266640

/-- `A087686(A080677(n+1)+1)-(n+1)` -/
def P10532561522276298160.Spec : Prop :=
  ∀ n, P10532561522276298160.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P9042579174782157031

`A265332(A054429(n+1)+1)-A036987(n)`
-/

namespace A266640.P9042579174782157031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A054429 (n + 1) + 1).toNat - A036987 n

end

end A266640.P9042579174782157031

namespace A266640

/-- `A265332(A054429(n+1)+1)-A036987(n)` -/
def P9042579174782157031.Spec : Prop :=
  ∀ n, P9042579174782157031.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P896509321505085482

`A266188(A088359(A080677(n+1)))-(n+1)`
-/

namespace A266640.P896509321505085482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266188 (A088359 (A080677 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A266640.P896509321505085482

namespace A266640

/-- `A266188(A088359(A080677(n+1)))-(n+1)` -/
def P896509321505085482.Spec : Prop :=
  ∀ n, P896509321505085482.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P9067046224879637666

`A087686(A088359(n+1)-n)-A088359(n+1)`
-/

namespace A266640.P9067046224879637666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (A088359 (n + 1) - (n : ℤ)).toNat - A088359 (n + 1)

end

end A266640.P9067046224879637666

namespace A266640

/-- `A087686(A088359(n+1)-n)-A088359(n+1)` -/
def P9067046224879637666.Spec : Prop :=
  ∀ n, P9067046224879637666.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P12785364010232467963

`A057515(A209643(n+1))`
-/

namespace A266640.P12785364010232467963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A209643 (n + 1)).toNat

end

end A266640.P12785364010232467963

namespace A266640

/-- `A057515(A209643(n+1))` -/
def P12785364010232467963.Spec : Prop :=
  ∀ n, P12785364010232467963.a n = A266640 (n + 1)

end A266640

/-! ## A266640.P3448752161453795838

`A124734(∑[A124736(n)])`
-/

namespace A266640.P3448752161453795838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A266640.P3448752161453795838

namespace A266640

/-- `A124734(∑[A124736(n)])` -/
def P3448752161453795838.Spec : Prop :=
  ∀ n, P3448752161453795838.a n = A266640 (n + 1)

end A266640

/-!
# A266641: Permutation of nonnegative integers: a(n) = A264965(2*n) / 2.

The programs for A266641, there is no canonical definition to state claims against.
-/

/-! ## A266641.P7118960074532826061

`A263272(A057889(n))`
-/

namespace A266641.P7118960074532826061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A057889 n).toNat

end

end A266641.P7118960074532826061

/-! ## A266641.P15603197964728591145

`A264965(2*n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266641.P15603197964728591145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264965 (2 * n) : ℚ) / 2

end

end A266641.P15603197964728591145

/-! ## A266641.P2790572342246026037

`A057889(A265369(2*n)/2)`
-/

namespace A266641.P2790572342246026037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway ((A265369 (2 * n) : ℚ) / 2)).toNat

end

end A266641.P2790572342246026037

/-! ## A266641.P17219282966395456167

`A263272(A266642(A263272(n)))`
-/

namespace A266641.P17219282966395456167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266642 (A263272 n).toNat).toNat

end

end A266641.P17219282966395456167

/-! ## A266641.P6552823984350178859

`A057889(A266642(A266642(A057889(A266642(n)))))`
-/

namespace A266641.P6552823984350178859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A266642 (A266642 (A057889 (A266642 n).toNat).toNat).toNat).toNat

end

end A266641.P6552823984350178859

/-! ## A266641.P10068098448366972286

`A246200(A264968(A057889(A246200(A246200(n)))))`
-/

namespace A266641.P10068098448366972286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264968 (A057889 (A246200 (A246200 n).toNat).toNat).toNat).toNat

end

end A266641.P10068098448366972286

/-! ## A266641.P1844137663302350836

`A263272(A265369(A264966(n)))`
-/

namespace A266641.P1844137663302350836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265369 (A264966 n).toNat).toNat

end

end A266641.P1844137663302350836

/-! ## A266641.P530852422194633884

`A263272(A264966(A263273(n)))`
-/

namespace A266641.P530852422194633884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264966 (A263273 n).toNat).toNat

end

end A266641.P530852422194633884

/-! ## A266641.P6847580935768684771

`A263272(A264966(A266643(A246200(n))))`
-/

namespace A266641.P6847580935768684771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264966 (A266643 (A246200 n).toNat).toNat).toNat

end

end A266641.P6847580935768684771

/-! ## A266641.P12484175380763073715

`A263272(A264966(A246200(A266644(n))))`
-/

namespace A266641.P12484175380763073715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264966 (A246200 (A266644 n).toNat).toNat).toNat

end

end A266641.P12484175380763073715

/-! ## A266641.P7830418863994781119

`A263272(A264966(A266643(A263272(A264967(n)))))`
-/

namespace A266641.P7830418863994781119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264966 (A266643 (A263272 (A264967 n).toNat).toNat).toNat).toNat

end

end A266641.P7830418863994781119

/-! ## A266641.P12551471757777958940

`A264967(A266644(A264965(n)))`
-/

namespace A266641.P12551471757777958940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264967 (A266644 (A264965 n).toNat).toNat

end

end A266641.P12551471757777958940

/-! ## A266641.P3060799821960429115

`A265351(A264965(n))`
-/

namespace A266641.P3060799821960429115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A264965 n).toNat

end

end A266641.P3060799821960429115

/-! ## A266641.P9390998533781024943

`A263272(A264965(A265369(n)))`
-/

namespace A266641.P9390998533781024943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264965 (A265369 n).toNat).toNat

end

end A266641.P9390998533781024943

/-! ## A266641.P4288067893442138473

`A265351(A265329(A263272(A265351(n))))`
-/

namespace A266641.P4288067893442138473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265329 (A263272 (A265351 n).toNat).toNat).toNat

end

end A266641.P4288067893442138473

/-! ## A266641.P11681029508321385858

`A263273(A057889(2*n))/2`
-/

namespace A266641.P11681029508321385858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (A057889 (2 * n)).toNat : ℚ) / 2

end

end A266641.P11681029508321385858

/-! ## A266641.P11571134330892302472

`A263272(A264966(A265368(A264975(n))))`
-/

namespace A266641.P11571134330892302472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264966 (A265368 (A264975 n).toNat).toNat).toNat

end

end A266641.P11571134330892302472

/-! ## A266641.P10705699641687670861

`A265329(A263273(2*n))/2`
-/

namespace A266641.P10705699641687670861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265329 (A263273 (2 * n)).toNat : ℚ) / 2

end

end A266641.P10705699641687670861

/-! ## A266641.P11383372452993373231

`A265329(2*A263272(n))/2`
-/

namespace A266641.P11383372452993373231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265329 (2 * A263272 n).toNat : ℚ) / 2

end

end A266641.P11383372452993373231

/-! ## A266641.P4471502282573804345

`A263272(A265369(A263273(A265329(n))))`
-/

namespace A266641.P4471502282573804345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265369 (A263273 (A265329 n).toNat).toNat).toNat

end

end A266641.P4471502282573804345

/-!
# A266642: Permutation of nonnegative integers: a(n) = A264966(2*n) / 2.

The programs for A266642, there is no canonical definition to state claims against.
-/

/-! ## A266642.P17606611733816298501

`A057889(A263272(n))`
-/

namespace A266642.P17606611733816298501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A263272 n).toNat

end

end A266642.P17606611733816298501

/-! ## A266642.P10714652058774210373

`A264966(2*n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266642.P10714652058774210373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264966 (2 * n) : ℚ) / 2

end

end A266642.P10714652058774210373

/-! ## A266642.P9442817740260425041

`A057889(A266641(A057889(n)))`
-/

namespace A266642.P9442817740260425041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A266641 (A057889 n).toNat).toNat

end

end A266642.P9442817740260425041

/-! ## A266642.P4898788466102595256

`A057889(A246200(A264968(n)))`
-/

namespace A266642.P4898788466102595256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A246200 (A264968 n).toNat).toNat

end

end A266642.P4898788466102595256

/-! ## A266642.P8648732890443550383

`A265369(2*A057889(n))/2`
-/

namespace A266642.P8648732890443550383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265369 (2 * A057889 n).toNat : ℚ) / 2

end

end A266642.P8648732890443550383

/-! ## A266642.P2861188211495066778

`A057889(A264967(A246200(n)))`
-/

namespace A266642.P2861188211495066778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264967 (A246200 n).toNat).toNat

end

end A266642.P2861188211495066778

/-! ## A266642.P13283370645206566381

`A057889(A264967(A266644(A263273(n))))`
-/

namespace A266642.P13283370645206566381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264967 (A266644 (A263273 n).toNat).toNat).toNat

end

end A266642.P13283370645206566381

/-! ## A266642.P8842403417123275256

`A057889(A264967(A266644(A057889(A264966(n)))))`
-/

namespace A266642.P8842403417123275256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264967 (A266644 (A057889 (A264966 n).toNat).toNat).toNat).toNat

end

end A266642.P8842403417123275256

/-! ## A266642.P12175991441429769103

`A057889(A263273(2*n)/2)`
-/

namespace A266642.P12175991441429769103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A266642.P12175991441429769103

/-! ## A266642.P5368185214979633729

`A263272(A265329(2*n)/2)`
-/

namespace A266642.P5368185214979633729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A265329 (2 * n) : ℚ) / 2)).toNat

end

end A266642.P5368185214979633729

/-! ## A266642.P11267975310952485635

`A263272(A266641(A263272(A265369(A265369(n)))))`
-/

namespace A266642.P11267975310952485635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266641 (A263272 (A265369 (A265369 n).toNat).toNat).toNat).toNat

end

end A266642.P11267975310952485635

/-! ## A266642.P16872150010335061619

`A263272(A266641(A266641(A263272(A266641(n)))))`
-/

namespace A266642.P16872150010335061619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266641 (A266641 (A263272 (A266641 n).toNat).toNat).toNat).toNat

end

end A266642.P16872150010335061619

/-! ## A266642.P5682966374581283211

`A264966(A265352(n))`
-/

namespace A266642.P5682966374581283211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A265352 n).toNat

end

end A266642.P5682966374581283211

/-! ## A266642.P9723328269313741049

`A004526(A264966(2*n))`
-/

namespace A266642.P9723328269313741049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A264966 (2 * n)).toNat

end

end A266642.P9723328269313741049

/-! ## A266642.P7476023080175773741

`A264966(A265339(2*n))`
-/

namespace A266642.P7476023080175773741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A265339 (2 * n)).toNat

end

end A266642.P7476023080175773741

/-! ## A266642.P9747820405061484041

`A264966(A265368(A264974(n)))`
-/

namespace A266642.P9747820405061484041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A265368 (A264974 n).toNat).toNat

end

end A266642.P9747820405061484041

/-! ## A266642.P11175111529076740129

`A263273(A264965(A263272(2*n-n)))`
-/

namespace A266642.P11175111529076740129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264965 (A263272 (2 * n - n)).toNat).toNat

end

end A266642.P11175111529076740129

/-! ## A266642.P14894069434670936565

`A263273(A264965(A264974(A264975(n))))`
-/

namespace A266642.P14894069434670936565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264965 (A264974 (A264975 n).toNat).toNat).toNat

end

end A266642.P14894069434670936565

/-! ## A266642.P12429607315156201411

`A264966(A265368(A263272(A264976(n))))`
-/

namespace A266642.P12429607315156201411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A265368 (A263272 (A264976 n).toNat).toNat).toNat

end

end A266642.P12429607315156201411

/-! ## A266642.P5550031291118185475

`A264966(A263273(A263272(A264966(A264965(n)))))`
-/

namespace A266642.P5550031291118185475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A263273 (A263272 (A264966 (A264965 n).toNat).toNat).toNat).toNat

end

end A266642.P5550031291118185475

/-!
# A266643: Permutation of nonnegative integers: a(n) = A264965(3*n) / 3.

The programs for A266643, there is no canonical definition to state claims against.
-/

/-! ## A266643.P15675116696771281461

`A263273(A246200(n))`
-/

namespace A266643.P15675116696771281461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A246200 n).toNat

end

end A266643.P15675116696771281461

/-! ## A266643.P16407318800434230042

`A264965(3*n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266643.P16407318800434230042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264965 (3 * n) : ℚ) / 3

end

end A266643.P16407318800434230042

/-! ## A266643.P1204203845811255273

`A263273(A264968(A263272(n)))`
-/

namespace A266643.P1204203845811255273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264968 (A263272 n).toNat).toNat

end

end A266643.P1204203845811255273

/-! ## A266643.P9347326580306313071

`A263273(A266644(A263273(n)))`
-/

namespace A266643.P9347326580306313071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266644 (A263273 n).toNat).toNat

end

end A266643.P9347326580306313071

/-! ## A266643.P2596414564725504939

`A263273(A264968(A057889(A266642(n))))`
-/

namespace A266643.P2596414564725504939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264968 (A057889 (A266642 n).toNat).toNat).toNat

end

end A266643.P2596414564725504939

/-! ## A266643.P15434229679723953235

`A265352(A264967(n))`
-/

namespace A266643.P15434229679723953235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A264967 n).toNat

end

end A266643.P15434229679723953235

/-! ## A266643.P4952325261076569559

`A264965(A057889(A246200(A057889(A057889(n)))))`
-/

namespace A266643.P4952325261076569559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A057889 (A246200 (A057889 (A057889 n).toNat).toNat).toNat).toNat

end

end A266643.P4952325261076569559

/-! ## A266643.P8075769986397498957

`A246200(A266644(A246200(2*n-n)))`
-/

namespace A266643.P8075769986397498957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266644 (A246200 (2 * n - n)).toNat).toNat

end

end A266643.P8075769986397498957

/-! ## A266643.P1382211149950515064

`A057889(A264966(A266644(A057889(A264966(n)))))`
-/

namespace A266643.P1382211149950515064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264966 (A266644 (A057889 (A264966 n).toNat).toNat).toNat).toNat

end

end A266643.P1382211149950515064

/-! ## A266643.P11094049979710229900

`A057889(A264966(A264968(A246200(A264968(n)))))`
-/

namespace A266643.P11094049979710229900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264966 (A264968 (A246200 (A264968 n).toNat).toNat).toNat).toNat

end

end A266643.P11094049979710229900

/-! ## A266643.P1007487648473494171

`A246200(A266644(A266644(A246200(A266644(n)))))`
-/

namespace A266643.P1007487648473494171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266644 (A266644 (A246200 (A266644 n).toNat).toNat).toNat).toNat

end

end A266643.P1007487648473494171

/-! ## A266643.P17473290907240811266

`A263273(A264968(A264976(A264974(n))))`
-/

namespace A266643.P17473290907240811266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264968 (A264976 (A264974 n).toNat).toNat).toNat

end

end A266643.P17473290907240811266

/-! ## A266643.P6090720487918937606

`A264965(A266642(A264967(A264966(A264965(n)))))`
-/

namespace A266643.P6090720487918937606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A266642 (A264967 (A264966 (A264965 n).toNat).toNat).toNat).toNat

end

end A266643.P6090720487918937606

/-! ## A266643.P18051724793162555316

`A263273(A264968(A264974(A264975(n))))`
-/

namespace A266643.P18051724793162555316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264968 (A264974 (A264975 n).toNat).toNat).toNat

end

end A266643.P18051724793162555316

/-! ## A266643.P5687416705382347739

`A264966(A265329(A266644(A264966(A265329(n)))))`
-/

namespace A266643.P5687416705382347739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A265329 (A266644 (A264966 (A265329 n).toNat).toNat).toNat).toNat

end

end A266643.P5687416705382347739

/-!
# A266644: Permutation of nonnegative integers: a(n) = A264966(3*n) / 3.

The programs for A266644, there is no canonical definition to state claims against.
-/

/-! ## A266644.P9735197468624256194

`A246200(A263273(n))`
-/

namespace A266644.P9735197468624256194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A263273 n).toNat

end

end A266644.P9735197468624256194

/-! ## A266644.P8043174115659192229

`A264966(3*n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266644.P8043174115659192229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264966 (3 * n) : ℚ) / 3

end

end A266644.P8043174115659192229

/-! ## A266644.P7204149702679967743

`A264968(A265351(n))`
-/

namespace A266644.P7204149702679967743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264968 (A265351 n).toNat

end

end A266644.P7204149702679967743

/-! ## A266644.P5581052840454395744

`A246200(A264965(A057889(n)))`
-/

namespace A266644.P5581052840454395744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264965 (A057889 n).toNat).toNat

end

end A266644.P5581052840454395744

/-! ## A266644.P3001010374984904685

`A246200(A057889(A264966(n)))`
-/

namespace A266644.P3001010374984904685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A057889 (A264966 n).toNat).toNat

end

end A266644.P3001010374984904685

/-! ## A266644.P6542742742775816503

`A246200(A266643(A246200(n)))`
-/

namespace A266644.P6542742742775816503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266643 (A246200 n).toNat).toNat

end

end A266644.P6542742742775816503

/-! ## A266644.P11179848820119809060

`A246200(A264965(A263272(A266641(n))))`
-/

namespace A266644.P11179848820119809060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264965 (A263272 (A266641 n).toNat).toNat).toNat

end

end A266644.P11179848820119809060

/-! ## A266644.P10646163268013482654

`A264968(A263272(A266643(A264968(A263272(n)))))`
-/

namespace A266644.P10646163268013482654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264968 (A263272 (A266643 (A264968 (A263272 n).toNat).toNat).toNat).toNat

end

end A266644.P10646163268013482654

/-! ## A266644.P14195777058109461313

`A264968(A263272(A263273(A264974(A264974(n)))))`
-/

namespace A266644.P14195777058109461313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264968 (A263272 (A263273 (A264974 (A264974 n).toNat).toNat).toNat).toNat

end

end A266644.P14195777058109461313

/-! ## A266644.P14013522546246543235

`A246200(A265329(A264965(n)))`
-/

namespace A266644.P14013522546246543235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A265329 (A264965 n).toNat).toNat

end

end A266644.P14013522546246543235

/-! ## A266644.P15399162056193064463

`A246200(A264965(A264965(A265369(n))))`
-/

namespace A266644.P15399162056193064463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264965 (A264965 (A265369 n).toNat).toNat).toNat

end

end A266644.P15399162056193064463

/-! ## A266644.P6231599348910607561

`A263272(A264967(A263273(2*n-n)))`
-/

namespace A266644.P6231599348910607561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264967 (A263273 (2 * n - n)).toNat).toNat

end

end A266644.P6231599348910607561

/-! ## A266644.P10734626323266040176

`A263272(A264967(A265352(A263272(n))))`
-/

namespace A266644.P10734626323266040176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264967 (A265352 (A263272 n).toNat).toNat).toNat

end

end A266644.P10734626323266040176

/-! ## A266644.P17391408357117647899

`A263272(A264967(A266643(A263272(A264967(n)))))`
-/

namespace A266644.P17391408357117647899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264967 (A266643 (A263272 (A264967 n).toNat).toNat).toNat).toNat

end

end A266644.P17391408357117647899

/-! ## A266644.P17518287315724915219

`A263273(A266643(A263273(A264967(A264968(n)))))`
-/

namespace A266644.P17518287315724915219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266643 (A263273 (A264967 (A264968 n).toNat).toNat).toNat).toNat

end

end A266644.P17518287315724915219

/-! ## A266644.P7232445394018034996

`A263273(A266643(A263273(A266641(A266642(n)))))`
-/

namespace A266644.P7232445394018034996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266643 (A263273 (A266641 (A266642 n).toNat).toNat).toNat).toNat

end

end A266644.P7232445394018034996

/-! ## A266644.P4260698938108968737

`A263273(A266643(A266643(A263273(A266643(n)))))`
-/

namespace A266644.P4260698938108968737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266643 (A266643 (A263273 (A266643 n).toNat).toNat).toNat).toNat

end

end A266644.P4260698938108968737

/-! ## A266644.P15136772155747691074

`A263273(A266643(A264966(A265329(n))))`
-/

namespace A266644.P15136772155747691074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266643 (A264966 (A265329 n).toNat).toNat).toNat

end

end A266644.P15136772155747691074

/-!
# A266645: Permutation of natural numbers: a(n) = A064989(A250469(n)).

The programs for A266645, there is no canonical definition to state claims against.
-/

/-! ## A266645.P3593013849029324620

`A064989(A250469(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266645.P3593013849029324620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A250469 (n + 1)).toNat

end

end A266645.P3593013849029324620

/-! ## A266645.P4691694871851259951

`A266416(A266403(n+1))`
-/

namespace A266645.P4691694871851259951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A266403 (n + 1)).toNat

end

end A266645.P4691694871851259951

/-! ## A266645.P12339566160954620316

`A064989(A249817(A003961(A249818(n+1))))`
-/

namespace A266645.P12339566160954620316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A249817 (A003961 (A249818 (n + 1)).toNat).toNat).toNat

end

end A266645.P12339566160954620316

/-! ## A266645.P17464696657951937864

`A020639(n+1)*A283463(n+1)`
-/

namespace A266645.P17464696657951937864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A283463 (n + 1)

end

end A266645.P17464696657951937864

/-! ## A266645.P3708702867764720013

`∏{p}[A028233(n+1), #*A283463(n+1)]`
-/

namespace A266645.P3708702867764720013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A283463 (n + 1)

end

end A266645.P3708702867764720013

/-! ## A266645.P9932957802234087873

`(n+1)/A032742(n+1)*A283463(n+1)`
-/

namespace A266645.P9932957802234087873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A283463 (n + 1) : ℚ)

end

end A266645.P9932957802234087873

/-! ## A266645.P2914485155854607485

`A006530(A028233(n+1))*A283463(n+1)`
-/

namespace A266645.P2914485155854607485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat * A283463 (n + 1)

end

end A266645.P2914485155854607485

/-! ## A266645.P1042034887086426272

`A249817(n+1)/A280497(n+1)*A283463(n+1)`
-/

namespace A266645.P1042034887086426272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ) * (A283463 (n + 1) : ℚ)

end

end A266645.P1042034887086426272

/-! ## A266645.P18015095707989455190

`A064989(A280702(n+1))*A064989(A280704(n+1))`
-/

namespace A266645.P18015095707989455190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A280702 (n + 1)).toNat * A064989 (A280704 (n + 1)).toNat

end

end A266645.P18015095707989455190

/-! ## A266645.P6735828855112899925

`A064216(A250471(n+1))`
-/

namespace A266645.P6735828855112899925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A250471 (n + 1)).toNat

end

end A266645.P6735828855112899925

/-! ## A266645.P14656151340164163581

`A064989(A253886(n)+1)`
-/

namespace A266645.P14656151340164163581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A253886 n + 1).toNat

end

end A266645.P14656151340164163581

/-! ## A266645.P6497226338184448043

`A283463(A269360(n+1))`
-/

namespace A266645.P6497226338184448043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A269360 (n + 1)).toNat

end

end A266645.P6497226338184448043

/-! ## A266645.P4217501043502026439

`A064989(or(1, A253886(n)))`
-/

namespace A266645.P4217501043502026439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.lor 1 (A253886 n)).toNat

end

end A266645.P4217501043502026439

/-! ## A266645.P8481761731232822390

`A064989(xor(1, A253886(n)))`
-/

namespace A266645.P8481761731232822390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.xor 1 (A253886 n)).toNat

end

end A266645.P8481761731232822390

/-! ## A266645.P18254680421431206829

`A283463(A250469(n+1)+1)`
-/

namespace A266645.P18254680421431206829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A250469 (n + 1) + 1).toNat

end

end A266645.P18254680421431206829

/-! ## A266645.P979900598734753157

`A064989(A269360(n+1)-1)`
-/

namespace A266645.P979900598734753157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A269360 (n + 1) - 1).toNat

end

end A266645.P979900598734753157

/-! ## A266645.P10984217344412532767

`A252463(A250469(2*n+1-n))`
-/

namespace A266645.P10984217344412532767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A250469 (2 * n + 1 - n)).toNat

end

end A266645.P10984217344412532767

/-! ## A266645.P16417422425844551465

`A064989(A280702(n+1)*A280704(n+1))`
-/

namespace A266645.P16417422425844551465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A280702 (n + 1) * A280704 (n + 1)).toNat

end

end A266645.P16417422425844551465

/-! ## A266645.P12240585346281763935

`A266401(A266416(n+1))`
-/

namespace A266645.P12240585346281763935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266401 (A266416 (n + 1)).toNat

end

end A266645.P12240585346281763935

/-! ## A266645.P4629366739503125873

`A246277(A250469(n+1)+2*A250469(n+1))`
-/

namespace A266645.P4629366739503125873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A250469 (n + 1) + 2 * A250469 (n + 1)).toNat

end

end A266645.P4629366739503125873

/-!
# A266646: Permutation of natural numbers: a(n) = A250470(A003961(n)).

The programs for A266646, there is no canonical definition to state claims against.
-/

/-! ## A266646.P15445374159408749654

`A266403(A266415(n+1))`
-/

namespace A266646.P15445374159408749654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A266415 (n + 1)).toNat

end

end A266646.P15445374159408749654

/-! ## A266646.P1395524409879532938

`A250470(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266646.P1395524409879532938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A003961 (n + 1)).toNat

end

end A266646.P1395524409879532938

/-! ## A266646.P5908346945718267469

`A268674(A253885(n)+1)`
-/

namespace A266646.P5908346945718267469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A253885 n + 1).toNat

end

end A266646.P5908346945718267469

/-! ## A266646.P13938882419640554503

`A268674(A243501(n+1)-1)`
-/

namespace A266646.P13938882419640554503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A243501 (n + 1) - 1).toNat

end

end A266646.P13938882419640554503

/-! ## A266646.P6647346865706584485

`A020639(n+1)*A283464(n+1)`
-/

namespace A266646.P6647346865706584485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A283464 (n + 1)

end

end A266646.P6647346865706584485

/-! ## A266646.P14092653561773523059

`∏{p}[A028233(n+1), #*A283464(n+1)]`
-/

namespace A266646.P14092653561773523059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A283464 (n + 1)

end

end A266646.P14092653561773523059

/-! ## A266646.P10579456016319039272

`(n+1)/A032742(n+1)*A283464(n+1)`
-/

namespace A266646.P10579456016319039272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A283464 (n + 1) : ℚ)

end

end A266646.P10579456016319039272

/-! ## A266646.P5700682161352367242

`A268674(A003973(n+1)-A336851(n+1))`
-/

namespace A266646.P5700682161352367242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A003973 (n + 1) - A336851 (n + 1)).toNat

end

end A266646.P5700682161352367242

/-! ## A266646.P12013686059825927973

`A006530(A028233(n+1))*A283464(n+1)`
-/

namespace A266646.P12013686059825927973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat * A283464 (n + 1)

end

end A266646.P12013686059825927973

/-! ## A266646.P706596485874896642

`A249817(n+1)/A280497(n+1)*A283464(n+1)`
-/

namespace A266646.P706596485874896642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ) * (A283464 (n + 1) : ℚ)

end

end A266646.P706596485874896642

/-! ## A266646.P11083395648372101762

`A266645(n+1)/A283463(n+1)*A283464(n+1)`
-/

namespace A266646.P11083395648372101762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A283463 (n + 1) : ℚ) * (A283464 (n + 1) : ℚ)

end

end A266646.P11083395648372101762

/-! ## A266646.P8690284832439383971

`A250470(A045965(n+1))`
-/

namespace A266646.P8690284832439383971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A045965 (n + 1)).toNat

end

end A266646.P8690284832439383971

/-! ## A266646.P12771272118255441109

`A250472(A048673(n+1))`
-/

namespace A266646.P12771272118255441109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A048673 (n + 1)).toNat

end

end A266646.P12771272118255441109

/-! ## A266646.P16656665263464571214

`A250470(A253885(n)+1)`
-/

namespace A266646.P16656665263464571214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A253885 n + 1).toNat

end

end A266646.P16656665263464571214

/-! ## A266646.P7088356222042917996

`A250470(or(1, A253885(n)))`
-/

namespace A266646.P7088356222042917996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (Int.lor 1 (A253885 n)).toNat

end

end A266646.P7088356222042917996

/-! ## A266646.P15152689704143298139

`A250470(xor(1, A253885(n)))`
-/

namespace A266646.P15152689704143298139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (Int.xor 1 (A253885 n)).toNat

end

end A266646.P15152689704143298139

/-! ## A266646.P5854576154015001726

`A250472(A249810(2*(n+1)))`
-/

namespace A266646.P5854576154015001726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A249810 (2 * (n + 1))).toNat

end

end A266646.P5854576154015001726

/-! ## A266646.P17004100960507696437

`A250470(A297166(2*(n+1)))`
-/

namespace A266646.P17004100960507696437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A297166 (2 * (n + 1))).toNat

end

end A266646.P17004100960507696437

/-! ## A266646.P12208472407409818936

`A250470(2*A048673(n+1)-1)`
-/

namespace A266646.P12208472407409818936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * A048673 (n + 1) - 1).toNat

end

end A266646.P12208472407409818936

/-! ## A266646.P4020375268308013616

`A250470(or(1, round(A246676(4*n+2)/3)))`
-/

namespace A266646.P4020375268308013616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (Int.lor 1 (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3))).toNat

end

end A266646.P4020375268308013616

/-!
# A266647: Expansion of Product_{k>=1} (1 + x^k + x^(3*k)) / (1 - x^k).

The programs for A266647, there is no canonical definition to state claims against.
-/

/-! ## A266647.P12980114252348262853

`A342522(A164487(n))+A111133(n)²`
-/

namespace A266647.P12980114252348262853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (A164487 n).toNat + A111133 n ^ 2

end

end A266647.P12980114252348262853

/-! ## A266647.P10127100052254070428

`A184172(A078213(n+1)+A017497(n))`
-/

namespace A266647.P10127100052254070428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 (A078213 (n + 1) + A017497 n).toNat

end

end A266647.P10127100052254070428

/-! ## A266647.P6263198222393787896

`xor(A288001(3*n), A288004(A287987(n)))`
-/

namespace A266647.P6263198222393787896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288001 (3 * n)) (A288004 (A287987 n).toNat)

end

end A266647.P6263198222393787896

/-!
# A266648: Expansion of Product_{k>=1} (1 + x^(3*k)) / (1 - x^k).

The programs for A266648, there is no canonical definition to state claims against.
-/

/-! ## A266648.P11722472110806938663

`A000009(2*n)-A024360(A139063(2*n+1))`
-/

namespace A266648.P11722472110806938663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A024360 (A139063 (2 * n + 1)).toNat

end

end A266648.P11722472110806938663

/-! ## A266648.P9644674148515950126

`A161293(A062399(n))+A024786(n+1)`
-/

namespace A266648.P9644674148515950126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 (A062399 n).toNat + A024786 (n + 1)

end

end A266648.P9644674148515950126

/-! ## A266648.P7054728127495960902

`A161293(n)+A024786(A351870(n)+1)`
-/

namespace A266648.P7054728127495960902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n + A024786 (A351870 n + 1).toNat

end

end A266648.P7054728127495960902

/-! ## A266648.P2916244426738680275

`A024787(n+3)+A000586(A309863(n))`
-/

namespace A266648.P2916244426738680275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 3) + A000586 (A309863 n).toNat

end

end A266648.P2916244426738680275

/-! ## A266648.P13473466838152182068

`A000009(2*n)-A131078(A251236(2*n+1))`
-/

namespace A266648.P13473466838152182068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A131078 (A251236 (2 * n + 1)).toNat

end

end A266648.P13473466838152182068

/-!
# A266650: Expansion of Product_{k>=1} (1 + x^k - x^(3*k)) / (1 - x^k).

The programs for A266650, there is no canonical definition to state claims against.
-/

/-! ## A266650.P15274695424955486413

`A232746(A124617(n))`
-/

namespace A266650.P15274695424955486413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A124617 n).toNat

end

end A266650.P15274695424955486413

/-! ## A266650.P5164217634369178866

`∑[A119605(A000041(n))]`
-/

namespace A266650.P5164217634369178866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A000041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266650.P5164217634369178866

/-! ## A266650.P3991878563302159054

`∑[A119605(A008639(n))]`
-/

namespace A266650.P3991878563302159054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A008639 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266650.P3991878563302159054

/-! ## A266650.P11961764197002063527

`∑[A119605(A027344(n))]`
-/

namespace A266650.P11961764197002063527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A027344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266650.P11961764197002063527

/-! ## A266650.P6402349026971991822

`∑[A119605(A242699(n))]`
-/

namespace A266650.P6402349026971991822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A242699 (n + 64)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266650.P6402349026971991822

/-!
# A266652: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266652, there is no canonical definition to state claims against.
-/

/-! ## A266652.P9633846171465770746

`A266655(∑[n+2])`
-/

namespace A266652.P9633846171465770746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266652.P9633846171465770746

/-! ## A266652.P13920164077900902330

`∑{digits}[n, A266655(A000096(#+1))]`
-/

namespace A266652.P13920164077900902330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A266655 (A000096 (x + 1)).toNat).sum

end

end A266652.P13920164077900902330

/-! ## A266652.P14053033246688948941

`A266655(A000096(n+1))+A120041(n)`
-/

namespace A266652.P14053033246688948941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (A000096 (n + 1)).toNat + A120041 n

end

end A266652.P14053033246688948941

/-! ## A266652.P8204509207921581258

`A266655(A000096(n+1))%A252782(n+2)`
-/

namespace A266652.P8204509207921581258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266655 (A000096 (n + 1)).toNat) (A252782 (n + 2))

end

end A266652.P8204509207921581258

/-!
# A266653: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266653, there is no canonical definition to state claims against.
-/

/-! ## A266653.P11099668760437429139

`A266655(∑[n+3]+1)`
-/

namespace A266653.P11099668760437429139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266653.P11099668760437429139

/-! ## A266653.P8169639188532105702

`record[A266655(A130297(n+1))]`
-/

namespace A266653.P8169639188532105702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266653.P8169639188532105702

/-! ## A266653.P8802215742574523886

`record[A266655(A237519(n+1))]`
-/

namespace A266653.P8802215742574523886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266653.P8802215742574523886

/-! ## A266653.P4907904985503567667

`record[A266655(A347633(n+1))]`
-/

namespace A266653.P4907904985503567667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266653.P4907904985503567667

/-!
# A266654: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no element 1 greater than its northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266654, there is no canonical definition to state claims against.
-/

/-! ## A266654.P2503605151879899077

`A266655(A141214(n+1))`
-/

namespace A266654.P2503605151879899077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (A141214 (n + 1)).toNat

end

end A266654.P2503605151879899077

/-! ## A266654.P9141556692011636055

`A266655(A055998(n+2))`
-/

namespace A266654.P9141556692011636055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (A055998 (n + 2)).toNat

end

end A266654.P9141556692011636055

/-! ## A266654.P9137092051581514021

`A266655(eq[4, A193739(n)]+1)`
-/

namespace A266654.P9137092051581514021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A266654.P9137092051581514021

/-!
# A266656: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its northeast neighbor modulo 3 and the upper left element equal to 0.

The programs for A266656, there is no canonical definition to state claims against.
-/

/-! ## A266656.P15067074778969145346

`A267836(∑[n+2]+4)`
-/

namespace A266656.P15067074778969145346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266656.P15067074778969145346

/-! ## A266656.P11884004622655859848

`and(-1, A267836(A167614(n+1)))`
-/

namespace A266656.P11884004622655859848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A267836 (A167614 (n + 1)).toNat)

end

end A266656.P11884004622655859848

/-! ## A266656.P10297378731685417104

`record[A267836(A130297(n+1)+5)]`
-/

namespace A266656.P10297378731685417104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267836 (A130297 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266656.P10297378731685417104

/-! ## A266656.P11376765298616919237

`record[A267836(A347633(n+1)+5)]`
-/

namespace A266656.P11376765298616919237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267836 (A347633 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266656.P11376765298616919237

/-! ## A266656.P326313545060409094

`A267836(A167614(n+1))+A011738(n)`
-/

namespace A266656.P326313545060409094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267836 (A167614 (n + 1)).toNat + A011738 n

end

end A266656.P326313545060409094

/-!
# A266657: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its northeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A266657, there is no canonical definition to state claims against.
-/

/-! ## A266657.P13757602636651388074

`A266655(∑[n+2]+n+8)`
-/

namespace A266657.P13757602636651388074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A266657.P13757602636651388074

/-!
# A266658: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its northeast neighbor modulo 5 and the upper left element equal to 0.

The programs for A266658, there is no canonical definition to state claims against.
-/

/-! ## A266658.P17694915375107914377

`A266655(A167499(n+3))`
-/

namespace A266658.P17694915375107914377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266655 (A167499 (n + 3)).toNat

end

end A266658.P17694915375107914377

/-!
# A266659: Triangle read by rows giving successive states of cellular automaton generated by "Rule 47" initiated with a single ON (black) cell.

The programs for A266659, the canonical program `A266659.P421182450732641634` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266659 has offset 0).

The definition of A266659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266659.P15405911492156966689

`char[2]+floor(sqrt(n+2))%2`
-/

namespace A266659.P15405911492156966689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.sqrt (n + 2) % 2

end

end A266659.P15405911492156966689

namespace A266659

/-- `char[2]+floor(sqrt(n+2))%2` -/
def P15405911492156966689.Spec : Prop :=
  ∀ n, (P15405911492156966689.a n : ℤ) = A266659 n

end A266659

/-! ## A266659.P10570822689918310980

`char[2]+and(1, floor(sqrt(n+2)))`
-/

namespace A266659.P10570822689918310980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.land 1 (Nat.sqrt (n + 2))

end

end A266659.P10570822689918310980

namespace A266659

/-- `char[2]+and(1, floor(sqrt(n+2)))` -/
def P10570822689918310980.Spec : Prop :=
  ∀ n, (P10570822689918310980.a n : ℤ) = A266659 n

end A266659

/-! ## A266659.P12760166092317293011

`or(-(ceil(-sqrt(n+2))%2), char[2])`
-/

namespace A266659.P12760166092317293011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-Int.tmod ⌈-Real.sqrt (n + 2 : ℝ)⌉ 2) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266659.P12760166092317293011

namespace A266659

/-- `or(-(ceil(-sqrt(n+2))%2), char[2])` -/
def P12760166092317293011.Spec : Prop :=
  ∀ n, P12760166092317293011.a n = A266659 n

end A266659

/-! ## A266659.P2079469173485961446

`A266253(n)+char[2]`
-/

namespace A266659.P2079469173485961446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266253 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266659.P2079469173485961446

namespace A266659

/-- `A266253(n)+char[2]` -/
def P2079469173485961446.Spec : Prop :=
  ∀ n, P2079469173485961446.a n = A266659 n

end A266659

/-! ## A266659.P3293551080012044000

`A266253(n-char[2])`
-/

namespace A266659.P3293551080012044000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266253 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A266659.P3293551080012044000

namespace A266659

/-- `A266253(n-char[2])` -/
def P3293551080012044000.Spec : Prop :=
  ∀ n, P3293551080012044000.a n = A266659 n

end A266659

/-! ## A266659.P823864111679483737

`xor(A185012(n), A266253(n))`
-/

namespace A266659.P823864111679483737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A266253 n)

end

end A266659.P823864111679483737

namespace A266659

/-- `xor(A185012(n), A266253(n))` -/
def P823864111679483737.Spec : Prop :=
  ∀ n, P823864111679483737.a n = A266659 n

end A266659

/-! ## A266659.P421182450732641634

`A267272(A020703(n+1)-1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A266659

/-- `A267272(A020703(n+1)-1)` -/
def P421182450732641634.Spec : Prop :=
  ∀ n, P421182450732641634.a n = A266659 n

theorem P421182450732641634.correct : P421182450732641634.Spec := by
  intro n
  simp only [A266659]

end A266659

/-! ## A266659.P13394284948556314957

`A266300(n+1)+char[2]`
-/

namespace A266659.P13394284948556314957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266659.P13394284948556314957

namespace A266659

/-- `A266300(n+1)+char[2]` -/
def P13394284948556314957.Spec : Prop :=
  ∀ n, P13394284948556314957.a n = A266659 n

end A266659

/-! ## A266659.P3546584801869647558

`A266300(A326178(n))`
-/

namespace A266659.P3546584801869647558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A326178 n).toNat

end

end A266659.P3546584801869647558

namespace A266659

/-- `A266300(A326178(n))` -/
def P3546584801869647558.Spec : Prop :=
  ∀ n, P3546584801869647558.a n = A266659 n

end A266659

/-! ## A266659.P12908734286957125928

`A266300(A014684(n+1))`
-/

namespace A266659.P12908734286957125928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A014684 (n + 1)).toNat

end

end A266659.P12908734286957125928

namespace A266659

/-- `A266300(A014684(n+1))` -/
def P12908734286957125928.Spec : Prop :=
  ∀ n, P12908734286957125928.a n = A266659 n

end A266659

/-! ## A266659.P5914511781156146898

`A266300(A113523(n+1))`
-/

namespace A266659.P5914511781156146898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A113523 (n + 1)).toNat

end

end A266659.P5914511781156146898

namespace A266659

/-- `A266300(A113523(n+1))` -/
def P5914511781156146898.Spec : Prop :=
  ∀ n, P5914511781156146898.a n = A266659 n

end A266659

/-! ## A266659.P3186464557260411180

`A266300(A113638(n+1))`
-/

namespace A266659.P3186464557260411180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A113638 (n + 1)).toNat

end

end A266659.P3186464557260411180

namespace A266659

/-- `A266300(A113638(n+1))` -/
def P3186464557260411180.Spec : Prop :=
  ∀ n, P3186464557260411180.a n = A266659 n

end A266659

/-! ## A266659.P347869445291496919

`A266377(A113636(n+1))`
-/

namespace A266659.P347869445291496919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 (A113636 (n + 1)).toNat

end

end A266659.P347869445291496919

namespace A266659

/-- `A266377(A113636(n+1))` -/
def P347869445291496919.Spec : Prop :=
  ∀ n, P347869445291496919.a n = A266659 n

end A266659

/-! ## A266659.P15980806788609214827

`A266300(A171526(n+1))`
-/

namespace A266659.P15980806788609214827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A171526 (n + 1)).toNat

end

end A266659.P15980806788609214827

namespace A266659

/-- `A266300(A171526(n+1))` -/
def P15980806788609214827.Spec : Prop :=
  ∀ n, P15980806788609214827.a n = A266659 n

end A266659

/-! ## A266659.P69334079847934187

`A266300(A179278(n+1))`
-/

namespace A266659.P69334079847934187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A179278 (n + 1)).toNat

end

end A266659.P69334079847934187

namespace A266659

/-- `A266300(A179278(n+1))` -/
def P69334079847934187.Spec : Prop :=
  ∀ n, P69334079847934187.a n = A266659 n

end A266659

/-! ## A266659.P12622055345115106182

`A267272(A020703(n+2))`
-/

namespace A266659.P12622055345115106182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (A020703 (n + 2)).toNat

end

end A266659.P12622055345115106182

namespace A266659

/-- `A267272(A020703(n+2))` -/
def P12622055345115106182.Spec : Prop :=
  ∀ n, P12622055345115106182.a n = A266659 n

end A266659

/-! ## A266659.P4741278172058431182

`A267272(A045901(n+2))`
-/

namespace A266659.P4741278172058431182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (A045901 (n + 2)).toNat

end

end A266659.P4741278172058431182

namespace A266659

/-- `A267272(A045901(n+2))` -/
def P4741278172058431182.Spec : Prop :=
  ∀ n, P4741278172058431182.a n = A266659 n

end A266659

/-! ## A266659.P10777822721861928799

`A266434(A020703(n+2)-2)`
-/

namespace A266659.P10777822721861928799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A020703 (n + 2) - 2).toNat

end

end A266659.P10777822721861928799

namespace A266659

/-- `A266434(A020703(n+2)-2)` -/
def P10777822721861928799.Spec : Prop :=
  ∀ n, P10777822721861928799.a n = A266659 n

end A266659

/-! ## A266659.P8205238212108238370

`A266216(A057544(n))`
-/

namespace A266659.P8205238212108238370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266216 (A057544 n).toNat

end

end A266659.P8205238212108238370

namespace A266659

/-- `A266216(A057544(n))` -/
def P8205238212108238370.Spec : Prop :=
  ∀ n, P8205238212108238370.a n = A266659 n

end A266659

/-!
# A266661: Decimal representation of the n-th iteration of the "Rule 47" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266661, the canonical program `A266661.P16932731646310684798` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266661 has offset 0).

The definition of A266661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266661.P16932731646310684798

`or(A130713(n), A266255(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266661

/-- `or(A130713(n), A266255(n))` -/
def P16932731646310684798.Spec : Prop :=
  ∀ n, P16932731646310684798.a n = A266661 n

theorem P16932731646310684798.correct : P16932731646310684798.Spec := by
  intro n
  simp only [A266661]

end A266661

/-! ## A266661.P3773462572141519396

`or(A266255(n), A285645(n))`
-/

namespace A266661.P3773462572141519396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266255 n) (A285645 n)

end

end A266661.P3773462572141519396

namespace A266661

/-- `or(A266255(n), A285645(n))` -/
def P3773462572141519396.Spec : Prop :=
  ∀ n, P3773462572141519396.a n = A266661 n

end A266661

/-! ## A266661.P9268461450046257563

`or(Δ[A270059(n)], A266255(n))`
-/

namespace A266661.P9268461450046257563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A266255 n)

end

end A266661.P9268461450046257563

namespace A266661

/-- `or(Δ[A270059(n)], A266255(n))` -/
def P9268461450046257563.Spec : Prop :=
  ∀ n, P9268461450046257563.a n = A266661 n

end A266661

/-! ## A266661.P16897337567083784952

`A266255(n)+and(2, A000079(n))`
-/

namespace A266661.P16897337567083784952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266255 n + Int.land 2 (A000079 n)

end

end A266661.P16897337567083784952

namespace A266661

/-- `A266255(n)+and(2, A000079(n))` -/
def P16897337567083784952.Spec : Prop :=
  ∀ n, P16897337567083784952.a n = A266661 n

end A266661

/-! ## A266661.P8773707904939919785

`xor(2*A157928(n), A266302(n))`
-/

namespace A266661.P8773707904939919785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A157928 n) (A266302 n)

end

end A266661.P8773707904939919785

namespace A266661

/-- `xor(2*A157928(n), A266302(n))` -/
def P8773707904939919785.Spec : Prop :=
  ∀ n, P8773707904939919785.a n = A266661 n

end A266661

/-! ## A266661.P12510826336843045264

`or(and(2, A081254(n+1)), A266255(n))`
-/

namespace A266661.P12510826336843045264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 2 (A081254 (n + 1))) (A266255 n)

end

end A266661.P12510826336843045264

namespace A266661

/-- `or(and(2, A081254(n+1)), A266255(n))` -/
def P12510826336843045264.Spec : Prop :=
  ∀ n, P12510826336843045264.a n = A266661 n

end A266661

/-! ## A266661.P2547498762332605375

`A266255(n)+A000038(A028242(n))`
-/

namespace A266661.P2547498762332605375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266255 n + A000038 (A028242 n).toNat

end

end A266661.P2547498762332605375

namespace A266661

/-- `A266255(n)+A000038(A028242(n))` -/
def P2547498762332605375.Spec : Prop :=
  ∀ n, P2547498762332605375.a n = A266661 n

end A266661

/-! ## A266661.P3047632658852020690

`or(A266255(n), A266258(A266222(n)))`
-/

namespace A266661.P3047632658852020690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266255 n) (A266258 (A266222 n).toNat)

end

end A266661.P3047632658852020690

namespace A266661

/-- `or(A266255(n), A266258(A266222(n)))` -/
def P3047632658852020690.Spec : Prop :=
  ∀ n, P3047632658852020690.a n = A266661 n

end A266661

/-! ## A266661.P8863684445494829370

`A266255(n)+and(A005009(n), A266258(n))`
-/

namespace A266661.P8863684445494829370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266255 n + Int.land (A005009 n) (A266258 n)

end

end A266661.P8863684445494829370

namespace A266661

/-- `A266255(n)+and(A005009(n), A266258(n))` -/
def P8863684445494829370.Spec : Prop :=
  ∀ n, P8863684445494829370.a n = A266661 n

end A266661

/-! ## A266661.P17878319964418450612

`A266255(n)+A266222(A266222(n))*A266258(n)`
-/

namespace A266661.P17878319964418450612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266255 n + A266222 (A266222 n).toNat * A266258 n

end

end A266661.P17878319964418450612

namespace A266661

/-- `A266255(n)+A266222(A266222(n))*A266258(n)` -/
def P17878319964418450612.Spec : Prop :=
  ∀ n, P17878319964418450612.a n = A266661 n

end A266661

/-! ## A266661.P266583409139532585

`C(A266255(n), A014963(A266242(2*(n+2))))`
-/

namespace A266661.P266583409139532585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A266255 n).toNat (A014963 (A266242 (2 * (n + 2))).toNat).toNat

end

end A266661.P266583409139532585

namespace A266661

/-- `C(A266255(n), A014963(A266242(2*(n+2))))` -/
def P266583409139532585.Spec : Prop :=
  ∀ n, (P266583409139532585.a n : ℤ) = A266661 n

end A266661

/-!
# A266662: Number of ON (black) cells in the n-th iteration of the "Rule 47" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266662, the canonical program `A266662.P2489020861745842262` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266662 has offset 0).

The definition of A266662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266662.P17596391849045256583

`xor(1, 2*n-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266662.P17596391849045256583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  Int.xor 1 ((2 * n : ℤ) - a (n - 1))

end

end A266662.P17596391849045256583

namespace A266662

/-- `xor(1, 2*n-a(n-1))` -/
def P17596391849045256583.Spec : Prop :=
  ∀ n, P17596391849045256583.a n = A266662 n

end A266662

/-! ## A266662.P8627281239160670705

`floor((4*n-2)/a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266662.P8627281239160670705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ⌊((4 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266662.P8627281239160670705

namespace A266662

/-- `floor((4*n-2)/a(n-1))` -/
def P8627281239160670705.Spec : Prop :=
  ∀ n, P8627281239160670705.a n = A266662 n

end A266662

/-! ## A266662.P13516115884241118300

`comp[2*n+3]^(n%2)^n+1`
-/

namespace A266662.P13516115884241118300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ (n % 2) ^ n + 1

end

end A266662.P13516115884241118300

namespace A266662

/-- `comp[2*n+3]^(n%2)^n+1` -/
def P13516115884241118300.Spec : Prop :=
  ∀ n, (P13516115884241118300.a n : ℤ) = A266662 n

end A266662

/-! ## A266662.P17474289676106172023

`2*n+1-or(2, a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266662.P17474289676106172023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (2 * n + 1 : ℤ) - Int.lor 2 (a (n - 1))

end

end A266662.P17474289676106172023

namespace A266662

/-- `2*n+1-or(2, a(n-1))` -/
def P17474289676106172023.Spec : Prop :=
  ∀ n, P17474289676106172023.a n = A266662 n

end A266662

/-! ## A266662.P3869757101345812078

`a(n-2)+4%a(n-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A266662.P3869757101345812078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 5] fun n a =>
  a (n - 2) + 4 % a (n - 2)

end

end A266662.P3869757101345812078

namespace A266662

/-- `a(n-2)+4%a(n-2)` -/
def P3869757101345812078.Spec : Prop :=
  ∀ n, (P3869757101345812078.a n : ℤ) = A266662 n

end A266662

/-! ## A266662.P12863318269827570168

`C(2*n, gcd(n-1, a(n-1)))/n` with `a(0)=1`
-/

namespace A266662.P12863318269827570168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n) (Int.gcd ((n : ℤ) - 1) (SequenceMachineLib.roundAway (a (n - 1)))) : ℚ) / (n : ℚ)

end

end A266662.P12863318269827570168

namespace A266662

/-- `C(2*n, gcd(n-1, a(n-1)))/n` -/
def P12863318269827570168.Spec : Prop :=
  ∀ n, P12863318269827570168.a n = (A266662 n : ℚ)

end A266662

/-! ## A266662.P1690029940898592793

`n+1-Δ[floor((n-1)/a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A266662.P1690029940898592793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊((n : ℤ) - 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A266662.P1690029940898592793

namespace A266662

/-- `n+1-Δ[floor((n-1)/a(n-1))]` -/
def P1690029940898592793.Spec : Prop :=
  ∀ n, P1690029940898592793.a n = A266662 n

end A266662

/-! ## A266662.P2489020861745842262

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5, a(4)=2, a(5)=9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266662

/-- `2*a(n-2)-a(n-4)` -/
def P2489020861745842262.Spec : Prop :=
  ∀ n, P2489020861745842262.a n = A266662 n

theorem P2489020861745842262.correct : P2489020861745842262.Spec := by
  intro n
  simp only [A266662]

end A266662

/-! ## A266662.P13979662801517927314

`A019425(n)+1`
-/

namespace A266662.P13979662801517927314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + 1

end

end A266662.P13979662801517927314

namespace A266662

/-- `A019425(n)+1` -/
def P13979662801517927314.Spec : Prop :=
  ∀ n, P13979662801517927314.a n = A266662 n

end A266662

/-! ## A266662.P13213070414603033434

`A266256(char[1]+n)`
-/

namespace A266662.P13213070414603033434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A266662.P13213070414603033434

namespace A266662

/-- `A266256(char[1]+n)` -/
def P13213070414603033434.Spec : Prop :=
  ∀ n, P13213070414603033434.a n = A266662 n

end A266662

/-! ## A266662.P2840760353507673723

`Δ[n²]-A266664(n)`
-/

namespace A266662.P2840760353507673723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266664 n

end

end A266662.P2840760353507673723

namespace A266662

/-- `Δ[n²]-A266664(n)` -/
def P2840760353507673723.Spec : Prop :=
  ∀ n, P2840760353507673723.a n = A266662 n

end A266662

/-! ## A266662.P6400612359843412782

`and(comp[2*n+3]+1, A280193(n))`
-/

namespace A266662.P6400612359843412782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) (A280193 n)

end

end A266662.P6400612359843412782

namespace A266662

/-- `and(comp[2*n+3]+1, A280193(n))` -/
def P6400612359843412782.Spec : Prop :=
  ∀ n, P6400612359843412782.a n = A266662 n

end A266662

/-! ## A266662.P16481809360889416883

`char[A004277(n)]+(2*n-1)^and(1, n)`
-/

namespace A266662.P16481809360889416883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((2 * n : ℤ) - 1) ^ Nat.land 1 n

end

end A266662.P16481809360889416883

namespace A266662

/-- `char[A004277(n)]+(2*n-1)^and(1, n)` -/
def P16481809360889416883.Spec : Prop :=
  ∀ n, P16481809360889416883.a n = A266662 n

end A266662

/-! ## A266662.P7529480935026801063

`A088440(A004275(n))+1`
-/

namespace A266662.P7529480935026801063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A004275 n).toNat + 1

end

end A266662.P7529480935026801063

namespace A266662

/-- `A088440(A004275(n))+1` -/
def P7529480935026801063.Spec : Prop :=
  ∀ n, P7529480935026801063.a n = A266662 n

end A266662

/-! ## A266662.P9082442019755692298

`A266256(n)+A063524(n)`
-/

namespace A266662.P9082442019755692298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n + A063524 n

end

end A266662.P9082442019755692298

namespace A266662

/-- `A266256(n)+A063524(n)` -/
def P9082442019755692298.Spec : Prop :=
  ∀ n, P9082442019755692298.a n = A266662 n

end A266662

/-! ## A266662.P6512336918218402827

`A267352(n)-A157928(n)`
-/

namespace A266662.P6512336918218402827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 n - A157928 n

end

end A266662.P6512336918218402827

namespace A266662

/-- `A267352(n)-A157928(n)` -/
def P6512336918218402827.Spec : Prop :=
  ∀ n, P6512336918218402827.a n = A266662 n

end A266662

/-! ## A266662.P16513836771035859679

`A266256(n)-A159075(n)`
-/

namespace A266662.P16513836771035859679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n - A159075 n

end

end A266662.P16513836771035859679

namespace A266662

/-- `A266256(n)-A159075(n)` -/
def P16513836771035859679.Spec : Prop :=
  ∀ n, P16513836771035859679.a n = A266662 n

end A266662

/-! ## A266662.P4822458611903316599

`A223134(n)-A266258(n)`
-/

namespace A266662.P4822458611903316599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n - A266258 n

end

end A266662.P4822458611903316599

namespace A266662

/-- `A223134(n)-A266258(n)` -/
def P4822458611903316599.Spec : Prop :=
  ∀ n, P4822458611903316599.a n = A266662 n

end A266662

/-! ## A266662.P8170437438776445681

`A266256(n)*A373565(n)`
-/

namespace A266662.P8170437438776445681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n * A373565 n

end

end A266662.P8170437438776445681

namespace A266662

/-- `A266256(n)*A373565(n)` -/
def P8170437438776445681.Spec : Prop :=
  ∀ n, P8170437438776445681.a n = A266662 n

end A266662

/-! ## A266662.P17413052872093736466

`xor(A130130(n), A266437(n))`
-/

namespace A266662.P17413052872093736466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130130 n) (A266437 n)

end

end A266662.P17413052872093736466

namespace A266662

/-- `xor(A130130(n), A266437(n))` -/
def P17413052872093736466.Spec : Prop :=
  ∀ n, P17413052872093736466.a n = A266662 n

end A266662

/-!
# A266663: Total number of ON (black) cells after n iterations of the "Rule 47" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266663, the canonical program `A266663.P2101982877709448870` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266663 has offset 0).

The definition of A266663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266663.P6085833644281707756

`∑[char[1]+n]+n^(n%2)`
-/

namespace A266663.P6085833644281707756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ (n % 2)

end

end A266663.P6085833644281707756

namespace A266663

/-- `∑[char[1]+n]+n^(n%2)` -/
def P6085833644281707756.Spec : Prop :=
  ∀ n, (P6085833644281707756.a n : ℤ) = A266663 n

end A266663

/-! ## A266663.P18421756567113418477

`∑[xor(1, 2*n-a(n-1))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266663.P18421756567113418477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  Int.xor 1 ((2 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266663.P18421756567113418477

namespace A266663

/-- `∑[xor(1, 2*n-a(n-1))]` -/
def P18421756567113418477.Spec : Prop :=
  ∀ n, P18421756567113418477.a n = A266663 n

end A266663

/-! ## A266663.P6927624813568205595

`a(n-gcd(2, n))+2*n-1` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A266663.P6927624813568205595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - Nat.gcd 2 n) + (2 * n : ℤ) - 1

end

end A266663.P6927624813568205595

namespace A266663

/-- `a(n-gcd(2, n))+2*n-1` -/
def P6927624813568205595.Spec : Prop :=
  ∀ n, P6927624813568205595.a n = A266663 n

end A266663

/-! ## A266663.P12426892144080141135

`∑[a(n-2)+4%a(n-2)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A266663.P12426892144080141135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 5] fun n f1 =>
  f1 (n - 2) + 4 % f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266663.P12426892144080141135

namespace A266663

/-- `∑[a(n-2)+4%a(n-2)]` -/
def P12426892144080141135.Spec : Prop :=
  ∀ n, (P12426892144080141135.a n : ℤ) = A266663 n

end A266663

/-! ## A266663.P2101982877709448870

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=10, a(4)=12, a(5)=21`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266663

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2101982877709448870.Spec : Prop :=
  ∀ n, P2101982877709448870.a n = A266663 n

theorem P2101982877709448870.correct : P2101982877709448870.Spec := by
  intro n
  simp only [A266663]

end A266663

/-! ## A266663.P5870815638072044864

`∑[A266662(n)]`
-/

namespace A266663.P5870815638072044864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266663.P5870815638072044864

namespace A266663

/-- `∑[A266662(n)]` -/
def P5870815638072044864.Spec : Prop :=
  ∀ n, P5870815638072044864.a n = A266663 n

end A266663

/-! ## A266663.P3544654164729112514

`∑[A019425(n)+1]`
-/

namespace A266663.P3544654164729112514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266663.P3544654164729112514

namespace A266663

/-- `∑[A019425(n)+1]` -/
def P3544654164729112514.Spec : Prop :=
  ∀ n, P3544654164729112514.a n = A266663 n

end A266663

/-! ## A266663.P12928806868812377879

`(n+1)²-A266665(n)`
-/

namespace A266663.P12928806868812377879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266665 n

end

end A266663.P12928806868812377879

namespace A266663

/-- `(n+1)²-A266665(n)` -/
def P12928806868812377879.Spec : Prop :=
  ∀ n, P12928806868812377879.a n = A266663 n

end A266663

/-! ## A266663.P16877817407719162297

`ceil(sqrt(A266257(n)²+n))`
-/

namespace A266663.P16877817407719162297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A266257 n ^ 2 + (n : ℤ) : ℝ)⌉

end

end A266663.P16877817407719162297

namespace A266663

/-- `ceil(sqrt(A266257(n)²+n))` -/
def P16877817407719162297.Spec : Prop :=
  ∀ n, P16877817407719162297.a n = A266663 n

end A266663

/-! ## A266663.P14996350268059950616

`(n+1)²-∑[A266664(n)]`
-/

namespace A266663.P14996350268059950616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266663.P14996350268059950616

namespace A266663

/-- `(n+1)²-∑[A266664(n)]` -/
def P14996350268059950616.Spec : Prop :=
  ∀ n, P14996350268059950616.a n = A266663 n

end A266663

/-! ## A266663.P7287654620244361895

`A266256(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A266663.P7287654620244361895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A266256 n + a (n - 1)

end

end A266663.P7287654620244361895

namespace A266663

/-- `A266256(n)+a(n-1)` -/
def P7287654620244361895.Spec : Prop :=
  ∀ n, P7287654620244361895.a n = A266663 n

end A266663

/-! ## A266663.P5111407494268730384

`A266257(n)+A057427(n)`
-/

namespace A266663.P5111407494268730384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 n + A057427 n

end

end A266663.P5111407494268730384

namespace A266663

/-- `A266257(n)+A057427(n)` -/
def P5111407494268730384.Spec : Prop :=
  ∀ n, P5111407494268730384.a n = A266663 n

end A266663

/-! ## A266663.P16460675247041525262

`A266722(n)+A131179(n)`
-/

namespace A266663.P16460675247041525262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n + A131179 n

end

end A266663.P16460675247041525262

namespace A266663

/-- `A266722(n)+A131179(n)` -/
def P16460675247041525262.Spec : Prop :=
  ∀ n, P16460675247041525262.a n = A266663 n

end A266663

/-! ## A266663.P11162718641173011632

`A266977(n)+A213037(n)`
-/

namespace A266663.P11162718641173011632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A213037 n

end

end A266663.P11162718641173011632

namespace A266663

/-- `A266977(n)+A213037(n)` -/
def P11162718641173011632.Spec : Prop :=
  ∀ n, P11162718641173011632.a n = A266663 n

end A266663

/-! ## A266663.P17890141574169000940

`A316966(n)+A280193(n)`
-/

namespace A266663.P17890141574169000940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316966 n + A280193 n

end

end A266663.P17890141574169000940

namespace A266663

/-- `A316966(n)+A280193(n)` -/
def P17890141574169000940.Spec : Prop :=
  ∀ n, P17890141574169000940.a n = A266663 n

end A266663

/-! ## A266663.P2042124079125911111

`A266257(n)-A057428(n)`
-/

namespace A266663.P2042124079125911111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 n - A057428 n

end

end A266663.P2042124079125911111

namespace A266663

/-- `A266257(n)-A057428(n)` -/
def P2042124079125911111.Spec : Prop :=
  ∀ n, P2042124079125911111.a n = A266663 n

end A266663

/-! ## A266663.P6770537530260479267

`A266438(n)-A062157(n)`
-/

namespace A266663.P6770537530260479267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266438 n - A062157 n

end

end A266663.P6770537530260479267

namespace A266663

/-- `A266438(n)-A062157(n)` -/
def P6770537530260479267.Spec : Prop :=
  ∀ n, P6770537530260479267.a n = A266663 n

end A266663

/-! ## A266663.P5587513574410507328

`A128918(n)+A087156(n+1)`
-/

namespace A266663.P5587513574410507328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128918 n + A087156 (n + 1)

end

end A266663.P5587513574410507328

namespace A266663

/-- `A128918(n)+A087156(n+1)` -/
def P5587513574410507328.Spec : Prop :=
  ∀ n, P5587513574410507328.a n = A266663 n

end A266663

/-! ## A266663.P6419219145438085789

`A227906(n)+A089071(n+1)`
-/

namespace A266663.P6419219145438085789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227906 n + A089071 (n + 1)

end

end A266663.P6419219145438085789

namespace A266663

/-- `A227906(n)+A089071(n+1)` -/
def P6419219145438085789.Spec : Prop :=
  ∀ n, P6419219145438085789.a n = A266663 n

end A266663

/-! ## A266663.P9426398209150880366

`A275365(n)+A179865(n+1)`
-/

namespace A266663.P9426398209150880366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 n + A179865 (n + 1)

end

end A266663.P9426398209150880366

namespace A266663

/-- `A275365(n)+A179865(n+1)` -/
def P9426398209150880366.Spec : Prop :=
  ∀ n, P9426398209150880366.a n = A266663 n

end A266663

/-!
# A266664: Number of OFF (white) cells in the n-th iteration of the "Rule 47" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266664, the canonical program `A266664.P15642380172874096678` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266664 has offset 0).

The definition of A266664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266664.P312405648753768914

`xor(1, 2*n-a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A266664.P312405648753768914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  Int.xor 1 ((2 * n : ℤ) - a (n - 1))

end

end A266664.P312405648753768914

namespace A266664

/-- `xor(1, 2*n-a(n-1))` -/
def P312405648753768914.Spec : Prop :=
  ∀ n, P312405648753768914.a n = A266664 n

end A266664

/-! ## A266664.P5734792166428787020

`ceil(comp[2*(n+1)]/n^(n%2))`
-/

namespace A266664.P5734792166428787020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / (n ^ (n % 2) : ℚ)⌉

end

end A266664.P5734792166428787020

namespace A266664

/-- `ceil(comp[2*(n+1)]/n^(n%2))` -/
def P5734792166428787020.Spec : Prop :=
  ∀ n, P5734792166428787020.a n = A266664 n

end A266664

/-! ## A266664.P13914606484386590389

`∑[8*and(1, n)]%Δ[n²]-char[1]`
-/

namespace A266664.P13914606484386590389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266664.P13914606484386590389

namespace A266664

/-- `∑[8*and(1, n)]%Δ[n²]-char[1]` -/
def P13914606484386590389.Spec : Prop :=
  ∀ n, P13914606484386590389.a n = A266664 n

end A266664

/-! ## A266664.P7837053327430683686

`Δ[floor((n-1)/a(n-1))]+n` with `a(0)=1, a(1)=1`
-/

namespace A266664.P7837053327430683686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊((n : ℤ) - 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A266664.P7837053327430683686

namespace A266664

/-- `Δ[floor((n-1)/a(n-1))]+n` -/
def P7837053327430683686.Spec : Prop :=
  ∀ n, P7837053327430683686.a n = A266664 n

end A266664

/-! ## A266664.P7595315733654068791

`Δ[xor(1, n²)]%(2*n+1)-char[1]`
-/

namespace A266664.P7595315733654068791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (2 * n + 1 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266664.P7595315733654068791

namespace A266664

/-- `Δ[xor(1, n²)]%(2*n+1)-char[1]` -/
def P7595315733654068791.Spec : Prop :=
  ∀ n, P7595315733654068791.a n = A266664 n

end A266664

/-! ## A266664.P7460344878723608483

`a(n-2)+4%(a(n-2)+2)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A266664.P7460344878723608483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 2) + 4 % (a (n - 2) + 2)

end

end A266664.P7460344878723608483

namespace A266664

/-- `a(n-2)+4%(a(n-2)+2)` -/
def P7460344878723608483.Spec : Prop :=
  ∀ n, (P7460344878723608483.a n : ℤ) = A266664 n

end A266664

/-! ## A266664.P12456527721799759647

`floor(a(n-2)+(4/a(n-1))²)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A266664.P12456527721799759647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  ⌊(a (n - 2) : ℚ) + (4 / (a (n - 1) : ℚ)) ^ 2⌋

end

end A266664.P12456527721799759647

namespace A266664

/-- `floor(a(n-2)+(4/a(n-1))²)` -/
def P12456527721799759647.Spec : Prop :=
  ∀ n, P12456527721799759647.a n = A266664 n

end A266664

/-! ## A266664.P15642380172874096678

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=7, a(5)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266664

/-- `2*a(n-2)-a(n-4)` -/
def P15642380172874096678.Spec : Prop :=
  ∀ n, P15642380172874096678.a n = A266664 n

theorem P15642380172874096678.correct : P15642380172874096678.Spec := by
  intro n
  simp only [A266664]

end A266664

/-! ## A266664.P6736166159053366425

`A266258(n)-char[1]`
-/

namespace A266664.P6736166159053366425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266664.P6736166159053366425

namespace A266664

/-- `A266258(n)-char[1]` -/
def P6736166159053366425.Spec : Prop :=
  ∀ n, P6736166159053366425.a n = A266664 n

end A266664

/-! ## A266664.P10345319986658671324

`2*n-A019425(n)`
-/

namespace A266664.P10345319986658671324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A019425 n

end

end A266664.P10345319986658671324

namespace A266664

/-- `2*n-A019425(n)` -/
def P10345319986658671324.Spec : Prop :=
  ∀ n, P10345319986658671324.a n = A266664 n

end A266664

/-! ## A266664.P13169444798560272286

`Δ[n²]-A266662(n)`
-/

namespace A266664.P13169444798560272286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266662 n

end

end A266664.P13169444798560272286

namespace A266664

/-- `Δ[n²]-A266662(n)` -/
def P13169444798560272286.Spec : Prop :=
  ∀ n, P13169444798560272286.a n = A266664 n

end A266664

/-! ## A266664.P5446739193314965370

`2*n^((n+1)%2)-char[A004277(n)]`
-/

namespace A266664.P5446739193314965370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ ((n + 1) % 2) : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266664.P5446739193314965370

namespace A266664

/-- `2*n^((n+1)%2)-char[A004277(n)]` -/
def P5446739193314965370.Spec : Prop :=
  ∀ n, P5446739193314965370.a n = A266664 n

end A266664

/-! ## A266664.P15045756926157387905

`A267354(n)+A157928(n)`
-/

namespace A266664.P15045756926157387905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n + A157928 n

end

end A266664.P15045756926157387905

namespace A266664

/-- `A267354(n)+A157928(n)` -/
def P15045756926157387905.Spec : Prop :=
  ∀ n, P15045756926157387905.a n = A266664 n

end A266664

/-! ## A266664.P2306236987114167632

`A130824(n)/A266662(n)`
-/

namespace A266664.P2306236987114167632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130824 n : ℚ) / (A266662 n : ℚ)

end

end A266664.P2306236987114167632

namespace A266664

/-- `A130824(n)/A266662(n)` -/
def P2306236987114167632.Spec : Prop :=
  ∀ n, P2306236987114167632.a n = (A266664 n : ℚ)

end A266664

/-! ## A266664.P6679158773605637877

`A266258(n)/A141044(n)`
-/

namespace A266664.P6679158773605637877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266258 n : ℚ) / (A141044 n : ℚ)

end

end A266664.P6679158773605637877

namespace A266664

/-- `A266258(n)/A141044(n)` -/
def P6679158773605637877.Spec : Prop :=
  ∀ n, P6679158773605637877.a n = (A266664 n : ℚ)

end A266664

/-! ## A266664.P12456081719728609807

`A266258(n)/A373565(n)`
-/

namespace A266664.P12456081719728609807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266258 n : ℚ) / (A373565 n : ℚ)

end

end A266664.P12456081719728609807

namespace A266664

/-- `A266258(n)/A373565(n)` -/
def P12456081719728609807.Spec : Prop :=
  ∀ n, P12456081719728609807.a n = (A266664 n : ℚ)

end A266664

/-! ## A266664.P5247911889645758500

`A086970(n)%A223134(n)`
-/

namespace A266664.P5247911889645758500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086970 n) (A223134 n)

end

end A266664.P5247911889645758500

namespace A266664

/-- `A086970(n)%A223134(n)` -/
def P5247911889645758500.Spec : Prop :=
  ∀ n, P5247911889645758500.a n = A266664 n

end A266664

/-! ## A266664.P17736770570718794032

`gcd(A099893(n), A266258(n))`
-/

namespace A266664.P17736770570718794032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099893 n) (A266258 n)

end

end A266664.P17736770570718794032

namespace A266664

/-- `gcd(A099893(n), A266258(n))` -/
def P17736770570718794032.Spec : Prop :=
  ∀ n, (P17736770570718794032.a n : ℤ) = A266664 n

end A266664

/-! ## A266664.P3953097025804984565

`A005843(n)+1-A266662(n)`
-/

namespace A266664.P3953097025804984565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A266662 n)

end

end A266664.P3953097025804984565

namespace A266664

/-- `A005843(n)+1-A266662(n)` -/
def P3953097025804984565.Spec : Prop :=
  ∀ n, P3953097025804984565.a n = A266664 n

end A266664

/-! ## A266664.P16487952335931658845

`A140139(n+1)-A266256(n)`
-/

namespace A266664.P16487952335931658845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1) - A266256 n

end

end A266664.P16487952335931658845

namespace A266664

/-- `A140139(n+1)-A266256(n)` -/
def P16487952335931658845.Spec : Prop :=
  ∀ n, P16487952335931658845.a n = A266664 n

end A266664

/-!
# A266665: Total number of OFF (white) cells after n iterations of the "Rule 47" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266665, the canonical program `A266665.P8749548564491343627` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266665 has offset 0).

The definition of A266665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266665.P6393628991986848877

`floor((1-∑[n])²/a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A266665.P6393628991986848877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266665.P6393628991986848877

namespace A266665

/-- `floor((1-∑[n])²/a(n-1))` -/
def P6393628991986848877.Spec : Prop :=
  ∀ n, P6393628991986848877.a n = A266665 n

end A266665

/-! ## A266665.P8981765157260708701

`∑[xor(1, 2*n-a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A266665.P8981765157260708701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  Int.xor 1 ((2 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266665.P8981765157260708701

namespace A266665

/-- `∑[xor(1, 2*n-a(n-1))]` -/
def P8981765157260708701.Spec : Prop :=
  ∀ n, P8981765157260708701.a n = A266665 n

end A266665

/-! ## A266665.P9358222008615961578

`∑[4-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A266665.P9358222008615961578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A266665.P9358222008615961578

namespace A266665

/-- `∑[4-a(n-1)]+a(n-2)` -/
def P9358222008615961578.Spec : Prop :=
  ∀ n, P9358222008615961578.a n = A266665 n

end A266665

/-! ## A266665.P8749548564491343627

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=13, a(5)=15`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266665

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8749548564491343627.Spec : Prop :=
  ∀ n, P8749548564491343627.a n = A266665 n

theorem P8749548564491343627.correct : P8749548564491343627.Spec := by
  intro n
  simp only [A266665]

end A266665

/-! ## A266665.P9083069627726075402

`∑[A266664(n)]`
-/

namespace A266665.P9083069627726075402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266665.P9083069627726075402

namespace A266665

/-- `∑[A266664(n)]` -/
def P9083069627726075402.Spec : Prop :=
  ∀ n, P9083069627726075402.a n = A266665 n

end A266665

/-! ## A266665.P12027861225667234782

`(n+1)²-A266663(n)`
-/

namespace A266665.P12027861225667234782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266663 n

end

end A266665.P12027861225667234782

namespace A266665

/-- `(n+1)²-A266663(n)` -/
def P12027861225667234782.Spec : Prop :=
  ∀ n, P12027861225667234782.a n = A266665 n

end A266665

/-! ## A266665.P10537092511436338690

`(n+1)²-∑[A266662(n)]`
-/

namespace A266665.P10537092511436338690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266665.P10537092511436338690

namespace A266665

/-- `(n+1)²-∑[A266662(n)]` -/
def P10537092511436338690.Spec : Prop :=
  ∀ n, P10537092511436338690.a n = A266665 n

end A266665

/-! ## A266665.P5470714935578905228

`A266259(n)+A057428(n)`
-/

namespace A266665.P5470714935578905228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266259 n + A057428 n

end

end A266665.P5470714935578905228

namespace A266665

/-- `A266259(n)+A057428(n)` -/
def P5470714935578905228.Spec : Prop :=
  ∀ n, P5470714935578905228.a n = A266665 n

end A266665

/-! ## A266665.P4072366947631948125

`A266440(n)+A062157(n)`
-/

namespace A266665.P4072366947631948125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266440 n + A062157 n

end

end A266665.P4072366947631948125

namespace A266665

/-- `A266440(n)+A062157(n)` -/
def P4072366947631948125.Spec : Prop :=
  ∀ n, P4072366947631948125.a n = A266665 n

end A266665

/-! ## A266665.P14952841113272303741

`A266259(n)-A057427(n)`
-/

namespace A266665.P14952841113272303741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266259 n - A057427 n

end

end A266665.P14952841113272303741

namespace A266665

/-- `A266259(n)-A057427(n)` -/
def P14952841113272303741.Spec : Prop :=
  ∀ n, P14952841113272303741.a n = A266665 n

end A266665

/-! ## A266665.P2811030616483501020

`A253145(n)-A275365(n)`
-/

namespace A266665.P2811030616483501020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n - A275365 n

end

end A266665.P2811030616483501020

namespace A266665

/-- `A253145(n)-A275365(n)` -/
def P2811030616483501020.Spec : Prop :=
  ∀ n, P2811030616483501020.a n = A266665 n

end A266665

/-! ## A266665.P16700182408051720692

`A267353(n)-A266722(n)`
-/

namespace A266665.P16700182408051720692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267353 n - A266722 n

end

end A266665.P16700182408051720692

namespace A266665

/-- `A267353(n)-A266722(n)` -/
def P16700182408051720692.Spec : Prop :=
  ∀ n, P16700182408051720692.a n = A266665 n

end A266665

/-! ## A266665.P14855224077701467537

`A028552(n)%A267353(n)`
-/

namespace A266665.P14855224077701467537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028552 n) (A267353 n)

end

end A266665.P14855224077701467537

namespace A266665

/-- `A028552(n)%A267353(n)` -/
def P14855224077701467537.Spec : Prop :=
  ∀ n, P14855224077701467537.a n = A266665 n

end A266665

/-! ## A266665.P2667911088903274520

`∑[A130824(n)/A266662(n)]`
-/

namespace A266665.P2667911088903274520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130824 n : ℚ) / (A266662 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266665.P2667911088903274520

namespace A266665

/-- `∑[A130824(n)/A266662(n)]` -/
def P2667911088903274520.Spec : Prop :=
  ∀ n, P2667911088903274520.a n = (A266665 n : ℚ)

end A266665

/-! ## A266665.P7246149883128697343

`A266725(n)+A140106(n+1)`
-/

namespace A266665.P7246149883128697343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n + A140106 (n + 1)

end

end A266665.P7246149883128697343

namespace A266665

/-- `A266725(n)+A140106(n+1)` -/
def P7246149883128697343.Spec : Prop :=
  ∀ n, P7246149883128697343.a n = A266665 n

end A266665

/-! ## A266665.P15161993927604968666

`A027379(n)-A043547(n+1)`
-/

namespace A266665.P15161993927604968666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A043547 (n + 1)

end

end A266665.P15161993927604968666

namespace A266665

/-- `A027379(n)-A043547(n+1)` -/
def P15161993927604968666.Spec : Prop :=
  ∀ n, P15161993927604968666.a n = A266665 n

end A266665

/-! ## A266665.P14718444630441298436

`A265724(n)-A087156(n+1)`
-/

namespace A266665.P14718444630441298436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265724 n - A087156 (n + 1)

end

end A266665.P14718444630441298436

namespace A266665

/-- `A265724(n)-A087156(n+1)` -/
def P14718444630441298436.Spec : Prop :=
  ∀ n, P14718444630441298436.a n = A266665 n

end A266665

/-! ## A266665.P10639343436702604309

`A266074(n)+1-A266977(n)`
-/

namespace A266665.P10639343436702604309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266074 n + (1 - A266977 n)

end

end A266665.P10639343436702604309

namespace A266665

/-- `A266074(n)+1-A266977(n)` -/
def P10639343436702604309.Spec : Prop :=
  ∀ n, P10639343436702604309.a n = A266665 n

end A266665

/-! ## A266665.P13789900313058260326

`A217748(n+3)-A267353(n)`
-/

namespace A266665.P13789900313058260326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3) - A267353 n

end

end A266665.P13789900313058260326

namespace A266665

/-- `A217748(n+3)-A267353(n)` -/
def P13789900313058260326.Spec : Prop :=
  ∀ n, P13789900313058260326.a n = A266665 n

end A266665

/-! ## A266665.P5460990978443995958

`∪[A091823(n+1), A000384(n)]`
-/

namespace A266665.P5460990978443995958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266665.P5460990978443995958

namespace A266665

/-- `∪[A091823(n+1), A000384(n)]` -/
def P5460990978443995958.Spec : Prop :=
  ∀ n, (P5460990978443995958.a n : ℤ) = A266665 n

end A266665

/-!
# A266666: Triangle read by rows giving successive states of cellular automaton generated by "Rule 51" initiated with a single ON (black) cell.

The programs for A266666, the canonical program `A266666.P7815966118144532855` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266666 has offset 0).

The definition of A266666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266666.P14319507745030241386

`(char[∑[2*n]]+floor(sqrt(n)))%2`
-/

namespace A266666.P14319507745030241386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + Nat.sqrt n) % 2

end

end A266666.P14319507745030241386

namespace A266666

/-- `(char[∑[2*n]]+floor(sqrt(n)))%2` -/
def P14319507745030241386.Spec : Prop :=
  ∀ n, (P14319507745030241386.a n : ℤ) = A266666 n

end A266666

/-! ## A266666.P8343114540261297665

`and(1, char[∑[2*n]]+∑[char[(n+1)²]])`
-/

namespace A266666.P8343114540261297665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A266666.P8343114540261297665

namespace A266666

/-- `and(1, char[∑[2*n]]+∑[char[(n+1)²]])` -/
def P8343114540261297665.Spec : Prop :=
  ∀ n, (P8343114540261297665.a n : ℤ) = A266666 n

end A266666

/-! ## A266666.P7815966118144532855

`(A137735(n)%2)²`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A266666

/-- `(A137735(n)%2)²` -/
def P7815966118144532855.Spec : Prop :=
  ∀ n, P7815966118144532855.a n = A266666 n

theorem P7815966118144532855.correct : P7815966118144532855.Spec := by
  intro n
  simp only [A266666]

end A266666

/-! ## A266666.P11267395942596292966

`A000035(A137735(n))`
-/

namespace A266666.P11267395942596292966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A137735 n).toNat

end

end A266666.P11267395942596292966

namespace A266666

/-- `A000035(A137735(n))` -/
def P11267395942596292966.Spec : Prop :=
  ∀ n, P11267395942596292966.a n = A266666 n

end A266666

/-! ## A266666.P8042058149841027979

`A059841(A137735(n)+1)`
-/

namespace A266666.P8042058149841027979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A137735 n + 1).toNat

end

end A266666.P8042058149841027979

namespace A266666

/-- `A059841(A137735(n)+1)` -/
def P8042058149841027979.Spec : Prop :=
  ∀ n, P8042058149841027979.a n = A266666 n

end A266666

/-! ## A266666.P15048085373464695429

`A059841(xor(1, A137735(n)))`
-/

namespace A266666.P15048085373464695429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.xor 1 (A137735 n)).toNat

end

end A266666.P15048085373464695429

namespace A266666

/-- `A059841(xor(1, A137735(n)))` -/
def P15048085373464695429.Spec : Prop :=
  ∀ n, P15048085373464695429.a n = A266666 n

end A266666

/-! ## A266666.P15333617462818686350

`A000035(A005369(n)+A000196(n))`
-/

namespace A266666.P15333617462818686350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005369 n + A000196 n).toNat

end

end A266666.P15333617462818686350

namespace A266666

/-- `A000035(A005369(n)+A000196(n))` -/
def P15333617462818686350.Spec : Prop :=
  ∀ n, P15333617462818686350.a n = A266666 n

end A266666

/-! ## A266666.P1592118598452772757

`A000035((A000196(n)-A005369(n))²)`
-/

namespace A266666.P1592118598452772757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((A000196 n - A005369 n) ^ 2).toNat

end

end A266666.P1592118598452772757

namespace A266666

/-- `A000035((A000196(n)-A005369(n))²)` -/
def P1592118598452772757.Spec : Prop :=
  ∀ n, P1592118598452772757.a n = A266666 n

end A266666

/-! ## A266666.P9358194034682081433

`A267679(A137735(n)²-A137735(n))`
-/

namespace A266666.P9358194034682081433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267679 (A137735 n ^ 2 - A137735 n).toNat

end

end A266666.P9358194034682081433

namespace A266666

/-- `A267679(A137735(n)²-A137735(n))` -/
def P9358194034682081433.Spec : Prop :=
  ∀ n, P9358194034682081433.a n = A266666 n

end A266666

/-! ## A266666.P18242039489250640883

`A000035(2-(A005369(n)-A000196(n)))`
-/

namespace A266666.P18242039489250640883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 - (A005369 n - A000196 n)).toNat

end

end A266666.P18242039489250640883

namespace A266666

/-- `A000035(2-(A005369(n)-A000196(n)))` -/
def P18242039489250640883.Spec : Prop :=
  ∀ n, P18242039489250640883.a n = A266666 n

end A266666

/-! ## A266666.P16909887624089299629

`A267679((A137735(n)-1)*A137735(n))`
-/

namespace A266666.P16909887624089299629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267679 ((A137735 n - 1) * A137735 n).toNat

end

end A266666.P16909887624089299629

namespace A266666

/-- `A267679((A137735(n)-1)*A137735(n))` -/
def P16909887624089299629.Spec : Prop :=
  ∀ n, P16909887624089299629.a n = A266666 n

end A266666

/-! ## A266666.P14691343956461669107

`A266174(A137735(n)²+1)`
-/

namespace A266666.P14691343956461669107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 (A137735 n ^ 2 + 1).toNat

end

end A266666.P14691343956461669107

namespace A266666

/-- `A266174(A137735(n)²+1)` -/
def P14691343956461669107.Spec : Prop :=
  ∀ n, P14691343956461669107.a n = A266666 n

end A266666

/-!
# A266667: Binary representation of the n-th iteration of the "Rule 51" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266667, there is no canonical definition to state claims against.
-/

/-! ## A266667.P8417367581682070098

`A007088(abs(2-gcd(2, n+1)^(2*n+1))-(1-2^n)*(-1)^n)`
-/

namespace A266667.P8417367581682070098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (|2 - (Nat.gcd 2 (n + 1) ^ (2 * n + 1) : ℤ)| - (1 - (2 ^ n : ℤ)) * (-1) ^ n).toNat

end

end A266667.P8417367581682070098

/-! ## A266667.P13627712960976518837

`A007088(A266668(n))`
-/

namespace A266667.P13627712960976518837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266668 n).toNat

end

end A266667.P13627712960976518837

/-! ## A266667.P9289120524713800961

`A007088(A266980(n)-A001045(n))`
-/

namespace A266667.P9289120524713800961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266980 n - A001045 n).toNat

end

end A266667.P9289120524713800961

/-! ## A266667.P17475492385692561549

`A007088(A266302(n)-A225883(n))`
-/

namespace A266667.P17475492385692561549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266302 n - A225883 n).toNat

end

end A266667.P17475492385692561549

/-! ## A266667.P13643262010458508232

`A007088(xor(A155559(n), A266436(n)))`
-/

namespace A266667.P13643262010458508232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A155559 n) (A266436 n)).toNat

end

end A266667.P13643262010458508232

/-!
# A266668: Decimal representation of the n-th iteration of the "Rule 51" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266668, the canonical program `A266668.P13642406373938606405` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266668 has offset 0).

The definition of A266668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266668.P14713424799550020052

`A266980(n)-A001045(n)`
-/

namespace A266668.P14713424799550020052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266980 n - A001045 n

end

end A266668.P14713424799550020052

namespace A266668

/-- `A266980(n)-A001045(n)` -/
def P14713424799550020052.Spec : Prop :=
  ∀ n, P14713424799550020052.a n = A266668 n

theorem P14713424799550020052.correct : P14713424799550020052.Spec := by
  intro n
  simp only [A266668, Nat.add_sub_cancel, A266668.P14713424799550020052.a, A266668.P13642406373938606405.a, A001045, A001045.P7867134490160464591.a, A225883, A225883.P7216556814437295336.a, A266302, A266302.P16451850026423998787.a, A266980, A266980.P14525064463920435922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A266668

/-! ## A266668.P13642406373938606405

`A266302(n)-A225883(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266668

/-- `A266302(n)-A225883(n)` -/
def P13642406373938606405.Spec : Prop :=
  ∀ n, P13642406373938606405.a n = A266668 n

theorem P13642406373938606405.correct : P13642406373938606405.Spec := by
  intro n
  simp only [A266668]

end A266668

/-! ## A266668.P12618752744114547117

`xor(A155559(n), A266436(n))`
-/

namespace A266668.P12618752744114547117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A155559 n) (A266436 n)

end

end A266668.P12618752744114547117

namespace A266668

/-- `xor(A155559(n), A266436(n))` -/
def P12618752744114547117.Spec : Prop :=
  ∀ n, P12618752744114547117.a n = A266668 n

end A266668

/-! ## A266668.P15282468310515548399

`abs(A014551(n)-A266302(n))`
-/

namespace A266668.P15282468310515548399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014551 n - A266302 n|

end

end A266668.P15282468310515548399

namespace A266668

/-- `abs(A014551(n)-A266302(n))` -/
def P15282468310515548399.Spec : Prop :=
  ∀ n, P15282468310515548399.a n = A266668 n

end A266668

/-! ## A266668.P4137536653145840034

`abs(A166977(n)-A266302(n))`
-/

namespace A266668.P4137536653145840034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166977 n - A266302 n|

end

end A266668.P4137536653145840034

namespace A266668

/-- `abs(A166977(n)-A266302(n))` -/
def P4137536653145840034.Spec : Prop :=
  ∀ n, P4137536653145840034.a n = A266668 n

end A266668

/-! ## A266668.P7278629757199446273

`A266980(n)-Δ[A005578(n)]`
-/

namespace A266668.P7278629757199446273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266980 n - (f1 (n + 1) - f1 n)

end

end A266668.P7278629757199446273

namespace A266668

/-- `A266980(n)-Δ[A005578(n)]` -/
def P7278629757199446273.Spec : Prop :=
  ∀ n, P7278629757199446273.a n = A266668 n

end A266668

/-! ## A266668.P6740120077629435454

`xor(record[A137206(n)], A266436(n))`
-/

namespace A266668.P6740120077629435454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A266436 n)

end

end A266668.P6740120077629435454

namespace A266668

/-- `xor(record[A137206(n)], A266436(n))` -/
def P6740120077629435454.Spec : Prop :=
  ∀ n, P6740120077629435454.a n = A266668 n

end A266668

/-! ## A266668.P14063761145698658193

`xor(A096773(n+1), A266980(n))`
-/

namespace A266668.P14063761145698658193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096773 (n + 1)) (A266980 n)

end

end A266668.P14063761145698658193

namespace A266668

/-- `xor(A096773(n+1), A266980(n))` -/
def P14063761145698658193.Spec : Prop :=
  ∀ n, P14063761145698658193.a n = A266668 n

end A266668

/-! ## A266668.P5700733155007199515

`xor(A131572(2*n), A266436(n))`
-/

namespace A266668.P5700733155007199515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 (2 * n)) (A266436 n)

end

end A266668.P5700733155007199515

namespace A266668

/-- `xor(A131572(2*n), A266436(n))` -/
def P5700733155007199515.Spec : Prop :=
  ∀ n, P5700733155007199515.a n = A266668 n

end A266668

/-! ## A266668.P10590830787609152549

`xor(A016116(2*n), A279872(A266303(n)))`
-/

namespace A266668.P10590830787609152549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016116 (2 * n)) (A279872 (A266303 n).toNat)

end

end A266668.P10590830787609152549

namespace A266668

/-- `xor(A016116(2*n), A279872(A266303(n)))` -/
def P10590830787609152549.Spec : Prop :=
  ∀ n, P10590830787609152549.a n = A266668 n

end A266668

/-! ## A266668.P3668631950062241489

`or(A000079(n)*A280412(n), A051049(n))`
-/

namespace A266668.P3668631950062241489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n * A280412 n) (A051049 n)

end

end A266668.P3668631950062241489

namespace A266668

/-- `or(A000079(n)*A280412(n), A051049(n))` -/
def P3668631950062241489.Spec : Prop :=
  ∀ n, P3668631950062241489.a n = A266668 n

end A266668

/-! ## A266668.P8603304786266723493

`or(A000079(n)*A286772(n), A051049(n))`
-/

namespace A266668.P8603304786266723493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n * A286772 n) (A051049 n)

end

end A266668.P8603304786266723493

namespace A266668

/-- `or(A000079(n)*A286772(n), A051049(n))` -/
def P8603304786266723493.Spec : Prop :=
  ∀ n, P8603304786266723493.a n = A266668 n

end A266668

/-!
# A266669: Triangle read by rows giving successive states of cellular automaton generated by "Rule 53" initiated with a single ON (black) cell.

The programs for A266669, the canonical program `A266669.P16161379745779361122` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266669 has offset 0).

The definition of A266669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266669.P16161379745779361122

`A266605(A020703(n+1)-1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A266669

/-- `A266605(A020703(n+1)-1)` -/
def P16161379745779361122.Spec : Prop :=
  ∀ n, P16161379745779361122.a n = A266669 n

theorem P16161379745779361122.correct : P16161379745779361122.Spec := by
  intro n
  simp only [A266669]

end A266669

/-! ## A266669.P3702059359905717889

`xor(A000040(n+1)%2, A267001(A049068(n+1)))`
-/

namespace A266669.P3702059359905717889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A000040 (n + 1)) 2) (A267001 (A049068 (n + 1)).toNat)

end

end A266669.P3702059359905717889

namespace A266669

/-- `xor(A000040(n+1)%2, A267001(A049068(n+1)))` -/
def P3702059359905717889.Spec : Prop :=
  ∀ n, P3702059359905717889.a n = A266669 n

end A266669

/-! ## A266669.P17266092902259562225

`and(1, A006218(A081344(2*n+1)))`
-/

namespace A266669.P17266092902259562225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006218 (A081344 (2 * n + 1)).toNat)

end

end A266669.P17266092902259562225

namespace A266669

/-- `and(1, A006218(A081344(2*n+1)))` -/
def P17266092902259562225.Spec : Prop :=
  ∀ n, P17266092902259562225.a n = A266669 n

end A266669

/-! ## A266669.P5173364026962368955

`A266434(A081344(Δ[n²]))`
-/

namespace A266669.P5173364026962368955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A081344 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A266669.P5173364026962368955

namespace A266669

/-- `A266434(A081344(Δ[n²]))` -/
def P5173364026962368955.Spec : Prop :=
  ∀ n, P5173364026962368955.a n = A266669 n

end A266669

/-! ## A266669.P577470632955397856

`A266300(A081344(2*n+1)-1)`
-/

namespace A266669.P577470632955397856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A081344 (2 * n + 1) - 1).toNat

end

end A266669.P577470632955397856

namespace A266669

/-- `A266300(A081344(2*n+1)-1)` -/
def P577470632955397856.Spec : Prop :=
  ∀ n, P577470632955397856.a n = A266669 n

end A266669

/-!
# A266670: Binary representation of the n-th iteration of the "Rule 53" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266670, there is no canonical definition to state claims against.
-/

/-! ## A266670.P8351378933862403966

`A007088(A266671(n))`
-/

namespace A266670.P8351378933862403966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266671 n).toNat

end

end A266670.P8351378933862403966

/-! ## A266670.P11475458023301793071

`A007088(or(A017928(n), A266090(n)))`
-/

namespace A266670.P11475458023301793071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A017928 n) (A266090 n)).toNat

end

end A266670.P11475458023301793071

/-! ## A266670.P2250256278513674306

`A007088((A267003(n)+A266090(n))/2)`
-/

namespace A266670.P2250256278513674306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A267003 n + A266090 n : ℚ) / 2)).toNat

end

end A266670.P2250256278513674306

/-! ## A266670.P11665783751269103751

`A007088(or(A131572(3*n), A266090(n)))`
-/

namespace A266670.P11665783751269103751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A131572 (3 * n)) (A266090 n)).toNat

end

end A266670.P11665783751269103751

/-!
# A266671: Decimal representation of the n-th iteration of the "Rule 53" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266671, the canonical program `A266671.P5923110452531764722` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266671 has offset 0).

The definition of A266671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266671.P15343958268512471554

`or(A017928(n), A266090(n))`
-/

namespace A266671.P15343958268512471554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017928 n) (A266090 n)

end

end A266671.P15343958268512471554

namespace A266671

/-- `or(A017928(n), A266090(n))` -/
def P15343958268512471554.Spec : Prop :=
  ∀ n, P15343958268512471554.a n = A266671 n

end A266671

/-! ## A266671.P12686054429205892282

`(A267003(n)+A266090(n))/2`
-/

namespace A266671.P12686054429205892282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267003 n + A266090 n : ℚ) / 2

end

end A266671.P12686054429205892282

namespace A266671

/-- `(A267003(n)+A266090(n))/2` -/
def P12686054429205892282.Spec : Prop :=
  ∀ n, P12686054429205892282.a n = (A266671 n : ℚ)

end A266671

/-! ## A266671.P1665749479375353381

`or(A016116(3*n), A266090(n))`
-/

namespace A266671.P1665749479375353381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 (3 * n)) (A266090 n)

end

end A266671.P1665749479375353381

namespace A266671

/-- `or(A016116(3*n), A266090(n))` -/
def P1665749479375353381.Spec : Prop :=
  ∀ n, P1665749479375353381.a n = A266671 n

end A266671

/-! ## A266671.P5923110452531764722

`A094015(n)*A094024(n)-n%2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266671

/-- `A094015(n)*A094024(n)-n%2` -/
def P5923110452531764722.Spec : Prop :=
  ∀ n, P5923110452531764722.a n = A266671 n

theorem P5923110452531764722.correct : P5923110452531764722.Spec := by
  intro n
  simp only [A266671]

end A266671

/-! ## A266671.P4443306524786601789

`or(A135318(A016777(n)), A266090(n))`
-/

namespace A266671.P4443306524786601789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135318 (A016777 n).toNat) (A266090 n)

end

end A266671.P4443306524786601789

namespace A266671

/-- `or(A135318(A016777(n)), A266090(n))` -/
def P4443306524786601789.Spec : Prop :=
  ∀ n, P4443306524786601789.a n = A266671 n

end A266671

/-! ## A266671.P10570376714626465765

`or(A266090(n)+A000035(n), A266090(n))`
-/

namespace A266671.P10570376714626465765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266090 n + A000035 n) (A266090 n)

end

end A266671.P10570376714626465765

namespace A266671

/-- `or(A266090(n)+A000035(n), A266090(n))` -/
def P10570376714626465765.Spec : Prop :=
  ∀ n, P10570376714626465765.a n = A266671 n

end A266671

/-!
# A266672: Triangle read by rows giving successive states of cellular automaton generated by "Rule 57" initiated with a single ON (black) cell.

The programs for A266672, there is no canonical definition to state claims against.
-/

/-! ## A266672.P13862164843762709432

`A267126(A020703(n+1)-1)`
-/

namespace A266672.P13862164843762709432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267126 (A020703 (n + 1) - 1).toNat

end

end A266672.P13862164843762709432

/-! ## A266672.P17635639821768760593

`A267126(A020703(n+2)%A006522(n+3))`
-/

namespace A266672.P17635639821768760593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267126 (Int.tmod (A020703 (n + 2)) (A006522 (n + 3))).toNat

end

end A266672.P17635639821768760593

/-! ## A266672.P9992798959406835027

`A267126(A020703(n+2)%A000302(n))`
-/

namespace A266672.P9992798959406835027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267126 (Int.tmod (A020703 (n + 2)) (A000302 n)).toNat

end

end A266672.P9992798959406835027

/-! ## A266672.P12959217222958383683

`A000006(A047346(n+1))%A053761(A336790(n+1))`
-/

namespace A266672.P12959217222958383683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000006 (A047346 (n + 1)).toNat) (A053761 (A336790 (n + 1)).toNat)

end

end A266672.P12959217222958383683

/-! ## A266672.P14463006906977779267

`ceil(A268919(3*n+1)/A177217(n+1))`
-/

namespace A266672.P14463006906977779267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268919 (3 * n + 1) : ℚ) / (A177217 (n + 1) : ℚ)⌉

end

end A266672.P14463006906977779267

/-!
# A266673: Binary representation of the n-th iteration of the "Rule 57" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266673, there is no canonical definition to state claims against.
-/

/-! ## A266673.P12561739155677620838

`A007088(A266674(n))`
-/

namespace A266673.P12561739155677620838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266674 n).toNat

end

end A266673.P12561739155677620838

/-! ## A266673.P14074762708476062268

`A185544(2*A266674(n))`
-/

namespace A266673.P14074762708476062268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266674 n).toNat

end

end A266673.P14074762708476062268

/-!
# A266674: Decimal representation of the n-th iteration of the "Rule 57" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266674, there is no canonical definition to state claims against.
-/

/-! ## A266674.P9682486339907453200

`A057889(A267128(n)%A110523(3*(n+1)))`
-/

namespace A266674.P9682486339907453200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.tmod (A267128 n) (A110523 (3 * (n + 1)))).toNat

end

end A266674.P9682486339907453200

/-! ## A266674.P714984102619592506

`A057889(A267128(n*A103221(n)))`
-/

namespace A266674.P714984102619592506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A267128 ((n : ℤ) * A103221 n).toNat).toNat

end

end A266674.P714984102619592506

/-!
# A266675: Do-si-do primes: primes that remain prime when their digits, taken by pairs, are reversed (see comments for more details).

The programs for A266675, there is no canonical definition to state claims against.
-/

/-! ## A266675.P6023998503863889439

`record[A004719(A180022(2*n+1))]`
-/

namespace A266675.P6023998503863889439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A180022 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266675.P6023998503863889439

/-! ## A266675.P7596386220341373184

`p?[A333659(A180022(2*(n+1)))]`
-/

namespace A266675.P7596386220341373184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A180022 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266675.P7596386220341373184

/-! ## A266675.P18420763976737980683

`filter[A180022(2*n+1), A168046(#)]`
-/

namespace A266675.P18420763976737980683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180022 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A266675.P18420763976737980683

/-! ## A266675.P3968903466452534128

`filter[A180022(2*n+1), A209929(#)]`
-/

namespace A266675.P3968903466452534128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180022 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A266675.P3968903466452534128

/-! ## A266675.P10969980425462355344

`∩[A061116(n+1), A176548(n+1)]`
-/

namespace A266675.P10969980425462355344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266675.P10969980425462355344

/-!
# A266677: Alternating sum of hexagonal pyramidal numbers.

The programs for A266677, the canonical program `A266677.P3962643298196768350` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266677 has offset 0).

The definition of A266677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266677.P3962643298196768350

`((-1)^n*(2*n*(n+2)*(4*n+1)-3)+3)/24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266677

/-- `((-1)^n*(2*n*(n+2)*(4*n+1)-3)+3)/24` -/
def P3962643298196768350.Spec : Prop :=
  ∀ n, P3962643298196768350.a n = (A266677 n : ℚ)

end A266677

/-! ## A266677.P16834497298913196615

`(-1)^n*∑[∑[comp[or(2, n)]]]`
-/

namespace A266677.P16834497298913196615
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A266677.P16834497298913196615

namespace A266677

/-- `(-1)^n*∑[∑[comp[or(2, n)]]]` -/
def P16834497298913196615.Spec : Prop :=
  ∀ n, P16834497298913196615.a n = A266677 n

end A266677

/-! ## A266677.P9489790523894668038

`∑[(-1)^n*∑[C(2*n, 2)]]`
-/

namespace A266677.P9489790523894668038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266677.P9489790523894668038

namespace A266677

/-- `∑[(-1)^n*∑[C(2*n, 2)]]` -/
def P9489790523894668038.Spec : Prop :=
  ∀ n, P9489790523894668038.a n = A266677 n

end A266677

/-! ## A266677.P11757360883061468181

`∑[∑[C(2*n, 2)]*cos(π*n)]`
-/

namespace A266677.P11757360883061468181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) * Real.cos (Real.pi * (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266677.P11757360883061468181

namespace A266677

/-- `∑[∑[C(2*n, 2)]*cos(π*n)]` -/
def P11757360883061468181.Spec : Prop :=
  ∀ n, P11757360883061468181.a n = (A266677 n : ℝ)

end A266677

/-! ## A266677.P4990877556337587316

`2*A269428(n)-A269429(n)`
-/

namespace A266677.P4990877556337587316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269428 n - A269429 n

end

end A266677.P4990877556337587316

namespace A266677

/-- `2*A269428(n)-A269429(n)` -/
def P4990877556337587316.Spec : Prop :=
  ∀ n, P4990877556337587316.a n = A266677 n

end A266677

/-! ## A266677.P15728410856990389059

`2*A269429(n)-A269441(n)`
-/

namespace A266677.P15728410856990389059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269429 n - A269441 n

end

end A266677.P15728410856990389059

namespace A266677

/-- `2*A269429(n)-A269441(n)` -/
def P15728410856990389059.Spec : Prop :=
  ∀ n, P15728410856990389059.a n = A266677 n

end A266677

/-! ## A266677.P9486824691717332659

`A269428(n)+A269440(n)-A269441(n)`
-/

namespace A266677.P9486824691717332659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269428 n + (A269440 n - A269441 n)

end

end A266677.P9486824691717332659

namespace A266677

/-- `A269428(n)+A269440(n)-A269441(n)` -/
def P9486824691717332659.Spec : Prop :=
  ∀ n, P9486824691717332659.a n = A266677 n

end A266677

/-! ## A266677.P3364979596006659743

`A269428(n)-(A269440(n)-A269429(n))`
-/

namespace A266677.P3364979596006659743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269428 n - (A269440 n - A269429 n)

end

end A266677.P3364979596006659743

namespace A266677

/-- `A269428(n)-(A269440(n)-A269429(n))` -/
def P3364979596006659743.Spec : Prop :=
  ∀ n, P3364979596006659743.a n = A266677 n

end A266677

/-! ## A266677.P14303236850571690044

`A056594(2*n)*A122046(2*n+1)`
-/

namespace A266677.P14303236850571690044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A122046 (2 * n + 1)

end

end A266677.P14303236850571690044

namespace A266677

/-- `A056594(2*n)*A122046(2*n+1)` -/
def P14303236850571690044.Spec : Prop :=
  ∀ n, P14303236850571690044.a n = A266677 n

end A266677

/-! ## A266677.P10193397468975099041

`A057077(2*n)*A122046(2*n+1)`
-/

namespace A266677.P10193397468975099041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A122046 (2 * n + 1)

end

end A266677.P10193397468975099041

namespace A266677

/-- `A057077(2*n)*A122046(2*n+1)` -/
def P10193397468975099041.Spec : Prop :=
  ∀ n, P10193397468975099041.a n = A266677 n

end A266677

/-! ## A266677.P8474559612667835367

`A009531(2*n+1)*A122046(2*n+1)`
-/

namespace A266677.P8474559612667835367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A122046 (2 * n + 1)

end

end A266677.P8474559612667835367

namespace A266677

/-- `A009531(2*n+1)*A122046(2*n+1)` -/
def P8474559612667835367.Spec : Prop :=
  ∀ n, P8474559612667835367.a n = A266677 n

end A266677

/-!
# A266678: Middle column of the "Rule 175" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266678, the canonical program `A266678.P7253193798832566104` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266678 has offset 0).

The definition of A266678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266678.P7253193798832566104

`1-char[2]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266678

/-- `1-char[2]` -/
def P7253193798832566104.Spec : Prop :=
  ∀ n, P7253193798832566104.a n = A266678 n

theorem P7253193798832566104.correct : P7253193798832566104.Spec := by
  intro n
  simp only [A266678]

end A266678

/-!
# A266679: Positive integers not shotgun (or Schrotschuss) numbers, in order of the first number to be permuted forward by the transformations T[k] where k = 2 or k is odd.

The programs for A266679, there is no canonical definition to state claims against.
-/

/-! ## A266679.P1161833999834099649

`A227183(A181565(n)-A254046(n+1))`
-/

namespace A266679.P1161833999834099649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A181565 n - A254046 (n + 1)).toNat

end

end A266679.P1161833999834099649

/-!
# A266680: Binary representation of the middle column of the "Rule 175" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266680, the canonical program `A266680.P15817836050223419689` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266680 has offset 0).

The definition of A266680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266680.P11179867933556105455

`∑[ogf((1-x^2+x^3)/(1-10x))]`
-/

namespace A266680.P11179867933556105455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1] [1, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266680.P11179867933556105455

namespace A266680

/-- `∑[ogf((1-x^2+x^3)/(1-10x))]` -/
def P11179867933556105455.Spec : Prop :=
  ∀ n, P11179867933556105455.a n = A266680 n

end A266680

/-! ## A266680.P15817836050223419689

`10*a(n-1)+1` with `a(0)=1, a(1)=11, a(2)=110`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266680

/-- `10*a(n-1)+1` -/
def P15817836050223419689.Spec : Prop :=
  ∀ n, (P15817836050223419689.a n : ℤ) = A266680 n

theorem P15817836050223419689.correct : P15817836050223419689.Spec := by
  intro n
  simp only [A266680]

end A266680

/-! ## A266680.P3224944018391951520

`or(1, 10*a(n-1))-char[2]` with `a(0)=1`
-/

namespace A266680.P3224944018391951520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (10 * a (n - 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266680.P3224944018391951520

namespace A266680

/-- `or(1, 10*a(n-1))-char[2]` -/
def P3224944018391951520.Spec : Prop :=
  ∀ n, P3224944018391951520.a n = A266680 n

end A266680

/-! ## A266680.P6849181998027837070

`3-2*(1-5*a(n-1))-char[2]` with `a(0)=1`
-/

namespace A266680.P6849181998027837070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - 2 * (1 - 5 * a (n - 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266680.P6849181998027837070

namespace A266680

/-- `3-2*(1-5*a(n-1))-char[2]` -/
def P6849181998027837070.Spec : Prop :=
  ∀ n, P6849181998027837070.a n = A266680 n

end A266680

/-! ## A266680.P9476135951908632678

`A105694(n)+floor(10^n/9)`
-/

namespace A266680.P9476135951908632678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105694 n + ⌊(10 ^ n : ℚ) / 9⌋

end

end A266680.P9476135951908632678

namespace A266680

/-- `A105694(n)+floor(10^n/9)` -/
def P9476135951908632678.Spec : Prop :=
  ∀ n, P9476135951908632678.a n = A266680 n

end A266680

/-! ## A266680.P5438673550749400017

`A003953(n)+A002275(A289207(n))`
-/

namespace A266680.P5438673550749400017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 n + A002275 (A289207 n).toNat

end

end A266680.P5438673550749400017

namespace A266680

/-- `A003953(n)+A002275(A289207(n))` -/
def P5438673550749400017.Spec : Prop :=
  ∀ n, P5438673550749400017.a n = A266680 n

end A266680

/-! ## A266680.P5748014306354836354

`A002275(n)+Δ[A055996(n)-A196662(n)]`
-/

namespace A266680.P5748014306354836354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 n - A196662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + (f1 (n + 1) - f1 n)

end

end A266680.P5748014306354836354

namespace A266680

/-- `A002275(n)+Δ[A055996(n)-A196662(n)]` -/
def P5748014306354836354.Spec : Prop :=
  ∀ n, P5748014306354836354.a n = A266680 n

end A266680

/-!
# A266682: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its northwest or northeast neighbor modulo 3 and the upper left element equal to 0.

The programs for A266682, there is no canonical definition to state claims against.
-/

/-! ## A266682.P15277282493426903591

`A267019(∑[n+2]+4)`
-/

namespace A266682.P15277282493426903591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266682.P15277282493426903591

/-! ## A266682.P6994725258279240806

`and(-1, A267019(A167614(n+1)))`
-/

namespace A266682.P6994725258279240806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A267019 (A167614 (n + 1)).toNat)

end

end A266682.P6994725258279240806

/-! ## A266682.P5941617267325718999

`A267019(A167614(n+1))+A011738(n)`
-/

namespace A266682.P5941617267325718999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (A167614 (n + 1)).toNat + A011738 n

end

end A266682.P5941617267325718999

/-! ## A266682.P10117902517737234660

`A267019(A167614(n+1))+A011742(n)`
-/

namespace A266682.P10117902517737234660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (A167614 (n + 1)).toNat + A011742 n

end

end A266682.P10117902517737234660

/-! ## A266682.P14533616229451556651

`A267019(A167614(n+1))+A025437(n)`
-/

namespace A266682.P14533616229451556651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (A167614 (n + 1)).toNat + A025437 n

end

end A266682.P14533616229451556651

/-!
# A266683: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its northwest or northeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A266683, there is no canonical definition to state claims against.
-/

/-! ## A266683.P9484487133697892639

`A266681(A141214(n)+7)`
-/

namespace A266683.P9484487133697892639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266681 (A141214 n + 7).toNat

end

end A266683.P9484487133697892639

/-! ## A266683.P8624258918786807058

`A266681(A052905(n)+9)`
-/

namespace A266683.P8624258918786807058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266681 (A052905 n + 9).toNat

end

end A266683.P8624258918786807058

/-! ## A266683.P17066720486270675389

`A266681(A055999(n)+10)`
-/

namespace A266683.P17066720486270675389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266681 (A055999 n + 10).toNat

end

end A266683.P17066720486270675389

/-!
# A266684: Expansion of f(-x) * f(-x^2)^4 / psi(x^3) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A266684, there is no canonical definition to state claims against.
-/

/-! ## A266684.P12548707588505678064

`A260301(3*n)`
-/

namespace A266684.P12548707588505678064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (3 * n)

end

end A266684.P12548707588505678064

/-! ## A266684.P4018799168965610527

`A260301(A008585(n))%(n+2)²`
-/

namespace A266684.P4018799168965610527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260301 (A008585 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A266684.P4018799168965610527

/-! ## A266684.P17773140087956869375

`A260301(A008486(n))-A000038(n)`
-/

namespace A266684.P17773140087956869375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (A008486 n).toNat - A000038 n

end

end A266684.P17773140087956869375

/-! ## A266684.P11264823666866891407

`A260301(A008486(n))%A001966(n)`
-/

namespace A266684.P11264823666866891407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260301 (A008486 n).toNat) (A001966 n)

end

end A266684.P11264823666866891407

/-! ## A266684.P4145791932192951644

`floor(A260301(A008486(n))/A054977(n))`
-/

namespace A266684.P4145791932192951644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A260301 (A008486 n).toNat : ℚ) / (A054977 n : ℚ)⌋

end

end A266684.P4145791932192951644

/-! ## A266684.P10979212855302001997

`A260301(A008585(n))+A000007(n+1)`
-/

namespace A266684.P10979212855302001997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (A008585 n).toNat + A000007 (n + 1)

end

end A266684.P10979212855302001997

/-! ## A266684.P5548695388532520951

`A260301(A006368(A005843(n)))%A155212(n)`
-/

namespace A266684.P5548695388532520951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260301 (A006368 (A005843 n).toNat).toNat) (A155212 n)

end

end A266684.P5548695388532520951

/-! ## A266684.P4465842835476893603

`A260301(A008486(n)+A000038(n))+A000038(n)`
-/

namespace A266684.P4465842835476893603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (A008486 n + A000038 n).toNat + A000038 n

end

end A266684.P4465842835476893603

/-! ## A266684.P15393414570811853934

`A260301(A005843(n)+n)%A224676(n+1)`
-/

namespace A266684.P15393414570811853934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260301 (A005843 n + (n : ℤ)).toNat) (A224676 (n + 1))

end

end A266684.P15393414570811853934

/-!
# A266685: T(n,k) is the number of loops appearing in pattern of circular arc connecting two vertices of regular polygons. (See Comments.)

The programs for A266685, there is no canonical definition to state claims against.
-/

/-! ## A266685.P16253158341820271538

`A109004(A174803(n+2))`
-/

namespace A266685.P16253158341820271538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A174803 (n + 2)).toNat

end

end A266685.P16253158341820271538

/-! ## A266685.P11288220990303795702

`gcd(A053186(n)+2, A256098(n+1))`
-/

namespace A266685.P11288220990303795702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053186 n + 2) (A256098 (n + 1))

end

end A266685.P11288220990303795702

/-! ## A266685.P4772470780913055000

`gcd(A068527(n+3), A071797(n+2))`
-/

namespace A266685.P4772470780913055000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068527 (n + 3)) (A071797 (n + 2))

end

end A266685.P4772470780913055000

/-! ## A266685.P3859714237085145247

`A050873(A103517(n)-A216209(n))`
-/

namespace A266685.P3859714237085145247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A103517 n - A216209 n).toNat

end

end A266685.P3859714237085145247

/-! ## A266685.P5703723937604797961

`A050873(A007606(n+1)-A316355(n))`
-/

namespace A266685.P5703723937604797961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A007606 (n + 1) - A316355 n).toNat

end

end A266685.P5703723937604797961

/-! ## A266685.P18348667199870775793

`gcd(A047839(A165776(n)), A165776(n+1))`
-/

namespace A266685.P18348667199870775793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047839 (A165776 n).toNat) (A165776 (n + 1))

end

end A266685.P18348667199870775793

/-! ## A266685.P2515773030102070508

`gcd(A000267(A048760(n)), A071797(n+2))`
-/

namespace A266685.P2515773030102070508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000267 (A048760 n).toNat) (A071797 (n + 2))

end

end A266685.P2515773030102070508

/-! ## A266685.P14438342818451599815

`A109004(A048761(n+3)+A028391(n+1))`
-/

namespace A266685.P14438342818451599815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A048761 (n + 3) + A028391 (n + 1)).toNat

end

end A266685.P14438342818451599815

/-! ## A266685.P9358856233598191849

`A109004(A038759(n+2)-A001489(n+2))`
-/

namespace A266685.P9358856233598191849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A038759 (n + 2) - A001489 (n + 2)).toNat

end

end A266685.P9358856233598191849

/-! ## A266685.P2513507793381701434

`A109004(A005843(n+2)-A038760(n+2))`
-/

namespace A266685.P2513507793381701434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A005843 (n + 2) - A038760 (n + 2)).toNat

end

end A266685.P2513507793381701434

/-!
# A266695: Number of acyclic orientations of the Turán graph T(n,2).

The programs for A266695, there is no canonical definition to state claims against.
-/

/-! ## A266695.P2151647167913712776

`A099594(A194274(n))`
-/

namespace A266695.P2151647167913712776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A194274 n).toNat

end

end A266695.P2151647167913712776

/-! ## A266695.P15995097548060929801

`A099594(A007590(n+1))`
-/

namespace A266695.P15995097548060929801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A007590 (n + 1)).toNat

end

end A266695.P15995097548060929801

/-! ## A266695.P11485715142894694879

`A099594(A080476(n+1))`
-/

namespace A266695.P11485715142894694879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A080476 (n + 1)).toNat

end

end A266695.P11485715142894694879

/-! ## A266695.P10768632131450059081

`A099594(A000982(n)+n)`
-/

namespace A266695.P10768632131450059081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A000982 n + (n : ℤ)).toNat

end

end A266695.P10768632131450059081

/-! ## A266695.P998322617373395182

`A099594(A004526((n+1)²))`
-/

namespace A266695.P998322617373395182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A004526 ((n + 1) ^ 2)).toNat

end

end A266695.P998322617373395182

/-! ## A266695.P17508362767082645237

`A099594(∑[2*A110654(n)])`
-/

namespace A266695.P17508362767082645237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A266695.P17508362767082645237

/-! ## A266695.P14629597489450393107

`A099594(A004525(n²)+n)`
-/

namespace A266695.P14629597489450393107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A266695.P14629597489450393107

/-! ## A266695.P7241978130531042087

`A099594(A110654(n²)+n)`
-/

namespace A266695.P7241978130531042087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A110654 (n ^ 2) + (n : ℤ)).toNat

end

end A266695.P7241978130531042087

/-! ## A266695.P12530835470080807873

`A099594(2*A002620(n+1))`
-/

namespace A266695.P12530835470080807873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (2 * A002620 (n + 1)).toNat

end

end A266695.P12530835470080807873

/-! ## A266695.P15424261376580361011

`A099594(A005843(∑[A110654(n)]))`
-/

namespace A266695.P15424261376580361011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A266695.P15424261376580361011

/-!
# A266696: a(n) = Sum_{k=3..n} k*StirlingS2(n+1, k+1).

The programs for A266696, there is no canonical definition to state claims against.
-/

/-! ## A266696.P16534349405368271911

`Δ[A211557(n+1)]-A058681(n+3)`
-/

namespace A266696.P16534349405368271911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A058681 (n + 3)

end

end A266696.P16534349405368271911

/-!
# A266697: Multiplicative order of 2^n mod 2*n+1.

The programs for A266697, there is no canonical definition to state claims against.
-/

/-! ## A266697.P9266680854077871438

`A002326(n)/gcd(n, A002326(n))`
-/

namespace A266697.P9266680854077871438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 n : ℚ) / (Int.gcd (n : ℤ) (A002326 n) : ℚ)

end

end A266697.P9266680854077871438

/-! ## A266697.P5545265234897375640

`lcm(A002326(n), A028310(n))/A028310(n)`
-/

namespace A266697.P5545265234897375640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002326 n) (A028310 n) : ℚ) / (A028310 n : ℚ)

end

end A266697.P5545265234897375640

/-! ## A266697.P4868972439548506429

`A007733(2*n+1)/gcd(A007733(2*n+1), A028310(n))`
-/

namespace A266697.P4868972439548506429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (2 * n + 1) : ℚ) / (Int.gcd (A007733 (2 * n + 1)) (A028310 n) : ℚ)

end

end A266697.P4868972439548506429

/-! ## A266697.P2064119866176513733

`A024222(2*(n+1))/gcd(A004525(2*n), A024222(2*(n+1)))`
-/

namespace A266697.P2064119866176513733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024222 (2 * (n + 1)) : ℚ) / (Int.gcd (A004525 (2 * n)) (A024222 (2 * (n + 1))) : ℚ)

end

end A266697.P2064119866176513733

/-! ## A266697.P6601990135191419004

`A054703(2*n+1)/gcd(A025480(2*n), A054703(2*n+1))`
-/

namespace A266697.P6601990135191419004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054703 (2 * n + 1) : ℚ) / (Int.gcd (A025480 (2 * n)) (A054703 (2 * n + 1)) : ℚ)

end

end A266697.P6601990135191419004

/-!
# A266698: x-values of solutions to the Diophantine equation x^2 - 7*y^2 = 2.

The programs for A266698, the canonical program `A266698.P16076102423713779492` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266698 has offset 1).

The definition of A266698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266698.P16076102423713779492

`16*a(n-1)-a(n-2)` with `a(0)=3, a(1)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266698

/-- `16*a(n-1)-a(n-2)` -/
def P16076102423713779492.Spec : Prop :=
  ∀ n, P16076102423713779492.a n = A266698 (n + 1)

theorem P16076102423713779492.correct : P16076102423713779492.Spec := by
  intro n
  simp only [A266698, Nat.add_sub_cancel]

end A266698

/-! ## A266698.P8148342981839065100

`3*A157456(n+1)`
-/

namespace A266698.P8148342981839065100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157456 (n + 1)

end

end A266698.P8148342981839065100

namespace A266698

/-- `3*A157456(n+1)` -/
def P8148342981839065100.Spec : Prop :=
  ∀ n, P8148342981839065100.a n = A266698 (n + 1)

end A266698

/-! ## A266698.P2214409881402997904

`ogf((3-3x)/(1-16x+x^2))`
-/

namespace A266698.P2214409881402997904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -16, 1] n

end

end A266698.P2214409881402997904

namespace A266698

/-- `ogf((3-3x)/(1-16x+x^2))` -/
def P2214409881402997904.Spec : Prop :=
  ∀ n, P2214409881402997904.a n = A266698 (n + 1)

end A266698

/-! ## A266698.P3770993542285043101

`Δ[A001080(n)]`
-/

namespace A266698.P3770993542285043101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266698.P3770993542285043101

namespace A266698

/-- `Δ[A001080(n)]` -/
def P3770993542285043101.Spec : Prop :=
  ∀ n, P3770993542285043101.a n = A266698 (n + 1)

end A266698

/-! ## A266698.P10120635508039031171

`A259597(4*n)`
-/

namespace A266698.P10120635508039031171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259597 (4 * n)

end

end A266698.P10120635508039031171

namespace A266698

/-- `A259597(4*n)` -/
def P10120635508039031171.Spec : Prop :=
  ∀ n, P10120635508039031171.a n = A266698 (n + 1)

end A266698

/-! ## A266698.P1546193111729361483

`3*A041111(2*n)`
-/

namespace A266698.P1546193111729361483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041111 (2 * n)

end

end A266698.P1546193111729361483

namespace A266698

/-- `3*A041111(2*n)` -/
def P1546193111729361483.Spec : Prop :=
  ∀ n, P1546193111729361483.a n = A266698 (n + 1)

end A266698

/-! ## A266698.P1508252241903957654

`3*A243469(Δ[n²])`
-/

namespace A266698.P1508252241903957654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A243469 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A266698.P1508252241903957654

namespace A266698

/-- `3*A243469(Δ[n²])` -/
def P1508252241903957654.Spec : Prop :=
  ∀ n, P1508252241903957654.a n = A266698 (n + 1)

end A266698

/-! ## A266698.P9385239899637374552

`3*A243470(Δ[n²])`
-/

namespace A266698.P9385239899637374552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A243470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A266698.P9385239899637374552

namespace A266698

/-- `3*A243470(Δ[n²])` -/
def P9385239899637374552.Spec : Prop :=
  ∀ n, P9385239899637374552.a n = A266698 (n + 1)

end A266698

/-! ## A266698.P5524275584474004592

`2*A253878(n+1)+1`
-/

namespace A266698.P5524275584474004592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253878 (n + 1) + 1

end

end A266698.P5524275584474004592

namespace A266698

/-- `2*A253878(n+1)+1` -/
def P5524275584474004592.Spec : Prop :=
  ∀ n, P5524275584474004592.a n = A266698 (n + 1)

end A266698

/-! ## A266698.P10024799760874422438

`A204516(3*(n+1)+1)`
-/

namespace A266698.P10024799760874422438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204516 (3 * (n + 1) + 1)

end

end A266698.P10024799760874422438

namespace A266698

/-- `A204516(3*(n+1)+1)` -/
def P10024799760874422438.Spec : Prop :=
  ∀ n, P10024799760874422438.a n = A266698 (n + 1)

end A266698

/-!
# A266699: Coefficient of x^2 in minimal polynomial of the continued fraction [1^n,1/2,1,1,1,...], where 1^n means n ones.

The programs for A266699, the canonical program `A266699.P16299817660967360788` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266699 has offset 0).

The definition of A266699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266699.P16299817660967360788

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=4, a(1)=5, a(2)=1, a(3)=16`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266699

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P16299817660967360788.Spec : Prop :=
  ∀ n, P16299817660967360788.a n = A266699 n

theorem P16299817660967360788.correct : P16299817660967360788.Spec := by
  intro n
  simp only [A266699]

end A266699

/-! ## A266699.P469286219309931390

`abs(Δ[A001254(n)]-A129905(n))`
-/

namespace A266699.P469286219309931390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A129905 n|

end

end A266699.P469286219309931390

namespace A266699

/-- `abs(Δ[A001254(n)]-A129905(n))` -/
def P469286219309931390.Spec : Prop :=
  ∀ n, P469286219309931390.a n = A266699 n

end A266699

/-! ## A266699.P406728050793925502

`abs(Δ[A001254(n)-A192879(n)])`
-/

namespace A266699.P406728050793925502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n - A192879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266699.P406728050793925502

namespace A266699

/-- `abs(Δ[A001254(n)-A192879(n)])` -/
def P406728050793925502.Spec : Prop :=
  ∀ n, P406728050793925502.a n = A266699 n

end A266699

/-! ## A266699.P1661424786998980775

`abs(A121801(n+1)-A001254(n))`
-/

namespace A266699.P1661424786998980775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121801 (n + 1) - A001254 n|

end

end A266699.P1661424786998980775

namespace A266699

/-- `abs(A121801(n+1)-A001254(n))` -/
def P1661424786998980775.Spec : Prop :=
  ∀ n, P1661424786998980775.a n = A266699 n

end A266699

/-! ## A266699.P11083516394876117004

`abs(A121801(n+1)-A000032(n)²)`
-/

namespace A266699.P11083516394876117004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121801 (n + 1) - A000032 n ^ 2|

end

end A266699.P11083516394876117004

namespace A266699

/-- `abs(A121801(n+1)-A000032(n)²)` -/
def P11083516394876117004.Spec : Prop :=
  ∀ n, P11083516394876117004.a n = A266699 n

end A266699

/-! ## A266699.P9996957817116012656

`A121801(n+1)-A001254(n)*A094267(A008574(n))`
-/

namespace A266699.P9996957817116012656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121801 (n + 1) - A001254 n * A094267 (A008574 n).toNat

end

end A266699.P9996957817116012656

namespace A266699

/-- `A121801(n+1)-A001254(n)*A094267(A008574(n))` -/
def P9996957817116012656.Spec : Prop :=
  ∀ n, P9996957817116012656.a n = A266699 n

end A266699

