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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A338200: The number of similarity classes of pointed reflection spaces of residue two in an n-dimensional vector space over GF(2).

The programs for A338200, the canonical program `A338200.P14756505547137573966` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338200 has offset 1).

The definition of A338200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338200.P14756505547137573966

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=4, a(5)=6, a(6)=9, a(7)=12, a(8)=17, a(9)=21`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338200

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P14756505547137573966.Spec : Prop :=
  ∀ n, P14756505547137573966.a n = A338200 (n + 1)

theorem P14756505547137573966.correct : P14756505547137573966.Spec := by
  intro n
  simp only [A338200, Nat.add_sub_cancel]

end A338200

/-! ## A338200.P10899947197569606263

`A026810(n)+∑[A002264(n+1)]`
-/

namespace A338200.P10899947197569606263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338200.P10899947197569606263

namespace A338200

/-- `A026810(n)+∑[A002264(n+1)]` -/
def P10899947197569606263.Spec : Prop :=
  ∀ n, P10899947197569606263.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P17793090589580127326

`A001400(n)+A002620(n)-A008747(n)`
-/

namespace A338200.P17793090589580127326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + (A002620 n - A008747 n)

end

end A338200.P17793090589580127326

namespace A338200

/-- `A001400(n)+A002620(n)-A008747(n)` -/
def P17793090589580127326.Spec : Prop :=
  ∀ n, P17793090589580127326.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P4408997050549887038

`A069905(n+1)+A069905(n)+A026810(n)`
-/

namespace A338200.P4408997050549887038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) + (A069905 n + A026810 n)

end

end A338200.P4408997050549887038

namespace A338200

/-- `A069905(n+1)+A069905(n)+A026810(n)` -/
def P4408997050549887038.Spec : Prop :=
  ∀ n, P4408997050549887038.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P3530386063379462338

`∑[∑[A008679(n+1)]-A005044(n)]`
-/

namespace A338200.P3530386063379462338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338200.P3530386063379462338

namespace A338200

/-- `∑[∑[A008679(n+1)]-A005044(n)]` -/
def P3530386063379462338.Spec : Prop :=
  ∀ n, P3530386063379462338.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P10749890268761003235

`∑[∑[A130722(n+1)-A002264(n)]]`
-/

namespace A338200.P10749890268761003235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (n + 1) - A002264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338200.P10749890268761003235

namespace A338200

/-- `∑[∑[A130722(n+1)-A002264(n)]]` -/
def P10749890268761003235.Spec : Prop :=
  ∀ n, P10749890268761003235.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P12937753897695089829

`∑[A005044(n+1)+A002265(n+1)]`
-/

namespace A338200.P12937753897695089829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338200.P12937753897695089829

namespace A338200

/-- `∑[A005044(n+1)+A002265(n+1)]` -/
def P12937753897695089829.Spec : Prop :=
  ∀ n, P12937753897695089829.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P8878515379936235834

`∑[A005044(n+1)+A004526(A004526(n+1))]`
-/

namespace A338200.P8878515379936235834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + A004526 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338200.P8878515379936235834

namespace A338200

/-- `∑[A005044(n+1)+A004526(A004526(n+1))]` -/
def P8878515379936235834.Spec : Prop :=
  ∀ n, P8878515379936235834.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P14787481626186259866

`A114209(2*n+1)+A026810(n)`
-/

namespace A338200.P14787481626186259866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (2 * n + 1) + A026810 n

end

end A338200.P14787481626186259866

namespace A338200

/-- `A114209(2*n+1)+A026810(n)` -/
def P14787481626186259866.Spec : Prop :=
  ∀ n, P14787481626186259866.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P9167879710067944061

`A026810(n)+∑[A008615(2*n+1)]`
-/

namespace A338200.P9167879710067944061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338200.P9167879710067944061

namespace A338200

/-- `A026810(n)+∑[A008615(2*n+1)]` -/
def P9167879710067944061.Spec : Prop :=
  ∀ n, P9167879710067944061.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P5408108982668846193

`A026810(n)+Δ[A026810(A004273(n))]`
-/

namespace A338200.P5408108982668846193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + (f1 (n + 1) - f1 n)

end

end A338200.P5408108982668846193

namespace A338200

/-- `A026810(n)+Δ[A026810(A004273(n))]` -/
def P5408108982668846193.Spec : Prop :=
  ∀ n, P5408108982668846193.a n = A338200 (n + 1)

end A338200

/-! ## A338200.P13228506771865186234

`A026810(n)+A002264(∑[n])`
-/

namespace A338200.P13228506771865186234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + A002264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338200.P13228506771865186234

namespace A338200

/-- `A026810(n)+A002264(∑[n])` -/
def P13228506771865186234.Spec : Prop :=
  ∀ n, P13228506771865186234.a n = A338200 (n + 1)

end A338200

/-!
# A338201: a(n) is the number of unit perimeter triangles with rational side lengths whose largest denominator is equal to n.

The programs for A338201, there is no canonical definition to state claims against.
-/

/-! ## A338201.P2847892502632649274

`Δ[A338202(n-ceil(n/(n+1))+1)]`
-/

namespace A338201.P2847892502632649274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338201.P2847892502632649274

/-! ## A338201.P4988426930780389818

`abs(Δ[A338202(A028310(n))])`
-/

namespace A338201.P4988426930780389818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A338201.P4988426930780389818

/-! ## A338201.P17740366323272983357

`abs(Δ[A338202(A233583(n+1))])`
-/

namespace A338201.P17740366323272983357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A338201.P17740366323272983357

/-! ## A338201.P7677563252584997921

`A338202(n+1)-A338202(A028310(n))`
-/

namespace A338201.P7677563252584997921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 (n + 1) - A338202 (A028310 n).toNat

end

end A338201.P7677563252584997921

/-! ## A338201.P7548895634557414175

`Δ[A338202(A233583(n+1))]%A003600(n)`
-/

namespace A338201.P7548895634557414175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A003600 n)

end

end A338201.P7548895634557414175

/-! ## A338201.P5734254655118578800

`A338202(n+1)-A338202(A233583(n+1))`
-/

namespace A338201.P5734254655118578800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 (n + 1) - A338202 (A233583 (n + 1)).toNat

end

end A338201.P5734254655118578800

/-! ## A338201.P16079061175137287354

`A338202(n+1)-A338202(A000007(n)+n)`
-/

namespace A338201.P16079061175137287354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 (n + 1) - A338202 (A000007 n + (n : ℤ)).toNat

end

end A338201.P16079061175137287354

/-! ## A338201.P11153751067458580160

`Δ[A338202(A028310(n))+A000034(2*n+1)]`
-/

namespace A338201.P11153751067458580160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 (A028310 n).toNat + A000034 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338201.P11153751067458580160

/-! ## A338201.P3168265733301623369

`Δ[A338202(A000007(n)+n)%A032822(n+1)]`
-/

namespace A338201.P3168265733301623369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338202 (A000007 n + (n : ℤ)).toNat) (A032822 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338201.P3168265733301623369

/-! ## A338201.P11899620924198751525

`Δ[A338202(A000007(n)+n)]%A000108(n)`
-/

namespace A338201.P11899620924198751525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338202 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000108 n)

end

end A338201.P11899620924198751525

/-!
# A338202: a(n) is the number of unit perimeter triangles with rational side lengths whose largest denominator is less than or equal to n.

The programs for A338202, there is no canonical definition to state claims against.
-/

/-! ## A338202.P3824019952423638216

`∑[A338201(n+1)]`
-/

namespace A338202.P3824019952423638216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338202.P3824019952423638216

/-! ## A338202.P7298683802225197794

`∑[A051493(n+1)]%A045611(n)`
-/

namespace A338202.P7298683802225197794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A045611 n)

end

end A338202.P7298683802225197794

/-! ## A338202.P4408959850599048193

`∑[A051493(n+1)%A078519(n+1)]`
-/

namespace A338202.P4408959850599048193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051493 (n + 1)) (A078519 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338202.P4408959850599048193

/-! ## A338202.P11032790115499572697

`∑[A051493(n+1)^A014963(A070122(n+1))]`
-/

namespace A338202.P11032790115499572697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051493 (n + 1) : ℚ) ^ (A014963 (A070122 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338202.P11032790115499572697

/-! ## A338202.P1377238756216180298

`∑[A316441(A177214(2*n+1))+A051493(n+1)]`
-/

namespace A338202.P1377238756216180298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A177214 (2 * n + 1)).toNat + A051493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338202.P1377238756216180298

/-!
# A338203: Triangle read by rows: T(n,k) is the number of iterations needed to make the n-bit binary representation of k palindromic by binary-subtracting its bit reversal, 0 <= k < 2^n.

The programs for A338203, there is no canonical definition to state claims against.
-/

/-! ## A338203.P17476568449453486472

`and(A039045(A288219(n)), A120323(n))`
-/

namespace A338203.P17476568449453486472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039045 (A288219 n).toNat) (A120323 n)

end

end A338203.P17476568449453486472

/-! ## A338203.P6505205963278271564

`and(A008480(n+1), A306499(A124795(n+1)))`
-/

namespace A338203.P6505205963278271564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008480 (n + 1)) (A306499 (A124795 (n + 1)).toNat)

end

end A338203.P6505205963278271564

/-! ## A338203.P10149704680481782562

`and(A081707(n+1), A306499(A124795(n+1)))`
-/

namespace A338203.P10149704680481782562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081707 (n + 1)) (A306499 (A124795 (n + 1)).toNat)

end

end A338203.P10149704680481782562

/-! ## A338203.P13343507701941563381

`and(A277440(3*n+1)+1, A079882(2*n))`
-/

namespace A338203.P13343507701941563381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277440 (3 * n + 1) + 1) (A079882 (2 * n))

end

end A338203.P13343507701941563381

/-! ## A338203.P13972478252496305094

`and(A001285(A169914(n)), A169914(n))`
-/

namespace A338203.P13972478252496305094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001285 (A169914 n).toNat) (A169914 n)

end

end A338203.P13972478252496305094

/-!
# A338204: a(n) is the sum of odd-indexed terms (of every row) of the first n rows of the triangle A237591.

The programs for A338204, there is no canonical definition to state claims against.
-/

/-! ## A338204.P18071414467866565215

`A000217(n+1)-A338758(n+1)`
-/

namespace A338204.P18071414467866565215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A338758 (n + 1)

end

end A338204.P18071414467866565215

/-! ## A338204.P13908624265373498988

`∑[A240542(n+1)]`
-/

namespace A338204.P13908624265373498988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P13908624265373498988

/-! ## A338204.P7979051783426888302

`∑[∑[A067742(n+1)]]`
-/

namespace A338204.P7979051783426888302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P7979051783426888302

/-! ## A338204.P10946938768697538935

`∑[ceil(A338723(n+1)/2)]`
-/

namespace A338204.P10946938768697538935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338723 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P10946938768697538935

/-! ## A338204.P16621827199440601180

`∑[∑[A348406(n+1)-1]]`
-/

namespace A338204.P16621827199440601180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P16621827199440601180

/-! ## A338204.P1706650583194566864

`∑[n+1-A322141(n+1)]`
-/

namespace A338204.P1706650583194566864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A322141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P1706650583194566864

/-! ## A338204.P823806256810495960

`∑[∑[A247802(A348406(n+1))]]`
-/

namespace A338204.P823806256810495960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247802 (A348406 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P823806256810495960

/-! ## A338204.P7275584829449329225

`∑[∑[A000005(n+1)-A067743(n+1)]]`
-/

namespace A338204.P7275584829449329225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A067743 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P7275584829449329225

/-! ## A338204.P6198915028057375567

`∑[∑[A082647(n+1)-A131576(n+1)]]`
-/

namespace A338204.P6198915028057375567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (n + 1) - A131576 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P6198915028057375567

/-! ## A338204.P1619292478603898702

`∑[A065033(A338723(n+1))]`
-/

namespace A338204.P1619292478603898702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A338723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P1619292478603898702

/-! ## A338204.P6063368794056960970

`∑[∑[A249223(A006463(n+2))]]`
-/

namespace A338204.P6063368794056960970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249223 (A006463 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338204.P6063368794056960970

/-!
# A338205: a(n) the maximum number of iterations needed to make the binary representation of a 2n-bit number palindromic by subtracting its bit reversal.

The programs for A338205, there is no canonical definition to state claims against.
-/

/-! ## A338205.P14968058475151885193

`lt[A228708(comp[2*(n+1)]), A122850(n)]`
-/

namespace A338205.P14968058475151885193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A338205.P14968058475151885193

/-! ## A338205.P6577270252923475783

`eq[A303753(A001274(n+1)), A330733(n+1)]`
-/

namespace A338205.P6577270252923475783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (A001274 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338205.P6577270252923475783

/-! ## A338205.P8108605971607409378

`eq[A037910(A301669(n+3)), A275281(n+1)]`
-/

namespace A338205.P8108605971607409378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037910 (A301669 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338205.P8108605971607409378

/-! ## A338205.P11472822873057695830

`lt[A278984(2*n+1), A298868(A385343(n))]`
-/

namespace A338205.P11472822873057695830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298868 (A385343 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338205.P11472822873057695830

/-! ## A338205.P1008889128207546455

`A000791(n+1)-A004481(A124440(n+1))`
-/

namespace A338205.P1008889128207546455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000791 (n + 1) - A004481 (A124440 (n + 1)).toNat

end

end A338205.P1008889128207546455

/-!
# A338206: Inverse of permutation in A160016.

The programs for A338206, the canonical program `A338206.P8740019725536592137` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338206 has offset 0).

The definition of A338206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338206.P8740019725536592137

`round(n/(3/2-n%2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338206

/-- `round(n/(3/2-n%2))` -/
def P8740019725536592137.Spec : Prop :=
  ∀ n, P8740019725536592137.a n = A338206 n

theorem P8740019725536592137.correct : P8740019725536592137.Spec := by
  intro n
  simp only [A338206]

end A338206

/-! ## A338206.P4746994105534920611

`round(2*n/or(1, gcd(2, n)))`
-/

namespace A338206.P4746994105534920611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / (Nat.lor 1 (Nat.gcd 2 n) : ℚ))

end

end A338206.P4746994105534920611

namespace A338206

/-- `round(2*n/or(1, gcd(2, n)))` -/
def P4746994105534920611.Spec : Prop :=
  ∀ n, P4746994105534920611.a n = A338206 n

end A338206

/-! ## A338206.P15591695031017415145

`round(2*n/((-1)^n+2))`
-/

namespace A338206.P15591695031017415145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / ((-1) ^ n + 2 : ℚ)))

end

end A338206.P15591695031017415145

namespace A338206

/-- `round(2*n/((-1)^n+2))` -/
def P15591695031017415145.Spec : Prop :=
  ∀ n, P15591695031017415145.a n = A338206 n

end A338206

/-! ## A338206.P8856372536099809509

`A035877(n)%A219529(n)`
-/

namespace A338206.P8856372536099809509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035877 n) (A219529 n)

end

end A338206.P8856372536099809509

namespace A338206

/-- `A035877(n)%A219529(n)` -/
def P8856372536099809509.Spec : Prop :=
  ∀ n, P8856372536099809509.a n = A338206 n

end A338206

/-! ## A338206.P6885091289866237979

`A260160(n+1)+A064680(n)`
-/

namespace A338206.P6885091289866237979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (n + 1) + A064680 n

end

end A338206.P6885091289866237979

namespace A338206

/-- `A260160(n+1)+A064680(n)` -/
def P6885091289866237979.Spec : Prop :=
  ∀ n, P6885091289866237979.a n = A338206 n

end A338206

/-! ## A338206.P12845093954648936577

`A047622(n+1)-A026185(n)`
-/

namespace A338206.P12845093954648936577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047622 (n + 1) - A026185 n

end

end A338206.P12845093954648936577

namespace A338206

/-- `A047622(n+1)-A026185(n)` -/
def P12845093954648936577.Spec : Prop :=
  ∀ n, P12845093954648936577.a n = A338206 n

end A338206

/-! ## A338206.P7473954456822136863

`A047408(n+1)-A026201(n+1)`
-/

namespace A338206.P7473954456822136863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1) - A026201 (n + 1)

end

end A338206.P7473954456822136863

namespace A338206

/-- `A047408(n+1)-A026201(n+1)` -/
def P7473954456822136863.Spec : Prop :=
  ∀ n, P7473954456822136863.a n = A338206 n

end A338206

/-! ## A338206.P15995029236184046087

`2*n-A042965(A093178(n+1))`
-/

namespace A338206.P15995029236184046087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A042965 (A093178 (n + 1)).toNat

end

end A338206.P15995029236184046087

namespace A338206

/-- `2*n-A042965(A093178(n+1))` -/
def P15995029236184046087.Spec : Prop :=
  ∀ n, P15995029236184046087.a n = A338206 n

end A338206

/-! ## A338206.P9188754594008482941

`A093178(2*n+1)-A004773(A093178(n+1))`
-/

namespace A338206.P9188754594008482941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n + 1) - A004773 (A093178 (n + 1)).toNat

end

end A338206.P9188754594008482941

namespace A338206

/-- `A093178(2*n+1)-A004773(A093178(n+1))` -/
def P9188754594008482941.Spec : Prop :=
  ∀ n, P9188754594008482941.a n = A338206 n

end A338206

/-! ## A338206.P14353142079866963925

`A004396(n-A038608(n))+A004396(n)`
-/

namespace A338206.P14353142079866963925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) - A038608 n).toNat + A004396 n

end

end A338206.P14353142079866963925

namespace A338206

/-- `A004396(n-A038608(n))+A004396(n)` -/
def P14353142079866963925.Spec : Prop :=
  ∀ n, P14353142079866963925.a n = A338206 n

end A338206

/-! ## A338206.P12869887146546461993

`A004396(n)+A004396(A347365(n)-n)`
-/

namespace A338206.P12869887146546461993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A347365 n - (n : ℤ)).toNat

end

end A338206.P12869887146546461993

namespace A338206

/-- `A004396(n)+A004396(A347365(n)-n)` -/
def P12869887146546461993.Spec : Prop :=
  ∀ n, P12869887146546461993.a n = A338206 n

end A338206

/-! ## A338206.P1609442363452527117

`A042965(2*n+1)-A026185(n)`
-/

namespace A338206.P1609442363452527117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (2 * n + 1) - A026185 n

end

end A338206.P1609442363452527117

namespace A338206

/-- `A042965(2*n+1)-A026185(n)` -/
def P1609442363452527117.Spec : Prop :=
  ∀ n, P1609442363452527117.a n = A338206 n

end A338206

/-! ## A338206.P10667612369104379027

`(or(1, n)+n)%Δ[A000212(or(1, n)+n)]`
-/

namespace A338206.P10667612369104379027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (Nat.lor 1 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 n + n : ℤ) (f1 (n + 1) - f1 n)

end

end A338206.P10667612369104379027

namespace A338206

/-- `(or(1, n)+n)%Δ[A000212(or(1, n)+n)]` -/
def P10667612369104379027.Spec : Prop :=
  ∀ n, P10667612369104379027.a n = A338206 n

end A338206

/-! ## A338206.P18237311608460139803

`A004396(n*3^(n%2))`
-/

namespace A338206.P18237311608460139803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n * 3 ^ (n % 2))

end

end A338206.P18237311608460139803

namespace A338206

/-- `A004396(n*3^(n%2))` -/
def P18237311608460139803.Spec : Prop :=
  ∀ n, P18237311608460139803.a n = A338206 n

end A338206

/-! ## A338206.P9855366893273200191

`A004396(A347365(n))`
-/

namespace A338206.P9855366893273200191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A347365 n).toNat

end

end A338206.P9855366893273200191

namespace A338206

/-- `A004396(A347365(n))` -/
def P9855366893273200191.Spec : Prop :=
  ∀ n, P9855366893273200191.a n = A338206 n

end A338206

/-! ## A338206.P2232487343003171846

`A004396(A186813(2*n))`
-/

namespace A338206.P2232487343003171846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A186813 (2 * n)).toNat

end

end A338206.P2232487343003171846

namespace A338206

/-- `A004396(A186813(2*n))` -/
def P2232487343003171846.Spec : Prop :=
  ∀ n, P2232487343003171846.a n = A338206 n

end A338206

/-! ## A338206.P4495503912269025515

`A004396(n*(2-A033999(n)))`
-/

namespace A338206.P4495503912269025515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) * (2 - A033999 n)).toNat

end

end A338206.P4495503912269025515

namespace A338206

/-- `A004396(n*(2-A033999(n)))` -/
def P4495503912269025515.Spec : Prop :=
  ∀ n, P4495503912269025515.a n = A338206 n

end A338206

/-! ## A338206.P9488112966495326721

`A004396(2*n-A038608(n))`
-/

namespace A338206.P9488112966495326721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((2 * n : ℤ) - A038608 n).toNat

end

end A338206.P9488112966495326721

namespace A338206

/-- `A004396(2*n-A038608(n))` -/
def P9488112966495326721.Spec : Prop :=
  ∀ n, P9488112966495326721.a n = A338206 n

end A338206

/-! ## A338206.P18415307199407072177

`(2*n)%A008576(A001281(n))`
-/

namespace A338206.P18415307199407072177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A008576 (A001281 n).toNat)

end

end A338206.P18415307199407072177

namespace A338206

/-- `(2*n)%A008576(A001281(n))` -/
def P18415307199407072177.Spec : Prop :=
  ∀ n, P18415307199407072177.a n = A338206 n

end A338206

/-! ## A338206.P14176163176345100025

`A004396(n-A038608(n)+n)`
-/

namespace A338206.P14176163176345100025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) - A038608 n + (n : ℤ)).toNat

end

end A338206.P14176163176345100025

namespace A338206

/-- `A004396(n-A038608(n)+n)` -/
def P14176163176345100025.Spec : Prop :=
  ∀ n, P14176163176345100025.a n = A338206 n

end A338206

/-!
# A338210: Triangle of coefficients of perimeter polynomials for fixed polyominoes.

The programs for A338210, there is no canonical definition to state claims against.
-/

/-! ## A338210.P142953846626868031

`A087117(A055999(n)^A338211(n))`
-/

namespace A338210.P142953846626868031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.roundAway ((A055999 n : ℚ) ^ (A338211 n : ℤ))).toNat

end

end A338210.P142953846626868031

/-! ## A338210.P8593746237928725225

`A001222(A330593(n+1)^A338211(n))`
-/

namespace A338210.P8593746237928725225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A330593 (n + 1) : ℚ) ^ (A338211 n : ℤ))).toNat

end

end A338210.P8593746237928725225

/-! ## A338210.P15051557900073549159

`A001222(A246408(n+7)^A338211(n))`
-/

namespace A338210.P15051557900073549159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A246408 (n + 7) : ℚ) ^ (A338211 n : ℤ))).toNat

end

end A338210.P15051557900073549159

/-! ## A338210.P9977354552750301563

`A049100(2*n+1)*A145649(A068084(n+1))`
-/

namespace A338210.P9977354552750301563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (2 * n + 1) * A145649 (A068084 (n + 1)).toNat

end

end A338210.P9977354552750301563

/-! ## A338210.P228932566563308180

`A049100(2*n+1)*A162289(A134393(n+1))`
-/

namespace A338210.P228932566563308180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (2 * n + 1) * A162289 (A134393 (n + 1)).toNat

end

end A338210.P228932566563308180

/-!
# A338211: Triangle of coefficients of perimeter polynomials for free polyominoes.

The programs for A338211, there is no canonical definition to state claims against.
-/

/-! ## A338211.P7604736053613429374

`A261337(A338210(n)^A175892(n))`
-/

namespace A338211.P7604736053613429374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261337 (SequenceMachineLib.roundAway ((A338210 n : ℚ) ^ (A175892 n : ℤ))).toNat

end

end A338211.P7604736053613429374

/-! ## A338211.P9282741234298050222

`A187894(A338210(n))%4`
-/

namespace A338211.P9282741234298050222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187894 (A338210 n).toNat) 4

end

end A338211.P9282741234298050222

/-! ## A338211.P12580164160370616448

`A000120((4*A338210(n))²)`
-/

namespace A338211.P12580164160370616448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((4 * A338210 n) ^ 2).toNat

end

end A338211.P12580164160370616448

/-! ## A338211.P15684832909450318071

`A338203(8*A338210(n))`
-/

namespace A338211.P15684832909450318071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338203 (8 * A338210 n).toNat

end

end A338211.P15684832909450318071

/-! ## A338211.P10136600679869138179

`A124766(A070939(n)*A338210(n))`
-/

namespace A338211.P10136600679869138179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A070939 n * A338210 n).toNat

end

end A338211.P10136600679869138179

/-!
# A338213: a(n) is the number of free polyominoes with sprawl n.

The programs for A338213, there is no canonical definition to state claims against.
-/

/-! ## A338213.P5965387784658079206

`and(A008620(A029579(n+2)), A117510(3*(n+1)))`
-/

namespace A338213.P5965387784658079206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008620 (A029579 (n + 2)).toNat) (A117510 (3 * (n + 1)))

end

end A338213.P5965387784658079206

/-! ## A338213.P11828893121591908621

`A320841(A135035(n)+A026775(n))`
-/

namespace A338213.P11828893121591908621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A135035 n + A026775 n).toNat

end

end A338213.P11828893121591908621

/-! ## A338213.P1706362944946829239

`and(A265744(A038282(n)), A298848(n))`
-/

namespace A338213.P1706362944946829239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265744 (A038282 n).toNat) (A298848 n)

end

end A338213.P1706362944946829239

/-! ## A338213.P13345821003889189615

`A341025(eq[A007318(n), A063014(n)])`
-/

namespace A338213.P13345821003889189615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 120)

end

end A338213.P13345821003889189615

/-! ## A338213.P7668935755091676538

`A341025(eq[A022167(n), A063014(n)])`
-/

namespace A338213.P7668935755091676538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 120)

end

end A338213.P7668935755091676538

/-!
# A338214: Positive numbers for which the sum of some digits equals the product of the remaining ones.

The programs for A338214, there is no canonical definition to state claims against.
-/

/-! ## A338214.P12708576073127127535

`∪[A068520(n+1), A248711(n+1)]`
-/

namespace A338214.P12708576073127127535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338214.P12708576073127127535

/-! ## A338214.P9256904777796589492

`lt[A155191(A320486(n)), n]`
-/

namespace A338214.P9256904777796589492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155191 (A320486 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338214.P9256904777796589492

/-! ## A338214.P15313145556918878727

`lt[A320486(n), A058062(A340494(n))]`
-/

namespace A338214.P15313145556918878727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058062 (A340494 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338214.P15313145556918878727

/-! ## A338214.P12394297919631760461

`lt[A320485(n), A007814(A303838(2*(n+2)))]`
-/

namespace A338214.P12394297919631760461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A303838 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338214.P12394297919631760461

/-! ## A338214.P14501390355922878350

`A068520(n+1)-A010054(A298911(2*n+5))`
-/

namespace A338214.P14501390355922878350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068520 (n + 1) - A010054 (A298911 (2 * n + 5)).toNat

end

end A338214.P14501390355922878350

/-!
# A338215: a(n) = A095117(A062298(n)).

The programs for A338215, the canonical program `A338215.P776974730790204605` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338215 has offset 1).

The definition of A338215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338215.P776974730790204605

`A095117(A062298(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338215

/-- `A095117(A062298(n+1))` -/
def P776974730790204605.Spec : Prop :=
  ∀ n, P776974730790204605.a n = A338215 (n + 1)

theorem P776974730790204605.correct : P776974730790204605.Spec := by
  intro n
  simp only [A338215, Nat.add_sub_cancel]

end A338215

/-! ## A338215.P7494203890191952787

`A095117(∑[A005171(n+1)])`
-/

namespace A338215.P7494203890191952787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338215.P7494203890191952787

namespace A338215

/-- `A095117(∑[A005171(n+1)])` -/
def P7494203890191952787.Spec : Prop :=
  ∀ n, P7494203890191952787.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P5996483712214370689

`A095117(A065855(n+1)+1)`
-/

namespace A338215.P5996483712214370689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A065855 (n + 1) + 1).toNat

end

end A338215.P5996483712214370689

namespace A338215

/-- `A095117(A065855(n+1)+1)` -/
def P5996483712214370689.Spec : Prop :=
  ∀ n, P5996483712214370689.a n = A338215 (n + 1)

theorem P5996483712214370689.correct : P5996483712214370689.Spec := by
  intro n
  simp only [A338215, Nat.add_sub_cancel, A338215.P5996483712214370689.a, A338215.P776974730790204605.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A338215

/-! ## A338215.P2381228823300006532

`A095117(∑[A066247(n+1)]+1)`
-/

namespace A338215.P2381228823300006532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A338215.P2381228823300006532

namespace A338215

/-- `A095117(∑[A066247(n+1)]+1)` -/
def P2381228823300006532.Spec : Prop :=
  ∀ n, P2381228823300006532.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P1762062873836708438

`A095117(∑[1-A010051(n+1)])`
-/

namespace A338215.P1762062873836708438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338215.P1762062873836708438

namespace A338215

/-- `A095117(∑[1-A010051(n+1)])` -/
def P1762062873836708438.Spec : Prop :=
  ∀ n, P1762062873836708438.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P2653228947839409221

`A095117(∑[A135141(n+1)%2])`
-/

namespace A338215.P2653228947839409221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135141 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338215.P2653228947839409221

namespace A338215

/-- `A095117(∑[A135141(n+1)%2])` -/
def P2653228947839409221.Spec : Prop :=
  ∀ n, P2653228947839409221.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P526919604120516861

`A064427(A062298(n+1)+1)-1`
-/

namespace A338215.P526919604120516861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (A062298 (n + 1) + 1).toNat - 1

end

end A338215.P526919604120516861

namespace A338215

/-- `A064427(A062298(n+1)+1)-1` -/
def P526919604120516861.Spec : Prop :=
  ∀ n, P526919604120516861.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P13017074331855730440

`A095117(1-A000720(n+1)+n)`
-/

namespace A338215.P13017074331855730440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (1 - A000720 (n + 1) + (n : ℤ)).toNat

end

end A338215.P13017074331855730440

namespace A338215

/-- `A095117(1-A000720(n+1)+n)` -/
def P13017074331855730440.Spec : Prop :=
  ∀ n, P13017074331855730440.a n = A338215 (n + 1)

theorem P13017074331855730440.correct : P13017074331855730440.Spec := by
  intro n
  simp only [A338215, Nat.add_sub_cancel, A338215.P13017074331855730440.a, A338215.P776974730790204605.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A338215

/-! ## A338215.P17596949870019941338

`A014684(n+1)-A338521(n+1)`
-/

namespace A338215.P17596949870019941338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A338521 (n + 1)

end

end A338215.P17596949870019941338

namespace A338215

/-- `A014684(n+1)-A338521(n+1)` -/
def P17596949870019941338.Spec : Prop :=
  ∀ n, P17596949870019941338.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P10467864529474763864

`A095117(n+2-A036234(n+1))`
-/

namespace A338215.P10467864529474763864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 ((n + 2 : ℤ) - A036234 (n + 1)).toNat

end

end A338215.P10467864529474763864

namespace A338215

/-- `A095117(n+2-A036234(n+1))` -/
def P10467864529474763864.Spec : Prop :=
  ∀ n, P10467864529474763864.a n = A338215 (n + 1)

theorem P10467864529474763864.correct : P10467864529474763864.Spec := by
  intro n
  simp only [A338215, Nat.add_sub_cancel, A338215.P10467864529474763864.a, A338215.P776974730790204605.a, A036234, A036234.P2906282677021386800.a, A062298, A062298.P8226643735375377344.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A338215

/-! ## A338215.P14280549088802508036

`A095117(A282029(n+1)-A056171(n+1))`
-/

namespace A338215.P14280549088802508036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A282029 (n + 1) - A056171 (n + 1)).toNat

end

end A338215.P14280549088802508036

namespace A338215

/-- `A095117(A282029(n+1)-A056171(n+1))` -/
def P14280549088802508036.Spec : Prop :=
  ∀ n, P14280549088802508036.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P17867587687960662465

`A095117(A014684(n+1)+n-A095117(n))`
-/

namespace A338215.P17867587687960662465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A014684 (n + 1) + ((n : ℤ) - A095117 n)).toNat

end

end A338215.P17867587687960662465

namespace A338215

/-- `A095117(A014684(n+1)+n-A095117(n))` -/
def P17867587687960662465.Spec : Prop :=
  ∀ n, P17867587687960662465.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P7124903037109897454

`A062298(n+1)+A065855(n+1)-A065855(A062298(n+1))`
-/

namespace A338215.P7124903037109897454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + (A065855 (n + 1) - A065855 (A062298 (n + 1)).toNat)

end

end A338215.P7124903037109897454

namespace A338215

/-- `A062298(n+1)+A065855(n+1)-A065855(A062298(n+1))` -/
def P7124903037109897454.Spec : Prop :=
  ∀ n, P7124903037109897454.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P10646758666883295832

`A095117(∑[2-Δ[A095117(n)]])`
-/

namespace A338215.P10646758666883295832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338215.P10646758666883295832

namespace A338215

/-- `A095117(∑[2-Δ[A095117(n)]])` -/
def P10646758666883295832.Spec : Prop :=
  ∀ n, P10646758666883295832.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P15220566179757738271

`A095117(2*(n+1)-A095117(n+1))`
-/

namespace A338215.P15220566179757738271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 ((2 * (n + 1) : ℤ) - A095117 (n + 1)).toNat

end

end A338215.P15220566179757738271

namespace A338215

/-- `A095117(2*(n+1)-A095117(n+1))` -/
def P15220566179757738271.Spec : Prop :=
  ∀ n, P15220566179757738271.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P11600801518061344607

`A230980(A065308(n+1))+A132090(A065308(n+1))`
-/

namespace A338215.P11600801518061344607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A065308 (n + 1)).toNat + A132090 (A065308 (n + 1)).toNat

end

end A338215.P11600801518061344607

namespace A338215

/-- `A230980(A065308(n+1))+A132090(A065308(n+1))` -/
def P11600801518061344607.Spec : Prop :=
  ∀ n, P11600801518061344607.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P1810012113426734299

`A080786(A256885(n+1))`
-/

namespace A338215.P1810012113426734299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080786 (A256885 (n + 1)).toNat

end

end A338215.P1810012113426734299

namespace A338215

/-- `A080786(A256885(n+1))` -/
def P1810012113426734299.Spec : Prop :=
  ∀ n, P1810012113426734299.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P8530321220375800948

`A080786(∑[A014684(n+1)])`
-/

namespace A338215.P8530321220375800948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080786 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338215.P8530321220375800948

namespace A338215

/-- `A080786(∑[A014684(n+1)])` -/
def P8530321220375800948.Spec : Prop :=
  ∀ n, P8530321220375800948.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P16873350492067458151

`A080786(A333996(n+1)+1)`
-/

namespace A338215.P16873350492067458151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080786 (A333996 (n + 1) + 1).toNat

end

end A338215.P16873350492067458151

namespace A338215

/-- `A080786(A333996(n+1)+1)` -/
def P16873350492067458151.Spec : Prop :=
  ∀ n, P16873350492067458151.a n = A338215 (n + 1)

end A338215

/-! ## A338215.P15187255719147757717

`A062298(n+1)+A056811(A062298(n+1)²)`
-/

namespace A338215.P15187255719147757717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + A056811 (A062298 (n + 1) ^ 2).toNat

end

end A338215.P15187255719147757717

namespace A338215

/-- `A062298(n+1)+A056811(A062298(n+1)²)` -/
def P15187255719147757717.Spec : Prop :=
  ∀ n, P15187255719147757717.a n = A338215 (n + 1)

end A338215

/-!
# A338218: Number of terms in polynomial sequence s(n) = x*y*z*(s(n-1)*s(n-3) + s(n-2)^2)/s(n-4), with s(1) = x, s(2) = s(3) = 1, s(4) = y.

The programs for A338218, there is no canonical definition to state claims against.
-/

/-! ## A338218.P13366529670387147692

`A000196(A289589(n))`
-/

namespace A338218.P13366529670387147692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A289589 n).toNat

end

end A338218.P13366529670387147692

/-! ## A338218.P10856919105520830432

`A111654(A365244(n))`
-/

namespace A338218.P10856919105520830432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A365244 n).toNat

end

end A338218.P10856919105520830432

/-! ## A338218.P4847633761800201387

`A259361(A085697(n)+2)`
-/

namespace A338218.P4847633761800201387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A085697 n + 2).toNat

end

end A338218.P4847633761800201387

/-! ## A338218.P17983523926860664534

`A135665(A363448(n)+5)`
-/

namespace A338218.P17983523926860664534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A363448 n + 5).toNat

end

end A338218.P17983523926860664534

/-! ## A338218.P17303484334506424726

`A118168(A054188(n))`
-/

namespace A338218.P17303484334506424726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A054188 n).toNat

end

end A338218.P17303484334506424726

/-!
# A338220: Numbers k such that the Motzkin number A001006(k) is divisible by 5.

The programs for A338220, the canonical program `A338220.P9611528444237174458` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338220 has offset 1).

The definition of A338220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338220.P9611528444237174458

`eq[0, A258712(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338220

/-- `eq[0, A258712(n)]` -/
def P9611528444237174458.Spec : Prop :=
  ∀ n, (P9611528444237174458.a n : ℤ) = A338220 (n + 1)

theorem P9611528444237174458.correct : P9611528444237174458.Spec := by
  intro n
  simp only [A338220, Nat.add_sub_cancel]

end A338220

/-! ## A338220.P2460153269305719999

`lt[A258712(n), dr(A087960(n))]`
-/

namespace A338220.P2460153269305719999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087960 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338220.P2460153269305719999

namespace A338220

/-- `lt[A258712(n), dr(A087960(n))]` -/
def P2460153269305719999.Spec : Prop :=
  ∀ n, (P2460153269305719999.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P15516624170172918479

`lt[A258712(n), acot(A000124(n))]`
-/

namespace A338220.P15516624170172918479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000124 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338220.P15516624170172918479

namespace A338220

/-- `lt[A258712(n), acot(A000124(n))]` -/
def P15516624170172918479.Spec : Prop :=
  ∀ n, (P15516624170172918479.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P8491538304417405379

`lt[A258712(n), acot(A002148(n))]`
-/

namespace A338220.P8491538304417405379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A002148 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338220.P8491538304417405379

namespace A338220

/-- `lt[A258712(n), acot(A002148(n))]` -/
def P8491538304417405379.Spec : Prop :=
  ∀ n, (P8491538304417405379.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P9996213536745478026

`lt[A258712(n), acot(A017101(n))]`
-/

namespace A338220.P9996213536745478026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A017101 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338220.P9996213536745478026

namespace A338220

/-- `lt[A258712(n), acot(A017101(n))]` -/
def P9996213536745478026.Spec : Prop :=
  ∀ n, (P9996213536745478026.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P13518506028282048937

`lt[A258712(n), acot(A064645(n))]`
-/

namespace A338220.P13518506028282048937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A064645 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338220.P13518506028282048937

namespace A338220

/-- `lt[A258712(n), acot(A064645(n))]` -/
def P13518506028282048937.Spec : Prop :=
  ∀ n, (P13518506028282048937.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P11831324274077629049

`lt[A258712(n), acot(A081611(n))]`
-/

namespace A338220.P11831324274077629049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A081611 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338220.P11831324274077629049

namespace A338220

/-- `lt[A258712(n), acot(A081611(n))]` -/
def P11831324274077629049.Spec : Prop :=
  ∀ n, (P11831324274077629049.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P4843364357514884907

`lt[A258712(n), acot(A276390(n))]`
-/

namespace A338220.P4843364357514884907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A276390 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338220.P4843364357514884907

namespace A338220

/-- `lt[A258712(n), acot(A276390(n))]` -/
def P4843364357514884907.Spec : Prop :=
  ∀ n, (P4843364357514884907.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P6389255133209446655

`lt[A258712(n), acot(A213544(n+1))]`
-/

namespace A338220.P6389255133209446655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A213544 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338220.P6389255133209446655

namespace A338220

/-- `lt[A258712(n), acot(A213544(n+1))]` -/
def P6389255133209446655.Spec : Prop :=
  ∀ n, (P6389255133209446655.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P8010255868374252968

`lt[A258712(n), A008683(3*xor(n, n+1))²!]`
-/

namespace A338220.P8010255868374252968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A008683 (3 * Nat.xor n (n + 1)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338220.P8010255868374252968

namespace A338220

/-- `lt[A258712(n), A008683(3*xor(n, n+1))²!]` -/
def P8010255868374252968.Spec : Prop :=
  ∀ n, (P8010255868374252968.a n : ℤ) = A338220 (n + 1)

end A338220

/-! ## A338220.P12894206040595474137

`lt[A258712(n), acot(A308851(n+1))]`
-/

namespace A338220.P12894206040595474137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A308851 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338220.P12894206040595474137

namespace A338220

/-- `lt[A258712(n), acot(A308851(n+1))]` -/
def P12894206040595474137.Spec : Prop :=
  ∀ n, (P12894206040595474137.a n : ℤ) = A338220 (n + 1)

end A338220

/-!
# A338222: The index of prime(n) in A337182.

The programs for A338222, there is no canonical definition to state claims against.
-/

/-! ## A338222.P1186580140367848738

`lt[A337182(n+1), A089247(A238573(2*n+3))]+1`
-/

namespace A338222.P1186580140367848738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A238573 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A338222.P1186580140367848738

/-!
# A338223: G.f.: (1 / theta_4(x) - 1)^2 / 4, where theta_4() is the Jacobi theta function.

The programs for A338223, there is no canonical definition to state claims against.
-/

/-! ## A338223.P15610037750832691930

`(A001934(n+2)-2*A015128(n+2))/4`
-/

namespace A338223.P15610037750832691930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 (n + 2) - 2 * A015128 (n + 2) : ℚ) / 4

end

end A338223.P15610037750832691930

/-! ## A338223.P2225032078352792395

`A002318(n+2)-A014968(n+2)`
-/

namespace A338223.P2225032078352792395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002318 (n + 2) - A014968 (n + 2)

end

end A338223.P2225032078352792395

/-! ## A338223.P11503542451365507319

`∑[∑[A000196(A326805(n))]]`
-/

namespace A338223.P11503542451365507319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A326805 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338223.P11503542451365507319

/-!
# A338225: a(n) = F(n+3) * F(n+1) + (-1)^n where F(n) = A000045(n) are the Fibonacci numbers.

The programs for A338225, the canonical program `A338225.P14074178058445000266` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338225 has offset 1).

The definition of A338225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338225.P14074178058445000266

`A007598(n+3)+2*(-1)^(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338225

/-- `A007598(n+3)+2*(-1)^(n+1)` -/
def P14074178058445000266.Spec : Prop :=
  ∀ n, P14074178058445000266.a n = A338225 (n + 1)

theorem P14074178058445000266.correct : P14074178058445000266.Spec := by
  intro n
  simp only [A338225, Nat.add_sub_cancel]

end A338225

/-! ## A338225.P3214540771063447186

`ogf((2+7x-3x^2)/(1-2x-2x^2+x^3))`
-/

namespace A338225.P3214540771063447186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7, -3] [1, -2, -2, 1] n

end

end A338225.P3214540771063447186

namespace A338225

/-- `ogf((2+7x-3x^2)/(1-2x-2x^2+x^3))` -/
def P3214540771063447186.Spec : Prop :=
  ∀ n, P3214540771063447186.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P10005761275730893558

`Δ[A226205(n+3)]`
-/

namespace A338225.P10005761275730893558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338225.P10005761275730893558

namespace A338225

/-- `Δ[A226205(n+3)]` -/
def P10005761275730893558.Spec : Prop :=
  ∀ n, P10005761275730893558.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P15738072288032356066

`Δ[abs(A121646(n+3))]`
-/

namespace A338225.P15738072288032356066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121646 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338225.P15738072288032356066

namespace A338225

/-- `Δ[abs(A121646(n+3))]` -/
def P15738072288032356066.Spec : Prop :=
  ∀ n, P15738072288032356066.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P16083459607935658464

`Δ[A195971(2*(n+1))]`
-/

namespace A338225.P16083459607935658464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338225.P16083459607935658464

namespace A338225

/-- `Δ[A195971(2*(n+1))]` -/
def P16083459607935658464.Spec : Prop :=
  ∀ n, P16083459607935658464.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P14265250514530613028

`A341208(n)+a(n-1)` with `a(0)=2`
-/

namespace A338225.P14265250514530613028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A341208 n + a (n - 1)

end

end A338225.P14265250514530613028

namespace A338225

/-- `A341208(n)+a(n-1)` -/
def P14265250514530613028.Spec : Prop :=
  ∀ n, P14265250514530613028.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P4519305278597225935

`A048575(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A338225.P4519305278597225935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A048575 (n + 1) - a (n - 1)

end

end A338225.P4519305278597225935

namespace A338225

/-- `A048575(n+1)-a(n-1)` -/
def P4519305278597225935.Spec : Prop :=
  ∀ n, P4519305278597225935.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P11686935474825613333

`A122367(n+2)-a(n-1)` with `a(0)=2`
-/

namespace A338225.P11686935474825613333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A122367 (n + 2) - a (n - 1)

end

end A338225.P11686935474825613333

namespace A338225

/-- `A122367(n+2)-a(n-1)` -/
def P11686935474825613333.Spec : Prop :=
  ∀ n, P11686935474825613333.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P12446086886719456734

`A001519(n+3)-a(n-1)` with `a(0)=2`
-/

namespace A338225.P12446086886719456734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001519 (n + 3) - a (n - 1)

end

end A338225.P12446086886719456734

namespace A338225

/-- `A001519(n+3)-a(n-1)` -/
def P12446086886719456734.Spec : Prop :=
  ∀ n, P12446086886719456734.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P7777743858326099743

`A000045(2*n+5)-a(n-1)` with `a(0)=2`
-/

namespace A338225.P7777743858326099743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000045 (2 * n + 5) - a (n - 1)

end

end A338225.P7777743858326099743

namespace A338225

/-- `A000045(2*n+5)-a(n-1)` -/
def P7777743858326099743.Spec : Prop :=
  ∀ n, P7777743858326099743.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P11445113796408143657

`Δ[A000045(n+3+n)+a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A338225.P11445113796408143657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000045 (n + 3 + n) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338225.P11445113796408143657

namespace A338225

/-- `Δ[A000045(n+3+n)+a(n-2)]` -/
def P11445113796408143657.Spec : Prop :=
  ∀ n, P11445113796408143657.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P16900008193024213162

`A080144(n)+A010693(n)`
-/

namespace A338225.P16900008193024213162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080144 n + A010693 n

end

end A338225.P16900008193024213162

namespace A338225

/-- `A080144(n)+A010693(n)` -/
def P16900008193024213162.Spec : Prop :=
  ∀ n, P16900008193024213162.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P11374764045321836373

`A000034(n)+A080144(n)+1`
-/

namespace A338225.P11374764045321836373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A080144 n + 1)

end

end A338225.P11374764045321836373

namespace A338225

/-- `A000034(n)+A080144(n)+1` -/
def P11374764045321836373.Spec : Prop :=
  ∀ n, P11374764045321836373.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P7750955730379250503

`A121801(n+1)+A048575(n)`
-/

namespace A338225.P7750955730379250503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121801 (n + 1) + A048575 n

end

end A338225.P7750955730379250503

namespace A338225

/-- `A121801(n+1)+A048575(n)` -/
def P7750955730379250503.Spec : Prop :=
  ∀ n, P7750955730379250503.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P8669753136601677430

`A180664(n+1)+A010674(n)`
-/

namespace A338225.P8669753136601677430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180664 (n + 1) + A010674 n

end

end A338225.P8669753136601677430

namespace A338225

/-- `A180664(n+1)+A010674(n)` -/
def P8669753136601677430.Spec : Prop :=
  ∀ n, P8669753136601677430.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P17232983554631662826

`A192920(n)+A001654(n+2)`
-/

namespace A338225.P17232983554631662826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192920 n + A001654 (n + 2)

end

end A338225.P17232983554631662826

namespace A338225

/-- `A192920(n)+A001654(n+2)` -/
def P17232983554631662826.Spec : Prop :=
  ∀ n, P17232983554631662826.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P9401547583136703462

`A206981(n+1)-A048575(n)`
-/

namespace A338225.P9401547583136703462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206981 (n + 1) - A048575 n

end

end A338225.P9401547583136703462

namespace A338225

/-- `A206981(n+1)-A048575(n)` -/
def P9401547583136703462.Spec : Prop :=
  ∀ n, P9401547583136703462.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P6201801812221712139

`A192921(n+2)+A128533(n)`
-/

namespace A338225.P6201801812221712139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 (n + 2) + A128533 n

end

end A338225.P6201801812221712139

namespace A338225

/-- `A192921(n+2)+A128533(n)` -/
def P6201801812221712139.Spec : Prop :=
  ∀ n, P6201801812221712139.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P12988822419847185463

`A059929(n+2)-A033999(n)`
-/

namespace A338225.P12988822419847185463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (n + 2) - A033999 n

end

end A338225.P12988822419847185463

namespace A338225

/-- `A059929(n+2)-A033999(n)` -/
def P12988822419847185463.Spec : Prop :=
  ∀ n, P12988822419847185463.a n = A338225 (n + 1)

end A338225

/-! ## A338225.P10089562668757097881

`A080144(n)+A188510(n)²+2`
-/

namespace A338225.P10089562668757097881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080144 n + (A188510 n ^ 2 + 2)

end

end A338225.P10089562668757097881

namespace A338225

/-- `A080144(n)+A188510(n)²+2` -/
def P10089562668757097881.Spec : Prop :=
  ∀ n, P10089562668757097881.a n = A338225 (n + 1)

end A338225

/-!
# A338226: a(n) = Sum_{i=0..n-1} i*10^i - Sum_{i=0..n-1} (n-1-i)*10^i.

The programs for A338226, the canonical program `A338226.P18042995807750677098` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338226 has offset 1).

The definition of A338226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338226.P18042995807750677098

`A052245(n)-A014824(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338226

/-- `A052245(n)-A014824(n)` -/
def P18042995807750677098.Spec : Prop :=
  ∀ n, P18042995807750677098.a n = A338226 (n + 1)

theorem P18042995807750677098.correct : P18042995807750677098.Spec := by
  intro n
  simp only [A338226, Nat.add_sub_cancel]

end A338226

/-! ## A338226.P1789920533009544366

`((9*(n+1)-11)*10^(n+1)+9*(n+1)+11)/81`
-/

namespace A338226.P1789920533009544366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 * (n + 1) : ℤ) - 11) * (10 ^ (n + 1) : ℤ) + (9 * (n + 1) + 11 : ℤ) : ℚ) / 81

end

end A338226.P1789920533009544366

namespace A338226

/-- `((9*(n+1)-11)*10^(n+1)+9*(n+1)+11)/81` -/
def P1789920533009544366.Spec : Prop :=
  ∀ n, P1789920533009544366.a n = (A338226 (n + 1) : ℚ)

end A338226

/-! ## A338226.P5920256394578995341

`∑[A033713(n+1)]`
-/

namespace A338226.P5920256394578995341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338226.P5920256394578995341

namespace A338226

/-- `∑[A033713(n+1)]` -/
def P5920256394578995341.Spec : Prop :=
  ∀ n, P5920256394578995341.a n = A338226 (n + 1)

end A338226

/-! ## A338226.P9041755458472543174

`∑[n*10^n]-∑[A002275(n)]`
-/

namespace A338226.P9041755458472543174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A338226.P9041755458472543174

namespace A338226

/-- `∑[n*10^n]-∑[A002275(n)]` -/
def P9041755458472543174.Spec : Prop :=
  ∀ n, P9041755458472543174.a n = A338226 (n + 1)

end A338226

/-! ## A338226.P9405540156128111557

`A105279(n)+10*a(n-1)-n` with `a(0)=0`
-/

namespace A338226.P9405540156128111557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A105279 n + 10 * a (n - 1) - (n : ℤ)

end

end A338226.P9405540156128111557

namespace A338226

/-- `A105279(n)+10*a(n-1)-n` -/
def P9405540156128111557.Spec : Prop :=
  ∀ n, P9405540156128111557.a n = A338226 (n + 1)

end A338226

/-! ## A338226.P16506725920107866528

`a(n-1)+(n+1)*10^n-A000042(n+1)` with `a(0)=0`
-/

namespace A338226.P16506725920107866528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 1) * 10 ^ n : ℤ) - A000042 (n + 1)

end

end A338226.P16506725920107866528

namespace A338226

/-- `a(n-1)+(n+1)*10^n-A000042(n+1)` -/
def P16506725920107866528.Spec : Prop :=
  ∀ n, P16506725920107866528.a n = A338226 (n + 1)

end A338226

/-! ## A338226.P4802148722589109006

`A064617(n+1)-A064616(n+1)`
-/

namespace A338226.P4802148722589109006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064617 (n + 1) - A064616 (n + 1)

end

end A338226.P4802148722589109006

namespace A338226

/-- `A064617(n+1)-A064616(n+1)` -/
def P4802148722589109006.Spec : Prop :=
  ∀ n, P4802148722589109006.a n = A338226 (n + 1)

end A338226

/-!
# A338227: a(n) = x(n) mod floor(sqrt(x(n))), where x(n) = floor((n^2)/2).

The programs for A338227, the canonical program `A338227.P1454774000320878795` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338227 has offset 2).

The definition of A338227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338227.P1454774000320878795

`A007590(n+2)%A049472(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338227

/-- `A007590(n+2)%A049472(n+2)` -/
def P1454774000320878795.Spec : Prop :=
  ∀ n, P1454774000320878795.a n = A338227 (n + 2)

theorem P1454774000320878795.correct : P1454774000320878795.Spec := by
  intro n
  simp only [A338227, Nat.add_sub_cancel]

end A338227

/-! ## A338227.P2448338210186679382

`A001972(2*n+1)%floor(sqrt(A001972(2*n+1)))`
-/

namespace A338227.P2448338210186679382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001972 (2 * n + 1)) (Int.sqrt (A001972 (2 * n + 1)))

end

end A338227.P2448338210186679382

namespace A338227

/-- `A001972(2*n+1)%floor(sqrt(A001972(2*n+1)))` -/
def P2448338210186679382.Spec : Prop :=
  ∀ n, P2448338210186679382.a n = A338227 (n + 2)

end A338227

/-! ## A338227.P8021118325677297938

`∑[A106249(2*n)+1]%A172474(2*(n+2))`
-/

namespace A338227.P8021118325677297938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A172474 (2 * (n + 2)))

end

end A338227.P8021118325677297938

namespace A338227

/-- `∑[A106249(2*n)+1]%A172474(2*(n+2))` -/
def P8021118325677297938.Spec : Prop :=
  ∀ n, P8021118325677297938.a n = A338227 (n + 2)

end A338227

/-! ## A338227.P644013996563747272

`A005843(A087811(n+1))%A172471(A087811(n+1))`
-/

namespace A338227.P644013996563747272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A087811 (n + 1)).toNat) (A172471 (A087811 (n + 1)).toNat)

end

end A338227.P644013996563747272

namespace A338227

/-- `A005843(A087811(n+1))%A172471(A087811(n+1))` -/
def P644013996563747272.Spec : Prop :=
  ∀ n, P644013996563747272.a n = A338227 (n + 2)

end A338227

/-! ## A338227.P9273801498049069803

`floor((n+2)²/2)%A000196(floor((n+2)²/2))`
-/

namespace A338227.P9273801498049069803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n + 2) ^ 2 : ℚ) / 2⌋ (A000196 ⌊((n + 2) ^ 2 : ℚ) / 2⌋.toNat)

end

end A338227.P9273801498049069803

namespace A338227

/-- `floor((n+2)²/2)%A000196(floor((n+2)²/2))` -/
def P9273801498049069803.Spec : Prop :=
  ∀ n, P9273801498049069803.a n = A338227 (n + 2)

end A338227

/-! ## A338227.P14446593275754938040

`A079644(A080476(n+2))`
-/

namespace A338227.P14446593275754938040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079644 (A080476 (n + 2)).toNat

end

end A338227.P14446593275754938040

namespace A338227

/-- `A079644(A080476(n+2))` -/
def P14446593275754938040.Spec : Prop :=
  ∀ n, P14446593275754938040.a n = A338227 (n + 2)

end A338227

/-! ## A338227.P17195354547196048770

`A079644(2*A182531(n+2))`
-/

namespace A338227.P17195354547196048770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079644 (2 * A182531 (n + 2)).toNat

end

end A338227.P17195354547196048770

namespace A338227

/-- `A079644(2*A182531(n+2))` -/
def P17195354547196048770.Spec : Prop :=
  ∀ n, P17195354547196048770.a n = A338227 (n + 2)

end A338227

/-! ## A338227.P1571892804073713776

`A001972(2*n+1)%A137735(A001972(2*n+1))`
-/

namespace A338227.P1571892804073713776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001972 (2 * n + 1)) (A137735 (A001972 (2 * n + 1)).toNat)

end

end A338227.P1571892804073713776

namespace A338227

/-- `A001972(2*n+1)%A137735(A001972(2*n+1))` -/
def P1571892804073713776.Spec : Prop :=
  ∀ n, P1571892804073713776.a n = A338227 (n + 2)

end A338227

/-! ## A338227.P2267813829044347548

`A004526((n+2)²)%A049472(n+2)`
-/

namespace A338227.P2267813829044347548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 ((n + 2) ^ 2)) (A049472 (n + 2))

end

end A338227.P2267813829044347548

namespace A338227

/-- `A004526((n+2)²)%A049472(n+2)` -/
def P2267813829044347548.Spec : Prop :=
  ∀ n, P2267813829044347548.a n = A338227 (n + 2)

theorem P2267813829044347548.correct : P2267813829044347548.Spec := by
  intro n
  simp only [A338227, Nat.add_sub_cancel, A338227.P2267813829044347548.a, A338227.P1454774000320878795.a, A004526, A004526.P10084182425416171735.a, A007590, A007590.P9530274664467440414.a, A049472, A049472.P13396613520496134978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A338227

/-!
# A338228: Number of numbers less than or equal to n whose square does not divide n.

The programs for A338228, the canonical program `A338228.P12662377140114855037` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338228 has offset 1).

The definition of A338228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338228.P12662377140114855037

`n+1-A000005(sqrt((n+1)/A007913(n+1)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338228

/-- `n+1-A000005(sqrt((n+1)/A007913(n+1)))` -/
def P12662377140114855037.Spec : Prop :=
  ∀ n, P12662377140114855037.a n = A338228 (n + 1)

theorem P12662377140114855037.correct : P12662377140114855037.Spec := by
  intro n
  simp only [A338228, Nat.add_sub_cancel]

end A338228

/-! ## A338228.P15797432070093704889

`1-∏{e}[n+1, floor(#/2)+1]+n`
-/

namespace A338228.P15797432070093704889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) + (n : ℤ)

end

end A338228.P15797432070093704889

namespace A338228

/-- `1-∏{e}[n+1, floor(#/2)+1]+n` -/
def P15797432070093704889.Spec : Prop :=
  ∀ n, P15797432070093704889.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P9465397021741070599

`n-A071325(n+1)`
-/

namespace A338228.P9465397021741070599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071325 (n + 1)

end

end A338228.P9465397021741070599

namespace A338228

/-- `n-A071325(n+1)` -/
def P9465397021741070599.Spec : Prop :=
  ∀ n, P9465397021741070599.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P296800848449871363

`1-A046951(n+1)+n`
-/

namespace A338228.P296800848449871363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046951 (n + 1) + (n : ℤ)

end

end A338228.P296800848449871363

namespace A338228

/-- `1-A046951(n+1)+n` -/
def P296800848449871363.Spec : Prop :=
  ∀ n, P296800848449871363.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P392975597672709776

`n-∑{e}[A293515(n+1), #]`
-/

namespace A338228.P392975597672709776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A338228.P392975597672709776

namespace A338228

/-- `n-∑{e}[A293515(n+1), #]` -/
def P392975597672709776.Spec : Prop :=
  ∀ n, P392975597672709776.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P6076174918961626849

`n-∑{e}[A294874(n+1), #]`
-/

namespace A338228.P6076174918961626849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A338228.P6076174918961626849

namespace A338228

/-- `n-∑{e}[A294874(n+1), #]` -/
def P6076174918961626849.Spec : Prop :=
  ∀ n, P6076174918961626849.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P9951021845568527521

`1-∑{d}[n+1, A000005(#)%2]+n`
-/

namespace A338228.P9951021845568527521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000005 d) 2 + (n : ℤ)

end

end A338228.P9951021845568527521

namespace A338228

/-- `1-∑{d}[n+1, A000005(#)%2]+n` -/
def P9951021845568527521.Spec : Prop :=
  ∀ n, P9951021845568527521.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P8425111242071215334

`A338233(n+1)+A057427(n)`
-/

namespace A338228.P8425111242071215334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338233 (n + 1) + A057427 n

end

end A338228.P8425111242071215334

namespace A338228

/-- `A338233(n+1)+A057427(n)` -/
def P8425111242071215334.Spec : Prop :=
  ∀ n, P8425111242071215334.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P8093705005408163050

`n-A032741(A000188(n+1))`
-/

namespace A338228.P8093705005408163050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A032741 (A000188 (n + 1)).toNat

end

end A338228.P8093705005408163050

namespace A338228

/-- `n-A032741(A000188(n+1))` -/
def P8093705005408163050.Spec : Prop :=
  ∀ n, P8093705005408163050.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P15704728612792616504

`A338233(n+1)-A057428(n)`
-/

namespace A338228.P15704728612792616504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338233 (n + 1) - A057428 n

end

end A338228.P15704728612792616504

namespace A338228

/-- `A338233(n+1)-A057428(n)` -/
def P15704728612792616504.Spec : Prop :=
  ∀ n, P15704728612792616504.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P17772238850689245633

`A056595(n+1)+A049820(n+1)`
-/

namespace A338228.P17772238850689245633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) + A049820 (n + 1)

end

end A338228.P17772238850689245633

namespace A338228

/-- `A056595(n+1)+A049820(n+1)` -/
def P17772238850689245633.Spec : Prop :=
  ∀ n, P17772238850689245633.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P13549008687460780293

`A293575(n+1)+A062968(n+1)`
-/

namespace A338228.P13549008687460780293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293575 (n + 1) + A062968 (n + 1)

end

end A338228.P13549008687460780293

namespace A338228

/-- `A293575(n+1)+A062968(n+1)` -/
def P13549008687460780293.Spec : Prop :=
  ∀ n, P13549008687460780293.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P6977318901500359410

`A262202(n+1)+n-A072670(n)`
-/

namespace A338228.P6977318901500359410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (n + 1) + ((n : ℤ) - A072670 n)

end

end A338228.P6977318901500359410

namespace A338228

/-- `A262202(n+1)+n-A072670(n)` -/
def P6977318901500359410.Spec : Prop :=
  ∀ n, P6977318901500359410.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P7971321712652661408

`A338233(n+1)+n/A028310(n)`
-/

namespace A338228.P7971321712652661408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338233 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A338228.P7971321712652661408

namespace A338228

/-- `A338233(n+1)+n/A028310(n)` -/
def P7971321712652661408.Spec : Prop :=
  ∀ n, P7971321712652661408.a n = (A338228 (n + 1) : ℚ)

end A338228

/-! ## A338228.P7846122170268861521

`A049240(n+1)-A293234(n+1)+n`
-/

namespace A338228.P7846122170268861521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) - A293234 (n + 1) + (n : ℤ)

end

end A338228.P7846122170268861521

namespace A338228

/-- `A049240(n+1)-A293234(n+1)+n` -/
def P7846122170268861521.Spec : Prop :=
  ∀ n, P7846122170268861521.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P3594440345745961702

`n-(A347992(n+1)+A293575(n+1))`
-/

namespace A338228.P3594440345745961702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A347992 (n + 1) + A293575 (n + 1))

end

end A338228.P3594440345745961702

namespace A338228

/-- `n-(A347992(n+1)+A293575(n+1))` -/
def P3594440345745961702.Spec : Prop :=
  ∀ n, P3594440345745961702.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P12158736834258232304

`1-(A056626(n+1)+A056624(n+1))+n`
-/

namespace A338228.P12158736834258232304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A056626 (n + 1) + A056624 (n + 1)) + (n : ℤ)

end

end A338228.P12158736834258232304

namespace A338228

/-- `1-(A056626(n+1)+A056624(n+1))+n` -/
def P12158736834258232304.Spec : Prop :=
  ∀ n, P12158736834258232304.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P12025438144962797211

`n-A001222(A294874(n+1))`
-/

namespace A338228.P12025438144962797211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (A294874 (n + 1)).toNat

end

end A338228.P12025438144962797211

namespace A338228

/-- `n-A001222(A294874(n+1))` -/
def P12025438144962797211.Spec : Prop :=
  ∀ n, P12025438144962797211.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P271181301814948931

`n-A001222(A293515(n+1))`
-/

namespace A338228.P271181301814948931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (A293515 (n + 1)).toNat

end

end A338228.P271181301814948931

namespace A338228

/-- `n-A001222(A293515(n+1))` -/
def P271181301814948931.Spec : Prop :=
  ∀ n, P271181301814948931.a n = A338228 (n + 1)

end A338228

/-! ## A338228.P11454646045685783763

`A008619(2*n)-A046951(A008619(2*n))`
-/

namespace A338228.P11454646045685783763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A046951 (A008619 (2 * n)).toNat

end

end A338228.P11454646045685783763

namespace A338228

/-- `A008619(2*n)-A046951(A008619(2*n))` -/
def P11454646045685783763.Spec : Prop :=
  ∀ n, P11454646045685783763.a n = A338228 (n + 1)

end A338228

/-!
# A338229: Number of ternary strings of length n that contain at least one 0 and at most two 1's.

The programs for A338229, the canonical program `A338229.P6155242186780911881` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338229 has offset 0).

The definition of A338229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338229.P6155242186780911881

`2^n+n*2^(n-1)+C(n, 2)*2^(n-2)-C(n, 2)-n-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338229

/-- `2^n+n*2^(n-1)+C(n, 2)*2^(n-2)-C(n, 2)-n-1` -/
def P6155242186780911881.Spec : Prop :=
  ∀ n, P6155242186780911881.a n = (A338229 n : ℚ)

end A338229

/-! ## A338229.P13917878747455925273

`A072863(n)-(∑[n]+1)`
-/

namespace A338229.P13917878747455925273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A338229.P13917878747455925273

namespace A338229

/-- `A072863(n)-(∑[n]+1)` -/
def P13917878747455925273.Spec : Prop :=
  ∀ n, P13917878747455925273.a n = A338229 n

end A338229

/-! ## A338229.P8090097836694856168

`∑[A190050(n)-n]-1`
-/

namespace A338229.P8090097836694856168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A338229.P8090097836694856168

namespace A338229

/-- `∑[A190050(n)-n]-1` -/
def P8090097836694856168.Spec : Prop :=
  ∀ n, P8090097836694856168.a n = A338229 n

end A338229

/-! ## A338229.P17863272874043466899

`A002662(n)+∑[A049611(n)]`
-/

namespace A338229.P17863272874043466899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338229.P17863272874043466899

namespace A338229

/-- `A002662(n)+∑[A049611(n)]` -/
def P17863272874043466899.Spec : Prop :=
  ∀ n, P17863272874043466899.a n = A338229 n

end A338229

/-! ## A338229.P15622811348422544807

`A000225(n)+∑[A049611(n)-n]`
-/

namespace A338229.P15622811348422544807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338229.P15622811348422544807

namespace A338229

/-- `A000225(n)+∑[A049611(n)-n]` -/
def P15622811348422544807.Spec : Prop :=
  ∀ n, P15622811348422544807.a n = A338229 n

end A338229

/-! ## A338229.P11427432459723010105

`A000096(n)+A072863(n)-(n+1)²`
-/

namespace A338229.P11427432459723010105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (A072863 n - ((n + 1) ^ 2 : ℤ))

end

end A338229.P11427432459723010105

namespace A338229

/-- `A000096(n)+A072863(n)-(n+1)²` -/
def P11427432459723010105.Spec : Prop :=
  ∀ n, P11427432459723010105.a n = A338229 n

end A338229

/-! ## A338229.P15921444700126064853

`A001787(n)+A081908(n)-A000124(n)`
-/

namespace A338229.P15921444700126064853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A081908 n - A000124 n)

end

end A338229.P15921444700126064853

namespace A338229

/-- `A001787(n)+A081908(n)-A000124(n)` -/
def P15921444700126064853.Spec : Prop :=
  ∀ n, P15921444700126064853.a n = A338229 n

end A338229

/-! ## A338229.P12413482604584847043

`∑[A049611(n)+A000295(n)]-A000295(n)`
-/

namespace A338229.P12413482604584847043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000295 n

end

end A338229.P12413482604584847043

namespace A338229

/-- `∑[A049611(n)+A000295(n)]-A000295(n)` -/
def P12413482604584847043.Spec : Prop :=
  ∀ n, P12413482604584847043.a n = A338229 n

end A338229

/-! ## A338229.P9139542252022872941

`A000125(n)+A072863(n)-A000125(n+1)`
-/

namespace A338229.P9139542252022872941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (A072863 n - A000125 (n + 1))

end

end A338229.P9139542252022872941

namespace A338229

/-- `A000125(n)+A072863(n)-A000125(n+1)` -/
def P9139542252022872941.Spec : Prop :=
  ∀ n, P9139542252022872941.a n = A338229 n

end A338229

/-! ## A338229.P2974413091246852940

`A004006(n)+A072863(n)-A004006(n+1)`
-/

namespace A338229.P2974413091246852940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (A072863 n - A004006 (n + 1))

end

end A338229.P2974413091246852940

namespace A338229

/-- `A004006(n)+A072863(n)-A004006(n+1)` -/
def P2974413091246852940.Spec : Prop :=
  ∀ n, P2974413091246852940.a n = A338229 n

end A338229

/-! ## A338229.P3663594083275892273

`A011826(n+1)+A072863(n)-A011826(n+2)`
-/

namespace A338229.P3663594083275892273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (n + 1) + (A072863 n - A011826 (n + 2))

end

end A338229.P3663594083275892273

namespace A338229

/-- `A011826(n+1)+A072863(n)-A011826(n+2)` -/
def P3663594083275892273.Spec : Prop :=
  ∀ n, P3663594083275892273.a n = A338229 n

end A338229

/-! ## A338229.P9258513150230299077

`Δ[A081908(n)-A000125(n)]`
-/

namespace A338229.P9258513150230299077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n - A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338229.P9258513150230299077

namespace A338229

/-- `Δ[A081908(n)-A000125(n)]` -/
def P9258513150230299077.Spec : Prop :=
  ∀ n, P9258513150230299077.a n = A338229 n

end A338229

/-! ## A338229.P10167767972410414734

`Δ[A081908(n)]-A000124(n)`
-/

namespace A338229.P10167767972410414734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000124 n

end

end A338229.P10167767972410414734

namespace A338229

/-- `Δ[A081908(n)]-A000124(n)` -/
def P10167767972410414734.Spec : Prop :=
  ∀ n, P10167767972410414734.a n = A338229 n

end A338229

/-! ## A338229.P13177169807226201113

`Δ[A081908(n)-A004006(n)]`
-/

namespace A338229.P13177169807226201113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n - A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338229.P13177169807226201113

namespace A338229

/-- `Δ[A081908(n)-A004006(n)]` -/
def P13177169807226201113.Spec : Prop :=
  ∀ n, P13177169807226201113.a n = A338229 n

end A338229

/-! ## A338229.P11063146531757637236

`Δ[A338232(n)]-A338230(n)`
-/

namespace A338229.P11063146531757637236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A338230 n

end

end A338229.P11063146531757637236

namespace A338229

/-- `Δ[A338232(n)]-A338230(n)` -/
def P11063146531757637236.Spec : Prop :=
  ∀ n, P11063146531757637236.a n = A338229 n

end A338229

/-! ## A338229.P961788216187940660

`A081908(n+1)-(A081908(n)+A000124(n))`
-/

namespace A338229.P961788216187940660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 (n + 1) - (A081908 n + A000124 n)

end

end A338229.P961788216187940660

namespace A338229

/-- `A081908(n+1)-(A081908(n)+A000124(n))` -/
def P961788216187940660.Spec : Prop :=
  ∀ n, P961788216187940660.a n = A338229 n

end A338229

/-! ## A338229.P17285488516710074141

`A338232(n+1)-(A338232(n)+A338230(n))`
-/

namespace A338229.P17285488516710074141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338232 (n + 1) - (A338232 n + A338230 n)

end

end A338229.P17285488516710074141

namespace A338229

/-- `A338232(n+1)-(A338232(n)+A338230(n))` -/
def P17285488516710074141.Spec : Prop :=
  ∀ n, P17285488516710074141.a n = A338229 n

end A338229

/-!
# A338230: Number of ternary strings of length n that contain at least two 0's and at most one 1.

The programs for A338230, the canonical program `A338230.P6531987429889146362` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338230 has offset 0).

The definition of A338230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338230.P6531987429889146362

`2^n+n*2^(n-1)-2*C(n, 2)-2*n-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338230

/-- `2^n+n*2^(n-1)-2*C(n, 2)-2*n-1` -/
def P6531987429889146362.Spec : Prop :=
  ∀ n, P6531987429889146362.a n = (A338230 n : ℚ)

end A338230

/-! ## A338230.P16042435307600065824

`2^n+n*2^(n-1)-(n²-n)-2*n-1`
-/

namespace A338230.P16042435307600065824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) - (2 * n : ℚ) - 1

end

end A338230.P16042435307600065824

namespace A338230

/-- `2^n+n*2^(n-1)-(n²-n)-2*n-1` -/
def P16042435307600065824.Spec : Prop :=
  ∀ n, P16042435307600065824.a n = (A338230 n : ℚ)

end A338230

/-! ## A338230.P393127529475680699

`∑[A045623(n)-A004277(n)]`
-/

namespace A338230.P393127529475680699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338230.P393127529475680699

namespace A338230

/-- `∑[A045623(n)-A004277(n)]` -/
def P393127529475680699.Spec : Prop :=
  ∀ n, P393127529475680699.a n = A338230 n

end A338230

/-! ## A338230.P6156669577504884627

`∑[A045623(n)-record[A005131(n)]]`
-/

namespace A338230.P6156669577504884627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338230.P6156669577504884627

namespace A338230

/-- `∑[A045623(n)-record[A005131(n)]]` -/
def P6156669577504884627.Spec : Prop :=
  ∀ n, P6156669577504884627.a n = A338230 n

end A338230

/-! ## A338230.P2414154111517090171

`∑[A045623(n)+n-A008486(n)]`
-/

namespace A338230.P2414154111517090171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + ((n : ℤ) - A008486 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338230.P2414154111517090171

namespace A338230

/-- `∑[A045623(n)+n-A008486(n)]` -/
def P2414154111517090171.Spec : Prop :=
  ∀ n, P2414154111517090171.a n = A338230 n

end A338230

/-! ## A338230.P14481201407352958112

`Δ[A005183(n)-A006527(n)]`
-/

namespace A338230.P14481201407352958112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n - A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338230.P14481201407352958112

namespace A338230

/-- `Δ[A005183(n)-A006527(n)]` -/
def P14481201407352958112.Spec : Prop :=
  ∀ n, P14481201407352958112.a n = A338230 n

end A338230

/-! ## A338230.P5806185493389147976

`∑[A045623(n)-A000267(n²)]`
-/

namespace A338230.P5806185493389147976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A000267 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338230.P5806185493389147976

namespace A338230

/-- `∑[A045623(n)-A000267(n²)]` -/
def P5806185493389147976.Spec : Prop :=
  ∀ n, P5806185493389147976.a n = A338230 n

end A338230

/-!
# A338231: Sum of the numbers less than or equal to n whose square does not divide n.

The programs for A338231, the canonical program `A338231.P1801090512783866050` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338231 has offset 1).

The definition of A338231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338231.P1801090512783866050

`A000217(n+1)-A000203(sqrt((n+1)/A007913(n+1)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338231

/-- `A000217(n+1)-A000203(sqrt((n+1)/A007913(n+1)))` -/
def P1801090512783866050.Spec : Prop :=
  ∀ n, P1801090512783866050.a n = A338231 (n + 1)

theorem P1801090512783866050.correct : P1801090512783866050.Spec := by
  intro n
  simp only [A338231, Nat.add_sub_cancel]

end A338231

/-! ## A338231.P3611618206605161586

`∑[n+1]-A069290(n+1)`
-/

namespace A338231.P3611618206605161586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A069290 (n + 1)

end

end A338231.P3611618206605161586

namespace A338231

/-- `∑[n+1]-A069290(n+1)` -/
def P3611618206605161586.Spec : Prop :=
  ∀ n, P3611618206605161586.a n = A338231 (n + 1)

end A338231

/-! ## A338231.P6409623322495139403

`A338234(n+1)+ceil(sqrt(∑[2*n]))`
-/

namespace A338231.P6409623322495139403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338234 (n + 1) + ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A338231.P6409623322495139403

namespace A338231

/-- `A338234(n+1)+ceil(sqrt(∑[2*n]))` -/
def P6409623322495139403.Spec : Prop :=
  ∀ n, P6409623322495139403.a n = A338231 (n + 1)

end A338231

/-! ## A338231.P6068291734137875870

`A345320(n+1)+A024816(n+1)`
-/

namespace A338231.P6068291734137875870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345320 (n + 1) + A024816 (n + 1)

end

end A338231.P6068291734137875870

namespace A338231

/-- `A345320(n+1)+A024816(n+1)` -/
def P6068291734137875870.Spec : Prop :=
  ∀ n, P6068291734137875870.a n = A338231 (n + 1)

end A338231

/-! ## A338231.P15836067668307532678

`A338234(n+1)+A057427(n)+n`
-/

namespace A338231.P15836067668307532678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338234 (n + 1) + A057427 n + (n : ℤ)

end

end A338231.P15836067668307532678

namespace A338231

/-- `A338234(n+1)+A057427(n)+n` -/
def P15836067668307532678.Spec : Prop :=
  ∀ n, P15836067668307532678.a n = A338231 (n + 1)

end A338231

/-! ## A338231.P2037728533800957267

`A000124(n)-A069290(n+1)+n`
-/

namespace A338231.P2037728533800957267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A069290 (n + 1) + (n : ℤ)

end

end A338231.P2037728533800957267

namespace A338231

/-- `A000124(n)-A069290(n+1)+n` -/
def P2037728533800957267.Spec : Prop :=
  ∀ n, P2037728533800957267.a n = A338231 (n + 1)

end A338231

/-! ## A338231.P9422701796078399342

`∑[n+1]-A000203(A000188(n+1))`
-/

namespace A338231.P9422701796078399342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000203 (A000188 (n + 1)).toNat

end

end A338231.P9422701796078399342

namespace A338231

/-- `∑[n+1]-A000203(A000188(n+1))` -/
def P9422701796078399342.Spec : Prop :=
  ∀ n, P9422701796078399342.a n = A338231 (n + 1)

end A338231

/-! ## A338231.P372322196651418875

`A000217(n+1)-∑{d}[A000188(n+1), #]`
-/

namespace A338231.P372322196651418875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A338231.P372322196651418875

namespace A338231

/-- `A000217(n+1)-∑{d}[A000188(n+1), #]` -/
def P372322196651418875.Spec : Prop :=
  ∀ n, P372322196651418875.a n = A338231 (n + 1)

end A338231

/-! ## A338231.P15966976567579384633

`∑[n+1]-A333844((n+1)²)`
-/

namespace A338231.P15966976567579384633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A333844 ((n + 1) ^ 2)

end

end A338231.P15966976567579384633

namespace A338231

/-- `∑[n+1]-A333844((n+1)²)` -/
def P15966976567579384633.Spec : Prop :=
  ∀ n, P15966976567579384633.a n = A338231 (n + 1)

end A338231

/-!
# A338232: Number of ternary strings of length n that contain at least two 0's and at most two 1's.

The programs for A338232, the canonical program `A338232.P7779832538727840322` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338232 has offset 0).

The definition of A338232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338232.P7779832538727840322

`A342404(n)+A338230(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338232

/-- `A342404(n)+A338230(n)` -/
def P7779832538727840322.Spec : Prop :=
  ∀ n, P7779832538727840322.a n = A338232 n

theorem P7779832538727840322.correct : P7779832538727840322.Spec := by
  intro n
  simp only [A338232]

end A338232

/-! ## A338232.P10959162182300157091

`A066368(n)+A342404(n)-A002061(n)`
-/

namespace A338232.P10959162182300157091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 n + (A342404 n - A002061 n)

end

end A338232.P10959162182300157091

namespace A338232

/-- `A066368(n)+A342404(n)-A002061(n)` -/
def P10959162182300157091.Spec : Prop :=
  ∀ n, P10959162182300157091.a n = A338232 n

end A338232

/-! ## A338232.P4802209817835198468

`A047859(n)+A342404(n)-A131924(n)`
-/

namespace A338232.P4802209817835198468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n + (A342404 n - A131924 n)

end

end A338232.P4802209817835198468

namespace A338232

/-- `A047859(n)+A342404(n)-A131924(n)` -/
def P4802209817835198468.Spec : Prop :=
  ∀ n, P4802209817835198468.a n = A338232 n

end A338232

/-! ## A338232.P11226329110714868692

`A215149(n)+A342404(n)-A071099(n)`
-/

namespace A338232.P11226329110714868692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215149 n + (A342404 n - A071099 n)

end

end A338232.P11226329110714868692

namespace A338232

/-- `A215149(n)+A342404(n)-A071099(n)` -/
def P11226329110714868692.Spec : Prop :=
  ∀ n, P11226329110714868692.a n = A338232 n

end A338232

/-! ## A338232.P2048457905133637210

`Δ[A081908(n)-A037255(n)]`
-/

namespace A338232.P2048457905133637210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n - A037255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338232.P2048457905133637210

namespace A338232

/-- `Δ[A081908(n)-A037255(n)]` -/
def P2048457905133637210.Spec : Prop :=
  ∀ n, P2048457905133637210.a n = A338232 n

end A338232

/-! ## A338232.P6530816941002263742

`A383343(n)-A345954(n)`
-/

namespace A338232.P6530816941002263742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383343 n - A345954 n

end

end A338232.P6530816941002263742

namespace A338232

/-- `A383343(n)-A345954(n)` -/
def P6530816941002263742.Spec : Prop :=
  ∀ n, P6530816941002263742.a n = A338232 n

end A338232

/-!
# A338233: Number of numbers less than n whose square does not divide n.

The programs for A338233, the canonical program `A338233.P6493359358101702297` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338233 has offset 1).

The definition of A338233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338233.P8398237493037023778

`n-A046951(n+1)%(n+1)`
-/

namespace A338233.P8398237493037023778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A046951 (n + 1)) (n + 1 : ℤ)

end

end A338233.P8398237493037023778

namespace A338233

/-- `n-A046951(n+1)%(n+1)` -/
def P8398237493037023778.Spec : Prop :=
  ∀ n, P8398237493037023778.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P17153680120429095892

`(n-A071325(n+1)-1)%(n+1)`
-/

namespace A338233.P17153680120429095892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A071325 (n + 1) - 1) (n + 1 : ℤ)

end

end A338233.P17153680120429095892

namespace A338233

/-- `(n-A071325(n+1)-1)%(n+1)` -/
def P17153680120429095892.Spec : Prop :=
  ∀ n, P17153680120429095892.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P6493359358101702297

`n-∏{e}[n+1, A008619(#)]%(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338233

/-- `n-∏{e}[n+1, A008619(#)]%(n+1)` -/
def P6493359358101702297.Spec : Prop :=
  ∀ n, P6493359358101702297.a n = A338233 (n + 1)

theorem P6493359358101702297.correct : P6493359358101702297.Spec := by
  intro n
  simp only [A338233, Nat.add_sub_cancel]

end A338233

/-! ## A338233.P11789440175735553386

`A338228(n+1)+A057428(n)`
-/

namespace A338233.P11789440175735553386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (n + 1) + A057428 n

end

end A338233.P11789440175735553386

namespace A338233

/-- `A338228(n+1)+A057428(n)` -/
def P11789440175735553386.Spec : Prop :=
  ∀ n, P11789440175735553386.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P9704931584551650375

`A028310(n)-A046951(n+1)`
-/

namespace A338233.P9704931584551650375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A046951 (n + 1)

end

end A338233.P9704931584551650375

namespace A338233

/-- `A028310(n)-A046951(n+1)` -/
def P9704931584551650375.Spec : Prop :=
  ∀ n, P9704931584551650375.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P515376505045707651

`A338228(n+1)-A057427(n)`
-/

namespace A338233.P515376505045707651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (n + 1) - A057427 n

end

end A338233.P515376505045707651

namespace A338233

/-- `A338228(n+1)-A057427(n)` -/
def P515376505045707651.Spec : Prop :=
  ∀ n, P515376505045707651.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P16502776714834122748

`A028310(n)-(A071325(n+1)+1)`
-/

namespace A338233.P16502776714834122748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (A071325 (n + 1) + 1)

end

end A338233.P16502776714834122748

namespace A338233

/-- `A028310(n)-(A071325(n+1)+1)` -/
def P16502776714834122748.Spec : Prop :=
  ∀ n, P16502776714834122748.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P9138161930778978700

`n-A046951(n+1)*A057427(n)`
-/

namespace A338233.P9138161930778978700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A046951 (n + 1) * A057427 n

end

end A338233.P9138161930778978700

namespace A338233

/-- `n-A046951(n+1)*A057427(n)` -/
def P9138161930778978700.Spec : Prop :=
  ∀ n, P9138161930778978700.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P600941510585505941

`n-A000005(A000188(n+1))%(n+1)`
-/

namespace A338233.P600941510585505941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A000005 (A000188 (n + 1)).toNat) (n + 1 : ℤ)

end

end A338233.P600941510585505941

namespace A338233

/-- `n-A000005(A000188(n+1))%(n+1)` -/
def P600941510585505941.Spec : Prop :=
  ∀ n, P600941510585505941.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P18144141780353660413

`A028310(n)-A000005(A000188(n+1))`
-/

namespace A338233.P18144141780353660413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A000005 (A000188 (n + 1)).toNat

end

end A338233.P18144141780353660413

namespace A338233

/-- `A028310(n)-A000005(A000188(n+1))` -/
def P18144141780353660413.Spec : Prop :=
  ∀ n, P18144141780353660413.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P15739239616599090041

`A338228(n+1)-A001222(A006530(n+1))`
-/

namespace A338233.P15739239616599090041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (n + 1) - A001222 (A006530 (n + 1)).toNat

end

end A338233.P15739239616599090041

namespace A338233

/-- `A338228(n+1)-A001222(A006530(n+1))` -/
def P15739239616599090041.Spec : Prop :=
  ∀ n, P15739239616599090041.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P6974594263979050952

`n-A001221(A034444(n+1))*A046951(n+1)`
-/

namespace A338233.P6974594263979050952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001221 (A034444 (n + 1)).toNat * A046951 (n + 1)

end

end A338233.P6974594263979050952

namespace A338233

/-- `n-A001221(A034444(n+1))*A046951(n+1)` -/
def P6974594263979050952.Spec : Prop :=
  ∀ n, P6974594263979050952.a n = A338233 (n + 1)

end A338233

/-! ## A338233.P12478271832847019604

`A065033(2*n)-A046951(n+1)`
-/

namespace A338233.P12478271832847019604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A046951 (n + 1)

end

end A338233.P12478271832847019604

namespace A338233

/-- `A065033(2*n)-A046951(n+1)` -/
def P12478271832847019604.Spec : Prop :=
  ∀ n, P12478271832847019604.a n = A338233 (n + 1)

end A338233

/-!
# A338234: Sum of the numbers less than n whose square does not divide n.

The programs for A338234, the canonical program `A338234.P15734799249778123728` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338234 has offset 1).

The definition of A338234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338234.P15734799249778123728

`A338231(n+1)-(n+1)%Δ[n²]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338234

/-- `A338231(n+1)-(n+1)%Δ[n²]` -/
def P15734799249778123728.Spec : Prop :=
  ∀ n, P15734799249778123728.a n = A338234 (n + 1)

theorem P15734799249778123728.correct : P15734799249778123728.Spec := by
  intro n
  simp only [A338234, Nat.add_sub_cancel]

end A338234

/-! ## A338234.P3790888326906884906

`A179865(n+1)-A069290(n+1)`
-/

namespace A338234.P3790888326906884906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) - A069290 (n + 1)

end

end A338234.P3790888326906884906

namespace A338234

/-- `A179865(n+1)-A069290(n+1)` -/
def P3790888326906884906.Spec : Prop :=
  ∀ n, P3790888326906884906.a n = A338234 (n + 1)

end A338234

/-! ## A338234.P843377073987214254

`A338231(n+1)-A087156(n+1)`
-/

namespace A338234.P843377073987214254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338231 (n + 1) - A087156 (n + 1)

end

end A338234.P843377073987214254

namespace A338234

/-- `A338231(n+1)-A087156(n+1)` -/
def P843377073987214254.Spec : Prop :=
  ∀ n, P843377073987214254.a n = A338234 (n + 1)

end A338234

/-! ## A338234.P6769893965832807154

`∑[n]-A069290(n+1)%A002522(n)`
-/

namespace A338234.P6769893965832807154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (A069290 (n + 1)) (A002522 n)

end

end A338234.P6769893965832807154

namespace A338234

/-- `∑[n]-A069290(n+1)%A002522(n)` -/
def P6769893965832807154.Spec : Prop :=
  ∀ n, P6769893965832807154.a n = A338234 (n + 1)

end A338234

/-! ## A338234.P2518037876376901463

`∑[n]-A000203(A000188(n+1))%(n+1)`
-/

namespace A338234.P2518037876376901463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (A000203 (A000188 (n + 1)).toNat) (n + 1 : ℤ)

end

end A338234.P2518037876376901463

namespace A338234

/-- `∑[n]-A000203(A000188(n+1))%(n+1)` -/
def P2518037876376901463.Spec : Prop :=
  ∀ n, P2518037876376901463.a n = A338234 (n + 1)

end A338234

/-! ## A338234.P15092021945268735195

`A179865(n+1)-A000203(A000188(n+1))`
-/

namespace A338234.P15092021945268735195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) - A000203 (A000188 (n + 1)).toNat

end

end A338234.P15092021945268735195

namespace A338234

/-- `A179865(n+1)-A000203(A000188(n+1))` -/
def P15092021945268735195.Spec : Prop :=
  ∀ n, P15092021945268735195.a n = A338234 (n + 1)

end A338234

/-! ## A338234.P15930314007942201985

`A008683((n+1)²)-(n+1-A338231(n+1))`
-/

namespace A338234.P15930314007942201985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) - ((n + 1 : ℤ) - A338231 (n + 1))

end

end A338234.P15930314007942201985

namespace A338234

/-- `A008683((n+1)²)-(n+1-A338231(n+1))` -/
def P15930314007942201985.Spec : Prop :=
  ∀ n, P15930314007942201985.a n = A338234 (n + 1)

end A338234

/-!
# A338236: Number of numbers less than or equal to sqrt(n) whose square does not divide n.

The programs for A338236, the canonical program `A338236.P4454191647509277163` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338236 has offset 1).

The definition of A338236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338236.P4454191647509277163

`A000196(n+1)-A046951(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338236

/-- `A000196(n+1)-A046951(n+1)` -/
def P4454191647509277163.Spec : Prop :=
  ∀ n, P4454191647509277163.a n = A338236 (n + 1)

theorem P4454191647509277163.correct : P4454191647509277163.Spec := by
  intro n
  simp only [A338236, Nat.add_sub_cancel]

end A338236

/-! ## A338236.P1112437607074525862

`A000196(n+1)-A000005(sqrt((n+1)/A007913(n+1)))`
-/

namespace A338236.P1112437607074525862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A000005 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

end

end A338236.P1112437607074525862

namespace A338236

/-- `A000196(n+1)-A000005(sqrt((n+1)/A007913(n+1)))` -/
def P1112437607074525862.Spec : Prop :=
  ∀ n, P1112437607074525862.a n = A338236 (n + 1)

end A338236

/-! ## A338236.P6150493970794570763

`A000196(n)-A293234(n+1)`
-/

namespace A338236.P6150493970794570763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A293234 (n + 1)

end

end A338236.P6150493970794570763

namespace A338236

/-- `A000196(n)-A293234(n+1)` -/
def P6150493970794570763.Spec : Prop :=
  ∀ n, P6150493970794570763.a n = A338236 (n + 1)

end A338236

/-! ## A338236.P17761998206444209949

`A262202(n+1)+A236627(n+1)`
-/

namespace A338236.P17761998206444209949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (n + 1) + A236627 (n + 1)

end

end A338236.P17761998206444209949

namespace A338236

/-- `A262202(n+1)+A236627(n+1)` -/
def P17761998206444209949.Spec : Prop :=
  ∀ n, P17761998206444209949.a n = A338236 (n + 1)

end A338236

/-! ## A338236.P9803769229883521874

`A000196(n+1)-A000005(A000188(n+1))`
-/

namespace A338236.P9803769229883521874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A000005 (A000188 (n + 1)).toNat

end

end A338236.P9803769229883521874

namespace A338236

/-- `A000196(n+1)-A000005(A000188(n+1))` -/
def P9803769229883521874.Spec : Prop :=
  ∀ n, P9803769229883521874.a n = A338236 (n + 1)

end A338236

/-! ## A338236.P2306685405440089272

`∑[A010052(n+1)]-A000005(A000188(n+1))`
-/

namespace A338236.P2306685405440089272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (A000188 (n + 1)).toNat

end

end A338236.P2306685405440089272

namespace A338236

/-- `∑[A010052(n+1)]-A000005(A000188(n+1))` -/
def P2306685405440089272.Spec : Prop :=
  ∀ n, P2306685405440089272.a n = A338236 (n + 1)

end A338236

/-!
# A338237: a(n) is the number of nodes with depth of n in a binary tree defined as: root = 1 and a child (C) of a node (N) is such that C - primepi(C) = N, or A062298(C) = N. For a node with two children, the smaller child is assigned as the left child and the bigger one as the right child. Otherwise, the child is assigned as the left child.

The programs for A338237, there is no canonical definition to state claims against.
-/

/-! ## A338237.P14604757422439836534

`A000720(A025003(n+1))`
-/

namespace A338237.P14604757422439836534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A025003 (n + 1)).toNat

end

end A338237.P14604757422439836534

/-! ## A338237.P5749883148418029666

`Δ[A018252(a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A338237.P5749883148418029666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A018252 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338237.P5749883148418029666

/-! ## A338237.P11143451831657558950

`Δ[A141468(a(n-1)+1)]` with `a(0)=1, a(1)=2`
-/

namespace A338237.P11143451831657558950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A141468 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338237.P11143451831657558950

/-! ## A338237.P4015455903984122881

`Δ[A002808(a(n-1)-1)]` with `a(0)=1, a(1)=2`
-/

namespace A338237.P4015455903984122881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A002808 (f1 (n - 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338237.P4015455903984122881

/-! ## A338237.P14118430774865738783

`Δ[A018252(abs(a((2*n)%(n+1))))]` with `a(0)=1, a(1)=2`
-/

namespace A338237.P14118430774865738783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A018252 |f1 (2 * n % (n + 1))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338237.P14118430774865738783

/-!
# A338241: For any m >= 0, a(3*m) = 3*a(m), a(3*m+1) = 1-3*a(m), a(3*m+2) = 3*a(m)-1.

The programs for A338241, the canonical program `A338241.P14160391239294064305` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338241 has offset 0).

The definition of A338241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338241.P14160391239294064305

`A001057(A128173(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338241

/-- `A001057(A128173(n))` -/
def P14160391239294064305.Spec : Prop :=
  ∀ n, P14160391239294064305.a n = A338241 n

theorem P14160391239294064305.correct : P14160391239294064305.Spec := by
  intro n
  simp only [A338241]

end A338241

/-! ## A338241.P3231689396753897230

`A062157(n)*A110654(A128173(n))`
-/

namespace A338241.P3231689396753897230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A110654 (A128173 n).toNat

end

end A338241.P3231689396753897230

namespace A338241

/-- `A062157(n)*A110654(A128173(n))` -/
def P3231689396753897230.Spec : Prop :=
  ∀ n, P3231689396753897230.a n = A338241 n

end A338241

/-! ## A338241.P18216305849654839541

`A033999(n+1)*A110654(A128173(n))`
-/

namespace A338241.P18216305849654839541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A110654 (A128173 n).toNat

end

end A338241.P18216305849654839541

namespace A338241

/-- `A033999(n+1)*A110654(A128173(n))` -/
def P18216305849654839541.Spec : Prop :=
  ∀ n, P18216305849654839541.a n = A338241 n

end A338241

/-! ## A338241.P8781708851128286439

`(n-A004442(n))*A110654(A128173(n))`
-/

namespace A338241.P8781708851128286439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) * A110654 (A128173 n).toNat

end

end A338241.P8781708851128286439

namespace A338241

/-- `(n-A004442(n))*A110654(A128173(n))` -/
def P8781708851128286439.Spec : Prop :=
  ∀ n, P8781708851128286439.a n = A338241 n

end A338241

/-! ## A338241.P13325052953570317682

`A110654(A128173(n))/A033999(A035327(n))`
-/

namespace A338241.P13325052953570317682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (A128173 n).toNat : ℚ) / (A033999 (A035327 n).toNat : ℚ)

end

end A338241.P13325052953570317682

namespace A338241

/-- `A110654(A128173(n))/A033999(A035327(n))` -/
def P13325052953570317682.Spec : Prop :=
  ∀ n, P13325052953570317682.a n = (A338241 n : ℚ)

end A338241

/-! ## A338241.P13832647309022824869

`A174344(A128173(n)²+1)`
-/

namespace A338241.P13832647309022824869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A128173 n ^ 2 + 1).toNat

end

end A338241.P13832647309022824869

namespace A338241

/-- `A174344(A128173(n)²+1)` -/
def P13832647309022824869.Spec : Prop :=
  ∀ n, P13832647309022824869.a n = A338241 n

end A338241

/-!
# A338242: a(n) = -A338241(2*n) for any n >= 0.

The programs for A338242, the canonical program `A338242.P14287517740341381952` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338242 has offset 0).

The definition of A338242 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338241, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338242.P14287517740341381952

`-A338241(2*n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338242

/-- `-A338241(2*n)` -/
def P14287517740341381952.Spec : Prop :=
  ∀ n, P14287517740341381952.a n = A338242 n

theorem P14287517740341381952.correct : P14287517740341381952.Spec := by
  intro n
  simp only [A338242]

end A338242

/-! ## A338242.P7768217398397196578

`A128173(2*n)/2`
-/

namespace A338242.P7768217398397196578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128173 (2 * n) : ℚ) / 2

end

end A338242.P7768217398397196578

namespace A338242

/-- `A128173(2*n)/2` -/
def P7768217398397196578.Spec : Prop :=
  ∀ n, P7768217398397196578.a n = (A338242 n : ℚ)

end A338242

/-! ## A338242.P11132521038615538542

`A374363(n)+A060373(n)`
-/

namespace A338242.P11132521038615538542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374363 n + A060373 n

end

end A338242.P11132521038615538542

namespace A338242

/-- `A374363(n)+A060373(n)` -/
def P11132521038615538542.Spec : Prop :=
  ∀ n, P11132521038615538542.a n = A338242 n

end A338242

/-! ## A338242.P5298354350732034542

`A060372(n)-A374362(n)`
-/

namespace A338242.P5298354350732034542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - A374362 n

end

end A338242.P5298354350732034542

namespace A338242

/-- `A060372(n)-A374362(n)` -/
def P5298354350732034542.Spec : Prop :=
  ∀ n, P5298354350732034542.a n = A338242 n

end A338242

/-! ## A338242.P2312910059330527537

`(A117967(n)+A004488(n))/3`
-/

namespace A338242.P2312910059330527537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117967 n + A004488 n : ℚ) / 3

end

end A338242.P2312910059330527537

namespace A338242

/-- `(A117967(n)+A004488(n))/3` -/
def P2312910059330527537.Spec : Prop :=
  ∀ n, P2312910059330527537.a n = (A338242 n : ℚ)

end A338242

/-! ## A338242.P12649855508446482519

`A060373(n)+A005836(A289831(n)+1)`
-/

namespace A338242.P12649855508446482519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n + A005836 (A289831 n + 1).toNat

end

end A338242.P12649855508446482519

namespace A338242

/-- `A060373(n)+A005836(A289831(n)+1)` -/
def P12649855508446482519.Spec : Prop :=
  ∀ n, P12649855508446482519.a n = A338242 n

end A338242

/-! ## A338242.P5789049271947334114

`A060372(n)-A005836(A289814(n)+1)`
-/

namespace A338242.P5789049271947334114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - A005836 (A289814 n + 1).toNat

end

end A338242.P5789049271947334114

namespace A338242

/-- `A060372(n)-A005836(A289814(n)+1)` -/
def P5789049271947334114.Spec : Prop :=
  ∀ n, P5789049271947334114.a n = A338242 n

end A338242

/-! ## A338242.P2179588253863804642

`(A060374(A093347(n+1))+A060374(n))/2`
-/

namespace A338242.P2179588253863804642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060374 (A093347 (n + 1)).toNat + A060374 n : ℚ) / 2

end

end A338242.P2179588253863804642

namespace A338242

/-- `(A060374(A093347(n+1))+A060374(n))/2` -/
def P2179588253863804642.Spec : Prop :=
  ∀ n, P2179588253863804642.a n = (A338242 n : ℚ)

end A338242

/-! ## A338242.P10155261618638491463

`A057428(n)*A338241(2*n)`
-/

namespace A338242.P10155261618638491463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A338241 (2 * n)

end

end A338242.P10155261618638491463

namespace A338242

/-- `A057428(n)*A338241(2*n)` -/
def P10155261618638491463.Spec : Prop :=
  ∀ n, P10155261618638491463.a n = A338242 n

end A338242

/-! ## A338242.P45579325547804929

`A000038(n+1)-A338241(2*n)`
-/

namespace A338242.P45579325547804929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A338241 (2 * n)

end

end A338242.P45579325547804929

namespace A338242

/-- `A000038(n+1)-A338241(2*n)` -/
def P45579325547804929.Spec : Prop :=
  ∀ n, P45579325547804929.a n = A338242 n

theorem P45579325547804929.correct : P45579325547804929.Spec := by
  intro n
  simp only [A338242, Nat.add_sub_cancel, A338242.P45579325547804929.a, A338242.P14287517740341381952.a, A000038, A000038.P13734959004655594922.a, A338241, A338241.P14160391239294064305.a, A000007, A000007.P6599383543502402472.a, A001057, A001057.P5698194758103254717.a, A128173, A128173.P11177856239651542119.a, A004526, A004526.P10084182425416171735.a, A244042, A244042.P9314766524248185345.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338242

/-! ## A338242.P3059644293490111942

`(A000038(n)-1)*A338241(2*n)`
-/

namespace A338242.P3059644293490111942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) * A338241 (2 * n)

end

end A338242.P3059644293490111942

namespace A338242

/-- `(A000038(n)-1)*A338241(2*n)` -/
def P3059644293490111942.Spec : Prop :=
  ∀ n, P3059644293490111942.a n = A338242 n

end A338242

/-! ## A338242.P11763399918747757031

`A159075(2*n)-A338241(2*n)`
-/

namespace A338242.P11763399918747757031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (2 * n) - A338241 (2 * n)

end

end A338242.P11763399918747757031

namespace A338242

/-- `A159075(2*n)-A338241(2*n)` -/
def P11763399918747757031.Spec : Prop :=
  ∀ n, P11763399918747757031.a n = A338242 n

end A338242

/-! ## A338242.P14626488246352457582

`A007814(2*n+1)-A338241(2*n)`
-/

namespace A338242.P14626488246352457582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A338241 (2 * n)

end

end A338242.P14626488246352457582

namespace A338242

/-- `A007814(2*n+1)-A338241(2*n)` -/
def P14626488246352457582.Spec : Prop :=
  ∀ n, P14626488246352457582.a n = A338242 n

end A338242

/-! ## A338242.P5030362826453658585

`A088917(2*n+1)-A338241(2*n)`
-/

namespace A338242.P5030362826453658585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n + 1) - A338241 (2 * n)

end

end A338242.P5030362826453658585

namespace A338242

/-- `A088917(2*n+1)-A338241(2*n)` -/
def P5030362826453658585.Spec : Prop :=
  ∀ n, P5030362826453658585.a n = A338242 n

end A338242

/-! ## A338242.P15149997584074757119

`(A329670(n+3)-1)*A338241(2*n)`
-/

namespace A338242.P15149997584074757119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329670 (n + 3) - 1) * A338241 (2 * n)

end

end A338242.P15149997584074757119

namespace A338242

/-- `(A329670(n+3)-1)*A338241(2*n)` -/
def P15149997584074757119.Spec : Prop :=
  ∀ n, P15149997584074757119.a n = A338242 n

end A338242

/-! ## A338242.P10392577254587328929

`(A063377(2*(n+1))-1)*A338241(2*n)`
-/

namespace A338242.P10392577254587328929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063377 (2 * (n + 1)) - 1) * A338241 (2 * n)

end

end A338242.P10392577254587328929

namespace A338242

/-- `(A063377(2*(n+1))-1)*A338241(2*n)` -/
def P10392577254587328929.Spec : Prop :=
  ∀ n, P10392577254587328929.a n = A338242 n

end A338242

/-! ## A338242.P8485559502539480582

`A244042(n)+A004526(A244042(2*n))`
-/

namespace A338242.P8485559502539480582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n + A004526 (A244042 (2 * n)).toNat

end

end A338242.P8485559502539480582

namespace A338242

/-- `A244042(n)+A004526(A244042(2*n))` -/
def P8485559502539480582.Spec : Prop :=
  ∀ n, P8485559502539480582.a n = A338242 n

end A338242

/-! ## A338242.P4489149204942645861

`A244042(n)+A244042(A005843(n))/2`
-/

namespace A338242.P4489149204942645861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244042 n : ℚ) + (A244042 (A005843 n).toNat : ℚ) / 2

end

end A338242.P4489149204942645861

namespace A338242

/-- `A244042(n)+A244042(A005843(n))/2` -/
def P4489149204942645861.Spec : Prop :=
  ∀ n, P4489149204942645861.a n = (A338242 n : ℚ)

end A338242

/-! ## A338242.P8225806164705887877

`A064680(A128173(2*n))`
-/

namespace A338242.P8225806164705887877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A128173 (2 * n)).toNat

end

end A338242.P8225806164705887877

namespace A338242

/-- `A064680(A128173(2*n))` -/
def P8225806164705887877.Spec : Prop :=
  ∀ n, P8225806164705887877.a n = A338242 n

end A338242

/-! ## A338242.P13422004511853421339

`A374363(2*n)-A300222(n)`
-/

namespace A338242.P13422004511853421339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374363 (2 * n) - A300222 n

end

end A338242.P13422004511853421339

namespace A338242

/-- `A374363(2*n)-A300222(n)` -/
def P13422004511853421339.Spec : Prop :=
  ∀ n, P13422004511853421339.a n = A338242 n

end A338242

/-!
# A338243: a(0) = 0, a(n) = A338241(2*n-1) for any n > 0.

The programs for A338243, the canonical program `A338243.P15957865261195193101` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338243 has offset 0).

The definition of A338243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338243.P3061375073596529386

`A338241(comp[2*(n+1)])`
-/

namespace A338243.P3061375073596529386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A338243.P3061375073596529386

namespace A338243

/-- `A338241(comp[2*(n+1)])` -/
def P3061375073596529386.Spec : Prop :=
  ∀ n, P3061375073596529386.a n = A338243 n

end A338243

/-! ## A338243.P15957865261195193101

`abs(A338241(A004273(n)))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338243

/-- `abs(A338241(A004273(n)))` -/
def P15957865261195193101.Spec : Prop :=
  ∀ n, P15957865261195193101.a n = A338243 n

theorem P15957865261195193101.correct : P15957865261195193101.Spec := by
  intro n
  simp only [A338243]

end A338243

/-! ## A338243.P11122696652733095186

`abs(A338241(lt[0, A338241(n)+1]))`
-/

namespace A338243.P11122696652733095186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A338241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A338243.P11122696652733095186

namespace A338243

/-- `abs(A338241(lt[0, A338241(n)+1]))` -/
def P11122696652733095186.Spec : Prop :=
  ∀ n, P11122696652733095186.a n = A338243 n

end A338243

/-! ## A338243.P6480298474474304912

`A338241(A004273(n))%(A294864(n)+n)`
-/

namespace A338243.P6480298474474304912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338241 (A004273 n).toNat) (A294864 n + (n : ℤ))

end

end A338243.P6480298474474304912

namespace A338243

/-- `A338241(A004273(n))%(A294864(n)+n)` -/
def P6480298474474304912.Spec : Prop :=
  ∀ n, P6480298474474304912.a n = A338243 n

end A338243

/-! ## A338243.P4671581612078835970

`A338241(A004273(n))+A329670(2*(n+2))`
-/

namespace A338243.P4671581612078835970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 (A004273 n).toNat + A329670 (2 * (n + 2))

end

end A338243.P4671581612078835970

namespace A338243

/-- `A338241(A004273(n))+A329670(2*(n+2))` -/
def P4671581612078835970.Spec : Prop :=
  ∀ n, P4671581612078835970.a n = A338243 n

end A338243

/-! ## A338243.P11084079052145793394

`A338241(A004273(n))%∑[A077868(n)]`
-/

namespace A338243.P11084079052145793394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338241 (A004273 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338243.P11084079052145793394

namespace A338243

/-- `A338241(A004273(n))%∑[A077868(n)]` -/
def P11084079052145793394.Spec : Prop :=
  ∀ n, P11084079052145793394.a n = A338243 n

end A338243

/-!
# A338245: Nonnegative values in A117966, in order of appearance.

The programs for A338245, the canonical program `A338245.P9307757376313236030` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338245 has offset 0).

The definition of A338245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338245.P7019448296561090108

`A338247(A338247(n))`
-/

namespace A338245.P7019448296561090108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 (A338247 n).toNat

end

end A338245.P7019448296561090108

namespace A338245

/-- `A338247(A338247(n))` -/
def P7019448296561090108.Spec : Prop :=
  ∀ n, P7019448296561090108.a n = A338245 n

end A338245

/-! ## A338245.P9307757376313236030

`A117966(record[A330740(n)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A338245

/-- `A117966(record[A330740(n)])` -/
def P9307757376313236030.Spec : Prop :=
  ∀ n, P9307757376313236030.a n = A338245 n

theorem P9307757376313236030.correct : P9307757376313236030.Spec := by
  intro n
  simp only [A338245]

end A338245

/-! ## A338245.P12051122969631203314

`A117966(eq[n, A330740(n)])`
-/

namespace A338245.P12051122969631203314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338245.P12051122969631203314

namespace A338245

/-- `A117966(eq[n, A330740(n)])` -/
def P12051122969631203314.Spec : Prop :=
  ∀ n, P12051122969631203314.a n = A338245 n

end A338245

/-! ## A338245.P11489617929005543006

`A117966(lt[-1, A117966(n)])`
-/

namespace A338245.P11489617929005543006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338245.P11489617929005543006

namespace A338245

/-- `A117966(lt[-1, A117966(n)])` -/
def P11489617929005543006.Spec : Prop :=
  ∀ n, P11489617929005543006.a n = A338245 n

end A338245

/-! ## A338245.P17588108731664567509

`A117966(comp[A117968(n+1)])`
-/

namespace A338245.P17588108731664567509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117968 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A338245.P17588108731664567509

namespace A338245

/-- `A117966(comp[A117968(n+1)])` -/
def P17588108731664567509.Spec : Prop :=
  ∀ n, P17588108731664567509.a n = A338245 n

end A338245

/-! ## A338245.P6697571491885309093

`A117966(record[n%(A117966(n)+1+n)])`
-/

namespace A338245.P6697571491885309093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A117966 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338245.P6697571491885309093

namespace A338245

/-- `A117966(record[n%(A117966(n)+1+n)])` -/
def P6697571491885309093.Spec : Prop :=
  ∀ n, P6697571491885309093.a n = A338245 n

end A338245

/-!
# A338246: Nonpositive values in A117966, in order of appearance and negated.

The programs for A338246, the canonical program `A338246.P17667749731771323120` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338246 has offset 0).

The definition of A338246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338246.P17667749731771323120

`A060373(n)+n-A060373(A338247(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A338246

/-- `A060373(n)+n-A060373(A338247(n))` -/
def P17667749731771323120.Spec : Prop :=
  ∀ n, P17667749731771323120.a n = A338246 n

theorem P17667749731771323120.correct : P17667749731771323120.Spec := by
  intro n
  simp only [A338246]

end A338246

/-! ## A338246.P12928625379921813481

`A060374(n)+n-A060374(A338245(n))`
-/

namespace A338246.P12928625379921813481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n + ((n : ℤ) - A060374 (A338245 n).toNat)

end

end A338246.P12928625379921813481

namespace A338246

/-- `A060374(n)+n-A060374(A338245(n))` -/
def P12928625379921813481.Spec : Prop :=
  ∀ n, P12928625379921813481.a n = A338246 n

end A338246

/-! ## A338246.P5252201184820695701

`A368225(A368239(A380182(A380182(n))))`
-/

namespace A338246.P5252201184820695701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368225 (A368239 (A380182 (A380182 n).toNat).toNat).toNat

end

end A338246.P5252201184820695701

namespace A338246

/-- `A368225(A368239(A380182(A380182(n))))` -/
def P5252201184820695701.Spec : Prop :=
  ∀ n, P5252201184820695701.a n = A338246 n

end A338246

/-! ## A338246.P16749605398848012801

`A060374(n)-A060373(n)-A060373(A338247(n))`
-/

namespace A338246.P16749605398848012801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n - A060373 n - A060373 (A338247 n).toNat

end

end A338246.P16749605398848012801

namespace A338246

/-- `A060374(n)-A060373(n)-A060373(A338247(n))` -/
def P16749605398848012801.Spec : Prop :=
  ∀ n, P16749605398848012801.a n = A338246 n

theorem P16749605398848012801.correct : P16749605398848012801.Spec := by
  intro n
  simp only [A338246, Nat.add_sub_cancel, A338246.P16749605398848012801.a, A338246.P17667749731771323120.a, A060373, A060373.P1941735290763042490.a, A060374, A060374.P11457074353475961309.a, A338247, A338247.P17670720856560393177.a, A060372, A060372.P4864824408191301632.a, A338245, A338245.P9307757376313236030.f1, A338245.P9307757376313236030.a, A117966, A117966.P11599160912576478646.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A330740, A330740.P3370590016903294651.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338246

/-! ## A338246.P711926963281602355

`A060373(A338245(n))-(A060373(n)-A338247(n))`
-/

namespace A338246.P711926963281602355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (A338245 n).toNat - (A060373 n - A338247 n)

end

end A338246.P711926963281602355

namespace A338246

/-- `A060373(A338245(n))-(A060373(n)-A338247(n))` -/
def P711926963281602355.Spec : Prop :=
  ∀ n, P711926963281602355.a n = A338246 n

end A338246

/-! ## A338246.P5279398379825020854

`A343317(n)-A060373(n)`
-/

namespace A338246.P5279398379825020854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343317 n - A060373 n

end

end A338246.P5279398379825020854

namespace A338246

/-- `A343317(n)-A060373(n)` -/
def P5279398379825020854.Spec : Prop :=
  ∀ n, P5279398379825020854.a n = A338246 n

end A338246

/-! ## A338246.P14861726280413169545

`A343317(n)+n-A060372(n)`
-/

namespace A338246.P14861726280413169545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343317 n + ((n : ℤ) - A060372 n)

end

end A338246.P14861726280413169545

namespace A338246

/-- `A343317(n)+n-A060372(n)` -/
def P14861726280413169545.Spec : Prop :=
  ∀ n, P14861726280413169545.a n = A338246 n

end A338246

/-! ## A338246.P11479181612960941939

`A343317(n)-A060372(A060372(n)-n)`
-/

namespace A338246.P11479181612960941939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343317 n - A060372 (A060372 n - (n : ℤ)).toNat

end

end A338246.P11479181612960941939

namespace A338246

/-- `A343317(n)-A060372(A060372(n)-n)` -/
def P11479181612960941939.Spec : Prop :=
  ∀ n, P11479181612960941939.a n = A338246 n

end A338246

/-! ## A338246.P7063349573008274258

`A060373(n)+n-A005836(A343230(n)+1)`
-/

namespace A338246.P7063349573008274258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n + ((n : ℤ) - A005836 (A343230 n + 1).toNat)

end

end A338246.P7063349573008274258

namespace A338246

/-- `A060373(n)+n-A005836(A343230(n)+1)` -/
def P7063349573008274258.Spec : Prop :=
  ∀ n, P7063349573008274258.a n = A338246 n

end A338246

/-! ## A338246.P4379434276105420577

`A005836(A343228(n)+1)-A005836(A343230(n)+1)`
-/

namespace A338246.P4379434276105420577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A343228 n + 1).toNat - A005836 (A343230 n + 1).toNat

end

end A338246.P4379434276105420577

namespace A338246

/-- `A005836(A343228(n)+1)-A005836(A343230(n)+1)` -/
def P4379434276105420577.Spec : Prop :=
  ∀ n, P4379434276105420577.a n = A338246 n

end A338246

/-!
# A338247: Inverse permutation to A338245.

The programs for A338247, the canonical program `A338247.P17670720856560393177` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338247 has offset 0).

The definition of A338247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338247.P17670720856560393177

`A338245(A338245(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A338247

/-- `A338245(A338245(n))` -/
def P17670720856560393177.Spec : Prop :=
  ∀ n, P17670720856560393177.a n = A338247 n

theorem P17670720856560393177.correct : P17670720856560393177.Spec := by
  intro n
  simp only [A338247]

end A338247

/-! ## A338247.P16554628491340557580

`A117967(n)+n-record[A330740(n)]`
-/

namespace A338247.P16554628491340557580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n + ((n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A338247.P16554628491340557580

namespace A338247

/-- `A117967(n)+n-record[A330740(n)]` -/
def P16554628491340557580.Spec : Prop :=
  ∀ n, P16554628491340557580.a n = A338247 n

end A338247

/-! ## A338247.P6719726680027855788

`A004488(A117967(n))-record[A330740(n)]`
-/

namespace A338247.P6719726680027855788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A117967 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338247.P6719726680027855788

namespace A338247

/-- `A004488(A117967(n))-record[A330740(n)]` -/
def P6719726680027855788.Spec : Prop :=
  ∀ n, P6719726680027855788.a n = A338247 n

end A338247

/-! ## A338247.P17254587631729342420

`A140263(2*n)-record[A330740(n)]`
-/

namespace A338247.P17254587631729342420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 (2 * n) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338247.P17254587631729342420

namespace A338247

/-- `A140263(2*n)-record[A330740(n)]` -/
def P17254587631729342420.Spec : Prop :=
  ∀ n, P17254587631729342420.a n = A338247 n

end A338247

/-! ## A338247.P8891227478282069548

`A140263(2*n)-comp[A117968(n+1)]`
-/

namespace A338247.P8891227478282069548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117968 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 (2 * n) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A338247.P8891227478282069548

namespace A338247

/-- `A140263(2*n)-comp[A117968(n+1)]` -/
def P8891227478282069548.Spec : Prop :=
  ∀ n, P8891227478282069548.a n = A338247 n

end A338247

/-!
# A338248: Nonnegative values in A053985, in order of appearance.

The programs for A338248, the canonical program `A338248.P2390189251566135484` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338248 has offset 0).

The definition of A338248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338248.P16067458146770388704

`ceil(A338249(2*n)/2)`
-/

namespace A338248.P16067458146770388704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338249 (2 * n) : ℚ) / 2⌉

end

end A338248.P16067458146770388704

namespace A338248

/-- `ceil(A338249(2*n)/2)` -/
def P16067458146770388704.Spec : Prop :=
  ∀ n, P16067458146770388704.a n = A338248 n

end A338248

/-! ## A338248.P10337885061200433311

`round(A338249(n+n)/2)`
-/

namespace A338248.P10337885061200433311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A338249 (n + n) : ℚ) / 2)

end

end A338248.P10337885061200433311

namespace A338248

/-- `round(A338249(n+n)/2)` -/
def P10337885061200433311.Spec : Prop :=
  ∀ n, P10337885061200433311.a n = A338248 n

end A338248

/-! ## A338248.P2390189251566135484

`A053985(lt[n, A088442(n)])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338248

/-- `A053985(lt[n, A088442(n)])` -/
def P2390189251566135484.Spec : Prop :=
  ∀ n, P2390189251566135484.a n = A338248 n

theorem P2390189251566135484.correct : P2390189251566135484.Spec := by
  intro n
  simp only [A338248]

end A338248

/-! ## A338248.P14631791107198468861

`A053985(lt[-1, A053985(n)])`
-/

namespace A338248.P14631791107198468861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338248.P14631791107198468861

namespace A338248

/-- `A053985(lt[-1, A053985(n)])` -/
def P14631791107198468861.Spec : Prop :=
  ∀ n, P14631791107198468861.a n = A338248 n

end A338248

/-! ## A338248.P2993816857477937629

`A053985(comp[A005352(n+1)])`
-/

namespace A338248.P2993816857477937629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005352 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A338248.P2993816857477937629

namespace A338248

/-- `A053985(comp[A005352(n+1)])` -/
def P2993816857477937629.Spec : Prop :=
  ∀ n, P2993816857477937629.a n = A338248 n

end A338248

/-! ## A338248.P8565040756848826810

`A053985(record[n%(A053985(n)+1+n)])`
-/

namespace A338248.P8565040756848826810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A053985 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338248.P8565040756848826810

namespace A338248

/-- `A053985(record[n%(A053985(n)+1+n)])` -/
def P8565040756848826810.Spec : Prop :=
  ∀ n, P8565040756848826810.a n = A338248 n

end A338248

/-! ## A338248.P15579916710674309821

`A338249(A014681(2*n))/2`
-/

namespace A338248.P15579916710674309821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338249 (A014681 (2 * n)).toNat : ℚ) / 2

end

end A338248.P15579916710674309821

namespace A338248

/-- `A338249(A014681(2*n))/2` -/
def P15579916710674309821.Spec : Prop :=
  ∀ n, P15579916710674309821.a n = (A338248 n : ℚ)

end A338248

/-! ## A338248.P5723155954910303815

`A226107(A338249(2*n)+2)`
-/

namespace A338248.P5723155954910303815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (A338249 (2 * n) + 2).toNat

end

end A338248.P5723155954910303815

namespace A338248

/-- `A226107(A338249(2*n)+2)` -/
def P5723155954910303815.Spec : Prop :=
  ∀ n, P5723155954910303815.a n = A338248 n

end A338248

/-! ## A338248.P9346899300784546381

`A005351(n)+n-A165199(A005351(n))`
-/

namespace A338248.P9346899300784546381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 n + ((n : ℤ) - A165199 (A005351 n).toNat)

end

end A338248.P9346899300784546381

namespace A338248

/-- `A005351(n)+n-A165199(A005351(n))` -/
def P9346899300784546381.Spec : Prop :=
  ∀ n, P9346899300784546381.a n = A338248 n

end A338248

/-!
# A338249: Nonpositive values in A053985, in order of appearance and negated.

The programs for A338249, the canonical program `A338249.P16543191693134358480` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338249 has offset 0).

The definition of A338249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053754, A053985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338249.P16543191693134358480

`-A053985(A053754(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338249

/-- `-A053985(A053754(n+1))` -/
def P16543191693134358480.Spec : Prop :=
  ∀ n, P16543191693134358480.a n = A338249 n

theorem P16543191693134358480.correct : P16543191693134358480.Spec := by
  intro n
  simp only [A338249]

end A338249

/-! ## A338249.P10691114922807758395

`A338248(2*n)/2`
-/

namespace A338249.P10691114922807758395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338248 (2 * n) : ℚ) / 2

end

end A338249.P10691114922807758395

namespace A338249

/-- `A338248(2*n)/2` -/
def P10691114922807758395.Spec : Prop :=
  ∀ n, P10691114922807758395.a n = (A338249 n : ℚ)

end A338249

/-! ## A338249.P3151242305855879819

`abs(A053985(lt[A053985(n), 1]))`
-/

namespace A338249.P3151242305855879819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053985 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)|

end

end A338249.P3151242305855879819

namespace A338249

/-- `abs(A053985(lt[A053985(n), 1]))` -/
def P3151242305855879819.Spec : Prop :=
  ∀ n, P3151242305855879819.a n = A338249 n

end A338249

/-! ## A338249.P6694062088063840416

`A338248(2*n)+A053985(A053754(n+1))`
-/

namespace A338249.P6694062088063840416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338248 (2 * n) + A053985 (A053754 (n + 1)).toNat

end

end A338249.P6694062088063840416

namespace A338249

/-- `A338248(2*n)+A053985(A053754(n+1))` -/
def P6694062088063840416.Spec : Prop :=
  ∀ n, P6694062088063840416.a n = A338249 n

end A338249

/-! ## A338249.P10466946828268939675

`A004514(A004514(n))-A053985(A053754(n+1))`
-/

namespace A338249.P10466946828268939675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (A004514 n).toNat - A053985 (A053754 (n + 1)).toNat

end

end A338249.P10466946828268939675

namespace A338249

/-- `A004514(A004514(n))-A053985(A053754(n+1))` -/
def P10466946828268939675.Spec : Prop :=
  ∀ n, P10466946828268939675.a n = A338249 n

end A338249

/-! ## A338249.P14785799435698757884

`A004526(A338248(2*n))`
-/

namespace A338249.P14785799435698757884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338248 (2 * n)).toNat

end

end A338249.P14785799435698757884

namespace A338249

/-- `A004526(A338248(2*n))` -/
def P14785799435698757884.Spec : Prop :=
  ∀ n, P14785799435698757884.a n = A338249 n

end A338249

/-! ## A338249.P11595906698647458631

`A053985(2*A053754(n+1))/2`
-/

namespace A338249.P11595906698647458631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053985 (2 * A053754 (n + 1)).toNat : ℚ) / 2

end

end A338249.P11595906698647458631

namespace A338249

/-- `A053985(2*A053754(n+1))/2` -/
def P11595906698647458631.Spec : Prop :=
  ∀ n, P11595906698647458631.a n = (A338249 n : ℚ)

end A338249

/-! ## A338249.P5566433678561955322

`A032742(A338248(2*n+1)+1)-1`
-/

namespace A338249.P5566433678561955322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A338248 (2 * n + 1) + 1).toNat - 1

end

end A338249.P5566433678561955322

namespace A338249

/-- `A032742(A338248(2*n+1)+1)-1` -/
def P5566433678561955322.Spec : Prop :=
  ∀ n, P5566433678561955322.a n = A338249 n

end A338249

/-!
# A338251: Nonnegative values in A317050, in order of appearance.

The programs for A338251, the canonical program `A338251.P8103799796019811085` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338251 has offset 0).

The definition of A338251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338251.P8929121307493779607

`ceil(A338252(2*n)/2)`
-/

namespace A338251.P8929121307493779607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338252 (2 * n) : ℚ) / 2⌉

end

end A338251.P8929121307493779607

namespace A338251

/-- `ceil(A338252(2*n)/2)` -/
def P8929121307493779607.Spec : Prop :=
  ∀ n, P8929121307493779607.a n = A338251 n

end A338251

/-! ## A338251.P8103799796019811085

`A317050(record[n%A088442(n)])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338251

/-- `A317050(record[n%A088442(n)])` -/
def P8103799796019811085.Spec : Prop :=
  ∀ n, P8103799796019811085.a n = A338251 n

theorem P8103799796019811085.correct : P8103799796019811085.Spec := by
  intro n
  simp only [A338251]

end A338251

/-! ## A338251.P5813496082994346911

`round(A338252(2*n)/2*A057427(n))`
-/

namespace A338251.P5813496082994346911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A338252 (2 * n) : ℚ) / 2 * (A057427 n : ℚ))

end

end A338251.P5813496082994346911

namespace A338251

/-- `round(A338252(2*n)/2*A057427(n))` -/
def P5813496082994346911.Spec : Prop :=
  ∀ n, P5813496082994346911.a n = A338251 n

end A338251

/-! ## A338251.P9552904786057622595

`A110654(A338252(2*n))`
-/

namespace A338251.P9552904786057622595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A338252 (2 * n)).toNat

end

end A338251.P9552904786057622595

namespace A338251

/-- `A110654(A338252(2*n))` -/
def P9552904786057622595.Spec : Prop :=
  ∀ n, P9552904786057622595.a n = A338251 n

end A338251

/-! ## A338251.P17806369957610422863

`A004526(A338252(2*n)+1)`
-/

namespace A338251.P17806369957610422863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338252 (2 * n) + 1).toNat

end

end A338251.P17806369957610422863

namespace A338251

/-- `A004526(A338252(2*n)+1)` -/
def P17806369957610422863.Spec : Prop :=
  ∀ n, P17806369957610422863.a n = A338251 n

end A338251

/-! ## A338251.P11422292261043885962

`A028242(xor(1, A338252(2*n)))`
-/

namespace A338251.P11422292261043885962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A338252 (2 * n))).toNat

end

end A338251.P11422292261043885962

namespace A338251

/-- `A028242(xor(1, A338252(2*n)))` -/
def P11422292261043885962.Spec : Prop :=
  ∀ n, P11422292261043885962.a n = A338251 n

end A338251

/-!
# A338252: Nonpositive values in A317050, in order of appearance and negated.

The programs for A338252, the canonical program `A338252.P13657671363942222121` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338252 has offset 0).

The definition of A338252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053754, A317050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338252.P13657671363942222121

`-A317050(A053754(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338252

/-- `-A317050(A053754(n+1))` -/
def P13657671363942222121.Spec : Prop :=
  ∀ n, P13657671363942222121.a n = A338252 n

theorem P13657671363942222121.correct : P13657671363942222121.Spec := by
  intro n
  simp only [A338252]

end A338252

/-! ## A338252.P15072656862713558888

`floor(A338251(2*n)/2)`
-/

namespace A338252.P15072656862713558888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A338251 (2 * n) : ℚ) / 2⌋

end

end A338252.P15072656862713558888

namespace A338252

/-- `floor(A338251(2*n)/2)` -/
def P15072656862713558888.Spec : Prop :=
  ∀ n, P15072656862713558888.a n = A338252 n

end A338252

/-! ## A338252.P575306774607341966

`and(A338251(2*n+1), A338251(2*n))/2`
-/

namespace A338252.P575306774607341966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A338251 (2 * n + 1)) (A338251 (2 * n)) : ℚ) / 2

end

end A338252.P575306774607341966

namespace A338252

/-- `and(A338251(2*n+1), A338251(2*n))/2` -/
def P575306774607341966.Spec : Prop :=
  ∀ n, P575306774607341966.a n = (A338252 n : ℚ)

end A338252

/-! ## A338252.P16922916877606168740

`A000035(2*n)-A317050(A053754(n+1))`
-/

namespace A338252.P16922916877606168740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A317050 (A053754 (n + 1)).toNat

end

end A338252.P16922916877606168740

namespace A338252

/-- `A000035(2*n)-A317050(A053754(n+1))` -/
def P16922916877606168740.Spec : Prop :=
  ∀ n, P16922916877606168740.a n = A338252 n

end A338252

/-! ## A338252.P6564814722684921094

`A004526(A338251(2*n))`
-/

namespace A338252.P6564814722684921094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338251 (2 * n)).toNat

end

end A338252.P6564814722684921094

namespace A338252

/-- `A004526(A338251(2*n))` -/
def P6564814722684921094.Spec : Prop :=
  ∀ n, P6564814722684921094.a n = A338252 n

end A338252

/-! ## A338252.P6892427007558448253

`A008683(A089628(n+3))*A317050(A053754(n+1))`
-/

namespace A338252.P6892427007558448253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089628 (n + 3)).toNat * A317050 (A053754 (n + 1)).toNat

end

end A338252.P6892427007558448253

namespace A338252

/-- `A008683(A089628(n+3))*A317050(A053754(n+1))` -/
def P6892427007558448253.Spec : Prop :=
  ∀ n, P6892427007558448253.a n = A338252 n

end A338252

/-! ## A338252.P213105585816456715

`A008683(A089629(n+1))*A317050(A053754(n+1))`
-/

namespace A338252.P213105585816456715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089629 (n + 1)).toNat * A317050 (A053754 (n + 1)).toNat

end

end A338252.P213105585816456715

namespace A338252

/-- `A008683(A089629(n+1))*A317050(A053754(n+1))` -/
def P213105585816456715.Spec : Prop :=
  ∀ n, P213105585816456715.a n = A338252 n

end A338252

/-! ## A338252.P9345247736227552314

`A008683(A089634(n+1))*A317050(A053754(n+1))`
-/

namespace A338252.P9345247736227552314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089634 (n + 1)).toNat * A317050 (A053754 (n + 1)).toNat

end

end A338252.P9345247736227552314

namespace A338252

/-- `A008683(A089634(n+1))*A317050(A053754(n+1))` -/
def P9345247736227552314.Spec : Prop :=
  ∀ n, P9345247736227552314.a n = A338252 n

end A338252

/-! ## A338252.P10026467599813151288

`A008683(A089635(n+3))*A317050(A053754(n+1))`
-/

namespace A338252.P10026467599813151288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089635 (n + 3)).toNat * A317050 (A053754 (n + 1)).toNat

end

end A338252.P10026467599813151288

namespace A338252

/-- `A008683(A089635(n+3))*A317050(A053754(n+1))` -/
def P10026467599813151288.Spec : Prop :=
  ∀ n, P10026467599813151288.a n = A338252 n

end A338252

/-! ## A338252.P15504744128935718992

`A008683(A105792(n+1))*A317050(A053754(n+1))`
-/

namespace A338252.P15504744128935718992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A105792 (n + 1)).toNat * A317050 (A053754 (n + 1)).toNat

end

end A338252.P15504744128935718992

namespace A338252

/-- `A008683(A105792(n+1))*A317050(A053754(n+1))` -/
def P15504744128935718992.Spec : Prop :=
  ∀ n, P15504744128935718992.a n = A338252 n

end A338252

/-!
# A338253: Inverse permutation to A338251.

The programs for A338253, there is no canonical definition to state claims against.
-/

/-! ## A338253.P13500109469178012986

`ceil(A338254(2*n)/2)`
-/

namespace A338253.P13500109469178012986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338254 (2 * n) : ℚ) / 2⌉

end

end A338253.P13500109469178012986

/-! ## A338253.P10390248128185591210

`round(A338254(2*n)/A014963(A001316(n)))`
-/

namespace A338253.P10390248128185591210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A338254 (2 * n) : ℚ) / (A014963 (A001316 n).toNat : ℚ))

end

end A338253.P10390248128185591210

/-! ## A338253.P17824415010684227398

`A110654(A338254(2*n))`
-/

namespace A338253.P17824415010684227398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A338254 (2 * n)).toNat

end

end A338253.P17824415010684227398

/-! ## A338253.P14461033755069589770

`A004526(A338254(2*n)+1)`
-/

namespace A338253.P14461033755069589770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338254 (2 * n) + 1).toNat

end

end A338253.P14461033755069589770

/-! ## A338253.P1086287995978535000

`A065033(A338254(2*n))%A008574(n)`
-/

namespace A338253.P1086287995978535000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A338254 (2 * n)).toNat) (A008574 n)

end

end A338253.P1086287995978535000

/-! ## A338253.P14170978173419112279

`A106249(A338254(2*n))%A005891(n)`
-/

namespace A338253.P14170978173419112279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106249 (A338254 (2 * n)).toNat) (A005891 n)

end

end A338253.P14170978173419112279

/-! ## A338253.P17205794646387935124

`A338254(A005843(n))-A004526(A338254(2*n))`
-/

namespace A338253.P17205794646387935124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338254 (A005843 n).toNat - A004526 (A338254 (2 * n)).toNat

end

end A338253.P17205794646387935124

/-!
# A338254: Inverse permutation to A338252.

The programs for A338254, there is no canonical definition to state claims against.
-/

/-! ## A338254.P9445579889134633341

`floor(A338253(2*n)/2)`
-/

namespace A338254.P9445579889134633341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A338253 (2 * n) : ℚ) / 2⌋

end

end A338254.P9445579889134633341

/-! ## A338254.P1938695169373421829

`A004526(A338253(2*n))`
-/

namespace A338254.P1938695169373421829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338253 (2 * n)).toNat

end

end A338254.P1938695169373421829

/-! ## A338254.P17886125403214645757

`A123108(A338253(2*n+1))`
-/

namespace A338254.P17886125403214645757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A338253 (2 * n + 1)).toNat

end

end A338254.P17886125403214645757

/-! ## A338254.P671118447998714982

`A123108(or(1, A338253(2*n)))`
-/

namespace A338254.P671118447998714982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lor 1 (A338253 (2 * n))).toNat

end

end A338254.P671118447998714982

/-! ## A338254.P2491322497852415613

`and(A338253(2*n+1), A338253(2*n))/2`
-/

namespace A338254.P2491322497852415613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A338253 (2 * n + 1)) (A338253 (2 * n)) : ℚ) / 2

end

end A338254.P2491322497852415613

/-! ## A338254.P10870161954741703640

`A123108(A338253(2*n))%A009909(n)`
-/

namespace A338254.P10870161954741703640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (A338253 (2 * n)).toNat) (A009909 n)

end

end A338254.P10870161954741703640

/-! ## A338254.P15564300183509833387

`A123108(A338253(2*n))-A084099(2*n)`
-/

namespace A338254.P15564300183509833387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A338253 (2 * n)).toNat - A084099 (2 * n)

end

end A338254.P15564300183509833387

/-!
# A338255: a(n) = smallest m such that A328330(m) = n, or -1 if n never appears in A328330.

The programs for A338255, there is no canonical definition to state claims against.
-/

/-! ## A338255.P12393595717644755961

`A216261(a(n-1))` with `a(0)=4, a(1)=2, a(2)=1, a(3)=8`
-/

namespace A338255.P12393595717644755961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 1, 8] fun n a =>
  A216261 (a (n - 1)).toNat

end

end A338255.P12393595717644755961

/-!
# A338256: Generalized Markoff numbers: union of numbers a, b, c, d, e satisfying the Markoff(5) equation a^2 + b^2 + c^2 + d^2 + e^2 = a*b*c*d*e.

The programs for A338256, there is no canonical definition to state claims against.
-/

/-! ## A338256.P10010940007686470112

`∪[A094396(n+1), A229240(n+1)]`
-/

namespace A338256.P10010940007686470112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338256.P10010940007686470112

/-! ## A338256.P6239467459751214733

`∪[A115976(n+1), A229240(n+1)]`
-/

namespace A338256.P6239467459751214733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338256.P6239467459751214733

/-! ## A338256.P13436199896604689402

`∪[A156695(n+1), A229240(n+1)]`
-/

namespace A338256.P13436199896604689402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338256.P13436199896604689402

/-! ## A338256.P11826662939664617011

`eq[A287477(n), A307239(n)]`
-/

namespace A338256.P11826662939664617011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338256.P11826662939664617011

/-!
# A338257: Positive integers k with digits in nondecreasing order for which the digital sum contains the same distinct digits as the digital product.

The programs for A338257, there is no canonical definition to state claims against.
-/

/-! ## A338257.P1187716033870195457

`∪[A061672(n+1), A338258(n+1)]`
-/

namespace A338257.P1187716033870195457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338257.P1187716033870195457

/-! ## A338257.P2584217125334387611

`record[A004185(A249334(n+2))]`
-/

namespace A338257.P2584217125334387611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A249334 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338257.P2584217125334387611

/-! ## A338257.P530539600160291448

`∩[A249334(n+1), A102827(n)]`
-/

namespace A338257.P530539600160291448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338257.P530539600160291448

/-! ## A338257.P11976118174170814119

`record[A249334(A111603(n+1)+1)]`
-/

namespace A338257.P11976118174170814119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (A111603 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338257.P11976118174170814119

/-! ## A338257.P3329577812914067507

`A249334(n+2)%A330428(n+1)`
-/

namespace A338257.P3329577812914067507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249334 (n + 2)) (A330428 (n + 1))

end

end A338257.P3329577812914067507

/-!
# A338258: Positive integers with digits in nondecreasing order for which the digital sum contains the same distinct digits as the digital product but the digital sum is not equal to the digital product.

The programs for A338258, there is no canonical definition to state claims against.
-/

/-! ## A338258.P6054035868754693272

`∩[A249335(n+1), A338257(n+1)]`
-/

namespace A338258.P6054035868754693272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338258.P6054035868754693272

/-!
# A338261: The least number of the form 2^i*3^j (i, j >= 0) which can be represented as a product of the greatest number of distinct positive integers in exactly n ways.

The programs for A338261, there is no canonical definition to state claims against.
-/

/-! ## A338261.P4595470785617561433

`A337129(2*n)*A337132(A337001(n))`
-/

namespace A338261.P4595470785617561433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337129 (2 * n) * A337132 (A337001 n).toNat

end

end A338261.P4595470785617561433

/-!
# A338262: Primes p such that the area of the triangle with sides p and the next two primes achieves a record for closeness to a prime.

The programs for A338262, there is no canonical definition to state claims against.
-/

/-! ## A338262.P12316916275237993331

`A152245(A095688(n+1))`
-/

namespace A338262.P12316916275237993331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152245 (A095688 (n + 1)).toNat

end

end A338262.P12316916275237993331

/-!
# A338263: Number of ways to write 8*n+7 as 2*w^2 + x^2 + y^2 + z^2 with w, x, y, z nonnegative integers such that w*(3*x+7*y+10*z) is a square and also one of w, x, y, z is a square.

The programs for A338263, there is no canonical definition to state claims against.
-/

/-! ## A338263.P947365479237118990

`gcd(A000290(A178742(n)), A078828(n))`
-/

namespace A338263.P947365479237118990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (A178742 n).toNat) (A078828 n)

end

end A338263.P947365479237118990

/-! ## A338263.P6166008611295628013

`A010874(gcd(A053303(n+1), A299927(n)))`
-/

namespace A338263.P6166008611295628013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (Int.gcd (A053303 (n + 1)) (A299927 n))

end

end A338263.P6166008611295628013

/-! ## A338263.P2783850652765128875

`A000005(gcd(A077996(n), A338769(n+1)))`
-/

namespace A338263.P2783850652765128875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A077996 n) (A338769 (n + 1)))

end

end A338263.P2783850652765128875

/-! ## A338263.P1016628279668213321

`gcd(A053723(n), A277068(A188556(n+1)))`
-/

namespace A338263.P1016628279668213321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053723 n) (A277068 (A188556 (n + 1)).toNat)

end

end A338263.P1016628279668213321

/-!
# A338264: Triangle read by rows: T(n,k) is the frequency of occurrence of binary words, under iterations of making the n-bit binary representation of k palindromic, by binary-subtracting its bit reversal, 0 <= k < 2^n.

The programs for A338264, there is no canonical definition to state claims against.
-/

/-! ## A338264.P4651147905073963587

`∑{d}[A000073(n+1)+n+1, A004530(#+3)]`
-/

namespace A338264.P4651147905073963587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004530 (d + 3)

end

end A338264.P4651147905073963587

/-! ## A338264.P740906733760040392

`Δ[p?[A342696(A166097(n))]]`
-/

namespace A338264.P740906733760040392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A166097 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338264.P740906733760040392

/-! ## A338264.P7438489412650553582

`A359327(A341591(n+5)+A225391(n+1))`
-/

namespace A338264.P7438489412650553582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359327 (A341591 (n + 5) + A225391 (n + 1)).toNat

end

end A338264.P7438489412650553582

/-! ## A338264.P7789113099280944677

`and(A001221(A339293(n+1)), A091246(n+1))`
-/

namespace A338264.P7789113099280944677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A339293 (n + 1)).toNat) (A091246 (n + 1))

end

end A338264.P7789113099280944677

/-! ## A338264.P12765543877041792253

`A373954(A048675(n+1)+A005940(n+4))`
-/

namespace A338264.P12765543877041792253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A048675 (n + 1) + A005940 (n + 4)).toNat

end

end A338264.P12765543877041792253

/-!
# A338266: Least prime p such that p*n is not a totient number.

The programs for A338266, there is no canonical definition to state claims against.
-/

/-! ## A338266.P14293167300389303138

`A342376(A342400(n+1))+A282160(n+1)`
-/

namespace A338266.P14293167300389303138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342400 (n + 1)).toNat + A282160 (n + 1)

end

end A338266.P14293167300389303138

/-! ## A338266.P3091910758795639382

`A364838(A282160(n+1))`
-/

namespace A338266.P3091910758795639382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364838 (A282160 (n + 1)).toNat

end

end A338266.P3091910758795639382

/-! ## A338266.P14810275391857458419

`A109395(A302043(A282160(n+1)²))`
-/

namespace A338266.P14810275391857458419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A302043 (A282160 (n + 1) ^ 2).toNat).toNat

end

end A338266.P14810275391857458419

/-! ## A338266.P8546409462335293426

`A282160(n+1)+A184955(A111419(n+1))`
-/

namespace A338266.P8546409462335293426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282160 (n + 1) + A184955 (A111419 (n + 1)).toNat

end

end A338266.P8546409462335293426

/-!
# A338267: a(n) is the nearest integer to the area of a triangle with sides prime(n), prime(n+1), prime(n+2).

The programs for A338267, there is no canonical definition to state claims against.
-/

/-! ## A338267.P13764378285572708653

`round(sqrt(3/16*A330096(n+1)))`
-/

namespace A338267.P13764378285572708653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((3 : ℚ) / 16 * (A330096 (n + 1) : ℚ) : ℝ))

end

end A338267.P13764378285572708653

/-! ## A338267.P17625016655976108964

`A096377(n+1)+A011739(A017246(n))`
-/

namespace A338267.P17625016655976108964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096377 (n + 1) + A011739 (A017246 n).toNat

end

end A338267.P17625016655976108964

/-! ## A338267.P9900893567349658967

`A349394(A230823(n))+A096377(n+1)`
-/

namespace A338267.P9900893567349658967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (A230823 n).toNat + A096377 (n + 1)

end

end A338267.P9900893567349658967

/-! ## A338267.P2952209183941011144

`A096377(n+1)+A056594(A000256(n+3))`
-/

namespace A338267.P2952209183941011144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096377 (n + 1) + A056594 (A000256 (n + 3)).toNat

end

end A338267.P2952209183941011144

/-!
# A338268: Irregular table read by rows: T(n,k) is the number of compositions of n, b_1 + ... + b_t = n, such that sqrt(b_1 + sqrt(b_2 + ... + sqrt(b_t)...)) = k; 1 <= k <= A000196(n).

The programs for A338268, there is no canonical definition to state claims against.
-/

/-! ## A338268.P1673675729876970913

`A088570(A000127(n+1))*A181923(n+1)`
-/

namespace A338268.P1673675729876970913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (A000127 (n + 1)).toNat * A181923 (n + 1)

end

end A338268.P1673675729876970913

/-! ## A338268.P17211983145752144099

`A063725(A000291(n)-A025441(n))`
-/

namespace A338268.P17211983145752144099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A000291 n - A025441 n).toNat

end

end A338268.P17211983145752144099

/-! ## A338268.P14007061947739273798

`and(A034444(n+1), A232878(A105623(n)))`
-/

namespace A338268.P14007061947739273798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034444 (n + 1)) (A232878 (A105623 n).toNat)

end

end A338268.P14007061947739273798

/-! ## A338268.P9148036878817623040

`A355741(A261807(n+2)-A018252(n+1))`
-/

namespace A338268.P9148036878817623040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A261807 (n + 2) - A018252 (n + 1)).toNat

end

end A338268.P9148036878817623040

/-! ## A338268.P15755255056012662986

`A325194(lcm(n, A033265(3*n+5)))`
-/

namespace A338268.P15755255056012662986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325194 (Int.lcm (n : ℤ) (A033265 (3 * n + 5)))

end

end A338268.P15755255056012662986

/-!
# A338269: Odd primes p such that the area of the triangle with sides p and the next two primes achieves a record for closeness to an integer.

The programs for A338269, there is no canonical definition to state claims against.
-/

/-! ## A338269.P12799482803933575017

`A006530(or(2, A199816(n+1)))`
-/

namespace A338269.P12799482803933575017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 2 (A199816 (n + 1))).toNat

end

end A338269.P12799482803933575017

/-!
# A338270: Primes p such that the sum of p and the average of the primes immediately before and after p is prime.

The programs for A338270, there is no canonical definition to state claims against.
-/

/-! ## A338270.P2892324434311270904

`A076272(A338273(n+1))`
-/

namespace A338270.P2892324434311270904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A338273 (n + 1)).toNat

end

end A338270.P2892324434311270904

/-! ## A338270.P14819346559390085720

`A076272(p?[A135731(n+1)+A073273(n+1)])`
-/

namespace A338270.P14819346559390085720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) + A073273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338270.P14819346559390085720

/-! ## A338270.P5242231898222211119

`A076272(p?[A024675(n+1)+A024675(n+2)])`
-/

namespace A338270.P5242231898222211119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A024675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338270.P5242231898222211119

/-! ## A338270.P3851834623446151599

`A076272(p?[A052288(n+1)+A001043(n+2)])`
-/

namespace A338270.P3851834623446151599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (n + 1) + A001043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338270.P3851834623446151599

/-!
# A338271: a(n) is the number of compositions of n, b_1 + ... + b_t = n such that sqrt(b_1 + sqrt(b_2 + ... + sqrt(b_t)...)) is an integer.

The programs for A338271, there is no canonical definition to state claims against.
-/

/-! ## A338271.P12112451045051035920

`A116127(A005380(n)+∑[char[3*n]])`
-/

namespace A338271.P12112451045051035920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116127 (A005380 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A338271.P12112451045051035920

/-! ## A338271.P17080840089324137565

`and(A174296(n)!, A244198(2*(n+2)))`
-/

namespace A338271.P17080840089324137565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A174296 n).toNat : ℤ) (A244198 (2 * (n + 2)))

end

end A338271.P17080840089324137565

/-! ## A338271.P15654177039902118256

`A037834(or(comp[2*(n+1)], A070218(n+1)))`
-/

namespace A338271.P15654177039902118256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A070218 (n + 1))).toNat

end

end A338271.P15654177039902118256

/-! ## A338271.P15415002534061690139

`A299236(A288363(n)+A000007(n))`
-/

namespace A338271.P15415002534061690139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (A288363 n + A000007 n).toNat

end

end A338271.P15415002534061690139

/-! ## A338271.P15259034079318189010

`A299236(lcm(A023396(n+1), A288363(n)))`
-/

namespace A338271.P15259034079318189010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (Int.lcm (A023396 (n + 1)) (A288363 n))

end

end A338271.P15259034079318189010

/-!
# A338273: a(n) is the sum of A338270(n) and the average of the primes immediately before and after A338270(n).

The programs for A338273, the canonical program `A338273.P14237024177931502386` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338273 has offset 1).

The definition of A338273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338273.P10310622413116397225

`p?[A135731(n+1)+A073273(n+1)]`
-/

namespace A338273.P10310622413116397225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) + A073273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338273.P10310622413116397225

namespace A338273

/-- `p?[A135731(n+1)+A073273(n+1)]` -/
def P10310622413116397225.Spec : Prop :=
  ∀ n, P10310622413116397225.a n = A338273 (n + 1)

end A338273

/-! ## A338273.P14237024177931502386

`p?[A024675(n+1)+A024675(n+2)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338273

/-- `p?[A024675(n+1)+A024675(n+2)]` -/
def P14237024177931502386.Spec : Prop :=
  ∀ n, P14237024177931502386.a n = A338273 (n + 1)

theorem P14237024177931502386.correct : P14237024177931502386.Spec := by
  intro n
  simp only [A338273, Nat.add_sub_cancel]

end A338273

/-! ## A338273.P15369184845452524342

`p?[A052288(n+1)+A001043(n+2)]`
-/

namespace A338273.P15369184845452524342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (n + 1) + A001043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338273.P15369184845452524342

namespace A338273

/-- `p?[A052288(n+1)+A001043(n+2)]` -/
def P15369184845452524342.Spec : Prop :=
  ∀ n, P15369184845452524342.a n = A338273 (n + 1)

end A338273

/-! ## A338273.P13291632064132115894

`p?[A014682(A096277(n+1))]`
-/

namespace A338273.P13291632064132115894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A096277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338273.P13291632064132115894

namespace A338273

/-- `p?[A014682(A096277(n+1))]` -/
def P13291632064132115894.Spec : Prop :=
  ∀ n, P13291632064132115894.a n = A338273 (n + 1)

end A338273

/-! ## A338273.P6921188432183389605

`A338270(n+1)+A033597(A338270(n+1))`
-/

namespace A338273.P6921188432183389605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338270 (n + 1) + A033597 (A338270 (n + 1)).toNat

end

end A338273.P6921188432183389605

namespace A338273

/-- `A338270(n+1)+A033597(A338270(n+1))` -/
def P6921188432183389605.Spec : Prop :=
  ∀ n, P6921188432183389605.a n = A338273 (n + 1)

end A338273

/-!
# A338274: Number of decompositions of 2*n >= 4 into an unordered sum of two primes, n - d and n + d, such that d < sqrt(2*n - 1).

The programs for A338274, there is no canonical definition to state claims against.
-/

/-! ## A338274.P9376130753802183946

`A285914(gcd(A038011(n+5), A158458(n+4)))`
-/

namespace A338274.P9376130753802183946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (Int.gcd (A038011 (n + 5)) (A158458 (n + 4)))

end

end A338274.P9376130753802183946

/-! ## A338274.P15576366859120082164

`A125238(A125241(n+5))-A023531(n)`
-/

namespace A338274.P15576366859120082164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (A125241 (n + 5)).toNat - A023531 n

end

end A338274.P15576366859120082164

/-! ## A338274.P17376318726722703103

`Δ[A156251(3*A277644(n+1))]`
-/

namespace A338274.P17376318726722703103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (3 * A277644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338274.P17376318726722703103

/-! ## A338274.P17534593792903723938

`A194285(A038465(n+1)*A285012(n+1))`
-/

namespace A338274.P17534593792903723938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A038465 (n + 1) * A285012 (n + 1)).toNat

end

end A338274.P17534593792903723938

/-! ## A338274.P12002499571093048463

`A285277(A163419(n+1))+A091247(3*n+1)`
-/

namespace A338274.P12002499571093048463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (A163419 (n + 1)).toNat + A091247 (3 * n + 1)

end

end A338274.P12002499571093048463

/-!
# A338277: Greatest integer whose square root is less than or equal to Sum_{j=0..n} sqrt(j).

The programs for A338277, the canonical program `A338277.P7370982127005809496` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338277 has offset 0).

The definition of A338277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338277.P7370982127005809496

`floor(∑[sqrt(n)]²)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338277

/-- `floor(∑[sqrt(n)]²)` -/
def P7370982127005809496.Spec : Prop :=
  ∀ n, P7370982127005809496.a n = A338277 n

theorem P7370982127005809496.correct : P7370982127005809496.Spec := by
  intro n
  simp only [A338277]

end A338277

/-! ## A338277.P14291151670135128745

`A153151(ceil(∑[sqrt(n)]²))`
-/

namespace A338277.P14291151670135128745
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 ⌈(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌉.toNat

end

end A338277.P14291151670135128745

namespace A338277

/-- `A153151(ceil(∑[sqrt(n)]²))` -/
def P14291151670135128745.Spec : Prop :=
  ∀ n, P14291151670135128745.a n = A338277 n

end A338277

/-! ## A338277.P7931542699716175907

`∑[∑[A096386(A189993(n+1))]]`
-/

namespace A338277.P7931542699716175907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 (A189993 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338277.P7931542699716175907

namespace A338277

/-- `∑[∑[A096386(A189993(n+1))]]` -/
def P7931542699716175907.Spec : Prop :=
  ∀ n, P7931542699716175907.a n = A338277 n

end A338277

/-!
# A338278: G.f.: Sum_{n>=0} ( Product_{k=1..n} 1 + (1+x)^k ) / 3^(n+1).

The programs for A338278, there is no canonical definition to state claims against.
-/

/-! ## A338278.P12436716052684486778

`or(A048865(3^n*C(2*n, n)+1), A177316(n))`
-/

namespace A338278.P12436716052684486778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048865 (3 ^ n * Nat.choose (2 * n) n + 1)) (A177316 n)

end

end A338278.P12436716052684486778

/-!
# A338279: Number of 3-uniform 2-regular hypergraphs on 3n unlabeled nodes.

The programs for A338279, there is no canonical definition to state claims against.
-/

/-! ## A338279.P15293793678817925849

`Δ[A129416(round(sqrt(n²+1)))]`
-/

namespace A338279.P15293793678817925849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129416 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338279.P15293793678817925849

/-!
# A338280: Triangle T read by rows: T(n, k) = k*n^(n-k-1) with 0 < k < n.

The programs for A338280, the canonical program `A338280.P8662157662031272285` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338280 has offset 2).

The definition of A338280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338280.P18005827412822040933

`A232006(eq[0, A103452(n)])`
-/

namespace A338280.P18005827412822040933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338280.P18005827412822040933

namespace A338280

/-- `A232006(eq[0, A103452(n)])` -/
def P18005827412822040933.Spec : Prop :=
  ∀ n, P18005827412822040933.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P12448559490509674810

`A232006(eq[0, A103516(n)])`
-/

namespace A338280.P12448559490509674810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338280.P12448559490509674810

namespace A338280

/-- `A232006(eq[0, A103516(n)])` -/
def P12448559490509674810.Spec : Prop :=
  ∀ n, P12448559490509674810.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P8960526828964148695

`A232006(eq[0, A145677(n)])`
-/

namespace A338280.P8960526828964148695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338280.P8960526828964148695

namespace A338280

/-- `A232006(eq[0, A145677(n)])` -/
def P8960526828964148695.Spec : Prop :=
  ∀ n, P8960526828964148695.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P9266434918359086747

`A232006(eq[0, A158821(n)])`
-/

namespace A338280.P9266434918359086747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338280.P9266434918359086747

namespace A338280

/-- `A232006(eq[0, A158821(n)])` -/
def P9266434918359086747.Spec : Prop :=
  ∀ n, P9266434918359086747.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P8662157662031272285

`A058127(A099375(n)+2+n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A338280

/-- `A058127(A099375(n)+2+n)` -/
def P8662157662031272285.Spec : Prop :=
  ∀ n, P8662157662031272285.a n = A338280 (n + 2)

theorem P8662157662031272285.correct : P8662157662031272285.Spec := by
  intro n
  simp only [A338280, Nat.add_sub_cancel]

end A338280

/-! ## A338280.P6979805485179639980

`A232006(eq[n, A316669(n+1)])`
-/

namespace A338280.P6979805485179639980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338280.P6979805485179639980

namespace A338280

/-- `A232006(eq[n, A316669(n+1)])` -/
def P6979805485179639980.Spec : Prop :=
  ∀ n, P6979805485179639980.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P17432761051311992065

`A232006(2*A014132(n+1)-n)`
-/

namespace A338280.P17432761051311992065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A338280.P17432761051311992065

namespace A338280

/-- `A232006(2*A014132(n+1)-n)` -/
def P17432761051311992065.Spec : Prop :=
  ∀ n, P17432761051311992065.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P5929827211633798915

`A058127(2*A004736(n+1)+n+1)`
-/

namespace A338280.P5929827211633798915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (2 * A004736 (n + 1) + (n + 1 : ℤ)).toNat

end

end A338280.P5929827211633798915

namespace A338280

/-- `A058127(2*A004736(n+1)+n+1)` -/
def P5929827211633798915.Spec : Prop :=
  ∀ n, P5929827211633798915.a n = A338280 (n + 2)

theorem P5929827211633798915.correct : P5929827211633798915.Spec := by
  intro n
  simp only [A338280, Nat.add_sub_cancel, A338280.P5929827211633798915.a, A338280.P8662157662031272285.a, A004736, A004736.P10337537277358081527.a, A058127, A058127.P5154211629077519566.a, A099375, A099375.P13700148065993022910.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A338280

/-! ## A338280.P3148869209761164168

`A232006(A014132(A014132(n+1)))`
-/

namespace A338280.P3148869209761164168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A338280.P3148869209761164168

namespace A338280

/-- `A232006(A014132(A014132(n+1)))` -/
def P3148869209761164168.Spec : Prop :=
  ∀ n, P3148869209761164168.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P7426248039486293354

`A232006(eq[A023532(n), A035214(n)])`
-/

namespace A338280.P7426248039486293354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338280.P7426248039486293354

namespace A338280

/-- `A232006(eq[A023532(n), A035214(n)])` -/
def P7426248039486293354.Spec : Prop :=
  ∀ n, P7426248039486293354.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P1346107944174540067

`A232006(A140978(n+1)-A061579(n))`
-/

namespace A338280.P1346107944174540067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (A140978 (n + 1) - A061579 n).toNat

end

end A338280.P1346107944174540067

namespace A338280

/-- `A232006(A140978(n+1)-A061579(n))` -/
def P1346107944174540067.Spec : Prop :=
  ∀ n, P1346107944174540067.a n = A338280 (n + 2)

end A338280

/-! ## A338280.P10630079630786267204

`A058127(A038722(n+1)+A003057(n+2))`
-/

namespace A338280.P10630079630786267204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A038722 (n + 1) + A003057 (n + 2)).toNat

end

end A338280.P10630079630786267204

namespace A338280

/-- `A058127(A038722(n+1)+A003057(n+2))` -/
def P10630079630786267204.Spec : Prop :=
  ∀ n, P10630079630786267204.a n = A338280 (n + 2)

end A338280

/-!
# A338281: a(n) is the sum of n and the largest proper divisor of n.

The programs for A338281, there is no canonical definition to state claims against.
-/

/-! ## A338281.P14833184875776934738

`n+2+A032742(n+2)`
-/

namespace A338281.P14833184875776934738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A032742 (n + 2)

end

end A338281.P14833184875776934738

/-! ## A338281.P4927686474820121254

`A166250(n+2)+1`
-/

namespace A338281.P4927686474820121254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166250 (n + 2) + 1

end

end A338281.P4927686474820121254

/-! ## A338281.P2880154427578653668

`A089196(n+1)+3+n`
-/

namespace A338281.P2880154427578653668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089196 (n + 1) + 3 + (n : ℤ)

end

end A338281.P2880154427578653668

/-! ## A338281.P15233233987542058494

`4*(n+2)-A182084(n+2)`
-/

namespace A338281.P15233233987542058494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 2) : ℤ) - A182084 (n + 2)

end

end A338281.P15233233987542058494

/-! ## A338281.P6903045635357455525

`∑{d}[A020639(n+2), (n+2)/#]`
-/

namespace A338281.P6903045635357455525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 2 : ℚ) / (d : ℚ)

end

end A338281.P6903045635357455525

/-! ## A338281.P17868155055973561232

`A070935(n+2)/(n+2)+n+2`
-/

namespace A338281.P17868155055973561232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070935 (n + 2) : ℚ) / (n + 2 : ℚ) + (n + 2 : ℚ)

end

end A338281.P17868155055973561232

/-! ## A338281.P6881066882386566085

`(n+2)/A020639(∏{p}[n+2, #])+n+2`
-/

namespace A338281.P6881066882386566085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) + (n + 2 : ℚ)

end

end A338281.P6881066882386566085

/-! ## A338281.P10289565726189420556

`(n+2)/A020639(2*n-(n-2))+n+2`
-/

namespace A338281.P10289565726189420556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A020639 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat : ℚ) + (n + 2 : ℚ)

end

end A338281.P10289565726189420556

/-! ## A338281.P17444274743634010591

`A318515(n+2)+A318514(n+2)`
-/

namespace A338281.P17444274743634010591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318515 (n + 2) + A318514 (n + 2)

end

end A338281.P17444274743634010591

/-! ## A338281.P13250947739167349199

`A000203(n+2)-A318505(n+2)`
-/

namespace A338281.P13250947739167349199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - A318505 (n + 2)

end

end A338281.P13250947739167349199

/-! ## A338281.P8976084689843021770

`A192544(n+1)%A182084(n+2)`
-/

namespace A338281.P8976084689843021770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192544 (n + 1)) (A182084 (n + 2))

end

end A338281.P8976084689843021770

/-! ## A338281.P16381086753722209

`A046666(n+2)+A064916(n+2)+1`
-/

namespace A338281.P16381086753722209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2) + (A064916 (n + 2) + 1)

end

end A338281.P16381086753722209

/-! ## A338281.P1822997360268832410

`A106409(n+2)+2*A318515(n+2)`
-/

namespace A338281.P1822997360268832410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106409 (n + 2) + 2 * A318515 (n + 2)

end

end A338281.P1822997360268832410

/-! ## A338281.P11099063722945967875

`2*A318514(n+2)-A106409(n+2)`
-/

namespace A338281.P11099063722945967875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318514 (n + 2) - A106409 (n + 2)

end

end A338281.P11099063722945967875

/-! ## A338281.P5317188514666572391

`A000027(n+2)+A000027(n+2)/A020639(n+2)`
-/

namespace A338281.P5317188514666572391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) + (A000027 (n + 2) : ℚ) / (A020639 (n + 2) : ℚ)

end

end A338281.P5317188514666572391

/-! ## A338281.P8495828935371852704

`2*(n+2)-A060681(n+2)`
-/

namespace A338281.P8495828935371852704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A060681 (n + 2)

end

end A338281.P8495828935371852704

/-! ## A338281.P8983691997639751707

`Δ[∑[(n+1)/A020639(n+1)]-n]+3+n`
-/

namespace A338281.P8983691997639751707
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 + (n : ℚ)

end

end A338281.P8983691997639751707

/-! ## A338281.P15384058587779910296

`A117818(n+2)+A005451(n+2)`
-/

namespace A338281.P15384058587779910296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 2) + A005451 (n + 2)

end

end A338281.P15384058587779910296

/-! ## A338281.P12951805748301935294

`A004277(n+1)+2-A060681(n+2)`
-/

namespace A338281.P12951805748301935294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + (2 - A060681 (n + 2))

end

end A338281.P12951805748301935294

/-!
# A338283: Lexicographically earliest sequence of positive integers such that for any distinct m and n, Sum_{k = m+1-a(m)..m} a(k) <> Sum_{k = n+1-a(n)..n} a(k).

The programs for A338283, there is no canonical definition to state claims against.
-/

/-! ## A338283.P15303518213388912778

`A338292(record[A003963(A349523(n+1))])`
-/

namespace A338283.P15303518213388912778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A349523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338292 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338283.P15303518213388912778

/-! ## A338283.P17022647503601277197

`A329697(∑[A007953(A152064(n))])`
-/

namespace A338283.P17022647503601277197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A152064 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338283.P17022647503601277197

/-! ## A338283.P17025556319120106973

`A214973(A014634(n)+A014167(n+1))`
-/

namespace A338283.P17025556319120106973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (A014634 n + A014167 (n + 1)).toNat

end

end A338283.P17025556319120106973

/-! ## A338283.P13789430739538357142

`A336346(n+1)^A000041(Δ[A048313(n)])`
-/

namespace A338283.P13789430739538357142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048313 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336346 (n + 1) : ℚ) ^ (A000041 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A338283.P13789430739538357142

/-! ## A338283.P7376559781102706797

`A336346(A187829(n+1))`
-/

namespace A338283.P7376559781102706797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336346 (A187829 (n + 1)).toNat

end

end A338283.P7376559781102706797

/-!
# A338284: a(n) is the smallest nonsquare m such that the second partial quotient in the continued fraction for sqrt(m) equals n.

The programs for A338284, the canonical program `A338284.P11673069137575542411` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338284 has offset 1).

The definition of A338284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338284.P11673069137575542411

`A171621(xor(1, n+2))+2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338284

/-- `A171621(xor(1, n+2))+2` -/
def P11673069137575542411.Spec : Prop :=
  ∀ n, P11673069137575542411.a n = A338284 (n + 1)

theorem P11673069137575542411.correct : P11673069137575542411.Spec := by
  intro n
  simp only [A338284, Nat.add_sub_cancel]

end A338284

/-! ## A338284.P17945697501137197988

`(lcm(2, n+3)/2)²-A133265(n)`
-/

namespace A338284.P17945697501137197988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 3) : ℚ) / 2) ^ 2 - (A133265 n : ℚ)

end

end A338284.P17945697501137197988

namespace A338284

/-- `(lcm(2, n+3)/2)²-A133265(n)` -/
def P17945697501137197988.Spec : Prop :=
  ∀ n, P17945697501137197988.a n = (A338284 (n + 1) : ℚ)

end A338284

/-! ## A338284.P12070169312234245300

`A261327(n+1)+A130824(A193356(n+1))`
-/

namespace A338284.P12070169312234245300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (n + 1) + A130824 (A193356 (n + 1)).toNat

end

end A338284.P12070169312234245300

namespace A338284

/-- `A261327(n+1)+A130824(A193356(n+1))` -/
def P12070169312234245300.Spec : Prop :=
  ∀ n, P12070169312234245300.a n = A338284 (n + 1)

end A338284

/-! ## A338284.P15144906735945842211

`A026741(n+3)²-A133265(n)`
-/

namespace A338284.P15144906735945842211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 3) ^ 2 - A133265 n

end

end A338284.P15144906735945842211

namespace A338284

/-- `A026741(n+3)²-A133265(n)` -/
def P15144906735945842211.Spec : Prop :=
  ∀ n, P15144906735945842211.a n = A338284 (n + 1)

end A338284

/-! ## A338284.P15014780771380642739

`A168077(n+3)-A133265(n)`
-/

namespace A338284.P15014780771380642739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 3) - A133265 n

end

end A338284.P15014780771380642739

namespace A338284

/-- `A168077(n+3)-A133265(n)` -/
def P15014780771380642739.Spec : Prop :=
  ∀ n, P15014780771380642739.a n = A338284 (n + 1)

end A338284

/-! ## A338284.P4418287823908662617

`A174239(n+4)*A174239(n)+2`
-/

namespace A338284.P4418287823908662617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (n + 4) * A174239 n + 2

end

end A338284.P4418287823908662617

namespace A338284

/-- `A174239(n+4)*A174239(n)+2` -/
def P4418287823908662617.Spec : Prop :=
  ∀ n, P4418287823908662617.a n = A338284 (n + 1)

end A338284

/-! ## A338284.P9379859630841149573

`A079097(n)+A008642(Δ[A081351(n)])`
-/

namespace A338284.P9379859630841149573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n + A008642 (f1 (n + 1) - f1 n).toNat

end

end A338284.P9379859630841149573

namespace A338284

/-- `A079097(n)+A008642(Δ[A081351(n)])` -/
def P9379859630841149573.Spec : Prop :=
  ∀ n, P9379859630841149573.a n = A338284 (n + 1)

end A338284

/-! ## A338284.P7902554374309330922

`A170950(A171621(n+3))`
-/

namespace A338284.P7902554374309330922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170950 (A171621 (n + 3)).toNat

end

end A338284.P7902554374309330922

namespace A338284

/-- `A170950(A171621(n+3))` -/
def P7902554374309330922.Spec : Prop :=
  ∀ n, P7902554374309330922.a n = A338284 (n + 1)

end A338284

/-! ## A338284.P795322155812400257

`A028391(A229525(n+1)-(n+1))`
-/

namespace A338284.P795322155812400257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A229525 (n + 1) - (n + 1 : ℤ)).toNat

end

end A338284.P795322155812400257

namespace A338284

/-- `A028391(A229525(n+1)-(n+1))` -/
def P795322155812400257.Spec : Prop :=
  ∀ n, P795322155812400257.a n = A338284 (n + 1)

end A338284

/-! ## A338284.P753232436493800313

`A170950(A026741(n+1)*A026741(n+5))`
-/

namespace A338284.P753232436493800313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170950 (A026741 (n + 1) * A026741 (n + 5)).toNat

end

end A338284.P753232436493800313

namespace A338284

/-- `A170950(A026741(n+1)*A026741(n+5))` -/
def P753232436493800313.Spec : Prop :=
  ∀ n, P753232436493800313.a n = A338284 (n + 1)

end A338284

/-!
# A338285: a(n) = Sum_{k = n+1-A338283(n)..n} A338283(n).

The programs for A338285, there is no canonical definition to state claims against.
-/

/-! ## A338285.P5932525695988556497

`A326196(A168267(3*n+2))-1`
-/

namespace A338285.P5932525695988556497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326196 (A168267 (3 * n + 2)).toNat - 1

end

end A338285.P5932525695988556497

/-!
# A338286: a(n) = A338268(k^2 + 2*n, k) for sufficiently large k.

The programs for A338286, there is no canonical definition to state claims against.
-/

/-! ## A338286.P3105356182287943366

`Δ[record[A109043(A338268(n+1))]]`
-/

namespace A338286.P3105356182287943366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A338268 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338286.P3105356182287943366

/-! ## A338286.P1836523418004056955

`A045670(A022553(n))+A000048(n)`
-/

namespace A338286.P1836523418004056955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045670 (A022553 n).toNat + A000048 n

end

end A338286.P1836523418004056955

/-! ## A338286.P2442871219815025405

`2*A196266(A005169(n))`
-/

namespace A338286.P2442871219815025405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196266 (A005169 n).toNat

end

end A338286.P2442871219815025405

/-! ## A338286.P6865850936214894783

`A239933(floor(sqrt(A335456(n))))`
-/

namespace A338286.P6865850936214894783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239933 (Int.sqrt (A335456 n)).toNat

end

end A338286.P6865850936214894783

/-! ## A338286.P7777821153337809325

`A329129(2^n*A135948(n+1))`
-/

namespace A338286.P7777821153337809325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 ((2 ^ n : ℤ) * A135948 (n + 1)).toNat

end

end A338286.P7777821153337809325

/-!
# A338288: Squares visited by the white knight when a white knight and a black knight are moving on a spirally numbered board, always to the lowest available unvisited square; white moves first.

The programs for A338288, there is no canonical definition to state claims against.
-/

/-! ## A338288.P401273835100260164

`A338290(A004277(n))`
-/

namespace A338288.P401273835100260164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338290 (A004277 n).toNat

end

end A338288.P401273835100260164

/-! ## A338288.P16668059473916994133

`A338290(A004275(n+1))`
-/

namespace A338288.P16668059473916994133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338290 (A004275 (n + 1)).toNat

end

end A338288.P16668059473916994133

/-! ## A338288.P9026560507888577124

`A338290(A028310(2*n))`
-/

namespace A338288.P9026560507888577124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338290 (A028310 (2 * n)).toNat

end

end A338288.P9026560507888577124

/-! ## A338288.P4291611033255037004

`A338290(A028310(n)+n)`
-/

namespace A338288.P4291611033255037004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338290 (A028310 n + (n : ℤ)).toNat

end

end A338288.P4291611033255037004

/-! ## A338288.P829351075256046724

`A338290(A099467(2*n+1)-n)`
-/

namespace A338288.P829351075256046724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338290 (A099467 (2 * n + 1) - (n : ℤ)).toNat

end

end A338288.P829351075256046724

/-!
# A338289: Squares visited by the black knight when a white knight and a black knight are moving on a spirally numbered board, always to the lowest available unvisited square; white moves first.

The programs for A338289, there is no canonical definition to state claims against.
-/

/-! ## A338289.P3244444697376962714

`A338290(Δ[n²])`
-/

namespace A338289.P3244444697376962714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A338289.P3244444697376962714

/-! ## A338289.P1712737837314517245

`root(A338290(2*n+1), 2)²`
-/

namespace A338289.P1712737837314517245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A338290 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A338289.P1712737837314517245

/-! ## A338289.P11260048735192375312

`A000027(A338290(2*n+1))`
-/

namespace A338289.P11260048735192375312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A338290 (2 * n + 1)).toNat

end

end A338289.P11260048735192375312

/-! ## A338289.P15332744208703842481

`A338290(2*n+1)%A063418(n)`
-/

namespace A338289.P15332744208703842481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338290 (2 * n + 1)) (A063418 n)

end

end A338289.P15332744208703842481

/-! ## A338289.P9134868314920499033

`A060681(2*A338290(2*n+1))`
-/

namespace A338289.P9134868314920499033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (2 * A338290 (2 * n + 1)).toNat

end

end A338289.P9134868314920499033

/-!
# A338292: Lexicographically earliest sequence of positive integers such that for any distinct m and n, (a(m+1-a(m)), ..., a(m)) <> (a(n+1-a(n)), ..., a(n)).

The programs for A338292, there is no canonical definition to state claims against.
-/

/-! ## A338292.P3531073959596838376

`A001221(A001313(3*(n+1))*A345113(n+1))`
-/

namespace A338292.P3531073959596838376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001313 (3 * (n + 1)) * A345113 (n + 1)).toNat

end

end A338292.P3531073959596838376

/-! ## A338292.P7098632809884467962

`A101080(A068020(n+1)+A007318(n))`
-/

namespace A338292.P7098632809884467962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 (A068020 (n + 1) + A007318 n).toNat

end

end A338292.P7098632809884467962

/-! ## A338292.P4549850025391268211

`A354582(eq[A124767(2*n), A330036(n)])`
-/

namespace A338292.P4549850025391268211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338292.P4549850025391268211

/-! ## A338292.P16366515082576706831

`A358550(A242528(n+1)+A067080(n+1))`
-/

namespace A338292.P16366515082576706831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358550 (A242528 (n + 1) + A067080 (n + 1)).toNat

end

end A338292.P16366515082576706831

/-! ## A338292.P4605645194009402593

`A358550(A358373(n+1)+A242528(n+1))`
-/

namespace A338292.P4605645194009402593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358550 (A358373 (n + 1) + A242528 (n + 1)).toNat

end

end A338292.P4605645194009402593

/-!
# A338293: Number of matchings in the complete binary tree of n rows.

The programs for A338293, the canonical program `A338293.P17390582011274175994` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338293 has offset 0).

The definition of A338293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338293.P17390582011274175994

`a(n-1)²+2*a(n-1)*a(n-2)²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338293

/-- `a(n-1)²+2*a(n-1)*a(n-2)²` -/
def P17390582011274175994.Spec : Prop :=
  ∀ n, (P17390582011274175994.a n : ℤ) = A338293 n

theorem P17390582011274175994.correct : P17390582011274175994.Spec := by
  intro n
  simp only [A338293]

end A338293

/-! ## A338293.P10944798361922574921

`(a(n-1)+2*a(n-2)²)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A338293.P10944798361922574921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + 2 * a (n - 2) ^ 2) * a (n - 1)

end

end A338293.P10944798361922574921

namespace A338293

/-- `(a(n-1)+2*a(n-2)²)*a(n-1)` -/
def P10944798361922574921.Spec : Prop :=
  ∀ n, (P10944798361922574921.a n : ℤ) = A338293 n

theorem P10944798361922574921.correct : P10944798361922574921.Spec := by
  intro n
  simp only [A338293, Nat.add_sub_cancel, A338293.P10944798361922574921.a, A338293.P17390582011274175994.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A338293

/-! ## A338293.P14268926965915634344

`(a(n-1)+2*a(n-2)*a(n-2))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A338293.P14268926965915634344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + 2 * (a (n - 2) * a (n - 2))) * a (n - 1)

end

end A338293.P14268926965915634344

namespace A338293

/-- `(a(n-1)+2*a(n-2)*a(n-2))*a(n-1)` -/
def P14268926965915634344.Spec : Prop :=
  ∀ n, (P14268926965915634344.a n : ℤ) = A338293 n

theorem P14268926965915634344.correct : P14268926965915634344.Spec := by
  intro n
  simp only [A338293, Nat.add_sub_cancel, A338293.P14268926965915634344.a, A338293.P17390582011274175994.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A338293

/-! ## A338293.P9131723392226703649

`abs(A265025(A000079(n)))`
-/

namespace A338293.P9131723392226703649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265025 (A000079 n).toNat|

end

end A338293.P9131723392226703649

namespace A338293

/-- `abs(A265025(A000079(n)))` -/
def P9131723392226703649.Spec : Prop :=
  ∀ n, P9131723392226703649.a n = A338293 n

end A338293

/-! ## A338293.P3338319364062541166

`abs(A265025(record[A131816(n)]))`
-/

namespace A338293.P3338319364062541166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265025 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A338293.P3338319364062541166

namespace A338293

/-- `abs(A265025(record[A131816(n)]))` -/
def P3338319364062541166.Spec : Prop :=
  ∀ n, P3338319364062541166.a n = A338293 n

end A338293

/-!
# A338295: For n > 1, a(n) is the largest base b <= n such that the digits of n in base b contain the digit b-1; a(1) = 1.

The programs for A338295, there is no canonical definition to state claims against.
-/

/-! ## A338295.P15116448245985411307

`A353489(A344607(3*n+4))+A289439(n+2)`
-/

namespace A338295.P15116448245985411307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 (A344607 (3 * n + 4)).toNat + A289439 (n + 2)

end

end A338295.P15116448245985411307

/-! ## A338295.P13282085138423343413

`A351005(n)+A080764(A014551(n))`
-/

namespace A338295.P13282085138423343413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n + A080764 (A014551 n).toNat

end

end A338295.P13282085138423343413

/-! ## A338295.P7674734174952087123

`A289439(n+2)+A030308(A006504(n+5))`
-/

namespace A338295.P7674734174952087123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2) + A030308 (A006504 (n + 5)).toNat

end

end A338295.P7674734174952087123

/-! ## A338295.P997734520951425730

`A316867(A122111(3*n+4))+A289439(n+2)`
-/

namespace A338295.P997734520951425730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A122111 (3 * n + 4)).toNat + A289439 (n + 2)

end

end A338295.P997734520951425730

/-!
# A338296: Number of non-isomorphic 3-uniform 3-regular hypergraphs on n nodes.

The programs for A338296, there is no canonical definition to state claims against.
-/

/-! ## A338296.P7534559387662266896

`A037203(xor(A001250(n), A164363(n+1)))`
-/

namespace A338296.P7534559387662266896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (Int.xor (A001250 n) (A164363 (n + 1))).toNat

end

end A338296.P7534559387662266896

/-! ## A338296.P8714247938579526158

`and(A363720(2*(n+2)), A367221(A002530(n)))`
-/

namespace A338296.P8714247938579526158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A363720 (2 * (n + 2))) (A367221 (A002530 n).toNat)

end

end A338296.P8714247938579526158

/-! ## A338296.P5754144664726483370

`and(A033183(A258797(n+1)), A240210(3*n+1))`
-/

namespace A338296.P5754144664726483370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033183 (A258797 (n + 1)).toNat) (A240210 (3 * n + 1))

end

end A338296.P5754144664726483370

/-!
# A338299: Primes of the form (p^2+p+1)/3 where p is prime.

The programs for A338299, there is no canonical definition to state claims against.
-/

/-! ## A338299.P6882876063106507285

`(A240971(n+1)²+A240971(n+1)+1)/3`
-/

namespace A338299.P6882876063106507285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240971 (n + 1) ^ 2 + A240971 (n + 1) + 1 : ℚ) / 3

end

end A338299.P6882876063106507285

/-! ## A338299.P4165701198864131889

`A068626(A240971(n+1))`
-/

namespace A338299.P4165701198864131889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A240971 (n + 1)).toNat

end

end A338299.P4165701198864131889

/-! ## A338299.P10391487061107058304

`A068626(p?[A002640(n+1)])`
-/

namespace A338299.P10391487061107058304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338299.P10391487061107058304

/-! ## A338299.P9461971102573976610

`A068626(p?[3*A111251(n+1)+1])`
-/

namespace A338299.P9461971102573976610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111251 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338299.P9461971102573976610

/-! ## A338299.P656266867114422567

`A068626(p?[3*A002504(n+1)-2])`
-/

namespace A338299.P656266867114422567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002504 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338299.P656266867114422567

/-! ## A338299.P10509155838684288182

`A046163(p?[A002640(n+1)])`
-/

namespace A338299.P10509155838684288182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338299.P10509155838684288182

/-! ## A338299.P2206274690422565278

`A092076(p?[A002640(n+1)])`
-/

namespace A338299.P2206274690422565278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338299.P2206274690422565278

/-! ## A338299.P4547774526678541023

`A208994(p?[A002640(n+1)])`
-/

namespace A338299.P4547774526678541023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338299.P4547774526678541023

/-! ## A338299.P229638980745630106

`A208994(p?[A240971(n+1)])`
-/

namespace A338299.P229638980745630106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338299.P229638980745630106

/-! ## A338299.P15303387712807724788

`A081256(A240971(n+1)+1)`
-/

namespace A338299.P15303387712807724788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A240971 (n + 1) + 1).toNat

end

end A338299.P15303387712807724788

/-! ## A338299.P14348516590167529862

`A208994(or(1, A240971(n+1)))`
-/

namespace A338299.P14348516590167529862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 (Int.lor 1 (A240971 (n + 1))).toNat

end

end A338299.P14348516590167529862

/-! ## A338299.P12216283542009679458

`record[A081256(A002476(n+1)+1)]`
-/

namespace A338299.P12216283542009679458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A002476 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338299.P12216283542009679458

/-! ## A338299.P6465140351215996891

`A081256(p?[A002640(n+1)]+1)`
-/

namespace A338299.P6465140351215996891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A338299.P6465140351215996891

/-! ## A338299.P18446154517090775054

`A305185(p?[A002640(n+1)]+1)`
-/

namespace A338299.P18446154517090775054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A338299.P18446154517090775054

/-! ## A338299.P14766552956357496609

`record[A081256(A063655(A002476(n+1)))]`
-/

namespace A338299.P14766552956357496609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A063655 (A002476 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338299.P14766552956357496609

/-! ## A338299.P16503404256081950010

`A077043(A004396(p?[A002640(n+1)]))`
-/

namespace A338299.P16503404256081950010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A004396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A338299.P16503404256081950010

/-! ## A338299.P9308389639330651383

`A305185(A014681(p?[A002640(n+1)]))`
-/

namespace A338299.P9308389639330651383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305185 (A014681 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A338299.P9308389639330651383

/-! ## A338299.P10618726806107455257

`A046163(2*A240971(n+1)-A240971(n+1))`
-/

namespace A338299.P10618726806107455257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (2 * A240971 (n + 1) - A240971 (n + 1)).toNat

end

end A338299.P10618726806107455257

/-! ## A338299.P14347103471804196859

`A208994(2*A240971(n+1)-A240971(n+1))`
-/

namespace A338299.P14347103471804196859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 (2 * A240971 (n + 1) - A240971 (n + 1)).toNat

end

end A338299.P14347103471804196859

