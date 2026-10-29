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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A054900: a(n) = Sum_{j >= 1} floor(n/16^j).

The programs for A054900, the canonical program `A054900.P10951327238473995848` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054900 has offset 0).

The definition of A054900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054900.P3546849672806822947

`(n-A053836(n))/15`
-/

namespace A054900.P3546849672806822947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053836 n : ℚ) / 15

end

end A054900.P3546849672806822947

namespace A054900

/-- `(n-A053836(n))/15` -/
def P3546849672806822947.Spec : Prop :=
  ∀ n, P3546849672806822947.a n = (A054900 n : ℚ)

theorem P3546849672806822947.correct : P3546849672806822947.Spec := by
  intro n
  simp only [A054900, Nat.add_sub_cancel, A054900.P3546849672806822947.a, A054900.P10951327238473995848.a, A053836, A053836.P6566921165131624833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054900

/-! ## A054900.P13077846143659663166

`∑[val(C(4, n+1)+n, 16)]`
-/

namespace A054900.P13077846143659663166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 4 (n + 1) + n) 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P13077846143659663166

namespace A054900

/-- `∑[val(C(4, n+1)+n, 16)]` -/
def P13077846143659663166.Spec : Prop :=
  ∀ n, (P13077846143659663166.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P10951327238473995848

`a(floor(n/16))+floor(n/16)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054900

/-- `a(floor(n/16))+floor(n/16)` -/
def P10951327238473995848.Spec : Prop :=
  ∀ n, P10951327238473995848.a n = A054900 n

theorem P10951327238473995848.correct : P10951327238473995848.Spec := by
  intro n
  simp only [A054900]

end A054900

/-! ## A054900.P15388436267946252741

`∑[val(A008486(n), 16)]`
-/

namespace A054900.P15388436267946252741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008486 n).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P15388436267946252741

namespace A054900

/-- `∑[val(A008486(n), 16)]` -/
def P15388436267946252741.Spec : Prop :=
  ∀ n, (P15388436267946252741.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P1021785625826687410

`∑[val(A008706(n), 16)]`
-/

namespace A054900.P1021785625826687410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008706 n).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P1021785625826687410

namespace A054900

/-- `∑[val(A008706(n), 16)]` -/
def P1021785625826687410.Spec : Prop :=
  ∀ n, (P1021785625826687410.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P5210361531525996386

`∑[val(A028310(n), 16)]`
-/

namespace A054900.P5210361531525996386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P5210361531525996386

namespace A054900

/-- `∑[val(A028310(n), 16)]` -/
def P5210361531525996386.Spec : Prop :=
  ∀ n, (P5210361531525996386.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P5026368564993126943

`∑[val(A079908(n), 16)]`
-/

namespace A054900.P5026368564993126943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079908 n).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P5026368564993126943

namespace A054900

/-- `∑[val(A079908(n), 16)]` -/
def P5026368564993126943.Spec : Prop :=
  ∀ n, (P5026368564993126943.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P253024944536410535

`∑[val(A000007(n)+n, 16)]`
-/

namespace A054900.P253024944536410535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000007 n + (n : ℤ)).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P253024944536410535

namespace A054900

/-- `∑[val(A000007(n)+n, 16)]` -/
def P253024944536410535.Spec : Prop :=
  ∀ n, (P253024944536410535.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P15579965770481723733

`∑[val(A000038(n)+n, 16)]`
-/

namespace A054900.P15579965770481723733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000038 n + (n : ℤ)).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P15579965770481723733

namespace A054900

/-- `∑[val(A000038(n)+n, 16)]` -/
def P15579965770481723733.Spec : Prop :=
  ∀ n, (P15579965770481723733.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P5696159692334759866

`∑[val(A233583(n+1), 16)]`
-/

namespace A054900.P5696159692334759866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233583 (n + 1)).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P5696159692334759866

namespace A054900

/-- `∑[val(A233583(n+1), 16)]` -/
def P5696159692334759866.Spec : Prop :=
  ∀ n, (P5696159692334759866.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P7598073644253375233

`∑[val(A179744(n), 16)]`
-/

namespace A054900.P7598073644253375233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A179744 n).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054900.P7598073644253375233

namespace A054900

/-- `∑[val(A179744(n), 16)]` -/
def P7598073644253375233.Spec : Prop :=
  ∀ n, (P7598073644253375233.a n : ℤ) = A054900 n

end A054900

/-! ## A054900.P18255758536470612250

`and(A168097(n), A217558(n))`
-/

namespace A054900.P18255758536470612250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168097 n) (A217558 n)

end

end A054900.P18255758536470612250

namespace A054900

/-- `and(A168097(n), A217558(n))` -/
def P18255758536470612250.Spec : Prop :=
  ∀ n, P18255758536470612250.a n = A054900 n

end A054900

/-! ## A054900.P16978118627144605526

`floor(n/and(2, A000032(2*n))²²)`
-/

namespace A054900.P16978118627144605526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((Int.land 2 (A000032 (2 * n)) ^ 2) ^ 2 : ℚ)⌋

end

end A054900.P16978118627144605526

namespace A054900

/-- `floor(n/and(2, A000032(2*n))²²)` -/
def P16978118627144605526.Spec : Prop :=
  ∀ n, P16978118627144605526.a n = A054900 n

end A054900

/-! ## A054900.P351186402209397049

`floor(∑[∑[n/(-3)^(n+1)]])`
-/

namespace A054900.P351186402209397049
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-3) ^ (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054900.P351186402209397049

namespace A054900

/-- `floor(∑[∑[n/(-3)^(n+1)]])` -/
def P351186402209397049.Spec : Prop :=
  ∀ n, P351186402209397049.a n = A054900 n

end A054900

/-! ## A054900.P15577616758469873

`A002265(A002265(n)*A027907(n²))`
-/

namespace A054900.P15577616758469873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 n * A027907 (n ^ 2)).toNat

end

end A054900.P15577616758469873

namespace A054900

/-- `A002265(A002265(n)*A027907(n²))` -/
def P15577616758469873.Spec : Prop :=
  ∀ n, P15577616758469873.a n = A054900 n

end A054900

/-! ## A054900.P15137206207511969874

`A002265(A002265(n)/A027907(n²))`
-/

namespace A054900.P15137206207511969874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A002265 n : ℚ) / (A027907 (n ^ 2) : ℚ))).toNat

end

end A054900.P15137206207511969874

namespace A054900

/-- `A002265(A002265(n)/A027907(n²))` -/
def P15137206207511969874.Spec : Prop :=
  ∀ n, P15137206207511969874.a n = A054900 n

end A054900

/-!
# A054901: Numbers of the form 2^i*5^j where i+j is even.

The programs for A054901, there is no canonical definition to state claims against.
-/

/-! ## A054901.P7854248631634575805

`A003592(eq[1, A003592(n+1)%3]+1)`
-/

namespace A054901.P7854248631634575805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003592 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054901.P7854248631634575805

/-! ## A054901.P7248282606411523749

`A158911(eq[1, (A158911(n+1)+1)%3]+1)+1`
-/

namespace A054901.P7248282606411523749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158911 (n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A054901.P7248282606411523749

/-! ## A054901.P14514901528116866166

`A337801(eq[1, A337801(n+1)%3]+1)`
-/

namespace A054901.P14514901528116866166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337801 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054901.P14514901528116866166

/-! ## A054901.P15682813523089332684

`record[A070021(n+1)/dr(A070021(n+1))]`
-/

namespace A054901.P15682813523089332684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070021 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot (A070021 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054901.P15682813523089332684

/-! ## A054901.P1844972961250226770

`A051037(eq[1, A051037(n+1)%3]+1)`
-/

namespace A054901.P1844972961250226770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051037 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054901.P1844972961250226770

/-!
# A054902: Composite numbers n such that sigma(n)+12 = sigma(n+12).

The programs for A054902, there is no canonical definition to state claims against.
-/

/-! ## A054902.P7132348399954700866

`filter[A015917(n+1), A354108(#)]`
-/

namespace A054902.P7132348399954700866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A054902.P7132348399954700866

/-! ## A054902.P3717350147465445143

`filter[A015917(n+1), A005171(#)]`
-/

namespace A054902.P3717350147465445143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A054902.P3717350147465445143

/-! ## A054902.P9115387617331885076

`filter[A015917(n+1), A066247(#)]`
-/

namespace A054902.P9115387617331885076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A054902.P9115387617331885076

/-! ## A054902.P5322429458369483481

`filter[A015917(n+1), A202238(#)]`
-/

namespace A054902.P5322429458369483481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A054902.P5322429458369483481

/-! ## A054902.P1638662356928090045

`filter[A015917(n+1), A292438(#)]`
-/

namespace A054902.P1638662356928090045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054902.P1638662356928090045

/-!
# A054903: Composite numbers n such that sigma(n)+6 = sigma(n+6), where sigma=A000203.

The programs for A054903, there is no canonical definition to state claims against.
-/

/-! ## A054903.P1018828562520216262

`filter[A015914(n+1), A005171(#)]`
-/

namespace A054903.P1018828562520216262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A054903.P1018828562520216262

/-!
# A054904: x = a(n) is the smallest composite number such that sigma(x+6n) = sigma(x)+6n, where sigma = A000203.

The programs for A054904, there is no canonical definition to state claims against.
-/

/-! ## A054904.P2167193185063150950

`A084292(n+1)-6*(n+1)`
-/

namespace A054904.P2167193185063150950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084292 (n + 1) - (6 * (n + 1) : ℤ)

end

end A054904.P2167193185063150950

/-! ## A054904.P12637001416839588863

`A084292(n+1)-1-A016969(n)`
-/

namespace A054904.P12637001416839588863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084292 (n + 1) - 1 - A016969 n

end

end A054904.P12637001416839588863

/-! ## A054904.P10202536346784535270

`A084292(Δ[n²]-n)-A016969(n)-1`
-/

namespace A054904.P10202536346784535270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084292 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - A016969 n - 1

end

end A054904.P10202536346784535270

/-! ## A054904.P2762152081210965135

`lcm(A084292(ϕ²-(ϕ-n))-A016969(n), (-1)^n)-1`
-/

namespace A054904.P2762152081210965135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A084292 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - A016969 n) ((-1) ^ n) : ℤ) - 1

end

end A054904.P2762152081210965135

/-! ## A054904.P9535674921832269400

`A000027(A084292(n+1))-A103517(A016789(n))`
-/

namespace A054904.P9535674921832269400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A084292 (n + 1)).toNat - A103517 (A016789 n).toNat

end

end A054904.P9535674921832269400

/-! ## A054904.P7324078818102306143

`A023443(A084292(n+1)-A016969(n))`
-/

namespace A054904.P7324078818102306143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A084292 (n + 1) - A016969 n).toNat

end

end A054904.P7324078818102306143

/-! ## A054904.P12385519346183537874

`A199969(A084292(n+1)-A016969(n))`
-/

namespace A054904.P12385519346183537874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A084292 (n + 1) - A016969 n).toNat

end

end A054904.P12385519346183537874

/-!
# A054905: Smallest composite x such that sigma(x) + 2n = sigma(x + 2n).

The programs for A054905, there is no canonical definition to state claims against.
-/

/-! ## A054905.P11974085101461894617

`A084293(n+1)-2*(n+1)`
-/

namespace A054905.P11974085101461894617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084293 (n + 1) - (2 * (n + 1) : ℤ)

end

end A054905.P11974085101461894617

/-! ## A054905.P146599505327500528

`A084293(n+1)-1-A005408(n)`
-/

namespace A054905.P146599505327500528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084293 (n + 1) - 1 - A005408 n

end

end A054905.P146599505327500528

/-! ## A054905.P14278142499407044096

`A084293(n+1)-2-A005843(n)`
-/

namespace A054905.P14278142499407044096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084293 (n + 1) - 2 - A005843 n

end

end A054905.P14278142499407044096

/-! ## A054905.P18257250302156816408

`A084293(n+1)+n-A016789(n)`
-/

namespace A054905.P18257250302156816408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084293 (n + 1) + (n : ℤ) - A016789 n

end

end A054905.P18257250302156816408

/-!
# A054906: Smallest number x such that sigma(x+2n) = sigma(x)+2n (first definition).

The programs for A054906, there is no canonical definition to state claims against.
-/

/-! ## A054906.P3164764719812902903

`A020483(n+1)`
-/

namespace A054906.P3164764719812902903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (n + 1)

end

end A054906.P3164764719812902903

/-! ## A054906.P16239413063515485231

`∑[Δ[A020484(n)]-2]+2`
-/

namespace A054906.P16239413063515485231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A054906.P16239413063515485231

/-! ## A054906.P10156716763638886034

`A020484(n+1)-2*(n+1)`
-/

namespace A054906.P10156716763638886034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1) - (2 * (n + 1) : ℤ)

end

end A054906.P10156716763638886034

/-! ## A054906.P6987263063803742502

`p?[A026741(A020483(n))]`
-/

namespace A054906.P6987263063803742502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A020483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054906.P6987263063803742502

/-! ## A054906.P15715963288090461811

`filter[A020483(n), A000035(#)]`
-/

namespace A054906.P15715963288090461811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A054906.P15715963288090461811

/-! ## A054906.P6773223780938122872

`filter[A020483(n), A035263(#)]`
-/

namespace A054906.P6773223780938122872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A054906.P6773223780938122872

/-! ## A054906.P15135468118705339527

`filter[A020483(n), A039982(#)]`
-/

namespace A054906.P15135468118705339527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A054906.P15135468118705339527

/-! ## A054906.P9523119497690298889

`filter[A020483(n), A080545(#)]`
-/

namespace A054906.P9523119497690298889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A054906.P9523119497690298889

/-! ## A054906.P1119500007758821371

`filter[A020483(n), A093719(#)]`
-/

namespace A054906.P1119500007758821371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A054906.P1119500007758821371

/-! ## A054906.P18161078904055656370

`filter[A020483(n), A102863(#)]`
-/

namespace A054906.P18161078904055656370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A054906.P18161078904055656370

/-! ## A054906.P8308255930815453974

`filter[A020483(n), A104106(#)]`
-/

namespace A054906.P8308255930815453974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A054906.P8308255930815453974

/-! ## A054906.P12092614979061811692

`filter[A020483(n), A105234(#)]`
-/

namespace A054906.P12092614979061811692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A054906.P12092614979061811692

/-! ## A054906.P14044765814308175045

`filter[A020483(n), A115971(#)]`
-/

namespace A054906.P14044765814308175045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A054906.P14044765814308175045

/-! ## A054906.P10978569243730553426

`filter[A020483(n), A127254(#)]`
-/

namespace A054906.P10978569243730553426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A054906.P10978569243730553426

/-! ## A054906.P5900015545651693885

`p?[A020483(n)%A020484(n)]`
-/

namespace A054906.P5900015545651693885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020483 n) (A020484 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054906.P5900015545651693885

/-! ## A054906.P7621692654626224786

`A073310(n+2)+2`
-/

namespace A054906.P7621692654626224786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073310 (n + 2) + 2

end

end A054906.P7621692654626224786

/-! ## A054906.P10933446433977813593

`A087711(n+1)-(n+1)`
-/

namespace A054906.P10933446433977813593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (n + 1) - (n + 1 : ℤ)

end

end A054906.P10933446433977813593

/-! ## A054906.P6043360584473430770

`A009056(A073310(n+2))`
-/

namespace A054906.P6043360584473430770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A073310 (n + 2)).toNat

end

end A054906.P6043360584473430770

/-! ## A054906.P5826083065547385581

`p?[A204894(or(1, n)+1)-(n+1)]`
-/

namespace A054906.P5826083065547385581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (Nat.lor 1 n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054906.P5826083065547385581

/-! ## A054906.P15404463673180269885

`A204894(2*(n+1))-2*(n+1)`
-/

namespace A054906.P15404463673180269885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A054906.P15404463673180269885

/-!
# A054907: Number of n-dimensional unimodular lattices (or quadratic forms) containing no vectors of norm 1.

The programs for A054907, there is no canonical definition to state claims against.
-/

/-! ## A054907.P8875814756196493070

`A005134(n)+A054908(n)-A054911(n)`
-/

namespace A054907.P8875814756196493070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005134 n + (A054908 n - A054911 n)

end

end A054907.P8875814756196493070

/-! ## A054907.P8989735004127522155

`Δ[A054911(n)-A054908(n)]`
-/

namespace A054907.P8989735004127522155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 n - A054908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054907.P8989735004127522155

/-! ## A054907.P4485627738499348777

`A054911(n+1)-A054908(n+1)+A054908(n)-A054911(n)`
-/

namespace A054907.P4485627738499348777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 (n + 1) - A054908 (n + 1) + (A054908 n - A054911 n)

end

end A054907.P4485627738499348777

/-! ## A054907.P3184787009512033083

`A008963(A083919(n+1)+A058276(n))`
-/

namespace A054907.P3184787009512033083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (A083919 (n + 1) + A058276 n).toNat

end

end A054907.P3184787009512033083

/-!
# A054908: Number of n-dimensional odd unimodular lattices (or quadratic forms) containing no vectors of norm 1.

The programs for A054908, there is no canonical definition to state claims against.
-/

/-! ## A054908.P2198047860729100825

`A054907(n)+A054911(n)-A005134(n)`
-/

namespace A054908.P2198047860729100825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 n + (A054911 n - A005134 n)

end

end A054908.P2198047860729100825

/-!
# A054910: Palindromic heptagonal numbers.

The programs for A054910, there is no canonical definition to state claims against.
-/

/-! ## A054910.P16588934136770127991

`∩[A002113(n+1), A000566(n)]`
-/

namespace A054910.P16588934136770127991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054910.P16588934136770127991

/-! ## A054910.P16974742878362922973

`∩[A118600(n+1), A000566(n)]`
-/

namespace A054910.P16974742878362922973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054910.P16974742878362922973

/-! ## A054910.P4344528337532984567

`∩[A306273(n+1), A000566(n)]`
-/

namespace A054910.P4344528337532984567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054910.P4344528337532984567

/-!
# A054911: Number of n-dimensional odd unimodular lattices (or quadratic forms).

The programs for A054911, there is no canonical definition to state claims against.
-/

/-! ## A054911.P3448123988391861849

`A005134(n)+A054908(n)-A054907(n)`
-/

namespace A054911.P3448123988391861849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005134 n + (A054908 n - A054907 n)

end

end A054911.P3448123988391861849

/-!
# A054912: Expansion of e.g.f.: sqrt(exp(5*x)/(2-exp(x))).

The programs for A054912, there is no canonical definition to state claims against.
-/

/-! ## A054912.P4596314609849295019

`A057361(∑[A028417(n+1)+1])`
-/

namespace A054912.P4596314609849295019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028417 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054912.P4596314609849295019

/-! ## A054912.P2731149819068603754

`A342520(A222855(n+1))+A008549(n)`
-/

namespace A054912.P2731149819068603754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342520 (A222855 (n + 1)).toNat + A008549 n

end

end A054912.P2731149819068603754

/-!
# A054913: Number of labeled connected graphs with n nodes such that complement is also connected.

The programs for A054913, there is no canonical definition to state claims against.
-/

/-! ## A054913.P6157768334865453653

`2*A001187(n+1)-A006125(n+1)`
-/

namespace A054913.P6157768334865453653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001187 (n + 1) - A006125 (n + 1)

end

end A054913.P6157768334865453653

/-! ## A054913.P4535093496091340373

`A001187(n+1)-A054592(n+1)`
-/

namespace A054913.P4535093496091340373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) - A054592 (n + 1)

end

end A054913.P4535093496091340373

/-! ## A054913.P12826818170276383125

`A143543(A000124(n))-A054592(n+1)`
-/

namespace A054913.P12826818170276383125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (A000124 n).toNat - A054592 (n + 1)

end

end A054913.P12826818170276383125

/-! ## A054913.P8617371501332747684

`A223894(A179865(n+2))-A054592(n+1)`
-/

namespace A054913.P8617371501332747684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A179865 (n + 2)).toNat - A054592 (n + 1)

end

end A054913.P8617371501332747684

/-! ## A054913.P12198232979867205929

`A006125(n+1)-(A054592(n+1)+A054592(n+1))`
-/

namespace A054913.P12198232979867205929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - (A054592 (n + 1) + A054592 (n + 1))

end

end A054913.P12198232979867205929

/-!
# A054914: Number of labeled connected digraphs with n nodes such that complement is also connected.

The programs for A054914, there is no canonical definition to state claims against.
-/

/-! ## A054914.P6433130605242631307

`2*A003027(n+1)-A053763(n+1)`
-/

namespace A054914.P6433130605242631307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003027 (n + 1) - A053763 (n + 1)

end

end A054914.P6433130605242631307

/-! ## A054914.P15908159410772627676

`A003027(n+1)-A054593(n+1)`
-/

namespace A054914.P15908159410772627676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003027 (n + 1) - A054593 (n + 1)

end

end A054914.P15908159410772627676

/-! ## A054914.P9291701210077499822

`A189898(∑[n]+1)-A054593(n+1)`
-/

namespace A054914.P9291701210077499822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189898 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A054593 (n + 1)

end

end A054914.P9291701210077499822

/-! ## A054914.P9156666435674319545

`record[A189898(n+1)]-A054593(n+1)`
-/

namespace A054914.P9156666435674319545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A054593 (n + 1)

end

end A054914.P9156666435674319545

/-! ## A054914.P10413994017347332223

`A308460(eq[2, A220062(n)])-A054593(n+1)`
-/

namespace A054914.P10413994017347332223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A054593 (n + 1)

end

end A054914.P10413994017347332223

/-!
# A054915: Number of unlabeled connected graphs with n nodes such that complement is also connected.

The programs for A054915, there is no canonical definition to state claims against.
-/

/-! ## A054915.P16943271952230672904

`2*A001349(n+1)-A000088(n+1)`
-/

namespace A054915.P16943271952230672904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001349 (n + 1) - A000088 (n + 1)

end

end A054915.P16943271952230672904

/-! ## A054915.P10514397470342155607

`A001349(n+1)-A000719(n+1)`
-/

namespace A054915.P10514397470342155607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A000719 (n + 1)

end

end A054915.P10514397470342155607

/-! ## A054915.P7723383478326113929

`A000088(n+1)-2*A000719(n+1)`
-/

namespace A054915.P7723383478326113929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - 2 * A000719 (n + 1)

end

end A054915.P7723383478326113929

/-! ## A054915.P17440926168399467925

`2*A054931(n+1)-A000171(n+1)`
-/

namespace A054915.P17440926168399467925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054931 (n + 1) - A000171 (n + 1)

end

end A054915.P17440926168399467925

/-! ## A054915.P12019188618290218048

`A304311(A000217(n+1))-A000719(n+1)`
-/

namespace A054915.P12019188618290218048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A000217 (n + 1)).toNat - A000719 (n + 1)

end

end A054915.P12019188618290218048

/-!
# A054916: Number of connected unlabeled regular graphs with n nodes such that complement is also connected.

The programs for A054916, there is no canonical definition to state claims against.
-/

/-! ## A054916.P10674609414157027939

`A005177(n+1)-A068932(n+1)`
-/

namespace A054916.P10674609414157027939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 (n + 1) - A068932 (n + 1)

end

end A054916.P10674609414157027939

/-! ## A054916.P5613088387112187393

`2*A005177(n+1)-A005176(n+1)`
-/

namespace A054916.P5613088387112187393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005177 (n + 1) - A005176 (n + 1)

end

end A054916.P5613088387112187393

/-! ## A054916.P5913548871594821375

`A005176(n+1)-2*A068932(n+1)`
-/

namespace A054916.P5913548871594821375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 (n + 1) - 2 * A068932 (n + 1)

end

end A054916.P5913548871594821375

/-! ## A054916.P12401511927416945753

`A005177(n+1)-(A210713(n+1)+A185214(n+1))`
-/

namespace A054916.P12401511927416945753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 (n + 1) - (A210713 (n + 1) + A185214 (n + 1))

end

end A054916.P12401511927416945753

/-! ## A054916.P10565953718966077741

`A005177(n+1)+A057428(n+1)*A068932(n+1)`
-/

namespace A054916.P10565953718966077741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 (n + 1) + A057428 (n + 1) * A068932 (n + 1)

end

end A054916.P10565953718966077741

/-!
# A054917: Number of connected unlabeled vertex-transitive graphs with n nodes such that complement is also connected.

The programs for A054917, there is no canonical definition to state claims against.
-/

/-! ## A054917.P1933478099484881535

`2*A006800(n+1)-A006799(n+1)`
-/

namespace A054917.P1933478099484881535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006800 (n + 1) - A006799 (n + 1)

end

end A054917.P1933478099484881535

/-! ## A054917.P6127186774311072759

`A006800(n+1)+A006800(n+1)-∑{d}[n+1, A006800(#)]`
-/

namespace A054917.P6127186774311072759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006800 (n + 1) + (A006800 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A006800 d)

end

end A054917.P6127186774311072759

/-! ## A054917.P253688668646626188

`A004277(A006800(n+1))-A006799(n+1)`
-/

namespace A054917.P253688668646626188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006800 (n + 1)).toNat - A006799 (n + 1)

end

end A054917.P253688668646626188

/-! ## A054917.P16743496137860624756

`A004277(A006800(n+1))-∑{d}[n+1, A006800(#)]`
-/

namespace A054917.P16743496137860624756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006800 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), A006800 d

end

end A054917.P16743496137860624756

/-!
# A054918: Number of connected unlabeled digraphs with n nodes such that complement is also connected.

The programs for A054918, there is no canonical definition to state claims against.
-/

/-! ## A054918.P13092476001082531284

`2*A003085(n+1)-A000273(n+1)`
-/

namespace A054918.P13092476001082531284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003085 (n + 1) - A000273 (n + 1)

end

end A054918.P13092476001082531284

/-! ## A054918.P16450496654203619868

`A003085(n+1)-A054590(n+1)`
-/

namespace A054918.P16450496654203619868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A054590 (n + 1)

end

end A054918.P16450496654203619868

/-! ## A054918.P17428121088093893187

`2*A003085(n+1)-Δ[A173313(n)]`
-/

namespace A054918.P17428121088093893187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003085 (n + 1) - (f1 (n + 1) - f1 n)

end

end A054918.P17428121088093893187

/-! ## A054918.P10877996819479495119

`A116950(n)+A127910(n)-A054590(n+1)`
-/

namespace A054918.P10877996819479495119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116950 n + (A127910 n - A054590 (n + 1))

end

end A054918.P10877996819479495119

/-! ## A054918.P15804114203684308078

`A003085(n+1)+A054932(n+1)-A054928(n+1)`
-/

namespace A054918.P15804114203684308078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) + (A054932 (n + 1) - A054928 (n + 1))

end

end A054918.P15804114203684308078

/-!
# A054919: Number of nonisomorphic connected unlabeled binary relations on n nodes.

The programs for A054919, there is no canonical definition to state claims against.
-/

/-! ## A054919.P4557851900703809407

`A032892(A138214(n)+n)`
-/

namespace A054919.P4557851900703809407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032892 (A138214 n + (n : ℤ)).toNat

end

end A054919.P4557851900703809407

/-!
# A054920: Number of connected unlabeled reflexive relations with n nodes such that complement is also connected.

The programs for A054920, there is no canonical definition to state claims against.
-/

/-! ## A054920.P13227648478127464127

`2*A054919(n+1)-A000595(n+1)`
-/

namespace A054920.P13227648478127464127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054919 (n + 1) - A000595 (n + 1)

end

end A054920.P13227648478127464127

/-!
# A054921: Number of connected unlabeled symmetric relations (graphs with loops) having n nodes.

The programs for A054921, there is no canonical definition to state claims against.
-/

/-! ## A054921.P7889325156601357966

`A351006(xor(1, A064934(n)))`
-/

namespace A054921.P7889325156601357966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (Int.xor 1 (A064934 n)).toNat

end

end A054921.P7889325156601357966

/-! ## A054921.P4823119648266867498

`A035250(A112944(n)+n)`
-/

namespace A054921.P4823119648266867498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A112944 n + (n : ℤ)).toNat

end

end A054921.P4823119648266867498

/-!
# A054922: Number of connected unlabeled symmetric relations (graphs with loops) having n nodes such that complement is also connected.

The programs for A054922, there is no canonical definition to state claims against.
-/

/-! ## A054922.P12492090007712550676

`2*A054921(n+1)-A000666(n+1)`
-/

namespace A054922.P12492090007712550676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054921 (n + 1) - A000666 (n + 1)

end

end A054922.P12492090007712550676

/-!
# A054923: Triangle read by rows: number of connected graphs with k >= 0 edges and n nodes (1<=n<=k+1).

The programs for A054923, there is no canonical definition to state claims against.
-/

/-! ## A054923.P13752901191401045194

`A343873(n)+A025469(A253566(n+1))`
-/

namespace A054923.P13752901191401045194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343873 n + A025469 (A253566 (n + 1)).toNat

end

end A054923.P13752901191401045194

/-! ## A054923.P2419735464165125351

`A343873(n)+A178798(A080934(n))`
-/

namespace A054923.P2419735464165125351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343873 n + A178798 (A080934 n).toNat

end

end A054923.P2419735464165125351

/-! ## A054923.P7166858011661079763

`A343873(n)+A102683(A306100(n))`
-/

namespace A054923.P7166858011661079763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343873 n + A102683 (A306100 n).toNat

end

end A054923.P7166858011661079763

/-! ## A054923.P7916879911683542841

`A343873(n%A017765(n))`
-/

namespace A054923.P7916879911683542841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343873 (Int.tmod (n : ℤ) (A017765 n)).toNat

end

end A054923.P7916879911683542841

/-! ## A054923.P2122430226573844276

`A000034((2*n)²)*A343873(n)`
-/

namespace A054923.P2122430226573844276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((2 * n) ^ 2) * A343873 n

end

end A054923.P2122430226573844276

/-! ## A054923.P11895871119902656746

`A343873(A021103(A049337(n+1))+n)`
-/

namespace A054923.P11895871119902656746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343873 (A021103 (A049337 (n + 1)).toNat + (n : ℤ)).toNat

end

end A054923.P11895871119902656746

/-!
# A054924: Triangle read by rows: T(n,k) = number of nonisomorphic unlabeled connected graphs with n nodes and k edges (n >= 1, 0 <= k <= n(n-1)/2).

The programs for A054924, there is no canonical definition to state claims against.
-/

/-! ## A054924.P2961635274721636403

`A049334(n+1)^A080934(A018843(n))`
-/

namespace A054924.P2961635274721636403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049334 (n + 1) : ℚ) ^ (A080934 (A018843 n).toNat : ℤ)

end

end A054924.P2961635274721636403

/-! ## A054924.P3842302864490860573

`A049334(∑[A049334(n+1)^A018843(n)])`
-/

namespace A054924.P3842302864490860573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049334 (n + 1) : ℚ) ^ (A018843 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049334 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A054924.P3842302864490860573

/-! ## A054924.P11795926282659190847

`A178798(A299458(n+1))+A049334(n+1)`
-/

namespace A054924.P11795926282659190847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A299458 (n + 1)).toNat + A049334 (n + 1)

end

end A054924.P11795926282659190847

/-! ## A054924.P9508173627939718843

`A049334(n+1)-A014262(A111494(n+1))`
-/

namespace A054924.P9508173627939718843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049334 (n + 1) - A014262 (A111494 (n + 1)).toNat

end

end A054924.P9508173627939718843

/-! ## A054924.P8390064778111103246

`A178798(A055334(n+1)²)+A049334(n+1)`
-/

namespace A054924.P8390064778111103246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A055334 (n + 1) ^ 2).toNat + A049334 (n + 1)

end

end A054924.P8390064778111103246

/-!
# A054925: a(n) = ceiling(n*(n-1)/4).

The programs for A054925, the canonical program `A054925.P9513446118866584636` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054925 has offset 0).

The definition of A054925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(n-1)/4)` (program `A054925.P9513446118866584636`, by `A054925.P9513446118866584636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054925.P13335030760349820899

`ceil(C(n, 2)/2)`
-/

namespace A054925.P13335030760349820899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

end

end A054925.P13335030760349820899

namespace A054925

/-- `ceil(C(n, 2)/2)` -/
def P13335030760349820899.Spec : Prop :=
  ∀ n, P13335030760349820899.a n = A054925 n

end A054925

/-! ## A054925.P12299086624514905656

`ceil((n²-n)/4)`
-/

namespace A054925.P12299086624514905656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4⌉

end

end A054925.P12299086624514905656

namespace A054925

/-- `ceil((n²-n)/4)` -/
def P12299086624514905656.Spec : Prop :=
  ∀ n, P12299086624514905656.a n = A054925 n

theorem P12299086624514905656.correct : P12299086624514905656.Spec := by
  intro n
  simp only [A054925, Nat.add_sub_cancel, A054925.P12299086624514905656.a, A054925.P9513446118866584636.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A054925

/-! ## A054925.P9513446118866584636

`ceil(n*(n-1)/4)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054925

/-- `ceil(n*(n-1)/4)` -/
def P9513446118866584636.Spec : Prop :=
  ∀ n, P9513446118866584636.a n = A054925 n

theorem P9513446118866584636.correct : P9513446118866584636.Spec := by
  intro n
  simp only [A054925]

end A054925

/-! ## A054925.P510977928629767839

`ogf((x^2-x^3+x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A054925.P510977928629767839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1, 1] [1, -3, 4, -4, 3, -1] n

end

end A054925.P510977928629767839

namespace A054925

/-- `ogf((x^2-x^3+x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P510977928629767839.Spec : Prop :=
  ∀ n, P510977928629767839.a n = A054925 n

end A054925

/-! ## A054925.P3807261068777030839

`A011848(n)+A133872(n+2)`
-/

namespace A054925.P3807261068777030839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n + A133872 (n + 2)

end

end A054925.P3807261068777030839

namespace A054925

/-- `A011848(n)+A133872(n+2)` -/
def P3807261068777030839.Spec : Prop :=
  ∀ n, P3807261068777030839.a n = A054925 n

end A054925

/-! ## A054925.P7494528925597376690

`round(C(n, 2)/2)`
-/

namespace A054925.P7494528925597376690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 2)

end

end A054925.P7494528925597376690

namespace A054925

/-- `round(C(n, 2)/2)` -/
def P7494528925597376690.Spec : Prop :=
  ∀ n, P7494528925597376690.a n = A054925 n

end A054925

/-! ## A054925.P8211854452296818738

`floor((C(n, 2)+1)/2)`
-/

namespace A054925.P8211854452296818738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 + 1 : ℚ) / 2⌋

end

end A054925.P8211854452296818738

namespace A054925

/-- `floor((C(n, 2)+1)/2)` -/
def P8211854452296818738.Spec : Prop :=
  ∀ n, P8211854452296818738.a n = A054925 n

end A054925

/-! ## A054925.P11523200228779210890

`round(lcm(n, 1-n)/4)`
-/

namespace A054925.P11523200228779210890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) (1 - (n : ℤ)) : ℚ) / 4)

end

end A054925.P11523200228779210890

namespace A054925

/-- `round(lcm(n, 1-n)/4)` -/
def P11523200228779210890.Spec : Prop :=
  ∀ n, P11523200228779210890.a n = A054925 n

end A054925

/-! ## A054925.P15712598679628137595

`round((n/(acot(n)+2))²)`
-/

namespace A054925.P15712598679628137595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) / (SequenceMachineLib.acot (n : ℝ) + 2)) ^ 2)

end

end A054925.P15712598679628137595

namespace A054925

/-- `round((n/(acot(n)+2))²)` -/
def P15712598679628137595.Spec : Prop :=
  ∀ n, P15712598679628137595.a n = A054925 n

end A054925

/-! ## A054925.P10792659304154964217

`∑[∑[∑[n]%2]]-n`
-/

namespace A054925.P10792659304154964217
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A054925.P10792659304154964217

namespace A054925

/-- `∑[∑[∑[n]%2]]-n` -/
def P10792659304154964217.Spec : Prop :=
  ∀ n, P10792659304154964217.a n = A054925 n

end A054925

/-! ## A054925.P5491153667494089380

`∑[∑[and(1, ∑[n])]]-n`
-/

namespace A054925.P5491153667494089380
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A054925.P5491153667494089380

namespace A054925

/-- `∑[∑[and(1, ∑[n])]]-n` -/
def P5491153667494089380.Spec : Prop :=
  ∀ n, P5491153667494089380.a n = A054925 n

end A054925

/-! ## A054925.P14894503914213137876

`round(sinh(log(∑[abs(1-n)])))`
-/

namespace A054925.P14894503914213137876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)))

end

end A054925.P14894503914213137876

namespace A054925

/-- `round(sinh(log(∑[abs(1-n)])))` -/
def P14894503914213137876.Spec : Prop :=
  ∀ n, P14894503914213137876.a n = A054925 n

end A054925

/-! ## A054925.P16328863474288208197

`round(or(1, n²-n)/4)`
-/

namespace A054925.P16328863474288208197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ)) : ℚ) / 4)

end

end A054925.P16328863474288208197

namespace A054925

/-- `round(or(1, n²-n)/4)` -/
def P16328863474288208197.Spec : Prop :=
  ∀ n, P16328863474288208197.a n = A054925 n

end A054925

/-! ## A054925.P16696426104348184708

`round(xor(1, n²-n)/4)`
-/

namespace A054925.P16696426104348184708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ)) : ℚ) / 4)

end

end A054925.P16696426104348184708

namespace A054925

/-- `round(xor(1, n²-n)/4)` -/
def P16696426104348184708.Spec : Prop :=
  ∀ n, P16696426104348184708.a n = A054925 n

end A054925

/-! ## A054925.P15917517394231371020

`round((n-1)/(4*acot(n)))`
-/

namespace A054925.P15917517394231371020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) / (4 * SequenceMachineLib.acot (n : ℝ)))

end

end A054925.P15917517394231371020

namespace A054925

/-- `round((n-1)/(4*acot(n)))` -/
def P15917517394231371020.Spec : Prop :=
  ∀ n, P15917517394231371020.a n = A054925 n

end A054925

/-! ## A054925.P12265133264677287333

`(or(1, ∑[n-1])+1)/2`
-/

namespace A054925.P12265133264677287333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 2

end

end A054925.P12265133264677287333

namespace A054925

/-- `(or(1, ∑[n-1])+1)/2` -/
def P12265133264677287333.Spec : Prop :=
  ∀ n, P12265133264677287333.a n = (A054925 n : ℚ)

end A054925

/-! ## A054925.P11148315832461786787

`round((or(1, -(2*n))/4)²)`
-/

namespace A054925.P11148315832461786787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Int.lor 1 (-(2 * n : ℤ)) : ℚ) / 4) ^ 2)

end

end A054925.P11148315832461786787

namespace A054925

/-- `round((or(1, -(2*n))/4)²)` -/
def P11148315832461786787.Spec : Prop :=
  ∀ n, P11148315832461786787.a n = A054925 n

end A054925

/-! ## A054925.P15566620617286371543

`round((xor(1, -(2*n))/4)²)`
-/

namespace A054925.P15566620617286371543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Int.xor 1 (-(2 * n : ℤ)) : ℚ) / 4) ^ 2)

end

end A054925.P15566620617286371543

namespace A054925

/-- `round((xor(1, -(2*n))/4)²)` -/
def P15566620617286371543.Spec : Prop :=
  ∀ n, P15566620617286371543.a n = A054925 n

end A054925

/-! ## A054925.P15915724004346106497

`round((n²/or(1, 2*n))²)`
-/

namespace A054925.P15915724004346106497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℚ) / (Nat.lor 1 (2 * n) : ℚ)) ^ 2)

end

end A054925.P15915724004346106497

namespace A054925

/-- `round((n²/or(1, 2*n))²)` -/
def P15915724004346106497.Spec : Prop :=
  ∀ n, P15915724004346106497.a n = A054925 n

end A054925

/-! ## A054925.P11540088909501021327

`round((n²/xor(1, 2*n))²)`
-/

namespace A054925.P11540088909501021327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℚ) / (Nat.xor 1 (2 * n) : ℚ)) ^ 2)

end

end A054925.P11540088909501021327

namespace A054925

/-- `round((n²/xor(1, 2*n))²)` -/
def P11540088909501021327.Spec : Prop :=
  ∀ n, P11540088909501021327.a n = A054925 n

end A054925

/-!
# A054926: Number of connected unlabeled graphs with n nodes and floor(n*(n-1)/4) edges.

The programs for A054926, there is no canonical definition to state claims against.
-/

/-! ## A054926.P10622133637865072790

`A321223(A149791(n+1))`
-/

namespace A054926.P10622133637865072790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (A149791 (n + 1)).toNat

end

end A054926.P10622133637865072790

/-! ## A054926.P17755962924964059153

`A005127(A054685(2^n))`
-/

namespace A054926.P17755962924964059153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A054685 (2 ^ n)).toNat

end

end A054926.P17755962924964059153

/-! ## A054926.P15069419939830751398

`A351007(n)+A333256(A035053(n))`
-/

namespace A054926.P15069419939830751398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 n + A333256 (A035053 n).toNat

end

end A054926.P15069419939830751398

/-!
# A054927: Number of connected unlabeled graphs having n nodes and ceiling(n(n-1)/4) edges such that the complement is also connected.

The programs for A054927, there is no canonical definition to state claims against.
-/

/-! ## A054927.P4451339180941433267

`A078669(A000967(n+1))`
-/

namespace A054927.P4451339180941433267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078669 (A000967 (n + 1)).toNat

end

end A054927.P4451339180941433267

/-! ## A054927.P1231206292366321819

`A352131(n*A033638(n))`
-/

namespace A054927.P1231206292366321819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 ((n : ℤ) * A033638 n).toNat

end

end A054927.P1231206292366321819

/-! ## A054927.P7884477023208653101

`A352131(n*A097333(n))`
-/

namespace A054927.P7884477023208653101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 ((n : ℤ) * A097333 n).toNat

end

end A054927.P7884477023208653101

/-!
# A054928: Number of complementary pairs of directed graphs on n nodes. Also number of unlabeled digraphs with n nodes and an even number of arcs.

The programs for A054928, there is no canonical definition to state claims against.
-/

/-! ## A054928.P13126696687313355292

`Δ[A173313(n)]-A055969(n+1)`
-/

namespace A054928.P13126696687313355292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A055969 (n + 1)

end

end A054928.P13126696687313355292

/-! ## A054928.P10766391466636324096

`A055969(n+1)+A003086(n+1)`
-/

namespace A054928.P10766391466636324096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055969 (n + 1) + A003086 (n + 1)

end

end A054928.P10766391466636324096

/-! ## A054928.P15688816326971481244

`A054932(n+1)+A054590(n+1)`
-/

namespace A054928.P15688816326971481244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054932 (n + 1) + A054590 (n + 1)

end

end A054928.P15688816326971481244

/-! ## A054928.P17760178193269010145

`A000273(n+1)+A054932(n+1)-A003085(n+1)`
-/

namespace A054928.P17760178193269010145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 (n + 1) + (A054932 (n + 1) - A003085 (n + 1))

end

end A054928.P17760178193269010145

/-! ## A054928.P11505382748128119062

`A003085(n+1)+A054932(n+1)-A054918(n+1)`
-/

namespace A054928.P11505382748128119062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) + (A054932 (n + 1) - A054918 (n + 1))

end

end A054928.P11505382748128119062

/-!
# A054929: Number of complementary pairs of circulant graphs on n nodes.

The programs for A054929, there is no canonical definition to state claims against.
-/

/-! ## A054929.P6425675904880394345

`A342515(A049287(n+1))`
-/

namespace A054929.P6425675904880394345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A049287 (n + 1)).toNat

end

end A054929.P6425675904880394345

/-! ## A054929.P6900215355009375754

`A342515(A285620(n+1))`
-/

namespace A054929.P6900215355009375754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A285620 (n + 1)).toNat

end

end A054929.P6900215355009375754

/-! ## A054929.P18412060529210233432

`A342515(∑{d}[n+1, A075545(#)])`
-/

namespace A054929.P18412060529210233432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (∑ d ∈ Nat.divisors (f1 n), A075545 d).toNat

end

end A054929.P18412060529210233432

/-!
# A054931: Number of unlabeled connected graphs up to complementarity.

The programs for A054931, there is no canonical definition to state claims against.
-/

/-! ## A054931.P13320043234796685958

`A001349(n+1)-1/2*A000088(n+1)+1/2*A000171(n+1)`
-/

namespace A054931.P13320043234796685958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001349 (n + 1) : ℚ) - (1 : ℚ) / 2 * (A000088 (n + 1) : ℚ) + (1 : ℚ) / 2 * (A000171 (n + 1) : ℚ)

end

end A054931.P13320043234796685958

/-! ## A054931.P3994674573566666089

`A007869(n+1)-A000719(n+1)`
-/

namespace A054931.P3994674573566666089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007869 (n + 1) - A000719 (n + 1)

end

end A054931.P3994674573566666089

/-! ## A054931.P11328612639781494280

`A001349(n+1)-A054960(n+1)`
-/

namespace A054931.P11328612639781494280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A054960 (n + 1)

end

end A054931.P11328612639781494280

/-! ## A054931.P8464592909316064341

`(A054915(n+1)+A000171(n+1))/2`
-/

namespace A054931.P8464592909316064341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054915 (n + 1) + A000171 (n + 1) : ℚ) / 2

end

end A054931.P8464592909316064341

/-! ## A054931.P400642334087667783

`(A054915(n+1)+A007869(n+1)-A054960(n+1))/2`
-/

namespace A054931.P400642334087667783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054915 (n + 1) + (A007869 (n + 1) - A054960 (n + 1)) : ℚ) / 2

end

end A054931.P400642334087667783

/-!
# A054932: Number of unlabeled connected digraphs up to complementarity.

The programs for A054932, there is no canonical definition to state claims against.
-/

/-! ## A054932.P1167231930349594728

`A003085(n+1)-(A000273(n+1)-A003086(n+1))/2`
-/

namespace A054932.P1167231930349594728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003085 (n + 1) : ℚ) - (A000273 (n + 1) - A003086 (n + 1) : ℚ) / 2

end

end A054932.P1167231930349594728

/-! ## A054932.P1088050624817916962

`A003085(n+1)-A055969(n+1)`
-/

namespace A054932.P1088050624817916962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A055969 (n + 1)

end

end A054932.P1088050624817916962

/-! ## A054932.P6993404724759543480

`A054928(n+1)-A054590(n+1)`
-/

namespace A054932.P6993404724759543480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054928 (n + 1) - A054590 (n + 1)

end

end A054932.P6993404724759543480

/-! ## A054932.P12819563070136392673

`A054918(n+1)+A054928(n+1)-A003085(n+1)`
-/

namespace A054932.P12819563070136392673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054918 (n + 1) + (A054928 (n + 1) - A003085 (n + 1))

end

end A054932.P12819563070136392673

/-! ## A054932.P13815496327040129671

`A054590(n+1)+A054918(n+1)-A055969(n+1)`
-/

namespace A054932.P13815496327040129671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054590 (n + 1) + (A054918 (n + 1) - A055969 (n + 1))

end

end A054932.P13815496327040129671

/-!
# A054933: Number of unlabeled digraphs on n nodes up to reversing the arcs.

The programs for A054933, there is no canonical definition to state claims against.
-/

/-! ## A054933.P16829064395081504361

`(A000273(n+1)+A002499(n+1))/2`
-/

namespace A054933.P16829064395081504361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000273 (n + 1) + A002499 (n + 1) : ℚ) / 2

end

end A054933.P16829064395081504361

/-!
# A054934: Number of oriented graphs on n nodes up to reversing the arcs.

The programs for A054934, there is no canonical definition to state claims against.
-/

/-! ## A054934.P11916812487721322519

`(A001174(n+1)+A005639(n+1))/2`
-/

namespace A054934.P11916812487721322519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001174 (n + 1) + A005639 (n + 1) : ℚ) / 2

end

end A054934.P11916812487721322519

/-! ## A054934.P4841159075587721864

`A014682(A005639(n+1)+A001174(n+1))`
-/

namespace A054934.P4841159075587721864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005639 (n + 1) + A001174 (n + 1)).toNat

end

end A054934.P4841159075587721864

/-!
# A054935: Number of planar maps with n edges up to orientation-preserving duality.

The programs for A054935, there is no canonical definition to state claims against.
-/

/-! ## A054935.P698259394892870526

`A289436(A317200(3*n+1)+A317190(n+1))`
-/

namespace A054935.P698259394892870526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A317200 (3 * n + 1) + A317190 (n + 1)).toNat

end

end A054935.P698259394892870526

/-!
# A054937: Number of chiral pairs of planar maps with n edges.

The programs for A054937, there is no canonical definition to state claims against.
-/

/-! ## A054937.P3571125904340311843

`A006385(n)-A006443(n)`
-/

namespace A054937.P3571125904340311843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006385 n - A006443 n

end

end A054937.P3571125904340311843

/-! ## A054937.P2083801743648547429

`A006384(n)-A006385(n)`
-/

namespace A054937.P2083801743648547429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006384 n - A006385 n

end

end A054937.P2083801743648547429

/-! ## A054937.P7135258696897701824

`A006385(n)-A380234(∑[A110654(n)])`
-/

namespace A054937.P7135258696897701824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006385 n - A380234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054937.P7135258696897701824

/-! ## A054937.P9203888273929198191

`A006384(n)-A379439(A002620(n+1))`
-/

namespace A054937.P9203888273929198191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006384 n - A379439 (A002620 (n + 1)).toNat

end

end A054937.P9203888273929198191

/-! ## A054937.P382104545620377278

`A006385(n)-A380234(A002620(n+1))`
-/

namespace A054937.P382104545620377278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006385 n - A380234 (A002620 (n + 1)).toNat

end

end A054937.P382104545620377278

/-!
# A054938: Number of chiral chord diagrams on n nodes.

The programs for A054938, there is no canonical definition to state claims against.
-/

/-! ## A054938.P4340185586864599350

`A054499(n+1)-A018191(n)`
-/

namespace A054938.P4340185586864599350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054499 (n + 1) - A018191 n

end

end A054938.P4340185586864599350

/-! ## A054938.P9328695345266087168

`A007769(n+1)-A054499(n+1)`
-/

namespace A054938.P9328695345266087168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007769 (n + 1) - A054499 (n + 1)

end

end A054938.P9328695345266087168

/-! ## A054938.P9348996935817037354

`A054499(n+1)-(A291632(n)+A047974(n))`
-/

namespace A054938.P9348996935817037354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054499 (n + 1) - (A291632 n + A047974 n)

end

end A054938.P9348996935817037354

/-! ## A054938.P17038231733429751523

`A054499(n+1)-(A291632(n)+A122832(A000217(n)))`
-/

namespace A054938.P17038231733429751523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054499 (n + 1) - (A291632 n + A122832 (A000217 n).toNat)

end

end A054938.P17038231733429751523

/-! ## A054938.P17105572561229789352

`A054499(n+1)-(A293669(A034856(n+1))+A291632(n))`
-/

namespace A054938.P17105572561229789352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054499 (n + 1) - (A293669 (A034856 (n + 1)).toNat + A291632 n)

end

end A054938.P17105572561229789352

/-!
# A054939: Number of connected labeled graphs with n nodes and an even number of edges.

The programs for A054939, there is no canonical definition to state claims against.
-/

/-! ## A054939.P13832308935561911493

`(A001187(n+1)+(-1)^n*A000142(n))/2`
-/

namespace A054939.P13832308935561911493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001187 (n + 1) + (-1) ^ n * A000142 n : ℚ) / 2

end

end A054939.P13832308935561911493

/-! ## A054939.P5124342578858532331

`A133942(n)+A054940(n+1)`
-/

namespace A054939.P5124342578858532331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n + A054940 (n + 1)

end

end A054939.P5124342578858532331

/-! ## A054939.P16306818159676397615

`A001187(n+1)-A054940(n+1)`
-/

namespace A054939.P16306818159676397615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) - A054940 (n + 1)

end

end A054939.P16306818159676397615

/-! ## A054939.P1026215349944568799

`A143543(A000124(n))-A054940(n+1)`
-/

namespace A054939.P1026215349944568799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (A000124 n).toNat - A054940 (n + 1)

end

end A054939.P1026215349944568799

/-!
# A054940: Number of connected labeled graphs with n nodes and an odd number of edges.

The programs for A054940, there is no canonical definition to state claims against.
-/

/-! ## A054940.P1028301193480165788

`(A001187(n+1)+(-1)^(n+1)*A000142(n))/2`
-/

namespace A054940.P1028301193480165788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001187 (n + 1) + (-1) ^ (n + 1) * A000142 n : ℚ) / 2

end

end A054940.P1028301193480165788

/-! ## A054940.P16390018730565749185

`A054939(n+1)-A133942(n)`
-/

namespace A054940.P16390018730565749185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054939 (n + 1) - A133942 n

end

end A054940.P16390018730565749185

/-! ## A054940.P4330472177995094478

`A001187(n+1)-A054939(n+1)`
-/

namespace A054940.P4330472177995094478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) - A054939 (n + 1)

end

end A054940.P4330472177995094478

/-! ## A054940.P179798373363499616

`A143543(A000124(n))-A054939(n+1)`
-/

namespace A054940.P179798373363499616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (A000124 n).toNat - A054939 (n + 1)

end

end A054940.P179798373363499616

/-!
# A054941: Number of weakly connected oriented graphs on n labeled nodes.

The programs for A054941, there is no canonical definition to state claims against.
-/

/-! ## A054941.P4406145598742278135

`A177780(n+1)/(n+1)`
-/

namespace A054941.P4406145598742278135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177780 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A054941.P4406145598742278135

/-! ## A054941.P360908852512744099

`A054943(n+1)+A054942(n+1)`
-/

namespace A054941.P360908852512744099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054943 (n + 1) + A054942 (n + 1)

end

end A054941.P360908852512744099

/-! ## A054941.P8674551717408504785

`A308460(∑[n+3]+1)`
-/

namespace A054941.P8674551717408504785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054941.P8674551717408504785

/-! ## A054941.P10595955279610998382

`record[A308460(A237519(n+1))]`
-/

namespace A054941.P10595955279610998382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308460 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054941.P10595955279610998382

/-! ## A054941.P1132071608865956209

`record[A177780(A050603(n))/A050603(n)]`
-/

namespace A054941.P1132071608865956209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177780 (A050603 n).toNat : ℚ) / (A050603 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054941.P1132071608865956209

/-!
# A054942: Number of connected oriented graphs on n nodes with an even number of edges.

The programs for A054942, there is no canonical definition to state claims against.
-/

/-! ## A054942.P2670874857493335851

`(A054941(n+1)-(-1)^(n+1)*A000831(n))/2`
-/

namespace A054942.P2670874857493335851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054941 (n + 1) - (-1) ^ (n + 1) * A000831 n : ℚ) / 2

end

end A054942.P2670874857493335851

/-! ## A054942.P13102638876541758189

`A054941(n+1)-A054943(n+1)`
-/

namespace A054942.P13102638876541758189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054941 (n + 1) - A054943 (n + 1)

end

end A054942.P13102638876541758189

/-! ## A054942.P6829552679812942594

`A177780(n+1)/(n+1)-A054943(n+1)`
-/

namespace A054942.P6829552679812942594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177780 (n + 1) : ℚ) / (n + 1 : ℚ) - (A054943 (n + 1) : ℚ)

end

end A054942.P6829552679812942594

/-! ## A054942.P7641559665548465

`A308460(∑[n+3]+1)-A054943(n+1)`
-/

namespace A054942.P7641559665548465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308460 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A054943 (n + 1)

end

end A054942.P7641559665548465

/-! ## A054942.P1911721913587633821

`record[A308460(A237519(n+1))]-A054943(n+1)`
-/

namespace A054942.P1911721913587633821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308460 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A054943 (n + 1)

end

end A054942.P1911721913587633821

/-!
# A054943: Number of connected oriented graphs on n nodes with an odd number of edges.

The programs for A054943, there is no canonical definition to state claims against.
-/

/-! ## A054943.P8693338319601122159

`(A054941(n+1)+(-1)^(n+1)*A000831(n))/2`
-/

namespace A054943.P8693338319601122159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054941 (n + 1) + (-1) ^ (n + 1) * A000831 n : ℚ) / 2

end

end A054943.P8693338319601122159

/-! ## A054943.P815320143681482873

`A054942(n+1)-A000079(n)*A346838(n)`
-/

namespace A054943.P815320143681482873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054942 (n + 1) - A000079 n * A346838 n

end

end A054943.P815320143681482873

/-! ## A054943.P234075476155113031

`A054941(n+1)-A054942(n+1)`
-/

namespace A054943.P234075476155113031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054941 (n + 1) - A054942 (n + 1)

end

end A054943.P234075476155113031

/-! ## A054943.P1164229025071288344

`A177780(n+1)/(n+1)-A054942(n+1)`
-/

namespace A054943.P1164229025071288344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177780 (n + 1) : ℚ) / (n + 1 : ℚ) - (A054942 (n + 1) : ℚ)

end

end A054943.P1164229025071288344

/-! ## A054943.P8212856131693187908

`A308460(∑[n+3]+1)-A054942(n+1)`
-/

namespace A054943.P8212856131693187908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308460 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A054942 (n + 1)

end

end A054943.P8212856131693187908

/-!
# A054944: Number of strongly connected labeled digraphs on n nodes with an even number of edges.

The programs for A054944, there is no canonical definition to state claims against.
-/

/-! ## A054944.P5489210455316888969

`(A003030(n+1)+n!)/2`
-/

namespace A054944.P5489210455316888969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003030 (n + 1) + (Nat.factorial n : ℤ) : ℚ) / 2

end

end A054944.P5489210455316888969

/-! ## A054944.P5322724860418184816

`A054945(n+1)+n!`
-/

namespace A054944.P5322724860418184816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054945 (n + 1) + (Nat.factorial n : ℤ)

end

end A054944.P5322724860418184816

/-! ## A054944.P9524009283919120012

`A054945(n+1)+A000142(n)`
-/

namespace A054944.P9524009283919120012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054945 (n + 1) + A000142 n

end

end A054944.P9524009283919120012

/-! ## A054944.P3245690931290138585

`A003030(n+1)-A054945(n+1)`
-/

namespace A054944.P3245690931290138585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003030 (n + 1) - A054945 (n + 1)

end

end A054944.P3245690931290138585

/-!
# A054945: Number of strongly connected labeled digraphs on n nodes with an odd number of edges.

The programs for A054945, there is no canonical definition to state claims against.
-/

/-! ## A054945.P5268279760441378669

`(A003030(n+1)-n!)/2`
-/

namespace A054945.P5268279760441378669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003030 (n + 1) - (Nat.factorial n : ℤ) : ℚ) / 2

end

end A054945.P5268279760441378669

/-! ## A054945.P2933710863111740777

`A054944(n+1)-n!`
-/

namespace A054945.P2933710863111740777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054944 (n + 1) - (Nat.factorial n : ℤ)

end

end A054945.P2933710863111740777

/-! ## A054945.P17831985406045478058

`A054944(n+1)-A000142(n)`
-/

namespace A054945.P17831985406045478058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054944 (n + 1) - A000142 n

end

end A054945.P17831985406045478058

/-! ## A054945.P17548027160191349701

`A003030(n+1)-A054944(n+1)`
-/

namespace A054945.P17548027160191349701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003030 (n + 1) - A054944 (n + 1)

end

end A054945.P17548027160191349701

/-!
# A054946: Number of strongly connected labeled tournaments on n nodes.

The programs for A054946, there is no canonical definition to state claims against.
-/

/-! ## A054946.P2687163823782553174

`A006125(n+1)-2*A218374(n+1)`
-/

namespace A054946.P2687163823782553174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - 2 * A218374 (n + 1)

end

end A054946.P2687163823782553174

/-! ## A054946.P14984858612949388710

`2*A218375(n+1)-A006125(n+1)`
-/

namespace A054946.P14984858612949388710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218375 (n + 1) - A006125 (n + 1)

end

end A054946.P14984858612949388710

/-! ## A054946.P4242367208147688312

`A350731(∑[∑[n]+1])`
-/

namespace A054946.P4242367208147688312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350731 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054946.P4242367208147688312

/-! ## A054946.P5020124145378100768

`A054947(n+1)/∏[2*a(n-1)]` with `a(0)=1`
-/

namespace A054946.P5020124145378100768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054947 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A054946.P5020124145378100768

/-! ## A054946.P9145081511025034103

`A054947(n+1)/∏[A000079(n)]`
-/

namespace A054946.P9145081511025034103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054947 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A054946.P9145081511025034103

/-!
# A054947: Enumerates pairs consisting of a strongly connected labeled tournament and an arbitrary labeled tournament.

The programs for A054947, there is no canonical definition to state claims against.
-/

/-! ## A054947.P17577182989972616990

`A054946(n+1)*A006125(n+1)`
-/

namespace A054947.P17577182989972616990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054946 (n + 1) * A006125 (n + 1)

end

end A054947.P17577182989972616990

/-! ## A054947.P5338228610365481837

`A000079(∑[n])*A054946(n+1)`
-/

namespace A054947.P5338228610365481837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j) * A054946 (n + 1)

end

end A054947.P5338228610365481837

/-! ## A054947.P4186136179354206562

`∏[A000079(n)]*A054946(n+1)`
-/

namespace A054947.P4186136179354206562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A054946 (n + 1)

end

end A054947.P4186136179354206562

/-! ## A054947.P1179514664244085587

`A054949(n+1)-A054950(n+1)`
-/

namespace A054947.P1179514664244085587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054949 (n + 1) - A054950 (n + 1)

end

end A054947.P1179514664244085587

/-! ## A054947.P2997397880025719709

`A006125(n+1)*A054946(n+1)`
-/

namespace A054947.P2997397880025719709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) * A054946 (n + 1)

end

end A054947.P2997397880025719709

/-!
# A054948: Number of labeled semi-strong digraphs on n nodes.

The programs for A054948, there is no canonical definition to state claims against.
-/

/-! ## A054948.P328534577599191702

`A054950(A028310(n))+A054949(A028310(n))`
-/

namespace A054948.P328534577599191702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054950 (A028310 n).toNat + A054949 (A028310 n).toNat

end

end A054948.P328534577599191702

/-!
# A054949: Number of labeled semi-strong digraphs on n nodes with an odd number of components.

The programs for A054949, there is no canonical definition to state claims against.
-/

/-! ## A054949.P1530840075562133304

`(A054948(n+1)+A054947(n+1))/2`
-/

namespace A054949.P1530840075562133304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054948 (n + 1) + A054947 (n + 1) : ℚ) / 2

end

end A054949.P1530840075562133304

/-! ## A054949.P9438257894871488301

`A054950(n+1)+A054947(n+1)`
-/

namespace A054949.P9438257894871488301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054950 (n + 1) + A054947 (n + 1)

end

end A054949.P9438257894871488301

/-! ## A054949.P12751981900828417060

`A054948(n+1)-A054950(n+1)`
-/

namespace A054949.P12751981900828417060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054948 (n + 1) - A054950 (n + 1)

end

end A054949.P12751981900828417060

/-! ## A054949.P9985014915354653537

`A054950(n+1)+A000079(∑[n])*A054946(n+1)`
-/

namespace A054949.P9985014915354653537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054950 (n + 1) + A000079 (∑ j ∈ Finset.range (n + 1), f1 j) * A054946 (n + 1)

end

end A054949.P9985014915354653537

/-! ## A054949.P11793937365479845569

`A054950(n+1)+∏[A000079(n)]*A054946(n+1)`
-/

namespace A054949.P11793937365479845569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054950 (n + 1) + (∏ j ∈ Finset.range (n + 1), f1 j) * A054946 (n + 1)

end

end A054949.P11793937365479845569

/-!
# A054950: Number of labeled semi-strong digraphs on n nodes with an even number of components.

The programs for A054950, there is no canonical definition to state claims against.
-/

/-! ## A054950.P9819280829667164522

`(A054948(n+1)-A054947(n+1))/2`
-/

namespace A054950.P9819280829667164522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054948 (n + 1) - A054947 (n + 1) : ℚ) / 2

end

end A054950.P9819280829667164522

/-! ## A054950.P16742724470164853411

`A054949(n+1)-A054947(n+1)`
-/

namespace A054950.P16742724470164853411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054949 (n + 1) - A054947 (n + 1)

end

end A054950.P16742724470164853411

/-! ## A054950.P8765899700186218593

`A054948(n+1)-A054949(n+1)`
-/

namespace A054950.P8765899700186218593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054948 (n + 1) - A054949 (n + 1)

end

end A054950.P8765899700186218593

/-! ## A054950.P14904038040063303043

`A054949(n+1)-A000079(∑[n])*A054946(n+1)`
-/

namespace A054950.P14904038040063303043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054949 (n + 1) - A000079 (∑ j ∈ Finset.range (n + 1), f1 j) * A054946 (n + 1)

end

end A054950.P14904038040063303043

/-! ## A054950.P6391462924017029575

`A054949(n+1)-∏[A000079(n)]*A054946(n+1)`
-/

namespace A054950.P6391462924017029575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054949 (n + 1) - (∏ j ∈ Finset.range (n + 1), f1 j) * A054946 (n + 1)

end

end A054950.P6391462924017029575

/-!
# A054951: Number of unlabeled semi-strong digraphs on n nodes with mutually nonisomorphic components.

The programs for A054951, there is no canonical definition to state claims against.
-/

/-! ## A054951.P4776366735726027979

`A054953(n+1)-A054954(n+1)`
-/

namespace A054951.P4776366735726027979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054953 (n + 1) - A054954 (n + 1)

end

end A054951.P4776366735726027979

/-! ## A054951.P6413518959752883208

`2*A054953(n+1)-A054952(n+1)`
-/

namespace A054951.P6413518959752883208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054953 (n + 1) - A054952 (n + 1)

end

end A054951.P6413518959752883208

/-! ## A054951.P17338173701996522009

`A054952(n+1)-2*A054954(n+1)`
-/

namespace A054951.P17338173701996522009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054952 (n + 1) - 2 * A054954 (n + 1)

end

end A054951.P17338173701996522009

/-! ## A054951.P12087355313709522504

`A054953(n+1)-(A054952(n+1)-A054953(n+1))%A049387(n+1)`
-/

namespace A054951.P12087355313709522504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054953 (n + 1) - Int.tmod (A054952 (n + 1) - A054953 (n + 1)) (A049387 (n + 1))

end

end A054951.P12087355313709522504

/-! ## A054951.P6205038440817693044

`A054952(n+1)-A054954(n+1)-A054954(n+1)%A049387(n+1)`
-/

namespace A054951.P6205038440817693044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054952 (n + 1) - A054954 (n + 1) - Int.tmod (A054954 (n + 1)) (A049387 (n + 1))

end

end A054951.P6205038440817693044

/-!
# A054952: Number of unlabeled semi-strong digraphs on n nodes with pairwise different components.

The programs for A054952, there is no canonical definition to state claims against.
-/

/-! ## A054952.P17945590441325947431

`A054954(n+1)+A054953(n+1)`
-/

namespace A054952.P17945590441325947431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054954 (n + 1) + A054953 (n + 1)

end

end A054952.P17945590441325947431

/-! ## A054952.P12774174723430255513

`A054951(n+1)+2*A054954(n+1)`
-/

namespace A054952.P12774174723430255513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054951 (n + 1) + 2 * A054954 (n + 1)

end

end A054952.P12774174723430255513

/-! ## A054952.P15996055870629529387

`2*A054953(n+1)-A054951(n+1)`
-/

namespace A054952.P15996055870629529387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054953 (n + 1) - A054951 (n + 1)

end

end A054952.P15996055870629529387

/-! ## A054952.P5328598698961216000

`A054954(n+1)%A049387(n+1)+A054954(n+1)+A054951(n+1)`
-/

namespace A054952.P5328598698961216000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054954 (n + 1)) (A049387 (n + 1)) + (A054954 (n + 1) + A054951 (n + 1))

end

end A054952.P5328598698961216000

/-! ## A054952.P12390415219353744800

`A054953(n+1)+(A054953(n+1)-A054951(n+1))%A049387(n+1)`
-/

namespace A054952.P12390415219353744800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054953 (n + 1) + Int.tmod (A054953 (n + 1) - A054951 (n + 1)) (A049387 (n + 1))

end

end A054952.P12390415219353744800

/-!
# A054953: Number of unlabeled semi-strong digraphs on n nodes with an odd number of pairwise different components.

The programs for A054953, there is no canonical definition to state claims against.
-/

/-! ## A054953.P13974174411823124384

`(A054952(n+1)+A054951(n+1))/2`
-/

namespace A054953.P13974174411823124384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054952 (n + 1) + A054951 (n + 1) : ℚ) / 2

end

end A054953.P13974174411823124384

/-! ## A054953.P59377262453247275

`A054954(n+1)+A054951(n+1)`
-/

namespace A054953.P59377262453247275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054954 (n + 1) + A054951 (n + 1)

end

end A054953.P59377262453247275

/-! ## A054953.P3320350419853028320

`A054952(n+1)-A054954(n+1)`
-/

namespace A054953.P3320350419853028320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054952 (n + 1) - A054954 (n + 1)

end

end A054953.P3320350419853028320

/-!
# A054954: Number of unlabeled semi-strong digraphs on n nodes with an even number of pairwise different components.

The programs for A054954, there is no canonical definition to state claims against.
-/

/-! ## A054954.P16331191305339337799

`(A054952(n+1)-A054951(n+1))/2`
-/

namespace A054954.P16331191305339337799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054952 (n + 1) - A054951 (n + 1) : ℚ) / 2

end

end A054954.P16331191305339337799

/-! ## A054954.P1632584746789498007

`A054953(n+1)-A054951(n+1)`
-/

namespace A054954.P1632584746789498007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054953 (n + 1) - A054951 (n + 1)

end

end A054954.P1632584746789498007

/-! ## A054954.P14061432240821931325

`A054952(n+1)-A054953(n+1)`
-/

namespace A054954.P14061432240821931325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054952 (n + 1) - A054953 (n + 1)

end

end A054954.P14061432240821931325

/-! ## A054954.P15913489897076096571

`(A054953(n+1)%A049387(n+1))%A054951(n+1)`
-/

namespace A054954.P15913489897076096571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A054953 (n + 1)) (A049387 (n + 1))) (A054951 (n + 1))

end

end A054954.P15913489897076096571

/-! ## A054954.P18231432674238272034

`(A054952(n+1)%A049387(n+1))%A054953(n+1)`
-/

namespace A054954.P18231432674238272034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A054952 (n + 1)) (A049387 (n + 1))) (A054953 (n + 1))

end

end A054954.P18231432674238272034

/-!
# A054955: Number of labeled Eulerian digraphs with n nodes and an even number of edges.

The programs for A054955, there is no canonical definition to state claims against.
-/

/-! ## A054955.P15505254070996440538

`(A007080(n+1)+(n+1)!)/2`
-/

namespace A054955.P15505254070996440538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007080 (n + 1) + (Nat.factorial (n + 1) : ℤ) : ℚ) / 2

end

end A054955.P15505254070996440538

/-! ## A054955.P13076470664490371619

`A054956(n+1)+(n+1)!`
-/

namespace A054955.P13076470664490371619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054956 (n + 1) + (Nat.factorial (n + 1) : ℤ)

end

end A054955.P13076470664490371619

/-! ## A054955.P10975144055148848480

`A007080(n+1)-A054956(n+1)`
-/

namespace A054955.P10975144055148848480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (n + 1) - A054956 (n + 1)

end

end A054955.P10975144055148848480

/-!
# A054956: Number of labeled Eulerian digraphs with n nodes and an odd number of edges.

The programs for A054956, there is no canonical definition to state claims against.
-/

/-! ## A054956.P8985971328621699940

`(A007080(n+1)-(n+1)!)/2`
-/

namespace A054956.P8985971328621699940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007080 (n + 1) - (Nat.factorial (n + 1) : ℤ) : ℚ) / 2

end

end A054956.P8985971328621699940

/-! ## A054956.P2304271663948887249

`A054955(n+1)-(n+1)!`
-/

namespace A054956.P2304271663948887249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054955 (n + 1) - (Nat.factorial (n + 1) : ℤ)

end

end A054956.P2304271663948887249

/-! ## A054956.P14046529786199517298

`A054955(n+1)-A000142(n+1)`
-/

namespace A054956.P14046529786199517298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054955 (n + 1) - A000142 (n + 1)

end

end A054956.P14046529786199517298

/-! ## A054956.P8600674528458803356

`A007080(n+1)-A054955(n+1)`
-/

namespace A054956.P8600674528458803356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (n + 1) - A054955 (n + 1)

end

end A054956.P8600674528458803356

/-! ## A054956.P4376526643442867524

`(A007080(n+1)%A054955(n+1))%A054957(n+1)`
-/

namespace A054956.P4376526643442867524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A007080 (n + 1)) (A054955 (n + 1))) (A054957 (n + 1))

end

end A054956.P4376526643442867524

/-!
# A054957: Number of labeled connected Eulerian digraphs with n nodes.

The programs for A054957, there is no canonical definition to state claims against.
-/

/-! ## A054957.P5810602174876439570

`A054958(n+1)+A054959(n+1)`
-/

namespace A054957.P5810602174876439570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054958 (n + 1) + A054959 (n + 1)

end

end A054957.P5810602174876439570

/-! ## A054957.P3735558829804232826

`A000142(n)+2*A054959(n+1)`
-/

namespace A054957.P3735558829804232826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 2 * A054959 (n + 1)

end

end A054957.P3735558829804232826

/-! ## A054957.P8231317921471373178

`∏[A028310(n)]+2*A054959(n+1)`
-/

namespace A054957.P8231317921471373178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2 * A054959 (n + 1)

end

end A054957.P8231317921471373178

/-! ## A054957.P7874187162666060191

`A054959(A000027(n+1))+A054959(n+1)+n!`
-/

namespace A054957.P7874187162666060191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054959 (A000027 (n + 1)).toNat + (A054959 (n + 1) + (Nat.factorial n : ℤ))

end

end A054957.P7874187162666060191

/-! ## A054957.P17837931799662422170

`A054959(A002377(n+1))+A054959(n+1)+n!`
-/

namespace A054957.P17837931799662422170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054959 (A002377 (n + 1)).toNat + (A054959 (n + 1) + (Nat.factorial n : ℤ))

end

end A054957.P17837931799662422170

/-!
# A054958: Number of labeled connected Eulerian digraphs with n nodes and an even number of edges.

The programs for A054958, there is no canonical definition to state claims against.
-/

/-! ## A054958.P3156843195880645738

`(A054957(n+1)+n!)/2`
-/

namespace A054958.P3156843195880645738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054957 (n + 1) + (Nat.factorial n : ℤ) : ℚ) / 2

end

end A054958.P3156843195880645738

/-! ## A054958.P4822046344550190725

`A054959(n+1)+n!`
-/

namespace A054958.P4822046344550190725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054959 (n + 1) + (Nat.factorial n : ℤ)

end

end A054958.P4822046344550190725

/-! ## A054958.P8285468866126693557

`A054959(n+1)+A000142(n)`
-/

namespace A054958.P8285468866126693557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054959 (n + 1) + A000142 n

end

end A054958.P8285468866126693557

/-! ## A054958.P12704741733986119451

`A054957(n+1)-A054959(n+1)`
-/

namespace A054958.P12704741733986119451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054957 (n + 1) - A054959 (n + 1)

end

end A054958.P12704741733986119451

/-!
# A054959: Number of labeled connected Eulerian digraphs with n nodes and an odd number of edges.

The programs for A054959, there is no canonical definition to state claims against.
-/

/-! ## A054959.P12222504508279380242

`(A054957(n+1)-n!)/2`
-/

namespace A054959.P12222504508279380242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054957 (n + 1) - (Nat.factorial n : ℤ) : ℚ) / 2

end

end A054959.P12222504508279380242

/-! ## A054959.P16912677739553573330

`A054958(n+1)-n!`
-/

namespace A054959.P16912677739553573330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054958 (n + 1) - (Nat.factorial n : ℤ)

end

end A054959.P16912677739553573330

/-! ## A054959.P10440709544117471749

`A054957(n+1)-A054958(n+1)`
-/

namespace A054959.P10440709544117471749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054957 (n + 1) - A054958 (n + 1)

end

end A054959.P10440709544117471749

/-! ## A054959.P17740621902275659262

`A054957(A187829(n+1))%A054958(n+1)`
-/

namespace A054959.P17740621902275659262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054957 (A187829 (n + 1)).toNat) (A054958 (n + 1))

end

end A054959.P17740621902275659262

/-! ## A054959.P2821308783713984108

`A054957(n+1)%A054958(A331995(n+1))`
-/

namespace A054959.P2821308783713984108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054957 (n + 1)) (A054958 (A331995 (n + 1)).toNat)

end

end A054959.P2821308783713984108

/-!
# A054960: Number of unlabeled graphs with n nodes and an odd number of edges.

The programs for A054960, there is no canonical definition to state claims against.
-/

/-! ## A054960.P7176302316161851051

`(A000088(n+1)-A000171(n+1))/2`
-/

namespace A054960.P7176302316161851051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000088 (n + 1) - A000171 (n + 1) : ℚ) / 2

end

end A054960.P7176302316161851051

/-! ## A054960.P3302312188038021758

`Δ[A006897(n)]-A007869(n+1)`
-/

namespace A054960.P3302312188038021758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007869 (n + 1)

end

end A054960.P3302312188038021758

/-! ## A054960.P5116805829874371940

`A000088(n+1)-A007869(n+1)`
-/

namespace A054960.P5116805829874371940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A007869 (n + 1)

end

end A054960.P5116805829874371940

/-! ## A054960.P15874268823273450385

`A007869(n+1)-A000171(n+1)`
-/

namespace A054960.P15874268823273450385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007869 (n + 1) - A000171 (n + 1)

end

end A054960.P15874268823273450385

/-! ## A054960.P16366687819979899569

`A001349(n+1)-A054931(n+1)`
-/

namespace A054960.P16366687819979899569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A054931 (n + 1)

end

end A054960.P16366687819979899569

/-!
# A054962: Number of different solutions to problem in A054961.

The programs for A054962, there is no canonical definition to state claims against.
-/

/-! ## A054962.P866715069411038483

`A348979(A139798(n+1)%A139816(n+2))`
-/

namespace A054962.P866715069411038483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348979 (Int.tmod (A139798 (n + 1)) (A139816 (n + 2))).toNat

end

end A054962.P866715069411038483

/-! ## A054962.P6973448190083987725

`A156628(abs(2-n)!)`
-/

namespace A054962.P6973448190083987725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156628 (Nat.factorial |2 - (n : ℤ)|.toNat)

end

end A054962.P6973448190083987725

/-! ## A054962.P10415967713859340563

`floor(sqrt(A333571(2^n)))`
-/

namespace A054962.P10415967713859340563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A333571 (2 ^ n))

end

end A054962.P10415967713859340563

/-!
# A054963: Number of cells in the first column of all directed column-convex polyominoes of area n+1.

The programs for A054963, the canonical program `A054963.P10641591174337559307` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054963 has offset 0).

The definition of A054963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054963.P5937905541445606394

`ogf((1-2x+2x^2)/(1-5x+8x^2-5x^3+x^4))`
-/

namespace A054963.P5937905541445606394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -5, 8, -5, 1] n

end

end A054963.P5937905541445606394

namespace A054963

/-- `ogf((1-2x+2x^2)/(1-5x+8x^2-5x^3+x^4))` -/
def P5937905541445606394.Spec : Prop :=
  ∀ n, P5937905541445606394.a n = A054963 n

end A054963

/-! ## A054963.P10641591174337559307

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=26`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054963

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P10641591174337559307.Spec : Prop :=
  ∀ n, P10641591174337559307.a n = A054963 n

theorem P10641591174337559307.correct : P10641591174337559307.Spec := by
  intro n
  simp only [A054963]

end A054963

/-! ## A054963.P2634110137326248733

`A002878(n)-n`
-/

namespace A054963.P2634110137326248733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n - (n : ℤ)

end

end A054963.P2634110137326248733

namespace A054963

/-- `A002878(n)-n` -/
def P2634110137326248733.Spec : Prop :=
  ∀ n, P2634110137326248733.a n = A054963 n

end A054963

/-! ## A054963.P13882320706038151128

`A000045(2*n)+A000045(2*n+2)-n`
-/

namespace A054963.P13882320706038151128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + A000045 (2 * n + 2) - (n : ℤ)

end

end A054963.P13882320706038151128

namespace A054963

/-- `A000045(2*n)+A000045(2*n+2)-n` -/
def P13882320706038151128.Spec : Prop :=
  ∀ n, P13882320706038151128.a n = A054963 n

end A054963

/-! ## A054963.P674166366483665396

`∑[floor((ϕ^n)²)]`
-/

namespace A054963.P674166366483665396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054963.P674166366483665396

namespace A054963

/-- `∑[floor((ϕ^n)²)]` -/
def P674166366483665396.Spec : Prop :=
  ∀ n, P674166366483665396.a n = A054963 n

end A054963

/-! ## A054963.P1080483686800955250

`3*a(n-1)-(a(n-2)+1)+n` with `a(0)=1, a(1)=3`
-/

namespace A054963.P1080483686800955250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 1) + (n : ℤ)

end

end A054963.P1080483686800955250

namespace A054963

/-- `3*a(n-1)-(a(n-2)+1)+n` -/
def P1080483686800955250.Spec : Prop :=
  ∀ n, P1080483686800955250.a n = A054963 n

end A054963

/-! ## A054963.P17908710917345679098

`3*a(n-1)-(1-(n-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A054963.P17908710917345679098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - (1 - ((n : ℤ) - a (n - 2)))

end

end A054963.P17908710917345679098

namespace A054963

/-- `3*a(n-1)-(1-(n-a(n-2)))` -/
def P17908710917345679098.Spec : Prop :=
  ∀ n, P17908710917345679098.a n = A054963 n

end A054963

/-! ## A054963.P5191370602779290031

`Δ[A004146(n)]-n`
-/

namespace A054963.P5191370602779290031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A054963.P5191370602779290031

namespace A054963

/-- `Δ[A004146(n)]-n` -/
def P5191370602779290031.Spec : Prop :=
  ∀ n, P5191370602779290031.a n = A054963 n

end A054963

/-! ## A054963.P7063005537882048574

`Δ[A005248(n)]-n`
-/

namespace A054963.P7063005537882048574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A054963.P7063005537882048574

namespace A054963

/-- `Δ[A005248(n)]-n` -/
def P7063005537882048574.Spec : Prop :=
  ∀ n, P7063005537882048574.a n = A054963 n

end A054963

/-! ## A054963.P3326927327525092832

`Δ[A005592(n)]-n`
-/

namespace A054963.P3326927327525092832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A054963.P3326927327525092832

namespace A054963

/-- `Δ[A005592(n)]-n` -/
def P3326927327525092832.Spec : Prop :=
  ∀ n, P3326927327525092832.a n = A054963 n

end A054963

/-! ## A054963.P4822904537633946192

`record[A075193(n)]-n`
-/

namespace A054963.P4822904537633946192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A054963.P4822904537633946192

namespace A054963

/-- `record[A075193(n)]-n` -/
def P4822904537633946192.Spec : Prop :=
  ∀ n, P4822904537633946192.a n = A054963 n

end A054963

/-! ## A054963.P13812322183098502707

`record[A154699(n)]-n`
-/

namespace A054963.P13812322183098502707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A054963.P13812322183098502707

namespace A054963

/-- `record[A154699(n)]-n` -/
def P13812322183098502707.Spec : Prop :=
  ∀ n, P13812322183098502707.a n = A054963 n

end A054963

/-! ## A054963.P11482246413460073682

`A188378(n)-(n+1)`
-/

namespace A054963.P11482246413460073682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 n - (n + 1 : ℤ)

end

end A054963.P11482246413460073682

namespace A054963

/-- `A188378(n)-(n+1)` -/
def P11482246413460073682.Spec : Prop :=
  ∀ n, P11482246413460073682.a n = A054963 n

end A054963

/-! ## A054963.P15809945887084554211

`A162483(n)-(n+2)`
-/

namespace A054963.P15809945887084554211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 n - (n + 2 : ℤ)

end

end A054963.P15809945887084554211

namespace A054963

/-- `A162483(n)-(n+2)` -/
def P15809945887084554211.Spec : Prop :=
  ∀ n, P15809945887084554211.a n = A054963 n

end A054963

/-! ## A054963.P12622247511191851090

`A256233(n)+2-n`
-/

namespace A054963.P12622247511191851090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 n + (2 - (n : ℤ))

end

end A054963.P12622247511191851090

namespace A054963

/-- `A256233(n)+2-n` -/
def P12622247511191851090.Spec : Prop :=
  ∀ n, P12622247511191851090.a n = A054963 n

end A054963

/-! ## A054963.P12357517448354311011

`A075193(2*n)-n`
-/

namespace A054963.P12357517448354311011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (2 * n) - (n : ℤ)

end

end A054963.P12357517448354311011

namespace A054963

/-- `A075193(2*n)-n` -/
def P12357517448354311011.Spec : Prop :=
  ∀ n, P12357517448354311011.a n = A054963 n

end A054963

/-! ## A054963.P8600372649047552354

`A154699(2*n)-n`
-/

namespace A054963.P8600372649047552354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 (2 * n) - (n : ℤ)

end

end A054963.P8600372649047552354

namespace A054963

/-- `A154699(2*n)-n` -/
def P8600372649047552354.Spec : Prop :=
  ∀ n, P8600372649047552354.a n = A054963 n

end A054963

/-! ## A054963.P18156668144436268694

`A295674(2*n)-n`
-/

namespace A054963.P18156668144436268694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 (2 * n) - (n : ℤ)

end

end A054963.P18156668144436268694

namespace A054963

/-- `A295674(2*n)-n` -/
def P18156668144436268694.Spec : Prop :=
  ∀ n, P18156668144436268694.a n = A054963 n

end A054963

/-! ## A054963.P6215385854590212187

`∑[abs(A219233(n))]-n`
-/

namespace A054963.P6215385854590212187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A219233 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A054963.P6215385854590212187

namespace A054963

/-- `∑[abs(A219233(n))]-n` -/
def P6215385854590212187.Spec : Prop :=
  ∀ n, P6215385854590212187.a n = A054963 n

end A054963

/-! ## A054963.P12293803527200429385

`A000032(Δ[n²])-n`
-/

namespace A054963.P12293803527200429385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A054963.P12293803527200429385

namespace A054963

/-- `A000032(Δ[n²])-n` -/
def P12293803527200429385.Spec : Prop :=
  ∀ n, P12293803527200429385.a n = A054963 n

end A054963

/-!
# A054964: Numbers whose divisors have the form m^k + 1, k>1.

The programs for A054964, the canonical program `A054964.P645230808875844543` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054964 has offset 1).

The definition of A054964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054964.P14461813187545419709

`eq[A266722(n), A278162(n)]²+1`
-/

namespace A054964.P14461813187545419709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2 + 1

end

end A054964.P14461813187545419709

namespace A054964

/-- `eq[A266722(n), A278162(n)]²+1` -/
def P14461813187545419709.Spec : Prop :=
  ∀ n, (P14461813187545419709.a n : ℤ) = A054964 (n + 1)

end A054964

/-! ## A054964.P17510743637754549769

`A002522(eq[A266722(n), A278162(n)])`
-/

namespace A054964.P17510743637754549769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A054964.P17510743637754549769

namespace A054964

/-- `A002522(eq[A266722(n), A278162(n)])` -/
def P17510743637754549769.Spec : Prop :=
  ∀ n, P17510743637754549769.a n = A054964 (n + 1)

end A054964

/-! ## A054964.P7968944105220900868

`A059591(eq[A266722(n), A278162(n)])`
-/

namespace A054964.P7968944105220900868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A054964.P7968944105220900868

namespace A054964

/-- `A059591(eq[A266722(n), A278162(n)])` -/
def P7968944105220900868.Spec : Prop :=
  ∀ n, P7968944105220900868.a n = A054964 (n + 1)

end A054964

/-! ## A054964.P645230808875844543

`record[A002522(n)%(A333169(n)+A333167(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054964

/-- `record[A002522(n)%(A333169(n)+A333167(n))]` -/
def P645230808875844543.Spec : Prop :=
  ∀ n, P645230808875844543.a n = A054964 (n + 1)

theorem P645230808875844543.correct : P645230808875844543.Spec := by
  intro n
  simp only [A054964, Nat.add_sub_cancel]

end A054964

/-! ## A054964.P4935471859521849482

`∩[A002522(n), A373789(n+1)]`
-/

namespace A054964.P4935471859521849482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054964.P4935471859521849482

namespace A054964

/-- `∩[A002522(n), A373789(n+1)]` -/
def P4935471859521849482.Spec : Prop :=
  ∀ n, (P4935471859521849482.a n : ℤ) = A054964 (n + 1)

end A054964

/-! ## A054964.P12370620145216164018

`A391137(n+1)²+1`
-/

namespace A054964.P12370620145216164018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391137 (n + 1) ^ 2 + 1

end

end A054964.P12370620145216164018

namespace A054964

/-- `A391137(n+1)²+1` -/
def P12370620145216164018.Spec : Prop :=
  ∀ n, P12370620145216164018.a n = A054964 (n + 1)

end A054964

/-! ## A054964.P7566462095664072074

`A002522(A391137(n+1))`
-/

namespace A054964.P7566462095664072074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A391137 (n + 1)).toNat

end

end A054964.P7566462095664072074

namespace A054964

/-- `A002522(A391137(n+1))` -/
def P7566462095664072074.Spec : Prop :=
  ∀ n, P7566462095664072074.a n = A054964 (n + 1)

end A054964

/-! ## A054964.P7722682702435204123

`∩[A117286(n+1), n²+1]`
-/

namespace A054964.P7722682702435204123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117286 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A054964.P7722682702435204123

namespace A054964

/-- `∩[A117286(n+1), n²+1]` -/
def P7722682702435204123.Spec : Prop :=
  ∀ n, (P7722682702435204123.a n : ℤ) = A054964 (n + 1)

end A054964

/-! ## A054964.P1335475153470506750

`∩[A138389(n+1), n²+1]`
-/

namespace A054964.P1335475153470506750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A054964.P1335475153470506750

namespace A054964

/-- `∩[A138389(n+1), n²+1]` -/
def P1335475153470506750.Spec : Prop :=
  ∀ n, (P1335475153470506750.a n : ℤ) = A054964 (n + 1)

end A054964

/-! ## A054964.P4113731620380978538

`∩[A055977(n+1), A002522(n)]`
-/

namespace A054964.P4113731620380978538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054964.P4113731620380978538

namespace A054964

/-- `∩[A055977(n+1), A002522(n)]` -/
def P4113731620380978538.Spec : Prop :=
  ∀ n, (P4113731620380978538.a n : ℤ) = A054964 (n + 1)

end A054964

/-!
# A054965: Beatty sequence for log_3(10), i.e., for 1/log_10(3); so largest exponent of 3 which produces an n-digit decimal number.

The programs for A054965, the canonical program `A054965.P5132898846862739972` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054965 has offset 1).

The definition of A054965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054965.P5132898846862739972

`floor((n+1)*log(10)/log(3))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054965

/-- `floor((n+1)*log(10)/log(3))` -/
def P5132898846862739972.Spec : Prop :=
  ∀ n, P5132898846862739972.a n = A054965 (n + 1)

theorem P5132898846862739972.correct : P5132898846862739972.Spec := by
  intro n
  simp only [A054965, Nat.add_sub_cancel]

end A054965

/-! ## A054965.P8182751734378126520

`Δ[A025741(n)]-1`
-/

namespace A054965.P8182751734378126520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A054965.P8182751734378126520

namespace A054965

/-- `Δ[A025741(n)]-1` -/
def P8182751734378126520.Spec : Prop :=
  ∀ n, P8182751734378126520.a n = A054965 (n + 1)

end A054965

/-! ## A054965.P2016133304289580177

`A158333(n+1)-1`
-/

namespace A054965.P2016133304289580177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158333 (n + 1) - 1

end

end A054965.P2016133304289580177

namespace A054965

/-- `A158333(n+1)-1` -/
def P2016133304289580177.Spec : Prop :=
  ∀ n, P2016133304289580177.a n = A054965 (n + 1)

end A054965

/-! ## A054965.P13027311252860155942

`A023443(A158333(n+1))`
-/

namespace A054965.P13027311252860155942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A158333 (n + 1)).toNat

end

end A054965.P13027311252860155942

namespace A054965

/-- `A023443(A158333(n+1))` -/
def P13027311252860155942.Spec : Prop :=
  ∀ n, P13027311252860155942.a n = A054965 (n + 1)

end A054965

/-! ## A054965.P1958150399759120793

`lt[A060956(n+1), A060956(n)]`
-/

namespace A054965.P1958150399759120793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054965.P1958150399759120793

namespace A054965

/-- `lt[A060956(n+1), A060956(n)]` -/
def P1958150399759120793.Spec : Prop :=
  ∀ n, (P1958150399759120793.a n : ℤ) = A054965 (n + 1)

end A054965

/-! ## A054965.P2601133197068768434

`A004526(Δ[A025747(2*n)])`
-/

namespace A054965.P2601133197068768434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A054965.P2601133197068768434

namespace A054965

/-- `A004526(Δ[A025747(2*n)])` -/
def P2601133197068768434.Spec : Prop :=
  ∀ n, P2601133197068768434.a n = A054965 (n + 1)

end A054965

/-! ## A054965.P16119401994766794129

`A123108(Δ[A025747(2*n)])`
-/

namespace A054965.P16119401994766794129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (n + 1) - f1 n).toNat

end

end A054965.P16119401994766794129

namespace A054965

/-- `A123108(Δ[A025747(2*n)])` -/
def P16119401994766794129.Spec : Prop :=
  ∀ n, P16119401994766794129.a n = A054965 (n + 1)

end A054965

/-! ## A054965.P10696567640102425840

`val(A074118(n+1), 3)`
-/

namespace A054965.P10696567640102425840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074118 (n + 1)).toNat 3

end

end A054965.P10696567640102425840

namespace A054965

/-- `val(A074118(n+1), 3)` -/
def P10696567640102425840.Spec : Prop :=
  ∀ n, (P10696567640102425840.a n : ℤ) = A054965 (n + 1)

end A054965

/-!
# A054966: Numbers that are congruent to {0, 1, 8} mod 9.

The programs for A054966, the canonical program `A054966.P11387275613647003379` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054966 has offset 1).

The definition of A054966 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A054966.anchor (n : ℕ) (hn : 1 ≤ n) : A054966 n = (Nat.nth (fun k => k % 9 ∈ ({0, 1, 8} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A054.A054966`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054966.P12250405041212501149

`ogf((x+7x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A054966.P12250405041212501149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 7, 1] [1, -1, 0, -1, 1] n

end

end A054966.P12250405041212501149

namespace A054966

/-- `ogf((x+7x^2+x^3)/(1-x-x^3+x^4))` -/
def P12250405041212501149.Spec : Prop :=
  ∀ n, P12250405041212501149.a n = A054966 (n + 1)

end A054966

/-! ## A054966.P11387275613647003379

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054966

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P11387275613647003379.Spec : Prop :=
  ∀ n, P11387275613647003379.a n = A054966 (n + 1)

theorem P11387275613647003379.correct : P11387275613647003379.Spec := by
  intro n
  simp only [A054966, Nat.add_sub_cancel]

end A054966

/-! ## A054966.P10725528043234832261

`3*(n+1)-3+2*cos(2*(n+1)*π/3)+2*sin(2*(n+1)*π/3)/sqrt(3)`
-/

namespace A054966.P10725528043234832261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - 3 : ℝ) + 2 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 2 * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3) / Real.sqrt (3 : ℝ)

end

end A054966.P10725528043234832261

namespace A054966

/-- `3*(n+1)-3+2*cos(2*(n+1)*π/3)+2*sin(2*(n+1)*π/3)/sqrt(3)` -/
def P10725528043234832261.Spec : Prop :=
  ∀ n, P10725528043234832261.a n = (A054966 (n + 1) : ℝ)

end A054966

/-! ## A054966.P3264021022028359882

`6*round(n/3)+n`
-/

namespace A054966.P3264021022028359882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

end

end A054966.P3264021022028359882

namespace A054966

/-- `6*round(n/3)+n` -/
def P3264021022028359882.Spec : Prop :=
  ∀ n, P3264021022028359882.a n = A054966 (n + 1)

end A054966

/-! ## A054966.P12867152348728344063

`∑[or(1, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A054966.P12867152348728344063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P12867152348728344063

namespace A054966

/-- `∑[or(1, a(n-3))]` -/
def P12867152348728344063.Spec : Prop :=
  ∀ n, (P12867152348728344063.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P16223999073740312930

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=7, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054966.P16223999073740312930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P16223999073740312930

namespace A054966

/-- `∑[floor(a(n-3))]` -/
def P16223999073740312930.Spec : Prop :=
  ∀ n, (P16223999073740312930.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P17071760489788791057

`lt[n*(dr(n+2)-3), 1]`
-/

namespace A054966.P17071760489788791057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℤ) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054966.P17071760489788791057

namespace A054966

/-- `lt[n*(dr(n+2)-3), 1]` -/
def P17071760489788791057.Spec : Prop :=
  ∀ n, (P17071760489788791057.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P10313380128973994332

`lt[dr(n+2)+n, n+4]`
-/

namespace A054966.P10313380128973994332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054966.P10313380128973994332

namespace A054966

/-- `lt[dr(n+2)+n, n+4]` -/
def P10313380128973994332.Spec : Prop :=
  ∀ n, (P10313380128973994332.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P7188047377630933878

`record[n+1-dr(3^dr(n))]`
-/

namespace A054966.P7188047377630933878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (3 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054966.P7188047377630933878

namespace A054966

/-- `record[n+1-dr(3^dr(n))]` -/
def P7188047377630933878.Spec : Prop :=
  ∀ n, P7188047377630933878.a n = A054966 (n + 1)

end A054966

/-! ## A054966.P10529366774174627515

`∑[a(n-3)%8]` with `a(0)=0, a(1)=1, a(2)=7, a(3)=1`
-/

namespace A054966.P10529366774174627515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7, 1] fun n f1 =>
  f1 (n - 3) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P10529366774174627515

namespace A054966

/-- `∑[a(n-3)%8]` -/
def P10529366774174627515.Spec : Prop :=
  ∀ n, (P10529366774174627515.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P5442355066392235997

`lt[(n+1)%9+n, n+3]`
-/

namespace A054966.P5442355066392235997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 9 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054966.P5442355066392235997

namespace A054966

/-- `lt[(n+1)%9+n, n+3]` -/
def P5442355066392235997.Spec : Prop :=
  ∀ n, (P5442355066392235997.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P8866485240229660790

`record[(n-2)%(2-dr(n)+n)]`
-/

namespace A054966.P8866485240229660790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) (2 - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054966.P8866485240229660790

namespace A054966

/-- `record[(n-2)%(2-dr(n)+n)]` -/
def P8866485240229660790.Spec : Prop :=
  ∀ n, P8866485240229660790.a n = A054966 (n + 1)

end A054966

/-! ## A054966.P11921864330302190829

`eq[0, C(n, a(n-3)²)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A054966.P11921864330302190829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  Nat.choose n (f2 (n - 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054966.P11921864330302190829

namespace A054966

/-- `eq[0, C(n, a(n-3)²)]` -/
def P11921864330302190829.Spec : Prop :=
  ∀ n, (P11921864330302190829.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P10272536080281572357

`lt[n, (dr(1-n)-5)*(n-2)]`
-/

namespace A054966.P10272536080281572357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℤ) - 5) * ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054966.P10272536080281572357

namespace A054966

/-- `lt[n, (dr(1-n)-5)*(n-2)]` -/
def P10272536080281572357.Spec : Prop :=
  ∀ n, (P10272536080281572357.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P14040971011080354638

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=7, a(3)=1`
-/

namespace A054966.P14040971011080354638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7, 1] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P14040971011080354638

namespace A054966

/-- `∑[a(n-3)^a(n-1)]` -/
def P14040971011080354638.Spec : Prop :=
  ∀ n, (P14040971011080354638.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P8300944638108891713

`∑[8-a(n-1)*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A054966.P8300944638108891713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n f1 =>
  8 - f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P8300944638108891713

namespace A054966

/-- `∑[8-a(n-1)*a(n-2)]` -/
def P8300944638108891713.Spec : Prop :=
  ∀ n, P8300944638108891713.a n = A054966 (n + 1)

end A054966

/-! ## A054966.P14152839233216747099

`∑[(8-a(n-1))/a(n-2)]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A054966.P14152839233216747099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 7] fun n f1 =>
  (8 - f1 (n - 1)) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P14152839233216747099

namespace A054966

/-- `∑[(8-a(n-1))/a(n-2)]` -/
def P14152839233216747099.Spec : Prop :=
  ∀ n, P14152839233216747099.a n = (A054966 (n + 1) : ℚ)

end A054966

/-! ## A054966.P15981679119526842345

`∑[dr(1-A077588(n))]`
-/

namespace A054966.P15981679119526842345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A077588 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P15981679119526842345

namespace A054966

/-- `∑[dr(1-A077588(n))]` -/
def P15981679119526842345.Spec : Prop :=
  ∀ n, (P15981679119526842345.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P4716840668690119424

`∑[dr((1-A139482(n+1))²)]`
-/

namespace A054966.P4716840668690119424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((1 - A139482 (n + 1)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P4716840668690119424

namespace A054966

/-- `∑[dr((1-A139482(n+1))²)]` -/
def P4716840668690119424.Spec : Prop :=
  ∀ n, (P4716840668690119424.a n : ℤ) = A054966 (n + 1)

end A054966

/-! ## A054966.P205810789593739916

`∑[A006530(a(n-3)!)]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A054966.P205810789593739916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n f1 =>
  A006530 (Nat.factorial (f1 (n - 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054966.P205810789593739916

namespace A054966

/-- `∑[A006530(a(n-3)!)]` -/
def P205810789593739916.Spec : Prop :=
  ∀ n, P205810789593739916.a n = A054966 (n + 1)

end A054966

/-!
# A054967: Numbers that are congruent to {0, 1, 9} mod 10.

The programs for A054967, the canonical program `A054967.P871829399426824494` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054967 has offset 1).

The definition of A054967 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A054967.anchor (n : ℕ) (hn : 1 ≤ n) : A054967 n = (Nat.nth (fun k => k % 10 ∈ ({0, 1, 9} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A054.A054967`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054967.P16151608400701345605

`ogf((x+8x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A054967.P16151608400701345605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8, 1] [1, -1, 0, -1, 1] n

end

end A054967.P16151608400701345605

namespace A054967

/-- `ogf((x+8x^2+x^3)/(1-x-x^3+x^4))` -/
def P16151608400701345605.Spec : Prop :=
  ∀ n, P16151608400701345605.a n = A054967 (n + 1)

end A054967

/-! ## A054967.P871829399426824494

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054967

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P871829399426824494.Spec : Prop :=
  ∀ n, P871829399426824494.a n = A054967 (n + 1)

theorem P871829399426824494.correct : P871829399426824494.Spec := by
  intro n
  simp only [A054967, Nat.add_sub_cancel]

end A054967

/-! ## A054967.P9751469591447472203

`(30*(n+1)-30+21*cos(2*(n+1)*π/3)+7*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A054967.P9751469591447472203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((30 * (n + 1) : ℤ) - 30 : ℝ) + 21 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 7 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A054967.P9751469591447472203

namespace A054967

/-- `(30*(n+1)-30+21*cos(2*(n+1)*π/3)+7*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P9751469591447472203.Spec : Prop :=
  ∀ n, P9751469591447472203.a n = (A054967 (n + 1) : ℝ)

end A054967

/-! ## A054967.P10279753591968880685

`a(n-3)+10` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A054967.P10279753591968880685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9] fun n a =>
  a (n - 3) + 10

end

end A054967.P10279753591968880685

namespace A054967

/-- `a(n-3)+10` -/
def P10279753591968880685.Spec : Prop :=
  ∀ n, (P10279753591968880685.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P13902555363124010798

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=8, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054967.P13902555363124010798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054967.P13902555363124010798

namespace A054967

/-- `∑[floor(a(n-3))]` -/
def P13902555363124010798.Spec : Prop :=
  ∀ n, (P13902555363124010798.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P12986669870575510685

`7*floor((n+1)/3)+n`
-/

namespace A054967.P12986669870575510685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊(n + 1 : ℚ) / 3⌋ + (n : ℤ)

end

end A054967.P12986669870575510685

namespace A054967

/-- `7*floor((n+1)/3)+n` -/
def P12986669870575510685.Spec : Prop :=
  ∀ n, P12986669870575510685.a n = A054967 (n + 1)

end A054967

/-! ## A054967.P2963118555996389240

`∑[gcd(8, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=8, a(3)=1`
-/

namespace A054967.P2963118555996389240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 1] fun n f1 =>
  Nat.gcd 8 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054967.P2963118555996389240

namespace A054967

/-- `∑[gcd(8, a(n-3))]` -/
def P2963118555996389240.Spec : Prop :=
  ∀ n, (P2963118555996389240.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P819974018778322773

`∑[a(n-3)%9]` with `a(0)=0, a(1)=1, a(2)=8, a(3)=1`
-/

namespace A054967.P819974018778322773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 1] fun n f1 =>
  f1 (n - 3) % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054967.P819974018778322773

namespace A054967

/-- `∑[a(n-3)%9]` -/
def P819974018778322773.Spec : Prop :=
  ∀ n, (P819974018778322773.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P8502310792225000209

`lt[(n+1)%10+n, n+3]`
-/

namespace A054967.P8502310792225000209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 10 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054967.P8502310792225000209

namespace A054967

/-- `lt[(n+1)%10+n, n+3]` -/
def P8502310792225000209.Spec : Prop :=
  ∀ n, (P8502310792225000209.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P621517985611140171

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=8, a(3)=1`
-/

namespace A054967.P621517985611140171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 1] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054967.P621517985611140171

namespace A054967

/-- `∑[a(n-3)^a(n-1)]` -/
def P621517985611140171.Spec : Prop :=
  ∀ n, (P621517985611140171.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P4603448837256492633

`∑[8/(a(n-1)*a(n-2))]` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A054967.P4603448837256492633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 8] fun n f1 =>
  8 / (f1 (n - 1) * f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054967.P4603448837256492633

namespace A054967

/-- `∑[8/(a(n-1)*a(n-2))]` -/
def P4603448837256492633.Spec : Prop :=
  ∀ n, P4603448837256492633.a n = (A054967 (n + 1) : ℚ)

end A054967

/-! ## A054967.P2299495340965146709

`∑[A101825(n)^3]`
-/

namespace A054967.P2299495340965146709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054967.P2299495340965146709

namespace A054967

/-- `∑[A101825(n)^3]` -/
def P2299495340965146709.Spec : Prop :=
  ∀ n, P2299495340965146709.a n = A054967 (n + 1)

end A054967

/-! ## A054967.P6323875872857911327

`∪[A090771(n+1), A008592(n)]`
-/

namespace A054967.P6323875872857911327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054967.P6323875872857911327

namespace A054967

/-- `∪[A090771(n+1), A008592(n)]` -/
def P6323875872857911327.Spec : Prop :=
  ∀ n, (P6323875872857911327.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P3620509817994760443

`∪[A197652(n+1), A017377(n)]`
-/

namespace A054967.P3620509817994760443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054967.P3620509817994760443

namespace A054967

/-- `∪[A197652(n+1), A017377(n)]` -/
def P3620509817994760443.Spec : Prop :=
  ∀ n, (P3620509817994760443.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P3237429453326203899

`∪[A090771(n+1), A197652(n+1)]`
-/

namespace A054967.P3237429453326203899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054967.P3237429453326203899

namespace A054967

/-- `∪[A090771(n+1), A197652(n+1)]` -/
def P3237429453326203899.Spec : Prop :=
  ∀ n, (P3237429453326203899.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P15942777819142691486

`∪[A197652(n+1), A277596(n+1)]`
-/

namespace A054967.P15942777819142691486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054967.P15942777819142691486

namespace A054967

/-- `∪[A197652(n+1), A277596(n+1)]` -/
def P15942777819142691486.Spec : Prop :=
  ∀ n, (P15942777819142691486.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P9410653874425618949

`∪[A197652(n+2)-1, A197652(n+2)]`
-/

namespace A054967.P9410653874425618949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054967.P9410653874425618949

namespace A054967

/-- `∪[A197652(n+2)-1, A197652(n+2)]` -/
def P9410653874425618949.Spec : Prop :=
  ∀ n, (P9410653874425618949.a n : ℤ) = A054967 (n + 1)

end A054967

/-! ## A054967.P9493894976491259812

`A266297(A004773(n+1))`
-/

namespace A054967.P9493894976491259812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (A004773 (n + 1)).toNat

end

end A054967.P9493894976491259812

namespace A054967

/-- `A266297(A004773(n+1))` -/
def P9493894976491259812.Spec : Prop :=
  ∀ n, P9493894976491259812.a n = A054967 (n + 1)

end A054967

/-! ## A054967.P12726901377860680083

`A266297(A042965(n+1)+1)`
-/

namespace A054967.P12726901377860680083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (A042965 (n + 1) + 1).toNat

end

end A054967.P12726901377860680083

namespace A054967

/-- `A266297(A042965(n+1)+1)` -/
def P12726901377860680083.Spec : Prop :=
  ∀ n, P12726901377860680083.a n = A054967 (n + 1)

end A054967

/-! ## A054967.P10399194302549870057

`A235499(A008854(n+1))`
-/

namespace A054967.P10399194302549870057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 (A008854 (n + 1)).toNat

end

end A054967.P10399194302549870057

namespace A054967

/-- `A235499(A008854(n+1))` -/
def P10399194302549870057.Spec : Prop :=
  ∀ n, P10399194302549870057.a n = A054967 (n + 1)

end A054967

/-!
# A054968: 3*Fibonacci(n) - 11.

The programs for A054968, the canonical program `A054968.P10366640185074096996` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054968 has offset 5).

The definition of A054968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000045(n+5)-11` (program `A054968.P10366640185074096996`, by `A054968.P10366640185074096996.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054968.P11227169132299832423

`ogf((4+5x+2x^2)/(1-2x+x^3))`
-/

namespace A054968.P11227169132299832423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5, 2] [1, -2, 0, 1] n

end

end A054968.P11227169132299832423

namespace A054968

/-- `ogf((4+5x+2x^2)/(1-2x+x^3))` -/
def P11227169132299832423.Spec : Prop :=
  ∀ n, P11227169132299832423.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P7743431138080066211

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=13, a(2)=28`
-/

namespace A054968.P7743431138080066211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13, 28] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A054968.P7743431138080066211

namespace A054968

/-- `2*a(n-1)-a(n-3)` -/
def P7743431138080066211.Spec : Prop :=
  ∀ n, P7743431138080066211.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P10366640185074096996

`3*A000045(n+5)-11`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054968

/-- `3*A000045(n+5)-11` -/
def P10366640185074096996.Spec : Prop :=
  ∀ n, P10366640185074096996.a n = A054968 (n + 5)

theorem P10366640185074096996.correct : P10366640185074096996.Spec := by
  intro n
  simp only [A054968, Nat.add_sub_cancel]

end A054968

/-! ## A054968.P3414612751443900350

`ceil(ϕ*(a(n-1)+4))` with `a(0)=4`
-/

namespace A054968.P3414612751443900350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 4 : ℝ)⌉

end

end A054968.P3414612751443900350

namespace A054968

/-- `ceil(ϕ*(a(n-1)+4))` -/
def P3414612751443900350.Spec : Prop :=
  ∀ n, P3414612751443900350.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P2610159251307019030

`round(ϕ*(a(n-1)+4))` with `a(0)=4`
-/

namespace A054968.P2610159251307019030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + 4 : ℝ))

end

end A054968.P2610159251307019030

namespace A054968

/-- `round(ϕ*(a(n-1)+4))` -/
def P2610159251307019030.Spec : Prop :=
  ∀ n, P2610159251307019030.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P18045595848334250278

`floor(ϕ*a(n-1))+7` with `a(0)=4`
-/

namespace A054968.P18045595848334250278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 7

end

end A054968.P18045595848334250278

namespace A054968

/-- `floor(ϕ*a(n-1))+7` -/
def P18045595848334250278.Spec : Prop :=
  ∀ n, P18045595848334250278.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P17075009018774565144

`a(n-1)+a(n-2)+11` with `a(0)=4, a(1)=13`
-/

namespace A054968.P17075009018774565144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 13] fun n a =>
  a (n - 1) + (a (n - 2) + 11)

end

end A054968.P17075009018774565144

namespace A054968

/-- `a(n-1)+a(n-2)+11` -/
def P17075009018774565144.Spec : Prop :=
  ∀ n, (P17075009018774565144.a n : ℤ) = A054968 (n + 5)

end A054968

/-! ## A054968.P5529759043680787362

`A026390(n+2)-7`
-/

namespace A054968.P5529759043680787362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026390 (n + 2) - 7

end

end A054968.P5529759043680787362

namespace A054968

/-- `A026390(n+2)-7` -/
def P5529759043680787362.Spec : Prop :=
  ∀ n, P5529759043680787362.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P8652799475879867876

`∑[A022086(n+3)]-2`
-/

namespace A054968.P8652799475879867876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A054968.P8652799475879867876

namespace A054968

/-- `∑[A022086(n+3)]-2` -/
def P8652799475879867876.Spec : Prop :=
  ∀ n, P8652799475879867876.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P10665751194365621709

`∑[A097135(n+3)]-2`
-/

namespace A054968.P10665751194365621709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A054968.P10665751194365621709

namespace A054968

/-- `∑[A097135(n+3)]-2` -/
def P10665751194365621709.Spec : Prop :=
  ∀ n, P10665751194365621709.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P11450587171618613528

`3*(A020712(n)-4)+1`
-/

namespace A054968.P11450587171618613528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A020712 n - 4) + 1

end

end A054968.P11450587171618613528

namespace A054968

/-- `3*(A020712(n)-4)+1` -/
def P11450587171618613528.Spec : Prop :=
  ∀ n, P11450587171618613528.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P18075593583870247302

`abs(2-∑[3*A020695(n)])`
-/

namespace A054968.P18075593583870247302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A054968.P18075593583870247302

namespace A054968

/-- `abs(2-∑[3*A020695(n)])` -/
def P18075593583870247302.Spec : Prop :=
  ∀ n, P18075593583870247302.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P8469379770959392256

`∑[A111314(n+2)]+2*n`
-/

namespace A054968.P8469379770959392256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A054968.P8469379770959392256

namespace A054968

/-- `∑[A111314(n+2)]+2*n` -/
def P8469379770959392256.Spec : Prop :=
  ∀ n, P8469379770959392256.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P17724934685104660667

`∑[A187893(n+3)]-(n+3)`
-/

namespace A054968.P17724934685104660667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A054968.P17724934685104660667

namespace A054968

/-- `∑[A187893(n+3)]-(n+3)` -/
def P17724934685104660667.Spec : Prop :=
  ∀ n, P17724934685104660667.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P4435384201164188651

`A192953(n+3)+2*(n-1)`
-/

namespace A054968.P4435384201164188651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 (n + 3) + 2 * ((n : ℤ) - 1)

end

end A054968.P4435384201164188651

namespace A054968

/-- `A192953(n+3)+2*(n-1)` -/
def P4435384201164188651.Spec : Prop :=
  ∀ n, P4435384201164188651.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P15635305041735261455

`A131300(n+3)+2*n-3`
-/

namespace A054968.P15635305041735261455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 (n + 3) + ((2 * n : ℤ) - 3)

end

end A054968.P15635305041735261455

namespace A054968

/-- `A131300(n+3)+2*n-3` -/
def P15635305041735261455.Spec : Prop :=
  ∀ n, P15635305041735261455.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P7778017085370201483

`A180672(n)+A018910(n)`
-/

namespace A054968.P7778017085370201483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180672 n + A018910 n

end

end A054968.P7778017085370201483

namespace A054968

/-- `A180672(n)+A018910(n)` -/
def P7778017085370201483.Spec : Prop :=
  ∀ n, P7778017085370201483.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P15141112970956996717

`A180672(n)+A157725(n+3)`
-/

namespace A054968.P15141112970956996717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180672 n + A157725 (n + 3)

end

end A054968.P15141112970956996717

namespace A054968

/-- `A180672(n)+A157725(n+3)` -/
def P15141112970956996717.Spec : Prop :=
  ∀ n, P15141112970956996717.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P17018521719773644232

`∑[A022088(n+2)]-A001611(n)`
-/

namespace A054968.P17018521719773644232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001611 n

end

end A054968.P17018521719773644232

namespace A054968

/-- `∑[A022088(n+2)]-A001611(n)` -/
def P17018521719773644232.Spec : Prop :=
  ∀ n, P17018521719773644232.a n = A054968 (n + 5)

end A054968

/-! ## A054968.P5871199355825345484

`A129728(n+1)+A023554(n+1)`
-/

namespace A054968.P5871199355825345484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (n + 1) + A023554 (n + 1)

end

end A054968.P5871199355825345484

namespace A054968

/-- `A129728(n+1)+A023554(n+1)` -/
def P5871199355825345484.Spec : Prop :=
  ∀ n, P5871199355825345484.a n = A054968 (n + 5)

end A054968

/-!
# A054969: Palindromic hexagonal numbers.

The programs for A054969, there is no canonical definition to state claims against.
-/

/-! ## A054969.P12187945431160022052

`C(2*A054970(n+1), 2)`
-/

namespace A054969.P12187945431160022052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A054970 (n + 1)).toNat 2

end

end A054969.P12187945431160022052

/-! ## A054969.P8202245113932102711

`A000384(A054970(n+1))`
-/

namespace A054969.P8202245113932102711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A054970 (n + 1)).toNat

end

end A054969.P8202245113932102711

/-! ## A054969.P9225496597522646426

`A130519(4*A054970(n+1))`
-/

namespace A054969.P9225496597522646426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (4 * A054970 (n + 1)).toNat

end

end A054969.P9225496597522646426

/-! ## A054969.P12899258590846358367

`∩[A002113(n+1), A000384(n)]`
-/

namespace A054969.P12899258590846358367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054969.P12899258590846358367

/-! ## A054969.P16833266450587481403

`∩[A000384(n), A003098(n+1)]`
-/

namespace A054969.P16833266450587481403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054969.P16833266450587481403

/-!
# A054970: Index numbers for palindromic hexagonal numbers.

The programs for A054970, there is no canonical definition to state claims against.
-/

/-! ## A054970.P10565572405388791025

`round(sqrt(A054969(n+1)/2))`
-/

namespace A054970.P10565572405388791025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A054969 (n + 1) : ℚ) / 2 : ℝ))

end

end A054970.P10565572405388791025

/-! ## A054970.P10511153113186020665

`floor(sqrt(A054969(n+1)/2)-A057428(n))`
-/

namespace A054970.P10511153113186020665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A054969 (n + 1) : ℚ) / 2 : ℝ) - (A057428 n : ℝ)⌋

end

end A054970.P10511153113186020665

/-!
# A054972: Product of (sum of first n primes) and (product of first n primes).

The programs for A054972, the canonical program `A054972.P9428946340247362724` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054972 has offset 1).

The definition of A054972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054972.P9428946340247362724

`A007504(n+1)*A002110(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054972

/-- `A007504(n+1)*A002110(n+1)` -/
def P9428946340247362724.Spec : Prop :=
  ∀ n, P9428946340247362724.a n = A054972 (n + 1)

theorem P9428946340247362724.correct : P9428946340247362724.Spec := by
  intro n
  simp only [A054972, Nat.add_sub_cancel]

end A054972

/-! ## A054972.P10852381082312481574

`A002110(n+1)*A007504(n+1)`
-/

namespace A054972.P10852381082312481574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A007504 (n + 1)

end

end A054972.P10852381082312481574

namespace A054972

/-- `A002110(n+1)*A007504(n+1)` -/
def P10852381082312481574.Spec : Prop :=
  ∀ n, P10852381082312481574.a n = A054972 (n + 1)

theorem P10852381082312481574.correct : P10852381082312481574.Spec := by
  intro n
  simp only [A054972, Nat.add_sub_cancel, A054972.P10852381082312481574.a, A054972.P9428946340247362724.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A054972

/-! ## A054972.P17689959958758544660

`∏[Δ[A007504(n)]]*A007504(n+1)`
-/

namespace A054972.P17689959958758544660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A007504 (n + 1)

end

end A054972.P17689959958758544660

namespace A054972

/-- `∏[Δ[A007504(n)]]*A007504(n+1)` -/
def P17689959958758544660.Spec : Prop :=
  ∀ n, P17689959958758544660.a n = A054972 (n + 1)

end A054972

/-! ## A054972.P4387241767418825478

`∑[p?[A001057(n)]]*A002110(n+1)`
-/

namespace A054972.P4387241767418825478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002110 (n + 1)

end

end A054972.P4387241767418825478

namespace A054972

/-- `∑[p?[A001057(n)]]*A002110(n+1)` -/
def P4387241767418825478.Spec : Prop :=
  ∀ n, P4387241767418825478.a n = A054972 (n + 1)

end A054972

/-! ## A054972.P14477696363572949849

`∑[p?[A004281(n)]]*A002110(n+1)`
-/

namespace A054972.P14477696363572949849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002110 (n + 1)

end

end A054972.P14477696363572949849

namespace A054972

/-- `∑[p?[A004281(n)]]*A002110(n+1)` -/
def P14477696363572949849.Spec : Prop :=
  ∀ n, P14477696363572949849.a n = A054972 (n + 1)

end A054972

/-! ## A054972.P15056652476000796275

`∑[A000040(n+1)]*A002110(n+1)`
-/

namespace A054972.P15056652476000796275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002110 (n + 1)

end

end A054972.P15056652476000796275

namespace A054972

/-- `∑[A000040(n+1)]*A002110(n+1)` -/
def P15056652476000796275.Spec : Prop :=
  ∀ n, P15056652476000796275.a n = A054972 (n + 1)

end A054972

/-! ## A054972.P2578454009596504625

`∑[A008578(n+2)]*A002110(n+1)`
-/

namespace A054972.P2578454009596504625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002110 (n + 1)

end

end A054972.P2578454009596504625

namespace A054972

/-- `∑[A008578(n+2)]*A002110(n+1)` -/
def P2578454009596504625.Spec : Prop :=
  ∀ n, P2578454009596504625.a n = A054972 (n + 1)

end A054972

/-! ## A054972.P3012370174611103434

`∏[A000040(n+1)]*A007504(n+1)`
-/

namespace A054972.P3012370174611103434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A007504 (n + 1)

end

end A054972.P3012370174611103434

namespace A054972

/-- `∏[A000040(n+1)]*A007504(n+1)` -/
def P3012370174611103434.Spec : Prop :=
  ∀ n, P3012370174611103434.a n = A054972 (n + 1)

end A054972

/-! ## A054972.P4429233675445438636

`record[A160793(n+2)]*A002110(n+1)`
-/

namespace A054972.P4429233675445438636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002110 (n + 1)

end

end A054972.P4429233675445438636

namespace A054972

/-- `record[A160793(n+2)]*A002110(n+1)` -/
def P4429233675445438636.Spec : Prop :=
  ∀ n, P4429233675445438636.a n = A054972 (n + 1)

end A054972

/-! ## A054972.P7736368058235946677

`A002110(n+1)*A160793(2*(n+1))`
-/

namespace A054972.P7736368058235946677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A160793 (2 * (n + 1))

end

end A054972.P7736368058235946677

namespace A054972

/-- `A002110(n+1)*A160793(2*(n+1))` -/
def P7736368058235946677.Spec : Prop :=
  ∀ n, P7736368058235946677.a n = A054972 (n + 1)

end A054972

/-!
# A054973: Number of numbers whose divisors sum to n.

The programs for A054973, the canonical program `A054973.P11460821789159201527` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054973 has offset 1).

The definition of A054973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054973.P11460821789159201527

`∑{d}[n+1, A008683(#)*A074754((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054973

/-- `∑{d}[n+1, A008683(#)*A074754((n+1)/#)]` -/
def P11460821789159201527.Spec : Prop :=
  ∀ n, P11460821789159201527.a n = A054973 (n + 1)

theorem P11460821789159201527.correct : P11460821789159201527.Spec := by
  intro n
  simp only [A054973, Nat.add_sub_cancel]

end A054973

/-! ## A054973.P8909141902077322411

`A216200(A028310(n))+1-A216200(n+1)`
-/

namespace A054973.P8909141902077322411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216200 (A028310 n).toNat + (1 - A216200 (n + 1))

end

end A054973.P8909141902077322411

namespace A054973

/-- `A216200(A028310(n))+1-A216200(n+1)` -/
def P8909141902077322411.Spec : Prop :=
  ∀ n, P8909141902077322411.a n = A054973 (n + 1)

end A054973

/-! ## A054973.P13496437325406960096

`A202275(n+1)+A202276(n+1)-A074753(n+1)`
-/

namespace A054973.P13496437325406960096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202275 (n + 1) + (A202276 (n + 1) - A074753 (n + 1))

end

end A054973.P13496437325406960096

namespace A054973

/-- `A202275(n+1)+A202276(n+1)-A074753(n+1)` -/
def P13496437325406960096.Spec : Prop :=
  ∀ n, P13496437325406960096.a n = A054973 (n + 1)

end A054973

/-! ## A054973.P6578022283663133012

`Δ[A074753(n+1)]`
-/

namespace A054973.P6578022283663133012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054973.P6578022283663133012

namespace A054973

/-- `Δ[A074753(n+1)]` -/
def P6578022283663133012.Spec : Prop :=
  ∀ n, P6578022283663133012.a n = A054973 (n + 1)

end A054973

/-! ## A054973.P4309840291005212758

`abs(Δ[A074753(A005408(n)-n)])`
-/

namespace A054973.P4309840291005212758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A054973.P4309840291005212758

namespace A054973

/-- `abs(Δ[A074753(A005408(n)-n)])` -/
def P4309840291005212758.Spec : Prop :=
  ∀ n, P4309840291005212758.a n = A054973 (n + 1)

end A054973

/-! ## A054973.P5533360611507377076

`A074753(n+2)-A074753(n+1)`
-/

namespace A054973.P5533360611507377076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 2) - A074753 (n + 1)

end

end A054973.P5533360611507377076

namespace A054973

/-- `A074753(n+2)-A074753(n+1)` -/
def P5533360611507377076.Spec : Prop :=
  ∀ n, P5533360611507377076.a n = A054973 (n + 1)

end A054973

/-!
# A054974: Number of nonnegative integer 2 X 2 matrices with no zero rows or columns and with sum of elements equal to n, up to row and column permutation.

The programs for A054974, the canonical program `A054974.P196157130754299281` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054974 has offset 2).

The definition of A054974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054974.P5170372701144684561

`ogf((1+x^2-x^3)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A054974.P5170372701144684561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -1] [1, -2, -1, 4, -1, -2, 1] n

end

end A054974.P5170372701144684561

namespace A054974

/-- `ogf((1+x^2-x^3)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P5170372701144684561.Spec : Prop :=
  ∀ n, P5170372701144684561.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P196157130754299281

`(6-6*(-1)^(n+2)+(9*(-1)^(n+2)-17)*(n+2)+12*(n+2)²+2*(n+2)^3)/48`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054974

/-- `(6-6*(-1)^(n+2)+(9*(-1)^(n+2)-17)*(n+2)+12*(n+2)²+2*(n+2)^3)/48` -/
def P196157130754299281.Spec : Prop :=
  ∀ n, P196157130754299281.a n = (A054974 (n + 2) : ℚ)

end A054974

/-! ## A054974.P7775487243025694247

`∑[a(n-2)+2+n]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054974.P7775487243025694247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A054974.P7775487243025694247

namespace A054974

/-- `∑[a(n-2)+2+n]-a(n-1)` -/
def P7775487243025694247.Spec : Prop :=
  ∀ n, P7775487243025694247.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P5729318276484088528

`∑[n-(a(n-1)-∑[n-a(n-1)])]` with `a(0)=1`
-/

namespace A054974.P5729318276484088528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - (f1 (n - 1) - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054974.P5729318276484088528

namespace A054974

/-- `∑[n-(a(n-1)-∑[n-a(n-1)])]` -/
def P5729318276484088528.Spec : Prop :=
  ∀ n, P5729318276484088528.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P13941825047398937260

`∑[∑[A065262(n+1)-n]]`
-/

namespace A054974.P13941825047398937260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054974.P13941825047398937260

namespace A054974

/-- `∑[∑[A065262(n+1)-n]]` -/
def P13941825047398937260.Spec : Prop :=
  ∀ n, P13941825047398937260.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P1848606640157404843

`A006918(n)+∑[log2(gcd(2, n))]²`
-/

namespace A054974.P1848606640157404843
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006918 n : ℝ) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A054974.P1848606640157404843

namespace A054974

/-- `A006918(n)+∑[log2(gcd(2, n))]²` -/
def P1848606640157404843.Spec : Prop :=
  ∀ n, P1848606640157404843.a n = (A054974 (n + 2) : ℝ)

end A054974

/-! ## A054974.P7666436181117906510

`∑[∑[comp[3*n]-A064680(n)]]`
-/

namespace A054974.P7666436181117906510
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054974.P7666436181117906510

namespace A054974

/-- `∑[∑[comp[3*n]-A064680(n)]]` -/
def P7666436181117906510.Spec : Prop :=
  ∀ n, P7666436181117906510.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P9566651340416651249

`∑[∑[n²%Δ[n²]]+1-A001318(n)]`
-/

namespace A054974.P9566651340416651249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1 - A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054974.P9566651340416651249

namespace A054974

/-- `∑[∑[n²%Δ[n²]]+1-A001318(n)]` -/
def P9566651340416651249.Spec : Prop :=
  ∀ n, P9566651340416651249.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P17006091162376059229

`A282513(n)+A004657(n)`
-/

namespace A054974.P17006091162376059229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282513 n + A004657 n

end

end A054974.P17006091162376059229

namespace A054974

/-- `A282513(n)+A004657(n)` -/
def P17006091162376059229.Spec : Prop :=
  ∀ n, P17006091162376059229.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P15796400259198545950

`A059329(n)-A034828(n)`
-/

namespace A054974.P15796400259198545950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 n - A034828 n

end

end A054974.P15796400259198545950

namespace A054974

/-- `A059329(n)-A034828(n)` -/
def P15796400259198545950.Spec : Prop :=
  ∀ n, P15796400259198545950.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P15485994497051799254

`A006918(n)+A008619(n)²`
-/

namespace A054974.P15485994497051799254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + A008619 n ^ 2

end

end A054974.P15485994497051799254

namespace A054974

/-- `A006918(n)+A008619(n)²` -/
def P15485994497051799254.Spec : Prop :=
  ∀ n, P15485994497051799254.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P16896225930560292519

`A053307(n)+A002620(n+1)`
-/

namespace A054974.P16896225930560292519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 n + A002620 (n + 1)

end

end A054974.P16896225930560292519

namespace A054974

/-- `A053307(n)+A002620(n+1)` -/
def P16896225930560292519.Spec : Prop :=
  ∀ n, P16896225930560292519.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P16156565337320183039

`A159693(n+1)+A131174(n)`
-/

namespace A054974.P16156565337320183039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159693 (n + 1) + A131174 n

end

end A054974.P16156565337320183039

namespace A054974

/-- `A159693(n+1)+A131174(n)` -/
def P16156565337320183039.Spec : Prop :=
  ∀ n, P16156565337320183039.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P13193314185929255988

`A049778(n+1)-A109900(n)`
-/

namespace A054974.P13193314185929255988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) - A109900 n

end

end A054974.P13193314185929255988

namespace A054974

/-- `A049778(n+1)-A109900(n)` -/
def P13193314185929255988.Spec : Prop :=
  ∀ n, P13193314185929255988.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P2631568215369474612

`A005993(n)-A006584(n)/2`
-/

namespace A054974.P2631568215369474612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005993 n : ℚ) - (A006584 n : ℚ) / 2

end

end A054974.P2631568215369474612

namespace A054974

/-- `A005993(n)-A006584(n)/2` -/
def P2631568215369474612.Spec : Prop :=
  ∀ n, P2631568215369474612.a n = (A054974 (n + 2) : ℚ)

end A054974

/-! ## A054974.P5824748236299183695

`A006918(n)+∑[A059841(n)]²`
-/

namespace A054974.P5824748236299183695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A054974.P5824748236299183695

namespace A054974

/-- `A006918(n)+∑[A059841(n)]²` -/
def P5824748236299183695.Spec : Prop :=
  ∀ n, P5824748236299183695.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P6123484903274516732

`∑[A142150(n)+∑[A027656(n)]]`
-/

namespace A054974.P6123484903274516732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054974.P6123484903274516732

namespace A054974

/-- `∑[A142150(n)+∑[A027656(n)]]` -/
def P6123484903274516732.Spec : Prop :=
  ∀ n, P6123484903274516732.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P8363526773806786995

`A006918(n)+(A004526(n)+1)²`
-/

namespace A054974.P8363526773806786995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (A004526 n + 1) ^ 2

end

end A054974.P8363526773806786995

namespace A054974

/-- `A006918(n)+(A004526(n)+1)²` -/
def P8363526773806786995.Spec : Prop :=
  ∀ n, P8363526773806786995.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P4623512559518326701

`A006918(n)+A110654(n+1)²`
-/

namespace A054974.P4623512559518326701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + A110654 (n + 1) ^ 2

end

end A054974.P4623512559518326701

namespace A054974

/-- `A006918(n)+A110654(n+1)²` -/
def P4623512559518326701.Spec : Prop :=
  ∀ n, P4623512559518326701.a n = A054974 (n + 2)

end A054974

/-! ## A054974.P11930543488527865590

`∑[A008795(n)+A080513(n)-1]`
-/

namespace A054974.P11930543488527865590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n + (A080513 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054974.P11930543488527865590

namespace A054974

/-- `∑[A008795(n)+A080513(n)-1]` -/
def P11930543488527865590.Spec : Prop :=
  ∀ n, P11930543488527865590.a n = A054974 (n + 2)

end A054974

/-!
# A054975: Number of nonnegative integer 3 X 3 matrices with no zero rows or columns and with sum of elements equal to n, up to row and column permutation.

The programs for A054975, there is no canonical definition to state claims against.
-/

/-! ## A054975.P9668784248730095446

`A321615(A167614(n+2))`
-/

namespace A054975.P9668784248730095446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321615 (A167614 (n + 2)).toNat

end

end A054975.P9668784248730095446

/-! ## A054975.P4154847886447198347

`record[A321615(A133263(n)+1)]`
-/

namespace A054975.P4154847886447198347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321615 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054975.P4154847886447198347

/-! ## A054975.P4917590208253000144

`A321615(A000217(n+3)+3)`
-/

namespace A054975.P4917590208253000144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321615 (A000217 (n + 3) + 3).toNat

end

end A054975.P4917590208253000144

/-! ## A054975.P4367708431597878585

`A321615(A179865(n+4)+3)`
-/

namespace A054975.P4367708431597878585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321615 (A179865 (n + 4) + 3).toNat

end

end A054975.P4367708431597878585

/-! ## A054975.P4424900304896535334

`A321615(eq[4, A002260(n+1)])`
-/

namespace A054975.P4424900304896535334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054975.P4424900304896535334

/-!
# A054976: Number of binary n X n matrices with no zero rows or columns, up to row and column permutation.

The programs for A054976, there is no canonical definition to state claims against.
-/

/-! ## A054976.P11191372363897781724

`A002724(n+1)-2*A002725(n)+A002724(n)`
-/

namespace A054976.P11191372363897781724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002724 (n + 1) - 2 * A002725 n + A002724 n

end

end A054976.P11191372363897781724

/-! ## A054976.P6371563967822294653

`A056152(A001844(n)+1)`
-/

namespace A054976.P6371563967822294653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056152 (A001844 n + 1).toNat

end

end A054976.P6371563967822294653

/-! ## A054976.P5185928820650465516

`A056152(A051890(n+1))`
-/

namespace A054976.P5185928820650465516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056152 (A051890 (n + 1)).toNat

end

end A054976.P5185928820650465516

/-! ## A054976.P4450700134135866112

`A056152(A046092(n)+2)`
-/

namespace A054976.P4450700134135866112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056152 (A046092 n + 2).toNat

end

end A054976.P4450700134135866112

/-! ## A054976.P8665569599121380782

`2*A007140(n+1)-A319155(n+1)`
-/

namespace A054976.P8665569599121380782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007140 (n + 1) - A319155 (n + 1)

end

end A054976.P8665569599121380782

/-!
# A054977: a(0)=2, a(n)=1 for n >= 1.

The programs for A054977, the canonical program `A054977.P5244497085649230643` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054977 has offset 0).

The definition of A054977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054977.P5244497085649230643

`ogf((2-x)/(1-x))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054977

/-- `ogf((2-x)/(1-x))` -/
def P5244497085649230643.Spec : Prop :=
  ∀ n, P5244497085649230643.a n = A054977 n

theorem P5244497085649230643.correct : P5244497085649230643.Spec := by
  intro n
  simp only [A054977]

end A054977

/-!
# A054978: Obtained from sequence of lucky numbers (A000959) by taking iterated absolute value differences of terms and extracting the leading diagonal.

The programs for A054978, there is no canonical definition to state claims against.
-/

/-! ## A054978.P227103342788717774

`and(3, A123593(n))`
-/

namespace A054978.P227103342788717774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A123593 n)

end

end A054978.P227103342788717774

/-! ## A054978.P6734365801509232705

`A254967(A000217(n)%A106768(A326065(n+1)))`
-/

namespace A054978.P6734365801509232705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254967 (Int.tmod (A000217 n) (A106768 (A326065 (n + 1)).toNat)).toNat

end

end A054978.P6734365801509232705

/-! ## A054978.P11238899168200959779

`A254967(∑[n])`
-/

namespace A054978.P11238899168200959779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054978.P11238899168200959779

/-! ## A054978.P562808839195976110

`A254967(C(n+1, 2))%3`
-/

namespace A054978.P562808839195976110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254967 (Nat.choose (n + 1) 2)) 3

end

end A054978.P562808839195976110

/-! ## A054978.P10930510361383288508

`dr(A254967(A000217(n)))`
-/

namespace A054978.P10930510361383288508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A254967 (A000217 n).toNat)

end

end A054978.P10930510361383288508

/-! ## A054978.P5253972276693599697

`dr(A254967(A161680(n+1)))`
-/

namespace A054978.P5253972276693599697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A254967 (A161680 (n + 1)).toNat)

end

end A054978.P5253972276693599697

/-! ## A054978.P14617746778221637711

`dr(A254967(A000124(n)-1))`
-/

namespace A054978.P14617746778221637711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A254967 (A000124 n - 1).toNat)

end

end A054978.P14617746778221637711

/-! ## A054978.P4025794461132484233

`A001222(2^A254967(C(n+1, 2)))`
-/

namespace A054978.P4025794461132484233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A254967 (Nat.choose (n + 1) 2) : ℤ))).toNat

end

end A054978.P4025794461132484233

/-! ## A054978.P13946375134222461361

`A254967(C(n+1, 2))^A014963(4*n+2)`
-/

namespace A054978.P13946375134222461361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254967 (Nat.choose (n + 1) 2) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A054978.P13946375134222461361

/-! ## A054978.P108983760232266091

`A000001(A254967(A000217(n))²)`
-/

namespace A054978.P108983760232266091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A254967 (A000217 n).toNat ^ 2).toNat

end

end A054978.P108983760232266091

/-! ## A054978.P6526050765822732380

`A000194(A254967(A000217(n))²)`
-/

namespace A054978.P6526050765822732380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A254967 (A000217 n).toNat ^ 2).toNat

end

end A054978.P6526050765822732380

/-! ## A054978.P9430686267381949546

`A000196(A254967(A000217(n))²)`
-/

namespace A054978.P9430686267381949546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A254967 (A000217 n).toNat ^ 2).toNat

end

end A054978.P9430686267381949546

/-! ## A054978.P13034134478374255010

`A003056(A254967(A000217(n))²)`
-/

namespace A054978.P13034134478374255010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A254967 (A000217 n).toNat ^ 2).toNat

end

end A054978.P13034134478374255010

/-! ## A054978.P9258194885291859346

`A004525(A254967(A000217(n))²)`
-/

namespace A054978.P9258194885291859346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A254967 (A000217 n).toNat ^ 2).toNat

end

end A054978.P9258194885291859346

/-! ## A054978.P8901613851764122951

`A005812(A254967(A000217(n))²)`
-/

namespace A054978.P8901613851764122951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A254967 (A000217 n).toNat ^ 2).toNat

end

end A054978.P8901613851764122951

/-! ## A054978.P4049245483999629921

`or(A000007(n), A254967(A000217(n)))`
-/

namespace A054978.P4049245483999629921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A254967 (A000217 n).toNat)

end

end A054978.P4049245483999629921

/-! ## A054978.P14909943171859465047

`A000045(A000045(A254967(A000217(n))²))`
-/

namespace A054978.P14909943171859465047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000045 (A254967 (A000217 n).toNat ^ 2).toNat).toNat

end

end A054978.P14909943171859465047

/-!
# A054979: e-perfect numbers: numbers k such that the sum of the e-divisors (exponential divisors) of k equals 2*k.

The programs for A054979, there is no canonical definition to state claims against.
-/

/-! ## A054979.P3150273898432823858

`36*A219016(n+1)`
-/

namespace A054979.P3150273898432823858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A219016 (n + 1)

end

end A054979.P3150273898432823858

/-! ## A054979.P13539261132470186109

`∩[A335219(n+1), A348962(n+1)]`
-/

namespace A054979.P13539261132470186109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P13539261132470186109

/-! ## A054979.P13978962102992212601

`∩[A318100(n+1), A335219(n+1)]`
-/

namespace A054979.P13978962102992212601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P13978962102992212601

/-! ## A054979.P12267832379559371401

`∩[A127657(n+1), A335219(n+1)]`
-/

namespace A054979.P12267832379559371401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P12267832379559371401

/-! ## A054979.P6842889026192612904

`∩[A335219(n+1), A386797(n+1)]`
-/

namespace A054979.P6842889026192612904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P6842889026192612904

/-! ## A054979.P17605604139514271882

`A044102(A219016(n+1))`
-/

namespace A054979.P17605604139514271882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A219016 (n + 1)).toNat

end

end A054979.P17605604139514271882

/-! ## A054979.P2941717484281149970

`∩[A335219(n+1), A044102(n)]`
-/

namespace A054979.P2941717484281149970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P2941717484281149970

/-! ## A054979.P10768484658743733409

`∩[A335219(n+1), A167632(n)]`
-/

namespace A054979.P10768484658743733409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P10768484658743733409

/-! ## A054979.P14851223127564180663

`∩[2*A008600(n), A335219(n+1)]`
-/

namespace A054979.P14851223127564180663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P14851223127564180663

/-! ## A054979.P11523828262718259641

`∩[2*A217373(n+1), A335219(n+1)]`
-/

namespace A054979.P11523828262718259641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P11523828262718259641

/-! ## A054979.P8130853165001330552

`∩[A335219(n+1), A008600(n)]`
-/

namespace A054979.P8130853165001330552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P8130853165001330552

/-! ## A054979.P10037049958051321017

`∩[2*A008591(n), A335219(n+1)]`
-/

namespace A054979.P10037049958051321017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P10037049958051321017

/-! ## A054979.P16448742917980852306

`∩[2*A118510(n+1), A335219(n+1)]`
-/

namespace A054979.P16448742917980852306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P16448742917980852306

/-! ## A054979.P4960862777214411475

`∩[A249726(n+1), A335219(n+1)]`
-/

namespace A054979.P4960862777214411475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P4960862777214411475

/-! ## A054979.P11995753124764300310

`∩[A217373(n+1), A335219(n+1)]`
-/

namespace A054979.P11995753124764300310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P11995753124764300310

/-! ## A054979.P4848851363698337538

`∩[A335219(n+1), A008591(n)]`
-/

namespace A054979.P4848851363698337538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P4848851363698337538

/-! ## A054979.P17981798191509091553

`∩[A335219(n+1), A168103(n)]`
-/

namespace A054979.P17981798191509091553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168103 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P17981798191509091553

/-! ## A054979.P12787570030104317364

`∩[A118510(n+1), A335219(n+1)]`
-/

namespace A054979.P12787570030104317364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P12787570030104317364

/-! ## A054979.P4821924392733830372

`∩[2*A301291(n), A335219(n+1)]`
-/

namespace A054979.P4821924392733830372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P4821924392733830372

/-! ## A054979.P11034136646074712004

`∩[A348962(n+1), A008458(A008458(n))]`
-/

namespace A054979.P11034136646074712004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054979.P11034136646074712004

/-!
# A054980: Primitive e-perfect numbers: primitive elements of the e-perfect numbers (A054979).

The programs for A054980, there is no canonical definition to state claims against.
-/

/-! ## A054980.P8748770145801339049

`∏{p}[A323757(n+1), #]*A323757(n+1)`
-/

namespace A054980.P8748770145801339049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A323757 (n + 1)

end

end A054980.P8748770145801339049

/-! ## A054980.P8055616534768142738

`A007947(A323757(n+1))*A323757(n+1)`
-/

namespace A054980.P8055616534768142738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A323757 (n + 1)).toNat * A323757 (n + 1)

end

end A054980.P8055616534768142738

/-!
# A054981: Number of certain connected weighted pseudo-graphs.

The programs for A054981, there is no canonical definition to state claims against.
-/

/-! ## A054981.P4469233530195185917

`A149343(n)+A090881(n+1)`
-/

namespace A054981.P4469233530195185917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149343 n + A090881 (n + 1)

end

end A054981.P4469233530195185917

/-! ## A054981.P183781948128789004

`A090881(n+1)+A042948(A332990(n!))`
-/

namespace A054981.P183781948128789004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090881 (n + 1) + A042948 (A332990 (Nat.factorial n)).toNat

end

end A054981.P183781948128789004

/-! ## A054981.P11636663797959344341

`A247983(A149354(n)+A090881(n+1))+n`
-/

namespace A054981.P11636663797959344341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A149354 n + A090881 (n + 1)).toNat + (n : ℤ)

end

end A054981.P11636663797959344341

/-!
# A054986: Base-10 modest numbers.

The programs for A054986, there is no canonical definition to state claims against.
-/

/-! ## A054986.P5730372503152900198

`A210582(A077168(n))`
-/

namespace A054986.P5730372503152900198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210582 (A077168 n).toNat

end

end A054986.P5730372503152900198

/-! ## A054986.P8918243800358397281

`A210582(A062399(n+1))`
-/

namespace A054986.P8918243800358397281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210582 (A062399 (n + 1)).toNat

end

end A054986.P8918243800358397281

/-! ## A054986.P14573830547156968476

`A097449(A210582(n+1))`
-/

namespace A054986.P14573830547156968476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A210582 (n + 1)).toNat

end

end A054986.P14573830547156968476

/-! ## A054986.P9678786081007736773

`A097449(A274407(n+1))`
-/

namespace A054986.P9678786081007736773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A274407 (n + 1)).toNat

end

end A054986.P9678786081007736773

/-! ## A054986.P14645834449111825293

`A210582(A351870(n+1))`
-/

namespace A054986.P14645834449111825293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210582 (A351870 (n + 1)).toNat

end

end A054986.P14645834449111825293

/-!
# A054987: Smallest composite x such that sigma(x+2^n) = sigma(x) + 2^n.

The programs for A054987, there is no canonical definition to state claims against.
-/

/-! ## A054987.P7412963173452199237

`A054905(2^n)`
-/

namespace A054987.P7412963173452199237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054905 (2 ^ n)

end

end A054987.P7412963173452199237

/-!
# A054988: Number of prime divisors of 1 + (product of first n primes), with multiplicity.

The programs for A054988, there is no canonical definition to state claims against.
-/

/-! ## A054988.P4636238680602099988

`log2(A366811(n+1))`
-/

namespace A054988.P4636238680602099988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A366811 (n + 1) : ℝ)

end

end A054988.P4636238680602099988

/-! ## A054988.P3192141785271471194

`A366788(A366811(n+1)+1)`
-/

namespace A054988.P3192141785271471194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366788 (A366811 (n + 1) + 1).toNat

end

end A054988.P3192141785271471194

/-! ## A054988.P4109324608148502475

`A000120(A366811(n+1)-1)`
-/

namespace A054988.P4109324608148502475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A366811 (n + 1) - 1).toNat

end

end A054988.P4109324608148502475

/-! ## A054988.P2694157955573980636

`A366799(A366811(n+1)-1)`
-/

namespace A054988.P2694157955573980636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (A366811 (n + 1) - 1).toNat

end

end A054988.P2694157955573980636

/-! ## A054988.P9350710569682251077

`A366801(A366811(n+1)-1)`
-/

namespace A054988.P9350710569682251077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 (A366811 (n + 1) - 1).toNat

end

end A054988.P9350710569682251077

/-! ## A054988.P14711648868969952682

`A000005(A366811(n+1)/2)`
-/

namespace A054988.P14711648868969952682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A366811 (n + 1) : ℚ) / 2)).toNat

end

end A054988.P14711648868969952682

/-! ## A054988.P13583222657594166042

`A001511(A366811(n+1)/2)`
-/

namespace A054988.P13583222657594166042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A366811 (n + 1) : ℚ) / 2)).toNat

end

end A054988.P13583222657594166042

/-! ## A054988.P1780606502126623085

`A016006(A366811(n+1)/2)`
-/

namespace A054988.P1780606502126623085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016006 (SequenceMachineLib.roundAway ((A366811 (n + 1) : ℚ) / 2)).toNat

end

end A054988.P1780606502126623085

/-! ## A054988.P9280064457313707137

`A070939(A366811(n+1)/2)`
-/

namespace A054988.P9280064457313707137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A366811 (n + 1) : ℚ) / 2)).toNat

end

end A054988.P9280064457313707137

/-!
# A054989: Number of prime divisors of -1 + (product of first n primes).

The programs for A054989, there is no canonical definition to state claims against.
-/

/-! ## A054989.P12077455611859273975

`log2(A366808(n+1))`
-/

namespace A054989.P12077455611859273975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A366808 (n + 1) : ℝ)

end

end A054989.P12077455611859273975

/-! ## A054989.P10907688229457607354

`A366788(A366808(n+1)+1)`
-/

namespace A054989.P10907688229457607354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366788 (A366808 (n + 1) + 1).toNat

end

end A054989.P10907688229457607354

/-! ## A054989.P11362117661759828745

`A000120(A366808(n+1)-1)`
-/

namespace A054989.P11362117661759828745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A366808 (n + 1) - 1).toNat

end

end A054989.P11362117661759828745

/-! ## A054989.P1576051330153219653

`A366801(A366808(n+1)-1)`
-/

namespace A054989.P1576051330153219653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 (A366808 (n + 1) - 1).toNat

end

end A054989.P1576051330153219653

/-! ## A054989.P18388780151225454596

`A023645(2*A366808(n+1))`
-/

namespace A054989.P18388780151225454596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (2 * A366808 (n + 1)).toNat

end

end A054989.P18388780151225454596

/-! ## A054989.P16399806248666975810

`A023416(3*A366808(n+1))`
-/

namespace A054989.P16399806248666975810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (3 * A366808 (n + 1)).toNat

end

end A054989.P16399806248666975810

/-! ## A054989.P4019461923993886326

`A004086(val(A366808(n+1), 2))`
-/

namespace A054989.P4019461923993886326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.valuation (A366808 (n + 1)).toNat 2)

end

end A054989.P4019461923993886326

/-! ## A054989.P12851588533653030198

`A080791(2*A366808(n+1)+1)`
-/

namespace A054989.P12851588533653030198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A366808 (n + 1) + 1).toNat

end

end A054989.P12851588533653030198

/-! ## A054989.P2492888303243086100

`A001222(A366808(n+1))*A267537(3*n+2)`
-/

namespace A054989.P2492888303243086100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366808 (n + 1)).toNat * A267537 (3 * n + 2)

end

end A054989.P2492888303243086100

/-! ## A054989.P13398662993145777196

`A056160(n+1)-A054988(n+1)`
-/

namespace A054989.P13398662993145777196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056160 (n + 1) - A054988 (n + 1)

end

end A054989.P13398662993145777196

/-!
# A054990: Number of prime divisors of n! + 1 (counted with multiplicity).

The programs for A054990, there is no canonical definition to state claims against.
-/

/-! ## A054990.P8853108828528716112

`ceil(log2(A064144(n+1)))`
-/

namespace A054990.P8853108828528716112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A064144 (n + 1) : ℝ)⌉

end

end A054990.P8853108828528716112

/-! ## A054990.P7053019274980705997

`round(log2(A064144(char[1]+1+n)))`
-/

namespace A054990.P7053019274980705997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A064144 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℝ))

end

end A054990.P7053019274980705997

/-! ## A054990.P16036293560009132387

`A003313(A064144(n+1))`
-/

namespace A054990.P16036293560009132387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A064144 (n + 1)).toNat

end

end A054990.P16036293560009132387

/-! ## A054990.P16362786023002808668

`A064097(A064144(abs(xor(n, -1))))`
-/

namespace A054990.P16362786023002808668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A064144 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A054990.P16362786023002808668

/-! ## A054990.P17301257653436552556

`A070939(A064144(n+1)-1)`
-/

namespace A054990.P17301257653436552556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A064144 (n + 1) - 1).toNat

end

end A054990.P17301257653436552556

/-! ## A054990.P5599554991606280173

`A023416(3*A064144(n+1))`
-/

namespace A054990.P5599554991606280173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (3 * A064144 (n + 1)).toNat

end

end A054990.P5599554991606280173

/-! ## A054990.P18203746948140467406

`A000027(round(log2(A064144(n+1))))`
-/

namespace A054990.P18203746948140467406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.logb 2 (A064144 (n + 1) : ℝ))).toNat

end

end A054990.P18203746948140467406

/-! ## A054990.P11164763173124959412

`A000030(round(log2(A064144(n+1))))`
-/

namespace A054990.P11164763173124959412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway (Real.logb 2 (A064144 (n + 1) : ℝ))).toNat

end

end A054990.P11164763173124959412

/-! ## A054990.P12486612327658349491

`A000523(∑{d}[A064144(n+1), #])`
-/

namespace A054990.P12486612327658349491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A054990.P12486612327658349491

/-! ## A054990.P6516472106543809047

`A000523(A064144(n+1)-1)+1`
-/

namespace A054990.P6516472106543809047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A064144 (n + 1) - 1).toNat + 1

end

end A054990.P6516472106543809047

/-! ## A054990.P4118191819209610244

`A001222(2^round(log2(A064144(n+1))))`
-/

namespace A054990.P4118191819209610244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.logb 2 (A064144 (n + 1) : ℝ)) : ℤ))).toNat

end

end A054990.P4118191819209610244

/-! ## A054990.P5883247268153195022

`round(log2(A064144(n+1)))%A000041(n+2)`
-/

namespace A054990.P5883247268153195022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A064144 (n + 1) : ℝ))) (A000041 (n + 2))

end

end A054990.P5883247268153195022

/-! ## A054990.P7740389314284447763

`A066856(n+1)+1-A084846(n+1)²`
-/

namespace A054990.P7740389314284447763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066856 (n + 1) + (1 - A084846 (n + 1) ^ 2)

end

end A054990.P7740389314284447763

/-! ## A054990.P10813558646579019515

`A066856(n+1)+log2(A092984(n+1))`
-/

namespace A054990.P10813558646579019515
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066856 (n + 1) : ℝ) + Real.logb 2 (A092984 (n + 1) : ℝ)

end

end A054990.P10813558646579019515

/-!
# A054991: Number of prime divisors of n! - 1 (counted with multiplicity).

The programs for A054991, there is no canonical definition to state claims against.
-/

/-! ## A054991.P18256812519634048002

`∑{e}[A351831(∑[A239957(n+1)]), #]`
-/

namespace A054991.P18256812519634048002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A054991.P18256812519634048002

/-! ## A054991.P2221446304322523151

`A001221(A066411(n)+A001629(n))`
-/

namespace A054991.P2221446304322523151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066411 n + A001629 n).toNat

end

end A054991.P2221446304322523151

/-! ## A054991.P814354307924671534

`A303838(A303875(n)+A001951(n))`
-/

namespace A054991.P814354307924671534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (A303875 n + A001951 n).toNat

end

end A054991.P814354307924671534

/-! ## A054991.P3808265795843617424

`floor(A006068(n)/A325811(A077168(n)))`
-/

namespace A054991.P3808265795843617424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006068 n : ℚ) / (A325811 (A077168 n).toNat : ℚ)⌋

end

end A054991.P3808265795843617424

/-! ## A054991.P2450303112691892363

`A346619(A000079(n))+A066877(n+1)`
-/

namespace A054991.P2450303112691892363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346619 (A000079 n).toNat + A066877 (n + 1)

end

end A054991.P2450303112691892363

/-!
# A054992: Number of prime factors of 2^n + 1 (counted with multiplicity).

The programs for A054992, the canonical program `A054992.P12592111826039149461` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054992 has offset 1).

The definition of A054992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054992.P12592111826039149461

`A046051(2*(n+1))-A046051(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054992

/-- `A046051(2*(n+1))-A046051(n+1)` -/
def P12592111826039149461.Spec : Prop :=
  ∀ n, P12592111826039149461.a n = A054992 (n + 1)

theorem P12592111826039149461.correct : P12592111826039149461.Spec := by
  intro n
  simp only [A054992, Nat.add_sub_cancel]

end A054992

/-! ## A054992.P4191369295203726269

`A001222(2^(n+1)+1)`
-/

namespace A054992.P4191369295203726269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ (n + 1) + 1)

end

end A054992.P4191369295203726269

namespace A054992

/-- `A001222(2^(n+1)+1)` -/
def P4191369295203726269.Spec : Prop :=
  ∀ n, P4191369295203726269.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P5815432109826128864

`A057957(n+1)-A046051(n+1)`
-/

namespace A054992.P5815432109826128864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A046051 (n + 1)

end

end A054992.P5815432109826128864

namespace A054992

/-- `A057957(n+1)-A046051(n+1)` -/
def P5815432109826128864.Spec : Prop :=
  ∀ n, P5815432109826128864.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P1805765570510227678

`A342655(A073582(n+1))`
-/

namespace A054992.P1805765570510227678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A073582 (n + 1)).toNat

end

end A054992.P1805765570510227678

namespace A054992

/-- `A342655(A073582(n+1))` -/
def P1805765570510227678.Spec : Prop :=
  ∀ n, P1805765570510227678.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P12228309631635988185

`A342655(A100484(n+1))`
-/

namespace A054992.P12228309631635988185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A100484 (n + 1)).toNat

end

end A054992.P12228309631635988185

namespace A054992

/-- `A342655(A100484(n+1))` -/
def P12228309631635988185.Spec : Prop :=
  ∀ n, P12228309631635988185.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P13603180729281829601

`A342655(A001747(n+2))`
-/

namespace A054992.P13603180729281829601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A001747 (n + 2)).toNat

end

end A054992.P13603180729281829601

namespace A054992

/-- `A342655(A001747(n+2))` -/
def P13603180729281829601.Spec : Prop :=
  ∀ n, P13603180729281829601.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P4594307369465923733

`A342656(A074845(n+2))`
-/

namespace A054992.P4594307369465923733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A074845 (n + 2)).toNat

end

end A054992.P4594307369465923733

namespace A054992

/-- `A342656(A074845(n+2))` -/
def P4594307369465923733.Spec : Prop :=
  ∀ n, P4594307369465923733.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P10211661622171908722

`A342655(A161344(n+2))`
-/

namespace A054992.P10211661622171908722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A161344 (n + 2)).toNat

end

end A054992.P10211661622171908722

namespace A054992

/-- `A342655(A161344(n+2))` -/
def P10211661622171908722.Spec : Prop :=
  ∀ n, P10211661622171908722.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P6646823385525178979

`A342655(2*A000040(n+1))`
-/

namespace A054992.P6646823385525178979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (2 * A000040 (n + 1)).toNat

end

end A054992.P6646823385525178979

namespace A054992

/-- `A342655(2*A000040(n+1))` -/
def P6646823385525178979.Spec : Prop :=
  ∀ n, P6646823385525178979.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P11787850242504260787

`A342656(2*A000040(n+1))`
-/

namespace A054992.P11787850242504260787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (2 * A000040 (n + 1)).toNat

end

end A054992.P11787850242504260787

namespace A054992

/-- `A342656(2*A000040(n+1))` -/
def P11787850242504260787.Spec : Prop :=
  ∀ n, P11787850242504260787.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P12353946943173804567

`A277892(A073582(n+2))`
-/

namespace A054992.P12353946943173804567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A073582 (n + 2)).toNat

end

end A054992.P12353946943173804567

namespace A054992

/-- `A277892(A073582(n+2))` -/
def P12353946943173804567.Spec : Prop :=
  ∀ n, P12353946943173804567.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P4900185687983780541

`A277892(A100484(n+2))`
-/

namespace A054992.P4900185687983780541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A100484 (n + 2)).toNat

end

end A054992.P4900185687983780541

namespace A054992

/-- `A277892(A100484(n+2))` -/
def P4900185687983780541.Spec : Prop :=
  ∀ n, P4900185687983780541.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P13043779531067116583

`A277892(A037168(n+2)+2)`
-/

namespace A054992.P13043779531067116583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A037168 (n + 2) + 2).toNat

end

end A054992.P13043779531067116583

namespace A054992

/-- `A277892(A037168(n+2)+2)` -/
def P13043779531067116583.Spec : Prop :=
  ∀ n, P13043779531067116583.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P14806201252619532733

`A277892(2*A065091(n+1))`
-/

namespace A054992.P14806201252619532733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (2 * A065091 (n + 1)).toNat

end

end A054992.P14806201252619532733

namespace A054992

/-- `A277892(2*A065091(n+1))` -/
def P14806201252619532733.Spec : Prop :=
  ∀ n, P14806201252619532733.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P13340962663157264941

`A277892(2*A000040(n+2))`
-/

namespace A054992.P13340962663157264941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (2 * A000040 (n + 2)).toNat

end

end A054992.P13340962663157264941

namespace A054992

/-- `A277892(2*A000040(n+2))` -/
def P13340962663157264941.Spec : Prop :=
  ∀ n, P13340962663157264941.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P15020330516560026042

`A277892(2*A008578(n+3))`
-/

namespace A054992.P15020330516560026042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (2 * A008578 (n + 3)).toNat

end

end A054992.P15020330516560026042

namespace A054992

/-- `A277892(2*A008578(n+3))` -/
def P15020330516560026042.Spec : Prop :=
  ∀ n, P15020330516560026042.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P12986330697272926516

`A277892(A065091(n+1)+A065091(n+1))`
-/

namespace A054992.P12986330697272926516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A065091 (n + 1) + A065091 (n + 1)).toNat

end

end A054992.P12986330697272926516

namespace A054992

/-- `A277892(A065091(n+1)+A065091(n+1))` -/
def P12986330697272926516.Spec : Prop :=
  ∀ n, P12986330697272926516.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P6244413263791488806

`A277892(A008578(n+3)+A008578(n+3))`
-/

namespace A054992.P6244413263791488806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A008578 (n + 3) + A008578 (n + 3)).toNat

end

end A054992.P6244413263791488806

namespace A054992

/-- `A277892(A008578(n+3)+A008578(n+3))` -/
def P6244413263791488806.Spec : Prop :=
  ∀ n, P6244413263791488806.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P6588642771119646684

`A342656(A001748(n+2))`
-/

namespace A054992.P6588642771119646684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A001748 (n + 2)).toNat

end

end A054992.P6588642771119646684

namespace A054992

/-- `A342656(A001748(n+2))` -/
def P6588642771119646684.Spec : Prop :=
  ∀ n, P6588642771119646684.a n = A054992 (n + 1)

end A054992

/-! ## A054992.P13691189498413927585

`A342656(A063534(n+2))`
-/

namespace A054992.P13691189498413927585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A063534 (n + 2)).toNat

end

end A054992.P13691189498413927585

namespace A054992

/-- `A342656(A063534(n+2))` -/
def P13691189498413927585.Spec : Prop :=
  ∀ n, P13691189498413927585.a n = A054992 (n + 1)

end A054992

/-!
# A054993: Number of "long curves", i.e., topological types of smooth embeddings of the oriented real line into the oriented plane that coincide with the standard immersion x -> (x,0) in the neighborhood of -infinity and +infinity.

The programs for A054993, there is no canonical definition to state claims against.
-/

/-! ## A054993.P15828180194800114123

`A062038(∑[ceil(n/2)])`
-/

namespace A054993.P15828180194800114123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054993.P15828180194800114123

/-! ## A054993.P6178558229100345906

`record[A062038(floor(8*n/7))]`
-/

namespace A054993.P6178558229100345906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062038 ⌊8 * ((n : ℚ) / 7)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054993.P6178558229100345906

/-! ## A054993.P15025943699941097830

`record[A062038(n)/∏{e}[n+1, #]]`
-/

namespace A054993.P15025943699941097830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062038 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054993.P15025943699941097830

/-! ## A054993.P9415096503109829294

`record[A062038(n)/A008971(n)]`
-/

namespace A054993.P9415096503109829294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062038 n : ℚ) / (A008971 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054993.P9415096503109829294

/-! ## A054993.P15722502331453003510

`record[root(A062038(n), A133399(n))]`
-/

namespace A054993.P15722502331453003510
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062038 n : ℝ) ^ (1 / (A133399 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054993.P15722502331453003510

/-!
# A054994: Numbers of the form q1^b1 * q2^b2 * q3^b3 * q4^b4 * q5^b5 * ... where q1=5, q2=13, q3=17, q4=29, q5=37, ... (A002144) and b1 >= b2 >= b3 >= b4 >= b5 >= ....

The programs for A054994, there is no canonical definition to state claims against.
-/

/-! ## A054994.P14943028261063222821

`∩[2*n+1, A336542(n+1)]`
-/

namespace A054994.P14943028261063222821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054994.P14943028261063222821

/-! ## A054994.P5365279393242634351

`record[A000265(A336542(n+1))]`
-/

namespace A054994.P5365279393242634351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A336542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054994.P5365279393242634351

/-! ## A054994.P15572481794631566845

`filter[A336542(n+1), A187074(#)]`
-/

namespace A054994.P15572481794631566845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A054994.P15572481794631566845

/-! ## A054994.P4340464980451162975

`filter[A336542(n+1), A372573(#)]`
-/

namespace A054994.P4340464980451162975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A054994.P4340464980451162975

/-! ## A054994.P4008309377421789402

`filter[A336542(n+1), A372574(#)]`
-/

namespace A054994.P4008309377421789402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A054994.P4008309377421789402

/-!
# A054995: A version of Josephus problem: a(n) is the surviving integer under the following elimination process. Arrange 1,2,3,...,n in a circle, increasing clockwise. Starting with i=1, delete the integer two places clockwise from i. Repeat, counting two places from the next undeleted integer, until only one integer remains.

The programs for A054995, the canonical program `A054995.P11298376971174057498` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054995 has offset 1).

The definition of A054995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054995.P11298376971174057498

`(a(n-1)+2)%(n+1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054995

/-- `(a(n-1)+2)%(n+1)+1` -/
def P11298376971174057498.Spec : Prop :=
  ∀ n, (P11298376971174057498.a n : ℤ) = A054995 (n + 1)

theorem P11298376971174057498.correct : P11298376971174057498.Spec := by
  intro n
  simp only [A054995, Nat.add_sub_cancel]

end A054995

/-! ## A054995.P14321841337212523112

`a(n-1)-Δ[(a(n-1)-3)%n]` with `a(0)=1`
-/

namespace A054995.P14321841337212523112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (f1 (n - 1) - 3) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A054995.P14321841337212523112

namespace A054995

/-- `a(n-1)-Δ[(a(n-1)-3)%n]` -/
def P14321841337212523112.Spec : Prop :=
  ∀ n, P14321841337212523112.a n = A054995 (n + 1)

end A054995

/-! ## A054995.P16545647307467642852

`a(n-1)*ratio[(a(n-1)-2)%n-1]` with `a(0)=1`
-/

namespace A054995.P16545647307467642852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (f1 (n - 1) - 2) (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A054995.P16545647307467642852

namespace A054995

/-- `a(n-1)*ratio[(a(n-1)-2)%n-1]` -/
def P16545647307467642852.Spec : Prop :=
  ∀ n, P16545647307467642852.a n = (A054995 (n + 1) : ℚ)

end A054995

/-! ## A054995.P9232933181314291346

`A004482((a(n-1)+2)%(n+1))` with `a(0)=1`
-/

namespace A054995.P9232933181314291346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004482 (Int.tmod (a (n - 1) + 2) (n + 1 : ℤ)).toNat

end

end A054995.P9232933181314291346

namespace A054995

/-- `A004482((a(n-1)+2)%(n+1))` -/
def P9232933181314291346.Spec : Prop :=
  ∀ n, P9232933181314291346.a n = A054995 (n + 1)

end A054995

/-! ## A054995.P5076562345459025800

`1-A193298(n+1)%(n+1)+n`
-/

namespace A054995.P5076562345459025800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A193298 (n + 1)) (n + 1 : ℤ) + (n : ℤ)

end

end A054995.P5076562345459025800

namespace A054995

/-- `1-A193298(n+1)%(n+1)+n` -/
def P5076562345459025800.Spec : Prop :=
  ∀ n, P5076562345459025800.a n = A054995 (n + 1)

end A054995

/-! ## A054995.P16370042730068621014

`A002260(a(n-1)-n+∑[n+1]+2)` with `a(0)=1`
-/

namespace A054995.P16370042730068621014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002260 (a (n - 1) - (n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)).toNat

end

end A054995.P16370042730068621014

namespace A054995

/-- `A002260(a(n-1)-n+∑[n+1]+2)` -/
def P16370042730068621014.Spec : Prop :=
  ∀ n, P16370042730068621014.a n = A054995 (n + 1)

end A054995

/-! ## A054995.P6194289357585682769

`A002260(a(n-1)+A133263(n)+1)` with `a(0)=1`
-/

namespace A054995.P6194289357585682769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002260 (a (n - 1) + (A133263 n + 1)).toNat

end

end A054995.P6194289357585682769

namespace A054995

/-- `A002260(a(n-1)+A133263(n)+1)` -/
def P6194289357585682769.Spec : Prop :=
  ∀ n, P6194289357585682769.a n = A054995 (n + 1)

end A054995

/-! ## A054995.P7333882857582812191

`A198789(∑[n+3]+1)`
-/

namespace A054995.P7333882857582812191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054995.P7333882857582812191

namespace A054995

/-- `A198789(∑[n+3]+1)` -/
def P7333882857582812191.Spec : Prop :=
  ∀ n, P7333882857582812191.a n = A054995 (n + 1)

end A054995

/-! ## A054995.P18215388683417708097

`A198788(∑[n+2]+4)`
-/

namespace A054995.P18215388683417708097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A054995.P18215388683417708097

namespace A054995

/-- `A198788(∑[n+2]+4)` -/
def P18215388683417708097.Spec : Prop :=
  ∀ n, P18215388683417708097.a n = A054995 (n + 1)

end A054995

/-!
# A054996: Integers that can be expressed as the sum of consecutive primes in exactly 1 way.

The programs for A054996, there is no canonical definition to state claims against.
-/

/-! ## A054996.P13919497770863207910

`∩[A034707(n+1), comp[A309770(n+1)]]`
-/

namespace A054996.P13919497770863207910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A054996.P13919497770863207910

/-! ## A054996.P10144745066723733282

`eq[1, A054845(n)]`
-/

namespace A054996.P10144745066723733282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054996.P10144745066723733282

/-! ## A054996.P14665347307097849531

`lt[15, A211396(a(A054845(n))²)]` with `a(0)=1, a(1)=14`
-/

namespace A054996.P14665347307097849531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n f2 =>
  A211396 (f2 (A054845 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054996.P14665347307097849531

/-! ## A054996.P7432968642723151142

`lt[5, A000010(a(A054845(n))+2)]` with `a(0)=0, a(1)=5`
-/

namespace A054996.P7432968642723151142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  A000010 (f2 (A054845 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054996.P7432968642723151142

/-! ## A054996.P1391502224542471040

`lt[n*A051023(a(A054845(n))), 1]` with `a(0)=1, a(1)=2`
-/

namespace A054996.P1391502224542471040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℤ) * A051023 (f1 (A054845 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054996.P1391502224542471040

/-!
# A054997: Integers that can be expressed as the sum of consecutive primes in exactly 2 ways.

The programs for A054997, there is no canonical definition to state claims against.
-/

/-! ## A054997.P16487629521375770874

`eq[2, A054845(n)]`
-/

namespace A054997.P16487629521375770874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054997.P16487629521375770874

/-! ## A054997.P4636677923930778819

`lt[n*A051023(a(A054845(n))), n]` with `a(0)=4`
-/

namespace A054997.P4636677923930778819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  (n : ℤ) * A051023 (f1 (A054845 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054997.P4636677923930778819

/-! ## A054997.P5231511709332252355

`lt[15, A211396(a(A054845(n))²)]` with `a(0)=0, a(1)=1, a(2)=14`
-/

namespace A054997.P5231511709332252355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 14] fun n f2 =>
  A211396 (f2 (A054845 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054997.P5231511709332252355

/-! ## A054997.P13190770339475398102

`lt[5, 5-a(A054845(n))*A286357(n+1)]` with `a(0)=0`
-/

namespace A054997.P13190770339475398102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  5 - f2 (A054845 n).toNat * A286357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054997.P13190770339475398102

/-! ## A054997.P16469123828675363006

`lt[8, A002212(a(A054845(n))+1)]` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A054997.P16469123828675363006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n f2 =>
  A002212 (f2 (A054845 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054997.P16469123828675363006

/-!
# A054998: Integers that can be expressed as the sum of consecutive primes in exactly 3 ways.

The programs for A054998, there is no canonical definition to state claims against.
-/

/-! ## A054998.P508265041343387083

`eq[3, A054845(n)]`
-/

namespace A054998.P508265041343387083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054998.P508265041343387083

/-! ## A054998.P6949150238078119871

`lt[15, A007590(a(A054845(n))+1)]` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A054998.P6949150238078119871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 0] fun n f2 =>
  A007590 (f2 (A054845 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054998.P6949150238078119871

/-! ## A054998.P17396619208686923398

`lt[15, A049993(a(A054845(n))+1)]` with `a(0)=0, a(1)=8, a(2)=0`
-/

namespace A054998.P17396619208686923398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 0] fun n f2 =>
  A049993 (f2 (A054845 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054998.P17396619208686923398

/-! ## A054998.P1999690754972086548

`lt[15, A211396(a(A054845(n))²)]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=14`
-/

namespace A054998.P1999690754972086548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, 14] fun n f2 =>
  A211396 (f2 (A054845 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054998.P1999690754972086548

/-! ## A054998.P12866561791909160190

`lt[15, A301759(a(A054845(n))+1)]` with `a(0)=1, a(1)=8, a(2)=1, a(3)=14`
-/

namespace A054998.P12866561791909160190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 1, 14] fun n f2 =>
  A301759 (f2 (A054845 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054998.P12866561791909160190

