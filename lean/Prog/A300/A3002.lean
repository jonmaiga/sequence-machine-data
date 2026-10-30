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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A300202: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300202, there is no canonical definition to state claims against.
-/

/-! ## A300202.P7403093561620379510

`A300208(∑[4*n]+1)`
-/

namespace A300202.P7403093561620379510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300202.P7403093561620379510

/-! ## A300202.P844288090520398864

`record[gcd(A157525(n), A300208(n+1))]`
-/

namespace A300202.P844288090520398864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157525 n) (A300208 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300202.P844288090520398864

/-! ## A300202.P11170446550806544500

`A260340(n)*A300208(A001844(n))`
-/

namespace A300202.P11170446550806544500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260340 n * A300208 (A001844 n).toNat

end

end A300202.P11170446550806544500

/-! ## A300202.P11830248975547414468

`gcd(A015161(n), A300208(A001844(n)))`
-/

namespace A300202.P11830248975547414468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015161 n) (A300208 (A001844 n).toNat)

end

end A300202.P11830248975547414468

/-! ## A300202.P8953343866403057990

`lcm(A033999(n), A300208(A001844(n)))`
-/

namespace A300202.P8953343866403057990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300208 (A001844 n).toNat)

end

end A300202.P8953343866403057990

/-!
# A300203: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300203, the canonical program `A300203.P17626837569541527987` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300203 has offset 1).

The definition of A300203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300203.P17626837569541527987

`ogf((4-7x^3-6x^4)/(1-8x+2x^2-5x^3+13x^4+6x^5))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A300203

/-- `ogf((4-7x^3-6x^4)/(1-8x+2x^2-5x^3+13x^4+6x^5))` -/
def P17626837569541527987.Spec : Prop :=
  ∀ n, P17626837569541527987.a n = A300203 (n + 1)

theorem P17626837569541527987.correct : P17626837569541527987.Spec := by
  intro n
  simp only [A300203, Nat.add_sub_cancel]

end A300203

/-! ## A300203.P3585159235525063055

`A300208(∑[n+2]+4)`
-/

namespace A300203.P3585159235525063055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300203.P3585159235525063055

namespace A300203

/-- `A300208(∑[n+2]+4)` -/
def P3585159235525063055.Spec : Prop :=
  ∀ n, P3585159235525063055.a n = A300203 (n + 1)

end A300203

/-! ## A300203.P1467473074315268474

`A300208(A167614(n+1))+A025466(n)`
-/

namespace A300203.P1467473074315268474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A167614 (n + 1)).toNat + A025466 n

end

end A300203.P1467473074315268474

namespace A300203

/-- `A300208(A167614(n+1))+A025466(n)` -/
def P1467473074315268474.Spec : Prop :=
  ∀ n, P1467473074315268474.a n = A300203 (n + 1)

end A300203

/-! ## A300203.P9833392433531525672

`A300208(A167614(n+1))+A185255(n)`
-/

namespace A300203.P9833392433531525672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A167614 (n + 1)).toNat + A185255 n

end

end A300203.P9833392433531525672

namespace A300203

/-- `A300208(A167614(n+1))+A185255(n)` -/
def P9833392433531525672.Spec : Prop :=
  ∀ n, P9833392433531525672.a n = A300203 (n + 1)

end A300203

/-! ## A300203.P2740709882143902988

`lcm(A165326(n), A300208(A167614(n+1)))`
-/

namespace A300203.P2740709882143902988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A300208 (A167614 (n + 1)).toNat)

end

end A300203.P2740709882143902988

namespace A300203

/-- `lcm(A165326(n), A300208(A167614(n+1)))` -/
def P2740709882143902988.Spec : Prop :=
  ∀ n, (P2740709882143902988.a n : ℤ) = A300203 (n + 1)

end A300203

/-!
# A300204: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300204, there is no canonical definition to state claims against.
-/

/-! ## A300204.P7462475349080333402

`A300208(A374004(n+1))`
-/

namespace A300204.P7462475349080333402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A374004 (n + 1)).toNat

end

end A300204.P7462475349080333402

/-! ## A300204.P9055777664662976613

`A300208(A141214(n)+7)`
-/

namespace A300204.P9055777664662976613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A141214 n + 7).toNat

end

end A300204.P9055777664662976613

/-! ## A300204.P14619756880510127676

`A300208(A052905(n)+9)`
-/

namespace A300204.P14619756880510127676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A052905 n + 9).toNat

end

end A300204.P14619756880510127676

/-! ## A300204.P3178020086353837241

`A300208(A167614(n+2)+1)`
-/

namespace A300204.P3178020086353837241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A167614 (n + 2) + 1).toNat

end

end A300204.P3178020086353837241

/-! ## A300204.P5337248711147757497

`A300208(A141214(n+1))`
-/

namespace A300204.P5337248711147757497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A141214 (n + 1)).toNat

end

end A300204.P5337248711147757497

/-!
# A300205: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300205, there is no canonical definition to state claims against.
-/

/-! ## A300205.P2416726365050726583

`A300208(A374005(n+1))`
-/

namespace A300205.P2416726365050726583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A374005 (n + 1)).toNat

end

end A300205.P2416726365050726583

/-! ## A300205.P2626418329555490419

`A300208(A167614(n+3)+2)`
-/

namespace A300205.P2626418329555490419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A167614 (n + 3) + 2).toNat

end

end A300205.P2626418329555490419

/-! ## A300205.P1228749553761562340

`A300208(A141214(n+1)+8)`
-/

namespace A300205.P1228749553761562340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A141214 (n + 1) + 8).toNat

end

end A300205.P1228749553761562340

/-! ## A300205.P14707578900445684319

`A300208(A167499(A141213(n)))`
-/

namespace A300205.P14707578900445684319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A167499 (A141213 n).toNat).toNat

end

end A300205.P14707578900445684319

/-! ## A300205.P6769920184633561901

`A300208(A046691(n+3))`
-/

namespace A300205.P6769920184633561901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A046691 (n + 3)).toNat

end

end A300205.P6769920184633561901

/-!
# A300206: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300206, there is no canonical definition to state claims against.
-/

/-! ## A300206.P10451662868584799437

`A300208(A374007(n+1))`
-/

namespace A300206.P10451662868584799437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A374007 (n + 1)).toNat

end

end A300206.P10451662868584799437

/-! ## A300206.P6632349457709497851

`A300208(eq[5, A002262(n)]+1)`
-/

namespace A300206.P6632349457709497851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A300206.P6632349457709497851

/-! ## A300206.P17116155828661964307

`A300208(eq[7, A131818(n+1)])`
-/

namespace A300206.P17116155828661964307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300206.P17116155828661964307

/-! ## A300206.P6334122878277633310

`A300208(A052905(n+3))`
-/

namespace A300206.P6334122878277633310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A052905 (n + 3)).toNat

end

end A300206.P6334122878277633310

/-! ## A300206.P4991159265749431548

`A300208(eq[5, A193592(n)])`
-/

namespace A300206.P4991159265749431548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300206.P4991159265749431548

/-!
# A300207: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300207, there is no canonical definition to state claims against.
-/

/-! ## A300207.P10449445819027697558

`A300208(A374008(n+1))`
-/

namespace A300207.P10449445819027697558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A374008 (n + 1)).toNat

end

end A300207.P10449445819027697558

/-! ## A300207.P13613635320473468635

`A300208(eq[6, A002262(n)]+1)`
-/

namespace A300207.P13613635320473468635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A300207.P13613635320473468635

/-! ## A300207.P11097268564432736973

`A300208(eq[8, A131818(n+1)])`
-/

namespace A300207.P11097268564432736973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300207.P11097268564432736973

/-! ## A300207.P11048009479147491254

`A300208(A055999(n+4))`
-/

namespace A300207.P11048009479147491254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (A055999 (n + 4)).toNat

end

end A300207.P11048009479147491254

/-! ## A300207.P14612222015317746370

`A300208(eq[4, A219347(n)])`
-/

namespace A300207.P14612222015317746370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300207.P14612222015317746370

/-!
# A300208: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300208, there is no canonical definition to state claims against.
-/

/-! ## A300208.P16495025530156045494

`or(A278523(A317525(n+1)), A317525(n+1))`
-/

namespace A300208.P16495025530156045494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278523 (A317525 (n + 1)).toNat) (A317525 (n + 1))

end

end A300208.P16495025530156045494

/-! ## A300208.P2016133507518162236

`(13*A317525(n+1))%A342126(2*A317525(n+1))`
-/

namespace A300208.P2016133507518162236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (13 * A317525 (n + 1)) (A342126 (2 * A317525 (n + 1)).toNat)

end

end A300208.P2016133507518162236

/-! ## A300208.P5923879215520819383

`lcm(13, A317525(n+1))%A006949(4*A317525(n+1))`
-/

namespace A300208.P5923879215520819383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm 13 (A317525 (n + 1)) : ℤ) (A006949 (4 * A317525 (n + 1)).toNat)

end

end A300208.P5923879215520819383

/-! ## A300208.P1275810272173063384

`A317525(n+1)+A096528(A294758(n))`
-/

namespace A300208.P1275810272173063384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (n + 1) + A096528 (A294758 n).toNat

end

end A300208.P1275810272173063384

/-! ## A300208.P11019505155714198289

`A036465(A227594(n+1))`
-/

namespace A300208.P11019505155714198289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036465 (A227594 (n + 1)).toNat

end

end A300208.P11019505155714198289

/-!
# A300209: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300209, there is no canonical definition to state claims against.
-/

/-! ## A300209.P176675837048179215

`A300215(∑[4*n]+1)`
-/

namespace A300209.P176675837048179215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300209.P176675837048179215

/-! ## A300209.P16751857642123202810

`A300215(A001844(n))+A257850(n)`
-/

namespace A300209.P16751857642123202810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A001844 n).toNat + A257850 n

end

end A300209.P16751857642123202810

/-! ## A300209.P15957463227807529370

`A178788(n)*A300215(A001844(n))`
-/

namespace A300209.P15957463227807529370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n * A300215 (A001844 n).toNat

end

end A300209.P15957463227807529370

/-! ## A300209.P5596576242627003685

`A181937(n)*A300215(A001844(n))`
-/

namespace A300209.P5596576242627003685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n * A300215 (A001844 n).toNat

end

end A300209.P5596576242627003685

/-! ## A300209.P14851811631206210646

`lcm(A033999(n), A300215(A001844(n)))`
-/

namespace A300209.P14851811631206210646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300215 (A001844 n).toNat)

end

end A300209.P14851811631206210646

/-!
# A300210: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300210, there is no canonical definition to state claims against.
-/

/-! ## A300210.P15518155840988345479

`A300215(∑[n+2]+4)`
-/

namespace A300210.P15518155840988345479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300210.P15518155840988345479

/-! ## A300210.P9822378216877868375

`A300215(A167614(n+1))%A239421(n+1)`
-/

namespace A300210.P9822378216877868375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300215 (A167614 (n + 1)).toNat) (A239421 (n + 1))

end

end A300210.P9822378216877868375

/-! ## A300210.P17746165934857267875

`lcm(A154990(n+1), A300215(A167614(n+1)))`
-/

namespace A300210.P17746165934857267875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154990 (n + 1)) (A300215 (A167614 (n + 1)).toNat)

end

end A300210.P17746165934857267875

/-! ## A300210.P14763664860566859332

`or(A300215(A167614(n+1)), A309785(n+1))`
-/

namespace A300210.P14763664860566859332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A300215 (A167614 (n + 1)).toNat) (A309785 (n + 1))

end

end A300210.P14763664860566859332

/-! ## A300210.P14835836878214460030

`A300215(A167614(n+1))+A056594(2*n+1)`
-/

namespace A300210.P14835836878214460030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A167614 (n + 1)).toNat + A056594 (2 * n + 1)

end

end A300210.P14835836878214460030

/-!
# A300211: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300211, there is no canonical definition to state claims against.
-/

/-! ## A300211.P16666028519032136442

`A300215(A374004(n+1))`
-/

namespace A300211.P16666028519032136442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A374004 (n + 1)).toNat

end

end A300211.P16666028519032136442

/-! ## A300211.P4526579616161999846

`A300215(A141214(n)+7)`
-/

namespace A300211.P4526579616161999846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A141214 n + 7).toNat

end

end A300211.P4526579616161999846

/-! ## A300211.P7281356916967760703

`A300215(A167614(n+2)+1)`
-/

namespace A300211.P7281356916967760703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A167614 (n + 2) + 1).toNat

end

end A300211.P7281356916967760703

/-! ## A300211.P1202630764639895732

`A300215(A167499(n+2)-1)`
-/

namespace A300211.P1202630764639895732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A167499 (n + 2) - 1).toNat

end

end A300211.P1202630764639895732

/-! ## A300211.P9101954659499727872

`A300215(A055998(n+1)+7)`
-/

namespace A300211.P9101954659499727872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A055998 (n + 1) + 7).toNat

end

end A300211.P9101954659499727872

/-!
# A300212: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300212, there is no canonical definition to state claims against.
-/

/-! ## A300212.P4281197531639316197

`A300215(A374005(n+1))`
-/

namespace A300212.P4281197531639316197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A374005 (n + 1)).toNat

end

end A300212.P4281197531639316197

/-! ## A300212.P17294691684251367100

`A300215(A167499(n+3))`
-/

namespace A300212.P17294691684251367100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A167499 (n + 3)).toNat

end

end A300212.P17294691684251367100

/-! ## A300212.P14929869357704502856

`A300215(A155212(n)+13)`
-/

namespace A300212.P14929869357704502856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A155212 n + 13).toNat

end

end A300212.P14929869357704502856

/-! ## A300212.P6938978542794064643

`A300215(A055998(n+2)+8)`
-/

namespace A300212.P6938978542794064643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A055998 (n + 2) + 8).toNat

end

end A300212.P6938978542794064643

/-! ## A300212.P9598956080299532305

`A300215(eq[6, A131818(n+1)])`
-/

namespace A300212.P9598956080299532305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300212.P9598956080299532305

/-!
# A300213: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300213, there is no canonical definition to state claims against.
-/

/-! ## A300213.P1704349627732478004

`A300215(A374007(n+1))`
-/

namespace A300213.P1704349627732478004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A374007 (n + 1)).toNat

end

end A300213.P1704349627732478004

/-! ## A300213.P3047867321213245463

`A300215(eq[7, A131818(n+1)])`
-/

namespace A300213.P3047867321213245463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300213.P3047867321213245463

/-! ## A300213.P7655762019002451970

`A300215(A056119(n)+16)`
-/

namespace A300213.P7655762019002451970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A056119 n + 16).toNat

end

end A300213.P7655762019002451970

/-! ## A300213.P4435748510196906564

`A300215(eq[3, A219347(n)])`
-/

namespace A300213.P4435748510196906564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300213.P4435748510196906564

/-! ## A300213.P5834202390124095087

`A300215(eq[5, A193592(n)])`
-/

namespace A300213.P5834202390124095087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300213.P5834202390124095087

/-!
# A300214: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300214, there is no canonical definition to state claims against.
-/

/-! ## A300214.P11291193191930723780

`A300215(A374008(n+1))`
-/

namespace A300214.P11291193191930723780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A374008 (n + 1)).toNat

end

end A300214.P11291193191930723780

/-! ## A300214.P15984935869833174183

`A300215(A056119(n)+28)`
-/

namespace A300214.P15984935869833174183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A056119 n + 28).toNat

end

end A300214.P15984935869833174183

/-! ## A300214.P4679669589415868247

`A300215(eq[11, A066657(n)])`
-/

namespace A300214.P4679669589415868247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300214.P4679669589415868247

/-! ## A300214.P7196013760776693581

`A300215(A167499(n+5)+2)`
-/

namespace A300214.P7196013760776693581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (A167499 (n + 5) + 2).toNat

end

end A300214.P7196013760776693581

/-! ## A300214.P9872122179387388917

`A300215(eq[8, A131818(n+1)])`
-/

namespace A300214.P9872122179387388917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300214.P9872122179387388917

/-!
# A300215: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300215, there is no canonical definition to state claims against.
-/

/-! ## A300215.P7953646792012320109

`or(A002262(A296548(n)), A317565(n+1))`
-/

namespace A300215.P7953646792012320109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A296548 n).toNat) (A317565 (n + 1))

end

end A300215.P7953646792012320109

/-! ## A300215.P14871719819614291522

`A299661(n+1)+A054911(A299905(n))²`
-/

namespace A300215.P14871719819614291522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (n + 1) + A054911 (A299905 n).toNat ^ 2

end

end A300215.P14871719819614291522

/-! ## A300215.P17895342063670824788

`or(A309785(A174545(n))², A317565(n+1))`
-/

namespace A300215.P17895342063670824788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A309785 (A174545 n).toNat ^ 2) (A317565 (n + 1))

end

end A300215.P17895342063670824788

/-! ## A300215.P16120093065073143424

`or(A309785(A124976(n+1))², A317565(n+1))`
-/

namespace A300215.P16120093065073143424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A309785 (A124976 (n + 1)).toNat ^ 2) (A317565 (n + 1))

end

end A300215.P16120093065073143424

/-! ## A300215.P8227021130007207428

`or(A317565(n+1), A317636(A317611(n+1)))`
-/

namespace A300215.P8227021130007207428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A317565 (n + 1)) (A317636 (A317611 (n + 1)).toNat)

end

end A300215.P8227021130007207428

/-!
# A300216: Numbers k such that k and phi(k) share the same prime signature.

The programs for A300216, the canonical program `A300216.P10442429664433189190` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300216 has offset 1).

The definition of A300216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300216.P260773353841015448

`record[(n+1)*A323513(n+1)]`
-/

namespace A300216.P260773353841015448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A323513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300216.P260773353841015448

namespace A300216

/-- `record[(n+1)*A323513(n+1)]` -/
def P260773353841015448.Spec : Prop :=
  ∀ n, P260773353841015448.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P5345257225389359421

`filter[A066887(n+1), A323513(#)]`
-/

namespace A300216.P5345257225389359421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P5345257225389359421

namespace A300216

/-- `filter[A066887(n+1), A323513(#)]` -/
def P5345257225389359421.Spec : Prop :=
  ∀ n, P5345257225389359421.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P8781124651760284797

`filter[A070418(n+1), A323513(#)]`
-/

namespace A300216.P8781124651760284797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P8781124651760284797

namespace A300216

/-- `filter[A070418(n+1), A323513(#)]` -/
def P8781124651760284797.Spec : Prop :=
  ∀ n, P8781124651760284797.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P5526476768850407657

`filter[A305904(n+1), A323513(#)]`
-/

namespace A300216.P5526476768850407657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P5526476768850407657

namespace A300216

/-- `filter[A305904(n+1), A323513(#)]` -/
def P5526476768850407657.Spec : Prop :=
  ∀ n, P5526476768850407657.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P1141215657982865938

`filter[A305903(n+1), A323513(#)]`
-/

namespace A300216.P1141215657982865938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P1141215657982865938

namespace A300216

/-- `filter[A305903(n+1), A323513(#)]` -/
def P1141215657982865938.Spec : Prop :=
  ∀ n, P1141215657982865938.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P17531370967123929843

`filter[A305800(n+1), A323513(#)]`
-/

namespace A300216.P17531370967123929843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P17531370967123929843

namespace A300216

/-- `filter[A305800(n+1), A323513(#)]` -/
def P17531370967123929843.Spec : Prop :=
  ∀ n, P17531370967123929843.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P11058056648916605484

`filter[A305900(n+1), A323513(#)]`
-/

namespace A300216.P11058056648916605484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P11058056648916605484

namespace A300216

/-- `filter[A305900(n+1), A323513(#)]` -/
def P11058056648916605484.Spec : Prop :=
  ∀ n, P11058056648916605484.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P14661485988293052835

`filter[A305976(n+1), A323513(#)]`
-/

namespace A300216.P14661485988293052835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P14661485988293052835

namespace A300216

/-- `filter[A305976(n+1), A323513(#)]` -/
def P14661485988293052835.Spec : Prop :=
  ∀ n, P14661485988293052835.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P1774963144926264579

`filter[A305979(n+1), A323513(#)]`
-/

namespace A300216.P1774963144926264579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P1774963144926264579

namespace A300216

/-- `filter[A305979(n+1), A323513(#)]` -/
def P1774963144926264579.Spec : Prop :=
  ∀ n, P1774963144926264579.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P9699085589180315941

`filter[A319706(n+1), A323513(#)]`
-/

namespace A300216.P9699085589180315941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P9699085589180315941

namespace A300216

/-- `filter[A319706(n+1), A323513(#)]` -/
def P9699085589180315941.Spec : Prop :=
  ∀ n, P9699085589180315941.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P2997289365748051333

`filter[A319707(n+1), A323513(#)]`
-/

namespace A300216.P2997289365748051333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P2997289365748051333

namespace A300216

/-- `filter[A319707(n+1), A323513(#)]` -/
def P2997289365748051333.Spec : Prop :=
  ∀ n, P2997289365748051333.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P4435119045821303264

`filter[A305901(n+1), A323513(#)]`
-/

namespace A300216.P4435119045821303264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P4435119045821303264

namespace A300216

/-- `filter[A305901(n+1), A323513(#)]` -/
def P4435119045821303264.Spec : Prop :=
  ∀ n, P4435119045821303264.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P16108552137485572258

`filter[A332900(n+1), A323513(#)]`
-/

namespace A300216.P16108552137485572258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P16108552137485572258

namespace A300216

/-- `filter[A332900(n+1), A323513(#)]` -/
def P16108552137485572258.Spec : Prop :=
  ∀ n, P16108552137485572258.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P3937849650491885544

`filter[A300827(n+1), A323513(#)]`
-/

namespace A300216.P3937849650491885544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P3937849650491885544

namespace A300216

/-- `filter[A300827(n+1), A323513(#)]` -/
def P3937849650491885544.Spec : Prop :=
  ∀ n, P3937849650491885544.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P9031280679213793698

`filter[A305902(n+1), A323513(#)]`
-/

namespace A300216.P9031280679213793698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P9031280679213793698

namespace A300216

/-- `filter[A305902(n+1), A323513(#)]` -/
def P9031280679213793698.Spec : Prop :=
  ∀ n, P9031280679213793698.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P7729946989898568295

`eq[1, A323513(n+1)]+1`
-/

namespace A300216.P7729946989898568295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300216.P7729946989898568295

namespace A300216

/-- `eq[1, A323513(n+1)]+1` -/
def P7729946989898568295.Spec : Prop :=
  ∀ n, (P7729946989898568295.a n : ℤ) = A300216 (n + 1)

end A300216

/-! ## A300216.P3523590955824538987

`filter[A319702(n+1), A323513(#)]`
-/

namespace A300216.P3523590955824538987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P3523590955824538987

namespace A300216

/-- `filter[A319702(n+1), A323513(#)]` -/
def P3523590955824538987.Spec : Prop :=
  ∀ n, P3523590955824538987.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P10442429664433189190

`eq[A101296(A000010(n+1)), A101296(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A300216

/-- `eq[A101296(A000010(n+1)), A101296(n+1)]+1` -/
def P10442429664433189190.Spec : Prop :=
  ∀ n, (P10442429664433189190.a n : ℤ) = A300216 (n + 1)

theorem P10442429664433189190.correct : P10442429664433189190.Spec := by
  intro n
  simp only [A300216, Nat.add_sub_cancel]

end A300216

/-! ## A300216.P17856492442637175185

`filter[A346488(n+1), A323513(#)]`
-/

namespace A300216.P17856492442637175185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P17856492442637175185

namespace A300216

/-- `filter[A346488(n+1), A323513(#)]` -/
def P17856492442637175185.Spec : Prop :=
  ∀ n, P17856492442637175185.a n = A300216 (n + 1)

end A300216

/-! ## A300216.P659574160865542917

`filter[A305980(n+1), A323513(#)]`
-/

namespace A300216.P659574160865542917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A300216.P659574160865542917

namespace A300216

/-- `filter[A305980(n+1), A323513(#)]` -/
def P659574160865542917.Spec : Prop :=
  ∀ n, P659574160865542917.a n = A300216 (n + 1)

end A300216

/-!
# A300219: Number of ways to write n^2 as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers and z <= w such that both x and 4*x - 3*y are powers of 4 (including 4^0 = 1).

The programs for A300219, there is no canonical definition to state claims against.
-/

/-! ## A300219.P9144603855716819681

`A353489(A000583(n))+A299794(n+1)`
-/

namespace A300219.P9144603855716819681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 (A000583 n).toNat + A299794 (n + 1)

end

end A300219.P9144603855716819681

/-!
# A300221: a(n) is the number of unlabeled, graded rank-3 lattices with n elements.

The programs for A300221, there is no canonical definition to state claims against.
-/

/-! ## A300221.P6191134981246270829

`A185283(floor(A398071(n)/A000045(2*(n+2))))`
-/

namespace A300221.P6191134981246270829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 ⌊(A398071 n : ℚ) / (A000045 (2 * (n + 2)) : ℚ)⌋.toNat

end

end A300221.P6191134981246270829

/-! ## A300221.P16359932753151358206

`Δ[A261104(A052814(n))]-A240332(n)`
-/

namespace A300221.P16359932753151358206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A052814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240332 n

end

end A300221.P16359932753151358206

/-! ## A300221.P244415194203482397

`A374698(A141002(n)+A037904(n+1))`
-/

namespace A300221.P244415194203482397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374698 (A141002 n + A037904 (n + 1)).toNat

end

end A300221.P244415194203482397

/-! ## A300221.P921912535564922282

`A234200(A024175(n)-A234200(n+1))`
-/

namespace A300221.P921912535564922282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234200 (A024175 n - A234200 (n + 1)).toNat

end

end A300221.P921912535564922282

/-! ## A300221.P7223102136877990562

`A121902(A198957(n))`
-/

namespace A300221.P7223102136877990562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A198957 n).toNat

end

end A300221.P7223102136877990562

/-!
# A300222: In ternary (base-3) representation of n, replace 1's with 0's.

The programs for A300222, the canonical program `A300222.P16406266268068730929` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300222 has offset 0).

The definition of A300222 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300222.P3787974345275261174

`n-A244042(n)`
-/

namespace A300222.P3787974345275261174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A244042 n

end

end A300222.P3787974345275261174

namespace A300222

/-- `n-A244042(n)` -/
def P3787974345275261174.Spec : Prop :=
  ∀ n, P3787974345275261174.a n = A300222 n

theorem P3787974345275261174.correct : P3787974345275261174.Spec := by
  intro n
  simp only [A300222, Nat.add_sub_cancel, A300222.P3787974345275261174.a, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A244042, A244042.P9314766524248185345.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300222

/-! ## A300222.P16406266268068730929

`2*A005836(1+A289814(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A300222

/-- `2*A005836(1+A289814(n))` -/
def P16406266268068730929.Spec : Prop :=
  ∀ n, P16406266268068730929.a n = A300222 n

theorem P16406266268068730929.correct : P16406266268068730929.Spec := by
  intro n
  simp only [A300222]

end A300222

/-! ## A300222.P1198455100915705727

`2*A244042(A004488(n))`
-/

namespace A300222.P1198455100915705727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244042 (A004488 n).toNat

end

end A300222.P1198455100915705727

namespace A300222

/-- `2*A244042(A004488(n))` -/
def P1198455100915705727.Spec : Prop :=
  ∀ n, P1198455100915705727.a n = A300222 n

end A300222

/-! ## A300222.P9671319872959840641

`∑{d}[n, A300822(#)]`
-/

namespace A300222.P9671319872959840641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300822 d

end

end A300222.P9671319872959840641

namespace A300222

/-- `∑{d}[n, A300822(#)]` -/
def P9671319872959840641.Spec : Prop :=
  ∀ n, P9671319872959840641.a n = A300222 n

end A300222

/-! ## A300222.P17123318706326602831

`n-∑{d}[n, A300821(#)]`
-/

namespace A300222.P17123318706326602831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A300821 d

end

end A300222.P17123318706326602831

namespace A300222

/-- `n-∑{d}[n, A300821(#)]` -/
def P17123318706326602831.Spec : Prop :=
  ∀ n, P17123318706326602831.a n = A300222 n

end A300222

/-! ## A300222.P6218576665110712179

`A005823(A289814(n)+1)`
-/

namespace A300222.P6218576665110712179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A289814 n + 1).toNat

end

end A300222.P6218576665110712179

namespace A300222

/-- `A005823(A289814(n)+1)` -/
def P6218576665110712179.Spec : Prop :=
  ∀ n, P6218576665110712179.a n = A300222 n

theorem P6218576665110712179.correct : P6218576665110712179.Spec := by
  intro n
  simp only [A300222, Nat.add_sub_cancel, A300222.P6218576665110712179.a, A300222.P16406266268068730929.a, A005823, A005823.P15253501149959078210.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300222

/-! ## A300222.P10729574896490473354

`A004396(n-A117966(n))`
-/

namespace A300222.P10729574896490473354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) - A117966 n).toNat

end

end A300222.P10729574896490473354

namespace A300222

/-- `A004396(n-A117966(n))` -/
def P10729574896490473354.Spec : Prop :=
  ∀ n, P10729574896490473354.a n = A300222 n

end A300222

/-! ## A300222.P8004238973149195365

`A009947(n-A117966(n))`
-/

namespace A300222.P8004238973149195365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 ((n : ℤ) - A117966 n).toNat

end

end A300222.P8004238973149195365

namespace A300222

/-- `A009947(n-A117966(n))` -/
def P8004238973149195365.Spec : Prop :=
  ∀ n, P8004238973149195365.a n = A300222 n

end A300222

/-! ## A300222.P18283982462587818890

`n-A005836(A356248(n))`
-/

namespace A300222.P18283982462587818890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005836 (A356248 n).toNat

end

end A300222.P18283982462587818890

namespace A300222

/-- `n-A005836(A356248(n))` -/
def P18283982462587818890.Spec : Prop :=
  ∀ n, P18283982462587818890.a n = A300222 n

end A300222

/-! ## A300222.P10150201856194198155

`A341055(n-A117966(n))`
-/

namespace A300222.P10150201856194198155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341055 ((n : ℤ) - A117966 n).toNat

end

end A300222.P10150201856194198155

namespace A300222

/-- `A341055(n-A117966(n))` -/
def P10150201856194198155.Spec : Prop :=
  ∀ n, P10150201856194198155.a n = A300222 n

end A300222

/-! ## A300222.P15434974703059025345

`n-A060374(A093347(n+1))`
-/

namespace A300222.P15434974703059025345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A060374 (A093347 (n + 1)).toNat

end

end A300222.P15434974703059025345

namespace A300222

/-- `n-A060374(A093347(n+1))` -/
def P15434974703059025345.Spec : Prop :=
  ∀ n, P15434974703059025345.a n = A300222 n

end A300222

/-! ## A300222.P9306073420777727752

`n-A005836(A289813(n)+1)`
-/

namespace A300222.P9306073420777727752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005836 (A289813 n + 1).toNat

end

end A300222.P9306073420777727752

namespace A300222

/-- `n-A005836(A289813(n)+1)` -/
def P9306073420777727752.Spec : Prop :=
  ∀ n, P9306073420777727752.a n = A300222 n

end A300222

/-! ## A300222.P13406293578222758904

`A004523(2*n-A004488(n))`
-/

namespace A300222.P13406293578222758904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 ((2 * n : ℤ) - A004488 n).toNat

end

end A300222.P13406293578222758904

namespace A300222

/-- `A004523(2*n-A004488(n))` -/
def P13406293578222758904.Spec : Prop :=
  ∀ n, P13406293578222758904.a n = A300222 n

end A300222

/-! ## A300222.P11140530886836943848

`A004523(n-A004488(n)+n)`
-/

namespace A300222.P11140530886836943848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 ((n : ℤ) - A004488 n + (n : ℤ)).toNat

end

end A300222.P11140530886836943848

namespace A300222

/-- `A004523(n-A004488(n)+n)` -/
def P11140530886836943848.Spec : Prop :=
  ∀ n, P11140530886836943848.a n = A300222 n

end A300222

/-! ## A300222.P6178267144254058156

`A004523(n-(A004488(n)-n))`
-/

namespace A300222.P6178267144254058156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 ((n : ℤ) - (A004488 n - (n : ℤ))).toNat

end

end A300222.P6178267144254058156

namespace A300222

/-- `A004523(n-(A004488(n)-n))` -/
def P6178267144254058156.Spec : Prop :=
  ∀ n, P6178267144254058156.a n = A300222 n

end A300222

/-! ## A300222.P8979066963485605458

`2*A374362(n)`
-/

namespace A300222.P8979066963485605458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A374362 n

end

end A300222.P8979066963485605458

namespace A300222

/-- `2*A374362(n)` -/
def P8979066963485605458.Spec : Prop :=
  ∀ n, P8979066963485605458.a n = A300222 n

end A300222

/-! ## A300222.P12860790191110065290

`A004488(A374362(n))`
-/

namespace A300222.P12860790191110065290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A374362 n).toNat

end

end A300222.P12860790191110065290

namespace A300222

/-- `A004488(A374362(n))` -/
def P12860790191110065290.Spec : Prop :=
  ∀ n, P12860790191110065290.a n = A300222 n

end A300222

/-! ## A300222.P16680296404395561203

`n-(A374362(n)+A117966(n))`
-/

namespace A300222.P16680296404395561203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A374362 n + A117966 n)

end

end A300222.P16680296404395561203

namespace A300222

/-- `n-(A374362(n)+A117966(n))` -/
def P16680296404395561203.Spec : Prop :=
  ∀ n, P16680296404395561203.a n = A300222 n

theorem P16680296404395561203.correct : P16680296404395561203.Spec := by
  intro n
  simp only [A300222, Nat.add_sub_cancel, A300222.P16680296404395561203.a, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A117966, A117966.P11599160912576478646.a, A289814, A289814.P11371932108795153936.a, A374362, A374362.P13095679311797135054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300222

/-! ## A300222.P841688823567383425

`2*(n-A374363(n))`
-/

namespace A300222.P841688823567383425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A374363 n)

end

end A300222.P841688823567383425

namespace A300222

/-- `2*(n-A374363(n))` -/
def P841688823567383425.Spec : Prop :=
  ∀ n, P841688823567383425.a n = A300222 n

theorem P841688823567383425.correct : P841688823567383425.Spec := by
  intro n
  simp only [A300222, Nat.add_sub_cancel, A300222.P841688823567383425.a, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A374363, A374363.P4006744609650702107.a, A374362, A374362.P13095679311797135054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300222

/-! ## A300222.P4530831069466414274

`2*A060373(A338242(n))`
-/

namespace A300222.P4530831069466414274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060373 (A338242 n).toNat

end

end A300222.P4530831069466414274

namespace A300222

/-- `2*A060373(A338242(n))` -/
def P4530831069466414274.Spec : Prop :=
  ∀ n, P4530831069466414274.a n = A300222 n

end A300222

/-!
# A300223: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j) and A296091(i) = A296091(j), for all i, j >= 1.

The programs for A300223, there is no canonical definition to state claims against.
-/

/-! ## A300223.P9442034962957894038

`A294877(n+1)%A004061(n+1)`
-/

namespace A300223.P9442034962957894038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294877 (n + 1)) (A004061 (n + 1))

end

end A300223.P9442034962957894038

/-! ## A300223.P13554688983310898409

`A355830(n+1)%A082672(n+1)`
-/

namespace A300223.P13554688983310898409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355830 (n + 1)) (A082672 (n + 1))

end

end A300223.P13554688983310898409

/-! ## A300223.P1344501328187452925

`∑{e}[A016116(2*n+3), A294877(#)]`
-/

namespace A300223.P1344501328187452925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A294877 (Nat.factorization (f1 n).natAbs p)

end

end A300223.P1344501328187452925

/-! ## A300223.P6886062584730013073

`A305790(n+1)%record[A367301(n+2)]`
-/

namespace A300223.P6886062584730013073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305790 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A300223.P6886062584730013073

/-! ## A300223.P15061683719578850203

`A355831(n+1)+A000007(A005169(n))`
-/

namespace A300223.P15061683719578850203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355831 (n + 1) + A000007 (A005169 n).toNat

end

end A300223.P15061683719578850203

/-!
# A300224: Filter sequence combining A046523(n) and A296078(n), prime signature of n and prime signature of phi(n)+1.

The programs for A300224, there is no canonical definition to state claims against.
-/

/-! ## A300224.P7947647337290777916

`A292587(n+1)+A261762(A244530(n+4))`
-/

namespace A300224.P7947647337290777916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292587 (n + 1) + A261762 (A244530 (n + 4)).toNat

end

end A300224.P7947647337290777916

/-! ## A300224.P3555767159834685610

`A077462(∑[A053164(A052993(n))])`
-/

namespace A300224.P3555767159834685610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A052993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300224.P3555767159834685610

/-! ## A300224.P12354592636864032407

`A077462(∑[A001285(A006504(n+1))])`
-/

namespace A300224.P12354592636864032407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A006504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300224.P12354592636864032407

/-! ## A300224.P1633892405908150036

`A077462(record[A257212(A100143(n+1))])`
-/

namespace A300224.P1633892405908150036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A100143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300224.P1633892405908150036

/-! ## A300224.P13205973907626420209

`A077462(record[A127321(A054582(n))])`
-/

namespace A300224.P13205973907626420209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A054582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300224.P13205973907626420209

/-!
# A300225: Filter sequence combining A296078(n) and A296091(n), the prime signatures of phi(n)+1 and sigma(n)-1, with a(1) = 1.

The programs for A300225, there is no canonical definition to state claims against.
-/

/-! ## A300225.P11722163328110637020

`A329345(n+1)-A000035(A329324(n+1))`
-/

namespace A300225.P11722163328110637020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329345 (n + 1) - A000035 (A329324 (n + 1)).toNat

end

end A300225.P11722163328110637020

/-! ## A300225.P10534667002070286123

`A071625(n+4)*A285573(A275870(A275870(n+1)))`
-/

namespace A300225.P10534667002070286123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 4) * A285573 (A275870 (A275870 (n + 1)).toNat).toNat

end

end A300225.P10534667002070286123

/-!
# A300226: Filter sequence combining A046523(n) and A052126(n), the prime signature of n and n/(largest prime dividing n).

The programs for A300226, there is no canonical definition to state claims against.
-/

/-! ## A300226.P13532949037311152320

`∏{e}[A020714(A329620(n+1)), #]`
-/

namespace A300226.P13532949037311152320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A329620 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A300226.P13532949037311152320

/-! ## A300226.P10869288705716556217

`A329620(n+1)%A092000(n+1)`
-/

namespace A300226.P10869288705716556217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329620 (n + 1)) (A092000 (n + 1))

end

end A300226.P10869288705716556217

/-! ## A300226.P15975285736760699657

`A351949(n+1)%A362284(p?[round(8*n/7)]+1)`
-/

namespace A300226.P15975285736760699657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351949 (n + 1)) (A362284 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat)

end

end A300226.P15975285736760699657

/-! ## A300226.P6166702339355804273

`A335520(A112739(n))+A329620(n+1)`
-/

namespace A300226.P6166702339355804273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A112739 n).toNat + A329620 (n + 1)

end

end A300226.P6166702339355804273

/-! ## A300226.P14198797951404520778

`A378537(A087822(n))+A329620(n+1)`
-/

namespace A300226.P14198797951404520778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378537 (A087822 n).toNat + A329620 (n + 1)

end

end A300226.P14198797951404520778

/-!
# A300227: a(n) = number of steps in simple Euclidean algorithm for gcd(n,k) to reach the termination test n=k when starting with n = n and k = sigma(n)-1, with a(1) = 1.

The programs for A300227, there is no canonical definition to state claims against.
-/

/-! ## A300227.P10411781362381628619

`A253557((gcd((n+2)!, A001222(n+1))-1)*A287986(n)+1)`
-/

namespace A300227.P10411781362381628619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (((Int.gcd (Nat.factorial (n + 2) : ℤ) (A001222 (n + 1)) : ℤ) - 1) * A287986 n + 1).toNat

end

end A300227.P10411781362381628619

/-! ## A300227.P16455555484256545819

`A253557((∑{e}[n+1, #]+1-2%A041149(n))*A287986(n)+1)`
-/

namespace A300227.P16455555484256545819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 ((((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) - Int.tmod 2 (A041149 n)) * A287986 n + 1).toNat

end

end A300227.P16455555484256545819

/-!
# A300228: a(n) = number of steps in simple Euclidean algorithm for gcd(n,k) to reach the termination test n=k when starting with n = n and k = 1+phi(n).

The programs for A300228, there is no canonical definition to state claims against.
-/

/-! ## A300228.P10715163335552069160

`A062537(A321944(n+1)^A180383(n+1))`
-/

namespace A300228.P10715163335552069160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (SequenceMachineLib.roundAway ((A321944 (n + 1) : ℚ) ^ (A180383 (n + 1) : ℤ))).toNat

end

end A300228.P10715163335552069160

/-!
# A300229: Restricted growth sequence transform of A285729, combining A032742(n) and A046523(n), the largest proper divisor and the prime signature of n.

The programs for A300229, there is no canonical definition to state claims against.
-/

/-! ## A300229.P10499150886472947158

`or(A108497(A003520(n)), A323240(n+1))`
-/

namespace A300229.P10499150886472947158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108497 (A003520 n).toNat) (A323240 (n + 1))

end

end A300229.P10499150886472947158

/-! ## A300229.P3827449616199758604

`A323401(n+1)-A124010(A301594(n))`
-/

namespace A300229.P3827449616199758604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323401 (n + 1) - A124010 (A301594 n).toNat

end

end A300229.P3827449616199758604

/-! ## A300229.P14677186787281000272

`A326192(n+1)+Δ[A018843(A128099(n))]`
-/

namespace A300229.P14677186787281000272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A128099 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) + (f1 (n + 1) - f1 n)

end

end A300229.P14677186787281000272

/-! ## A300229.P9532647593692190572

`or(A108497(A028246(n+1)), A323240(n+1))`
-/

namespace A300229.P9532647593692190572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108497 (A028246 (n + 1)).toNat) (A323240 (n + 1))

end

end A300229.P9532647593692190572

/-! ## A300229.P8003619046777372697

`A323240(n+1)+A205295(A030101(2*(n+1)))`
-/

namespace A300229.P8003619046777372697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323240 (n + 1) + A205295 (A030101 (2 * (n + 1))).toNat

end

end A300229.P8003619046777372697

/-!
# A300230: Restricted growth sequence transform of A286570, combining A009194(n) and A046523(n), i.e., gcd(n,sigma(n)) and the prime signature of n.

The programs for A300230, there is no canonical definition to state claims against.
-/

/-! ## A300230.P6379305581148295840

`A300726(n+1)+A249740(A000055(n))`
-/

namespace A300230.P6379305581148295840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300726 (n + 1) + A249740 (A000055 n).toNat

end

end A300230.P6379305581148295840

/-! ## A300230.P8418367505325681736

`A300726(n+1)+A146292(A146285(n+1))`
-/

namespace A300230.P8418367505325681736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300726 (n + 1) + A146292 (A146285 (n + 1)).toNat

end

end A300230.P8418367505325681736

/-! ## A300230.P17635635621889230754

`A300726(n+1)+A295657(A023425(n))`
-/

namespace A300230.P17635635621889230754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300726 (n + 1) + A295657 (A023425 n).toNat

end

end A300230.P17635635621889230754

/-! ## A300230.P4561914956328941364

`A300726(n+1)+A008284(A350764(n+1))`
-/

namespace A300230.P4561914956328941364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300726 (n + 1) + A008284 (A350764 (n + 1)).toNat

end

end A300230.P4561914956328941364

/-! ## A300230.P13356017815953457349

`A378601(A077168(n))`
-/

namespace A300230.P13356017815953457349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378601 (A077168 n).toNat

end

end A300230.P13356017815953457349

/-!
# A300231: Filter sequence combining A001065(n) and A009194(n), the sum of proper divisors of n and gcd(n,sigma(n)).

The programs for A300231, there is no canonical definition to state claims against.
-/

/-! ## A300231.P897326025198563283

`A319346(n+1)-A005171(A141214(n))`
-/

namespace A300231.P897326025198563283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319346 (n + 1) - A005171 (A141214 n).toNat

end

end A300231.P897326025198563283

/-!
# A300232: Restricted growth sequence transform of A286152, filter combining A051953(n) and A046523(n), cototient and the prime signature of n.

The programs for A300232, there is no canonical definition to state claims against.
-/

/-! ## A300232.P271143416189688199

`A178787(A300249(n+1))-A196368(A247706(n))`
-/

namespace A300232.P271143416189688199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178787 (A300249 (n + 1)).toNat - A196368 (A247706 n).toNat

end

end A300232.P271143416189688199

/-! ## A300232.P5575551146861063033

`A353523(n+1)-A353528(A209324(n+1))`
-/

namespace A300232.P5575551146861063033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353523 (n + 1) - A353528 (A209324 (n + 1)).toNat

end

end A300232.P5575551146861063033

/-! ## A300232.P4951610974914230752

`A293892(n+1)+A058343(A058343(n))`
-/

namespace A300232.P4951610974914230752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293892 (n + 1) + A058343 (A058343 n).toNat

end

end A300232.P4951610974914230752

/-! ## A300232.P9383088746667330940

`A295885(n+1)+A058343(A058343(n))`
-/

namespace A300232.P9383088746667330940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295885 (n + 1) + A058343 (A058343 n).toNat

end

end A300232.P9383088746667330940

/-! ## A300232.P15686187717430561628

`A369050(n+1)-A336107(A054772(n))`
-/

namespace A300232.P15686187717430561628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369050 (n + 1) - A336107 (A054772 n).toNat

end

end A300232.P15686187717430561628

/-!
# A300233: Filter sequence combining A051953(n) and A009194(n), cototient of n and gcd(n,sigma(n)).

The programs for A300233, there is no canonical definition to state claims against.
-/

/-! ## A300233.P13013786313696420418

`A293215(n+1)-A018843(A318840(n+1)+A293215(n+1))`
-/

namespace A300233.P13013786313696420418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293215 (n + 1) - A018843 (A318840 (n + 1) + A293215 (n + 1)).toNat

end

end A300233.P13013786313696420418

/-! ## A300233.P18112581081533830069

`A293232(n+1)-A018843(A318840(n+1)+A293232(n+1))`
-/

namespace A300233.P18112581081533830069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293232 (n + 1) - A018843 (A318840 (n + 1) + A293232 (n + 1)).toNat

end

end A300233.P18112581081533830069

/-! ## A300233.P13682887846423296587

`A296073(n+1)-A018843(A318840(n+1)+A296073(n+1))`
-/

namespace A300233.P13682887846423296587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296073 (n + 1) - A018843 (A318840 (n + 1) + A296073 (n + 1)).toNat

end

end A300233.P13682887846423296587

/-! ## A300233.P5805240322212827561

`A305800(n+1)-A002448(A057809(n+13))`
-/

namespace A300233.P5805240322212827561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) - A002448 (A057809 (n + 13)).toNat

end

end A300233.P5805240322212827561

/-! ## A300233.P8599119893321012861

`A319348(n+1)-A002448(A057809(n+13))`
-/

namespace A300233.P8599119893321012861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) - A002448 (A057809 (n + 13)).toNat

end

end A300233.P8599119893321012861

/-!
# A300234: a(n) = number of steps in simple Euclidean algorithm for gcd(n,k) to reach the termination test n=k when starting with n = n and k = phi(n).

The programs for A300234, there is no canonical definition to state claims against.
-/

/-! ## A300234.P17666417920185265587

`n+1-A300238(n+1)`
-/

namespace A300234.P17666417920185265587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A300238 (n + 1)

end

end A300234.P17666417920185265587

/-! ## A300234.P2927217102902683570

`A285721(C(n+1+A000010(n+1)-1, 2)+n+1)`
-/

namespace A300234.P2927217102902683570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285721 (Nat.choose ((n + 1 : ℤ) + A000010 (n + 1) - 1).toNat 2 + (n + 1))

end

end A300234.P2927217102902683570

/-! ## A300234.P10794155992956241808

`1-A300238(n+1)+n`
-/

namespace A300234.P10794155992956241808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A300238 (n + 1) + (n : ℤ)

end

end A300234.P10794155992956241808

/-! ## A300234.P11848297941247642803

`A000217(n+1)%(A300238(n+1)+A000217(n))`
-/

namespace A300234.P11848297941247642803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A300238 (n + 1) + A000217 n)

end

end A300234.P11848297941247642803

/-! ## A300234.P385230139464856514

`(-A300238(n+1))^A300238(p?[A300238(n+1)])+n+1`
-/

namespace A300234.P385230139464856514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300238 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A300238 (n + 1) : ℚ) ^ (A300238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ) + (n + 1 : ℚ)

end

end A300234.P385230139464856514

/-! ## A300234.P15868890820307849598

`(n+1)²%A300238((n+1)²)`
-/

namespace A300234.P15868890820307849598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A300238 ((n + 1) ^ 2))

end

end A300234.P15868890820307849598

/-!
# A300235: Restricted growth sequence transform of A291765, filter combining A001065(n) and A046523(n), the sum of proper divisors and the prime signature of n.

The programs for A300235, there is no canonical definition to state claims against.
-/

/-! ## A300235.P5535251388033943184

`A353560(n+1)%∑[(∑[n+4]+3)*2^n]²`
-/

namespace A300235.P5535251388033943184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 3) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353560 (n + 1)) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A300235.P5535251388033943184

/-! ## A300235.P549298849555373380

`A327931(n+1)%p?[A032635(n)]`
-/

namespace A300235.P549298849555373380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327931 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A300235.P549298849555373380

/-! ## A300235.P10470190256869826007

`A327931(n+1)+and(2, A055580(n)²)`
-/

namespace A300235.P10470190256869826007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (n + 1) + Int.land 2 (A055580 n ^ 2)

end

end A300235.P10470190256869826007

/-! ## A300235.P14195290952865330255

`A353560(n+1)+and(2, A055580(n)²)`
-/

namespace A300235.P14195290952865330255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353560 (n + 1) + Int.land 2 (A055580 n ^ 2)

end

end A300235.P14195290952865330255

/-! ## A300235.P5431937151226259473

`A305895(n+1)%∑[A286847(n+2)]`
-/

namespace A300235.P5431937151226259473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305895 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300235.P5431937151226259473

/-! ## A300235.P11940343402335729206

`A050334(p?[20*n+1])*A353560(n+1)`
-/

namespace A300235.P11940343402335729206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) * A353560 (n + 1)

end

end A300235.P11940343402335729206

/-! ## A300235.P7949736440091464398

`A353560(n-or(n, -1))/p?[A033437(n)]%2`
-/

namespace A300235.P7949736440091464398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353560 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat : ℚ) / (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2 : ℚ)

end

end A300235.P7949736440091464398

/-! ## A300235.P9569917803145169142

`A305895(n+1)+A000007(A139612(n))`
-/

namespace A300235.P9569917803145169142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305895 (n + 1) + A000007 (A139612 n).toNat

end

end A300235.P9569917803145169142

/-! ## A300235.P8145174083327159402

`A327931(n+1)+A000038(A139612(n))`
-/

namespace A300235.P8145174083327159402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (n + 1) + A000038 (A139612 n).toNat

end

end A300235.P8145174083327159402

/-! ## A300235.P16587401315418522923

`A093411(A059268(n))*A327931(n+1)`
-/

namespace A300235.P16587401315418522923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A059268 n).toNat * A327931 (n + 1)

end

end A300235.P16587401315418522923

/-! ## A300235.P10656699688345248276

`A077028(A161680(n))*A305895(n+1)`
-/

namespace A300235.P10656699688345248276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A161680 n).toNat * A305895 (n + 1)

end

end A300235.P10656699688345248276

/-! ## A300235.P10582941815852828265

`A077028(A161680(n))*A327931(n+1)`
-/

namespace A300235.P10582941815852828265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A161680 n).toNat * A327931 (n + 1)

end

end A300235.P10582941815852828265

/-! ## A300235.P7232999540881076507

`A327931(n+1)+A015899(A031368(n+1))`
-/

namespace A300235.P7232999540881076507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (n + 1) + A015899 (A031368 (n + 1)).toNat

end

end A300235.P7232999540881076507

/-! ## A300235.P5831174681572368647

`A327931(n+1)+A070176(A070179(n+1))`
-/

namespace A300235.P5831174681572368647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (n + 1) + A070176 (A070179 (n + 1)).toNat

end

end A300235.P5831174681572368647

/-! ## A300235.P12011573254353426000

`A327931(n+1)+A000007(A156678(n+1))`
-/

namespace A300235.P12011573254353426000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (n + 1) + A000007 (A156678 (n + 1)).toNat

end

end A300235.P12011573254353426000

/-! ## A300235.P9093317621611889809

`A327931(n+1)+A000007(A156679(n+1))`
-/

namespace A300235.P9093317621611889809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (n + 1) + A000007 (A156679 (n + 1)).toNat

end

end A300235.P9093317621611889809

/-! ## A300235.P9809045097243482944

`A327931(n+1)+A081805(A176229(n+1))`
-/

namespace A300235.P9809045097243482944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (n + 1) + A081805 (A176229 (n + 1)).toNat

end

end A300235.P9809045097243482944

/-! ## A300235.P16506992106968571744

`A160338(A136162(n+1))*A327931(n+1)`
-/

namespace A300235.P16506992106968571744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (A136162 (n + 1)).toNat * A327931 (n + 1)

end

end A300235.P16506992106968571744

/-! ## A300235.P2721705674866204011

`A134451(A191116(n+1))*A327931(n+1)`
-/

namespace A300235.P2721705674866204011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A191116 (n + 1)).toNat * A327931 (n + 1)

end

end A300235.P2721705674866204011

/-! ## A300235.P8384841620702161054

`A327931(n+1)+A000007(A107169(n+1)+n)`
-/

namespace A300235.P8384841620702161054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (n + 1) + A000007 (A107169 (n + 1) + (n : ℤ)).toNat

end

end A300235.P8384841620702161054

/-!
# A300236: Möbius transform of A032742 (the largest proper divisor of n).

The programs for A300236, there is no canonical definition to state claims against.
-/

/-! ## A300236.P7899779968913168863

`∑{d}[n+1, A008683((n+1)/#)*A032742(#)]`
-/

namespace A300236.P7899779968913168863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A032742 d

end

end A300236.P7899779968913168863

/-! ## A300236.P5042391615352420486

`A000010(n+1)-A300721(n+1)`
-/

namespace A300236.P5042391615352420486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300721 (n + 1)

end

end A300236.P5042391615352420486

/-! ## A300236.P4474685274046360201

`A032742(n+1)-A300239(n+1)`
-/

namespace A300236.P4474685274046360201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) - A300239 (n + 1)

end

end A300236.P4474685274046360201

/-! ## A300236.P109383820903035286

`A349137(Δ[n²])-A300721(n+1)`
-/

namespace A300236.P109383820903035286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A300721 (n + 1)

end

end A300236.P109383820903035286

/-! ## A300236.P10509161260674516529

`Δ[A100449(n)/4]-A300721(n+1)`
-/

namespace A300236.P10509161260674516529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A300721 (n + 1) : ℚ)

end

end A300236.P10509161260674516529

/-! ## A300236.P11417519263699510381

`n+1-A051953(n+1)-A300721(n+1)`
-/

namespace A300236.P11417519263699510381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051953 (n + 1) - A300721 (n + 1)

end

end A300236.P11417519263699510381

/-! ## A300236.P3884818278673375977

`∑{d}[n+1, A007427(#)*A143112((n+1)/#)]`
-/

namespace A300236.P3884818278673375977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A143112 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300236.P3884818278673375977

/-! ## A300236.P16874364342700967307

`A000010(n+1)+A300722(n+1)-A060681(n+1)`
-/

namespace A300236.P16874364342700967307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A300722 (n + 1) - A060681 (n + 1))

end

end A300236.P16874364342700967307

/-!
# A300237: a(n) = n - A286594(n) = n - A285721(n, sigma(n)).

The programs for A300237, there is no canonical definition to state claims against.
-/

/-! ## A300237.P2766342401868029729

`n+1-A286594(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300237.P2766342401868029729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A286594 (n + 1)

end

end A300237.P2766342401868029729

/-! ## A300237.P10467803042650032194

`n+1-A285721(C(n+1+A000203(n+1)-1, 2)+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300237.P10467803042650032194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285721 (Nat.choose ((n + 1 : ℤ) + A000203 (n + 1) - 1).toNat 2 + (n + 1))

end

end A300237.P10467803042650032194

/-! ## A300237.P7688511651856377187

`n+1-A285721(C(n+1+A000203(n+1)-1, 2)+A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300237.P7688511651856377187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285721 ((Nat.choose ((n + 1 : ℤ) + A000203 (n + 1) - 1).toNat 2 : ℤ) + A000203 (n + 1)).toNat

end

end A300237.P7688511651856377187

/-! ## A300237.P1836665920016550259

`A024000(A286594(n+1))+n`
-/

namespace A300237.P1836665920016550259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A286594 (n + 1)).toNat + (n : ℤ)

end

end A300237.P1836665920016550259

/-! ## A300237.P15142956037819797192

`abs(A286594(n+1)+A001478(n+1))`
-/

namespace A300237.P15142956037819797192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286594 (n + 1) + A001478 (n + 1)|

end

end A300237.P15142956037819797192

/-!
# A300238: a(n) = n - A300234(n) = n - A285721(n, phi(n)).

The programs for A300238, there is no canonical definition to state claims against.
-/

/-! ## A300238.P11607755704056581948

`n+1-A300234(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300238.P11607755704056581948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A300234 (n + 1)

end

end A300238.P11607755704056581948

/-! ## A300238.P7015007721990361787

`n+1-A285721(C(n+1+A000010(n+1)-1, 2)+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300238.P7015007721990361787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285721 (Nat.choose ((n + 1 : ℤ) + A000010 (n + 1) - 1).toNat 2 + (n + 1))

end

end A300238.P7015007721990361787

/-! ## A300238.P17440023988250562197

`n+1-A285721(C(n+1+A000010(n+1)-1, 2)+A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300238.P17440023988250562197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285721 ((Nat.choose ((n + 1 : ℤ) + A000010 (n + 1) - 1).toNat 2 : ℤ) + A000010 (n + 1)).toNat

end

end A300238.P17440023988250562197

/-! ## A300238.P10927770625943966281

`A024000(A300234(n+1))+n`
-/

namespace A300238.P10927770625943966281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A300234 (n + 1)).toNat + (n : ℤ)

end

end A300238.P10927770625943966281

/-! ## A300238.P12820943028018497603

`abs(A300234(n+1)+A001478(n+1))`
-/

namespace A300238.P12820943028018497603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A300234 (n + 1) + A001478 (n + 1)|

end

end A300238.P12820943028018497603

/-! ## A300238.P7649505510335452056

`A004736(A300234(n+1)+A000124(n))`
-/

namespace A300238.P7649505510335452056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A300234 (n + 1) + A000124 n).toNat

end

end A300238.P7649505510335452056

/-! ## A300238.P4644163446523276006

`A193739(A300234(n+1)+A000217(n))`
-/

namespace A300238.P4644163446523276006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A300234 (n + 1) + A000217 n).toNat

end

end A300238.P4644163446523276006

/-! ## A300238.P6272152341430936054

`A004736(A300234(n+1)+A167614(n+1))`
-/

namespace A300238.P6272152341430936054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A300234 (n + 1) + A167614 (n + 1)).toNat

end

end A300238.P6272152341430936054

/-!
# A300239: Difference between A032742 (the largest proper divisor of n) and its Möbius transform (A300236).

The programs for A300239, there is no canonical definition to state claims against.
-/

/-! ## A300239.P16009997418240685416

`A032742(n+1)-A300236(n+1)`
-/

namespace A300239.P16009997418240685416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) - A300236 (n + 1)

end

end A300239.P16009997418240685416

/-! ## A300239.P3475763056797119751

`A051953(n+1)-A300722(n+1)`
-/

namespace A300239.P3475763056797119751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A300722 (n + 1)

end

end A300239.P3475763056797119751

/-! ## A300239.P10565210398099668536

`n+1-(A300722(n+1)+A000010(n+1))`
-/

namespace A300239.P10565210398099668536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300722 (n + 1) + A000010 (n + 1))

end

end A300239.P10565210398099668536

/-! ## A300239.P10142143959408965580

`(n+1)/A020639(n+1)-A300236(n+1)`
-/

namespace A300239.P10142143959408965580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) - (A300236 (n + 1) : ℚ)

end

end A300239.P10142143959408965580

/-! ## A300239.P14199040452418184804

`∑{d}[n+1, A032742(#)*A157658((n+1)/#)]`
-/

namespace A300239.P14199040452418184804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032742 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300239.P14199040452418184804

/-! ## A300239.P17894564799679705448

`∑{d}[n+1, A057427(#-1)*A300236((n+1)/#)]`
-/

namespace A300239.P17894564799679705448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A300236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300239.P17894564799679705448

/-! ## A300239.P7220259262932444091

`A032742(n+1)+A300721(n+1)-A000010(n+1)`
-/

namespace A300239.P7220259262932444091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + (A300721 (n + 1) - A000010 (n + 1))

end

end A300239.P7220259262932444091

/-!
# A300240: Filter sequence combining A009195(n) and A046523(n), i.e., gcd(n,phi(n)) and the prime signature of n.

The programs for A300240, there is no canonical definition to state claims against.
-/

/-! ## A300240.P13003976774222016340

`A318888(n+1)-A084360(A015128(n))`
-/

namespace A300240.P13003976774222016340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318888 (n + 1) - A084360 (A015128 n).toNat

end

end A300240.P13003976774222016340

/-! ## A300240.P13632645266611650964

`A318888(n+1)-A157928(A029733(n+1))`
-/

namespace A300240.P13632645266611650964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318888 (n + 1) - A157928 (A029733 (n + 1)).toNat

end

end A300240.P13632645266611650964

/-! ## A300240.P17288944418551162377

`A233583(A318888(n+1))-A036987(A087134(n+1))`
-/

namespace A300240.P17288944418551162377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A318888 (n + 1)).toNat - A036987 (A087134 (n + 1)).toNat

end

end A300240.P17288944418551162377

/-! ## A300240.P10945573475038565582

`A318888(n+1)-A208576(A006011(n))`
-/

namespace A300240.P10945573475038565582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318888 (n + 1) - A208576 (A006011 n).toNat

end

end A300240.P10945573475038565582

/-! ## A300240.P5177846261890150693

`A318888(n+1)-A001221(A108411(n))`
-/

namespace A300240.P5177846261890150693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318888 (n + 1) - A001221 (A108411 n).toNat

end

end A300240.P5177846261890150693

/-!
# A300242: Filter sequence combining gcd(n,sigma(n)) and gcd(n,phi(n)), (A009194 and A009195).

The programs for A300242, there is no canonical definition to state claims against.
-/

/-! ## A300242.P12074954283548052587

`A326192(n+1)+A057428(A022282(n))`
-/

namespace A300242.P12074954283548052587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) + A057428 (A022282 n).toNat

end

end A300242.P12074954283548052587

/-! ## A300242.P14435503492284773330

`A326192(n+1)+A057428(A022283(n))`
-/

namespace A300242.P14435503492284773330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) + A057428 (A022283 n).toNat

end

end A300242.P14435503492284773330

/-! ## A300242.P4233879419435885885

`A326192(n+1)-A043545(A244806(n+1))`
-/

namespace A300242.P4233879419435885885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) - A043545 (A244806 (n + 1)).toNat

end

end A300242.P4233879419435885885

/-! ## A300242.P18307245436537256380

`A326192(n+1)-A319703(A172508(n+1))`
-/

namespace A300242.P18307245436537256380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) - A319703 (A172508 (n + 1)).toNat

end

end A300242.P18307245436537256380

/-! ## A300242.P13913132809776498988

`A326192(n+1)-A157928(A161680(5*n+1))`
-/

namespace A300242.P13913132809776498988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) - A157928 (A161680 (5 * n + 1)).toNat

end

end A300242.P13913132809776498988

/-!
# A300244: Difference between A005187 and its Möbius transform (A297111).

The programs for A300244, the canonical program `A300244.P7008272986924291783` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300244 has offset 1).

The definition of A300244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300244.P7008272986924291783

`A005187(n+1)-A297111(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300244

/-- `A005187(n+1)-A297111(n+1)` -/
def P7008272986924291783.Spec : Prop :=
  ∀ n, P7008272986924291783.a n = A300244 (n + 1)

theorem P7008272986924291783.correct : P7008272986924291783.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel]

end A300244

/-! ## A300244.P3819954706370336112

`∑[val(n+1, 2)]-A297114(n+1)`
-/

namespace A300244.P3819954706370336112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A297114 (n + 1)

end

end A300244.P3819954706370336112

namespace A300244

/-- `∑[val(n+1, 2)]-A297114(n+1)` -/
def P3819954706370336112.Spec : Prop :=
  ∀ n, P3819954706370336112.a n = A300244 (n + 1)

end A300244

/-! ## A300244.P11263092123726783708

`A317844(n+1)+∑{d}[n+1, #]-(1+n)`
-/

namespace A300244.P11263092123726783708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317844 (n + 1) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (1 + n : ℤ))

end

end A300244.P11263092123726783708

namespace A300244

/-- `A317844(n+1)+∑{d}[n+1, #]-(1+n)` -/
def P11263092123726783708.Spec : Prop :=
  ∀ n, P11263092123726783708.a n = A300244 (n + 1)

theorem P11263092123726783708.correct : P11263092123726783708.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel, A300244.P11263092123726783708.f1, A300244.P11263092123726783708.a, A300244.P7008272986924291783.a, A005187, A005187.P3874015513960485494.a, A297111, A297111.P12742756148251447558.f1, A297111.P12742756148251447558.a, A317844, A317844.P7793600775375958411.a, A001065, A001065.P4097147489331274860.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300244

/-! ## A300244.P3244286939395523727

`A317844(n+1)+A001065(n+1)`
-/

namespace A300244.P3244286939395523727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317844 (n + 1) + A001065 (n + 1)

end

end A300244.P3244286939395523727

namespace A300244

/-- `A317844(n+1)+A001065(n+1)` -/
def P3244286939395523727.Spec : Prop :=
  ∀ n, P3244286939395523727.a n = A300244 (n + 1)

theorem P3244286939395523727.correct : P3244286939395523727.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel, A300244.P3244286939395523727.a, A300244.P7008272986924291783.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A297111, A297111.P12742756148251447558.f1, A297111.P12742756148251447558.a, A317844, A317844.P7793600775375958411.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300244

/-! ## A300244.P16339386206629227012

`A011371(n+1)-A297114(n+1)`
-/

namespace A300244.P16339386206629227012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) - A297114 (n + 1)

end

end A300244.P16339386206629227012

namespace A300244

/-- `A011371(n+1)-A297114(n+1)` -/
def P16339386206629227012.Spec : Prop :=
  ∀ n, P16339386206629227012.a n = A300244 (n + 1)

theorem P16339386206629227012.correct : P16339386206629227012.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel, A300244.P16339386206629227012.a, A300244.P7008272986924291783.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, A297111, A297111.P12742756148251447558.f1, A297111.P12742756148251447558.a, A297114, A297114.P2765220314566008295.a, A000120, A000120.P2816527436160941581.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300244

/-! ## A300244.P9625396769520001980

`∑{d}[n+1, A005187(#)*A157658((n+1)/#)]`
-/

namespace A300244.P9625396769520001980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005187 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300244.P9625396769520001980

namespace A300244

/-- `∑{d}[n+1, A005187(#)*A157658((n+1)/#)]` -/
def P9625396769520001980.Spec : Prop :=
  ∀ n, P9625396769520001980.a n = A300244 (n + 1)

end A300244

/-! ## A300244.P16832421112438728385

`∑{d}[n+1, A008683(#)*A318445((n+1)/#)]`
-/

namespace A300244.P16832421112438728385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A318445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300244.P16832421112438728385

namespace A300244

/-- `∑{d}[n+1, A008683(#)*A318445((n+1)/#)]` -/
def P16832421112438728385.Spec : Prop :=
  ∀ n, P16832421112438728385.a n = A300244 (n + 1)

end A300244

/-! ## A300244.P6027612850573156580

`∑{d}[n+1, A001065(#)*A378756((n+1)/#)]`
-/

namespace A300244.P6027612850573156580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A378756 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300244.P6027612850573156580

namespace A300244

/-- `∑{d}[n+1, A001065(#)*A378756((n+1)/#)]` -/
def P6027612850573156580.Spec : Prop :=
  ∀ n, P6027612850573156580.a n = A300244 (n + 1)

end A300244

/-! ## A300244.P6413729764203000998

`∑{d}[n+1, A057427(#-1)*A297111((n+1)/#)]`
-/

namespace A300244.P6413729764203000998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A297111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300244.P6413729764203000998

namespace A300244

/-- `∑{d}[n+1, A057427(#-1)*A297111((n+1)/#)]` -/
def P6413729764203000998.Spec : Prop :=
  ∀ n, P6413729764203000998.a n = A300244 (n + 1)

end A300244

/-! ## A300244.P14012515713997520871

`A005187(n+1)-(A297117(n+1)+A000010(n+1))`
-/

namespace A300244.P14012515713997520871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (A297117 (n + 1) + A000010 (n + 1))

end

end A300244.P14012515713997520871

namespace A300244

/-- `A005187(n+1)-(A297117(n+1)+A000010(n+1))` -/
def P14012515713997520871.Spec : Prop :=
  ∀ n, P14012515713997520871.a n = A300244 (n + 1)

theorem P14012515713997520871.correct : P14012515713997520871.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel, A300244.P14012515713997520871.a, A300244.P7008272986924291783.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A297111, A297111.P12742756148251447558.f1, A297111.P12742756148251447558.a, A297117, A297117.P14003803636479694355.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A297114, A297114.P2765220314566008295.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300244

/-! ## A300244.P7335933095304346536

`A011371(n+1)+A051953(n+1)-A297117(n+1)`
-/

namespace A300244.P7335933095304346536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A051953 (n + 1) - A297117 (n + 1))

end

end A300244.P7335933095304346536

namespace A300244

/-- `A011371(n+1)+A051953(n+1)-A297117(n+1)` -/
def P7335933095304346536.Spec : Prop :=
  ∀ n, P7335933095304346536.a n = A300244 (n + 1)

theorem P7335933095304346536.correct : P7335933095304346536.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel, A300244.P7335933095304346536.a, A300244.P7008272986924291783.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, A051953, A051953.P11179276897610979764.a, A297111, A297111.P12742756148251447558.f1, A297111.P12742756148251447558.a, A297117, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A000120, A000120.P2816527436160941581.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300244

/-! ## A300244.P18126346941709537215

`A011371(n+1)+A297115(n+1)-A083254(n+1)`
-/

namespace A300244.P18126346941709537215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A297115 (n + 1) - A083254 (n + 1))

end

end A300244.P18126346941709537215

namespace A300244

/-- `A011371(n+1)+A297115(n+1)-A083254(n+1)` -/
def P18126346941709537215.Spec : Prop :=
  ∀ n, P18126346941709537215.a n = A300244 (n + 1)

theorem P18126346941709537215.correct : P18126346941709537215.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel, A300244.P18126346941709537215.a, A300244.P7008272986924291783.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, A083254, A083254.P7544960031424623367.a, A297111, A297111.P12742756148251447558.f1, A297111.P12742756148251447558.a, A297115, A297115.P17041612972225485539.a, A000010, A000010.P4673923239450215316.a, A000120, A000120.P2816527436160941581.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300244

/-! ## A300244.P5261080997539516508

`A000203(n+1)+A294898(n+1)-A297111(n+1)`
-/

namespace A300244.P5261080997539516508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A294898 (n + 1) - A297111 (n + 1))

end

end A300244.P5261080997539516508

namespace A300244

/-- `A000203(n+1)+A294898(n+1)-A297111(n+1)` -/
def P5261080997539516508.Spec : Prop :=
  ∀ n, P5261080997539516508.a n = A300244 (n + 1)

theorem P5261080997539516508.correct : P5261080997539516508.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel, A300244.P5261080997539516508.a, A300244.P7008272986924291783.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A294898, A294898.P11311681912968614755.a, A297111, A297111.P12742756148251447558.f1, A297111.P12742756148251447558.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300244

/-! ## A300244.P16080938763280216519

`A001065(n+1)+A294898(n+1)-A297114(n+1)`
-/

namespace A300244.P16080938763280216519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A294898 (n + 1) - A297114 (n + 1))

end

end A300244.P16080938763280216519

namespace A300244

/-- `A001065(n+1)+A294898(n+1)-A297114(n+1)` -/
def P16080938763280216519.Spec : Prop :=
  ∀ n, P16080938763280216519.a n = A300244 (n + 1)

theorem P16080938763280216519.correct : P16080938763280216519.Spec := by
  intro n
  simp only [A300244, Nat.add_sub_cancel, A300244.P16080938763280216519.a, A300244.P7008272986924291783.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A294898, A294898.P11311681912968614755.a, A297111, A297111.P12742756148251447558.f1, A297111.P12742756148251447558.a, A297114, A297114.P2765220314566008295.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300244

/-! ## A300244.P7436824638460736609

`A318446(n+1)-(A318445(n+1)+A297111(n+1))`
-/

namespace A300244.P7436824638460736609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - (A318445 (n + 1) + A297111 (n + 1))

end

end A300244.P7436824638460736609

namespace A300244

/-- `A318446(n+1)-(A318445(n+1)+A297111(n+1))` -/
def P7436824638460736609.Spec : Prop :=
  ∀ n, P7436824638460736609.a n = A300244 (n + 1)

end A300244

/-! ## A300244.P5194203795210604963

`A346238(n+1)-(A346237(n+1)+A297111(n+1))`
-/

namespace A300244.P5194203795210604963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (n + 1) - (A346237 (n + 1) + A297111 (n + 1))

end

end A300244.P5194203795210604963

namespace A300244

/-- `A346238(n+1)-(A346237(n+1)+A297111(n+1))` -/
def P5194203795210604963.Spec : Prop :=
  ∀ n, P5194203795210604963.a n = A300244 (n + 1)

end A300244

/-! ## A300244.P16777725382471090000

`A011371(2*(n+1))-A297111(n+1)`
-/

namespace A300244.P16777725382471090000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * (n + 1)) - A297111 (n + 1)

end

end A300244.P16777725382471090000

namespace A300244

/-- `A011371(2*(n+1))-A297111(n+1)` -/
def P16777725382471090000.Spec : Prop :=
  ∀ n, P16777725382471090000.a n = A300244 (n + 1)

end A300244

/-!
# A300245: Filter sequence combining arithmetic derivative (A003415) with its Möbius transform (A300251).

The programs for A300245, there is no canonical definition to state claims against.
-/

/-! ## A300245.P12239063787000758638

`A305895(n+1)-A262889(A322308(n))²`
-/

namespace A300245.P12239063787000758638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305895 (n + 1) - A262889 (A322308 n).toNat ^ 2

end

end A300245.P12239063787000758638

/-!
# A300247: Restricted growth sequence transform of A286457(n), filter combining A078898(n) and A246277(n).

The programs for A300247, there is no canonical definition to state claims against.
-/

/-! ## A300247.P7186798459060060882

`A005135(A091325(n+1))*A300248(n+1)`
-/

namespace A300247.P7186798459060060882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005135 (A091325 (n + 1)).toNat * A300248 (n + 1)

end

end A300247.P7186798459060060882

/-! ## A300247.P1838167274260790469

`A300248(n+1)%A002762(n)`
-/

namespace A300247.P1838167274260790469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300248 (n + 1)) (A002762 n)

end

end A300247.P1838167274260790469

/-! ## A300247.P6430189850207033747

`and(A300248(n+1), A362531(n+1))`
-/

namespace A300247.P6430189850207033747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A300248 (n + 1)) (A362531 (n + 1))

end

end A300247.P6430189850207033747

/-! ## A300247.P8988355490454247861

`A300248(n+1)+A011745(A185284(n))`
-/

namespace A300247.P8988355490454247861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300248 (n + 1) + A011745 (A185284 n).toNat

end

end A300247.P8988355490454247861

/-! ## A300247.P2279663231202910705

`A134870(A060543(n))*A300248(n+1)`
-/

namespace A300247.P2279663231202910705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134870 (A060543 n).toNat * A300248 (n + 1)

end

end A300247.P2279663231202910705

/-!
# A300248: Filter sequence combining A046523(n) and A078898(n), the prime signature of n and the number of times the smallest prime factor of n is the smallest prime factor for numbers <= n.

The programs for A300248, there is no canonical definition to state claims against.
-/

/-! ## A300248.P17778442094882365020

`and(A125169(A141689(n+1)), A300247(n+1))`
-/

namespace A300248.P17778442094882365020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125169 (A141689 (n + 1)).toNat) (A300247 (n + 1))

end

end A300248.P17778442094882365020

/-!
# A300249: Filter sequence combining A003415(n) and A046523(n), the arithmetic derivative of n and the prime signature of n.

The programs for A300249, there is no canonical definition to state claims against.
-/

/-! ## A300249.P7329911651248332340

`A057427(A087678(n+1))*A351260(n+1)`
-/

namespace A300249.P7329911651248332340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A087678 (n + 1)).toNat * A351260 (n + 1)

end

end A300249.P7329911651248332340

/-! ## A300249.P18380387374365763888

`A316431(A002515(n+1))*A351260(n+1)`
-/

namespace A300249.P18380387374365763888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A002515 (n + 1)).toNat * A351260 (n + 1)

end

end A300249.P18380387374365763888

/-! ## A300249.P14826103018950551562

`A351260(n+1)+A007920(A000040(3*n+5))`
-/

namespace A300249.P14826103018950551562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351260 (n + 1) + A007920 (A000040 (3 * n + 5)).toNat

end

end A300249.P14826103018950551562

/-! ## A300249.P15404297521433207395

`A351260(n+1)-A102283(A124518(n+1))`
-/

namespace A300249.P15404297521433207395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351260 (n + 1) - A102283 (A124518 (n + 1)).toNat

end

end A300249.P15404297521433207395

/-! ## A300249.P9379397147830327635

`A353276(A134307(2*(n+1)))+A351260(n+1)`
-/

namespace A300249.P9379397147830327635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (A134307 (2 * (n + 1))).toNat + A351260 (n + 1)

end

end A300249.P9379397147830327635

/-! ## A300249.P4679237336674904601

`A351260(n+1)%A182181(A006037(n+1))`
-/

namespace A300249.P4679237336674904601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351260 (n + 1)) (A182181 (A006037 (n + 1)).toNat)

end

end A300249.P4679237336674904601

/-! ## A300249.P7728551204192484032

`A003415(A162174(n+1))*A351260(n+1)`
-/

namespace A300249.P7728551204192484032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A162174 (n + 1)).toNat * A351260 (n + 1)

end

end A300249.P7728551204192484032

/-! ## A300249.P5990904584749424154

`A351260(n+1)/A003415(A162174(n+2))`
-/

namespace A300249.P5990904584749424154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351260 (n + 1) : ℚ) / (A003415 (A162174 (n + 2)).toNat : ℚ)

end

end A300249.P5990904584749424154

/-! ## A300249.P5478138252437928680

`A057427(A085936(n+1))*A351260(n+1)`
-/

namespace A300249.P5478138252437928680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A085936 (n + 1)).toNat * A351260 (n + 1)

end

end A300249.P5478138252437928680

/-! ## A300249.P2917880122160660318

`A059841(A302574(n+1))*A351260(n+1)`
-/

namespace A300249.P2917880122160660318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A302574 (n + 1)).toNat * A351260 (n + 1)

end

end A300249.P2917880122160660318

/-! ## A300249.P9442036364675348852

`A054024(A053184(3*n+1))*A351260(n+1)`
-/

namespace A300249.P9442036364675348852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A053184 (3 * n + 1)).toNat * A351260 (n + 1)

end

end A300249.P9442036364675348852

/-! ## A300249.P3412296718558672180

`A057427(A087112(n+1))*A351260(n+1)`
-/

namespace A300249.P3412296718558672180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A087112 (n + 1)).toNat * A351260 (n + 1)

end

end A300249.P3412296718558672180

/-! ## A300249.P17994512609631337768

`A057427(A014311(n+1))*A351260(n+1)`
-/

namespace A300249.P17994512609631337768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A014311 (n + 1)).toNat * A351260 (n + 1)

end

end A300249.P17994512609631337768

/-! ## A300249.P7907095259073948348

`A057427(A033950(2*n+5))*A351260(n+1)`
-/

namespace A300249.P7907095259073948348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A033950 (2 * n + 5)).toNat * A351260 (n + 1)

end

end A300249.P7907095259073948348

/-! ## A300249.P6698259069627953395

`and(A351260(n+1), A375155(n+1))`
-/

namespace A300249.P6698259069627953395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A351260 (n + 1)) (A375155 (n + 1))

end

end A300249.P6698259069627953395

/-! ## A300249.P7090960767863836943

`A351260(n+1)%A004733(n)`
-/

namespace A300249.P7090960767863836943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351260 (n + 1)) (A004733 n)

end

end A300249.P7090960767863836943

/-! ## A300249.P10562172905813869092

`A351260(and(1, A003261(n+1))+n)`
-/

namespace A300249.P10562172905813869092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351260 (Int.land 1 (A003261 (n + 1)) + (n : ℤ)).toNat

end

end A300249.P10562172905813869092

/-! ## A300249.P3358531869374123665

`A351260(and(1, A063396(n))+n)`
-/

namespace A300249.P3358531869374123665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351260 (Int.land 1 (A063396 n) + (n : ℤ)).toNat

end

end A300249.P3358531869374123665

/-! ## A300249.P15241592147629206549

`A351260(and(1, A055580(n))+n)`
-/

namespace A300249.P15241592147629206549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351260 (Int.land 1 (A055580 n) + (n : ℤ)).toNat

end

end A300249.P15241592147629206549

/-! ## A300249.P11910168478239523261

`A351260(and(n-A055580(n), A055580(n)))`
-/

namespace A300249.P11910168478239523261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351260 (Int.land ((n : ℤ) - A055580 n) (A055580 n)).toNat

end

end A300249.P11910168478239523261

/-!
# A300251: Möbius transform of arithmetic derivative (A003415).

The programs for A300251, the canonical program `A300251.P1650091160704991913` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300251 has offset 1).

The definition of A300251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300251.P12002610513766457094

`A003415(n+1)-A300252(n+1)`
-/

namespace A300251.P12002610513766457094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A300252 (n + 1)

end

end A300251.P12002610513766457094

namespace A300251

/-- `A003415(n+1)-A300252(n+1)` -/
def P12002610513766457094.Spec : Prop :=
  ∀ n, P12002610513766457094.a n = A300251 (n + 1)

theorem P12002610513766457094.correct : P12002610513766457094.Spec := by
  intro n
  simp only [A300251, Nat.add_sub_cancel, A300251.P12002610513766457094.a, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A300252, A300252.P5081431345107026110.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300251

/-! ## A300251.P1650091160704991913

`∑{d}[n+1, A008683((n+1)/#)*A003415(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A300251

/-- `∑{d}[n+1, A008683((n+1)/#)*A003415(#)]` -/
def P1650091160704991913.Spec : Prop :=
  ∀ n, P1650091160704991913.a n = A300251 (n + 1)

theorem P1650091160704991913.correct : P1650091160704991913.Spec := by
  intro n
  simp only [A300251, Nat.add_sub_cancel]

end A300251

/-! ## A300251.P8998303468006828549

`∑{d}[n+1, A000010((n+1)/#)*A349394(#)]`
-/

namespace A300251.P8998303468006828549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349394 d

end

end A300251.P8998303468006828549

namespace A300251

/-- `∑{d}[n+1, A000010((n+1)/#)*A349394(#)]` -/
def P8998303468006828549.Spec : Prop :=
  ∀ n, P8998303468006828549.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P13972721765893779115

`∑{#}[n, A349394(gcd(n+1, #))]`
-/

namespace A300251.P13972721765893779115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A349394 (Nat.gcd (n + 1) k)

end

end A300251.P13972721765893779115

namespace A300251

/-- `∑{#}[n, A349394(gcd(n+1, #))]` -/
def P13972721765893779115.Spec : Prop :=
  ∀ n, P13972721765893779115.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P18104223146923772414

`A348976(n+1)-A000010(n+1)`
-/

namespace A300251.P18104223146923772414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348976 (n + 1) - A000010 (n + 1)

end

end A300251.P18104223146923772414

namespace A300251

/-- `A348976(n+1)-A000010(n+1)` -/
def P18104223146923772414.Spec : Prop :=
  ∀ n, P18104223146923772414.a n = A300251 (n + 1)

theorem P18104223146923772414.correct : P18104223146923772414.Spec := by
  intro n
  simp only [A300251, Nat.add_sub_cancel, A300251.P18104223146923772414.a, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A000010, A000010.P4673923239450215316.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A348976, A348976.P9987790780550882752.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A349394, A349394.P210516795435731064.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300251

/-! ## A300251.P14062717070764543553

`A348976(n+1)-(A109606(n+1)+1)`
-/

namespace A300251.P14062717070764543553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348976 (n + 1) - (A109606 (n + 1) + 1)

end

end A300251.P14062717070764543553

namespace A300251

/-- `A348976(n+1)-(A109606(n+1)+1)` -/
def P14062717070764543553.Spec : Prop :=
  ∀ n, P14062717070764543553.a n = A300251 (n + 1)

theorem P14062717070764543553.correct : P14062717070764543553.Spec := by
  intro n
  simp only [A300251, Nat.add_sub_cancel, A300251.P14062717070764543553.a, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A109606, A109606.P2415810041766612210.a, A348976, A348976.P9987790780550882752.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300251

/-! ## A300251.P9427679121698490269

`A348976(n+1)-A002618(n+1)/(n+1)`
-/

namespace A300251.P9427679121698490269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348976 (n + 1) : ℚ) - (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A300251.P9427679121698490269

namespace A300251

/-- `A348976(n+1)-A002618(n+1)/(n+1)` -/
def P9427679121698490269.Spec : Prop :=
  ∀ n, P9427679121698490269.a n = (A300251 (n + 1) : ℚ)

theorem P9427679121698490269.correct : P9427679121698490269.Spec := by
  intro n
  simp only [A300251, Nat.add_sub_cancel, A300251.P9427679121698490269.a, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A002618, A002618.P8397693677428532773.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A348976, A348976.P9987790780550882752.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300251

/-! ## A300251.P5819336754777992188

`A348976(n+1)-A053191(n+1)%(n+2)`
-/

namespace A300251.P5819336754777992188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348976 (n + 1) - Int.tmod (A053191 (n + 1)) (n + 2 : ℤ)

end

end A300251.P5819336754777992188

namespace A300251

/-- `A348976(n+1)-A053191(n+1)%(n+2)` -/
def P5819336754777992188.Spec : Prop :=
  ∀ n, P5819336754777992188.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P13750012435361977920

`∑{d}[n+1, A007427(#)*A319684((n+1)/#)]`
-/

namespace A300251.P13750012435361977920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P13750012435361977920

namespace A300251

/-- `∑{d}[n+1, A007427(#)*A319684((n+1)/#)]` -/
def P13750012435361977920.Spec : Prop :=
  ∀ n, P13750012435361977920.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P6865611474114833849

`∑{d}[n+1, A003966(#)*A349620((n+1)/#)]`
-/

namespace A300251.P6865611474114833849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P6865611474114833849

namespace A300251

/-- `∑{d}[n+1, A003966(#)*A349620((n+1)/#)]` -/
def P6865611474114833849.Spec : Prop :=
  ∀ n, P6865611474114833849.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P15802438473490513830

`∑{d}[n+1, A003968(#)*A349621((n+1)/#)]`
-/

namespace A300251.P15802438473490513830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A349621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P15802438473490513830

namespace A300251

/-- `∑{d}[n+1, A003968(#)*A349621((n+1)/#)]` -/
def P15802438473490513830.Spec : Prop :=
  ∀ n, P15802438473490513830.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P17631329987324486450

`∑{d}[n+1, A046692(#)*A347130((n+1)/#)]`
-/

namespace A300251.P17631329987324486450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P17631329987324486450

namespace A300251

/-- `∑{d}[n+1, A046692(#)*A347130((n+1)/#)]` -/
def P17631329987324486450.Spec : Prop :=
  ∀ n, P17631329987324486450.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P8938391302387842673

`∑{d}[n+1, A055615(#)*A347131((n+1)/#)]`
-/

namespace A300251.P8938391302387842673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A347131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P8938391302387842673

namespace A300251

/-- `∑{d}[n+1, A055615(#)*A347131((n+1)/#)]` -/
def P8938391302387842673.Spec : Prop :=
  ∀ n, P8938391302387842673.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P12254639624166840681

`∑{d}[n+1, A300717(#)*A349619((n+1)/#)]`
-/

namespace A300251.P12254639624166840681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300717 d * A349619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P12254639624166840681

namespace A300251

/-- `∑{d}[n+1, A300717(#)*A349619((n+1)/#)]` -/
def P12254639624166840681.Spec : Prop :=
  ∀ n, P12254639624166840681.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P14074618750621866224

`∑{d}[n+1, A271102(#)*A400173((n+1)/#)]`
-/

namespace A300251.P14074618750621866224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A400173 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P14074618750621866224

namespace A300251

/-- `∑{d}[n+1, A271102(#)*A400173((n+1)/#)]` -/
def P14074618750621866224.Spec : Prop :=
  ∀ n, P14074618750621866224.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P15294467902093732603

`∑{d}[n+1, A327960(#)*A349123((n+1)/#)]`
-/

namespace A300251.P15294467902093732603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A349123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P15294467902093732603

namespace A300251

/-- `∑{d}[n+1, A327960(#)*A349123((n+1)/#)]` -/
def P15294467902093732603.Spec : Prop :=
  ∀ n, P15294467902093732603.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P8423907069142208314

`∑{d}[n+1, A341635(#)*A349133((n+1)/#)]`
-/

namespace A300251.P8423907069142208314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341635 d * A349133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P8423907069142208314

namespace A300251

/-- `∑{d}[n+1, A341635(#)*A349133((n+1)/#)]` -/
def P8423907069142208314.Spec : Prop :=
  ∀ n, P8423907069142208314.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P8606116095908317335

`∑{d}[n+1, A349136(#)*A349380((n+1)/#)]`
-/

namespace A300251.P8606116095908317335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349136 d * A349380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P8606116095908317335

namespace A300251

/-- `∑{d}[n+1, A349136(#)*A349380((n+1)/#)]` -/
def P8606116095908317335.Spec : Prop :=
  ∀ n, P8606116095908317335.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P8734629236006620839

`∑{d}[n+1, A347965(#)*A378221((n+1)/#)]`
-/

namespace A300251.P8734629236006620839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347965 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P8734629236006620839

namespace A300251

/-- `∑{d}[n+1, A347965(#)*A378221((n+1)/#)]` -/
def P8734629236006620839.Spec : Prop :=
  ∀ n, P8734629236006620839.a n = A300251 (n + 1)

end A300251

/-! ## A300251.P6230818748185034206

`A069359(n+1)+A329039(n+1)-A300252(n+1)`
-/

namespace A300251.P6230818748185034206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + (A329039 (n + 1) - A300252 (n + 1))

end

end A300251.P6230818748185034206

namespace A300251

/-- `A069359(n+1)+A329039(n+1)-A300252(n+1)` -/
def P6230818748185034206.Spec : Prop :=
  ∀ n, P6230818748185034206.a n = A300251 (n + 1)

theorem P6230818748185034206.correct : P6230818748185034206.Spec := by
  intro n
  simp only [A300251, Nat.add_sub_cancel, A300251.P6230818748185034206.a, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A300252, A300252.P5081431345107026110.a, A329039, A329039.P4210899274647080376.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300251

/-!
# A300252: Difference between arithmetic derivative (A003415) and its Möbius transform (A300251).

The programs for A300252, the canonical program `A300252.P5081431345107026110` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300252 has offset 1).

The definition of A300252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300252.P5081431345107026110

`A003415(n+1)-A300251(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A300252

/-- `A003415(n+1)-A300251(n+1)` -/
def P5081431345107026110.Spec : Prop :=
  ∀ n, P5081431345107026110.a n = A300252 (n + 1)

theorem P5081431345107026110.correct : P5081431345107026110.Spec := by
  intro n
  simp only [A300252, Nat.add_sub_cancel]

end A300252

/-! ## A300252.P13182247322062825171

`∑[A258057(n)]-A300251(n+1)`
-/

namespace A300252.P13182247322062825171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A300251 (n + 1)

end

end A300252.P13182247322062825171

namespace A300252

/-- `∑[A258057(n)]-A300251(n+1)` -/
def P13182247322062825171.Spec : Prop :=
  ∀ n, P13182247322062825171.a n = A300252 (n + 1)

end A300252

/-! ## A300252.P809039403039257150

`∑{d}[n+1, A003415(#)*A157658((n+1)/#)]`
-/

namespace A300252.P809039403039257150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300252.P809039403039257150

namespace A300252

/-- `∑{d}[n+1, A003415(#)*A157658((n+1)/#)]` -/
def P809039403039257150.Spec : Prop :=
  ∀ n, P809039403039257150.a n = A300252 (n + 1)

end A300252

/-! ## A300252.P5225119416427077316

`∑{d}[n+1, A008683(#)*A319683((n+1)/#)]`
-/

namespace A300252.P5225119416427077316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A319683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300252.P5225119416427077316

namespace A300252

/-- `∑{d}[n+1, A008683(#)*A319683((n+1)/#)]` -/
def P5225119416427077316.Spec : Prop :=
  ∀ n, P5225119416427077316.a n = A300252 (n + 1)

end A300252

/-! ## A300252.P13418469296058637999

`∑{d}[n+1, A051953(#)*A349394((n+1)/#)]`
-/

namespace A300252.P13418469296058637999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300252.P13418469296058637999

namespace A300252

/-- `∑{d}[n+1, A051953(#)*A349394((n+1)/#)]` -/
def P13418469296058637999.Spec : Prop :=
  ∀ n, P13418469296058637999.a n = A300252 (n + 1)

end A300252

/-! ## A300252.P13720283278187999048

`∑{d}[n+1, A300719(#)*A349619((n+1)/#)]`
-/

namespace A300252.P13720283278187999048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300719 d * A349619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300252.P13720283278187999048

namespace A300252

/-- `∑{d}[n+1, A300719(#)*A349619((n+1)/#)]` -/
def P13720283278187999048.Spec : Prop :=
  ∀ n, P13720283278187999048.a n = A300252 (n + 1)

end A300252

/-! ## A300252.P12160196270042982492

`∑{d}[n+1, A349380(#)*A359164((n+1)/#)]`
-/

namespace A300252.P12160196270042982492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349380 d * A359164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300252.P12160196270042982492

namespace A300252

/-- `∑{d}[n+1, A349380(#)*A359164((n+1)/#)]` -/
def P12160196270042982492.Spec : Prop :=
  ∀ n, P12160196270042982492.a n = A300252 (n + 1)

end A300252

/-! ## A300252.P13504588308757464481

`∑{d}[n+1, A057427(#-1)*A300251((n+1)/#)]`
-/

namespace A300252.P13504588308757464481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300252.P13504588308757464481

namespace A300252

/-- `∑{d}[n+1, A057427(#-1)*A300251((n+1)/#)]` -/
def P13504588308757464481.Spec : Prop :=
  ∀ n, P13504588308757464481.a n = A300252 (n + 1)

end A300252

/-! ## A300252.P323502580352004400

`A000010(n+1)+A003415(n+1)-A348976(n+1)`
-/

namespace A300252.P323502580352004400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A003415 (n + 1) - A348976 (n + 1))

end

end A300252.P323502580352004400

namespace A300252

/-- `A000010(n+1)+A003415(n+1)-A348976(n+1)` -/
def P323502580352004400.Spec : Prop :=
  ∀ n, P323502580352004400.a n = A300252 (n + 1)

theorem P323502580352004400.correct : P323502580352004400.Spec := by
  intro n
  simp only [A300252, Nat.add_sub_cancel, A300252.P323502580352004400.a, A300252.P5081431345107026110.a, A000010, A000010.P4673923239450215316.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A300251, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A348976, A348976.P9987790780550882752.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A349394, A349394.P210516795435731064.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300252

/-! ## A300252.P12801111760488972595

`A319684(n+1)-(A319683(n+1)+A300251(n+1))`
-/

namespace A300252.P12801111760488972595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - (A319683 (n + 1) + A300251 (n + 1))

end

end A300252.P12801111760488972595

namespace A300252

/-- `A319684(n+1)-(A319683(n+1)+A300251(n+1))` -/
def P12801111760488972595.Spec : Prop :=
  ∀ n, P12801111760488972595.a n = A300252 (n + 1)

theorem P12801111760488972595.correct : P12801111760488972595.Spec := by
  intro n
  simp only [A300252, Nat.add_sub_cancel, A300252.P12801111760488972595.a, A300252.P5081431345107026110.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A300251, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A319683, A319683.P12610436916634477773.a, A319684, A319684.P16322355833614698581.f1, A319684.P16322355833614698581.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300252

/-! ## A300252.P3701316530348726047

`A348507(n+1)-(A348970(n+1)+A300251(n+1))`
-/

namespace A300252.P3701316530348726047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - (A348970 (n + 1) + A300251 (n + 1))

end

end A300252.P3701316530348726047

namespace A300252

/-- `A348507(n+1)-(A348970(n+1)+A300251(n+1))` -/
def P3701316530348726047.Spec : Prop :=
  ∀ n, P3701316530348726047.a n = A300252 (n + 1)

theorem P3701316530348726047.correct : P3701316530348726047.Spec := by
  intro n
  simp only [A300252, Nat.add_sub_cancel, A300252.P3701316530348726047.a, A300252.P5081431345107026110.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A300251, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A348507, A348507.P8468116905144779811.a, A348970, A348970.P15142957412835109765.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A129283, A129283.P3962818557550655141.a, A349394, A349394.P210516795435731064.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A014963, A014963.P5975177236000282614.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300252

/-! ## A300252.P13819945166797857922

`A003557(n+1)*A342001(n+1)-A300251(n+1)`
-/

namespace A300252.P13819945166797857922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A342001 (n + 1) - A300251 (n + 1)

end

end A300252.P13819945166797857922

namespace A300252

/-- `A003557(n+1)*A342001(n+1)-A300251(n+1)` -/
def P13819945166797857922.Spec : Prop :=
  ∀ n, P13819945166797857922.a n = A300252 (n + 1)

end A300252

/-! ## A300252.P11316855826445635208

`A319703(2*(n+1))-A300251(n+1)`
-/

namespace A300252.P11316855826445635208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) - A300251 (n + 1)

end

end A300252.P11316855826445635208

namespace A300252

/-- `A319703(2*(n+1))-A300251(n+1)` -/
def P11316855826445635208.Spec : Prop :=
  ∀ n, P11316855826445635208.a n = A300252 (n + 1)

end A300252

/-!
# A300253: GCD of arithmetic derivative (A003415) and its Möbius transform (A300251).

The programs for A300253, the canonical program `A300253.P12261115453388229747` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300253 has offset 1).

The definition of A300253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300253.P12261115453388229747

`gcd(A003415(n+1), A300251(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A300253

/-- `gcd(A003415(n+1), A300251(n+1))` -/
def P12261115453388229747.Spec : Prop :=
  ∀ n, (P12261115453388229747.a n : ℤ) = A300253 (n + 1)

theorem P12261115453388229747.correct : P12261115453388229747.Spec := by
  intro n
  simp only [A300253, Nat.add_sub_cancel]

end A300253

/-! ## A300253.P7469420858027235800

`gcd(∑[A258057(n)], A300251(n+1))`
-/

namespace A300253.P7469420858027235800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A300251 (n + 1))

end

end A300253.P7469420858027235800

namespace A300253

/-- `gcd(∑[A258057(n)], A300251(n+1))` -/
def P7469420858027235800.Spec : Prop :=
  ∀ n, (P7469420858027235800.a n : ℤ) = A300253 (n + 1)

end A300253

/-! ## A300253.P2007293038632041161

`gcd(A300252(n+1), A319703(A103517(n)))`
-/

namespace A300253.P2007293038632041161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300252 (n + 1)) (A319703 (A103517 n).toNat)

end

end A300253.P2007293038632041161

namespace A300253

/-- `gcd(A300252(n+1), A319703(A103517(n)))` -/
def P2007293038632041161.Spec : Prop :=
  ∀ n, (P2007293038632041161.a n : ℤ) = A300253 (n + 1)

end A300253

/-! ## A300253.P9799055210635821760

`gcd(A300251(A028310(n+1)), A319703(2*n+2))`
-/

namespace A300253.P9799055210635821760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300251 (A028310 (n + 1)).toNat) (A319703 (2 * n + 2))

end

end A300253.P9799055210635821760

namespace A300253

/-- `gcd(A300251(A028310(n+1)), A319703(2*n+2))` -/
def P9799055210635821760.Spec : Prop :=
  ∀ n, (P9799055210635821760.a n : ℤ) = A300253 (n + 1)

end A300253

/-!
# A300254: a(n) = 25*(n + 1)*(4*n + 3)*(5*n + 4)/3.

The programs for A300254, the canonical program `A300254.P12654436630093768535` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300254 has offset 0).

The definition of A300254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300254.P12227338837843565378

`ogf((100+650x+250x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A300254.P12227338837843565378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [100, 650, 250] [1, -4, 6, -4, 1] n

end

end A300254.P12227338837843565378

namespace A300254

/-- `ogf((100+650x+250x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12227338837843565378.Spec : Prop :=
  ∀ n, P12227338837843565378.a n = A300254 n

end A300254

/-! ## A300254.P9722365741701770478

`25*(n+1)*(4*n+3)*(5*n+4)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300254.P9722365741701770478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * (n + 1) * (4 * n + 3) * (5 * n + 4) : ℚ) / 3

end

end A300254.P9722365741701770478

namespace A300254

/-- `25*(n+1)*(4*n+3)*(5*n+4)/3` -/
def P9722365741701770478.Spec : Prop :=
  ∀ n, P9722365741701770478.a n = (A300254 n : ℚ)

end A300254

/-! ## A300254.P3884958640221425767

`A268684(5*n+4)`
-/

namespace A300254.P3884958640221425767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 (5 * n + 4)

end

end A300254.P3884958640221425767

namespace A300254

/-- `A268684(5*n+4)` -/
def P3884958640221425767.Spec : Prop :=
  ∀ n, P3884958640221425767.a n = A300254 n

end A300254

/-! ## A300254.P635239391140542377

`A014112(10*n+8)`
-/

namespace A300254.P635239391140542377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (10 * n + 8)

end

end A300254.P635239391140542377

namespace A300254

/-- `A014112(10*n+8)` -/
def P635239391140542377.Spec : Prop :=
  ∀ n, P635239391140542377.a n = A300254 n

end A300254

/-! ## A300254.P1167691005287484248

`A228958(10*n+8)`
-/

namespace A300254.P1167691005287484248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228958 (10 * n + 8)

end

end A300254.P1167691005287484248

namespace A300254

/-- `A228958(10*n+8)` -/
def P1167691005287484248.Spec : Prop :=
  ∀ n, P1167691005287484248.a n = A300254 n

end A300254

/-! ## A300254.P12654436630093768535

`A212964(10*n+9)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A300254

/-- `A212964(10*n+9)` -/
def P12654436630093768535.Spec : Prop :=
  ∀ n, P12654436630093768535.a n = A300254 n

theorem P12654436630093768535.correct : P12654436630093768535.Spec := by
  intro n
  simp only [A300254]

end A300254

/-! ## A300254.P10853396442567956710

`A193068(A016885(n))+2`
-/

namespace A300254.P10853396442567956710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193068 (A016885 n).toNat + 2

end

end A300254.P10853396442567956710

namespace A300254

/-- `A193068(A016885(n))+2` -/
def P10853396442567956710.Spec : Prop :=
  ∀ n, P10853396442567956710.a n = A300254 n

end A300254

/-! ## A300254.P8266464307413701489

`A008804(A017317(2*n+1)-1)`
-/

namespace A300254.P8266464307413701489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (A017317 (2 * n + 1) - 1).toNat

end

end A300254.P8266464307413701489

namespace A300254

/-- `A008804(A017317(2*n+1)-1)` -/
def P8266464307413701489.Spec : Prop :=
  ∀ n, P8266464307413701489.a n = A300254 n

end A300254

/-! ## A300254.P5796084254410984869

`A008643(A063155(2*(n+1))-1)`
-/

namespace A300254.P5796084254410984869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008643 (A063155 (2 * (n + 1)) - 1).toNat

end

end A300254.P5796084254410984869

namespace A300254

/-- `A008643(A063155(2*(n+1))-1)` -/
def P5796084254410984869.Spec : Prop :=
  ∀ n, P5796084254410984869.a n = A300254 n

end A300254

/-! ## A300254.P10641038976268942228

`A029300(A304158(2*(n+1))+2)`
-/

namespace A300254.P10641038976268942228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029300 (A304158 (2 * (n + 1)) + 2).toNat

end

end A300254.P10641038976268942228

namespace A300254

/-- `A029300(A304158(2*(n+1))+2)` -/
def P10641038976268942228.Spec : Prop :=
  ∀ n, P10641038976268942228.a n = A300254 n

end A300254

/-!
# A300255: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300255, there is no canonical definition to state claims against.
-/

/-! ## A300255.P17731494671066498588

`A300259(∑[4*n]+1)`
-/

namespace A300255.P17731494671066498588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300255.P17731494671066498588

/-! ## A300255.P5167806876243668274

`A300259(A001844(n))+A225099(n)`
-/

namespace A300255.P5167806876243668274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A001844 n).toNat + A225099 n

end

end A300255.P5167806876243668274

/-! ## A300255.P18227976001058102239

`gcd(A000038(n), A300259(A001844(n)))`
-/

namespace A300255.P18227976001058102239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300259 (A001844 n).toNat)

end

end A300255.P18227976001058102239

/-! ## A300255.P3003703983437876276

`or(A213600(n), A300259(A001844(n)))`
-/

namespace A300255.P3003703983437876276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213600 n) (A300259 (A001844 n).toNat)

end

end A300255.P3003703983437876276

/-! ## A300255.P9488233892926402168

`A300259(A001844(n))+A098852(n+1)`
-/

namespace A300255.P9488233892926402168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A001844 n).toNat + A098852 (n + 1)

end

end A300255.P9488233892926402168

/-!
# A300256: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300256, there is no canonical definition to state claims against.
-/

/-! ## A300256.P581848645530136976

`A300259(A374005(n+1))`
-/

namespace A300256.P581848645530136976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A374005 (n + 1)).toNat

end

end A300256.P581848645530136976

/-! ## A300256.P165438502448468291

`A300259(A167499(n+3))`
-/

namespace A300256.P165438502448468291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A167499 (n + 3)).toNat

end

end A300256.P165438502448468291

/-! ## A300256.P17898113518264934804

`A300259(A155212(n)+13)`
-/

namespace A300256.P17898113518264934804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A155212 n + 13).toNat

end

end A300256.P17898113518264934804

/-! ## A300256.P9897524157879326442

`A300259(A056000(n)+15)`
-/

namespace A300256.P9897524157879326442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A056000 n + 15).toNat

end

end A300256.P9897524157879326442

/-! ## A300256.P9156660663015871345

`A300259(eq[6, A131818(n+1)])`
-/

namespace A300256.P9156660663015871345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300256.P9156660663015871345

/-!
# A300257: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300257, there is no canonical definition to state claims against.
-/

/-! ## A300257.P17233431831621697861

`A300259(A374007(n+1))`
-/

namespace A300257.P17233431831621697861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A374007 (n + 1)).toNat

end

end A300257.P17233431831621697861

/-! ## A300257.P7042908010534677256

`A300259(A167499(n+4)+1)`
-/

namespace A300257.P7042908010534677256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A167499 (n + 4) + 1).toNat

end

end A300257.P7042908010534677256

/-! ## A300257.P14002433466915210748

`A300259(A167614(4+n)+3)`
-/

namespace A300257.P14002433466915210748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A167614 (4 + n) + 3).toNat

end

end A300257.P14002433466915210748

/-! ## A300257.P6875739974052555389

`A300259(eq[7, A131818(n+1)])`
-/

namespace A300257.P6875739974052555389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300257.P6875739974052555389

/-! ## A300257.P14246199330718167112

`A300259(abs(A166136(n+4)-1)+1)`
-/

namespace A300257.P14246199330718167112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (|A166136 (n + 4) - 1| + 1).toNat

end

end A300257.P14246199330718167112

/-!
# A300258: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300258, there is no canonical definition to state claims against.
-/

/-! ## A300258.P11024059215545829198

`A300259(A374008(n+1))`
-/

namespace A300258.P11024059215545829198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A374008 (n + 1)).toNat

end

end A300258.P11024059215545829198

/-! ## A300258.P10320986909103878461

`A300259(eq[11, A066657(n)])`
-/

namespace A300258.P10320986909103878461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300258.P10320986909103878461

/-! ## A300258.P1078985417821786056

`A300259(eq[8, A131818(n+1)])`
-/

namespace A300258.P1078985417821786056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300258.P1078985417821786056

/-! ## A300258.P16181652194377187714

`A300259(eq[4, A219347(n)])`
-/

namespace A300258.P16181652194377187714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300258.P16181652194377187714

/-! ## A300258.P7434054710017658836

`A300259(eq[6, A193592(n)])`
-/

namespace A300258.P7434054710017658836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300258.P7434054710017658836

/-!
# A300260: Table read by antidiagonals: T(n,k) is the number of unlabeled rank-3 graded lattices with n coatoms and k atoms (for n,k >= 1).

The programs for A300260, there is no canonical definition to state claims against.
-/

/-! ## A300260.P11122351458558051002

`A120835(A086620(n))`
-/

namespace A300260.P11122351458558051002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A086620 n).toNat

end

end A300260.P11122351458558051002

/-! ## A300260.P8381714736615090649

`A120835(A100936(n))`
-/

namespace A300260.P8381714736615090649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A100936 n).toNat

end

end A300260.P8381714736615090649

/-! ## A300260.P3238368448902655200

`A120835(A108359(n))`
-/

namespace A300260.P3238368448902655200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A108359 n).toNat

end

end A300260.P3238368448902655200

/-! ## A300260.P15125903342322635942

`A113323(A159623(n))`
-/

namespace A300260.P15125903342322635942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113323 (A159623 n).toNat

end

end A300260.P15125903342322635942

/-! ## A300260.P11316891745303167944

`A348386(A361745(n))`
-/

namespace A300260.P11316891745303167944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348386 (A361745 n).toNat

end

end A300260.P11316891745303167944

/-!
# A300261: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300261, there is no canonical definition to state claims against.
-/

/-! ## A300261.P3375461144722212873

`A300267(∑[4*n]+1)`
-/

namespace A300261.P3375461144722212873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300261.P3375461144722212873

/-! ## A300261.P669974988286026612

`A300267(A001844(n))+A059995(n)`
-/

namespace A300261.P669974988286026612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A001844 n).toNat + A059995 n

end

end A300261.P669974988286026612

/-! ## A300261.P1166737631885286187

`A300267(A001844(n))+A185036(n)`
-/

namespace A300261.P1166737631885286187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A001844 n).toNat + A185036 n

end

end A300261.P1166737631885286187

/-! ## A300261.P8512838410764212104

`A242784(n)*A300267(A001844(n))`
-/

namespace A300261.P8512838410764212104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n * A300267 (A001844 n).toNat

end

end A300261.P8512838410764212104

/-! ## A300261.P17679780605032114445

`A300267(A001844(n))^A110656(n)`
-/

namespace A300261.P17679780605032114445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300267 (A001844 n).toNat : ℚ) ^ (A110656 n : ℤ)

end

end A300261.P17679780605032114445

/-!
# A300262: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300262, there is no canonical definition to state claims against.
-/

/-! ## A300262.P3803772688856187817

`A300267(∑[n+2]+4)`
-/

namespace A300262.P3803772688856187817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300262.P3803772688856187817

/-! ## A300262.P6701700185110722984

`A300267(A167614(n+1))+A185284(n)`
-/

namespace A300262.P6701700185110722984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A167614 (n + 1)).toNat + A185284 n

end

end A300262.P6701700185110722984

/-! ## A300262.P6652071629774437392

`A300267(A167614(n+1))+A297045(n+1)`
-/

namespace A300262.P6652071629774437392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A167614 (n + 1)).toNat + A297045 (n + 1)

end

end A300262.P6652071629774437392

/-! ## A300262.P16539546210239073499

`A133707(n+1)*A300267(A167614(n+1))`
-/

namespace A300262.P16539546210239073499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A300267 (A167614 (n + 1)).toNat

end

end A300262.P16539546210239073499

/-! ## A300262.P3337406985299168395

`A300267(A167614(n+1))%A003618(n+1)`
-/

namespace A300262.P3337406985299168395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300267 (A167614 (n + 1)).toNat) (A003618 (n + 1))

end

end A300262.P3337406985299168395

/-!
# A300263: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300263, there is no canonical definition to state claims against.
-/

/-! ## A300263.P13253386441323501949

`A300267(A374004(n+1))`
-/

namespace A300263.P13253386441323501949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A374004 (n + 1)).toNat

end

end A300263.P13253386441323501949

/-! ## A300263.P17421020710706295936

`A300267(A055999(n)+10)`
-/

namespace A300263.P17421020710706295936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A055999 n + 10).toNat

end

end A300263.P17421020710706295936

/-! ## A300263.P8550075030007363921

`A300267(A167614(n+2)+1)`
-/

namespace A300263.P8550075030007363921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A167614 (n + 2) + 1).toNat

end

end A300263.P8550075030007363921

/-! ## A300263.P15532037789434478806

`A300267(A166136(n+2)-2)`
-/

namespace A300263.P15532037789434478806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A166136 (n + 2) - 2).toNat

end

end A300263.P15532037789434478806

/-! ## A300263.P7636870663115539642

`A300267(A000217(n+3)+4)`
-/

namespace A300263.P7636870663115539642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A000217 (n + 3) + 4).toNat

end

end A300263.P7636870663115539642

/-!
# A300264: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300264, there is no canonical definition to state claims against.
-/

/-! ## A300264.P8843910666801921405

`A300267(A374005(n+1))`
-/

namespace A300264.P8843910666801921405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A374005 (n + 1)).toNat

end

end A300264.P8843910666801921405

/-! ## A300264.P5700924494265885768

`A300267(A167499(n+3))`
-/

namespace A300264.P5700924494265885768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A167499 (n + 3)).toNat

end

end A300264.P5700924494265885768

/-! ## A300264.P16305627592772395686

`A300267(A155212(n)+13)`
-/

namespace A300264.P16305627592772395686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A155212 n + 13).toNat

end

end A300264.P16305627592772395686

/-! ## A300264.P8753393671582942956

`A300267(A000217(n+4)+5)`
-/

namespace A300264.P8753393671582942956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A000217 (n + 4) + 5).toNat

end

end A300264.P8753393671582942956

/-! ## A300264.P3473645678077902692

`A300267(eq[4, A193592(n)])`
-/

namespace A300264.P3473645678077902692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300264.P3473645678077902692

/-!
# A300265: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300265, there is no canonical definition to state claims against.
-/

/-! ## A300265.P2479714748551571485

`A300267(A374007(n+1))`
-/

namespace A300265.P2479714748551571485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A374007 (n + 1)).toNat

end

end A300265.P2479714748551571485

/-! ## A300265.P11049895123478096891

`A300267(A056115(n)+21)`
-/

namespace A300265.P11049895123478096891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A056115 n + 21).toNat

end

end A300265.P11049895123478096891

/-! ## A300265.P17679461813342575254

`A300267(eq[7, A131818(n+1)])`
-/

namespace A300265.P17679461813342575254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300265.P17679461813342575254

/-! ## A300265.P12300752039006766221

`A300267(abs(A166136(n+4)-1)+1)`
-/

namespace A300265.P12300752039006766221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (|A166136 (n + 4) - 1| + 1).toNat

end

end A300265.P12300752039006766221

/-! ## A300265.P4404775912641325943

`A300267(A052905(n+3))`
-/

namespace A300265.P4404775912641325943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A052905 (n + 3)).toNat

end

end A300265.P4404775912641325943

/-!
# A300266: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300266, there is no canonical definition to state claims against.
-/

/-! ## A300266.P18331508537404534242

`A300267(A374008(n+1))`
-/

namespace A300266.P18331508537404534242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A374008 (n + 1)).toNat

end

end A300266.P18331508537404534242

/-! ## A300266.P15810961820144874531

`A300267(A000124(n+6)+6)`
-/

namespace A300266.P15810961820144874531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A000124 (n + 6) + 6).toNat

end

end A300266.P15810961820144874531

/-! ## A300266.P3094132790275608048

`A300267(eq[8, A131818(n+1)])`
-/

namespace A300266.P3094132790275608048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300266.P3094132790275608048

/-! ## A300266.P10145851573396235429

`A300267(A055999(n+4))`
-/

namespace A300266.P10145851573396235429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (A055999 (n + 4)).toNat

end

end A300266.P10145851573396235429

/-! ## A300266.P17086461905012526784

`A300267(eq[6, A193592(n)])`
-/

namespace A300266.P17086461905012526784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300266.P17086461905012526784

/-!
# A300267: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300267, there is no canonical definition to state claims against.
-/

/-! ## A300267.P10682820229573334833

`A299753(n+1)+A285007(A035607(n))`
-/

namespace A300267.P10682820229573334833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (n + 1) + A285007 (A035607 n).toNat

end

end A300267.P10682820229573334833

/-! ## A300267.P17940878107651149218

`A309785(A331562(n))+A299753(n+1)`
-/

namespace A300267.P17940878107651149218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A299753 (n + 1)

end

end A300267.P17940878107651149218

/-! ## A300267.P9217948615889123723

`A309785(A347621(n))+A299753(n+1)`
-/

namespace A300267.P9217948615889123723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A347621 n).toNat + A299753 (n + 1)

end

end A300267.P9217948615889123723

/-! ## A300267.P5132201018601524665

`or(A000120(A282338(n+1)), A299753(n+1))`
-/

namespace A300267.P5132201018601524665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A282338 (n + 1)).toNat) (A299753 (n + 1))

end

end A300267.P5132201018601524665

/-!
# A300268: Number of solutions to 1 +- 4 +- 9 +- ... +- n^2 == 0 (mod n).

The programs for A300268, there is no canonical definition to state claims against.
-/

/-! ## A300268.P15325525959257984118

`and(A056391(n+1), A114994(A276547(n+1)))`
-/

namespace A300268.P15325525959257984118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056391 (n + 1)) (A114994 (A276547 (n + 1)).toNat)

end

end A300268.P15325525959257984118

/-!
# A300270: a(n) = Sum_{1 <= i <= j <= n} mu(i*j)*floor((n/i)/j).

The programs for A300270, the canonical program `A300270.P8067228774697964100` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300270 has offset 1).

The definition of A300270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300270.P8067228774697964100

`(A174863(n+1)+n+1)/2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300270

/-- `(A174863(n+1)+n+1)/2` -/
def P8067228774697964100.Spec : Prop :=
  ∀ n, P8067228774697964100.a n = (A300270 (n + 1) : ℚ)

end A300270

/-! ## A300270.P550484084159127462

`∑[ceil(acot(∏{p}[n+1, -#]))]`
-/

namespace A300270.P550484084159127462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P550484084159127462

namespace A300270

/-- `∑[ceil(acot(∏{p}[n+1, -#]))]` -/
def P550484084159127462.Spec : Prop :=
  ∀ n, P550484084159127462.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P11567692512799986132

`∑[ceil(tanh(∏{e}[n+1, -#]))]`
-/

namespace A300270.P11567692512799986132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P11567692512799986132

namespace A300270

/-- `∑[ceil(tanh(∏{e}[n+1, -#]))]` -/
def P11567692512799986132.Spec : Prop :=
  ∀ n, P11567692512799986132.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P2930334519699397846

`∑[ceil(acot(∏{e}[n+1, -#]))]`
-/

namespace A300270.P2930334519699397846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P2930334519699397846

namespace A300270

/-- `∑[ceil(acot(∏{e}[n+1, -#]))]` -/
def P2930334519699397846.Spec : Prop :=
  ∀ n, P2930334519699397846.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P12000521670156804845

`∑[ceil(1/∏{p}[n+1, -#])]`
-/

namespace A300270.P12000521670156804845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / ((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P12000521670156804845

namespace A300270

/-- `∑[ceil(1/∏{p}[n+1, -#])]` -/
def P12000521670156804845.Spec : Prop :=
  ∀ n, P12000521670156804845.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P6878745232391419183

`∑[ceil(acot(∏{p}[n+1, 1-#]))²]`
-/

namespace A300270.P6878745232391419183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ)) : ℤ) : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P6878745232391419183

namespace A300270

/-- `∑[ceil(acot(∏{p}[n+1, 1-#]))²]` -/
def P6878745232391419183.Spec : Prop :=
  ∀ n, P6878745232391419183.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P7889836969319079559

`∑[ceil(sin(∏{p}[n+1, -1%#]))]`
-/

namespace A300270.P7889836969319079559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((∏ p ∈ Nat.primeFactors (f2 n), Int.tmod (-1) (p : ℤ) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P7889836969319079559

namespace A300270

/-- `∑[ceil(sin(∏{p}[n+1, -1%#]))]` -/
def P7889836969319079559.Spec : Prop :=
  ∀ n, P7889836969319079559.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P12070224981441052010

`∑[(∑{p}[n+1, #]+n+1)%2]`
-/

namespace A300270.P12070224981441052010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), p + (n + 1)) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P12070224981441052010

namespace A300270

/-- `∑[(∑{p}[n+1, #]+n+1)%2]` -/
def P12070224981441052010.Spec : Prop :=
  ∀ n, (P12070224981441052010.a n : ℤ) = A300270 (n + 1)

end A300270

/-! ## A300270.P6496629466030960172

`∑[and(1, ∑{p}[n+1, #]+n+1)]`
-/

namespace A300270.P6496629466030960172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f2 n), p + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P6496629466030960172

namespace A300270

/-- `∑[and(1, ∑{p}[n+1, #]+n+1)]` -/
def P6496629466030960172.Spec : Prop :=
  ∀ n, (P6496629466030960172.a n : ℤ) = A300270 (n + 1)

end A300270

/-! ## A300270.P14392204526547894356

`∑[1-A092248(n+1)]`
-/

namespace A300270.P14392204526547894356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A092248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P14392204526547894356

namespace A300270

/-- `∑[1-A092248(n+1)]` -/
def P14392204526547894356.Spec : Prop :=
  ∀ n, P14392204526547894356.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P8232375896334385521

`∑[A010052(A034444(n+1))]`
-/

namespace A300270.P8232375896334385521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A034444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P8232375896334385521

namespace A300270

/-- `∑[A010052(A034444(n+1))]` -/
def P8232375896334385521.Spec : Prop :=
  ∀ n, P8232375896334385521.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P13765362549825226856

`A356068(n+1)-A082998(n+1)`
-/

namespace A300270.P13765362549825226856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (n + 1) - A082998 (n + 1)

end

end A300270.P13765362549825226856

namespace A300270

/-- `A356068(n+1)-A082998(n+1)` -/
def P13765362549825226856.Spec : Prop :=
  ∀ n, P13765362549825226856.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P3574454815614192920

`∑[ceil(tanh(∏{p}[n+1, -#]))]`
-/

namespace A300270.P3574454815614192920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300270.P3574454815614192920

namespace A300270

/-- `∑[ceil(tanh(∏{p}[n+1, -#]))]` -/
def P3574454815614192920.Spec : Prop :=
  ∀ n, P3574454815614192920.a n = A300270 (n + 1)

end A300270

/-! ## A300270.P7922968324255323135

`A215480((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A300270.P7922968324255323135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215480 ((n + 1) ^ 2) + a (n - 1)

end

end A300270.P7922968324255323135

namespace A300270

/-- `A215480((n+1)²)+a(n-1)` -/
def P7922968324255323135.Spec : Prop :=
  ∀ n, P7922968324255323135.a n = A300270 (n + 1)

end A300270

/-!
# A300271: Smallest Heinz number of a partition obtained from y by removing one square from its Young diagram, where y is the integer partition with Heinz number n > 1.

The programs for A300271, there is no canonical definition to state claims against.
-/

/-! ## A300271.P12746822028575198188

`A065033(A077168(n)+A050347(n+1))`
-/

namespace A300271.P12746822028575198188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A077168 n + A050347 (n + 1)).toNat

end

end A300271.P12746822028575198188

/-! ## A300271.P3002853823883075853

`A056924(A000079(n))+A048673(A050334(n+1))`
-/

namespace A300271.P3002853823883075853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A000079 n).toNat + A048673 (A050334 (n + 1)).toNat

end

end A300271.P3002853823883075853

/-! ## A300271.P5784812172657816100

`A341990(A316364(n+1))+A008619(A077168(n))`
-/

namespace A300271.P5784812172657816100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341990 (A316364 (n + 1)).toNat + A008619 (A077168 n).toNat

end

end A300271.P5784812172657816100

/-! ## A300271.P3344284245892312217

`A252461(A077168(n+1))`
-/

namespace A300271.P3344284245892312217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (A077168 (n + 1)).toNat

end

end A300271.P3344284245892312217

/-! ## A300271.P15251366363577852485

`A252461(n+2)*A284761(A099398(n))`
-/

namespace A300271.P15251366363577852485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (n + 2) * A284761 (A099398 n).toNat

end

end A300271.P15251366363577852485

/-!
# A300272: Sorted list of Heinz numbers of odd partitions.

The programs for A300272, the canonical program `A300272.P3847471746672957455` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300272 has offset 1).

The definition of A300272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300272.P3847471746672957455

`filter[A066208(n+1), A066829(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A300272

/-- `filter[A066208(n+1), A066829(#)]` -/
def P3847471746672957455.Spec : Prop :=
  ∀ n, P3847471746672957455.a n = A300272 (n + 1)

theorem P3847471746672957455.correct : P3847471746672957455.Spec := by
  intro n
  simp only [A300272, Nat.add_sub_cancel]

end A300272

/-! ## A300272.P8228476765838120170

`filter[A066208(n+1), A353307(#)]`
-/

namespace A300272.P8228476765838120170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353307 (f1 j).toNat = 1) n)

end

end A300272.P8228476765838120170

namespace A300272

/-- `filter[A066208(n+1), A353307(#)]` -/
def P8228476765838120170.Spec : Prop :=
  ∀ n, P8228476765838120170.a n = A300272 (n + 1)

end A300272

/-! ## A300272.P14753453484861083136

`filter[A066208(n+1), A359172(#)]`
-/

namespace A300272.P14753453484861083136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A300272.P14753453484861083136

namespace A300272

/-- `filter[A066208(n+1), A359172(#)]` -/
def P14753453484861083136.Spec : Prop :=
  ∀ n, P14753453484861083136.a n = A300272 (n + 1)

end A300272

/-! ## A300272.P10532942747942037386

`∩[A066208(n+1), A329604(n+1)]`
-/

namespace A300272.P10532942747942037386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300272.P10532942747942037386

namespace A300272

/-- `∩[A066208(n+1), A329604(n+1)]` -/
def P10532942747942037386.Spec : Prop :=
  ∀ n, (P10532942747942037386.a n : ℤ) = A300272 (n + 1)

end A300272

/-! ## A300272.P12350981730326737841

`∩[A066208(n+1), A359381(n+1)]`
-/

namespace A300272.P12350981730326737841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300272.P12350981730326737841

namespace A300272

/-- `∩[A066208(n+1), A359381(n+1)]` -/
def P12350981730326737841.Spec : Prop :=
  ∀ n, (P12350981730326737841.a n : ℤ) = A300272 (n + 1)

end A300272

/-! ## A300272.P15543082461750909222

`∩[A066208(n+1), A300063(n+1)]`
-/

namespace A300272.P15543082461750909222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300272.P15543082461750909222

namespace A300272

/-- `∩[A066208(n+1), A300063(n+1)]` -/
def P15543082461750909222.Spec : Prop :=
  ∀ n, (P15543082461750909222.a n : ℤ) = A300272 (n + 1)

end A300272

/-! ## A300272.P16271291385529078446

`∩[A026424(n+1), A066208(n+1)]`
-/

namespace A300272.P16271291385529078446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300272.P16271291385529078446

namespace A300272

/-- `∩[A026424(n+1), A066208(n+1)]` -/
def P16271291385529078446.Spec : Prop :=
  ∀ n, (P16271291385529078446.a n : ℤ) = A300272 (n + 1)

end A300272

/-! ## A300272.P12342895028374857376

`∩[A066208(n+1), A373587(n+1)]`
-/

namespace A300272.P12342895028374857376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300272.P12342895028374857376

namespace A300272

/-- `∩[A066208(n+1), A373587(n+1)]` -/
def P12342895028374857376.Spec : Prop :=
  ∀ n, (P12342895028374857376.a n : ℤ) = A300272 (n + 1)

end A300272

/-! ## A300272.P12748646984345567690

`record[A247503(A026424(n+1))]`
-/

namespace A300272.P12748646984345567690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A026424 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300272.P12748646984345567690

namespace A300272

/-- `record[A247503(A026424(n+1))]` -/
def P12748646984345567690.Spec : Prop :=
  ∀ n, P12748646984345567690.a n = A300272 (n + 1)

end A300272

/-! ## A300272.P7605708947669670896

`record[A247503(A300063(1+n))]`
-/

namespace A300272.P7605708947669670896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A300063 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300272.P7605708947669670896

namespace A300272

/-- `record[A247503(A300063(1+n))]` -/
def P7605708947669670896.Spec : Prop :=
  ∀ n, P7605708947669670896.a n = A300272 (n + 1)

end A300272

/-! ## A300272.P5498476750662997131

`record[A247503(A329604(n+1))]`
-/

namespace A300272.P5498476750662997131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A329604 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300272.P5498476750662997131

namespace A300272

/-- `record[A247503(A329604(n+1))]` -/
def P5498476750662997131.Spec : Prop :=
  ∀ n, P5498476750662997131.a n = A300272 (n + 1)

end A300272

/-! ## A300272.P3073050198020223981

`record[A247503(A373587(n+1))]`
-/

namespace A300272.P3073050198020223981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A373587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300272.P3073050198020223981

namespace A300272

/-- `record[A247503(A373587(n+1))]` -/
def P3073050198020223981.Spec : Prop :=
  ∀ n, P3073050198020223981.a n = A300272 (n + 1)

end A300272

/-! ## A300272.P17000121647382899357

`record[A247503(A026422(n+2))]`
-/

namespace A300272.P17000121647382899357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A026422 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300272.P17000121647382899357

namespace A300272

/-- `record[A247503(A026422(n+2))]` -/
def P17000121647382899357.Spec : Prop :=
  ∀ n, P17000121647382899357.a n = A300272 (n + 1)

end A300272

/-! ## A300272.P13108841261653114038

`record[A247503(A143691(2*(n+1)))]`
-/

namespace A300272.P13108841261653114038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A143691 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300272.P13108841261653114038

namespace A300272

/-- `record[A247503(A143691(2*(n+1)))]` -/
def P13108841261653114038.Spec : Prop :=
  ∀ n, P13108841261653114038.a n = A300272 (n + 1)

end A300272

/-!
# A300273: Sorted list of Heinz numbers of collapsible integer partitions.

The programs for A300273, there is no canonical definition to state claims against.
-/

/-! ## A300273.P8131338964230574184

`lt[0, A294019(n+1)]+1`
-/

namespace A300273.P8131338964230574184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A300273.P8131338964230574184

/-! ## A300273.P3485422121587182984

`lt[1, abs(A294080(n+1))+1]+1`
-/

namespace A300273.P3485422121587182984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A294080 (n + 1)| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A300273.P3485422121587182984

/-! ## A300273.P266435602188310447

`A326841(comp[∑[n*∑[5*n-2]]])`
-/

namespace A300273.P266435602188310447
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A300273.P266435602188310447

/-! ## A300273.P6622835947051581605

`lt[0, A294019(A028310(n))]`
-/

namespace A300273.P6622835947051581605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294019 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300273.P6622835947051581605

/-! ## A300273.P1401843080155336588

`A020725(lt[0, A294019(n+1)])`
-/

namespace A300273.P1401843080155336588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A300273.P1401843080155336588

/-! ## A300273.P16442794836428724546

`∩[A192218(n+1), A326841(n+1)]`
-/

namespace A300273.P16442794836428724546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300273.P16442794836428724546

/-! ## A300273.P1059828827633519237

`eq[1, A000040(abs(A294080(n+1))+1)%2]+1`
-/

namespace A300273.P1059828827633519237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (|A294080 (n + 1)| + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300273.P1059828827633519237

/-! ## A300273.P4930145683968662757

`∩[A318991(n+1), A326836(n+1)]`
-/

namespace A300273.P4930145683968662757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300273.P4930145683968662757

/-!
# A300274: G.f.: 1 + Sum_{n>=1} a(n)*x^n/(1 - x^n) = Product_{n>=1} (1 + x^n)/(1 - x^n).

The programs for A300274, there is no canonical definition to state claims against.
-/

/-! ## A300274.P9076236804776295500

`∑{d}[n+1, A008683((n+1)/#)*A015128(#)]`
-/

namespace A300274.P9076236804776295500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A015128 d

end

end A300274.P9076236804776295500

/-! ## A300274.P15244500889462090686

`∑{d}[n+1, A007427(#)*A320942((n+1)/#)]`
-/

namespace A300274.P15244500889462090686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A320942 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300274.P15244500889462090686

/-!
# A300275: G.f.: 1 + Sum_{n>=1} a(n)*x^n/(1 - x^n) = Product_{n>=1} 1/(1 - x^n)^n.

The programs for A300275, there is no canonical definition to state claims against.
-/

/-! ## A300275.P12025712690806536901

`∑{d}[n+1, A008683((n+1)/#)*A000219(#)]`
-/

namespace A300275.P12025712690806536901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000219 d

end

end A300275.P12025712690806536901

/-! ## A300275.P17386697162586191126

`∑{d}[n+1, A323584(#)]`
-/

namespace A300275.P17386697162586191126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323584 d

end

end A300275.P17386697162586191126

/-! ## A300275.P1172608655322042994

`∑{d}[n+1, A007427(#)*A302549((n+1)/#)]`
-/

namespace A300275.P1172608655322042994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A302549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300275.P1172608655322042994

/-!
# A300276: G.f.: 1 + Sum_{n>=1} a(n)*x^n/(1 - x^n) = Product_{n>=1} (1 + x^n)^n.

The programs for A300276, there is no canonical definition to state claims against.
-/

/-! ## A300276.P9257450324242787723

`∑{d}[n+1, A008683((n+1)/#)*A026007(#)]`
-/

namespace A300276.P9257450324242787723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A026007 d

end

end A300276.P9257450324242787723

/-! ## A300276.P11517200049302831101

`∑{d}[n+1, A007427(#)*A302550((n+1)/#)]`
-/

namespace A300276.P11517200049302831101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A302550 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300276.P11517200049302831101

/-!
# A300277: G.f.: 1 + Sum_{n>=1} a(n)*x^n/(1 - x^n) = Product_{n>=1} 1/(1 - n*x^n).

The programs for A300277, there is no canonical definition to state claims against.
-/

/-! ## A300277.P16557750000194616677

`∑{d}[n+1, A008683((n+1)/#)*A006906(#)]`
-/

namespace A300277.P16557750000194616677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A006906 d

end

end A300277.P16557750000194616677

/-! ## A300277.P14146615270385203012

`∑{d}[n+1, A007427(#)*A318025((n+1)/#)]`
-/

namespace A300277.P14146615270385203012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A318025 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300277.P14146615270385203012

/-! ## A300277.P10779111154628277638

`A238005(xor(n, A001551(n)))`
-/

namespace A300277.P10779111154628277638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (Int.xor (n : ℤ) (A001551 n)).toNat

end

end A300277.P10779111154628277638

/-! ## A300277.P10421224381658866165

`∑[A065455(n)]-A001222(5^n)`
-/

namespace A300277.P10421224381658866165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (5 ^ n)

end

end A300277.P10421224381658866165

/-!
# A300278: G.f.: 1 + Sum_{n>=1} a(n)*x^n/(1 - x^n) = Product_{n>=1} (1 + n*x^n).

The programs for A300278, there is no canonical definition to state claims against.
-/

/-! ## A300278.P4843531927522546812

`∑{d}[n+1, A008683((n+1)/#)*A022629(#)]`
-/

namespace A300278.P4843531927522546812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A022629 d

end

end A300278.P4843531927522546812

/-! ## A300278.P8770933288484521494

`∑{d}[n+1, A007427(#)*A318290((n+1)/#)]`
-/

namespace A300278.P8770933288484521494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A318290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300278.P8770933288484521494

/-!
# A300279: G.f.: Sum_{n>=0} (1 + x*(1+x)^n)^n / 2^(n+1).

The programs for A300279, there is no canonical definition to state claims against.
-/

/-! ## A300279.P15840496091943470829

`A298126(A088325(n))+A052767(n)`
-/

namespace A300279.P15840496091943470829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298126 (A088325 n).toNat + A052767 n

end

end A300279.P15840496091943470829

/-! ## A300279.P13671054380579324879

`A300763(∑[A298269(n)]²)`
-/

namespace A300279.P13671054380579324879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A300279.P13671054380579324879

/-!
# A300280: Triangle defined by T(n,k) = Sum_{j>=0} C(j+k, k) * C((j+k)*k, n-k) / 2^(j+k+1), for n>=0, k = 0..n, as read by rows.

The programs for A300280, there is no canonical definition to state claims against.
-/

/-! ## A300280.P10073134859914157468

`A303934(3^A059297(n))`
-/

namespace A300280.P10073134859914157468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303934 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A059297 n : ℤ))).toNat

end

end A300280.P10073134859914157468

/-! ## A300280.P6409359380054817641

`A089850(∑{d}[A090683(n), #])`
-/

namespace A300280.P6409359380054817641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A300280.P6409359380054817641

/-! ## A300280.P16996906867901845637

`A303934(3^A202178(n+1))`
-/

namespace A300280.P16996906867901845637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303934 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A202178 (n + 1) : ℤ))).toNat

end

end A300280.P16996906867901845637

/-! ## A300280.P17610918942921013189

`A052057(A123125(n)+A047969(n))`
-/

namespace A300280.P17610918942921013189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052057 (A123125 n + A047969 n).toNat

end

end A300280.P17610918942921013189

/-! ## A300280.P15372883458355895356

`A362908(A362868(n+1))+A362885(n)`
-/

namespace A300280.P15372883458355895356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362908 (A362868 (n + 1)).toNat + A362885 n

end

end A300280.P15372883458355895356

/-!
# A300282: E.g.f. A(x) satisfies: A'(x) = 1/(1 - A(A(x)))^2.

The programs for A300282, there is no canonical definition to state claims against.
-/

/-! ## A300282.P15357308030847703202

`A189140(∑[A337564(n)])`
-/

namespace A300282.P15357308030847703202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189140 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300282.P15357308030847703202

/-!
# A300283: G.f. A(x) satisfies: [x^n] A( x/A(x)^(n+1) ) = 0 for n>1.

The programs for A300283, there is no canonical definition to state claims against.
-/

/-! ## A300283.P4222540490264384853

`∏{p}[((n^7-n)/42)², #]`
-/

namespace A300283.P4222540490264384853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 42) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A300283.P4222540490264384853

/-!
# A300287: a(n) = floor((1/n) * Sum_{k=1..n} sqrt(k)).

The programs for A300287, the canonical program `A300287.P2810352215476143477` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300287 has offset 1).

The definition of A300287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300287.P2810352215476143477

`floor(2/3*sqrt(n+2)*(1+1/(4*(n+1))))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A300287

/-- `floor(2/3*sqrt(n+2)*(1+1/(4*(n+1))))` -/
def P2810352215476143477.Spec : Prop :=
  ∀ n, P2810352215476143477.a n = A300287 (n + 1)

theorem P2810352215476143477.correct : P2810352215476143477.Spec := by
  intro n
  simp only [A300287, Nat.add_sub_cancel]

end A300287

/-! ## A300287.P5521907503672464899

`ceil(∑[char[a(n-2)+n+1]]/3)` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A300287.P5521907503672464899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2] fun n f2 =>
  f2 (n - 2) + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉

end

end A300287.P5521907503672464899

namespace A300287

/-- `ceil(∑[char[a(n-2)+n+1]]/3)` -/
def P5521907503672464899.Spec : Prop :=
  ∀ n, P5521907503672464899.a n = A300287 (n + 1)

end A300287

/-! ## A300287.P17414815361039175684

`round(A055086(n+2)/3)`
-/

namespace A300287.P17414815361039175684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055086 (n + 2) : ℚ) / 3)

end

end A300287.P17414815361039175684

namespace A300287

/-- `round(A055086(n+2)/3)` -/
def P17414815361039175684.Spec : Prop :=
  ∀ n, P17414815361039175684.a n = A300287 (n + 1)

end A300287

/-! ## A300287.P16039396257915067726

`A002264(floor(sqrt(4*n+9)))`
-/

namespace A300287.P16039396257915067726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.sqrt (4 * n + 9))

end

end A300287.P16039396257915067726

namespace A300287

/-- `A002264(floor(sqrt(4*n+9)))` -/
def P16039396257915067726.Spec : Prop :=
  ∀ n, P16039396257915067726.a n = A300287 (n + 1)

end A300287

/-! ## A300287.P11998642094397551627

`∑[char[A002620(3*n)-2]]`
-/

namespace A300287.P11998642094397551627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (3 * n) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300287.P11998642094397551627

namespace A300287

/-- `∑[char[A002620(3*n)-2]]` -/
def P11998642094397551627.Spec : Prop :=
  ∀ n, (P11998642094397551627.a n : ℤ) = A300287 (n + 1)

end A300287

/-! ## A300287.P12585984822704812189

`∑[char[A078126(3*(n+1))-1]]`
-/

namespace A300287.P12585984822704812189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 (3 * (n + 1)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300287.P12585984822704812189

namespace A300287

/-- `∑[char[A078126(3*(n+1))-1]]` -/
def P12585984822704812189.Spec : Prop :=
  ∀ n, (P12585984822704812189.a n : ℤ) = A300287 (n + 1)

end A300287

/-! ## A300287.P1169569280473034296

`A008620(A055086(n+2)-2)`
-/

namespace A300287.P1169569280473034296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A055086 (n + 2) - 2).toNat

end

end A300287.P1169569280473034296

namespace A300287

/-- `A008620(A055086(n+2)-2)` -/
def P1169569280473034296.Spec : Prop :=
  ∀ n, P1169569280473034296.a n = A300287 (n + 1)

end A300287

/-! ## A300287.P10138019245742704622

`A000196(A008620(A004773(n)))`
-/

namespace A300287.P10138019245742704622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008620 (A004773 n).toNat).toNat

end

end A300287.P10138019245742704622

namespace A300287

/-- `A000196(A008620(A004773(n)))` -/
def P10138019245742704622.Spec : Prop :=
  ∀ n, P10138019245742704622.a n = A300287 (n + 1)

end A300287

/-! ## A300287.P8649377130247394086

`A000196(A008620(A131452(n)))`
-/

namespace A300287.P8649377130247394086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008620 (A131452 n).toNat).toNat

end

end A300287.P8649377130247394086

namespace A300287

/-- `A000196(A008620(A131452(n)))` -/
def P8649377130247394086.Spec : Prop :=
  ∀ n, P8649377130247394086.a n = A300287 (n + 1)

end A300287

/-! ## A300287.P7450181590777651141

`A000196(A004396(A004396(n)+1))`
-/

namespace A300287.P7450181590777651141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004396 (A004396 n + 1).toNat).toNat

end

end A300287.P7450181590777651141

namespace A300287

/-- `A000196(A004396(A004396(n)+1))` -/
def P7450181590777651141.Spec : Prop :=
  ∀ n, P7450181590777651141.a n = A300287 (n + 1)

end A300287

/-! ## A300287.P15624131295580618757

`A000196(∑[A008683(A038500(n+1))])`
-/

namespace A300287.P15624131295580618757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A038500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300287.P15624131295580618757

namespace A300287

/-- `A000196(∑[A008683(A038500(n+1))])` -/
def P15624131295580618757.Spec : Prop :=
  ∀ n, P15624131295580618757.a n = A300287 (n + 1)

end A300287

/-! ## A300287.P15910862669146345165

`A000196(A000196(A349609(n)+1+n))`
-/

namespace A300287.P15910862669146345165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 (A349609 n + 1 + (n : ℤ)).toNat).toNat

end

end A300287.P15910862669146345165

namespace A300287

/-- `A000196(A000196(A349609(n)+1+n))` -/
def P15910862669146345165.Spec : Prop :=
  ∀ n, P15910862669146345165.a n = A300287 (n + 1)

end A300287

/-!
# A300290: Period 6: repeat [0, 1, 2, 2, 3, 3].

The programs for A300290, the canonical program `A300290.P13692293557828509977` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300290 has offset 0).

The definition of A300290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300290.P13692293557828509977

`ogf((x+2x^2+2x^3+3x^4+3x^5)/(1-x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A300290

/-- `ogf((x+2x^2+2x^3+3x^4+3x^5)/(1-x^6))` -/
def P13692293557828509977.Spec : Prop :=
  ∀ n, P13692293557828509977.a n = A300290 n

theorem P13692293557828509977.correct : P13692293557828509977.Spec := by
  intro n
  simp only [A300290]

end A300290

/-!
# A300291: Triangle T read by rows: T is used to obtain the denominators of all fractional values for x = cos(phi) and y = sin(phi) with (x, y) on the unit circle for 0 < phi < Pi/2.

The programs for A300291, there is no canonical definition to state claims against.
-/

/-! ## A300291.P8636578557439344390

`or(1, A222946(n+2))`
-/

namespace A300291.P8636578557439344390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A222946 (n + 2))

end

end A300291.P8636578557439344390

/-! ## A300291.P8938720768477565149

`A009001(A222946(n+2))`
-/

namespace A300291.P8938720768477565149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A222946 (n + 2)).toNat

end

end A300291.P8938720768477565149

/-! ## A300291.P12521830368963218676

`A066182(A222946(n+2)+1)`
-/

namespace A300291.P12521830368963218676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A222946 (n + 2) + 1).toNat

end

end A300291.P12521830368963218676

/-! ## A300291.P4684731705128458736

`A093048(A222946(n+2)+1)`
-/

namespace A300291.P4684731705128458736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (A222946 (n + 2) + 1).toNat

end

end A300291.P4684731705128458736

/-! ## A300291.P7372466219785593844

`A124741(A222946(n+2)+1)`
-/

namespace A300291.P7372466219785593844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A222946 (n + 2) + 1).toNat

end

end A300291.P7372466219785593844

/-! ## A300291.P14117914773704943903

`A065033(2*A222946(n+2))`
-/

namespace A300291.P14117914773704943903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A222946 (n + 2)).toNat

end

end A300291.P14117914773704943903

/-! ## A300291.P634097725370738896

`A123108(2*A222946(n+2))`
-/

namespace A300291.P634097725370738896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A222946 (n + 2)).toNat

end

end A300291.P634097725370738896

/-! ## A300291.P1578952227108291649

`A065033(lcm(2, A222946(n+2)))`
-/

namespace A300291.P1578952227108291649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lcm 2 (A222946 (n + 2)))

end

end A300291.P1578952227108291649

/-! ## A300291.P8976262586158010747

`∏{d}[A222946(n+2), A014963(#)]`
-/

namespace A300291.P8976262586158010747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A300291.P8976262586158010747

/-! ## A300291.P8009615189432779022

`A028310(A222946(n+2)+char[1])`
-/

namespace A300291.P8009615189432779022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A222946 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A300291.P8009615189432779022

/-!
# A300293: A sequence based on the period 6 sequence A151899.

The programs for A300293, the canonical program `A300293.P12531266015599227210` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300293 has offset 0).

The definition of A300293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300293.P5885564273023583536

`ogf((x^2+x^5+x^6)/(1-x-x^6+x^7))`
-/

namespace A300293.P5885564273023583536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 0, 0, 1, 1] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A300293.P5885564273023583536

namespace A300293

/-- `ogf((x^2+x^5+x^6)/(1-x-x^6+x^7))` -/
def P5885564273023583536.Spec : Prop :=
  ∀ n, P5885564273023583536.a n = A300293 n

end A300293

/-! ## A300293.P12531266015599227210

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A300293

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P12531266015599227210.Spec : Prop :=
  ∀ n, P12531266015599227210.a n = A300293 n

theorem P12531266015599227210.correct : P12531266015599227210.Spec := by
  intro n
  simp only [A300293]

end A300293

/-! ## A300293.P5300282219675263333

`A151899(n)+3*floor(n/6)`
-/

namespace A300293.P5300282219675263333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 n + 3 * ⌊(n : ℚ) / 6⌋

end

end A300293.P5300282219675263333

namespace A300293

/-- `A151899(n)+3*floor(n/6)` -/
def P5300282219675263333.Spec : Prop :=
  ∀ n, P5300282219675263333.a n = A300293 n

end A300293

/-! ## A300293.P12260775846274455706

`A300076(n+1)-1`
-/

namespace A300293.P12260775846274455706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (n + 1) - 1

end

end A300293.P12260775846274455706

namespace A300293

/-- `A300076(n+1)-1` -/
def P12260775846274455706.Spec : Prop :=
  ∀ n, P12260775846274455706.a n = A300293 n

end A300293

/-! ## A300293.P17348692870076696826

`∑[char[∑[(n+2)%4]]]`
-/

namespace A300293.P17348692870076696826
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300293.P17348692870076696826

namespace A300293

/-- `∑[char[∑[(n+2)%4]]]` -/
def P17348692870076696826.Spec : Prop :=
  ∀ n, (P17348692870076696826.a n : ℤ) = A300293 n

end A300293

/-! ## A300293.P7851514960259211282

`∑[char[∑[and(3, n+2)]]]`
-/

namespace A300293.P7851514960259211282
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300293.P7851514960259211282

namespace A300293

/-- `∑[char[∑[and(3, n+2)]]]` -/
def P7851514960259211282.Spec : Prop :=
  ∀ n, (P7851514960259211282.a n : ℤ) = A300293 n

end A300293

/-! ## A300293.P3727826132690387346

`∑[char[∑[xor(2, n%4)]]]`
-/

namespace A300293.P3727826132690387346
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n % 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300293.P3727826132690387346

namespace A300293

/-- `∑[char[∑[xor(2, n%4)]]]` -/
def P3727826132690387346.Spec : Prop :=
  ∀ n, (P3727826132690387346.a n : ℤ) = A300293 n

end A300293

/-! ## A300293.P1695911203286058279

`floor(round(n/3)+n/6)`
-/

namespace A300293.P1695911203286058279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway ((n : ℚ) / 3) : ℚ) + (n : ℚ) / 6⌋

end

end A300293.P1695911203286058279

namespace A300293

/-- `floor(round(n/3)+n/6)` -/
def P1695911203286058279.Spec : Prop :=
  ∀ n, P1695911203286058279.a n = A300293 n

end A300293

/-! ## A300293.P7215899712429108217

`∑[char[∑[(n-1)%4]]]-1`
-/

namespace A300293.P7215899712429108217
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A300293.P7215899712429108217

namespace A300293

/-- `∑[char[∑[(n-1)%4]]]-1` -/
def P7215899712429108217.Spec : Prop :=
  ∀ n, P7215899712429108217.a n = A300293 n

end A300293

/-! ## A300293.P7193902604563919752

`∑[char[∑[3-a(n-2)]]]` with `a(0)=2, a(1)=3`
-/

namespace A300293.P7193902604563919752
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300293.P7193902604563919752

namespace A300293

/-- `∑[char[∑[3-a(n-2)]]]` -/
def P7193902604563919752.Spec : Prop :=
  ∀ n, (P7193902604563919752.a n : ℤ) = A300293 n

end A300293

/-! ## A300293.P11859348685035518447

`ceil((n-(∑[n]+1)%3)/2)`
-/

namespace A300293.P11859348685035518447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3 : ℕ) : ℤ) : ℚ) / 2⌉

end

end A300293.P11859348685035518447

namespace A300293

/-- `ceil((n-(∑[n]+1)%3)/2)` -/
def P11859348685035518447.Spec : Prop :=
  ∀ n, P11859348685035518447.a n = A300293 n

end A300293

/-! ## A300293.P18173145155282249343

`round((2*n-gcd(3, 1-n))/4)`
-/

namespace A300293.P18173145155282249343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) - (Int.gcd 3 (1 - (n : ℤ)) : ℤ) : ℚ) / 4)

end

end A300293.P18173145155282249343

namespace A300293

/-- `round((2*n-gcd(3, 1-n))/4)` -/
def P18173145155282249343.Spec : Prop :=
  ∀ n, P18173145155282249343.a n = A300293 n

end A300293

/-! ## A300293.P4549813928264376482

`∑[char[A047267(n+2)]]`
-/

namespace A300293.P4549813928264376482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300293.P4549813928264376482

namespace A300293

/-- `∑[char[A047267(n+2)]]` -/
def P4549813928264376482.Spec : Prop :=
  ∀ n, (P4549813928264376482.a n : ℤ) = A300293 n

end A300293

/-! ## A300293.P1509898160257947063

`ceil((n-A131534(n))/2)`
-/

namespace A300293.P1509898160257947063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A131534 n : ℚ) / 2⌉

end

end A300293.P1509898160257947063

namespace A300293

/-- `ceil((n-A131534(n))/2)` -/
def P1509898160257947063.Spec : Prop :=
  ∀ n, P1509898160257947063.a n = A300293 n

end A300293

/-! ## A300293.P11750812512699451677

`∑[char[A047231(n+1)+2]]`
-/

namespace A300293.P11750812512699451677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300293.P11750812512699451677

namespace A300293

/-- `∑[char[A047231(n+1)+2]]` -/
def P11750812512699451677.Spec : Prop :=
  ∀ n, (P11750812512699451677.a n : ℤ) = A300293 n

end A300293

/-! ## A300293.P5858679571424422936

`∑[char[A130481(2*n)+2]]`
-/

namespace A300293.P5858679571424422936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (2 * n) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300293.P5858679571424422936

namespace A300293

/-- `∑[char[A130481(2*n)+2]]` -/
def P5858679571424422936.Spec : Prop :=
  ∀ n, (P5858679571424422936.a n : ℤ) = A300293 n

end A300293

/-! ## A300293.P5913393598451681230

`a(n-1)+1-A141212(n)` with `a(0)=0`
-/

namespace A300293.P5913393598451681230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A141212 n)

end

end A300293.P5913393598451681230

namespace A300293

/-- `a(n-1)+1-A141212(n)` -/
def P5913393598451681230.Spec : Prop :=
  ∀ n, P5913393598451681230.a n = A300293 n

end A300293

/-! ## A300293.P9030166614497946769

`A004526(A117571(n)-1)`
-/

namespace A300293.P9030166614497946769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A117571 n - 1).toNat

end

end A300293.P9030166614497946769

namespace A300293

/-- `A004526(A117571(n)-1)` -/
def P9030166614497946769.Spec : Prop :=
  ∀ n, P9030166614497946769.a n = A300293 n

end A300293

/-! ## A300293.P2408827580541448794

`A300076(n-A300075(n))`
-/

namespace A300293.P2408827580541448794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 ((n : ℤ) - A300075 n).toNat

end

end A300293.P2408827580541448794

namespace A300293

/-- `A300076(n-A300075(n))` -/
def P2408827580541448794.Spec : Prop :=
  ∀ n, P2408827580541448794.a n = A300293 n

end A300293

/-! ## A300293.P942600441347406343

`A004526(n-char[A016777(n)])`
-/

namespace A300293.P942600441347406343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A300293.P942600441347406343

namespace A300293

/-- `A004526(n-char[A016777(n)])` -/
def P942600441347406343.Spec : Prop :=
  ∀ n, P942600441347406343.a n = A300293 n

end A300293

/-!
# A300294: Irregular triangle giving the GCD characteristic: T(1, 1) = 1 and, for n >= 2 and 1 <= m <= n-1, T(n, m) = 1 if gcd(n, m) = 1 and 0 otherwise.

The programs for A300294, the canonical program `A300294.P16691287766721128725` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300294 has offset 1).

The definition of A300294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300294.P16691287766721128725

`A054431(C(2, n)+n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300294

/-- `A054431(C(2, n)+n)` -/
def P16691287766721128725.Spec : Prop :=
  ∀ n, P16691287766721128725.a n = A300294 (n + 1)

theorem P16691287766721128725.correct : P16691287766721128725.Spec := by
  intro n
  simp only [A300294, Nat.add_sub_cancel]

end A300294

/-! ## A300294.P1672526261325963286

`A054431(gcd(n, C(2, n)))`
-/

namespace A300294.P1672526261325963286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (Nat.gcd n (Nat.choose 2 n))

end

end A300294.P1672526261325963286

namespace A300294

/-- `A054431(gcd(n, C(2, n)))` -/
def P1672526261325963286.Spec : Prop :=
  ∀ n, P1672526261325963286.a n = A300294 (n + 1)

end A300294

/-! ## A300294.P18441769196753901916

`A054431(or(n, C(2, n)))`
-/

namespace A300294.P18441769196753901916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (Nat.lor n (Nat.choose 2 n))

end

end A300294.P18441769196753901916

namespace A300294

/-- `A054431(or(n, C(2, n)))` -/
def P18441769196753901916.Spec : Prop :=
  ∀ n, P18441769196753901916.a n = A300294 (n + 1)

end A300294

/-! ## A300294.P17732988318041935815

`A054431(char[∑[n]]+n)`
-/

namespace A300294.P17732988318041935815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A300294.P17732988318041935815

namespace A300294

/-- `A054431(char[∑[n]]+n)` -/
def P17732988318041935815.Spec : Prop :=
  ∀ n, P17732988318041935815.a n = A300294 (n + 1)

end A300294

/-! ## A300294.P4619199623515891307

`A323378(A000038(n)+n)²`
-/

namespace A300294.P4619199623515891307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323378 (A000038 n + (n : ℤ)).toNat ^ 2

end

end A300294.P4619199623515891307

namespace A300294

/-- `A323378(A000038(n)+n)²` -/
def P4619199623515891307.Spec : Prop :=
  ∀ n, P4619199623515891307.a n = A300294 (n + 1)

end A300294

/-! ## A300294.P1097177042715939133

`A000041(a(n-1))*A054431(n)` with `a(0)=1`
-/

namespace A300294.P1097177042715939133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000041 (a (n - 1)).toNat * A054431 n

end

end A300294.P1097177042715939133

namespace A300294

/-- `A000041(a(n-1))*A054431(n)` -/
def P1097177042715939133.Spec : Prop :=
  ∀ n, P1097177042715939133.a n = A300294 (n + 1)

end A300294

/-! ## A300294.P16233506321806482583

`A054521(A066182(n+1)+A002024(n+1))`
-/

namespace A300294.P16233506321806482583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A066182 (n + 1) + A002024 (n + 1)).toNat

end

end A300294.P16233506321806482583

namespace A300294

/-- `A054521(A066182(n+1)+A002024(n+1))` -/
def P16233506321806482583.Spec : Prop :=
  ∀ n, P16233506321806482583.a n = A300294 (n + 1)

end A300294

/-! ## A300294.P9578533206355964367

`char[(n+1)*A054431(n+1)]`
-/

namespace A300294.P9578533206355964367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A300294.P9578533206355964367

namespace A300294

/-- `char[(n+1)*A054431(n+1)]` -/
def P9578533206355964367.Spec : Prop :=
  ∀ n, (P9578533206355964367.a n : ℤ) = A300294 (n + 1)

end A300294

/-! ## A300294.P11260125571955010322

`char[(n+1)*(2-A003989(n+1))]`
-/

namespace A300294.P11260125571955010322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A003989 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A300294.P11260125571955010322

namespace A300294

/-- `char[(n+1)*(2-A003989(n+1))]` -/
def P11260125571955010322.Spec : Prop :=
  ∀ n, (P11260125571955010322.a n : ℤ) = A300294 (n + 1)

end A300294

/-! ## A300294.P11093090681112204626

`char[(n+1)*A008683(6*A003989(n+1)²)]`
-/

namespace A300294.P11093090681112204626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (6 * A003989 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A300294.P11093090681112204626

namespace A300294

/-- `char[(n+1)*A008683(6*A003989(n+1)²)]` -/
def P11093090681112204626.Spec : Prop :=
  ∀ n, (P11093090681112204626.a n : ℤ) = A300294 (n + 1)

end A300294

/-! ## A300294.P6965712450817665529

`A187596(abs(1-n))%2`
-/

namespace A300294.P6965712450817665529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187596 |1 - (n : ℤ)|.toNat) 2

end

end A300294.P6965712450817665529

namespace A300294

/-- `A187596(abs(1-n))%2` -/
def P6965712450817665529.Spec : Prop :=
  ∀ n, P6965712450817665529.a n = A300294 (n + 1)

end A300294

/-! ## A300294.P11420680854668450904

`A347684(A233583(n+1))%2`
-/

namespace A300294.P11420680854668450904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347684 (A233583 (n + 1)).toNat) 2

end

end A300294.P11420680854668450904

namespace A300294

/-- `A347684(A233583(n+1))%2` -/
def P11420680854668450904.Spec : Prop :=
  ∀ n, P11420680854668450904.a n = A300294 (n + 1)

end A300294

/-! ## A300294.P3824768488281650251

`A212801(A028310(n))%2`
-/

namespace A300294.P3824768488281650251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212801 (A028310 n).toNat) 2

end

end A300294.P3824768488281650251

namespace A300294

/-- `A212801(A028310(n))%2` -/
def P3824768488281650251.Spec : Prop :=
  ∀ n, P3824768488281650251.a n = A300294 (n + 1)

end A300294

/-!
# A300295: Denominator of (1/3)*n*(n + 2)/((1 + 2*n)*(3 + 2*n)).

The programs for A300295, the canonical program `A300295.P5909080087043294271` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300295 has offset 0).

The definition of A300295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300295.P3930866133824324852

`A147650(n+1)+3*A144454(n+1)`
-/

namespace A300295.P3930866133824324852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147650 (n + 1) + 3 * A144454 (n + 1)

end

end A300295.P3930866133824324852

namespace A300295

/-- `A147650(n+1)+3*A144454(n+1)` -/
def P3930866133824324852.Spec : Prop :=
  ∀ n, P3930866133824324852.a n = A300295 n

end A300295

/-! ## A300295.P5909080087043294271

`A147650(n+1)+A067725(n)/A154629(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300295

/-- `A147650(n+1)+A067725(n)/A154629(n)` -/
def P5909080087043294271.Spec : Prop :=
  ∀ n, P5909080087043294271.a n = (A300295 n : ℚ)

end A300295

/-! ## A300295.P14958950733105089180

`A067725(2*n+1)/A154629(n)`
-/

namespace A300295.P14958950733105089180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067725 (2 * n + 1) : ℚ) / (A154629 n : ℚ)

end

end A300295.P14958950733105089180

namespace A300295

/-- `A067725(2*n+1)/A154629(n)` -/
def P14958950733105089180.Spec : Prop :=
  ∀ n, P14958950733105089180.a n = (A300295 n : ℚ)

end A300295

/-! ## A300295.P557175090211330809

`A147650(n+1)+A008585(lcm(9, n*(n+2))/9)`
-/

namespace A300295.P557175090211330809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147650 (n + 1) + A008585 (SequenceMachineLib.roundAway ((Nat.lcm 9 (n * (n + 2)) : ℚ) / 9)).toNat

end

end A300295.P557175090211330809

namespace A300295

/-- `A147650(n+1)+A008585(lcm(9, n*(n+2))/9)` -/
def P557175090211330809.Spec : Prop :=
  ∀ n, P557175090211330809.a n = A300295 n

end A300295

/-! ## A300295.P2301242013273686218

`A147650(n+1)+A008585(A144454(n+1))`
-/

namespace A300295.P2301242013273686218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147650 (n + 1) + A008585 (A144454 (n + 1)).toNat

end

end A300295.P2301242013273686218

namespace A300295

/-- `A147650(n+1)+A008585(A144454(n+1))` -/
def P2301242013273686218.Spec : Prop :=
  ∀ n, P2301242013273686218.a n = A300295 n

end A300295

/-! ## A300295.P1038514898033519577

`A061040(3*(n+1))+A008585(A144454(n+1))`
-/

namespace A300295.P1038514898033519577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061040 (3 * (n + 1)) + A008585 (A144454 (n + 1)).toNat

end

end A300295.P1038514898033519577

namespace A300295

/-- `A061040(3*(n+1))+A008585(A144454(n+1))` -/
def P1038514898033519577.Spec : Prop :=
  ∀ n, P1038514898033519577.a n = A300295 n

end A300295

/-! ## A300295.P8823382828174160810

`A008585(A144454(n+1))+(3*(n+1))²/A154629(n)`
-/

namespace A300295.P8823382828174160810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A144454 (n + 1)).toNat : ℚ) + ((3 * (n + 1)) ^ 2 : ℚ) / (A154629 n : ℚ)

end

end A300295.P8823382828174160810

namespace A300295

/-- `A008585(A144454(n+1))+(3*(n+1))²/A154629(n)` -/
def P8823382828174160810.Spec : Prop :=
  ∀ n, P8823382828174160810.a n = (A300295 n : ℚ)

end A300295

/-!
# A300296: Numerators of n*(5 + 3*n)/(8*(1 + 3*n)*(4 + 3*n)), n >= 0.

The programs for A300296, the canonical program `A300296.P416617843077522993` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300296 has offset 0).

The definition of A300296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300296.P416617843077522993

`lcm(16, A115067(n+1))/16`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A300296

/-- `lcm(16, A115067(n+1))/16` -/
def P416617843077522993.Spec : Prop :=
  ∀ n, P416617843077522993.a n = (A300296 n : ℚ)

end A300296

/-! ## A300296.P9998729329811840419

`A227140(3*n+5)*A227140(n)`
-/

namespace A300296.P9998729329811840419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (3 * n + 5) * A227140 n

end

end A300296.P9998729329811840419

namespace A300296

/-- `A227140(3*n+5)*A227140(n)` -/
def P9998729329811840419.Spec : Prop :=
  ∀ n, P9998729329811840419.a n = A300296 n

end A300296

/-! ## A300296.P9774711185824725590

`A106609(A051724(3*n)*A060819(3*n+5))`
-/

namespace A300296.P9774711185824725590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A051724 (3 * n) * A060819 (3 * n + 5)).toNat

end

end A300296.P9774711185824725590

namespace A300296

/-- `A106609(A051724(3*n)*A060819(3*n+5))` -/
def P9774711185824725590.Spec : Prop :=
  ∀ n, P9774711185824725590.a n = A300296 n

end A300296

/-! ## A300296.P3875712365558848958

`A106617(∑[3*n]+n)`
-/

namespace A300296.P3875712365558848958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A300296.P3875712365558848958

namespace A300296

/-- `A106617(∑[3*n]+n)` -/
def P3875712365558848958.Spec : Prop :=
  ∀ n, P3875712365558848958.a n = A300296 n

end A300296

/-! ## A300296.P11798715436699466763

`A231190(Δ[n*∑[n]]+7)`
-/

namespace A300296.P11798715436699466763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 7).toNat

end

end A300296.P11798715436699466763

namespace A300296

/-- `A231190(Δ[n*∑[n]]+7)` -/
def P11798715436699466763.Spec : Prop :=
  ∀ n, P11798715436699466763.a n = A300296 n

end A300296

/-! ## A300296.P16810790213624797353

`lcm(A106617(A115067(n+1)), A227140(n))`
-/

namespace A300296.P16810790213624797353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106617 (A115067 (n + 1)).toNat) (A227140 n)

end

end A300296.P16810790213624797353

namespace A300296

/-- `lcm(A106617(A115067(n+1)), A227140(n))` -/
def P16810790213624797353.Spec : Prop :=
  ∀ n, (P16810790213624797353.a n : ℤ) = A300296 n

end A300296

/-! ## A300296.P4558188472015211291

`A227140(2*A115067(n+1))`
-/

namespace A300296.P4558188472015211291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (2 * A115067 (n + 1)).toNat

end

end A300296.P4558188472015211291

namespace A300296

/-- `A227140(2*A115067(n+1))` -/
def P4558188472015211291.Spec : Prop :=
  ∀ n, P4558188472015211291.a n = A300296 n

end A300296

/-!
# A300298: Numerators of r(n) := Sum_{k=0..n-1} 1/Product_{j=0..4} (k + j + 1), for n >= 0, with r(0) = 0.

The programs for A300298, there is no canonical definition to state claims against.
-/

/-! ## A300298.P6631476333392229682

`A093411(Δ[A277935(n+1)]-2)`
-/

namespace A300298.P6631476333392229682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (f1 (n + 1) - f1 n - 2).toNat

end

end A300298.P6631476333392229682

/-! ## A300298.P9212152759112137176

`A051712(C(A272074(n+5), n))`
-/

namespace A300298.P9212152759112137176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (Nat.choose (A272074 (n + 5)).toNat n)

end

end A300298.P9212152759112137176

/-! ## A300298.P1907106925505211023

`A051712(∑[A000292(n+1)])%A252184(n+1)`
-/

namespace A300298.P1907106925505211023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051712 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A252184 (n + 1))

end

end A300298.P1907106925505211023

/-! ## A300298.P1396082126000697085

`A065330(A027379(A027379(n)))-A000007(n)`
-/

namespace A300298.P1396082126000697085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A027379 (A027379 n).toNat).toNat - A000007 n

end

end A300298.P1396082126000697085

/-! ## A300298.P12866536811062224638

`A051712(C(A214880(n+4), n))`
-/

namespace A300298.P12866536811062224638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (Nat.choose (A214880 (n + 4)).toNat n)

end

end A300298.P12866536811062224638

