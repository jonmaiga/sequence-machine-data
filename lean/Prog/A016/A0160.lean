import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C026

/-!
# A016000: 

The programs for A016000, there is no canonical definition to state claims against.
-/

/-! ## A016000.P9181602000088975896

`round(γ^A326472(n))`
-/

namespace A016000.P9181602000088975896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant ^ (A326472 n : ℤ))

end

end A016000.P9181602000088975896

/-! ## A016000.P11323646900273677774

`round(1/(A326466(n)+1))`
-/

namespace A016000.P11323646900273677774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A326466 n + 1 : ℚ))

end

end A016000.P11323646900273677774

/-! ## A016000.P15780192385147288940

`C(n, comp[A376591(2*(n+2))])`
-/

namespace A016000.P15780192385147288940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376591 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016000.P15780192385147288940

/-! ## A016000.P3661890305054606006

`C(n, comp[A360114(2*n+5)])`
-/

namespace A016000.P3661890305054606006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360114 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016000.P3661890305054606006

/-! ## A016000.P12497216263984352939

`val(n+2, lt[n+1, A106683(n+79)])`
-/

namespace A016000.P12497216263984352939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 79)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A016000.P12497216263984352939

/-! ## A016000.P8297848770958501984

`A048766(C(2, A326472(n)))`
-/

namespace A016000.P8297848770958501984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Nat.choose 2 (A326472 n).toNat)

end

end A016000.P8297848770958501984

/-! ## A016000.P2975297553703073612

`A379071(C(2, A326472(n)))`
-/

namespace A016000.P2975297553703073612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379071 (Nat.choose 2 (A326472 n).toNat)

end

end A016000.P2975297553703073612

/-! ## A016000.P1679431632328833836

`C(A034851(n), A326472(n))`
-/

namespace A016000.P1679431632328833836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034851 n).toNat (A326472 n).toNat

end

end A016000.P1679431632328833836

/-! ## A016000.P16898039974281426807

`C(A050447(n), A326472(n)²)`
-/

namespace A016000.P16898039974281426807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050447 n).toNat (A326472 n ^ 2).toNat

end

end A016000.P16898039974281426807

/-! ## A016000.P8251131250255034109

`A339579(A014105(n)+1)^A161113(n+1)`
-/

namespace A016000.P8251131250255034109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339579 (A014105 n + 1).toNat : ℚ) ^ (A161113 (n + 1) : ℤ)

end

end A016000.P8251131250255034109

/-! ## A016000.P9827326528182542921

`and(1, A079439(A079415(n+1)))`
-/

namespace A016000.P9827326528182542921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A079439 (A079415 (n + 1)).toNat)

end

end A016000.P9827326528182542921

/-!
# A016001: a(n) = (tau(n^6)+5)/6.

The programs for A016001, the canonical program `A016001.P11323128955576647870` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016001 has offset 1).

The definition of A016001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016001.P11323128955576647870

`A052938(floor(A344329(n+1)/3))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A016001

/-- `A052938(floor(A344329(n+1)/3))` -/
def P11323128955576647870.Spec : Prop :=
  ∀ n, P11323128955576647870.a n = A016001 (n + 1)

theorem P11323128955576647870.correct : P11323128955576647870.Spec := by
  intro n
  simp only [A016001, Nat.add_sub_cancel]

end A016001

/-! ## A016001.P1619651591051186707

`A117910((A344329(n+1)+1)/2)`
-/

namespace A016001.P1619651591051186707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (SequenceMachineLib.roundAway ((A344329 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A016001.P1619651591051186707

namespace A016001

/-- `A117910((A344329(n+1)+1)/2)` -/
def P1619651591051186707.Spec : Prop :=
  ∀ n, P1619651591051186707.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P15373843196949286394

`A026806(A344329(n+1))`
-/

namespace A016001.P15373843196949286394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A344329 (n + 1)).toNat

end

end A016001.P15373843196949286394

namespace A016001

/-- `A026806(A344329(n+1))` -/
def P15373843196949286394.Spec : Prop :=
  ∀ n, P15373843196949286394.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P8521380234538919076

`A008615(A344329(n+1)+1)`
-/

namespace A016001.P8521380234538919076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A344329 (n + 1) + 1).toNat

end

end A016001.P8521380234538919076

namespace A016001

/-- `A008615(A344329(n+1)+1)` -/
def P8521380234538919076.Spec : Prop :=
  ∀ n, P8521380234538919076.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P13636969906057440526

`A103221(A344329(n+1)+1)`
-/

namespace A016001.P13636969906057440526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A344329 (n + 1) + 1).toNat

end

end A016001.P13636969906057440526

namespace A016001

/-- `A103221(A344329(n+1)+1)` -/
def P13636969906057440526.Spec : Prop :=
  ∀ n, P13636969906057440526.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P6511593209959619530

`A117910(A344329(n+1)+1)`
-/

namespace A016001.P6511593209959619530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A344329 (n + 1) + 1).toNat

end

end A016001.P6511593209959619530

namespace A016001

/-- `A117910(A344329(n+1)+1)` -/
def P6511593209959619530.Spec : Prop :=
  ∀ n, P6511593209959619530.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P8524671140334500113

`A130747(A344329(n+1)+1)`
-/

namespace A016001.P8524671140334500113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A344329 (n + 1) + 1).toNat

end

end A016001.P8524671140334500113

namespace A016001

/-- `A130747(A344329(n+1)+1)` -/
def P8524671140334500113.Spec : Prop :=
  ∀ n, P8524671140334500113.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P15016125683993391901

`A278529(A344329(n+1)+4)`
-/

namespace A016001.P15016125683993391901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A344329 (n + 1) + 4).toNat

end

end A016001.P15016125683993391901

namespace A016001

/-- `A278529(A344329(n+1)+4)` -/
def P15016125683993391901.Spec : Prop :=
  ∀ n, P15016125683993391901.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P3081689999882141508

`ceil(A048785((n+1)²)/6)`
-/

namespace A016001.P3081689999882141508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048785 ((n + 1) ^ 2) : ℚ) / 6⌉

end

end A016001.P3081689999882141508

namespace A016001

/-- `ceil(A048785((n+1)²)/6)` -/
def P3081689999882141508.Spec : Prop :=
  ∀ n, P3081689999882141508.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P17532026957042604344

`(A015995((n+1)*(n+1))+1)/2`
-/

namespace A016001.P17532026957042604344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015995 ((n + 1) * (n + 1)) + 1 : ℚ) / 2

end

end A016001.P17532026957042604344

namespace A016001

/-- `(A015995((n+1)*(n+1))+1)/2` -/
def P17532026957042604344.Spec : Prop :=
  ∀ n, P17532026957042604344.a n = (A016001 (n + 1) : ℚ)

end A016001

/-! ## A016001.P13872459986356367073

`A003602(A015995((n+1)²))`
-/

namespace A016001.P13872459986356367073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A015995 ((n + 1) ^ 2)).toNat

end

end A016001.P13872459986356367073

namespace A016001

/-- `A003602(A015995((n+1)²))` -/
def P13872459986356367073.Spec : Prop :=
  ∀ n, P13872459986356367073.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P15245411349798641464

`A140472(A015995(∑[2*n+1]))`
-/

namespace A016001.P15245411349798641464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A015995 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A016001.P15245411349798641464

namespace A016001

/-- `A140472(A015995(∑[2*n+1]))` -/
def P15245411349798641464.Spec : Prop :=
  ∀ n, P15245411349798641464.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P43747030290775175

`A000463((A048785((n+1)²)+2)/3)`
-/

namespace A016001.P43747030290775175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.roundAway ((A048785 ((n + 1) ^ 2) + 2 : ℚ) / 3)).toNat

end

end A016001.P43747030290775175

namespace A016001

/-- `A000463((A048785((n+1)²)+2)/3)` -/
def P43747030290775175.Spec : Prop :=
  ∀ n, P43747030290775175.a n = A016001 (n + 1)

end A016001

/-! ## A016001.P16922842197464529578

`A066620((n+1)²)+A018892(n+1)`
-/

namespace A016001.P16922842197464529578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 ((n + 1) ^ 2) + A018892 (n + 1)

end

end A016001.P16922842197464529578

namespace A016001

/-- `A066620((n+1)²)+A018892(n+1)` -/
def P16922842197464529578.Spec : Prop :=
  ∀ n, P16922842197464529578.a n = A016001 (n + 1)

end A016001

/-!
# A016002: a(n) = (tau(n^7)+6)/7.

The programs for A016002, the canonical program `A016002.P10244408839077172288` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016002 has offset 1).

The definition of A016002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016002.P17590848902412058990

`ceil(A343526(n+1)/7)`
-/

namespace A016002.P17590848902412058990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A343526 (n + 1) : ℚ) / 7⌉

end

end A016002.P17590848902412058990

namespace A016002

/-- `ceil(A343526(n+1)/7)` -/
def P17590848902412058990.Spec : Prop :=
  ∀ n, P17590848902412058990.a n = A016002 (n + 1)

end A016002

/-! ## A016002.P10244408839077172288

`ceil(∏{e}[n+1, A016993(#)]/7)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A016002

/-- `ceil(∏{e}[n+1, A016993(#)]/7)` -/
def P10244408839077172288.Spec : Prop :=
  ∀ n, P10244408839077172288.a n = A016002 (n + 1)

theorem P10244408839077172288.correct : P10244408839077172288.Spec := by
  intro n
  simp only [A016002, Nat.add_sub_cancel]

end A016002

/-! ## A016002.P5662524437699726433

`∑{d}[n+1, A340149(A082476(#))]`
-/

namespace A016002.P5662524437699726433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340149 (A082476 d).toNat

end

end A016002.P5662524437699726433

namespace A016002

/-- `∑{d}[n+1, A340149(A082476(#))]` -/
def P5662524437699726433.Spec : Prop :=
  ∀ n, P5662524437699726433.a n = A016002 (n + 1)

end A016002

/-! ## A016002.P553708516960627994

`floor(A007318(val(n+1, 12))+A343526(n+1)/7)`
-/

namespace A016002.P553708516960627994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (SequenceMachineLib.valuation (n + 1) 12) : ℚ) + (A343526 (n + 1) : ℚ) / 7⌋

end

end A016002.P553708516960627994

namespace A016002

/-- `floor(A007318(val(n+1, 12))+A343526(n+1)/7)` -/
def P553708516960627994.Spec : Prop :=
  ∀ n, P553708516960627994.a n = A016002 (n + 1)

end A016002

/-! ## A016002.P776136398754728810

`A138999(A343526(n+1))`
-/

namespace A016002.P776136398754728810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A343526 (n + 1)).toNat

end

end A016002.P776136398754728810

namespace A016002

/-- `A138999(A343526(n+1))` -/
def P776136398754728810.Spec : Prop :=
  ∀ n, P776136398754728810.a n = A016002 (n + 1)

end A016002

/-! ## A016002.P9712321389014575392

`A260644(A343526(n+1)+6)`
-/

namespace A016002.P9712321389014575392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A343526 (n + 1) + 6).toNat

end

end A016002.P9712321389014575392

namespace A016002

/-- `A260644(A343526(n+1)+6)` -/
def P9712321389014575392.Spec : Prop :=
  ∀ n, P9712321389014575392.a n = A016002 (n + 1)

end A016002

/-! ## A016002.P8328380429617265510

`A037474(A016001(n+1)%A280107(n+1))`
-/

namespace A016002.P8328380429617265510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.tmod (A016001 (n + 1)) (A280107 (n + 1))).toNat

end

end A016002.P8328380429617265510

namespace A016002

/-- `A037474(A016001(n+1)%A280107(n+1))` -/
def P8328380429617265510.Spec : Prop :=
  ∀ n, P8328380429617265510.a n = A016002 (n + 1)

end A016002

/-!
# A016003: a(n) = (tau(n^8)+7)/8.

The programs for A016003, the canonical program `A016003.P2042737091927830965` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016003 has offset 1).

The definition of A016003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016003.P2042737091927830965

`ceil(A344335(n+1)/8)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A016003

/-- `ceil(A344335(n+1)/8)` -/
def P2042737091927830965.Spec : Prop :=
  ∀ n, P2042737091927830965.a n = A016003 (n + 1)

theorem P2042737091927830965.correct : P2042737091927830965.Spec := by
  intro n
  simp only [A016003, Nat.add_sub_cancel]

end A016003

/-! ## A016003.P901840519541262839

`∑{d}[n+1, A007875(#)^3]`
-/

namespace A016003.P901840519541262839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d ^ 3

end

end A016003.P901840519541262839

namespace A016003

/-- `∑{d}[n+1, A007875(#)^3]` -/
def P901840519541262839.Spec : Prop :=
  ∀ n, P901840519541262839.a n = A016003 (n + 1)

end A016003

/-! ## A016003.P651421492600094483

`∑{d}[n+1, 8^A297155(#)]`
-/

namespace A016003.P651421492600094483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (8 : ℚ) ^ (A297155 d : ℤ)

end

end A016003.P651421492600094483

namespace A016003

/-- `∑{d}[n+1, 8^A297155(#)]` -/
def P651421492600094483.Spec : Prop :=
  ∀ n, P651421492600094483.a n = (A016003 (n + 1) : ℚ)

end A016003

/-! ## A016003.P15930648731649157387

`∑{d}[n+1, A032742(A034444(#))^3]`
-/

namespace A016003.P15930648731649157387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032742 (A034444 d).toNat ^ 3

end

end A016003.P15930648731649157387

namespace A016003

/-- `∑{d}[n+1, A032742(A034444(#))^3]` -/
def P15930648731649157387.Spec : Prop :=
  ∀ n, P15930648731649157387.a n = A016003 (n + 1)

end A016003

/-! ## A016003.P1367452814534535246

`A110656(A344335(n+1))`
-/

namespace A016003.P1367452814534535246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A344335 (n + 1)).toNat

end

end A016003.P1367452814534535246

namespace A016003

/-- `A110656(A344335(n+1))` -/
def P1367452814534535246.Spec : Prop :=
  ∀ n, P1367452814534535246.a n = A016003 (n + 1)

end A016003

/-! ## A016003.P1199382693604967876

`(A015996((n+1)²)+1)/2`
-/

namespace A016003.P1199382693604967876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015996 ((n + 1) ^ 2) + 1 : ℚ) / 2

end

end A016003.P1199382693604967876

namespace A016003

/-- `(A015996((n+1)²)+1)/2` -/
def P1199382693604967876.Spec : Prop :=
  ∀ n, P1199382693604967876.a n = (A016003 (n + 1) : ℚ)

end A016003

/-! ## A016003.P9826201576466084212

`A008619(A015996((n+1)²))`
-/

namespace A016003.P9826201576466084212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A015996 ((n + 1) ^ 2)).toNat

end

end A016003.P9826201576466084212

namespace A016003

/-- `A008619(A015996((n+1)²))` -/
def P9826201576466084212.Spec : Prop :=
  ∀ n, P9826201576466084212.a n = A016003 (n + 1)

end A016003

/-! ## A016003.P2431892749758968624

`A004526(A015996((n+1)²)+1)`
-/

namespace A016003.P2431892749758968624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A015996 ((n + 1) ^ 2) + 1).toNat

end

end A016003.P2431892749758968624

namespace A016003

/-- `A004526(A015996((n+1)²)+1)` -/
def P2431892749758968624.Spec : Prop :=
  ∀ n, P2431892749758968624.a n = A016003 (n + 1)

end A016003

/-!
# A016005: a(n) = (tau(n^9)+8)/9.

The programs for A016005, the canonical program `A016005.P4298684389289845767` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016005 has offset 1).

The definition of A016005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016005.P4298684389289845767

`ceil(A344336(n+1)/9)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A016005

/-- `ceil(A344336(n+1)/9)` -/
def P4298684389289845767.Spec : Prop :=
  ∀ n, P4298684389289845767.a n = A016005 (n + 1)

theorem P4298684389289845767.correct : P4298684389289845767.Spec := by
  intro n
  simp only [A016005, Nat.add_sub_cancel]

end A016005

/-! ## A016005.P7562793276152944048

`A106610(A344336(n+1)+8)`
-/

namespace A016005.P7562793276152944048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A344336 (n + 1) + 8).toNat

end

end A016005.P7562793276152944048

namespace A016005

/-- `A106610(A344336(n+1)+8)` -/
def P7562793276152944048.Spec : Prop :=
  ∀ n, P7562793276152944048.a n = A016005 (n + 1)

end A016005

/-! ## A016005.P10141212267692708083

`A194523(A344336(n+1))`
-/

namespace A016005.P10141212267692708083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (A344336 (n + 1)).toNat

end

end A016005.P10141212267692708083

namespace A016005

/-- `A194523(A344336(n+1))` -/
def P10141212267692708083.Spec : Prop :=
  ∀ n, P10141212267692708083.a n = A016005 (n + 1)

end A016005

/-! ## A016005.P17483406046485759369

`A008620(A008620(A344336(n+1))+1)`
-/

namespace A016005.P17483406046485759369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008620 (A344336 (n + 1)).toNat + 1).toNat

end

end A016005.P17483406046485759369

namespace A016005

/-- `A008620(A008620(A344336(n+1))+1)` -/
def P17483406046485759369.Spec : Prop :=
  ∀ n, P17483406046485759369.a n = A016005 (n + 1)

end A016005

/-! ## A016005.P3480790637770711493

`A002264(A002264(A344336(n+1))+3)`
-/

namespace A016005.P3480790637770711493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A344336 (n + 1)).toNat + 3).toNat

end

end A016005.P3480790637770711493

namespace A016005

/-- `A002264(A002264(A344336(n+1))+3)` -/
def P3480790637770711493.Spec : Prop :=
  ∀ n, P3480790637770711493.a n = A016005 (n + 1)

end A016005

/-! ## A016005.P4678180266725406150

`A033183(4*A344336(n+1))`
-/

namespace A016005.P4678180266725406150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (4 * A344336 (n + 1)).toNat

end

end A016005.P4678180266725406150

namespace A016005

/-- `A033183(4*A344336(n+1))` -/
def P4678180266725406150.Spec : Prop :=
  ∀ n, P4678180266725406150.a n = A016005 (n + 1)

end A016005

/-! ## A016005.P18315829730811961878

`A007094(A016002(n+1)%A175735(n+1))`
-/

namespace A016005.P18315829730811961878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A016002 (n + 1)) (A175735 (n + 1))).toNat

end

end A016005.P18315829730811961878

namespace A016005

/-- `A007094(A016002(n+1)%A175735(n+1))` -/
def P18315829730811961878.Spec : Prop :=
  ∀ n, P18315829730811961878.a n = A016005 (n + 1)

end A016005

/-!
# A016006: a(n) = (tau(n^10)+9)/10.

The programs for A016006, the canonical program `A016006.P1904156013776657872` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016006 has offset 1).

The definition of A016006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016006.P1904156013776657872

`A007095(A016005(n+1))%p?[A046691(n+2)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A016006

/-- `A007095(A016005(n+1))%p?[A046691(n+2)]` -/
def P1904156013776657872.Spec : Prop :=
  ∀ n, P1904156013776657872.a n = A016006 (n + 1)

theorem P1904156013776657872.correct : P1904156013776657872.Spec := by
  intro n
  simp only [A016006, Nat.add_sub_cancel]

end A016006

/-! ## A016006.P2233375916899576653

`A007095(A016005(n+1))+A000007(A046693(n))`
-/

namespace A016006.P2233375916899576653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A016005 (n + 1)).toNat + A000007 (A046693 n).toNat

end

end A016006.P2233375916899576653

namespace A016006

/-- `A007095(A016005(n+1))+A000007(A046693(n))` -/
def P2233375916899576653.Spec : Prop :=
  ∀ n, P2233375916899576653.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P5336628452423686157

`A007095(A016005(n+1))*A009194(A215381(n+1))`
-/

namespace A016006.P5336628452423686157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A016005 (n + 1)).toNat * A009194 (A215381 (n + 1)).toNat

end

end A016006.P5336628452423686157

namespace A016006

/-- `A007095(A016005(n+1))*A009194(A215381(n+1))` -/
def P5336628452423686157.Spec : Prop :=
  ∀ n, P5336628452423686157.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P9238732646929385486

`A007095(A016005(n+1))+A000007(A045437(n+1))`
-/

namespace A016006.P9238732646929385486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A016005 (n + 1)).toNat + A000007 (A045437 (n + 1)).toNat

end

end A016006.P9238732646929385486

namespace A016006

/-- `A007095(A016005(n+1))+A000007(A045437(n+1))` -/
def P9238732646929385486.Spec : Prop :=
  ∀ n, P9238732646929385486.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P6857552599407614455

`A000034(A045437(n+1)+1)*A007095(A016005(n+1))`
-/

namespace A016006.P6857552599407614455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A045437 (n + 1) + 1).toNat * A007095 (A016005 (n + 1)).toNat

end

end A016006.P6857552599407614455

namespace A016006

/-- `A000034(A045437(n+1)+1)*A007095(A016005(n+1))` -/
def P6857552599407614455.Spec : Prop :=
  ∀ n, P6857552599407614455.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P6999448572272779867

`A000688(A163487(n+1))*A007095(A016005(n+1))`
-/

namespace A016006.P6999448572272779867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A163487 (n + 1)).toNat * A007095 (A016005 (n + 1)).toNat

end

end A016006.P6999448572272779867

namespace A016006

/-- `A000688(A163487(n+1))*A007095(A016005(n+1))` -/
def P6999448572272779867.Spec : Prop :=
  ∀ n, P6999448572272779867.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P16086887577732402893

`A007095(A016005(n+1))+A000122(A006512(n+1))`
-/

namespace A016006.P16086887577732402893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A016005 (n + 1)).toNat + A000122 (A006512 (n + 1)).toNat

end

end A016006.P16086887577732402893

namespace A016006

/-- `A007095(A016005(n+1))+A000122(A006512(n+1))` -/
def P16086887577732402893.Spec : Prop :=
  ∀ n, P16086887577732402893.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P9358926401878479122

`A276689(A001057(n)²)+A007095(A016005(n+1))`
-/

namespace A016006.P9358926401878479122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A001057 n ^ 2).toNat + A007095 (A016005 (n + 1)).toNat

end

end A016006.P9358926401878479122

namespace A016006

/-- `A276689(A001057(n)²)+A007095(A016005(n+1))` -/
def P9358926401878479122.Spec : Prop :=
  ∀ n, P9358926401878479122.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P2885664683781725175

`A007095(A016005(n+1))+A000122(A167499(n))`
-/

namespace A016006.P2885664683781725175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A016005 (n + 1)).toNat + A000122 (A167499 n).toNat

end

end A016006.P2885664683781725175

namespace A016006

/-- `A007095(A016005(n+1))+A000122(A167499(n))` -/
def P2885664683781725175.Spec : Prop :=
  ∀ n, P2885664683781725175.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P11103380228137350391

`A007095(A016005(n+1))*A035214(A080075(n+2))`
-/

namespace A016006.P11103380228137350391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A016005 (n + 1)).toNat * A035214 (A080075 (n + 2)).toNat

end

end A016006.P11103380228137350391

namespace A016006

/-- `A007095(A016005(n+1))*A035214(A080075(n+2))` -/
def P11103380228137350391.Spec : Prop :=
  ∀ n, P11103380228137350391.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P84937848179960937

`A007095(A016005(n+1))*A320105(A066048(n+1))`
-/

namespace A016006.P84937848179960937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A016005 (n + 1)).toNat * A320105 (A066048 (n + 1)).toNat

end

end A016006.P84937848179960937

namespace A016006

/-- `A007095(A016005(n+1))*A320105(A066048(n+1))` -/
def P84937848179960937.Spec : Prop :=
  ∀ n, P84937848179960937.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P10348490636853887992

`A007094(A016003(n+1)%A072828(n+1))`
-/

namespace A016006.P10348490636853887992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A016003 (n + 1)) (A072828 (n + 1))).toNat

end

end A016006.P10348490636853887992

namespace A016006

/-- `A007094(A016003(n+1)%A072828(n+1))` -/
def P10348490636853887992.Spec : Prop :=
  ∀ n, P10348490636853887992.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P3429591531998065250

`A008619(A015999(A046523(n+1)²))`
-/

namespace A016006.P3429591531998065250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A015999 (A046523 (n + 1) ^ 2).toNat).toNat

end

end A016006.P3429591531998065250

namespace A016006

/-- `A008619(A015999(A046523(n+1)²))` -/
def P3429591531998065250.Spec : Prop :=
  ∀ n, P3429591531998065250.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P2406621876932039601

`A007095(A276689(n²)+A016005(n+1))`
-/

namespace A016006.P2406621876932039601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A276689 (n ^ 2) + A016005 (n + 1)).toNat

end

end A016006.P2406621876932039601

namespace A016006

/-- `A007095(A276689(n²)+A016005(n+1))` -/
def P2406621876932039601.Spec : Prop :=
  ∀ n, P2406621876932039601.a n = A016006 (n + 1)

end A016006

/-! ## A016006.P5778079479601427115

`A008619(A015999((n+1)²))`
-/

namespace A016006.P5778079479601427115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A015999 ((n + 1) ^ 2)).toNat

end

end A016006.P5778079479601427115

namespace A016006

/-- `A008619(A015999((n+1)²))` -/
def P5778079479601427115.Spec : Prop :=
  ∀ n, P5778079479601427115.a n = A016006 (n + 1)

end A016006

/-!
# A016007: a(n) = (tau(n^11)+10)/11.

The programs for A016007, there is no canonical definition to state claims against.
-/

/-! ## A016007.P12418688603956731288

`A052382(A123271(n+2)²*A016006(n+1))`
-/

namespace A016007.P12418688603956731288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A123271 (n + 2) ^ 2 * A016006 (n + 1)).toNat

end

end A016007.P12418688603956731288

/-! ## A016007.P12339067310768535643

`A052382(A016006(n+1)/A123271(n+2)²)`
-/

namespace A016007.P12339067310768535643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (SequenceMachineLib.roundAway ((A016006 (n + 1) : ℚ) / (A123271 (n + 2) ^ 2 : ℚ))).toNat

end

end A016007.P12339067310768535643

/-! ## A016007.P13866663260796812255

`A052382(A016006(n+1))%A243362(A002033(n))`
-/

namespace A016007.P13866663260796812255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052382 (A016006 (n + 1)).toNat) (A243362 (A002033 n).toNat)

end

end A016007.P13866663260796812255

/-! ## A016007.P17166965455753655666

`A097904(A016003(n+1))`
-/

namespace A016007.P17166965455753655666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097904 (A016003 (n + 1)).toNat

end

end A016007.P17166965455753655666

/-! ## A016007.P4424458843151348849

`A342383(A016006(n+1))`
-/

namespace A016007.P4424458843151348849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A016006 (n + 1)).toNat

end

end A016007.P4424458843151348849

/-!
# A016008: a(n) = (tau(n^12)+11)/12.

The programs for A016008, the canonical program `A016008.P15707281332845573364` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016008 has offset 1).

The definition of A016008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016008.P5614073436692034663

`ceil(A016001(A046523(n+1)²)/2)`
-/

namespace A016008.P5614073436692034663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016001 (A046523 (n + 1) ^ 2).toNat : ℚ) / 2⌉

end

end A016008.P5614073436692034663

namespace A016008

/-- `ceil(A016001(A046523(n+1)²)/2)` -/
def P5614073436692034663.Spec : Prop :=
  ∀ n, P5614073436692034663.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P14352399168859825541

`A001057(A016001(A046523(n+1)²))`
-/

namespace A016008.P14352399168859825541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A016001 (A046523 (n + 1) ^ 2).toNat).toNat

end

end A016008.P14352399168859825541

namespace A016008

/-- `A001057(A016001(A046523(n+1)²))` -/
def P14352399168859825541.Spec : Prop :=
  ∀ n, P14352399168859825541.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P15068491649415217871

`ceil(A016001(A071364((n+1)²))/2)`
-/

namespace A016008.P15068491649415217871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016001 (A071364 ((n + 1) ^ 2)).toNat : ℚ) / 2⌉

end

end A016008.P15068491649415217871

namespace A016008

/-- `ceil(A016001(A071364((n+1)²))/2)` -/
def P15068491649415217871.Spec : Prop :=
  ∀ n, P15068491649415217871.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P12376683636747262657

`A000463(A016001(A071364((n+1)²)))`
-/

namespace A016008.P12376683636747262657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A016001 (A071364 ((n + 1) ^ 2)).toNat).toNat

end

end A016008.P12376683636747262657

namespace A016008

/-- `A000463(A016001(A071364((n+1)²)))` -/
def P12376683636747262657.Spec : Prop :=
  ∀ n, P12376683636747262657.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P16838795008776541298

`ceil(A016001(A097272((n+1)²))/2)`
-/

namespace A016008.P16838795008776541298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016001 (A097272 ((n + 1) ^ 2)).toNat : ℚ) / 2⌉

end

end A016008.P16838795008776541298

namespace A016008

/-- `ceil(A016001(A097272((n+1)²))/2)` -/
def P16838795008776541298.Spec : Prop :=
  ∀ n, P16838795008776541298.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P15164683627359187382

`A008619(A016001(A097272((n+1)²)))`
-/

namespace A016008.P15164683627359187382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016001 (A097272 ((n + 1) ^ 2)).toNat).toNat

end

end A016008.P15164683627359187382

namespace A016008

/-- `A008619(A016001(A097272((n+1)²)))` -/
def P15164683627359187382.Spec : Prop :=
  ∀ n, P15164683627359187382.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P15707281332845573364

`ceil(A016001((n+1)²)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A016008

/-- `ceil(A016001((n+1)²)/2)` -/
def P15707281332845573364.Spec : Prop :=
  ∀ n, P15707281332845573364.a n = A016008 (n + 1)

theorem P15707281332845573364.correct : P15707281332845573364.Spec := by
  intro n
  simp only [A016008, Nat.add_sub_cancel]

end A016008

/-! ## A016008.P3167618134937717100

`A000463(A016001((n+1)²))`
-/

namespace A016008.P3167618134937717100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A016001 ((n + 1) ^ 2)).toNat

end

end A016008.P3167618134937717100

namespace A016008

/-- `A000463(A016001((n+1)²))` -/
def P3167618134937717100.Spec : Prop :=
  ∀ n, P3167618134937717100.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P14484836338842881178

`A008619(A016001(Δ[A000330(n)]))`
-/

namespace A016008.P14484836338842881178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016001 (f1 (n + 1) - f1 n).toNat).toNat

end

end A016008.P14484836338842881178

namespace A016008

/-- `A008619(A016001(Δ[A000330(n)]))` -/
def P14484836338842881178.Spec : Prop :=
  ∀ n, P14484836338842881178.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P6343125084186007994

`A003602(A016001(A000027(n+1)²))`
-/

namespace A016008.P6343125084186007994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A016001 (A000027 (n + 1) ^ 2).toNat).toNat

end

end A016008.P6343125084186007994

namespace A016008

/-- `A003602(A016001(A000027(n+1)²))` -/
def P6343125084186007994.Spec : Prop :=
  ∀ n, P6343125084186007994.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P6823639791131797610

`A008619(A016001(A008619(2*n)²))`
-/

namespace A016008.P6823639791131797610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016001 (A008619 (2 * n) ^ 2).toNat).toNat

end

end A016008.P6823639791131797610

namespace A016008

/-- `A008619(A016001(A008619(2*n)²))` -/
def P6823639791131797610.Spec : Prop :=
  ∀ n, P6823639791131797610.a n = A016008 (n + 1)

end A016008

/-! ## A016008.P7069525572291947080

`A008619(A016001(∑[A008619(4*n)]))`
-/

namespace A016008.P7069525572291947080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A016008.P7069525572291947080

namespace A016008

/-- `A008619(A016001(∑[A008619(4*n)]))` -/
def P7069525572291947080.Spec : Prop :=
  ∀ n, P7069525572291947080.a n = A016008 (n + 1)

end A016008

/-!
# A016009: a(n) = (tau(n^13)+12)/13.

The programs for A016009, there is no canonical definition to state claims against.
-/

/-! ## A016009.P15516729844749724418

`A272978(A016008(n+1))`
-/

namespace A016009.P15516729844749724418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272978 (A016008 (n + 1)).toNat

end

end A016009.P15516729844749724418

/-! ## A016009.P14567670074895603479

`∑{d}[n+1, A256504(A034444(#)!)]`
-/

namespace A016009.P14567670074895603479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256504 (Nat.factorial (A034444 d).toNat)

end

end A016009.P14567670074895603479

/-! ## A016009.P8921665794055447789

`A302439(A046523(n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A016009.P8921665794055447789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302439 (A046523 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A016009.P8921665794055447789

/-! ## A016009.P9998014061773191576

`A172270(A016008(n+1)%A015994(3*n+5))`
-/

namespace A016009.P9998014061773191576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172270 (Int.tmod (A016008 (n + 1)) (A015994 (3 * n + 5))).toNat

end

end A016009.P9998014061773191576

/-! ## A016009.P17410183401040262238

`A172270(A016008(n+1))%A134572(2*n+3)`
-/

namespace A016009.P17410183401040262238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172270 (A016008 (n + 1)).toNat) (A134572 (2 * n + 3))

end

end A016009.P17410183401040262238

/-!
# A016010: Inverse of 2001st cyclotomic polynomial.

The programs for A016010, there is no canonical definition to state claims against.
-/

/-! ## A016010.P7082001361252580835

`A106510(lt[A029178(n), n])`
-/

namespace A016010.P7082001361252580835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A016010.P7082001361252580835

/-! ## A016010.P13720280591127511397

`A106510(lt[A185316(n), A008000(n)])`
-/

namespace A016010.P13720280591127511397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A016010.P13720280591127511397

/-! ## A016010.P292136108762567781

`A106510(lt[A185316(n), A038764(n)])`
-/

namespace A016010.P292136108762567781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A016010.P292136108762567781

/-! ## A016010.P6911472503084954549

`A016148(n)%A139092(n+4)`
-/

namespace A016010.P6911472503084954549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016148 n) (A139092 (n + 4))

end

end A016010.P6911472503084954549

/-! ## A016010.P1960730875160899329

`A049347(lt[A378314(n), A272049(3*n+1)])`
-/

namespace A016010.P1960730875160899329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A016010.P1960730875160899329

/-!
# A016011: Inverse of 2002nd cyclotomic polynomial.

The programs for A016011, there is no canonical definition to state claims against.
-/

/-! ## A016011.P7623859515666949345

`A015010(n)*A033999(n)`
-/

namespace A016011.P7623859515666949345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015010 n * A033999 n

end

end A016011.P7623859515666949345

/-!
# A016012: a(n) = (tau(n^n)+n-1)/n.

The programs for A016012, the canonical program `A016012.P1395673583011163257` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016012 has offset 1).

The definition of A016012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016012.P1395673583011163257

`ceil(∏{e}[n+1, #*(n+1)+1]/(n+1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016012

/-- `ceil(∏{e}[n+1, #*(n+1)+1]/(n+1))` -/
def P1395673583011163257.Spec : Prop :=
  ∀ n, P1395673583011163257.a n = A016012 (n + 1)

theorem P1395673583011163257.correct : P1395673583011163257.Spec := by
  intro n
  simp only [A016012, Nat.add_sub_cancel]

end A016012

/-! ## A016012.P6713899350110892412

`ceil(A062319(n+1)/(n+1))`
-/

namespace A016012.P6713899350110892412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062319 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A016012.P6713899350110892412

namespace A016012

/-- `ceil(A062319(n+1)/(n+1))` -/
def P6713899350110892412.Spec : Prop :=
  ∀ n, P6713899350110892412.a n = A016012 (n + 1)

end A016012

/-! ## A016012.P5504999160711012588

`∑{d}[n+1, (n+1)^A297155(#)]`
-/

namespace A016012.P5504999160711012588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A297155 d : ℤ)

end

end A016012.P5504999160711012588

namespace A016012

/-- `∑{d}[n+1, (n+1)^A297155(#)]` -/
def P5504999160711012588.Spec : Prop :=
  ∀ n, P5504999160711012588.a n = (A016012 (n + 1) : ℚ)

end A016012

/-! ## A016012.P7064277385263397275

`(A062319(n+1)+n)/A000027(n+1)`
-/

namespace A016012.P7064277385263397275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062319 (n + 1) + (n : ℤ) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A016012.P7064277385263397275

namespace A016012

/-- `(A062319(n+1)+n)/A000027(n+1)` -/
def P7064277385263397275.Spec : Prop :=
  ∀ n, P7064277385263397275.a n = (A016012 (n + 1) : ℚ)

end A016012

/-! ## A016012.P10639998017466916296

`(A062319(n+1)+n)/A028310(n+1)`
-/

namespace A016012.P10639998017466916296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062319 (n + 1) + (n : ℤ) : ℚ) / (A028310 (n + 1) : ℚ)

end

end A016012.P10639998017466916296

namespace A016012

/-- `(A062319(n+1)+n)/A028310(n+1)` -/
def P10639998017466916296.Spec : Prop :=
  ∀ n, P10639998017466916296.a n = (A016012 (n + 1) : ℚ)

end A016012

/-! ## A016012.P3383169151431476236

`∑{d}[n+1, (n+1)^A002264(A034444(#²))]`
-/

namespace A016012.P3383169151431476236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A002264 (A034444 (d ^ 2)).toNat : ℤ)

end

end A016012.P3383169151431476236

namespace A016012

/-- `∑{d}[n+1, (n+1)^A002264(A034444(#²))]` -/
def P3383169151431476236.Spec : Prop :=
  ∀ n, P3383169151431476236.a n = (A016012 (n + 1) : ℚ)

end A016012

/-!
# A016014: Least k such that 2*n*k + 1 is a prime.

The programs for A016014, there is no canonical definition to state claims against.
-/

/-! ## A016014.P13374067150606367180

`A034693(2*(n+1))`
-/

namespace A016014.P13374067150606367180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (2 * (n + 1))

end

end A016014.P13374067150606367180

/-! ## A016014.P12355080453494376679

`ceil(A070846(n+1)/(2*n+5))`
-/

namespace A016014.P12355080453494376679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070846 (n + 1) : ℚ) / (2 * n + 5 : ℚ)⌉

end

end A016014.P12355080453494376679

/-! ## A016014.P14680375136752724853

`A130446(A034693(n+2+n))`
-/

namespace A016014.P14680375136752724853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A034693 (n + 2 + n)).toNat

end

end A016014.P14680375136752724853

/-! ## A016014.P10514530770196581017

`A218344(2*n+1-A000720(2*n+1))`
-/

namespace A016014.P10514530770196581017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218344 ((2 * n + 1 : ℤ) - A000720 (2 * n + 1)).toNat

end

end A016014.P10514530770196581017

/-! ## A016014.P6342737133617426937

`round(A034694(2*(n+1))/(2*n+3))`
-/

namespace A016014.P6342737133617426937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034694 (2 * (n + 1)) : ℚ) / (2 * n + 3 : ℚ))

end

end A016014.P6342737133617426937

/-! ## A016014.P9812555834784380548

`(A086507(2*(n+1))-1)/(2*(n+1))`
-/

namespace A016014.P9812555834784380548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086507 (2 * (n + 1)) - 1 : ℚ) / (2 * (n + 1) : ℚ)

end

end A016014.P9812555834784380548

/-! ## A016014.P6682843219433433615

`(A034694(2*(n+1))-1)/A004277(n+1)`
-/

namespace A016014.P6682843219433433615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (2 * (n + 1)) - 1 : ℚ) / (A004277 (n + 1) : ℚ)

end

end A016014.P6682843219433433615

/-! ## A016014.P2266980072615105136

`(A034694(2*(n+1))-1)/A005843(n+1)`
-/

namespace A016014.P2266980072615105136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (2 * (n + 1)) - 1 : ℚ) / (A005843 (n + 1) : ℚ)

end

end A016014.P2266980072615105136

/-! ## A016014.P12742534951390305199

`A072920(2*(n+1))-A072920(2*n+1)`
-/

namespace A016014.P12742534951390305199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072920 (2 * (n + 1)) - A072920 (2 * n + 1)

end

end A016014.P12742534951390305199

/-! ## A016014.P17002510958906161462

`(A034694(2*(n+1))-1)/A000027(2*(n+1))`
-/

namespace A016014.P17002510958906161462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (2 * (n + 1)) - 1 : ℚ) / (A000027 (2 * (n + 1)) : ℚ)

end

end A016014.P17002510958906161462

/-! ## A016014.P16812851928353080549

`(A034694(2*(n+1))-1)/A020725(2*n+1)`
-/

namespace A016014.P16812851928353080549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (2 * (n + 1)) - 1 : ℚ) / (A020725 (2 * n + 1) : ℚ)

end

end A016014.P16812851928353080549

/-! ## A016014.P12694880437410077610

`(A034694(A103517(n))-1)/A103517(n)`
-/

namespace A016014.P12694880437410077610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (A103517 n).toNat - 1 : ℚ) / (A103517 n : ℚ)

end

end A016014.P12694880437410077610

/-! ## A016014.P17180095833984094309

`floor(A034694(A061767(2*n+1))/A061767(2*n+1))`
-/

namespace A016014.P17180095833984094309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034694 (A061767 (2 * n + 1)).toNat : ℚ) / (A061767 (2 * n + 1) : ℚ)⌋

end

end A016014.P17180095833984094309

/-! ## A016014.P2216003291755854385

`A103689(2*(n+1))+A200996(2*(n+1))-A053989(2*(n+1))`
-/

namespace A016014.P2216003291755854385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103689 (2 * (n + 1)) + (A200996 (2 * (n + 1)) - A053989 (2 * (n + 1)))

end

end A016014.P2216003291755854385

/-! ## A016014.P11795514200546436969

`A000010(A034694(2*(n+1)))/A000027(2*(n+1))`
-/

namespace A016014.P11795514200546436969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A034694 (2 * (n + 1))).toNat : ℚ) / (A000027 (2 * (n + 1)) : ℚ)

end

end A016014.P11795514200546436969

/-! ## A016014.P1385455869566747053

`A002616(A070846(n+1))/(n+1)`
-/

namespace A016014.P1385455869566747053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002616 (A070846 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A016014.P1385455869566747053

/-! ## A016014.P7444616126527725206

`A028242(A034694(2*(n+1)))/(n+1)`
-/

namespace A016014.P7444616126527725206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (A034694 (2 * (n + 1))).toNat : ℚ) / (n + 1 : ℚ)

end

end A016014.P7444616126527725206

/-!
# A016015: Inverse of 2006th cyclotomic polynomial.

The programs for A016015, there is no canonical definition to state claims against.
-/

/-! ## A016015.P9634392618721294044

`A015012(n)*A033999(n)`
-/

namespace A016015.P9634392618721294044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 n * A033999 n

end

end A016015.P9634392618721294044

/-! ## A016015.P16277932423277827871

`A015012(n)*A034947(A005843(n)+1)`
-/

namespace A016015.P16277932423277827871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 n * A034947 (A005843 n + 1).toNat

end

end A016015.P16277932423277827871

/-! ## A016015.P9281926252716472085

`A015012(n)*A034947(n²+5)`
-/

namespace A016015.P9281926252716472085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 n * A034947 (n ^ 2 + 5)

end

end A016015.P9281926252716472085

/-! ## A016015.P6176550425224802224

`A352530(n)%A164083(n+1)`
-/

namespace A016015.P6176550425224802224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352530 n) (A164083 (n + 1))

end

end A016015.P6176550425224802224

/-! ## A016015.P926371036864539494

`A010815(A308974(n)+A000326(n))`
-/

namespace A016015.P926371036864539494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A308974 n + A000326 n).toNat

end

end A016015.P926371036864539494

/-! ## A016015.P10107644205880065994

`A010054(A214252(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A016015.P10107644205880065994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 (A214252 (n + 1)).toNat - a (n - 1)

end

end A016015.P10107644205880065994

/-!
# A016016: Number of iterations of Reverse and Add which lead to a palindrome, or -1 if no palindrome is ever reached.

The programs for A016016, there is no canonical definition to state claims against.
-/

/-! ## A016016.P1412391873639716081

`A030547(A052008(n+1))`
-/

namespace A016016.P1412391873639716081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A052008 (n + 1)).toNat

end

end A016016.P1412391873639716081

/-! ## A016016.P589062199403409636

`A030547(A056964(n+1))`
-/

namespace A016016.P589062199403409636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A056964 (n + 1)).toNat

end

end A016016.P589062199403409636

/-! ## A016016.P13538115316636084106

`A030547(A243238(∑[n+2]))`
-/

namespace A016016.P13538115316636084106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A243238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A016016.P13538115316636084106

/-! ## A016016.P7967688667340632957

`A030547(A004086(n+1)+n+1)`
-/

namespace A016016.P7967688667340632957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A004086 (n + 1) + (n + 1 : ℤ)).toNat

end

end A016016.P7967688667340632957

/-! ## A016016.P1780563343435059618

`A033665(A004086(n+1)+n+1)+1`
-/

namespace A016016.P1780563343435059618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A004086 (n + 1) + (n + 1 : ℤ)).toNat + 1

end

end A016016.P1780563343435059618

/-! ## A016016.P3375435453931400804

`A033665(A004186(n+1)+A004185(n+1))+1`
-/

namespace A016016.P3375435453931400804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A004186 (n + 1) + A004185 (n + 1)).toNat + 1

end

end A016016.P3375435453931400804

/-! ## A016016.P8611943378826577705

`A008619(or(A151909(n), A225538(n)))`
-/

namespace A016016.P8611943378826577705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A151909 n) (A225538 n)).toNat

end

end A016016.P8611943378826577705

/-! ## A016016.P2516012948004501077

`A008619(A225538(n)%A117595(A008619(n)))`
-/

namespace A016016.P2516012948004501077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A225538 n) (A117595 (A008619 n).toNat)).toNat

end

end A016016.P2516012948004501077

/-! ## A016016.P10053657670808620515

`A008619(A032559(A225538(n)))`
-/

namespace A016016.P10053657670808620515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A032559 (A225538 n).toNat).toNat

end

end A016016.P10053657670808620515

/-! ## A016016.P18259841902956276534

`A030547((2*A225538(n))²)`
-/

namespace A016016.P18259841902956276534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 ((2 * A225538 n) ^ 2).toNat

end

end A016016.P18259841902956276534

/-!
# A016017: Smallest k such that 1/k can be written as a sum of exactly 2 unit fractions in n ways.

The programs for A016017, there is no canonical definition to state claims against.
-/

/-! ## A016017.P17973516066476742582

`sqrt(A061283(n+1))`
-/

namespace A016017.P17973516066476742582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061283 (n + 1) : ℝ)

end

end A016017.P17973516066476742582

/-! ## A016017.P9544598957451530229

`sqrt(A005179(2*n+1))`
-/

namespace A016017.P9544598957451530229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005179 (2 * n + 1) : ℝ)

end

end A016017.P9544598957451530229

/-! ## A016017.P11108659475450388541

`floor(sqrt(A145344(2*n+1)))`
-/

namespace A016017.P11108659475450388541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A145344 (2 * n + 1))

end

end A016017.P11108659475450388541

/-! ## A016017.P12595575575407109352

`round(sqrt(A005179(n+1+n)))`
-/

namespace A016017.P12595575575407109352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A005179 (n + 1 + n) : ℝ))

end

end A016017.P12595575575407109352

/-! ## A016017.P5902828973509531307

`A081532(∑[4*n]+1)`
-/

namespace A016017.P5902828973509531307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A016017.P5902828973509531307

/-! ## A016017.P3118247243569947205

`sqrt(A081532((2*n+1)*(n+1)))`
-/

namespace A016017.P3118247243569947205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081532 ((2 * n + 1) * (n + 1)) : ℝ)

end

end A016017.P3118247243569947205

/-! ## A016017.P2618009551016402567

`sqrt(sqrt(A130279(2*n+1)))`
-/

namespace A016017.P2618009551016402567
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A130279 (2 * n + 1) : ℝ))

end

end A016017.P2618009551016402567

/-! ## A016017.P9879563221404036838

`sqrt(A187941(2*n+1)/2)`
-/

namespace A016017.P9879563221404036838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A187941 (2 * n + 1) : ℚ) / 2 : ℝ)

end

end A016017.P9879563221404036838

/-!
# A016018: Least k such that (tau(k^3)+2)/3=n.

The programs for A016018, there is no canonical definition to state claims against.
-/

/-! ## A016018.P9661324803870032922

`A275468(2^n)`
-/

namespace A016018.P9661324803870032922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275468 (2 ^ n)

end

end A016018.P9661324803870032922

/-! ## A016018.P12639103457074694692

`A275468(A000079(n))+char[17]`
-/

namespace A016018.P12639103457074694692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275468 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016018.P12639103457074694692

/-! ## A016018.P15431277953624917814

`A275468(record[A034008(n)])+char[17]`
-/

namespace A016018.P15431277953624917814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275468 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016018.P15431277953624917814

/-! ## A016018.P6554446035729542860

`A007318(∑[n])*A275468(A000079(n))`
-/

namespace A016018.P6554446035729542860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A275468 (A000079 n).toNat

end

end A016018.P6554446035729542860

/-! ## A016018.P9026957855915041360

`A275468(A000079(n))%A000045(n+53)`
-/

namespace A016018.P9026957855915041360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275468 (A000079 n).toNat) (A000045 (n + 53))

end

end A016018.P9026957855915041360

/-!
# A016019: Inverse of 2010th cyclotomic polynomial.

The programs for A016019, there is no canonical definition to state claims against.
-/

/-! ## A016019.P14825712216255713180

`A015014(n)*A033999(n)`
-/

namespace A016019.P14825712216255713180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015014 n * A033999 n

end

end A016019.P14825712216255713180

/-! ## A016019.P18159737318430641589

`A016139(n)*A122055(n)`
-/

namespace A016019.P18159737318430641589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016139 n * A122055 n

end

end A016019.P18159737318430641589

/-! ## A016019.P8743723779596537322

`A016199(n)*A122055(n)`
-/

namespace A016019.P8743723779596537322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016199 n * A122055 n

end

end A016019.P8743723779596537322

/-! ## A016019.P6364359407297636336

`A014562(A362612(n))*A014579(n)`
-/

namespace A016019.P6364359407297636336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 (A362612 n).toNat * A014579 n

end

end A016019.P6364359407297636336

/-! ## A016019.P3558910233327324803

`A014542(A014557(n))*A014579(n)`
-/

namespace A016019.P3558910233327324803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014542 (A014557 n).toNat * A014579 n

end

end A016019.P3558910233327324803

/-! ## A016019.P7018181429712352589

`A014562(A122522(n+1))*A014579(n)`
-/

namespace A016019.P7018181429712352589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 (A122522 (n + 1)).toNat * A014579 n

end

end A016019.P7018181429712352589

/-!
# A016020: Least k such that (tau(k^4)+3)/4=n.

The programs for A016020, there is no canonical definition to state claims against.
-/

/-! ## A016020.P8782409984259273201

`A000010(A001317(n)%A113378(3*n+1))`
-/

namespace A016020.P8782409984259273201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A001317 n) (A113378 (3 * n + 1))).toNat

end

end A016020.P8782409984259273201

/-! ## A016020.P3746234990222115648

`(2^n)%A000124(A003060(n))`
-/

namespace A016020.P3746234990222115648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A000124 (A003060 n).toNat)

end

end A016020.P3746234990222115648

/-! ## A016020.P15332186796255847627

`A062759(lcm(2^n, A344180(n)))`
-/

namespace A016020.P15332186796255847627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (Int.lcm (2 ^ n : ℤ) (A344180 n))

end

end A016020.P15332186796255847627

/-! ## A016020.P553619903678575338

`A071364(or(3^n, A008290(n)))`
-/

namespace A016020.P553619903678575338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.lor (3 ^ n : ℤ) (A008290 n)).toNat

end

end A016020.P553619903678575338

/-! ## A016020.P6170082128078966182

`A000027(A278247(n)^A375125(n))`
-/

namespace A016020.P6170082128078966182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A278247 n : ℚ) ^ (A375125 n : ℤ))).toNat

end

end A016020.P6170082128078966182

/-!
# A016021: Number of permutations of {1,2,...,n} in which each element follows its proper divisors.

The programs for A016021, there is no canonical definition to state claims against.
-/

/-! ## A016021.P554097943494114859

`A307730(A346077(∑[n]))`
-/

namespace A016021.P554097943494114859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (A346077 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A016021.P554097943494114859

/-! ## A016021.P3649383676835312959

`A134478(A329976(n)^A289207(n))`
-/

namespace A016021.P3649383676835312959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (SequenceMachineLib.roundAway ((A329976 n : ℚ) ^ (A289207 n : ℤ))).toNat

end

end A016021.P3649383676835312959

/-! ## A016021.P6775323179250696432

`A068696(or(A000032(n), A020131(n)))`
-/

namespace A016021.P6775323179250696432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068696 (Int.lor (A000032 n) (A020131 n)).toNat

end

end A016021.P6775323179250696432

/-! ## A016021.P10223586274265761713

`A071137(or(A008987(n), A048793(n)))`
-/

namespace A016021.P10223586274265761713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (Int.lor (A008987 n) (A048793 n)).toNat

end

end A016021.P10223586274265761713

/-!
# A016022: Inverse of 2013th cyclotomic polynomial.

The programs for A016022, there is no canonical definition to state claims against.
-/

/-! ## A016022.P2549507878810783325

`A016220(A122079(A122079(n+1))-1)`
-/

namespace A016022.P2549507878810783325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016220 (A122079 (A122079 (n + 1)).toNat - 1).toNat

end

end A016022.P2549507878810783325

/-!
# A016023: Inverse of 2014th cyclotomic polynomial.

The programs for A016023, there is no canonical definition to state claims against.
-/

/-! ## A016023.P6688943043507102287

`A015016(n)*A033999(n)`
-/

namespace A016023.P6688943043507102287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015016 n * A033999 n

end

end A016023.P6688943043507102287

/-!
# A016025: Least k such that (tau(k^k)+k-1)/k=n.

The programs for A016025, there is no canonical definition to state claims against.
-/

/-! ## A016025.P3286492832915838034

`A357961(A357993(n))%A132753(A225589(n+1))`
-/

namespace A016025.P3286492832915838034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357961 (A357993 n).toNat) (A132753 (A225589 (n + 1)).toNat)

end

end A016025.P3286492832915838034

/-! ## A016025.P9443285331599795541

`(2^n)%Δ[A153701(n+5)]`
-/

namespace A016025.P9443285331599795541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153701 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A016025.P9443285331599795541

/-! ## A016025.P7675506488411450992

`A278233((A261494(n)+1)^n)`
-/

namespace A016025.P7675506488411450992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 ((A261494 n + 1) ^ n).toNat

end

end A016025.P7675506488411450992

/-! ## A016025.P6663359513294307752

`A278233((A290759(n)+1)^n)`
-/

namespace A016025.P6663359513294307752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 ((A290759 n + 1) ^ n).toNat

end

end A016025.P6663359513294307752

/-! ## A016025.P9464865192197238386

`sqrt(A016018(2*n))%A046500(n)`
-/

namespace A016025.P9464865192197238386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A016018 (2 * n) : ℝ))) (A046500 n)

end

end A016025.P9464865192197238386

/-!
# A016026: Smallest base relative to which n is palindromic.

The programs for A016026, there is no canonical definition to state claims against.
-/

/-! ## A016026.P9346479036341584147

`gcd(A342809(3*n+5), A349809(n+4))+1`
-/

namespace A016026.P9346479036341584147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342809 (3 * n + 5)) (A349809 (n + 4)) + 1

end

end A016026.P9346479036341584147

/-! ## A016026.P17021573931252276697

`A184945(A279788(n))+A053669(n+1)`
-/

namespace A016026.P17021573931252276697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A279788 n).toNat + A053669 (n + 1)

end

end A016026.P17021573931252276697

/-! ## A016026.P16455635029965566495

`A256974(A328221(n))+A053669(n+1)`
-/

namespace A016026.P16455635029965566495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A328221 n).toNat + A053669 (n + 1)

end

end A016026.P16455635029965566495

/-! ## A016026.P11012550547366699489

`A256974(A328221(n))+A112047(n+1)`
-/

namespace A016026.P11012550547366699489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A328221 n).toNat + A112047 (n + 1)

end

end A016026.P11012550547366699489

/-!
# A016027: Indices of prime Mersenne numbers (A001348).

The programs for A016027, there is no canonical definition to state claims against.
-/

/-! ## A016027.P15350793992330572446

`∑[A135701(round(acot(n)+n))]`
-/

namespace A016027.P15350793992330572446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135701 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016027.P15350793992330572446

/-! ## A016027.P12780803145744252694

`A135701(n)+a(n-1)` with `a(0)=1`
-/

namespace A016027.P12780803145744252694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135701 n + a (n - 1)

end

end A016027.P12780803145744252694

/-! ## A016027.P13955254441620845758

`∑[A135701(round(sqrt(n²+1)))]`
-/

namespace A016027.P13955254441620845758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135701 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016027.P13955254441620845758

/-! ## A016027.P9223957309187849115

`∑[A157890(round(acot(n)+n))+1]`
-/

namespace A016027.P9223957309187849115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157890 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016027.P9223957309187849115

/-! ## A016027.P11391020535418536087

`∑[A135701(n+1)]-A157890(n+1)`
-/

namespace A016027.P11391020535418536087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A157890 (n + 1)

end

end A016027.P11391020535418536087

/-!
# A016028: Expansion of (1 - x + x^4) / (1 - x)^3.

The programs for A016028, the canonical program `A016028.P3210509418615055721` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016028 has offset 1).

The definition of A016028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016028.P3210509418615055721

`∑[gcd(2-n, C(2, n))]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016028

/-- `∑[gcd(2-n, C(2, n))]` -/
def P3210509418615055721.Spec : Prop :=
  ∀ n, (P3210509418615055721.a n : ℤ) = A016028 (n + 1)

theorem P3210509418615055721.correct : P3210509418615055721.Spec := by
  intro n
  simp only [A016028, Nat.add_sub_cancel]

end A016028

/-! ## A016028.P16424179525018475649

`∑[C(2, n)+n-2]+2`
-/

namespace A016028.P16424179525018475649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 n : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A016028.P16424179525018475649

namespace A016028

/-- `∑[C(2, n)+n-2]+2` -/
def P16424179525018475649.Spec : Prop :=
  ∀ n, P16424179525018475649.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P5207842770006639901

`∑[or(n, C(2, n))]-2*n`
-/

namespace A016028.P5207842770006639901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)

end

end A016028.P5207842770006639901

namespace A016028

/-- `∑[or(n, C(2, n))]-2*n` -/
def P5207842770006639901.Spec : Prop :=
  ∀ n, P5207842770006639901.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P9401377562815587485

`∑[floor(sqrt(n*a(n-1)))]` with `a(0)=1`
-/

namespace A016028.P9401377562815587485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.sqrt (n * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016028.P9401377562815587485

namespace A016028

/-- `∑[floor(sqrt(n*a(n-1)))]` -/
def P9401377562815587485.Spec : Prop :=
  ∀ n, (P9401377562815587485.a n : ℤ) = A016028 (n + 1)

end A016028

/-! ## A016028.P8657341378534407492

`∑[(n-2)^ceil(acot(n-3))]`
-/

namespace A016028.P8657341378534407492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (⌈SequenceMachineLib.acot ((n : ℤ) - 3 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016028.P8657341378534407492

namespace A016028

/-- `∑[(n-2)^ceil(acot(n-3))]` -/
def P8657341378534407492.Spec : Prop :=
  ∀ n, P8657341378534407492.a n = (A016028 (n + 1) : ℚ)

end A016028

/-! ## A016028.P4967930418651467440

`∑[floor(n+1-atan(n²)²)]`
-/

namespace A016028.P4967930418651467440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - Real.arctan (n ^ 2 : ℝ) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016028.P4967930418651467440

namespace A016028

/-- `∑[floor(n+1-atan(n²)²)]` -/
def P4967930418651467440.Spec : Prop :=
  ∀ n, P4967930418651467440.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P5343065452276468692

`∑[n+1-ceil(atan(n²)²)]`
-/

namespace A016028.P5343065452276468692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈Real.arctan (n ^ 2 : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016028.P5343065452276468692

namespace A016028

/-- `∑[n+1-ceil(atan(n²)²)]` -/
def P5343065452276468692.Spec : Prop :=
  ∀ n, P5343065452276468692.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P7312506220425792062

`∑[a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A016028.P7312506220425792062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016028.P7312506220425792062

namespace A016028

/-- `∑[a(n-1)+1]` -/
def P7312506220425792062.Spec : Prop :=
  ∀ n, (P7312506220425792062.a n : ℤ) = A016028 (n + 1)

end A016028

/-! ## A016028.P896814374787115330

`a(n-1)-2+n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A016028.P896814374787115330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) - 2 + (n : ℤ)

end

end A016028.P896814374787115330

namespace A016028

/-- `a(n-1)-2+n` -/
def P896814374787115330.Spec : Prop :=
  ∀ n, P896814374787115330.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P11079820460693689453

`a(n-1)-(2-n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A016028.P11079820460693689453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) - (2 - (n : ℤ))

end

end A016028.P11079820460693689453

namespace A016028

/-- `a(n-1)-(2-n)` -/
def P11079820460693689453.Spec : Prop :=
  ∀ n, P11079820460693689453.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P9121845757052770977

`∑[(abs(3-n)+n-1)/2]`
-/

namespace A016028.P9121845757052770977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|3 - (n : ℤ)| + ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016028.P9121845757052770977

namespace A016028

/-- `∑[(abs(3-n)+n-1)/2]` -/
def P9121845757052770977.Spec : Prop :=
  ∀ n, P9121845757052770977.a n = (A016028 (n + 1) : ℚ)

end A016028

/-! ## A016028.P16169896031439085213

`C(floor(n²/(n+2)), 2)+n+1`
-/

namespace A016028.P16169896031439085213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n ^ 2 : ℚ) / (n + 2 : ℚ)⌋.toNat 2 + (n + 1)

end

end A016028.P16169896031439085213

namespace A016028

/-- `C(floor(n²/(n+2)), 2)+n+1` -/
def P16169896031439085213.Spec : Prop :=
  ∀ n, (P16169896031439085213.a n : ℤ) = A016028 (n + 1)

end A016028

/-! ## A016028.P17094093761139277771

`∑[n+1-3%(n+1)]-2%(n+1)`
-/

namespace A016028.P17094093761139277771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((3 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((2 % (n + 1) : ℕ) : ℤ)

end

end A016028.P17094093761139277771

namespace A016028

/-- `∑[n+1-3%(n+1)]-2%(n+1)` -/
def P17094093761139277771.Spec : Prop :=
  ∀ n, P17094093761139277771.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P7790633157116572624

`∑[n+2]-A113127(n)`
-/

namespace A016028.P7790633157116572624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A113127 n

end

end A016028.P7790633157116572624

namespace A016028

/-- `∑[n+2]-A113127(n)` -/
def P7790633157116572624.Spec : Prop :=
  ∀ n, P7790633157116572624.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P3413473503048257836

`∑[n+1]-A296515(n+1)`
-/

namespace A016028.P3413473503048257836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A296515 (n + 1)

end

end A016028.P3413473503048257836

namespace A016028

/-- `∑[n+1]-A296515(n+1)` -/
def P3413473503048257836.Spec : Prop :=
  ∀ n, P3413473503048257836.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P16137449608366767439

`C(abs(2-A028310(n)), 2)+1+n`
-/

namespace A016028.P16137449608366767439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |2 - A028310 n|.toNat 2 + 1 + n

end

end A016028.P16137449608366767439

namespace A016028

/-- `C(abs(2-A028310(n)), 2)+1+n` -/
def P16137449608366767439.Spec : Prop :=
  ∀ n, (P16137449608366767439.a n : ℤ) = A016028 (n + 1)

end A016028

/-! ## A016028.P5577945063977781898

`A133263(n)-A004275(n)`
-/

namespace A016028.P5577945063977781898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - A004275 n

end

end A016028.P5577945063977781898

namespace A016028

/-- `A133263(n)-A004275(n)` -/
def P5577945063977781898.Spec : Prop :=
  ∀ n, P5577945063977781898.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P1254247242854971262

`A152947(A289207(n)+1)+n`
-/

namespace A016028.P1254247242854971262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A289207 n + 1).toNat + (n : ℤ)

end

end A016028.P1254247242854971262

namespace A016028

/-- `A152947(A289207(n)+1)+n` -/
def P1254247242854971262.Spec : Prop :=
  ∀ n, P1254247242854971262.a n = A016028 (n + 1)

end A016028

/-! ## A016028.P18386781012473601091

`A347677(n+1)-A022269(n)`
-/

namespace A016028.P18386781012473601091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347677 (n + 1) - A022269 n

end

end A016028.P18386781012473601091

namespace A016028

/-- `A347677(n+1)-A022269(n)` -/
def P18386781012473601091.Spec : Prop :=
  ∀ n, P18386781012473601091.a n = A016028 (n + 1)

end A016028

/-!
# A016029: a(1) = a(2) = 1, a(2n + 1) = 2*a(2n) and a(2n) = 2*a(2n - 1) + (-1)^n.

The programs for A016029, the canonical program `A016029.P17561948932601970067` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016029 has offset 1).

The definition of A016029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016029.P17561948932601970067

`2*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016029

/-- `2*a(n-1)-a(n-2)+2*a(n-3)` -/
def P17561948932601970067.Spec : Prop :=
  ∀ n, P17561948932601970067.a n = A016029 (n + 1)

theorem P17561948932601970067.correct : P17561948932601970067.Spec := by
  intro n
  simp only [A016029, Nat.add_sub_cancel]

end A016029

/-! ## A016029.P11368751950791054037

`round(3*2^n/5)`
-/

namespace A016029.P11368751950791054037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((2 ^ n : ℚ) / 5))

end

end A016029.P11368751950791054037

namespace A016029

/-- `round(3*2^n/5)` -/
def P11368751950791054037.Spec : Prop :=
  ∀ n, P11368751950791054037.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P11274505316966369994

`2*(a(n-1)+a(n-3))-a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A016029.P11274505316966369994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * (a (n - 1) + a (n - 3)) - a (n - 2)

end

end A016029.P11274505316966369994

namespace A016029

/-- `2*(a(n-1)+a(n-3))-a(n-2)` -/
def P11274505316966369994.Spec : Prop :=
  ∀ n, P11274505316966369994.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P12501152772515689557

`A111286(n)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A016029.P12501152772515689557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A111286 n - a (n - 2)

end

end A016029.P12501152772515689557

namespace A016029

/-- `A111286(n)-a(n-2)` -/
def P12501152772515689557.Spec : Prop :=
  ∀ n, P12501152772515689557.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P7617028671169969779

`a(n-1)+A163805(n)+a(n-1)` with `a(0)=1`
-/

namespace A016029.P7617028671169969779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A163805 n + a (n - 1))

end

end A016029.P7617028671169969779

namespace A016029

/-- `a(n-1)+A163805(n)+a(n-1)` -/
def P7617028671169969779.Spec : Prop :=
  ∀ n, P7617028671169969779.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P11534322097369083496

`a(n-1)+a(n-1)-A117569(n)` with `a(0)=1`
-/

namespace A016029.P11534322097369083496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A117569 n)

end

end A016029.P11534322097369083496

namespace A016029

/-- `a(n-1)+a(n-1)-A117569(n)` -/
def P11534322097369083496.Spec : Prop :=
  ∀ n, P11534322097369083496.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P16276154446157122039

`A100088(n)-A101455(n)`
-/

namespace A016029.P16276154446157122039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100088 n - A101455 n

end

end A016029.P16276154446157122039

namespace A016029

/-- `A100088(n)-A101455(n)` -/
def P16276154446157122039.Spec : Prop :=
  ∀ n, P16276154446157122039.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P17896192984962898480

`A100088(n)+A056594(n+1)`
-/

namespace A016029.P17896192984962898480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100088 n + A056594 (n + 1)

end

end A016029.P17896192984962898480

namespace A016029

/-- `A100088(n)+A056594(n+1)` -/
def P17896192984962898480.Spec : Prop :=
  ∀ n, P17896192984962898480.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P6704853182625879398

`A001045(n+1)-A181586(n)`
-/

namespace A016029.P6704853182625879398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A181586 n

end

end A016029.P6704853182625879398

namespace A016029

/-- `A001045(n+1)-A181586(n)` -/
def P6704853182625879398.Spec : Prop :=
  ∀ n, P6704853182625879398.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P8113284301281389298

`A181586(n+2)+A001045(n)`
-/

namespace A016029.P8113284301281389298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 2) + A001045 n

end

end A016029.P8113284301281389298

namespace A016029

/-- `A181586(n+2)+A001045(n)` -/
def P8113284301281389298.Spec : Prop :=
  ∀ n, P8113284301281389298.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P9588383147915881567

`A101455(n+2)+A100088(n)`
-/

namespace A016029.P9588383147915881567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (n + 2) + A100088 n

end

end A016029.P9588383147915881567

namespace A016029

/-- `A101455(n+2)+A100088(n)` -/
def P9588383147915881567.Spec : Prop :=
  ∀ n, P9588383147915881567.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P12473021838557497141

`A181586(n+3)+A139800(n)`
-/

namespace A016029.P12473021838557497141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 3) + A139800 n

end

end A016029.P12473021838557497141

namespace A016029

/-- `A181586(n+3)+A139800(n)` -/
def P12473021838557497141.Spec : Prop :=
  ∀ n, P12473021838557497141.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P13860660151523977187

`A256494(n+3)-A256494(n+1)`
-/

namespace A016029.P13860660151523977187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (n + 3) - A256494 (n + 1)

end

end A016029.P13860660151523977187

namespace A016029

/-- `A256494(n+3)-A256494(n+1)` -/
def P13860660151523977187.Spec : Prop :=
  ∀ n, P13860660151523977187.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P810881560182491784

`A007909(n)+A007910(n)-A100088(n)`
-/

namespace A016029.P810881560182491784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n + (A007910 n - A100088 n)

end

end A016029.P810881560182491784

namespace A016029

/-- `A007909(n)+A007910(n)-A100088(n)` -/
def P810881560182491784.Spec : Prop :=
  ∀ n, P810881560182491784.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P5223675429215558113

`A007679(n+1)+A007909(n)-A190569(n)`
-/

namespace A016029.P5223675429215558113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1) + (A007909 n - A190569 n)

end

end A016029.P5223675429215558113

namespace A016029

/-- `A007679(n+1)+A007909(n)-A190569(n)` -/
def P5223675429215558113.Spec : Prop :=
  ∀ n, P5223675429215558113.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P7458880528334419814

`A115451(n+1)+A115451(n)-A000079(n)`
-/

namespace A016029.P7458880528334419814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 (n + 1) + (A115451 n - A000079 n)

end

end A016029.P7458880528334419814

namespace A016029

/-- `A115451(n+1)+A115451(n)-A000079(n)` -/
def P7458880528334419814.Spec : Prop :=
  ∀ n, P7458880528334419814.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P85066927020170143

`A115451(n+1)+A139800(n)-A115451(n)`
-/

namespace A016029.P85066927020170143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 (n + 1) + (A139800 n - A115451 n)

end

end A016029.P85066927020170143

namespace A016029

/-- `A115451(n+1)+A139800(n)-A115451(n)` -/
def P85066927020170143.Spec : Prop :=
  ∀ n, P85066927020170143.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P17252766429891645280

`A056594(n+1)+A139763(n)-A181586(n)`
-/

namespace A016029.P17252766429891645280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + (A139763 n - A181586 n)

end

end A016029.P17252766429891645280

namespace A016029

/-- `A056594(n+1)+A139763(n)-A181586(n)` -/
def P17252766429891645280.Spec : Prop :=
  ∀ n, P17252766429891645280.a n = A016029 (n + 1)

end A016029

/-! ## A016029.P12133430489701670124

`A007679(n+1)+A007909(n)-A007909(n+1)`
-/

namespace A016029.P12133430489701670124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1) + (A007909 n - A007909 (n + 1))

end

end A016029.P12133430489701670124

namespace A016029

/-- `A007679(n+1)+A007909(n)-A007909(n+1)` -/
def P12133430489701670124.Spec : Prop :=
  ∀ n, P12133430489701670124.a n = A016029 (n + 1)

end A016029

/-!
# A016030: Inverse of 2021st cyclotomic polynomial.

The programs for A016030, there is no canonical definition to state claims against.
-/

/-! ## A016030.P9293440559236105950

`or(A010054(A119338(n+5)), A015936(n))`
-/

namespace A016030.P9293440559236105950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A119338 (n + 5)).toNat) (A015936 n)

end

end A016030.P9293440559236105950

/-! ## A016030.P11447812873734193340

`A015526(n-(∑[A357187(n)]-A357187(n)))`
-/

namespace A016030.P11447812873734193340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 ((n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - A357187 n)).toNat

end

end A016030.P11447812873734193340

/-! ## A016030.P10489054099752862034

`or(A015936(n), A102460(A273866(n+5)))`
-/

namespace A016030.P10489054099752862034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015936 n) (A102460 (A273866 (n + 5)).toNat)

end

end A016030.P10489054099752862034

/-! ## A016030.P2468062147059391483

`2-A178334(A292673(2*n+1))`
-/

namespace A016030.P2468062147059391483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A178334 (A292673 (2 * n + 1)).toNat

end

end A016030.P2468062147059391483

/-! ## A016030.P12926889560373983349

`A015803(A034447(n+2))`
-/

namespace A016030.P12926889560373983349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015803 (A034447 (n + 2)).toNat

end

end A016030.P12926889560373983349

/-!
# A016031: De Bruijn's sequence: 2^(2^(n-1) - n): number of ways of arranging 2^n bits in circle so all 2^n consecutive strings of length n are distinct.

The programs for A016031, the canonical program `A016031.P14727423077537202512` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016031 has offset 1).

The definition of A016031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016031.P14727423077537202512

`2^A000295(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A016031

/-- `2^A000295(n)` -/
def P14727423077537202512.Spec : Prop :=
  ∀ n, P14727423077537202512.a n = (A016031 (n + 1) : ℚ)

end A016031

/-! ## A016031.P3105703537309694969

`2^(2^n-(n+1))`
-/

namespace A016031.P3105703537309694969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A016031.P3105703537309694969

namespace A016031

/-- `2^(2^n-(n+1))` -/
def P3105703537309694969.Spec : Prop :=
  ∀ n, P3105703537309694969.a n = (A016031 (n + 1) : ℚ)

end A016031

/-! ## A016031.P7249689835471198215

`∏[2*a(n-1)²]` with `a(0)=1, a(1)=1`
-/

namespace A016031.P7249689835471198215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016031.P7249689835471198215

namespace A016031

/-- `∏[2*a(n-1)²]` -/
def P7249689835471198215.Spec : Prop :=
  ∀ n, (P7249689835471198215.a n : ℤ) = A016031 (n + 1)

end A016031

/-! ## A016031.P6417679770161460962

`∏[∏[a(n-1)²]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A016031.P6417679770161460962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016031.P6417679770161460962

namespace A016031

/-- `∏[∏[a(n-1)²]]` -/
def P6417679770161460962.Spec : Prop :=
  ∀ n, (P6417679770161460962.a n : ℤ) = A016031 (n + 1)

end A016031

/-! ## A016031.P15548320084704819384

`ceil(2^xor(n, 2^n-1))`
-/

namespace A016031.P15548320084704819384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (Int.xor (n : ℤ) ((2 ^ n : ℤ) - 1) : ℤ)⌉

end

end A016031.P15548320084704819384

namespace A016031

/-- `ceil(2^xor(n, 2^n-1))` -/
def P15548320084704819384.Spec : Prop :=
  ∀ n, P15548320084704819384.a n = A016031 (n + 1)

end A016031

/-!
# A016032: Least positive integer that is the sum of two squares of positive integers in exactly n ways.

The programs for A016032, there is no canonical definition to state claims against.
-/

/-! ## A016032.P6830333636332812134

`A328151(A037203(n)+A004156(n))`
-/

namespace A016032.P6830333636332812134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328151 (A037203 n + A004156 n).toNat

end

end A016032.P6830333636332812134

/-! ## A016032.P10162373282217796609

`A328151(A157928(n)+A004156(n))`
-/

namespace A016032.P10162373282217796609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328151 (A157928 n + A004156 n).toNat

end

end A016032.P10162373282217796609

/-!
# A016033: Inverse of 2024th cyclotomic polynomial.

The programs for A016033, there is no canonical definition to state claims against.
-/

/-! ## A016033.P5523479570667616496

`A015021(lcm(2, n)/2)`
-/

namespace A016033.P5523479570667616496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015021 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A016033.P5523479570667616496

/-!
# A016034: Numbers having n self generators (not necessarily primitive).

The programs for A016034, there is no canonical definition to state claims against.
-/

/-! ## A016034.P7258692349038153399

`A004207(∑[a(n-1)-(1-a(n-1))]+1)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=1, a(4)=1, a(5)=1, a(6)=2`
-/

namespace A016034.P7258692349038153399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 12, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A016034.P7258692349038153399

/-!
# A016035: a(n) = Sum_{j|n, 1 < j < n} phi(j). Also a(n) = n - phi(n) - 1 for n > 1.

The programs for A016035, the canonical program `A016035.P3669285434667491181` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016035 has offset 1).

The definition of A016035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016035.P3669285434667491181

`(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016035

/-- `(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)` -/
def P3669285434667491181.Spec : Prop :=
  ∀ n, P3669285434667491181.a n = A016035 (n + 1)

theorem P3669285434667491181.correct : P3669285434667491181.Spec := by
  intro n
  simp only [A016035, Nat.add_sub_cancel]

end A016035

/-! ## A016035.P17305288386479436042

`A219428(abs(1-n)+2)`
-/

namespace A016035.P17305288386479436042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (|1 - (n : ℤ)| + 2).toNat

end

end A016035.P17305288386479436042

namespace A016035

/-- `A219428(abs(1-n)+2)` -/
def P17305288386479436042.Spec : Prop :=
  ∀ n, P17305288386479436042.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P9195856610856036788

`A219428(n+1)%(n+1)`
-/

namespace A016035.P9195856610856036788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219428 (n + 1)) (n + 1 : ℤ)

end

end A016035.P9195856610856036788

namespace A016035

/-- `A219428(n+1)%(n+1)` -/
def P9195856610856036788.Spec : Prop :=
  ∀ n, P9195856610856036788.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P18349267628587513299

`floor(A053650(n+1)/(n+2))`
-/

namespace A016035.P18349267628587513299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053650 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A016035.P18349267628587513299

namespace A016035

/-- `floor(A053650(n+1)/(n+2))` -/
def P18349267628587513299.Spec : Prop :=
  ∀ n, P18349267628587513299.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P13120757381629054644

`A051953(ceil(sqrt(n²+4)))-1`
-/

namespace A016035.P13120757381629054644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat - 1

end

end A016035.P13120757381629054644

namespace A016035

/-- `A051953(ceil(sqrt(n²+4)))-1` -/
def P13120757381629054644.Spec : Prop :=
  ∀ n, P13120757381629054644.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P7645561867821878131

`2/(n+1)*A308473(n+1)`
-/

namespace A016035.P7645561867821878131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A308473 (n + 1) : ℚ)

end

end A016035.P7645561867821878131

namespace A016035

/-- `2/(n+1)*A308473(n+1)` -/
def P7645561867821878131.Spec : Prop :=
  ∀ n, P7645561867821878131.a n = (A016035 (n + 1) : ℚ)

end A016035

/-! ## A016035.P1458896559638686741

`n-A000010(n+1)%(n+1)`
-/

namespace A016035.P1458896559638686741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A000010 (n + 1)) (n + 1 : ℤ)

end

end A016035.P1458896559638686741

namespace A016035

/-- `n-A000010(n+1)%(n+1)` -/
def P1458896559638686741.Spec : Prop :=
  ∀ n, P1458896559638686741.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P9179544926520193741

`Δ[a(n-1)-A000010(n)]+n` with `a(0)=0, a(1)=0`
-/

namespace A016035.P9179544926520193741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - A000010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A016035.P9179544926520193741

namespace A016035

/-- `Δ[a(n-1)-A000010(n)]+n` -/
def P9179544926520193741.Spec : Prop :=
  ∀ n, P9179544926520193741.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P16404647221732987631

`n-A000010(C(a(n-1), n)+n+1)` with `a(0)=0`
-/

namespace A016035.P16404647221732987631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A000010 (Nat.choose (a (n - 1)).toNat n + (n + 1))

end

end A016035.P16404647221732987631

namespace A016035

/-- `n-A000010(C(a(n-1), n)+n+1)` -/
def P16404647221732987631.Spec : Prop :=
  ∀ n, P16404647221732987631.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P461680549343268245

`n-A000010(gcd(n+1, (n+1)*a(n-1)))` with `a(0)=0`
-/

namespace A016035.P461680549343268245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A000010 (Int.gcd (n + 1 : ℤ) ((n + 1 : ℤ) * a (n - 1)))

end

end A016035.P461680549343268245

namespace A016035

/-- `n-A000010(gcd(n+1, (n+1)*a(n-1)))` -/
def P461680549343268245.Spec : Prop :=
  ∀ n, P461680549343268245.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P18116015763562076281

`A289207(A062830(n+1))`
-/

namespace A016035.P18116015763562076281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A062830 (n + 1)).toNat

end

end A016035.P18116015763562076281

namespace A016035

/-- `A289207(A062830(n+1))` -/
def P18116015763562076281.Spec : Prop :=
  ∀ n, P18116015763562076281.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P13351375577973108503

`A028310(n)-Δ[A005728(n)]`
-/

namespace A016035.P13351375577973108503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (f1 (n + 1) - f1 n)

end

end A016035.P13351375577973108503

namespace A016035

/-- `A028310(n)-Δ[A005728(n)]` -/
def P13351375577973108503.Spec : Prop :=
  ∀ n, P13351375577973108503.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P17063334723515302353

`A028310(A051953(n+1))-1`
-/

namespace A016035.P17063334723515302353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A051953 (n + 1)).toNat - 1

end

end A016035.P17063334723515302353

namespace A016035

/-- `A028310(A051953(n+1))-1` -/
def P17063334723515302353.Spec : Prop :=
  ∀ n, P17063334723515302353.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P15667880809316188055

`A057428(n)+A051953(n+1)`
-/

namespace A016035.P15667880809316188055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A051953 (n + 1)

end

end A016035.P15667880809316188055

namespace A016035

/-- `A057428(n)+A051953(n+1)` -/
def P15667880809316188055.Spec : Prop :=
  ∀ n, P15667880809316188055.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P9910705106626685689

`A219428(n+1)+A000007(n)`
-/

namespace A016035.P9910705106626685689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A000007 n

end

end A016035.P9910705106626685689

namespace A016035

/-- `A219428(n+1)+A000007(n)` -/
def P9910705106626685689.Spec : Prop :=
  ∀ n, P9910705106626685689.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P11682549337130095287

`A028310(n)-A000010(n+1)`
-/

namespace A016035.P11682549337130095287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A000010 (n + 1)

end

end A016035.P11682549337130095287

namespace A016035

/-- `A028310(n)-A000010(n+1)` -/
def P11682549337130095287.Spec : Prop :=
  ∀ n, P11682549337130095287.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P16428399203451043122

`A057427(n)*A219428(n+1)`
-/

namespace A016035.P16428399203451043122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A219428 (n + 1)

end

end A016035.P16428399203451043122

namespace A016035

/-- `A057427(n)*A219428(n+1)` -/
def P16428399203451043122.Spec : Prop :=
  ∀ n, P16428399203451043122.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P7017778005539375649

`A157928(n)*A219428(n+1)`
-/

namespace A016035.P7017778005539375649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A219428 (n + 1)

end

end A016035.P7017778005539375649

namespace A016035

/-- `A157928(n)*A219428(n+1)` -/
def P7017778005539375649.Spec : Prop :=
  ∀ n, P7017778005539375649.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P2620222606571837820

`A219428(n+1)*A294619(n)`
-/

namespace A016035.P2620222606571837820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) * A294619 n

end

end A016035.P2620222606571837820

namespace A016035

/-- `A219428(n+1)*A294619(n)` -/
def P2620222606571837820.Spec : Prop :=
  ∀ n, P2620222606571837820.a n = A016035 (n + 1)

end A016035

/-! ## A016035.P5110610432918086242

`A053158(n+1)%A057544(n)`
-/

namespace A016035.P5110610432918086242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053158 (n + 1)) (A057544 n)

end

end A016035.P5110610432918086242

namespace A016035

/-- `A053158(n+1)%A057544(n)` -/
def P5110610432918086242.Spec : Prop :=
  ∀ n, P5110610432918086242.a n = A016035 (n + 1)

end A016035

/-!
# A016036: Row sums of triangle A000369.

The programs for A016036, there is no canonical definition to state claims against.
-/

/-! ## A016036.P2002687233006720488

`∑[record[A055945(A260878(n))]]`
-/

namespace A016036.P2002687233006720488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A260878 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016036.P2002687233006720488

/-!
# A016038: Strictly non-palindromic numbers: n is not palindromic in any base b with 2 <= b <= n-2.

The programs for A016038, there is no canonical definition to state claims against.
-/

/-! ## A016038.P12360340178548654394

`record[n*(2-A000010(A135551(n)+1))]`
-/

namespace A016038.P12360340178548654394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A000010 (A135551 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016038.P12360340178548654394

/-! ## A016038.P10222756436891307847

`record[n/A006788(2*A135551(n)+1)]`
-/

namespace A016038.P10222756436891307847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A006788 (2 * A135551 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016038.P10222756436891307847

/-! ## A016038.P14270678936795598

`record[n*A000007(A135551(A135551(n)²))]`
-/

namespace A016038.P14270678936795598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 (A135551 (A135551 n ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016038.P14270678936795598

/-! ## A016038.P17575767882262254385

`lt[A135551(n), 2]`
-/

namespace A016038.P17575767882262254385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A016038.P17575767882262254385

/-! ## A016038.P7237754555187097532

`eq[0, A135551(A135551(n)²)]`
-/

namespace A016038.P7237754555187097532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (A135551 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A016038.P7237754555187097532

/-! ## A016038.P5351890655522630424

`eq[1, A094497(A135551(n)+1)]`
-/

namespace A016038.P5351890655522630424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (A135551 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A016038.P5351890655522630424

/-! ## A016038.P2079833675367961927

`eq[1, A094497(2*A135551(n))]`
-/

namespace A016038.P2079833675367961927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (2 * A135551 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A016038.P2079833675367961927

/-! ## A016038.P3776724326601857496

`eq[0, A135549(n)]`
-/

namespace A016038.P3776724326601857496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A016038.P3776724326601857496

/-! ## A016038.P3917536499759195953

`lt[∑{d}[n, A135549(#)], 1]`
-/

namespace A016038.P3917536499759195953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A135549 d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A016038.P3917536499759195953

/-! ## A016038.P15107518557453250221

`lt[A008742(A135549(n)+1), 1]`
-/

namespace A016038.P15107518557453250221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A135549 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A016038.P15107518557453250221

/-! ## A016038.P15814278894635450277

`lt[A000040(A135549(n)+1), 3]`
-/

namespace A016038.P15814278894635450277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A135549 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A016038.P15814278894635450277

/-! ## A016038.P7192015668893360083

`lt[A000009(n)*A135549(n), 1]`
-/

namespace A016038.P7192015668893360083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A135549 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A016038.P7192015668893360083

/-! ## A016038.P13328281310434488536

`lt[A135549(n), 1/A016969(n)]`
-/

namespace A016038.P13328281310434488536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A016969 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A016038.P13328281310434488536

/-! ## A016038.P6080976249068218988

`lt[A135549(n)^A010693(n), 1]`
-/

namespace A016038.P6080976249068218988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135549 n : ℚ) ^ (A010693 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A016038.P6080976249068218988

/-! ## A016038.P4489109735858772129

`lt[A001747(A135549(n)+1)-1, 3]`
-/

namespace A016038.P4489109735858772129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (A135549 n + 1).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A016038.P4489109735858772129

/-! ## A016038.P537550810702502748

`lt[A040976(A135549(n)+1)+2, 3]`
-/

namespace A016038.P537550810702502748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A135549 n + 1).toNat + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A016038.P537550810702502748

/-! ## A016038.P12539604796770796322

`record[n/A008578(A135549(n)²+1)²]`
-/

namespace A016038.P12539604796770796322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A008578 (A135549 n ^ 2 + 1).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016038.P12539604796770796322

/-! ## A016038.P4778252175638016594

`lt[A135549(n), A160357(n+1)^(n-1)]`
-/

namespace A016038.P4778252175638016594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160357 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A016038.P4778252175638016594

/-! ## A016038.P14091049788889264074

`lt[(C(A135549(n)+3, 3)-3)*4*n, A318984(n)]`
-/

namespace A016038.P14091049788889264074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (A135549 n + 3).toNat 3 : ℤ) - 3) * (4 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A016038.P14091049788889264074

/-!
# A016039: Inverse of 2030th cyclotomic polynomial.

The programs for A016039, there is no canonical definition to state claims against.
-/

/-! ## A016039.P6969217117652498219

`A015024(n)*A033999(n)`
-/

namespace A016039.P6969217117652498219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015024 n * A033999 n

end

end A016039.P6969217117652498219

/-! ## A016039.P869128269989107984

`A016179(n)%A139092(n+4)`
-/

namespace A016039.P869128269989107984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016179 n) (A139092 (n + 4))

end

end A016039.P869128269989107984

/-!
# A016040: Integer part of Chebyshev's theta function: floor( log(Product_{k=1..n} prime(k)) ).

The programs for A016040, the canonical program `A016040.P16668472596033548107` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016040 has offset 1).

The definition of A016040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016040.P16668472596033548107

`floor(∑[log(A000040(n+1))])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A016040

/-- `floor(∑[log(A000040(n+1))])` -/
def P16668472596033548107.Spec : Prop :=
  ∀ n, P16668472596033548107.a n = A016040 (n + 1)

theorem P16668472596033548107.correct : P16668472596033548107.Spec := by
  intro n
  simp only [A016040, Nat.add_sub_cancel]

end A016040

/-! ## A016040.P12831742679762594931

`floor(∑[log(A008864(n+1)-1)])`
-/

namespace A016040.P12831742679762594931
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A008864 (n + 1) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P12831742679762594931

namespace A016040

/-- `floor(∑[log(A008864(n+1)-1)])` -/
def P12831742679762594931.Spec : Prop :=
  ∀ n, P12831742679762594931.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P5728840136696120778

`floor(∑[log(A040976(n+1)+2)])`
-/

namespace A016040.P5728840136696120778
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A040976 (n + 1) + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P5728840136696120778

namespace A016040

/-- `floor(∑[log(A040976(n+1)+2)])` -/
def P5728840136696120778.Spec : Prop :=
  ∀ n, P5728840136696120778.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P5385240384772424455

`floor(∑[log(A086801(n+1)+3)])`
-/

namespace A016040.P5385240384772424455
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A086801 (n + 1) + 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P5385240384772424455

namespace A016040

/-- `floor(∑[log(A086801(n+1)+3)])` -/
def P5385240384772424455.Spec : Prop :=
  ∀ n, P5385240384772424455.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P120072644978556525

`floor(∑[log(A001748(n+1)/3)])`
-/

namespace A016040.P120072644978556525
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((A001748 (n + 1) : ℚ) / 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P120072644978556525

namespace A016040

/-- `floor(∑[log(A001748(n+1)/3)])` -/
def P120072644978556525.Spec : Prop :=
  ∀ n, P120072644978556525.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P10847804837668797056

`floor(∑[log(A175225(n+1)-10)])`
-/

namespace A016040.P10847804837668797056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A175225 (n + 1) - 10 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P10847804837668797056

namespace A016040

/-- `floor(∑[log(A175225(n+1)-10)])` -/
def P10847804837668797056.Spec : Prop :=
  ∀ n, P10847804837668797056.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P2862127797420767343

`floor(∑[log(A014689(n+1)+n+1)])`
-/

namespace A016040.P2862127797420767343
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A014689 (n + 1) + (n + 1 : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P2862127797420767343

namespace A016040

/-- `floor(∑[log(A014689(n+1)+n+1)])` -/
def P2862127797420767343.Spec : Prop :=
  ∀ n, P2862127797420767343.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P3312688833546944650

`floor(∑[log(A008578(n+2))])`
-/

namespace A016040.P3312688833546944650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P3312688833546944650

namespace A016040

/-- `floor(∑[log(A008578(n+2))])` -/
def P3312688833546944650.Spec : Prop :=
  ∀ n, P3312688833546944650.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P17858778332361206139

`floor(∑[record[log(A006530(n+2))]])`
-/

namespace A016040.P17858778332361206139
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A006530 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P17858778332361206139

namespace A016040

/-- `floor(∑[record[log(A006530(n+2))]])` -/
def P17858778332361206139.Spec : Prop :=
  ∀ n, P17858778332361206139.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P2844056821468189831

`floor(∑[record[log(A020639(n+2))]])`
-/

namespace A016040.P2844056821468189831
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A020639 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P2844056821468189831

namespace A016040

/-- `floor(∑[record[log(A020639(n+2))]])` -/
def P2844056821468189831.Spec : Prop :=
  ∀ n, P2844056821468189831.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P15377753063596240162

`floor(∑[log(A063904(n+1))])`
-/

namespace A016040.P15377753063596240162
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A063904 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P15377753063596240162

namespace A016040

/-- `floor(∑[log(A063904(n+1))])` -/
def P15377753063596240162.Spec : Prop :=
  ∀ n, P15377753063596240162.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P2373259616251472727

`A035158(A000040(n+1))`
-/

namespace A016040.P2373259616251472727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A000040 (n + 1)).toNat

end

end A016040.P2373259616251472727

namespace A016040

/-- `A035158(A000040(n+1))` -/
def P2373259616251472727.Spec : Prop :=
  ∀ n, P2373259616251472727.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P5359936188277390830

`A035158(A006005(n+1))`
-/

namespace A016040.P5359936188277390830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A006005 (n + 1)).toNat

end

end A016040.P5359936188277390830

namespace A016040

/-- `A035158(A006005(n+1))` -/
def P5359936188277390830.Spec : Prop :=
  ∀ n, P5359936188277390830.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P15386542539446854222

`A035158(A055670(n+1))`
-/

namespace A016040.P15386542539446854222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A055670 (n + 1)).toNat

end

end A016040.P15386542539446854222

namespace A016040

/-- `A035158(A055670(n+1))` -/
def P15386542539446854222.Spec : Prop :=
  ∀ n, P15386542539446854222.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P9849061838380632566

`A035158(A078444(n+1))`
-/

namespace A016040.P9849061838380632566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A078444 (n + 1)).toNat

end

end A016040.P9849061838380632566

namespace A016040

/-- `A035158(A078444(n+1))` -/
def P9849061838380632566.Spec : Prop :=
  ∀ n, P9849061838380632566.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P13191611440262458792

`A035158(A162735(n+1))`
-/

namespace A016040.P13191611440262458792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A162735 (n + 1)).toNat

end

end A016040.P13191611440262458792

namespace A016040

/-- `A035158(A162735(n+1))` -/
def P13191611440262458792.Spec : Prop :=
  ∀ n, P13191611440262458792.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P11466450621746497379

`A035158(A162800(n+1))`
-/

namespace A016040.P11466450621746497379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A162800 (n + 1)).toNat

end

end A016040.P11466450621746497379

namespace A016040

/-- `A035158(A162800(n+1))` -/
def P11466450621746497379.Spec : Prop :=
  ∀ n, P11466450621746497379.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P6714518919569777773

`A035158(A008578(n+2))`
-/

namespace A016040.P6714518919569777773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A008578 (n + 2)).toNat

end

end A016040.P6714518919569777773

namespace A016040

/-- `A035158(A008578(n+2))` -/
def P6714518919569777773.Spec : Prop :=
  ∀ n, P6714518919569777773.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P13087986543571144490

`record[A035158(A006530(n+1))]`
-/

namespace A016040.P13087986543571144490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016040.P13087986543571144490

namespace A016040

/-- `record[A035158(A006530(n+1))]` -/
def P13087986543571144490.Spec : Prop :=
  ∀ n, P13087986543571144490.a n = A016040 (n + 1)

end A016040

/-! ## A016040.P11440053090722533803

`record[A035158(A014963(n+1))]`
-/

namespace A016040.P11440053090722533803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016040.P11440053090722533803

namespace A016040

/-- `record[A035158(A014963(n+1))]` -/
def P11440053090722533803.Spec : Prop :=
  ∀ n, P11440053090722533803.a n = A016040 (n + 1)

end A016040

/-!
# A016041: Primes that are palindromic in base 2 (but written here in base 10).

The programs for A016041, there is no canonical definition to state claims against.
-/

/-! ## A016041.P17707237142429740382

`∑[A164124(n+1)]+3`
-/

namespace A016041.P17707237142429740382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A016041.P17707237142429740382

/-! ## A016041.P13141331185274577901

`p?[A006995(n+1)]`
-/

namespace A016041.P13141331185274577901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P13141331185274577901

/-! ## A016041.P7170142328196244375

`p?[A163410(n+1)]`
-/

namespace A016041.P7170142328196244375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P7170142328196244375

/-! ## A016041.P9705609943359456740

`p?[A180204(n+1)]`
-/

namespace A016041.P9705609943359456740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P9705609943359456740

/-! ## A016041.P110510210069565403

`p?[A329419(n+1)]`
-/

namespace A016041.P110510210069565403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P110510210069565403

/-! ## A016041.P15029231915253122965

`p?[A342572(n+1)]`
-/

namespace A016041.P15029231915253122965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P15029231915253122965

/-! ## A016041.P13219339688217446571

`p?[A376857(n+1)]`
-/

namespace A016041.P13219339688217446571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P13219339688217446571

/-! ## A016041.P7967251343762193402

`p?[A044918(n+3)]`
-/

namespace A016041.P7967251343762193402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P7967251343762193402

/-! ## A016041.P12813619467052657328

`p?[A161604(n+3)]`
-/

namespace A016041.P12813619467052657328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P12813619467052657328

/-! ## A016041.P16648373153301418002

`p?[∑[A164126(n+1)]]`
-/

namespace A016041.P16648373153301418002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P16648373153301418002

/-! ## A016041.P15626733985351619901

`p?[Δ[A206920(n+1)]]`
-/

namespace A016041.P15626733985351619901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P15626733985351619901

/-! ## A016041.P6428336824672280110

`p?[2*A044051(n+1)-1]`
-/

namespace A016041.P6428336824672280110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044051 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P6428336824672280110

/-! ## A016041.P710168693588361610

`p?[A048700(n+1)+A000038(n)]`
-/

namespace A016041.P710168693588361610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016041.P710168693588361610

/-! ## A016041.P7511854119772973140

`∩[A006995(n+1), A074832(n+1)]`
-/

namespace A016041.P7511854119772973140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A016041.P7511854119772973140

/-! ## A016041.P11463316360899855706

`∩[A044918(n+1), A074832(n+1)]`
-/

namespace A016041.P11463316360899855706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A016041.P11463316360899855706

/-! ## A016041.P1457590468635158392

`∩[A057890(n+1), A074832(n+1)]`
-/

namespace A016041.P1457590468635158392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A016041.P1457590468635158392

/-! ## A016041.P5352625553795073166

`∩[A074832(n+1), A161604(n+1)]`
-/

namespace A016041.P5352625553795073166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A016041.P5352625553795073166

/-! ## A016041.P10704638345397393074

`∩[A074832(n+1), A163410(n+1)]`
-/

namespace A016041.P10704638345397393074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A016041.P10704638345397393074

/-! ## A016041.P9395786055302845500

`∩[A074832(n+1), A180204(n+1)]`
-/

namespace A016041.P9395786055302845500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A016041.P9395786055302845500

/-!
# A016042: Inverse of 2033rd cyclotomic polynomial.

The programs for A016042, there is no canonical definition to state claims against.
-/

/-! ## A016042.P4763529327756074401

`A015658(∑[A275949(A335816(n+1))])`
-/

namespace A016042.P4763529327756074401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 (A335816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016042.P4763529327756074401

/-! ## A016042.P4291541069293821534

`C(2, ∑[A326548(n)])`
-/

namespace A016042.P4291541069293821534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326548 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016042.P4291541069293821534

/-! ## A016042.P9506384940834438355

`C(n, ∑[A326540(n)])`
-/

namespace A016042.P9506384940834438355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016042.P9506384940834438355

/-! ## A016042.P17716548767848969344

`C(A000002(n+1), A326548(n))`
-/

namespace A016042.P17716548767848969344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000002 (n + 1)).toNat (A326548 n).toNat

end

end A016042.P17716548767848969344

/-! ## A016042.P721606903604241806

`A000007(A326632(floor((n+1)/2)))`
-/

namespace A016042.P721606903604241806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A326632 ⌊(n + 1 : ℚ) / 2⌋.toNat).toNat

end

end A016042.P721606903604241806

/-! ## A016042.P1080890785181107890

`C(A079359(n+1), A326548(n)²)`
-/

namespace A016042.P1080890785181107890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079359 (n + 1)).toNat (A326548 n ^ 2).toNat

end

end A016042.P1080890785181107890

/-! ## A016042.P17982229756885746063

`C(A194832(n+1), A326548(n)²)`
-/

namespace A016042.P17982229756885746063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194832 (n + 1)).toNat (A326548 n ^ 2).toNat

end

end A016042.P17982229756885746063

/-! ## A016042.P10035972569840764639

`C(2, A326543(A160413(2*(n+2))))`
-/

namespace A016042.P10035972569840764639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326543 (A160413 (2 * (n + 2))).toNat).toNat

end

end A016042.P10035972569840764639

/-! ## A016042.P2164368096693127105

`C(A174965(∏{p}[n+1, 5%(#+4)]), A326548(n))`
-/

namespace A016042.P2164368096693127105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A174965 (∏ p ∈ Nat.primeFactors (f1 n), 5 % (p + 4))).toNat (A326548 n).toNat

end

end A016042.P2164368096693127105

/-! ## A016042.P17200354862805049608

`C(A257511(A154435(n)), A326548(n))`
-/

namespace A016042.P17200354862805049608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257511 (A154435 n).toNat).toNat (A326548 n).toNat

end

end A016042.P17200354862805049608

/-! ## A016042.P2454594013833323993

`C(A257511(A001082(n+1)), A326548(n))`
-/

namespace A016042.P2454594013833323993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257511 (A001082 (n + 1)).toNat).toNat (A326548 n).toNat

end

end A016042.P2454594013833323993

/-! ## A016042.P3653670753517997384

`C(A120390(A286625(n+1)), A326540(n))`
-/

namespace A016042.P3653670753517997384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A120390 (A286625 (n + 1)).toNat).toNat (A326540 n).toNat

end

end A016042.P3653670753517997384

/-! ## A016042.P13680826567094703602

`C(A351205(A338912(2*(n+2))), A326540(n))`
-/

namespace A016042.P13680826567094703602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351205 (A338912 (2 * (n + 2))).toNat).toNat (A326540 n).toNat

end

end A016042.P13680826567094703602

/-! ## A016042.P16644769904181277534

`C(2, ∑[A326546(n)])`
-/

namespace A016042.P16644769904181277534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016042.P16644769904181277534

/-! ## A016042.P16897615683109899117

`C(A193231(n+2), A326540(A193231(n+2)))`
-/

namespace A016042.P16897615683109899117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A193231 (n + 2)).toNat (A326540 (A193231 (n + 2)).toNat).toNat

end

end A016042.P16897615683109899117

/-!
# A016043: 2^(2^n) +- 1 without repeats.

The programs for A016043, there is no canonical definition to state claims against.
-/

/-! ## A016043.P1746800482942250896

`A001317(eq[0, A164089(n+1)])`
-/

namespace A016043.P1746800482942250896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A016043.P1746800482942250896

/-! ## A016043.P4952715743607792348

`∪[A051179(n)+2, A051179(n)]`
-/

namespace A016043.P4952715743607792348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051179 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051179 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016043.P4952715743607792348

/-! ## A016043.P2093493201843288792

`A001317(record[A028242(A035327(n))])`
-/

namespace A016043.P2093493201843288792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A016043.P2093493201843288792

/-! ## A016043.P16276686168643368792

`A000079(A060546(n))-A165326(n)`
-/

namespace A016043.P16276686168643368792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A060546 n).toNat - A165326 n

end

end A016043.P16276686168643368792

/-! ## A016043.P7484074199596959386

`A086341(A075427(n)%A003945(n))`
-/

namespace A016043.P7484074199596959386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 (Int.tmod (A075427 n) (A003945 n)).toNat

end

end A016043.P7484074199596959386

/-!
# A016044: Inverse of 2035th cyclotomic polynomial.

The programs for A016044, there is no canonical definition to state claims against.
-/

/-! ## A016044.P6042401457849744045

`A016264(n)^A056594(n*A185284(n))`
-/

namespace A016044.P6042401457849744045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016264 n : ℚ) ^ (A056594 ((n : ℤ) * A185284 n).toNat : ℤ)

end

end A016044.P6042401457849744045

/-! ## A016044.P260112951321373141

`A016264(n)%A182744(n+1)`
-/

namespace A016044.P260112951321373141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016264 n) (A182744 (n + 1))

end

end A016044.P260112951321373141

/-! ## A016044.P10466609523106538061

`A016264(n)*A094853(n+1)`
-/

namespace A016044.P10466609523106538061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016264 n * A094853 (n + 1)

end

end A016044.P10466609523106538061

/-! ## A016044.P11837082652436214568

`A016264(n)%A037300(n)`
-/

namespace A016044.P11837082652436214568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016264 n) (A037300 n)

end

end A016044.P11837082652436214568

/-!
# A016045: a(n) is the smallest prime p(k) such that the gaps between the primes p(k), p(k+1), p(k+2), ..., p(k+n) are 2, 4, 6, ... 2n.

The programs for A016045, there is no canonical definition to state claims against.
-/

/-! ## A016045.P11894316875390007222

`A349121(or(n+1, A343873(n)))`
-/

namespace A016045.P11894316875390007222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349121 (Int.lor (n + 1 : ℤ) (A343873 n)).toNat

end

end A016045.P11894316875390007222

/-! ## A016045.P16912949893510801399

`A349121(A006928(3*(n+1))+n)`
-/

namespace A016045.P16912949893510801399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349121 (A006928 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A016045.P16912949893510801399

/-! ## A016045.P8488407081063326141

`A349121(A037802(n^(n%2)+1)+n+1)`
-/

namespace A016045.P8488407081063326141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349121 (A037802 (n ^ (n % 2) + 1) + (n + 1 : ℤ)).toNat

end

end A016045.P8488407081063326141

/-! ## A016045.P3194279153335932855

`A349121(A173441(n+1)+n)`
-/

namespace A016045.P3194279153335932855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349121 (A173441 (n + 1) + (n : ℤ)).toNat

end

end A016045.P3194279153335932855

/-! ## A016045.P5571792341402887853

`A349121(A327156(n+1)+n)`
-/

namespace A016045.P5571792341402887853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349121 (A327156 (n + 1) + (n : ℤ)).toNat

end

end A016045.P5571792341402887853

/-!
# A016046: First occurrence of exactly n identical terms in A007448.

The programs for A016046, there is no canonical definition to state claims against.
-/

/-! ## A016046.P11340045406099719075

`A058361(n+1)%C(n+8, 8)+n+1`
-/

namespace A016046.P11340045406099719075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058361 (n + 1)) (Nat.choose (n + 8) 8 : ℤ) + (n + 1 : ℤ)

end

end A016046.P11340045406099719075

/-! ## A016046.P12483751911845983312

`A058361(n+1)*A178334(n)+1+n`
-/

namespace A016046.P12483751911845983312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058361 (n + 1) * A178334 n + 1 + (n : ℤ)

end

end A016046.P12483751911845983312

/-! ## A016046.P7312566529318144479

`A058361(n+1)%A058390(n)+1+n`
-/

namespace A016046.P7312566529318144479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058361 (n + 1)) (A058390 n) + 1 + (n : ℤ)

end

end A016046.P7312566529318144479

/-! ## A016046.P1926534248726745786

`A001221(A000961(n+1))*A058361(n+1)+n+1`
-/

namespace A016046.P1926534248726745786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A058361 (n + 1) + (n + 1 : ℤ)

end

end A016046.P1926534248726745786

/-! ## A016046.P15270989619293366695

`A007448(A058361(n+1)*A178334(n))`
-/

namespace A016046.P15270989619293366695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (A058361 (n + 1) * A178334 n).toNat

end

end A016046.P15270989619293366695

/-!
# A016047: Smallest prime factor of Mersenne numbers 2^p-1, where p is prime.

The programs for A016047, there is no canonical definition to state claims against.
-/

/-! ## A016047.P44620226174024339

`A049479(p?[comp[n²]])`
-/

namespace A016047.P44620226174024339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A016047.P44620226174024339

/-! ## A016047.P2260991550216798631

`A112927(p?[comp[n²]])`
-/

namespace A016047.P2260991550216798631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A016047.P2260991550216798631

/-! ## A016047.P5298690836437193170

`A049479(A000040(n+1))`
-/

namespace A016047.P5298690836437193170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (A000040 (n + 1)).toNat

end

end A016047.P5298690836437193170

/-! ## A016047.P17039422224813551187

`A049479(A008578(n+2))`
-/

namespace A016047.P17039422224813551187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (A008578 (n + 2)).toNat

end

end A016047.P17039422224813551187

/-! ## A016047.P14907727018669093992

`A049479(record[A006530(n+2)])`
-/

namespace A016047.P14907727018669093992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A016047.P14907727018669093992

/-! ## A016047.P5916840633212795605

`A049479(record[A020639(n+2)])`
-/

namespace A016047.P5916840633212795605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A016047.P5916840633212795605

/-! ## A016047.P7152835537424827535

`A112927(record[A006530(n+2)])`
-/

namespace A016047.P7152835537424827535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A016047.P7152835537424827535

/-! ## A016047.P16531802314566011457

`A186522(record[A006530(n+2)])`
-/

namespace A016047.P16531802314566011457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186522 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A016047.P16531802314566011457

/-! ## A016047.P11700499125360089857

`A212953(record[A006530(n+2)])`
-/

namespace A016047.P11700499125360089857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A016047.P11700499125360089857

/-! ## A016047.P18332743485219280783

`A186522(A100484(n+1)/2)`
-/

namespace A016047.P18332743485219280783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186522 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A016047.P18332743485219280783

/-!
# A016048: Least k such that (2*p_n)*k + 1 | Mersenne(p_n), p_n = n-th prime, n >= 2.

The programs for A016048, there is no canonical definition to state claims against.
-/

/-! ## A016048.P16408194840348849945

`A186283(p?[2*n+1])/2`
-/

namespace A016048.P16408194840348849945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A016048.P16408194840348849945

/-! ## A016048.P3120798101728209212

`ceil(A186283(p?[xor(1, n+1)+1])/2)`
-/

namespace A016048.P3120798101728209212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌉

end

end A016048.P3120798101728209212

/-! ## A016048.P7046899680173766451

`ceil(A186283(p?[n%3+n+1])/2)`
-/

namespace A016048.P7046899680173766451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌉

end

end A016048.P7046899680173766451

/-! ## A016048.P10182489841429002949

`A186283(A065091(n+1))/2`
-/

namespace A016048.P10182489841429002949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186283 (A065091 (n + 1)).toNat : ℚ) / 2

end

end A016048.P10182489841429002949

/-! ## A016048.P13468982025160239896

`A186283(A000040(n+2))/2`
-/

namespace A016048.P13468982025160239896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186283 (A000040 (n + 2)).toNat : ℚ) / 2

end

end A016048.P13468982025160239896

/-!
# A016049: Inverse of 2040th cyclotomic polynomial.

The programs for A016049, there is no canonical definition to state claims against.
-/

/-! ## A016049.P13835467399206615672

`A015029(lcm(2, n)/2)`
-/

namespace A016049.P13835467399206615672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A016049.P13835467399206615672

/-!
# A016050: 

The programs for A016050, there is no canonical definition to state claims against.
-/

/-! ## A016050.P13882366093269210817

`A000045(C(2, A326595(n)))`
-/

namespace A016050.P13882366093269210817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A326595 n).toNat)

end

end A016050.P13882366093269210817

/-! ## A016050.P1064921992437058085

`C(A003842(n), A326595(n))`
-/

namespace A016050.P1064921992437058085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003842 n).toNat (A326595 n).toNat

end

end A016050.P1064921992437058085

/-! ## A016050.P12556518116045184163

`C(A306734(n), A326632(n))`
-/

namespace A016050.P12556518116045184163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A306734 n).toNat (A326632 n).toNat

end

end A016050.P12556518116045184163

/-! ## A016050.P1696542321907606426

`4-A055642(A376538(n+4))`
-/

namespace A016050.P1696542321907606426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A055642 (A376538 (n + 4)).toNat

end

end A016050.P1696542321907606426

/-! ## A016050.P12187089533192093389

`C(A324883(2*n+3)+1, A326632(n))`
-/

namespace A016050.P12187089533192093389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324883 (2 * n + 3) + 1).toNat (A326632 n).toNat

end

end A016050.P12187089533192093389

/-! ## A016050.P8355771424624950726

`C(A007424(A070296(n)), A326632(n))`
-/

namespace A016050.P8355771424624950726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007424 (A070296 n).toNat).toNat (A326632 n).toNat

end

end A016050.P8355771424624950726

/-! ## A016050.P7557014566068930665

`C(A374740(A245710(n)), A326595(n))`
-/

namespace A016050.P7557014566068930665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A374740 (A245710 n).toNat).toNat (A326595 n).toNat

end

end A016050.P7557014566068930665

/-! ## A016050.P12775760801507756473

`C(A003842(A139264(n+1)), A026816(n))`
-/

namespace A016050.P12775760801507756473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003842 (A139264 (n + 1)).toNat).toNat (A026816 n).toNat

end

end A016050.P12775760801507756473

/-! ## A016050.P9409338642633432821

`C(A008963(A008289(n+1)), A326632(n))`
-/

namespace A016050.P9409338642633432821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008963 (A008289 (n + 1)).toNat).toNat (A326632 n).toNat

end

end A016050.P9409338642633432821

/-! ## A016050.P13162377074547084907

`A124767(C(A008289(n+1), A326632(n)))`
-/

namespace A016050.P13162377074547084907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Nat.choose (A008289 (n + 1)).toNat (A326632 n).toNat)

end

end A016050.P13162377074547084907

/-! ## A016050.P11567619818406188028

`C(A124767(A138121(n+1)), A326632(n))`
-/

namespace A016050.P11567619818406188028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124767 (A138121 (n + 1)).toNat).toNat (A326632 n).toNat

end

end A016050.P11567619818406188028

/-! ## A016050.P14582834965438988414

`C(A211992(A069734(n+1)), A326595(n))`
-/

namespace A016050.P14582834965438988414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A211992 (A069734 (n + 1)).toNat).toNat (A326595 n).toNat

end

end A016050.P14582834965438988414

/-! ## A016050.P17124799596860623366

`C(A306239(A000720(n+1)), A326595(n))`
-/

namespace A016050.P17124799596860623366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A306239 (A000720 (n + 1)).toNat).toNat (A326595 n).toNat

end

end A016050.P17124799596860623366

/-! ## A016050.P15550542132136666716

`A372555(C(A334732(n+1), A326595(n)))`
-/

namespace A016050.P15550542132136666716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372555 (Nat.choose (A334732 (n + 1)).toNat (A326595 n).toNat)

end

end A016050.P15550542132136666716

/-! ## A016050.P968548186805249137

`A000081(C(A112798(n+2), A326595(n)))`
-/

namespace A016050.P968548186805249137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (Nat.choose (A112798 (n + 2)).toNat (A326595 n).toNat)

end

end A016050.P968548186805249137

/-! ## A016050.P7500717353839013464

`C(A014963(A182873(n+2)), A326595(n))`
-/

namespace A016050.P7500717353839013464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A182873 (n + 2)).toNat).toNat (A326595 n).toNat

end

end A016050.P7500717353839013464

/-! ## A016050.P10268184926315661364

`C(A000688(A372555(3*n+2)), A326595(n))`
-/

namespace A016050.P10268184926315661364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000688 (A372555 (3 * n + 2)).toNat).toNat (A326595 n).toNat

end

end A016050.P10268184926315661364

/-! ## A016050.P577777196884403261

`C(A055874(A030431(2*n+1)), A049987(n+1))`
-/

namespace A016050.P577777196884403261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055874 (A030431 (2 * n + 1)).toNat).toNat (A049987 (n + 1)).toNat

end

end A016050.P577777196884403261

/-!
# A016051: Numbers of the form 9*k+3 or 9*k+6.

The programs for A016051, the canonical program `A016051.P6662491633930970691` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016051 has offset 1).

The definition of A016051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016051.P6662491633930970691

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=6, a(2)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016051

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P6662491633930970691.Spec : Prop :=
  ∀ n, P6662491633930970691.a n = A016051 (n + 1)

theorem P6662491633930970691.correct : P6662491633930970691.Spec := by
  intro n
  simp only [A016051, Nat.add_sub_cancel]

end A016051

/-! ## A016051.P8900667860885125722

`3*A001651(n+1)`
-/

namespace A016051.P8900667860885125722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001651 (n + 1)

end

end A016051.P8900667860885125722

namespace A016051

/-- `3*A001651(n+1)` -/
def P8900667860885125722.Spec : Prop :=
  ∀ n, P8900667860885125722.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P12764860160536477080

`3*comp[3*n]`
-/

namespace A016051.P12764860160536477080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A016051.P12764860160536477080

namespace A016051

/-- `3*comp[3*n]` -/
def P12764860160536477080.Spec : Prop :=
  ∀ n, (P12764860160536477080.a n : ℤ) = A016051 (n + 1)

end A016051

/-! ## A016051.P4423718597895505302

`record[lcm(3, n+1)]`
-/

namespace A016051.P4423718597895505302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016051.P4423718597895505302

namespace A016051

/-- `record[lcm(3, n+1)]` -/
def P4423718597895505302.Spec : Prop :=
  ∀ n, (P4423718597895505302.a n : ℤ) = A016051 (n + 1)

end A016051

/-! ## A016051.P13178977177892263641

`comp[lcm(n, gcd(3, n)²)]`
-/

namespace A016051.P13178977177892263641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.gcd 3 n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A016051.P13178977177892263641

namespace A016051

/-- `comp[lcm(n, gcd(3, n)²)]` -/
def P13178977177892263641.Spec : Prop :=
  ∀ n, (P13178977177892263641.a n : ℤ) = A016051 (n + 1)

end A016051

/-! ## A016051.P7964072629727716891

`a(n-2)+9` with `a(0)=3, a(1)=6`
-/

namespace A016051.P7964072629727716891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 2) + 9

end

end A016051.P7964072629727716891

namespace A016051

/-- `a(n-2)+9` -/
def P7964072629727716891.Spec : Prop :=
  ∀ n, (P7964072629727716891.a n : ℤ) = A016051 (n + 1)

end A016051

/-! ## A016051.P13405968680601679039

`record[lcm(9, 1-n)/3]`
-/

namespace A016051.P13405968680601679039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 9 (1 - (n : ℤ)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016051.P13405968680601679039

namespace A016051

/-- `record[lcm(9, 1-n)/3]` -/
def P13405968680601679039.Spec : Prop :=
  ∀ n, P13405968680601679039.a n = (A016051 (n + 1) : ℚ)

end A016051

/-! ## A016051.P7043490264156766591

`∑[9-a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A016051.P7043490264156766591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016051.P7043490264156766591

namespace A016051

/-- `∑[9-a(n-1)]` -/
def P7043490264156766591.Spec : Prop :=
  ∀ n, P7043490264156766591.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P7470134516956408217

`9*n-a(n-1)` with `a(0)=3`
-/

namespace A016051.P7470134516956408217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (9 * n : ℤ) - a (n - 1)

end

end A016051.P7470134516956408217

namespace A016051

/-- `9*n-a(n-1)` -/
def P7470134516956408217.Spec : Prop :=
  ∀ n, P7470134516956408217.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P9721678957615631009

`record[n+3-dr(n^5)]`
-/

namespace A016051.P9721678957615631009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 5 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016051.P9721678957615631009

namespace A016051

/-- `record[n+3-dr(n^5)]` -/
def P9721678957615631009.Spec : Prop :=
  ∀ n, P9721678957615631009.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P8186960257294092276

`9-floor(-a(n-2))` with `a(0)=3, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A016051.P8186960257294092276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  9 - (-a (n - 2))

end

end A016051.P8186960257294092276

namespace A016051

/-- `9-floor(-a(n-2))` -/
def P8186960257294092276.Spec : Prop :=
  ∀ n, P8186960257294092276.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P2930230343905271595

`9-ceil(-a(n-2))` with `a(0)=3, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A016051.P2930230343905271595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  9 - (-a (n - 2))

end

end A016051.P2930230343905271595

namespace A016051

/-- `9-ceil(-a(n-2))` -/
def P2930230343905271595.Spec : Prop :=
  ∀ n, P2930230343905271595.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P15887277375889870171

`9-round(-a(n-2))` with `a(0)=3, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A016051.P15887277375889870171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  9 - (-a (n - 2))

end

end A016051.P15887277375889870171

namespace A016051

/-- `9-round(-a(n-2))` -/
def P15887277375889870171.Spec : Prop :=
  ∀ n, P15887277375889870171.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P3618458141140334608

`eq[gcd(9, 2*n)+n, n+3]`
-/

namespace A016051.P3618458141140334608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (2 * n) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A016051.P3618458141140334608

namespace A016051

/-- `eq[gcd(9, 2*n)+n, n+3]` -/
def P3618458141140334608.Spec : Prop :=
  ∀ n, (P3618458141140334608.a n : ℤ) = A016051 (n + 1)

end A016051

/-! ## A016051.P10023067777488452776

`record[3*(n+1-val(n+1, 3))]`
-/

namespace A016051.P10023067777488452776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 1) 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016051.P10023067777488452776

namespace A016051

/-- `record[3*(n+1-val(n+1, 3))]` -/
def P10023067777488452776.Spec : Prop :=
  ∀ n, P10023067777488452776.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P644107846685199977

`∑[A040007(n)]`
-/

namespace A016051.P644107846685199977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016051.P644107846685199977

namespace A016051

/-- `∑[A040007(n)]` -/
def P644107846685199977.Spec : Prop :=
  ∀ n, P644107846685199977.a n = A016051 (n + 1)

end A016051

/-! ## A016051.P7759407096612031051

`∑[dr(A040133(n))]`
-/

namespace A016051.P7759407096612031051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040133 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016051.P7759407096612031051

namespace A016051

/-- `∑[dr(A040133(n))]` -/
def P7759407096612031051.Spec : Prop :=
  ∀ n, (P7759407096612031051.a n : ℤ) = A016051 (n + 1)

end A016051

/-! ## A016051.P7928913447261043808

`∑[dr(A040139(n))]`
-/

namespace A016051.P7928913447261043808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040139 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016051.P7928913447261043808

namespace A016051

/-- `∑[dr(A040139(n))]` -/
def P7928913447261043808.Spec : Prop :=
  ∀ n, (P7928913447261043808.a n : ℤ) = A016051 (n + 1)

end A016051

/-!
# A016052: a(1) = 3; for n >= 1, a(n+1) = a(n) + sum of its digits.

The programs for A016052, the canonical program `A016052.P16387825715003404480` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016052 has offset 1).

The definition of A016052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016052.P16387825715003404480

`A062028(a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A016052

/-- `A062028(a(n-1))` -/
def P16387825715003404480.Spec : Prop :=
  ∀ n, P16387825715003404480.a n = A016052 (n + 1)

theorem P16387825715003404480.correct : P16387825715003404480.Spec := by
  intro n
  simp only [A016052, Nat.add_sub_cancel]

end A016052

/-! ## A016052.P15198096010058550896

`3*A230286(n+1)`
-/

namespace A016052.P15198096010058550896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230286 (n + 1)

end

end A016052.P15198096010058550896

namespace A016052

/-- `3*A230286(n+1)` -/
def P15198096010058550896.Spec : Prop :=
  ∀ n, P15198096010058550896.a n = A016052 (n + 1)

end A016052

/-! ## A016052.P16233079957959013986

`A123171(n+1)%A027775(n)`
-/

namespace A016052.P16233079957959013986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123171 (n + 1)) (A027775 (n + 14))

end

end A016052.P16233079957959013986

namespace A016052

/-- `A123171(n+1)%A027775(n)` -/
def P16233079957959013986.Spec : Prop :=
  ∀ n, P16233079957959013986.a n = A016052 (n + 1)

end A016052

/-! ## A016052.P17736339967724383914

`lcm(A174971(n), A230286(n+1))`
-/

namespace A016052.P17736339967724383914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174971 n) (A230286 (n + 1))

end

end A016052.P17736339967724383914

namespace A016052

/-- `lcm(A174971(n), A230286(n+1))` -/
def P17736339967724383914.Spec : Prop :=
  ∀ n, (P17736339967724383914.a n : ℤ) = A016052 (n + 1)

end A016052

/-! ## A016052.P11315374984737508081

`∑[A084228(n+2)]+1`
-/

namespace A016052.P11315374984737508081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A016052.P11315374984737508081

namespace A016052

/-- `∑[A084228(n+2)]+1` -/
def P11315374984737508081.Spec : Prop :=
  ∀ n, P11315374984737508081.a n = A016052 (n + 1)

end A016052

/-! ## A016052.P91660628422416077

`A008486(A230286(n+1))`
-/

namespace A016052.P91660628422416077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A230286 (n + 1)).toNat

end

end A016052.P91660628422416077

namespace A016052

/-- `A008486(A230286(n+1))` -/
def P91660628422416077.Spec : Prop :=
  ∀ n, P91660628422416077.a n = A016052 (n + 1)

end A016052

/-! ## A016052.P14632961664690499188

`A160939(a(n-1)+1)-1` with `a(0)=3`
-/

namespace A016052.P14632961664690499188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A016052.P14632961664690499188

namespace A016052

/-- `A160939(a(n-1)+1)-1` -/
def P14632961664690499188.Spec : Prop :=
  ∀ n, P14632961664690499188.a n = A016052 (n + 1)

end A016052

/-! ## A016052.P15814866596479130366

`A007953(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A016052.P15814866596479130366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A016052.P15814866596479130366

namespace A016052

/-- `A007953(a(n-1))+a(n-1)` -/
def P15814866596479130366.Spec : Prop :=
  ∀ n, P15814866596479130366.a n = A016052 (n + 1)

end A016052

/-! ## A016052.P8760413302440054841

`eq[2, A155043(A036233(n+1))]+1`
-/

namespace A016052.P8760413302440054841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A036233 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A016052.P8760413302440054841

namespace A016052

/-- `eq[2, A155043(A036233(n+1))]+1` -/
def P8760413302440054841.Spec : Prop :=
  ∀ n, (P8760413302440054841.a n : ℤ) = A016052 (n + 1)

end A016052

/-! ## A016052.P3158883256158609021

`and(A093069(n+1), A123171(n+1))`
-/

namespace A016052.P3158883256158609021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093069 (n + 1)) (A123171 (n + 1))

end

end A016052.P3158883256158609021

namespace A016052

/-- `and(A093069(n+1), A123171(n+1))` -/
def P3158883256158609021.Spec : Prop :=
  ∀ n, P3158883256158609021.a n = A016052 (n + 1)

end A016052

/-!
# A016054: Numbers n such that (13^n - 1)/12 is prime.

The programs for A016054, there is no canonical definition to state claims against.
-/

/-! ## A016054.P5160568515066497483

`A146972(A022630(n)+1)`
-/

namespace A016054.P5160568515066497483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146972 (A022630 n + 1).toNat

end

end A016054.P5160568515066497483

/-!
# A016055: Inverse of 2046th cyclotomic polynomial.

The programs for A016055, there is no canonical definition to state claims against.
-/

/-! ## A016055.P7812258890468992378

`A015032(n)*A033999(n)`
-/

namespace A016055.P7812258890468992378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015032 n * A033999 n

end

end A016055.P7812258890468992378

/-!
# A016056: Inverse of 2047th cyclotomic polynomial.

The programs for A016056, there is no canonical definition to state claims against.
-/

/-! ## A016056.P899898642639065901

`∑[A121373(A050944(2*n+5)+1)]+1`
-/

namespace A016056.P899898642639065901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A050944 (2 * n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A016056.P899898642639065901

/-! ## A016056.P15921994555027443132

`A010054(floor(sqrt(n+1)-root(n+1, 3))^6)`
-/

namespace A016056.P15921994555027443132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (⌊Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ ^ 6).toNat

end

end A016056.P15921994555027443132

/-! ## A016056.P839547595380172470

`A121373(floor(sqrt(n+1)-root(n+1, 3))^6)`
-/

namespace A016056.P839547595380172470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (⌊Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ ^ 6).toNat

end

end A016056.P839547595380172470

/-! ## A016056.P9835789506441173071

`A192490(7^floor(sqrt(n+1)-root(n+1, 3)))`
-/

namespace A016056.P9835789506441173071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (⌊Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ : ℤ))).toNat

end

end A016056.P9835789506441173071

/-! ## A016056.P4215517370583194420

`A393067(10^floor(sqrt(n+1)-root(n+1, 3)))`
-/

namespace A016056.P4215517370583194420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393067 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (⌊Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ : ℤ))).toNat

end

end A016056.P4215517370583194420

/-! ## A016056.P16099824477016906492

`A353627(13^floor(sqrt(n+1)-root(n+1, 3)))`
-/

namespace A016056.P16099824477016906492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (⌊Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ : ℤ))).toNat

end

end A016056.P16099824477016906492

/-! ## A016056.P2193263217053877312

`A359590(13^floor(sqrt(n+1)-root(n+1, 3)))`
-/

namespace A016056.P2193263217053877312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (⌊Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ : ℤ))).toNat

end

end A016056.P2193263217053877312

/-! ## A016056.P12710390525304785883

`A000007(∑[∑[A294889(n+1)]])`
-/

namespace A016056.P12710390525304785883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016056.P12710390525304785883

/-! ## A016056.P256040401657554775

`and(char[A073200(n)], A263725(n+2))`
-/

namespace A016056.P256040401657554775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A263725 (n + 2))

end

end A016056.P256040401657554775

/-! ## A016056.P79314260474157970

`A010052(2*A326683(n))`
-/

namespace A016056.P79314260474157970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * A326683 n).toNat

end

end A016056.P79314260474157970

/-!
# A016057: Pseudo-powers to base 3: numbers k that are not powers of 3 such that k divides 2^k + 1.

The programs for A016057, there is no canonical definition to state claims against.
-/

/-! ## A016057.P6230227518657978778

`filter[A006521(n+1), A355447(#)]`
-/

namespace A016057.P6230227518657978778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A016057.P6230227518657978778

/-! ## A016057.P2056898580563070787

`filter[A006521(n+2), A354108(#)]`
-/

namespace A016057.P2056898580563070787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A016057.P2056898580563070787

/-! ## A016057.P12893745422975301081

`filter[A289257(n+1), A355447(#)]`
-/

namespace A016057.P12893745422975301081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A016057.P12893745422975301081

/-! ## A016057.P10564983271107350269

`filter[A289257(n+2), A354108(#)]`
-/

namespace A016057.P10564983271107350269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289257 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A016057.P10564983271107350269

/-! ## A016057.P3069416920909315957

`filter[A006521(n+1), A065202(#)]`
-/

namespace A016057.P3069416920909315957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A016057.P3069416920909315957

/-!
# A016059: (s(n)+s(n+1))/6, where s()=A006521.

The programs for A016059, there is no canonical definition to state claims against.
-/

/-! ## A016059.P17929322114798174280

`(A015955(n+1)+A015955(n+2))/2`
-/

namespace A016059.P17929322114798174280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015955 (n + 1) + A015955 (n + 2) : ℚ) / 2

end

end A016059.P17929322114798174280

/-! ## A016059.P9659090799689493003

`A015955(n+1)+A014682(Δ[A015955(n+1)])`
-/

namespace A016059.P9659090799689493003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015955 (n + 1) + A014682 (f1 (n + 1) - f1 n).toNat

end

end A016059.P9659090799689493003

/-! ## A016059.P10527539753678253111

`A273943(Δ[A015955(n+1)])+A015955(n+1)`
-/

namespace A016059.P10527539753678253111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f1 (n + 1) - f1 n).toNat + A015955 (n + 1)

end

end A016059.P10527539753678253111

/-! ## A016059.P4376582627498224865

`A302042(Δ[A015955(n+1)])+A015955(n+1)`
-/

namespace A016059.P4376582627498224865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (f1 (n + 1) - f1 n).toNat + A015955 (n + 1)

end

end A016059.P4376582627498224865

/-! ## A016059.P4082758808181325278

`A332893(Δ[A015955(n+1)])+A015955(n+1)`
-/

namespace A016059.P4082758808181325278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (f1 (n + 1) - f1 n).toNat + A015955 (n + 1)

end

end A016059.P4082758808181325278

/-!
# A016060: (s(n)+s(n+1))/18, where s()=A006521.

The programs for A016060, there is no canonical definition to state claims against.
-/

/-! ## A016060.P9220839029221652830

`A016059(n+3)/3`
-/

namespace A016060.P9220839029221652830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016059 (n + 3) : ℚ) / 3

end

end A016060.P9220839029221652830

/-! ## A016060.P3409541236497018407

`a(n-1)*ratio[A016059(n+2)]` with `a(0)=2`
-/

namespace A016060.P3409541236497018407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016059 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A016060.P3409541236497018407

/-! ## A016060.P3383591652680076622

`∑[A047878(Δ[A016059(n+2)])]`
-/

namespace A016060.P3383591652680076622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016059 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016060.P3383591652680076622

/-! ## A016060.P5862734686267918990

`∑[A285870(Δ[A016059(n+2)])]`
-/

namespace A016060.P5862734686267918990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016059 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016060.P5862734686267918990

/-! ## A016060.P17645493258154894293

`A255588(A016059(n+3))`
-/

namespace A016060.P17645493258154894293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A016059 (n + 3)).toNat

end

end A016060.P17645493258154894293

/-!
# A016061: a(n) = n*(n+1)*(4*n+5)/6.

The programs for A016061, the canonical program `A016061.P9752934854176425144` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016061 has offset 0).

The definition of A016061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016061.P3615507280612132174

`n*(n+1)*(4*n+5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A016061.P3615507280612132174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((4 * n + 5 : ℚ) / 6))

end

end A016061.P3615507280612132174

namespace A016061

/-- `n*(n+1)*(4*n+5)/6` -/
def P3615507280612132174.Spec : Prop :=
  ∀ n, P3615507280612132174.a n = (A016061 n : ℚ)

end A016061

/-! ## A016061.P9752934854176425144

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=13, a(3)=34`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016061

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9752934854176425144.Spec : Prop :=
  ∀ n, P9752934854176425144.a n = A016061 n

theorem P9752934854176425144.correct : P9752934854176425144.Spec := by
  intro n
  simp only [A016061]

end A016061

/-! ## A016061.P15725024535171237571

`∑[C(Δ[n²], 2)]`
-/

namespace A016061.P15725024535171237571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016061.P15725024535171237571

namespace A016061

/-- `∑[C(Δ[n²], 2)]` -/
def P15725024535171237571.Spec : Prop :=
  ∀ n, (P15725024535171237571.a n : ℤ) = A016061 n

end A016061

/-! ## A016061.P7186843781237919767

`∑[∑[a(n-1)+4]]` with `a(0)=0, a(1)=3`
-/

namespace A016061.P7186843781237919767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016061.P7186843781237919767

namespace A016061

/-- `∑[∑[a(n-1)+4]]` -/
def P7186843781237919767.Spec : Prop :=
  ∀ n, (P7186843781237919767.a n : ℤ) = A016061 n

end A016061

/-! ## A016061.P1698618429469815930

`Δ[(n+1)*C(n+1, 3)]`
-/

namespace A016061.P1698618429469815930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016061.P1698618429469815930

namespace A016061

/-- `Δ[(n+1)*C(n+1, 3)]` -/
def P1698618429469815930.Spec : Prop :=
  ∀ n, P1698618429469815930.a n = A016061 n

end A016061

/-! ## A016061.P15334130396255957553

`4*C(n+2, 3)-∑[n]`
-/

namespace A016061.P15334130396255957553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 2) 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A016061.P15334130396255957553

namespace A016061

/-- `4*C(n+2, 3)-∑[n]` -/
def P15334130396255957553.Spec : Prop :=
  ∀ n, P15334130396255957553.a n = A016061 n

end A016061

/-! ## A016061.P7129872531869451562

`-∑[n*xor(2*n, -1)]`
-/

namespace A016061.P7129872531869451562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (2 * n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016061.P7129872531869451562

namespace A016061

/-- `-∑[n*xor(2*n, -1)]` -/
def P7129872531869451562.Spec : Prop :=
  ∀ n, P7129872531869451562.a n = A016061 n

end A016061

/-! ## A016061.P3381743751957700136

`∑[lcm(2, 2*n²)]+∑[n]`
-/

namespace A016061.P3381743751957700136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A016061.P3381743751957700136

namespace A016061

/-- `∑[lcm(2, 2*n²)]+∑[n]` -/
def P3381743751957700136.Spec : Prop :=
  ∀ n, (P3381743751957700136.a n : ℤ) = A016061 n

end A016061

/-! ## A016061.P17654850100278920403

`lcm(n, (n+1)²)-∑[n²]`
-/

namespace A016061.P17654850100278920403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A016061.P17654850100278920403

namespace A016061

/-- `lcm(n, (n+1)²)-∑[n²]` -/
def P17654850100278920403.Spec : Prop :=
  ∀ n, P17654850100278920403.a n = A016061 n

end A016061

/-! ## A016061.P11918535226992270885

`∑[1-∑[a(n-1)-4]]` with `a(0)=1`
-/

namespace A016061.P11918535226992270885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016061.P11918535226992270885

namespace A016061

/-- `∑[1-∑[a(n-1)-4]]` -/
def P11918535226992270885.Spec : Prop :=
  ∀ n, P11918535226992270885.a n = A016061 n

end A016061

/-! ## A016061.P16818787227842246265

`∑[2*n²]+C(n+1, 2)`
-/

namespace A016061.P16818787227842246265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) 2

end

end A016061.P16818787227842246265

namespace A016061

/-- `∑[2*n²]+C(n+1, 2)` -/
def P16818787227842246265.Spec : Prop :=
  ∀ n, (P16818787227842246265.a n : ℤ) = A016061 n

end A016061

/-! ## A016061.P13328985189331631315

`∑[C(2*n, 2)]+∑[2*n]`
-/

namespace A016061.P13328985189331631315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A016061.P13328985189331631315

namespace A016061

/-- `∑[C(2*n, 2)]+∑[2*n]` -/
def P13328985189331631315.Spec : Prop :=
  ∀ n, (P13328985189331631315.a n : ℤ) = A016061 n

end A016061

/-! ## A016061.P7110114297325019308

`a(n-1)+n*Δ[n²]` with `a(0)=0`
-/

namespace A016061.P7110114297325019308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A016061.P7110114297325019308

namespace A016061

/-- `a(n-1)+n*Δ[n²]` -/
def P7110114297325019308.Spec : Prop :=
  ∀ n, P7110114297325019308.a n = A016061 n

end A016061

/-! ## A016061.P17239602447972046265

`∑[2*n*or(1, 2*n)]/2`
-/

namespace A016061.P17239602447972046265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.lor 1 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A016061.P17239602447972046265

namespace A016061

/-- `∑[2*n*or(1, 2*n)]/2` -/
def P17239602447972046265.Spec : Prop :=
  ∀ n, P17239602447972046265.a n = (A016061 n : ℚ)

end A016061

/-! ## A016061.P13084695011335533456

`∑[2*n*xor(1, 2*n)]/2`
-/

namespace A016061.P13084695011335533456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.xor 1 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A016061.P13084695011335533456

namespace A016061

/-- `∑[2*n*xor(1, 2*n)]/2` -/
def P13084695011335533456.Spec : Prop :=
  ∀ n, P13084695011335533456.a n = (A016061 n : ℚ)

end A016061

/-! ## A016061.P5517866402490131460

`xor(1, xor(1, ∑[n*(2*n+1)]))`
-/

namespace A016061.P5517866402490131460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016061.P5517866402490131460

namespace A016061

/-- `xor(1, xor(1, ∑[n*(2*n+1)]))` -/
def P5517866402490131460.Spec : Prop :=
  ∀ n, (P5517866402490131460.a n : ℤ) = A016061 n

end A016061

/-! ## A016061.P4432888707811501877

`2*n²+a(n-1)+n` with `a(0)=0`
-/

namespace A016061.P4432888707811501877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * n ^ 2 + (a (n - 1) + n)

end

end A016061.P4432888707811501877

namespace A016061

/-- `2*n²+a(n-1)+n` -/
def P4432888707811501877.Spec : Prop :=
  ∀ n, (P4432888707811501877.a n : ℤ) = A016061 n

end A016061

/-! ## A016061.P6686285816757530511

`-∑[n*or(1, -(2*n+1))]`
-/

namespace A016061.P6686285816757530511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016061.P6686285816757530511

namespace A016061

/-- `-∑[n*or(1, -(2*n+1))]` -/
def P6686285816757530511.Spec : Prop :=
  ∀ n, P6686285816757530511.a n = A016061 n

end A016061

/-!
# A016062: Write down decimal expansion of Pi; divide up into chunks of minimal length so that chunks are increasing numbers and do not begin with 0.

The programs for A016062, there is no canonical definition to state claims against.
-/

/-! ## A016062.P3037185028138266227

`or(A000005(A171314(n+1)), A008829(n+1))`
-/

namespace A016062.P3037185028138266227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A171314 (n + 1)).toNat) (A008829 (n + 1))

end

end A016062.P3037185028138266227

/-!
# A016063: Inverse of 2054th cyclotomic polynomial.

The programs for A016063, there is no canonical definition to state claims against.
-/

/-! ## A016063.P14338454375108758002

`A016167(comp[Δ[A308797(2*(n+1))]])`
-/

namespace A016063.P14338454375108758002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308797 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016167 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016063.P14338454375108758002

/-! ## A016063.P14056952215385861677

`A014971(A048327(n))`
-/

namespace A016063.P14056952215385861677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014971 (A048327 n).toNat

end

end A016063.P14056952215385861677

/-! ## A016063.P5508950741868183242

`(-1)^n*A103451(A105960(n+2))`
-/

namespace A016063.P5508950741868183242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A103451 (A105960 (n + 2)).toNat

end

end A016063.P5508950741868183242

/-!
# A016064: Smallest side lengths of almost-equilateral Heronian triangles (sides are consecutive positive integers, area is a nonnegative integer).

The programs for A016064, the canonical program `A016064.P1719532868807128248` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016064 has offset 0).

The definition of A016064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016064.P1266339331793611549

`3+floor((2+sqrt(3))*a(n-1))` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A016064.P1266339331793611549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  3 + ⌊(2 + Real.sqrt (3 : ℝ)) * (a (n - 1) : ℝ)⌋

end

end A016064.P1266339331793611549

namespace A016064

/-- `3+floor((2+sqrt(3))*a(n-1))` -/
def P1266339331793611549.Spec : Prop :=
  ∀ n, P1266339331793611549.a n = A016064 n

end A016064

/-! ## A016064.P1719532868807128248

`4*a(n-1)-a(n-2)+2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016064

/-- `4*a(n-1)-a(n-2)+2` -/
def P1719532868807128248.Spec : Prop :=
  ∀ n, P1719532868807128248.a n = A016064 n

theorem P1719532868807128248.correct : P1719532868807128248.Spec := by
  intro n
  simp only [A016064]

end A016064

/-! ## A016064.P1090490556788833448

`A003500(n)-1`
-/

namespace A016064.P1090490556788833448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n - 1

end

end A016064.P1090490556788833448

namespace A016064

/-- `A003500(n)-1` -/
def P1090490556788833448.Spec : Prop :=
  ∀ n, P1090490556788833448.a n = A016064 n

end A016064

/-! ## A016064.P15373887582923105690

`2*A001075(n)-1`
-/

namespace A016064.P15373887582923105690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001075 n - 1

end

end A016064.P15373887582923105690

namespace A016064

/-- `2*A001075(n)-1` -/
def P15373887582923105690.Spec : Prop :=
  ∀ n, P15373887582923105690.a n = A016064 n

end A016064

/-! ## A016064.P9217952316676787179

`floor((2+sqrt(3))^n)`
-/

namespace A016064.P9217952316676787179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 + Real.sqrt (3 : ℝ)) ^ n⌋

end

end A016064.P9217952316676787179

namespace A016064

/-- `floor((2+sqrt(3))^n)` -/
def P9217952316676787179.Spec : Prop :=
  ∀ n, P9217952316676787179.a n = A016064 n

end A016064

/-! ## A016064.P17854372995248526232

`∑[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A016064.P17854372995248526232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016064.P17854372995248526232

namespace A016064

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]` -/
def P17854372995248526232.Spec : Prop :=
  ∀ n, P17854372995248526232.a n = A016064 n

end A016064

/-! ## A016064.P9217957347261390164

`2-(a(n-2)-4*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A016064.P9217957347261390164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (a (n - 2) - 4 * a (n - 1))

end

end A016064.P9217957347261390164

namespace A016064

/-- `2-(a(n-2)-4*a(n-1))` -/
def P9217957347261390164.Spec : Prop :=
  ∀ n, P9217957347261390164.a n = A016064 n

end A016064

/-! ## A016064.P4205351065813393693

`2*A092184(n)+1`
-/

namespace A016064.P4205351065813393693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092184 n + 1

end

end A016064.P4205351065813393693

namespace A016064

/-- `2*A092184(n)+1` -/
def P4205351065813393693.Spec : Prop :=
  ∀ n, P4205351065813393693.a n = A016064 n

end A016064

/-! ## A016064.P3103070705809545259

`2*A121401(n)-3`
-/

namespace A016064.P3103070705809545259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121401 n - 3

end

end A016064.P3103070705809545259

namespace A016064

/-- `2*A121401(n)-3` -/
def P3103070705809545259.Spec : Prop :=
  ∀ n, P3103070705809545259.a n = A016064 n

end A016064

/-! ## A016064.P14091175620038037548

`record[or(1, A174500(n+1))]`
-/

namespace A016064.P14091175620038037548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A174500 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016064.P14091175620038037548

namespace A016064

/-- `record[or(1, A174500(n+1))]` -/
def P14091175620038037548.Spec : Prop :=
  ∀ n, P14091175620038037548.a n = A016064 n

end A016064

/-! ## A016064.P7263730096410701830

`2*A002531(2*n)-1`
-/

namespace A016064.P7263730096410701830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002531 (2 * n) - 1

end

end A016064.P7263730096410701830

namespace A016064

/-- `2*A002531(2*n)-1` -/
def P7263730096410701830.Spec : Prop :=
  ∀ n, P7263730096410701830.a n = A016064 n

end A016064

/-! ## A016064.P6970247679669075883

`A321119(2*n)/2-1`
-/

namespace A016064.P6970247679669075883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321119 (2 * n) : ℚ) / 2 - 1

end

end A016064.P6970247679669075883

namespace A016064

/-- `A321119(2*n)/2-1` -/
def P6970247679669075883.Spec : Prop :=
  ∀ n, P6970247679669075883.a n = (A016064 n : ℚ)

end A016064

/-! ## A016064.P9197960291088735116

`2*A005246(2*n+1)-1`
-/

namespace A016064.P9197960291088735116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005246 (2 * n + 1) - 1

end

end A016064.P9197960291088735116

namespace A016064

/-- `2*A005246(2*n+1)-1` -/
def P9197960291088735116.Spec : Prop :=
  ∀ n, P9197960291088735116.a n = A016064 n

end A016064

/-! ## A016064.P17922641602640662291

`4*A133161(n)-a(n-1)` with `a(0)=1`
-/

namespace A016064.P17922641602640662291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A133161 n - a (n - 1)

end

end A016064.P17922641602640662291

namespace A016064

/-- `4*A133161(n)-a(n-1)` -/
def P17922641602640662291.Spec : Prop :=
  ∀ n, P17922641602640662291.a n = A016064 n

end A016064

/-! ## A016064.P7527660588495624307

`or(1, A174500(A004277(n)))`
-/

namespace A016064.P7527660588495624307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A174500 (A004277 n).toNat)

end

end A016064.P7527660588495624307

namespace A016064

/-- `or(1, A174500(A004277(n)))` -/
def P7527660588495624307.Spec : Prop :=
  ∀ n, P7527660588495624307.a n = A016064 n

end A016064

/-! ## A016064.P5428538626225848567

`A092184(n)+A001075(n)`
-/

namespace A016064.P5428538626225848567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n + A001075 n

end

end A016064.P5428538626225848567

namespace A016064

/-- `A092184(n)+A001075(n)` -/
def P5428538626225848567.Spec : Prop :=
  ∀ n, P5428538626225848567.a n = A016064 n

end A016064

/-! ## A016064.P10658123738502577208

`A077236(n)-A102206(n)`
-/

namespace A016064.P10658123738502577208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 n - A102206 n

end

end A016064.P10658123738502577208

namespace A016064

/-- `A077236(n)-A102206(n)` -/
def P10658123738502577208.Spec : Prop :=
  ∀ n, P10658123738502577208.a n = A016064 n

end A016064

/-! ## A016064.P5829577257067512998

`xor(A003500(n), A010705(n))`
-/

namespace A016064.P5829577257067512998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003500 n) (A010705 n)

end

end A016064.P5829577257067512998

namespace A016064

/-- `xor(A003500(n), A010705(n))` -/
def P5829577257067512998.Spec : Prop :=
  ∀ n, P5829577257067512998.a n = A016064 n

end A016064

/-!
# A016065: a(n) = Sum_{k=0..n} k!*(k+1)!.

The programs for A016065, there is no canonical definition to state claims against.
-/

/-! ## A016065.P17140747929676677848

`∑[(n+1)*n!²]`
-/

namespace A016065.P17140747929676677848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016065.P17140747929676677848

/-! ## A016065.P17288176458255895522

`∑[(n+1)!*n!]`
-/

namespace A016065.P17288176458255895522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016065.P17288176458255895522

/-! ## A016065.P18381076086038974075

`∑[∏[n^ceil(atan(n))+n]]`
-/

namespace A016065.P18381076086038974075
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016065.P18381076086038974075

/-! ## A016065.P14777998125283512766

`∑[(n+1)!²/(n+1)]`
-/

namespace A016065.P14777998125283512766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016065.P14777998125283512766

/-! ## A016065.P15383720674753119924

`∑[∏[(n+1)²]/(n+1)]`
-/

namespace A016065.P15383720674753119924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016065.P15383720674753119924

/-!
# A016066: 

The programs for A016066, there is no canonical definition to state claims against.
-/

/-! ## A016066.P11873199810465542203

`round(exp(exp(n)))`
-/

namespace A016066.P11873199810465542203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Real.exp (n : ℝ)))

end

end A016066.P11873199810465542203

/-!
# A016067: Consider all ways of writing a number as p+2m^2 where p is 1 or a prime and m >= 0; sequence gives numbers that are expressible in at least 2 more ways than any smaller number.

The programs for A016067, there is no canonical definition to state claims against.
-/

/-! ## A016067.P3070772814115619531

`record[A007697(n+7)%A228466(n+7)]`
-/

namespace A016067.P3070772814115619531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007697 (n + 7)) (A228466 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016067.P3070772814115619531

/-! ## A016067.P15159116104764286038

`record[gcd(A007697(n+7), A007697(n+8))]`
-/

namespace A016067.P15159116104764286038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007697 (n + 7)) (A007697 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016067.P15159116104764286038

/-! ## A016067.P323956083669352456

`A007697(eq[A007697(n+1), A228466(n+2)]+1)`
-/

namespace A016067.P323956083669352456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007697 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A016067.P323956083669352456

/-!
# A016068: Inverse of 2059th cyclotomic polynomial.

The programs for A016068, there is no canonical definition to state claims against.
-/

/-! ## A016068.P9297943094200020630

`A014902(A233583(n+1)-A008620(n))`
-/

namespace A016068.P9297943094200020630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 (A233583 (n + 1) - A008620 n).toNat

end

end A016068.P9297943094200020630

/-! ## A016068.P4561836673454117410

`A015952(xor(A304681(n+3), A327406(n+1)))`
-/

namespace A016068.P4561836673454117410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (Int.xor (A304681 (n + 3)) (A327406 (n + 1))).toNat

end

end A016068.P4561836673454117410

/-! ## A016068.P16736413750025800453

`A168182(A207901(n+3))`
-/

namespace A016068.P16736413750025800453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 (A207901 (n + 3)).toNat

end

end A016068.P16736413750025800453

/-! ## A016068.P11950230780369748762

`A247889(A348385(n+1)-1)`
-/

namespace A016068.P11950230780369748762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 (A348385 (n + 1) - 1).toNat

end

end A016068.P11950230780369748762

/-! ## A016068.P1535571004506352873

`A000007(C(A057142(n+1), 9))`
-/

namespace A016068.P1535571004506352873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A057142 (n + 1)).toNat 9)

end

end A016068.P1535571004506352873

/-! ## A016068.P1100358718061975965

`A010054(∏[A363742(n+1)+1])`
-/

namespace A016068.P1100358718061975965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363742 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016068.P1100358718061975965

/-! ## A016068.P8908949957712619214

`and(-A014123(A241067(n)), a(n-1))` with `a(0)=1`
-/

namespace A016068.P8908949957712619214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (-A014123 (A241067 n).toNat) (a (n - 1))

end

end A016068.P8908949957712619214

/-! ## A016068.P7734011852663033183

`A010054(A001844(n)-A083243(n+1))`
-/

namespace A016068.P7734011852663033183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A001844 n - A083243 (n + 1)).toNat

end

end A016068.P7734011852663033183

/-! ## A016068.P17768467437786983549

`A344618(and(A015952(n), A304681(n+3)))`
-/

namespace A016068.P17768467437786983549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (Int.land (A015952 n) (A304681 (n + 3))).toNat

end

end A016068.P17768467437786983549

/-! ## A016068.P16556535362899229751

`C(A183935(n+1), A326465(A260188(n+1)))`
-/

namespace A016068.P16556535362899229751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A183935 (n + 1)).toNat (A326465 (A260188 (n + 1)).toNat).toNat

end

end A016068.P16556535362899229751

/-!
# A016069: Numbers k such that k^2 contains exactly 2 distinct digits.

The programs for A016069, there is no canonical definition to state claims against.
-/

/-! ## A016069.P10628560935044063691

`sqrt(A018885(n+5))`
-/

namespace A016069.P10628560935044063691
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018885 (n + 5) : ℝ)

end

end A016069.P10628560935044063691

/-! ## A016069.P3975501286975287240

`sqrt(A235717(n+1))`
-/

namespace A016069.P3975501286975287240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235717 (n + 1) : ℝ)

end

end A016069.P3975501286975287240

/-! ## A016069.P15447717449816935539

`root(A235717(n+1), ratio[A000079(n)])`
-/

namespace A016069.P15447717449816935539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235717 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A016069.P15447717449816935539

/-! ## A016069.P14392529657064061020

`root(A235717(n+1), A020639(2*(n+1)))`
-/

namespace A016069.P14392529657064061020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235717 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A016069.P14392529657064061020

/-! ## A016069.P6618100680989145133

`root(A235717(n+1), A133265(or(n, -2)+3))`
-/

namespace A016069.P6618100680989145133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235717 (n + 1) : ℝ) ^ (1 / (A133265 (Int.lor (n : ℤ) (-2) + 3).toNat : ℝ))

end

end A016069.P6618100680989145133

/-!
# A016070: Numbers k such that k^2 contains exactly 2 different digits, excluding 10^m, 2*10^m, 3*10^m.

The programs for A016070, there is no canonical definition to state claims against.
-/

/-! ## A016070.P164767942103539002

`sqrt(A018884(n+4))`
-/

namespace A016070.P164767942103539002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018884 (n + 4) : ℝ)

end

end A016070.P164767942103539002

/-! ## A016070.P15526066513843259150

`record[A004151(A016069(n+1))]`
-/

namespace A016070.P15526066513843259150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A016069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016070.P15526066513843259150

/-! ## A016070.P8215808572849018803

`filter[A016069(n+1), A168184(#)]`
-/

namespace A016070.P8215808572849018803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A016070.P8215808572849018803

/-! ## A016070.P5167675349962282900

`record[A004151(sqrt(A235717(n+1)))]`
-/

namespace A016070.P5167675349962282900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway (Real.sqrt (A235717 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016070.P5167675349962282900

/-! ## A016070.P9060156683911963675

`record[A004151(sqrt(A018885(n+5)))]`
-/

namespace A016070.P9060156683911963675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway (Real.sqrt (A018885 (n + 5) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016070.P9060156683911963675

/-!
# A016071: Successive pattern lengths of a conjectured Busy Beaver by Uwe Schult.

The programs for A016071, there is no canonical definition to state claims against.
-/

/-! ## A016071.P2268317519052913443

`A243117(A038391(n))`
-/

namespace A016071.P2268317519052913443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243117 (A038391 n).toNat

end

end A016071.P2268317519052913443

/-! ## A016071.P10614475542984613566

`A002024(A052226(n))-A112467(n)`
-/

namespace A016071.P10614475542984613566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A052226 n).toNat - A112467 n

end

end A016071.P10614475542984613566

/-!
# A016072: Obsolete sequence of lower bounds for A028444.

The programs for A016072, there is no canonical definition to state claims against.
-/

/-! ## A016072.P10148196927905918990

`A000769(a(n-1))+2` with `a(0)=1, a(1)=4`
-/

namespace A016072.P10148196927905918990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A000769 (a (n - 1)).toNat + 2

end

end A016072.P10148196927905918990

/-!
# A016073: Undulating squares.

The programs for A016073, there is no canonical definition to state claims against.
-/

/-! ## A016073.P10615273732350766161

`A122875(n+1)²`
-/

namespace A016073.P10615273732350766161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122875 (n + 1) ^ 2

end

end A016073.P10615273732350766161

/-! ## A016073.P11893097720263176063

`∩[A033619(n+1), n²]`
-/

namespace A016073.P11893097720263176063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A016073.P11893097720263176063

/-! ## A016073.P14645468332916782716

`A002620(2*A122875(n+1))`
-/

namespace A016073.P14645468332916782716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A122875 (n + 1)).toNat

end

end A016073.P14645468332916782716

/-! ## A016073.P18096708292314439320

`A004652(2*A122875(n+1))`
-/

namespace A016073.P18096708292314439320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A122875 (n + 1)).toNat

end

end A016073.P18096708292314439320

/-! ## A016073.P5595683384687302912

`A122875(A000027(n+1))^2`
-/

namespace A016073.P5595683384687302912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122875 (A000027 (n + 1)).toNat ^ 2

end

end A016073.P5595683384687302912

/-!
# A016074: Inverse of 2065th cyclotomic polynomial.

The programs for A016074, there is no canonical definition to state claims against.
-/

/-! ## A016074.P4783380232175135898

`A016144(n)^A002061(A351594(n+1))`
-/

namespace A016074.P4783380232175135898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A002061 (A351594 (n + 1)).toNat : ℤ)

end

end A016074.P4783380232175135898

/-! ## A016074.P15516876575746537140

`A001221(A285096(2*n+3))*A016144(n)`
-/

namespace A016074.P15516876575746537140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A285096 (2 * n + 3)).toNat * A016144 n

end

end A016074.P15516876575746537140

/-! ## A016074.P10714113391354813532

`A015654(n)*A015688(A351592(n))`
-/

namespace A016074.P10714113391354813532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015654 n * A015688 (A351592 n).toNat

end

end A016074.P10714113391354813532

/-!
# A016075: Expansion of 1/((1-8*x)*(1-9*x)*(1-10*x)*(1-11*x)).

The programs for A016075, the canonical program `A016075.P3746278437214922692` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016075 has offset 0).

The definition of A016075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016075.P3746278437214922692

`21*a(n-1)-110*a(n-2)+9^(n+1)-8^(n+1)` with `a(0)=1, a(1)=38`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016075

/-- `21*a(n-1)-110*a(n-2)+9^(n+1)-8^(n+1)` -/
def P3746278437214922692.Spec : Prop :=
  ∀ n, P3746278437214922692.a n = A016075 n

theorem P3746278437214922692.correct : P3746278437214922692.Spec := by
  intro n
  simp only [A016075]

end A016075

/-! ## A016075.P17187798039956173744

`Δ[A024772(n)-A024771(n)]`
-/

namespace A016075.P17187798039956173744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024772 n - A024771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016075.P17187798039956173744

namespace A016075

/-- `Δ[A024772(n)-A024771(n)]` -/
def P17187798039956173744.Spec : Prop :=
  ∀ n, P17187798039956173744.a n = A016075 n

end A016075

/-! ## A016075.P18422654322522072555

`Δ[A025009(n)-A024999(n)]`
-/

namespace A016075.P18422654322522072555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025009 n - A024999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016075.P18422654322522072555

namespace A016075

/-- `Δ[A025009(n)-A024999(n)]` -/
def P18422654322522072555.Spec : Prop :=
  ∀ n, P18422654322522072555.a n = A016075 n

end A016075

/-! ## A016075.P17144137856786293457

`2*A028196(n)-A028190(n)`
-/

namespace A016075.P17144137856786293457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028196 n - A028190 n

end

end A016075.P17144137856786293457

namespace A016075

/-- `2*A028196(n)-A028190(n)` -/
def P17144137856786293457.Spec : Prop :=
  ∀ n, P17144137856786293457.a n = A016075 n

end A016075

/-! ## A016075.P14359105389721381076

`2*A028216(n)-A028211(n)`
-/

namespace A016075.P14359105389721381076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028216 n - A028211 n

end

end A016075.P14359105389721381076

namespace A016075

/-- `2*A028216(n)-A028211(n)` -/
def P14359105389721381076.Spec : Prop :=
  ∀ n, P14359105389721381076.a n = A016075 n

end A016075

/-! ## A016075.P8720208841263493650

`2*A028225(n)-A028222(n)`
-/

namespace A016075.P8720208841263493650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028225 n - A028222 n

end

end A016075.P8720208841263493650

namespace A016075

/-- `2*A028225(n)-A028222(n)` -/
def P8720208841263493650.Spec : Prop :=
  ∀ n, P8720208841263493650.a n = A016075 n

end A016075

/-! ## A016075.P11184474883851793905

`A020977(n+1)-A020976(n+1)`
-/

namespace A016075.P11184474883851793905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020977 (n + 1) - A020976 (n + 1)

end

end A016075.P11184474883851793905

namespace A016075

/-- `A020977(n+1)-A020976(n+1)` -/
def P11184474883851793905.Spec : Prop :=
  ∀ n, P11184474883851793905.a n = A016075 n

end A016075

/-! ## A016075.P5020365739739117293

`A020979(n+1)-A020977(n+1)`
-/

namespace A016075.P5020365739739117293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020979 (n + 1) - A020977 (n + 1)

end

end A016075.P5020365739739117293

namespace A016075

/-- `A020979(n+1)-A020977(n+1)` -/
def P5020365739739117293.Spec : Prop :=
  ∀ n, P5020365739739117293.a n = A016075 n

end A016075

/-! ## A016075.P13573257690183934337

`(A020982(n+1)-A020977(n+1))/2`
-/

namespace A016075.P13573257690183934337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020982 (n + 1) - A020977 (n + 1) : ℚ) / 2

end

end A016075.P13573257690183934337

namespace A016075

/-- `(A020982(n+1)-A020977(n+1))/2` -/
def P13573257690183934337.Spec : Prop :=
  ∀ n, P13573257690183934337.a n = (A016075 n : ℚ)

end A016075

/-! ## A016075.P4123641271632123219

`A028213(n)+A028216(n)-A028210(n)`
-/

namespace A016075.P4123641271632123219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028213 n + (A028216 n - A028210 n)

end

end A016075.P4123641271632123219

namespace A016075

/-- `A028213(n)+A028216(n)-A028210(n)` -/
def P4123641271632123219.Spec : Prop :=
  ∀ n, P4123641271632123219.a n = A016075 n

end A016075

/-!
# A016076: Inverse of 2067th cyclotomic polynomial.

The programs for A016076, there is no canonical definition to state claims against.
-/

/-! ## A016076.P4261210419428024395

`A016310(n)*A305008(A132710(n))`
-/

namespace A016076.P4261210419428024395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016310 n * A305008 (A132710 n).toNat

end

end A016076.P4261210419428024395

/-! ## A016076.P3464999613171735804

`A016310(n)%A157439(n)`
-/

namespace A016076.P3464999613171735804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016310 n) (A157439 n)

end

end A016076.P3464999613171735804

/-!
# A016079: Inverse of 2070th cyclotomic polynomial.

The programs for A016079, there is no canonical definition to state claims against.
-/

/-! ## A016079.P8768380661178625541

`A010892(n)*A015044(n)`
-/

namespace A016079.P8768380661178625541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A015044 n

end

end A016079.P8768380661178625541

/-!
# A016080: Inverse of 2071st cyclotomic polynomial.

The programs for A016080, there is no canonical definition to state claims against.
-/

/-! ## A016080.P8530461918628575655

`A014958(∑[A053602(n)%2])`
-/

namespace A016080.P8530461918628575655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053602 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014958 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016080.P8530461918628575655

/-! ## A016080.P12552529890963954024

`C(2, A326549(n))`
-/

namespace A016080.P12552529890963954024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326549 n).toNat

end

end A016080.P12552529890963954024

/-! ## A016080.P3530456008850183945

`C(2, ∑[A326541(n)])`
-/

namespace A016080.P3530456008850183945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016080.P3530456008850183945

/-! ## A016080.P2694371958829753950

`C(2, ∑[A326543(n)])`
-/

namespace A016080.P2694371958829753950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016080.P2694371958829753950

/-! ## A016080.P14142876760149326292

`C(2, ∑[A326544(n)])`
-/

namespace A016080.P14142876760149326292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016080.P14142876760149326292

/-! ## A016080.P869393288425386222

`C(A299038(n), A326543(n))`
-/

namespace A016080.P869393288425386222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A299038 n).toNat (A326543 n).toNat

end

end A016080.P869393288425386222

/-! ## A016080.P4894591563656749422

`C(A200329(n+1), A326543(n)²)`
-/

namespace A016080.P4894591563656749422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A200329 (n + 1)).toNat (A326543 n ^ 2).toNat

end

end A016080.P4894591563656749422

/-! ## A016080.P10688257186471258917

`C(A228572(A078898(n)), A326541(n))`
-/

namespace A016080.P10688257186471258917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228572 (A078898 n).toNat).toNat (A326541 n).toNat

end

end A016080.P10688257186471258917

/-! ## A016080.P1959760208571403172

`C(A001221(A362626(n+1)), A326541(n))`
-/

namespace A016080.P1959760208571403172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A362626 (n + 1)).toNat).toNat (A326541 n).toNat

end

end A016080.P1959760208571403172

/-! ## A016080.P8377277540749679424

`C(A001221(A078898(n+2)), A326541(n))`
-/

namespace A016080.P8377277540749679424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A078898 (n + 2)).toNat).toNat (A326541 n).toNat

end

end A016080.P8377277540749679424

/-! ## A016080.P9061525465728624919

`C(A072000(n+1), A072000(A246086(n+1)))`
-/

namespace A016080.P9061525465728624919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072000 (n + 1)).toNat (A072000 (A246086 (n + 1)).toNat).toNat

end

end A016080.P9061525465728624919

/-! ## A016080.P4028529601637100782

`C(2, A006918(A326458(n)))`
-/

namespace A016080.P4028529601637100782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A006918 (A326458 n).toNat).toNat

end

end A016080.P4028529601637100782

/-! ## A016080.P11543252992351972119

`C(A081603(n+2), A370804(A123108(n)))`
-/

namespace A016080.P11543252992351972119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081603 (n + 2)).toNat (A370804 (A123108 n).toNat).toNat

end

end A016080.P11543252992351972119

/-!
# A016081: Add 4, then reverse digits; start with 3.

The programs for A016081, there is no canonical definition to state claims against.
-/

/-! ## A016081.P3479118179446450299

`A004086(a(n-1)+4)` with `a(0)=3`
-/

namespace A016081.P3479118179446450299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004086 (a (n - 1) + 4).toNat

end

end A016081.P3479118179446450299

/-!
# A016082: Add 4, then reverse the decimal digits; start with 10.

The programs for A016082, there is no canonical definition to state claims against.
-/

/-! ## A016082.P11541116300131920630

`A004086(a(n-1)+4)` with `a(0)=10`
-/

namespace A016082.P11541116300131920630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A004086 (a (n - 1) + 4).toNat

end

end A016082.P11541116300131920630

/-!
# A016083: Inverse of 2074th cyclotomic polynomial.

The programs for A016083, there is no canonical definition to state claims against.
-/

/-! ## A016083.P8387185485696870693

`(A004442(n)-n)*A015046(n)`
-/

namespace A016083.P8387185485696870693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A015046 n

end

end A016083.P8387185485696870693

/-! ## A016083.P12963051666346030269

`val(A062670(n+1), A324697(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A016083.P12963051666346030269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (A062670 (n + 1)).toNat (A324697 (n + 1)).toNat : ℤ) - a (n - 1)

end

end A016083.P12963051666346030269

/-!
# A016084: a(n+1) = a(n) + its digital root.

The programs for A016084, the canonical program `A016084.P7699162782000942772` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016084 has offset 1).

The definition of A016084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016084.P7699162782000942772

`∑[dr(2*a(n-1))]` with `a(0)=5, a(1)=5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016084

/-- `∑[dr(2*a(n-1))]` -/
def P7699162782000942772.Spec : Prop :=
  ∀ n, (P7699162782000942772.a n : ℤ) = A016084 (n + 1)

theorem P7699162782000942772.correct : P7699162782000942772.Spec := by
  intro n
  simp only [A016084, Nat.add_sub_cancel]

end A016084

/-! ## A016084.P8283339739643284257

`∑[9-a(n-3)]` with `a(0)=5, a(1)=5, a(2)=1, a(3)=2`
-/

namespace A016084.P8283339739643284257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 5, 1, 2] fun n f1 =>
  9 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016084.P8283339739643284257

namespace A016084

/-- `∑[9-a(n-3)]` -/
def P8283339739643284257.Spec : Prop :=
  ∀ n, P8283339739643284257.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P11075121890445555179

`a(n-1)+dr(a(n-1))` with `a(0)=5`
-/

namespace A016084.P11075121890445555179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + SequenceMachineLib.digitalRoot (a (n - 1) : ℤ)

end

end A016084.P11075121890445555179

namespace A016084

/-- `a(n-1)+dr(a(n-1))` -/
def P11075121890445555179.Spec : Prop :=
  ∀ n, (P11075121890445555179.a n : ℤ) = A016084 (n + 1)

end A016084

/-! ## A016084.P3120888548149379511

`a(n-1)+a(n-1)%9` with `a(0)=5`
-/

namespace A016084.P3120888548149379511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + a (n - 1) % 9

end

end A016084.P3120888548149379511

namespace A016084

/-- `a(n-1)+a(n-1)%9` -/
def P3120888548149379511.Spec : Prop :=
  ∀ n, (P3120888548149379511.a n : ℤ) = A016084 (n + 1)

end A016084

/-! ## A016084.P5292907982105819404

`a(n-1)--a(n-1)%9` with `a(0)=5`
-/

namespace A016084.P5292907982105819404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - Int.tmod (-a (n - 1)) 9

end

end A016084.P5292907982105819404

namespace A016084

/-- `a(n-1)--a(n-1)%9` -/
def P5292907982105819404.Spec : Prop :=
  ∀ n, P5292907982105819404.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P13753659698323925335

`∑[A154529(n)]+4`
-/

namespace A016084.P13753659698323925335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A016084.P13753659698323925335

namespace A016084

/-- `∑[A154529(n)]+4` -/
def P13753659698323925335.Spec : Prop :=
  ∀ n, P13753659698323925335.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P8977848726383735849

`∑[A007953(2*a(n-1))]` with `a(0)=5, a(1)=5`
-/

namespace A016084.P8977848726383735849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  A007953 (2 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016084.P8977848726383735849

namespace A016084

/-- `∑[A007953(2*a(n-1))]` -/
def P8977848726383735849.Spec : Prop :=
  ∀ n, P8977848726383735849.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P5832167767487326109

`∑[A154529(xor(n, A000007(n)))]`
-/

namespace A016084.P5832167767487326109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154529 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016084.P5832167767487326109

namespace A016084

/-- `∑[A154529(xor(n, A000007(n)))]` -/
def P5832167767487326109.Spec : Prop :=
  ∀ n, P5832167767487326109.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P5473671932288393716

`A146501(n)+A007612(n+1)`
-/

namespace A016084.P5473671932288393716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146501 n + A007612 (n + 1)

end

end A016084.P5473671932288393716

namespace A016084

/-- `A146501(n)+A007612(n+1)` -/
def P5473671932288393716.Spec : Prop :=
  ∀ n, P5473671932288393716.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P5940410981955520429

`A132708(n)+A056020(n+1)`
-/

namespace A016084.P5940410981955520429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132708 n + A056020 (n + 1)

end

end A016084.P5940410981955520429

namespace A016084

/-- `A132708(n)+A056020(n+1)` -/
def P5940410981955520429.Spec : Prop :=
  ∀ n, P5940410981955520429.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P3748683774742433977

`∑[A146501(n+2)]-2`
-/

namespace A016084.P3748683774742433977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A016084.P3748683774742433977

namespace A016084

/-- `∑[A146501(n+2)]-2` -/
def P3748683774742433977.Spec : Prop :=
  ∀ n, P3748683774742433977.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P16764686788388942509

`A153130(n+2)+A007612(n+1)`
-/

namespace A016084.P16764686788388942509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153130 (n + 2) + A007612 (n + 1)

end

end A016084.P16764686788388942509

namespace A016084

/-- `A153130(n+2)+A007612(n+1)` -/
def P16764686788388942509.Spec : Prop :=
  ∀ n, P16764686788388942509.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P1900669923121789441

`A029898(n+3)+A007612(n+1)`
-/

namespace A016084.P1900669923121789441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029898 (n + 3) + A007612 (n + 1)

end

end A016084.P1900669923121789441

namespace A016084

/-- `A029898(n+3)+A007612(n+1)` -/
def P1900669923121789441.Spec : Prop :=
  ∀ n, P1900669923121789441.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P204553972678623984

`A130917(n+2)+A029898(n+3)`
-/

namespace A016084.P204553972678623984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130917 (n + 2) + A029898 (n + 3)

end

end A016084.P204553972678623984

namespace A016084

/-- `A130917(n+2)+A029898(n+3)` -/
def P204553972678623984.Spec : Prop :=
  ∀ n, P204553972678623984.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P17105733338068976924

`A007612(n+1)+Δ[A007612(n+3)]`
-/

namespace A016084.P17105733338068976924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (n + 1) + (f1 (n + 1) - f1 n)

end

end A016084.P17105733338068976924

namespace A016084

/-- `A007612(n+1)+Δ[A007612(n+3)]` -/
def P17105733338068976924.Spec : Prop :=
  ∀ n, P17105733338068976924.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P614475899274145263

`A146501(n+8)+a(n-1)` with `a(0)=5`
-/

namespace A016084.P614475899274145263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A146501 (n + 8) + a (n - 1)

end

end A016084.P614475899274145263

namespace A016084

/-- `A146501(n+8)+a(n-1)` -/
def P614475899274145263.Spec : Prop :=
  ∀ n, P614475899274145263.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P2576968011997187473

`A064806(a(n-1))` with `a(0)=5`
-/

namespace A016084.P2576968011997187473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A064806 (a (n - 1)).toNat

end

end A016084.P2576968011997187473

namespace A016084

/-- `A064806(a(n-1))` -/
def P2576968011997187473.Spec : Prop :=
  ∀ n, P2576968011997187473.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P13276400502390964763

`A277547(a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A016084.P13276400502390964763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A277547 (a (n - 1)).toNat + a (n - 1)

end

end A016084.P13276400502390964763

namespace A016084

/-- `A277547(a(n-1))+a(n-1)` -/
def P13276400502390964763.Spec : Prop :=
  ∀ n, P13276400502390964763.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P14476960358228789117

`A177274(a(n-1)-1)+a(n-1)` with `a(0)=5`
-/

namespace A016084.P14476960358228789117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A177274 (a (n - 1) - 1).toNat + a (n - 1)

end

end A016084.P14476960358228789117

namespace A016084

/-- `A177274(a(n-1)-1)+a(n-1)` -/
def P14476960358228789117.Spec : Prop :=
  ∀ n, P14476960358228789117.a n = A016084 (n + 1)

end A016084

/-! ## A016084.P9414864900609108393

`A180592(A007612(n+2))+A007612(n+1)`
-/

namespace A016084.P9414864900609108393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180592 (A007612 (n + 2)).toNat + A007612 (n + 1)

end

end A016084.P9414864900609108393

namespace A016084

/-- `A180592(A007612(n+2))+A007612(n+1)` -/
def P9414864900609108393.Spec : Prop :=
  ∀ n, P9414864900609108393.a n = A016084 (n + 1)

end A016084

/-!
# A016085: a(1) = 1; a(n+1) = floor((sum{k=1 to n} a(k)^3)^(1/3)).

The programs for A016085, there is no canonical definition to state claims against.
-/

/-! ## A016085.P17059340079679875100

`ceil(Δ[root(A243735(n+1), 3)])`
-/

namespace A016085.P17059340079679875100
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243735 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A016085.P17059340079679875100

/-! ## A016085.P14335668156257164036

`round(A083844(n+1)/A182780(n))`
-/

namespace A016085.P14335668156257164036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083844 (n + 1) : ℚ) / (A182780 n : ℚ))

end

end A016085.P14335668156257164036

/-!
# A016086: Inverse of 2077th cyclotomic polynomial.

The programs for A016086, there is no canonical definition to state claims against.
-/

/-! ## A016086.P12275156932116112001

`A015090(A248227(n+1)+A107078(n+1))`
-/

namespace A016086.P12275156932116112001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015090 (A248227 (n + 1) + A107078 (n + 1)).toNat

end

end A016086.P12275156932116112001

/-! ## A016086.P3681276018283241581

`A136522(A335433(n+1)-n)`
-/

namespace A016086.P3681276018283241581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A335433 (n + 1) - (n : ℤ)).toNat

end

end A016086.P3681276018283241581

/-! ## A016086.P2191767265649516129

`A376583(A178502(n+1)-n)`
-/

namespace A016086.P2191767265649516129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A178502 (n + 1) - (n : ℤ)).toNat

end

end A016086.P2191767265649516129

/-! ## A016086.P9950689757724275707

`A247889(A333228(n+1)-n)`
-/

namespace A016086.P9950689757724275707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 (A333228 (n + 1) - (n : ℤ)).toNat

end

end A016086.P9950689757724275707

/-! ## A016086.P9858399156763615495

`A343643(A333228(n+1)-n)`
-/

namespace A016086.P9858399156763615495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343643 (A333228 (n + 1) - (n : ℤ)).toNat

end

end A016086.P9858399156763615495

/-! ## A016086.P11764556880005302723

`A330887(∑[char[A171254(n+3)]]!)`
-/

namespace A016086.P11764556880005302723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171254 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330887 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016086.P11764556880005302723

/-! ## A016086.P6562265290747976069

`round(A344742(n+1)/A225620(n+1))`
-/

namespace A016086.P6562265290747976069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A344742 (n + 1) : ℚ) / (A225620 (n + 1) : ℚ))

end

end A016086.P6562265290747976069

/-! ## A016086.P15890243596015149359

`A298937(A111895(n+1))^A349464(n)`
-/

namespace A016086.P15890243596015149359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298937 (A111895 (n + 1)).toNat : ℚ) ^ (A349464 n : ℤ)

end

end A016086.P15890243596015149359

/-! ## A016086.P13306116592603257147

`val(A060264(2*(n+1)), A130446(A060264(2*(n+1))))`
-/

namespace A016086.P13306116592603257147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060264 (2 * (n + 1))).toNat (A130446 (A060264 (2 * (n + 1))).toNat).toNat

end

end A016086.P13306116592603257147

/-! ## A016086.P17642116495205714958

`A015970(A251632(n)%A132032(n+1))`
-/

namespace A016086.P17642116495205714958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (Int.tmod (A251632 n) (A132032 (n + 1))).toNat

end

end A016086.P17642116495205714958

/-!
# A016088: 

The programs for A016088, there is no canonical definition to state claims against.
-/

/-! ## A016088.P2371507990361077934

`A103592(∑[A103609(n)+1])`
-/

namespace A016088.P2371507990361077934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016088.P2371507990361077934

/-!
# A016089: Numbers n such that n divides n-th Lucas number A000032(n).

The programs for A016089, there is no canonical definition to state claims against.
-/

/-! ## A016089.P7993287486457250884

`lt[A213060(n+1), 1]+1`
-/

namespace A016089.P7993287486457250884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213060 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A016089.P7993287486457250884

/-! ## A016089.P7401721885271571986

`3^n*∏{p}[8^n, #]`
-/

namespace A016089.P7401721885271571986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A016089.P7401721885271571986

/-! ## A016089.P18135635541934229315

`A286956(Δ[3^n])`
-/

namespace A016089.P18135635541934229315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A016089.P18135635541934229315

/-!
# A016090: a(n) = 16^(5^n) mod 10^n: Automorphic numbers ending in digit 6, with repetitions.

The programs for A016090, there is no canonical definition to state claims against.
-/

/-! ## A016090.P15514490016241323312

`A216093(n+1)+1`
-/

namespace A016090.P15514490016241323312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216093 (n + 1) + 1

end

end A016090.P15514490016241323312

/-! ## A016090.P3967701340697544738

`2^(n+1)*A214883(n+1)`
-/

namespace A016090.P3967701340697544738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A214883 (n + 1)

end

end A016090.P3967701340697544738

/-! ## A016090.P14096069997670181440

`∑[A011557(n)*A018248(n)]`
-/

namespace A016090.P14096069997670181440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A018248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016090.P14096069997670181440

/-! ## A016090.P4242793548368033755

`∑[A011557(n)*A091663(n)]+1`
-/

namespace A016090.P4242793548368033755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A091663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A016090.P4242793548368033755

/-! ## A016090.P15266476761553459540

`A000533(n+1)-A007185(n+1)`
-/

namespace A016090.P15266476761553459540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (n + 1) - A007185 (n + 1)

end

end A016090.P15266476761553459540

/-! ## A016090.P13492817384322514460

`2*A214883(n+1)*A000079(n)`
-/

namespace A016090.P13492817384322514460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214883 (n + 1) * A000079 n

end

end A016090.P13492817384322514460

/-! ## A016090.P7934403186189534567

`A038444(A000124(n))-A007185(n+1)`
-/

namespace A016090.P7934403186189534567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (A000124 n).toNat - A007185 (n + 1)

end

end A016090.P7934403186189534567

/-! ## A016090.P710888462710358679

`lcm(A000079(A214881(n+1)), A214883(n+1))`
-/

namespace A016090.P710888462710358679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 (A214881 (n + 1)).toNat) (A214883 (n + 1))

end

end A016090.P710888462710358679

/-!
# A016091: Expansion of 1/((1-8x)(1-9x)(1-10x)(1-12x)).

The programs for A016091, the canonical program `A016091.P1287992440763834131` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016091 has offset 0).

The definition of A016091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016091.P1287992440763834131

`22*a(n-1)-120*a(n-2)+9^(n+1)-8^(n+1)` with `a(0)=1, a(1)=39`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016091

/-- `22*a(n-1)-120*a(n-2)+9^(n+1)-8^(n+1)` -/
def P1287992440763834131.Spec : Prop :=
  ∀ n, P1287992440763834131.a n = A016091 n

theorem P1287992440763834131.correct : P1287992440763834131.Spec := by
  intro n
  simp only [A016091]

end A016091

/-! ## A016091.P1386469781439989610

`A020978(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A016091.P1386469781439989610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020978 n + 10 * a (n - 1)

end

end A016091.P1386469781439989610

namespace A016091

/-- `A020978(n)+10*a(n-1)` -/
def P1386469781439989610.Spec : Prop :=
  ∀ n, P1386469781439989610.a n = A016091 n

end A016091

/-! ## A016091.P13218456171736197507

`Δ[A025031(n)-A025007(n)]`
-/

namespace A016091.P13218456171736197507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025031 n - A025007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016091.P13218456171736197507

namespace A016091

/-- `Δ[A025031(n)-A025007(n)]` -/
def P13218456171736197507.Spec : Prop :=
  ∀ n, P13218456171736197507.a n = A016091 n

end A016091

/-! ## A016091.P12631275067397259896

`(A016092(n)+A016075(n))/2`
-/

namespace A016091.P12631275067397259896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016092 n + A016075 n : ℚ) / 2

end

end A016091.P12631275067397259896

namespace A016091

/-- `(A016092(n)+A016075(n))/2` -/
def P12631275067397259896.Spec : Prop :=
  ∀ n, P12631275067397259896.a n = (A016091 n : ℚ)

end A016091

/-! ## A016091.P10265023399492764748

`2*A016092(n)-A016093(n)`
-/

namespace A016091.P10265023399492764748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016092 n - A016093 n

end

end A016091.P10265023399492764748

namespace A016091

/-- `2*A016092(n)-A016093(n)` -/
def P10265023399492764748.Spec : Prop :=
  ∀ n, P10265023399492764748.a n = A016091 n

end A016091

/-! ## A016091.P9901664351969941156

`2*A028162(n)-A028155(n)`
-/

namespace A016091.P9901664351969941156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028162 n - A028155 n

end

end A016091.P9901664351969941156

namespace A016091

/-- `2*A028162(n)-A028155(n)` -/
def P9901664351969941156.Spec : Prop :=
  ∀ n, P9901664351969941156.a n = A016091 n

end A016091

/-! ## A016091.P15180221934624199988

`2*A028214(n)-A028210(n)`
-/

namespace A016091.P15180221934624199988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028214 n - A028210 n

end

end A016091.P15180221934624199988

namespace A016091

/-- `2*A028214(n)-A028210(n)` -/
def P15180221934624199988.Spec : Prop :=
  ∀ n, P15180221934624199988.a n = A016091 n

end A016091

/-! ## A016091.P7272318432520558511

`2*A028217(n)-A028212(n)`
-/

namespace A016091.P7272318432520558511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028217 n - A028212 n

end

end A016091.P7272318432520558511

namespace A016091

/-- `2*A028217(n)-A028212(n)` -/
def P7272318432520558511.Spec : Prop :=
  ∀ n, P7272318432520558511.a n = A016091 n

end A016091

/-! ## A016091.P4976831105858366536

`A020980(n+1)-A020978(n+1)`
-/

namespace A016091.P4976831105858366536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020980 (n + 1) - A020978 (n + 1)

end

end A016091.P4976831105858366536

namespace A016091

/-- `A020980(n+1)-A020978(n+1)` -/
def P4976831105858366536.Spec : Prop :=
  ∀ n, P4976831105858366536.a n = A016091 n

end A016091

/-! ## A016091.P14648035823039065842

`A020983(n+1)-A020980(n+1)`
-/

namespace A016091.P14648035823039065842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020983 (n + 1) - A020980 (n + 1)

end

end A016091.P14648035823039065842

namespace A016091

/-- `A020983(n+1)-A020980(n+1)` -/
def P14648035823039065842.Spec : Prop :=
  ∀ n, P14648035823039065842.a n = A016091 n

end A016091

/-!
# A016092: Expansion of 1/((1-8*x)*(1-9*x)*(1-11*x)*(1-12*x)).

The programs for A016092, the canonical program `A016092.P7247468160926463278` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016092 has offset 0).

The definition of A016092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016092.P7247468160926463278

`23*a(n-1)-132*a(n-2)+9^(n+1)-8^(n+1)` with `a(0)=1, a(1)=40`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016092

/-- `23*a(n-1)-132*a(n-2)+9^(n+1)-8^(n+1)` -/
def P7247468160926463278.Spec : Prop :=
  ∀ n, P7247468160926463278.a n = A016092 n

theorem P7247468160926463278.correct : P7247468160926463278.Spec := by
  intro n
  simp only [A016092]

end A016092

/-! ## A016092.P1671698986797182089

`A020978(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A016092.P1671698986797182089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020978 n + 11 * a (n - 1)

end

end A016092.P1671698986797182089

namespace A016092

/-- `A020978(n)+11*a(n-1)` -/
def P1671698986797182089.Spec : Prop :=
  ∀ n, P1671698986797182089.a n = A016092 n

end A016092

/-! ## A016092.P10559541080065630185

`Δ[A024778(n)-A024772(n)]`
-/

namespace A016092.P10559541080065630185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024778 n - A024772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016092.P10559541080065630185

namespace A016092

/-- `Δ[A024778(n)-A024772(n)]` -/
def P10559541080065630185.Spec : Prop :=
  ∀ n, P10559541080065630185.a n = A016092 n

end A016092

/-! ## A016092.P305830843537929775

`2*A016091(n)-A016075(n)`
-/

namespace A016092.P305830843537929775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016091 n - A016075 n

end

end A016092.P305830843537929775

namespace A016092

/-- `2*A016091(n)-A016075(n)` -/
def P305830843537929775.Spec : Prop :=
  ∀ n, P305830843537929775.a n = A016092 n

end A016092

/-! ## A016092.P10234258905449443916

`(A016094(n)+A016075(n))/2`
-/

namespace A016092.P10234258905449443916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016094 n + A016075 n : ℚ) / 2

end

end A016092.P10234258905449443916

namespace A016092

/-- `(A016094(n)+A016075(n))/2` -/
def P10234258905449443916.Spec : Prop :=
  ∀ n, P10234258905449443916.a n = (A016092 n : ℚ)

end A016092

/-! ## A016092.P15172237724127933838

`2*A016093(n)-A016094(n)`
-/

namespace A016092.P15172237724127933838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016093 n - A016094 n

end

end A016092.P15172237724127933838

namespace A016092

/-- `2*A016093(n)-A016094(n)` -/
def P15172237724127933838.Spec : Prop :=
  ∀ n, P15172237724127933838.a n = A016092 n

end A016092

/-! ## A016092.P12821943199156086474

`(A016093(n)+A016091(n))/2`
-/

namespace A016092.P12821943199156086474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016093 n + A016091 n : ℚ) / 2

end

end A016092.P12821943199156086474

namespace A016092

/-- `(A016093(n)+A016091(n))/2` -/
def P12821943199156086474.Spec : Prop :=
  ∀ n, P12821943199156086474.a n = (A016092 n : ℚ)

end A016092

/-! ## A016092.P8755783925279423353

`2*A028215(n)-A028211(n)`
-/

namespace A016092.P8755783925279423353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028215 n - A028211 n

end

end A016092.P8755783925279423353

namespace A016092

/-- `2*A028215(n)-A028211(n)` -/
def P8755783925279423353.Spec : Prop :=
  ∀ n, P8755783925279423353.a n = A016092 n

end A016092

/-! ## A016092.P6752446682099466635

`2*A028224(n)-A028221(n)`
-/

namespace A016092.P6752446682099466635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028224 n - A028221 n

end

end A016092.P6752446682099466635

namespace A016092

/-- `2*A028224(n)-A028221(n)` -/
def P6752446682099466635.Spec : Prop :=
  ∀ n, P6752446682099466635.a n = A016092 n

end A016092

/-! ## A016092.P5732313684096055279

`2*A028227(n)-A028224(n)`
-/

namespace A016092.P5732313684096055279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028227 n - A028224 n

end

end A016092.P5732313684096055279

namespace A016092

/-- `2*A028227(n)-A028224(n)` -/
def P5732313684096055279.Spec : Prop :=
  ∀ n, P5732313684096055279.a n = A016092 n

end A016092

/-!
# A016093: Expansion of 1/((1-8*x)*(1-10*x)*(1-11*x)*(1-12*x)).

The programs for A016093, the canonical program `A016093.P10427901554248386448` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016093 has offset 0).

The definition of A016093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016093.P10427901554248386448

`23*a(n-1)-132*a(n-2)+5*10^n-4*8^n` with `a(0)=1, a(1)=41`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016093

/-- `23*a(n-1)-132*a(n-2)+5*10^n-4*8^n` -/
def P10427901554248386448.Spec : Prop :=
  ∀ n, P10427901554248386448.a n = A016093 n

theorem P10427901554248386448.correct : P10427901554248386448.Spec := by
  intro n
  simp only [A016093]

end A016093

/-! ## A016093.P5533576825844876598

`Δ[A025008(n)-A025007(n)]`
-/

namespace A016093.P5533576825844876598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025008 n - A025007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016093.P5533576825844876598

namespace A016093

/-- `Δ[A025008(n)-A025007(n)]` -/
def P5533576825844876598.Spec : Prop :=
  ∀ n, P5533576825844876598.a n = A016093 n

end A016093

/-! ## A016093.P11605088014840379793

`2*A016092(n)-A016091(n)`
-/

namespace A016093.P11605088014840379793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016092 n - A016091 n

end

end A016093.P11605088014840379793

namespace A016093

/-- `2*A016092(n)-A016091(n)` -/
def P11605088014840379793.Spec : Prop :=
  ∀ n, P11605088014840379793.a n = A016093 n

end A016093

/-! ## A016093.P9838609660744412004

`2*A028164(n)-A028158(n)`
-/

namespace A016093.P9838609660744412004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028164 n - A028158 n

end

end A016093.P9838609660744412004

namespace A016093

/-- `2*A028164(n)-A028158(n)` -/
def P9838609660744412004.Spec : Prop :=
  ∀ n, P9838609660744412004.a n = A016093 n

end A016093

/-! ## A016093.P14839918428278074764

`2*A028199(n)-A028194(n)`
-/

namespace A016093.P14839918428278074764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028199 n - A028194 n

end

end A016093.P14839918428278074764

namespace A016093

/-- `2*A028199(n)-A028194(n)` -/
def P14839918428278074764.Spec : Prop :=
  ∀ n, P14839918428278074764.a n = A016093 n

end A016093

/-! ## A016093.P4694131646610335210

`2*A028219(n)-A028215(n)`
-/

namespace A016093.P4694131646610335210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028219 n - A028215 n

end

end A016093.P4694131646610335210

namespace A016093

/-- `2*A028219(n)-A028215(n)` -/
def P4694131646610335210.Spec : Prop :=
  ∀ n, P4694131646610335210.a n = A016093 n

end A016093

/-! ## A016093.P5888501369003779209

`A020980(n+1)-A020979(n+1)`
-/

namespace A016093.P5888501369003779209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020980 (n + 1) - A020979 (n + 1)

end

end A016093.P5888501369003779209

namespace A016093

/-- `A020980(n+1)-A020979(n+1)` -/
def P5888501369003779209.Spec : Prop :=
  ∀ n, P5888501369003779209.a n = A016093 n

end A016093

/-! ## A016093.P7389221562990593042

`A020981(n+1)-A020980(n+1)`
-/

namespace A016093.P7389221562990593042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020981 (n + 1) - A020980 (n + 1)

end

end A016093.P7389221562990593042

namespace A016093

/-- `A020981(n+1)-A020980(n+1)` -/
def P7389221562990593042.Spec : Prop :=
  ∀ n, P7389221562990593042.a n = A016093 n

end A016093

/-! ## A016093.P11905313289056346672

`(A020981(n+1)-A020979(n+1))/2`
-/

namespace A016093.P11905313289056346672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020981 (n + 1) - A020979 (n + 1) : ℚ) / 2

end

end A016093.P11905313289056346672

namespace A016093

/-- `(A020981(n+1)-A020979(n+1))/2` -/
def P11905313289056346672.Spec : Prop :=
  ∀ n, P11905313289056346672.a n = (A016093 n : ℚ)

end A016093

/-! ## A016093.P11587783021645867482

`10*a(n-1)+A020981(n)+A000007(n)` with `a(0)=1`
-/

namespace A016093.P11587783021645867482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (A020981 n + A000007 n)

end

end A016093.P11587783021645867482

namespace A016093

/-- `10*a(n-1)+A020981(n)+A000007(n)` -/
def P11587783021645867482.Spec : Prop :=
  ∀ n, P11587783021645867482.a n = A016093 n

end A016093

/-!
# A016094: Expansion of 1/((1-9*x)*(1-10*x)*(1-11*x)*(1-12*x)).

The programs for A016094, the canonical program `A016094.P3583084386443143259` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016094 has offset 0).

The definition of A016094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016094.P3583084386443143259

`23*a(n-1)-132*a(n-2)+10^(n+1)-9^(n+1)` with `a(0)=1, a(1)=42`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016094

/-- `23*a(n-1)-132*a(n-2)+10^(n+1)-9^(n+1)` -/
def P3583084386443143259.Spec : Prop :=
  ∀ n, P3583084386443143259.a n = A016094 n

theorem P3583084386443143259.correct : P3583084386443143259.Spec := by
  intro n
  simp only [A016094]

end A016094

/-! ## A016094.P9438291314493094435

`Δ[A025031(n)-A025009(n)]`
-/

namespace A016094.P9438291314493094435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025031 n - A025009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016094.P9438291314493094435

namespace A016094

/-- `Δ[A025031(n)-A025009(n)]` -/
def P9438291314493094435.Spec : Prop :=
  ∀ n, P9438291314493094435.a n = A016094 n

end A016094

/-! ## A016094.P15611948983446872229

`2*A016092(n)-A016075(n)`
-/

namespace A016094.P15611948983446872229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016092 n - A016075 n

end

end A016094.P15611948983446872229

namespace A016094

/-- `2*A016092(n)-A016075(n)` -/
def P15611948983446872229.Spec : Prop :=
  ∀ n, P15611948983446872229.a n = A016094 n

end A016094

/-! ## A016094.P5664474794159502198

`2*A016093(n)-A016092(n)`
-/

namespace A016094.P5664474794159502198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016093 n - A016092 n

end

end A016094.P5664474794159502198

namespace A016094

/-- `2*A016093(n)-A016092(n)` -/
def P5664474794159502198.Spec : Prop :=
  ∀ n, P5664474794159502198.a n = A016094 n

end A016094

/-! ## A016094.P17357511573304125713

`2*A028219(n)-A028216(n)`
-/

namespace A016094.P17357511573304125713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028219 n - A028216 n

end

end A016094.P17357511573304125713

namespace A016094

/-- `2*A028219(n)-A028216(n)` -/
def P17357511573304125713.Spec : Prop :=
  ∀ n, P17357511573304125713.a n = A016094 n

end A016094

/-! ## A016094.P10106226417634719325

`A020983(n+1)-A020982(n+1)`
-/

namespace A016094.P10106226417634719325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020983 (n + 1) - A020982 (n + 1)

end

end A016094.P10106226417634719325

namespace A016094

/-- `A020983(n+1)-A020982(n+1)` -/
def P10106226417634719325.Spec : Prop :=
  ∀ n, P10106226417634719325.a n = A016094 n

end A016094

/-! ## A016094.P3884447700154172291

`A020984(n+1)-A020983(n+1)`
-/

namespace A016094.P3884447700154172291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020984 (n + 1) - A020983 (n + 1)

end

end A016094.P3884447700154172291

namespace A016094

/-- `A020984(n+1)-A020983(n+1)` -/
def P3884447700154172291.Spec : Prop :=
  ∀ n, P3884447700154172291.a n = A016094 n

end A016094

/-! ## A016094.P8409339893942282872

`(A020984(n+1)-A020982(n+1))/2`
-/

namespace A016094.P8409339893942282872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020984 (n + 1) - A020982 (n + 1) : ℚ) / 2

end

end A016094.P8409339893942282872

namespace A016094

/-- `(A020984(n+1)-A020982(n+1))/2` -/
def P8409339893942282872.Spec : Prop :=
  ∀ n, P8409339893942282872.a n = (A016094 n : ℚ)

end A016094

/-! ## A016094.P17954220226429720468

`A016091(n)+A016093(n)-A016075(n)`
-/

namespace A016094.P17954220226429720468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016091 n + (A016093 n - A016075 n)

end

end A016094.P17954220226429720468

namespace A016094

/-- `A016091(n)+A016093(n)-A016075(n)` -/
def P17954220226429720468.Spec : Prop :=
  ∀ n, P17954220226429720468.a n = A016094 n

end A016094

/-! ## A016094.P1284556256820573395

`A016092(n)+A016093(n)-A016091(n)`
-/

namespace A016094.P1284556256820573395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016092 n + (A016093 n - A016091 n)

end

end A016094.P1284556256820573395

namespace A016094

/-- `A016092(n)+A016093(n)-A016091(n)` -/
def P1284556256820573395.Spec : Prop :=
  ∀ n, P1284556256820573395.a n = A016094 n

end A016094

/-!
# A016095: Triangular array T(n,k) read by rows, where T(n,k) = coefficient of x^n*y^k in 1/(1-x-y-(x+y)^2).

The programs for A016095, the canonical program `A016095.P3843543431123263838` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016095 has offset 0).

The definition of A016095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016095.P3843543431123263838

`A007318(n)*A131410(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A016095

/-- `A007318(n)*A131410(n+1)` -/
def P3843543431123263838.Spec : Prop :=
  ∀ n, P3843543431123263838.a n = A016095 n

theorem P3843543431123263838.correct : P3843543431123263838.Spec := by
  intro n
  simp only [A016095]

end A016095

/-! ## A016095.P8738849498965442860

`A007318(n)*A000045(∑[char[∑[n]]])`
-/

namespace A016095.P8738849498965442860
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016095.P8738849498965442860

namespace A016095

/-- `A007318(n)*A000045(∑[char[∑[n]]])` -/
def P8738849498965442860.Spec : Prop :=
  ∀ n, P8738849498965442860.a n = A016095 n

end A016095

/-! ## A016095.P1123541230096165291

`A007318(n)*A036355(A057944(n))`
-/

namespace A016095.P1123541230096165291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A036355 (A057944 n).toNat

end

end A016095.P1123541230096165291

namespace A016095

/-- `A007318(n)*A036355(A057944(n))` -/
def P1123541230096165291.Spec : Prop :=
  ∀ n, P1123541230096165291.a n = A016095 n

end A016095

/-! ## A016095.P5684332613358796584

`A007318(n)*A123231(A131507(n))`
-/

namespace A016095.P5684332613358796584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A123231 (A131507 n).toNat

end

end A016095.P5684332613358796584

namespace A016095

/-- `A007318(n)*A123231(A131507(n))` -/
def P5684332613358796584.Spec : Prop :=
  ∀ n, P5684332613358796584.a n = A016095 n

end A016095

/-! ## A016095.P15594502762042771933

`(A014473(n)+1)*A000045(A002024(n+1))`
-/

namespace A016095.P15594502762042771933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000045 (A002024 (n + 1)).toNat

end

end A016095.P15594502762042771933

namespace A016095

/-- `(A014473(n)+1)*A000045(A002024(n+1))` -/
def P15594502762042771933.Spec : Prop :=
  ∀ n, P15594502762042771933.a n = A016095 n

end A016095

/-! ## A016095.P14601827641507110917

`A007318(n)*A212804(A002024(n+1)+1)`
-/

namespace A016095.P14601827641507110917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A212804 (A002024 (n + 1) + 1).toNat

end

end A016095.P14601827641507110917

namespace A016095

/-- `A007318(n)*A212804(A002024(n+1)+1)` -/
def P14601827641507110917.Spec : Prop :=
  ∀ n, P14601827641507110917.a n = A016095 n

end A016095

/-! ## A016095.P16594886541734045800

`A000045(A007401(n+1)-n)*A007318(n)`
-/

namespace A016095.P16594886541734045800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A007401 (n + 1) - (n : ℤ)).toNat * A007318 n

end

end A016095.P16594886541734045800

namespace A016095

/-- `A000045(A007401(n+1)-n)*A007318(n)` -/
def P16594886541734045800.Spec : Prop :=
  ∀ n, P16594886541734045800.a n = A016095 n

end A016095

/-! ## A016095.P1788039133253655683

`ceil(A134059(n)/3)*A000045(A002024(n+1))`
-/

namespace A016095.P1788039133253655683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000045 (A002024 (n + 1)).toNat

end

end A016095.P1788039133253655683

namespace A016095

/-- `ceil(A134059(n)/3)*A000045(A002024(n+1))` -/
def P1788039133253655683.Spec : Prop :=
  ∀ n, P1788039133253655683.a n = A016095 n

end A016095

/-! ## A016095.P5739160104374416613

`ceil(A134059(n)/3)*A000045(A003056(n)+1)`
-/

namespace A016095.P5739160104374416613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000045 (A003056 n + 1).toNat

end

end A016095.P5739160104374416613

namespace A016095

/-- `ceil(A134059(n)/3)*A000045(A003056(n)+1)` -/
def P5739160104374416613.Spec : Prop :=
  ∀ n, P5739160104374416613.a n = A016095 n

end A016095

/-! ## A016095.P15075095160938496635

`ceil(A135087(n)/4)*A000045(A002024(n+1))`
-/

namespace A016095.P15075095160938496635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A000045 (A002024 (n + 1)).toNat

end

end A016095.P15075095160938496635

namespace A016095

/-- `ceil(A135087(n)/4)*A000045(A002024(n+1))` -/
def P15075095160938496635.Spec : Prop :=
  ∀ n, P15075095160938496635.a n = A016095 n

end A016095

/-! ## A016095.P2204248239894380846

`ceil(A135089(n)/5)*A000045(A002024(n+1))`
-/

namespace A016095.P2204248239894380846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A000045 (A002024 (n + 1)).toNat

end

end A016095.P2204248239894380846

namespace A016095

/-- `ceil(A135089(n)/5)*A000045(A002024(n+1))` -/
def P2204248239894380846.Spec : Prop :=
  ∀ n, P2204248239894380846.a n = A016095 n

end A016095

/-! ## A016095.P1305649361427508363

`A134059(A028310(n))/3*A000045(A002024(n+1))`
-/

namespace A016095.P1305649361427508363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A000045 (A002024 (n + 1)).toNat : ℚ)

end

end A016095.P1305649361427508363

namespace A016095

/-- `A134059(A028310(n))/3*A000045(A002024(n+1))` -/
def P1305649361427508363.Spec : Prop :=
  ∀ n, P1305649361427508363.a n = (A016095 n : ℚ)

end A016095

/-! ## A016095.P11447936131121023728

`(A285118(n)+A285116(n))*A000045(A002024(n+1))`
-/

namespace A016095.P11447936131121023728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A000045 (A002024 (n + 1)).toNat

end

end A016095.P11447936131121023728

namespace A016095

/-- `(A285118(n)+A285116(n))*A000045(A002024(n+1))` -/
def P11447936131121023728.Spec : Prop :=
  ∀ n, P11447936131121023728.a n = A016095 n

end A016095

/-! ## A016095.P8763297692523659026

`A007318(n)*A094436(A025581(n)+n)`
-/

namespace A016095.P8763297692523659026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A094436 (A025581 n + (n : ℤ)).toNat

end

end A016095.P8763297692523659026

namespace A016095

/-- `A007318(n)*A094436(A025581(n)+n)` -/
def P8763297692523659026.Spec : Prop :=
  ∀ n, P8763297692523659026.a n = A016095 n

end A016095

/-! ## A016095.P6378238020258048778

`A007318(n)*A108037(A080036(n))`
-/

namespace A016095.P6378238020258048778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A108037 (A080036 n).toNat

end

end A016095.P6378238020258048778

namespace A016095

/-- `A007318(n)*A108037(A080036(n))` -/
def P6378238020258048778.Spec : Prop :=
  ∀ n, P6378238020258048778.a n = A016095 n

end A016095

/-! ## A016095.P16749206417651850283

`A000045(A002024(n+1))/A176346(n)*A176348(n)`
-/

namespace A016095.P16749206417651850283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A002024 (n + 1)).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A016095.P16749206417651850283

namespace A016095

/-- `A000045(A002024(n+1))/A176346(n)*A176348(n)` -/
def P16749206417651850283.Spec : Prop :=
  ∀ n, P16749206417651850283.a n = (A016095 n : ℚ)

end A016095

/-! ## A016095.P10661382470566648521

`ceil(A134060(n)/3)*A000045(A002024(n+1))`
-/

namespace A016095.P10661382470566648521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A000045 (A002024 (n + 1)).toNat

end

end A016095.P10661382470566648521

namespace A016095

/-- `ceil(A134060(n)/3)*A000045(A002024(n+1))` -/
def P10661382470566648521.Spec : Prop :=
  ∀ n, P10661382470566648521.a n = A016095 n

end A016095

/-!
# A016096: a(n+1) = a(n) + sum of its digits, with a(1) = 9.

The programs for A016096, the canonical program `A016096.P6894083767046586145` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016096 has offset 1).

The definition of A016096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016096.P6894083767046586145

`A062028(a(n-1))` with `a(0)=9`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A016096

/-- `A062028(a(n-1))` -/
def P6894083767046586145.Spec : Prop :=
  ∀ n, P6894083767046586145.a n = A016096 (n + 1)

theorem P6894083767046586145.correct : P6894083767046586145.Spec := by
  intro n
  simp only [A016096, Nat.add_sub_cancel]

end A016096

/-! ## A016096.P2168171095397611430

`A160939(a(n-1)+1)-1` with `a(0)=9`
-/

namespace A016096.P2168171095397611430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A016096.P2168171095397611430

namespace A016096

/-- `A160939(a(n-1)+1)-1` -/
def P2168171095397611430.Spec : Prop :=
  ∀ n, P2168171095397611430.a n = A016096 (n + 1)

end A016096

/-! ## A016096.P18151995988733813393

`A007953(a(n-1))+a(n-1)` with `a(0)=9`
-/

namespace A016096.P18151995988733813393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A016096.P18151995988733813393

namespace A016096

/-- `A007953(a(n-1))+a(n-1)` -/
def P18151995988733813393.Spec : Prop :=
  ∀ n, P18151995988733813393.a n = A016096 (n + 1)

end A016096

/-! ## A016096.P17332911820351701856

`eq[9, A036233(n+1)]+1`
-/

namespace A016096.P17332911820351701856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A016096.P17332911820351701856

namespace A016096

/-- `eq[9, A036233(n+1)]+1` -/
def P17332911820351701856.Spec : Prop :=
  ∀ n, (P17332911820351701856.a n : ℤ) = A016096 (n + 1)

end A016096

/-! ## A016096.P14052493798376003276

`record[A181761(A028242(n)+1)]`
-/

namespace A016096.P14052493798376003276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181761 (A028242 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016096.P14052493798376003276

namespace A016096

/-- `record[A181761(A028242(n)+1)]` -/
def P14052493798376003276.Spec : Prop :=
  ∀ n, P14052493798376003276.a n = A016096 (n + 1)

end A016096

/-! ## A016096.P6984105158521188568

`record[A181761(A106249(n)+1)]`
-/

namespace A016096.P6984105158521188568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181761 (A106249 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016096.P6984105158521188568

namespace A016096

/-- `record[A181761(A106249(n)+1)]` -/
def P6984105158521188568.Spec : Prop :=
  ∀ n, P6984105158521188568.a n = A016096 (n + 1)

end A016096

/-! ## A016096.P9831384784170743183

`record[A181761(A106249(A165754(n)))]`
-/

namespace A016096.P9831384784170743183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181761 (A106249 (A165754 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016096.P9831384784170743183

namespace A016096

/-- `record[A181761(A106249(A165754(n)))]` -/
def P9831384784170743183.Spec : Prop :=
  ∀ n, P9831384784170743183.a n = A016096 (n + 1)

end A016096

/-! ## A016096.P1428200853830357365

`record[A181761(A153152(A292576(n+1)))]`
-/

namespace A016096.P1428200853830357365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181761 (A153152 (A292576 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016096.P1428200853830357365

namespace A016096

/-- `record[A181761(A153152(A292576(n+1)))]` -/
def P1428200853830357365.Spec : Prop :=
  ∀ n, P1428200853830357365.a n = A016096 (n + 1)

end A016096

/-! ## A016096.P5016290586735639812

`abs(record[Δ[A181761(n+1)]])`
-/

namespace A016096.P5016290586735639812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181761 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A016096.P5016290586735639812

namespace A016096

/-- `abs(record[Δ[A181761(n+1)]])` -/
def P5016290586735639812.Spec : Prop :=
  ∀ n, P5016290586735639812.a n = A016096 (n + 1)

end A016096

/-! ## A016096.P8606504922788697761

`record[A181761(A165754(n)+1)]`
-/

namespace A016096.P8606504922788697761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181761 (A165754 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016096.P8606504922788697761

namespace A016096

/-- `record[A181761(A165754(n)+1)]` -/
def P8606504922788697761.Spec : Prop :=
  ∀ n, P8606504922788697761.a n = A016096 (n + 1)

end A016096

/-!
# A016098: Number of crossing set partitions of {1,2,...,n}.

The programs for A016098, there is no canonical definition to state claims against.
-/

/-! ## A016098.P1495864246209069602

`A000110(n)-A000108(n)`
-/

namespace A016098.P1495864246209069602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A000108 n

end

end A016098.P1495864246209069602

/-! ## A016098.P6123026529488521502

`A247494(n)+A247491(n)`
-/

namespace A016098.P6123026529488521502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247494 n + A247491 n

end

end A016098.P6123026529488521502

/-! ## A016098.P1604549887392577254

`A000110(n)-abs(A168491(n))`
-/

namespace A016098.P1604549887392577254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - |A168491 n|

end

end A016098.P1604549887392577254

/-! ## A016098.P6352135944953878649

`abs(A292935(n))-A000108(n)`
-/

namespace A016098.P6352135944953878649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A000108 n

end

end A016098.P6352135944953878649

/-! ## A016098.P18212212993587680846

`A011971(∑[n])-A000108(n)`
-/

namespace A016098.P18212212993587680846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n

end

end A016098.P18212212993587680846

/-! ## A016098.P18055231004060547969

`A095149(∑[n])-A000108(n)`
-/

namespace A016098.P18055231004060547969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n

end

end A016098.P18055231004060547969

/-! ## A016098.P13211634917397236136

`A108087(∑[n])-A000108(n)`
-/

namespace A016098.P13211634917397236136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n

end

end A016098.P13211634917397236136

/-! ## A016098.P4430435708784440610

`A123081(∑[n])-A000108(n)`
-/

namespace A016098.P4430435708784440610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n

end

end A016098.P4430435708784440610

/-! ## A016098.P18054122085247726543

`A186020(∑[n])-A000108(n)`
-/

namespace A016098.P18054122085247726543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n

end

end A016098.P18054122085247726543

/-! ## A016098.P15324824201262619827

`A212431(∑[n])-A000108(n)`
-/

namespace A016098.P15324824201262619827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n

end

end A016098.P15324824201262619827

/-!
# A016099: Inverse of 2090th cyclotomic polynomial.

The programs for A016099, there is no canonical definition to state claims against.
-/

/-! ## A016099.P18425772547393636894

`(-1)^n*A015054(n)`
-/

namespace A016099.P18425772547393636894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015054 n

end

end A016099.P18425772547393636894

/-! ## A016099.P4893473031938081040

`A015054(n)*A033999(n)`
-/

namespace A016099.P4893473031938081040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015054 n * A033999 n

end

end A016099.P4893473031938081040

/-! ## A016099.P2942849406792764032

`A016359(A055964(n))`
-/

namespace A016099.P2942849406792764032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016359 (A055964 n).toNat

end

end A016099.P2942849406792764032

