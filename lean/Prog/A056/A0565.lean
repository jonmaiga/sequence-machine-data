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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A056500: Number of primitive (period n) periodic palindromes using exactly four different symbols.

The programs for A056500, the canonical program `A056500.P11676787919876706012` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056500 has offset 1).

The definition of A056500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056500.P11676787919876706012

`∑{d}[n+1, A008683(#)*A056490((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056500

/-- `∑{d}[n+1, A008683(#)*A056490((n+1)/#)]` -/
def P11676787919876706012.Spec : Prop :=
  ∀ n, P11676787919876706012.a n = A056500 (n + 1)

theorem P11676787919876706012.correct : P11676787919876706012.Spec := by
  intro n
  simp only [A056500, Nat.add_sub_cancel]

end A056500

/-! ## A056500.P17568328506544696425

`A056350(n+1)-A326789(n+1)`
-/

namespace A056500.P17568328506544696425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056350 (n + 1) - A326789 (n + 1)

end

end A056500.P17568328506544696425

namespace A056500

/-- `A056350(n+1)-A326789(n+1)` -/
def P17568328506544696425.Spec : Prop :=
  ∀ n, P17568328506544696425.a n = A056500 (n + 1)

end A056500

/-! ## A056500.P14112352871815789613

`∑{d}[n+1, A008683(#)*A056344((n+1)/#)]-A326789(n+1)`
-/

namespace A056500.P14112352871815789613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A326789 (n + 1)

end

end A056500.P14112352871815789613

namespace A056500

/-- `∑{d}[n+1, A008683(#)*A056344((n+1)/#)]-A326789(n+1)` -/
def P14112352871815789613.Spec : Prop :=
  ∀ n, P14112352871815789613.a n = A056500 (n + 1)

end A056500

/-! ## A056500.P12374038358662008438

`2*A056350(n+1)-A056289(n+1)`
-/

namespace A056500.P12374038358662008438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056350 (n + 1) - A056289 (n + 1)

end

end A056500.P12374038358662008438

namespace A056500

/-- `2*A056350(n+1)-A056289(n+1)` -/
def P12374038358662008438.Spec : Prop :=
  ∀ n, P12374038358662008438.a n = A056500 (n + 1)

end A056500

/-! ## A056500.P16321380683329075465

`A056289(n+1)-2*A326789(n+1)`
-/

namespace A056500.P16321380683329075465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056289 (n + 1) - 2 * A326789 (n + 1)

end

end A056500.P16321380683329075465

namespace A056500

/-- `A056289(n+1)-2*A326789(n+1)` -/
def P16321380683329075465.Spec : Prop :=
  ∀ n, P16321380683329075465.a n = A056500 (n + 1)

end A056500

/-!
# A056501: Number of primitive (period n) periodic palindromes using exactly five different symbols.

The programs for A056501, there is no canonical definition to state claims against.
-/

/-! ## A056501.P14421561252309052722

`∑{d}[n+1, A008683(#)*A056491((n+1)/#)]`
-/

namespace A056501.P14421561252309052722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056491 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056501.P14421561252309052722

/-! ## A056501.P2663639122128865636

`2*A056351(n+1)-A056290(n+1)`
-/

namespace A056501.P2663639122128865636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056351 (n + 1) - A056290 (n + 1)

end

end A056501.P2663639122128865636

/-! ## A056501.P12661813824692252149

`∑{d}[n+1, A056491(#)*A305255((n+1)/#-1)]`
-/

namespace A056501.P12661813824692252149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056491 d * A305255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A056501.P12661813824692252149

/-!
# A056502: Number of primitive (period n) periodic palindromes using exactly six different symbols.

The programs for A056502, there is no canonical definition to state claims against.
-/

/-! ## A056502.P16267520949959873149

`∑{d}[n+1, A008683(#)*A056492((n+1)/#)]`
-/

namespace A056502.P16267520949959873149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056492 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056502.P16267520949959873149

/-! ## A056502.P14723287735459799421

`∑{d}[n+1, A056492(#)*A069158((n+1)/#)]`
-/

namespace A056502.P14723287735459799421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056492 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056502.P14723287735459799421

/-! ## A056502.P10245704121007600727

`∑{d}[n+1, A056492(#)*A061220((n+1)/#)]`
-/

namespace A056502.P10245704121007600727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056492 d * A061220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056502.P10245704121007600727

/-! ## A056502.P6894956095194864177

`∑{d}[n+1, A055289(#)*A056492((n+1)/#)]`
-/

namespace A056502.P6894956095194864177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055289 d * A056492 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056502.P6894956095194864177

/-! ## A056502.P13148292803567333398

`∑{d}[n+1, A056492(#)*A090435((n+1)/#)]`
-/

namespace A056502.P13148292803567333398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056492 d * A090435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056502.P13148292803567333398

/-!
# A056503: Number of periodic palindromic structures of length n using a maximum of two different symbols.

The programs for A056503, the canonical program `A056503.P12078029325460103094` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056503 has offset 1).

The definition of A056503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056503.P6900009389931787248

`A056508(n+1)+1`
-/

namespace A056503.P6900009389931787248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056508 (n + 1) + 1

end

end A056503.P6900009389931787248

namespace A056503

/-- `A056508(n+1)+1` -/
def P6900009389931787248.Spec : Prop :=
  ∀ n, P6900009389931787248.a n = A056503 (n + 1)

end A056503

/-! ## A056503.P1409042784923569830

`∑{d}[n+1, A056513(#)]`
-/

namespace A056503.P1409042784923569830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056513 d

end

end A056503.P1409042784923569830

namespace A056503

/-- `∑{d}[n+1, A056513(#)]` -/
def P1409042784923569830.Spec : Prop :=
  ∀ n, P1409042784923569830.a n = A056503 (n + 1)

end A056503

/-! ## A056503.P1482562980858909876

`(A045674(n+1)+A016116(n+1))/2`
-/

namespace A056503.P1482562980858909876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045674 (n + 1) + A016116 (n + 1) : ℚ) / 2

end

end A056503.P1482562980858909876

namespace A056503

/-- `(A045674(n+1)+A016116(n+1))/2` -/
def P1482562980858909876.Spec : Prop :=
  ∀ n, P1482562980858909876.a n = (A056503 (n + 1) : ℚ)

end A056503

/-! ## A056503.P3822221518309525020

`A056504(n+1)-A056509(n+1)`
-/

namespace A056503.P3822221518309525020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 (n + 1) - A056509 (n + 1)

end

end A056503.P3822221518309525020

namespace A056503

/-- `A056504(n+1)-A056509(n+1)` -/
def P3822221518309525020.Spec : Prop :=
  ∀ n, P3822221518309525020.a n = A056503 (n + 1)

end A056503

/-! ## A056503.P12078029325460103094

`A000011(n+1)-A045677(n+1)/2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A056503

/-- `A000011(n+1)-A045677(n+1)/2` -/
def P12078029325460103094.Spec : Prop :=
  ∀ n, P12078029325460103094.a n = (A056503 (n + 1) : ℚ)

end A056503

/-!
# A056504: Number of periodic palindromic structures of length n using a maximum of three different symbols.

The programs for A056504, there is no canonical definition to state claims against.
-/

/-! ## A056504.P2319857653872078579

`∑{d}[A028310(n), A056514(#)]`
-/

namespace A056504.P2319857653872078579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056514 d

end

end A056504.P2319857653872078579

/-! ## A056504.P18270456401715489268

`∑{d}[A123108(2*n), A056514(#)]`
-/

namespace A056504.P18270456401715489268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056514 d

end

end A056504.P18270456401715489268

/-! ## A056504.P4732067235168929284

`A056505(n)-A056510(A028310(n))`
-/

namespace A056504.P4732067235168929284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 n - A056510 (A028310 n).toNat

end

end A056504.P4732067235168929284

/-! ## A056504.P5078069058336401385

`A056505(n)-A056510(A233583(n+1))`
-/

namespace A056504.P5078069058336401385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 n - A056510 (A233583 (n + 1)).toNat

end

end A056504.P5078069058336401385

/-! ## A056504.P3209455851803741434

`A056505(n)-A056510(A123108(2*n))`
-/

namespace A056504.P3209455851803741434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 n - A056510 (A123108 (2 * n)).toNat

end

end A056504.P3209455851803741434

/-!
# A056505: Number of periodic palindromic structures using a maximum of four different symbols.

The programs for A056505, there is no canonical definition to state claims against.
-/

/-! ## A056505.P18196363745936922603

`∑{d}[A028310(n), A056515(#)]`
-/

namespace A056505.P18196363745936922603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056515 d

end

end A056505.P18196363745936922603

/-! ## A056505.P8416520634936549937

`A056510(A028310(n))+A056504(n)`
-/

namespace A056505.P8416520634936549937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (A028310 n).toNat + A056504 n

end

end A056505.P8416520634936549937

/-! ## A056505.P6295129570885246818

`A056510(A233583(n+1))+A056504(n)`
-/

namespace A056505.P6295129570885246818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (A233583 (n + 1)).toNat + A056504 n

end

end A056505.P6295129570885246818

/-! ## A056505.P9906500858773263359

`A056506(n)-A056511(A028310(n))`
-/

namespace A056505.P9906500858773263359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 n - A056511 (A028310 n).toNat

end

end A056505.P9906500858773263359

/-! ## A056505.P11043020376810684967

`A056506(n)-A056511(A233583(n+1))`
-/

namespace A056505.P11043020376810684967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 n - A056511 (A233583 (n + 1)).toNat

end

end A056505.P11043020376810684967

/-!
# A056506: Number of periodic palindromic structures using a maximum of five different symbols.

The programs for A056506, there is no canonical definition to state claims against.
-/

/-! ## A056506.P467160774971613270

`∑{d}[A028310(n), A056516(#)]`
-/

namespace A056506.P467160774971613270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056516 d

end

end A056506.P467160774971613270

/-! ## A056506.P415474464354394290

`A056511(A028310(n))+A056505(n)`
-/

namespace A056506.P415474464354394290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (A028310 n).toNat + A056505 n

end

end A056506.P415474464354394290

/-! ## A056506.P15470655387189344803

`∑{d}[A008619(A004275(n)), A056516(#)]`
-/

namespace A056506.P15470655387189344803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056516 d

end

end A056506.P15470655387189344803

/-! ## A056506.P17218772387603080630

`A056511(A233583(n+1))+A056505(n)`
-/

namespace A056506.P17218772387603080630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (A233583 (n + 1)).toNat + A056505 n

end

end A056506.P17218772387603080630

/-! ## A056506.P4826244798691413250

`A056507(n)-A056512(A028310(n))`
-/

namespace A056506.P4826244798691413250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 n - A056512 (A028310 n).toNat

end

end A056506.P4826244798691413250

/-! ## A056506.P18184930368104832864

`A056507(n)-A056512(A233583(n+1))`
-/

namespace A056506.P18184930368104832864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 n - A056512 (A233583 (n + 1)).toNat

end

end A056506.P18184930368104832864

/-!
# A056507: Number of periodic palindromic structures using a maximum of six different symbols.

The programs for A056507, there is no canonical definition to state claims against.
-/

/-! ## A056507.P11765272548134563063

`∑{d}[A028310(n), A056517(#)]`
-/

namespace A056507.P11765272548134563063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056517 d

end

end A056507.P11765272548134563063

/-! ## A056507.P12720791657519302179

`∑{d}[n-A004277(n), A056517(#)]`
-/

namespace A056507.P12720791657519302179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056517 d

end

end A056507.P12720791657519302179

/-! ## A056507.P10910722096119719467

`A056512(A028310(n))+A056506(n)`
-/

namespace A056507.P10910722096119719467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (A028310 n).toNat + A056506 n

end

end A056507.P10910722096119719467

/-! ## A056507.P15284840203007833063

`∑{d}[A026741(A004277(n)), A056517(#)]`
-/

namespace A056507.P15284840203007833063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056517 d

end

end A056507.P15284840203007833063

/-! ## A056507.P9323038274694111326

`∑{d}[A029579(A004275(n)), A056517(#)]`
-/

namespace A056507.P9323038274694111326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056517 d

end

end A056507.P9323038274694111326

/-! ## A056507.P16653283404320088536

`A056512(A233583(n+1))+A056506(n)`
-/

namespace A056507.P16653283404320088536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (A233583 (n + 1)).toNat + A056506 n

end

end A056507.P16653283404320088536

/-!
# A056508: Number of periodic palindromic structures of length n using exactly two different symbols.

The programs for A056508, the canonical program `A056508.P8052561775042287548` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056508 has offset 1).

The definition of A056508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056508.P8052561775042287548

`A056503(n+1)-1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A056508

/-- `A056503(n+1)-1` -/
def P8052561775042287548.Spec : Prop :=
  ∀ n, P8052561775042287548.a n = A056508 (n + 1)

theorem P8052561775042287548.correct : P8052561775042287548.Spec := by
  intro n
  simp only [A056508, Nat.add_sub_cancel]

end A056508

/-! ## A056508.P10866512124038732030

`∑{d}[n+1, A056518(#)]`
-/

namespace A056508.P10866512124038732030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056518 d

end

end A056508.P10866512124038732030

namespace A056508

/-- `∑{d}[n+1, A056518(#)]` -/
def P10866512124038732030.Spec : Prop :=
  ∀ n, P10866512124038732030.a n = A056508 (n + 1)

end A056508

/-! ## A056508.P13627507825054545418

`A057428(n+1)+A056503(n+1)`
-/

namespace A056508.P13627507825054545418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056503 (n + 1)

end

end A056508.P13627507825054545418

namespace A056508

/-- `A057428(n+1)+A056503(n+1)` -/
def P13627507825054545418.Spec : Prop :=
  ∀ n, P13627507825054545418.a n = A056508 (n + 1)

end A056508

/-! ## A056508.P696978478883441577

`A076040(gcd(n, n+1))+A056503(n+1)`
-/

namespace A056508.P696978478883441577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 (Nat.gcd n (n + 1)) + A056503 (n + 1)

end

end A056508.P696978478883441577

namespace A056508

/-- `A076040(gcd(n, n+1))+A056503(n+1)` -/
def P696978478883441577.Spec : Prop :=
  ∀ n, P696978478883441577.a n = A056508 (n + 1)

end A056508

/-! ## A056508.P2810906542930759565

`A107393(A001359(n+1))+A056503(n+1)`
-/

namespace A056508.P2810906542930759565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A001359 (n + 1)).toNat + A056503 (n + 1)

end

end A056508.P2810906542930759565

namespace A056508

/-- `A107393(A001359(n+1))+A056503(n+1)` -/
def P2810906542930759565.Spec : Prop :=
  ∀ n, P2810906542930759565.a n = A056508 (n + 1)

end A056508

/-! ## A056508.P13009610856806110043

`A107393(A317964(n+1))+A056503(n+1)`
-/

namespace A056508.P13009610856806110043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A317964 (n + 1)).toNat + A056503 (n + 1)

end

end A056508.P13009610856806110043

namespace A056508

/-- `A107393(A317964(n+1))+A056503(n+1)` -/
def P13009610856806110043.Spec : Prop :=
  ∀ n, P13009610856806110043.a n = A056508 (n + 1)

end A056508

/-! ## A056508.P9359027120207887529

`A056504(n+1)-1-A056509(n+1)`
-/

namespace A056508.P9359027120207887529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 (n + 1) - 1 - A056509 (n + 1)

end

end A056508.P9359027120207887529

namespace A056508

/-- `A056504(n+1)-1-A056509(n+1)` -/
def P9359027120207887529.Spec : Prop :=
  ∀ n, P9359027120207887529.a n = A056508 (n + 1)

end A056508

/-! ## A056508.P6444245911127741902

`A076040(A007318(∑[n+1]))+A056503(n+1)`
-/

namespace A056508.P6444245911127741902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A056503 (n + 1)

end

end A056508.P6444245911127741902

namespace A056508

/-- `A076040(A007318(∑[n+1]))+A056503(n+1)` -/
def P6444245911127741902.Spec : Prop :=
  ∀ n, P6444245911127741902.a n = A056508 (n + 1)

end A056508

/-!
# A056509: Number of periodic palindromic structures of length n using exactly three different symbols.

The programs for A056509, there is no canonical definition to state claims against.
-/

/-! ## A056509.P5659984505466920232

`A056504(n+1)-A056503(n+1)`
-/

namespace A056509.P5659984505466920232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 (n + 1) - A056503 (n + 1)

end

end A056509.P5659984505466920232

/-! ## A056509.P7980870101370676913

`∑{d}[n+1, A056519(#)]`
-/

namespace A056509.P7980870101370676913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056519 d

end

end A056509.P7980870101370676913

/-! ## A056509.P11461507737579861182

`A056504(n+1)-(A056508(n+1)+1)`
-/

namespace A056509.P11461507737579861182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 (n + 1) - (A056508 (n + 1) + 1)

end

end A056509.P11461507737579861182

/-! ## A056509.P11737955376132593696

`A056519(n+1)+A011738(A056486(n+1))`
-/

namespace A056509.P11737955376132593696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056519 (n + 1) + A011738 (A056486 (n + 1)).toNat

end

end A056509.P11737955376132593696

/-!
# A056510: Number of periodic palindromic structures of length n using exactly four different symbols.

The programs for A056510, there is no canonical definition to state claims against.
-/

/-! ## A056510.P6615395493907212347

`A056505(n+1)-A056504(n+1)`
-/

namespace A056510.P6615395493907212347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 (n + 1) - A056504 (n + 1)

end

end A056510.P6615395493907212347

/-! ## A056510.P5374434084225454308

`∑{d}[n+1, A056521(#)]`
-/

namespace A056510.P5374434084225454308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056521 d

end

end A056510.P5374434084225454308

/-! ## A056510.P17313996094446444247

`A238010(A056523(n+1))+A056521(n+1)`
-/

namespace A056510.P17313996094446444247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A056523 (n + 1)).toNat + A056521 (n + 1)

end

end A056510.P17313996094446444247

/-! ## A056510.P4322007076343121

`A185284(A006370(n))+A056521(n+1)`
-/

namespace A056510.P4322007076343121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A006370 n).toNat + A056521 (n + 1)

end

end A056510.P4322007076343121

/-!
# A056511: Number of periodic palindromic structures of length n using exactly five different symbols.

The programs for A056511, there is no canonical definition to state claims against.
-/

/-! ## A056511.P11941329329896207798

`A056506(n+1)-A056505(n+1)`
-/

namespace A056511.P11941329329896207798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 (n + 1) - A056505 (n + 1)

end

end A056511.P11941329329896207798

/-! ## A056511.P14690298894768111772

`∑{d}[n+1, A056522(#)]`
-/

namespace A056511.P14690298894768111772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056522 d

end

end A056511.P14690298894768111772

/-! ## A056511.P14501933428608401440

`A056506(n+1)-(A056510(n+1)+A056504(n+1))`
-/

namespace A056511.P14501933428608401440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 (n + 1) - (A056510 (n + 1) + A056504 (n + 1))

end

end A056511.P14501933428608401440

/-! ## A056511.P11120729196080102941

`A122841(A036378(n))+A056522(n+1)`
-/

namespace A056511.P11120729196080102941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A036378 n).toNat + A056522 (n + 1)

end

end A056511.P11120729196080102941

/-! ## A056511.P18197917084376883067

`A122841(A118037(n))+A056522(n+1)`
-/

namespace A056511.P18197917084376883067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A118037 n).toNat + A056522 (n + 1)

end

end A056511.P18197917084376883067

/-!
# A056512: Number of periodic palindromic structures of length n using exactly six different symbols.

The programs for A056512, there is no canonical definition to state claims against.
-/

/-! ## A056512.P16853667483375079195

`A056507(n+1)-A056506(n+1)`
-/

namespace A056512.P16853667483375079195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (n + 1) - A056506 (n + 1)

end

end A056512.P16853667483375079195

/-! ## A056512.P7134751815838487207

`∑{d}[n+1, A056523(#)]`
-/

namespace A056512.P7134751815838487207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056523 d

end

end A056512.P7134751815838487207

/-! ## A056512.P8042886595114094969

`A185284(A000931(n))+A056523(n+1)`
-/

namespace A056512.P8042886595114094969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000931 n).toNat + A056523 (n + 1)

end

end A056512.P8042886595114094969

/-! ## A056512.P16638023149152420261

`A185284(A004273(n))+A056523(n+1)`
-/

namespace A056512.P16638023149152420261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A004273 n).toNat + A056523 (n + 1)

end

end A056512.P16638023149152420261

/-! ## A056512.P6386617734792330527

`A056523(A242474(n+1))`
-/

namespace A056512.P6386617734792330527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056523 (A242474 (n + 1)).toNat

end

end A056512.P6386617734792330527

/-!
# A056513: Number of primitive (period n) periodic palindromic structures using a maximum of two different symbols.

The programs for A056513, the canonical program `A056513.P10775552147206924827` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056513 has offset 0).

The definition of A056513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056513.P10775552147206924827

`A056518(A233583(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A056513

/-- `A056518(A233583(n+1))` -/
def P10775552147206924827.Spec : Prop :=
  ∀ n, P10775552147206924827.a n = A056513 n

theorem P10775552147206924827.correct : P10775552147206924827.Spec := by
  intro n
  simp only [A056513]

end A056513

/-! ## A056513.P17638679196477752507

`A056518(A004280(n+1)+1-n)`
-/

namespace A056513.P17638679196477752507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A004280 (n + 1) + (1 - (n : ℤ))).toNat

end

end A056513.P17638679196477752507

namespace A056513

/-- `A056518(A004280(n+1)+1-n)` -/
def P17638679196477752507.Spec : Prop :=
  ∀ n, P17638679196477752507.a n = A056513 n

end A056513

/-! ## A056513.P871538529248186808

`A056514(n)-A056519(A028310(n))`
-/

namespace A056513.P871538529248186808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056514 n - A056519 (A028310 n).toNat

end

end A056513.P871538529248186808

namespace A056513

/-- `A056514(n)-A056519(A028310(n))` -/
def P871538529248186808.Spec : Prop :=
  ∀ n, P871538529248186808.a n = A056513 n

end A056513

/-! ## A056513.P16783164079873243999

`A056514(n)-A056519(A233583(n+1))`
-/

namespace A056513.P16783164079873243999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056514 n - A056519 (A233583 (n + 1)).toNat

end

end A056513.P16783164079873243999

namespace A056513

/-- `A056514(n)-A056519(A233583(n+1))` -/
def P16783164079873243999.Spec : Prop :=
  ∀ n, P16783164079873243999.a n = A056513 n

end A056513

/-! ## A056513.P11915860581810448814

`A056514(n)-A056519(A065033(2*n))`
-/

namespace A056513.P11915860581810448814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056514 n - A056519 (A065033 (2 * n)).toNat

end

end A056513.P11915860581810448814

namespace A056513

/-- `A056514(n)-A056519(A065033(2*n))` -/
def P11915860581810448814.Spec : Prop :=
  ∀ n, P11915860581810448814.a n = A056513 n

end A056513

/-! ## A056513.P12639845956435422490

`A000046(n)-A309784(A238531(n))`
-/

namespace A056513.P12639845956435422490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 n - A309784 (A238531 n).toNat

end

end A056513.P12639845956435422490

namespace A056513

/-- `A000046(n)-A309784(A238531(n))` -/
def P12639845956435422490.Spec : Prop :=
  ∀ n, P12639845956435422490.a n = A056513 n

end A056513

/-!
# A056514: Number of primitive (period n) periodic palindromic structures using a maximum of three different symbols.

The programs for A056514, there is no canonical definition to state claims against.
-/

/-! ## A056514.P1493387643476356550

`A056519(A028310(n))+A056513(n)`
-/

namespace A056514.P1493387643476356550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056519 (A028310 n).toNat + A056513 n

end

end A056514.P1493387643476356550

/-! ## A056514.P5320456502243082218

`A056519(A233583(n+1))+A056513(n)`
-/

namespace A056514.P5320456502243082218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056519 (A233583 (n + 1)).toNat + A056513 n

end

end A056514.P5320456502243082218

/-! ## A056514.P16544660209068909152

`A056515(n)-A056521(A028310(n))`
-/

namespace A056514.P16544660209068909152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056515 n - A056521 (A028310 n).toNat

end

end A056514.P16544660209068909152

/-! ## A056514.P6756447498249636703

`A056515(n)-A056521(A233583(n+1))`
-/

namespace A056514.P6756447498249636703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056515 n - A056521 (A233583 (n + 1)).toNat

end

end A056514.P6756447498249636703

/-! ## A056514.P829557422235253007

`A056362(n)-A328657(A233583(n+1))`
-/

namespace A056514.P829557422235253007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056362 n - A328657 (A233583 (n + 1)).toNat

end

end A056514.P829557422235253007

/-!
# A056515: Number of primitive (period n) periodic palindromic structures using a maximum of four different symbols.

The programs for A056515, there is no canonical definition to state claims against.
-/

/-! ## A056515.P15474742545127959394

`A056521(A028310(n))+A056514(n)`
-/

namespace A056515.P15474742545127959394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056521 (A028310 n).toNat + A056514 n

end

end A056515.P15474742545127959394

/-! ## A056515.P14709675086799503833

`A056521(A233583(n+1))+A056514(n)`
-/

namespace A056515.P14709675086799503833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056521 (A233583 (n + 1)).toNat + A056514 n

end

end A056515.P14709675086799503833

/-! ## A056515.P6368535579328405424

`A056516(n)-A056522(A028310(n))`
-/

namespace A056515.P6368535579328405424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056516 n - A056522 (A028310 n).toNat

end

end A056515.P6368535579328405424

/-! ## A056515.P13317551823115447562

`A056516(n)-A056522(A233583(n+1))`
-/

namespace A056515.P13317551823115447562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056516 n - A056522 (A233583 (n + 1)).toNat

end

end A056515.P13317551823115447562

/-! ## A056515.P10900035597872414237

`A056363(n)-A328658(A028310(n))`
-/

namespace A056515.P10900035597872414237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056363 n - A328658 (A028310 n).toNat

end

end A056515.P10900035597872414237

/-! ## A056515.P7277517721554417511

`A056363(n)-A328658(A233583(n+1))`
-/

namespace A056515.P7277517721554417511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056363 n - A328658 (A233583 (n + 1)).toNat

end

end A056515.P7277517721554417511

/-!
# A056516: Number of primitive (period n) periodic palindromic structures using a maximum of five different symbols.

The programs for A056516, there is no canonical definition to state claims against.
-/

/-! ## A056516.P14420686100082517076

`A056522(A028310(n))+A056515(n)`
-/

namespace A056516.P14420686100082517076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056522 (A028310 n).toNat + A056515 n

end

end A056516.P14420686100082517076

/-! ## A056516.P6866230296483990774

`A056522(A233583(n+1))+A056515(n)`
-/

namespace A056516.P6866230296483990774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056522 (A233583 (n + 1)).toNat + A056515 n

end

end A056516.P6866230296483990774

/-! ## A056516.P10814536046934700852

`A056522(A065033(2*n))+A056515(n)`
-/

namespace A056516.P10814536046934700852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056522 (A065033 (2 * n)).toNat + A056515 n

end

end A056516.P10814536046934700852

/-! ## A056516.P11730912350041030632

`A056517(n)-A056523(A028310(n))`
-/

namespace A056516.P11730912350041030632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056517 n - A056523 (A028310 n).toNat

end

end A056516.P11730912350041030632

/-! ## A056516.P14821217704227070355

`A056517(n)-A056523(A233583(n+1))`
-/

namespace A056516.P14821217704227070355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056517 n - A056523 (A233583 (n + 1)).toNat

end

end A056516.P14821217704227070355

/-! ## A056516.P7367352791711197620

`A056517(n)-A056523(A065033(2*n))`
-/

namespace A056516.P7367352791711197620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056517 n - A056523 (A065033 (2 * n)).toNat

end

end A056516.P7367352791711197620

/-!
# A056517: Number of primitive (period n) periodic palindromic structures using a maximum of six different symbols.

The programs for A056517, there is no canonical definition to state claims against.
-/

/-! ## A056517.P16687462963089453077

`A056523(A028310(n))+A056516(n)`
-/

namespace A056517.P16687462963089453077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056523 (A028310 n).toNat + A056516 n

end

end A056517.P16687462963089453077

/-! ## A056517.P1544051331543559020

`A056523(A233583(n+1))+A056516(n)`
-/

namespace A056517.P1544051331543559020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056523 (A233583 (n + 1)).toNat + A056516 n

end

end A056517.P1544051331543559020

/-! ## A056517.P11974995558870630380

`A056523(A065033(2*n))+A056516(n)`
-/

namespace A056517.P11974995558870630380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056523 (A065033 (2 * n)).toNat + A056516 n

end

end A056517.P11974995558870630380

/-! ## A056517.P2236322141584963964

`A056523(A004275(n)+2-n)+A056516(n)`
-/

namespace A056517.P2236322141584963964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056523 (A004275 n + (2 - (n : ℤ))).toNat + A056516 n

end

end A056517.P2236322141584963964

/-! ## A056517.P577444429694006945

`A056523(A233583(n+1))+A056522(A233583(n+1))+A056515(n)`
-/

namespace A056517.P577444429694006945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056523 (A233583 (n + 1)).toNat + (A056522 (A233583 (n + 1)).toNat + A056515 n)

end

end A056517.P577444429694006945

/-!
# A056518: Number of primitive (period n) periodic palindromic structures using exactly two different symbols.

The programs for A056518, the canonical program `A056518.P10495334089397764284` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056518 has offset 1).

The definition of A056518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056518.P10638923932001938241

`A056513(n+1)-A000007(n)`
-/

namespace A056518.P10638923932001938241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056513 (n + 1) - A000007 n

end

end A056518.P10638923932001938241

namespace A056518

/-- `A056513(n+1)-A000007(n)` -/
def P10638923932001938241.Spec : Prop :=
  ∀ n, P10638923932001938241.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P7241422783104641400

`A056513(n+1)-A063524(n+1)`
-/

namespace A056518.P7241422783104641400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056513 (n + 1) - A063524 (n + 1)

end

end A056518.P7241422783104641400

namespace A056518

/-- `A056513(n+1)-A063524(n+1)` -/
def P7241422783104641400.Spec : Prop :=
  ∀ n, P7241422783104641400.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P7177147626972820335

`char[A056534(n+1)]*A056513(n+1)`
-/

namespace A056518.P7177147626972820335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056534 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056513 (n + 1)

end

end A056518.P7177147626972820335

namespace A056518

/-- `char[A056534(n+1)]*A056513(n+1)` -/
def P7177147626972820335.Spec : Prop :=
  ∀ n, P7177147626972820335.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P11262737233727308357

`char[A056535(n+1)]*A056513(n+1)`
-/

namespace A056518.P11262737233727308357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056535 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056513 (n + 1)

end

end A056518.P11262737233727308357

namespace A056518

/-- `char[A056535(n+1)]*A056513(n+1)` -/
def P11262737233727308357.Spec : Prop :=
  ∀ n, P11262737233727308357.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P18153070221750359000

`char[A056536(n+1)]*A056513(n+1)`
-/

namespace A056518.P18153070221750359000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056513 (n + 1)

end

end A056518.P18153070221750359000

namespace A056518

/-- `char[A056536(n+1)]*A056513(n+1)` -/
def P18153070221750359000.Spec : Prop :=
  ∀ n, P18153070221750359000.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P10106185448942213291

`char[A056537(n+1)]*A056513(n+1)`
-/

namespace A056518.P10106185448942213291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056537 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056513 (n + 1)

end

end A056518.P10106185448942213291

namespace A056518

/-- `char[A056537(n+1)]*A056513(n+1)` -/
def P10106185448942213291.Spec : Prop :=
  ∀ n, P10106185448942213291.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P4689531509989037267

`char[A056538(n+1)]*A056513(n+1)`
-/

namespace A056518.P4689531509989037267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056513 (n + 1)

end

end A056518.P4689531509989037267

namespace A056518

/-- `char[A056538(n+1)]*A056513(n+1)` -/
def P4689531509989037267.Spec : Prop :=
  ∀ n, P4689531509989037267.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P6371142380660503866

`n+A056513(n+1)-A123108(2*n)`
-/

namespace A056518.P6371142380660503866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (A056513 (n + 1) - A123108 (2 * n))

end

end A056518.P6371142380660503866

namespace A056518

/-- `n+A056513(n+1)-A123108(2*n)` -/
def P6371142380660503866.Spec : Prop :=
  ∀ n, P6371142380660503866.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P10495334089397764284

`∑{d}[n+1, A008683(#)*A056508((n+1)/#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A056518

/-- `∑{d}[n+1, A008683(#)*A056508((n+1)/#)]` -/
def P10495334089397764284.Spec : Prop :=
  ∀ n, P10495334089397764284.a n = A056518 (n + 1)

theorem P10495334089397764284.correct : P10495334089397764284.Spec := by
  intro n
  simp only [A056518, Nat.add_sub_cancel]

end A056518

/-! ## A056518.P12623067208949294832

`(2*n+1-A028310(2*n))*A056513(n+1)`
-/

namespace A056518.P12623067208949294832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A028310 (2 * n)) * A056513 (n + 1)

end

end A056518.P12623067208949294832

namespace A056518

/-- `(2*n+1-A028310(2*n))*A056513(n+1)` -/
def P12623067208949294832.Spec : Prop :=
  ∀ n, P12623067208949294832.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P5439609271684198394

`A056481(n+1)+A056513(n+1)-A056476(n+1)`
-/

namespace A056518.P5439609271684198394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 (n + 1) + (A056513 (n + 1) - A056476 (n + 1))

end

end A056518.P5439609271684198394

namespace A056518

/-- `A056481(n+1)+A056513(n+1)-A056476(n+1)` -/
def P5439609271684198394.Spec : Prop :=
  ∀ n, P5439609271684198394.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P16707803591961263946

`(A233583(2*(n+1))-A233583(2*n+1))*A056513(n+1)`
-/

namespace A056518.P16707803591961263946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233583 (2 * (n + 1)) - A233583 (2 * n + 1)) * A056513 (n + 1)

end

end A056518.P16707803591961263946

namespace A056518

/-- `(A233583(2*(n+1))-A233583(2*n+1))*A056513(n+1)` -/
def P16707803591961263946.Spec : Prop :=
  ∀ n, P16707803591961263946.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P6787320541174161841

`A056336(n+1)-A011949(n+1)`
-/

namespace A056518.P6787320541174161841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) - A011949 (n + 1)

end

end A056518.P6787320541174161841

namespace A056518

/-- `A056336(n+1)-A011949(n+1)` -/
def P6787320541174161841.Spec : Prop :=
  ∀ n, P6787320541174161841.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P13655476495064262631

`A056513(n+1)%A000079(n)`
-/

namespace A056518.P13655476495064262631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056513 (n + 1)) (A000079 n)

end

end A056518.P13655476495064262631

namespace A056518

/-- `A056513(n+1)%A000079(n)` -/
def P13655476495064262631.Spec : Prop :=
  ∀ n, P13655476495064262631.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P16881549256070267759

`and(A000225(n), A056513(n+1))`
-/

namespace A056518.P16881549256070267759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A056513 (n + 1))

end

end A056518.P16881549256070267759

namespace A056518

/-- `and(A000225(n), A056513(n+1))` -/
def P16881549256070267759.Spec : Prop :=
  ∀ n, P16881549256070267759.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P17580051193714883864

`A056481(2*n+1)+A056513(n+1)-A056513(2*n+1)`
-/

namespace A056518.P17580051193714883864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 (2 * n + 1) + (A056513 (n + 1) - A056513 (2 * n + 1))

end

end A056518.P17580051193714883864

namespace A056518

/-- `A056481(2*n+1)+A056513(n+1)-A056513(2*n+1)` -/
def P17580051193714883864.Spec : Prop :=
  ∀ n, P17580051193714883864.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P12044191604463138772

`A056481(2*n+1)/A056476(2*n+1)*A056513(n+1)`
-/

namespace A056518.P12044191604463138772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056481 (2 * n + 1) : ℚ) / (A056476 (2 * n + 1) : ℚ) * (A056513 (n + 1) : ℚ)

end

end A056518.P12044191604463138772

namespace A056518

/-- `A056481(2*n+1)/A056476(2*n+1)*A056513(n+1)` -/
def P12044191604463138772.Spec : Prop :=
  ∀ n, P12044191604463138772.a n = (A056518 (n + 1) : ℚ)

end A056518

/-! ## A056518.P1326778959966387053

`A056513(n+1)+A008683(2*(n+1)²)`
-/

namespace A056518.P1326778959966387053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056513 (n + 1) + A008683 (2 * (n + 1) ^ 2)

end

end A056518.P1326778959966387053

namespace A056518

/-- `A056513(n+1)+A008683(2*(n+1)²)` -/
def P1326778959966387053.Spec : Prop :=
  ∀ n, P1326778959966387053.a n = A056518 (n + 1)

end A056518

/-! ## A056518.P18262681981818174713

`A285037(∑[A008619(n)]+1)`
-/

namespace A056518.P18262681981818174713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285037 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A056518.P18262681981818174713

namespace A056518

/-- `A285037(∑[A008619(n)]+1)` -/
def P18262681981818174713.Spec : Prop :=
  ∀ n, P18262681981818174713.a n = A056518 (n + 1)

end A056518

/-!
# A056519: Number of primitive (period n) periodic palindromic structures using exactly three different symbols.

The programs for A056519, there is no canonical definition to state claims against.
-/

/-! ## A056519.P4984643345370770520

`A056514(n+1)-A056513(n+1)`
-/

namespace A056519.P4984643345370770520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056514 (n + 1) - A056513 (n + 1)

end

end A056519.P4984643345370770520

/-! ## A056519.P13993229234974692455

`∑{d}[n+1, A008683(#)*A056509((n+1)/#)]`
-/

namespace A056519.P13993229234974692455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056509 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056519.P13993229234974692455

/-! ## A056519.P12698144511433813456

`A056362(n+1)-(A328038(n+1)+A000046(n+1))`
-/

namespace A056519.P12698144511433813456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056362 (n + 1) - (A328038 (n + 1) + A000046 (n + 1))

end

end A056519.P12698144511433813456

/-! ## A056519.P9335973504324629404

`A285037(∑[A008619(A233583(n+1))])`
-/

namespace A056519.P9335973504324629404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285037 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056519.P9335973504324629404

/-! ## A056519.P17615981563804975697

`A285037(A036453(n+1)+∑[A008619(n)])`
-/

namespace A056519.P17615981563804975697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285037 (A036453 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056519.P17615981563804975697

/-!
# A056520: a(n) = (n + 2)*(2*n^2 - n + 3)/6.

The programs for A056520, the canonical program `A056520.P3004024428345388052` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056520 has offset 0).

The definition of A056520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056520.P3004024428345388052

`a(n-1)+n²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056520

/-- `a(n-1)+n²` -/
def P3004024428345388052.Spec : Prop :=
  ∀ n, (P3004024428345388052.a n : ℤ) = A056520 n

theorem P3004024428345388052.correct : P3004024428345388052.Spec := by
  intro n
  simp only [A056520]

end A056520

/-! ## A056520.P5305189564696282557

`A000330(n)+1`
-/

namespace A056520.P5305189564696282557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + 1

end

end A056520.P5305189564696282557

namespace A056520

/-- `A000330(n)+1` -/
def P5305189564696282557.Spec : Prop :=
  ∀ n, P5305189564696282557.a n = A056520 n

end A056520

/-! ## A056520.P6064388071106556352

`1+∑[n²]`
-/

namespace A056520.P6064388071106556352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P6064388071106556352

namespace A056520

/-- `1+∑[n²]` -/
def P6064388071106556352.Spec : Prop :=
  ∀ n, (P6064388071106556352.a n : ℤ) = A056520 n

end A056520

/-! ## A056520.P2124573588941959429

`∑[n^ceil(atan(n))]`
-/

namespace A056520.P2124573588941959429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P2124573588941959429

namespace A056520

/-- `∑[n^ceil(atan(n))]` -/
def P2124573588941959429.Spec : Prop :=
  ∀ n, P2124573588941959429.a n = (A056520 n : ℚ)

end A056520

/-! ## A056520.P18406021818861996574

`-xor(-1, ∑[n²])`
-/

namespace A056520.P18406021818861996574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A056520.P18406021818861996574

namespace A056520

/-- `-xor(-1, ∑[n²])` -/
def P18406021818861996574.Spec : Prop :=
  ∀ n, P18406021818861996574.a n = A056520 n

end A056520

/-! ## A056520.P11016439916995624580

`ceil(1/acot(∑[n²]))`
-/

namespace A056520.P11016439916995624580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A056520.P11016439916995624580

namespace A056520

/-- `ceil(1/acot(∑[n²]))` -/
def P11016439916995624580.Spec : Prop :=
  ∀ n, P11016439916995624580.a n = A056520 n

end A056520

/-! ## A056520.P2564118345772547799

`∑[round(1/acot(n²))]`
-/

namespace A056520.P2564118345772547799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P2564118345772547799

namespace A056520

/-- `∑[round(1/acot(n²))]` -/
def P2564118345772547799.Spec : Prop :=
  ∀ n, P2564118345772547799.a n = A056520 n

end A056520

/-! ## A056520.P1754974870713661220

`∑[(n-floor(acot(n)))²]`
-/

namespace A056520.P1754974870713661220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P1754974870713661220

namespace A056520

/-- `∑[(n-floor(acot(n)))²]` -/
def P1754974870713661220.Spec : Prop :=
  ∀ n, P1754974870713661220.a n = A056520 n

end A056520

/-! ## A056520.P4956549956391407985

`∑[ceil(n-acot(n))²]`
-/

namespace A056520.P4956549956391407985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P4956549956391407985

namespace A056520

/-- `∑[ceil(n-acot(n))²]` -/
def P4956549956391407985.Spec : Prop :=
  ∀ n, P4956549956391407985.a n = A056520 n

end A056520

/-! ## A056520.P5899599549341274657

`∑[(n^floor(atan(n)))²]`
-/

namespace A056520.P5899599549341274657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P5899599549341274657

namespace A056520

/-- `∑[(n^floor(atan(n)))²]` -/
def P5899599549341274657.Spec : Prop :=
  ∀ n, P5899599549341274657.a n = (A056520 n : ℚ)

end A056520

/-! ## A056520.P17530203598316067996

`∑[n^(2%(n+1))]`
-/

namespace A056520.P17530203598316067996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P17530203598316067996

namespace A056520

/-- `∑[n^(2%(n+1))]` -/
def P17530203598316067996.Spec : Prop :=
  ∀ n, (P17530203598316067996.a n : ℤ) = A056520 n

end A056520

/-! ## A056520.P8370627336356604661

`∑[(C(2, n²)-n)²]`
-/

namespace A056520.P8370627336356604661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n ^ 2) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P8370627336356604661

namespace A056520

/-- `∑[(C(2, n²)-n)²]` -/
def P8370627336356604661.Spec : Prop :=
  ∀ n, P8370627336356604661.a n = A056520 n

end A056520

/-! ## A056520.P6016557444119457144

`∑[gcd(n, C(2, n²))²]`
-/

namespace A056520.P6016557444119457144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 (n ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P6016557444119457144

namespace A056520

/-- `∑[gcd(n, C(2, n²))²]` -/
def P6016557444119457144.Spec : Prop :=
  ∀ n, (P6016557444119457144.a n : ℤ) = A056520 n

end A056520

/-! ## A056520.P16375791294383702716

`∑[n^(2*floor(atan(n)))]`
-/

namespace A056520.P16375791294383702716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 * ⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P16375791294383702716

namespace A056520

/-- `∑[n^(2*floor(atan(n)))]` -/
def P16375791294383702716.Spec : Prop :=
  ∀ n, P16375791294383702716.a n = (A056520 n : ℚ)

end A056520

/-! ## A056520.P13351405152947138408

`∑[n^(2-round(acot(n)))]`
-/

namespace A056520.P13351405152947138408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P13351405152947138408

namespace A056520

/-- `∑[n^(2-round(acot(n)))]` -/
def P13351405152947138408.Spec : Prop :=
  ∀ n, P13351405152947138408.a n = (A056520 n : ℚ)

end A056520

/-! ## A056520.P8752373700693838330

`∑[or(n², C(n, n²))]`
-/

namespace A056520.P8752373700693838330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n ^ 2) (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P8752373700693838330

namespace A056520

/-- `∑[or(n², C(n, n²))]` -/
def P8752373700693838330.Spec : Prop :=
  ∀ n, (P8752373700693838330.a n : ℤ) = A056520 n

end A056520

/-! ## A056520.P12201240892030361968

`∑[(n-∏{d}[n, log(#)])²]`
-/

namespace A056520.P12201240892030361968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) - ∏ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P12201240892030361968

namespace A056520

/-- `∑[(n-∏{d}[n, log(#)])²]` -/
def P12201240892030361968.Spec : Prop :=
  ∀ n, P12201240892030361968.a n = (A056520 n : ℝ)

end A056520

/-! ## A056520.P18035120136848884172

`∑[(∏{d}[n, log2(#)]-n)²]`
-/

namespace A056520.P18035120136848884172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f2 n), Real.logb 2 (d : ℝ) - (n : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P18035120136848884172

namespace A056520

/-- `∑[(∏{d}[n, log2(#)]-n)²]` -/
def P18035120136848884172.Spec : Prop :=
  ∀ n, P18035120136848884172.a n = (A056520 n : ℝ)

end A056520

/-! ## A056520.P2202993602241778937

`∑[(n-floor(cos(n)²))²]`
-/

namespace A056520.P2202993602241778937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ⌊Real.cos (n : ℝ) ^ 2⌋) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P2202993602241778937

namespace A056520

/-- `∑[(n-floor(cos(n)²))²]` -/
def P2202993602241778937.Spec : Prop :=
  ∀ n, P2202993602241778937.a n = A056520 n

end A056520

/-! ## A056520.P4136758364364730600

`∑[ceil(n-cos(n)²)²]`
-/

namespace A056520.P4136758364364730600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.cos (n : ℝ) ^ 2⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056520.P4136758364364730600

namespace A056520

/-- `∑[ceil(n-cos(n)²)²]` -/
def P4136758364364730600.Spec : Prop :=
  ∀ n, P4136758364364730600.a n = A056520 n

end A056520

/-!
# A056521: Number of primitive (period n) periodic palindromic structures using exactly four different symbols.

The programs for A056521, there is no canonical definition to state claims against.
-/

/-! ## A056521.P5848069088176027289

`A056515(n+1)-A056514(n+1)`
-/

namespace A056521.P5848069088176027289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056515 (n + 1) - A056514 (n + 1)

end

end A056521.P5848069088176027289

/-! ## A056521.P18187209092776129835

`∑{d}[n+1, A008683(#)*A056510((n+1)/#)]`
-/

namespace A056521.P18187209092776129835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056510 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056521.P18187209092776129835

/-! ## A056521.P9888390303904491762

`A056368(n+1)-A328039(n+1)`
-/

namespace A056521.P9888390303904491762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056368 (n + 1) - A328039 (n + 1)

end

end A056521.P9888390303904491762

/-! ## A056521.P13469035927516178133

`A056363(n+1)-(A328039(n+1)+A056362(n+1))`
-/

namespace A056521.P13469035927516178133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056363 (n + 1) - (A328039 (n + 1) + A056362 (n + 1))

end

end A056521.P13469035927516178133

/-! ## A056521.P15094210324907720029

`A056368(n+1)+A328657(n+1)-A328658(n+1)`
-/

namespace A056521.P15094210324907720029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056368 (n + 1) + (A328657 (n + 1) - A328658 (n + 1))

end

end A056521.P15094210324907720029

/-! ## A056521.P5175067967189580936

`(A056368(n+1)+A056354(n))%(A328039(n+1)+A056354(n))`
-/

namespace A056521.P5175067967189580936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056368 (n + 1) + A056354 n) (A328039 (n + 1) + A056354 n)

end

end A056521.P5175067967189580936

/-!
# A056522: Number of primitive (period n) periodic palindromic structures using exactly five different symbols.

The programs for A056522, there is no canonical definition to state claims against.
-/

/-! ## A056522.P549112001563845441

`A056516(n+1)-A056515(n+1)`
-/

namespace A056522.P549112001563845441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056516 (n + 1) - A056515 (n + 1)

end

end A056522.P549112001563845441

/-! ## A056522.P11688835985242589496

`∑{d}[n+1, A008683(#)*A056511((n+1)/#)]`
-/

namespace A056522.P11688835985242589496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056522.P11688835985242589496

/-! ## A056522.P6542308112939182223

`A056517(n+1)-(A056523(n+1)+A056515(n+1))`
-/

namespace A056522.P6542308112939182223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056517 (n + 1) - (A056523 (n + 1) + A056515 (n + 1))

end

end A056522.P6542308112939182223

/-! ## A056522.P14640838293436429194

`∑{d}[n+1, A056511(#)*A305255((n+1)/#-1)]`
-/

namespace A056522.P14640838293436429194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056511 d * A305255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A056522.P14640838293436429194

/-!
# A056523: Number of primitive (period n) periodic palindromic structures using exactly six different symbols.

The programs for A056523, there is no canonical definition to state claims against.
-/

/-! ## A056523.P3055197552359472446

`A056517(n+1)-A056516(n+1)`
-/

namespace A056523.P3055197552359472446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056517 (n + 1) - A056516 (n + 1)

end

end A056523.P3055197552359472446

/-! ## A056523.P9892283884008221840

`∑{d}[n+1, A008683(#)*A056512((n+1)/#)]`
-/

namespace A056523.P9892283884008221840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056523.P9892283884008221840

/-! ## A056523.P14650830835149276014

`∑{d}[n+1, A056512(#)*A069158((n+1)/#)]`
-/

namespace A056523.P14650830835149276014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056512 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056523.P14650830835149276014

/-! ## A056523.P3927423334236557608

`∑{d}[n+1, A056512(#)*A253206((n+1)/#)]`
-/

namespace A056523.P3927423334236557608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056512 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056523.P3927423334236557608

/-! ## A056523.P1534597506954001407

`∑{d}[n+1, A056512(#)*A061220((n+1)/#)]`
-/

namespace A056523.P1534597506954001407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056512 d * A061220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056523.P1534597506954001407

/-!
# A056524: Palindromes with even number of digits.

The programs for A056524, there is no canonical definition to state claims against.
-/

/-! ## A056524.P14788664205218293533

`11*A066492(n+1)`
-/

namespace A056524.P14788664205218293533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A066492 (n + 1)

end

end A056524.P14788664205218293533

/-! ## A056524.P9685896881922974726

`(n+1)*10^A055642(n+1)+A004086(n+1)`
-/

namespace A056524.P9685896881922974726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (A055642 (n + 1) : ℤ) + (A004086 (n + 1) : ℚ)

end

end A056524.P9685896881922974726

/-! ## A056524.P14634582965406614710

`A020338(n+1)-A056965(n+1)`
-/

namespace A056524.P14634582965406614710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1) - A056965 (n + 1)

end

end A056524.P14634582965406614710

/-! ## A056524.P11985809669895995126

`A020338(n+1)-n-(1-A004086(n+1))`
-/

namespace A056524.P11985809669895995126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1) - (n : ℤ) - (1 - A004086 (n + 1))

end

end A056524.P11985809669895995126

/-! ## A056524.P5450378927826114236

`A002113(A061601(n+1)+3+2*n)`
-/

namespace A056524.P5450378927826114236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A061601 (n + 1) + 3 + (2 * n : ℤ)).toNat

end

end A056524.P5450378927826114236

/-! ## A056524.P7124598291052447764

`A002113(10^A055642(n+1)+n+1)`
-/

namespace A056524.P7124598291052447764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A055642 (n + 1) : ℤ) + (n + 1 : ℚ))).toNat

end

end A056524.P7124598291052447764

/-! ## A056524.P6557532198114392898

`record[11*A066492(A152271(n))]`
-/

namespace A056524.P6557532198114392898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A066492 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056524.P6557532198114392898

/-! ## A056524.P2948371026631932276

`∩[A050785(n+1), A272655(n+1)]`
-/

namespace A056524.P2948371026631932276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P2948371026631932276

/-! ## A056524.P7073300681224071561

`∩[A068062(n+1), A272655(n+1)]`
-/

namespace A056524.P7073300681224071561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P7073300681224071561

/-! ## A056524.P12672477451526326512

`∩[A083852(n+1), A272655(n+1)]`
-/

namespace A056524.P12672477451526326512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P12672477451526326512

/-! ## A056524.P11106054212761261553

`∩[A002113(n+1), A272655(n+1)]`
-/

namespace A056524.P11106054212761261553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P11106054212761261553

/-! ## A056524.P12908148276739714535

`∩[A061379(n+1), A272655(n+1)]`
-/

namespace A056524.P12908148276739714535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P12908148276739714535

/-! ## A056524.P14625535325095617299

`∩[A050785(n+1), A333440(n+1)]`
-/

namespace A056524.P14625535325095617299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P14625535325095617299

/-! ## A056524.P18246850064358846543

`∩[A061379(n+1), A333440(n+1)]`
-/

namespace A056524.P18246850064358846543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P18246850064358846543

/-! ## A056524.P18168749232795204779

`∩[A002113(n+1), A283871(n+1)]`
-/

namespace A056524.P18168749232795204779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P18168749232795204779

/-! ## A056524.P7655763786909616922

`∩[A050785(n+1), A283870(n+1)]`
-/

namespace A056524.P7655763786909616922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P7655763786909616922

/-! ## A056524.P5715492893256122247

`∩[A050785(n+1), A283871(n+1)]`
-/

namespace A056524.P5715492893256122247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P5715492893256122247

/-! ## A056524.P5566113887108492962

`∩[A061379(n+1), A283871(n+1)]`
-/

namespace A056524.P5566113887108492962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P5566113887108492962

/-! ## A056524.P13799766254305228731

`∩[A068062(n+1), A283871(n+1)]`
-/

namespace A056524.P13799766254305228731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P13799766254305228731

/-! ## A056524.P14896772455145531512

`∩[A083852(n+1), A283870(n+1)]`
-/

namespace A056524.P14896772455145531512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056524.P14896772455145531512

/-!
# A056525: Palindromes with odd number of digits.

The programs for A056525, there is no canonical definition to state claims against.
-/

/-! ## A056525.P14423690656355868065

`floor((n+1)/10)*10^A055642(n+1)+A004086(n+1)`
-/

namespace A056525.P14423690656355868065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / 10⌋ : ℚ) * (10 : ℚ) ^ (A055642 (n + 1) : ℤ) + (A004086 (n + 1) : ℚ)

end

end A056525.P14423690656355868065

/-! ## A056525.P11638478356215794054

`∪[A045571(n+1), A083851(n+1)]`
-/

namespace A056525.P11638478356215794054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056525.P11638478356215794054

/-! ## A056525.P14339996111207624322

`A002113(A020338(n+1)%A017377(n))`
-/

namespace A056525.P14339996111207624322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (Int.tmod (A020338 (n + 1)) (A017377 n)).toNat

end

end A056525.P14339996111207624322

/-! ## A056525.P11034981417827399240

`∪[A068061(n+1), A261914(A068061(n+2))]`
-/

namespace A056525.P11034981417827399240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A068061 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056525.P11034981417827399240

/-! ## A056525.P906633934117203561

`∪[A056142((n+1)^ceil(n/98)), A083851(n+1)]`
-/

namespace A056525.P906633934117203561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056525.P906633934117203561

/-! ## A056525.P522691381734125758

`∪[A004086(A056142(n+1)), A083851(n+1)]`
-/

namespace A056525.P522691381734125758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056525.P522691381734125758

/-! ## A056525.P5794006447940418533

`∪[A059995(A020338(n+1)), A083851(n+1)]`
-/

namespace A056525.P5794006447940418533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A020338 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056525.P5794006447940418533

/-! ## A056525.P8341147308413922452

`A056142((n+1)^ceil(n/98))`
-/

namespace A056525.P8341147308413922452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ))).toNat

end

end A056525.P8341147308413922452

/-! ## A056525.P1825305613559893162

`A059995(∑[2*(n+1)]+(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))`
-/

namespace A056525.P1825305613559893162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))).toNat

end

end A056525.P1825305613559893162

/-! ## A056525.P12995252850611955136

`A004086(A056142(n+1))`
-/

namespace A056525.P12995252850611955136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056142 (n + 1)).toNat

end

end A056525.P12995252850611955136

/-!
# A056526: First differences of Flavius Josephus's sieve.

The programs for A056526, there is no canonical definition to state claims against.
-/

/-! ## A056526.P1608655477437694841

`A000960(n+2)-A000960(n+1)`
-/

namespace A056526.P1608655477437694841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 2) - A000960 (n + 1)

end

end A056526.P1608655477437694841

/-! ## A056526.P10707672989919731722

`Δ[A278484(n)]`
-/

namespace A056526.P10707672989919731722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056526.P10707672989919731722

/-! ## A056526.P3478772128314882829

`2*A099072(n+1)`
-/

namespace A056526.P3478772128314882829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099072 (n + 1)

end

end A056526.P3478772128314882829

/-! ## A056526.P10745181441946944326

`Δ[∪[A099061(n), A099062(n)]]`
-/

namespace A056526.P10745181441946944326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099061 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099062 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056526.P10745181441946944326

/-! ## A056526.P15038047258057203941

`A278484(n+1)-A278484(n)`
-/

namespace A056526.P15038047258057203941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 (n + 1) - A278484 n

end

end A056526.P15038047258057203941

/-! ## A056526.P2100210243742396382

`Δ[A000960(n+1)]`
-/

namespace A056526.P2100210243742396382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056526.P2100210243742396382

/-! ## A056526.P7762917220379056875

`A004277(A099072(n+1))`
-/

namespace A056526.P7762917220379056875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A099072 (n + 1)).toNat

end

end A056526.P7762917220379056875

/-! ## A056526.P14666674452530800762

`abs(Δ[A000960(A008621(4*n))])`
-/

namespace A056526.P14666674452530800762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A008621 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A056526.P14666674452530800762

/-! ## A056526.P5709760620010801977

`Δ[A278505(∑[n+1])]`
-/

namespace A056526.P5709760620010801977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056526.P5709760620010801977

/-! ## A056526.P9595188935174172844

`Δ[A278503(∑[n]+1)]`
-/

namespace A056526.P9595188935174172844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056526.P9595188935174172844

/-! ## A056526.P12496313336908629132

`Δ[eq[0, A278528(n+1)]]`
-/

namespace A056526.P12496313336908629132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056526.P12496313336908629132

/-! ## A056526.P17587340907008214468

`Δ[eq[1, A278169(n+1)]]`
-/

namespace A056526.P17587340907008214468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056526.P17587340907008214468

/-!
# A056527: Numbers where iterated sum of digits of square settles down to a cyclic pattern (in fact 13, 16, 13, 16, ...).

The programs for A056527, the canonical program `A056527.P10880062332624072806` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056527 has offset 1).

The definition of A056527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056527.P10880062332624072806

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=7, a(4)=11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056527

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P10880062332624072806.Spec : Prop :=
  ∀ n, P10880062332624072806.a n = A056527 (n + 1)

theorem P10880062332624072806.correct : P10880062332624072806.Spec := by
  intro n
  simp only [A056527, Nat.add_sub_cancel]

end A056527

/-! ## A056527.P2475222005620307903

`a(n-4)+9` with `a(0)=2, a(1)=4, a(2)=5, a(3)=7`
-/

namespace A056527.P2475222005620307903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 5, 7] fun n a =>
  a (n - 4) + 9

end

end A056527.P2475222005620307903

namespace A056527

/-- `a(n-4)+9` -/
def P2475222005620307903.Spec : Prop :=
  ∀ n, (P2475222005620307903.a n : ℤ) = A056527 (n + 1)

end A056527

/-! ## A056527.P17526234982629709039

`∑[4/a(n-2)]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A056527.P17526234982629709039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  4 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056527.P17526234982629709039

namespace A056527

/-- `∑[4/a(n-2)]` -/
def P17526234982629709039.Spec : Prop :=
  ∀ n, P17526234982629709039.a n = (A056527 (n + 1) : ℚ)

end A056527

/-! ## A056527.P2984197741016053687

`eq[1, val((2*n)²+5, 3)]`
-/

namespace A056527.P2984197741016053687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n) ^ 2 + 5) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056527.P2984197741016053687

namespace A056527

/-- `eq[1, val((2*n)²+5, 3)]` -/
def P2984197741016053687.Spec : Prop :=
  ∀ n, (P2984197741016053687.a n : ℤ) = A056527 (n + 1)

end A056527

/-! ## A056527.P14317654256926164921

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A056527.P14317654256926164921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 2, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056527.P14317654256926164921

namespace A056527

/-- `∑[floor(a(n-4))]` -/
def P14317654256926164921.Spec : Prop :=
  ∀ n, (P14317654256926164921.a n : ℤ) = A056527 (n + 1)

end A056527

/-! ## A056527.P17031845821940317568

`∑[2^∑[(char[1]-1)^∑[n]]]`
-/

namespace A056527.P17031845821940317568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - 1) ^ (∑ j ∈ Finset.range (n + 1), f4 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056527.P17031845821940317568

namespace A056527

/-- `∑[2^∑[(char[1]-1)^∑[n]]]` -/
def P17031845821940317568.Spec : Prop :=
  ∀ n, P17031845821940317568.a n = (A056527 (n + 1) : ℚ)

end A056527

/-! ## A056527.P10807265840996993590

`round(xor(2, n)/4+2*n+1)`
-/

namespace A056527.P10807265840996993590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 n : ℚ) / 4 + (2 * n + 1 : ℚ))

end

end A056527.P10807265840996993590

namespace A056527

/-- `round(xor(2, n)/4+2*n+1)` -/
def P10807265840996993590.Spec : Prop :=
  ∀ n, P10807265840996993590.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P1616211843480966519

`A047207(n+1)+or(2, n)`
-/

namespace A056527.P1616211843480966519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (n + 1) + (Nat.lor 2 n : ℤ)

end

end A056527.P1616211843480966519

namespace A056527

/-- `A047207(n+1)+or(2, n)` -/
def P1616211843480966519.Spec : Prop :=
  ∀ n, P1616211843480966519.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P8571269197238993544

`A047495(n+1)+A002265(n)`
-/

namespace A056527.P8571269197238993544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047495 (n + 1) + A002265 n

end

end A056527.P8571269197238993544

namespace A056527

/-- `A047495(n+1)+A002265(n)` -/
def P8571269197238993544.Spec : Prop :=
  ∀ n, P8571269197238993544.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P4498614572535470456

`A047300(n+1)+A004525(n)`
-/

namespace A056527.P4498614572535470456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047300 (n + 1) + A004525 n

end

end A056527.P4498614572535470456

namespace A056527

/-- `A047300(n+1)+A004525(n)` -/
def P4498614572535470456.Spec : Prop :=
  ∀ n, P4498614572535470456.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P1588066502814897515

`A047315(n+1)+A004524(n)`
-/

namespace A056527.P1588066502814897515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047315 (n + 1) + A004524 n

end

end A056527.P1588066502814897515

namespace A056527

/-- `A047315(n+1)+A004524(n)` -/
def P1588066502814897515.Spec : Prop :=
  ∀ n, P1588066502814897515.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P13151225201711723372

`A047415(n+1)+A008621(n)`
-/

namespace A056527.P13151225201711723372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (n + 1) + A008621 n

end

end A056527.P13151225201711723372

namespace A056527

/-- `A047415(n+1)+A008621(n)` -/
def P13151225201711723372.Spec : Prop :=
  ∀ n, P13151225201711723372.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P10776575880501808343

`A066530(n)+A047227(n+1)`
-/

namespace A056527.P10776575880501808343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 n + A047227 (n + 1)

end

end A056527.P10776575880501808343

namespace A056527

/-- `A066530(n)+A047227(n+1)` -/
def P10776575880501808343.Spec : Prop :=
  ∀ n, P10776575880501808343.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P5601181595492126593

`A080513(n)+A047338(n+1)`
-/

namespace A056527.P5601181595492126593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A047338 (n + 1)

end

end A056527.P5601181595492126593

namespace A056527

/-- `A080513(n)+A047338(n+1)` -/
def P5601181595492126593.Spec : Prop :=
  ∀ n, P5601181595492126593.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P15623572934080115978

`A047201(A098180(n)+1)+n`
-/

namespace A056527.P15623572934080115978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A098180 n + 1).toNat + (n : ℤ)

end

end A056527.P15623572934080115978

namespace A056527

/-- `A047201(A098180(n)+1)+n` -/
def P15623572934080115978.Spec : Prop :=
  ∀ n, P15623572934080115978.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P1803392763845420391

`A110654(n)+A047362(n+1)`
-/

namespace A056527.P1803392763845420391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A047362 (n + 1)

end

end A056527.P1803392763845420391

namespace A056527

/-- `A110654(n)+A047362(n+1)` -/
def P1803392763845420391.Spec : Prop :=
  ∀ n, P1803392763845420391.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P18225723086052525166

`A110655(n)+A047417(n+1)`
-/

namespace A056527.P18225723086052525166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A047417 (n + 1)

end

end A056527.P18225723086052525166

namespace A056527

/-- `A110655(n)+A047417(n+1)` -/
def P18225723086052525166.Spec : Prop :=
  ∀ n, P18225723086052525166.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P6082821590030999233

`A129756(n)+A047298(n+1)`
-/

namespace A056527.P6082821590030999233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n + A047298 (n + 1)

end

end A056527.P6082821590030999233

namespace A056527

/-- `A129756(n)+A047298(n+1)` -/
def P6082821590030999233.Spec : Prop :=
  ∀ n, P6082821590030999233.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P3470072080456299675

`A130766(n)+A047251(n+1)`
-/

namespace A056527.P3470072080456299675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047251 (n + 1)

end

end A056527.P3470072080456299675

namespace A056527

/-- `A130766(n)+A047251(n+1)` -/
def P3470072080456299675.Spec : Prop :=
  ∀ n, P3470072080456299675.a n = A056527 (n + 1)

end A056527

/-! ## A056527.P2511607220730346338

`A174091(n)+A047207(n+1)`
-/

namespace A056527.P2511607220730346338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174091 n + A047207 (n + 1)

end

end A056527.P2511607220730346338

namespace A056527

/-- `A174091(n)+A047207(n+1)` -/
def P2511607220730346338.Spec : Prop :=
  ∀ n, P2511607220730346338.a n = A056527 (n + 1)

end A056527

/-!
# A056528: Sum of digits of square of sum of digits of square.

The programs for A056528, the canonical program `A056528.P4442300986705318360` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056528 has offset 1).

The definition of A056528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056528.P4442300986705318360

`A004159(A004159(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056528

/-- `A004159(A004159(n+1))` -/
def P4442300986705318360.Spec : Prop :=
  ∀ n, P4442300986705318360.a n = A056528 (n + 1)

theorem P4442300986705318360.correct : P4442300986705318360.Spec := by
  intro n
  simp only [A056528, Nat.add_sub_cancel]

end A056528

/-! ## A056528.P7109880091866409156

`∑{digits}[∑{digits}[(n+1)², #]², #]`
-/

namespace A056528.P7109880091866409156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A056528.P7109880091866409156

namespace A056528

/-- `∑{digits}[∑{digits}[(n+1)², #]², #]` -/
def P7109880091866409156.Spec : Prop :=
  ∀ n, (P7109880091866409156.a n : ℤ) = A056528 (n + 1)

end A056528

/-! ## A056528.P656069807931013064

`∑{digits}[Δ[A071317(n)]², #]`
-/

namespace A056528.P656069807931013064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A056528.P656069807931013064

namespace A056528

/-- `∑{digits}[Δ[A071317(n)]², #]` -/
def P656069807931013064.Spec : Prop :=
  ∀ n, (P656069807931013064.a n : ℤ) = A056528 (n + 1)

end A056528

/-! ## A056528.P7222644279123478891

`A007953(Δ[A071317(n)]²)`
-/

namespace A056528.P7222644279123478891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A056528.P7222644279123478891

namespace A056528

/-- `A007953(Δ[A071317(n)]²)` -/
def P7222644279123478891.Spec : Prop :=
  ∀ n, P7222644279123478891.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P15325715708803546802

`∑{digits}[A000290(Δ[A071317(n)]), #]`
-/

namespace A056528.P15325715708803546802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A056528.P15325715708803546802

namespace A056528

/-- `∑{digits}[A000290(Δ[A071317(n)]), #]` -/
def P15325715708803546802.Spec : Prop :=
  ∀ n, (P15325715708803546802.a n : ℤ) = A056528 (n + 1)

end A056528

/-! ## A056528.P1715891589815733079

`A007953(∑[A240752(n+1)]²)`
-/

namespace A056528.P1715891589815733079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A056528.P1715891589815733079

namespace A056528

/-- `A007953(∑[A240752(n+1)]²)` -/
def P1715891589815733079.Spec : Prop :=
  ∀ n, P1715891589815733079.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P10157088068899626731

`A007953(A004159(abs(xor(n, -1)))²)`
-/

namespace A056528.P10157088068899626731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004159 |Int.xor (n : ℤ) (-1)|.toNat ^ 2).toNat

end

end A056528.P10157088068899626731

namespace A056528

/-- `A007953(A004159(abs(xor(n, -1)))²)` -/
def P10157088068899626731.Spec : Prop :=
  ∀ n, P10157088068899626731.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P5140930823190600561

`A007953(A004159(-xor(n, -1))²)`
-/

namespace A056528.P5140930823190600561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004159 (-Int.xor (n : ℤ) (-1)).toNat ^ 2).toNat

end

end A056528.P5140930823190600561

namespace A056528

/-- `A007953(A004159(-xor(n, -1))²)` -/
def P5140930823190600561.Spec : Prop :=
  ∀ n, P5140930823190600561.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P12332717395637180408

`A007953(A004159(1-(n-2*n))²)`
-/

namespace A056528.P12332717395637180408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004159 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat ^ 2).toNat

end

end A056528.P12332717395637180408

namespace A056528

/-- `A007953(A004159(1-(n-2*n))²)` -/
def P12332717395637180408.Spec : Prop :=
  ∀ n, P12332717395637180408.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P579397524720038880

`A007953(A000290(∑[A240752(n+1)]))`
-/

namespace A056528.P579397524720038880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A056528.P579397524720038880

namespace A056528

/-- `A007953(A000290(∑[A240752(n+1)]))` -/
def P579397524720038880.Spec : Prop :=
  ∀ n, P579397524720038880.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P11964109840987775424

`A007953((A067552(n+1)-A118881(n+1))²)`
-/

namespace A056528.P11964109840987775424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((A067552 (n + 1) - A118881 (n + 1)) ^ 2).toNat

end

end A056528.P11964109840987775424

namespace A056528

/-- `A007953((A067552(n+1)-A118881(n+1))²)` -/
def P11964109840987775424.Spec : Prop :=
  ∀ n, P11964109840987775424.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P623347038029709768

`A007953(A118881((n+1)²))`
-/

namespace A056528.P623347038029709768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118881 ((n + 1) ^ 2)).toNat

end

end A056528.P623347038029709768

namespace A056528

/-- `A007953(A118881((n+1)²))` -/
def P623347038029709768.Spec : Prop :=
  ∀ n, P623347038029709768.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P261329023111392855

`A007953(A007953((n+1)²)²)`
-/

namespace A056528.P261329023111392855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007953 ((n + 1) ^ 2) ^ 2).toNat

end

end A056528.P261329023111392855

namespace A056528

/-- `A007953(A007953((n+1)²)²)` -/
def P261329023111392855.Spec : Prop :=
  ∀ n, P261329023111392855.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P6724572992017880592

`A007953(A000290(A007953(∑[2*n+1])))`
-/

namespace A056528.P6724572992017880592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000290 (A007953 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A056528.P6724572992017880592

namespace A056528

/-- `A007953(A000290(A007953(∑[2*n+1])))` -/
def P6724572992017880592.Spec : Prop :=
  ∀ n, P6724572992017880592.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P10404322164421871931

`A007953(A338829(A118881((n+1)*(n+1))))`
-/

namespace A056528.P10404322164421871931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A338829 (A118881 ((n + 1) * (n + 1))).toNat).toNat

end

end A056528.P10404322164421871931

namespace A056528

/-- `A007953(A338829(A118881((n+1)*(n+1))))` -/
def P10404322164421871931.Spec : Prop :=
  ∀ n, P10404322164421871931.a n = A056528 (n + 1)

end A056528

/-! ## A056528.P1462768948028340330

`A007953(A048760(A000290(A007953(A000290(n+1)))))`
-/

namespace A056528.P1462768948028340330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A048760 (A000290 (A007953 (A000290 (n + 1)).toNat).toNat).toNat).toNat

end

end A056528.P1462768948028340330

namespace A056528

/-- `A007953(A048760(A000290(A007953(A000290(n+1)))))` -/
def P1462768948028340330.Spec : Prop :=
  ∀ n, P1462768948028340330.a n = A056528 (n + 1)

end A056528

/-!
# A056529: Number of iterations of sum of digits of square to reach 1, 9, 13 or 16.

The programs for A056529, there is no canonical definition to state claims against.
-/

/-! ## A056529.P3035996440810796785

`A091841(A322981(n+1))%A299918(3*n+4)`
-/

namespace A056529.P3035996440810796785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091841 (A322981 (n + 1)).toNat) (A299918 (3 * n + 4))

end

end A056529.P3035996440810796785

/-! ## A056529.P4203749283277018465

`A190440(A001970(n)+2^n)`
-/

namespace A056529.P4203749283277018465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190440 (A001970 n + (2 ^ n : ℤ)).toNat

end

end A056529.P4203749283277018465

/-! ## A056529.P5127357622953809460

`A269591(2*A290620(n))`
-/

namespace A056529.P5127357622953809460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269591 (2 * A290620 n).toNat

end

end A056529.P5127357622953809460

/-! ## A056529.P11266647770425768464

`A004557(A046890(n)+A009766(n))`
-/

namespace A056529.P11266647770425768464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004557 (A046890 n + A009766 n).toNat

end

end A056529.P11266647770425768464

/-! ## A056529.P13958332993014566736

`A089235(xor(A089223(n+1), A304961(n)))`
-/

namespace A056529.P13958332993014566736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089235 (Int.xor (A089223 (n + 1)) (A304961 n)).toNat

end

end A056529.P13958332993014566736

/-!
# A056530: Sequence remaining after third round of Flavius Josephus sieve; remove every fourth term of A047241.

The programs for A056530, the canonical program `A056530.P8999437234536350367` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056530 has offset 1).

The definition of A056530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056530.P8999437234536350367

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056530

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P8999437234536350367.Spec : Prop :=
  ∀ n, P8999437234536350367.a n = A056530 (n + 1)

theorem P8999437234536350367.correct : P8999437234536350367.Spec := by
  intro n
  simp only [A056530, Nat.add_sub_cancel]

end A056530

/-! ## A056530.P9402636456574388769

`4*(n+1)-(13+2*A131713(n+1))/3`
-/

namespace A056530.P9402636456574388769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℚ) - (13 + 2 * A131713 (n + 1) : ℚ) / 3

end

end A056530.P9402636456574388769

namespace A056530

/-- `4*(n+1)-(13+2*A131713(n+1))/3` -/
def P9402636456574388769.Spec : Prop :=
  ∀ n, P9402636456574388769.a n = (A056530 (n + 1) : ℚ)

end A056530

/-! ## A056530.P18091486585222574930

`or(1, 3*comp[or(3, n)])`
-/

namespace A056530.P18091486585222574930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A056530.P18091486585222574930

namespace A056530

/-- `or(1, 3*comp[or(3, n)])` -/
def P18091486585222574930.Spec : Prop :=
  ∀ n, (P18091486585222574930.a n : ℤ) = A056530 (n + 1)

end A056530

/-! ## A056530.P7835244132898495384

`a(n-3)+12` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A056530.P7835244132898495384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 3) + 12

end

end A056530.P7835244132898495384

namespace A056530

/-- `a(n-3)+12` -/
def P7835244132898495384.Spec : Prop :=
  ∀ n, (P7835244132898495384.a n : ℤ) = A056530 (n + 1)

end A056530

/-! ## A056530.P11259182262271844914

`gcd(3, n)+4*n-2`
-/

namespace A056530.P11259182262271844914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℤ) + ((4 * n : ℤ) - 2)

end

end A056530.P11259182262271844914

namespace A056530

/-- `gcd(3, n)+4*n-2` -/
def P11259182262271844914.Spec : Prop :=
  ∀ n, P11259182262271844914.a n = A056530 (n + 1)

end A056530

/-! ## A056530.P16772096525957476658

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A056530.P16772096525957476658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056530.P16772096525957476658

namespace A056530

/-- `∑[abs(a(n-3))]` -/
def P16772096525957476658.Spec : Prop :=
  ∀ n, (P16772096525957476658.a n : ℤ) = A056530 (n + 1)

end A056530

/-! ## A056530.P18373147936901737836

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A056530.P18373147936901737836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056530.P18373147936901737836

namespace A056530

/-- `∑[floor(a(n-3))]` -/
def P18373147936901737836.Spec : Prop :=
  ∀ n, (P18373147936901737836.a n : ℤ) = A056530 (n + 1)

end A056530

/-! ## A056530.P15053496362979661154

`or(1, 4*n-n²%3)`
-/

namespace A056530.P15053496362979661154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((4 * n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A056530.P15053496362979661154

namespace A056530

/-- `or(1, 4*n-n²%3)` -/
def P15053496362979661154.Spec : Prop :=
  ∀ n, P15053496362979661154.a n = A056530 (n + 1)

end A056530

/-! ## A056530.P17637527253626742182

`∑[a(n-3)%7]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A056530.P17637527253626742182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056530.P17637527253626742182

namespace A056530

/-- `∑[a(n-3)%7]` -/
def P17637527253626742182.Spec : Prop :=
  ∀ n, (P17637527253626742182.a n : ℤ) = A056530 (n + 1)

end A056530

/-! ## A056530.P16368161970152555554

`2*∑[dr(3*n)/3]+1`
-/

namespace A056530.P16368161970152555554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A056530.P16368161970152555554

namespace A056530

/-- `2*∑[dr(3*n)/3]+1` -/
def P16368161970152555554.Spec : Prop :=
  ∀ n, P16368161970152555554.a n = (A056530 (n + 1) : ℚ)

end A056530

/-! ## A056530.P12129915349701284081

`eq[2, gcd(n-1, (n+1)%6)]`
-/

namespace A056530.P12129915349701284081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (((n + 1) % 6 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056530.P12129915349701284081

namespace A056530

/-- `eq[2, gcd(n-1, (n+1)%6)]` -/
def P12129915349701284081.Spec : Prop :=
  ∀ n, (P12129915349701284081.a n : ℤ) = A056530 (n + 1)

end A056530

/-! ## A056530.P13890424785152305345

`∑[∑[ogf((1+2x+4x^2+5x^3)/(1+x+x^2))]]`
-/

namespace A056530.P13890424785152305345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 5] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056530.P13890424785152305345

namespace A056530

/-- `∑[∑[ogf((1+2x+4x^2+5x^3)/(1+x+x^2))]]` -/
def P13890424785152305345.Spec : Prop :=
  ∀ n, P13890424785152305345.a n = A056530 (n + 1)

end A056530

/-! ## A056530.P3453123369192264817

`ogf((1+2x+4x^2+5x^3)/(1-x-x^3+x^4))`
-/

namespace A056530.P3453123369192264817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 5] [1, -1, 0, -1, 1] n

end

end A056530.P3453123369192264817

namespace A056530

/-- `ogf((1+2x+4x^2+5x^3)/(1-x-x^3+x^4))` -/
def P3453123369192264817.Spec : Prop :=
  ∀ n, P3453123369192264817.a n = A056530 (n + 1)

end A056530

/-! ## A056530.P13068159335439664018

`2*(char[3*n]+2*n)-1`
-/

namespace A056530.P13068159335439664018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) : ℕ) : ℤ) - 1

end

end A056530.P13068159335439664018

namespace A056530

/-- `2*(char[3*n]+2*n)-1` -/
def P13068159335439664018.Spec : Prop :=
  ∀ n, P13068159335439664018.a n = A056530 (n + 1)

end A056530

/-! ## A056530.P7191981412516623254

`record[2*n+and(n, n+1)+1]`
-/

namespace A056530.P7191981412516623254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.land n (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056530.P7191981412516623254

namespace A056530

/-- `record[2*n+and(n, n+1)+1]` -/
def P7191981412516623254.Spec : Prop :=
  ∀ n, (P7191981412516623254.a n : ℤ) = A056530 (n + 1)

end A056530

/-! ## A056530.P15397447053796236309

`record[and(n, n+1)+n+1+n]`
-/

namespace A056530.P15397447053796236309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056530.P15397447053796236309

namespace A056530

/-- `record[and(n, n+1)+n+1+n]` -/
def P15397447053796236309.Spec : Prop :=
  ∀ n, (P15397447053796236309.a n : ℤ) = A056530 (n + 1)

end A056530

/-! ## A056530.P2111095293537622511

`record[2*(2*n+1)-or(n, n+1)]`
-/

namespace A056530.P2111095293537622511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (2 * n + 1) : ℤ) - (Nat.lor n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056530.P2111095293537622511

namespace A056530

/-- `record[2*(2*n+1)-or(n, n+1)]` -/
def P2111095293537622511.Spec : Prop :=
  ∀ n, P2111095293537622511.a n = A056530 (n + 1)

end A056530

/-! ## A056530.P10607301460287950988

`∑[(5-a(n-2))*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A056530.P10607301460287950988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (5 - f1 (n - 2)) * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056530.P10607301460287950988

namespace A056530

/-- `∑[(5-a(n-2))*(a(n-1)-a(n-2))]` -/
def P10607301460287950988.Spec : Prop :=
  ∀ n, P10607301460287950988.a n = A056530 (n + 1)

end A056530

/-! ## A056530.P18368168719501921439

`or(1, A319451(n))`
-/

namespace A056530.P18368168719501921439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A319451 n)

end

end A056530.P18368168719501921439

namespace A056530

/-- `or(1, A319451(n))` -/
def P18368168719501921439.Spec : Prop :=
  ∀ n, P18368168719501921439.a n = A056530 (n + 1)

end A056530

/-! ## A056530.P18280423822076773564

`∑[A021078(n)+1]`
-/

namespace A056530.P18280423822076773564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021078 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056530.P18280423822076773564

namespace A056530

/-- `∑[A021078(n)+1]` -/
def P18280423822076773564.Spec : Prop :=
  ∀ n, P18280423822076773564.a n = A056530 (n + 1)

end A056530

/-!
# A056531: Sequence remaining after a fourth round of Flavius Josephus sieve; remove every fifth term of A056530.

The programs for A056531, the canonical program `A056531.P834638182437852348` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056531 has offset 1).

The definition of A056531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056531.P834638182437852348

`or(1, A319451(comp[5*n-1]))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056531

/-- `or(1, A319451(comp[5*n-1]))` -/
def P834638182437852348.Spec : Prop :=
  ∀ n, P834638182437852348.a n = A056531 (n + 1)

theorem P834638182437852348.correct : P834638182437852348.Spec := by
  intro n
  simp only [A056531, Nat.add_sub_cancel]

end A056531

/-! ## A056531.P14855881306432155024

`A056530(floor(n/4)+n+1)`
-/

namespace A056531.P14855881306432155024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056530 (⌊(n : ℚ) / 4⌋ + (n + 1 : ℤ)).toNat

end

end A056531.P14855881306432155024

namespace A056531

/-- `A056530(floor(n/4)+n+1)` -/
def P14855881306432155024.Spec : Prop :=
  ∀ n, P14855881306432155024.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P5751999166348566741

`or(1, A083031(A047201(n+1)))`
-/

namespace A056531.P5751999166348566741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083031 (A047201 (n + 1)).toNat)

end

end A056531.P5751999166348566741

namespace A056531

/-- `or(1, A083031(A047201(n+1)))` -/
def P5751999166348566741.Spec : Prop :=
  ∀ n, P5751999166348566741.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P4406486799394623408

`A056530(A047201(n+1))%A007519(n+1)`
-/

namespace A056531.P4406486799394623408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056530 (A047201 (n + 1)).toNat) (A007519 (n + 1))

end

end A056531.P4406486799394623408

namespace A056531

/-- `A056530(A047201(n+1))%A007519(n+1)` -/
def P4406486799394623408.Spec : Prop :=
  ∀ n, P4406486799394623408.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P7577654525601399726

`A006519(2*n+1)*A056530(A047201(n+1))`
-/

namespace A056531.P7577654525601399726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A056530 (A047201 (n + 1)).toNat

end

end A056531.P7577654525601399726

namespace A056531

/-- `A006519(2*n+1)*A056530(A047201(n+1))` -/
def P7577654525601399726.Spec : Prop :=
  ∀ n, P7577654525601399726.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P8532143290494503853

`A278492(∑[n+6]+10-2*(n+1))`
-/

namespace A056531.P8532143290494503853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (∑ j ∈ Finset.range (n + 1), f1 j + 10 - 2 * (n + 1))

end

end A056531.P8532143290494503853

namespace A056531

/-- `A278492(∑[n+6]+10-2*(n+1))` -/
def P8532143290494503853.Spec : Prop :=
  ∀ n, P8532143290494503853.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P11891015406579337247

`A278493(∑[n+5]+5)`
-/

namespace A056531.P11891015406579337247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A056531.P11891015406579337247

namespace A056531

/-- `A278493(∑[n+5]+5)` -/
def P11891015406579337247.Spec : Prop :=
  ∀ n, P11891015406579337247.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P17339996422028138712

`record[A278493(A052905(n))]`
-/

namespace A056531.P17339996422028138712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056531.P17339996422028138712

namespace A056531

/-- `record[A278493(A052905(n))]` -/
def P17339996422028138712.Spec : Prop :=
  ∀ n, P17339996422028138712.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P11072294573127105032

`record[A278493(A055999(n)+1)]`
-/

namespace A056531.P11072294573127105032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056531.P11072294573127105032

namespace A056531

/-- `record[A278493(A055999(n)+1)]` -/
def P11072294573127105032.Spec : Prop :=
  ∀ n, P11072294573127105032.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P13129565657024866080

`record[A278493(A027379(n+1)-2)]`
-/

namespace A056531.P13129565657024866080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056531.P13129565657024866080

namespace A056531

/-- `record[A278493(A027379(n+1)-2)]` -/
def P13129565657024866080.Spec : Prop :=
  ∀ n, P13129565657024866080.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P8620875910760770212

`A278483(A000217(n+5)-5)+1`
-/

namespace A056531.P8620875910760770212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 (A000217 (n + 5) - 5).toNat + 1

end

end A056531.P8620875910760770212

namespace A056531

/-- `A278483(A000217(n+5)-5)+1` -/
def P8620875910760770212.Spec : Prop :=
  ∀ n, P8620875910760770212.a n = A056531 (n + 1)

end A056531

/-! ## A056531.P2273209309351836493

`record[A278493(A007401(A027379(n)))]`
-/

namespace A056531.P2273209309351836493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A007401 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056531.P2273209309351836493

namespace A056531

/-- `record[A278493(A007401(A027379(n)))]` -/
def P2273209309351836493.Spec : Prop :=
  ∀ n, P2273209309351836493.a n = A056531 (n + 1)

end A056531

/-!
# A056532: Bond percolation series for square lattice near a wall.

The programs for A056532, there is no canonical definition to state claims against.
-/

/-! ## A056532.P16654932184780872146

`xor(A030315(A000704(n)), A079289(n))`
-/

namespace A056532.P16654932184780872146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030315 (A000704 n).toNat) (A079289 n)

end

end A056532.P16654932184780872146

/-! ## A056532.P7523160611821051903

`xor(A079289(n), A185284(A060546(n)))`
-/

namespace A056532.P7523160611821051903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079289 n) (A185284 (A060546 n).toNat)

end

end A056532.P7523160611821051903

/-! ## A056532.P837627584175906246

`xor(A025466(A341705(n)), A079289(n))`
-/

namespace A056532.P837627584175906246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025466 (A341705 n).toNat) (A079289 n)

end

end A056532.P837627584175906246

/-! ## A056532.P1383266819955998550

`xor(A079289(n), A188432(A193296(n)))`
-/

namespace A056532.P1383266819955998550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079289 n) (A188432 (A193296 n).toNat)

end

end A056532.P1383266819955998550

/-! ## A056532.P15856066196284851191

`xor(A079289(n), A185284(A047348(n+1)))`
-/

namespace A056532.P15856066196284851191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079289 n) (A185284 (A047348 (n + 1)).toNat)

end

end A056532.P15856066196284851191

/-!
# A056533: Even sieve: start with natural numbers, remove every 2nd term, remove every 4th term from what remains, remove every 6th term from what remains, etc.

The programs for A056533, there is no canonical definition to state claims against.
-/

/-! ## A056533.P12056434943028560479

`record[and(A097263(n+1), A139686(n+1))]`
-/

namespace A056533.P12056434943028560479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097263 (n + 1)) (A139686 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056533.P12056434943028560479

/-! ## A056533.P5628259255661558223

`∑[A360457((n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+2)²)]`
-/

namespace A056533.P5628259255661558223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (SequenceMachineLib.roundAway (((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056533.P5628259255661558223

/-! ## A056533.P7118789570003243623

`record[gcd(A047471(n+1), A182324(n))]`
-/

namespace A056533.P7118789570003243623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047471 (n + 1)) (A182324 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056533.P7118789570003243623

/-! ## A056533.P13543320376933268184

`eq[A107016(n+4), A136522(A375123(2*(n+1)))]`
-/

namespace A056533.P13543320376933268184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107016 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A375123 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056533.P13543320376933268184

/-! ## A056533.P14634955460304858713

`A319996(A007097(n))+A002088(n)`
-/

namespace A056533.P14634955460304858713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319996 (A007097 n).toNat + A002088 n

end

end A056533.P14634955460304858713

/-!
# A056536: Mapping from half-antidiagonal reading of the triangle (as used in A028297) to the column-by-column reading of the triangular tables.

The programs for A056536, the canonical program `A056536.P15475188742304027796` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056536 has offset 1).

The definition of A056536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056536.P1459129906416753288

`A091018(n)+1`
-/

namespace A056536.P1459129906416753288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 n + 1

end

end A056536.P1459129906416753288

namespace A056536

/-- `A091018(n)+1` -/
def P1459129906416753288.Spec : Prop :=
  ∀ n, P1459129906416753288.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P6167058863317151820

`A000027(A091018(n)-(1-4/2))`
-/

namespace A056536.P6167058863317151820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A091018 n : ℚ) - (1 - (4 : ℚ) / 2))).toNat

end

end A056536.P6167058863317151820

namespace A056536

/-- `A000027(A091018(n)-(1-4/2))` -/
def P6167058863317151820.Spec : Prop :=
  ∀ n, P6167058863317151820.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P12493425605415849704

`1-A001489(n)-(n-A091018(n))`
-/

namespace A056536.P12493425605415849704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 n - ((n : ℤ) - A091018 n)

end

end A056536.P12493425605415849704

namespace A056536

/-- `1-A001489(n)-(n-A091018(n))` -/
def P12493425605415849704.Spec : Prop :=
  ∀ n, P12493425605415849704.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P15475188742304027796

`A091995(A056537(A091995(n+1)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056536

/-- `A091995(A056537(A091995(n+1)))` -/
def P15475188742304027796.Spec : Prop :=
  ∀ n, P15475188742304027796.a n = A056536 (n + 1)

theorem P15475188742304027796.correct : P15475188742304027796.Spec := by
  intro n
  simp only [A056536, Nat.add_sub_cancel]

end A056536

/-! ## A056536.P3267970665034790568

`A008619(2*A091018(n))`
-/

namespace A056536.P3267970665034790568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A091018 n).toNat

end

end A056536.P3267970665034790568

namespace A056536

/-- `A008619(2*A091018(n))` -/
def P3267970665034790568.Spec : Prop :=
  ∀ n, P3267970665034790568.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P13346463330344941147

`A028242(2*A091018(n))`
-/

namespace A056536.P13346463330344941147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A091018 n).toNat

end

end A056536.P13346463330344941147

namespace A056536

/-- `A028242(2*A091018(n))` -/
def P13346463330344941147.Spec : Prop :=
  ∀ n, P13346463330344941147.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P4370415189026152751

`A008611(3*A091018(n))`
-/

namespace A056536.P4370415189026152751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A091018 n).toNat

end

end A056536.P4370415189026152751

namespace A056536

/-- `A008611(3*A091018(n))` -/
def P4370415189026152751.Spec : Prop :=
  ∀ n, P4370415189026152751.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P1212993578601470603

`A008620(3*A091018(n))`
-/

namespace A056536.P1212993578601470603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A091018 n).toNat

end

end A056536.P1212993578601470603

namespace A056536

/-- `A008620(3*A091018(n))` -/
def P1212993578601470603.Spec : Prop :=
  ∀ n, P1212993578601470603.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P17248430614961981754

`A008621(4*A091018(n))`
-/

namespace A056536.P17248430614961981754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A091018 n).toNat

end

end A056536.P17248430614961981754

namespace A056536

/-- `A008621(4*A091018(n))` -/
def P17248430614961981754.Spec : Prop :=
  ∀ n, P17248430614961981754.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P13198760115822375955

`A008624(4*A091018(n))`
-/

namespace A056536.P13198760115822375955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A091018 n).toNat

end

end A056536.P13198760115822375955

namespace A056536

/-- `A008624(4*A091018(n))` -/
def P13198760115822375955.Spec : Prop :=
  ∀ n, P13198760115822375955.a n = A056536 (n + 1)

end A056536

/-! ## A056536.P8624214610617211253

`A008612(6*A091018(n))`
-/

namespace A056536.P8624214610617211253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A091018 n).toNat

end

end A056536.P8624214610617211253

namespace A056536

/-- `A008612(6*A091018(n))` -/
def P8624214610617211253.Spec : Prop :=
  ∀ n, P8624214610617211253.a n = A056536 (n + 1)

end A056536

/-!
# A056537: Mapping from the column-by-column reading to the half-antidiagonal reading of the triangular tables. Inverse of A056536.

The programs for A056537, the canonical program `A056537.P3331014331152516535` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056537 has offset 1).

The definition of A056537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056537.P4986399636835711284

`A215630(n+1)-A006578(A025581(n))`
-/

namespace A056537.P4986399636835711284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) - A006578 (A025581 n).toNat

end

end A056537.P4986399636835711284

namespace A056537

/-- `A215630(n+1)-A006578(A025581(n))` -/
def P4986399636835711284.Spec : Prop :=
  ∀ n, P4986399636835711284.a n = A056537 (n + 1)

end A056537

/-! ## A056537.P3331014331152516535

`A002620(A094727(n+1))+A002260(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056537

/-- `A002620(A094727(n+1))+A002260(n+1)` -/
def P3331014331152516535.Spec : Prop :=
  ∀ n, P3331014331152516535.a n = A056537 (n + 1)

theorem P3331014331152516535.correct : P3331014331152516535.Spec := by
  intro n
  simp only [A056537, Nat.add_sub_cancel]

end A056537

/-! ## A056537.P9004966247295499706

`A002620(A094727(n+1))+A002262(n)+1`
-/

namespace A056537.P9004966247295499706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A094727 (n + 1)).toNat + (A002262 n + 1)

end

end A056537.P9004966247295499706

namespace A056537

/-- `A002620(A094727(n+1))+A002262(n)+1` -/
def P9004966247295499706.Spec : Prop :=
  ∀ n, P9004966247295499706.a n = A056537 (n + 1)

end A056537

/-! ## A056537.P3465162501418742812

`A002620(A002262(n)+A002024(n+1))+A002260(n+1)`
-/

namespace A056537.P3465162501418742812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002262 n + A002024 (n + 1)).toNat + A002260 (n + 1)

end

end A056537.P3465162501418742812

namespace A056537

/-- `A002620(A002262(n)+A002024(n+1))+A002260(n+1)` -/
def P3465162501418742812.Spec : Prop :=
  ∀ n, P3465162501418742812.a n = A056537 (n + 1)

end A056537

/-! ## A056537.P15802467344108808458

`A002620(A003056(n)+A002260(n+1))+A002260(n+1)`
-/

namespace A056537.P15802467344108808458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A003056 n + A002260 (n + 1)).toNat + A002260 (n + 1)

end

end A056537.P15802467344108808458

namespace A056537

/-- `A002620(A003056(n)+A002260(n+1))+A002260(n+1)` -/
def P15802467344108808458.Spec : Prop :=
  ∀ n, P15802467344108808458.a n = A056537 (n + 1)

end A056537

/-! ## A056537.P5276759915132743776

`A082156(∑[char[∑[n]]]²-n)`
-/

namespace A056537.P5276759915132743776
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082156 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A056537.P5276759915132743776

namespace A056537

/-- `A082156(∑[char[∑[n]]]²-n)` -/
def P5276759915132743776.Spec : Prop :=
  ∀ n, P5276759915132743776.a n = A056537 (n + 1)

end A056537

/-! ## A056537.P10155867056126663344

`A110655(A361975(n+1))`
-/

namespace A056537.P10155867056126663344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A361975 (n + 1)).toNat

end

end A056537.P10155867056126663344

namespace A056537

/-- `A110655(A361975(n+1))` -/
def P10155867056126663344.Spec : Prop :=
  ∀ n, P10155867056126663344.a n = A056537 (n + 1)

end A056537

/-!
# A056538: Irregular triangle read by rows: row n lists the divisors of n in decreasing order.

The programs for A056538, there is no canonical definition to state claims against.
-/

/-! ## A056538.P5552037989418928891

`abs(A233772(n+1))`
-/

namespace A056538.P5552037989418928891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233772 (n + 1)|

end

end A056538.P5552037989418928891

/-! ## A056538.P17776881967823256342

`gcd(A000038(n), A233772(n+1))`
-/

namespace A056538.P17776881967823256342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A233772 (n + 1))

end

end A056538.P17776881967823256342

/-! ## A056538.P1203315648276593614

`lcm(A020985(n), A233772(n+1))`
-/

namespace A056538.P1203315648276593614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A233772 (n + 1))

end

end A056538.P1203315648276593614

/-! ## A056538.P6091346103994929174

`∑{d}[A233772(n+1), A000010(#)]`
-/

namespace A056538.P6091346103994929174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A056538.P6091346103994929174

/-! ## A056538.P17574430692028165850

`A061017(n+1)/A027750(n+1)`
-/

namespace A056538.P17574430692028165850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (n + 1) : ℚ) / (A027750 (n + 1) : ℚ)

end

end A056538.P17574430692028165850

/-! ## A056538.P15596180908405759971

`abs(A061017(n+1)/A233773(n+1))`
-/

namespace A056538.P15596180908405759971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A061017 (n + 1) : ℚ) / (A233773 (n + 1) : ℚ)|

end

end A056538.P15596180908405759971

/-! ## A056538.P14259938519562078733

`A061017(n+1)/(A263730(n+2)+1)`
-/

namespace A056538.P14259938519562078733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (n + 1) : ℚ) / (A263730 (n + 2) + 1 : ℚ)

end

end A056538.P14259938519562078733

/-! ## A056538.P14885577904333929671

`gcd(A233772(n+1)+A061017(n+1), A061017(n+1))`
-/

namespace A056538.P14885577904333929671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233772 (n + 1) + A061017 (n + 1)) (A061017 (n + 1))

end

end A056538.P14885577904333929671

/-! ## A056538.P11046907039848954873

`(A397890(n+1)-A397890(n))/A027750(n+1)`
-/

namespace A056538.P11046907039848954873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397890 (n + 1) - A397890 n : ℚ) / (A027750 (n + 1) : ℚ)

end

end A056538.P11046907039848954873

/-! ## A056538.P3889173699414073166

`val(A272919(n+1), 2)+1`
-/

namespace A056538.P3889173699414073166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A272919 (n + 1)).toNat 2 + 1

end

end A056538.P3889173699414073166

/-! ## A056538.P13716997010657525569

`val(A064896(n+2)-1, 2)`
-/

namespace A056538.P13716997010657525569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064896 (n + 2) - 1).toNat 2

end

end A056538.P13716997010657525569

/-! ## A056538.P1255818498579499782

`∑[A008966(A027750(n+1)²)]/A027750(n+1)`
-/

namespace A056538.P1255818498579499782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A027750 (n + 1) ^ 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A027750 (n + 1) : ℚ)

end

end A056538.P1255818498579499782

/-! ## A056538.P6446955725510271437

`∑[A063524(A027750(n+1)²)]/A027750(n+1)`
-/

namespace A056538.P6446955725510271437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A027750 (n + 1) ^ 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A027750 (n + 1) : ℚ)

end

end A056538.P6446955725510271437

/-! ## A056538.P2259135702945945220

`A061017(n+1)/A002260(A056534(n+1))`
-/

namespace A056538.P2259135702945945220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (n + 1) : ℚ) / (A002260 (A056534 (n + 1)).toNat : ℚ)

end

end A056538.P2259135702945945220

/-! ## A056538.P10987157175712409280

`A002024(A056534(n+1)-A263730(n+2))-A263730(n+2)`
-/

namespace A056538.P10987157175712409280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A056534 (n + 1) - A263730 (n + 2)).toNat - A263730 (n + 2)

end

end A056538.P10987157175712409280

/-! ## A056538.P5535434310684153887

`A004736(A056534(n+1))`
-/

namespace A056538.P5535434310684153887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A056534 (n + 1)).toNat

end

end A056538.P5535434310684153887

/-! ## A056538.P17543922374951510506

`A126988(eq[1, A051731(n+1)]+1)`
-/

namespace A056538.P17543922374951510506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A056538.P17543922374951510506

/-! ## A056538.P434889662961422536

`A126988(record[n%(A126988(n+1)+n)]+1)`
-/

namespace A056538.P434889662961422536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A126988 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A056538.P434889662961422536

/-! ## A056538.P13362706354244868150

`A002024(A056534(n+1))-A263730(n+2)`
-/

namespace A056538.P13362706354244868150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A056534 (n + 1)).toNat - A263730 (n + 2)

end

end A056538.P13362706354244868150

/-! ## A056538.P1507139586544637098

`A010766(eq[A010766(n+1), A126988(n+1)]+1)`
-/

namespace A056538.P1507139586544637098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A056538.P1507139586544637098

/-!
# A056539: Self-inverse permutation: reverse the bits in binary expansion of n and also complement them (0->1, 1->0) if the run count (A005811) is even.

The programs for A056539, the canonical program `A056539.P17406113578210965747` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056539 has offset 0).

The definition of A056539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056539.P17751451894205151169

`A006068(A341915(n))`
-/

namespace A056539.P17751451894205151169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A341915 n).toNat

end

end A056539.P17751451894205151169

namespace A056539

/-- `A006068(A341915(n))` -/
def P17751451894205151169.Spec : Prop :=
  ∀ n, P17751451894205151169.a n = A056539 n

end A056539

/-! ## A056539.P3724585067056528496

`A341916(xor(n, ∑[char[2*(n+1)]]))`
-/

namespace A056539.P3724585067056528496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A056539.P3724585067056528496

namespace A056539

/-- `A341916(xor(n, ∑[char[2*(n+1)]]))` -/
def P3724585067056528496.Spec : Prop :=
  ∀ n, P3724585067056528496.a n = A056539 n

end A056539

/-! ## A056539.P17406113578210965747

`A341916(A003188(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056539

/-- `A341916(A003188(n))` -/
def P17406113578210965747.Spec : Prop :=
  ∀ n, P17406113578210965747.a n = A056539 n

theorem P17406113578210965747.correct : P17406113578210965747.Spec := by
  intro n
  simp only [A056539]

end A056539

/-! ## A056539.P18073584455077398258

`A335858(A180201(n))`
-/

namespace A056539.P18073584455077398258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A180201 n).toNat

end

end A056539.P18073584455077398258

namespace A056539

/-- `A335858(A180201(n))` -/
def P18073584455077398258.Spec : Prop :=
  ∀ n, P18073584455077398258.a n = A056539 n

end A056539

/-! ## A056539.P21758451772696182

`A341916(A105081(n+1)-1)`
-/

namespace A056539.P21758451772696182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A105081 (n + 1) - 1).toNat

end

end A056539.P21758451772696182

namespace A056539

/-- `A341916(A105081(n+1)-1)` -/
def P21758451772696182.Spec : Prop :=
  ∀ n, P21758451772696182.a n = A056539 n

end A056539

/-! ## A056539.P14958414910637470078

`A335858(A233280(A180200(A233280(n))))`
-/

namespace A056539.P14958414910637470078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A233280 (A180200 (A233280 n).toNat).toNat).toNat

end

end A056539.P14958414910637470078

namespace A056539

/-- `A335858(A233280(A180200(A233280(n))))` -/
def P14958414910637470078.Spec : Prop :=
  ∀ n, P14958414910637470078.a n = A056539 n

end A056539

/-! ## A056539.P10557971928350356663

`A341916(A004526(xor(n, 2*n)))`
-/

namespace A056539.P10557971928350356663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A004526 (Nat.xor n (2 * n))).toNat

end

end A056539.P10557971928350356663

namespace A056539

/-- `A341916(A004526(xor(n, 2*n)))` -/
def P10557971928350356663.Spec : Prop :=
  ∀ n, P10557971928350356663.a n = A056539 n

end A056539

/-! ## A056539.P1876752890342959574

`A341916(A245710(xor(n, 2*n)))`
-/

namespace A056539.P1876752890342959574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A245710 (Nat.xor n (2 * n))).toNat

end

end A056539.P1876752890342959574

namespace A056539

/-- `A341916(A245710(xor(n, 2*n)))` -/
def P1876752890342959574.Spec : Prop :=
  ∀ n, P1876752890342959574.a n = A056539 n

end A056539

/-! ## A056539.P8018561096694871058

`A165199(A129594(n))`
-/

namespace A056539.P8018561096694871058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A129594 n).toNat

end

end A056539.P8018561096694871058

namespace A056539

/-- `A165199(A129594(n))` -/
def P8018561096694871058.Spec : Prop :=
  ∀ n, P8018561096694871058.a n = A056539 n

end A056539

/-! ## A056539.P2729925370050152509

`A245445(A193231(n))`
-/

namespace A056539.P2729925370050152509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245445 (A193231 n).toNat

end

end A056539.P2729925370050152509

namespace A056539

/-- `A245445(A193231(n))` -/
def P2729925370050152509.Spec : Prop :=
  ∀ n, P2729925370050152509.a n = A056539 n

end A056539

/-! ## A056539.P13988802947665517012

`A193231(A245446(n))`
-/

namespace A056539.P13988802947665517012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245446 n).toNat

end

end A056539.P13988802947665517012

namespace A056539

/-- `A193231(A245446(n))` -/
def P13988802947665517012.Spec : Prop :=
  ∀ n, P13988802947665517012.a n = A056539 n

end A056539

/-! ## A056539.P17085591773246338554

`A129594(A193231(A245444(n)))`
-/

namespace A056539.P17085591773246338554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A193231 (A245444 n).toNat).toNat

end

end A056539.P17085591773246338554

namespace A056539

/-- `A129594(A193231(A245444(n)))` -/
def P17085591773246338554.Spec : Prop :=
  ∀ n, P17085591773246338554.a n = A056539 n

end A056539

/-! ## A056539.P7463670106988684650

`A245445(A245444(A165199(n)))`
-/

namespace A056539.P7463670106988684650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245445 (A245444 (A165199 n).toNat).toNat

end

end A056539.P7463670106988684650

namespace A056539

/-- `A245445(A245444(A165199(n)))` -/
def P7463670106988684650.Spec : Prop :=
  ∀ n, P7463670106988684650.a n = A056539 n

end A056539

/-! ## A056539.P1555037221341487976

`A245445(A165199(A245443(n)))`
-/

namespace A056539.P1555037221341487976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245445 (A165199 (A245443 n).toNat).toNat

end

end A056539.P1555037221341487976

namespace A056539

/-- `A245445(A165199(A245443(n)))` -/
def P1555037221341487976.Spec : Prop :=
  ∀ n, P1555037221341487976.a n = A056539 n

end A056539

/-! ## A056539.P13887568552019389624

`A245443(A245446(A165199(2*n-n)))`
-/

namespace A056539.P13887568552019389624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245443 (A245446 (A165199 (2 * n - n)).toNat).toNat

end

end A056539.P13887568552019389624

namespace A056539

/-- `A245443(A245446(A165199(2*n-n)))` -/
def P13887568552019389624.Spec : Prop :=
  ∀ n, P13887568552019389624.a n = A056539 n

end A056539

/-! ## A056539.P9447598608697072066

`A258746(A129594(n)+A062383(n))-A062383(n)`
-/

namespace A056539.P9447598608697072066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A129594 n + A062383 n).toNat - A062383 n

end

end A056539.P9447598608697072066

namespace A056539

/-- `A258746(A129594(n)+A062383(n))-A062383(n)` -/
def P9447598608697072066.Spec : Prop :=
  ∀ n, P9447598608697072066.a n = A056539 n

end A056539

/-! ## A056539.P10018177864381292727

`A377836(A377835(n))`
-/

namespace A056539.P10018177864381292727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377836 (A377835 n).toNat

end

end A056539.P10018177864381292727

namespace A056539

/-- `A377836(A377835(n))` -/
def P10018177864381292727.Spec : Prop :=
  ∀ n, P10018177864381292727.a n = A056539 n

end A056539

/-! ## A056539.P665968976114012312

`A377834(A377837(n))`
-/

namespace A056539.P665968976114012312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377834 (A377837 n).toNat

end

end A056539.P665968976114012312

namespace A056539

/-- `A377834(A377837(n))` -/
def P665968976114012312.Spec : Prop :=
  ∀ n, P665968976114012312.a n = A056539 n

end A056539

/-!
# A056541: a(n) = 2*n*a(n-1) + 1 with a(0)=0.

The programs for A056541, the canonical program `A056541.P13773791000984190990` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056541 has offset 0).

The definition of A056541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*a(n-1)+1` (program `A056541.P13773791000984190990`, by `A056541.P13773791000984190990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056541.P13773791000984190990

`2*n*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056541

/-- `2*n*a(n-1)+1` -/
def P13773791000984190990.Spec : Prop :=
  ∀ n, (P13773791000984190990.a n : ℤ) = A056541 n

theorem P13773791000984190990.correct : P13773791000984190990.Spec := by
  intro n
  simp only [A056541]

end A056541

/-! ## A056541.P2351752793652250921

`floor((sqrt(e)-1)*2^n*n!)`
-/

namespace A056541.P2351752793652250921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (Real.exp 1) - 1) * (2 ^ n : ℝ) * (Nat.factorial n : ℝ)⌋

end

end A056541.P2351752793652250921

namespace A056541

/-- `floor((sqrt(e)-1)*2^n*n!)` -/
def P2351752793652250921.Spec : Prop :=
  ∀ n, P2351752793652250921.a n = A056541 n

end A056541

/-! ## A056541.P4956193409004796583

`A010844(n)-A000165(n)`
-/

namespace A056541.P4956193409004796583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010844 n - A000165 n

end

end A056541.P4956193409004796583

namespace A056541

/-- `A010844(n)-A000165(n)` -/
def P4956193409004796583.Spec : Prop :=
  ∀ n, P4956193409004796583.a n = A056541 n

end A056541

/-! ## A056541.P9953822617260299669

`or(1, 2*n*a(n-1))` with `a(0)=0`
-/

namespace A056541.P9953822617260299669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (2 * (n * a (n - 1)))

end

end A056541.P9953822617260299669

namespace A056541

/-- `or(1, 2*n*a(n-1))` -/
def P9953822617260299669.Spec : Prop :=
  ∀ n, (P9953822617260299669.a n : ℤ) = A056541 n

end A056541

/-! ## A056541.P3611229778049027556

`xor(1, 2*n*a(n-1))` with `a(0)=0`
-/

namespace A056541.P3611229778049027556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (2 * (n * a (n - 1)))

end

end A056541.P3611229778049027556

namespace A056541

/-- `xor(1, 2*n*a(n-1))` -/
def P3611229778049027556.Spec : Prop :=
  ∀ n, (P3611229778049027556.a n : ℤ) = A056541 n

end A056541

/-! ## A056541.P7221344521582448173

`3-2*(1-n*a(n-1))` with `a(0)=0`
-/

namespace A056541.P7221344521582448173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - 2 * (1 - (n : ℤ) * a (n - 1))

end

end A056541.P7221344521582448173

namespace A056541

/-- `3-2*(1-n*a(n-1))` -/
def P7221344521582448173.Spec : Prop :=
  ∀ n, P7221344521582448173.a n = A056541 n

end A056541

/-! ## A056541.P4343870062702483031

`2*n*a(xor(-1, -n))+1` with `a(0)=0`
-/

namespace A056541.P4343870062702483031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * n * a (Int.xor (-1) (-(n : ℤ))).toNat + 1

end

end A056541.P4343870062702483031

namespace A056541

/-- `2*n*a(xor(-1, -n))+1` -/
def P4343870062702483031.Spec : Prop :=
  ∀ n, (P4343870062702483031.a n : ℤ) = A056541 n

end A056541

/-! ## A056541.P5183027613400240910

`xor(1, abs(2*n*a(log2(1/2)+n)))` with `a(0)=0`
-/

namespace A056541.P5183027613400240910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (2 * (n * a (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n : ℝ))).toNat))

end

end A056541.P5183027613400240910

namespace A056541

/-- `xor(1, abs(2*n*a(log2(1/2)+n)))` -/
def P5183027613400240910.Spec : Prop :=
  ∀ n, (P5183027613400240910.a n : ℤ) = A056541 n

end A056541

/-! ## A056541.P1649845415111239995

`xor(1, 2*floor(n*a(floor(n²/(n+1)))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A056541.P1649845415111239995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (2 * (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat))

end

end A056541.P1649845415111239995

namespace A056541

/-- `xor(1, 2*floor(n*a(floor(n²/(n+1)))))` -/
def P1649845415111239995.Spec : Prop :=
  ∀ n, (P1649845415111239995.a n : ℤ) = A056541 n

end A056541

/-! ## A056541.P12039979871734732642

`a(n-1)*A004277(n)+1` with `a(0)=0`
-/

namespace A056541.P12039979871734732642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A004277 n + 1

end

end A056541.P12039979871734732642

namespace A056541

/-- `a(n-1)*A004277(n)+1` -/
def P12039979871734732642.Spec : Prop :=
  ∀ n, P12039979871734732642.a n = A056541 n

end A056541

/-!
# A056542: a(n) = n*a(n-1) + 1, a(1) = 0.

The programs for A056542, the canonical program `A056542.P10018437461294169314` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056542 has offset 1).

The definition of A056542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-1)+1` (program `A056542.P10018437461294169314`, by `A056542.P10018437461294169314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056542.P10018437461294169314

`(n+1)*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056542

/-- `(n+1)*a(n-1)+1` -/
def P10018437461294169314.Spec : Prop :=
  ∀ n, (P10018437461294169314.a n : ℤ) = A056542 (n + 1)

theorem P10018437461294169314.correct : P10018437461294169314.Spec := by
  intro n
  simp only [A056542, Nat.add_sub_cancel]

end A056542

/-! ## A056542.P3262629044621191141

`A002627(n+1)-(n+1)!`
-/

namespace A056542.P3262629044621191141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 (n + 1) - (Nat.factorial (n + 1) : ℤ)

end

end A056542.P3262629044621191141

namespace A056542

/-- `A002627(n+1)-(n+1)!` -/
def P3262629044621191141.Spec : Prop :=
  ∀ n, P3262629044621191141.a n = A056542 (n + 1)

end A056542

/-! ## A056542.P16907102913666449962

`A000522(n+1)-2*(n+1)!`
-/

namespace A056542.P16907102913666449962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1) - (2 * Nat.factorial (n + 1) : ℤ)

end

end A056542.P16907102913666449962

namespace A056542

/-- `A000522(n+1)-2*(n+1)!` -/
def P16907102913666449962.Spec : Prop :=
  ∀ n, P16907102913666449962.a n = A056542 (n + 1)

end A056542

/-! ## A056542.P17759946752621928245

`1-xor(n, -1)*a(n-1)` with `a(0)=0`
-/

namespace A056542.P17759946752621928245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - Int.xor (n : ℤ) (-1) * a (n - 1)

end

end A056542.P17759946752621928245

namespace A056542

/-- `1-xor(n, -1)*a(n-1)` -/
def P17759946752621928245.Spec : Prop :=
  ∀ n, P17759946752621928245.a n = A056542 (n + 1)

end A056542

/-! ## A056542.P3820286131022148038

`∑[abs(Δ[n*(a(n-1)-1)])]` with `a(0)=1, a(1)=1`
-/

namespace A056542.P3820286131022148038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056542.P3820286131022148038

namespace A056542

/-- `∑[abs(Δ[n*(a(n-1)-1)])]` -/
def P3820286131022148038.Spec : Prop :=
  ∀ n, P3820286131022148038.a n = A056542 (n + 1)

end A056542

/-! ## A056542.P6958553780900901564

`∑[-Δ[n*(a(n-1)-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A056542.P6958553780900901564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056542.P6958553780900901564

namespace A056542

/-- `∑[-Δ[n*(a(n-1)-1)]]` -/
def P6958553780900901564.Spec : Prop :=
  ∀ n, P6958553780900901564.a n = A056542 (n + 1)

end A056542

/-! ## A056542.P15397813834489539525

`1-(n-Δ[n²])*a(n-1)` with `a(0)=0`
-/

namespace A056542.P15397813834489539525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * a (n - 1)

end

end A056542.P15397813834489539525

namespace A056542

/-- `1-(n-Δ[n²])*a(n-1)` -/
def P15397813834489539525.Spec : Prop :=
  ∀ n, P15397813834489539525.a n = A056542 (n + 1)

end A056542

/-! ## A056542.P14840621492168514522

`a(n-1)/(n+1)^(-1)+1` with `a(0)=0`
-/

namespace A056542.P14840621492168514522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ) + 1

end

end A056542.P14840621492168514522

namespace A056542

/-- `a(n-1)/(n+1)^(-1)+1` -/
def P14840621492168514522.Spec : Prop :=
  ∀ n, P14840621492168514522.a n = (A056542 (n + 1) : ℚ)

end A056542

/-! ## A056542.P4604232435473542663

`a(n-1)+lcm(n, a(n-1))+1` with `a(0)=0`
-/

namespace A056542.P4604232435473542663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Nat.lcm n (a (n - 1)) + 1)

end

end A056542.P4604232435473542663

namespace A056542

/-- `a(n-1)+lcm(n, a(n-1))+1` -/
def P4604232435473542663.Spec : Prop :=
  ∀ n, (P4604232435473542663.a n : ℤ) = A056542 (n + 1)

end A056542

/-! ## A056542.P3893788844029827259

`∑[A007808(n)]-1`
-/

namespace A056542.P3893788844029827259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A056542.P3893788844029827259

namespace A056542

/-- `∑[A007808(n)]-1` -/
def P3893788844029827259.Spec : Prop :=
  ∀ n, P3893788844029827259.a n = A056542 (n + 1)

end A056542

/-!
# A056543: a(n) = n*a(n-1) - 1 with a(1)=1.

The programs for A056543, the canonical program `A056543.P17116018265884080687` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056543 has offset 1).

The definition of A056543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-1)-1` (program `A056543.P17116018265884080687`, by `A056543.P17116018265884080687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056543.P17116018265884080687

`(n+1)*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056543

/-- `(n+1)*a(n-1)-1` -/
def P17116018265884080687.Spec : Prop :=
  ∀ n, P17116018265884080687.a n = A056543 (n + 1)

theorem P17116018265884080687.correct : P17116018265884080687.Spec := by
  intro n
  simp only [A056543, Nat.add_sub_cancel]

end A056543

/-! ## A056543.P11535730726250603536

`∑[abs(Δ[n*(a(n-1)-1)])]` with `a(0)=3`
-/

namespace A056543.P11535730726250603536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056543.P11535730726250603536

namespace A056543

/-- `∑[abs(Δ[n*(a(n-1)-1)])]` -/
def P11535730726250603536.Spec : Prop :=
  ∀ n, P11535730726250603536.a n = A056543 (n + 1)

end A056543

/-! ## A056543.P15957494853447592491

`∏[n+2-n/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A056543.P15957494853447592491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 2 : ℚ) - (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056543.P15957494853447592491

namespace A056543

/-- `∏[n+2-n/a(n-1)]` -/
def P15957494853447592491.Spec : Prop :=
  ∀ n, P15957494853447592491.a n = (A056543 (n + 1) : ℚ)

end A056543

/-! ## A056543.P9169266457702492580

`xor(xor(n, -1)*a(n-1), -1)` with `a(0)=1`
-/

namespace A056543.P9169266457702492580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (Int.xor (n : ℤ) (-1) * a (n - 1)) (-1)

end

end A056543.P9169266457702492580

namespace A056543

/-- `xor(xor(n, -1)*a(n-1), -1)` -/
def P9169266457702492580.Spec : Prop :=
  ∀ n, P9169266457702492580.a n = A056543 (n + 1)

end A056543

/-! ## A056543.P842170081664543969

`a(n-1)/(n+1)^(-1)-1` with `a(0)=1`
-/

namespace A056543.P842170081664543969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ) - 1

end

end A056543.P842170081664543969

namespace A056543

/-- `a(n-1)/(n+1)^(-1)-1` -/
def P842170081664543969.Spec : Prop :=
  ∀ n, P842170081664543969.a n = (A056543 (n + 1) : ℚ)

end A056543

/-! ## A056543.P6936204923826951568

`a(n-1)-(1-n*a(n-1))` with `a(0)=1`
-/

namespace A056543.P6936204923826951568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - (n : ℤ) * a (n - 1))

end

end A056543.P6936204923826951568

namespace A056543

/-- `a(n-1)-(1-n*a(n-1))` -/
def P6936204923826951568.Spec : Prop :=
  ∀ n, P6936204923826951568.a n = A056543 (n + 1)

end A056543

/-! ## A056543.P1309646289833294985

`a(n-1)+lcm(n, a(n-1))-1` with `a(0)=1`
-/

namespace A056543.P1309646289833294985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((Int.lcm (n : ℤ) (a (n - 1)) : ℤ) - 1)

end

end A056543.P1309646289833294985

namespace A056543

/-- `a(n-1)+lcm(n, a(n-1))-1` -/
def P1309646289833294985.Spec : Prop :=
  ∀ n, P1309646289833294985.a n = A056543 (n + 1)

end A056543

/-! ## A056543.P15541120226819446479

`a(n-1)-(1-a(n-1)/n^(-1))` with `a(0)=1`
-/

namespace A056543.P15541120226819446479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - a (n - 1) / (n : ℚ) ^ (-1 : ℤ))

end

end A056543.P15541120226819446479

namespace A056543

/-- `a(n-1)-(1-a(n-1)/n^(-1))` -/
def P15541120226819446479.Spec : Prop :=
  ∀ n, P15541120226819446479.a n = (A056543 (n + 1) : ℚ)

end A056543

/-! ## A056543.P16653650716057459588

`A117643(n+1)-1`
-/

namespace A056543.P16653650716057459588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117643 (n + 1) - 1

end

end A056543.P16653650716057459588

namespace A056543

/-- `A117643(n+1)-1` -/
def P16653650716057459588.Spec : Prop :=
  ∀ n, P16653650716057459588.a n = A056543 (n + 1)

end A056543

/-! ## A056543.P15337446281935231258

`(A350855(n)+1)/2`
-/

namespace A056543.P15337446281935231258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350855 n + 1 : ℚ) / 2

end

end A056543.P15337446281935231258

namespace A056543

/-- `(A350855(n)+1)/2` -/
def P15337446281935231258.Spec : Prop :=
  ∀ n, P15337446281935231258.a n = (A056543 (n + 1) : ℚ)

end A056543

/-!
# A056544: Smallest palindrome containing the digits of n as a subsequence.

The programs for A056544, there is no canonical definition to state claims against.
-/

/-! ## A056544.P11882250117993743916

`A082216(A328447(n+1))*A165633(A182782(n+1))`
-/

namespace A056544.P11882250117993743916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A328447 (n + 1)).toNat * A165633 (A182782 (n + 1)).toNat

end

end A056544.P11882250117993743916

/-! ## A056544.P246417461575908769

`A082216(A328447(n+1))-A083344(A182782(n+1)+1)`
-/

namespace A056544.P246417461575908769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A328447 (n + 1)).toNat - A083344 (A182782 (n + 1) + 1).toNat

end

end A056544.P246417461575908769

/-! ## A056544.P14551738006707322340

`A082216(A328447(n+1))*A319101(A182782(n+1)+1)`
-/

namespace A056544.P14551738006707322340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A328447 (n + 1)).toNat * A319101 (A182782 (n + 1) + 1).toNat

end

end A056544.P14551738006707322340

/-! ## A056544.P14917492400432321636

`A082216(A328447(n+1))*A266227(A182782(n+1)+3)`
-/

namespace A056544.P14917492400432321636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A328447 (n + 1)).toNat * A266227 (A182782 (n + 1) + 3).toNat

end

end A056544.P14917492400432321636

/-! ## A056544.P3068138644932757857

`A082216(A328447(n+1))/A212157(A182782(n+1)+1)²`
-/

namespace A056544.P3068138644932757857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082216 (A328447 (n + 1)).toNat : ℚ) / (A212157 (A182782 (n + 1) + 1).toNat ^ 2 : ℚ)

end

end A056544.P3068138644932757857

/-! ## A056544.P5939223741723486184

`A082216(A328447(n+1))%A252148(A311006(n))`
-/

namespace A056544.P5939223741723486184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 (A328447 (n + 1)).toNat) (A252148 (A311006 n).toNat)

end

end A056544.P5939223741723486184

/-! ## A056544.P5325261861563024155

`A322586(A048059(n+1))+A082216(A328447(n+1))`
-/

namespace A056544.P5325261861563024155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322586 (A048059 (n + 1)).toNat + A082216 (A328447 (n + 1)).toNat

end

end A056544.P5325261861563024155

/-! ## A056544.P8992603734406937992

`A120007(6*a(n-1))+A082216(A328447(n+1))` with `a(0)=1`
-/

namespace A056544.P8992603734406937992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120007 (6 * a (n - 1)).toNat + A082216 (A328447 (n + 1)).toNat

end

end A056544.P8992603734406937992

/-! ## A056544.P4467266273937853705

`A120007(A272949(n+1))+A082216(A328447(n+1))`
-/

namespace A056544.P4467266273937853705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (A272949 (n + 1)).toNat + A082216 (A328447 (n + 1)).toNat

end

end A056544.P4467266273937853705

/-! ## A056544.P12072975833687430747

`A010051(A048988(n+1))*A082216(A328447(n+1))`
-/

namespace A056544.P12072975833687430747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A048988 (n + 1)).toNat * A082216 (A328447 (n + 1)).toNat

end

end A056544.P12072975833687430747

/-! ## A056544.P10987607600988357123

`A082216(A082216(A328447(n+1)))`
-/

namespace A056544.P10987607600988357123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A082216 (A328447 (n + 1)).toNat).toNat

end

end A056544.P10987607600988357123

/-!
# A056545: a(n) = 4*n*a(n-1) + 1 with a(0)=1.

The programs for A056545, the canonical program `A056545.P15098809763052241652` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056545 has offset 0).

The definition of A056545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*a(n-1)+1` (program `A056545.P15098809763052241652`, by `A056545.P15098809763052241652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056545.P15098809763052241652

`4*n*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056545

/-- `4*n*a(n-1)+1` -/
def P15098809763052241652.Spec : Prop :=
  ∀ n, (P15098809763052241652.a n : ℤ) = A056545 n

theorem P15098809763052241652.correct : P15098809763052241652.Spec := by
  intro n
  simp only [A056545]

end A056545

/-! ## A056545.P9219067933822944701

`floor(e^(1/4)*4^n*n!)`
-/

namespace A056545.P9219067933822944701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ ((1 : ℚ) / 4 : ℝ) * (4 ^ n : ℝ) * (Nat.factorial n : ℝ)⌋

end

end A056545.P9219067933822944701

namespace A056545

/-- `floor(e^(1/4)*4^n*n!)` -/
def P9219067933822944701.Spec : Prop :=
  ∀ n, P9219067933822944701.a n = A056545 n

end A056545

/-! ## A056545.P4360935721635649408

`or(1, 4*n*a(n-1))` with `a(0)=1`
-/

namespace A056545.P4360935721635649408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (4 * (n * a (n - 1)))

end

end A056545.P4360935721635649408

namespace A056545

/-- `or(1, 4*n*a(n-1))` -/
def P4360935721635649408.Spec : Prop :=
  ∀ n, (P4360935721635649408.a n : ℤ) = A056545 n

end A056545

/-! ## A056545.P9567346971458994838

`xor(1, 4*n*a(n-1))` with `a(0)=1`
-/

namespace A056545.P9567346971458994838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (4 * (n * a (n - 1)))

end

end A056545.P9567346971458994838

namespace A056545

/-- `xor(1, 4*n*a(n-1))` -/
def P9567346971458994838.Spec : Prop :=
  ∀ n, (P9567346971458994838.a n : ℤ) = A056545 n

end A056545

/-! ## A056545.P13564065064459607691

`5-4*(1-n*a(n-1))` with `a(0)=1`
-/

namespace A056545.P13564065064459607691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - 4 * (1 - (n : ℤ) * a (n - 1))

end

end A056545.P13564065064459607691

namespace A056545

/-- `5-4*(1-n*a(n-1))` -/
def P13564065064459607691.Spec : Prop :=
  ∀ n, P13564065064459607691.a n = A056545 n

end A056545

/-! ## A056545.P13079404540804430734

`Δ[A353548(n)]`
-/

namespace A056545.P13079404540804430734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056545.P13079404540804430734

namespace A056545

/-- `Δ[A353548(n)]` -/
def P13079404540804430734.Spec : Prop :=
  ∀ n, P13079404540804430734.a n = A056545 n

end A056545

/-! ## A056545.P5062964087551617166

`a(n-1)*A008574(n)+1` with `a(0)=1`
-/

namespace A056545.P5062964087551617166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008574 n + 1

end

end A056545.P5062964087551617166

namespace A056545

/-- `a(n-1)*A008574(n)+1` -/
def P5062964087551617166.Spec : Prop :=
  ∀ n, P5062964087551617166.a n = A056545 n

end A056545

/-! ## A056545.P12003944242578267604

`A353548(n+1)-A353548(n)`
-/

namespace A056545.P12003944242578267604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353548 (n + 1) - A353548 n

end

end A056545.P12003944242578267604

namespace A056545

/-- `A353548(n+1)-A353548(n)` -/
def P12003944242578267604.Spec : Prop :=
  ∀ n, P12003944242578267604.a n = A056545 n

end A056545

/-! ## A056545.P9294846318181739745

`∑[1/A047053(n)]*A047053(n)`
-/

namespace A056545.P9294846318181739745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A047053 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A047053 n : ℚ)

end

end A056545.P9294846318181739745

namespace A056545

/-- `∑[1/A047053(n)]*A047053(n)` -/
def P9294846318181739745.Spec : Prop :=
  ∀ n, P9294846318181739745.a n = (A056545 n : ℚ)

end A056545

/-! ## A056545.P2546989057784696203

`A320031(A052905(n+2))`
-/

namespace A056545.P2546989057784696203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (A052905 (n + 2)).toNat

end

end A056545.P2546989057784696203

namespace A056545

/-- `A320031(A052905(n+2))` -/
def P2546989057784696203.Spec : Prop :=
  ∀ n, P2546989057784696203.a n = A056545 n

end A056545

/-!
# A056546: a(n) = 5*n*a(n-1) + 1 with a(0)=1.

The programs for A056546, the canonical program `A056546.P3951978025628057577` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056546 has offset 0).

The definition of A056546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*a(n-1)+1` (program `A056546.P3951978025628057577`, by `A056546.P3951978025628057577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056546.P3951978025628057577

`5*n*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056546

/-- `5*n*a(n-1)+1` -/
def P3951978025628057577.Spec : Prop :=
  ∀ n, (P3951978025628057577.a n : ℤ) = A056546 n

theorem P3951978025628057577.correct : P3951978025628057577.Spec := by
  intro n
  simp only [A056546]

end A056546

/-! ## A056546.P18185478749770183511

`floor(e^(1/5)*5^n*n!)`
-/

namespace A056546.P18185478749770183511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ ((1 : ℚ) / 5 : ℝ) * (5 ^ n : ℝ) * (Nat.factorial n : ℝ)⌋

end

end A056546.P18185478749770183511

namespace A056546

/-- `floor(e^(1/5)*5^n*n!)` -/
def P18185478749770183511.Spec : Prop :=
  ∀ n, P18185478749770183511.a n = A056546 n

end A056546

/-! ## A056546.P7118792653515086131

`-xor(n*5*a(n-1), -1)` with `a(0)=1`
-/

namespace A056546.P7118792653515086131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor ((n : ℤ) * (5 * a (n - 1))) (-1)

end

end A056546.P7118792653515086131

namespace A056546

/-- `-xor(n*5*a(n-1), -1)` -/
def P7118792653515086131.Spec : Prop :=
  ∀ n, P7118792653515086131.a n = A056546 n

end A056546

/-! ## A056546.P7292664852999079339

`5*n*a(n-1)-or(n, -1)` with `a(0)=1`
-/

namespace A056546.P7292664852999079339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) * a (n - 1) - Int.lor (n : ℤ) (-1)

end

end A056546.P7292664852999079339

namespace A056546

/-- `5*n*a(n-1)-or(n, -1)` -/
def P7292664852999079339.Spec : Prop :=
  ∀ n, P7292664852999079339.a n = A056546 n

end A056546

/-! ## A056546.P15085940926857962071

`5*floor(n*a(floor(n²/(n+1))))+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A056546.P15085940926857962071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat) + 1

end

end A056546.P15085940926857962071

namespace A056546

/-- `5*floor(n*a(floor(n²/(n+1))))+1` -/
def P15085940926857962071.Spec : Prop :=
  ∀ n, (P15085940926857962071.a n : ℤ) = A056546 n

end A056546

/-! ## A056546.P5484358840889592653

`a(n-1)*A008587(n)+1` with `a(0)=1`
-/

namespace A056546.P5484358840889592653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008587 n + 1

end

end A056546.P5484358840889592653

namespace A056546

/-- `a(n-1)*A008587(n)+1` -/
def P5484358840889592653.Spec : Prop :=
  ∀ n, P5484358840889592653.a n = A056546 n

end A056546

/-! ## A056546.P16680485994532299023

`a(n-1)*A008706(n)+1` with `a(0)=1`
-/

namespace A056546.P16680485994532299023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008706 n + 1

end

end A056546.P16680485994532299023

namespace A056546

/-- `a(n-1)*A008706(n)+1` -/
def P16680485994532299023.Spec : Prop :=
  ∀ n, P16680485994532299023.a n = A056546 n

end A056546

/-! ## A056546.P9043262444200188273

`A320031(A055999(n+3))`
-/

namespace A056546.P9043262444200188273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (A055999 (n + 3)).toNat

end

end A056546.P9043262444200188273

namespace A056546

/-- `A320031(A055999(n+3))` -/
def P9043262444200188273.Spec : Prop :=
  ∀ n, P9043262444200188273.a n = A056546 n

end A056546

/-!
# A056547: a(n) = 6*n*a(n-1) + 1 with a(0)=1.

The programs for A056547, the canonical program `A056547.P13501960590942935813` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056547 has offset 0).

The definition of A056547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n*a(n-1)+1` (program `A056547.P13501960590942935813`, by `A056547.P13501960590942935813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056547.P13501960590942935813

`6*n*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056547

/-- `6*n*a(n-1)+1` -/
def P13501960590942935813.Spec : Prop :=
  ∀ n, (P13501960590942935813.a n : ℤ) = A056547 n

theorem P13501960590942935813.correct : P13501960590942935813.Spec := by
  intro n
  simp only [A056547]

end A056547

/-! ## A056547.P15289379701833051231

`or(1, 6*n*a(n-1))` with `a(0)=1`
-/

namespace A056547.P15289379701833051231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (6 * (n * a (n - 1)))

end

end A056547.P15289379701833051231

namespace A056547

/-- `or(1, 6*n*a(n-1))` -/
def P15289379701833051231.Spec : Prop :=
  ∀ n, (P15289379701833051231.a n : ℤ) = A056547 n

end A056547

/-! ## A056547.P12482620776250730847

`xor(1, 6*n*a(n-1))` with `a(0)=1`
-/

namespace A056547.P12482620776250730847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (6 * (n * a (n - 1)))

end

end A056547.P12482620776250730847

namespace A056547

/-- `xor(1, 6*n*a(n-1))` -/
def P12482620776250730847.Spec : Prop :=
  ∀ n, (P12482620776250730847.a n : ℤ) = A056547 n

end A056547

/-! ## A056547.P3683197173110989928

`6*floor(n*a(floor(n²/(n+1))))+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A056547.P3683197173110989928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat) + 1

end

end A056547.P3683197173110989928

namespace A056547

/-- `6*floor(n*a(floor(n²/(n+1))))+1` -/
def P3683197173110989928.Spec : Prop :=
  ∀ n, (P3683197173110989928.a n : ℤ) = A056547 n

end A056547

/-! ## A056547.P17233401192904639877

`a(n-1)*A008458(n)+1` with `a(0)=1`
-/

namespace A056547.P17233401192904639877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008458 n + 1

end

end A056547.P17233401192904639877

namespace A056547

/-- `a(n-1)*A008458(n)+1` -/
def P17233401192904639877.Spec : Prop :=
  ∀ n, P17233401192904639877.a n = A056547 n

end A056547

/-!
# A056548: a(n) = Sum_{k>=1} round(n/k) where round(1/2) = 0.

The programs for A056548, the canonical program `A056548.P9433201203860911017` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056548 has offset 0).

The definition of A056548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056548.P17035806039869939097

`A006591(A028310(n))-1+n`
-/

namespace A056548.P17035806039869939097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (A028310 n).toNat - 1 + (n : ℤ)

end

end A056548.P17035806039869939097

namespace A056548

/-- `A006591(A028310(n))-1+n` -/
def P17035806039869939097.Spec : Prop :=
  ∀ n, P17035806039869939097.a n = A056548 n

end A056548

/-! ## A056548.P14892032703497728429

`A060831(comp[2*(n+1)])`
-/

namespace A056548.P14892032703497728429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A056548.P14892032703497728429

namespace A056548

/-- `A060831(comp[2*(n+1)])` -/
def P14892032703497728429.Spec : Prop :=
  ∀ n, P14892032703497728429.a n = A056548 n

end A056548

/-! ## A056548.P1674923778225234244

`record[n%2*A060831(n)]`
-/

namespace A056548.P1674923778225234244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056548.P1674923778225234244

namespace A056548

/-- `record[n%2*A060831(n)]` -/
def P1674923778225234244.Spec : Prop :=
  ∀ n, P1674923778225234244.a n = A056548 n

end A056548

/-! ## A056548.P918912641981752140

`record[A060831(-n/or(n, -2))]`
-/

namespace A056548.P918912641981752140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (SequenceMachineLib.roundAway (-((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056548.P918912641981752140

namespace A056548

/-- `record[A060831(-n/or(n, -2))]` -/
def P918912641981752140.Spec : Prop :=
  ∀ n, P918912641981752140.a n = A056548 n

end A056548

/-! ## A056548.P9384211596436746226

`record[A248517(n)-n*(-1)^n]`
-/

namespace A056548.P9384211596436746226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n - (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056548.P9384211596436746226

namespace A056548

/-- `record[A248517(n)-n*(-1)^n]` -/
def P9384211596436746226.Spec : Prop :=
  ∀ n, P9384211596436746226.a n = A056548 n

end A056548

/-! ## A056548.P6459991741035760948

`record[A060831(A026741(n))]`
-/

namespace A056548.P6459991741035760948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056548.P6459991741035760948

namespace A056548

/-- `record[A060831(A026741(n))]` -/
def P6459991741035760948.Spec : Prop :=
  ∀ n, P6459991741035760948.a n = A056548 n

end A056548

/-! ## A056548.P17722347954619088282

`record[A060831(n*A000035(n))]`
-/

namespace A056548.P17722347954619088282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056548.P17722347954619088282

namespace A056548

/-- `record[A060831(n*A000035(n))]` -/
def P17722347954619088282.Spec : Prop :=
  ∀ n, P17722347954619088282.a n = A056548 n

end A056548

/-! ## A056548.P9433201203860911017

`A350102(2*n)-A350102(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056548

/-- `A350102(2*n)-A350102(n)` -/
def P9433201203860911017.Spec : Prop :=
  ∀ n, P9433201203860911017.a n = A056548 n

theorem P9433201203860911017.correct : P9433201203860911017.Spec := by
  intro n
  simp only [A056548]

end A056548

/-! ## A056548.P8508850106322893950

`record[(A000034(n)-1)*A060831(n)]`
-/

namespace A056548.P8508850106322893950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n - 1) * A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056548.P8508850106322893950

namespace A056548

/-- `record[(A000034(n)-1)*A060831(n)]` -/
def P8508850106322893950.Spec : Prop :=
  ∀ n, P8508850106322893950.a n = A056548 n

end A056548

/-! ## A056548.P5074892773622130254

`A060831(2*n+1)-A129574(2*n+1)`
-/

namespace A056548.P5074892773622130254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (2 * n + 1) - A129574 (2 * n + 1)

end

end A056548.P5074892773622130254

namespace A056548

/-- `A060831(2*n+1)-A129574(2*n+1)` -/
def P5074892773622130254.Spec : Prop :=
  ∀ n, P5074892773622130254.a n = A056548 n

end A056548

/-!
# A056549: a(n) = Sum_{k>=1} round(n/k) where round(1/2)=1.

The programs for A056549, the canonical program `A056549.P512568632204534587` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056549 has offset 0).

The definition of A056549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A062550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056549.P512568632204534587

`A062550(n)-A006218(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056549

/-- `A062550(n)-A006218(n)` -/
def P512568632204534587.Spec : Prop :=
  ∀ n, P512568632204534587.a n = A056549 n

theorem P512568632204534587.correct : P512568632204534587.Spec := by
  intro n
  simp only [A056549]

end A056549

/-! ## A056549.P9734150885015128230

`A099055(n)-A054519(n)`
-/

namespace A056549.P9734150885015128230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099055 n - A054519 n

end

end A056549.P9734150885015128230

namespace A056549

/-- `A099055(n)-A054519(n)` -/
def P9734150885015128230.Spec : Prop :=
  ∀ n, P9734150885015128230.a n = A056549 n

end A056549

/-! ## A056549.P18320525666594473730

`A006218(2*n)-A006218(n)`
-/

namespace A056549.P18320525666594473730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n) - A006218 n

end

end A056549.P18320525666594473730

namespace A056549

/-- `A006218(2*n)-A006218(n)` -/
def P18320525666594473730.Spec : Prop :=
  ∀ n, P18320525666594473730.a n = A056549 n

end A056549

/-! ## A056549.P6696701987854945349

`A062550(n)-(∑[A032741(n)]+n)`
-/

namespace A056549.P6696701987854945349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A056549.P6696701987854945349

namespace A056549

/-- `A062550(n)-(∑[A032741(n)]+n)` -/
def P6696701987854945349.Spec : Prop :=
  ∀ n, P6696701987854945349.a n = A056549 n

end A056549

/-! ## A056549.P9577395254643569964

`A062550(n)-(A002541(A028310(n))+n)`
-/

namespace A056549.P9577395254643569964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - (A002541 (A028310 n).toNat + (n : ℤ))

end

end A056549.P9577395254643569964

namespace A056549

/-- `A062550(n)-(A002541(A028310(n))+n)` -/
def P9577395254643569964.Spec : Prop :=
  ∀ n, P9577395254643569964.a n = A056549 n

end A056549

/-! ## A056549.P5194964488153786811

`A062550(n)-(A003215(n)-A341276(n))`
-/

namespace A056549.P5194964488153786811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - (A003215 n - A341276 n)

end

end A056549.P5194964488153786811

namespace A056549

/-- `A062550(n)-(A003215(n)-A341276(n))` -/
def P5194964488153786811.Spec : Prop :=
  ∀ n, P5194964488153786811.a n = A056549 n

end A056549

/-! ## A056549.P12750779564242272960

`A062550(n)-(A113241(n)-A248517(n))`
-/

namespace A056549.P12750779564242272960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - (A113241 n - A248517 n)

end

end A056549.P12750779564242272960

namespace A056549

/-- `A062550(n)-(A113241(n)-A248517(n))` -/
def P12750779564242272960.Spec : Prop :=
  ∀ n, P12750779564242272960.a n = A056549 n

end A056549

/-! ## A056549.P17678063844748875317

`A006218(A005843(n))-(A327326(n)+A005187(n))`
-/

namespace A056549.P17678063844748875317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005843 n).toNat - (A327326 n + A005187 n)

end

end A056549.P17678063844748875317

namespace A056549

/-- `A006218(A005843(n))-(A327326(n)+A005187(n))` -/
def P17678063844748875317.Spec : Prop :=
  ∀ n, P17678063844748875317.a n = A056549 n

end A056549

/-! ## A056549.P1656656394182223547

`A056548(n+1)-A000005(2*n+1)`
-/

namespace A056549.P1656656394182223547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056548 (n + 1) - A000005 (2 * n + 1)

end

end A056549.P1656656394182223547

namespace A056549

/-- `A056548(n+1)-A000005(2*n+1)` -/
def P1656656394182223547.Spec : Prop :=
  ∀ n, P1656656394182223547.a n = A056549 n

end A056549

/-! ## A056549.P9268572433021706126

`A248517(2*n)+2*n`
-/

namespace A056549.P9268572433021706126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * n) + (2 * n : ℤ)

end

end A056549.P9268572433021706126

namespace A056549

/-- `A248517(2*n)+2*n` -/
def P9268572433021706126.Spec : Prop :=
  ∀ n, P9268572433021706126.a n = A056549 n

end A056549

/-! ## A056549.P17029165676584181637

`A059851(2*n)+A006218(n)`
-/

namespace A056549.P17029165676584181637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (2 * n) + A006218 n

end

end A056549.P17029165676584181637

namespace A056549

/-- `A059851(2*n)+A006218(n)` -/
def P17029165676584181637.Spec : Prop :=
  ∀ n, P17029165676584181637.a n = A056549 n

end A056549

/-! ## A056549.P673035815452921263

`A054519(2*n)-A054519(n)`
-/

namespace A056549.P673035815452921263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (2 * n) - A054519 n

end

end A056549.P673035815452921263

namespace A056549

/-- `A054519(2*n)-A054519(n)` -/
def P673035815452921263.Spec : Prop :=
  ∀ n, P673035815452921263.a n = A056549 n

end A056549

/-! ## A056549.P6247549835024886130

`A060831(2*n)`
-/

namespace A056549.P6247549835024886130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (2 * n)

end

end A056549.P6247549835024886130

namespace A056549

/-- `A060831(2*n)` -/
def P6247549835024886130.Spec : Prop :=
  ∀ n, P6247549835024886130.a n = A056549 n

end A056549

/-! ## A056549.P9039445629462084623

`record[A060831(and(n, n+1))]`
-/

namespace A056549.P9039445629462084623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056549.P9039445629462084623

namespace A056549

/-- `record[A060831(and(n, n+1))]` -/
def P9039445629462084623.Spec : Prop :=
  ∀ n, P9039445629462084623.a n = A056549 n

end A056549

/-! ## A056549.P15790304264924145669

`record[A060831(n%or(1, n))]`
-/

namespace A056549.P15790304264924145669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056549.P15790304264924145669

namespace A056549

/-- `record[A060831(n%or(1, n))]` -/
def P15790304264924145669.Spec : Prop :=
  ∀ n, P15790304264924145669.a n = A056549 n

end A056549

/-! ## A056549.P13624013357672010223

`record[A060831(n)/(gcd(2, n)²-3)]`
-/

namespace A056549.P13624013357672010223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060831 n : ℚ) / ((Nat.gcd 2 n ^ 2 : ℤ) - 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056549.P13624013357672010223

namespace A056549

/-- `record[A060831(n)/(gcd(2, n)²-3)]` -/
def P13624013357672010223.Spec : Prop :=
  ∀ n, P13624013357672010223.a n = (A056549 n : ℚ)

end A056549

/-! ## A056549.P17430047410360079650

`A060831(Δ[n²]-1)%(n+1)²`
-/

namespace A056549.P17430047410360079650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060831 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat) ((n + 1) ^ 2 : ℤ)

end

end A056549.P17430047410360079650

namespace A056549

/-- `A060831(Δ[n²]-1)%(n+1)²` -/
def P17430047410360079650.Spec : Prop :=
  ∀ n, P17430047410360079650.a n = A056549 n

end A056549

/-! ## A056549.P11631078436573701038

`record[A060831(A014681(n))]`
-/

namespace A056549.P11631078436573701038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056549.P11631078436573701038

namespace A056549

/-- `record[A060831(A014681(n))]` -/
def P11631078436573701038.Spec : Prop :=
  ∀ n, P11631078436573701038.a n = A056549 n

end A056549

/-! ## A056549.P7231998008485269575

`record[A060831(A059029(n)-n)]`
-/

namespace A056549.P7231998008485269575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A059029 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056549.P7231998008485269575

namespace A056549

/-- `record[A060831(A059029(n)-n)]` -/
def P7231998008485269575.Spec : Prop :=
  ∀ n, P7231998008485269575.a n = A056549 n

end A056549

/-! ## A056549.P6686621605101555966

`record[A060831(A000265(n+1)-1)]`
-/

namespace A056549.P6686621605101555966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056549.P6686621605101555966

namespace A056549

/-- `record[A060831(A000265(n+1)-1)]` -/
def P6686621605101555966.Spec : Prop :=
  ∀ n, P6686621605101555966.a n = A056549 n

end A056549

/-!
# A056550: Numbers k such that Sum_{j=1..k} sigma(j) is divisible by k, where sigma(j) = sum of divisors of j (A000203).

The programs for A056550, there is no canonical definition to state claims against.
-/

/-! ## A056550.P9964533457945378632

`A168133(n+1)/A168132(n+1)`
-/

namespace A056550.P9964533457945378632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168133 (n + 1) : ℚ) / (A168132 (n + 1) : ℚ)

end

end A056550.P9964533457945378632

/-! ## A056550.P9181308351499359991

`eq[0, A294885(n+1)]+1`
-/

namespace A056550.P9181308351499359991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056550.P9181308351499359991

/-! ## A056550.P17962748796641437107

`eq[1, A000005(A004125(n+1)%(n+1)+1)]+1`
-/

namespace A056550.P17962748796641437107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A004125 (n + 1)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056550.P17962748796641437107

/-! ## A056550.P16697470449156470645

`eq[A000007(n), A294885(A028310(n))]`
-/

namespace A056550.P16697470449156470645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294885 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056550.P16697470449156470645

/-! ## A056550.P4824702848492752449

`eq[A000038(n), A294885(A028310(n))]`
-/

namespace A056550.P4824702848492752449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294885 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056550.P4824702848492752449

/-!
# A056551: Smallest cube divisible by n divided by largest cube which divides n.

The programs for A056551, the canonical program `A056551.P2444650009454942186` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056551 has offset 1).

The definition of A056551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056551.P15935859156787902973

`A056552(n+1)^3`
-/

namespace A056551.P15935859156787902973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1) ^ 3

end

end A056551.P15935859156787902973

namespace A056551

/-- `A056552(n+1)^3` -/
def P15935859156787902973.Spec : Prop :=
  ∀ n, P15935859156787902973.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P2444650009454942186

`A048798(n+1)*A050985(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056551

/-- `A048798(n+1)*A050985(n+1)` -/
def P2444650009454942186.Spec : Prop :=
  ∀ n, P2444650009454942186.a n = A056551 (n + 1)

theorem P2444650009454942186.correct : P2444650009454942186.Spec := by
  intro n
  simp only [A056551, Nat.add_sub_cancel]

end A056551

/-! ## A056551.P11011020134776372229

`A053149(n+1)/A008834(n+1)`
-/

namespace A056551.P11011020134776372229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A008834 (n + 1) : ℚ)

end

end A056551.P11011020134776372229

namespace A056551

/-- `A053149(n+1)/A008834(n+1)` -/
def P11011020134776372229.Spec : Prop :=
  ∀ n, P11011020134776372229.a n = (A056551 (n + 1) : ℚ)

end A056551

/-! ## A056551.P4753407511878253430

`A000578(A056552(n+1))`
-/

namespace A056551.P4753407511878253430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A056552 (n + 1)).toNat

end

end A056551.P4753407511878253430

namespace A056551

/-- `A000578(A056552(n+1))` -/
def P4753407511878253430.Spec : Prop :=
  ∀ n, P4753407511878253430.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P17549220776364267469

`A053149(A050985(n+1))`
-/

namespace A056551.P17549220776364267469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053149 (A050985 (n + 1)).toNat

end

end A056551.P17549220776364267469

namespace A056551

/-- `A053149(A050985(n+1))` -/
def P17549220776364267469.Spec : Prop :=
  ∀ n, P17549220776364267469.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P10535189169921182384

`A056555(∏{p}[A050985(n+1), #])`
-/

namespace A056551.P10535189169921182384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A056551.P10535189169921182384

namespace A056551

/-- `A056555(∏{p}[A050985(n+1), #])` -/
def P10535189169921182384.Spec : Prop :=
  ∀ n, P10535189169921182384.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P14375132903925464325

`A356192((n+1)/A008834(n+1))`
-/

namespace A056551.P14375132903925464325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356192 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056551.P14375132903925464325

namespace A056551

/-- `A356192((n+1)/A008834(n+1))` -/
def P14375132903925464325.Spec : Prop :=
  ∀ n, P14375132903925464325.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P12240553892398508486

`A356193((n+1)/A008834(n+1))`
-/

namespace A056551.P12240553892398508486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056551.P12240553892398508486

namespace A056551

/-- `A356193((n+1)/A008834(n+1))` -/
def P12240553892398508486.Spec : Prop :=
  ∀ n, P12240553892398508486.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P2475204330959415346

`A056555(A056552(2*n+1-n))`
-/

namespace A056551.P2475204330959415346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A056552 (2 * n + 1 - n)).toNat

end

end A056551.P2475204330959415346

namespace A056551

/-- `A056555(A056552(2*n+1-n))` -/
def P2475204330959415346.Spec : Prop :=
  ∀ n, P2475204330959415346.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P16168780442598986864

`A356193(A050985(2*n+1-n))`
-/

namespace A056551.P16168780442598986864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (A050985 (2 * n + 1 - n)).toNat

end

end A056551.P16168780442598986864

namespace A056551

/-- `A356193(A050985(2*n+1-n))` -/
def P16168780442598986864.Spec : Prop :=
  ∀ n, P16168780442598986864.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P11981869565374384883

`gcd(A007947(n+1), A048798(n+1))^3`
-/

namespace A056551.P11981869565374384883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A048798 (n + 1)) ^ 3

end

end A056551.P11981869565374384883

namespace A056551

/-- `gcd(A007947(n+1), A048798(n+1))^3` -/
def P11981869565374384883.Spec : Prop :=
  ∀ n, (P11981869565374384883.a n : ℤ) = A056551 (n + 1)

end A056551

/-! ## A056551.P13347648470573191253

`A000578(A007947((n+1)/A008834(n+1)))`
-/

namespace A056551.P13347648470573191253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat).toNat

end

end A056551.P13347648470573191253

namespace A056551

/-- `A000578(A007947((n+1)/A008834(n+1)))` -/
def P13347648470573191253.Spec : Prop :=
  ∀ n, P13347648470573191253.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P9306792281319359796

`A000578(A019555((n+1)/A008834(n+1)))`
-/

namespace A056551.P9306792281319359796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A019555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat).toNat

end

end A056551.P9306792281319359796

namespace A056551

/-- `A000578(A019555((n+1)/A008834(n+1)))` -/
def P9306792281319359796.Spec : Prop :=
  ∀ n, P9306792281319359796.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P1879869105606140956

`A000578(A019555(n+1)/A053150(n+1))`
-/

namespace A056551.P1879869105606140956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A019555 (n + 1) : ℚ) / (A053150 (n + 1) : ℚ))).toNat

end

end A056551.P1879869105606140956

namespace A056551

/-- `A000578(A019555(n+1)/A053150(n+1))` -/
def P1879869105606140956.Spec : Prop :=
  ∀ n, P1879869105606140956.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P8948565322686383553

`A056553(A050985(n+1))/A056552(n+1)`
-/

namespace A056551.P8948565322686383553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056553 (A050985 (n + 1)).toNat : ℚ) / (A056552 (n + 1) : ℚ)

end

end A056551.P8948565322686383553

namespace A056551

/-- `A056553(A050985(n+1))/A056552(n+1)` -/
def P8948565322686383553.Spec : Prop :=
  ∀ n, P8948565322686383553.a n = (A056551 (n + 1) : ℚ)

end A056551

/-! ## A056551.P2482012905038648364

`A053149(n+1)/A053149(A062378(n+1))`
-/

namespace A056551.P2482012905038648364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A053149 (A062378 (n + 1)).toNat : ℚ)

end

end A056551.P2482012905038648364

namespace A056551

/-- `A053149(n+1)/A053149(A062378(n+1))` -/
def P2482012905038648364.Spec : Prop :=
  ∀ n, P2482012905038648364.a n = (A056551 (n + 1) : ℚ)

end A056551

/-! ## A056551.P2392619776011443092

`A053149(A053149(n+1)/A159253(n+1))`
-/

namespace A056551.P2392619776011443092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053149 (SequenceMachineLib.roundAway ((A053149 (n + 1) : ℚ) / (A159253 (n + 1) : ℚ))).toNat

end

end A056551.P2392619776011443092

namespace A056551

/-- `A053149(A053149(n+1)/A159253(n+1))` -/
def P2392619776011443092.Spec : Prop :=
  ∀ n, P2392619776011443092.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P15724665943635409519

`A056552(A056192(n+1))²*A056552(n+1)`
-/

namespace A056551.P15724665943635409519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (A056192 (n + 1)).toNat ^ 2 * A056552 (n + 1)

end

end A056551.P15724665943635409519

namespace A056551

/-- `A056552(A056192(n+1))²*A056552(n+1)` -/
def P15724665943635409519.Spec : Prop :=
  ∀ n, P15724665943635409519.a n = A056551 (n + 1)

end A056551

/-! ## A056551.P13189664953268843594

`A019555(n+1)/A008834(n+1)*A019555(n+1)²`
-/

namespace A056551.P13189664953268843594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A008834 (n + 1) : ℚ) * (A019555 (n + 1) ^ 2 : ℚ)

end

end A056551.P13189664953268843594

namespace A056551

/-- `A019555(n+1)/A008834(n+1)*A019555(n+1)²` -/
def P13189664953268843594.Spec : Prop :=
  ∀ n, P13189664953268843594.a n = (A056551 (n + 1) : ℚ)

end A056551

/-! ## A056551.P87297678750839690

`A056555(A008835(n+1)*A056552(n+1))`
-/

namespace A056551.P87297678750839690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A008835 (n + 1) * A056552 (n + 1)).toNat

end

end A056551.P87297678750839690

namespace A056551

/-- `A056555(A008835(n+1)*A056552(n+1))` -/
def P87297678750839690.Spec : Prop :=
  ∀ n, P87297678750839690.a n = A056551 (n + 1)

end A056551

/-!
# A056552: Powerfree kernel of cubefree part of n.

The programs for A056552, the canonical program `A056552.P1963529869143813424` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056552 has offset 1).

The definition of A056552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056551, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056552.P1963529869143813424

`A056551(n+1)^(1/3)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A056552

/-- `A056551(n+1)^(1/3)` -/
def P1963529869143813424.Spec : Prop :=
  ∀ n, P1963529869143813424.a n = (A056552 (n + 1) : ℝ)

end A056552

/-! ## A056552.P11548202361277512007

`A007947(A050985(n+1))`
-/

namespace A056552.P11548202361277512007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A050985 (n + 1)).toNat

end

end A056552.P11548202361277512007

namespace A056552

/-- `A007947(A050985(n+1))` -/
def P11548202361277512007.Spec : Prop :=
  ∀ n, P11548202361277512007.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P16830006132075860786

`A019555(n+1)/A053150(n+1)`
-/

namespace A056552.P16830006132075860786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A053150 (n + 1) : ℚ)

end

end A056552.P16830006132075860786

namespace A056552

/-- `A019555(n+1)/A053150(n+1)` -/
def P16830006132075860786.Spec : Prop :=
  ∀ n, P16830006132075860786.a n = (A056552 (n + 1) : ℚ)

end A056552

/-! ## A056552.P5068862791338431140

`(n+1)/(A053150(n+1)*A000189(n+1))`
-/

namespace A056552.P5068862791338431140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053150 (n + 1) * A000189 (n + 1) : ℚ)

end

end A056552.P5068862791338431140

namespace A056552

/-- `(n+1)/(A053150(n+1)*A000189(n+1))` -/
def P5068862791338431140.Spec : Prop :=
  ∀ n, P5068862791338431140.a n = (A056552 (n + 1) : ℚ)

end A056552

/-! ## A056552.P17156473364760647991

`∏{p}[(n+1)/A008834(n+1), #]`
-/

namespace A056552.P17156473364760647991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008834 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A056552.P17156473364760647991

namespace A056552

/-- `∏{p}[(n+1)/A008834(n+1), #]` -/
def P17156473364760647991.Spec : Prop :=
  ∀ n, (P17156473364760647991.a n : ℤ) = A056552 (n + 1)

end A056552

/-! ## A056552.P16007842948528547530

`gcd(A048798(n+1), A144845(n))`
-/

namespace A056552.P16007842948528547530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048798 (n + 1)) (A144845 n)

end

end A056552.P16007842948528547530

namespace A056552

/-- `gcd(A048798(n+1), A144845(n))` -/
def P16007842948528547530.Spec : Prop :=
  ∀ n, (P16007842948528547530.a n : ℤ) = A056552 (n + 1)

end A056552

/-! ## A056552.P9714313599482964002

`A007947((n+1)/A008834(n+1))`
-/

namespace A056552.P9714313599482964002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P9714313599482964002

namespace A056552

/-- `A007947((n+1)/A008834(n+1))` -/
def P9714313599482964002.Spec : Prop :=
  ∀ n, P9714313599482964002.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P944662344849615931

`A015052((n+1)/A008834(n+1))`
-/

namespace A056552.P944662344849615931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P944662344849615931

namespace A056552

/-- `A015052((n+1)/A008834(n+1))` -/
def P944662344849615931.Spec : Prop :=
  ∀ n, P944662344849615931.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P3640576879969422959

`A015053((n+1)/A008834(n+1))`
-/

namespace A056552.P3640576879969422959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P3640576879969422959

namespace A056552

/-- `A015053((n+1)/A008834(n+1))` -/
def P3640576879969422959.Spec : Prop :=
  ∀ n, P3640576879969422959.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P10162455795675502648

`A019554((n+1)/A008834(n+1))`
-/

namespace A056552.P10162455795675502648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P10162455795675502648

namespace A056552

/-- `A019554((n+1)/A008834(n+1))` -/
def P10162455795675502648.Spec : Prop :=
  ∀ n, P10162455795675502648.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P13099046695616491336

`A019555((n+1)/A008834(n+1))`
-/

namespace A056552.P13099046695616491336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P13099046695616491336

namespace A056552

/-- `A019555((n+1)/A008834(n+1))` -/
def P13099046695616491336.Spec : Prop :=
  ∀ n, P13099046695616491336.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P228537596143720082

`A053166((n+1)/A008834(n+1))`
-/

namespace A056552.P228537596143720082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P228537596143720082

namespace A056552

/-- `A053166((n+1)/A008834(n+1))` -/
def P228537596143720082.Spec : Prop :=
  ∀ n, P228537596143720082.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P15517886380092720812

`A056554((n+1)/A008834(n+1))`
-/

namespace A056552.P15517886380092720812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P15517886380092720812

namespace A056552

/-- `A056554((n+1)/A008834(n+1))` -/
def P15517886380092720812.Spec : Prop :=
  ∀ n, P15517886380092720812.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P17782550775696489393

`A331737((n+1)/A008834(n+1))`
-/

namespace A056552.P17782550775696489393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P17782550775696489393

namespace A056552

/-- `A331737((n+1)/A008834(n+1))` -/
def P17782550775696489393.Spec : Prop :=
  ∀ n, P17782550775696489393.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P16097779418149733244

`A350390((n+1)/A008834(n+1))`
-/

namespace A056552.P16097779418149733244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A056552.P16097779418149733244

namespace A056552

/-- `A350390((n+1)/A008834(n+1))` -/
def P16097779418149733244.Spec : Prop :=
  ∀ n, P16097779418149733244.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P3215896070066097362

`A019555(A050985(2*n+1-n))`
-/

namespace A056552.P3215896070066097362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A050985 (2 * n + 1 - n)).toNat

end

end A056552.P3215896070066097362

namespace A056552

/-- `A019555(A050985(2*n+1-n))` -/
def P3215896070066097362.Spec : Prop :=
  ∀ n, P3215896070066097362.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P10489850344988983914

`A007913(A019555(n+1)*A053150(n+1))`
-/

namespace A056552.P10489850344988983914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A019555 (n + 1) * A053150 (n + 1)).toNat

end

end A056552.P10489850344988983914

namespace A056552

/-- `A007913(A019555(n+1)*A053150(n+1))` -/
def P10489850344988983914.Spec : Prop :=
  ∀ n, P10489850344988983914.a n = A056552 (n + 1)

end A056552

/-! ## A056552.P14980054334637401676

`A019555(n+1)/A000188(A000189(n+1))`
-/

namespace A056552.P14980054334637401676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A000188 (A000189 (n + 1)).toNat : ℚ)

end

end A056552.P14980054334637401676

namespace A056552

/-- `A019555(n+1)/A000188(A000189(n+1))` -/
def P14980054334637401676.Spec : Prop :=
  ∀ n, P14980054334637401676.a n = (A056552 (n + 1) : ℚ)

end A056552

/-! ## A056552.P783116279247558253

`A019555(n+1)/A019555(A062378(n+1))`
-/

namespace A056552.P783116279247558253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A019555 (A062378 (n + 1)).toNat : ℚ)

end

end A056552.P783116279247558253

namespace A056552

/-- `A019555(n+1)/A019555(A062378(n+1))` -/
def P783116279247558253.Spec : Prop :=
  ∀ n, P783116279247558253.a n = (A056552 (n + 1) : ℚ)

end A056552

/-! ## A056552.P7697153213185465320

`A056554((n+1)*A053150(n+1))`
-/

namespace A056552.P7697153213185465320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 ((n + 1 : ℤ) * A053150 (n + 1)).toNat

end

end A056552.P7697153213185465320

namespace A056552

/-- `A056554((n+1)*A053150(n+1))` -/
def P7697153213185465320.Spec : Prop :=
  ∀ n, P7697153213185465320.a n = A056552 (n + 1)

end A056552

/-!
# A056553: Smallest 4th-power divisible by n divided by largest 4th-power which divides n.

The programs for A056553, the canonical program `A056553.P3228939209481617257` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056553 has offset 1).

The definition of A056553 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, A053167, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056553.P14572459760029544203

`A056554(n+1)^4`
-/

namespace A056553.P14572459760029544203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (n + 1) ^ 4

end

end A056553.P14572459760029544203

namespace A056553

/-- `A056554(n+1)^4` -/
def P14572459760029544203.Spec : Prop :=
  ∀ n, P14572459760029544203.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P3228939209481617257

`A053167(n+1)/A008835(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A056553

/-- `A053167(n+1)/A008835(n+1)` -/
def P3228939209481617257.Spec : Prop :=
  ∀ n, P3228939209481617257.a n = (A056553 (n + 1) : ℚ)

end A056553

/-! ## A056553.P12952971220177381323

`∏{p}[A053165(n+1), #²²]`
-/

namespace A056553.P12952971220177381323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A056553.P12952971220177381323

namespace A056553

/-- `∏{p}[A053165(n+1), #²²]` -/
def P12952971220177381323.Spec : Prop :=
  ∀ n, (P12952971220177381323.a n : ℤ) = A056553 (n + 1)

end A056553

/-! ## A056553.P7445333634204680900

`A000583(A056554(n+1))`
-/

namespace A056553.P7445333634204680900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A056554 (n + 1)).toNat

end

end A056553.P7445333634204680900

namespace A056553

/-- `A000583(A056554(n+1))` -/
def P7445333634204680900.Spec : Prop :=
  ∀ n, P7445333634204680900.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P13364686921781802559

`A053167(A053165(n+1))`
-/

namespace A056553.P13364686921781802559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (A053165 (n + 1)).toNat

end

end A056553.P13364686921781802559

namespace A056553

/-- `A053167(A053165(n+1))` -/
def P13364686921781802559.Spec : Prop :=
  ∀ n, P13364686921781802559.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P11016470462506140668

`A053167(A384555(n+1))`
-/

namespace A056553.P11016470462506140668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (A384555 (n + 1)).toNat

end

end A056553.P11016470462506140668

namespace A056553

/-- `A053167(A384555(n+1))` -/
def P11016470462506140668.Spec : Prop :=
  ∀ n, P11016470462506140668.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P16949597528687464120

`A056554(A000027(n+1))²²`
-/

namespace A056553.P16949597528687464120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056554 (A000027 (n + 1)).toNat ^ 2) ^ 2

end

end A056553.P16949597528687464120

namespace A056553

/-- `A056554(A000027(n+1))²²` -/
def P16949597528687464120.Spec : Prop :=
  ∀ n, P16949597528687464120.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P2684281844843087887

`A053165(n+1)*A056555(n+1)`
-/

namespace A056553.P2684281844843087887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1) * A056555 (n + 1)

end

end A056553.P2684281844843087887

namespace A056553

/-- `A053165(n+1)*A056555(n+1)` -/
def P2684281844843087887.Spec : Prop :=
  ∀ n, P2684281844843087887.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P4724108734729253574

`gcd(A053165(n+1), A144845(n))²²`
-/

namespace A056553.P4724108734729253574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A053165 (n + 1)) (A144845 n) ^ 2) ^ 2

end

end A056553.P4724108734729253574

namespace A056553

/-- `gcd(A053165(n+1), A144845(n))²²` -/
def P4724108734729253574.Spec : Prop :=
  ∀ n, (P4724108734729253574.a n : ℤ) = A056553 (n + 1)

end A056553

/-! ## A056553.P13585087379807600249

`A053166(n+1)²²/A008835(n+1)`
-/

namespace A056553.P13585087379807600249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053166 (n + 1) ^ 2) ^ 2 : ℚ) / (A008835 (n + 1) : ℚ)

end

end A056553.P13585087379807600249

namespace A056553

/-- `A053166(n+1)²²/A008835(n+1)` -/
def P13585087379807600249.Spec : Prop :=
  ∀ n, P13585087379807600249.a n = (A056553 (n + 1) : ℚ)

end A056553

/-! ## A056553.P14483837829933621957

`(A053166(n+1)/A053164(n+1))²²`
-/

namespace A056553.P14483837829933621957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A053166 (n + 1) : ℚ) / (A053164 (n + 1) : ℚ)) ^ 2) ^ 2

end

end A056553.P14483837829933621957

namespace A056553

/-- `(A053166(n+1)/A053164(n+1))²²` -/
def P14483837829933621957.Spec : Prop :=
  ∀ n, P14483837829933621957.a n = (A056553 (n + 1) : ℚ)

end A056553

/-! ## A056553.P6058656839874916769

`A053167(n+1)/A053164(n+1)²²`
-/

namespace A056553.P6058656839874916769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053167 (n + 1) : ℚ) / ((A053164 (n + 1) ^ 2) ^ 2 : ℚ)

end

end A056553.P6058656839874916769

namespace A056553

/-- `A053167(n+1)/A053164(n+1)²²` -/
def P6058656839874916769.Spec : Prop :=
  ∀ n, P6058656839874916769.a n = (A056553 (n + 1) : ℚ)

end A056553

/-! ## A056553.P12228746937157235982

`gcd(A007947(n+1), A056555(n+1))²²`
-/

namespace A056553.P12228746937157235982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A007947 (n + 1)) (A056555 (n + 1)) ^ 2) ^ 2

end

end A056553.P12228746937157235982

namespace A056553

/-- `gcd(A007947(n+1), A056555(n+1))²²` -/
def P12228746937157235982.Spec : Prop :=
  ∀ n, (P12228746937157235982.a n : ℤ) = A056553 (n + 1)

end A056553

/-! ## A056553.P17915253662458653181

`A000583(A053166((n+1)/A008835(n+1)))`
-/

namespace A056553.P17915253662458653181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053166 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat).toNat

end

end A056553.P17915253662458653181

namespace A056553

/-- `A000583(A053166((n+1)/A008835(n+1)))` -/
def P17915253662458653181.Spec : Prop :=
  ∀ n, P17915253662458653181.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P9662372611110385107

`A000583(A053166(n+1)/A053164(n+1))`
-/

namespace A056553.P9662372611110385107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (SequenceMachineLib.roundAway ((A053166 (n + 1) : ℚ) / (A053164 (n + 1) : ℚ))).toNat

end

end A056553.P9662372611110385107

namespace A056553

/-- `A000583(A053166(n+1)/A053164(n+1))` -/
def P9662372611110385107.Spec : Prop :=
  ∀ n, P9662372611110385107.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P7197808696375373219

`A053167(A053166(n+1)/A053164(n+1))`
-/

namespace A056553.P7197808696375373219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (SequenceMachineLib.roundAway ((A053166 (n + 1) : ℚ) / (A053164 (n + 1) : ℚ))).toNat

end

end A056553.P7197808696375373219

namespace A056553

/-- `A053167(A053166(n+1)/A053164(n+1))` -/
def P7197808696375373219.Spec : Prop :=
  ∀ n, P7197808696375373219.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P5386744474319242916

`A053167((n+1)/A053167(A062379(n+1)))`
-/

namespace A056553.P5386744474319242916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053167 (A062379 (n + 1)).toNat : ℚ))).toNat

end

end A056553.P5386744474319242916

namespace A056553

/-- `A053167((n+1)/A053167(A062379(n+1)))` -/
def P5386744474319242916.Spec : Prop :=
  ∀ n, P5386744474319242916.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P10974771137467311510

`A053167(A053167(n+1)/A356193(n+1))`
-/

namespace A056553.P10974771137467311510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (SequenceMachineLib.roundAway ((A053167 (n + 1) : ℚ) / (A356193 (n + 1) : ℚ))).toNat

end

end A056553.P10974771137467311510

namespace A056553

/-- `A053167(A053167(n+1)/A356193(n+1))` -/
def P10974771137467311510.Spec : Prop :=
  ∀ n, P10974771137467311510.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P15553270302634175088

`(A055491(n+1)*A055491(A071974(n+1)))²`
-/

namespace A056553.P15553270302634175088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055491 (n + 1) * A055491 (A071974 (n + 1)).toNat) ^ 2

end

end A056553.P15553270302634175088

namespace A056553

/-- `(A055491(n+1)*A055491(A071974(n+1)))²` -/
def P15553270302634175088.Spec : Prop :=
  ∀ n, P15553270302634175088.a n = A056553 (n + 1)

end A056553

/-! ## A056553.P6602937620618712315

`lcm(A007913(A000188(n+1)), A007913(n+1))^4`
-/

namespace A056553.P6602937620618712315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (A000188 (n + 1)).toNat) (A007913 (n + 1)) ^ 4

end

end A056553.P6602937620618712315

namespace A056553

/-- `lcm(A007913(A000188(n+1)), A007913(n+1))^4` -/
def P6602937620618712315.Spec : Prop :=
  ∀ n, (P6602937620618712315.a n : ℤ) = A056553 (n + 1)

end A056553

/-!
# A056554: Powerfree kernel of 4th-powerfree part of n.

The programs for A056554, the canonical program `A056554.P12189211576278648402` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056554 has offset 1).

The definition of A056554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056553, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056554.P12189211576278648402

`A056553(n+1)^(1/4)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A056554

/-- `A056553(n+1)^(1/4)` -/
def P12189211576278648402.Spec : Prop :=
  ∀ n, P12189211576278648402.a n = (A056554 (n + 1) : ℝ)

end A056554

/-! ## A056554.P6090812297612966240

`A007947(A053165(n+1))`
-/

namespace A056554.P6090812297612966240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A053165 (n + 1)).toNat

end

end A056554.P6090812297612966240

namespace A056554

/-- `A007947(A053165(n+1))` -/
def P6090812297612966240.Spec : Prop :=
  ∀ n, P6090812297612966240.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P11662516273429489877

`A053166(n+1)/A053164(n+1)`
-/

namespace A056554.P11662516273429489877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053166 (n + 1) : ℚ) / (A053164 (n + 1) : ℚ)

end

end A056554.P11662516273429489877

namespace A056554

/-- `A053166(n+1)/A053164(n+1)` -/
def P11662516273429489877.Spec : Prop :=
  ∀ n, P11662516273429489877.a n = (A056554 (n + 1) : ℚ)

end A056554

/-! ## A056554.P15660824038996710245

`(n+1)/(A053164(n+1)*A000190(n+1))`
-/

namespace A056554.P15660824038996710245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053164 (n + 1) * A000190 (n + 1) : ℚ)

end

end A056554.P15660824038996710245

namespace A056554

/-- `(n+1)/(A053164(n+1)*A000190(n+1))` -/
def P15660824038996710245.Spec : Prop :=
  ∀ n, P15660824038996710245.a n = (A056554 (n + 1) : ℚ)

end A056554

/-! ## A056554.P10713992133957666312

`sqrt(sqrt(A056553(n+1)))`
-/

namespace A056554.P10713992133957666312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A056553 (n + 1) : ℝ))

end

end A056554.P10713992133957666312

namespace A056554

/-- `sqrt(sqrt(A056553(n+1)))` -/
def P10713992133957666312.Spec : Prop :=
  ∀ n, P10713992133957666312.a n = (A056554 (n + 1) : ℝ)

end A056554

/-! ## A056554.P173103655855309563

`∏{p}[A384555(n+1), #]`
-/

namespace A056554.P173103655855309563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A056554.P173103655855309563

namespace A056554

/-- `∏{p}[A384555(n+1), #]` -/
def P173103655855309563.Spec : Prop :=
  ∀ n, (P173103655855309563.a n : ℤ) = A056554 (n + 1)

end A056554

/-! ## A056554.P63450685056115594

`A007947(A384555(n+1))`
-/

namespace A056554.P63450685056115594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A384555 (n + 1)).toNat

end

end A056554.P63450685056115594

namespace A056554

/-- `A007947(A384555(n+1))` -/
def P63450685056115594.Spec : Prop :=
  ∀ n, P63450685056115594.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P5400790599616423496

`gcd(A053165(n+1), A144845(n))`
-/

namespace A056554.P5400790599616423496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053165 (n + 1)) (A144845 n)

end

end A056554.P5400790599616423496

namespace A056554

/-- `gcd(A053165(n+1), A144845(n))` -/
def P5400790599616423496.Spec : Prop :=
  ∀ n, (P5400790599616423496.a n : ℤ) = A056554 (n + 1)

end A056554

/-! ## A056554.P5054098189263551018

`A007947((n+1)/A008835(n+1))`
-/

namespace A056554.P5054098189263551018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat

end

end A056554.P5054098189263551018

namespace A056554

/-- `A007947((n+1)/A008835(n+1))` -/
def P5054098189263551018.Spec : Prop :=
  ∀ n, P5054098189263551018.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P1227385585987808019

`A015052((n+1)/A008835(n+1))`
-/

namespace A056554.P1227385585987808019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat

end

end A056554.P1227385585987808019

namespace A056554

/-- `A015052((n+1)/A008835(n+1))` -/
def P1227385585987808019.Spec : Prop :=
  ∀ n, P1227385585987808019.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P3027385073933651286

`A015053((n+1)/A008835(n+1))`
-/

namespace A056554.P3027385073933651286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat

end

end A056554.P3027385073933651286

namespace A056554

/-- `A015053((n+1)/A008835(n+1))` -/
def P3027385073933651286.Spec : Prop :=
  ∀ n, P3027385073933651286.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P2619821968160427291

`A019555((n+1)/A008835(n+1))`
-/

namespace A056554.P2619821968160427291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat

end

end A056554.P2619821968160427291

namespace A056554

/-- `A019555((n+1)/A008835(n+1))` -/
def P2619821968160427291.Spec : Prop :=
  ∀ n, P2619821968160427291.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P12323856883754485890

`A053166((n+1)/A008835(n+1))`
-/

namespace A056554.P12323856883754485890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat

end

end A056554.P12323856883754485890

namespace A056554

/-- `A053166((n+1)/A008835(n+1))` -/
def P12323856883754485890.Spec : Prop :=
  ∀ n, P12323856883754485890.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P430079620523946673

`A007913((n+1)/A071974(n+1))`
-/

namespace A056554.P430079620523946673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A071974 (n + 1) : ℚ))).toNat

end

end A056554.P430079620523946673

namespace A056554

/-- `A007913((n+1)/A071974(n+1))` -/
def P430079620523946673.Spec : Prop :=
  ∀ n, P430079620523946673.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P10078064336494593840

`A053166(A053165(2*n+1-n))`
-/

namespace A056554.P10078064336494593840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053165 (2 * n + 1 - n)).toNat

end

end A056554.P10078064336494593840

namespace A056554

/-- `A053166(A053165(2*n+1-n))` -/
def P10078064336494593840.Spec : Prop :=
  ∀ n, P10078064336494593840.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P8195504428815979806

`gcd(A007947(n+1), A056553(n+1))`
-/

namespace A056554.P8195504428815979806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A056553 (n + 1))

end

end A056554.P8195504428815979806

namespace A056554

/-- `gcd(A007947(n+1), A056553(n+1))` -/
def P8195504428815979806.Spec : Prop :=
  ∀ n, (P8195504428815979806.a n : ℤ) = A056554 (n + 1)

end A056554

/-! ## A056554.P4865262810860902401

`gcd(A056553(n+1)², A062953(n+1))`
-/

namespace A056554.P4865262810860902401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056553 (n + 1) ^ 2) (A062953 (n + 1))

end

end A056554.P4865262810860902401

namespace A056554

/-- `gcd(A056553(n+1)², A062953(n+1))` -/
def P4865262810860902401.Spec : Prop :=
  ∀ n, (P4865262810860902401.a n : ℤ) = A056554 (n + 1)

end A056554

/-! ## A056554.P9053981052637052154

`A007913(A007913(n+1)*A071974(n+1))`
-/

namespace A056554.P9053981052637052154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) * A071974 (n + 1)).toNat

end

end A056554.P9053981052637052154

namespace A056554

/-- `A007913(A007913(n+1)*A071974(n+1))` -/
def P9053981052637052154.Spec : Prop :=
  ∀ n, P9053981052637052154.a n = A056554 (n + 1)

end A056554

/-! ## A056554.P12906248801279011919

`A019554(n+1)/A000189(A000190(n+1))`
-/

namespace A056554.P12906248801279011919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A000189 (A000190 (n + 1)).toNat : ℚ)

end

end A056554.P12906248801279011919

namespace A056554

/-- `A019554(n+1)/A000189(A000190(n+1))` -/
def P12906248801279011919.Spec : Prop :=
  ∀ n, P12906248801279011919.a n = (A056554 (n + 1) : ℚ)

end A056554

/-! ## A056554.P12297404631753932373

`A019554(A019554((n+1)/A008835(n+1)))`
-/

namespace A056554.P12297404631753932373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat).toNat

end

end A056554.P12297404631753932373

namespace A056554

/-- `A019554(A019554((n+1)/A008835(n+1)))` -/
def P12297404631753932373.Spec : Prop :=
  ∀ n, P12297404631753932373.a n = A056554 (n + 1)

end A056554

/-!
# A056555: Smallest number k (k>0) such that n*k is a perfect 4th power.

The programs for A056555, the canonical program `A056555.P6670388154157889676` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056555 has offset 1).

The definition of A056555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053165, A056553, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056555.P3527427074255697571

`A053167(n+1)/(n+1)`
-/

namespace A056555.P3527427074255697571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053167 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056555.P3527427074255697571

namespace A056555

/-- `A053167(n+1)/(n+1)` -/
def P3527427074255697571.Spec : Prop :=
  ∀ n, P3527427074255697571.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P6670388154157889676

`A056553(n+1)/A053165(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A056555

/-- `A056553(n+1)/A053165(n+1)` -/
def P6670388154157889676.Spec : Prop :=
  ∀ n, P6670388154157889676.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P15097371638350189255

`A053166(n+1)^4/(n+1)`
-/

namespace A056555.P15097371638350189255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053166 (n + 1) ^ 4 : ℚ) / (n + 1 : ℚ)

end

end A056555.P15097371638350189255

namespace A056555

/-- `A053166(n+1)^4/(n+1)` -/
def P15097371638350189255.Spec : Prop :=
  ∀ n, P15097371638350189255.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P674165516701983114

`(n+1)*((n+1)/A000190(n+1)²)²`
-/

namespace A056555.P674165516701983114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / (A000190 (n + 1) ^ 2 : ℚ)) ^ 2

end

end A056555.P674165516701983114

namespace A056555

/-- `(n+1)*((n+1)/A000190(n+1)²)²` -/
def P674165516701983114.Spec : Prop :=
  ∀ n, P674165516701983114.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P5990669437164362090

`A000583(A053166(n+1))/(n+1)`
-/

namespace A056555.P5990669437164362090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 (A053166 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A056555.P5990669437164362090

namespace A056555

/-- `A000583(A053166(n+1))/(n+1)` -/
def P5990669437164362090.Spec : Prop :=
  ∀ n, P5990669437164362090.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P12577492865287864881

`A019554(A019554(n+1))²²/(n+1)`
-/

namespace A056555.P12577492865287864881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A019554 (A019554 (n + 1)).toNat ^ 2) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A056555.P12577492865287864881

namespace A056555

/-- `A019554(A019554(n+1))²²/(n+1)` -/
def P12577492865287864881.Spec : Prop :=
  ∀ n, P12577492865287864881.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P6776432539659284238

`A053166(n+1)²²/A000027(n+1)`
-/

namespace A056555.P6776432539659284238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053166 (n + 1) ^ 2) ^ 2 : ℚ) / (A000027 (n + 1) : ℚ)

end

end A056555.P6776432539659284238

namespace A056555

/-- `A053166(n+1)²²/A000027(n+1)` -/
def P6776432539659284238.Spec : Prop :=
  ∀ n, P6776432539659284238.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P7005433443081230484

`A056554(n+1)²²/A053165(n+1)`
-/

namespace A056555.P7005433443081230484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A056554 (n + 1) ^ 2) ^ 2 : ℚ) / (A053165 (n + 1) : ℚ)

end

end A056555.P7005433443081230484

namespace A056555

/-- `A056554(n+1)²²/A053165(n+1)` -/
def P7005433443081230484.Spec : Prop :=
  ∀ n, P7005433443081230484.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P5831984099930661346

`A007913(n+1)*A055491(A019554(n+1))`
-/

namespace A056555.P5831984099930661346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A055491 (A019554 (n + 1)).toNat

end

end A056555.P5831984099930661346

namespace A056555

/-- `A007913(n+1)*A055491(A019554(n+1))` -/
def P5831984099930661346.Spec : Prop :=
  ∀ n, P5831984099930661346.a n = A056555 (n + 1)

end A056555

/-! ## A056555.P1359387880258567219

`A048798(A053165(n+1))*A056554(n+1)`
-/

namespace A056555.P1359387880258567219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A053165 (n + 1)).toNat * A056554 (n + 1)

end

end A056555.P1359387880258567219

namespace A056555

/-- `A048798(A053165(n+1))*A056554(n+1)` -/
def P1359387880258567219.Spec : Prop :=
  ∀ n, P1359387880258567219.a n = A056555 (n + 1)

end A056555

/-! ## A056555.P12183606829447354433

`A007913(n+1)*A048798(A000190(n+1)*A007913(n+1))`
-/

namespace A056555.P12183606829447354433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A048798 (A000190 (n + 1) * A007913 (n + 1)).toNat

end

end A056555.P12183606829447354433

namespace A056555

/-- `A007913(n+1)*A048798(A000190(n+1)*A007913(n+1))` -/
def P12183606829447354433.Spec : Prop :=
  ∀ n, P12183606829447354433.a n = A056555 (n + 1)

end A056555

/-! ## A056555.P14103403554746367639

`A007913(n+1)*A055491(A000188(n+1)*A007913(n+1))`
-/

namespace A056555.P14103403554746367639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A055491 (A000188 (n + 1) * A007913 (n + 1)).toNat

end

end A056555.P14103403554746367639

namespace A056555

/-- `A007913(n+1)*A055491(A000188(n+1)*A007913(n+1))` -/
def P14103403554746367639.Spec : Prop :=
  ∀ n, P14103403554746367639.a n = A056555 (n + 1)

end A056555

/-! ## A056555.P11757610027045820400

`A053149(A000190(n+1)*A007913(n+1))/A000190(n+1)`
-/

namespace A056555.P11757610027045820400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (A000190 (n + 1) * A007913 (n + 1)).toNat : ℚ) / (A000190 (n + 1) : ℚ)

end

end A056555.P11757610027045820400

namespace A056555

/-- `A053149(A000190(n+1)*A007913(n+1))/A000190(n+1)` -/
def P11757610027045820400.Spec : Prop :=
  ∀ n, P11757610027045820400.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P13103711219801406206

`A007913(A355264(n+1))²*A007913(n+1)`
-/

namespace A056555.P13103711219801406206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A355264 (n + 1)).toNat ^ 2 * A007913 (n + 1)

end

end A056555.P13103711219801406206

namespace A056555

/-- `A007913(A355264(n+1))²*A007913(n+1)` -/
def P13103711219801406206.Spec : Prop :=
  ∀ n, P13103711219801406206.a n = A056555 (n + 1)

end A056555

/-! ## A056555.P7770261128217299495

`A053166(n+1)²²/A268385(A268385(n+1))`
-/

namespace A056555.P7770261128217299495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053166 (n + 1) ^ 2) ^ 2 : ℚ) / (A268385 (A268385 (n + 1)).toNat : ℚ)

end

end A056555.P7770261128217299495

namespace A056555

/-- `A053166(n+1)²²/A268385(A268385(n+1))` -/
def P7770261128217299495.Spec : Prop :=
  ∀ n, P7770261128217299495.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P8553028304618527903

`A053166(n+1)²²/A011262(A011262(n+1))`
-/

namespace A056555.P8553028304618527903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053166 (n + 1) ^ 2) ^ 2 : ℚ) / (A011262 (A011262 (n + 1)).toNat : ℚ)

end

end A056555.P8553028304618527903

namespace A056555

/-- `A053166(n+1)²²/A011262(A011262(n+1))` -/
def P8553028304618527903.Spec : Prop :=
  ∀ n, P8553028304618527903.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P21634644722026042

`A007948(A053165(n+1)²)²/A053165(n+1)`
-/

namespace A056555.P21634644722026042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (A053165 (n + 1) ^ 2).toNat ^ 2 : ℚ) / (A053165 (n + 1) : ℚ)

end

end A056555.P21634644722026042

namespace A056555

/-- `A007948(A053165(n+1)²)²/A053165(n+1)` -/
def P21634644722026042.Spec : Prop :=
  ∀ n, P21634644722026042.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P2814847455507859622

`A053166(n+1)²²/A003557(A064549(n+1))`
-/

namespace A056555.P2814847455507859622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053166 (n + 1) ^ 2) ^ 2 : ℚ) / (A003557 (A064549 (n + 1)).toNat : ℚ)

end

end A056555.P2814847455507859622

namespace A056555

/-- `A053166(n+1)²²/A003557(A064549(n+1))` -/
def P2814847455507859622.Spec : Prop :=
  ∀ n, P2814847455507859622.a n = (A056555 (n + 1) : ℚ)

end A056555

/-! ## A056555.P16571043402342377130

`A019554(A055491(n+1))*A055491(A019554(n+1))`
-/

namespace A056555.P16571043402342377130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A055491 (n + 1)).toNat * A055491 (A019554 (n + 1)).toNat

end

end A056555.P16571043402342377130

namespace A056555

/-- `A019554(A055491(n+1))*A055491(A019554(n+1))` -/
def P16571043402342377130.Spec : Prop :=
  ∀ n, P16571043402342377130.a n = A056555 (n + 1)

end A056555

/-! ## A056555.P15269632099857812894

`A053149(A053165(n+1))/A053150(A053165(n+1)²)`
-/

namespace A056555.P15269632099857812894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (A053165 (n + 1)).toNat : ℚ) / (A053150 (A053165 (n + 1) ^ 2).toNat : ℚ)

end

end A056555.P15269632099857812894

namespace A056555

/-- `A053149(A053165(n+1))/A053150(A053165(n+1)²)` -/
def P15269632099857812894.Spec : Prop :=
  ∀ n, P15269632099857812894.a n = (A056555 (n + 1) : ℚ)

end A056555

/-!
# A056556: First tetrahedral coordinate; repeat m (m+1)*(m+2)/2 times.

The programs for A056556, the canonical program `A056556.P11335361665985267770` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056556 has offset 0).

The definition of A056556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056556.P15963244504880517717

`∑[char[C(n, 3)]]-1`
-/

namespace A056556.P15963244504880517717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A056556.P15963244504880517717

namespace A056556

/-- `∑[char[C(n, 3)]]-1` -/
def P15963244504880517717.Spec : Prop :=
  ∀ n, P15963244504880517717.a n = A056556 n

end A056556

/-! ## A056556.P10556850194492446614

`∑[char[C(n+3, 3)]]`
-/

namespace A056556.P10556850194492446614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056556.P10556850194492446614

namespace A056556

/-- `∑[char[C(n+3, 3)]]` -/
def P10556850194492446614.Spec : Prop :=
  ∀ n, (P10556850194492446614.a n : ℤ) = A056556 n

end A056556

/-! ## A056556.P14332434676979791645

`∑[char[∑[∑[n+1]]]]`
-/

namespace A056556.P14332434676979791645
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056556.P14332434676979791645

namespace A056556

/-- `∑[char[∑[∑[n+1]]]]` -/
def P14332434676979791645.Spec : Prop :=
  ∀ n, (P14332434676979791645.a n : ℤ) = A056556 n

end A056556

/-! ## A056556.P6280888730338911458

`char[C(n, 3)]+a(n-1)` with `a(0)=0`
-/

namespace A056556.P6280888730338911458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A056556.P6280888730338911458

namespace A056556

/-- `char[C(n, 3)]+a(n-1)` -/
def P6280888730338911458.Spec : Prop :=
  ∀ n, (P6280888730338911458.a n : ℤ) = A056556 n

end A056556

/-! ## A056556.P6579468002143791317

`comp[∑[∑[n]]+n]%(n+1)`
-/

namespace A056556.P6579468002143791317
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A056556.P6579468002143791317

namespace A056556

/-- `comp[∑[∑[n]]+n]%(n+1)` -/
def P6579468002143791317.Spec : Prop :=
  ∀ n, (P6579468002143791317.a n : ℤ) = A056556 n

end A056556

/-! ## A056556.P1740315711245802859

`comp[C(n+2, 3)+n]-(n+1)`
-/

namespace A056556.P1740315711245802859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A056556.P1740315711245802859

namespace A056556

/-- `comp[C(n+2, 3)+n]-(n+1)` -/
def P1740315711245802859.Spec : Prop :=
  ∀ n, P1740315711245802859.a n = A056556 n

end A056556

/-! ## A056556.P4214923708814712009

`A194847(n)-2`
-/

namespace A056556.P4214923708814712009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 n - 2

end

end A056556.P4214923708814712009

namespace A056556

/-- `A194847(n)-2` -/
def P4214923708814712009.Spec : Prop :=
  ∀ n, P4214923708814712009.a n = A056556 n

end A056556

/-! ## A056556.P11335361665985267770

`∑[A023533(n)]-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056556

/-- `∑[A023533(n)]-1` -/
def P11335361665985267770.Spec : Prop :=
  ∀ n, P11335361665985267770.a n = A056556 n

theorem P11335361665985267770.correct : P11335361665985267770.Spec := by
  intro n
  simp only [A056556]

end A056556

/-! ## A056556.P10213212630292142281

`n-∑[A014306(n)]`
-/

namespace A056556.P10213212630292142281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056556.P10213212630292142281

namespace A056556

/-- `n-∑[A014306(n)]` -/
def P10213212630292142281.Spec : Prop :=
  ∀ n, P10213212630292142281.a n = A056556 n

end A056556

/-! ## A056556.P13074729050996443551

`A360010(n+1)-1`
-/

namespace A056556.P13074729050996443551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (n + 1) - 1

end

end A056556.P13074729050996443551

namespace A056556

/-- `A360010(n+1)-1` -/
def P13074729050996443551.Spec : Prop :=
  ∀ n, P13074729050996443551.a n = A056556 n

end A056556

/-! ## A056556.P16466208264618633487

`∑[char[A000292(n)]]-1`
-/

namespace A056556.P16466208264618633487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A056556.P16466208264618633487

namespace A056556

/-- `∑[char[A000292(n)]]-1` -/
def P16466208264618633487.Spec : Prop :=
  ∀ n, P16466208264618633487.a n = A056556 n

end A056556

/-! ## A056556.P18293207316475953995

`∑[char[∑[A000217(n)]]]-1`
-/

namespace A056556.P18293207316475953995
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A056556.P18293207316475953995

namespace A056556

/-- `∑[char[∑[A000217(n)]]]-1` -/
def P18293207316475953995.Spec : Prop :=
  ∀ n, P18293207316475953995.a n = A056556 n

end A056556

/-! ## A056556.P16364428135915741924

`floor(log2(A014311(n+1)))-2`
-/

namespace A056556.P16364428135915741924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A014311 (n + 1)).toNat : ℤ) - 2

end

end A056556.P16364428135915741924

namespace A056556

/-- `floor(log2(A014311(n+1)))-2` -/
def P16364428135915741924.Spec : Prop :=
  ∀ n, P16364428135915741924.a n = A056556 n

end A056556

/-! ## A056556.P356134954825238111

`floor(log2(A043570(n+1)))-2`
-/

namespace A056556.P356134954825238111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A043570 (n + 1)).toNat : ℤ) - 2

end

end A056556.P356134954825238111

namespace A056556

/-- `floor(log2(A043570(n+1)))-2` -/
def P356134954825238111.Spec : Prop :=
  ∀ n, P356134954825238111.a n = A056556 n

end A056556

/-! ## A056556.P6029040637381660915

`ceil(log2(A151757(n+1)))-2`
-/

namespace A056556.P6029040637381660915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A151757 (n + 1) : ℝ)⌉ - 2

end

end A056556.P6029040637381660915

namespace A056556

/-- `ceil(log2(A151757(n+1)))-2` -/
def P6029040637381660915.Spec : Prop :=
  ∀ n, P6029040637381660915.a n = A056556 n

end A056556

/-! ## A056556.P13938190373570955811

`A023444(A194847(n))`
-/

namespace A056556.P13938190373570955811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A194847 n).toNat

end

end A056556.P13938190373570955811

namespace A056556

/-- `A023444(A194847(n))` -/
def P13938190373570955811.Spec : Prop :=
  ∀ n, P13938190373570955811.a n = A056556 n

end A056556

/-! ## A056556.P14520737040093788708

`A052146(A274079(n+1))`
-/

namespace A056556.P14520737040093788708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A274079 (n + 1)).toNat

end

end A056556.P14520737040093788708

namespace A056556

/-- `A052146(A274079(n+1))` -/
def P14520737040093788708.Spec : Prop :=
  ∀ n, P14520737040093788708.a n = A056556 n

end A056556

/-! ## A056556.P7283246579849243901

`A056559(n)+A056557(n)`
-/

namespace A056556.P7283246579849243901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n + A056557 n

end

end A056556.P7283246579849243901

namespace A056556

/-- `A056559(n)+A056557(n)` -/
def P7283246579849243901.Spec : Prop :=
  ∀ n, P7283246579849243901.a n = A056556 n

end A056556

/-! ## A056556.P12025416956032764789

`A056559(n-A332663(n))`
-/

namespace A056556.P12025416956032764789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 ((n : ℤ) - A332663 n).toNat

end

end A056556.P12025416956032764789

namespace A056556

/-- `A056559(n-A332663(n))` -/
def P12025416956032764789.Spec : Prop :=
  ∀ n, P12025416956032764789.a n = A056556 n

end A056556

/-! ## A056556.P10537220647545551328

`A023443(∑[char[A000292(n)]])`
-/

namespace A056556.P10537220647545551328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056556.P10537220647545551328

namespace A056556

/-- `A023443(∑[char[A000292(n)]])` -/
def P10537220647545551328.Spec : Prop :=
  ∀ n, P10537220647545551328.a n = A056556 n

end A056556

/-!
# A056557: Second tetrahedral coordinate.

The programs for A056557, the canonical program `A056557.P17486820174551382648` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056557 has offset 0).

The definition of A056557 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056557.P17486820174551382648

`A003056(n-A000292(A056556(n)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056557

/-- `A003056(n-A000292(A056556(n)))` -/
def P17486820174551382648.Spec : Prop :=
  ∀ n, P17486820174551382648.a n = A056557 n

theorem P17486820174551382648.correct : P17486820174551382648.Spec := by
  intro n
  simp only [A056557]

end A056557

/-! ## A056557.P16302088729214803971

`A194848(n)-1`
-/

namespace A056557.P16302088729214803971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 n - 1

end

end A056557.P16302088729214803971

namespace A056557

/-- `A194848(n)-1` -/
def P16302088729214803971.Spec : Prop :=
  ∀ n, P16302088729214803971.a n = A056557 n

end A056557

/-! ## A056557.P5075643877608761482

`A003056(A332663(n))`
-/

namespace A056557.P5075643877608761482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A332663 n).toNat

end

end A056557.P5075643877608761482

namespace A056557

/-- `A003056(A332663(n))` -/
def P5075643877608761482.Spec : Prop :=
  ∀ n, P5075643877608761482.a n = A056557 n

end A056557

/-! ## A056557.P1176802575171510456

`A056558(A056560(n)+n)`
-/

namespace A056557.P1176802575171510456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (A056560 n + (n : ℤ)).toNat

end

end A056557.P1176802575171510456

namespace A056557

/-- `A056558(A056560(n)+n)` -/
def P1176802575171510456.Spec : Prop :=
  ∀ n, P1176802575171510456.a n = A056557 n

end A056557

/-! ## A056557.P17175001015248860378

`A056560(n-A056558(n))`
-/

namespace A056557.P17175001015248860378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 ((n : ℤ) - A056558 n).toNat

end

end A056557.P17175001015248860378

namespace A056557

/-- `A056560(n-A056558(n))` -/
def P17175001015248860378.Spec : Prop :=
  ∀ n, P17175001015248860378.a n = A056557 n

end A056557

/-! ## A056557.P18103493076531199664

`A056556(n)-A056559(n)`
-/

namespace A056557.P18103493076531199664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A056559 n

end

end A056557.P18103493076531199664

namespace A056557

/-- `A056556(n)-A056559(n)` -/
def P18103493076531199664.Spec : Prop :=
  ∀ n, P18103493076531199664.a n = A056557 n

end A056557

/-! ## A056557.P13017929732556644122

`A002260(A123579(n+1))-1`
-/

namespace A056557.P13017929732556644122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A123579 (n + 1)).toNat - 1

end

end A056557.P13017929732556644122

namespace A056557

/-- `A002260(A123579(n+1))-1` -/
def P13017929732556644122.Spec : Prop :=
  ∀ n, P13017929732556644122.a n = A056557 n

end A056557

/-! ## A056557.P2439396582660984816

`A194847(n)-(A056559(n)+2)`
-/

namespace A056557.P2439396582660984816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 n - (A056559 n + 2)

end

end A056557.P2439396582660984816

namespace A056557

/-- `A194847(n)-(A056559(n)+2)` -/
def P2439396582660984816.Spec : Prop :=
  ∀ n, P2439396582660984816.a n = A056557 n

end A056557

/-! ## A056557.P17037136343161756031

`A002262(∑[char[A014370(n+1)]])`
-/

namespace A056557.P17037136343161756031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056557.P17037136343161756031

namespace A056557

/-- `A002262(∑[char[A014370(n+1)]])` -/
def P17037136343161756031.Spec : Prop :=
  ∀ n, P17037136343161756031.a n = A056557 n

end A056557

/-! ## A056557.P17799670068459221646

`∑[A023533(n)]-(A056559(n)+1)`
-/

namespace A056557.P17799670068459221646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A056559 n + 1)

end

end A056557.P17799670068459221646

namespace A056557

/-- `∑[A023533(n)]-(A056559(n)+1)` -/
def P17799670068459221646.Spec : Prop :=
  ∀ n, P17799670068459221646.a n = A056557 n

end A056557

/-! ## A056557.P6844813343473444690

`A002260(∑[char[A111138(n+1)]])-1`
-/

namespace A056557.P6844813343473444690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A056557.P6844813343473444690

namespace A056557

/-- `A002260(∑[char[A111138(n+1)]])-1` -/
def P6844813343473444690.Spec : Prop :=
  ∀ n, P6844813343473444690.a n = A056557 n

end A056557

/-! ## A056557.P3842562116822265586

`A070770(n)-(A056558(n)+A056556(n))`
-/

namespace A056557.P3842562116822265586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 n - (A056558 n + A056556 n)

end

end A056557.P3842562116822265586

namespace A056557

/-- `A070770(n)-(A056558(n)+A056556(n))` -/
def P3842562116822265586.Spec : Prop :=
  ∀ n, P3842562116822265586.a n = A056557 n

end A056557

/-! ## A056557.P10544136103948385862

`A070770(n-A056558(n))-A056556(n)`
-/

namespace A056557.P10544136103948385862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 ((n : ℤ) - A056558 n).toNat - A056556 n

end

end A056557.P10544136103948385862

namespace A056557

/-- `A070770(n-A056558(n))-A056556(n)` -/
def P10544136103948385862.Spec : Prop :=
  ∀ n, P10544136103948385862.a n = A056557 n

end A056557

/-! ## A056557.P302533565761525312

`A123575(n+1)+A056560(n)-A123575(n)`
-/

namespace A056557.P302533565761525312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 (n + 1) + (A056560 n - A123575 n)

end

end A056557.P302533565761525312

namespace A056557

/-- `A123575(n+1)+A056560(n)-A123575(n)` -/
def P302533565761525312.Spec : Prop :=
  ∀ n, P302533565761525312.a n = A056557 n

end A056557

/-! ## A056557.P59329880946308425

`A056558(A274079(n+1)-1+n)`
-/

namespace A056557.P59329880946308425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (A274079 (n + 1) - 1 + (n : ℤ)).toNat

end

end A056557.P59329880946308425

namespace A056557

/-- `A056558(A274079(n+1)-1+n)` -/
def P59329880946308425.Spec : Prop :=
  ∀ n, P59329880946308425.a n = A056557 n

end A056557

/-! ## A056557.P12508278351322159404

`A003056(A332662(2*n))`
-/

namespace A056557.P12508278351322159404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A332662 (2 * n)).toNat

end

end A056557.P12508278351322159404

namespace A056557

/-- `A003056(A332662(2*n))` -/
def P12508278351322159404.Spec : Prop :=
  ∀ n, P12508278351322159404.a n = A056557 n

end A056557

/-! ## A056557.P7937085700406653537

`A056556(n)-A332662(2*n+1)`
-/

namespace A056557.P7937085700406653537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A332662 (2 * n + 1)

end

end A056557.P7937085700406653537

namespace A056557

/-- `A056556(n)-A332662(2*n+1)` -/
def P7937085700406653537.Spec : Prop :=
  ∀ n, P7937085700406653537.a n = A056557 n

end A056557

/-! ## A056557.P6235962042454071742

`A331195(3*n+1)`
-/

namespace A056557.P6235962042454071742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (3 * n + 1)

end

end A056557.P6235962042454071742

namespace A056557

/-- `A331195(3*n+1)` -/
def P6235962042454071742.Spec : Prop :=
  ∀ n, P6235962042454071742.a n = A056557 n

end A056557

/-! ## A056557.P15754103195740233267

`A200748(n)%A194848(n)`
-/

namespace A056557.P15754103195740233267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A194848 n)

end

end A056557.P15754103195740233267

namespace A056557

/-- `A200748(n)%A194848(n)` -/
def P15754103195740233267.Spec : Prop :=
  ∀ n, P15754103195740233267.a n = A056557 n

end A056557

/-!
# A056558: Third tetrahedral coordinate, i.e., tetrahedron with T(t,n,k)=k; succession of growing finite triangles with increasing values towards bottom right.

The programs for A056558, the canonical program `A056558.P5101547692146490577` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056558 has offset 0).

The definition of A056558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056558.P2783561944069786764

`A056557(n)-A056560(n)`
-/

namespace A056558.P2783561944069786764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n - A056560 n

end

end A056558.P2783561944069786764

namespace A056558

/-- `A056557(n)-A056560(n)` -/
def P2783561944069786764.Spec : Prop :=
  ∀ n, P2783561944069786764.a n = A056558 n

end A056558

/-! ## A056558.P8423739912733044440

`val(A014311(n+1), 2)`
-/

namespace A056558.P8423739912733044440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014311 (n + 1)).toNat 2

end

end A056558.P8423739912733044440

namespace A056558

/-- `val(A014311(n+1), 2)` -/
def P8423739912733044440.Spec : Prop :=
  ∀ n, (P8423739912733044440.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P4770569942653181353

`val(A038445(n+1), 2)`
-/

namespace A056558.P4770569942653181353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038445 (n + 1)).toNat 2

end

end A056558.P4770569942653181353

namespace A056558

/-- `val(A038445(n+1), 2)` -/
def P4770569942653181353.Spec : Prop :=
  ∀ n, (P4770569942653181353.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P7958012800217089770

`val(A038479(n+1), 2)`
-/

namespace A056558.P7958012800217089770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038479 (n + 1)).toNat 2

end

end A056558.P7958012800217089770

namespace A056558

/-- `val(A038479(n+1), 2)` -/
def P7958012800217089770.Spec : Prop :=
  ∀ n, (P7958012800217089770.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P5101547692146490577

`val(A173589(n+1), 2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056558

/-- `val(A173589(n+1), 2)` -/
def P5101547692146490577.Spec : Prop :=
  ∀ n, (P5101547692146490577.a n : ℤ) = A056558 n

theorem P5101547692146490577.correct : P5101547692146490577.Spec := by
  intro n
  simp only [A056558]

end A056558

/-! ## A056558.P645015645980148438

`val(A038465(n+1), 3)`
-/

namespace A056558.P645015645980148438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038465 (n + 1)).toNat 3

end

end A056558.P645015645980148438

namespace A056558

/-- `val(A038465(n+1), 3)` -/
def P645015645980148438.Spec : Prop :=
  ∀ n, (P645015645980148438.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P8666657560933323086

`val(A038493(n+1), 3)`
-/

namespace A056558.P8666657560933323086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038493 (n + 1)).toNat 3

end

end A056558.P8666657560933323086

namespace A056558

/-- `val(A038493(n+1), 3)` -/
def P8666657560933323086.Spec : Prop :=
  ∀ n, (P8666657560933323086.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P15002456847813876074

`val(A038471(n+1), 4)`
-/

namespace A056558.P15002456847813876074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038471 (n + 1)).toNat 4

end

end A056558.P15002456847813876074

namespace A056558

/-- `val(A038471(n+1), 4)` -/
def P15002456847813876074.Spec : Prop :=
  ∀ n, (P15002456847813876074.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P3279186175155551868

`val(A038475(n+1), 5)`
-/

namespace A056558.P3279186175155551868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038475 (n + 1)).toNat 5

end

end A056558.P3279186175155551868

namespace A056558

/-- `val(A038475(n+1), 5)` -/
def P3279186175155551868.Spec : Prop :=
  ∀ n, (P3279186175155551868.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P12172488530841592125

`val(A052217(n+1), 5)`
-/

namespace A056558.P12172488530841592125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052217 (n + 1)).toNat 5

end

end A056558.P12172488530841592125

namespace A056558

/-- `val(A052217(n+1), 5)` -/
def P12172488530841592125.Spec : Prop :=
  ∀ n, (P12172488530841592125.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P1435668317975021075

`val(A088405(n+1), 5)`
-/

namespace A056558.P1435668317975021075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088405 (n + 1)).toNat 5

end

end A056558.P1435668317975021075

namespace A056558

/-- `val(A088405(n+1), 5)` -/
def P1435668317975021075.Spec : Prop :=
  ∀ n, (P1435668317975021075.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P10132660172861737656

`val(A038482(n+1), 7)`
-/

namespace A056558.P10132660172861737656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038482 (n + 1)).toNat 7

end

end A056558.P10132660172861737656

namespace A056558

/-- `val(A038482(n+1), 7)` -/
def P10132660172861737656.Spec : Prop :=
  ∀ n, (P10132660172861737656.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P18421905672023097098

`val(A038485(n+1), 8)`
-/

namespace A056558.P18421905672023097098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038485 (n + 1)).toNat 8

end

end A056558.P18421905672023097098

namespace A056558

/-- `val(A038485(n+1), 8)` -/
def P18421905672023097098.Spec : Prop :=
  ∀ n, (P18421905672023097098.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P6004524821198910648

`val(A038488(n+1), 9)`
-/

namespace A056558.P6004524821198910648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038488 (n + 1)).toNat 9

end

end A056558.P6004524821198910648

namespace A056558

/-- `val(A038488(n+1), 9)` -/
def P6004524821198910648.Spec : Prop :=
  ∀ n, (P6004524821198910648.a n : ℤ) = A056558 n

end A056558

/-! ## A056558.P18441565824536458446

`A002262(A332663(n))`
-/

namespace A056558.P18441565824536458446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A332663 n).toNat

end

end A056558.P18441565824536458446

namespace A056558

/-- `A002262(A332663(n))` -/
def P18441565824536458446.Spec : Prop :=
  ∀ n, P18441565824536458446.a n = A056558 n

end A056558

/-! ## A056558.P7995547853680619482

`A173964(n+1)-(A056559(n)+1)`
-/

namespace A056558.P7995547853680619482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173964 (n + 1) - (A056559 n + 1)

end

end A056558.P7995547853680619482

namespace A056558

/-- `A173964(n+1)-(A056559(n)+1)` -/
def P7995547853680619482.Spec : Prop :=
  ∀ n, P7995547853680619482.a n = A056558 n

end A056558

/-! ## A056558.P11641222237863370988

`A002262(n-A000292(A056556(n)))`
-/

namespace A056558.P11641222237863370988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - A000292 (A056556 n).toNat).toNat

end

end A056558.P11641222237863370988

namespace A056558

/-- `A002262(n-A000292(A056556(n)))` -/
def P11641222237863370988.Spec : Prop :=
  ∀ n, P11641222237863370988.a n = A056558 n

end A056558

/-! ## A056558.P13174810220832445421

`A056556(n)-(A056560(n)+A056559(n))`
-/

namespace A056558.P13174810220832445421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - (A056560 n + A056559 n)

end

end A056558.P13174810220832445421

namespace A056558

/-- `A056556(n)-(A056560(n)+A056559(n))` -/
def P13174810220832445421.Spec : Prop :=
  ∀ n, P13174810220832445421.a n = A056558 n

end A056558

/-! ## A056558.P9258475999876751484

`A070770(n)-(A056557(n)+A056556(n))`
-/

namespace A056558.P9258475999876751484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 n - (A056557 n + A056556 n)

end

end A056558.P9258475999876751484

namespace A056558

/-- `A070770(n)-(A056557(n)+A056556(n))` -/
def P9258475999876751484.Spec : Prop :=
  ∀ n, P9258475999876751484.a n = A056558 n

end A056558

/-! ## A056558.P10526757043776382840

`Δ[A123575(n)]`
-/

namespace A056558.P10526757043776382840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056558.P10526757043776382840

namespace A056558

/-- `Δ[A123575(n)]` -/
def P10526757043776382840.Spec : Prop :=
  ∀ n, P10526757043776382840.a n = A056558 n

end A056558

/-!
# A056559: Tetrahedron with T(t,n,k) = t - n; succession of growing finite triangles with declining values per row.

The programs for A056559, the canonical program `A056559.P3524647608024188451` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056559 has offset 0).

The definition of A056559 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056559.P3524647608024188451

`A056556(n)-A056557(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056559

/-- `A056556(n)-A056557(n)` -/
def P3524647608024188451.Spec : Prop :=
  ∀ n, P3524647608024188451.a n = A056559 n

theorem P3524647608024188451.correct : P3524647608024188451.Spec := by
  intro n
  simp only [A056559]

end A056559

/-! ## A056559.P6958138443056809529

`A004736(A123579(n+1))-1`
-/

namespace A056559.P6958138443056809529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A123579 (n + 1)).toNat - 1

end

end A056559.P6958138443056809529

namespace A056559

/-- `A004736(A123579(n+1))-1` -/
def P6958138443056809529.Spec : Prop :=
  ∀ n, P6958138443056809529.a n = A056559 n

end A056559

/-! ## A056559.P3978539874899394054

`A004736(A273824(n+1))-1`
-/

namespace A056559.P3978539874899394054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A273824 (n + 1)).toNat - 1

end

end A056559.P3978539874899394054

namespace A056559

/-- `A004736(A273824(n+1))-1` -/
def P3978539874899394054.Spec : Prop :=
  ∀ n, P3978539874899394054.a n = A056559 n

end A056559

/-! ## A056559.P15813408314900774401

`A025581(A273824(n+1)-1)`
-/

namespace A056559.P15813408314900774401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A273824 (n + 1) - 1).toNat

end

end A056559.P15813408314900774401

namespace A056559

/-- `A025581(A273824(n+1)-1)` -/
def P15813408314900774401.Spec : Prop :=
  ∀ n, P15813408314900774401.a n = A056559 n

end A056559

/-! ## A056559.P1851288154569196699

`A057554(2*A273824(n+1))`
-/

namespace A056559.P1851288154569196699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * A273824 (n + 1)).toNat

end

end A056559.P1851288154569196699

namespace A056559

/-- `A057554(2*A273824(n+1))` -/
def P1851288154569196699.Spec : Prop :=
  ∀ n, P1851288154569196699.a n = A056559 n

end A056559

/-! ## A056559.P11500024025950613594

`A194847(n)-(A194848(n)+1)`
-/

namespace A056559.P11500024025950613594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 n - (A194848 n + 1)

end

end A056559.P11500024025950613594

namespace A056559

/-- `A194847(n)-(A194848(n)+1)` -/
def P11500024025950613594.Spec : Prop :=
  ∀ n, P11500024025950613594.a n = A056559 n

end A056559

/-! ## A056559.P1797614261810811438

`A360010(n+1)-A194848(n)`
-/

namespace A056559.P1797614261810811438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (n + 1) - A194848 n

end

end A056559.P1797614261810811438

namespace A056559

/-- `A360010(n+1)-A194848(n)` -/
def P1797614261810811438.Spec : Prop :=
  ∀ n, P1797614261810811438.a n = A056559 n

end A056559

/-! ## A056559.P12778915239900729780

`A173964(n+1)-(A056558(n)+1)`
-/

namespace A056559.P12778915239900729780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173964 (n + 1) - (A056558 n + 1)

end

end A056559.P12778915239900729780

namespace A056559

/-- `A173964(n+1)-(A056558(n)+1)` -/
def P12778915239900729780.Spec : Prop :=
  ∀ n, P12778915239900729780.a n = A056559 n

end A056559

/-! ## A056559.P1814340384695823284

`A056556(n)-A056558(A056560(n)+n)`
-/

namespace A056559.P1814340384695823284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A056558 (A056560 n + (n : ℤ)).toNat

end

end A056559.P1814340384695823284

namespace A056559

/-- `A056556(n)-A056558(A056560(n)+n)` -/
def P1814340384695823284.Spec : Prop :=
  ∀ n, P1814340384695823284.a n = A056559 n

end A056559

/-! ## A056559.P11469237910906888457

`A056556(n)-A056560(n-A056558(n))`
-/

namespace A056559.P11469237910906888457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A056560 ((n : ℤ) - A056558 n).toNat

end

end A056559.P11469237910906888457

namespace A056559

/-- `A056556(n)-A056560(n-A056558(n))` -/
def P11469237910906888457.Spec : Prop :=
  ∀ n, P11469237910906888457.a n = A056559 n

end A056559

/-! ## A056559.P11372398663827590944

`A025581(A273824(A274079(n+1)+n))`
-/

namespace A056559.P11372398663827590944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A273824 (A274079 (n + 1) + (n : ℤ)).toNat).toNat

end

end A056559.P11372398663827590944

namespace A056559

/-- `A025581(A273824(A274079(n+1)+n))` -/
def P11372398663827590944.Spec : Prop :=
  ∀ n, P11372398663827590944.a n = A056559 n

end A056559

/-! ## A056559.P15706302496019049999

`A025581(A274079(A274079(n+1)+n+1))`
-/

namespace A056559.P15706302496019049999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A274079 (A274079 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A056559.P15706302496019049999

namespace A056559

/-- `A025581(A274079(A274079(n+1)+n+1))` -/
def P15706302496019049999.Spec : Prop :=
  ∀ n, P15706302496019049999.a n = A056559 n

end A056559

/-! ## A056559.P5715818026183647657

`A332662(Δ[n²])`
-/

namespace A056559.P5715818026183647657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A056559.P5715818026183647657

namespace A056559

/-- `A332662(Δ[n²])` -/
def P5715818026183647657.Spec : Prop :=
  ∀ n, P5715818026183647657.a n = A056559 n

end A056559

/-! ## A056559.P18390412787042718344

`filter[A332662(2*n+1), A102609(#)]`
-/

namespace A056559.P18390412787042718344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A056559.P18390412787042718344

namespace A056559

/-- `filter[A332662(2*n+1), A102609(#)]` -/
def P18390412787042718344.Spec : Prop :=
  ∀ n, P18390412787042718344.a n = A056559 n

end A056559

/-! ## A056559.P10603143986929060912

`A332663(A332699(A332662(2*n+1)))`
-/

namespace A056559.P10603143986929060912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332663 (A332699 (A332662 (2 * n + 1)).toNat).toNat

end

end A056559.P10603143986929060912

namespace A056559

/-- `A332663(A332699(A332662(2*n+1)))` -/
def P10603143986929060912.Spec : Prop :=
  ∀ n, P10603143986929060912.a n = A056559 n

end A056559

/-! ## A056559.P8812706733325886164

`A290255(A014311(n+1))`
-/

namespace A056559.P8812706733325886164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A014311 (n + 1)).toNat

end

end A056559.P8812706733325886164

namespace A056559

/-- `A290255(A014311(n+1))` -/
def P8812706733325886164.Spec : Prop :=
  ∀ n, P8812706733325886164.a n = A056559 n

end A056559

/-! ## A056559.P18043373242024873409

`A290255(eq[2, A048881(n)])`
-/

namespace A056559.P18043373242024873409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056559.P18043373242024873409

namespace A056559

/-- `A290255(eq[2, A048881(n)])` -/
def P18043373242024873409.Spec : Prop :=
  ∀ n, P18043373242024873409.a n = A056559 n

end A056559

/-! ## A056559.P14807448098252740050

`A290255(eq[3, A000120(n)])`
-/

namespace A056559.P14807448098252740050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056559.P14807448098252740050

namespace A056559

/-- `A290255(eq[3, A000120(n)])` -/
def P14807448098252740050.Spec : Prop :=
  ∀ n, P14807448098252740050.a n = A056559 n

end A056559

/-! ## A056559.P922823648842651185

`A290255(eq[4, A048896(n)])`
-/

namespace A056559.P922823648842651185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056559.P922823648842651185

namespace A056559

/-- `A290255(eq[4, A048896(n)])` -/
def P922823648842651185.Spec : Prop :=
  ∀ n, P922823648842651185.a n = A056559 n

end A056559

/-! ## A056559.P11637806109931110688

`A279209(A173589(n+1))-1`
-/

namespace A056559.P11637806109931110688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A173589 (n + 1)).toNat - 1

end

end A056559.P11637806109931110688

namespace A056559

/-- `A279209(A173589(n+1))-1` -/
def P11637806109931110688.Spec : Prop :=
  ∀ n, P11637806109931110688.a n = A056559 n

end A056559

/-!
# A056560: Tetrahedron with T(t,n,k)=n-k; succession of growing finite triangles with increasing values towards bottom left.

The programs for A056560, the canonical program `A056560.P14693903049238240332` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056560 has offset 0).

The definition of A056560 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056560.P14693903049238240332

`A056557(n)-A056558(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056560

/-- `A056557(n)-A056558(n)` -/
def P14693903049238240332.Spec : Prop :=
  ∀ n, P14693903049238240332.a n = A056560 n

theorem P14693903049238240332.correct : P14693903049238240332.Spec := by
  intro n
  simp only [A056560]

end A056560

/-! ## A056560.P4305135058214008905

`∑[val(A014311(n+1)-1, 2)-1]`
-/

namespace A056560.P4305135058214008905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A014311 (n + 1) - 1).toNat 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056560.P4305135058214008905

namespace A056560

/-- `∑[val(A014311(n+1)-1, 2)-1]` -/
def P4305135058214008905.Spec : Prop :=
  ∀ n, P4305135058214008905.a n = A056560 n

end A056560

/-! ## A056560.P1946843963670536691

`A025581(A332663(n))`
-/

namespace A056560.P1946843963670536691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A332663 n).toNat

end

end A056560.P1946843963670536691

namespace A056560

/-- `A025581(A332663(n))` -/
def P1946843963670536691.Spec : Prop :=
  ∀ n, P1946843963670536691.a n = A056560 n

end A056560

/-! ## A056560.P2943938764461643003

`log2(A261357(n)/A261356(n))`
-/

namespace A056560.P2943938764461643003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A261357 n : ℚ) / (A261356 n : ℚ) : ℝ)

end

end A056560.P2943938764461643003

namespace A056560

/-- `log2(A261357(n)/A261356(n))` -/
def P2943938764461643003.Spec : Prop :=
  ∀ n, P2943938764461643003.a n = (A056560 n : ℝ)

end A056560

/-! ## A056560.P12919353370255388309

`A002262(A273824(n+1)-1)`
-/

namespace A056560.P12919353370255388309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A273824 (n + 1) - 1).toNat

end

end A056560.P12919353370255388309

namespace A056560

/-- `A002262(A273824(n+1)-1)` -/
def P12919353370255388309.Spec : Prop :=
  ∀ n, P12919353370255388309.a n = A056560 n

end A056560

/-! ## A056560.P11538585012214120718

`A002262(A274079(n+1)-1)`
-/

namespace A056560.P11538585012214120718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A274079 (n + 1) - 1).toNat

end

end A056560.P11538585012214120718

namespace A056560

/-- `A002262(A274079(n+1)-1)` -/
def P11538585012214120718.Spec : Prop :=
  ∀ n, P11538585012214120718.a n = A056560 n

end A056560

/-! ## A056560.P6103529015200580536

`A194848(n)-(A056558(n)+1)`
-/

namespace A056560.P6103529015200580536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 n - (A056558 n + 1)

end

end A056560.P6103529015200580536

namespace A056560

/-- `A194848(n)-(A056558(n)+1)` -/
def P6103529015200580536.Spec : Prop :=
  ∀ n, P6103529015200580536.a n = A056560 n

end A056560

/-! ## A056560.P1370138122162222365

`∑[A023533(n)]-A173964(n+1)`
-/

namespace A056560.P1370138122162222365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173964 (n + 1)

end

end A056560.P1370138122162222365

namespace A056560

/-- `∑[A023533(n)]-A173964(n+1)` -/
def P1370138122162222365.Spec : Prop :=
  ∀ n, P1370138122162222365.a n = A056560 n

end A056560

/-! ## A056560.P13603432590564055418

`A057554(2*A273824(n+1)-1)`
-/

namespace A056560.P13603432590564055418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * A273824 (n + 1) - 1).toNat

end

end A056560.P13603432590564055418

namespace A056560

/-- `A057554(2*A273824(n+1)-1)` -/
def P13603432590564055418.Spec : Prop :=
  ∀ n, P13603432590564055418.a n = A056560 n

end A056560

/-! ## A056560.P14086323459828259867

`A057554(2*A274079(n+1)-1)`
-/

namespace A056560.P14086323459828259867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * A274079 (n + 1) - 1).toNat

end

end A056560.P14086323459828259867

namespace A056560

/-- `A057554(2*A274079(n+1)-1)` -/
def P14086323459828259867.Spec : Prop :=
  ∀ n, P14086323459828259867.a n = A056560 n

end A056560

/-! ## A056560.P18380196122937635049

`A360010(n+1)-A173964(n+1)`
-/

namespace A056560.P18380196122937635049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (n + 1) - A173964 (n + 1)

end

end A056560.P18380196122937635049

namespace A056560

/-- `A360010(n+1)-A173964(n+1)` -/
def P18380196122937635049.Spec : Prop :=
  ∀ n, P18380196122937635049.a n = A056560 n

end A056560

/-! ## A056560.P5476214756698777407

`∑[char[A000292(n)]]-A173964(n+1)`
-/

namespace A056560.P5476214756698777407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A173964 (n + 1)

end

end A056560.P5476214756698777407

namespace A056560

/-- `∑[char[A000292(n)]]-A173964(n+1)` -/
def P5476214756698777407.Spec : Prop :=
  ∀ n, P5476214756698777407.a n = A056560 n

end A056560

/-! ## A056560.P7501790920431709649

`A025581(n-A000292(A056556(n)))`
-/

namespace A056560.P7501790920431709649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) - A000292 (A056556 n).toNat).toNat

end

end A056560.P7501790920431709649

namespace A056560

/-- `A025581(n-A000292(A056556(n)))` -/
def P7501790920431709649.Spec : Prop :=
  ∀ n, P7501790920431709649.a n = A056560 n

end A056560

/-! ## A056560.P9719083860139215728

`A056556(n)-(A056559(n)+A056558(n))`
-/

namespace A056560.P9719083860139215728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - (A056559 n + A056558 n)

end

end A056560.P9719083860139215728

namespace A056560

/-- `A056556(n)-(A056559(n)+A056558(n))` -/
def P9719083860139215728.Spec : Prop :=
  ∀ n, P9719083860139215728.a n = A056560 n

end A056560

/-! ## A056560.P17191354228381247154

`A057554(A273824(n+1)+A273824(n+1)-1)`
-/

namespace A056560.P17191354228381247154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A273824 (n + 1) + (A273824 (n + 1) - 1)).toNat

end

end A056560.P17191354228381247154

namespace A056560

/-- `A057554(A273824(n+1)+A273824(n+1)-1)` -/
def P17191354228381247154.Spec : Prop :=
  ∀ n, P17191354228381247154.a n = A056560 n

end A056560

/-! ## A056560.P1178851423320863657

`A057554(A274079(n+1)+A274079(n+1)-1)`
-/

namespace A056560.P1178851423320863657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A274079 (n + 1) + (A274079 (n + 1) - 1)).toNat

end

end A056560.P1178851423320863657

namespace A056560

/-- `A057554(A274079(n+1)+A274079(n+1)-1)` -/
def P1178851423320863657.Spec : Prop :=
  ∀ n, P1178851423320863657.a n = A056560 n

end A056560

/-! ## A056560.P17065674237812445115

`A025581(A332662(2*n))`
-/

namespace A056560.P17065674237812445115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A332662 (2 * n)).toNat

end

end A056560.P17065674237812445115

namespace A056560

/-- `A025581(A332662(2*n))` -/
def P17065674237812445115.Spec : Prop :=
  ∀ n, P17065674237812445115.a n = A056560 n

end A056560

/-! ## A056560.P10028569503018809341

`A001222(A261357(n)/A261356(n))`
-/

namespace A056560.P10028569503018809341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A261357 n : ℚ) / (A261356 n : ℚ))).toNat

end

end A056560.P10028569503018809341

namespace A056560

/-- `A001222(A261357(n)/A261356(n))` -/
def P10028569503018809341.Spec : Prop :=
  ∀ n, P10028569503018809341.a n = A056560 n

end A056560

/-! ## A056560.P4289742471367210807

`A025581(lt[A025581(n), A218828(n+1)])`
-/

namespace A056560.P4289742471367210807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056560.P4289742471367210807

namespace A056560

/-- `A025581(lt[A025581(n), A218828(n+1)])` -/
def P4289742471367210807.Spec : Prop :=
  ∀ n, P4289742471367210807.a n = A056560 n

end A056560

/-! ## A056560.P4755934651668154610

`A056559(A332667(A332662(n+n)))`
-/

namespace A056560.P4755934651668154610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (A332667 (A332662 (n + n)).toNat).toNat

end

end A056560.P4755934651668154610

namespace A056560

/-- `A056559(A332667(A332662(n+n)))` -/
def P4755934651668154610.Spec : Prop :=
  ∀ n, P4755934651668154610.a n = A056560 n

end A056560

/-!
# A056561: Numbers n such that n^2 + n + 41 (known as Euler's polynomial) is prime.

The programs for A056561, there is no canonical definition to state claims against.
-/

/-! ## A056561.P30624226981984552

`A002837(n+2)-1`
-/

namespace A056561.P30624226981984552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 2) - 1

end

end A056561.P30624226981984552

/-! ## A056561.P5852800656642631484

`(sqrt(4*A005846(n+1)-163)-1)/2`
-/

namespace A056561.P5852800656642631484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (4 * A005846 (n + 1) - 163 : ℝ) - 1) / 2

end

end A056561.P5852800656642631484

/-! ## A056561.P13300270995094806310

`comp[A007634(n+1)]%A000040(2*(n+1))`
-/

namespace A056561.P13300270995094806310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007634 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A000040 (2 * (n + 1)))

end

end A056561.P13300270995094806310

/-! ## A056561.P4511468650332015942

`A123737(A123737(2*n+1)²)+A002837(n+2)`
-/

namespace A056561.P4511468650332015942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (A123737 (2 * n + 1) ^ 2).toNat + A002837 (n + 2)

end

end A056561.P4511468650332015942

/-! ## A056561.P16637777514829808136

`A183063(2*n+3)+comp[A007634(n+1)]`
-/

namespace A056561.P16637777514829808136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007634 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A056561.P16637777514829808136

/-! ## A056561.P460894744910392695

`A023443(A002837(n+2))`
-/

namespace A056561.P460894744910392695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002837 (n + 2)).toNat

end

end A056561.P460894744910392695

/-! ## A056561.P13609097330491563888

`comp[A007634(n+1)]%A314783(n)`
-/

namespace A056561.P13609097330491563888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007634 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A314783 n)

end

end A056561.P13609097330491563888

/-! ## A056561.P7993412608482409484

`eq[1, A001222(n²+41+n)]`
-/

namespace A056561.P7993412608482409484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 41 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056561.P7993412608482409484

/-! ## A056561.P255746550804716324

`eq[2, A000005(n²+41+n)]`
-/

namespace A056561.P255746550804716324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 41 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056561.P255746550804716324

/-! ## A056561.P4378578698073420670

`eq[1, A010051(A202018(n))]`
-/

namespace A056561.P4378578698073420670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056561.P4378578698073420670

/-! ## A056561.P11207645094512218831

`lt[A202014(n+1), A020639(A202018(n))]`
-/

namespace A056561.P11207645094512218831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056561.P11207645094512218831

/-! ## A056561.P3028227438601831316

`lt[A202016(n+1), A020639(A202018(n))]`
-/

namespace A056561.P3028227438601831316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056561.P3028227438601831316

/-! ## A056561.P5562333239349875628

`lt[A023480(2*n), A020639(A202018(n))]`
-/

namespace A056561.P5562333239349875628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056561.P5562333239349875628

/-! ## A056561.P14698364365273367750

`lt[A023480(n)+n, A020639(A202018(n))]`
-/

namespace A056561.P14698364365273367750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056561.P14698364365273367750

/-! ## A056561.P15098794993451943270

`lt[A020639(n+1)+n, A020639(A202018(n))]`
-/

namespace A056561.P15098794993451943270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056561.P15098794993451943270

/-! ## A056561.P816107875789026095

`eq[1, A078772(A202018(n)+1)]`
-/

namespace A056561.P816107875789026095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (A202018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056561.P816107875789026095

/-! ## A056561.P12364243846763918567

`eq[1, A175078(A202018(n)+1)]`
-/

namespace A056561.P12364243846763918567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A202018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056561.P12364243846763918567

/-!
# A056562: Number of primes which are the difference between two triangular numbers, where the smaller is the n-th triangular number.

The programs for A056562, the canonical program `A056562.P16284294879331375478` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056562 has offset 0).

The definition of A056562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056562.P2701080899764706006

`A056564(n)-A056563(n)`
-/

namespace A056562.P2701080899764706006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056564 n - A056563 n

end

end A056562.P2701080899764706006

namespace A056562

/-- `A056564(n)-A056563(n)` -/
def P2701080899764706006.Spec : Prop :=
  ∀ n, P2701080899764706006.a n = A056562 n

end A056562

/-! ## A056562.P10554643425981774638

`A280710(2*(n+1))+A010051(2*n+3)`
-/

namespace A056562.P10554643425981774638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (2 * (n + 1)) + A010051 (2 * n + 3)

end

end A056562.P10554643425981774638

namespace A056562

/-- `A280710(2*(n+1))+A010051(2*n+3)` -/
def P10554643425981774638.Spec : Prop :=
  ∀ n, P10554643425981774638.a n = A056562 n

end A056562

/-! ## A056562.P13030270672833608879

`A340371(2*n+3)+A280710(2*(n+1))`
-/

namespace A056562.P13030270672833608879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (2 * n + 3) + A280710 (2 * (n + 1))

end

end A056562.P13030270672833608879

namespace A056562

/-- `A340371(2*n+3)+A280710(2*(n+1))` -/
def P13030270672833608879.Spec : Prop :=
  ∀ n, P13030270672833608879.a n = A056562 n

end A056562

/-! ## A056562.P16284294879331375478

`A101264(n+1)+A101264(A006370(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056562

/-- `A101264(n+1)+A101264(A006370(n))` -/
def P16284294879331375478.Spec : Prop :=
  ∀ n, P16284294879331375478.a n = A056562 n

theorem P16284294879331375478.correct : P16284294879331375478.Spec := by
  intro n
  simp only [A056562]

end A056562

/-! ## A056562.P10248060289706627438

`A101264(n+1)+A010051(A165998(n))`
-/

namespace A056562.P10248060289706627438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1) + A010051 (A165998 n).toNat

end

end A056562.P10248060289706627438

namespace A056562

/-- `A101264(n+1)+A010051(A165998(n))` -/
def P10248060289706627438.Spec : Prop :=
  ∀ n, P10248060289706627438.a n = A056562 n

end A056562

/-! ## A056562.P7562746341759351991

`A195198(A020483(n))+A080545(n+1)`
-/

namespace A056562.P7562746341759351991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195198 (A020483 n).toNat + A080545 (n + 1)

end

end A056562.P7562746341759351991

namespace A056562

/-- `A195198(A020483(n))+A080545(n+1)` -/
def P7562746341759351991.Spec : Prop :=
  ∀ n, P7562746341759351991.a n = A056562 n

end A056562

/-! ## A056562.P16803451487993304710

`A101264(n+1)+A101264(A142150(n))`
-/

namespace A056562.P16803451487993304710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1) + A101264 (A142150 n).toNat

end

end A056562.P16803451487993304710

namespace A056562

/-- `A101264(n+1)+A101264(A142150(n))` -/
def P16803451487993304710.Spec : Prop :=
  ∀ n, P16803451487993304710.a n = A056562 n

end A056562

/-! ## A056562.P18444400937221359648

`A101264(n+1)+A101264(n-A026741(n))`
-/

namespace A056562.P18444400937221359648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1) + A101264 ((n : ℤ) - A026741 n).toNat

end

end A056562.P18444400937221359648

namespace A056562

/-- `A101264(n+1)+A101264(n-A026741(n))` -/
def P18444400937221359648.Spec : Prop :=
  ∀ n, P18444400937221359648.a n = A056562 n

end A056562

/-! ## A056562.P10412952793457576257

`A010051(2*n+3)+A010051(A059029(n)+1)`
-/

namespace A056562.P10412952793457576257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 3) + A010051 (A059029 n + 1).toNat

end

end A056562.P10412952793457576257

namespace A056562

/-- `A010051(2*n+3)+A010051(A059029(n)+1)` -/
def P10412952793457576257.Spec : Prop :=
  ∀ n, P10412952793457576257.a n = A056562 n

end A056562

/-! ## A056562.P6159460711594967233

`A280710(2*(n+1))+A090405(2*(n+1))`
-/

namespace A056562.P6159460711594967233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (2 * (n + 1)) + A090405 (2 * (n + 1))

end

end A056562.P6159460711594967233

namespace A056562

/-- `A280710(2*(n+1))+A090405(2*(n+1))` -/
def P6159460711594967233.Spec : Prop :=
  ∀ n, P6159460711594967233.a n = A056562 n

end A056562

/-! ## A056562.P16051615887177363491

`A171387(2*n+3)+A080545(n+1)`
-/

namespace A056562.P16051615887177363491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171387 (2 * n + 3) + A080545 (n + 1)

end

end A056562.P16051615887177363491

namespace A056562

/-- `A171387(2*n+3)+A080545(n+1)` -/
def P16051615887177363491.Spec : Prop :=
  ∀ n, P16051615887177363491.a n = A056562 n

end A056562

/-! ## A056562.P14810567749430944983

`A151763(A144396(n+1))²+A151763(n+1)²`
-/

namespace A056562.P14810567749430944983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (A144396 (n + 1)).toNat ^ 2 + A151763 (n + 1) ^ 2

end

end A056562.P14810567749430944983

namespace A056562

/-- `A151763(A144396(n+1))²+A151763(n+1)²` -/
def P14810567749430944983.Spec : Prop :=
  ∀ n, P14810567749430944983.a n = A056562 n

end A056562

/-! ## A056562.P15623828559091466341

`Δ[A033270(2*(n+1))+A033270(A185048(2*(n+1)))]`
-/

namespace A056562.P15623828559091466341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (2 * (n + 1)) + A033270 (A185048 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056562.P15623828559091466341

namespace A056562

/-- `Δ[A033270(2*(n+1))+A033270(A185048(2*(n+1)))]` -/
def P15623828559091466341.Spec : Prop :=
  ∀ n, P15623828559091466341.a n = A056562 n

end A056562

/-! ## A056562.P2973797459433434285

`A107279(abs(Δ[A073837(n+1)]))`
-/

namespace A056562.P2973797459433434285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 |f1 (n + 1) - f1 n|.toNat

end

end A056562.P2973797459433434285

namespace A056562

/-- `A107279(abs(Δ[A073837(n+1)]))` -/
def P2973797459433434285.Spec : Prop :=
  ∀ n, P2973797459433434285.a n = A056562 n

end A056562

/-! ## A056562.P9606484623437720741

`A107393(Δ[A073837(n+1)]²)`
-/

namespace A056562.P9606484623437720741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A056562.P9606484623437720741

namespace A056562

/-- `A107393(Δ[A073837(n+1)]²)` -/
def P9606484623437720741.Spec : Prop :=
  ∀ n, P9606484623437720741.a n = A056562 n

end A056562

/-!
# A056563: Number of primes which are the difference between two triangular numbers, where the larger is the n-th triangular number.

The programs for A056563, the canonical program `A056563.P15214927666009346148` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056563 has offset 0).

The definition of A056563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056563.P13785769288986055595

`A056564(n)-A056562(n)`
-/

namespace A056563.P13785769288986055595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056564 n - A056562 n

end

end A056563.P13785769288986055595

namespace A056563

/-- `A056564(n)-A056562(n)` -/
def P13785769288986055595.Spec : Prop :=
  ∀ n, P13785769288986055595.a n = A056563 n

end A056563

/-! ## A056563.P15214927666009346148

`char[A006254(n+1)]+char[A065091(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056563

/-- `char[A006254(n+1)]+char[A065091(n+1)]` -/
def P15214927666009346148.Spec : Prop :=
  ∀ n, (P15214927666009346148.a n : ℤ) = A056563 n

theorem P15214927666009346148.correct : P15214927666009346148.Spec := by
  intro n
  simp only [A056563]

end A056563

/-! ## A056563.P15215686187292809301

`char[A000040(n+1)]+char[A006254(n+2)]`
-/

namespace A056563.P15215686187292809301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A056563.P15215686187292809301

namespace A056563

/-- `char[A000040(n+1)]+char[A006254(n+2)]` -/
def P15215686187292809301.Spec : Prop :=
  ∀ n, (P15215686187292809301.a n : ℤ) = A056563 n

end A056563

/-! ## A056563.P12684416113911086620

`A303336(A267873(n))`
-/

namespace A056563.P12684416113911086620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303336 (A267873 n).toNat

end

end A056563.P12684416113911086620

namespace A056563

/-- `A303336(A267873(n))` -/
def P12684416113911086620.Spec : Prop :=
  ∀ n, P12684416113911086620.a n = A056563 n

end A056563

/-! ## A056563.P15724990860018864840

`A061358(2*n+1)+char[A065091(n+1)]`
-/

namespace A056563.P15724990860018864840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056563.P15724990860018864840

namespace A056563

/-- `A061358(2*n+1)+char[A065091(n+1)]` -/
def P15724990860018864840.Spec : Prop :=
  ∀ n, P15724990860018864840.a n = A056563 n

end A056563

/-! ## A056563.P4739421993868304801

`A061358(2*n+1)+char[A000040(n+2)]`
-/

namespace A056563.P4739421993868304801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056563.P4739421993868304801

namespace A056563

/-- `A061358(2*n+1)+char[A000040(n+2)]` -/
def P4739421993868304801.Spec : Prop :=
  ∀ n, P4739421993868304801.a n = A056563 n

end A056563

/-! ## A056563.P10480162075967192885

`A061358(2*n+1)+char[A151800(n+2)]`
-/

namespace A056563.P10480162075967192885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056563.P10480162075967192885

namespace A056563

/-- `A061358(2*n+1)+char[A151800(n+2)]` -/
def P10480162075967192885.Spec : Prop :=
  ∀ n, P10480162075967192885.a n = A056563 n

end A056563

/-! ## A056563.P9601066305898548595

`A117929(2*n+1)+A117929(n+2)*A266591(n+1)`
-/

namespace A056563.P9601066305898548595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (2 * n + 1) + A117929 (n + 2) * A266591 (n + 1)

end

end A056563.P9601066305898548595

namespace A056563

/-- `A117929(2*n+1)+A117929(n+2)*A266591(n+1)` -/
def P9601066305898548595.Spec : Prop :=
  ∀ n, P9601066305898548595.a n = A056563 n

end A056563

/-! ## A056563.P13867235910793450411

`A224362(char[2]+∑[n])`
-/

namespace A056563.P13867235910793450411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224362 ((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A056563.P13867235910793450411

namespace A056563

/-- `A224362(char[2]+∑[n])` -/
def P13867235910793450411.Spec : Prop :=
  ∀ n, P13867235910793450411.a n = A056563 n

end A056563

/-! ## A056563.P8323500688010193020

`A224362(∑[n])-char[2]`
-/

namespace A056563.P8323500688010193020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224362 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A056563.P8323500688010193020

namespace A056563

/-- `A224362(∑[n])-char[2]` -/
def P8323500688010193020.Spec : Prop :=
  ∀ n, P8323500688010193020.a n = A056563 n

end A056563

/-! ## A056563.P3556491093692211367

`A000230(n)%A132399(∑[n])`
-/

namespace A056563.P3556491093692211367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000230 n) (A132399 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A056563.P3556491093692211367

namespace A056563

/-- `A000230(n)%A132399(∑[n])` -/
def P3556491093692211367.Spec : Prop :=
  ∀ n, P3556491093692211367.a n = A056563 n

end A056563

/-! ## A056563.P5662690718864116872

`gcd(A055029(n), A224362(∑[n]))`
-/

namespace A056563.P5662690718864116872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055029 n) (A224362 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A056563.P5662690718864116872

namespace A056563

/-- `gcd(A055029(n), A224362(∑[n]))` -/
def P5662690718864116872.Spec : Prop :=
  ∀ n, (P5662690718864116872.a n : ℤ) = A056563 n

end A056563

/-! ## A056563.P498871303077384101

`A073609(n)%A132399(A000217(n))`
-/

namespace A056563.P498871303077384101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073609 n) (A132399 (A000217 n).toNat)

end

end A056563.P498871303077384101

namespace A056563

/-- `A073609(n)%A132399(A000217(n))` -/
def P498871303077384101.Spec : Prop :=
  ∀ n, P498871303077384101.a n = A056563 n

end A056563

/-! ## A056563.P2855945328140845361

`A165900(n)%A132399(A000217(n))`
-/

namespace A056563.P2855945328140845361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165900 n) (A132399 (A000217 n).toNat)

end

end A056563.P2855945328140845361

namespace A056563

/-- `A165900(n)%A132399(A000217(n))` -/
def P2855945328140845361.Spec : Prop :=
  ∀ n, P2855945328140845361.a n = A056563 n

end A056563

/-!
# A056564: Number of times primes can be produced by taking the absolute difference between the n-th triangular number and another triangular number.

The programs for A056564, the canonical program `A056564.P14160989435104353240` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056564 has offset 0).

The definition of A056564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056562, A056563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056564.P14160989435104353240

`A056562(n)+A056563(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056564

/-- `A056562(n)+A056563(n)` -/
def P14160989435104353240.Spec : Prop :=
  ∀ n, P14160989435104353240.a n = A056564 n

theorem P14160989435104353240.correct : P14160989435104353240.Spec := by
  intro n
  simp only [A056564]

end A056564

/-! ## A056564.P3019246007288833978

`A056563(n)+A280710(2*(n+1))+A010051(2*n+3)`
-/

namespace A056564.P3019246007288833978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n + (A280710 (2 * (n + 1)) + A010051 (2 * n + 3))

end

end A056564.P3019246007288833978

namespace A056564

/-- `A056563(n)+A280710(2*(n+1))+A010051(2*n+3)` -/
def P3019246007288833978.Spec : Prop :=
  ∀ n, P3019246007288833978.a n = A056564 n

end A056564

/-! ## A056564.P12964428892199687245

`A056563(n)+A340371(2*n+3)+A280710(2*(n+1))`
-/

namespace A056564.P12964428892199687245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n + (A340371 (2 * n + 3) + A280710 (2 * (n + 1)))

end

end A056564.P12964428892199687245

namespace A056564

/-- `A056563(n)+A340371(2*n+3)+A280710(2*(n+1))` -/
def P12964428892199687245.Spec : Prop :=
  ∀ n, P12964428892199687245.a n = A056564 n

end A056564

/-! ## A056564.P1125084179465568526

`A056563(n)+A101264(n+1)+A101264(A006370(n))`
-/

namespace A056564.P1125084179465568526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n + (A101264 (n + 1) + A101264 (A006370 n).toNat)

end

end A056564.P1125084179465568526

namespace A056564

/-- `A056563(n)+A101264(n+1)+A101264(A006370(n))` -/
def P1125084179465568526.Spec : Prop :=
  ∀ n, P1125084179465568526.a n = A056564 n

end A056564

/-! ## A056564.P2171511501161302528

`A056562(n)+A117929(2*n+1)+A117929(n+2)*A266591(n+1)`
-/

namespace A056564.P2171511501161302528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 n + (A117929 (2 * n + 1) + A117929 (n + 2) * A266591 (n + 1))

end

end A056564.P2171511501161302528

namespace A056564

/-- `A056562(n)+A117929(2*n+1)+A117929(n+2)*A266591(n+1)` -/
def P2171511501161302528.Spec : Prop :=
  ∀ n, P2171511501161302528.a n = A056564 n

end A056564

/-! ## A056564.P14748045721153746332

`A056563(n)+A171387(2*n+3)+A080545(n+1)`
-/

namespace A056564.P14748045721153746332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n + (A171387 (2 * n + 3) + A080545 (n + 1))

end

end A056564.P14748045721153746332

namespace A056564

/-- `A056563(n)+A171387(2*n+3)+A080545(n+1)` -/
def P14748045721153746332.Spec : Prop :=
  ∀ n, P14748045721153746332.a n = A056564 n

end A056564

/-! ## A056564.P6604522682537829966

`A056563(n)+A151763(A144396(n+1))²+A151763(n+1)²`
-/

namespace A056564.P6604522682537829966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n + (A151763 (A144396 (n + 1)).toNat ^ 2 + A151763 (n + 1) ^ 2)

end

end A056564.P6604522682537829966

namespace A056564

/-- `A056563(n)+A151763(A144396(n+1))²+A151763(n+1)²` -/
def P6604522682537829966.Spec : Prop :=
  ∀ n, P6604522682537829966.a n = A056564 n

end A056564

/-! ## A056564.P11530040144115614745

`A056562(n)+A224362(char[2]+∑[n])`
-/

namespace A056564.P11530040144115614745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 n + A224362 ((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A056564.P11530040144115614745

namespace A056564

/-- `A056562(n)+A224362(char[2]+∑[n])` -/
def P11530040144115614745.Spec : Prop :=
  ∀ n, P11530040144115614745.a n = A056564 n

end A056564

/-! ## A056564.P312741816871699132

`A056562(n)+A000230(n)%A132399(∑[n])`
-/

namespace A056564.P312741816871699132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 n + Int.tmod (A000230 n) (A132399 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A056564.P312741816871699132

namespace A056564

/-- `A056562(n)+A000230(n)%A132399(∑[n])` -/
def P312741816871699132.Spec : Prop :=
  ∀ n, P312741816871699132.a n = A056564 n

end A056564

/-! ## A056564.P2103966065382240029

`A056562(n)+A073609(n)%A132399(A000217(n))`
-/

namespace A056564.P2103966065382240029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 n + Int.tmod (A073609 n) (A132399 (A000217 n).toNat)

end

end A056564.P2103966065382240029

namespace A056564

/-- `A056562(n)+A073609(n)%A132399(A000217(n))` -/
def P2103966065382240029.Spec : Prop :=
  ∀ n, P2103966065382240029.a n = A056564 n

end A056564

/-! ## A056564.P943874911791484108

`A056562(n)+A165900(n)%A132399(A000217(n))`
-/

namespace A056564.P943874911791484108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 n + Int.tmod (A165900 n) (A132399 (A000217 n).toNat)

end

end A056564.P943874911791484108

namespace A056564

/-- `A056562(n)+A165900(n)%A132399(A000217(n))` -/
def P943874911791484108.Spec : Prop :=
  ∀ n, P943874911791484108.a n = A056564 n

end A056564

/-!
# A056565: Fibonomial coefficients.

The programs for A056565, there is no canonical definition to state claims against.
-/

/-! ## A056565.P10357243078553620225

`29*a(n-1)+a(n-2)+(-1)^n*A001657(n)` with `a(0)=1, a(1)=21`
-/

namespace A056565.P10357243078553620225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  29 * a (n - 1) + a (n - 2) + (-1) ^ n * A001657 n

end

end A056565.P10357243078553620225

/-! ## A056565.P15939264347745015045

`A010048(eq[7, A002262(n)])`
-/

namespace A056565.P15939264347745015045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056565.P15939264347745015045

/-! ## A056565.P5178192897445860543

`A055870(eq[7, A002262(n)])`
-/

namespace A056565.P5178192897445860543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056565.P5178192897445860543

/-! ## A056565.P2737544241667864374

`A010048(eq[8, A002260(n+1)])`
-/

namespace A056565.P2737544241667864374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056565.P2737544241667864374

/-! ## A056565.P61311383860542154

`A010048(eq[7, A025581(n)])`
-/

namespace A056565.P61311383860542154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056565.P61311383860542154

/-!
# A056566: Fibonomial coefficients.

The programs for A056566, there is no canonical definition to state claims against.
-/

/-! ## A056566.P12632555178412067870

`47*a(n-1)-a(n-2)+(-1)^n*A001658(n)` with `a(0)=1, a(1)=34`
-/

namespace A056566.P12632555178412067870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 34] fun n a =>
  47 * a (n - 1) - a (n - 2) + (-1) ^ n * A001658 n

end

end A056566.P12632555178412067870

/-! ## A056566.P9575669534876369399

`A010048(eq[8, A002262(n)])`
-/

namespace A056566.P9575669534876369399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056566.P9575669534876369399

/-! ## A056566.P1771831471434382817

`A055870(eq[8, A002262(n)])`
-/

namespace A056566.P1771831471434382817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056566.P1771831471434382817

/-! ## A056566.P1021048681380480701

`A055870(A000124(n+8)+7)`
-/

namespace A056566.P1021048681380480701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055870 (A000124 (n + 8) + 7).toNat

end

end A056566.P1021048681380480701

/-! ## A056566.P11986458303267420666

`A010048(eq[9, A002260(n+1)])`
-/

namespace A056566.P11986458303267420666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056566.P11986458303267420666

/-!
# A056567: Fibonomial coefficients.

The programs for A056567, there is no canonical definition to state claims against.
-/

/-! ## A056567.P16017620500270924614

`76*a(n-1)+a(n-2)+(-1)^n*A056565(n)` with `a(0)=1, a(1)=55`
-/

namespace A056567.P16017620500270924614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 55] fun n a =>
  76 * a (n - 1) + a (n - 2) + (-1) ^ n * A056565 n

end

end A056567.P16017620500270924614

/-! ## A056567.P13991173461721865370

`A010048(eq[9, A002262(n)])`
-/

namespace A056567.P13991173461721865370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056567.P13991173461721865370

/-! ## A056567.P15304066764513015802

`A010048(A000096(n+8)+10)`
-/

namespace A056567.P15304066764513015802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A000096 (n + 8) + 10).toNat

end

end A056567.P15304066764513015802

/-! ## A056567.P11747607412731971641

`A010048(eq[10, A002260(n+1)])`
-/

namespace A056567.P11747607412731971641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056567.P11747607412731971641

/-! ## A056567.P382947574221781429

`A010048(eq[9, A025581(n)])`
-/

namespace A056567.P382947574221781429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056567.P382947574221781429

/-!
# A056568: Fibonomial coefficients.

The programs for A056568, there is no canonical definition to state claims against.
-/

/-! ## A056568.P4071559317002319837

`123*a(n-1)-a(n-2)+(-1)^n*A056566(n)` with `a(0)=1, a(1)=89`
-/

namespace A056568.P4071559317002319837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 89] fun n a =>
  123 * a (n - 1) - a (n - 2) + (-1) ^ n * A056566 n

end

end A056568.P4071559317002319837

/-! ## A056568.P7595469200164861808

`A010048(eq[10, A002262(n)])`
-/

namespace A056568.P7595469200164861808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056568.P7595469200164861808

/-! ## A056568.P13922069327446283200

`A010048(eq[11, A002260(n+1)])`
-/

namespace A056568.P13922069327446283200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056568.P13922069327446283200

/-! ## A056568.P16059916513658900697

`A010048(eq[10, A025581(n)])`
-/

namespace A056568.P16059916513658900697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056568.P16059916513658900697

/-! ## A056568.P1426934024113880387

`A010048(eq[11, A004736(n+1)])`
-/

namespace A056568.P1426934024113880387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056568.P1426934024113880387

/-!
# A056569: Row sums of Fibonomial triangle A010048.

The programs for A056569, there is no canonical definition to state claims against.
-/

/-! ## A056569.P13144352299871132652

`A350943(or(n, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A056569.P13144352299871132652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A350943 (Int.lor (n : ℤ) (a (n - 1))).toNat

end

end A056569.P13144352299871132652

/-! ## A056569.P6452100444774711079

`A241085(ceil(sqrt(6*(6*2^n-2))))`
-/

namespace A056569.P6452100444774711079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 ⌈Real.sqrt (6 * ((6 * 2 ^ n : ℤ) - 2) : ℝ)⌉.toNat

end

end A056569.P6452100444774711079

/-! ## A056569.P2906087338207443668

`∑[A002024(A005263(n))]`
-/

namespace A056569.P2906087338207443668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A005263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056569.P2906087338207443668

/-!
# A056570: Third power of Fibonacci numbers (A000045).

The programs for A056570, the canonical program `A056570.P8836543462792650410` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056570 has offset 0).

The definition of A056570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056570.P8836543462792650410

`A000045(n)^3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056570

/-- `A000045(n)^3` -/
def P8836543462792650410.Spec : Prop :=
  ∀ n, P8836543462792650410.a n = A056570 n

theorem P8836543462792650410.correct : P8836543462792650410.Spec := by
  intro n
  simp only [A056570]

end A056570

/-! ## A056570.P15117477346074901922

`round(ϕ^n/sqrt(5))^3`
-/

namespace A056570.P15117477346074901922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 3

end

end A056570.P15117477346074901922

namespace A056570

/-- `round(ϕ^n/sqrt(5))^3` -/
def P15117477346074901922.Spec : Prop :=
  ∀ n, P15117477346074901922.a n = A056570 n

end A056570

/-! ## A056570.P10383903948812471038

`∑[A346513(abs(1-n))]`
-/

namespace A056570.P10383903948812471038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346513 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056570.P10383903948812471038

namespace A056570

/-- `∑[A346513(abs(1-n))]` -/
def P10383903948812471038.Spec : Prop :=
  ∀ n, P10383903948812471038.a n = A056570 n

end A056570

/-! ## A056570.P6341218068360803341

`A346513(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A056570.P6341218068360803341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A346513 (n - 1) + a (n - 1)

end

end A056570.P6341218068360803341

namespace A056570

/-- `A346513(n-1)+a(n-1)` -/
def P6341218068360803341.Spec : Prop :=
  ∀ n, P6341218068360803341.a n = A056570 n

end A056570

/-! ## A056570.P10542605209670240535

`A244309(n)+A007598(n)`
-/

namespace A056570.P10542605209670240535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244309 n + A007598 n

end

end A056570.P10542605209670240535

namespace A056570

/-- `A244309(n)+A007598(n)` -/
def P10542605209670240535.Spec : Prop :=
  ∀ n, P10542605209670240535.a n = A056570 n

end A056570

/-! ## A056570.P16236485716875500927

`A000045(n)*A007598(n)`
-/

namespace A056570.P16236485716875500927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A007598 n

end

end A056570.P16236485716875500927

namespace A056570

/-- `A000045(n)*A007598(n)` -/
def P16236485716875500927.Spec : Prop :=
  ∀ n, P16236485716875500927.a n = A056570 n

end A056570

/-! ## A056570.P5974403323746138648

`A007598(n)*A212804(n+1)`
-/

namespace A056570.P5974403323746138648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A212804 (n + 1)

end

end A056570.P5974403323746138648

namespace A056570

/-- `A007598(n)*A212804(n+1)` -/
def P5974403323746138648.Spec : Prop :=
  ∀ n, P5974403323746138648.a n = A056570 n

end A056570

/-! ## A056570.P1730940968599506993

`A007598(n)*A324969(n+1)`
-/

namespace A056570.P1730940968599506993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A324969 (n + 1)

end

end A056570.P1730940968599506993

namespace A056570

/-- `A007598(n)*A324969(n+1)` -/
def P1730940968599506993.Spec : Prop :=
  ∀ n, P1730940968599506993.a n = A056570 n

end A056570

/-! ## A056570.P306752920496484332

`(A245306(n)-1)*A000045(n)`
-/

namespace A056570.P306752920496484332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245306 n - 1) * A000045 n

end

end A056570.P306752920496484332

namespace A056570

/-- `(A245306(n)-1)*A000045(n)` -/
def P306752920496484332.Spec : Prop :=
  ∀ n, P306752920496484332.a n = A056570 n

end A056570

/-! ## A056570.P12983551309705883187

`A007598(n)*A053602(2*n)`
-/

namespace A056570.P12983551309705883187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A053602 (2 * n)

end

end A056570.P12983551309705883187

namespace A056570

/-- `A007598(n)*A053602(2*n)` -/
def P12983551309705883187.Spec : Prop :=
  ∀ n, P12983551309705883187.a n = A056570 n

end A056570

/-! ## A056570.P7300811878921373860

`A000045(n)*A152192(2*n)`
-/

namespace A056570.P7300811878921373860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A152192 (2 * n)

end

end A056570.P7300811878921373860

namespace A056570

/-- `A000045(n)*A152192(2*n)` -/
def P7300811878921373860.Spec : Prop :=
  ∀ n, P7300811878921373860.a n = A056570 n

end A056570

/-! ## A056570.P16096666334983981189

`A000045(n)/2*A175395(n)`
-/

namespace A056570.P16096666334983981189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A175395 n : ℚ)

end

end A056570.P16096666334983981189

namespace A056570

/-- `A000045(n)/2*A175395(n)` -/
def P16096666334983981189.Spec : Prop :=
  ∀ n, P16096666334983981189.a n = (A056570 n : ℚ)

end A056570

/-! ## A056570.P6781985096615106963

`abs(A236191(n))*A236191(n)²`
-/

namespace A056570.P6781985096615106963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| * A236191 n ^ 2

end

end A056570.P6781985096615106963

namespace A056570

/-- `abs(A236191(n))*A236191(n)²` -/
def P6781985096615106963.Spec : Prop :=
  ∀ n, P6781985096615106963.a n = A056570 n

end A056570

/-! ## A056570.P10989112729085246691

`abs(A333378(n))*A333378(n)²`
-/

namespace A056570.P10989112729085246691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A333378 n| * A333378 n ^ 2

end

end A056570.P10989112729085246691

namespace A056570

/-- `abs(A333378(n))*A333378(n)²` -/
def P10989112729085246691.Spec : Prop :=
  ∀ n, P10989112729085246691.a n = A056570 n

end A056570

/-! ## A056570.P1067916784102480201

`(A001611(n)-1)*A000045(n)²`
-/

namespace A056570.P1067916784102480201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A000045 n ^ 2

end

end A056570.P1067916784102480201

namespace A056570

/-- `(A001611(n)-1)*A000045(n)²` -/
def P1067916784102480201.Spec : Prop :=
  ∀ n, P1067916784102480201.a n = A056570 n

end A056570

/-! ## A056570.P17815199568444937690

`A007598(n)*A272912(2*(n+1))`
-/

namespace A056570.P17815199568444937690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A272912 (2 * (n + 1))

end

end A056570.P17815199568444937690

namespace A056570

/-- `A007598(n)*A272912(2*(n+1))` -/
def P17815199568444937690.Spec : Prop :=
  ∀ n, P17815199568444937690.a n = A056570 n

end A056570

/-! ## A056570.P5945258347170320975

`A152192(2*n)*A212804(n+1)`
-/

namespace A056570.P5945258347170320975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (2 * n) * A212804 (n + 1)

end

end A056570.P5945258347170320975

namespace A056570

/-- `A152192(2*n)*A212804(n+1)` -/
def P5945258347170320975.Spec : Prop :=
  ∀ n, P5945258347170320975.a n = A056570 n

end A056570

/-! ## A056570.P4230260324566730433

`Δ[A000045(n+1)]²*A000045(n)`
-/

namespace A056570.P4230260324566730433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A000045 n

end

end A056570.P4230260324566730433

namespace A056570

/-- `Δ[A000045(n+1)]²*A000045(n)` -/
def P4230260324566730433.Spec : Prop :=
  ∀ n, P4230260324566730433.a n = A056570 n

end A056570

/-! ## A056570.P9639656416944968639

`A000045(char[1]+n)²*A000045(n)`
-/

namespace A056570.P9639656416944968639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2 * A000045 n

end

end A056570.P9639656416944968639

namespace A056570

/-- `A000045(char[1]+n)²*A000045(n)` -/
def P9639656416944968639.Spec : Prop :=
  ∀ n, P9639656416944968639.a n = A056570 n

end A056570

/-!
# A056571: Fourth power of Fibonacci numbers A000045.

The programs for A056571, the canonical program `A056571.P16308411225797373877` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056571 has offset 0).

The definition of A056571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056571.P16308411225797373877

`A007598(n)²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056571

/-- `A007598(n)²` -/
def P16308411225797373877.Spec : Prop :=
  ∀ n, P16308411225797373877.a n = A056571 n

theorem P16308411225797373877.correct : P16308411225797373877.Spec := by
  intro n
  simp only [A056571]

end A056571

/-! ## A056571.P11634520382056556570

`round((ϕ^n)²/5)²`
-/

namespace A056571.P11634520382056556570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio ^ n) ^ 2 / 5) ^ 2

end

end A056571.P11634520382056556570

namespace A056571

/-- `round((ϕ^n)²/5)²` -/
def P11634520382056556570.Spec : Prop :=
  ∀ n, P11634520382056556570.a n = A056571 n

end A056571

/-! ## A056571.P11100108709482968211

`∑[a(n-1)+a(n-2)]^4` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A056571.P11100108709482968211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P11100108709482968211

namespace A056571

/-- `∑[a(n-1)+a(n-2)]^4` -/
def P11100108709482968211.Spec : Prop :=
  ∀ n, (P11100108709482968211.a n : ℤ) = A056571 n

end A056571

/-! ## A056571.P14811923132521960363

`A000045(n)^4`
-/

namespace A056571.P14811923132521960363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 4

end

end A056571.P14811923132521960363

namespace A056571

/-- `A000045(n)^4` -/
def P14811923132521960363.Spec : Prop :=
  ∀ n, P14811923132521960363.a n = A056571 n

end A056571

/-! ## A056571.P4803335971798810432

`A236191(n)^4`
-/

namespace A056571.P4803335971798810432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n ^ 4

end

end A056571.P4803335971798810432

namespace A056571

/-- `A236191(n)^4` -/
def P4803335971798810432.Spec : Prop :=
  ∀ n, P4803335971798810432.a n = A056571 n

end A056571

/-! ## A056571.P15338928652495755698

`A333378(n)^4`
-/

namespace A056571.P15338928652495755698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 n ^ 4

end

end A056571.P15338928652495755698

namespace A056571

/-- `A333378(n)^4` -/
def P15338928652495755698.Spec : Prop :=
  ∀ n, P15338928652495755698.a n = A056571 n

end A056571

/-! ## A056571.P6198202721761199089

`A017125(∑[n])^4`
-/

namespace A056571.P6198202721761199089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P6198202721761199089

namespace A056571

/-- `A017125(∑[n])^4` -/
def P6198202721761199089.Spec : Prop :=
  ∀ n, P6198202721761199089.a n = A056571 n

end A056571

/-! ## A056571.P6625184223800193215

`A039913(∑[n])^4`
-/

namespace A056571.P6625184223800193215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P6625184223800193215

namespace A056571

/-- `A039913(∑[n])^4` -/
def P6625184223800193215.Spec : Prop :=
  ∀ n, P6625184223800193215.a n = A056571 n

end A056571

/-! ## A056571.P17149518080017346777

`A050610(∑[n])^4`
-/

namespace A056571.P17149518080017346777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P17149518080017346777

namespace A056571

/-- `A050610(∑[n])^4` -/
def P17149518080017346777.Spec : Prop :=
  ∀ n, P17149518080017346777.a n = A056571 n

end A056571

/-! ## A056571.P12385819032992400889

`A094570(∑[n])^4`
-/

namespace A056571.P12385819032992400889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P12385819032992400889

namespace A056571

/-- `A094570(∑[n])^4` -/
def P12385819032992400889.Spec : Prop :=
  ∀ n, P12385819032992400889.a n = A056571 n

end A056571

/-! ## A056571.P1784171139022083694

`A108037(∑[n])^4`
-/

namespace A056571.P1784171139022083694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P1784171139022083694

namespace A056571

/-- `A108037(∑[n])^4` -/
def P1784171139022083694.Spec : Prop :=
  ∀ n, P1784171139022083694.a n = A056571 n

end A056571

/-! ## A056571.P10022110701234046545

`A108038(∑[n])^4`
-/

namespace A056571.P10022110701234046545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108038 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P10022110701234046545

namespace A056571

/-- `A108038(∑[n])^4` -/
def P10022110701234046545.Spec : Prop :=
  ∀ n, P10022110701234046545.a n = A056571 n

end A056571

/-! ## A056571.P4930295122953054375

`A108617(∑[n])^4`
-/

namespace A056571.P4930295122953054375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P4930295122953054375

namespace A056571

/-- `A108617(∑[n])^4` -/
def P4930295122953054375.Spec : Prop :=
  ∀ n, P4930295122953054375.a n = A056571 n

end A056571

/-! ## A056571.P7099630564142565481

`A159864(∑[n])^4`
-/

namespace A056571.P7099630564142565481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P7099630564142565481

namespace A056571

/-- `A159864(∑[n])^4` -/
def P7099630564142565481.Spec : Prop :=
  ∀ n, P7099630564142565481.a n = A056571 n

end A056571

/-! ## A056571.P2039517484342764596

`A171731(∑[n])^4`
-/

namespace A056571.P2039517484342764596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P2039517484342764596

namespace A056571

/-- `A171731(∑[n])^4` -/
def P2039517484342764596.Spec : Prop :=
  ∀ n, P2039517484342764596.a n = A056571 n

end A056571

/-! ## A056571.P14283476578632005793

`A174430(∑[n])^4`
-/

namespace A056571.P14283476578632005793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174430 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A056571.P14283476578632005793

namespace A056571

/-- `A174430(∑[n])^4` -/
def P14283476578632005793.Spec : Prop :=
  ∀ n, P14283476578632005793.a n = A056571 n

end A056571

/-! ## A056571.P16753033826394260320

`A212804(n+1)^4`
-/

namespace A056571.P16753033826394260320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) ^ 4

end

end A056571.P16753033826394260320

namespace A056571

/-- `A212804(n+1)^4` -/
def P16753033826394260320.Spec : Prop :=
  ∀ n, P16753033826394260320.a n = A056571 n

end A056571

/-! ## A056571.P17931161362141030926

`A152163(n+2)^4`
-/

namespace A056571.P17931161362141030926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2) ^ 4

end

end A056571.P17931161362141030926

namespace A056571

/-- `A152163(n+2)^4` -/
def P17931161362141030926.Spec : Prop :=
  ∀ n, P17931161362141030926.a n = A056571 n

end A056571

/-! ## A056571.P11537663738580066548

`A053602(2*n)^4`
-/

namespace A056571.P11537663738580066548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n) ^ 4

end

end A056571.P11537663738580066548

namespace A056571

/-- `A053602(2*n)^4` -/
def P11537663738580066548.Spec : Prop :=
  ∀ n, P11537663738580066548.a n = A056571 n

end A056571

/-!
# A056572: Fifth power of Fibonacci numbers A000045.

The programs for A056572, there is no canonical definition to state claims against.
-/

/-! ## A056572.P11995031370916207606

`round(ϕ^n/sqrt(5))^5`
-/

namespace A056572.P11995031370916207606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 5

end

end A056572.P11995031370916207606

/-! ## A056572.P16871818359243053403

`abs(A236191(n)^5)`
-/

namespace A056572.P16871818359243053403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n ^ 5|

end

end A056572.P16871818359243053403

/-! ## A056572.P10261409662863060379

`A000045(n)*A056571(n)`
-/

namespace A056572.P10261409662863060379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A056571 n

end

end A056572.P10261409662863060379

/-! ## A056572.P10319721359337729016

`A007598(n)*A056570(n)`
-/

namespace A056572.P10319721359337729016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A056570 n

end

end A056572.P10319721359337729016

/-! ## A056572.P4553136633058696046

`A007598(n)²*A000045(n)`
-/

namespace A056572.P4553136633058696046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n ^ 2 * A000045 n

end

end A056572.P4553136633058696046

/-! ## A056572.P18167178929115730458

`A000045(n)²*A056570(n)`
-/

namespace A056572.P18167178929115730458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A056570 n

end

end A056572.P18167178929115730458

/-! ## A056572.P17307501242733874795

`A007598(n)²*A324969(n+1)`
-/

namespace A056572.P17307501242733874795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n ^ 2 * A324969 (n + 1)

end

end A056572.P17307501242733874795

/-! ## A056572.P2937941640599711591

`A152192(2*n)²*A212804(n+1)`
-/

namespace A056572.P2937941640599711591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (2 * n) ^ 2 * A212804 (n + 1)

end

end A056572.P2937941640599711591

/-!
# A056573: Sixth power of Fibonacci numbers A000045.

The programs for A056573, there is no canonical definition to state claims against.
-/

/-! ## A056573.P10652489179766550612

`round(ϕ^(2*n)/5)^3`
-/

namespace A056573.P10652489179766550612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n) / 5) ^ 3

end

end A056573.P10652489179766550612

/-! ## A056573.P11722709335316004821

`(∑[a(n-1)+a(n-2)]^3)²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A056573.P11722709335316004821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A056573.P11722709335316004821

/-! ## A056573.P101336757850395776

`A056570(n)²`
-/

namespace A056573.P101336757850395776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n ^ 2

end

end A056573.P101336757850395776

/-! ## A056573.P1900461898049713787

`(A000045(n)^3)²`
-/

namespace A056573.P1900461898049713787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n ^ 3) ^ 2

end

end A056573.P1900461898049713787

/-! ## A056573.P1239727643786578256

`(A115338(n²)^3)²`
-/

namespace A056573.P1239727643786578256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115338 (n ^ 2) ^ 3) ^ 2

end

end A056573.P1239727643786578256

/-! ## A056573.P9135259875842131464

`(A017125(∑[n])^3)²`
-/

namespace A056573.P9135259875842131464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017125 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A056573.P9135259875842131464

/-! ## A056573.P6941278324909253912

`(A039913(∑[n])^3)²`
-/

namespace A056573.P6941278324909253912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039913 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A056573.P6941278324909253912

/-! ## A056573.P6657568378404193773

`(A050610(∑[n])^3)²`
-/

namespace A056573.P6657568378404193773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050610 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A056573.P6657568378404193773

/-! ## A056573.P6521142190574970827

`(A094570(∑[n])^3)²`
-/

namespace A056573.P6521142190574970827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094570 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A056573.P6521142190574970827

/-! ## A056573.P5950475783671282751

`(A108037(∑[n])^3)²`
-/

namespace A056573.P5950475783671282751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108037 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A056573.P5950475783671282751

/-!
# A056574: Seventh power of Fibonacci numbers A000045.

The programs for A056574, there is no canonical definition to state claims against.
-/

/-! ## A056574.P7282252205793815002

`round(ϕ^n/sqrt(5))^7`
-/

namespace A056574.P7282252205793815002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 7

end

end A056574.P7282252205793815002

/-! ## A056574.P15254600124281368078

`abs(A236191(n)^7)`
-/

namespace A056574.P15254600124281368078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n ^ 7|

end

end A056574.P15254600124281368078

/-! ## A056574.P5654470018802075929

`abs((A157726(n)-3)^7)`
-/

namespace A056574.P5654470018802075929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A157726 n - 3) ^ 7|

end

end A056574.P5654470018802075929

/-! ## A056574.P10882581866824440890

`abs((A157727(n)-4)^7)`
-/

namespace A056574.P10882581866824440890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A157727 n - 4) ^ 7|

end

end A056574.P10882581866824440890

/-! ## A056574.P17409326660233182364

`A000045(n)*A056573(n)`
-/

namespace A056574.P17409326660233182364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A056573 n

end

end A056574.P17409326660233182364

/-! ## A056574.P4581662821385045923

`A007598(n)*A056572(n)`
-/

namespace A056574.P4581662821385045923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A056572 n

end

end A056574.P4581662821385045923

/-! ## A056574.P12989222904578656462

`A056570(n)*A056571(n)`
-/

namespace A056574.P12989222904578656462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n * A056571 n

end

end A056574.P12989222904578656462

/-! ## A056574.P1183568549238411132

`A000045(n)²*A056572(n)`
-/

namespace A056574.P1183568549238411132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A056572 n

end

end A056574.P1183568549238411132

/-! ## A056574.P3631674931474179378

`A056570(n)²*A000045(n)`
-/

namespace A056574.P3631674931474179378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n ^ 2 * A000045 n

end

end A056574.P3631674931474179378

/-!
# A056575: Series for first parallel moment of square lattice bond percolation near a wall.

The programs for A056575, there is no canonical definition to state claims against.
-/

/-! ## A056575.P9382628230538245876

`∑[A103128(A118108(n))]`
-/

namespace A056575.P9382628230538245876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A118108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056575.P9382628230538245876

/-! ## A056575.P11360431806628241040

`∑[A002024(A118108(n)-A282658(n)+1)]`
-/

namespace A056575.P11360431806628241040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A118108 n - A282658 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056575.P11360431806628241040

/-!
# A056576: Highest k with 2^k <= 3^n.

The programs for A056576, the canonical program `A056576.P14642291648903798403` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056576 has offset 0).

The definition of A056576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056576.P16407771741185727709

`A020914(n)-1`
-/

namespace A056576.P16407771741185727709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - 1

end

end A056576.P16407771741185727709

namespace A056576

/-- `A020914(n)-1` -/
def P16407771741185727709.Spec : Prop :=
  ∀ n, P16407771741185727709.a n = A056576 n

end A056576

/-! ## A056576.P15844288177344068488

`a(n-1)+A022921(n-1)` with `a(0)=0`
-/

namespace A056576.P15844288177344068488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A022921 (n - 1)

end

end A056576.P15844288177344068488

namespace A056576

/-- `a(n-1)+A022921(n-1)` -/
def P15844288177344068488.Spec : Prop :=
  ∀ n, P15844288177344068488.a n = A056576 n

end A056576

/-! ## A056576.P14642291648903798403

`floor(log2(3^n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056576

/-- `floor(log2(3^n))` -/
def P14642291648903798403.Spec : Prop :=
  ∀ n, (P14642291648903798403.a n : ℤ) = A056576 n

theorem P14642291648903798403.correct : P14642291648903798403.Spec := by
  intro n
  simp only [A056576]

end A056576

/-! ## A056576.P9781447670449865652

`comp[A117630(n+1)]`
-/

namespace A056576.P9781447670449865652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A056576.P9781447670449865652

namespace A056576

/-- `comp[A117630(n+1)]` -/
def P9781447670449865652.Spec : Prop :=
  ∀ n, (P9781447670449865652.a n : ℤ) = A056576 n

end A056576

/-! ## A056576.P8208162566655033578

`comp[A054414(n+1)-1]`
-/

namespace A056576.P8208162566655033578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A056576.P8208162566655033578

namespace A056576

/-- `comp[A054414(n+1)-1]` -/
def P8208162566655033578.Spec : Prop :=
  ∀ n, (P8208162566655033578.a n : ℤ) = A056576 n

end A056576

/-! ## A056576.P7174032995898077341

`A122437(n+1)-(n+1)`
-/

namespace A056576.P7174032995898077341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1) - (n + 1 : ℤ)

end

end A056576.P7174032995898077341

namespace A056576

/-- `A122437(n+1)-(n+1)` -/
def P7174032995898077341.Spec : Prop :=
  ∀ n, P7174032995898077341.a n = A056576 n

end A056576

/-! ## A056576.P14377669826711454346

`A204399(n)+A057428(n)`
-/

namespace A056576.P14377669826711454346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n + A057428 n

end

end A056576.P14377669826711454346

namespace A056576

/-- `A204399(n)+A057428(n)` -/
def P14377669826711454346.Spec : Prop :=
  ∀ n, P14377669826711454346.a n = A056576 n

end A056576

/-! ## A056576.P9851032268163650873

`A204399(n)-A057427(n)`
-/

namespace A056576.P9851032268163650873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n - A057427 n

end

end A056576.P9851032268163650873

namespace A056576

/-- `A204399(n)-A057427(n)` -/
def P9851032268163650873.Spec : Prop :=
  ∀ n, P9851032268163650873.a n = A056576 n

end A056576

/-! ## A056576.P17727824167803236032

`A204399(n)-A062157(n)²`
-/

namespace A056576.P17727824167803236032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n - A062157 n ^ 2

end

end A056576.P17727824167803236032

namespace A056576

/-- `A204399(n)-A062157(n)²` -/
def P17727824167803236032.Spec : Prop :=
  ∀ n, P17727824167803236032.a n = A056576 n

end A056576

/-! ## A056576.P16274057962732449549

`∑[A022921(n)]-A022921(n)`
-/

namespace A056576.P16274057962732449549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022921 n

end

end A056576.P16274057962732449549

namespace A056576

/-- `∑[A022921(n)]-A022921(n)` -/
def P16274057962732449549.Spec : Prop :=
  ∀ n, P16274057962732449549.a n = A056576 n

end A056576

/-! ## A056576.P837351067506647238

`A011754(n)+A118736(n)-1`
-/

namespace A056576.P837351067506647238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011754 n + (A118736 n - 1)

end

end A056576.P837351067506647238

namespace A056576

/-- `A011754(n)+A118736(n)-1` -/
def P837351067506647238.Spec : Prop :=
  ∀ n, P837351067506647238.a n = A056576 n

end A056576

/-! ## A056576.P3050269021696175837

`record[n*A022924(n)]`
-/

namespace A056576.P3050269021696175837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056576.P3050269021696175837

namespace A056576

/-- `record[n*A022924(n)]` -/
def P3050269021696175837.Spec : Prop :=
  ∀ n, P3050269021696175837.a n = A056576 n

end A056576

/-! ## A056576.P4315753787327793501

`record[n*Δ[A020915(n)]]`
-/

namespace A056576.P4315753787327793501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056576.P4315753787327793501

namespace A056576

/-- `record[n*Δ[A020915(n)]]` -/
def P4315753787327793501.Spec : Prop :=
  ∀ n, P4315753787327793501.a n = A056576 n

end A056576

/-! ## A056576.P15426628664095159780

`eq[A022924(n), A294619(n)]`
-/

namespace A056576.P15426628664095159780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056576.P15426628664095159780

namespace A056576

/-- `eq[A022924(n), A294619(n)]` -/
def P15426628664095159780.Spec : Prop :=
  ∀ n, (P15426628664095159780.a n : ℤ) = A056576 n

end A056576

/-! ## A056576.P14445373643862498676

`record[n*(A020915(n+1)-A020915(n))]`
-/

namespace A056576.P14445373643862498676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A020915 (n + 1) - A020915 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056576.P14445373643862498676

namespace A056576

/-- `record[n*(A020915(n+1)-A020915(n))]` -/
def P14445373643862498676.Spec : Prop :=
  ∀ n, P14445373643862498676.a n = A056576 n

end A056576

/-! ## A056576.P13499488897874887624

`A023443(A020914(n))`
-/

namespace A056576.P13499488897874887624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020914 n).toNat

end

end A056576.P13499488897874887624

namespace A056576

/-- `A023443(A020914(n))` -/
def P13499488897874887624.Spec : Prop :=
  ∀ n, P13499488897874887624.a n = A056576 n

end A056576

/-! ## A056576.P1902199986122752910

`A023443(A122437(n+1)-n)`
-/

namespace A056576.P1902199986122752910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122437 (n + 1) - (n : ℤ)).toNat

end

end A056576.P1902199986122752910

namespace A056576

/-- `A023443(A122437(n+1)-n)` -/
def P1902199986122752910.Spec : Prop :=
  ∀ n, P1902199986122752910.a n = A056576 n

end A056576

/-! ## A056576.P1380011608425106176

`A204399(n)-A122458(2*n)`
-/

namespace A056576.P1380011608425106176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n - A122458 (2 * n)

end

end A056576.P1380011608425106176

namespace A056576

/-- `A204399(n)-A122458(2*n)` -/
def P1380011608425106176.Spec : Prop :=
  ∀ n, P1380011608425106176.a n = A056576 n

end A056576

/-! ## A056576.P12979771099976462022

`log2(A098232(n))`
-/

namespace A056576.P12979771099976462022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A098232 n : ℝ)

end

end A056576.P12979771099976462022

namespace A056576

/-- `log2(A098232(n))` -/
def P12979771099976462022.Spec : Prop :=
  ∀ n, P12979771099976462022.a n = (A056576 n : ℝ)

end A056576

/-!
# A056577: Difference between 3^n and highest power of 2 less than or equal to 3^n.

The programs for A056577, the canonical program `A056577.P8260579662879417474` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056577 has offset 0).

The definition of A056577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056577.P8260579662879417474

`3^n-2^floor(log2(3^n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056577

/-- `3^n-2^floor(log2(3^n))` -/
def P8260579662879417474.Spec : Prop :=
  ∀ n, P8260579662879417474.a n = A056577 n

theorem P8260579662879417474.correct : P8260579662879417474.Spec := by
  intro n
  simp only [A056577]

end A056577

/-! ## A056577.P5198037963113146094

`A063004(A056576(n))`
-/

namespace A056577.P5198037963113146094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063004 (A056576 n).toNat

end

end A056577.P5198037963113146094

namespace A056577

/-- `A063004(A056576(n))` -/
def P5198037963113146094.Spec : Prop :=
  ∀ n, P5198037963113146094.a n = A056577 n

end A056577

/-! ## A056577.P3572324980856825140

`A000244(n)%A098232(n)`
-/

namespace A056577.P3572324980856825140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A098232 n)

end

end A056577.P3572324980856825140

namespace A056577

/-- `A000244(n)%A098232(n)` -/
def P3572324980856825140.Spec : Prop :=
  ∀ n, P3572324980856825140.a n = A056577 n

end A056577

/-! ## A056577.P16681037616457989544

`A074605(n)%A098232(n)`
-/

namespace A056577.P16681037616457989544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074605 n) (A098232 n)

end

end A056577.P16681037616457989544

namespace A056577

/-- `A074605(n)%A098232(n)` -/
def P16681037616457989544.Spec : Prop :=
  ∀ n, P16681037616457989544.a n = A056577 n

end A056577

/-! ## A056577.P8037445308557258003

`A086093(n)%A098232(n)`
-/

namespace A056577.P8037445308557258003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086093 n) (A098232 n)

end

end A056577.P8037445308557258003

namespace A056577

/-- `A086093(n)%A098232(n)` -/
def P8037445308557258003.Spec : Prop :=
  ∀ n, P8037445308557258003.a n = A056577 n

end A056577

/-! ## A056577.P8930494870111396721

`A001047(A056576(n))%A008776(n)`
-/

namespace A056577.P8930494870111396721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001047 (A056576 n).toNat) (A008776 n)

end

end A056577.P8930494870111396721

namespace A056577

/-- `A001047(A056576(n))%A008776(n)` -/
def P8930494870111396721.Spec : Prop :=
  ∀ n, P8930494870111396721.a n = A056577 n

end A056577

/-! ## A056577.P15485171457304106656

`A227048(A022330(n)-A020914(n))`
-/

namespace A056577.P15485171457304106656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 (A022330 n - A020914 n).toNat

end

end A056577.P15485171457304106656

namespace A056577

/-- `A227048(A022330(n)-A020914(n))` -/
def P15485171457304106656.Spec : Prop :=
  ∀ n, P15485171457304106656.a n = A056577 n

end A056577

/-! ## A056577.P16638745353289380059

`A227048(∑[A020914(n)]-A020914(n))`
-/

namespace A056577.P16638745353289380059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 (∑ j ∈ Finset.range (n + 1), f1 j - A020914 n).toNat

end

end A056577.P16638745353289380059

namespace A056577

/-- `A227048(∑[A020914(n)]-A020914(n))` -/
def P16638745353289380059.Spec : Prop :=
  ∀ n, P16638745353289380059.a n = A056577 n

end A056577

/-! ## A056577.P16580309010237211248

`A227048(A022330(n)-(A056576(n)+1))`
-/

namespace A056577.P16580309010237211248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 (A022330 n - (A056576 n + 1)).toNat

end

end A056577.P16580309010237211248

namespace A056577

/-- `A227048(A022330(n)-(A056576(n)+1))` -/
def P16580309010237211248.Spec : Prop :=
  ∀ n, P16580309010237211248.a n = A056577 n

end A056577

/-! ## A056577.P4030572553390627197

`A227048(A022330(n)-1-A056576(n))`
-/

namespace A056577.P4030572553390627197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 (A022330 n - 1 - A056576 n).toNat

end

end A056577.P4030572553390627197

namespace A056577

/-- `A227048(A022330(n)-1-A056576(n))` -/
def P4030572553390627197.Spec : Prop :=
  ∀ n, P4030572553390627197.a n = A056577 n

end A056577

/-! ## A056577.P14705125425260616968

`A227048(A022330(n)-A122437(n+1)+n)`
-/

namespace A056577.P14705125425260616968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 (A022330 n - A122437 (n + 1) + (n : ℤ)).toNat

end

end A056577.P14705125425260616968

namespace A056577

/-- `A227048(A022330(n)-A122437(n+1)+n)` -/
def P14705125425260616968.Spec : Prop :=
  ∀ n, P14705125425260616968.a n = A056577 n

end A056577

/-!
# A056578: a(n) = 1 + 2*n + 3*n^2 + 4*n^3.

The programs for A056578, the canonical program `A056578.P9350945664084925479` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056578 has offset 0).

The definition of A056578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*n+3*n²+4*n^3` (program `A056578.P9350945664084925479`, by `A056578.P9350945664084925479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056578.P9350945664084925479

`1+2*n+3*n²+4*n^3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056578

/-- `1+2*n+3*n²+4*n^3` -/
def P9350945664084925479.Spec : Prop :=
  ∀ n, (P9350945664084925479.a n : ℤ) = A056578 n

theorem P9350945664084925479.correct : P9350945664084925479.Spec := by
  intro n
  simp only [A056578]

end A056578

/-! ## A056578.P14097019239055803390

`∑[∑[a(n-1)+24]]` with `a(0)=1, a(1)=8, a(2)=30`
-/

namespace A056578.P14097019239055803390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 30] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056578.P14097019239055803390

namespace A056578

/-- `∑[∑[a(n-1)+24]]` -/
def P14097019239055803390.Spec : Prop :=
  ∀ n, (P14097019239055803390.a n : ℤ) = A056578 n

end A056578

/-! ## A056578.P5199235956271543687

`abs(A033430(n)+Δ[n^3]-n)`
-/

namespace A056578.P5199235956271543687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033430 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A056578.P5199235956271543687

namespace A056578

/-- `abs(A033430(n)+Δ[n^3]-n)` -/
def P5199235956271543687.Spec : Prop :=
  ∀ n, P5199235956271543687.a n = A056578 n

end A056578

/-! ## A056578.P2234468290686890695

`abs(A005898(n)+2*n^3-n)`
-/

namespace A056578.P2234468290686890695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005898 n + ((2 * n ^ 3 : ℤ) - (n : ℤ))|

end

end A056578.P2234468290686890695

namespace A056578

/-- `abs(A005898(n)+2*n^3-n)` -/
def P2234468290686890695.Spec : Prop :=
  ∀ n, P2234468290686890695.a n = A056578 n

end A056578

/-! ## A056578.P4288405714637752529

`Δ[A085537(n)+A000217(n)]`
-/

namespace A056578.P4288405714637752529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056578.P4288405714637752529

namespace A056578

/-- `Δ[A085537(n)+A000217(n)]` -/
def P4288405714637752529.Spec : Prop :=
  ∀ n, P4288405714637752529.a n = A056578 n

end A056578

/-! ## A056578.P9730017534553018484

`floor(A168574(n)+A168574(n)/2)`
-/

namespace A056578.P9730017534553018484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168574 n : ℚ) + (A168574 n : ℚ) / 2⌋

end

end A056578.P9730017534553018484

namespace A056578

/-- `floor(A168574(n)+A168574(n)/2)` -/
def P9730017534553018484.Spec : Prop :=
  ∀ n, P9730017534553018484.a n = A056578 n

end A056578

/-! ## A056578.P14513387452297794496

`Δ[n²²-A081441(n)]`
-/

namespace A056578.P14513387452297794496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A081441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056578.P14513387452297794496

namespace A056578

/-- `Δ[n²²-A081441(n)]` -/
def P14513387452297794496.Spec : Prop :=
  ∀ n, P14513387452297794496.a n = A056578 n

end A056578

/-! ## A056578.P7479713402514366770

`Δ[n²²-A160378(n)]`
-/

namespace A056578.P7479713402514366770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A160378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056578.P7479713402514366770

namespace A056578

/-- `Δ[n²²-A160378(n)]` -/
def P7479713402514366770.Spec : Prop :=
  ∀ n, P7479713402514366770.a n = A056578 n

end A056578

/-! ## A056578.P4941904307104369908

`Δ[A167499(n)+A138849(n+1)]`
-/

namespace A056578.P4941904307104369908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + A138849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056578.P4941904307104369908

namespace A056578

/-- `Δ[A167499(n)+A138849(n+1)]` -/
def P4941904307104369908.Spec : Prop :=
  ∀ n, P4941904307104369908.a n = A056578 n

end A056578

/-! ## A056578.P4501486808180688434

`record[∑[(-1)^n*n^3]+n+1]`
-/

namespace A056578.P4501486808180688434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (n ^ 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056578.P4501486808180688434

namespace A056578

/-- `record[∑[(-1)^n*n^3]+n+1]` -/
def P4501486808180688434.Spec : Prop :=
  ∀ n, P4501486808180688434.a n = A056578 n

end A056578

/-! ## A056578.P15434293022078549426

`∑[or(1, A077588(2*n))]`
-/

namespace A056578.P15434293022078549426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077588 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056578.P15434293022078549426

namespace A056578

/-- `∑[or(1, A077588(2*n))]` -/
def P15434293022078549426.Spec : Prop :=
  ∀ n, P15434293022078549426.a n = A056578 n

end A056578

/-! ## A056578.P8856321543101357482

`(A011379(2*n)+A001105(n+1))/2`
-/

namespace A056578.P8856321543101357482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011379 (2 * n) + A001105 (n + 1) : ℚ) / 2

end

end A056578.P8856321543101357482

namespace A056578

/-- `(A011379(2*n)+A001105(n+1))/2` -/
def P8856321543101357482.Spec : Prop :=
  ∀ n, P8856321543101357482.a n = (A056578 n : ℚ)

end A056578

/-!
# A056579: a(n) = 1+2n+3n^2+4n^3+5n^4.

The programs for A056579, the canonical program `A056579.P10878119221406502528` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056579 has offset 0).

The definition of A056579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*n+3*n²+4*n^3+5*n^4` (program `A056579.P10878119221406502528`, by `A056579.P10878119221406502528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056579.P10878119221406502528

`1+2*n+3*n²+4*n^3+5*n^4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056579

/-- `1+2*n+3*n²+4*n^3+5*n^4` -/
def P10878119221406502528.Spec : Prop :=
  ∀ n, (P10878119221406502528.a n : ℤ) = A056579 n

theorem P10878119221406502528.correct : P10878119221406502528.Spec := by
  intro n
  simp only [A056579]

end A056579

/-! ## A056579.P11510174177544545903

`ceil(A209263(n)/A028310(n))`
-/

namespace A056579.P11510174177544545903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209263 n : ℚ) / (A028310 n : ℚ)⌉

end

end A056579.P11510174177544545903

namespace A056579

/-- `ceil(A209263(n)/A028310(n))` -/
def P11510174177544545903.Spec : Prop :=
  ∀ n, P11510174177544545903.a n = A056579 n

end A056579

/-! ## A056579.P14377908141694200164

`floor(-A209263(n)/A028310(n))*A057428(n+1)`
-/

namespace A056579.P14377908141694200164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((A209263 n : ℚ) / (A028310 n : ℚ))⌋ * A057428 (n + 1)

end

end A056579.P14377908141694200164

namespace A056579

/-- `floor(-A209263(n)/A028310(n))*A057428(n+1)` -/
def P14377908141694200164.Spec : Prop :=
  ∀ n, P14377908141694200164.a n = A056579 n

end A056579

/-! ## A056579.P6792627294659436349

`ceil(A209263(n)/A003056(A000124(n)))`
-/

namespace A056579.P6792627294659436349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209263 n : ℚ) / (A003056 (A000124 n).toNat : ℚ)⌉

end

end A056579.P6792627294659436349

namespace A056579

/-- `ceil(A209263(n)/A003056(A000124(n)))` -/
def P6792627294659436349.Spec : Prop :=
  ∀ n, P6792627294659436349.a n = A056579 n

end A056579

/-! ## A056579.P8460118174183424655

`A059045(eq[5, A025581(n)])`
-/

namespace A056579.P8460118174183424655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056579.P8460118174183424655

namespace A056579

/-- `A059045(eq[5, A025581(n)])` -/
def P8460118174183424655.Spec : Prop :=
  ∀ n, P8460118174183424655.a n = A056579 n

end A056579

/-!
# A056580: a(n) = round(e^(Pi*sqrt(n))).

The programs for A056580, there is no canonical definition to state claims against.
-/

/-! ## A056580.P16121261917897218417

`floor(A060456(4*n)/A060456(n))`
-/

namespace A056580.P16121261917897218417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060456 (4 * n) : ℚ) / (A060456 n : ℚ)⌋

end

end A056580.P16121261917897218417

/-! ## A056580.P3152394334184253235

`round(sqrt(A060456(4*n)+A000010(n+1)))`
-/

namespace A056580.P3152394334184253235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A060456 (4 * n) + A000010 (n + 1) : ℝ))

end

end A056580.P3152394334184253235

/-! ## A056580.P381532932910333796

`round(sqrt(A060456(4*n)+A006530(n+1)))`
-/

namespace A056580.P381532932910333796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A060456 (4 * n) + A006530 (n + 1) : ℝ))

end

end A056580.P381532932910333796

/-! ## A056580.P1654837083388928150

`round(sqrt(A060456(4*n)-(n-1)-A008574(n)))`
-/

namespace A056580.P1654837083388928150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A060456 (4 * n) - ((n : ℤ) - 1) - A008574 n : ℝ))

end

end A056580.P1654837083388928150

/-! ## A056580.P10248793397070436260

`ceil(A060456(4*n)/A060456(n)-A057427(n))`
-/

namespace A056580.P10248793397070436260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060456 (4 * n) : ℚ) / (A060456 n : ℚ) - (A057427 n : ℚ)⌉

end

end A056580.P10248793397070436260

/-! ## A056580.P2261779833579602546

`round(sqrt(sqrt(A027655(4*n))))`
-/

namespace A056580.P2261779833579602546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A027655 (4 * n) : ℝ)))

end

end A056580.P2261779833579602546

/-!
# A056582: Highest common factor (or GCD) of n^n and hyperfactorial(n-1), i.e., gcd(n^n, product(k^k) for k < n).

The programs for A056582, there is no canonical definition to state claims against.
-/

/-! ## A056582.P4314920280745426205

`sqrt(gcd((n+2)², n!))^(n+2)`
-/

namespace A056582.P4314920280745426205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.gcd ((n + 2) ^ 2) (Nat.factorial n) : ℝ) ^ (n + 2)

end

end A056582.P4314920280745426205

/-! ## A056582.P15465976786108402148

`gcd((n+2)^(n+2), ∏[(n+1)!])`
-/

namespace A056582.P15465976786108402148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) ^ (n + 2)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A056582.P15465976786108402148

/-! ## A056582.P14906732078975002655

`gcd(∏[∏[n+1]], A000312(n+2))`
-/

namespace A056582.P14906732078975002655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000312 (n + 2))

end

end A056582.P14906732078975002655

/-! ## A056582.P12541774774326161403

`gcd((n+2)^(n+2), ∏[n^n])`
-/

namespace A056582.P12541774774326161403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) ^ (n + 2)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A056582.P12541774774326161403

/-!
# A056585: Eighth power of Fibonacci numbers A000045.

The programs for A056585, there is no canonical definition to state claims against.
-/

/-! ## A056585.P7525713445084899610

`round(ϕ^(2*n)/5)^4`
-/

namespace A056585.P7525713445084899610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n) / 5) ^ 4

end

end A056585.P7525713445084899610

/-! ## A056585.P10624895217133379002

`Δ[a(n-1)+a(n-2)]²²²` with `a(0)=1, a(1)=1`
-/

namespace A056585.P10624895217133379002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A056585.P10624895217133379002

/-! ## A056585.P1285388461504834559

`∑[a(n-1)+a(n-2)]²²²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A056585.P1285388461504834559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A056585.P1285388461504834559

/-! ## A056585.P5095969147880688811

`A056571(n)²`
-/

namespace A056585.P5095969147880688811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056571 n ^ 2

end

end A056585.P5095969147880688811

/-! ## A056585.P4495877744311025576

`A007598(n)²²`
-/

namespace A056585.P4495877744311025576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007598 n ^ 2) ^ 2

end

end A056585.P4495877744311025576

/-! ## A056585.P17357436082583220830

`A000045(n)²²²`
-/

namespace A056585.P17357436082583220830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000045 n ^ 2) ^ 2) ^ 2

end

end A056585.P17357436082583220830

/-! ## A056585.P7872600817530620452

`A236191(n)²²²`
-/

namespace A056585.P7872600817530620452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A236191 n ^ 2) ^ 2) ^ 2

end

end A056585.P7872600817530620452

/-! ## A056585.P17694972711364320844

`A333378(n)²²²`
-/

namespace A056585.P17694972711364320844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A333378 n ^ 2) ^ 2) ^ 2

end

end A056585.P17694972711364320844

/-! ## A056585.P2665107628264987045

`(1-A245306(n))²²`
-/

namespace A056585.P2665107628264987045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A245306 n) ^ 2) ^ 2

end

end A056585.P2665107628264987045

/-!
# A056586: Ninth power of Fibonacci numbers A000045.

The programs for A056586, there is no canonical definition to state claims against.
-/

/-! ## A056586.P17150130972306945484

`round(ϕ^n/sqrt(5))^9`
-/

namespace A056586.P17150130972306945484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 9

end

end A056586.P17150130972306945484

/-! ## A056586.P5943709360968148589

`abs(A236191(n)^9)`
-/

namespace A056586.P5943709360968148589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n ^ 9|

end

end A056586.P5943709360968148589

/-! ## A056586.P16915204110617185649

`abs((A001611(n)-1)^9)`
-/

namespace A056586.P16915204110617185649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A001611 n - 1) ^ 9|

end

end A056586.P16915204110617185649

/-! ## A056586.P13295974265221244275

`abs((A157725(n)-2)^9)`
-/

namespace A056586.P13295974265221244275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A157725 n - 2) ^ 9|

end

end A056586.P13295974265221244275

/-! ## A056586.P13170324894646657788

`A000045(n)*A056585(n)`
-/

namespace A056586.P13170324894646657788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A056585 n

end

end A056586.P13170324894646657788

/-! ## A056586.P3896427196307492113

`A007598(n)*A056574(n)`
-/

namespace A056586.P3896427196307492113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A056574 n

end

end A056586.P3896427196307492113

/-! ## A056586.P7284345623354049643

`A056570(n)*A056573(n)`
-/

namespace A056586.P7284345623354049643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n * A056573 n

end

end A056586.P7284345623354049643

/-! ## A056586.P3863801154253427539

`A056571(n)*A056572(n)`
-/

namespace A056586.P3863801154253427539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056571 n * A056572 n

end

end A056586.P3863801154253427539

/-! ## A056586.P9238128814939955945

`A056571(n)²*A000045(n)`
-/

namespace A056586.P9238128814939955945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056571 n ^ 2 * A000045 n

end

end A056586.P9238128814939955945

/-!
# A056587: Tenth power of Fibonacci numbers A000045.

The programs for A056587, there is no canonical definition to state claims against.
-/

/-! ## A056587.P658954538454324388

`round(ϕ^n/sqrt(5))^10`
-/

namespace A056587.P658954538454324388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 10

end

end A056587.P658954538454324388

/-! ## A056587.P10564130710916488806

`(∑[a(n-1)+a(n-2)]^5)²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A056587.P10564130710916488806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 5) ^ 2

end

end A056587.P10564130710916488806

/-! ## A056587.P3776876326092806987

`A056572(n)²`
-/

namespace A056587.P3776876326092806987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 n ^ 2

end

end A056587.P3776876326092806987

/-! ## A056587.P10531863203230926369

`(A000045(n)^5)²`
-/

namespace A056587.P10531863203230926369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n ^ 5) ^ 2

end

end A056587.P10531863203230926369

/-! ## A056587.P5560812004427808677

`(A236191(n)^5)²`
-/

namespace A056587.P5560812004427808677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236191 n ^ 5) ^ 2

end

end A056587.P5560812004427808677

/-! ## A056587.P3642697835955848992

`(A333378(n)^5)²`
-/

namespace A056587.P3642697835955848992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333378 n ^ 5) ^ 2

end

end A056587.P3642697835955848992

/-! ## A056587.P15961425163288132660

`(A212804(n+1)^5)²`
-/

namespace A056587.P15961425163288132660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 1) ^ 5) ^ 2

end

end A056587.P15961425163288132660

/-! ## A056587.P17193405266431056994

`A000045(n)*A056586(n)`
-/

namespace A056587.P17193405266431056994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A056586 n

end

end A056587.P17193405266431056994

/-! ## A056587.P17871718019616842878

`A007598(n)*A056585(n)`
-/

namespace A056587.P17871718019616842878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A056585 n

end

end A056587.P17871718019616842878

/-!
# A056588: Coefficient triangle of certain polynomials.

The programs for A056588, there is no canonical definition to state claims against.
-/

/-! ## A056588.P15358432383602804644

`A087960(A002262(n))*A126770(n)`
-/

namespace A056588.P15358432383602804644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A002262 n).toNat * A126770 n

end

end A056588.P15358432383602804644

/-! ## A056588.P43308990598650812

`A033999(A112367(n))*A126770(n)`
-/

namespace A056588.P43308990598650812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A112367 n).toNat * A126770 n

end

end A056588.P43308990598650812

/-! ## A056588.P6608992281459892516

`A087960(A112367(n)²)*A126770(n)`
-/

namespace A056588.P6608992281459892516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A112367 n ^ 2).toNat * A126770 n

end

end A056588.P6608992281459892516

/-! ## A056588.P10625273162313179239

`A126770(n)/A033999(A112367(n)²)`
-/

namespace A056588.P10625273162313179239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126770 n : ℚ) / (A033999 (A112367 n ^ 2).toNat : ℚ)

end

end A056588.P10625273162313179239

/-! ## A056588.P2471420329641464464

`A057077(A002260(n+1))*A126770(n)`
-/

namespace A056588.P2471420329641464464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002260 (n + 1)).toNat * A126770 n

end

end A056588.P2471420329641464464

/-! ## A056588.P15862744083919409947

`A087960(2*A112367(n))*A126770(n)`
-/

namespace A056588.P15862744083919409947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * A112367 n).toNat * A126770 n

end

end A056588.P15862744083919409947

/-! ## A056588.P15237703163436392110

`A010048(n)/A055870(n)*A126770(n)`
-/

namespace A056588.P15237703163436392110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010048 n : ℚ) / (A055870 n : ℚ) * (A126770 n : ℚ)

end

end A056588.P15237703163436392110

/-!
# A056589: Third column sequence of unsigned triangle A056588.

The programs for A056589, the canonical program `A056589.P15592213776661028417` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056589 has offset 0).

The definition of A056589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056589.P1159022575809486648

`A143212(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A056589.P1159022575809486648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143212 (n + 1) + 2 * a (n - 1)

end

end A056589.P1159022575809486648

namespace A056589

/-- `A143212(n+1)+2*a(n-1)` -/
def P1159022575809486648.Spec : Prop :=
  ∀ n, P1159022575809486648.a n = A056589 n

end A056589

/-! ## A056589.P15592213776661028417

`A094687(n+2)-(A094687(n+4)-A001654(n+3))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056589

/-- `A094687(n+2)-(A094687(n+4)-A001654(n+3))` -/
def P15592213776661028417.Spec : Prop :=
  ∀ n, P15592213776661028417.a n = A056589 n

theorem P15592213776661028417.correct : P15592213776661028417.Spec := by
  intro n
  simp only [A056589]

end A056589

/-! ## A056589.P7543948393867580166

`-A056588(A133263(n+2))`
-/

namespace A056589.P7543948393867580166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056588 (A133263 (n + 2)).toNat

end

end A056589.P7543948393867580166

namespace A056589

/-- `-A056588(A133263(n+2))` -/
def P7543948393867580166.Spec : Prop :=
  ∀ n, P7543948393867580166.a n = A056589 n

end A056589

/-! ## A056589.P5689752528421919183

`abs(A056588(∑[n+3]))`
-/

namespace A056589.P5689752528421919183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056588 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A056589.P5689752528421919183

namespace A056589

/-- `abs(A056588(∑[n+3]))` -/
def P5689752528421919183.Spec : Prop :=
  ∀ n, P5689752528421919183.a n = A056589 n

end A056589

/-! ## A056589.P8359252614328498361

`record[gcd(A056588(n), A092921(n+2))]`
-/

namespace A056589.P8359252614328498361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056588 n) (A092921 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056589.P8359252614328498361

namespace A056589

/-- `record[gcd(A056588(n), A092921(n+2))]` -/
def P8359252614328498361.Spec : Prop :=
  ∀ n, (P8359252614328498361.a n : ℤ) = A056589 n

end A056589

/-!
# A056590: Fourth column sequence of triangle A056588.

The programs for A056590, there is no canonical definition to state claims against.
-/

/-! ## A056590.P6094621139340469464

`A056588(A167614(n+2))`
-/

namespace A056590.P6094621139340469464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (A167614 (n + 2)).toNat

end

end A056590.P6094621139340469464

/-! ## A056590.P8367033153786275202

`A056588(A052905(n)+8)`
-/

namespace A056590.P8367033153786275202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (A052905 n + 8).toNat

end

end A056590.P8367033153786275202

/-! ## A056590.P17891973358431027531

`A056588(A055999(n)+9)`
-/

namespace A056590.P17891973358431027531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (A055999 n + 9).toNat

end

end A056590.P17891973358431027531

/-! ## A056590.P879124007121003620

`A056588(eq[2, A141169(n)])`
-/

namespace A056590.P879124007121003620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056590.P879124007121003620

/-! ## A056590.P14669914376987570641

`A056588(eq[3, A002262(n)])`
-/

namespace A056590.P14669914376987570641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056590.P14669914376987570641

/-!
# A056591: Fifth column sequence of triangle A056588.

The programs for A056591, there is no canonical definition to state claims against.
-/

/-! ## A056591.P12029122907585324278

`A056588(A155212(n)+12)`
-/

namespace A056591.P12029122907585324278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (A155212 n + 12).toNat

end

end A056591.P12029122907585324278

/-! ## A056591.P17929079037711809521

`A056588(A056000(n)+14)`
-/

namespace A056591.P17929079037711809521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (A056000 n + 14).toNat

end

end A056591.P17929079037711809521

/-! ## A056591.P2909348650849896575

`A056588(eq[3, A141169(n)])`
-/

namespace A056591.P2909348650849896575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056591.P2909348650849896575

/-! ## A056591.P6957186031896799607

`A056588(eq[4, A002262(n)])`
-/

namespace A056591.P6957186031896799607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056591.P6957186031896799607

/-! ## A056591.P17200984306149968786

`A056588(eq[5, A002260(n+1)])`
-/

namespace A056591.P17200984306149968786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056591.P17200984306149968786

/-!
# A056593: Row sums of unsigned triangle A056588.

The programs for A056593, there is no canonical definition to state claims against.
-/

/-! ## A056593.P9798641722103411290

`∑[A108954(A224287(n+1))]`
-/

namespace A056593.P9798641722103411290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A224287 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056593.P9798641722103411290

/-! ## A056593.P12593782058364174953

`A020639(A007613(n))*A091139(n)`
-/

namespace A056593.P12593782058364174953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007613 n).toNat * A091139 n

end

end A056593.P12593782058364174953

/-! ## A056593.P15021615945156217035

`A020639(A025540(n))*A091139(n)`
-/

namespace A056593.P15021615945156217035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025540 n).toNat * A091139 n

end

end A056593.P15021615945156217035

/-!
# A056594: Period 4: repeat [1,0,-1,0]; expansion of 1/(1 + x^2).

The programs for A056594, the canonical program `A056594.P16236062631889685808` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056594 has offset 0).

The definition of A056594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056594.P16236062631889685808

`a(n-4)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056594

/-- `a(n-4)` -/
def P16236062631889685808.Spec : Prop :=
  ∀ n, P16236062631889685808.a n = A056594 n

theorem P16236062631889685808.correct : P16236062631889685808.Spec := by
  intro n
  simp only [A056594]

end A056594

/-!
# A056595: Number of nonsquare divisors of n.

The programs for A056595, the canonical program `A056595.P6705739557680561554` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056595 has offset 1).

The definition of A056595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056595.P14242287842452137538

`A000005(n+1)-A046951(n+1)`
-/

namespace A056595.P14242287842452137538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A046951 (n + 1)

end

end A056595.P14242287842452137538

namespace A056595

/-- `A000005(n+1)-A046951(n+1)` -/
def P14242287842452137538.Spec : Prop :=
  ∀ n, P14242287842452137538.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P17735608041957830303

`A293575(n+1)+1`
-/

namespace A056595.P17735608041957830303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293575 (n + 1) + 1

end

end A056595.P17735608041957830303

namespace A056595

/-- `A293575(n+1)+1` -/
def P17735608041957830303.Spec : Prop :=
  ∀ n, P17735608041957830303.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P1681986144172902887

`val(A293514(n+1), 2)`
-/

namespace A056595.P1681986144172902887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293514 (n + 1)).toNat 2

end

end A056595.P1681986144172902887

namespace A056595

/-- `val(A293514(n+1), 2)` -/
def P1681986144172902887.Spec : Prop :=
  ∀ n, (P1681986144172902887.a n : ℤ) = A056595 (n + 1)

end A056595

/-! ## A056595.P6705739557680561554

`∑{d}[n+1, A049240(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056595

/-- `∑{d}[n+1, A049240(#)]` -/
def P6705739557680561554.Spec : Prop :=
  ∀ n, P6705739557680561554.a n = A056595 (n + 1)

theorem P6705739557680561554.correct : P6705739557680561554.Spec := by
  intro n
  simp only [A056595, Nat.add_sub_cancel]

end A056595

/-! ## A056595.P8576778343514629868

`∑{d}[n+1, A267635(#)]`
-/

namespace A056595.P8576778343514629868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267635 d

end

end A056595.P8576778343514629868

namespace A056595

/-- `∑{d}[n+1, A267635(#)]` -/
def P8576778343514629868.Spec : Prop :=
  ∀ n, P8576778343514629868.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P10185068681343093770

`Δ[A006218(n)]-A046951(n+1)`
-/

namespace A056595.P10185068681343093770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046951 (n + 1)

end

end A056595.P10185068681343093770

namespace A056595

/-- `Δ[A006218(n)]-A046951(n+1)` -/
def P10185068681343093770.Spec : Prop :=
  ∀ n, P10185068681343093770.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P7309984079905940761

`A262202(n+1)+A056924(n+1)`
-/

namespace A056595.P7309984079905940761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (n + 1) + A056924 (n + 1)

end

end A056595.P7309984079905940761

namespace A056595

/-- `A262202(n+1)+A056924(n+1)` -/
def P7309984079905940761.Spec : Prop :=
  ∀ n, P7309984079905940761.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P10387410743671343839

`A349330(n+1)-A035316(n+1)`
-/

namespace A056595.P10387410743671343839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349330 (n + 1) - A035316 (n + 1)

end

end A056595.P10387410743671343839

namespace A056595

/-- `A349330(n+1)-A035316(n+1)` -/
def P10387410743671343839.Spec : Prop :=
  ∀ n, P10387410743671343839.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P11285014743704192550

`A338228(n+1)-A049820(n+1)`
-/

namespace A056595.P11285014743704192550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (n + 1) - A049820 (n + 1)

end

end A056595.P11285014743704192550

namespace A056595

/-- `A338228(n+1)-A049820(n+1)` -/
def P11285014743704192550.Spec : Prop :=
  ∀ n, P11285014743704192550.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P10288763974694926342

`A046951(n+1)-A347992(n+1)`
-/

namespace A056595.P10288763974694926342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A347992 (n + 1)

end

end A056595.P10288763974694926342

namespace A056595

/-- `A046951(n+1)-A347992(n+1)` -/
def P10288763974694926342.Spec : Prop :=
  ∀ n, P10288763974694926342.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P1331530780593367670

`A332932(n+1)-A086671(n+1)`
-/

namespace A056595.P1331530780593367670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332932 (n + 1) - A086671 (n + 1)

end

end A056595.P1331530780593367670

namespace A056595

/-- `A332932(n+1)-A086671(n+1)` -/
def P1331530780593367670.Spec : Prop :=
  ∀ n, P1331530780593367670.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P6313436312624860306

`A332935(n+1)-A332933(n+1)`
-/

namespace A056595.P6313436312624860306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332935 (n + 1) - A332933 (n + 1)

end

end A056595.P6313436312624860306

namespace A056595

/-- `A332935(n+1)-A332933(n+1)` -/
def P6313436312624860306.Spec : Prop :=
  ∀ n, P6313436312624860306.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P18251603199122704974

`A000005(n+1)-(A071325(n+1)+1)`
-/

namespace A056595.P18251603199122704974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A071325 (n + 1) + 1)

end

end A056595.P18251603199122704974

namespace A056595

/-- `A000005(n+1)-(A071325(n+1)+1)` -/
def P18251603199122704974.Spec : Prop :=
  ∀ n, P18251603199122704974.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P7026909548782012130

`A338228(n+1)+1-A062968(n+1)`
-/

namespace A056595.P7026909548782012130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (n + 1) + (1 - A062968 (n + 1))

end

end A056595.P7026909548782012130

namespace A056595

/-- `A338228(n+1)+1-A062968(n+1)` -/
def P7026909548782012130.Spec : Prop :=
  ∀ n, P7026909548782012130.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P7308268240779956188

`A071325(n+1)+1-A347992(n+1)`
-/

namespace A056595.P7308268240779956188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) + (1 - A347992 (n + 1))

end

end A056595.P7308268240779956188

namespace A056595

/-- `A071325(n+1)+1-A347992(n+1)` -/
def P7308268240779956188.Spec : Prop :=
  ∀ n, P7308268240779956188.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P1112547285226375403

`2*A056924(n+1)-A293234(n+1)`
-/

namespace A056595.P1112547285226375403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056924 (n + 1) - A293234 (n + 1)

end

end A056595.P1112547285226375403

namespace A056595

/-- `2*A056924(n+1)-A293234(n+1)` -/
def P1112547285226375403.Spec : Prop :=
  ∀ n, P1112547285226375403.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P16204665838832214021

`n+1-A049820(n+1)-A046951(n+1)`
-/

namespace A056595.P16204665838832214021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049820 (n + 1) - A046951 (n + 1)

end

end A056595.P16204665838832214021

namespace A056595

/-- `n+1-A049820(n+1)-A046951(n+1)` -/
def P16204665838832214021.Spec : Prop :=
  ∀ n, P16204665838832214021.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P4863583666703094460

`∑{d}[n+1, A008836(#)*A055205((n+1)/#)]`
-/

namespace A056595.P4863583666703094460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A055205 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056595.P4863583666703094460

namespace A056595

/-- `∑{d}[n+1, A008836(#)*A055205((n+1)/#)]` -/
def P4863583666703094460.Spec : Prop :=
  ∀ n, P4863583666703094460.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P4109875301098122327

`∑{d}[n+1, A130054(#)*A344439((n+1)/#)]`
-/

namespace A056595.P4109875301098122327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A344439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056595.P4109875301098122327

namespace A056595

/-- `∑{d}[n+1, A130054(#)*A344439((n+1)/#)]` -/
def P4109875301098122327.Spec : Prop :=
  ∀ n, P4109875301098122327.a n = A056595 (n + 1)

end A056595

/-! ## A056595.P8831804257422203514

`A000005(n+1)-A000005(A000188(n+1))`
-/

namespace A056595.P8831804257422203514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A000188 (n + 1)).toNat

end

end A056595.P8831804257422203514

namespace A056595

/-- `A000005(n+1)-A000005(A000188(n+1))` -/
def P8831804257422203514.Spec : Prop :=
  ∀ n, P8831804257422203514.a n = A056595 (n + 1)

end A056595

/-!
# A056596: Number of nonsquare divisors of n!.

The programs for A056596, the canonical program `A056596.P5937118824382541668` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056596 has offset 1).

The definition of A056596 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, A055993, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056596.P5937118824382541668

`A027423(n+1)-A055993(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056596

/-- `A027423(n+1)-A055993(n+1)` -/
def P5937118824382541668.Spec : Prop :=
  ∀ n, P5937118824382541668.a n = A056596 (n + 1)

theorem P5937118824382541668.correct : P5937118824382541668.Spec := by
  intro n
  simp only [A056596, Nat.add_sub_cancel]

end A056596

/-! ## A056596.P13458636987141757016

`∑[A038024(n+1)]-A055993(n+1)`
-/

namespace A056596.P13458636987141757016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055993 (n + 1)

end

end A056596.P13458636987141757016

namespace A056596

/-- `∑[A038024(n+1)]-A055993(n+1)` -/
def P13458636987141757016.Spec : Prop :=
  ∀ n, P13458636987141757016.a n = A056596 (n + 1)

end A056596

/-! ## A056596.P16629656975308837993

`A027423(n+1)-(A056630(n+1)+A056629(n+1))`
-/

namespace A056596.P16629656975308837993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - (A056630 (n + 1) + A056629 (n + 1))

end

end A056596.P16629656975308837993

namespace A056596

/-- `A027423(n+1)-(A056630(n+1)+A056629(n+1))` -/
def P16629656975308837993.Spec : Prop :=
  ∀ n, P16629656975308837993.a n = A056596 (n + 1)

end A056596

/-! ## A056596.P10476267684711655481

`∑[A038024(n+1)]-(A056630(n+1)+A056629(n+1))`
-/

namespace A056596.P10476267684711655481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A056630 (n + 1) + A056629 (n + 1))

end

end A056596.P10476267684711655481

namespace A056596

/-- `∑[A038024(n+1)]-(A056630(n+1)+A056629(n+1))` -/
def P10476267684711655481.Spec : Prop :=
  ∀ n, P10476267684711655481.a n = A056596 (n + 1)

end A056596

/-! ## A056596.P16033796560296035034

`A027423(n+1)-∏{e}[A055772(n+1), #+1]`
-/

namespace A056596.P16033796560296035034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ)

end

end A056596.P16033796560296035034

namespace A056596

/-- `A027423(n+1)-∏{e}[A055772(n+1), #+1]` -/
def P16033796560296035034.Spec : Prop :=
  ∀ n, P16033796560296035034.a n = A056596 (n + 1)

end A056596

/-!
# A056598: Series for 2nd parallel moment of square lattice bond percolation near a wall (eventually goes negative).

The programs for A056598, there is no canonical definition to state claims against.
-/

/-! ## A056598.P13977211503642553628

`A001462(A122615(n+1))`
-/

namespace A056598.P13977211503642553628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A122615 (n + 1)).toNat

end

end A056598.P13977211503642553628

/-!
# A056599: Series for first perpendicular moment of square lattice bond percolation near a wall (eventually goes negative).

The programs for A056599, there is no canonical definition to state claims against.
-/

/-! ## A056599.P15741392794466336758

`∑[A089098(A032555(n+1))]`
-/

namespace A056599.P15741392794466336758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (A032555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056599.P15741392794466336758

/-! ## A056599.P662128953507291663

`∑[A089098(A032559(n+1))]`
-/

namespace A056599.P662128953507291663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (A032559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056599.P662128953507291663

/-! ## A056599.P13181497870929163233

`∑[A089098(A181720(n+1))]`
-/

namespace A056599.P13181497870929163233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (A181720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056599.P13181497870929163233

/-! ## A056599.P1998656441126445742

`A052410(∑[A089098(n+1)]²)`
-/

namespace A056599.P1998656441126445742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A056599.P1998656441126445742

