import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C008
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C010
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B011.C001
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

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

The programs for A388409, there is no canonical definition to state claims against.
-/

/-! ## A388409.P10480674631527045246

`A145550(2*n+3)-A000005(A008546(n))`
-/

namespace A388409.P10480674631527045246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145550 (2 * n + 3) - A000005 (A008546 n).toNat

end

end A388409.P10480674631527045246

/-!
# A388410: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n,k) * binomial(n+3,k).

The programs for A388410, there is no canonical definition to state claims against.
-/

/-! ## A388410.P17448590020149617171

`A364272(A279560(n))+A000420(n)`
-/

namespace A388410.P17448590020149617171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 (A279560 n).toNat + A000420 n

end

end A388410.P17448590020149617171

/-!
# A388412: a(n) = Sum_{k=0..n} 4^(n-k) * binomial(n,k) * binomial(n+2,k).

The programs for A388412, there is no canonical definition to state claims against.
-/

/-! ## A388412.P9703745862003283635

`A362930(A194589(2*(n+1)))-A390560(n)`
-/

namespace A388412.P9703745862003283635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362930 (A194589 (2 * (n + 1))).toNat - A390560 n

end

end A388412.P9703745862003283635

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

/-! ## A388418.P1379697686167833292

`A074967(A000040(n+1))`
-/

namespace A388418.P1379697686167833292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (A000040 (n + 1)).toNat

end

end A388418.P1379697686167833292

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

The programs for A388424, the canonical program `A388424.P17691383906920712434` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388424 has offset 0).

The definition of A388424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388424.P17691383906920712434

`12*2^(3*n)-16*2^(2*n)+5*2^n`

The canonical program, it is in `Seq.B000.C039`.
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

/-! ## A388424.P6090739325890494091

`A007586(∑[2^n])`
-/

namespace A388424.P6090739325890494091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A388424.P6090739325890494091

namespace A388424

/-- `A007586(∑[2^n])` -/
def P6090739325890494091.Spec : Prop :=
  ∀ n, P6090739325890494091.a n = A388424 n

end A388424

/-! ## A388424.P6333347113496025565

`A000079(n)*A000567(A000225(n+1))`
-/

namespace A388424.P6333347113496025565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000567 (A000225 (n + 1)).toNat

end

end A388424.P6333347113496025565

namespace A388424

/-- `A000079(n)*A000567(A000225(n+1))` -/
def P6333347113496025565.Spec : Prop :=
  ∀ n, P6333347113496025565.a n = A388424 n

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

The programs for A388427, the canonical program `A388427.P2071951571592344279` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388427 has offset 1).

The definition of A388427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388427.P2071951571592344279

`filter[A303554(n+1), A066247(#)]`

The canonical program, it is in `Seq.B008.C001`.
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

/-! ## A388427.P10393092595017349222

`filter[A340656(n+1), A384667(#)]`
-/

namespace A388427.P10393092595017349222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A388427.P10393092595017349222

namespace A388427

/-- `filter[A340656(n+1), A384667(#)]` -/
def P10393092595017349222.Spec : Prop :=
  ∀ n, P10393092595017349222.a n = A388427 (n + 1)

end A388427

/-!
# A388456: Triangle read by rows: coefficient [t^k] of the Ehrhart polynomial of the n-dimensional cross-polytope, multiplied by n!.

The programs for A388456, there is no canonical definition to state claims against.
-/

/-! ## A388456.P17440436061639650433

`A137394(n+1)/A002024(n+1)`
-/

namespace A388456.P17440436061639650433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137394 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A388456.P17440436061639650433

/-! ## A388456.P11956769817517845108

`A137394(n+1)/A113764(n+1)`
-/

namespace A388456.P11956769817517845108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137394 (n + 1) : ℚ) / (A113764 (n + 1) : ℚ)

end

end A388456.P11956769817517845108

/-! ## A388456.P5833146011871331138

`A137394(n+1)/A130146(n+1)`
-/

namespace A388456.P5833146011871331138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137394 (n + 1) : ℚ) / (A130146 (n + 1) : ℚ)

end

end A388456.P5833146011871331138

