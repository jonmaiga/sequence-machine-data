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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A389900: a(n) = A126760(A126760(n)).

The programs for A389900, there is no canonical definition to state claims against.
-/

/-! ## A389900.P3874583654126070722

`A126760(A126760(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389900.P3874583654126070722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A126760 n).toNat

end

end A389900.P3874583654126070722

/-! ## A389900.P6100075251108505620

`A126759(A126759(n)-1)-1`
-/

namespace A389900.P6100075251108505620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (A126759 n - 1).toNat - 1

end

end A389900.P6100075251108505620

/-! ## A389900.P10694510163892587643

`A254048(2*A254048(2*n))`
-/

namespace A389900.P10694510163892587643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (2 * A254048 (2 * n)).toNat

end

end A389900.P10694510163892587643

/-!
# A389901: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(A126760(i)) = A007814(A126760(j)) and A007949(A126760(i)) = A007949(A126760(j)) for all i, j >= 1.

The programs for A389901, the canonical program `A389901.P6742446286035318243` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389901 has offset 1).

The definition of A389901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389901.P11311951582731716504

`A322026(A126760(n+1))`
-/

namespace A389901.P11311951582731716504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A126760 (n + 1)).toNat

end

end A389901.P11311951582731716504

namespace A389901

/-- `A322026(A126760(n+1))` -/
def P11311951582731716504.Spec : Prop :=
  ∀ n, P11311951582731716504.a n = A389901 (n + 1)

end A389901

/-! ## A389901.P9743813430130227878

`A322026(A126759(n+1)-1)`
-/

namespace A389901.P9743813430130227878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A126759 (n + 1) - 1).toNat

end

end A389901.P9743813430130227878

namespace A389901

/-- `A322026(A126759(n+1)-1)` -/
def P9743813430130227878.Spec : Prop :=
  ∀ n, P9743813430130227878.a n = A389901 (n + 1)

end A389901

/-! ## A389901.P6742446286035318243

`A322026(A253887(A003602(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A389901

/-- `A322026(A253887(A003602(n+1)))` -/
def P6742446286035318243.Spec : Prop :=
  ∀ n, P6742446286035318243.a n = A389901 (n + 1)

theorem P6742446286035318243.correct : P6742446286035318243.Spec := by
  intro n
  simp only [A389901, Nat.add_sub_cancel]

end A389901

/-! ## A389901.P5350243861246375886

`A322026(A323882(n+1)-A323881(n+1))`
-/

namespace A389901.P5350243861246375886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A323882 (n + 1) - A323881 (n + 1)).toNat

end

end A389901.P5350243861246375886

namespace A389901

/-- `A322026(A323882(n+1)-A323881(n+1))` -/
def P5350243861246375886.Spec : Prop :=
  ∀ n, P5350243861246375886.a n = A389901 (n + 1)

end A389901

/-! ## A389901.P18390707526974650845

`A322026(A254048(2*(n+1)))`
-/

namespace A389901.P18390707526974650845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A254048 (2 * (n + 1))).toNat

end

end A389901.P18390707526974650845

namespace A389901

/-- `A322026(A254048(2*(n+1)))` -/
def P18390707526974650845.Spec : Prop :=
  ∀ n, P18390707526974650845.a n = A389901 (n + 1)

end A389901

/-! ## A389901.P12571315467489489092

`A322026(A359165(2*(n+1)))`
-/

namespace A389901.P12571315467489489092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A359165 (2 * (n + 1))).toNat

end

end A389901.P12571315467489489092

namespace A389901

/-- `A322026(A359165(2*(n+1)))` -/
def P12571315467489489092.Spec : Prop :=
  ∀ n, P12571315467489489092.a n = A389901 (n + 1)

end A389901

/-!
# A389902: Lexicographically earliest infinite sequence such that a(i) = a(j) => A343029(A025480(i)) = A343029(A025480(j)) and A343030(A025480(i)) = A343030(A025480(j)) for all i, j >= 0.

The programs for A389902, the canonical program `A389902.P1328635243683320513` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389902 has offset 0).

The definition of A389902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361020, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389902.P1328635243683320513

`A361020(A025480(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A389902

/-- `A361020(A025480(n))` -/
def P1328635243683320513.Spec : Prop :=
  ∀ n, P1328635243683320513.a n = A389902 n

theorem P1328635243683320513.correct : P1328635243683320513.Spec := by
  intro n
  simp only [A389902]

end A389902

/-! ## A389902.P15402093906236824860

`A361020(A003602(n+1)-1)`
-/

namespace A389902.P15402093906236824860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (A003602 (n + 1) - 1).toNat

end

end A389902.P15402093906236824860

namespace A389902

/-- `A361020(A003602(n+1)-1)` -/
def P15402093906236824860.Spec : Prop :=
  ∀ n, P15402093906236824860.a n = A389902 n

end A389902

/-! ## A389902.P10780226753407005051

`A361020(A271519(n+1)-A007814(n+1))`
-/

namespace A389902.P10780226753407005051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (A271519 (n + 1) - A007814 (n + 1)).toNat

end

end A389902.P10780226753407005051

namespace A389902

/-- `A361020(A271519(n+1)-A007814(n+1))` -/
def P10780226753407005051.Spec : Prop :=
  ∀ n, P10780226753407005051.a n = A389902 n

end A389902

/-!
# A389904: a(n) = min(n, A059894(n)).

The programs for A389904, there is no canonical definition to state claims against.
-/

/-! ## A389904.P5741389505773088527

`A389908(2*(n+1))/2`
-/

namespace A389904.P5741389505773088527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389908 (2 * (n + 1)) : ℚ) / 2

end

end A389904.P5741389505773088527

/-!
# A389905: a(n) = 1 if n is neither squarefree nor powerful, otherwise 0.

The programs for A389905, the canonical program `A389905.P14127833197963390982` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389905 has offset 1).

The definition of A389905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107078, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389905.P14127833197963390982

`A107078(n+1)*(1-A112526(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A389905

/-- `A107078(n+1)*(1-A112526(n+1))` -/
def P14127833197963390982.Spec : Prop :=
  ∀ n, P14127833197963390982.a n = A389905 (n + 1)

theorem P14127833197963390982.correct : P14127833197963390982.Spec := by
  intro n
  simp only [A389905, Nat.add_sub_cancel]

end A389905

/-! ## A389905.P13027127316490748869

`and(A005183(n), A375933(n+1))`
-/

namespace A389905.P13027127316490748869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005183 n) (A375933 (n + 1))

end

end A389905.P13027127316490748869

namespace A389905

/-- `and(A005183(n), A375933(n+1))` -/
def P13027127316490748869.Spec : Prop :=
  ∀ n, P13027127316490748869.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P13069646866901449764

`and(A000337(n), A375933(n+1))`
-/

namespace A389905.P13069646866901449764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A375933 (n + 1))

end

end A389905.P13069646866901449764

namespace A389905

/-- `and(A000337(n), A375933(n+1))` -/
def P13069646866901449764.Spec : Prop :=
  ∀ n, P13069646866901449764.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P3476384327960016015

`and(A002064(n), A375933(n+1))`
-/

namespace A389905.P3476384327960016015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A375933 (n + 1))

end

end A389905.P3476384327960016015

namespace A389905

/-- `and(A002064(n), A375933(n+1))` -/
def P3476384327960016015.Spec : Prop :=
  ∀ n, P3476384327960016015.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P9610948427010073453

`and(A048482(n), A375933(n+1))`
-/

namespace A389905.P9610948427010073453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048482 n) (A375933 (n + 1))

end

end A389905.P9610948427010073453

namespace A389905

/-- `and(A048482(n), A375933(n+1))` -/
def P9610948427010073453.Spec : Prop :=
  ∀ n, P9610948427010073453.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P4882026125561952150

`and(A006495(n), A375933(n+1))`
-/

namespace A389905.P4882026125561952150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006495 n) (A375933 (n + 1))

end

end A389905.P4882026125561952150

namespace A389905

/-- `and(A006495(n), A375933(n+1))` -/
def P4882026125561952150.Spec : Prop :=
  ∀ n, P4882026125561952150.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P12041062429479736407

`and(A026396(n), A375933(n+1))`
-/

namespace A389905.P12041062429479736407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026396 n) (A375933 (n + 1))

end

end A389905.P12041062429479736407

namespace A389905

/-- `and(A026396(n), A375933(n+1))` -/
def P12041062429479736407.Spec : Prop :=
  ∀ n, P12041062429479736407.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P11532575267197433911

`and(A007058(n), A375933(n+1))`
-/

namespace A389905.P11532575267197433911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007058 n) (A375933 (n + 1))

end

end A389905.P11532575267197433911

namespace A389905

/-- `and(A007058(n), A375933(n+1))` -/
def P11532575267197433911.Spec : Prop :=
  ∀ n, P11532575267197433911.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P6552696999981564008

`and(A019494(n), A375933(n+1))`
-/

namespace A389905.P6552696999981564008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019494 n) (A375933 (n + 1))

end

end A389905.P6552696999981564008

namespace A389905

/-- `and(A019494(n), A375933(n+1))` -/
def P6552696999981564008.Spec : Prop :=
  ∀ n, P6552696999981564008.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P8399312776844041380

`and(A026003(n), A375933(n+1))`
-/

namespace A389905.P8399312776844041380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026003 n) (A375933 (n + 1))

end

end A389905.P8399312776844041380

namespace A389905

/-- `and(A026003(n), A375933(n+1))` -/
def P8399312776844041380.Spec : Prop :=
  ∀ n, P8399312776844041380.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P18430954200632829640

`and(A015118(n), A375933(n+1))`
-/

namespace A389905.P18430954200632829640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015118 n) (A375933 (n + 1))

end

end A389905.P18430954200632829640

namespace A389905

/-- `and(A015118(n), A375933(n+1))` -/
def P18430954200632829640.Spec : Prop :=
  ∀ n, P18430954200632829640.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P17627558299952632987

`and(A026567(n), A375933(n+1))`
-/

namespace A389905.P17627558299952632987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026567 n) (A375933 (n + 1))

end

end A389905.P17627558299952632987

namespace A389905

/-- `and(A026567(n), A375933(n+1))` -/
def P17627558299952632987.Spec : Prop :=
  ∀ n, P17627558299952632987.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P14013325651616330035

`and(A006131(n), A375933(n+1))`
-/

namespace A389905.P14013325651616330035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006131 n) (A375933 (n + 1))

end

end A389905.P14013325651616330035

namespace A389905

/-- `and(A006131(n), A375933(n+1))` -/
def P14013325651616330035.Spec : Prop :=
  ∀ n, P14013325651616330035.a n = A389905 (n + 1)

end A389905

/-!
# A389906: a(n) = min(2*n, A003961(n)), where A003961 is fully multiplicative with a(p) = nextprime(p)

The programs for A389906, there is no canonical definition to state claims against.
-/

/-! ## A389906.P4331180242747812563

`A389910(2*(n+1))`
-/

namespace A389906.P4331180242747812563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389910 (2 * (n + 1))

end

end A389906.P4331180242747812563

/-!
# A389907: a(n) = min(n, A054429(n)), where A054429 list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

The programs for A389907, the canonical program `A389907.P14971960217326767381` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389907 has offset 1).

The definition of A389907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389907.P361223798941784854

`A279521(2*(n+1))-(A062050(n+1)-1)`
-/

namespace A389907.P361223798941784854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (2 * (n + 1)) - (A062050 (n + 1) - 1)

end

end A389907.P361223798941784854

namespace A389907

/-- `A279521(2*(n+1))-(A062050(n+1)-1)` -/
def P361223798941784854.Spec : Prop :=
  ∀ n, P361223798941784854.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P10019310918653055458

`A279521(2*(n+1))-(n-A035327(n+1))/2`
-/

namespace A389907.P10019310918653055458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279521 (2 * (n + 1)) : ℚ) - ((n : ℤ) - A035327 (n + 1) : ℚ) / 2

end

end A389907.P10019310918653055458

namespace A389907

/-- `A279521(2*(n+1))-(n-A035327(n+1))/2` -/
def P10019310918653055458.Spec : Prop :=
  ∀ n, P10019310918653055458.a n = (A389907 (n + 1) : ℚ)

end A389907

/-! ## A389907.P14971960217326767381

`A279521(2*(n+1))-and(n+1, A004754(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A389907

/-- `A279521(2*(n+1))-and(n+1, A004754(n+1))` -/
def P14971960217326767381.Spec : Prop :=
  ∀ n, P14971960217326767381.a n = A389907 (n + 1)

theorem P14971960217326767381.correct : P14971960217326767381.Spec := by
  intro n
  simp only [A389907, Nat.add_sub_cancel]

end A389907

/-! ## A389907.P4406419690310586246

`A004754(n+1)-A060973(A144396(n+1))`
-/

namespace A389907.P4406419690310586246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1) - A060973 (A144396 (n + 1)).toNat

end

end A389907.P4406419690310586246

namespace A389907

/-- `A004754(n+1)-A060973(A144396(n+1))` -/
def P4406419690310586246.Spec : Prop :=
  ∀ n, P4406419690310586246.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P3660116639416769901

`A035327(3*A053644(n+1)+n+1-A006165(2*n+3))`
-/

namespace A389907.P3660116639416769901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (3 * A053644 (n + 1) + (n + 1 : ℤ) - A006165 (2 * n + 3)).toNat

end

end A389907.P3660116639416769901

namespace A389907

/-- `A035327(3*A053644(n+1)+n+1-A006165(2*n+3))` -/
def P3660116639416769901.Spec : Prop :=
  ∀ n, P3660116639416769901.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P13383107205125322733

`A371263(A153775(n+1))`
-/

namespace A389907.P13383107205125322733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371263 (A153775 (n + 1)).toNat

end

end A389907.P13383107205125322733

namespace A389907

/-- `A371263(A153775(n+1))` -/
def P13383107205125322733.Spec : Prop :=
  ∀ n, P13383107205125322733.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P6574549924152325887

`A371256(A191110(n+1))`
-/

namespace A389907.P6574549924152325887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A191110 (n + 1)).toNat

end

end A389907.P6574549924152325887

namespace A389907

/-- `A371256(A191110(n+1))` -/
def P6574549924152325887.Spec : Prop :=
  ∀ n, P6574549924152325887.a n = A389907 (n + 1)

end A389907

/-!
# A389910: a(n) = min(n, A389909(n)).

The programs for A389910, there is no canonical definition to state claims against.
-/

/-! ## A389910.P3820855388453809546

`A389906(A252463(n+1))`
-/

namespace A389910.P3820855388453809546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389906 (A252463 (n + 1)).toNat

end

end A389910.P3820855388453809546

/-!
# A389911: a(n) = 1 if a polynomial p(n,x) with nonnegative integer coefficients determined by the prime factorization of n is irreducible, otherwise 0.

The programs for A389911, there is no canonical definition to state claims against.
-/

/-! ## A389911.P15761592632125550784

`char[A206284(n+1)-1]`
-/

namespace A389911.P15761592632125550784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A389911.P15761592632125550784

/-! ## A389911.P17565326284218733899

`char[eq[1, A277322(n+1)]]`
-/

namespace A389911.P17565326284218733899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A389911.P17565326284218733899

/-! ## A389911.P12429500655407867542

`A049600(C(2, A277322(n+1)))`
-/

namespace A389911.P12429500655407867542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (Nat.choose 2 (A277322 (n + 1)).toNat)

end

end A389911.P12429500655407867542

/-! ## A389911.P4104467142251392383

`A364914(C(2, A277322(n+1)))`
-/

namespace A389911.P4104467142251392383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364914 (Nat.choose 2 (A277322 (n + 1)).toNat)

end

end A389911.P4104467142251392383

/-! ## A389911.P13661910736945850193

`A000007(xor(1, A277322(n+1)))`
-/

namespace A389911.P13661910736945850193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A277322 (n + 1))).toNat

end

end A389911.P13661910736945850193

/-! ## A389911.P13872455101493217729

`A091225(A284010(n+1))`
-/

namespace A389911.P13872455101493217729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A284010 (n + 1)).toNat

end

end A389911.P13872455101493217729

/-!
# A389912: Prime-factorization representation of irreducible (non-constant) Stern-polynomials B(m,x), listed in ascending order.

The programs for A389912, there is no canonical definition to state claims against.
-/

/-! ## A389912.P17059129587017032750

`∩[A206284(n+1), A260442(n)]`
-/

namespace A389912.P17059129587017032750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389912.P17059129587017032750

/-! ## A389912.P7333687476930430106

`∩[A389914(n+1), A260442(n)]`
-/

namespace A389912.P7333687476930430106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389912.P7333687476930430106

/-!
# A389913: a(n) = 1 if A048675(n) is in A186891\{1}, otherwise 0.

The programs for A389913, there is no canonical definition to state claims against.
-/

/-! ## A389913.P10318825963699896724

`A389911(A260443(A048675(n+1)))`
-/

namespace A389913.P10318825963699896724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389911 (A260443 (A048675 (n + 1)).toNat).toNat

end

end A389913.P10318825963699896724

/-! ## A389913.P9762526751897930276

`char[A389914(n+1)-1]`
-/

namespace A389913.P9762526751897930276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389914 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A389913.P9762526751897930276

/-! ## A389913.P3598575756519586745

`A316828(A000203(2*(n+1))*A082795(2*(n+2)))`
-/

namespace A389913.P3598575756519586745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A000203 (2 * (n + 1)) * A082795 (2 * (n + 2))).toNat

end

end A389913.P3598575756519586745

/-! ## A389913.P1989919154399797055

`A062301(A343050(n+1))`
-/

namespace A389913.P1989919154399797055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (A343050 (n + 1)).toNat

end

end A389913.P1989919154399797055

/-! ## A389913.P6259085664195936270

`A214090(xor(n, A070921(n+1)))`
-/

namespace A389913.P6259085664195936270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214090 (Int.xor (n : ℤ) (A070921 (n + 1))).toNat

end

end A389913.P6259085664195936270

/-!
# A389914: Numbers k such that A048675(k) is in A186891\{1}.

The programs for A389914, there is no canonical definition to state claims against.
-/

/-! ## A389914.P7597585182663636075

`filter[A092535(n+1), A389913(#)]`
-/

namespace A389914.P7597585182663636075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P7597585182663636075

/-! ## A389914.P6590173235428687200

`filter[A051755(n+2), A389913(#)]`
-/

namespace A389914.P6590173235428687200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P6590173235428687200

/-! ## A389914.P11184260416945757170

`filter[A004279(n), A389913(#)]`
-/

namespace A389914.P11184260416945757170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P11184260416945757170

/-! ## A389914.P12449489298040536616

`filter[A004271(n+1), A389913(#)]`
-/

namespace A389914.P12449489298040536616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P12449489298040536616

/-! ## A389914.P8388635892343706005

`filter[A004278(n+1), A389913(#)]`
-/

namespace A389914.P8388635892343706005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P8388635892343706005

/-! ## A389914.P7611164803551077246

`filter[A058992(n+2), A389913(#)]`
-/

namespace A389914.P7611164803551077246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P7611164803551077246

/-! ## A389914.P5618950230485701695

`filter[A004272(n+1), A389913(#)]`
-/

namespace A389914.P5618950230485701695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P5618950230485701695

/-! ## A389914.P16738803077298315433

`filter[A257282(n+2), A389913(#)]`
-/

namespace A389914.P16738803077298315433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P16738803077298315433

/-! ## A389914.P4228756268828253749

`filter[A171086(n+1), A389913(#)]`
-/

namespace A389914.P4228756268828253749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P4228756268828253749

/-! ## A389914.P2832415749772329976

`filter[A225850(n+1), A389913(#)]`
-/

namespace A389914.P2832415749772329976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P2832415749772329976

/-! ## A389914.P210602695547262678

`filter[A237058(n+1), A389913(#)]`
-/

namespace A389914.P210602695547262678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P210602695547262678

/-! ## A389914.P15121597256869717299

`filter[A066250(n+1), A389913(#)]`
-/

namespace A389914.P15121597256869717299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P15121597256869717299

/-! ## A389914.P1834196859296061208

`filter[A073897(n+1), A389913(#)]`
-/

namespace A389914.P1834196859296061208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P1834196859296061208

/-! ## A389914.P4281199645347752006

`filter[A030173(n+1), A389913(#)]`
-/

namespace A389914.P4281199645347752006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P4281199645347752006

/-! ## A389914.P2716753233035166299

`filter[A106092(n+1), A389913(#)]`
-/

namespace A389914.P2716753233035166299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P2716753233035166299

/-! ## A389914.P14232133223620981813

`filter[A047418(n+2), A389913(#)]`
-/

namespace A389914.P14232133223620981813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P14232133223620981813

/-! ## A389914.P7801114466753833275

`filter[A294456(n+3), A389913(#)]`
-/

namespace A389914.P7801114466753833275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P7801114466753833275

/-! ## A389914.P8170764386987457974

`filter[A285302(n+1), A389913(#)]`
-/

namespace A389914.P8170764386987457974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P8170764386987457974

/-! ## A389914.P15168135692840985155

`filter[A336367(n+1), A389913(#)]`
-/

namespace A389914.P15168135692840985155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P15168135692840985155

/-! ## A389914.P6850059075015947205

`filter[A047229(n+2), A389913(#)]`
-/

namespace A389914.P6850059075015947205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P6850059075015947205

/-!
# A389916: Numbers m such that the Stern polynomial B(m,x) is reducible.

The programs for A389916, there is no canonical definition to state claims against.
-/

/-! ## A389916.P10585206533804846330

`lt[1, A277013(n+1)]+1`
-/

namespace A389916.P10585206533804846330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389916.P10585206533804846330

/-! ## A389916.P581727285966012758

`eq[A283991(2*(n+1)), A283991(n+1)]+1`
-/

namespace A389916.P581727285966012758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A389916.P581727285966012758

/-! ## A389916.P1717628694449027545

`∩[A002808(n+1), comp[A186891(n+1)]]`
-/

namespace A389916.P1717628694449027545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A389916.P1717628694449027545

/-! ## A389916.P18180168559101270715

`eq[A000007(n), A283991(n+1)]+1`
-/

namespace A389916.P18180168559101270715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A389916.P18180168559101270715

/-! ## A389916.P4025923710901670348

`∩[A091212(n+1), A165240(n+1)]`
-/

namespace A389916.P4025923710901670348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389916.P4025923710901670348

/-!
# A389917: Odd numbers m such that the Stern polynomial B(m,x) is reducible.

The programs for A389917, there is no canonical definition to state claims against.
-/

/-! ## A389917.P15634092293354924038

`∩[2*n+1, A389916(n+1)]`
-/

namespace A389917.P15634092293354924038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P15634092293354924038

/-! ## A389917.P3781529373480295912

`∩[A389916(n+1), A004273(n)]`
-/

namespace A389917.P3781529373480295912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P3781529373480295912

/-! ## A389917.P10155630222352213792

`∩[A389916(n+1), A004274(n)]`
-/

namespace A389917.P10155630222352213792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P10155630222352213792

/-! ## A389917.P15449330832314516771

`∩[A389916(n+1), A020742(n)]`
-/

namespace A389917.P15449330832314516771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P15449330832314516771

/-! ## A389917.P5333696330828015683

`∩[A389916(n+1), A060747(n)]`
-/

namespace A389917.P5333696330828015683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P5333696330828015683

/-! ## A389917.P7586643080403658382

`∩[A389916(n+1), A062545(n)]`
-/

namespace A389917.P7586643080403658382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P7586643080403658382

/-! ## A389917.P6860186170860992782

`∩[A389916(n+1), A130773(n)]`
-/

namespace A389917.P6860186170860992782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P6860186170860992782

/-! ## A389917.P11997705655249940673

`∩[A389916(n+1), A163985(n)]`
-/

namespace A389917.P11997705655249940673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P11997705655249940673

/-! ## A389917.P7566156538099144200

`filter[A389916(n+1), A000035(#)]`
-/

namespace A389917.P7566156538099144200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A389917.P7566156538099144200

/-! ## A389917.P14524584685019752781

`filter[A389916(n+1), A266070(#)]`
-/

namespace A389917.P14524584685019752781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A389917.P14524584685019752781

/-! ## A389917.P10221128050712436219

`filter[A389916(n+1), A266611(#)]`
-/

namespace A389917.P10221128050712436219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A389917.P10221128050712436219

/-! ## A389917.P7142013744290102021

`filter[A389916(n+1), A266719(#)]`
-/

namespace A389917.P7142013744290102021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A389917.P7142013744290102021

/-! ## A389917.P13800714032178185259

`filter[A389916(n+1), A296066(#)]`
-/

namespace A389917.P13800714032178185259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A389917.P13800714032178185259

/-! ## A389917.P3825339018854166458

`filter[A389916(n+2), A266246(#)]`
-/

namespace A389917.P3825339018854166458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A389917.P3825339018854166458

/-! ## A389917.P5650634255731115505

`filter[A389916(n+3), A267256(#)]`
-/

namespace A389917.P5650634255731115505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A389917.P5650634255731115505

/-!
# A389919: Number of integer partitions of n whose first differences are not all distinct.

The programs for A389919, there is no canonical definition to state claims against.
-/

/-! ## A389919.P1518382140010775054

`A000041(n)-A325325(n)`
-/

namespace A389919.P1518382140010775054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325325 n

end

end A389919.P1518382140010775054

/-! ## A389919.P4035856469960492055

`A213598(n)-A325325(n)`
-/

namespace A389919.P4035856469960492055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A325325 n

end

end A389919.P4035856469960492055

/-! ## A389919.P4338012737566303072

`sqrt(A001255(n))-A325325(n)`
-/

namespace A389919.P4338012737566303072
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325325 n : ℝ)

end

end A389919.P4338012737566303072

/-! ## A389919.P16401727019864103589

`∑[A002865(n)]-A325325(n)`
-/

namespace A389919.P16401727019864103589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325325 n

end

end A389919.P16401727019864103589

/-! ## A389919.P18070824322742469305

`A035363(2*n)-A325325(n)`
-/

namespace A389919.P18070824322742469305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A325325 n

end

end A389919.P18070824322742469305

/-!
# A389920: Number of integer partitions of n not forming an arithmetic progression with offset 0.

The programs for A389920, there is no canonical definition to state claims against.
-/

/-! ## A389920.P9232963611432274030

`A000065(n)-A325334(n)`
-/

namespace A389920.P9232963611432274030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A325334 n

end

end A389920.P9232963611432274030

/-! ## A389920.P9718577930662901881

`A000041(n)-(A325334(n)+1)`
-/

namespace A389920.P9718577930662901881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A325334 n + 1)

end

end A389920.P9718577930662901881

/-! ## A389920.P16471396070671474072

`A000041(n)-A007862(A028310(n))`
-/

namespace A389920.P16471396070671474072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A007862 (A028310 n).toNat

end

end A389920.P16471396070671474072

/-! ## A389920.P6026205555067695134

`A389742(n)-A056823(n)`
-/

namespace A389920.P6026205555067695134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389742 n - A056823 n

end

end A389920.P6026205555067695134

/-!
# A389921: Number of subsets of {1..n} that contain n but do not form a finite arithmetic progression.

The programs for A389921, the canonical program `A389921.P16454545496110612837` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389921 has offset 0).

The definition of A389921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389921.P16454545496110612837

`A094373(n)-A350102(n)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A389921

/-- `A094373(n)-A350102(n)` -/
def P16454545496110612837.Spec : Prop :=
  ∀ n, P16454545496110612837.a n = A389921 n

theorem P16454545496110612837.correct : P16454545496110612837.Spec := by
  intro n
  simp only [A389921]

end A389921

/-! ## A389921.P7060205013482627885

`Δ[A389813(abs(1-n))]`
-/

namespace A389921.P7060205013482627885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389813 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389921.P7060205013482627885

namespace A389921

/-- `Δ[A389813(abs(1-n))]` -/
def P7060205013482627885.Spec : Prop :=
  ∀ n, P7060205013482627885.a n = A389921 n

end A389921

/-! ## A389921.P9758179550899361425

`A011782(n)-A169594(A011782(n))`
-/

namespace A389921.P9758179550899361425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A169594 (A011782 n).toNat

end

end A389921.P9758179550899361425

namespace A389921

/-- `A011782(n)-A169594(A011782(n))` -/
def P9758179550899361425.Spec : Prop :=
  ∀ n, P9758179550899361425.a n = A389921 n

end A389921

/-! ## A389921.P10317586371649960434

`A340569(n)-A001221(A003266(n))`
-/

namespace A389921.P10317586371649960434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340569 n - A001221 (A003266 n).toNat

end

end A389921.P10317586371649960434

namespace A389921

/-- `A340569(n)-A001221(A003266(n))` -/
def P10317586371649960434.Spec : Prop :=
  ∀ n, P10317586371649960434.a n = A389921 n

end A389921

/-!
# A389923: Standard composition numbers of integer compositions with last part = length.

The programs for A389923, there is no canonical definition to state claims against.
-/

/-! ## A389923.P1137613500917456692

`A361647(A022341(n))`
-/

namespace A389923.P1137613500917456692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361647 (A022341 n).toNat

end

end A389923.P1137613500917456692

/-! ## A389923.P9300526506479143406

`A371176(A003622(n+1))`
-/

namespace A389923.P9300526506479143406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A003622 (n + 1)).toNat

end

end A389923.P9300526506479143406

/-! ## A389923.P2334981163034636261

`A371176(A001950(n+1)-1)`
-/

namespace A389923.P2334981163034636261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A001950 (n + 1) - 1).toNat

end

end A389923.P2334981163034636261

/-! ## A389923.P5933475358425794455

`A371176(A000201(n+1)+n)`
-/

namespace A389923.P5933475358425794455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A000201 (n + 1) + (n : ℤ)).toNat

end

end A389923.P5933475358425794455

/-! ## A389923.P4620794907832946921

`A371176(A005206(n)+2*n+1)`
-/

namespace A389923.P4620794907832946921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A005206 n + (2 * n + 1 : ℤ)).toNat

end

end A389923.P4620794907832946921

/-! ## A389923.P10264002094488130065

`filter[A361647(2*n+1), A373990(#)]`
-/

namespace A389923.P10264002094488130065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A389923.P10264002094488130065

/-! ## A389923.P13303449391533597039

`filter[A373038(2*n+1), A373990(#)]`
-/

namespace A389923.P13303449391533597039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373038 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A389923.P13303449391533597039

/-!
# A389924: Standard composition numbers of integer compositions with first part = length.

The programs for A389924, there is no canonical definition to state claims against.
-/

/-! ## A389924.P15901862346322248970

`eq[A000120(n), A065120(2*n+1)]`
-/

namespace A389924.P15901862346322248970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P15901862346322248970

/-! ## A389924.P1688040505256837795

`eq[val(A102377(n), 2), A065120(2*n+1)]`
-/

namespace A389924.P1688040505256837795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A389924.P1688040505256837795

/-! ## A389924.P7083074002914642373

`eq[A000120(n), A001399(A065120(n))]`
-/

namespace A389924.P7083074002914642373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A065120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P7083074002914642373

/-! ## A389924.P17637848822641960099

`eq[A065120(n), A072411(A001316(n))]`
-/

namespace A389924.P17637848822641960099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P17637848822641960099

/-! ## A389924.P122490802499765704

`eq[A004257(A001316(n)), A065120(2*n+1)]`
-/

namespace A389924.P122490802499765704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P122490802499765704

/-!
# A389928: Truncated centered square numbers: a(n) = 14*n^2 - 22*n + 9.

The programs for A389928, the canonical program `A389928.P8211443800923910472` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389928 has offset 1).

The definition of A389928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*(n+1)²-22*(n+1)+9` (program `A389928.P8211443800923910472`, by `A389928.P8211443800923910472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389928.P8211443800923910472

`14*(n+1)²-22*(n+1)+9`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A389928

/-- `14*(n+1)²-22*(n+1)+9` -/
def P8211443800923910472.Spec : Prop :=
  ∀ n, P8211443800923910472.a n = A389928 (n + 1)

theorem P8211443800923910472.correct : P8211443800923910472.Spec := by
  intro n
  simp only [A389928, Nat.add_sub_cancel]

end A389928

/-! ## A389928.P477305847151804080

`∑[a(n-1)+28]` with `a(0)=1, a(1)=20`
-/

namespace A389928.P477305847151804080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389928.P477305847151804080

namespace A389928

/-- `∑[a(n-1)+28]` -/
def P477305847151804080.Spec : Prop :=
  ∀ n, (P477305847151804080.a n : ℤ) = A389928 (n + 1)

end A389928

/-! ## A389928.P18440350638521438575

`or(1, 4*A186029(n))`
-/

namespace A389928.P18440350638521438575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * A186029 n)

end

end A389928.P18440350638521438575

namespace A389928

/-- `or(1, 4*A186029(n))` -/
def P18440350638521438575.Spec : Prop :=
  ∀ n, P18440350638521438575.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P2780417046222590232

`A025773(A135628(n))`
-/

namespace A389928.P2780417046222590232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025773 (A135628 n).toNat

end

end A389928.P2780417046222590232

namespace A389928

/-- `A025773(A135628(n))` -/
def P2780417046222590232.Spec : Prop :=
  ∀ n, P2780417046222590232.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P8079357809512564030

`A000027(A069099(2*n+1)-n)`
-/

namespace A389928.P8079357809512564030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069099 (2 * n + 1) - (n : ℤ)).toNat

end

end A389928.P8079357809512564030

namespace A389928

/-- `A000027(A069099(2*n+1)-n)` -/
def P8079357809512564030.Spec : Prop :=
  ∀ n, P8079357809512564030.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P14184133056064069309

`A016813(A186029(n))`
-/

namespace A389928.P14184133056064069309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A186029 n).toNat

end

end A389928.P14184133056064069309

namespace A389928

/-- `A016813(A186029(n))` -/
def P14184133056064069309.Spec : Prop :=
  ∀ n, P14184133056064069309.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P15485696425901898480

`A016813(A022264(n)+2*n)`
-/

namespace A389928.P15485696425901898480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A022264 n + (2 * n : ℤ)).toNat

end

end A389928.P15485696425901898480

namespace A389928

/-- `A016813(A022264(n)+2*n)` -/
def P15485696425901898480.Spec : Prop :=
  ∀ n, P15485696425901898480.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P8526483614487273276

`A016813(A118277(2*n)-n)`
-/

namespace A389928.P8526483614487273276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A118277 (2 * n) - (n : ℤ)).toNat

end

end A389928.P8526483614487273276

namespace A389928

/-- `A016813(A118277(2*n)-n)` -/
def P8526483614487273276.Spec : Prop :=
  ∀ n, P8526483614487273276.a n = A389928 (n + 1)

end A389928

/-!
# A389929: Smallest prime number obtained by removing or adding a single digit anywhere in n, or 0 if no such prime exists.

The programs for A389929, there is no canonical definition to state claims against.
-/

/-! ## A389929.P10899777293899200335

`A062584(n)%A089085(2*n+1)²`
-/

namespace A389929.P10899777293899200335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062584 n) (A089085 (2 * n + 1) ^ 2)

end

end A389929.P10899777293899200335

/-! ## A389929.P3304525243116352862

`A062584(n)%A119959(A049016(n))`
-/

namespace A389929.P3304525243116352862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062584 n) (A119959 (A049016 n).toNat)

end

end A389929.P3304525243116352862

/-! ## A389929.P8177515850435867412

`A020639(A062584(n)*A065381(n+1))`
-/

namespace A389929.P8177515850435867412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062584 n * A065381 (n + 1)).toNat

end

end A389929.P8177515850435867412

/-!
# A389933: a(n) = Sum_{k=0..n} binomial(n+k+1,n-k) * Fibonacci(k+1).

The programs for A389933, the canonical program `A389933.P1180239488055824644` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389933 has offset 0).

The definition of A389933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389933.P1180239488055824644

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=29`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A389933

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` -/
def P1180239488055824644.Spec : Prop :=
  ∀ n, P1180239488055824644.a n = A389933 n

theorem P1180239488055824644.correct : P1180239488055824644.Spec := by
  intro n
  simp only [A389933]

end A389933

/-! ## A389933.P1559641326663299405

`∑[A389699(n)]`
-/

namespace A389933.P1559641326663299405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389933.P1559641326663299405

namespace A389933

/-- `∑[A389699(n)]` -/
def P1559641326663299405.Spec : Prop :=
  ∀ n, P1559641326663299405.a n = A389933 n

end A389933

/-! ## A389933.P4377671250271436215

`A289780(n)-A104630(n)`
-/

namespace A389933.P4377671250271436215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 n - A104630 n

end

end A389933.P4377671250271436215

namespace A389933

/-- `A289780(n)-A104630(n)` -/
def P4377671250271436215.Spec : Prop :=
  ∀ n, P4377671250271436215.a n = A389933 n

end A389933

/-! ## A389933.P1872971282278410604

`A389699(n+1)-(A389699(n)+A104630(n))`
-/

namespace A389933.P1872971282278410604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 (n + 1) - (A389699 n + A104630 n)

end

end A389933.P1872971282278410604

namespace A389933

/-- `A389699(n+1)-(A389699(n)+A104630(n))` -/
def P1872971282278410604.Spec : Prop :=
  ∀ n, P1872971282278410604.a n = A389933 n

end A389933

/-! ## A389933.P15363978202599648477

`A390824(n+1)+A289780(n)-A289780(n+1)`
-/

namespace A389933.P15363978202599648477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390824 (n + 1) + (A289780 n - A289780 (n + 1))

end

end A389933.P15363978202599648477

namespace A389933

/-- `A390824(n+1)+A289780(n)-A289780(n+1)` -/
def P15363978202599648477.Spec : Prop :=
  ∀ n, P15363978202599648477.a n = A389933 n

end A389933

/-! ## A389933.P6568710741529091393

`A390824(n+1)-(A390824(n)+A389699(n+1))`
-/

namespace A389933.P6568710741529091393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390824 (n + 1) - (A390824 n + A389699 (n + 1))

end

end A389933.P6568710741529091393

namespace A389933

/-- `A390824(n+1)-(A390824(n)+A389699(n+1))` -/
def P6568710741529091393.Spec : Prop :=
  ∀ n, P6568710741529091393.a n = A389933 n

end A389933

/-!
# A389934: Number n in the rational base 7/3.

The programs for A389934, there is no canonical definition to state claims against.
-/

/-! ## A389934.P6427443600920665772

`A024640(3*n)`
-/

namespace A389934.P6427443600920665772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024640 (3 * n)

end

end A389934.P6427443600920665772

/-!
# A389936: Number of oriented polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,oo}.

The programs for A389936, there is no canonical definition to state claims against.
-/

/-! ## A389936.P10542520573240454616

`2*A389937(n)-A143547(n)`
-/

namespace A389936.P10542520573240454616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A389937 n - A143547 n

end

end A389936.P10542520573240454616

/-!
# A389937: Number of unoriented polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,oo}.

The programs for A389937, there is no canonical definition to state claims against.
-/

/-! ## A389937.P10574463455324693222

`(A389936(n)+A143547(n))/2`
-/

namespace A389937.P10574463455324693222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389936 n + A143547 n : ℚ) / 2

end

end A389937.P10574463455324693222

/-! ## A389937.P3537365687669425565

`A000027(A393744(n))`
-/

namespace A389937.P3537365687669425565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A393744 n).toNat

end

end A389937.P3537365687669425565

/-! ## A389937.P8813346439523626649

`A393744(A061128(n+1)+n)`
-/

namespace A389937.P8813346439523626649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 (A061128 (n + 1) + (n : ℤ)).toNat

end

end A389937.P8813346439523626649

/-! ## A389937.P12048962651368900304

`A393744(n*A115575(n+2))`
-/

namespace A389937.P12048962651368900304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 ((n : ℤ) * A115575 (n + 2)).toNat

end

end A389937.P12048962651368900304

/-! ## A389937.P12756569759004656502

`A393744(n)%A052447(n+4)`
-/

namespace A389937.P12756569759004656502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393744 n) (A052447 (n + 4))

end

end A389937.P12756569759004656502

/-!
# A389938: Number of chiral pairs of polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,oo}.

The programs for A389938, there is no canonical definition to state claims against.
-/

/-! ## A389938.P17058134167519429912

`A389937(n+4)-A143547(n+4)`
-/

namespace A389938.P17058134167519429912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389937 (n + 4) - A143547 (n + 4)

end

end A389938.P17058134167519429912

/-! ## A389938.P1469629978600558164

`A389936(n+4)-A389937(n+4)`
-/

namespace A389938.P1469629978600558164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389936 (n + 4) - A389937 (n + 4)

end

end A389938.P1469629978600558164

/-! ## A389938.P566233729784779466

`(A389936(n+4)-A143547(n+4))/2`
-/

namespace A389938.P566233729784779466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389936 (n + 4) - A143547 (n + 4) : ℚ) / 2

end

end A389938.P566233729784779466

/-!
# A389940: Numbers k for which a sphere of radius k is a member of at least 1 set of 4 spheres of coprime positive integer radii which are tangent to a plane when arranged as mutually tangent to one another.

The programs for A389940, there is no canonical definition to state claims against.
-/

/-! ## A389940.P7167310204742618994

`lt[0, char[A390148(n+1)]]`
-/

namespace A389940.P7167310204742618994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389940.P7167310204742618994

/-!
# A389942: G.f. A(x) satisfies A(x) = 1 + x*(1-x^2)^2*A(x)^3.

The programs for A389942, there is no canonical definition to state claims against.
-/

/-! ## A389942.P10256913131594685368

`A060426(A008073(n))`
-/

namespace A389942.P10256913131594685368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (A008073 n).toNat

end

end A389942.P10256913131594685368

/-! ## A389942.P16814215568400895878

`A167865(A000312(n))+A000142(n)`
-/

namespace A389942.P16814215568400895878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A000312 n).toNat + A000142 n

end

end A389942.P16814215568400895878

/-!
# A389945: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^3*A(x)^3.

The programs for A389945, there is no canonical definition to state claims against.
-/

/-! ## A389945.P6786431315418572104

`A077468(A158569(n+1))`
-/

namespace A389945.P6786431315418572104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A158569 (n + 1)).toNat

end

end A389945.P6786431315418572104

/-! ## A389945.P8481245392579854474

`A341257(A318899(n+3))`
-/

namespace A389945.P8481245392579854474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341257 (A318899 (n + 3)).toNat

end

end A389945.P8481245392579854474

/-!
# A389946: Minimum positive value k such that prime(n) - k^2 is a prime number, or 0 if no such positive k exists.

The programs for A389946, there is no canonical definition to state claims against.
-/

/-! ## A389946.P16512824439368877389

`A222177(n)%A222177(A047844(n+1))`
-/

namespace A389946.P16512824439368877389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222177 n) (A222177 (A047844 (n + 1)).toNat)

end

end A389946.P16512824439368877389

/-! ## A389946.P3103388121240173643

`A091399(or(A237824(3*n+4), A320665(n)))`
-/

namespace A389946.P3103388121240173643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091399 (Int.lor (A237824 (3 * n + 4)) (A320665 n)).toNat

end

end A389946.P3103388121240173643

/-!
# A389947: Squares of nonsquarefree numbers k that are not squareful.

The programs for A389947, the canonical program `A389947.P9755762612582178396` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389947 has offset 1).

The definition of A389947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389947.P9755762612582178396

`A332785(n+1)²`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389947

/-- `A332785(n+1)²` -/
def P9755762612582178396.Spec : Prop :=
  ∀ n, P9755762612582178396.a n = A389947 (n + 1)

theorem P9755762612582178396.correct : P9755762612582178396.Spec := by
  intro n
  simp only [A389947, Nat.add_sub_cancel]

end A389947

/-! ## A389947.P9413258450045651825

`A392564(n+1)^(2/3)`
-/

namespace A389947.P9413258450045651825
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A392564 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A389947.P9413258450045651825

namespace A389947

/-- `A392564(n+1)^(2/3)` -/
def P9413258450045651825.Spec : Prop :=
  ∀ n, P9413258450045651825.a n = (A389947 (n + 1) : ℝ)

end A389947

/-! ## A389947.P15776076283138913590

`A392564(n+1)/A332785(n+1)`
-/

namespace A389947.P15776076283138913590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392564 (n + 1) : ℚ) / (A332785 (n + 1) : ℚ)

end

end A389947.P15776076283138913590

namespace A389947

/-- `A392564(n+1)/A332785(n+1)` -/
def P15776076283138913590.Spec : Prop :=
  ∀ n, P15776076283138913590.a n = (A389947 (n + 1) : ℚ)

end A389947

/-! ## A389947.P2323327161533410255

`∩[A390379(n+1), n²]`
-/

namespace A389947.P2323327161533410255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A389947.P2323327161533410255

namespace A389947

/-- `∩[A390379(n+1), n²]` -/
def P2323327161533410255.Spec : Prop :=
  ∀ n, (P2323327161533410255.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P7307411068690791819

`∩[A062320(n+1), A387254(n+1)]`
-/

namespace A389947.P7307411068690791819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P7307411068690791819

namespace A389947

/-- `∩[A062320(n+1), A387254(n+1)]` -/
def P7307411068690791819.Spec : Prop :=
  ∀ n, (P7307411068690791819.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P6356147719775950595

`∩[A062312(n+1), A390379(n+1)]`
-/

namespace A389947.P6356147719775950595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P6356147719775950595

namespace A389947

/-- `∩[A062312(n+1), A390379(n+1)]` -/
def P6356147719775950595.Spec : Prop :=
  ∀ n, (P6356147719775950595.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P17053136974142662598

`∩[A030140(n+1), A390379(n+1)]`
-/

namespace A389947.P17053136974142662598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P17053136974142662598

namespace A389947

/-- `∩[A030140(n+1), A390379(n+1)]` -/
def P17053136974142662598.Spec : Prop :=
  ∀ n, (P17053136974142662598.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P8208615835380809448

`∩[A000290(n), A390379(n+1)]`
-/

namespace A389947.P8208615835380809448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P8208615835380809448

namespace A389947

/-- `∩[A000290(n), A390379(n+1)]` -/
def P8208615835380809448.Spec : Prop :=
  ∀ n, (P8208615835380809448.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P1014577735361123343

`∩[A188915(n), A390379(n+1)]`
-/

namespace A389947.P1014577735361123343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P1014577735361123343

namespace A389947

/-- `∩[A188915(n), A390379(n+1)]` -/
def P1014577735361123343.Spec : Prop :=
  ∀ n, (P1014577735361123343.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P11520393199941831925

`∩[A389558(n+1), n²]`
-/

namespace A389947.P11520393199941831925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A389947.P11520393199941831925

namespace A389947

/-- `∩[A389558(n+1), n²]` -/
def P11520393199941831925.Spec : Prop :=
  ∀ n, (P11520393199941831925.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P11282208513372379642

`∩[A000290(n), A389558(n+1)]`
-/

namespace A389947.P11282208513372379642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P11282208513372379642

namespace A389947

/-- `∩[A000290(n), A389558(n+1)]` -/
def P11282208513372379642.Spec : Prop :=
  ∀ n, (P11282208513372379642.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P12803848151583227480

`∩[A188915(n), A389558(n+1)]`
-/

namespace A389947.P12803848151583227480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P12803848151583227480

namespace A389947

/-- `∩[A188915(n), A389558(n+1)]` -/
def P12803848151583227480.Spec : Prop :=
  ∀ n, (P12803848151583227480.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P4940019520646827101

`∩[A001597(n+1), A389558(n+1)]`
-/

namespace A389947.P4940019520646827101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P4940019520646827101

namespace A389947

/-- `∩[A001597(n+1), A389558(n+1)]` -/
def P4940019520646827101.Spec : Prop :=
  ∀ n, (P4940019520646827101.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P4903300759813662500

`∩[A002760(n+1), A389558(n+1)]`
-/

namespace A389947.P4903300759813662500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P4903300759813662500

namespace A389947

/-- `∩[A002760(n+1), A389558(n+1)]` -/
def P4903300759813662500.Spec : Prop :=
  ∀ n, (P4903300759813662500.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P11898267989710638992

`∩[A030140(n+1), A389558(n+1)]`
-/

namespace A389947.P11898267989710638992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P11898267989710638992

namespace A389947

/-- `∩[A030140(n+1), A389558(n+1)]` -/
def P11898267989710638992.Spec : Prop :=
  ∀ n, (P11898267989710638992.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P4560384709716373272

`∩[A062312(n+1), A389558(n+1)]`
-/

namespace A389947.P4560384709716373272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P4560384709716373272

namespace A389947

/-- `∩[A062312(n+1), A389558(n+1)]` -/
def P4560384709716373272.Spec : Prop :=
  ∀ n, (P4560384709716373272.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P11691318724115542937

`∩[A062320(n+1), A389558(n+1)]`
-/

namespace A389947.P11691318724115542937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P11691318724115542937

namespace A389947

/-- `∩[A062320(n+1), A389558(n+1)]` -/
def P11691318724115542937.Spec : Prop :=
  ∀ n, (P11691318724115542937.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P13170433433698407583

`∩[A085960(n+1), A389558(n+1)]`
-/

namespace A389947.P13170433433698407583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P13170433433698407583

namespace A389947

/-- `∩[A085960(n+1), A389558(n+1)]` -/
def P13170433433698407583.Spec : Prop :=
  ∀ n, (P13170433433698407583.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P5335082760712802140

`∩[A359280(n+1), A387254(n+1)]`
-/

namespace A389947.P5335082760712802140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P5335082760712802140

namespace A389947

/-- `∩[A359280(n+1), A387254(n+1)]` -/
def P5335082760712802140.Spec : Prop :=
  ∀ n, (P5335082760712802140.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P2716712887253253735

`∩[A213011(n+1), A390379(n+1)]`
-/

namespace A389947.P2716712887253253735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P2716712887253253735

namespace A389947

/-- `∩[A213011(n+1), A390379(n+1)]` -/
def P2716712887253253735.Spec : Prop :=
  ∀ n, (P2716712887253253735.a n : ℤ) = A389947 (n + 1)

end A389947

/-!
# A389948: Shell enumeration of the upper halfplane. Terms are interleaved x and y coordinates.

The programs for A389948, there is no canonical definition to state claims against.
-/

/-! ## A389948.P2519768092112686069

`A359432(A048490(n+1))`
-/

namespace A389948.P2519768092112686069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (A048490 (n + 1)).toNat

end

end A389948.P2519768092112686069

/-!
# A389951: Number of ways to partition digits 0-9 into terms in decreasing order with sum 9*n.

The programs for A389951, there is no canonical definition to state claims against.
-/

/-! ## A389951.P2298080423105459595

`A178334(A054633(n)*A061991(n))`
-/

namespace A389951.P2298080423105459595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A054633 n * A061991 n).toNat

end

end A389951.P2298080423105459595

/-! ## A389951.P15489454786621040729

`A178334(A027561(n)*A164329(n+1))`
-/

namespace A389951.P15489454786621040729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A027561 n * A164329 (n + 1)).toNat

end

end A389951.P15489454786621040729

/-! ## A389951.P3661515470745779593

`A178334(A137762(n+1)*A184943(n))`
-/

namespace A389951.P3661515470745779593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A137762 (n + 1) * A184943 n).toNat

end

end A389951.P3661515470745779593

/-! ## A389951.P5316318057743650491

`A178334(A027561(n)*A376617(n+1))`
-/

namespace A389951.P5316318057743650491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A027561 n * A376617 (n + 1)).toNat

end

end A389951.P5316318057743650491

/-! ## A389951.P4868939911804303777

`A178334(A000295(n+2)*A334653(n))`
-/

namespace A389951.P4868939911804303777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A000295 (n + 2) * A334653 n).toNat

end

end A389951.P4868939911804303777

/-!
# A389955: Even positive numbers that are one less than the square of a perfect power.

The programs for A389955, there is no canonical definition to state claims against.
-/

/-! ## A389955.P9621227844316688911

`A389764(n+1)*A389958(n+1)`
-/

namespace A389955.P9621227844316688911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389764 (n + 1) * A389958 (n + 1)

end

end A389955.P9621227844316688911

/-! ## A389955.P12534950018783352299

`A075109(n+2)²-1`
-/

namespace A389955.P12534950018783352299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 2) ^ 2 - 1

end

end A389955.P12534950018783352299

/-! ## A389955.P9874092610349683857

`A389764(n+1)+A075109(n+2)*A389764(n+1)`
-/

namespace A389955.P9874092610349683857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389764 (n + 1) + A075109 (n + 2) * A389764 (n + 1)

end

end A389955.P9874092610349683857

/-! ## A389955.P8289022580341096798

`A075109(n+2)*A389958(n+1)-A389958(n+1)`
-/

namespace A389955.P8289022580341096798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 2) * A389958 (n + 1) - A389958 (n + 1)

end

end A389955.P8289022580341096798

/-! ## A389955.P11716903624188192272

`A005563(A389764(n+1))`
-/

namespace A389955.P11716903624188192272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A389764 (n + 1)).toNat

end

end A389955.P11716903624188192272

/-! ## A389955.P11059247780945502512

`A067998(A389958(n+1))`
-/

namespace A389955.P11059247780945502512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A389958 (n + 1)).toNat

end

end A389955.P11059247780945502512

/-! ## A389955.P9158331911115440667

`A039720(A075109(n+2))`
-/

namespace A389955.P9158331911115440667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039720 (A075109 (n + 2)).toNat

end

end A389955.P9158331911115440667

/-!
# A389956: Odd numbers that are one less than the square of a perfect power.

The programs for A389956, there is no canonical definition to state claims against.
-/

/-! ## A389956.P6626107472598301750

`A389765(n+1)*A389957(n+1)`
-/

namespace A389956.P6626107472598301750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389765 (n + 1) * A389957 (n + 1)

end

end A389956.P6626107472598301750

/-! ## A389956.P3966485594471347991

`A075090(n+1)²-1`
-/

namespace A389956.P3966485594471347991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1) ^ 2 - 1

end

end A389956.P3966485594471347991

/-! ## A389956.P13053547796143105098

`A389765(n+1)+A075090(n+1)*A389765(n+1)`
-/

namespace A389956.P13053547796143105098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389765 (n + 1) + A075090 (n + 1) * A389765 (n + 1)

end

end A389956.P13053547796143105098

/-! ## A389956.P3056689021903276295

`A075090(n+1)*A389957(n+1)-A389957(n+1)`
-/

namespace A389956.P3056689021903276295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1) * A389957 (n + 1) - A389957 (n + 1)

end

end A389956.P3056689021903276295

/-! ## A389956.P14477976950227635209

`A066830(A075090(n+1))`
-/

namespace A389956.P14477976950227635209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066830 (A075090 (n + 1)).toNat

end

end A389956.P14477976950227635209

/-! ## A389956.P5266602037741837161

`A005563(A389765(n+1))`
-/

namespace A389956.P5266602037741837161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A389765 (n + 1)).toNat

end

end A389956.P5266602037741837161

/-! ## A389956.P6698633960518557805

`A067998(A389957(n+1))`
-/

namespace A389956.P6698633960518557805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A389957 (n + 1)).toNat

end

end A389956.P6698633960518557805

/-!
# A389957: Even perfect powers plus 1.

The programs for A389957, there is no canonical definition to state claims against.
-/

/-! ## A389957.P12361203599370532725

`A075090(n+1)+1`
-/

namespace A389957.P12361203599370532725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1) + 1

end

end A389957.P12361203599370532725

/-! ## A389957.P15008607490429855780

`A389765(n+1)+2`
-/

namespace A389957.P15008607490429855780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389765 (n + 1) + 2

end

end A389957.P15008607490429855780

/-! ## A389957.P17059596613784743061

`∩[2*n+1, A216765(n+1)]`
-/

namespace A389957.P17059596613784743061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P17059596613784743061

/-! ## A389957.P6900895265014707380

`record[A000265(A216765(n+1))]`
-/

namespace A389957.P6900895265014707380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A216765 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389957.P6900895265014707380

/-! ## A389957.P12390423242667622437

`filter[A216765(n+1), A374134(#)]`
-/

namespace A389957.P12390423242667622437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A389957.P12390423242667622437

/-! ## A389957.P3929797640586327945

`filter[A216765(n+1), A379952(#)]`
-/

namespace A389957.P3929797640586327945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A389957.P3929797640586327945

/-! ## A389957.P10272871610651666735

`∩[A004766(n+1), A080262(n+1)]`
-/

namespace A389957.P10272871610651666735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P10272871610651666735

/-! ## A389957.P4697426581648222893

`∩[A080262(n+1), A016813(n)]`
-/

namespace A389957.P4697426581648222893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P4697426581648222893

/-! ## A389957.P3636716242516904118

`∩[A216765(n+1), A016813(n)]`
-/

namespace A389957.P3636716242516904118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P3636716242516904118

/-! ## A389957.P13002296298332820788

`∩[A216765(n+1), A372293(n+1)]`
-/

namespace A389957.P13002296298332820788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P13002296298332820788

/-!
# A389958: Odd perfect powers (not including 1) plus 1.

The programs for A389958, there is no canonical definition to state claims against.
-/

/-! ## A389958.P8348046015857810783

`A389764(n+1)+2`
-/

namespace A389958.P8348046015857810783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389764 (n + 1) + 2

end

end A389958.P8348046015857810783

/-! ## A389958.P11785124768463361873

`A075109(n+2)+1`
-/

namespace A389958.P11785124768463361873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 2) + 1

end

end A389958.P11785124768463361873

/-! ## A389958.P1556186606166421321

`floor(sqrt(A389955(n+1)))+2`
-/

namespace A389958.P1556186606166421321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A389955 (n + 1)) + 2

end

end A389958.P1556186606166421321

/-! ## A389958.P8265927945786556364

`∩[2*n, A216765(n+1)]`
-/

namespace A389958.P8265927945786556364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389958.P8265927945786556364

/-! ## A389958.P17762681068957742718

`filter[A216765(n+1), A323170(#)]`
-/

namespace A389958.P17762681068957742718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A389958.P17762681068957742718

/-! ## A389958.P9849579311252063063

`filter[A216765(n+3), A354034(#)]`
-/

namespace A389958.P9849579311252063063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A389958.P9849579311252063063

/-! ## A389958.P7561077705894367967

`∩[A216765(n+1), A004271(n)]`
-/

namespace A389958.P7561077705894367967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389958.P7561077705894367967

/-! ## A389958.P8302522183860564136

`∩[A216765(n+1), A004275(n)]`
-/

namespace A389958.P8302522183860564136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389958.P8302522183860564136

/-! ## A389958.P1745687905098258773

`∩[A216765(n+1), A004277(n)]`
-/

namespace A389958.P1745687905098258773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389958.P1745687905098258773

/-! ## A389958.P15182209589494529469

`∩[A216765(n+1), A005843(n)]`
-/

namespace A389958.P15182209589494529469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389958.P15182209589494529469

/-!
# A389959: Powers k^m, m > 0, of Achilles numbers k.

The programs for A389959, there is no canonical definition to state claims against.
-/

/-! ## A389959.P3533836035692026330

`∪[A052486(n+1), A383394(n+1)]`
-/

namespace A389959.P3533836035692026330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389959.P3533836035692026330

/-! ## A389959.P1222593323333562207

`filter[A072412(n+1), A112526(#)]`
-/

namespace A389959.P1222593323333562207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A389959.P1222593323333562207

/-!
# A389960: Powers p^m, with prime p and m > 1, such that neither p^m-1 nor p^m+1 are squarefree.

The programs for A389960, there is no canonical definition to state claims against.
-/

/-! ## A389960.P781184734260081574

`∩[A025475(n+1), A378629(n+1)]`
-/

namespace A389960.P781184734260081574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P781184734260081574

/-! ## A389960.P13524265521258632890

`∩[A073540(n+1), A378629(n+1)]`
-/

namespace A389960.P13524265521258632890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P13524265521258632890

/-! ## A389960.P3852459602707283102

`∩[A134611(n+1), A378629(n+1)]`
-/

namespace A389960.P3852459602707283102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P3852459602707283102

/-! ## A389960.P7298904479489120969

`∩[A134612(n+1), A378629(n+1)]`
-/

namespace A389960.P7298904479489120969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P7298904479489120969

/-! ## A389960.P11114476738455247560

`∩[A306531(n+1), A378629(n+1)]`
-/

namespace A389960.P11114476738455247560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P11114476738455247560

/-! ## A389960.P14528066851067911206

`∩[A119492(n+1), A378629(n+1)]`
-/

namespace A389960.P14528066851067911206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P14528066851067911206

/-!
# A389962: Maximum degree of the polyiamond graph PG(n) defined in A389961.

The programs for A389962, there is no canonical definition to state claims against.
-/

/-! ## A389962.P260084050729824994

`or(A111892(A305296(n)), A389965(n+1))`
-/

namespace A389962.P260084050729824994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111892 (A305296 n).toNat) (A389965 (n + 1))

end

end A389962.P260084050729824994

/-! ## A389962.P4190706433701713704

`A100949(A135335(n+1))`
-/

namespace A389962.P4190706433701713704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A135335 (n + 1)).toNat

end

end A389962.P4190706433701713704

/-! ## A389962.P14693062431968978939

`A389965(A134810(n+1))`
-/

namespace A389962.P14693062431968978939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389965 (A134810 (n + 1)).toNat

end

end A389962.P14693062431968978939

/-! ## A389962.P1547452828978798370

`A389965(C(A052383(n+1), n))`
-/

namespace A389962.P1547452828978798370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389965 (Nat.choose (A052383 (n + 1)).toNat n)

end

end A389962.P1547452828978798370

/-! ## A389962.P9552861587482386441

`A389965(A052383(n+1)+A000007(n))`
-/

namespace A389962.P9552861587482386441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389965 (A052383 (n + 1) + A000007 n).toNat

end

end A389962.P9552861587482386441

/-!
# A389964: a(n) is the number of edges in the graph PG(n) with one node for each free n-celled polyiamond and edges between nodes corresponding to polyiamonds that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is required to be a connected polyiamond.

The programs for A389964, there is no canonical definition to state claims against.
-/

/-! ## A389964.P7569954505462050353

`A127240(A161999(n+1))-A127240(n)`
-/

namespace A389964.P7569954505462050353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127240 (A161999 (n + 1)).toNat - A127240 n

end

end A389964.P7569954505462050353

/-! ## A389964.P17311226221672085802

`A355339(and(A137916(n), A355351(3*n+4)))`
-/

namespace A389964.P17311226221672085802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355339 (Int.land (A137916 n) (A355351 (3 * n + 4))).toNat

end

end A389964.P17311226221672085802

/-!
# A389967: Let PG(n) be the graph with one node for each free n-celled polyhex and edges between nodes corresponding to polyhexes that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is not required to be a connected polyhex. a(n) is the number of edges in PG(n).

The programs for A389967, there is no canonical definition to state claims against.
-/

/-! ## A389967.P18175730104834072613

`A056239(∑[lcm(1-n, (-n)^n)])`
-/

namespace A389967.P18175730104834072613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) ((-(n : ℤ)) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A389967.P18175730104834072613

/-!
# A389968: Maximum degree of the polyhex graph PG(n) defined in A389967.

The programs for A389968, there is no canonical definition to state claims against.
-/

/-! ## A389968.P14200940188923261470

`A389971(n+1)+A359430(n+2)`
-/

namespace A389968.P14200940188923261470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389971 (n + 1) + A359430 (n + 2)

end

end A389968.P14200940188923261470

/-! ## A389968.P861751357501847506

`A389971(n+1)+A226516(A271410(n))`
-/

namespace A389968.P861751357501847506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389971 (n + 1) + A226516 (A271410 n).toNat

end

end A389968.P861751357501847506

/-!
# A389970: Let PG(n) be the graph with one node for each free n-celled polyhex and edges between nodes corresponding to polyhexes that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is required to be a connected polyhex. a(n) is the number of edges in PG(n).

The programs for A389970, there is no canonical definition to state claims against.
-/

/-! ## A389970.P7963360497200968434

`A282380(7^n)`
-/

namespace A389970.P7963360497200968434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282380 (7 ^ n)

end

end A389970.P7963360497200968434

/-!
# A389976: Expansion of e.g.f. exp(2*x)*(exp(x) - x).

The programs for A389976, the canonical program `A389976.P12702085776211857490` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389976 has offset 0).

The definition of A389976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389976.P12702085776211857490

`3^n-n*2^(n-1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A389976

/-- `3^n-n*2^(n-1)` -/
def P12702085776211857490.Spec : Prop :=
  ∀ n, P12702085776211857490.a n = (A389976 n : ℚ)

end A389976

/-! ## A389976.P4071513563808977506

`∑[A083580(n)+floor(1/(n+1))]`
-/

namespace A389976.P4071513563808977506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 n + ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389976.P4071513563808977506

namespace A389976

/-- `∑[A083580(n)+floor(1/(n+1))]` -/
def P4071513563808977506.Spec : Prop :=
  ∀ n, P4071513563808977506.a n = A389976 n

end A389976

/-! ## A389976.P14983318341843850942

`∑[A083580(sqrt(A253909(n)))]`
-/

namespace A389976.P14983318341843850942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389976.P14983318341843850942

namespace A389976

/-- `∑[A083580(sqrt(A253909(n)))]` -/
def P14983318341843850942.Spec : Prop :=
  ∀ n, P14983318341843850942.a n = A389976 n

end A389976

/-! ## A389976.P15803266353656903765

`abs(A000244(n)-A001787(n))`
-/

namespace A389976.P15803266353656903765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A001787 n|

end

end A389976.P15803266353656903765

namespace A389976

/-- `abs(A000244(n)-A001787(n))` -/
def P15803266353656903765.Spec : Prop :=
  ∀ n, P15803266353656903765.a n = A389976 n

end A389976

/-! ## A389976.P11015937427311755934

`∑[A083580(A000007(n)+n)]`
-/

namespace A389976.P11015937427311755934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389976.P11015937427311755934

namespace A389976

/-- `∑[A083580(A000007(n)+n)]` -/
def P11015937427311755934.Spec : Prop :=
  ∀ n, P11015937427311755934.a n = A389976 n

end A389976

/-! ## A389976.P3334874147290101773

`∑[or(A000007(n), A083580(n))]`
-/

namespace A389976.P3334874147290101773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083580 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389976.P3334874147290101773

namespace A389976

/-- `∑[or(A000007(n), A083580(n))]` -/
def P3334874147290101773.Spec : Prop :=
  ∀ n, P3334874147290101773.a n = A389976 n

end A389976

/-!
# A389977: Absolute value of the inverse Möbius transform of n*mu(n)*sigma(n).

The programs for A389977, the canonical program `A389977.P13860639153508659065` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389977 has offset 1).

The definition of A389977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389977.P13860639153508659065

`∏{p}[n+1, #²-1+#]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A389977

/-- `∏{p}[n+1, #²-1+#]` -/
def P13860639153508659065.Spec : Prop :=
  ∀ n, P13860639153508659065.a n = A389977 (n + 1)

theorem P13860639153508659065.correct : P13860639153508659065.Spec := by
  intro n
  simp only [A389977, Nat.add_sub_cancel]

end A389977

/-! ## A389977.P9478621276322822542

`A069097(∏{p}[n+1, #])`
-/

namespace A389977.P9478621276322822542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P9478621276322822542

namespace A389977

/-- `A069097(∏{p}[n+1, #])` -/
def P9478621276322822542.Spec : Prop :=
  ∀ n, P9478621276322822542.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P12886711105533517685

`A140697(∏{p}[n+1, #])`
-/

namespace A389977.P12886711105533517685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140697 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P12886711105533517685

namespace A389977

/-- `A140697(∏{p}[n+1, #])` -/
def P12886711105533517685.Spec : Prop :=
  ∀ n, P12886711105533517685.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P9753439371495053848

`A372906(∏{p}[n+1, #])`
-/

namespace A389977.P9753439371495053848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372906 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P9753439371495053848

namespace A389977

/-- `A372906(∏{p}[n+1, #])` -/
def P9753439371495053848.Spec : Prop :=
  ∀ n, P9753439371495053848.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P9567198029581166885

`A372918(∏{p}[n+1, #])`
-/

namespace A389977.P9567198029581166885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372918 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P9567198029581166885

namespace A389977

/-- `A372918(∏{p}[n+1, #])` -/
def P9567198029581166885.Spec : Prop :=
  ∀ n, P9567198029581166885.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P5725756967744496143

`A396901(∏{p}[n+1, #])`
-/

namespace A389977.P5725756967744496143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396901 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P5725756967744496143

namespace A389977

/-- `A396901(∏{p}[n+1, #])` -/
def P5725756967744496143.Spec : Prop :=
  ∀ n, P5725756967744496143.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P683910175036304600

`A069097(A007947(n+1))`
-/

namespace A389977.P683910175036304600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (A007947 (n + 1)).toNat

end

end A389977.P683910175036304600

namespace A389977

/-- `A069097(A007947(n+1))` -/
def P683910175036304600.Spec : Prop :=
  ∀ n, P683910175036304600.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P14107857964220033907

`A049060(A078615(n+1))`
-/

namespace A389977.P14107857964220033907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049060 (A078615 (n + 1)).toNat

end

end A389977.P14107857964220033907

namespace A389977

/-- `A049060(A078615(n+1))` -/
def P14107857964220033907.Spec : Prop :=
  ∀ n, P14107857964220033907.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P15501476589349463494

`A049060(A007947(n+1)²)`
-/

namespace A389977.P15501476589349463494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049060 (A007947 (n + 1) ^ 2).toNat

end

end A389977.P15501476589349463494

namespace A389977

/-- `A049060(A007947(n+1)²)` -/
def P15501476589349463494.Spec : Prop :=
  ∀ n, P15501476589349463494.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P2841068462273256742

`A327668(A007947(n+1)²)`
-/

namespace A389977.P2841068462273256742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327668 (A007947 (n + 1) ^ 2).toNat

end

end A389977.P2841068462273256742

namespace A389977

/-- `A327668(A007947(n+1)²)` -/
def P2841068462273256742.Spec : Prop :=
  ∀ n, P2841068462273256742.a n = A389977 (n + 1)

end A389977

/-!
# A389978: Arithmetic mean of A367866(n), A389977(n), A367865(n), and A389775(n).

The programs for A389978, the canonical program `A389978.P11057801239353336725` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389978 has offset 1).

The definition of A389978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367865, A389775, A389977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389978.P11057801239353336725

`(A367866(n+1)+A389977(n+1)+A367865(n+1)+A389775(n+1))/4`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A389978

/-- `(A367866(n+1)+A389977(n+1)+A367865(n+1)+A389775(n+1))/4` -/
def P11057801239353336725.Spec : Prop :=
  ∀ n, P11057801239353336725.a n = (A389978 (n + 1) : ℚ)

end A389978

/-!
# A389981: Positive integers (not multiples of 10) whose constant congruence speed is greater than the product of the constant congruence speeds of all their prime factors (see A373387 for the definition of "constant congruence speed").

The programs for A389981, there is no canonical definition to state claims against.
-/

/-! ## A389981.P1577647499117806845

`∩[A331201(n+1), A390320(n+1)]`
-/

namespace A389981.P1577647499117806845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P1577647499117806845

/-! ## A389981.P13696500192809051163

`∩[A336143(n+1), A390320(n+1)]`
-/

namespace A389981.P13696500192809051163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P13696500192809051163

/-! ## A389981.P614355192683412704

`∩[A325265(n+1), A390320(n+1)]`
-/

namespace A389981.P614355192683412704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P614355192683412704

/-! ## A389981.P16637311805345768085

`∩[A368459(n+1), A390320(n+1)]`
-/

namespace A389981.P16637311805345768085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P16637311805345768085

/-! ## A389981.P1635185762059686972

`∩[A390320(n+1), A049386(n)]`
-/

namespace A389981.P1635185762059686972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P1635185762059686972

/-!
# A389982: Triangle in which row n contains values from 1 to n in alphabetical order (in German).

The programs for A389982, there is no canonical definition to state claims against.
-/

/-! ## A389982.P12630749447958505415

`or(A122840(A064319(n+1)), A194832(n+1))`
-/

namespace A389982.P12630749447958505415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122840 (A064319 (n + 1)).toNat) (A194832 (n + 1))

end

end A389982.P12630749447958505415

/-!
# A389983: Irregular triangle read by rows: T(n,k) is the number of partitions of the vertex set of the labeled n-dimensional hypercube graph into k connected subsets, 1 <= k <= 2^n.

The programs for A389983, there is no canonical definition to state claims against.
-/

/-! ## A389983.P2914172814727849203

`A370072(A007604(n+2))`
-/

namespace A389983.P2914172814727849203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370072 (A007604 (n + 2)).toNat

end

end A389983.P2914172814727849203

/-! ## A389983.P13722148024524613402

`A370072(A013950(n+2))`
-/

namespace A389983.P13722148024524613402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370072 (A013950 (n + 2)).toNat

end

end A389983.P13722148024524613402

/-! ## A389983.P9085933852067240871

`A000188(A001032(n+1)*A005316(n))`
-/

namespace A389983.P9085933852067240871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A001032 (n + 1) * A005316 n).toNat

end

end A389983.P9085933852067240871

/-! ## A389983.P11669275247733968382

`A000005(A000292(n)^A259572(n+4))`
-/

namespace A389983.P11669275247733968382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000292 n : ℚ) ^ (A259572 (n + 4) : ℤ))).toNat

end

end A389983.P11669275247733968382

/-!
# A389984: Number of partitions of the vertex set of the labeled n-dimensional hypercube graph into 2 connected subsets.

The programs for A389984, there is no canonical definition to state claims against.
-/

/-! ## A389984.P732311194042572710

`A389983(A000127(n+1))-A075852(n)`
-/

namespace A389984.P732311194042572710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389983 (A000127 (n + 1)).toNat - A075852 n

end

end A389984.P732311194042572710

/-!
# A389986: E.g.f. A(x) satisfies A(x) = exp(x * (1+x^2)^3 * A(x)).

The programs for A389986, there is no canonical definition to state claims against.
-/

/-! ## A389986.P14427062092491570358

`A176577(A149355(n))`
-/

namespace A389986.P14427062092491570358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176577 (A149355 n).toNat

end

end A389986.P14427062092491570358

/-!
# A389987: E.g.f. A(x) satisfies A(x) = exp(x * (1+x^3)^2 * A(x)).

The programs for A389987, there is no canonical definition to state claims against.
-/

/-! ## A389987.P6774568377230205217

`A390184(A303164(n+1))`
-/

namespace A389987.P6774568377230205217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390184 (A303164 (n + 1)).toNat

end

end A389987.P6774568377230205217

/-!
# A389988: E.g.f. A(x) satisfies A(x) = exp(x * (1+x^3)^3 * A(x)).

The programs for A389988, there is no canonical definition to state claims against.
-/

/-! ## A389988.P17228761006106821526

`A390185(n)+A086073(A101220(n))`
-/

namespace A389988.P17228761006106821526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390185 n + A086073 (A101220 n).toNat

end

end A389988.P17228761006106821526

/-! ## A389988.P5959110254317047822

`A390185(n)^A093178(A245374(n))`
-/

namespace A389988.P5959110254317047822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390185 n : ℚ) ^ (A093178 (A245374 n).toNat : ℤ)

end

end A389988.P5959110254317047822

/-! ## A389988.P4326266182995826487

`A390185(n)^A093178(A382708(n+3))`
-/

namespace A389988.P4326266182995826487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390185 n : ℚ) ^ (A093178 (A382708 (n + 3)).toNat : ℤ)

end

end A389988.P4326266182995826487

/-!
# A389989: a(n) = 3^n - 2^n - 2*n - 1, n > 1; a(0)=a(1)=0.

The programs for A389989, the canonical program `A389989.P16156357177488395831` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389989 has offset 0).

The definition of A389989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389989.P16156357177488395831

`A100103(n)%A134064(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A389989

/-- `A100103(n)%A134064(n)` -/
def P16156357177488395831.Spec : Prop :=
  ∀ n, P16156357177488395831.a n = A389989 n

theorem P16156357177488395831.correct : P16156357177488395831.Spec := by
  intro n
  simp only [A389989]

end A389989

/-! ## A389989.P11335186912694999892

`4*A088526(A270635(n))`
-/

namespace A389989.P11335186912694999892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088526 (A270635 n).toNat

end

end A389989.P11335186912694999892

namespace A389989

/-- `4*A088526(A270635(n))` -/
def P11335186912694999892.Spec : Prop :=
  ∀ n, P11335186912694999892.a n = A389989 n

end A389989

/-!
# A389991: Total number of descents in all heapable permutations of length n.

The programs for A389991, there is no canonical definition to state claims against.
-/

/-! ## A389991.P1527577674183148194

`A389256(n+1)-A336282(n+1)`
-/

namespace A389991.P1527577674183148194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389256 (n + 1) - A336282 (n + 1)

end

end A389991.P1527577674183148194

/-! ## A389991.P2756026462252622075

`A389256(n+1)+A389792(n+1)-A389232(n+1)`
-/

namespace A389991.P2756026462252622075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389256 (n + 1) + (A389792 (n + 1) - A389232 (n + 1))

end

end A389991.P2756026462252622075

/-!
# A389992: Expansion of e.g.f. exp( x/(1-x)^2 ) / (1-x)^3.

The programs for A389992, there is no canonical definition to state claims against.
-/

/-! ## A389992.P3228336058314453095

`Δ[A365565(n+1)]-A000120(n)`
-/

namespace A389992.P3228336058314453095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000120 n

end

end A389992.P3228336058314453095

/-!
# A389993: Triangle read by rows: T(n,k) = number of heapable permutations of length n with exactly k consecutive pairs.

The programs for A389993, there is no canonical definition to state claims against.
-/

/-! ## A389993.P13025023742609270762

`A330248(A087644(n+3))`
-/

namespace A389993.P13025023742609270762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330248 (A087644 (n + 3)).toNat

end

end A389993.P13025023742609270762

/-! ## A389993.P10610640072851270070

`A139352(A208452(n)+A087117(n))`
-/

namespace A389993.P10610640072851270070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A208452 n + A087117 n).toNat

end

end A389993.P10610640072851270070

/-! ## A389993.P13087712347056886759

`A127323(A268448(n+2)+A002024(n+1))`
-/

namespace A389993.P13087712347056886759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 (A268448 (n + 2) + A002024 (n + 1)).toNat

end

end A389993.P13087712347056886759

/-! ## A389993.P10804725195275360338

`and(A000040(A181060(3*n+5)), A116399(n))`
-/

namespace A389993.P10804725195275360338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A181060 (3 * n + 5)).toNat) (A116399 n)

end

end A389993.P10804725195275360338

/-! ## A389993.P8384335471772400377

`A373949(lt[A339166(n+3), A047896(n+1)])`
-/

namespace A389993.P8384335471772400377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389993.P8384335471772400377

