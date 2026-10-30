import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C049
import Seq.B001.C000
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A388408: Numbers k such that 128 * 3^k + 1 is prime.

The programs for A388408, there is no canonical definition to state claims against.
-/

/-! ## A388408.P2242865115071136823

`A382762(A084644(n+1))`
-/

namespace A388408.P2242865115071136823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382762 (A084644 (n + 1)).toNat

end

end A388408.P2242865115071136823

/-! ## A388408.P1874874715424836104

`A354704(A361245(n))+n`
-/

namespace A388408.P1874874715424836104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354704 (A361245 n).toNat + (n : ℤ)

end

end A388408.P1874874715424836104

/-!
# A388409: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n,k) * binomial(n+2,k).

The programs for A388409, the canonical program `A388409.P6917038669385513015` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388409 has offset 0).

The definition of A388409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388409.P6917038669385513015

`∑{#}[n, 3^(n-#)*C(n, #)*C(n+2, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388409

/-- `∑{#}[n, 3^(n-#)*C(n, #)*C(n+2, #)]` -/
def P6917038669385513015.Spec : Prop :=
  ∀ n, P6917038669385513015.a n = (A388409 n : ℚ)

end A388409

/-!
# A388410: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n,k) * binomial(n+3,k).

The programs for A388410, the canonical program `A388410.P10829985170952326627` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388410 has offset 0).

The definition of A388410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388410.P10829985170952326627

`∑{#}[n, 3^(n-#)*C(n, #)*C(n+3, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388410

/-- `∑{#}[n, 3^(n-#)*C(n, #)*C(n+3, #)]` -/
def P10829985170952326627.Spec : Prop :=
  ∀ n, P10829985170952326627.a n = (A388410 n : ℚ)

end A388410

/-!
# A388411: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n,k) * binomial(n+4,k).

The programs for A388411, the canonical program `A388411.P6122962602996845378` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388411 has offset 0).

The definition of A388411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388411.P6122962602996845378

`∑{#}[n, 3^(n-#)*C(n, #)*C(n+4, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388411

/-- `∑{#}[n, 3^(n-#)*C(n, #)*C(n+4, #)]` -/
def P6122962602996845378.Spec : Prop :=
  ∀ n, P6122962602996845378.a n = (A388411 n : ℚ)

end A388411

/-!
# A388412: a(n) = Sum_{k=0..n} 4^(n-k) * binomial(n,k) * binomial(n+2,k).

The programs for A388412, the canonical program `A388412.P8695236553797205226` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388412 has offset 0).

The definition of A388412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388412.P8695236553797205226

`∑{#}[n, 4^(n-#)*C(n, #)*C(n+2, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388412

/-- `∑{#}[n, 4^(n-#)*C(n, #)*C(n+2, #)]` -/
def P8695236553797205226.Spec : Prop :=
  ∀ n, P8695236553797205226.a n = (A388412 n : ℚ)

end A388412

/-!
# A388413: a(n) = Sum_{k=0..n} 4^(n-k) * binomial(n,k) * binomial(n+3,k).

The programs for A388413, the canonical program `A388413.P5045955316172643899` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388413 has offset 0).

The definition of A388413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388413.P5045955316172643899

`∑{#}[n, 4^(n-#)*C(n, #)*C(n+3, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388413

/-- `∑{#}[n, 4^(n-#)*C(n, #)*C(n+3, #)]` -/
def P5045955316172643899.Spec : Prop :=
  ∀ n, P5045955316172643899.a n = (A388413 n : ℚ)

end A388413

/-!
# A388414: a(n) = Sum_{k=0..n} 4^(n-k) * binomial(n,k) * binomial(n+4,k).

The programs for A388414, the canonical program `A388414.P15455385961530428710` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388414 has offset 0).

The definition of A388414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388414.P15455385961530428710

`∑{#}[n, 4^(n-#)*C(n, #)*C(n+4, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388414

/-- `∑{#}[n, 4^(n-#)*C(n, #)*C(n+4, #)]` -/
def P15455385961530428710.Spec : Prop :=
  ∀ n, P15455385961530428710.a n = (A388414 n : ℚ)

end A388414

/-!
# A388417: a(n) is the least k such that prime(n)^prime(n) + k is prime.

The programs for A388417, there is no canonical definition to state claims against.
-/

/-! ## A388417.P12659833994495803649

`A074966(A000040(n+1))`
-/

namespace A388417.P12659833994495803649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (A000040 (n + 1)).toNat

end

end A388417.P12659833994495803649

/-! ## A388417.P7492265338120555014

`A074966(A006005(n+1))`
-/

namespace A388417.P7492265338120555014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (A006005 (n + 1)).toNat

end

end A388417.P7492265338120555014

/-! ## A388417.P1549590862514447079

`A074966(A008578(n+2))`
-/

namespace A388417.P1549590862514447079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (A008578 (n + 2)).toNat

end

end A388417.P1549590862514447079

/-! ## A388417.P17863079948247282969

`A074966(A075643(n+2))`
-/

namespace A388417.P17863079948247282969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (A075643 (n + 2)).toNat

end

end A388417.P17863079948247282969

/-! ## A388417.P1570755242216882712

`A074966(A182986(n+2))`
-/

namespace A388417.P1570755242216882712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (A182986 (n + 2)).toNat

end

end A388417.P1570755242216882712

/-! ## A388417.P5520600428415196269

`A356370(n+1)-A388418(n+1)`
-/

namespace A388417.P5520600428415196269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356370 (n + 1) - A388418 (n + 1)

end

end A388417.P5520600428415196269

/-!
# A388418: a(n) is the least k such that prime(n)^prime(n) - k is prime.

The programs for A388418, there is no canonical definition to state claims against.
-/

/-! ## A388418.P15760973612317753454

`A074967(A000040(1+n))`
-/

namespace A388418.P15760973612317753454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (A000040 (1 + n)).toNat

end

end A388418.P15760973612317753454

/-! ## A388418.P15000207380582618432

`A074967(A216886(n+1))`
-/

namespace A388418.P15000207380582618432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (A216886 (n + 1)).toNat

end

end A388418.P15000207380582618432

/-! ## A388418.P4344382089969527118

`A074967(A008578(n+2))`
-/

namespace A388418.P4344382089969527118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (A008578 (n + 2)).toNat

end

end A388418.P4344382089969527118

/-! ## A388418.P9239977262894413010

`A074967(A182986(n+2))`
-/

namespace A388418.P9239977262894413010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (A182986 (n + 2)).toNat

end

end A388418.P9239977262894413010

/-! ## A388418.P15761341366420734179

`A074967(A324050(n+2))`
-/

namespace A388418.P15761341366420734179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (A324050 (n + 2)).toNat

end

end A388418.P15761341366420734179

/-! ## A388418.P3667343740938626609

`A074967(A238853(n+1))`
-/

namespace A388418.P3667343740938626609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (A238853 (n + 1)).toNat

end

end A388418.P3667343740938626609

/-! ## A388418.P4625365656105006662

`A356370(n+1)-A388417(n+1)`
-/

namespace A388418.P4625365656105006662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356370 (n + 1) - A388417 (n + 1)

end

end A388418.P4625365656105006662

/-!
# A388423: Arithmetic mean of the primes with n decimal digits, rounded to nearest integer.

The programs for A388423, there is no canonical definition to state claims against.
-/

/-! ## A388423.P3823635476621280925

`round(A077645(n+1)/A006879(n+1))`
-/

namespace A388423.P3823635476621280925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077645 (n + 1) : ℚ) / (A006879 (n + 1) : ℚ))

end

end A388423.P3823635476621280925

/-!
# A388424: Number of axis-aligned 2 X 2 squares in the 3D projection of a (3n+2)-dimensional hypercube with side length 2.

The programs for A388424, the canonical program `A388424.P17691383906920712434` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388424 has offset 0).

The definition of A388424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388424.P4010403558524782473

`ogf((1+28x)/(1-14x+56x^2-64x^3))`
-/

namespace A388424.P4010403558524782473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28] [1, -14, 56, -64] n

end

end A388424.P4010403558524782473

namespace A388424

/-- `ogf((1+28x)/(1-14x+56x^2-64x^3))` -/
def P4010403558524782473.Spec : Prop :=
  ∀ n, P4010403558524782473.a n = A388424 n

end A388424

/-! ## A388424.P17691383906920712434

`12*2^(3*n)-16*2^(2*n)+5*2^n`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388424

/-- `12*2^(3*n)-16*2^(2*n)+5*2^n` -/
def P17691383906920712434.Spec : Prop :=
  ∀ n, P17691383906920712434.a n = A388424 n

theorem P17691383906920712434.correct : P17691383906920712434.Spec := by
  intro n
  simp only [A388424]

end A388424

/-! ## A388424.P15604106968179063564

`A048488(n)*A171476(n)`
-/

namespace A388424.P15604106968179063564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048488 n * A171476 n

end

end A388424.P15604106968179063564

namespace A388424

/-- `A048488(n)*A171476(n)` -/
def P15604106968179063564.Spec : Prop :=
  ∀ n, P15604106968179063564.a n = A388424 n

end A388424

/-! ## A388424.P12076998247980792526

`A000079(n)*A014641(A000225(n))`
-/

namespace A388424.P12076998247980792526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A014641 (A000225 n).toNat

end

end A388424.P12076998247980792526

namespace A388424

/-- `A000079(n)*A014641(A000225(n))` -/
def P12076998247980792526.Spec : Prop :=
  ∀ n, P12076998247980792526.a n = A388424 n

end A388424

/-! ## A388424.P16628799538887141205

`A000225(n+1)*A051866(A000225(n)+1)`
-/

namespace A388424.P16628799538887141205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A051866 (A000225 n + 1).toNat

end

end A388424.P16628799538887141205

namespace A388424

/-- `A000225(n+1)*A051866(A000225(n)+1)` -/
def P16628799538887141205.Spec : Prop :=
  ∀ n, P16628799538887141205.a n = A388424 n

end A388424

/-!
# A388426: Triangle of palindromic polynomials.

The programs for A388426, there is no canonical definition to state claims against.
-/

/-! ## A388426.P2085479915879643882

`A002973(A022175(n))`
-/

namespace A388426.P2085479915879643882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002973 (A022175 n).toNat

end

end A388426.P2085479915879643882

/-! ## A388426.P7021329026827493664

`A109825(A059328(n))`
-/

namespace A388426.P7021329026827493664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (A059328 n).toNat

end

end A388426.P7021329026827493664

/-! ## A388426.P593908639423145882

`A114650(A056941(n))`
-/

namespace A388426.P593908639423145882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114650 (A056941 n).toNat

end

end A388426.P593908639423145882

/-! ## A388426.P11819595121091863556

`A030310(A157221(n))`
-/

namespace A388426.P11819595121091863556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030310 (A157221 n).toNat

end

end A388426.P11819595121091863556

/-! ## A388426.P5009095231202360220

`A089851(A099759(n))`
-/

namespace A388426.P5009095231202360220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A099759 n).toNat

end

end A388426.P5009095231202360220

/-!
# A388427: Composite numbers that are squarefree or prime powers.

The programs for A388427, the canonical program `A388427.P2071951571592344279` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388427 has offset 1).

The definition of A388427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388427.P15248272668515596914

`∪[A120944(n+1), A246547(n+1)]`
-/

namespace A388427.P15248272668515596914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388427.P15248272668515596914

namespace A388427

/-- `∪[A120944(n+1), A246547(n+1)]` -/
def P15248272668515596914.Spec : Prop :=
  ∀ n, (P15248272668515596914.a n : ℤ) = A388427 (n + 1)

end A388427

/-! ## A388427.P17211534248285380905

`filter[A002808(n+1), A340596(#)]`
-/

namespace A388427.P17211534248285380905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340596 (f1 j).toNat = 1) n)

end

end A388427.P17211534248285380905

namespace A388427

/-- `filter[A002808(n+1), A340596(#)]` -/
def P17211534248285380905.Spec : Prop :=
  ∀ n, P17211534248285380905.a n = A388427 (n + 1)

end A388427

/-! ## A388427.P2071951571592344279

`filter[A303554(n+1), A066247(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A388427

/-- `filter[A303554(n+1), A066247(#)]` -/
def P2071951571592344279.Spec : Prop :=
  ∀ n, P2071951571592344279.a n = A388427 (n + 1)

theorem P2071951571592344279.correct : P2071951571592344279.Spec := by
  intro n
  simp only [A388427, Nat.add_sub_cancel]

end A388427

/-! ## A388427.P4207848281327105067

`filter[A303554(n+2), A005171(#)]`
-/

namespace A388427.P4207848281327105067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A388427.P4207848281327105067

namespace A388427

/-- `filter[A303554(n+2), A005171(#)]` -/
def P4207848281327105067.Spec : Prop :=
  ∀ n, P4207848281327105067.a n = A388427 (n + 1)

end A388427

/-! ## A388427.P15345399516904346052

`∩[A002808(n+1), A303554(n+1)]`
-/

namespace A388427.P15345399516904346052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388427.P15345399516904346052

namespace A388427

/-- `∩[A002808(n+1), A303554(n+1)]` -/
def P15345399516904346052.Spec : Prop :=
  ∀ n, (P15345399516904346052.a n : ℤ) = A388427 (n + 1)

end A388427

/-! ## A388427.P1207819000247656831

`∩[A303554(n+1), A340656(n+1)]`
-/

namespace A388427.P1207819000247656831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388427.P1207819000247656831

namespace A388427

/-- `∩[A303554(n+1), A340656(n+1)]` -/
def P1207819000247656831.Spec : Prop :=
  ∀ n, (P1207819000247656831.a n : ℤ) = A388427 (n + 1)

end A388427

/-! ## A388427.P10463067039997393644

`∩[A188654(n+1), A303554(n+1)]`
-/

namespace A388427.P10463067039997393644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388427.P10463067039997393644

namespace A388427

/-- `∩[A188654(n+1), A303554(n+1)]` -/
def P10463067039997393644.Spec : Prop :=
  ∀ n, (P10463067039997393644.a n : ℤ) = A388427 (n + 1)

end A388427

/-!
# A388428: Expansion of e.g.f. (1 + x)*(1 + x^2/2)*cosh(x).

The programs for A388428, the canonical program `A388428.P111122667274127906` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388428 has offset 0).

The definition of A388428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388428.P111122667274127906

`ogf((1+x-2x^2+2x^3+5x^4+17x^5-4x^6+4x^7)/(1-4x^2+6x^4-4x^6+x^8))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388428

/-- `ogf((1+x-2x^2+2x^3+5x^4+17x^5-4x^6+4x^7)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P111122667274127906.Spec : Prop :=
  ∀ n, P111122667274127906.a n = A388428 n

theorem P111122667274127906.correct : P111122667274127906.Spec := by
  intro n
  simp only [A388428]

end A388428

/-!
# A388456: Triangle read by rows: coefficient [t^k] of the Ehrhart polynomial of the n-dimensional cross-polytope, multiplied by n!.

The programs for A388456, the canonical program `A388456.P8544019166265368661` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388456 has offset 0).

The definition of A388456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388456.P8544019166265368661

`T(n-1,k-1)+(row(n)-1)²*T(n-2,k)+T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388456

/-- `T(n-1,k-1)+(row(n)-1)²*T(n-2,k)+T(n-1,k)+T(n-1,k-1)` -/
def P8544019166265368661.Spec : Prop :=
  ∀ n, P8544019166265368661.a n = A388456 n

theorem P8544019166265368661.correct : P8544019166265368661.Spec := by
  intro n
  simp only [A388456]

end A388456

/-! ## A388456.P17440436061639650433

`A137394(n+1)/A002024(n+1)`
-/

namespace A388456.P17440436061639650433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137394 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A388456.P17440436061639650433

namespace A388456

/-- `A137394(n+1)/A002024(n+1)` -/
def P17440436061639650433.Spec : Prop :=
  ∀ n, P17440436061639650433.a n = (A388456 n : ℚ)

end A388456

/-! ## A388456.P11956769817517845108

`A137394(n+1)/A113764(n+1)`
-/

namespace A388456.P11956769817517845108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137394 (n + 1) : ℚ) / (A113764 (n + 1) : ℚ)

end

end A388456.P11956769817517845108

namespace A388456

/-- `A137394(n+1)/A113764(n+1)` -/
def P11956769817517845108.Spec : Prop :=
  ∀ n, P11956769817517845108.a n = (A388456 n : ℚ)

end A388456

/-! ## A388456.P5833146011871331138

`A137394(n+1)/A130146(n+1)`
-/

namespace A388456.P5833146011871331138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137394 (n + 1) : ℚ) / (A130146 (n + 1) : ℚ)

end

end A388456.P5833146011871331138

namespace A388456

/-- `A137394(n+1)/A130146(n+1)` -/
def P5833146011871331138.Spec : Prop :=
  ∀ n, P5833146011871331138.a n = (A388456 n : ℚ)

end A388456

